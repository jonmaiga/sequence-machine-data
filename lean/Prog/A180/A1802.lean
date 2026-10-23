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
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A180200: a(0)=0, a(1)=1; for n > 1, a(n) = 2*m + 1 - (n mod 2 + m mod 2) mod 2, where m = a(floor(n/2)).

The programs for A180200, the canonical program `A180200.P2958972076606443306` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180200 has offset 0).

The definition of A180200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180200.P2958972076606443306

`xor(n, A292600(A003817(n)-n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A180200

/-- `xor(n, A292600(A003817(n)-n))` -/
def P2958972076606443306.Spec : Prop :=
  ∀ n, P2958972076606443306.a n = A180200 n

theorem P2958972076606443306.correct : P2958972076606443306.Spec := by
  intro n
  simp only [A180200]

end A180200

/-! ## A180200.P7606077302472908719

`xor(n, A292600(xor(n, A003817(n))))`
-/

namespace A180200.P7606077302472908719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 (Int.xor (n : ℤ) (A003817 n)).toNat)

end

end A180200.P7606077302472908719

namespace A180200

/-- `xor(n, A292600(xor(n, A003817(n))))` -/
def P7606077302472908719.Spec : Prop :=
  ∀ n, P7606077302472908719.a n = A180200 n

end A180200

/-! ## A180200.P13611327548529584428

`A064707(A233280(n))`
-/

namespace A180200.P13611327548529584428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A233280 n).toNat

end

end A180200.P13611327548529584428

namespace A180200

/-- `A064707(A233280(n))` -/
def P13611327548529584428.Spec : Prop :=
  ∀ n, P13611327548529584428.a n = A180200 n

end A180200

/-! ## A180200.P8200523701688946006

`A064707(A063946(A003188(n)))`
-/

namespace A180200.P8200523701688946006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A063946 (A003188 n).toNat).toNat

end

end A180200.P8200523701688946006

namespace A180200

/-- `A064707(A063946(A003188(n)))` -/
def P8200523701688946006.Spec : Prop :=
  ∀ n, P8200523701688946006.a n = A180200 n

end A180200

/-! ## A180200.P6639637967540416182

`A234613(A234026(n))`
-/

namespace A180200.P6639637967540416182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A234026 n).toNat

end

end A180200.P6639637967540416182

namespace A180200

/-- `A234613(A234026(n))` -/
def P6639637967540416182.Spec : Prop :=
  ∀ n, P6639637967540416182.a n = A180200 n

end A180200

/-! ## A180200.P12462646728235659337

`A006068(A233279(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A180200.P12462646728235659337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233279 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A180200.P12462646728235659337

namespace A180200

/-- `A006068(A233279(ceil(xor(n-1, 2*n)/2)))` -/
def P12462646728235659337.Spec : Prop :=
  ∀ n, P12462646728235659337.a n = A180200 n

end A180200

/-! ## A180200.P5404515736615691902

`A092569(A233279(A092569(n)))`
-/

namespace A180200.P5404515736615691902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A233279 (A092569 n).toNat).toNat

end

end A180200.P5404515736615691902

namespace A180200

/-- `A092569(A233279(A092569(n)))` -/
def P5404515736615691902.Spec : Prop :=
  ∀ n, P5404515736615691902.a n = A180200 n

end A180200

/-! ## A180200.P10046994802108016176

`A006068(A233277(A233276(n)))`
-/

namespace A180200.P10046994802108016176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233277 (A233276 n).toNat).toNat

end

end A180200.P10046994802108016176

namespace A180200

/-- `A006068(A233277(A233276(n)))` -/
def P10046994802108016176.Spec : Prop :=
  ∀ n, P10046994802108016176.a n = A180200 n

end A180200

/-! ## A180200.P1371609916935382953

`A233279(A180201(A233279(n)))`
-/

namespace A180200.P1371609916935382953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A180201 (A233279 n).toNat).toNat

end

end A180200.P1371609916935382953

namespace A180200

/-- `A233279(A180201(A233279(n)))` -/
def P1371609916935382953.Spec : Prop :=
  ∀ n, P1371609916935382953.a n = A180200 n

end A180200

/-! ## A180200.P10302697661991971007

`A006068(A286546(n)+A233279(n))`
-/

namespace A180200.P10302697661991971007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A286546 n + A233279 n).toNat

end

end A180200.P10302697661991971007

namespace A180200

/-- `A006068(A286546(n)+A233279(n))` -/
def P10302697661991971007.Spec : Prop :=
  ∀ n, P10302697661991971007.a n = A180200 n

end A180200

/-! ## A180200.P4921381162701705564

`A006068(A233279(A286548(n)+n))`
-/

namespace A180200.P4921381162701705564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233279 (A286548 n + (n : ℤ)).toNat).toNat

end

end A180200.P4921381162701705564

namespace A180200

/-- `A006068(A233279(A286548(n)+n))` -/
def P4921381162701705564.Spec : Prop :=
  ∀ n, P4921381162701705564.a n = A180200 n

end A180200

/-! ## A180200.P18228667886915851068

`A006068(A003188(A062383(n))-(n+1))`
-/

namespace A180200.P18228667886915851068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A003188 (A062383 n).toNat - (n + 1 : ℤ)).toNat

end

end A180200.P18228667886915851068

namespace A180200

/-- `A006068(A003188(A062383(n))-(n+1))` -/
def P18228667886915851068.Spec : Prop :=
  ∀ n, P18228667886915851068.a n = A180200 n

end A180200

/-! ## A180200.P8883284104938674085

`xor(A292600(A092323(2*n+1)), A292600(2*n))`
-/

namespace A180200.P8883284104938674085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A292600 (A092323 (2 * n + 1)).toNat) (A292600 (2 * n))

end

end A180200.P8883284104938674085

namespace A180200

/-- `xor(A292600(A092323(2*n+1)), A292600(2*n))` -/
def P8883284104938674085.Spec : Prop :=
  ∀ n, P8883284104938674085.a n = A180200 n

end A180200

/-! ## A180200.P18257968838906339066

`A234613(A193231(A234025(A193231(n))))`
-/

namespace A180200.P18257968838906339066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A193231 (A234025 (A193231 n).toNat).toNat).toNat

end

end A180200.P18257968838906339066

namespace A180200

/-- `A234613(A193231(A234025(A193231(n))))` -/
def P18257968838906339066.Spec : Prop :=
  ∀ n, P18257968838906339066.a n = A180200 n

end A180200

/-! ## A180200.P7407677042929400635

`A193231(A234612(A234026(A234027(n))))`
-/

namespace A180200.P7407677042929400635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234612 (A234026 (A234027 n).toNat).toNat).toNat

end

end A180200.P7407677042929400635

namespace A180200

/-- `A193231(A234612(A234026(A234027(n))))` -/
def P7407677042929400635.Spec : Prop :=
  ∀ n, P7407677042929400635.a n = A180200 n

end A180200

/-! ## A180200.P9348558057083721399

`A006068(A092569(2*n)/2)`
-/

namespace A180200.P9348558057083721399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A180200.P9348558057083721399

namespace A180200

/-- `A006068(A092569(2*n)/2)` -/
def P9348558057083721399.Spec : Prop :=
  ∀ n, P9348558057083721399.a n = A180200 n

end A180200

/-! ## A180200.P3889557610048451843

`A341916(A056539(2*n)/2)`
-/

namespace A180200.P3889557610048451843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (SequenceMachineLib.roundAway ((A056539 (2 * n) : ℚ) / 2)).toNat

end

end A180200.P3889557610048451843

namespace A180200

/-- `A341916(A056539(2*n)/2)` -/
def P3889557610048451843.Spec : Prop :=
  ∀ n, P3889557610048451843.a n = A180200 n

end A180200

/-! ## A180200.P2058732009885172956

`A292600(xor(A233279(2*n), A292600(2*n)))`
-/

namespace A180200.P2058732009885172956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (Int.xor (A233279 (2 * n)) (A292600 (2 * n))).toNat

end

end A180200.P2058732009885172956

namespace A180200

/-- `A292600(xor(A233279(2*n), A292600(2*n)))` -/
def P2058732009885172956.Spec : Prop :=
  ∀ n, P2058732009885172956.a n = A180200 n

end A180200

/-! ## A180200.P14723936628035560215

`A006068(A246159(A003188(A054429(2*n+1))))`
-/

namespace A180200.P14723936628035560215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246159 (A003188 (A054429 (2 * n + 1)).toNat).toNat).toNat

end

end A180200.P14723936628035560215

namespace A180200

/-- `A006068(A246159(A003188(A054429(2*n+1))))` -/
def P14723936628035560215.Spec : Prop :=
  ∀ n, P14723936628035560215.a n = A180200 n

end A180200

/-! ## A180200.P8046080222793508443

`A006068(A246159(A063946(A003188(2*n+1))))`
-/

namespace A180200.P8046080222793508443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A246159 (A063946 (A003188 (2 * n + 1)).toNat).toNat).toNat

end

end A180200.P8046080222793508443

namespace A180200

/-- `A006068(A246159(A063946(A003188(2*n+1))))` -/
def P8046080222793508443.Spec : Prop :=
  ∀ n, P8046080222793508443.a n = A180200 n

end A180200

/-!
# A180201: Inverse permutation to A180200.

The programs for A180201, the canonical program `A180201.P8787023281284758013` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180201 has offset 0).

The definition of A180201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180201.P8787023281284758013

`xor(n, floor(A035327(n)/2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180201

/-- `xor(n, floor(A035327(n)/2))` -/
def P8787023281284758013.Spec : Prop :=
  ∀ n, P8787023281284758013.a n = A180201 n

theorem P8787023281284758013.correct : P8787023281284758013.Spec := by
  intro n
  simp only [A180201]

end A180201

/-! ## A180201.P17524933007636950108

`xor(n, floor(A261693(n)/4))`
-/

namespace A180201.P17524933007636950108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A261693 n : ℚ) / 4⌋

end

end A180201.P17524933007636950108

namespace A180201

/-- `xor(n, floor(A261693(n)/4))` -/
def P17524933007636950108.Spec : Prop :=
  ∀ n, P17524933007636950108.a n = A180201 n

end A180201

/-! ## A180201.P11113095520191872847

`xor(n, floor((A003817(n)-n)/2))`
-/

namespace A180201.P11113095520191872847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A003817 n - (n : ℤ) : ℚ) / 2⌋

end

end A180201.P11113095520191872847

namespace A180201

/-- `xor(n, floor((A003817(n)-n)/2))` -/
def P11113095520191872847.Spec : Prop :=
  ∀ n, P11113095520191872847.a n = A180201 n

end A180201

/-! ## A180201.P2105001852259377992

`∑[n*char[2^n]]-A038554(n)`
-/

namespace A180201.P2105001852259377992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A038554 n

end

end A180201.P2105001852259377992

namespace A180201

/-- `∑[n*char[2^n]]-A038554(n)` -/
def P2105001852259377992.Spec : Prop :=
  ∀ n, P2105001852259377992.a n = A180201 n

end A180201

/-! ## A180201.P831021727381678582

`2*a(floor(n/2))+A021913(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A180201.P831021727381678582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + A021913 (n - 1)

end

end A180201.P831021727381678582

namespace A180201

/-- `2*a(floor(n/2))+A021913(n-1)` -/
def P831021727381678582.Spec : Prop :=
  ∀ n, P831021727381678582.a n = A180201 n

end A180201

/-! ## A180201.P2884720220379713858

`A279645(n)+A053644(n)`
-/

namespace A180201.P2884720220379713858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 n + A053644 n

end

end A180201.P2884720220379713858

namespace A180201

/-- `A279645(n)+A053644(n)` -/
def P2884720220379713858.Spec : Prop :=
  ∀ n, P2884720220379713858.a n = A180201 n

end A180201

/-! ## A180201.P4831005659043361581

`xor(n, A004526(A035327(n)))`
-/

namespace A180201.P4831005659043361581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 (A035327 n).toNat)

end

end A180201.P4831005659043361581

namespace A180201

/-- `xor(n, A004526(A035327(n)))` -/
def P4831005659043361581.Spec : Prop :=
  ∀ n, P4831005659043361581.a n = A180201 n

end A180201

/-! ## A180201.P820422104521059518

`xor(A003817(n), A038554(n))`
-/

namespace A180201.P820422104521059518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 n) (A038554 n)

end

end A180201.P820422104521059518

namespace A180201

/-- `xor(A003817(n), A038554(n))` -/
def P820422104521059518.Spec : Prop :=
  ∀ n, P820422104521059518.a n = A180201 n

end A180201

/-! ## A180201.P17480844866005817514

`A003817(n)+A053644(n)-A003188(n)`
-/

namespace A180201.P17480844866005817514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A053644 n - A003188 n)

end

end A180201.P17480844866005817514

namespace A180201

/-- `A003817(n)+A053644(n)-A003188(n)` -/
def P17480844866005817514.Spec : Prop :=
  ∀ n, P17480844866005817514.a n = A180201 n

end A180201

/-! ## A180201.P12066145388254147871

`A234025(A234613(n))`
-/

namespace A180201.P12066145388254147871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A234613 n).toNat

end

end A180201.P12066145388254147871

namespace A180201

/-- `A234025(A234613(n))` -/
def P12066145388254147871.Spec : Prop :=
  ∀ n, P12066145388254147871.a n = A180201 n

end A180201

/-! ## A180201.P11323936201700460680

`A233279(xor(n, floor(n/4)))`
-/

namespace A180201.P11323936201700460680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋).toNat

end

end A180201.P11323936201700460680

namespace A180201

/-- `A233279(xor(n, floor(n/4)))` -/
def P11323936201700460680.Spec : Prop :=
  ∀ n, P11323936201700460680.a n = A180201 n

end A180201

/-! ## A180201.P15105588905184847637

`A092569(xor(xor(n, floor(n/2)), floor(atan(n))))`
-/

namespace A180201.P15105588905184847637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A180201.P15105588905184847637

namespace A180201

/-- `A092569(xor(xor(n, floor(n/2)), floor(atan(n))))` -/
def P15105588905184847637.Spec : Prop :=
  ∀ n, P15105588905184847637.a n = A180201 n

end A180201

/-! ## A180201.P11415821178694498849

`A233279(A064706(n))`
-/

namespace A180201.P11415821178694498849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A064706 n).toNat

end

end A180201.P11415821178694498849

namespace A180201

/-- `A233279(A064706(n))` -/
def P11415821178694498849.Spec : Prop :=
  ∀ n, P11415821178694498849.a n = A180201 n

end A180201

/-! ## A180201.P11697583312074741827

`A003188(A180200(A003188(n)))`
-/

namespace A180201.P11697583312074741827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A180200 (A003188 n).toNat).toNat

end

end A180201.P11697583312074741827

namespace A180201

/-- `A003188(A180200(A003188(n)))` -/
def P11697583312074741827.Spec : Prop :=
  ∀ n, P11697583312074741827.a n = A180201 n

end A180201

/-! ## A180201.P7056905661503883944

`A233279(A003188(A286548(n)+n))`
-/

namespace A180201.P7056905661503883944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A003188 (A286548 n + (n : ℤ)).toNat).toNat

end

end A180201.P7056905661503883944

namespace A180201

/-- `A233279(A003188(A286548(n)+n))` -/
def P7056905661503883944.Spec : Prop :=
  ∀ n, P7056905661503883944.a n = A180201 n

end A180201

/-! ## A180201.P15870094932953001327

`A233279(A003188(n))-A286548(n)`
-/

namespace A180201.P15870094932953001327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A003188 n).toNat - A286548 n

end

end A180201.P15870094932953001327

namespace A180201

/-- `A233279(A003188(n))-A286548(n)` -/
def P15870094932953001327.Spec : Prop :=
  ∀ n, P15870094932953001327.a n = A180201 n

end A180201

/-! ## A180201.P2315000952037795920

`A006068(A233280(A064706(A006068(n))))`
-/

namespace A180201.P2315000952037795920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233280 (A064706 (A006068 n).toNat).toNat).toNat

end

end A180201.P2315000952037795920

namespace A180201

/-- `A006068(A233280(A064706(A006068(n))))` -/
def P2315000952037795920.Spec : Prop :=
  ∀ n, P2315000952037795920.a n = A180201 n

end A180201

/-! ## A180201.P2792734642375464305

`A234025(A193231(A234612(A193231(n))))`
-/

namespace A180201.P2792734642375464305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A193231 (A234612 (A193231 n).toNat).toNat).toNat

end

end A180201.P2792734642375464305

namespace A180201

/-- `A234025(A193231(A234612(A193231(n))))` -/
def P2792734642375464305.Spec : Prop :=
  ∀ n, P2792734642375464305.a n = A180201 n

end A180201

/-! ## A180201.P3327571531249673926

`A292600(A063946(A003188(A003188(2*n))))`
-/

namespace A180201.P3327571531249673926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A063946 (A003188 (A003188 (2 * n)).toNat).toNat).toNat

end

end A180201.P3327571531249673926

namespace A180201

/-- `A292600(A063946(A003188(A003188(2*n))))` -/
def P3327571531249673926.Spec : Prop :=
  ∀ n, P3327571531249673926.a n = A180201 n

end A180201

/-! ## A180201.P11098013213343324915

`floor(xor(n, A054429(2*n+1))/2)`
-/

namespace A180201.P11098013213343324915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (n : ℤ) (A054429 (2 * n + 1)) : ℚ) / 2⌋

end

end A180201.P11098013213343324915

namespace A180201

/-- `floor(xor(n, A054429(2*n+1))/2)` -/
def P11098013213343324915.Spec : Prop :=
  ∀ n, P11098013213343324915.a n = A180201 n

end A180201

/-!
# A180202: The product of the two numbers in an amicable pair, A002025(n) * A002046(n).

The programs for A180202, there is no canonical definition to state claims against.
-/

/-! ## A180202.P8279112454710944528

`A259180(2*(n+1)-1)*A259180(2*(n+1))`
-/

namespace A180202.P8279112454710944528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (2 * (n + 1) - 1) * A259180 (2 * (n + 1))

end

end A180202.P8279112454710944528

/-! ## A180202.P3892854136687143131

`A002025(n+1)*A002046(n+1)`
-/

namespace A180202.P3892854136687143131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (n + 1) * A002046 (n + 1)

end

end A180202.P3892854136687143131

/-! ## A180202.P15158928918497076241

`(A066539(n+1)+A002025(n+1))*A002025(n+1)`
-/

namespace A180202.P15158928918497076241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066539 (n + 1) + A002025 (n + 1)) * A002025 (n + 1)

end

end A180202.P15158928918497076241

/-! ## A180202.P6245590888844454364

`(A002046(n+1)-A066539(n+1))*A002046(n+1)`
-/

namespace A180202.P6245590888844454364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) - A066539 (n + 1)) * A002046 (n + 1)

end

end A180202.P6245590888844454364

/-! ## A180202.P12075904123828916167

`(A180164(n+1)-A002025(n+1))*A002025(n+1)`
-/

namespace A180202.P12075904123828916167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) - A002025 (n + 1)) * A002025 (n + 1)

end

end A180202.P12075904123828916167

/-! ## A180202.P7216782241127232096

`(A180164(n+1)-A002046(n+1))*A002046(n+1)`
-/

namespace A180202.P7216782241127232096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) - A002046 (n + 1)) * A002046 (n + 1)

end

end A180202.P7216782241127232096

/-! ## A180202.P7026298177684889293

`A002025(n+1)*A061469(n+1)*A180327(n+1)`
-/

namespace A180202.P7026298177684889293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (n + 1) * A061469 (n + 1) * A180327 (n + 1)

end

end A180202.P7026298177684889293

/-! ## A180202.P15090625651703378336

`A002046(n+1)*A061469(n+1)*A180326(n+1)`
-/

namespace A180202.P15090625651703378336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) * A061469 (n + 1) * A180326 (n + 1)

end

end A180202.P15090625651703378336

/-! ## A180202.P17064149325853576295

`A061469(n+1)²*A180326(n+1)*A180327(n+1)`
-/

namespace A180202.P17064149325853576295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061469 (n + 1) ^ 2 * A180326 (n + 1) * A180327 (n + 1)

end

end A180202.P17064149325853576295

/-! ## A180202.P12390032551549126583

`A002025(n+1)²/A180326(n+1)*A180327(n+1)`
-/

namespace A180202.P12390032551549126583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) ^ 2 : ℚ) / (A180326 (n + 1) : ℚ) * (A180327 (n + 1) : ℚ)

end

end A180202.P12390032551549126583

/-! ## A180202.P12940455217280763758

`A002046(n+1)²*A180326(n+1)/A180327(n+1)`
-/

namespace A180202.P12940455217280763758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) ^ 2 * A180326 (n + 1) : ℚ) / (A180327 (n + 1) : ℚ)

end

end A180202.P12940455217280763758

/-!
# A180203: Differences between prime powers of primes, offsetting the prime and the power by only one. (For purposes of this sequence, 0 and 1 are treated as primes; see Formula.)

The programs for A180203, there is no canonical definition to state claims against.
-/

/-! ## A180203.P10196211798019740360

`Δ[record[n^A283463(n+1)]]`
-/

namespace A180203.P10196211798019740360
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A283463 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180203.P10196211798019740360

/-!
# A180204: Base-10 representation of numbers k which, in base 2, satisfy abs(k + reverse(k) - reverse(k + reverse(k))) = k.

The programs for A180204, the canonical program `A180204.P4441902306548619371` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180204 has offset 1).

The definition of A180204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180204.P4441902306548619371

`eq[n, abs(A055945(A055944(n)))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A180204

/-- `eq[n, abs(A055945(A055944(n)))]` -/
def P4441902306548619371.Spec : Prop :=
  ∀ n, (P4441902306548619371.a n : ℤ) = A180204 (n + 1)

theorem P4441902306548619371.correct : P4441902306548619371.Spec := by
  intro n
  simp only [A180204, Nat.add_sub_cancel]

end A180204

/-! ## A180204.P983716732034831705

`eq[A055945(A055944(n)), A181983(n)]`
-/

namespace A180204.P983716732034831705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180204.P983716732034831705

namespace A180204

/-- `eq[A055945(A055944(n)), A181983(n)]` -/
def P983716732034831705.Spec : Prop :=
  ∀ n, (P983716732034831705.a n : ℤ) = A180204 (n + 1)

end A180204

/-! ## A180204.P15510877403742825808

`eq[-A038608(n), A055945(A055944(n))]`
-/

namespace A180204.P15510877403742825808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180204.P15510877403742825808

namespace A180204

/-- `eq[-A038608(n), A055945(A055944(n))]` -/
def P15510877403742825808.Spec : Prop :=
  ∀ n, (P15510877403742825808.a n : ℤ) = A180204 (n + 1)

end A180204

/-! ## A180204.P7843489096248668089

`eq[A055945(A055944(n))², A000290(n)]`
-/

namespace A180204.P7843489096248668089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180204.P7843489096248668089

namespace A180204

/-- `eq[A055945(A055944(n))², A000290(n)]` -/
def P7843489096248668089.Spec : Prop :=
  ∀ n, (P7843489096248668089.a n : ℤ) = A180204 (n + 1)

end A180204

/-! ## A180204.P473707853638960079

`eq[A001489(n)², A055945(A055944(n))²]`
-/

namespace A180204.P473707853638960079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180204.P473707853638960079

namespace A180204

/-- `eq[A001489(n)², A055945(A055944(n))²]` -/
def P473707853638960079.Spec : Prop :=
  ∀ n, (P473707853638960079.a n : ℤ) = A180204 (n + 1)

end A180204

/-!
# A180205: Number of permutations of 0..(n-1) representable as consecutive sums of 2 adjacent elements of a sequence of n+1 nonnegative integers.

The programs for A180205, there is no canonical definition to state claims against.
-/

/-! ## A180205.P8874211304551783892

`A203022(∑[n+1]+1)`
-/

namespace A180205.P8874211304551783892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203022 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180205.P8874211304551783892

/-! ## A180205.P10321403220059891787

`∑[A132425(ceil(2^(n-1)))]`
-/

namespace A180205.P10321403220059891787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180205.P10321403220059891787

/-! ## A180205.P12865932777210530623

`A228354(A329675(n))`
-/

namespace A180205.P12865932777210530623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A329675 n).toNat

end

end A180205.P12865932777210530623

/-!
# A180206: Number of permutations of 0..(n-1) representable as consecutive sums of 3 adjacent elements of a sequence of n+2 nonnegative integers.

The programs for A180206, there is no canonical definition to state claims against.
-/

/-! ## A180206.P16954823334491306085

`A158829(n+1)+A001221(A003516(n+2))`
-/

namespace A180206.P16954823334491306085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158829 (n + 1) + A001221 (A003516 (n + 2)).toNat

end

end A180206.P16954823334491306085

/-! ## A180206.P13418742698531700773

`∑[A170905(∑[4*a(n-1)])]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A180206.P13418742698531700773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180206.P13418742698531700773

/-! ## A180206.P4544302790987026537

`A351005(A063757(n))`
-/

namespace A180206.P4544302790987026537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (A063757 n).toNat

end

end A180206.P4544302790987026537

/-!
# A180207: Number of permutations of 0..(n-1) representable as consecutive sums of 4 adjacent elements of a sequence of n+3 nonnegative integers.

The programs for A180207, there is no canonical definition to state claims against.
-/

/-! ## A180207.P493664904186301746

`A130446(A148097(n))+comp[2*n+3]`
-/

namespace A180207.P493664904186301746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A148097 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A180207.P493664904186301746

/-!
# A180208: Number of permutations of 0..(n-1) representable as consecutive sums of 5 adjacent elements of a sequence of n+4 nonnegative integers.

The programs for A180208, there is no canonical definition to state claims against.
-/

/-! ## A180208.P6899706247900839780

`Δ[A180209(A002998(n)+1)]`
-/

namespace A180208.P6899706247900839780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180209 (A002998 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180208.P6899706247900839780

/-! ## A180208.P6642279663665841875

`Δ[A180209(A043315(n+1))]`
-/

namespace A180208.P6642279663665841875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180209 (A043315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180208.P6642279663665841875

/-! ## A180208.P1488307781709431548

`Δ[A180209(A085908(n+1))]`
-/

namespace A180208.P1488307781709431548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180209 (A085908 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180208.P1488307781709431548

/-! ## A180208.P16267615371576615699

`Δ[A180209(A179310(n+1))]`
-/

namespace A180208.P16267615371576615699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180209 (A179310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180208.P16267615371576615699

/-! ## A180208.P8542048269937128350

`Δ[Δ[A180210(A043316(n+1))]]`
-/

namespace A180208.P8542048269937128350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180210 (A043316 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180208.P8542048269937128350

/-!
# A180209: Number of permutations of 0..(n-1) representable as consecutive sums of 6 adjacent elements of a sequence of n+5 nonnegative integers.

The programs for A180209, there is no canonical definition to state claims against.
-/

/-! ## A180209.P7247242332539215381

`Δ[Δ[A023443(A180211(n+1))]]`
-/

namespace A180209.P7247242332539215381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A180211 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180209.P7247242332539215381

/-! ## A180209.P5151084318599851466

`Δ[A180210(A043316(n+1))]`
-/

namespace A180209.P5151084318599851466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180210 (A043316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180209.P5151084318599851466

/-! ## A180209.P17116194189695825560

`Δ[Δ[Δ[A180212(n+1)]]]`
-/

namespace A180209.P17116194189695825560
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180209.P17116194189695825560

/-! ## A180209.P5984822271199097641

`A328959(A038718(3*n+4))+2^n`
-/

namespace A180209.P5984822271199097641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A038718 (3 * n + 4)).toNat + (2 ^ n : ℤ)

end

end A180209.P5984822271199097641

/-! ## A180209.P10686974887720401791

`Δ[A180210(n+1)]%A192301(3*n+4)`
-/

namespace A180209.P10686974887720401791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A192301 (3 * n + 4))

end

end A180209.P10686974887720401791

/-!
# A180210: Number of permutations of 0..(n-1) representable as consecutive sums of 7 adjacent elements of a sequence of n+6 nonnegative integers.

The programs for A180210, there is no canonical definition to state claims against.
-/

/-! ## A180210.P1661157648194421915

`Δ[A180211(n+1)]`
-/

namespace A180210.P1661157648194421915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180210.P1661157648194421915

/-! ## A180210.P11416756232830204395

`A180211(n+2)-A180211(n+1)`
-/

namespace A180210.P11416756232830204395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180211 (n + 2) - A180211 (n + 1)

end

end A180210.P11416756232830204395

/-! ## A180210.P4891433209874984956

`Δ[Δ[A180212(n+1)]]`
-/

namespace A180210.P4891433209874984956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180212 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180210.P4891433209874984956

/-! ## A180210.P15406099771711066244

`A356081(A309862(n))+2^n-1`
-/

namespace A180210.P15406099771711066244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356081 (A309862 n).toNat + ((2 ^ n : ℤ) - 1)

end

end A180210.P15406099771711066244

/-! ## A180210.P17720690061567257115

`A341219(A014557(n))+A000225(n)`
-/

namespace A180210.P17720690061567257115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341219 (A014557 n).toNat + A000225 n

end

end A180210.P17720690061567257115

/-!
# A180211: Number of permutations of 0..(n-1) representable as consecutive sums of 8 adjacent elements of a sequence of n+7 nonnegative integers.

The programs for A180211, there is no canonical definition to state claims against.
-/

/-! ## A180211.P9909549726901544110

`Δ[A180212(n+1)]`
-/

namespace A180211.P9909549726901544110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180211.P9909549726901544110

/-! ## A180211.P1748013810192949019

`A180212(n+2)-A180212(n+1)`
-/

namespace A180211.P1748013810192949019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180212 (n + 2) - A180212 (n + 1)

end

end A180211.P1748013810192949019

/-! ## A180211.P7253697837252769565

`A059305(C(n, 9)+1)+2^n-2`
-/

namespace A180211.P7253697837252769565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059305 (Nat.choose n 9 + 1) + ((2 ^ n : ℤ) - 2)

end

end A180211.P7253697837252769565

/-! ## A180211.P1063160836958666143

`A200322(A327048(n))`
-/

namespace A180211.P1063160836958666143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A327048 n).toNat

end

end A180211.P1063160836958666143

/-! ## A180211.P12060613755526026618

`A115573(A000032(n))+A000225(n)`
-/

namespace A180211.P12060613755526026618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (A000032 n).toNat + A000225 n

end

end A180211.P12060613755526026618

/-!
# A180212: Number of permutations of 0..(n-1) representable as consecutive sums of 9 adjacent elements of a sequence of n+8 nonnegative integers.

The programs for A180212, there is no canonical definition to state claims against.
-/

/-! ## A180212.P7397819304049238885

`A180211(n)+a(n-1)` with `a(0)=1`
-/

namespace A180212.P7397819304049238885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180211 n + a (n - 1)

end

end A180212.P7397819304049238885

/-! ## A180212.P10306149946152354765

`Δ[or(2*C(A007318(n), 4), 2^n)]`
-/

namespace A180212.P10306149946152354765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * Nat.choose (A007318 n).toNat 4) (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A180212.P10306149946152354765

/-! ## A180212.P12900866417555241271

`Δ[or(2*C(A180182(n+1), 4), 2^n)]`
-/

namespace A180212.P12900866417555241271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * Nat.choose (A180182 (n + 1)).toNat 4) (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A180212.P12900866417555241271

/-! ## A180212.P15486326763142627112

`∑[A180211(A028310(n))]`
-/

namespace A180212.P15486326763142627112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180211 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180212.P15486326763142627112

/-! ## A180212.P6307247475656339108

`A326631(A171670(n))+2^n`
-/

namespace A180212.P6307247475656339108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326631 (A171670 n).toNat + (2 ^ n : ℤ)

end

end A180212.P6307247475656339108

/-!
# A180213: Number of permutations of 0..(n-1) representable as 1,2,1-weighted consecutive sums of 3 adjacent elements of a sequence of n+2 nonnegative integers.

The programs for A180213, there is no canonical definition to state claims against.
-/

/-! ## A180213.P7845390495013681525

`A354912(∑[A006252(n)])`
-/

namespace A180213.P7845390495013681525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180213.P7845390495013681525

/-! ## A180213.P3729137987015988274

`A181019(A148319(n+1))`
-/

namespace A180213.P3729137987015988274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181019 (A148319 (n + 1)).toNat

end

end A180213.P3729137987015988274

/-! ## A180213.P12254616926959879297

`A381433(A126348(a(n-3)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A180213.P12254616926959879297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A381433 (A126348 (a (n - 3)).toNat).toNat

end

end A180213.P12254616926959879297

/-!
# A180214: Number of permutations of 0..(n-1) representable as 1,3,3,1-weighted consecutive sums of 4 adjacent elements of a sequence of n+3 nonnegative integers.

The programs for A180214, there is no canonical definition to state claims against.
-/

/-! ## A180214.P775683247140722453

`A151702(A329693(2*n+3)+A103116(n+2))`
-/

namespace A180214.P775683247140722453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A329693 (2 * n + 3) + A103116 (n + 2)).toNat

end

end A180214.P775683247140722453

/-! ## A180214.P11371700571958566579

`A097004(∑[a(n-1)+a(n-4)+1])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=4`
-/

namespace A180214.P11371700571958566579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 4) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180214.P11371700571958566579

/-! ## A180214.P12010331382072004628

`A273404(A063018(n))`
-/

namespace A180214.P12010331382072004628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 (A063018 n).toNat

end

end A180214.P12010331382072004628

/-! ## A180214.P11950008763650841517

`gcd(Δ[A271034(n+1)], A047636(n))`
-/

namespace A180214.P11950008763650841517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A047636 n)

end

end A180214.P11950008763650841517

/-! ## A180214.P6663564225220757644

`gcd(A020922(n), A335150(A000110(n)))`
-/

namespace A180214.P6663564225220757644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020922 n) (A335150 (A000110 n).toNat)

end

end A180214.P6663564225220757644

/-!
# A180216: Base 10 representation of numbers which, in base 2, satisfy Abs(k-Reverse(k))+Reverse(Abs(k-Reverse(k)))=k.

The programs for A180216, there is no canonical definition to state claims against.
-/

/-! ## A180216.P10990755173009352819

`eq[n, A055944(abs(A055945(n)))]`
-/

namespace A180216.P10990755173009352819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 |A055945 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180216.P10990755173009352819

/-! ## A180216.P9738453829593621310

`eq[A007150(n+1), A030101(n)]`
-/

namespace A180216.P9738453829593621310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180216.P9738453829593621310

/-! ## A180216.P3822834354876872475

`eq[A007150(n+1), A325401(n)]`
-/

namespace A180216.P3822834354876872475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180216.P3822834354876872475

/-! ## A180216.P9329353797773147454

`eq[A007150(n+1), A330717(n)]`
-/

namespace A180216.P9329353797773147454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180216.P9329353797773147454

/-! ## A180216.P4918943446872515396

`eq[A007150(n+1), A331471(n)]`
-/

namespace A180216.P4918943446872515396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180216.P4918943446872515396

/-!
# A180217: a(n) = (n-th prime modulo 3) + (n-th prime modulo 4).

The programs for A180217, the canonical program `A180217.P8135109345917219765` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180217 has offset 1).

The definition of A180217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180217.P12892394179299298285

`A194291(A039710(n+1)+3)`
-/

namespace A180217.P12892394179299298285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194291 (A039710 (n + 1) + 3).toNat

end

end A180217.P12892394179299298285

namespace A180217

/-- `A194291(A039710(n+1)+3)` -/
def P12892394179299298285.Spec : Prop :=
  ∀ n, P12892394179299298285.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P4552451680666186947

`A240600(A039710(n+1)+3)`
-/

namespace A180217.P4552451680666186947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (A039710 (n + 1) + 3).toNat

end

end A180217.P4552451680666186947

namespace A180217

/-- `A240600(A039710(n+1)+3)` -/
def P4552451680666186947.Spec : Prop :=
  ∀ n, P4552451680666186947.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P15331010818299238236

`A264116(A039710(n+1)+3)`
-/

namespace A180217.P15331010818299238236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264116 (A039710 (n + 1) + 3).toNat

end

end A180217.P15331010818299238236

namespace A180217

/-- `A264116(A039710(n+1)+3)` -/
def P15331010818299238236.Spec : Prop :=
  ∀ n, P15331010818299238236.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P3196618738896362854

`A317765(A039710(n+1)+3)`
-/

namespace A180217.P3196618738896362854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317765 (A039710 (n + 1) + 3).toNat

end

end A180217.P3196618738896362854

namespace A180217

/-- `A317765(A039710(n+1)+3)` -/
def P3196618738896362854.Spec : Prop :=
  ∀ n, P3196618738896362854.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P8135109345917219765

`A039702(n+1)+A039701(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180217

/-- `A039702(n+1)+A039701(n+1)` -/
def P8135109345917219765.Spec : Prop :=
  ∀ n, P8135109345917219765.a n = A180217 (n + 1)

theorem P8135109345917219765.correct : P8135109345917219765.Spec := by
  intro n
  simp only [A180217, Nat.add_sub_cancel]

end A180217

/-! ## A180217.P5444268814716774480

`A039701(n+1)+2-A070750(n+1)`
-/

namespace A180217.P5444268814716774480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1) + (2 - A070750 (n + 1))

end

end A180217.P5444268814716774480

namespace A180217

/-- `A039701(n+1)+2-A070750(n+1)` -/
def P5444268814716774480.Spec : Prop :=
  ∀ n, P5444268814716774480.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P1480780173455851483

`A039702(n+1)+A000040(n+1)%3`
-/

namespace A180217.P1480780173455851483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + Int.tmod (A000040 (n + 1)) 3

end

end A180217.P1480780173455851483

namespace A180217

/-- `A039702(n+1)+A000040(n+1)%3` -/
def P1480780173455851483.Spec : Prop :=
  ∀ n, P1480780173455851483.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P9466812170131432019

`A039702(n+1)+A001749(n+1)%3`
-/

namespace A180217.P9466812170131432019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + Int.tmod (A001749 (n + 1)) 3

end

end A180217.P9466812170131432019

namespace A180217

/-- `A039702(n+1)+A001749(n+1)%3` -/
def P9466812170131432019.Spec : Prop :=
  ∀ n, P9466812170131432019.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P5430577126670395782

`A039702(n+1)+A039710(n+1)%3`
-/

namespace A180217.P5430577126670395782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + Int.tmod (A039710 (n + 1)) 3

end

end A180217.P5430577126670395782

namespace A180217

/-- `A039702(n+1)+A039710(n+1)%3` -/
def P5430577126670395782.Spec : Prop :=
  ∀ n, P5430577126670395782.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P7235094406249380210

`A039702(n+1)+(A006093(n+1)+1)%3`
-/

namespace A180217.P7235094406249380210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1) + Int.tmod (A006093 (n + 1) + 1) 3

end

end A180217.P7235094406249380210

namespace A180217

/-- `A039702(n+1)+(A006093(n+1)+1)%3` -/
def P7235094406249380210.Spec : Prop :=
  ∀ n, P7235094406249380210.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P4507216335238732234

`A001222(A156798(A039710(n+1)))`
-/

namespace A180217.P4507216335238732234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156798 (A039710 (n + 1)).toNat).toNat

end

end A180217.P4507216335238732234

namespace A180217

/-- `A001222(A156798(A039710(n+1)))` -/
def P4507216335238732234.Spec : Prop :=
  ∀ n, P4507216335238732234.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P9767949963080650983

`A001221(A121030(A039710(n+1)²))`
-/

namespace A180217.P9767949963080650983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A121030 (A039710 (n + 1) ^ 2).toNat).toNat

end

end A180217.P9767949963080650983

namespace A180217

/-- `A001221(A121030(A039710(n+1)²))` -/
def P9767949963080650983.Spec : Prop :=
  ∀ n, P9767949963080650983.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P9401707623348395916

`A039730(A107822(A039710(n+1))+1)`
-/

namespace A180217.P9401707623348395916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039730 (A107822 (A039710 (n + 1)).toNat + 1).toNat

end

end A180217.P9401707623348395916

namespace A180217

/-- `A039730(A107822(A039710(n+1))+1)` -/
def P9401707623348395916.Spec : Prop :=
  ∀ n, P9401707623348395916.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P3574051147323158979

`A000194(A109045(A039710(n+1)+3))`
-/

namespace A180217.P3574051147323158979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A109045 (A039710 (n + 1) + 3).toNat).toNat

end

end A180217.P3574051147323158979

namespace A180217

/-- `A000194(A109045(A039710(n+1)+3))` -/
def P3574051147323158979.Spec : Prop :=
  ∀ n, P3574051147323158979.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P8350116662633982959

`A033810(A039710(n+1))+A000038(n)`
-/

namespace A180217.P8350116662633982959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A039710 (n + 1)).toNat + A000038 n

end

end A180217.P8350116662633982959

namespace A180217

/-- `A033810(A039710(n+1))+A000038(n)` -/
def P8350116662633982959.Spec : Prop :=
  ∀ n, P8350116662633982959.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P6310806528818465419

`∑{d}[A039710(n+1), A209279(A154690(#))]`
-/

namespace A180217.P6310806528818465419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209279 (A154690 d).toNat

end

end A180217.P6310806528818465419

namespace A180217

/-- `∑{d}[A039710(n+1), A209279(A154690(#))]` -/
def P6310806528818465419.Spec : Prop :=
  ∀ n, P6310806528818465419.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P14728757990072606715

`A319690(A000040(n+1))+A039702(n+1)`
-/

namespace A180217.P14728757990072606715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319690 (A000040 (n + 1)).toNat + A039702 (n + 1)

end

end A180217.P14728757990072606715

namespace A180217

/-- `A319690(A000040(n+1))+A039702(n+1)` -/
def P14728757990072606715.Spec : Prop :=
  ∀ n, P14728757990072606715.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P10236359914430726490

`A039701(n+1)+A010873(A000040(n+1))`
-/

namespace A180217.P10236359914430726490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1) + A010873 (A000040 (n + 1)).toNat

end

end A180217.P10236359914430726490

namespace A180217

/-- `A039701(n+1)+A010873(A000040(n+1))` -/
def P10236359914430726490.Spec : Prop :=
  ∀ n, P10236359914430726490.a n = A180217 (n + 1)

end A180217

/-! ## A180217.P2444736463728175536

`A064429(record[A000010(n+1)])%4+2`
-/

namespace A180217.P2444736463728175536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064429 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 4 + 2

end

end A180217.P2444736463728175536

namespace A180217

/-- `A064429(record[A000010(n+1)])%4+2` -/
def P2444736463728175536.Spec : Prop :=
  ∀ n, P2444736463728175536.a n = A180217 (n + 1)

end A180217

/-!
# A180218: a(n) = (n+2)! * Sum_{k=1..n} 1/k.

The programs for A180218, the canonical program `A180218.P2308509609643463431` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180218 has offset 0).

The definition of A180218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180218.P2308509609643463431

`(n+1)*(n+2)*A000254(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180218

/-- `(n+1)*(n+2)*A000254(n)` -/
def P2308509609643463431.Spec : Prop :=
  ∀ n, P2308509609643463431.a n = A180218 n

theorem P2308509609643463431.correct : P2308509609643463431.Spec := by
  intro n
  simp only [A180218]

end A180218

/-! ## A180218.P4599372377323973749

`(n+2)*A052881(n+1)`
-/

namespace A180218.P4599372377323973749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A052881 (n + 1)

end

end A180218.P4599372377323973749

namespace A180218

/-- `(n+2)*A052881(n+1)` -/
def P4599372377323973749.Spec : Prop :=
  ∀ n, P4599372377323973749.a n = A180218 n

end A180218

/-! ## A180218.P729663099808592164

`∑[n+1]*A052517(n+1)`
-/

namespace A180218.P729663099808592164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A052517 (n + 1)

end

end A180218.P729663099808592164

namespace A180218

/-- `∑[n+1]*A052517(n+1)` -/
def P729663099808592164.Spec : Prop :=
  ∀ n, P729663099808592164.a n = A180218 n

end A180218

/-! ## A180218.P12402249702469073983

`abs(A081048(n))*∑[2*(n+1)]`
-/

namespace A180218.P12402249702469073983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180218.P12402249702469073983

namespace A180218

/-- `abs(A081048(n))*∑[2*(n+1)]` -/
def P12402249702469073983.Spec : Prop :=
  ∀ n, P12402249702469073983.a n = A180218 n

end A180218

/-! ## A180218.P2743307935800694697

`A000254(n)*A002378(n+1)`
-/

namespace A180218.P2743307935800694697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n * A002378 (n + 1)

end

end A180218.P2743307935800694697

namespace A180218

/-- `A000254(n)*A002378(n+1)` -/
def P2743307935800694697.Spec : Prop :=
  ∀ n, P2743307935800694697.a n = A180218 n

end A180218

/-! ## A180218.P9140647257670818197

`A000254(n)*A060798(n+2)`
-/

namespace A180218.P9140647257670818197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n * A060798 (n + 2)

end

end A180218.P9140647257670818197

namespace A180218

/-- `A000254(n)*A060798(n+2)` -/
def P9140647257670818197.Spec : Prop :=
  ∀ n, P9140647257670818197.a n = A180218 n

end A180218

/-! ## A180218.P16319525504367988146

`A052881(n+2)-A001048(n+1)`
-/

namespace A180218.P16319525504367988146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 (n + 2) - A001048 (n + 1)

end

end A180218.P16319525504367988146

namespace A180218

/-- `A052881(n+2)-A001048(n+1)` -/
def P16319525504367988146.Spec : Prop :=
  ∀ n, P16319525504367988146.a n = A180218 n

end A180218

/-! ## A180218.P10246769239292416212

`A000254(n+2)-A129326(n+1)`
-/

namespace A180218.P10246769239292416212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 2) - A129326 (n + 1)

end

end A180218.P10246769239292416212

namespace A180218

/-- `A000254(n+2)-A129326(n+1)` -/
def P10246769239292416212.Spec : Prop :=
  ∀ n, P10246769239292416212.a n = A180218 n

end A180218

/-! ## A180218.P6396899803991138345

`2*A000254(n)*A000217(n+1)`
-/

namespace A180218.P6396899803991138345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000254 n * A000217 (n + 1)

end

end A180218.P6396899803991138345

namespace A180218

/-- `2*A000254(n)*A000217(n+1)` -/
def P6396899803991138345.Spec : Prop :=
  ∀ n, P6396899803991138345.a n = A180218 n

end A180218

/-! ## A180218.P5194735878642765201

`(n+2)*((2*n-1)*a(n-1)-(n²-1)*a(n-2))/n` with `a(0)=0, a(1)=6`
-/

namespace A180218.P5194735878642765201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 6] fun n a =>
  (n + 2 : ℚ) * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1) - ((n ^ 2 : ℤ) - 1 : ℚ) * a (n - 2)) / (n : ℚ)

end

end A180218.P5194735878642765201

namespace A180218

/-- `(n+2)*((2*n-1)*a(n-1)-(n²-1)*a(n-2))/n` -/
def P5194735878642765201.Spec : Prop :=
  ∀ n, P5194735878642765201.a n = (A180218 n : ℚ)

end A180218

/-!
# A180219: Partial sums of A002025.

The programs for A180219, there is no canonical definition to state claims against.
-/

/-! ## A180219.P2390082602267005095

`∑[A002025(n+1)]`
-/

namespace A180219.P2390082602267005095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P2390082602267005095

/-! ## A180219.P9035662398476416134

`∑[record[A002025(A020986(n))]]`
-/

namespace A180219.P9035662398476416134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P9035662398476416134

/-! ## A180219.P15993859599682044256

`∑[record[A002025(A022446(n))]]`
-/

namespace A180219.P15993859599682044256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P15993859599682044256

/-! ## A180219.P15335712080699446275

`∑[record[A002025(A028920(n))]]`
-/

namespace A180219.P15335712080699446275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P15335712080699446275

/-! ## A180219.P1705404481484936029

`∑[record[A002025(A038568(n))]]`
-/

namespace A180219.P1705404481484936029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P1705404481484936029

/-! ## A180219.P11471132115336098402

`∑[A002046(n+1)-A066539(n+1)]`
-/

namespace A180219.P11471132115336098402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) - A066539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P11471132115336098402

/-! ## A180219.P4758902460132824556

`∑[A259180(Δ[n²])]`
-/

namespace A180219.P4758902460132824556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P4758902460132824556

/-! ## A180219.P3775240689080869748

`∑[record[A259180(n^(n%2))]]`
-/

namespace A180219.P3775240689080869748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n ^ (n % 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P3775240689080869748

/-! ## A180219.P860429694511187951

`and(∑[A259180(2*n+1)], -1)`
-/

namespace A180219.P860429694511187951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A180219.P860429694511187951

/-! ## A180219.P15937416766404089544

`∑[record[(-1)^n*A259180(n+1)]]`
-/

namespace A180219.P15937416766404089544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A259180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180219.P15937416766404089544

/-!
# A180220: Partial sums of A002046.

The programs for A180220, there is no canonical definition to state claims against.
-/

/-! ## A180220.P4766122466150651336

`∑[A002046(n+1)]`
-/

namespace A180220.P4766122466150651336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P4766122466150651336

/-! ## A180220.P14488637116274043737

`∑[A259180(2*(n+1))]`
-/

namespace A180220.P14488637116274043737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P14488637116274043737

/-! ## A180220.P14342156341837477777

`∑[A066539(n+1)+A002025(n+1)]`
-/

namespace A180220.P14342156341837477777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066539 (n + 1) + A002025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P14342156341837477777

/-! ## A180220.P4163859040210965525

`A180219(n+1)+∑[A066539(n+1)]`
-/

namespace A180220.P4163859040210965525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180219 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P4163859040210965525

/-! ## A180220.P3768628432550596575

`∑[A180164(n+1)-A002025(n+1)]`
-/

namespace A180220.P3768628432550596575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180164 (n + 1) - A002025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P3768628432550596575

/-! ## A180220.P11113633029127699092

`∑[A180164(n+1)]-A180219(n+1)`
-/

namespace A180220.P11113633029127699092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A180219 (n + 1)

end

end A180220.P11113633029127699092

/-! ## A180220.P5536720014283062275

`∑[A061469(n+1)*A180327(n+1)]`
-/

namespace A180220.P5536720014283062275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061469 (n + 1) * A180327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P5536720014283062275

/-! ## A180220.P15428528288404775085

`∑[A180202(n+1)/A002025(n+1)]`
-/

namespace A180220.P15428528288404775085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180202 (n + 1) : ℚ) / (A002025 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P15428528288404775085

/-! ## A180220.P14388742175349792497

`∑[2*A275315(n+1)-A002025(n+1)]`
-/

namespace A180220.P14388742175349792497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275315 (n + 1) - A002025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180220.P14388742175349792497

/-!
# A180221: Numbers that can be written as sum of one or more distinct elements of A000043. Numbers k for which sigma(A180162(k))=2^k, k>=2.

The programs for A180221, there is no canonical definition to state claims against.
-/

/-! ## A180221.P4201616223346413995

`ceil(∑[A285144(n+1)/or(1, 2^n)+2]/2)`
-/

namespace A180221.P4201616223346413995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285144 (n + 1) : ℚ) / (Nat.lor 1 (2 ^ n) : ℚ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌉

end

end A180221.P4201616223346413995

/-!
# A180222: a(n) = 4*a(n-1) + 8*a(n-2), with a(1)=0 and a(2)=1.

The programs for A180222, the canonical program `A180222.P5191269107246008711` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180222 has offset 1).

The definition of A180222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+8*a(n-2)` (program `A180222.P5191269107246008711`, by `A180222.P5191269107246008711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180222.P5191269107246008711

`4*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180222

/-- `4*a(n-1)+8*a(n-2)` -/
def P5191269107246008711.Spec : Prop :=
  ∀ n, (P5191269107246008711.a n : ℤ) = A180222 (n + 1)

theorem P5191269107246008711.correct : P5191269107246008711.Spec := by
  intro n
  simp only [A180222, Nat.add_sub_cancel]

end A180222

/-! ## A180222.P8009223582884469574

`2^(n-1)*A002605(n)`
-/

namespace A180222.P8009223582884469574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002605 n : ℚ)

end

end A180222.P8009223582884469574

namespace A180222

/-- `2^(n-1)*A002605(n)` -/
def P8009223582884469574.Spec : Prop :=
  ∀ n, P8009223582884469574.a n = (A180222 (n + 1) : ℚ)

end A180222

/-! ## A180222.P18009674171445138972

`(-1)^(n+1)*A174443(n)`
-/

namespace A180222.P18009674171445138972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A174443 n

end

end A180222.P18009674171445138972

namespace A180222

/-- `(-1)^(n+1)*A174443(n)` -/
def P18009674171445138972.Spec : Prop :=
  ∀ n, P18009674171445138972.a n = A180222 (n + 1)

end A180222

/-! ## A180222.P11684211743999006004

`ogf(x/(1-4x-8x^2))`
-/

namespace A180222.P11684211743999006004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -8] n

end

end A180222.P11684211743999006004

namespace A180222

/-- `ogf(x/(1-4x-8x^2))` -/
def P11684211743999006004.Spec : Prop :=
  ∀ n, P11684211743999006004.a n = A180222 (n + 1)

end A180222

/-! ## A180222.P4546823071662067853

`4*(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A180222.P4546823071662067853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A180222.P4546823071662067853

namespace A180222

/-- `4*(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P4546823071662067853.Spec : Prop :=
  ∀ n, P4546823071662067853.a n = A180222 (n + 1)

end A180222

/-! ## A180222.P7298037315715135957

`abs(A174443(n))`
-/

namespace A180222.P7298037315715135957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174443 n|

end

end A180222.P7298037315715135957

namespace A180222

/-- `abs(A174443(n))` -/
def P7298037315715135957.Spec : Prop :=
  ∀ n, P7298037315715135957.a n = A180222 (n + 1)

end A180222

/-! ## A180222.P8740841544713447901

`2^(n-2)*A293007(n+1)`
-/

namespace A180222.P8740841544713447901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A293007 (n + 1) : ℚ)

end

end A180222.P8740841544713447901

namespace A180222

/-- `2^(n-2)*A293007(n+1)` -/
def P8740841544713447901.Spec : Prop :=
  ∀ n, P8740841544713447901.a n = (A180222 (n + 1) : ℚ)

end A180222

/-! ## A180222.P14962307884814359824

`2^(n-2)*A028860(n+2)`
-/

namespace A180222.P14962307884814359824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A028860 (n + 2) : ℚ)

end

end A180222.P14962307884814359824

namespace A180222

/-- `2^(n-2)*A028860(n+2)` -/
def P14962307884814359824.Spec : Prop :=
  ∀ n, P14962307884814359824.a n = (A180222 (n + 1) : ℚ)

end A180222

/-! ## A180222.P11885635184524816468

`A002605(n)*A011782(n)`
-/

namespace A180222.P11885635184524816468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n * A011782 n

end

end A180222.P11885635184524816468

namespace A180222

/-- `A002605(n)*A011782(n)` -/
def P11885635184524816468.Spec : Prop :=
  ∀ n, P11885635184524816468.a n = A180222 (n + 1)

end A180222

/-! ## A180222.P11372737288084084762

`A002605(n)*A131577(n)`
-/

namespace A180222.P11372737288084084762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n * A131577 n

end

end A180222.P11372737288084084762

namespace A180222

/-- `A002605(n)*A131577(n)` -/
def P11372737288084084762.Spec : Prop :=
  ∀ n, P11372737288084084762.a n = A180222 (n + 1)

end A180222

/-! ## A180222.P14405756265010291936

`A002605(n)*A158780(2*n)`
-/

namespace A180222.P14405756265010291936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n * A158780 (2 * n)

end

end A180222.P14405756265010291936

namespace A180222

/-- `A002605(n)*A158780(2*n)` -/
def P14405756265010291936.Spec : Prop :=
  ∀ n, P14405756265010291936.a n = A180222 (n + 1)

end A180222

/-! ## A180222.P6917659303201728130

`A000079(n)*A002605(n)/2`
-/

namespace A180222.P6917659303201728130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A002605 n : ℚ) / 2

end

end A180222.P6917659303201728130

namespace A180222

/-- `A000079(n)*A002605(n)/2` -/
def P6917659303201728130.Spec : Prop :=
  ∀ n, P6917659303201728130.a n = (A180222 (n + 1) : ℚ)

end A180222

/-! ## A180222.P14633496124754140409

`gcd(log(A174453(2*n+5)), A174443(n))`
-/

namespace A180222.P14633496124754140409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.log (A174453 (2 * n + 5) : ℝ))) (A174443 n)

end

end A180222.P14633496124754140409

namespace A180222

/-- `gcd(log(A174453(2*n+5)), A174443(n))` -/
def P14633496124754140409.Spec : Prop :=
  ∀ n, (P14633496124754140409.a n : ℤ) = A180222 (n + 1)

end A180222

/-! ## A180222.P16812033764428115639

`A158780(2*n)*A160444(2*n+1)`
-/

namespace A180222.P16812033764428115639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) * A160444 (2 * n + 1)

end

end A180222.P16812033764428115639

namespace A180222

/-- `A158780(2*n)*A160444(2*n+1)` -/
def P16812033764428115639.Spec : Prop :=
  ∀ n, P16812033764428115639.a n = A180222 (n + 1)

end A180222

/-!
# A180223: a(n) = (11*n^2 - 7*n)/2.

The programs for A180223, the canonical program `A180223.P16620297182991990532` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180223 has offset 0).

The definition of A180223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n²-7*n)/2` (program `A180223.P17432389639652035700`, by `A180223.P17432389639652035700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180223.P14297966372579400296

`n*(11*n-7)/2`
-/

namespace A180223.P14297966372579400296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((11 * n : ℤ) - 7) : ℚ) / 2

end

end A180223.P14297966372579400296

namespace A180223

/-- `n*(11*n-7)/2` -/
def P14297966372579400296.Spec : Prop :=
  ∀ n, P14297966372579400296.a n = (A180223 n : ℚ)

theorem P14297966372579400296.correct : P14297966372579400296.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A180223, Nat.add_sub_cancel, A180223.P14297966372579400296.a, A180223.P16620297182991990532.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A180223, Nat.add_sub_cancel, A180223.P14297966372579400296.a, A180223.P16620297182991990532.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A180223

/-! ## A180223.P17432389639652035700

`(11*n²-7*n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180223.P17432389639652035700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n ^ 2 : ℤ) - (7 * n : ℤ) : ℚ) / 2

end

end A180223.P17432389639652035700

namespace A180223

/-- `(11*n²-7*n)/2` -/
def P17432389639652035700.Spec : Prop :=
  ∀ n, P17432389639652035700.a n = (A180223 n : ℚ)

theorem P17432389639652035700.correct : P17432389639652035700.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A180223, Nat.add_sub_cancel, A180223.P17432389639652035700.a, A180223.P16620297182991990532.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A180223, Nat.add_sub_cancel, A180223.P17432389639652035700.a, A180223.P16620297182991990532.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A180223

/-! ## A180223.P16620297182991990532

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=15`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180223

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16620297182991990532.Spec : Prop :=
  ∀ n, P16620297182991990532.a n = A180223 n

theorem P16620297182991990532.correct : P16620297182991990532.Spec := by
  intro n
  simp only [A180223]

end A180223

/-! ## A180223.P14051411202616725011

`∑[a(n-1)+11]` with `a(0)=0, a(1)=2`
-/

namespace A180223.P14051411202616725011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180223.P14051411202616725011

namespace A180223

/-- `∑[a(n-1)+11]` -/
def P14051411202616725011.Spec : Prop :=
  ∀ n, (P14051411202616725011.a n : ℤ) = A180223 n

end A180223

/-! ## A180223.P1743055258724606766

`∑[ogf((2x+9x^2)/(1-2x+x^2))]`
-/

namespace A180223.P1743055258724606766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180223.P1743055258724606766

namespace A180223

/-- `∑[ogf((2x+9x^2)/(1-2x+x^2))]` -/
def P1743055258724606766.Spec : Prop :=
  ∀ n, P1743055258724606766.a n = A180223 n

end A180223

/-! ## A180223.P9196092263050519507

`ogf((2x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A180223.P9196092263050519507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 9] [1, -3, 3, -1] n

end

end A180223.P9196092263050519507

namespace A180223

/-- `ogf((2x+9x^2)/(1-3x+3x^2-x^3))` -/
def P9196092263050519507.Spec : Prop :=
  ∀ n, P9196092263050519507.a n = A180223 n

end A180223

/-! ## A180223.P12536977017304378743

`3*C(2*n, 2)-∑[n]`
-/

namespace A180223.P12536977017304378743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180223.P12536977017304378743

namespace A180223

/-- `3*C(2*n, 2)-∑[n]` -/
def P12536977017304378743.Spec : Prop :=
  ∀ n, P12536977017304378743.a n = A180223 n

end A180223

/-! ## A180223.P3567138456525107068

`n+A051865(n)`
-/

namespace A180223.P3567138456525107068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A051865 n

end

end A180223.P3567138456525107068

namespace A180223

/-- `n+A051865(n)` -/
def P3567138456525107068.Spec : Prop :=
  ∀ n, P3567138456525107068.a n = A180223 n

end A180223

/-! ## A180223.P3714611160151878469

`A226492(n)-n`
-/

namespace A180223.P3714611160151878469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n - (n : ℤ)

end

end A180223.P3714611160151878469

namespace A180223

/-- `A226492(n)-n` -/
def P3714611160151878469.Spec : Prop :=
  ∀ n, P3714611160151878469.a n = A180223 n

end A180223

/-! ## A180223.P13613191001939345426

`A051682(n)+n²`
-/

namespace A180223.P13613191001939345426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n + (n ^ 2 : ℤ)

end

end A180223.P13613191001939345426

namespace A180223

/-- `A051682(n)+n²` -/
def P13613191001939345426.Spec : Prop :=
  ∀ n, P13613191001939345426.a n = A180223 n

end A180223

/-! ## A180223.P16723983862886512050

`A051624(n)+∑[n]`
-/

namespace A180223.P16723983862886512050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180223.P16723983862886512050

namespace A180223

/-- `A051624(n)+∑[n]` -/
def P16723983862886512050.Spec : Prop :=
  ∀ n, P16723983862886512050.a n = A180223 n

end A180223

/-! ## A180223.P16599590049750658606

`A094159(n)-∑[n]`
-/

namespace A180223.P16599590049750658606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180223.P16599590049750658606

namespace A180223

/-- `A094159(n)-∑[n]` -/
def P16599590049750658606.Spec : Prop :=
  ∀ n, P16599590049750658606.a n = A180223 n

end A180223

/-! ## A180223.P6439092874278424662

`A152997(n)/2+n`
-/

namespace A180223.P6439092874278424662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152997 n : ℚ) / 2 + (n : ℚ)

end

end A180223.P6439092874278424662

namespace A180223

/-- `A152997(n)/2+n` -/
def P6439092874278424662.Spec : Prop :=
  ∀ n, P6439092874278424662.a n = (A180223 n : ℚ)

end A180223

/-! ## A180223.P8851239343584563089

`A022268(n)-3*n`
-/

namespace A180223.P8851239343584563089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n - (3 * n : ℤ)

end

end A180223.P8851239343584563089

namespace A180223

/-- `A022268(n)-3*n` -/
def P8851239343584563089.Spec : Prop :=
  ∀ n, P8851239343584563089.a n = A180223 n

end A180223

/-! ## A180223.P8080459299496059420

`A153875(n)/3+n`
-/

namespace A180223.P8080459299496059420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153875 n : ℚ) / 3 + (n : ℚ)

end

end A180223.P8080459299496059420

namespace A180223

/-- `A153875(n)/3+n` -/
def P8080459299496059420.Spec : Prop :=
  ∀ n, P8080459299496059420.a n = (A180223 n : ℚ)

end A180223

/-! ## A180223.P14635420936789451479

`A022269(n)-4*n`
-/

namespace A180223.P14635420936789451479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n - (4 * n : ℤ)

end

end A180223.P14635420936789451479

namespace A180223

/-- `A022269(n)-4*n` -/
def P14635420936789451479.Spec : Prop :=
  ∀ n, P14635420936789451479.a n = A180223 n

end A180223

/-! ## A180223.P3393404648190512513

`A254963(n)-5*n`
-/

namespace A180223.P3393404648190512513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n - (5 * n : ℤ)

end

end A180223.P3393404648190512513

namespace A180223

/-- `A254963(n)-5*n` -/
def P3393404648190512513.Spec : Prop :=
  ∀ n, P3393404648190512513.a n = A180223 n

end A180223

/-! ## A180223.P13285287630598360427

`A000567(n)+A000566(n)`
-/

namespace A180223.P13285287630598360427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + A000566 n

end

end A180223.P13285287630598360427

namespace A180223

/-- `A000567(n)+A000566(n)` -/
def P13285287630598360427.Spec : Prop :=
  ∀ n, P13285287630598360427.a n = A180223 n

end A180223

/-! ## A180223.P4208381814986628365

`A001107(n)+A000326(n)`
-/

namespace A180223.P4208381814986628365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n + A000326 n

end

end A180223.P4208381814986628365

namespace A180223

/-- `A001107(n)+A000326(n)` -/
def P4208381814986628365.Spec : Prop :=
  ∀ n, P4208381814986628365.a n = A180223 n

end A180223

/-! ## A180223.P872229500881855914

`A001106(n)+A000384(n)`
-/

namespace A180223.P872229500881855914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + A000384 n

end

end A180223.P872229500881855914

namespace A180223

/-- `A001106(n)+A000384(n)` -/
def P872229500881855914.Spec : Prop :=
  ∀ n, P872229500881855914.a n = A180223 n

end A180223

/-!
# A180224: a(n+1) is the least k such that 1/(a(n)+1) + 1/(a(n)+2) + ... + 1/k > 1, with a(1) = 1.

The programs for A180224, the canonical program `A180224.P15208035443506619355` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180224 has offset 1).

The definition of A180224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180224.P15208035443506619355

`A103762(a(n-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180224

/-- `A103762(a(n-1)+1)` -/
def P15208035443506619355.Spec : Prop :=
  ∀ n, P15208035443506619355.a n = A180224 (n + 1)

theorem P15208035443506619355.correct : P15208035443506619355.Spec := by
  intro n
  simp only [A180224, Nat.add_sub_cancel]

end A180224

/-! ## A180224.P4977872924670364202

`floor(e*(a(n-1)+log(2)))` with `a(0)=1`
-/

namespace A180224.P4977872924670364202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.exp 1 * ((a (n - 1) : ℝ) + Real.log (2 : ℝ))⌋

end

end A180224.P4977872924670364202

namespace A180224

/-- `floor(e*(a(n-1)+log(2)))` -/
def P4977872924670364202.Spec : Prop :=
  ∀ n, P4977872924670364202.a n = A180224 (n + 1)

end A180224

/-! ## A180224.P17298173988023597871

`∑[A331028(n+1)]`
-/

namespace A180224.P17298173988023597871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180224.P17298173988023597871

namespace A180224

/-- `∑[A331028(n+1)]` -/
def P17298173988023597871.Spec : Prop :=
  ∀ n, P17298173988023597871.a n = A180224 (n + 1)

end A180224

/-! ## A180224.P8809371435101946820

`∑[record[A331028(A028920(n))]]`
-/

namespace A180224.P8809371435101946820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331028 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180224.P8809371435101946820

namespace A180224

/-- `∑[record[A331028(A028920(n))]]` -/
def P8809371435101946820.Spec : Prop :=
  ∀ n, P8809371435101946820.a n = A180224 (n + 1)

end A180224

/-! ## A180224.P16235118907111193534

`∑[record[A331028(A033930(n))]]`
-/

namespace A180224.P16235118907111193534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331028 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180224.P16235118907111193534

namespace A180224

/-- `∑[record[A331028(A033930(n))]]` -/
def P16235118907111193534.Spec : Prop :=
  ∀ n, P16235118907111193534.a n = A180224 (n + 1)

end A180224

/-!
# A180226: a(n) = 4*a(n-1) + 10*a(n-2), with a(1)=0 and a(2)=1.

The programs for A180226, the canonical program `A180226.P7006198755142377699` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180226 has offset 1).

The definition of A180226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+10*a(n-2)` (program `A180226.P7006198755142377699`, by `A180226.P7006198755142377699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180226.P7006198755142377699

`4*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180226

/-- `4*a(n-1)+10*a(n-2)` -/
def P7006198755142377699.Spec : Prop :=
  ∀ n, (P7006198755142377699.a n : ℤ) = A180226 (n + 1)

theorem P7006198755142377699.correct : P7006198755142377699.Spec := by
  intro n
  simp only [A180226, Nat.add_sub_cancel]

end A180226

/-! ## A180226.P13521418211901378630

`ogf(x/(1-4x-10x^2))`
-/

namespace A180226.P13521418211901378630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -10] n

end

end A180226.P13521418211901378630

namespace A180226

/-- `ogf(x/(1-4x-10x^2))` -/
def P13521418211901378630.Spec : Prop :=
  ∀ n, P13521418211901378630.a n = A180226 (n + 1)

end A180226

/-! ## A180226.P8599159386128177224

`2*(3*a(n-1)-(a(n-1)-5*a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A180226.P8599159386128177224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2)))

end

end A180226.P8599159386128177224

namespace A180226

/-- `2*(3*a(n-1)-(a(n-1)-5*a(n-2)))` -/
def P8599159386128177224.Spec : Prop :=
  ∀ n, P8599159386128177224.a n = A180226 (n + 1)

end A180226

/-!
# A180227: Triangular array T(A,B) read by rows: minimal number of steps required to obtain exactly 1 liter in jug A (irrespective of jug B), starting with infinite supply of water and two empty jugs with capacities A and B liters. -1 if not possible. A>=B>=1.

The programs for A180227, there is no canonical definition to state claims against.
-/

/-! ## A180227.P17592256346992066262

`A180228(A185870(n+1))`
-/

namespace A180227.P17592256346992066262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180228 (A185870 (n + 1)).toNat

end

end A180227.P17592256346992066262

/-! ## A180227.P2699016430393681042

`A180228(A185869(n+1)+1)`
-/

namespace A180227.P2699016430393681042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180228 (A185869 (n + 1) + 1).toNat

end

end A180227.P2699016430393681042

/-! ## A180227.P884886028695954507

`A180228(A038722(n+1)+3*n+2)`
-/

namespace A180227.P884886028695954507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180228 (A038722 (n + 1) + (3 * n + 2 : ℤ)).toNat

end

end A180227.P884886028695954507

/-! ## A180227.P10182026314752585423

`A180228(A326178(A185869(n+1)))`
-/

namespace A180227.P10182026314752585423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180228 (A326178 (A185869 (n + 1)).toNat).toNat

end

end A180227.P10182026314752585423

/-! ## A180227.P122370197036478664

`A180228(A016789(n)+A114327(n)+1+n)`
-/

namespace A180227.P122370197036478664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180228 (A016789 n + (A114327 n + 1 + (n : ℤ))).toNat

end

end A180227.P122370197036478664

/-!
# A180231: Prime partial sums of digits of decimal expansion of e.

The programs for A180231, there is no canonical definition to state claims against.
-/

/-! ## A180231.P17227790911568792560

`p?[A046975(n)]`
-/

namespace A180231.P17227790911568792560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P17227790911568792560

/-! ## A180231.P12677859782308069146

`p?[∑[A001113(n)]]`
-/

namespace A180231.P12677859782308069146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P12677859782308069146

/-! ## A180231.P7950559927032773438

`p?[A091131(n)+a(n-1)]` with `a(0)=2`
-/

namespace A180231.P7950559927032773438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A091131 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P7950559927032773438

/-! ## A180231.P15292900990087658535

`p?[a(n-1)+9-A121239(n)]` with `a(0)=2`
-/

namespace A180231.P15292900990087658535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (9 - A121239 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P15292900990087658535

/-! ## A180231.P2472815894325268290

`filter[A046975(n), A010051(#)]`
-/

namespace A180231.P2472815894325268290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A180231.P2472815894325268290

/-! ## A180231.P5777756140307831582

`p?[A197563(n)-A046974(n)]`
-/

namespace A180231.P5777756140307831582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n - A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P5777756140307831582

/-! ## A180231.P1116927315530728564

`A046975(A071117(n+1)-1)`
-/

namespace A180231.P1116927315530728564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 (A071117 (n + 1) - 1).toNat

end

end A180231.P1116927315530728564

/-! ## A180231.P3584694859473664648

`p?[a(n-1)+A073212(n)-A000796(n)]` with `a(0)=2`
-/

namespace A180231.P3584694859473664648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (A073212 n - A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P3584694859473664648

/-! ## A180231.P1206859980800409344

`p?[∑[A001355(2*(n+1))]]`
-/

namespace A180231.P1206859980800409344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P1206859980800409344

/-! ## A180231.P9197848665833482631

`p?[∑[A110779(2*n+1)]]`
-/

namespace A180231.P9197848665833482631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P9197848665833482631

/-! ## A180231.P14718841093829817242

`filter[A046975(n), A080339(#)]`
-/

namespace A180231.P14718841093829817242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A180231.P14718841093829817242

/-! ## A180231.P13791201093389318375

`p?[A000720(A217329(n+1))]`
-/

namespace A180231.P13791201093389318375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A217329 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P13791201093389318375

/-! ## A180231.P13262183358101702878

`p?[A066328(p?[A217329(n+1)])]`
-/

namespace A180231.P13262183358101702878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217329 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180231.P13262183358101702878

/-!
# A180232: a(n) = n*(17*n - 13)/2.

The programs for A180232, the canonical program `A180232.P8999119489988120402` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180232 has offset 0).

The definition of A180232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-13)/2` (program `A180232.P13604384780547792823`, by `A180232.P13604384780547792823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180232.P13604384780547792823

`n*(17*n-13)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180232.P13604384780547792823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((17 * n : ℤ) - 13) : ℚ) / 2

end

end A180232.P13604384780547792823

namespace A180232

/-- `n*(17*n-13)/2` -/
def P13604384780547792823.Spec : Prop :=
  ∀ n, P13604384780547792823.a n = (A180232 n : ℚ)

theorem P13604384780547792823.correct : P13604384780547792823.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A180232, Nat.add_sub_cancel, A180232.P13604384780547792823.a, A180232.P8999119489988120402.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A180232, Nat.add_sub_cancel, A180232.P13604384780547792823.a, A180232.P8999119489988120402.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A180232

/-! ## A180232.P8999119489988120402

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=21`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180232

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8999119489988120402.Spec : Prop :=
  ∀ n, P8999119489988120402.a n = A180232 n

theorem P8999119489988120402.correct : P8999119489988120402.Spec := by
  intro n
  simp only [A180232]

end A180232

/-! ## A180232.P2867668945931766903

`n+A051871(n)`
-/

namespace A180232.P2867668945931766903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A051871 n

end

end A180232.P2867668945931766903

namespace A180232

/-- `n+A051871(n)` -/
def P2867668945931766903.Spec : Prop :=
  ∀ n, P2867668945931766903.a n = A180232 n

end A180232

/-! ## A180232.P10632265402312087268

`∑[a(n-1)+17]` with `a(0)=0, a(1)=2`
-/

namespace A180232.P10632265402312087268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180232.P10632265402312087268

namespace A180232

/-- `∑[a(n-1)+17]` -/
def P10632265402312087268.Spec : Prop :=
  ∀ n, (P10632265402312087268.a n : ℤ) = A180232 n

end A180232

/-! ## A180232.P17856900519916303988

`17*C(n, 2)+2*n`
-/

namespace A180232.P17856900519916303988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * Nat.choose n 2 + 2 * n

end

end A180232.P17856900519916303988

namespace A180232

/-- `17*C(n, 2)+2*n` -/
def P17856900519916303988.Spec : Prop :=
  ∀ n, (P17856900519916303988.a n : ℤ) = A180232 n

end A180232

/-! ## A180232.P13599584310657028932

`15-∑[a(n-1)-17]` with `a(0)=15`
-/

namespace A180232.P13599584310657028932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180232.P13599584310657028932

namespace A180232

/-- `15-∑[a(n-1)-17]` -/
def P13599584310657028932.Spec : Prop :=
  ∀ n, P13599584310657028932.a n = A180232 n

end A180232

/-! ## A180232.P14069069053016803205

`A051869(n)+n²`
-/

namespace A180232.P14069069053016803205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + (n ^ 2 : ℤ)

end

end A180232.P14069069053016803205

namespace A180232

/-- `A051869(n)+n²` -/
def P14069069053016803205.Spec : Prop :=
  ∀ n, P14069069053016803205.a n = A180232 n

end A180232

/-! ## A180232.P5741781908156422147

`A051870(n)+∑[n]`
-/

namespace A180232.P5741781908156422147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180232.P5741781908156422147

namespace A180232

/-- `A051870(n)+∑[n]` -/
def P5741781908156422147.Spec : Prop :=
  ∀ n, P5741781908156422147.a n = A180232 n

end A180232

/-! ## A180232.P12155016186562456083

`A152751(n)-∑[n]`
-/

namespace A180232.P12155016186562456083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180232.P12155016186562456083

namespace A180232

/-- `A152751(n)-∑[n]` -/
def P12155016186562456083.Spec : Prop :=
  ∀ n, P12155016186562456083.a n = A180232 n

end A180232

/-! ## A180232.P14438185401522552083

`A152995(n)-C(n, 2)`
-/

namespace A180232.P14438185401522552083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (Nat.choose n 2 : ℤ)

end

end A180232.P14438185401522552083

namespace A180232

/-- `A152995(n)-C(n, 2)` -/
def P14438185401522552083.Spec : Prop :=
  ∀ n, P14438185401522552083.a n = A180232 n

end A180232

/-! ## A180232.P8339621665262476760

`n²+A263226(n)/2`
-/

namespace A180232.P8339621665262476760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A263226 n : ℚ) / 2

end

end A180232.P8339621665262476760

namespace A180232

/-- `n²+A263226(n)/2` -/
def P8339621665262476760.Spec : Prop :=
  ∀ n, P8339621665262476760.a n = (A180232 n : ℚ)

end A180232

/-! ## A180232.P312231847327686016

`A033567(n)+∑[n-1]`
-/

namespace A180232.P312231847327686016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180232.P312231847327686016

namespace A180232

/-- `A033567(n)+∑[n-1]` -/
def P312231847327686016.Spec : Prop :=
  ∀ n, P312231847327686016.a n = A180232 n

end A180232

/-! ## A180232.P13675308883507664294

`∑[A298035(n)-n]-1`
-/

namespace A180232.P13675308883507664294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298035 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180232.P13675308883507664294

namespace A180232

/-- `∑[A298035(n)-n]-1` -/
def P13675308883507664294.Spec : Prop :=
  ∀ n, P13675308883507664294.a n = A180232 n

end A180232

/-! ## A180232.P7378202871003942233

`n²+A226489(n)-n`
-/

namespace A180232.P7378202871003942233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A226489 n - (n : ℤ))

end

end A180232.P7378202871003942233

namespace A180232

/-- `n²+A226489(n)-n` -/
def P7378202871003942233.Spec : Prop :=
  ∀ n, P7378202871003942233.a n = A180232 n

end A180232

/-! ## A180232.P4051918290651725368

`A226490(n)+n-n²`
-/

namespace A180232.P4051918290651725368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A180232.P4051918290651725368

namespace A180232

/-- `A226490(n)+n-n²` -/
def P4051918290651725368.Spec : Prop :=
  ∀ n, P4051918290651725368.a n = A180232 n

end A180232

/-! ## A180232.P10874961559759611749

`∑[n]+A139271(n)-n`
-/

namespace A180232.P10874961559759611749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A139271 n - (n : ℤ))

end

end A180232.P10874961559759611749

namespace A180232

/-- `∑[n]+A139271(n)-n` -/
def P10874961559759611749.Spec : Prop :=
  ∀ n, P10874961559759611749.a n = A180232 n

end A180232

/-! ## A180232.P9066197087968882487

`A152773(n)+n*(n-2)`
-/

namespace A180232.P9066197087968882487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n + (n : ℤ) * ((n : ℤ) - 2)

end

end A180232.P9066197087968882487

namespace A180232

/-- `A152773(n)+n*(n-2)` -/
def P9066197087968882487.Spec : Prop :=
  ∀ n, P9066197087968882487.a n = A180232 n

end A180232

/-! ## A180232.P17394739874889868130

`A051873(n)-n*(n-2)`
-/

namespace A180232.P17394739874889868130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n - (n : ℤ) * ((n : ℤ) - 2)

end

end A180232.P17394739874889868130

namespace A180232

/-- `A051873(n)-n*(n-2)` -/
def P17394739874889868130.Spec : Prop :=
  ∀ n, P17394739874889868130.a n = A180232 n

end A180232

/-! ## A180232.P2258417721352486403

`A051868(n)+A000326(n)`
-/

namespace A180232.P2258417721352486403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + A000326 n

end

end A180232.P2258417721352486403

namespace A180232

/-- `A051868(n)+A000326(n)` -/
def P2258417721352486403.Spec : Prop :=
  ∀ n, P2258417721352486403.a n = A180232 n

end A180232

/-!
# A180233: The sequence gives prime numbers formed from the sum of the squares of composite numbers and the corresponding prime numbers.

The programs for A180233, there is no canonical definition to state claims against.
-/

/-! ## A180233.P14691476960232928855

`p?[A062312(n+2)+A000040(n+1)]`
-/

namespace A180233.P14691476960232928855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180233.P14691476960232928855

/-! ## A180233.P11424897785234030349

`p?[record[A047814(n)]+A018252(n+1)²]`
-/

namespace A180233.P11424897785234030349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + A018252 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180233.P11424897785234030349

/-! ## A180233.P12648602877590579248

`p?[A000040(n+1)+A002808(n+1)²]`
-/

namespace A180233.P12648602877590579248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A002808 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180233.P12648602877590579248

/-! ## A180233.P8710372244878031922

`p?[A000040(n+1)+A018252(n+2)²]`
-/

namespace A180233.P8710372244878031922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A018252 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180233.P8710372244878031922

/-!
# A180234: Demi-tribonacci numbers (rounding down): a(0)=a(1)=0, a(2)=2; a(n) = floor( (a(n-1)+a(n-2)+a(n-3))/2 ).

The programs for A180234, the canonical program `A180234.P312079495676358152` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180234 has offset 0).

The definition of A180234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((a(n-1)+a(n-2)+a(n-3))/2)` (program `A180234.P312079495676358152`, by `A180234.P312079495676358152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180234.P312079495676358152

`floor((a(n-1)+a(n-2)+a(n-3))/2)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180234

/-- `floor((a(n-1)+a(n-2)+a(n-3))/2)` -/
def P312079495676358152.Spec : Prop :=
  ∀ n, P312079495676358152.a n = A180234 n

theorem P312079495676358152.correct : P312079495676358152.Spec := by
  intro n
  simp only [A180234]

end A180234

/-! ## A180234.P17733718513887178524

`A004526(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180234.P17733718513887178524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A004526 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A180234.P17733718513887178524

namespace A180234

/-- `A004526(a(n-1)+a(n-2)+a(n-3))` -/
def P17733718513887178524.Spec : Prop :=
  ∀ n, P17733718513887178524.a n = A180234 n

end A180234

/-! ## A180234.P6572517802902974984

`A123108(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180234.P6572517802902974984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A123108 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A180234.P6572517802902974984

namespace A180234

/-- `A123108(a(n-1)+a(n-2)+a(n-3))` -/
def P6572517802902974984.Spec : Prop :=
  ∀ n, P6572517802902974984.a n = A180234 n

end A180234

/-! ## A180234.P11926372198335560258

`A008619(a(n-1)+a(n-2)+a(n-3))-1` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180234.P11926372198335560258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A008619 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat - 1

end

end A180234.P11926372198335560258

namespace A180234

/-- `A008619(a(n-1)+a(n-2)+a(n-3))-1` -/
def P11926372198335560258.Spec : Prop :=
  ∀ n, P11926372198335560258.a n = A180234 n

end A180234

/-! ## A180234.P15386013133883201037

`A065033(a(n-1)+a(n-2)+a(n-3)-1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180234.P15386013133883201037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A065033 (a (n - 1) + (a (n - 2) + a (n - 3)) - 1).toNat

end

end A180234.P15386013133883201037

namespace A180234

/-- `A065033(a(n-1)+a(n-2)+a(n-3)-1)` -/
def P15386013133883201037.Spec : Prop :=
  ∀ n, P15386013133883201037.a n = A180234 n

end A180234

/-!
# A180235: Demi-tribonacci numbers (rounding up): a(0)=a(1)=0, a(2)=2; a(n) = ceiling( (a(n-1)+a(n-2)+a(n-3))/2 ).

The programs for A180235, the canonical program `A180235.P10724765866587646110` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180235 has offset 0).

The definition of A180235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((a(n-1)+a(n-2)+a(n-3))/2)` (program `A180235.P10724765866587646110`, by `A180235.P10724765866587646110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180235.P10724765866587646110

`ceil((a(n-1)+a(n-2)+a(n-3))/2)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180235

/-- `ceil((a(n-1)+a(n-2)+a(n-3))/2)` -/
def P10724765866587646110.Spec : Prop :=
  ∀ n, P10724765866587646110.a n = A180235 n

theorem P10724765866587646110.correct : P10724765866587646110.Spec := by
  intro n
  simp only [A180235]

end A180235

/-! ## A180235.P14523223429082551612

`round((a(n-1)+a(n-2)+a(n-3))/2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180235.P14523223429082551612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) + (a (n - 2) + a (n - 3)) : ℚ) / 2)

end

end A180235.P14523223429082551612

namespace A180235

/-- `round((a(n-1)+a(n-2)+a(n-3))/2)` -/
def P14523223429082551612.Spec : Prop :=
  ∀ n, P14523223429082551612.a n = A180235 n

end A180235

/-! ## A180235.P14465651601019284430

`A065033(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180235.P14465651601019284430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A065033 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A180235.P14465651601019284430

namespace A180235

/-- `A065033(a(n-1)+a(n-2)+a(n-3))` -/
def P14465651601019284430.Spec : Prop :=
  ∀ n, P14465651601019284430.a n = A180235 n

end A180235

/-! ## A180235.P8946148401305146341

`A110654(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180235.P8946148401305146341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A110654 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A180235.P8946148401305146341

namespace A180235

/-- `A110654(a(n-1)+a(n-2)+a(n-3))` -/
def P8946148401305146341.Spec : Prop :=
  ∀ n, P8946148401305146341.a n = A180235 n

end A180235

/-! ## A180235.P4901095001656602771

`A004526(a(n-1)+a(n-2)+a(n-3)+1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A180235.P4901095001656602771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A004526 (a (n - 1) + (a (n - 2) + a (n - 3)) + 1).toNat

end

end A180235.P4901095001656602771

namespace A180235

/-- `A004526(a(n-1)+a(n-2)+a(n-3)+1)` -/
def P4901095001656602771.Spec : Prop :=
  ∀ n, P4901095001656602771.a n = A180235 n

end A180235

/-!
# A180236: a(n) = a(n-2)+a(n-4); a(1)=a(4)=101, a(2)=a(3)=10.

The programs for A180236, the canonical program `A180236.P4558518293003425209` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180236 has offset 1).

The definition of A180236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-4)` (program `A180236.P4558518293003425209`, by `A180236.P4558518293003425209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180236.P4558518293003425209

`a(n-2)+a(n-4)` with `a(0)=101, a(1)=10, a(2)=10, a(3)=101`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180236

/-- `a(n-2)+a(n-4)` -/
def P4558518293003425209.Spec : Prop :=
  ∀ n, (P4558518293003425209.a n : ℤ) = A180236 (n + 1)

theorem P4558518293003425209.correct : P4558518293003425209.Spec := by
  intro n
  simp only [A180236, Nat.add_sub_cancel]

end A180236

/-! ## A180236.P10048354536887785024

`A162720(A040290(n)*A080882(n))`
-/

namespace A180236.P10048354536887785024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162720 (A040290 n * A080882 n).toNat

end

end A180236.P10048354536887785024

namespace A180236

/-- `A162720(A040290(n)*A080882(n))` -/
def P10048354536887785024.Spec : Prop :=
  ∀ n, P10048354536887785024.a n = A180236 (n + 1)

end A180236

/-!
# A180238: a(n) is the number of distinct billiard words with length n on an alphabet of 3 symbols.

The programs for A180238, there is no canonical definition to state claims against.
-/

/-! ## A180238.P3733035679747030814

`∑[A134478(∏[C(comp[∑[n]]-n, 2)])]`
-/

namespace A180238.P3733035679747030814
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180238.P3733035679747030814

/-! ## A180238.P1035748874302281283

`A105266(A128128(n))`
-/

namespace A180238.P1035748874302281283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105266 (A128128 n).toNat

end

end A180238.P1035748874302281283

/-!
# A180239: a(n) is the number of distinct billiard words with length n on an alphabet of 4 symbols.

The programs for A180239, there is no canonical definition to state claims against.
-/

/-! ## A180239.P17356254995525215332

`A008616(6*A209836(n))`
-/

namespace A180239.P17356254995525215332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (6 * A209836 n).toNat

end

end A180239.P17356254995525215332

/-! ## A180239.P18050059701666788772

`4^n-A235268(A000045(n)!)`
-/

namespace A180239.P18050059701666788772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A235268 (Nat.factorial (A000045 n).toNat)

end

end A180239.P18050059701666788772

/-!
# A180240: Number of arc-transitive simple graphs on n nodes.

The programs for A180240, there is no canonical definition to state claims against.
-/

/-! ## A180240.P5943109135975191165

`A087145(n+1)+A286280(ceil(acot(n)+n))-1`
-/

namespace A180240.P5943109135975191165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087145 (n + 1) + (A286280 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat - 1)

end

end A180240.P5943109135975191165

/-! ## A180240.P8768790232284257354

`A286280(abs(1-n)+2)+A087145(n+1)-1`
-/

namespace A180240.P8768790232284257354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286280 (|1 - (n : ℤ)| + 2).toNat + (A087145 (n + 1) - 1)

end

end A180240.P8768790232284257354

/-! ## A180240.P3479239125071717757

`A023443(A286280(abs(1-n)+2)+A087145(n+1))`
-/

namespace A180240.P3479239125071717757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A286280 (|1 - (n : ℤ)| + 2).toNat + A087145 (n + 1)).toNat

end

end A180240.P3479239125071717757

/-! ## A180240.P2350822298380413471

`A087145(n+1)+∏{e}[A151821(n+1), A286280(#)]-1`
-/

namespace A180240.P2350822298380413471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087145 (n + 1) + (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A286280 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A180240.P2350822298380413471

/-! ## A180240.P1659137414009355187

`A286931(n+1)-1`
-/

namespace A180240.P1659137414009355187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286931 (n + 1) - 1

end

end A180240.P1659137414009355187

/-!
# A180241: Numbers whose square can be expressed as the sum of a square, a cube and a fourth power, all positive.

The programs for A180241, there is no canonical definition to state claims against.
-/

/-! ## A180241.P6815728872145545235

`lt[0, A180243(n+1)]+1`
-/

namespace A180241.P6815728872145545235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A180241.P6815728872145545235

/-! ## A180241.P16262696197571150491

`lt[2, C(n, a(A180243(n)))]` with `a(0)=0`
-/

namespace A180241.P16262696197571150491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose n (f2 (A180243 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180241.P16262696197571150491

/-! ## A180241.P1807331290230727363

`comp[A180242(n+1)-1]+1`
-/

namespace A180241.P1807331290230727363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180242 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A180241.P1807331290230727363

/-! ## A180241.P5200881159317968696

`lt[0, A180243(A028310(n))]`
-/

namespace A180241.P5200881159317968696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180243 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A180241.P5200881159317968696

/-! ## A180241.P2948500922369059147

`eq[1, A216228(a(A180243(n)))]` with `a(0)=2`
-/

namespace A180241.P2948500922369059147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A216228 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180241.P2948500922369059147

/-! ## A180241.P14382106523083160611

`eq[1, A000009(a(A180243(n)))]` with `a(0)=3`
-/

namespace A180241.P14382106523083160611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000009 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180241.P14382106523083160611

/-! ## A180241.P4385703585703374375

`eq[1, A000010(a(A180243(n)))]` with `a(0)=3`
-/

namespace A180241.P4385703585703374375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180241.P4385703585703374375

/-! ## A180241.P10462068870533850300

`eq[1, A000045(a(A180243(n)))]` with `a(0)=3`
-/

namespace A180241.P10462068870533850300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180241.P10462068870533850300

/-! ## A180241.P17334626596018717044

`eq[1, A007318(a(A180243(n)))]` with `a(0)=4`
-/

namespace A180241.P17334626596018717044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180241.P17334626596018717044

/-! ## A180241.P5691065648205090144

`eq[2, A000005(a(A180243(n)))]` with `a(0)=4`
-/

namespace A180241.P5691065648205090144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180241.P5691065648205090144

/-!
# A180242: Numbers whose square cannot be expressed as the sum of a positive square, a positive cube and a positive fourth power.

The programs for A180242, there is no canonical definition to state claims against.
-/

/-! ## A180242.P15680250034933418751

`lt[A180243(n+1), 1]+1`
-/

namespace A180242.P15680250034933418751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180243 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A180242.P15680250034933418751

/-! ## A180242.P375050278024950043

`record[n/a(A180243(n))]` with `a(0)=1, a(1)=2`
-/

namespace A180242.P375050278024950043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℚ) / f1 (A180243 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180242.P375050278024950043

/-! ## A180242.P15275019761735281947

`eq[0, A005843(a(A180243(n))+3)]` with `a(0)=-3`
-/

namespace A180242.P15275019761735281947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f2 =>
  A005843 (f2 (A180243 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180242.P15275019761735281947

/-! ## A180242.P15644138315609605864

`record[gcd(A160356(n+1), A180243(n+1))]`
-/

namespace A180242.P15644138315609605864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160356 (n + 1)) (A180243 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180242.P15644138315609605864

/-! ## A180242.P13272420667585486751

`eq[17, A356783(a(A180243(n)))]` with `a(0)=4`
-/

namespace A180242.P13272420667585486751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A356783 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180242.P13272420667585486751

/-!
# A180243: a(n) = number of ways in which the square of n can be expressed as the sum of a square, a cube and a fourth power.

The programs for A180243, there is no canonical definition to state claims against.
-/

/-! ## A180243.P2950879338983958456

`A097411(A000031(n))%A097411(n+1)`
-/

namespace A180243.P2950879338983958456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097411 (A000031 n).toNat) (A097411 (n + 1))

end

end A180243.P2950879338983958456

/-!
# A180248: Odd composite squarefree numbers k such that r = 2*(p - 2 + k/p)/(p-1) is an integer for each prime divisor p of k.

The programs for A180248, there is no canonical definition to state claims against.
-/

/-! ## A180248.P9150630357678578101

`∩[A020136(n+1), A231569(n+1)]`
-/

namespace A180248.P9150630357678578101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P9150630357678578101

/-! ## A180248.P10007098668398503053

`∩[A020144(n+1), A231569(n+1)]`
-/

namespace A180248.P10007098668398503053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P10007098668398503053

/-! ## A180248.P7260937246519465488

`∩[A020192(n+1), A231569(n+1)]`
-/

namespace A180248.P7260937246519465488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P7260937246519465488

/-! ## A180248.P17785201908819691280

`∩[A020136(n+1), A318555(n+1)]`
-/

namespace A180248.P17785201908819691280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P17785201908819691280

/-! ## A180248.P2097462528890068920

`∩[A020144(n+1), A318555(n+1)]`
-/

namespace A180248.P2097462528890068920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P2097462528890068920

/-! ## A180248.P12694516560351559424

`∩[A020192(n+1), A318555(n+1)]`
-/

namespace A180248.P12694516560351559424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P12694516560351559424

/-! ## A180248.P68688142667925021

`∩[A231569(n+1), A392922(n+1)]`
-/

namespace A180248.P68688142667925021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P68688142667925021

/-! ## A180248.P84962698217356561

`∩[A231573(n+1), A392922(n+1)]`
-/

namespace A180248.P84962698217356561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P84962698217356561

/-! ## A180248.P2358552406064215726

`∩[A318555(n+1), A392922(n+1)]`
-/

namespace A180248.P2358552406064215726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P2358552406064215726

/-! ## A180248.P13668700880741306866

`∩[A231569(n+1), A238574(n+1)]`
-/

namespace A180248.P13668700880741306866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P13668700880741306866

/-! ## A180248.P1585400758045521787

`∩[A238574(n+1), A318555(n+1)]`
-/

namespace A180248.P1585400758045521787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180248.P1585400758045521787

/-!
# A180249: a(n) is the total number of k-reverses of n.

The programs for A180249, the canonical program `A180249.P11033069558763702019` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180249 has offset 1).

The definition of A180249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180249.P11033069558763702019

`A328688(n+1)+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A180249

/-- `A328688(n+1)+1` -/
def P11033069558763702019.Spec : Prop :=
  ∀ n, P11033069558763702019.a n = A180249 (n + 1)

theorem P11033069558763702019.correct : P11033069558763702019.Spec := by
  intro n
  simp only [A180249, Nat.add_sub_cancel]

end A180249

/-! ## A180249.P16063902999721081646

`∑{d}[n+1, A180322(#)]`
-/

namespace A180249.P16063902999721081646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A180322 d

end

end A180249.P16063902999721081646

namespace A180249

/-- `∑{d}[n+1, A180322(#)]` -/
def P16063902999721081646.Spec : Prop :=
  ∀ n, P16063902999721081646.a n = A180249 (n + 1)

end A180249

/-! ## A180249.P16795680144039483683

`A180750(n+1)+A179781(n+1)`
-/

namespace A180249.P16795680144039483683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180750 (n + 1) + A179781 (n + 1)

end

end A180249.P16795680144039483683

namespace A180249

/-- `A180750(n+1)+A179781(n+1)` -/
def P16795680144039483683.Spec : Prop :=
  ∀ n, P16795680144039483683.a n = A180249 (n + 1)

end A180249

/-! ## A180249.P9095453591524368607

`A007055(n+1)/2`
-/

namespace A180249.P9095453591524368607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007055 (n + 1) : ℚ) / 2

end

end A180249.P9095453591524368607

namespace A180249

/-- `A007055(n+1)/2` -/
def P9095453591524368607.Spec : Prop :=
  ∀ n, P9095453591524368607.a n = (A180249 (n + 1) : ℚ)

end A180249

/-! ## A180249.P10168025773756227834

`A000046(n+1)+A180750(n+1)-A308706(n+1)`
-/

namespace A180249.P10168025773756227834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) + (A180750 (n + 1) - A308706 (n + 1))

end

end A180249.P10168025773756227834

namespace A180249

/-- `A000046(n+1)+A180750(n+1)-A308706(n+1)` -/
def P10168025773756227834.Spec : Prop :=
  ∀ n, P10168025773756227834.a n = A180249 (n + 1)

end A180249

/-! ## A180249.P17411338764179312185

`A328692(n+1)-A328689(n+1)`
-/

namespace A180249.P17411338764179312185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328692 (n + 1) - A328689 (n + 1)

end

end A180249.P17411338764179312185

namespace A180249

/-- `A328692(n+1)-A328689(n+1)` -/
def P17411338764179312185.Spec : Prop :=
  ∀ n, P17411338764179312185.a n = A180249 (n + 1)

end A180249

/-! ## A180249.P11591294041726897359

`A328693(n+1)-(A328690(n+1)+A328689(n+1))`
-/

namespace A180249.P11591294041726897359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328693 (n + 1) - (A328690 (n + 1) + A328689 (n + 1))

end

end A180249.P11591294041726897359

namespace A180249

/-- `A328693(n+1)-(A328690(n+1)+A328689(n+1))` -/
def P11591294041726897359.Spec : Prop :=
  ∀ n, P11591294041726897359.a n = A180249 (n + 1)

end A180249

/-!
# A180250: a(n) = 5*a(n-1) + 10*a(n-2), with a(1)=0 and a(2)=1.

The programs for A180250, the canonical program `A180250.P2174408312641960655` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180250 has offset 1).

The definition of A180250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+10*a(n-2)` (program `A180250.P2174408312641960655`, by `A180250.P2174408312641960655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180250.P2174408312641960655

`5*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180250

/-- `5*a(n-1)+10*a(n-2)` -/
def P2174408312641960655.Spec : Prop :=
  ∀ n, (P2174408312641960655.a n : ℤ) = A180250 (n + 1)

theorem P2174408312641960655.correct : P2174408312641960655.Spec := by
  intro n
  simp only [A180250, Nat.add_sub_cancel]

end A180250

/-! ## A180250.P5634837269365603392

`((5+sqrt(65))^n-(5-sqrt(65))^n)/(2^n*sqrt(65))`
-/

namespace A180250.P5634837269365603392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (65 : ℝ)) ^ n - (5 - Real.sqrt (65 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (65 : ℝ))

end

end A180250.P5634837269365603392

namespace A180250

/-- `((5+sqrt(65))^n-(5-sqrt(65))^n)/(2^n*sqrt(65))` -/
def P5634837269365603392.Spec : Prop :=
  ∀ n, P5634837269365603392.a n = (A180250 (n + 1) : ℝ)

end A180250

/-! ## A180250.P8569352424493380083

`ogf(x/(1-5x-10x^2))`
-/

namespace A180250.P8569352424493380083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, -10] n

end

end A180250.P8569352424493380083

namespace A180250

/-- `ogf(x/(1-5x-10x^2))` -/
def P8569352424493380083.Spec : Prop :=
  ∀ n, P8569352424493380083.a n = A180250 (n + 1)

end A180250

/-! ## A180250.P17725830605776753515

`A083861(eq[16, A025581(n)])`
-/

namespace A180250.P17725830605776753515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180250.P17725830605776753515

namespace A180250

/-- `A083861(eq[16, A025581(n)])` -/
def P17725830605776753515.Spec : Prop :=
  ∀ n, P17725830605776753515.a n = A180250 (n + 1)

end A180250

/-! ## A180250.P17101054763177647998

`A083861(eq[17, A193739(n)])`
-/

namespace A180250.P17101054763177647998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180250.P17101054763177647998

namespace A180250

/-- `A083861(eq[17, A193739(n)])` -/
def P17101054763177647998.Spec : Prop :=
  ∀ n, P17101054763177647998.a n = A180250 (n + 1)

end A180250

/-! ## A180250.P10243944948293457523

`A083861(eq[16, A193592(n+1)])`
-/

namespace A180250.P10243944948293457523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180250.P10243944948293457523

namespace A180250

/-- `A083861(eq[16, A193592(n+1)])` -/
def P10243944948293457523.Spec : Prop :=
  ∀ n, P10243944948293457523.a n = A180250 (n + 1)

end A180250

/-! ## A180250.P17897218876482397805

`A083861(eq[17, A004736(n+1)])`
-/

namespace A180250.P17897218876482397805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180250.P17897218876482397805

namespace A180250

/-- `A083861(eq[17, A004736(n+1)])` -/
def P17897218876482397805.Spec : Prop :=
  ∀ n, P17897218876482397805.a n = A180250 (n + 1)

end A180250

/-!
# A180252: Numbers where all prime divisors are of the form k^2+1.

The programs for A180252, there is no canonical definition to state claims against.
-/

/-! ## A180252.P15698358077415691872

`∩[A346130(n+1), A397042(n+1)]`
-/

namespace A180252.P15698358077415691872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180252.P15698358077415691872

/-! ## A180252.P582177065997600240

`lt[A000005(A344085(n+1)), A004018(n)]`
-/

namespace A180252.P582177065997600240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A344085 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180252.P582177065997600240

/-! ## A180252.P16574570354840519481

`A191203(n+1)-A211225(A045623(n))`
-/

namespace A180252.P16574570354840519481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191203 (n + 1) - A211225 (A045623 n).toNat

end

end A180252.P16574570354840519481

/-! ## A180252.P5973670722293431189

`lt[A333223(A334299(2*n+1)), A004018(n)]`
-/

namespace A180252.P5973670722293431189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A334299 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180252.P5973670722293431189

/-! ## A180252.P9032251533941519969

`eq[A301572(n), A394261(n)]`
-/

namespace A180252.P9032251533941519969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394261 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180252.P9032251533941519969

/-!
# A180253: Call two divisors of n adjacent if the larger is a prime times the smaller. a(n) is the sum of elements of all pairs of adjacent divisors of n.

The programs for A180253, the canonical program `A180253.P5766954473390724664` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180253 has offset 1).

The definition of A180253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180253.P2416109302983386071

`A323599(n+1)+A329354(n+1)`
-/

namespace A180253.P2416109302983386071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323599 (n + 1) + A329354 (n + 1)

end

end A180253.P2416109302983386071

namespace A180253

/-- `A323599(n+1)+A329354(n+1)` -/
def P2416109302983386071.Spec : Prop :=
  ∀ n, P2416109302983386071.a n = A180253 (n + 1)

end A180253

/-! ## A180253.P903038695653632833

`A323599(n+1)+A328260(n+1)+A329375(n+1)`
-/

namespace A180253.P903038695653632833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323599 (n + 1) + A328260 (n + 1) + A329375 (n + 1)

end

end A180253.P903038695653632833

namespace A180253

/-- `A323599(n+1)+A328260(n+1)+A329375(n+1)` -/
def P903038695653632833.Spec : Prop :=
  ∀ n, P903038695653632833.a n = A180253 (n + 1)

end A180253

/-! ## A180253.P5766954473390724664

`∑{d}[n+1, A065967(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180253

/-- `∑{d}[n+1, A065967(#)]` -/
def P5766954473390724664.Spec : Prop :=
  ∀ n, P5766954473390724664.a n = A180253 (n + 1)

theorem P5766954473390724664.correct : P5766954473390724664.Spec := by
  intro n
  simp only [A180253, Nat.add_sub_cancel]

end A180253

/-! ## A180253.P12147471156253707916

`∑{d}[n+1, ((n+1)/#+#)*A001221(#)]`
-/

namespace A180253.P12147471156253707916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ)) * (A001221 d : ℚ)

end

end A180253.P12147471156253707916

namespace A180253

/-- `∑{d}[n+1, ((n+1)/#+#)*A001221(#)]` -/
def P12147471156253707916.Spec : Prop :=
  ∀ n, P12147471156253707916.a n = (A180253 (n + 1) : ℚ)

end A180253

/-! ## A180253.P8961855506045373829

`∑{d}[n+1, A328260(#)+A069359(#)]`
-/

namespace A180253.P8961855506045373829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A328260 d + A069359 d)

end

end A180253.P8961855506045373829

namespace A180253

/-- `∑{d}[n+1, A328260(#)+A069359(#)]` -/
def P8961855506045373829.Spec : Prop :=
  ∀ n, P8961855506045373829.a n = A180253 (n + 1)

end A180253

/-! ## A180253.P6620552265876770099

`A329354(n+1)+∑{d}[n+1, A069359(#)]`
-/

namespace A180253.P6620552265876770099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329354 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A069359 d

end

end A180253.P6620552265876770099

namespace A180253

/-- `A329354(n+1)+∑{d}[n+1, A069359(#)]` -/
def P6620552265876770099.Spec : Prop :=
  ∀ n, P6620552265876770099.a n = A180253 (n + 1)

end A180253

/-! ## A180253.P15278463572659592462

`∑{p}[n+1, A000203((n+1)/#)*A000203(#)]`
-/

namespace A180253.P15278463572659592462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat * A000203 p

end

end A180253.P15278463572659592462

namespace A180253

/-- `∑{p}[n+1, A000203((n+1)/#)*A000203(#)]` -/
def P15278463572659592462.Spec : Prop :=
  ∀ n, P15278463572659592462.a n = A180253 (n + 1)

end A180253

/-!
# A180254: E.g.f. A(x) satisfies A'(x) = (1 - sqrt(1-4*A(x))) / (2*A(x)).

The programs for A180254, there is no canonical definition to state claims against.
-/

/-! ## A180254.P8027766217675884888

`A172308(A258788(n))`
-/

namespace A180254.P8027766217675884888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (A258788 n).toNat

end

end A180254.P8027766217675884888

/-!
# A180255: a(n) = n^2 * a(n-1) + n, a(0)=0.

The programs for A180255, the canonical program `A180255.P14722924974365162114` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180255 has offset 0).

The definition of A180255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+n` (program `A180255.P14722924974365162114`, by `A180255.P14722924974365162114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180255.P14722924974365162114

`n²*a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180255

/-- `n²*a(n-1)+n` -/
def P14722924974365162114.Spec : Prop :=
  ∀ n, (P14722924974365162114.a n : ℤ) = A180255 n

theorem P14722924974365162114.correct : P14722924974365162114.Spec := by
  intro n
  simp only [A180255]

end A180255

/-! ## A180255.P7738643084369011477

`n*(n*a(n-1)+1)` with `a(0)=0`
-/

namespace A180255.P7738643084369011477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n * a (n - 1) + 1)

end

end A180255.P7738643084369011477

namespace A180255

/-- `n*(n*a(n-1)+1)` -/
def P7738643084369011477.Spec : Prop :=
  ∀ n, (P7738643084369011477.a n : ℤ) = A180255 n

theorem P7738643084369011477.correct : P7738643084369011477.Spec := by
  intro n
  simp only [A180255, Nat.add_sub_cancel, A180255.P7738643084369011477.a, A180255.P14722924974365162114.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180255

/-! ## A180255.P15117362495547990790

`n*or(1, n*a(n-1))` with `a(0)=0`
-/

namespace A180255.P15117362495547990790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * Nat.lor 1 (n * a (n - 1))

end

end A180255.P15117362495547990790

namespace A180255

/-- `n*or(1, n*a(n-1))` -/
def P15117362495547990790.Spec : Prop :=
  ∀ n, (P15117362495547990790.a n : ℤ) = A180255 n

end A180255

/-! ## A180255.P14970026971238836191

`n*xor(1, n*a(n-1))` with `a(0)=0`
-/

namespace A180255.P14970026971238836191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * Nat.xor 1 (n * a (n - 1))

end

end A180255.P14970026971238836191

namespace A180255

/-- `n*xor(1, n*a(n-1))` -/
def P14970026971238836191.Spec : Prop :=
  ∀ n, (P14970026971238836191.a n : ℤ) = A180255 n

end A180255

/-! ## A180255.P9035508106919908851

`a(n-1)/n^(-2)+n` with `a(0)=0`
-/

namespace A180255.P9035508106919908851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-2 : ℤ) + (n : ℚ)

end

end A180255.P9035508106919908851

namespace A180255

/-- `a(n-1)/n^(-2)+n` -/
def P9035508106919908851.Spec : Prop :=
  ∀ n, P9035508106919908851.a n = (A180255 n : ℚ)

end A180255

/-!
# A180256: G.f. satisfies: A(x) = Sum_{n>=0} A_n(x) * A(x)^n where A_{n+1}(x) = A_n(A(x)) denotes iteration with A_0(x)=x and A'(0)=1.

The programs for A180256, there is no canonical definition to state claims against.
-/

/-! ## A180256.P5608295014088704560

`n!*∑[1/n!]-n-A008624(A000272(n))`
-/

namespace A180256.P5608295014088704560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ) - (A008624 (A000272 n).toNat : ℚ)

end

end A180256.P5608295014088704560

/-! ## A180256.P13959816257101773096

`A195177(A084059(n)+A003168(n))`
-/

namespace A180256.P13959816257101773096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A084059 n + A003168 n).toNat

end

end A180256.P13959816257101773096

/-!
# A180257: a(n) = 2^(p*r) mod q for the n-th odd number with exactly three distinct prime factors p < q < r.

The programs for A180257, there is no canonical definition to state claims against.
-/

/-! ## A180257.P16854239998118360913

`A088529(A090166(n+2))*A213275(n)`
-/

namespace A180257.P16854239998118360913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (A090166 (n + 2)).toNat * A213275 n

end

end A180257.P16854239998118360913

/-! ## A180257.P16763558449855172413

`A379752(A376936(2*(n+1))-A377525(3*n+4))`
-/

namespace A180257.P16763558449855172413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379752 (A376936 (2 * (n + 1)) - A377525 (3 * n + 4)).toNat

end

end A180257.P16763558449855172413

/-! ## A180257.P17239987625492080010

`gcd(A000010(2*n+5), A275024(A102177(n+1)))`
-/

namespace A180257.P17239987625492080010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (2 * n + 5)) (A275024 (A102177 (n + 1)).toNat)

end

end A180257.P17239987625492080010

/-! ## A180257.P11542345657528724249

`gcd(A131818(2*n+5), A183187(A208101(2*n)))`
-/

namespace A180257.P11542345657528724249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131818 (2 * n + 5)) (A183187 (A208101 (2 * n)).toNat)

end

end A180257.P11542345657528724249

/-! ## A180257.P13664157168759087177

`gcd(A110632(A182222(2*(n+2))), A182222(2*(n+2)))`
-/

namespace A180257.P13664157168759087177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110632 (A182222 (2 * (n + 2))).toNat) (A182222 (2 * (n + 2)))

end

end A180257.P13664157168759087177

/-!
# A180258: a(n) = 2^(q*r) mod p for the n-th odd number with exactly 3 distinct prime factors p < q < r.

The programs for A180258, there is no canonical definition to state claims against.
-/

/-! ## A180258.P1895041898805613517

`p?[A001227(A322131(2*(n+1)))%5]`
-/

namespace A180258.P1895041898805613517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (A322131 (2 * (n + 1))).toNat) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180258.P1895041898805613517

/-! ## A180258.P2320037593360202349

`A031217(A187219(n+1)+A031217(n+1))`
-/

namespace A180258.P2320037593360202349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (A187219 (n + 1) + A031217 (n + 1)).toNat

end

end A180258.P2320037593360202349

/-! ## A180258.P3415124201820218296

`A020639(A116909(n+1)*A352991(n+1))`
-/

namespace A180258.P3415124201820218296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A116909 (n + 1) * A352991 (n + 1)).toNat

end

end A180258.P3415124201820218296

/-! ## A180258.P14611007793289018942

`A020639(lcm(A116909(n+1), A352991(n+1)))`
-/

namespace A180258.P14611007793289018942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A116909 (n + 1)) (A352991 (n + 1)))

end

end A180258.P14611007793289018942

/-! ## A180258.P9216798018687319346

`p?[A001227(A322131(2*(n+1)))]`
-/

namespace A180258.P9216798018687319346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A322131 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180258.P9216798018687319346

/-!
# A180262: Triangle by rows, generated from a triangle with (1,2,1,1,1,...) in every column.

The programs for A180262, there is no canonical definition to state claims against.
-/

/-! ## A180262.P2863460296821942925

`gcd(A000217(A052533(n)), A144021(n+1))`
-/

namespace A180262.P2863460296821942925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A052533 n).toNat) (A144021 (n + 1))

end

end A180262.P2863460296821942925

/-! ## A180262.P5740042531423910722

`A144021(n+1)^A015818(A015818(n+1))`
-/

namespace A180262.P5740042531423910722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144021 (n + 1) : ℚ) ^ (A015818 (A015818 (n + 1)).toNat : ℤ)

end

end A180262.P5740042531423910722

/-! ## A180262.P15869579444345552094

`C(A144021(n+1), A015818(A158092(n+1)))`
-/

namespace A180262.P15869579444345552094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144021 (n + 1)).toNat (A015818 (A158092 (n + 1)).toNat).toNat

end

end A180262.P15869579444345552094

/-! ## A180262.P5731838957149154062

`A144021(n+1)^A348892(A083527(n+1)+A083527(n+1))`
-/

namespace A180262.P5731838957149154062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144021 (n + 1) : ℚ) ^ (A348892 (A083527 (n + 1) + A083527 (n + 1)).toNat : ℤ)

end

end A180262.P5731838957149154062

/-!
# A180263: Odd k such that (k^2 + 1)/2 is not prime.

The programs for A180263, the canonical program `A180263.P12558440102138560603` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180263 has offset 1).

The definition of A180263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180263.P8534035572594738360

`2*comp[A027861(n+1)]+1`
-/

namespace A180263.P8534035572594738360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A180263.P8534035572594738360

namespace A180263

/-- `2*comp[A027861(n+1)]+1` -/
def P8534035572594738360.Spec : Prop :=
  ∀ n, (P8534035572594738360.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P15113130325728723788

`record[lcm(2, A050796(n+1))/2]`
-/

namespace A180263.P15113130325728723788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A050796 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180263.P15113130325728723788

namespace A180263

/-- `record[lcm(2, A050796(n+1))/2]` -/
def P15113130325728723788.Spec : Prop :=
  ∀ n, P15113130325728723788.a n = (A180263 (n + 1) : ℚ)

end A180263

/-! ## A180263.P12558440102138560603

`record[A000265(A050796(n+1))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A180263

/-- `record[A000265(A050796(n+1))]` -/
def P12558440102138560603.Spec : Prop :=
  ∀ n, P12558440102138560603.a n = A180263 (n + 1)

theorem P12558440102138560603.correct : P12558440102138560603.Spec := by
  intro n
  simp only [A180263, Nat.add_sub_cancel]

end A180263

/-! ## A180263.P5327138935177238501

`filter[A050796(n+1), A000035(#)]`
-/

namespace A180263.P5327138935177238501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A180263.P5327138935177238501

namespace A180263

/-- `filter[A050796(n+1), A000035(#)]` -/
def P5327138935177238501.Spec : Prop :=
  ∀ n, P5327138935177238501.a n = A180263 (n + 1)

end A180263

/-! ## A180263.P312849919819824765

`filter[A050796(n+1), A267256(#)]`
-/

namespace A180263.P312849919819824765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A180263.P312849919819824765

namespace A180263

/-- `filter[A050796(n+1), A267256(#)]` -/
def P312849919819824765.Spec : Prop :=
  ∀ n, P312849919819824765.a n = A180263 (n + 1)

end A180263

/-! ## A180263.P15520405791503901856

`∩[A050796(n+1), A004273(n)]`
-/

namespace A180263.P15520405791503901856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P15520405791503901856

namespace A180263

/-- `∩[A050796(n+1), A004273(n)]` -/
def P15520405791503901856.Spec : Prop :=
  ∀ n, (P15520405791503901856.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P11516886790944968934

`∩[A050796(n+1), A004274(n)]`
-/

namespace A180263.P11516886790944968934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P11516886790944968934

namespace A180263

/-- `∩[A050796(n+1), A004274(n)]` -/
def P11516886790944968934.Spec : Prop :=
  ∀ n, (P11516886790944968934.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P13211864546654321733

`∩[A050796(n+1), A004276(n)]`
-/

namespace A180263.P13211864546654321733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P13211864546654321733

namespace A180263

/-- `∩[A050796(n+1), A004276(n)]` -/
def P13211864546654321733.Spec : Prop :=
  ∀ n, (P13211864546654321733.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P4871468964353029190

`∩[A050796(n+1), A004281(n)]`
-/

namespace A180263.P4871468964353029190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P4871468964353029190

namespace A180263

/-- `∩[A050796(n+1), A004281(n)]` -/
def P4871468964353029190.Spec : Prop :=
  ∀ n, (P4871468964353029190.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P2788122422900585201

`∩[A050796(n+1), A060747(n)]`
-/

namespace A180263.P2788122422900585201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P2788122422900585201

namespace A180263

/-- `∩[A050796(n+1), A060747(n)]` -/
def P2788122422900585201.Spec : Prop :=
  ∀ n, (P2788122422900585201.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P15190922467543686908

`∩[A050796(n+1), A163985(n)]`
-/

namespace A180263.P15190922467543686908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P15190922467543686908

namespace A180263

/-- `∩[A050796(n+1), A163985(n)]` -/
def P15190922467543686908.Spec : Prop :=
  ∀ n, (P15190922467543686908.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P11193866566613086031

`∩[A050796(n+1), A223134(n)]`
-/

namespace A180263.P11193866566613086031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P11193866566613086031

namespace A180263

/-- `∩[A050796(n+1), A223134(n)]` -/
def P11193866566613086031.Spec : Prop :=
  ∀ n, (P11193866566613086031.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P7106653493046569670

`A318516(record[lcm(2, A050796(n+1))])`
-/

namespace A180263.P7106653493046569670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A050796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A180263.P7106653493046569670

namespace A180263

/-- `A318516(record[lcm(2, A050796(n+1))])` -/
def P7106653493046569670.Spec : Prop :=
  ∀ n, P7106653493046569670.a n = A180263 (n + 1)

end A180263

/-! ## A180263.P18332732006756153721

`∩[A004280(n+1), A050796(n+1)]`
-/

namespace A180263.P18332732006756153721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P18332732006756153721

namespace A180263

/-- `∩[A004280(n+1), A050796(n+1)]` -/
def P18332732006756153721.Spec : Prop :=
  ∀ n, (P18332732006756153721.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P9200124028012741418

`∩[A050796(n+1), A140139(n+1)]`
-/

namespace A180263.P9200124028012741418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180263.P9200124028012741418

namespace A180263

/-- `∩[A050796(n+1), A140139(n+1)]` -/
def P9200124028012741418.Spec : Prop :=
  ∀ n, (P9200124028012741418.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P15357353125939062714

`A004273(record[A001057(A050796(n+1))])`
-/

namespace A180263.P15357353125939062714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A050796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180263.P15357353125939062714

namespace A180263

/-- `A004273(record[A001057(A050796(n+1))])` -/
def P15357353125939062714.Spec : Prop :=
  ∀ n, P15357353125939062714.a n = A180263 (n + 1)

end A180263

/-! ## A180263.P10483097109849496467

`eq[A035363(n+2), A156297(A333167(n))]`
-/

namespace A180263.P10483097109849496467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180263.P10483097109849496467

namespace A180263

/-- `eq[A035363(n+2), A156297(A333167(n))]` -/
def P10483097109849496467.Spec : Prop :=
  ∀ n, (P10483097109849496467.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P7241971702477314288

`eq[2*A035363(n), A156297(A333167(n))]`
-/

namespace A180263.P7241971702477314288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180263.P7241971702477314288

namespace A180263

/-- `eq[2*A035363(n), A156297(A333167(n))]` -/
def P7241971702477314288.Spec : Prop :=
  ∀ n, (P7241971702477314288.a n : ℤ) = A180263 (n + 1)

end A180263

/-! ## A180263.P14682933583475989234

`record[A051724(3*A050796(n+1))]`
-/

namespace A180263.P14682933583475989234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A050796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180263.P14682933583475989234

namespace A180263

/-- `record[A051724(3*A050796(n+1))]` -/
def P14682933583475989234.Spec : Prop :=
  ∀ n, P14682933583475989234.a n = A180263 (n + 1)

end A180263

/-!
# A180266: a(0) = 0; a(n) = C(2*n-2,n-1)*(n^2-2*n+2)/n for n >= 1.

The programs for A180266, the canonical program `A180266.P9271125515567740913` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180266 has offset 0).

The definition of A180266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180266.P6193268589590500354

`A217213(n)+n*A120588(n)`
-/

namespace A180266.P6193268589590500354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217213 n + (n : ℤ) * A120588 n

end

end A180266.P6193268589590500354

namespace A180266

/-- `A217213(n)+n*A120588(n)` -/
def P6193268589590500354.Spec : Prop :=
  ∀ n, P6193268589590500354.a n = A180266 n

end A180266

/-! ## A180266.P18131878658255952481

`A217213(n)-n*A115140(n)`
-/

namespace A180266.P18131878658255952481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217213 n - (n : ℤ) * A115140 n

end

end A180266.P18131878658255952481

namespace A180266

/-- `A217213(n)-n*A115140(n)` -/
def P18131878658255952481.Spec : Prop :=
  ∀ n, P18131878658255952481.a n = A180266 n

end A180266

/-! ## A180266.P12671277396040000847

`A217213(n)+record[A126869(abs(1-n))]`
-/

namespace A180266.P12671277396040000847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217213 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180266.P12671277396040000847

namespace A180266

/-- `A217213(n)+record[A126869(abs(1-n))]` -/
def P12671277396040000847.Spec : Prop :=
  ∀ n, P12671277396040000847.a n = A180266 n

end A180266

/-! ## A180266.P9271125515567740913

`(A115140(n)-A002420(n))*A160457(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180266

/-- `(A115140(n)-A002420(n))*A160457(n)` -/
def P9271125515567740913.Spec : Prop :=
  ∀ n, P9271125515567740913.a n = A180266 n

theorem P9271125515567740913.correct : P9271125515567740913.Spec := by
  intro n
  simp only [A180266]

end A180266

/-! ## A180266.P8612364907314329604

`A083479(n²)*A120588(n)`
-/

namespace A180266.P8612364907314329604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (n ^ 2) * A120588 n

end

end A180266.P8612364907314329604

namespace A180266

/-- `A083479(n²)*A120588(n)` -/
def P8612364907314329604.Spec : Prop :=
  ∀ n, P8612364907314329604.a n = A180266 n

end A180266

/-! ## A180266.P10452421888576255025

`A120588(n)*A247495(A027379(n))`
-/

namespace A180266.P10452421888576255025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A247495 (A027379 n).toNat

end

end A180266.P10452421888576255025

namespace A180266

/-- `A120588(n)*A247495(A027379(n))` -/
def P10452421888576255025.Spec : Prop :=
  ∀ n, P10452421888576255025.a n = A180266 n

end A180266

/-!
# A180270: Integers of the form (k^12 - k^8 - k^4 + 1)/512.

The programs for A180270, the canonical program `A180270.P8396831548548584304` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180270 has offset 1).

The definition of A180270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180270.P13254835868806871617

`((2*(n+1)-1)^4+1)*(n*(n+1)*((n+1)²+n²))²/8`
-/

namespace A180270.P13254835868806871617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((2 * (n + 1) : ℤ) - 1) ^ 4 + 1) * ((n * (n + 1) * ((n + 1) ^ 2 + n ^ 2)) ^ 2 : ℤ) : ℚ) / 8

end

end A180270.P13254835868806871617

namespace A180270

/-- `((2*(n+1)-1)^4+1)*(n*(n+1)*((n+1)²+n²))²/8` -/
def P13254835868806871617.Spec : Prop :=
  ∀ n, P13254835868806871617.a n = (A180270 (n + 1) : ℚ)

end A180270

/-! ## A180270.P8396831548548584304

`A175110(n)*(A001844(n)*A000217(n))²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180270

/-- `A175110(n)*(A001844(n)*A000217(n))²` -/
def P8396831548548584304.Spec : Prop :=
  ∀ n, P8396831548548584304.a n = A180270 (n + 1)

theorem P8396831548548584304.correct : P8396831548548584304.Spec := by
  intro n
  simp only [A180270, Nat.add_sub_cancel]

end A180270

/-! ## A180270.P14286567872583745083

`A219086(n)*A359498(n)`
-/

namespace A180270.P14286567872583745083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A359498 n

end

end A180270.P14286567872583745083

namespace A180270

/-- `A219086(n)*A359498(n)` -/
def P14286567872583745083.Spec : Prop :=
  ∀ n, P14286567872583745083.a n = A180270 (n + 1)

end A180270

/-! ## A180270.P6043898978712350795

`A219086(n)²*A175110(n)`
-/

namespace A180270.P6043898978712350795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n ^ 2 * A175110 n

end

end A180270.P6043898978712350795

namespace A180270

/-- `A219086(n)²*A175110(n)` -/
def P6043898978712350795.Spec : Prop :=
  ∀ n, P6043898978712350795.a n = A180270 (n + 1)

end A180270

/-! ## A180270.P11936391620529064465

`A359498(n)/A175110(n)*A359498(n)`
-/

namespace A180270.P11936391620529064465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359498 n : ℚ) / (A175110 n : ℚ) * (A359498 n : ℚ)

end

end A180270.P11936391620529064465

namespace A180270

/-- `A359498(n)/A175110(n)*A359498(n)` -/
def P11936391620529064465.Spec : Prop :=
  ∀ n, P11936391620529064465.a n = (A180270 (n + 1) : ℚ)

end A180270

/-! ## A180270.P4276438617613152468

`A219086(n)/A359844(n)*A359499(n)`
-/

namespace A180270.P4276438617613152468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219086 n : ℚ) / (A359844 n : ℚ) * (A359499 n : ℚ)

end

end A180270.P4276438617613152468

namespace A180270

/-- `A219086(n)/A359844(n)*A359499(n)` -/
def P4276438617613152468.Spec : Prop :=
  ∀ n, P4276438617613152468.a n = (A180270 (n + 1) : ℚ)

end A180270

/-! ## A180270.P8844603647944292389

`A219086(n)²*A171714(2*n)`
-/

namespace A180270.P8844603647944292389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n ^ 2 * A171714 (2 * n)

end

end A180270.P8844603647944292389

namespace A180270

/-- `A219086(n)²*A171714(2*n)` -/
def P8844603647944292389.Spec : Prop :=
  ∀ n, P8844603647944292389.a n = A180270 (n + 1)

end A180270

/-! ## A180270.P15383621916722781590

`A011863(2*n+1)*A359498(n)`
-/

namespace A180270.P15383621916722781590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * n + 1) * A359498 n

end

end A180270.P15383621916722781590

namespace A180270

/-- `A011863(2*n+1)*A359498(n)` -/
def P15383621916722781590.Spec : Prop :=
  ∀ n, P15383621916722781590.a n = A180270 (n + 1)

end A180270

/-! ## A180270.P12795592715494997193

`A011863(2*n+1)²*A175110(n)`
-/

namespace A180270.P12795592715494997193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * n + 1) ^ 2 * A175110 n

end

end A180270.P12795592715494997193

namespace A180270

/-- `A011863(2*n+1)²*A175110(n)` -/
def P12795592715494997193.Spec : Prop :=
  ∀ n, P12795592715494997193.a n = A180270 (n + 1)

end A180270

/-! ## A180270.P2766798017747273041

`A011863(2*n+1)²*A171714(2*n)`
-/

namespace A180270.P2766798017747273041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * n + 1) ^ 2 * A171714 (2 * n)

end

end A180270.P2766798017747273041

namespace A180270

/-- `A011863(2*n+1)²*A171714(2*n)` -/
def P2766798017747273041.Spec : Prop :=
  ∀ n, P2766798017747273041.a n = A180270 (n + 1)

end A180270

/-!
# A180271: Number of multiplicity-free labeled floor diagrams with n nodes.

The programs for A180271, there is no canonical definition to state claims against.
-/

/-! ## A180271.P12196066543943427649

`A007889(n)-A012468(A324092(n+3))`
-/

namespace A180271.P12196066543943427649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n - A012468 (A324092 (n + 3)).toNat

end

end A180271.P12196066543943427649

/-!
# A180272: a(n) = binomial(n, A002024(n+1)-1) where A002024 is "n appears n times".

The programs for A180272, the canonical program `A180272.P6783901925285532262` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180272 has offset 0).

The definition of A180272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180272.P6783901925285532262

`C(n, ∑[char[comp[∑[n]]]])`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180272

/-- `C(n, ∑[char[comp[∑[n]]]])` -/
def P6783901925285532262.Spec : Prop :=
  ∀ n, (P6783901925285532262.a n : ℤ) = A180272 n

theorem P6783901925285532262.correct : P6783901925285532262.Spec := by
  intro n
  simp only [A180272]

end A180272

/-! ## A180272.P2802767602846324880

`∏{e}[A137688(n), C(n, #)]`
-/

namespace A180272.P2802767602846324880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose n (Nat.factorization (f1 n).natAbs p)

end

end A180272.P2802767602846324880

namespace A180272

/-- `∏{e}[A137688(n), C(n, #)]` -/
def P2802767602846324880.Spec : Prop :=
  ∀ n, (P2802767602846324880.a n : ℤ) = A180272 n

end A180272

/-! ## A180272.P10814340432464803441

`A074909(∑[n+1]-comp[∑[n]]+1)`
-/

namespace A180272.P10814340432464803441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + 1).toNat

end

end A180272.P10814340432464803441

namespace A180272

/-- `A074909(∑[n+1]-comp[∑[n]]+1)` -/
def P10814340432464803441.Spec : Prop :=
  ∀ n, P10814340432464803441.a n = A180272 n

end A180272

/-! ## A180272.P2936141179534342086

`A007318(∑[char[∑[n+1]]+n])`
-/

namespace A180272.P2936141179534342086
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180272.P2936141179534342086

namespace A180272

/-- `A007318(∑[char[∑[n+1]]+n])` -/
def P2936141179534342086.Spec : Prop :=
  ∀ n, P2936141179534342086.a n = A180272 n

end A180272

/-! ## A180272.P1299173755406177148

`A206735(A003056(n)+A000217(n))`
-/

namespace A180272.P1299173755406177148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A003056 n + A000217 n).toNat

end

end A180272.P1299173755406177148

namespace A180272

/-- `A206735(A003056(n)+A000217(n))` -/
def P1299173755406177148.Spec : Prop :=
  ∀ n, P1299173755406177148.a n = A180272 n

end A180272

/-! ## A180272.P16488735851883299244

`A131923(A003056(n)+A000217(n))-n`
-/

namespace A180272.P16488735851883299244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 (A003056 n + A000217 n).toNat - (n : ℤ)

end

end A180272.P16488735851883299244

namespace A180272

/-- `A131923(A003056(n)+A000217(n))-n` -/
def P16488735851883299244.Spec : Prop :=
  ∀ n, P16488735851883299244.a n = A180272 n

end A180272

/-! ## A180272.P2929350163570718086

`A135225(∑[A035214(n)+n])`
-/

namespace A180272.P2929350163570718086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180272.P2929350163570718086

namespace A180272

/-- `A135225(∑[A035214(n)+n])` -/
def P2929350163570718086.Spec : Prop :=
  ∀ n, P2929350163570718086.a n = A180272 n

end A180272

/-!
# A180273: Squares which are a sum of consecutive squares starting with 7^2.

The programs for A180273, there is no canonical definition to state claims against.
-/

/-! ## A180273.P5694094059430423681

`(A184886(n+4)%A252874(n+1))²`
-/

namespace A180273.P5694094059430423681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184886 (n + 4)) (A252874 (n + 1)) ^ 2

end

end A180273.P5694094059430423681

/-!
# A180274: Integers whose squares are the sums of 24 consecutive squares.

The programs for A180274, there is no canonical definition to state claims against.
-/

/-! ## A180274.P3753326288576919289

`A184886(A302381(n+1)+A094196(n+1))`
-/

namespace A180274.P3753326288576919289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184886 (A302381 (n + 1) + A094196 (n + 1)).toNat

end

end A180274.P3753326288576919289

/-!
# A180275: Primes of the form k^3+3*k+1.

The programs for A180275, there is no canonical definition to state claims against.
-/

/-! ## A180275.P2974834063260135285

`p?[n*(n²+3)+1]`
-/

namespace A180275.P2974834063260135285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A180275.P2974834063260135285

/-! ## A180275.P4544128148894193327

`or(1, p?[ceil(acot(n)^-3+2*n)])`
-/

namespace A180275.P4544128148894193327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ) + (2 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A180275.P4544128148894193327

/-! ## A180275.P14332468612178759204

`or(1, p?[or(1, floor((n+1)²+n^4/(n+1)))])`
-/

namespace A180275.P14332468612178759204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊((n + 1) ^ 2 : ℚ) + (n ^ 4 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A180275.P14332468612178759204

/-! ## A180275.P776653545427242821

`or(1, p?[A005491(n)])`
-/

namespace A180275.P776653545427242821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A180275.P776653545427242821

/-! ## A180275.P18265662166723190363

`∏{d}[p?[A005491(n+1)], #]`
-/

namespace A180275.P18265662166723190363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180275.P18265662166723190363

/-!
# A180276: Primes of the form n^3 + 3*n - 1.

The programs for A180276, there is no canonical definition to state claims against.
-/

/-! ## A180276.P6170243329867914111

`p?[n*(n²+3)-1]`
-/

namespace A180276.P6170243329867914111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2 + 3) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180276.P6170243329867914111

/-! ## A180276.P12826526348383584352

`or(1, p?[A079908(n)-1])`
-/

namespace A180276.P12826526348383584352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A180276.P12826526348383584352

/-! ## A180276.P7044262936871377630

`record[p?[A079908(A297157(n+1))-1]]`
-/

namespace A180276.P7044262936871377630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 (A297157 (n + 1)).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180276.P7044262936871377630

/-! ## A180276.P3606744802724063067

`A000027(p?[A005491(n)-2])`
-/

namespace A180276.P3606744802724063067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180276.P3606744802724063067

/-! ## A180276.P14235000684091685434

`A000027(p?[n+1+A034262(n+1)+n])`
-/

namespace A180276.P14235000684091685434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A034262 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180276.P14235000684091685434

/-!
# A180277: a(n) = A002952(n) + A002953(n).

The programs for A180277, there is no canonical definition to state claims against.
-/

/-! ## A180277.P1994098801391392620

`A002952(n+1)+A002953(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180277.P1994098801391392620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002952 (n + 1) + A002953 (n + 1)

end

end A180277.P1994098801391392620

/-! ## A180277.P17428230323388367016

`A002953(n+1)+A002952(A077168(n))`
-/

namespace A180277.P17428230323388367016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002953 (n + 1) + A002952 (A077168 n).toNat

end

end A180277.P17428230323388367016

/-! ## A180277.P17695060535417963263

`A063991(A032559(n+1)+n)+A002953(n+1)`
-/

namespace A180277.P17695060535417963263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063991 (A032559 (n + 1) + (n : ℤ)).toNat + A002953 (n + 1)

end

end A180277.P17695060535417963263

/-! ## A180277.P15792200270197968267

`A063991(A069747(n+1)+n)+A002953(n+1)`
-/

namespace A180277.P15792200270197968267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063991 (A069747 (n + 1) + (n : ℤ)).toNat + A002953 (n + 1)

end

end A180277.P15792200270197968267

/-! ## A180277.P8427261250871783631

`A063991(A077739(n+1)+n)+A002953(n+1)`
-/

namespace A180277.P8427261250871783631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063991 (A077739 (n + 1) + (n : ℤ)).toNat + A002953 (n + 1)

end

end A180277.P8427261250871783631

/-!
# A180278: Smallest nonnegative integer k such that k^2 + 1 has exactly n distinct prime factors.

The programs for A180278, there is no canonical definition to state claims against.
-/

/-! ## A180278.P824708790934469798

`A282380(A200466(n+1))`
-/

namespace A180278.P824708790934469798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282380 (A200466 (n + 1)).toNat

end

end A180278.P824708790934469798

/-! ## A180278.P2298700882295938208

`A142153(n+1)-A120031(n)`
-/

namespace A180278.P2298700882295938208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142153 (n + 1) - A120031 n

end

end A180278.P2298700882295938208

/-!
# A180279: Triangle read by rows: AR(n,k) is the number of aperiodic k-reverses of n (n >= 1, 1 <= k <= n).

The programs for A180279, there is no canonical definition to state claims against.
-/

/-! ## A180279.P13277835236969044245

`A128227(n)*A180424(n+1)`
-/

namespace A180279.P13277835236969044245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A180424 (n + 1)

end

end A180279.P13277835236969044245

/-! ## A180279.P8741502881987166148

`A180424(n+1)*A193738(n)`
-/

namespace A180279.P8741502881987166148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180424 (n + 1) * A193738 n

end

end A180279.P8741502881987166148

/-! ## A180279.P8261109924748154228

`A181111(n+1)+A179519(n+1)`
-/

namespace A180279.P8261109924748154228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181111 (n + 1) + A179519 (n + 1)

end

end A180279.P8261109924748154228

/-! ## A180279.P18389457090601206886

`A002260(n+1)*A180424(n+1)`
-/

namespace A180279.P18389457090601206886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A180424 (n + 1)

end

end A180279.P18389457090601206886

/-! ## A180279.P2917031484080776648

`(A002262(n)+1)*A180424(n+1)`
-/

namespace A180279.P2917031484080776648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A180424 (n + 1)

end

end A180279.P2917031484080776648

/-! ## A180279.P15285406716574938904

`A080511(n+1)*A180424(n+1)`
-/

namespace A180279.P15285406716574938904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A180424 (n + 1)

end

end A180279.P15285406716574938904

/-! ## A180279.P9673986956540445930

`A080818(n+1)*A180424(n+1)`
-/

namespace A180279.P9673986956540445930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) * A180424 (n + 1)

end

end A180279.P9673986956540445930

/-! ## A180279.P11399096079191365261

`A081517(n+1)*A180424(n+1)`
-/

namespace A180279.P11399096079191365261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) * A180424 (n + 1)

end

end A180279.P11399096079191365261

/-! ## A180279.P16459600497723906151

`A128077(n+1)*A180424(n+1)`
-/

namespace A180279.P16459600497723906151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128077 (n + 1) * A180424 (n + 1)

end

end A180279.P16459600497723906151

/-! ## A180279.P8067137727575291420

`A004736(A038722(n+1))*A180424(n+1)`
-/

namespace A180279.P8067137727575291420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A180424 (n + 1)

end

end A180279.P8067137727575291420

/-! ## A180279.P8036697120597912146

`A180171(n+1)+A181111(n+1)-A180653(n+1)`
-/

namespace A180279.P8036697120597912146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180171 (n + 1) + (A181111 (n + 1) - A180653 (n + 1))

end

end A180279.P8036697120597912146

/-! ## A180279.P14661027696996906899

`A080508(n+1)*A180424(n+1)`
-/

namespace A180279.P14661027696996906899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (n + 1) * A180424 (n + 1)

end

end A180279.P14661027696996906899

/-! ## A180279.P5365307581589987185

`A000005(A059268(n))*A180424(n+1)`
-/

namespace A180279.P5365307581589987185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A180424 (n + 1)

end

end A180279.P5365307581589987185

/-!
# A180281: Triangle read by rows: T(n,k) = number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to k.

The programs for A180281, there is no canonical definition to state claims against.
-/

/-! ## A180281.P3797619756911637284

`A069799(A132813(n)^A025810(n))`
-/

namespace A180281.P3797619756911637284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (SequenceMachineLib.roundAway ((A132813 n : ℚ) ^ (A025810 n : ℤ))).toNat

end

end A180281.P3797619756911637284

/-! ## A180281.P13817853680523038713

`A069799(A132813(n)^A115069(n+1))`
-/

namespace A180281.P13817853680523038713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (SequenceMachineLib.roundAway ((A132813 n : ℚ) ^ (A115069 (n + 1) : ℤ))).toNat

end

end A180281.P13817853680523038713

/-! ## A180281.P5759277584227171982

`A069799(A132813(n)%A048053(n+1))`
-/

namespace A180281.P5759277584227171982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (Int.tmod (A132813 n) (A048053 (n + 1))).toNat

end

end A180281.P5759277584227171982

/-!
# A180282: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 2.

The programs for A180282, the canonical program `A180282.P6030147663920471768` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180282 has offset 2).

The definition of A180282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180282.P6030147663920471768

`A002426(n+2)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180282

/-- `A002426(n+2)-1` -/
def P6030147663920471768.Spec : Prop :=
  ∀ n, P6030147663920471768.a n = A180282 (n + 2)

theorem P6030147663920471768.correct : P6030147663920471768.Spec := by
  intro n
  simp only [A180282, Nat.add_sub_cancel]

end A180282

/-! ## A180282.P3033235845036593774

`2*A097861(n+2)`
-/

namespace A180282.P3033235845036593774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097861 (n + 2)

end

end A180282.P3033235845036593774

namespace A180282

/-- `2*A097861(n+2)` -/
def P3033235845036593774.Spec : Prop :=
  ∀ n, P3033235845036593774.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P14445644033502428624

`∑[A025178(n+2)]`
-/

namespace A180282.P14445644033502428624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P14445644033502428624

namespace A180282

/-- `∑[A025178(n+2)]` -/
def P14445644033502428624.Spec : Prop :=
  ∀ n, P14445644033502428624.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P4166564830449658867

`Δ[A097893(n+1)]-1`
-/

namespace A180282.P4166564830449658867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A180282.P4166564830449658867

namespace A180282

/-- `Δ[A097893(n+1)]-1` -/
def P4166564830449658867.Spec : Prop :=
  ∀ n, P4166564830449658867.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P15394270331391332833

`∑[2*A005717(n+1)]`
-/

namespace A180282.P15394270331391332833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P15394270331391332833

namespace A180282

/-- `∑[2*A005717(n+1)]` -/
def P15394270331391332833.Spec : Prop :=
  ∀ n, P15394270331391332833.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P8783193968233483800

`Δ[2*A247287(n+1)]`
-/

namespace A180282.P8783193968233483800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180282.P8783193968233483800

namespace A180282

/-- `Δ[2*A247287(n+1)]` -/
def P8783193968233483800.Spec : Prop :=
  ∀ n, P8783193968233483800.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P15649656132759375959

`∑[abs(Δ[A002426(n+1)])]`
-/

namespace A180282.P15649656132759375959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P15649656132759375959

namespace A180282

/-- `∑[abs(Δ[A002426(n+1)])]` -/
def P15649656132759375959.Spec : Prop :=
  ∀ n, P15649656132759375959.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P4415845173764018737

`A005213(2*(n+2))-1`
-/

namespace A180282.P4415845173764018737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * (n + 2)) - 1

end

end A180282.P4415845173764018737

namespace A180282

/-- `A005213(2*(n+2))-1` -/
def P4415845173764018737.Spec : Prop :=
  ∀ n, P4415845173764018737.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P6934086340650961744

`2*(A257520(n+2)-1)`
-/

namespace A180282.P6934086340650961744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A257520 (n + 2) - 1)

end

end A180282.P6934086340650961744

namespace A180282

/-- `2*(A257520(n+2)-1)` -/
def P6934086340650961744.Spec : Prop :=
  ∀ n, P6934086340650961744.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P17533847116132615585

`∑[2*Δ[A257520(n+1)]]`
-/

namespace A180282.P17533847116132615585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P17533847116132615585

namespace A180282

/-- `∑[2*Δ[A257520(n+1)]]` -/
def P17533847116132615585.Spec : Prop :=
  ∀ n, P17533847116132615585.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P18321377994881538199

`∑[(n+1)*A007971(n+2)]`
-/

namespace A180282.P18321377994881538199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P18321377994881538199

namespace A180282

/-- `∑[(n+1)*A007971(n+2)]` -/
def P18321377994881538199.Spec : Prop :=
  ∀ n, P18321377994881538199.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P2939329510402660203

`∑[(n+1)*A126068(n+2)]`
-/

namespace A180282.P2939329510402660203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A126068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P2939329510402660203

namespace A180282

/-- `∑[(n+1)*A126068(n+2)]` -/
def P2939329510402660203.Spec : Prop :=
  ∀ n, P2939329510402660203.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P2730655492699459523

`∑[(n+1)*A168055(n+2)]`
-/

namespace A180282.P2730655492699459523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168055 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P2730655492699459523

namespace A180282

/-- `∑[(n+1)*A168055(n+2)]` -/
def P2730655492699459523.Spec : Prop :=
  ∀ n, P2730655492699459523.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P4926065481388851662

`∑[2*(n+1)*A001006(n)]`
-/

namespace A180282.P4926065481388851662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A001006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180282.P4926065481388851662

namespace A180282

/-- `∑[2*(n+1)*A001006(n)]` -/
def P4926065481388851662.Spec : Prop :=
  ∀ n, P4926065481388851662.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P10232633980930942251

`record[A260196(n)+A002426(n)]`
-/

namespace A180282.P10232633980930942251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180282.P10232633980930942251

namespace A180282

/-- `record[A260196(n)+A002426(n)]` -/
def P10232633980930942251.Spec : Prop :=
  ∀ n, P10232633980930942251.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P14582173822158036245

`A140662(n+1)+A014531(n+1)`
-/

namespace A180282.P14582173822158036245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140662 (n + 1) + A014531 (n + 1)

end

end A180282.P14582173822158036245

namespace A180282

/-- `A140662(n+1)+A014531(n+1)` -/
def P14582173822158036245.Spec : Prop :=
  ∀ n, P14582173822158036245.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P12589569572208815861

`A033999(2*n+1)+A002426(n+2)`
-/

namespace A180282.P12589569572208815861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A002426 (n + 2)

end

end A180282.P12589569572208815861

namespace A180282

/-- `A033999(2*n+1)+A002426(n+2)` -/
def P12589569572208815861.Spec : Prop :=
  ∀ n, P12589569572208815861.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P2488425290203659937

`A081673(n+2)-3^(n+2)`
-/

namespace A180282.P2488425290203659937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081673 (n + 2) - (3 ^ (n + 2) : ℤ)

end

end A180282.P2488425290203659937

namespace A180282

/-- `A081673(n+2)-3^(n+2)` -/
def P2488425290203659937.Spec : Prop :=
  ∀ n, P2488425290203659937.a n = A180282 (n + 2)

end A180282

/-! ## A180282.P13412664044491493628

`A109188(n+3)/(n+3)-1`
-/

namespace A180282.P13412664044491493628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109188 (n + 3) : ℚ) / (n + 3 : ℚ) - 1

end

end A180282.P13412664044491493628

namespace A180282

/-- `A109188(n+3)/(n+3)-1` -/
def P13412664044491493628.Spec : Prop :=
  ∀ n, P13412664044491493628.a n = (A180282 (n + 2) : ℚ)

end A180282

/-! ## A180282.P17278718108637312082

`A180281(∑[n+1]+2)`
-/

namespace A180282.P17278718108637312082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A180282.P17278718108637312082

namespace A180282

/-- `A180281(∑[n+1]+2)` -/
def P17278718108637312082.Spec : Prop :=
  ∀ n, P17278718108637312082.a n = A180282 (n + 2)

end A180282

/-!
# A180283: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 3.

The programs for A180283, there is no canonical definition to state claims against.
-/

/-! ## A180283.P1723093643442354238

`A005725(n+3)-A002426(n+3)`
-/

namespace A180283.P1723093643442354238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005725 (n + 3) - A002426 (n + 3)

end

end A180283.P1723093643442354238

/-! ## A180283.P7071341844738761341

`A180281(∑[n+2]+4)`
-/

namespace A180283.P7071341844738761341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A180283.P7071341844738761341

/-! ## A180283.P15595757313499914226

`lcm(A033999(n), A180281(A167614(n+1)))`
-/

namespace A180283.P15595757313499914226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A180281 (A167614 (n + 1)).toNat)

end

end A180283.P15595757313499914226

/-! ## A180283.P11392392688902980250

`or(A000007(n), A180281(A167614(n+1)))`
-/

namespace A180283.P11392392688902980250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A180281 (A167614 (n + 1)).toNat)

end

end A180283.P11392392688902980250

/-! ## A180283.P1913133750132691940

`A033999(10*n)*A180281(A167614(n+1))`
-/

namespace A180283.P1913133750132691940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (10 * n) * A180281 (A167614 (n + 1)).toNat

end

end A180283.P1913133750132691940

/-! ## A180283.P8383186932364091228

`or(A000007(n), A180281(A000096(n+1)+4))`
-/

namespace A180283.P8383186932364091228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A180281 (A000096 (n + 1) + 4).toNat)

end

end A180283.P8383186932364091228

/-! ## A180283.P11125266143906823143

`or(A036987(2*n), A180281(A167614(n+1)))`
-/

namespace A180283.P11125266143906823143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (2 * n)) (A180281 (A167614 (n + 1)).toNat)

end

end A180283.P11125266143906823143

/-! ## A180283.P13008339902051743753

`A180281(A034856(n+1)+5)%A126643(n+1)`
-/

namespace A180283.P13008339902051743753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (A034856 (n + 1) + 5).toNat) (A126643 (n + 1))

end

end A180283.P13008339902051743753

/-! ## A180283.P7120413310278811417

`A180281(A167614(n+1))%A081336(n+1)`
-/

namespace A180283.P7120413310278811417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (A167614 (n + 1)).toNat) (A081336 (n + 1))

end

end A180283.P7120413310278811417

/-!
# A180284: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 4.

The programs for A180284, there is no canonical definition to state claims against.
-/

/-! ## A180284.P16406814147727696764

`A180281(A052905(n)+9)`
-/

namespace A180284.P16406814147727696764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A052905 n + 9).toNat

end

end A180284.P16406814147727696764

/-! ## A180284.P2407056699963675277

`A180281(A055999(n)+10)`
-/

namespace A180284.P2407056699963675277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A055999 n + 10).toNat

end

end A180284.P2407056699963675277

/-! ## A180284.P9208583751263399629

`A180281(A167614(n+2)+1)`
-/

namespace A180284.P9208583751263399629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A167614 (n + 2) + 1).toNat

end

end A180284.P9208583751263399629

/-! ## A180284.P3188933766132996056

`A180281(Δ[A023545(n+1)-n²])`
-/

namespace A180284.P3188933766132996056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (f1 (n + 1) - f1 n).toNat

end

end A180284.P3188933766132996056

/-! ## A180284.P11793832863190198846

`A180281(A080036(A167614(n+1)))`
-/

namespace A180284.P11793832863190198846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A180284.P11793832863190198846

/-!
# A180285: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 5.

The programs for A180285, there is no canonical definition to state claims against.
-/

/-! ## A180285.P4418867657987168622

`A180281(A167499(n+3))`
-/

namespace A180285.P4418867657987168622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A167499 (n + 3)).toNat

end

end A180285.P4418867657987168622

/-! ## A180285.P274427370401188656

`A180281(A000217(n+4)+5)`
-/

namespace A180285.P274427370401188656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 4) + 5).toNat

end

end A180285.P274427370401188656

/-! ## A180285.P11315599040521153618

`A180281(A000124(n+5)-(n+1))`
-/

namespace A180285.P11315599040521153618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A180285.P11315599040521153618

/-! ## A180285.P14380586069114873815

`A180281(A055998(n+3)+3-n)`
-/

namespace A180285.P14380586069114873815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A055998 (n + 3) + (3 - (n : ℤ))).toNat

end

end A180285.P14380586069114873815

/-! ## A180285.P14785189623148086270

`A180281(A055999(n+3)-2*n)`
-/

namespace A180285.P14785189623148086270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A180285.P14785189623148086270

/-! ## A180285.P16417788913773673298

`A180281(A038722(Δ[A023545(n+1)]))`
-/

namespace A180285.P16417788913773673298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A180285.P16417788913773673298

/-!
# A180286: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 6.

The programs for A180286, there is no canonical definition to state claims against.
-/

/-! ## A180286.P6387944502688196211

`A180281(A056115(n)+21)`
-/

namespace A180286.P6387944502688196211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A056115 n + 21).toNat

end

end A180286.P6387944502688196211

/-! ## A180286.P18165606956848971018

`A180281(A000217(n+5)+6)`
-/

namespace A180286.P18165606956848971018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 5) + 6).toNat

end

end A180286.P18165606956848971018

/-! ## A180286.P10770758037674319702

`A180281(A155212(n+1)+14)`
-/

namespace A180286.P10770758037674319702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A155212 (n + 1) + 14).toNat

end

end A180286.P10770758037674319702

/-! ## A180286.P17096831712269278306

`A180281(n+9+A133263(n+4))`
-/

namespace A180286.P17096831712269278306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 ((n + 9 : ℤ) + A133263 (n + 4)).toNat

end

end A180286.P17096831712269278306

/-! ## A180286.P10684365244100258562

`A318114(n+6)-A318113(n+6)`
-/

namespace A180286.P10684365244100258562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318114 (n + 6) - A318113 (n + 6)

end

end A180286.P10684365244100258562

/-!
# A180287: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 7.

The programs for A180287, there is no canonical definition to state claims against.
-/

/-! ## A180287.P1024229312493821508

`A180281(A000124(n+6)+6)`
-/

namespace A180287.P1024229312493821508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 6) + 6).toNat

end

end A180287.P1024229312493821508

/-! ## A180287.P5905676634791696030

`A180281(A000217(n+6)+7)`
-/

namespace A180287.P5905676634791696030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 6) + 7).toNat

end

end A180287.P5905676634791696030

/-! ## A180287.P16406980313807981385

`A180281(A055998(n+4)+10)`
-/

namespace A180287.P16406980313807981385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A055998 (n + 4) + 10).toNat

end

end A180287.P16406980313807981385

/-! ## A180287.P3448810170407695946

`A318115(n+7)-A318114(n+7)`
-/

namespace A180287.P3448810170407695946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318115 (n + 7) - A318114 (n + 7)

end

end A180287.P3448810170407695946

/-! ## A180287.P10169591010751982701

`A180281(n+11+A133263(n+5))`
-/

namespace A180287.P10169591010751982701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 ((n + 11 : ℤ) + A133263 (n + 5)).toNat

end

end A180287.P10169591010751982701

/-!
# A180288: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 8.

The programs for A180288, there is no canonical definition to state claims against.
-/

/-! ## A180288.P15090610285827808532

`A180281(A000124(n+7)+7)`
-/

namespace A180288.P15090610285827808532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 7) + 7).toNat

end

end A180288.P15090610285827808532

/-! ## A180288.P11512354492489851548

`A180281(A000217(n+7)+8)`
-/

namespace A180288.P11512354492489851548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 7) + 8).toNat

end

end A180288.P11512354492489851548

/-! ## A180288.P17441674609404461959

`A180281(A161680(n+8)+8)`
-/

namespace A180288.P17441674609404461959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A161680 (n + 8) + 8).toNat

end

end A180288.P17441674609404461959

/-! ## A180288.P13624141026743848919

`A180281(A052905(n+4)+13)`
-/

namespace A180288.P13624141026743848919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A052905 (n + 4) + 13).toNat

end

end A180288.P13624141026743848919

/-! ## A180288.P9082233256320588080

`A180281(A000096(n+7)-(n-1))`
-/

namespace A180288.P9082233256320588080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A180288.P9082233256320588080

/-!
# A180289: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 9.

The programs for A180289, there is no canonical definition to state claims against.
-/

/-! ## A180289.P7535253444532395689

`A180281(A167499(n+7)+4)`
-/

namespace A180289.P7535253444532395689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A167499 (n + 7) + 4).toNat

end

end A180289.P7535253444532395689

/-! ## A180289.P8707361725759497408

`A180281(A000124(n+8)+8)`
-/

namespace A180289.P8707361725759497408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 8) + 8).toNat

end

end A180289.P8707361725759497408

/-! ## A180289.P4842101376487401881

`A180281(A000217(n+8)+9)`
-/

namespace A180289.P4842101376487401881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 8) + 9).toNat

end

end A180289.P4842101376487401881

/-! ## A180289.P1440056253833585302

`A180281(A161680(n+9)+9)`
-/

namespace A180289.P1440056253833585302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A161680 (n + 9) + 9).toNat

end

end A180289.P1440056253833585302

/-! ## A180289.P16167684289787915079

`A180281(A046691(n+8)-A005843(n+3))`
-/

namespace A180289.P16167684289787915079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A046691 (n + 8) - A005843 (n + 3)).toNat

end

end A180289.P16167684289787915079

/-!
# A180290: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to 10.

The programs for A180290, there is no canonical definition to state claims against.
-/

/-! ## A180290.P9391343831929229680

`A180281(A167499(n+8)+5)`
-/

namespace A180290.P9391343831929229680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A167499 (n + 8) + 5).toNat

end

end A180290.P9391343831929229680

/-! ## A180290.P2390674564559630110

`A180281(A000096(n+8)+11)`
-/

namespace A180290.P2390674564559630110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000096 (n + 8) + 11).toNat

end

end A180290.P2390674564559630110

/-! ## A180290.P13046096458702386378

`A180281(A000217(n+9)+10)`
-/

namespace A180290.P13046096458702386378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 9) + 10).toNat

end

end A180290.P13046096458702386378

/-! ## A180290.P17231295467400341958

`A180281(A000124(n+10)-(n+1))`
-/

namespace A180290.P17231295467400341958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A180290.P17231295467400341958

/-! ## A180290.P9288171774705702776

`A180281(eq[11, A131818(n+1)])`
-/

namespace A180290.P9288171774705702776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180290.P9288171774705702776

/-!
# A180291: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-1.

The programs for A180291, the canonical program `A180291.P6371107565437086450` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180291 has offset 2).

The definition of A180291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180291.P3203806771529777396

`floor(cot(Δ[log(n+1)]²))`
-/

namespace A180291.P3203806771529777396
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((f1 (n + 1) - f1 n) ^ 2)⌋

end

end A180291.P3203806771529777396

namespace A180291

/-- `floor(cot(Δ[log(n+1)]²))` -/
def P3203806771529777396.Spec : Prop :=
  ∀ n, P3203806771529777396.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P14806660953447634480

`ceil((sqrt(∑[2*n])+1)²)`
-/

namespace A180291.P14806660953447634480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 1) ^ 2⌉

end

end A180291.P14806660953447634480

namespace A180291

/-- `ceil((sqrt(∑[2*n])+1)²)` -/
def P14806660953447634480.Spec : Prop :=
  ∀ n, P14806660953447634480.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P14058125742323702490

`ceil(n/acot(n+3))+1`
-/

namespace A180291.P14058125742323702490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ)⌉ + 1

end

end A180291.P14058125742323702490

namespace A180291

/-- `ceil(n/acot(n+3))+1` -/
def P14058125742323702490.Spec : Prop :=
  ∀ n, P14058125742323702490.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P6198168902147891157

`floor((n+1)^3*acot(n))`
-/

namespace A180291.P6198168902147891157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 3 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

end

end A180291.P6198168902147891157

namespace A180291

/-- `floor((n+1)^3*acot(n))` -/
def P6198168902147891157.Spec : Prop :=
  ∀ n, P6198168902147891157.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P6371107565437086450

`∑[record[xor(2*n, C(2, n))]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180291

/-- `∑[record[xor(2*n, C(2, n))]]` -/
def P6371107565437086450.Spec : Prop :=
  ∀ n, (P6371107565437086450.a n : ℤ) = A180291 (n + 2)

theorem P6371107565437086450.correct : P6371107565437086450.Spec := by
  intro n
  simp only [A180291, Nat.add_sub_cancel]

end A180291

/-! ## A180291.P2882402254990169696

`ceil(cosh(sin(n)))*∑[n+1]`
-/

namespace A180291.P2882402254990169696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180291.P2882402254990169696

namespace A180291

/-- `ceil(cosh(sin(n)))*∑[n+1]` -/
def P2882402254990169696.Spec : Prop :=
  ∀ n, P2882402254990169696.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P17492941292036029085

`∑[a(n-1)+2]` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A180291.P17492941292036029085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180291.P17492941292036029085

namespace A180291

/-- `∑[a(n-1)+2]` -/
def P17492941292036029085.Spec : Prop :=
  ∀ n, (P17492941292036029085.a n : ℤ) = A180291 (n + 2)

end A180291

/-! ## A180291.P13944052812383830689

`round(2/tan(1/∑[n+1]))`
-/

namespace A180291.P13944052812383830689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.tan (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A180291.P13944052812383830689

namespace A180291

/-- `round(2/tan(1/∑[n+1]))` -/
def P13944052812383830689.Spec : Prop :=
  ∀ n, P13944052812383830689.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P13591788295793388168

`round(2/asin(1/∑[n+1]))`
-/

namespace A180291.P13591788295793388168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.arcsin (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A180291.P13591788295793388168

namespace A180291

/-- `round(2/asin(1/∑[n+1]))` -/
def P13591788295793388168.Spec : Prop :=
  ∀ n, P13591788295793388168.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P16415483627346273287

`round(2*cot(1/∑[n+1]))`
-/

namespace A180291.P16415483627346273287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * Real.cot (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A180291.P16415483627346273287

namespace A180291

/-- `round(2*cot(1/∑[n+1]))` -/
def P16415483627346273287.Spec : Prop :=
  ∀ n, P16415483627346273287.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P18318276699934085454

`∑[round(2/acot(n))+2]-2`
-/

namespace A180291.P18318276699934085454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A180291.P18318276699934085454

namespace A180291

/-- `∑[round(2/acot(n))+2]-2` -/
def P18318276699934085454.Spec : Prop :=
  ∀ n, P18318276699934085454.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P2637793032753331498

`record[(n-1)*(n-C(2, n))]`
-/

namespace A180291.P2637793032753331498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - (Nat.choose 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180291.P2637793032753331498

namespace A180291

/-- `record[(n-1)*(n-C(2, n))]` -/
def P2637793032753331498.Spec : Prop :=
  ∀ n, P2637793032753331498.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P8610046697111151317

`record[lcm(n-1, gcd(n, C(2, n)))]`
-/

namespace A180291.P8610046697111151317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (Nat.gcd n (Nat.choose 2 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180291.P8610046697111151317

namespace A180291

/-- `record[lcm(n-1, gcd(n, C(2, n)))]` -/
def P8610046697111151317.Spec : Prop :=
  ∀ n, (P8610046697111151317.a n : ℤ) = A180291 (n + 2)

end A180291

/-! ## A180291.P1414962248343723249

`ceil(atan(n+1))*∑[n+1]`
-/

namespace A180291.P1414962248343723249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180291.P1414962248343723249

namespace A180291

/-- `ceil(atan(n+1))*∑[n+1]` -/
def P1414962248343723249.Spec : Prop :=
  ∀ n, P1414962248343723249.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P10318674286536697213

`∑[2*(n+1)]-floor(acot(n))`
-/

namespace A180291.P10318674286536697213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A180291.P10318674286536697213

namespace A180291

/-- `∑[2*(n+1)]-floor(acot(n))` -/
def P10318674286536697213.Spec : Prop :=
  ∀ n, P10318674286536697213.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P3616759460232242276

`(3-ceil(acot(n)))*∑[n+1]`
-/

namespace A180291.P3616759460232242276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ⌈SequenceMachineLib.acot (n : ℝ)⌉) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180291.P3616759460232242276

namespace A180291

/-- `(3-ceil(acot(n)))*∑[n+1]` -/
def P3616759460232242276.Spec : Prop :=
  ∀ n, P3616759460232242276.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P10783235767347204350

`floor(∑[acot(n²)])*∑[n+1]`
-/

namespace A180291.P10783235767347204350
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n ^ 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A180291.P10783235767347204350

namespace A180291

/-- `floor(∑[acot(n²)])*∑[n+1]` -/
def P10783235767347204350.Spec : Prop :=
  ∀ n, P10783235767347204350.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P7241116416312013339

`ceil(acot(acot(n)²))*∑[n+1]`
-/

namespace A180291.P7241116416312013339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ) ^ 2)⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180291.P7241116416312013339

namespace A180291

/-- `ceil(acot(acot(n)²))*∑[n+1]` -/
def P7241116416312013339.Spec : Prop :=
  ∀ n, P7241116416312013339.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P10858726367181771675

`∑[ogf((1+3x-3x^2+x^3)/(1-2x+x^2))]`
-/

namespace A180291.P10858726367181771675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180291.P10858726367181771675

namespace A180291

/-- `∑[ogf((1+3x-3x^2+x^3)/(1-2x+x^2))]` -/
def P10858726367181771675.Spec : Prop :=
  ∀ n, P10858726367181771675.a n = A180291 (n + 2)

end A180291

/-! ## A180291.P15202063723439205475

`ogf((1+3x-3x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A180291.P15202063723439205475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3, 1] [1, -3, 3, -1] n

end

end A180291.P15202063723439205475

namespace A180291

/-- `ogf((1+3x-3x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P15202063723439205475.Spec : Prop :=
  ∀ n, P15202063723439205475.a n = A180291 (n + 2)

end A180291

/-!
# A180292: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-2.

The programs for A180292, the canonical program `A180292.P7000983173683337364` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180292 has offset 3).

The definition of A180292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180292.P7000983173683337364

`A072277(n+3)-A262086(n+1)^C(2, n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A180292

/-- `A072277(n+3)-A262086(n+1)^C(2, n+1)` -/
def P7000983173683337364.Spec : Prop :=
  ∀ n, P7000983173683337364.a n = A180292 (n + 3)

theorem P7000983173683337364.correct : P7000983173683337364.Spec := by
  intro n
  simp only [A180292, Nat.add_sub_cancel]

end A180292

/-! ## A180292.P6174537946662501355

`A000217(A065475(n+1))*A323161(2*n+1)`
-/

namespace A180292.P6174537946662501355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A065475 (n + 1)).toNat * A323161 (2 * n + 1)

end

end A180292.P6174537946662501355

namespace A180292

/-- `A000217(A065475(n+1))*A323161(2*n+1)` -/
def P6174537946662501355.Spec : Prop :=
  ∀ n, P6174537946662501355.a n = A180292 (n + 3)

end A180292

/-! ## A180292.P1074963949094710215

`A180281(∑[n+3]+1)`
-/

namespace A180292.P1074963949094710215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180292.P1074963949094710215

namespace A180292

/-- `A180281(∑[n+3]+1)` -/
def P1074963949094710215.Spec : Prop :=
  ∀ n, P1074963949094710215.a n = A180292 (n + 3)

end A180292

/-! ## A180292.P14052295511653117074

`record[A180281(n+1)/A180281(n+4)]`
-/

namespace A180292.P14052295511653117074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180281 (n + 1) : ℚ) / (A180281 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180292.P14052295511653117074

namespace A180292

/-- `record[A180281(n+1)/A180281(n+4)]` -/
def P14052295511653117074.Spec : Prop :=
  ∀ n, P14052295511653117074.a n = (A180292 (n + 3) : ℚ)

end A180292

/-! ## A180292.P5771088253421398440

`A180281(A034856(n+2))%A180284(n+4)`
-/

namespace A180292.P5771088253421398440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (A034856 (n + 2)).toNat) (A180284 (n + 4))

end

end A180292.P5771088253421398440

namespace A180292

/-- `A180281(A034856(n+2))%A180284(n+4)` -/
def P5771088253421398440.Spec : Prop :=
  ∀ n, P5771088253421398440.a n = A180292 (n + 3)

end A180292

/-! ## A180292.P5763089055929188733

`A003602(A046644(n+1))*A180281(A034856(n+2))`
-/

namespace A180292.P5763089055929188733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A046644 (n + 1)).toNat * A180281 (A034856 (n + 2)).toNat

end

end A180292.P5763089055929188733

namespace A180292

/-- `A003602(A046644(n+1))*A180281(A034856(n+2))` -/
def P5763089055929188733.Spec : Prop :=
  ∀ n, P5763089055929188733.a n = A180292 (n + 3)

end A180292

/-! ## A180292.P14647570610309346556

`A180281(Δ[A008778(n)])%A171471(n)`
-/

namespace A180292.P14647570610309346556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (f1 (n + 1) - f1 n).toNat) (A171471 n)

end

end A180292.P14647570610309346556

namespace A180292

/-- `A180281(Δ[A008778(n)])%A171471(n)` -/
def P14647570610309346556.Spec : Prop :=
  ∀ n, P14647570610309346556.a n = A180292 (n + 3)

end A180292

/-! ## A180292.P1194651598518948539

`(n+3-A008683(a(n-1)))*C(n+3, 2)` with `a(0)=1`
-/

namespace A180292.P1194651598518948539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 3 : ℤ) - A008683 (a (n - 1)).toNat) * (Nat.choose (n + 3) 2 : ℤ)

end

end A180292.P1194651598518948539

namespace A180292

/-- `(n+3-A008683(a(n-1)))*C(n+3, 2)` -/
def P1194651598518948539.Spec : Prop :=
  ∀ n, P1194651598518948539.a n = A180292 (n + 3)

end A180292

/-!
# A180293: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-3.

The programs for A180293, there is no canonical definition to state claims against.
-/

/-! ## A180293.P16770284870913511395

`A180281(∑[n+4]+3)`
-/

namespace A180293.P16770284870913511395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A180293.P16770284870913511395

/-! ## A180293.P17029127355706531691

`abs(A180281(A052905(n+1)+2)-n)+n`
-/

namespace A180293.P17029127355706531691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A180281 (A052905 (n + 1) + 2).toNat - (n : ℤ)| + (n : ℤ)

end

end A180293.P17029127355706531691

/-! ## A180293.P782967850636603694

`lcm(A083952(n), A180281(A056000(n)+7))`
-/

namespace A180293.P782967850636603694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083952 n) (A180281 (A056000 n + 7).toNat)

end

end A180293.P782967850636603694

/-! ## A180293.P5725984313940277690

`lcm(A130151(n), A180281(A052905(n+1)+2))`
-/

namespace A180293.P5725984313940277690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130151 n) (A180281 (A052905 (n + 1) + 2).toNat)

end

end A180293.P5725984313940277690

/-! ## A180293.P10967428020570233854

`A180281(Δ[A034857(n+1)])%A041564(n)`
-/

namespace A180293.P10967428020570233854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (f1 (n + 1) - f1 n).toNat) (A041564 n)

end

end A180293.P10967428020570233854

/-! ## A180293.P488771363117314573

`A180281(A052905(n+1)+2)%A188526(n)`
-/

namespace A180293.P488771363117314573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (A052905 (n + 1) + 2).toNat) (A188526 n)

end

end A180293.P488771363117314573

/-!
# A180294: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-4.

The programs for A180294, there is no canonical definition to state claims against.
-/

/-! ## A180294.P11785476038355141411

`A180281(∑[n+5]+6)`
-/

namespace A180294.P11785476038355141411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A180294.P11785476038355141411

/-! ## A180294.P3600577284939010521

`and(-1, A180281(Δ[A023545(n+1)]))`
-/

namespace A180294.P3600577284939010521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A180281 (f1 (n + 1) - f1 n).toNat)

end

end A180294.P3600577284939010521

/-! ## A180294.P15042144876001942468

`A180281(Δ[A023545(n+1)])^A000038(n)!`
-/

namespace A180294.P15042144876001942468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (f1 (n + 1) - f1 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A180294.P15042144876001942468

/-! ## A180294.P3532220315809064793

`A180281(Δ[A023545(n+1)])%A234240(n+1)`
-/

namespace A180294.P3532220315809064793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (f1 (n + 1) - f1 n).toNat) (A234240 (n + 1))

end

end A180294.P3532220315809064793

/-! ## A180294.P10973359383273770260

`A157928(2*(n+1))*A180281(A046691(n+3))`
-/

namespace A180294.P10973359383273770260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * (n + 1)) * A180281 (A046691 (n + 3)).toNat

end

end A180294.P10973359383273770260

/-! ## A180294.P5816422171545418634

`A009001(2*n)²*A180281(Δ[A023545(n+1)])`
-/

namespace A180294.P5816422171545418634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A180281 (f1 (n + 1) - f1 n).toNat

end

end A180294.P5816422171545418634

/-! ## A180294.P7910053571195888817

`A191254(2*n+1)+A180281(Δ[A023545(n+1)])`
-/

namespace A180294.P7910053571195888817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (2 * n + 1) + A180281 (f1 (n + 1) - f1 n).toNat

end

end A180294.P7910053571195888817

/-!
# A180295: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-5.

The programs for A180295, there is no canonical definition to state claims against.
-/

/-! ## A180295.P15076197007008896910

`A180281((n+4)²-∑[n+1]+1)`
-/

namespace A180295.P15076197007008896910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A180295.P15076197007008896910

/-! ## A180295.P12559929353335235005

`A180281(A052905(n+3))%A017308(n)`
-/

namespace A180295.P12559929353335235005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180281 (A052905 (n + 3)).toNat) (A017308 n)

end

end A180295.P12559929353335235005

/-! ## A180295.P10260811808150178125

`A180281(A052905(n+3))-A068902(n+1)%(n+1)`
-/

namespace A180295.P10260811808150178125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A052905 (n + 3)).toNat - Int.tmod (A068902 (n + 1)) (n + 1 : ℤ)

end

end A180295.P10260811808150178125

/-! ## A180295.P17264141823148334587

`A007318(∑[n])*A180281(A052905(n+3))`
-/

namespace A180295.P17264141823148334587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A180281 (A052905 (n + 3)).toNat

end

end A180295.P17264141823148334587

/-! ## A180295.P16655315906294891688

`A007318((n²+n)/2)*A180281(A000124(n+6)-6)`
-/

namespace A180295.P16655315906294891688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat * A180281 (A000124 (n + 6) - 6).toNat

end

end A180295.P16655315906294891688

/-! ## A180295.P16213159382888630488

`A180281(A052905(n+3))/A007318(A000217(n))`
-/

namespace A180295.P16213159382888630488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180281 (A052905 (n + 3)).toNat : ℚ) / (A007318 (A000217 n).toNat : ℚ)

end

end A180295.P16213159382888630488

/-! ## A180295.P13018784051946138884

`A019428(A044388(3*n+2))*A180281(A052905(n+3))`
-/

namespace A180295.P13018784051946138884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A044388 (3 * n + 2)).toNat * A180281 (A052905 (n + 3)).toNat

end

end A180295.P13018784051946138884

/-! ## A180295.P10507587796351333007

`A001221(A001248(n+1))*A180281(A052905(n+3))`
-/

namespace A180295.P10507587796351333007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A180281 (A052905 (n + 3)).toNat

end

end A180295.P10507587796351333007

/-!
# A180296: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-6.

The programs for A180296, there is no canonical definition to state claims against.
-/

/-! ## A180296.P6684621532140376886

`A180281(A055999(n+4))`
-/

namespace A180296.P6684621532140376886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A055999 (n + 4)).toNat

end

end A180296.P6684621532140376886

/-! ## A180296.P18010063125622765234

`A180281(Δ[A026054(n+4)])`
-/

namespace A180296.P18010063125622765234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (f1 (n + 1) - f1 n).toNat

end

end A180296.P18010063125622765234

/-! ## A180296.P869758874415681864

`A180281(A046691(n+5)-2)`
-/

namespace A180296.P869758874415681864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A046691 (n + 5) - 2).toNat

end

end A180296.P869758874415681864

/-! ## A180296.P257670001623163848

`A180281(A000217(n+7)-6)`
-/

namespace A180296.P257670001623163848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 7) - 6).toNat

end

end A180296.P257670001623163848

/-! ## A180296.P2412056164680901146

`A180281(A000124(n+7)-7)`
-/

namespace A180296.P2412056164680901146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 7) - 7).toNat

end

end A180296.P2412056164680901146

/-! ## A180296.P1147429459962259196

`A180281(A055998(n+6)-(n+11))`
-/

namespace A180296.P1147429459962259196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A055998 (n + 6) - (n + 11 : ℤ)).toNat

end

end A180296.P1147429459962259196

/-!
# A180297: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-7.

The programs for A180297, there is no canonical definition to state claims against.
-/

/-! ## A180297.P11179348492542541181

`A180281(A055998(n+6)-4)`
-/

namespace A180297.P11179348492542541181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A055998 (n + 6) - 4).toNat

end

end A180297.P11179348492542541181

/-! ## A180297.P11818792639196471907

`A180281(A000096(n+7)-6)`
-/

namespace A180297.P11818792639196471907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000096 (n + 7) - 6).toNat

end

end A180297.P11818792639196471907

/-! ## A180297.P1195234340926075790

`A180281(A000124(n+8)-8)`
-/

namespace A180297.P1195234340926075790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 8) - 8).toNat

end

end A180297.P1195234340926075790

/-! ## A180297.P10452619069938590825

`A180281(A133263(n+6)+2*(n+3))`
-/

namespace A180297.P10452619069938590825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A133263 (n + 6) + (2 * (n + 3) : ℤ)).toNat

end

end A180297.P10452619069938590825

/-! ## A180297.P15198027371505563933

`A180281(A000217(n+7)-A001489(n+1))`
-/

namespace A180297.P15198027371505563933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 7) - A001489 (n + 1)).toNat

end

end A180297.P15198027371505563933

/-!
# A180298: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-8.

The programs for A180298, there is no canonical definition to state claims against.
-/

/-! ## A180298.P6118455756355298004

`A180281(A155212(n+5))`
-/

namespace A180298.P6118455756355298004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A155212 (n + 5)).toNat

end

end A180298.P6118455756355298004

/-! ## A180298.P6685135127865682101

`A180281(A000096(n+8)-7)`
-/

namespace A180298.P6685135127865682101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000096 (n + 8) - 7).toNat

end

end A180298.P6685135127865682101

/-! ## A180298.P16344421659362679975

`A180281(A000217(n+9)-8)`
-/

namespace A180298.P16344421659362679975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 9) - 8).toNat

end

end A180298.P16344421659362679975

/-! ## A180298.P9529526144366154281

`A180281(A000124(n+9)-9)`
-/

namespace A180298.P9529526144366154281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 9) - 9).toNat

end

end A180298.P9529526144366154281

/-! ## A180298.P3763537131394426716

`A180281(A000326(n+13)-A002378(n+14))`
-/

namespace A180298.P3763537131394426716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000326 (n + 13) - A002378 (n + 14)).toNat

end

end A180298.P3763537131394426716

/-!
# A180299: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-9.

The programs for A180299, there is no canonical definition to state claims against.
-/

/-! ## A180299.P4015319020650155607

`A180281(A056000(n+6)+1)`
-/

namespace A180299.P4015319020650155607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A056000 (n + 6) + 1).toNat

end

end A180299.P4015319020650155607

/-! ## A180299.P10277401647190213378

`A180281(A000124(n+10)-10)`
-/

namespace A180299.P10277401647190213378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000124 (n + 10) - 10).toNat

end

end A180299.P10277401647190213378

/-! ## A180299.P13658443600314906316

`A180281(A133263(n+8)+2*(n+4))`
-/

namespace A180299.P13658443600314906316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A133263 (n + 8) + (2 * (n + 4) : ℤ)).toNat

end

end A180299.P13658443600314906316

/-! ## A180299.P10674377522449874397

`A180281(A000217(n+9)-A001489(n+1))`
-/

namespace A180299.P10674377522449874397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A000217 (n + 9) - A001489 (n + 1)).toNat

end

end A180299.P10674377522449874397

/-! ## A180299.P5917136368860598416

`A180281(A002378(n+7)-A000217(n+4))`
-/

namespace A180299.P5917136368860598416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A002378 (n + 7) - A000217 (n + 4)).toNat

end

end A180299.P5917136368860598416

/-! ## A180299.P4182777735227572159

`A180281(A180291(n+8)-A000217(n+4))`
-/

namespace A180299.P4182777735227572159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180281 (A180291 (n + 8) - A000217 (n + 4)).toNat

end

end A180299.P4182777735227572159

