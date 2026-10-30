import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A363402: a(n) = n * (4^n - 2^n) / Clausen(n, 0).

The programs for A363402, there is no canonical definition to state claims against.
-/

/-! ## A363402.P3548724945787377325

`A363395(n)*A363403(n)`
-/

namespace A363402.P3548724945787377325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363395 n * A363403 n

end

end A363402.P3548724945787377325

/-! ## A363402.P15343391398564261702

`A006516(n)*A295636(12*n+2)`
-/

namespace A363402.P15343391398564261702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n * A295636 (12 * n + 2)

end

end A363402.P15343391398564261702

/-! ## A363402.P1065774103828314280

`(4^n-2^n)*A078711(A120666(n+1))`
-/

namespace A363402.P1065774103828314280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ)) * A078711 (A120666 (n + 1)).toNat

end

end A363402.P1065774103828314280

/-! ## A363402.P3438335237761591374

`(4^n-2^n)*A368183(A098542(3*n))`
-/

namespace A363402.P3438335237761591374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ)) * A368183 (A098542 (3 * n)).toNat

end

end A363402.P3438335237761591374

/-!
# A363403: a(n) = (4^n - 2^n) / Clausen(n, 1).

The programs for A363403, the canonical program `A363403.P7562790022413852153` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363403 has offset 0).

The definition of A363403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363403.P7562790022413852153

`A006516(n)/A141459(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A363403

/-- `A006516(n)/A141459(n)` -/
def P7562790022413852153.Spec : Prop :=
  ∀ n, P7562790022413852153.a n = (A363403 n : ℚ)

end A363403

/-! ## A363403.P4509636503765036214

`A020522(n)/A141056(n)`
-/

namespace A363403.P4509636503765036214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020522 n : ℚ) / (A141056 n : ℚ)

end

end A363403.P4509636503765036214

namespace A363403

/-- `A020522(n)/A141056(n)` -/
def P4509636503765036214.Spec : Prop :=
  ∀ n, P4509636503765036214.a n = (A363403 n : ℚ)

end A363403

/-! ## A363403.P15871957853188630598

`A020522(n)/(2*A141459(n))`
-/

namespace A363403.P15871957853188630598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020522 n : ℚ) / (2 * A141459 n : ℚ)

end

end A363403.P15871957853188630598

namespace A363403

/-- `A020522(n)/(2*A141459(n))` -/
def P15871957853188630598.Spec : Prop :=
  ∀ n, P15871957853188630598.a n = (A363403 n : ℚ)

end A363403

/-! ## A363403.P14838002619327239042

`A059841(2*(n+1))/A141459(n)*C(2^n, 2)`
-/

namespace A363403.P14838002619327239042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059841 (2 * (n + 1)) : ℚ) / (A141459 n : ℚ) * (Nat.choose (2 ^ n) 2 : ℚ)

end

end A363403.P14838002619327239042

namespace A363403

/-- `A059841(2*(n+1))/A141459(n)*C(2^n, 2)` -/
def P14838002619327239042.Spec : Prop :=
  ∀ n, P14838002619327239042.a n = (A363403 n : ℚ)

end A363403

/-! ## A363403.P9489377443623342163

`A006516(n)/A000265(A027642(n))`
-/

namespace A363403.P9489377443623342163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006516 n : ℚ) / (A000265 (A027642 n).toNat : ℚ)

end

end A363403.P9489377443623342163

namespace A363403

/-- `A006516(n)/A000265(A027642(n))` -/
def P9489377443623342163.Spec : Prop :=
  ∀ n, P9489377443623342163.a n = (A363403 n : ℚ)

end A363403

/-!
# A363406: Start with list L = 1,2,3,4,.... For n = 1,2,3,..., iterate as follows: let j = L(1) and k = L(j+1), get a(n) = j + k, and remove j and k from L.

The programs for A363406, the canonical program `A363406.P15310620333099831224` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363406 has offset 1).

The definition of A363406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363406.P1814826682624519654

`2*comp[round(n/sqrt(2))+n]+1`
-/

namespace A363406.P1814826682624519654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A363406.P1814826682624519654

namespace A363406

/-- `2*comp[round(n/sqrt(2))+n]+1` -/
def P1814826682624519654.Spec : Prop :=
  ∀ n, (P1814826682624519654.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P15310620333099831224

`or(1, A215247(1+n)+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A363406

/-- `or(1, A215247(1+n)+1)` -/
def P15310620333099831224.Spec : Prop :=
  ∀ n, P15310620333099831224.a n = A363406 (n + 1)

theorem P15310620333099831224.correct : P15310620333099831224.Spec := by
  intro n
  simp only [A363406, Nat.add_sub_cancel]

end A363406

/-! ## A363406.P14936229419862182475

`xor(1, 2*A086377(n+1))`
-/

namespace A363406.P14936229419862182475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A086377 (n + 1))

end

end A363406.P14936229419862182475

namespace A363406

/-- `xor(1, 2*A086377(n+1))` -/
def P14936229419862182475.Spec : Prop :=
  ∀ n, P14936229419862182475.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P17593900516400949498

`A188299(Δ[n²])`
-/

namespace A363406.P17593900516400949498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363406.P17593900516400949498

namespace A363406

/-- `A188299(Δ[n²])` -/
def P17593900516400949498.Spec : Prop :=
  ∀ n, P17593900516400949498.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P8546559443546435961

`or(1, A080754(2*n+1))`
-/

namespace A363406.P8546559443546435961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080754 (2 * n + 1))

end

end A363406.P8546559443546435961

namespace A363406

/-- `or(1, A080754(2*n+1))` -/
def P8546559443546435961.Spec : Prop :=
  ∀ n, P8546559443546435961.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P10399186058472693372

`record[A188299(n+1)/(-1)^n]`
-/

namespace A363406.P10399186058472693372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188299 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363406.P10399186058472693372

namespace A363406

/-- `record[A188299(n+1)/(-1)^n]` -/
def P10399186058472693372.Spec : Prop :=
  ∀ n, P10399186058472693372.a n = (A363406 (n + 1) : ℚ)

end A363406

/-! ## A363406.P12867015901984613512

`or(1, A003151(2*n+1)+1)`
-/

namespace A363406.P12867015901984613512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003151 (2 * n + 1) + 1)

end

end A363406.P12867015901984613512

namespace A363406

/-- `or(1, A003151(2*n+1)+1)` -/
def P12867015901984613512.Spec : Prop :=
  ∀ n, P12867015901984613512.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P9278075456488952675

`-xor(A188376(Δ[n²])+1, -1)`
-/

namespace A363406.P9278075456488952675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A188376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1) (-1)

end

end A363406.P9278075456488952675

namespace A363406

/-- `-xor(A188376(Δ[n²])+1, -1)` -/
def P9278075456488952675.Spec : Prop :=
  ∀ n, P9278075456488952675.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P15322664412254694263

`∩[A005818(n+1), A188299(n+1)]`
-/

namespace A363406.P15322664412254694263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P15322664412254694263

namespace A363406

/-- `∩[A005818(n+1), A188299(n+1)]` -/
def P15322664412254694263.Spec : Prop :=
  ∀ n, (P15322664412254694263.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P16550878651836255107

`A004273(A080652(n+1))`
-/

namespace A363406.P16550878651836255107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A080652 (n + 1)).toNat

end

end A363406.P16550878651836255107

namespace A363406

/-- `A004273(A080652(n+1))` -/
def P16550878651836255107.Spec : Prop :=
  ∀ n, P16550878651836255107.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P17394107008389937102

`A144396(A086377(n+1))`
-/

namespace A363406.P17394107008389937102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A086377 (n + 1)).toNat

end

end A363406.P17394107008389937102

namespace A363406

/-- `A144396(A086377(n+1))` -/
def P17394107008389937102.Spec : Prop :=
  ∀ n, P17394107008389937102.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P13478660820556597314

`∩[A004273(n), A188299(n+1)]`
-/

namespace A363406.P13478660820556597314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P13478660820556597314

namespace A363406

/-- `∩[A004273(n), A188299(n+1)]` -/
def P13478660820556597314.Spec : Prop :=
  ∀ n, (P13478660820556597314.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P79427338824103137

`∩[A060747(n), A188299(n+1)]`
-/

namespace A363406.P79427338824103137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P79427338824103137

namespace A363406

/-- `∩[A060747(n), A188299(n+1)]` -/
def P79427338824103137.Spec : Prop :=
  ∀ n, (P79427338824103137.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P527218928616846336

`∩[A004280(n+1), A188299(n+1)]`
-/

namespace A363406.P527218928616846336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P527218928616846336

namespace A363406

/-- `∩[A004280(n+1), A188299(n+1)]` -/
def P527218928616846336.Spec : Prop :=
  ∀ n, (P527218928616846336.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P16057291007212983142

`∩[A144396(n+1), A188299(n+1)]`
-/

namespace A363406.P16057291007212983142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P16057291007212983142

namespace A363406

/-- `∩[A144396(n+1), A188299(n+1)]` -/
def P16057291007212983142.Spec : Prop :=
  ∀ n, (P16057291007212983142.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P1154099710452780224

`A004274(A064437(n+2))`
-/

namespace A363406.P1154099710452780224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A064437 (n + 2)).toNat

end

end A363406.P1154099710452780224

namespace A363406

/-- `A004274(A064437(n+2))` -/
def P1154099710452780224.Spec : Prop :=
  ∀ n, P1154099710452780224.a n = A363406 (n + 1)

end A363406

/-! ## A363406.P4220839568649617321

`∩[A004274(n), A188299(n+1)]`
-/

namespace A363406.P4220839568649617321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P4220839568649617321

namespace A363406

/-- `∩[A004274(n), A188299(n+1)]` -/
def P4220839568649617321.Spec : Prop :=
  ∀ n, (P4220839568649617321.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P6200551741645196909

`∩[A004276(n), A188299(n+1)]`
-/

namespace A363406.P6200551741645196909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P6200551741645196909

namespace A363406

/-- `∩[A004276(n), A188299(n+1)]` -/
def P6200551741645196909.Spec : Prop :=
  ∀ n, (P6200551741645196909.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P17876365656336819436

`∩[A004281(n), A188299(n+1)]`
-/

namespace A363406.P17876365656336819436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363406.P17876365656336819436

namespace A363406

/-- `∩[A004281(n), A188299(n+1)]` -/
def P17876365656336819436.Spec : Prop :=
  ∀ n, (P17876365656336819436.a n : ℤ) = A363406 (n + 1)

end A363406

/-! ## A363406.P10937468651681403866

`A001953(A001954(n)+1)`
-/

namespace A363406.P10937468651681403866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A001954 n + 1).toNat

end

end A363406.P10937468651681403866

namespace A363406

/-- `A001953(A001954(n)+1)` -/
def P10937468651681403866.Spec : Prop :=
  ∀ n, P10937468651681403866.a n = A363406 (n + 1)

end A363406

/-!
# A363407: Sum of divisors of 4*n-3 of form 4*k+3.

The programs for A363407, the canonical program `A363407.P16355104600949627013` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363407 has offset 1).

The definition of A363407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363407.P16355104600949627013

`A050452(4*n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363407

/-- `A050452(4*n+1)` -/
def P16355104600949627013.Spec : Prop :=
  ∀ n, P16355104600949627013.a n = A363407 (n + 1)

theorem P16355104600949627013.correct : P16355104600949627013.Spec := by
  intro n
  simp only [A363407, Nat.add_sub_cancel]

end A363407

/-! ## A363407.P14749872195595859966

`A112610(n)-A363317(n+1)`
-/

namespace A363407.P14749872195595859966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112610 n - A363317 (n + 1)

end

end A363407.P14749872195595859966

namespace A363407

/-- `A112610(n)-A363317(n+1)` -/
def P14749872195595859966.Spec : Prop :=
  ∀ n, P14749872195595859966.a n = A363407 (n + 1)

end A363407

/-! ## A363407.P3020831818863232790

`A363392(Δ[n²])`
-/

namespace A363407.P3020831818863232790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363407.P3020831818863232790

namespace A363407

/-- `A363392(Δ[n²])` -/
def P3020831818863232790.Spec : Prop :=
  ∀ n, P3020831818863232790.a n = A363407 (n + 1)

end A363407

/-! ## A363407.P6754571661672148329

`A008438(2*n)-A363316(2*n+1)`
-/

namespace A363407.P6754571661672148329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n) - A363316 (2 * n + 1)

end

end A363407.P6754571661672148329

namespace A363407

/-- `A008438(2*n)-A363316(2*n+1)` -/
def P6754571661672148329.Spec : Prop :=
  ∀ n, P6754571661672148329.a n = A363407 (n + 1)

end A363407

/-! ## A363407.P5424904964141900816

`A016813(n)-A326052(A016813(n))`
-/

namespace A363407.P5424904964141900816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A326052 (A016813 n).toNat

end

end A363407.P5424904964141900816

namespace A363407

/-- `A016813(n)-A326052(A016813(n))` -/
def P5424904964141900816.Spec : Prop :=
  ∀ n, P5424904964141900816.a n = A363407 (n + 1)

end A363407

/-! ## A363407.P835773023811577114

`A293903(3*n+n+1)`
-/

namespace A363407.P835773023811577114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293903 (3 * n + (n + 1))

end

end A363407.P835773023811577114

namespace A363407

/-- `A293903(3*n+n+1)` -/
def P835773023811577114.Spec : Prop :=
  ∀ n, P835773023811577114.a n = A363407 (n + 1)

end A363407

/-! ## A363407.P4381081292850376504

`A050464(4*n+1)`
-/

namespace A363407.P4381081292850376504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (4 * n + 1)

end

end A363407.P4381081292850376504

namespace A363407

/-- `A050464(4*n+1)` -/
def P4381081292850376504.Spec : Prop :=
  ∀ n, P4381081292850376504.a n = A363407 (n + 1)

end A363407

/-! ## A363407.P8310966201467895055

`A082052(4*n+1)`
-/

namespace A363407.P8310966201467895055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (4 * n + 1)

end

end A363407.P8310966201467895055

namespace A363407

/-- `A082052(4*n+1)` -/
def P8310966201467895055.Spec : Prop :=
  ∀ n, P8310966201467895055.a n = A363407 (n + 1)

end A363407

/-! ## A363407.P13980548734026345612

`A050464(A016813(n))+A019590(n+4)`
-/

namespace A363407.P13980548734026345612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (A016813 n).toNat + A019590 (n + 4)

end

end A363407.P13980548734026345612

namespace A363407

/-- `A050464(A016813(n))+A019590(n+4)` -/
def P13980548734026345612.Spec : Prop :=
  ∀ n, P13980548734026345612.a n = A363407 (n + 1)

end A363407

/-!
# A363408: Squares whose base-3 expansion has no 2.

The programs for A363408, there is no canonical definition to state claims against.
-/

/-! ## A363408.P383697564827970737

`∩[A005836(n+1), n²]`
-/

namespace A363408.P383697564827970737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A363408.P383697564827970737

/-! ## A363408.P12224176217034788039

`∩[A000290(n), A005836(n+1)]`
-/

namespace A363408.P12224176217034788039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363408.P12224176217034788039

/-! ## A363408.P16023226554064364342

`∩[A117676(n), A005836(n+1)]`
-/

namespace A363408.P16023226554064364342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363408.P16023226554064364342

/-! ## A363408.P5522529791540401270

`∩[A188915(n), A005836(n+1)]`
-/

namespace A363408.P5522529791540401270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363408.P5522529791540401270

/-! ## A363408.P4861354360131102761

`∩[n², A265746(n)]`
-/

namespace A363408.P4861354360131102761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363408.P4861354360131102761

/-! ## A363408.P16170469371486038722

`∩[n², A354047(n)]`
-/

namespace A363408.P16170469371486038722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363408.P16170469371486038722

/-! ## A363408.P17189057220646987839

`∩[A370662(n+1), n²]`
-/

namespace A363408.P17189057220646987839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A363408.P17189057220646987839

/-! ## A363408.P1441001061836039417

`∩[A000290(n), A370662(n+1)]`
-/

namespace A363408.P1441001061836039417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363408.P1441001061836039417

/-! ## A363408.P16320924041902698005

`∩[A117676(n), A370662(n+1)]`
-/

namespace A363408.P16320924041902698005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363408.P16320924041902698005

/-!
# A363409: a(n) = the real part of Product_{k = 1..n} (1 + k*sqrt(-2)).

The programs for A363409, the canonical program `A363409.P2787065367005003350` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363409 has offset 0).

The definition of A363409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363409.P2787065367005003350

`((2*n-1)*a(n-1)-n*(2*n²-4*n+3)*a(n-2))/(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363409

/-- `((2*n-1)*a(n-1)-n*(2*n²-4*n+3)*a(n-2))/(n-1)` -/
def P2787065367005003350.Spec : Prop :=
  ∀ n, P2787065367005003350.a n = (A363409 n : ℚ)

end A363409

/-! ## A363409.P7209591593282487342

`Δ[A363410(n)]/(n+1)`
-/

namespace A363409.P7209591593282487342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363410 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A363409.P7209591593282487342

namespace A363409

/-- `Δ[A363410(n)]/(n+1)` -/
def P7209591593282487342.Spec : Prop :=
  ∀ n, P7209591593282487342.a n = (A363409 n : ℚ)

end A363409

/-!
# A363410: a(n)= 1/sqrt(2) * the imaginary part of Product_{k = 1..n} (1 + k*sqrt(-2)).

The programs for A363410, the canonical program `A363410.P12568596041407619457` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363410 has offset 0).

The definition of A363410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363410.P12568596041407619457

`((2*n-1)*a(n-1)-n*(2*n²-4*n+3)*a(n-2))/(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363410

/-- `((2*n-1)*a(n-1)-n*(2*n²-4*n+3)*a(n-2))/(n-1)` -/
def P12568596041407619457.Spec : Prop :=
  ∀ n, P12568596041407619457.a n = (A363410 n : ℚ)

end A363410

/-! ## A363410.P14976151566515178880

`Δ[A363409(n)]/A001478(2*(n+1))`
-/

namespace A363410.P14976151566515178880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363409 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A001478 (2 * (n + 1)) : ℚ)

end

end A363410.P14976151566515178880

namespace A363410

/-- `Δ[A363409(n)]/A001478(2*(n+1))` -/
def P14976151566515178880.Spec : Prop :=
  ∀ n, P14976151566515178880.a n = (A363410 n : ℚ)

end A363410

/-!
# A363411: a(n) = the real part of Product_{k = 0..n} 1 + k*sqrt(-3).

The programs for A363411, there is no canonical definition to state claims against.
-/

/-! ## A363411.P10054592838067593879

`A291978(A000142(n))-A011928(2*n+1)`
-/

namespace A363411.P10054592838067593879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291978 (A000142 n).toNat - A011928 (2 * n + 1)

end

end A363411.P10054592838067593879

/-!
# A363412: a(n) = 1/sqrt(3) * the imaginary part of Product_{k = 0..n} 1 + k*sqrt(-3).

The programs for A363412, there is no canonical definition to state claims against.
-/

/-! ## A363412.P15915968947224767864

`n²-A169927(A000325(n))`
-/

namespace A363412.P15915968947224767864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A169927 (A000325 n).toNat

end

end A363412.P15915968947224767864

/-!
# A363413: a(n) = the real part of Product_{k = 0..n} 1 + k*sqrt(-4).

The programs for A363413, there is no canonical definition to state claims against.
-/

/-! ## A363413.P3689561590695898343

`Δ[A363414(n)]/(n+1)`
-/

namespace A363413.P3689561590695898343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363414 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A363413.P3689561590695898343

/-!
# A363414: a(n) = (1/2) * the imaginary part of Product_{k = 0..n} 1 + k*sqrt(-4).

The programs for A363414, there is no canonical definition to state claims against.
-/

/-! ## A363414.P4748969632837610244

`A181983(∑[∑[A015470(n)]])`
-/

namespace A363414.P4748969632837610244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015470 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363414.P4748969632837610244

/-!
# A363415: a(n) = the real part of Product_{k = 0..n} 1 + k*sqrt(-5).

The programs for A363415, there is no canonical definition to state claims against.
-/

/-! ## A363415.P241927464068274269

`Δ[A363416(n)]/(n+1)`
-/

namespace A363415.P241927464068274269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363416 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A363415.P241927464068274269

/-!
# A363416: a(n) = 1/sqrt(5) * the imaginary part of Product_{k = 0..n} 1 + k*sqrt(-5).

The programs for A363416, there is no canonical definition to state claims against.
-/

/-! ## A363416.P18101637968911497816

`∑[n*A363415(abs(1-n))]`
-/

namespace A363416.P18101637968911497816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A363415 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363416.P18101637968911497816

/-!
# A363417: a(n) = Sum_{j=0..2^n - 1} b(j) for n >= 0 where b(n) = (A023416(n) + 1)*b(A053645(n)) + [A036987(n) = 0]*b(A266341(n)) for n > 0 with b(0) = 1.

The programs for A363417, there is no canonical definition to state claims against.
-/

/-! ## A363417.P8811563006144837942

`A302492(A150242(n))`
-/

namespace A363417.P8811563006144837942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A150242 n).toNat

end

end A363417.P8811563006144837942

/-! ## A363417.P2468001740948607141

`A005117(A331157(n)-A165032(n))`
-/

namespace A363417.P2468001740948607141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A331157 n - A165032 n).toNat

end

end A363417.P2468001740948607141

/-!
# A363418: Square array read by ascending antidiagonals: T(n,k) = [x^(n*k)] ((1 + x)/(1 - x))^k for n, k >= 1.

The programs for A363418, there is no canonical definition to state claims against.
-/

/-! ## A363418.P13197039205123907770

`A336521(lt[1, A336521(n)])`
-/

namespace A363418.P13197039205123907770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A363418.P13197039205123907770

/-! ## A363418.P2049808949141359431

`filter[A336521(n), A358224(#)]`
-/

namespace A363418.P2049808949141359431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j).toNat = 1) n)

end

end A363418.P2049808949141359431

/-! ## A363418.P11503834956379384365

`filter[A336521(n), A014306(#)]`
-/

namespace A363418.P11503834956379384365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A363418.P11503834956379384365

/-! ## A363418.P8598000095202039342

`filter[A336521(n), A123110(#)]`
-/

namespace A363418.P8598000095202039342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A363418.P8598000095202039342

/-! ## A363418.P9153188351434222288

`filter[A336521(n), A178226(#)]`
-/

namespace A363418.P9153188351434222288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A363418.P9153188351434222288

/-!
# A363419: Square array read by ascending antidiagonals: T(n,k) = 1/n * [x^k] 1/((1 - x)*(1 - x^2))^(n*k) for n, k >= 1.

The programs for A363419, there is no canonical definition to state claims against.
-/

/-! ## A363419.P7696112867999352007

`A087343(A191714(n+1))`
-/

namespace A363419.P7696112867999352007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087343 (A191714 (n + 1)).toNat

end

end A363419.P7696112867999352007

/-! ## A363419.P16538153625024705919

`A371216(A224524(n+1))`
-/

namespace A363419.P16538153625024705919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371216 (A224524 (n + 1)).toNat

end

end A363419.P16538153625024705919

/-! ## A363419.P12798819227162923324

`A028313(A210607(n+1)+A000700(n))`
-/

namespace A363419.P12798819227162923324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (A210607 (n + 1) + A000700 n).toNat

end

end A363419.P12798819227162923324

/-! ## A363419.P9779362892824130058

`or(A343599(A178999(n+1)), A343599(n))`
-/

namespace A363419.P9779362892824130058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A343599 (A178999 (n + 1)).toNat) (A343599 n)

end

end A363419.P9779362892824130058

/-! ## A363419.P5306706203162417868

`A347520(or(A211849(n+1), A270033(2*(n+1))))`
-/

namespace A363419.P5306706203162417868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (Int.lor (A211849 (n + 1)) (A270033 (2 * (n + 1)))).toNat

end

end A363419.P5306706203162417868

/-!
# A363421: a(n) = Sum_{k=0..n}(n^[not(k | n)] - n^[k | n]), where '[ ]' denotes the Iverson bracket.

The programs for A363421, the canonical program `A363421.P12311062150934026796` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363421 has offset 0).

The definition of A363421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363421.P3440936140097609148

`A363735(n)-((n-1)*∏{e}[n, #+1]+1+n)`
-/

namespace A363421.P3440936140097609148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - (((n : ℤ) - 1) * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + 1 + (n : ℤ))

end

end A363421.P3440936140097609148

namespace A363421

/-- `A363735(n)-((n-1)*∏{e}[n, #+1]+1+n)` -/
def P3440936140097609148.Spec : Prop :=
  ∀ n, P3440936140097609148.a n = A363421 n

end A363421

/-! ## A363421.P12311062150934026796

`A363735(n)-A363734(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A363421

/-- `A363735(n)-A363734(n)` -/
def P12311062150934026796.Spec : Prop :=
  ∀ n, P12311062150934026796.a n = A363421 n

theorem P12311062150934026796.correct : P12311062150934026796.Spec := by
  intro n
  simp only [A363421]

end A363421

/-! ## A363421.P17513608473680825578

`A363735(n)-((n-1)*A032741(n)+n+n)`
-/

namespace A363421.P17513608473680825578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - (((n : ℤ) - 1) * A032741 n + (n : ℤ) + (n : ℤ))

end

end A363421.P17513608473680825578

namespace A363421

/-- `A363735(n)-((n-1)*A032741(n)+n+n)` -/
def P17513608473680825578.Spec : Prop :=
  ∀ n, P17513608473680825578.a n = A363421 n

end A363421

/-! ## A363421.P14768282796523494130

`(n+1)²-A363734(n)-((n-1)*A032741(n)+n+n)`
-/

namespace A363421.P14768282796523494130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A363734 n - (((n : ℤ) - 1) * A032741 n + (n : ℤ) + (n : ℤ))

end

end A363421.P14768282796523494130

namespace A363421

/-- `(n+1)²-A363734(n)-((n-1)*A032741(n)+n+n)` -/
def P14768282796523494130.Spec : Prop :=
  ∀ n, P14768282796523494130.a n = A363421 n

end A363421

/-! ## A363421.P7203655180257862261

`A001844(n)-A363734(n)-n²-A363734(n)`
-/

namespace A363421.P7203655180257862261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A363734 n - (n ^ 2 : ℤ) - A363734 n

end

end A363421.P7203655180257862261

namespace A363421

/-- `A001844(n)-A363734(n)-n²-A363734(n)` -/
def P7203655180257862261.Spec : Prop :=
  ∀ n, P7203655180257862261.a n = A363421 n

theorem P7203655180257862261.correct : P7203655180257862261.Spec := by
  intro n
  simp only [A363421, Nat.add_sub_cancel, A363421.P7203655180257862261.a, A363421.P12311062150934026796.a, A001844, A001844.P5037395199076350534.a, A363734, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, A363735, A363735.P13463247306940588211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363421

/-! ## A363421.P11024435610475770024

`A363735(n)-(A000290(n)-(A363735(n)-Δ[n²]))`
-/

namespace A363421.P11024435610475770024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - (A000290 n - (A363735 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A363421.P11024435610475770024

namespace A363421

/-- `A363735(n)-(A000290(n)-(A363735(n)-Δ[n²]))` -/
def P11024435610475770024.Spec : Prop :=
  ∀ n, P11024435610475770024.a n = A363421 n

theorem P11024435610475770024.correct : P11024435610475770024.Spec := by
  intro n
  simp only [A363421, Nat.add_sub_cancel, A363421.P11024435610475770024.f1, A363421.P11024435610475770024.a, A363421.P12311062150934026796.a, A000290, A000290.P12206242496348924484.a, A363734, A363734.P4451940321919636705.f1, A363734.P4451940321919636705.a, A363735, A363735.P13463247306940588211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363421

/-!
# A363423: G.f. satisfies A(x) = exp( Sum_{k>=1} A(3*x^k) * x^k/k ).

The programs for A363423, there is no canonical definition to state claims against.
-/

/-! ## A363423.P8276584963526490878

`A039082(2^n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A363423.P8276584963526490878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A039082 ((2 ^ n : ℤ) * a (n - 1)).toNat

end

end A363423.P8276584963526490878

/-!
# A363424: G.f. satisfies A(x) = exp( Sum_{k>=1} A(4*x^k) * x^k/k ).

The programs for A363424, there is no canonical definition to state claims against.
-/

/-! ## A363424.P11836669361792715173

`A289627(∑[A000316(n)])`
-/

namespace A363424.P11836669361792715173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363424.P11836669361792715173

/-!
# A363425: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(2*x^k) * x^k/k ).

The programs for A363425, there is no canonical definition to state claims against.
-/

/-! ## A363425.P1192035270785739078

`round(A145051(round(A004027(n)/2))/2)`
-/

namespace A363425.P1192035270785739078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A145051 (SequenceMachineLib.roundAway ((A004027 n : ℚ) / 2)).toNat : ℚ) / 2)

end

end A363425.P1192035270785739078

/-! ## A363425.P13955851196505613232

`A153088(and(A067890(n+5), A377217(n)))`
-/

namespace A363425.P13955851196505613232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153088 (Int.land (A067890 (n + 5)) (A377217 n)).toNat

end

end A363425.P13955851196505613232

/-!
# A363426: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(3*x^k) * x^k/k ).

The programs for A363426, there is no canonical definition to state claims against.
-/

/-! ## A363426.P10977338868969835860

`∏[A090978(n!)]`
-/

namespace A363426.P10977338868969835860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090978 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A363426.P10977338868969835860

/-!
# A363427: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(4*x^k) * x^k/k ).

The programs for A363427, there is no canonical definition to state claims against.
-/

/-! ## A363427.P15935477142471795186

`A008619(n)*A213500(A300954(n))`
-/

namespace A363427.P15935477142471795186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A213500 (A300954 n).toNat

end

end A363427.P15935477142471795186

/-!
# A363428: Squares whose base-3 expansion has no 0.

The programs for A363428, there is no canonical definition to state claims against.
-/

/-! ## A363428.P9339574526558689263

`∩[A259566(n+1), n²]`
-/

namespace A363428.P9339574526558689263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A363428.P9339574526558689263

/-! ## A363428.P13310282652243804778

`∩[A000290(n), A259566(n+1)]`
-/

namespace A363428.P13310282652243804778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363428.P13310282652243804778

/-! ## A363428.P10106518111479969366

`∩[A083854(n), A259566(n+1)]`
-/

namespace A363428.P10106518111479969366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363428.P10106518111479969366

/-! ## A363428.P4878716933498204378

`∩[A087278(n), A259566(n+1)]`
-/

namespace A363428.P4878716933498204378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363428.P4878716933498204378

/-! ## A363428.P10985736960609460415

`∩[A135276(n), A259566(n+1)]`
-/

namespace A363428.P10985736960609460415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363428.P10985736960609460415

/-!
# A363429: Number of set partitions of [n] such that each block has at most one even element.

The programs for A363429, the canonical program `A363429.P3471084005968690868` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363429 has offset 0).

The definition of A363429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363429.P3471084005968690868

`∑{#}[ceil(n/2), floor(n/2)^#*C(ceil(n/2), #)*A000110(ceil(n/2)-#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A363429

/-- `∑{#}[ceil(n/2), floor(n/2)^#*C(ceil(n/2), #)*A000110(ceil(n/2)-#)]` -/
def P3471084005968690868.Spec : Prop :=
  ∀ n, P3471084005968690868.a n = A363429 n

theorem P3471084005968690868.correct : P3471084005968690868.Spec := by
  intro n
  simp only [A363429]

end A363429

/-! ## A363429.P8556790658361991264

`A108087(∑[and(n, -2)]+n)`
-/

namespace A363429.P8556790658361991264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A363429.P8556790658361991264

namespace A363429

/-- `A108087(∑[and(n, -2)]+n)` -/
def P8556790658361991264.Spec : Prop :=
  ∀ n, P8556790658361991264.a n = A363429 n

end A363429

/-! ## A363429.P16099631258889507682

`A108087(∑[n]+ceil(abs((1-n)/2)))`
-/

namespace A363429.P16099631258889507682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉).toNat

end

end A363429.P16099631258889507682

namespace A363429

/-- `A108087(∑[n]+ceil(abs((1-n)/2)))` -/
def P16099631258889507682.Spec : Prop :=
  ∀ n, P16099631258889507682.a n = A363429 n

end A363429

/-! ## A363429.P5453121606571379965

`A335123(A000045(n+4))+A204451(n)`
-/

namespace A363429.P5453121606571379965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335123 (A000045 (n + 4)).toNat + A204451 n

end

end A363429.P5453121606571379965

namespace A363429

/-- `A335123(A000045(n+4))+A204451(n)` -/
def P5453121606571379965.Spec : Prop :=
  ∀ n, P5453121606571379965.a n = A363429 n

end A363429

/-!
# A363430: Number of set partitions of [n] such that each block has at most one odd element.

The programs for A363430, the canonical program `A363430.P11968697490168242083` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363430 has offset 0).

The definition of A363430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363430.P11968697490168242083

`∑{#}[floor(n/2), ceil(n/2)^#*C(floor(n/2), #)*A000110(floor(n/2)-#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A363430

/-- `∑{#}[floor(n/2), ceil(n/2)^#*C(floor(n/2), #)*A000110(floor(n/2)-#)]` -/
def P11968697490168242083.Spec : Prop :=
  ∀ n, P11968697490168242083.a n = A363430 n

theorem P11968697490168242083.correct : P11968697490168242083.Spec := by
  intro n
  simp only [A363430]

end A363430

/-! ## A363430.P8674021577175365074

`A108087(floor((n+1)²/2))`
-/

namespace A363430.P8674021577175365074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A363430.P8674021577175365074

namespace A363430

/-- `A108087(floor((n+1)²/2))` -/
def P8674021577175365074.Spec : Prop :=
  ∀ n, P8674021577175365074.a n = A363430 n

end A363430

/-! ## A363430.P10257920019094013208

`or(A000007(n), A108087(A080476(n+1)))`
-/

namespace A363430.P10257920019094013208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A108087 (A080476 (n + 1)).toNat)

end

end A363430.P10257920019094013208

namespace A363430

/-- `or(A000007(n), A108087(A080476(n+1)))` -/
def P10257920019094013208.Spec : Prop :=
  ∀ n, P10257920019094013208.a n = A363430 n

end A363430

/-! ## A363430.P9457659413921616807

`A108087(A080476(n+1))-A000007(n+2)`
-/

namespace A363430.P9457659413921616807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A080476 (n + 1)).toNat - A000007 (n + 2)

end

end A363430.P9457659413921616807

namespace A363430

/-- `A108087(A080476(n+1))-A000007(n+2)` -/
def P9457659413921616807.Spec : Prop :=
  ∀ n, P9457659413921616807.a n = A363430 n

end A363430

/-! ## A363430.P14934651974878868558

`A108087(A080476(n+1))+A010052(A195020(n+1)+n)`
-/

namespace A363430.P14934651974878868558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A080476 (n + 1)).toNat + A010052 (A195020 (n + 1) + (n : ℤ)).toNat

end

end A363430.P14934651974878868558

namespace A363430

/-- `A108087(A080476(n+1))+A010052(A195020(n+1)+n)` -/
def P14934651974878868558.Spec : Prop :=
  ∀ n, P14934651974878868558.a n = A363430 n

end A363430

/-! ## A363430.P13327897139027387914

`A108087(A080476(n+1))+A010052(A161207(n+2)+n)`
-/

namespace A363430.P13327897139027387914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A080476 (n + 1)).toNat + A010052 (A161207 (n + 2) + (n : ℤ)).toNat

end

end A363430.P13327897139027387914

namespace A363430

/-- `A108087(A080476(n+1))+A010052(A161207(n+2)+n)` -/
def P13327897139027387914.Spec : Prop :=
  ∀ n, P13327897139027387914.a n = A363430 n

end A363430

/-!
# A363431: Number of 123-avoiding stabilized-interval-free permutations of size n.

The programs for A363431, there is no canonical definition to state claims against.
-/

/-! ## A363431.P10286005503331784255

`A023193(A056841(n+1))`
-/

namespace A363431.P10286005503331784255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A056841 (n + 1)).toNat

end

end A363431.P10286005503331784255

/-! ## A363431.P7342688676556156917

`A023193(A398115(n+1))`
-/

namespace A363431.P7342688676556156917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A398115 (n + 1)).toNat

end

end A363431.P7342688676556156917

/-! ## A363431.P17665574756301593812

`A347655(A144700(n+1))`
-/

namespace A363431.P17665574756301593812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A144700 (n + 1)).toNat

end

end A363431.P17665574756301593812

/-! ## A363431.P5128349476388355335

`A226762(A091151(n)-n)`
-/

namespace A363431.P5128349476388355335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A091151 n - (n : ℤ)).toNat

end

end A363431.P5128349476388355335

/-!
# A363432: Number of 231-avoiding stabilized-interval-free permutations of size n.

The programs for A363432, there is no canonical definition to state claims against.
-/

/-! ## A363432.P14926894601151323780

`A369318(2*a(n-2)-a(n-4))+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A363432.P14926894601151323780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  A369318 (2 * a (n - 2) - a (n - 4)).toNat + 1

end

end A363432.P14926894601151323780

/-! ## A363432.P5141538704419642368

`A034448(A369318(2*a(n-2)-a(n-4)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A363432.P5141538704419642368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  A034448 (A369318 (2 * a (n - 2) - a (n - 4)).toNat).toNat

end

end A363432.P5141538704419642368

/-! ## A363432.P17988455265620276585

`A054404(A120588(n)+A004149(n))`
-/

namespace A363432.P17988455265620276585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A120588 n + A004149 n).toNat

end

end A363432.P17988455265620276585

/-! ## A363432.P12865180012286519902

`A076868(A034354(n+1))+A034335(n)`
-/

namespace A363432.P12865180012286519902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076868 (A034354 (n + 1)).toNat + A034335 n

end

end A363432.P12865180012286519902

/-!
# A363433: Number of (123,231)-avoiding stabilized-interval-free permutations of size n.

The programs for A363433, the canonical program `A363433.P14858405049033488235` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363433 has offset 0).

The definition of A363433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363433.P14858405049033488235

`ogf((1+x-x^2-2x^3-x^4+2x^5+3x^6-x^8-x^9)/(1-2x^2-x^3+x^4+2x^5-x^7))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363433

/-- `ogf((1+x-x^2-2x^3-x^4+2x^5+3x^6-x^8-x^9)/(1-2x^2-x^3+x^4+2x^5-x^7))` -/
def P14858405049033488235.Spec : Prop :=
  ∀ n, P14858405049033488235.a n = A363433 n

theorem P14858405049033488235.correct : P14858405049033488235.Spec := by
  intro n
  simp only [A363433]

end A363433

/-! ## A363433.P10545237636097557499

`round((n+3)²/12)-a(n-1)-2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A363433.P10545237636097557499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - a (n - 1) - 2

end

end A363433.P10545237636097557499

namespace A363433

/-- `round((n+3)²/12)-a(n-1)-2` -/
def P10545237636097557499.Spec : Prop :=
  ∀ n, P10545237636097557499.a n = A363433 n

end A363433

/-!
# A363434: Total number of blocks containing only elements of the same parity in all partitions of [n].

The programs for A363434, there is no canonical definition to state claims against.
-/

/-! ## A363434.P3300190524975354672

`∑{#}[n, #*A124424(C(n+1, 2)+#)]`
-/

namespace A363434.P3300190524975354672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A124424 (Nat.choose (n + 1) 2 + k)

end

end A363434.P3300190524975354672

/-! ## A363434.P4700757730758131706

`A363452(n)+A363453(n)`
-/

namespace A363434.P4700757730758131706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363452 n + A363453 n

end

end A363434.P4700757730758131706

/-! ## A363434.P7707465822692928183

`A363452(n)+A216078(n+1)-A000110(n)`
-/

namespace A363434.P7707465822692928183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363452 n + (A216078 (n + 1) - A000110 n)

end

end A363434.P7707465822692928183

/-! ## A363434.P12054939345820116892

`A216332(n+1)+A363453(n)-A000110(n)`
-/

namespace A363434.P12054939345820116892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (n + 1) + (A363453 n - A000110 n)

end

end A363434.P12054939345820116892

/-! ## A363434.P10009895579739501062

`A363452(n)+A216078(n+1)-A123081(∑[n])`
-/

namespace A363434.P10009895579739501062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363452 n + (A216078 (n + 1) - A123081 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A363434.P10009895579739501062

/-! ## A363434.P9360058314746388760

`A363453(n)+A216332(n+1)-A123081(∑[n])`
-/

namespace A363434.P9360058314746388760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363453 n + (A216332 (n + 1) - A123081 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A363434.P9360058314746388760

/-! ## A363434.P5040452037062709337

`A216078(n+1)-A000110(n)+A216332(n+1)-A000110(n)`
-/

namespace A363434.P5040452037062709337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A000110 n + (A216332 (n + 1) - A000110 n)

end

end A363434.P5040452037062709337

/-!
# A363435: Number of partitions of [2n] having exactly n blocks with all elements of the same parity.

The programs for A363435, there is no canonical definition to state claims against.
-/

/-! ## A363435.P14230019527632911794

`A124424(C(2*n+1, 2)+n)`
-/

namespace A363435.P14230019527632911794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124424 (Nat.choose (2 * n + 1) 2 + n)

end

end A363435.P14230019527632911794

/-! ## A363435.P1951083070965413143

`A124424(∑[4*n])`
-/

namespace A363435.P1951083070965413143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363435.P1951083070965413143

/-! ## A363435.P10544405713292320094

`A124424(A046092(n))+A000007(n+2)`
-/

namespace A363435.P10544405713292320094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124424 (A046092 n).toNat + A000007 (n + 2)

end

end A363435.P10544405713292320094

/-!
# A363436: Array read by ascending antidiagonals: A(n, k) = k*n^2, with k >= 0.

The programs for A363436, the canonical program `A363436.P10496850605834974309` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363436 has offset 0).

The definition of A363436 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(row(n)-col(n))²` (program `A363436.P10496850605834974309`, by `A363436.P10496850605834974309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A363436.P10496850605834974309

`col(n)*(row(n)-col(n))²`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363436

/-- `col(n)*(row(n)-col(n))²` -/
def P10496850605834974309.Spec : Prop :=
  ∀ n, P10496850605834974309.a n = A363436 n

theorem P10496850605834974309.correct : P10496850605834974309.Spec := by
  intro n
  simp only [A363436]

end A363436

/-! ## A363436.P1239876910611729537

`(row(n)-col(n))^2*col(n)`
-/

namespace A363436.P1239876910611729537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 * (SequenceMachineLib.triCol n : ℤ)

end

end A363436.P1239876910611729537

namespace A363436

/-- `(row(n)-col(n))^2*col(n)` -/
def P1239876910611729537.Spec : Prop :=
  ∀ n, P1239876910611729537.a n = A363436 n

theorem P1239876910611729537.correct : P1239876910611729537.Spec := by
  intro n
  simp only [A363436, Nat.add_sub_cancel, A363436.P1239876910611729537.a, A363436.P10496850605834974309.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A363436

/-! ## A363436.P11735694369765379709

`col(n)*(row(n)-col(n))*(row(n)-col(n))`
-/

namespace A363436.P11735694369765379709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A363436.P11735694369765379709

namespace A363436

/-- `col(n)*(row(n)-col(n))*(row(n)-col(n))` -/
def P11735694369765379709.Spec : Prop :=
  ∀ n, P11735694369765379709.a n = A363436 n

theorem P11735694369765379709.correct : P11735694369765379709.Spec := by
  intro n
  simp only [A363436, Nat.add_sub_cancel, A363436.P11735694369765379709.a, A363436.P10496850605834974309.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A363436

/-! ## A363436.P5622267072181920783

`A025581(n)²*col(n)`
-/

namespace A363436.P5622267072181920783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2 * (SequenceMachineLib.triCol n : ℤ)

end

end A363436.P5622267072181920783

namespace A363436

/-- `A025581(n)²*col(n)` -/
def P5622267072181920783.Spec : Prop :=
  ∀ n, P5622267072181920783.a n = A363436 n

theorem P5622267072181920783.correct : P5622267072181920783.Spec := by
  intro n
  simp only [A363436, Nat.add_sub_cancel, A363436.P5622267072181920783.a, A363436.P10496850605834974309.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363436

/-! ## A363436.P13344844674103456220

`col(n)*A095831(n+1)`
-/

namespace A363436.P13344844674103456220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * A095831 (n + 1)

end

end A363436.P13344844674103456220

namespace A363436

/-- `col(n)*A095831(n+1)` -/
def P13344844674103456220.Spec : Prop :=
  ∀ n, P13344844674103456220.a n = A363436 n

end A363436

/-! ## A363436.P3680127166864970271

`A025683(n+1)²*col(n)`
-/

namespace A363436.P3680127166864970271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025683 (n + 1) ^ 2 * (SequenceMachineLib.triCol n : ℤ)

end

end A363436.P3680127166864970271

namespace A363436

/-- `A025683(n+1)²*col(n)` -/
def P3680127166864970271.Spec : Prop :=
  ∀ n, P3680127166864970271.a n = A363436 n

end A363436

/-! ## A363436.P3215508132365563929

`A000290(row(n)-col(n))*col(n)`
-/

namespace A363436.P3215508132365563929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * (SequenceMachineLib.triCol n : ℤ)

end

end A363436.P3215508132365563929

namespace A363436

/-- `A000290(row(n)-col(n))*col(n)` -/
def P3215508132365563929.Spec : Prop :=
  ∀ n, P3215508132365563929.a n = A363436 n

end A363436

/-! ## A363436.P17016412874410216352

`(C(comp[∑[n]]-n, 2)-(n+1))*A004247(n)`
-/

namespace A363436.P17016412874410216352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A004247 n

end

end A363436.P17016412874410216352

namespace A363436

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A004247(n)` -/
def P17016412874410216352.Spec : Prop :=
  ∀ n, P17016412874410216352.a n = A363436 n

end A363436

/-! ## A363436.P18372591875836425447

`(n+1-C(comp[∑[n]]-n, 2))²*A002262(n)`
-/

namespace A363436.P18372591875836425447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 * A002262 n

end

end A363436.P18372591875836425447

namespace A363436

/-- `(n+1-C(comp[∑[n]]-n, 2))²*A002262(n)` -/
def P18372591875836425447.Spec : Prop :=
  ∀ n, P18372591875836425447.a n = A363436 n

end A363436

/-! ## A363436.P13783821611117970374

`(C(comp[∑[n]]-n, 2)-(n+1))²*A114219(n)`
-/

namespace A363436.P13783821611117970374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2 * A114219 n

end

end A363436.P13783821611117970374

namespace A363436

/-- `(C(comp[∑[n]]-n, 2)-(n+1))²*A114219(n)` -/
def P13783821611117970374.Spec : Prop :=
  ∀ n, P13783821611117970374.a n = A363436 n

end A363436

/-!
# A363439: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^k) * (3*x)^k/k ).

The programs for A363439, there is no canonical definition to state claims against.
-/

/-! ## A363439.P284117035372502806

`A254503(A000244(n)*A093128(n))`
-/

namespace A363439.P284117035372502806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A000244 n * A093128 n).toNat

end

end A363439.P284117035372502806

/-!
# A363440: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^k) * (4*x)^k/k ).

The programs for A363440, there is no canonical definition to state claims against.
-/

/-! ## A363440.P11615710791462540470

`A245092(A000079(n)*A150843(n))`
-/

namespace A363440.P11615710791462540470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A000079 n * A150843 n).toNat

end

end A363440.P11615710791462540470

/-!
# A363441: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(x^k) * (2*x)^k/k ).

The programs for A363441, there is no canonical definition to state claims against.
-/

/-! ## A363441.P7519629823122665167

`A007614(A096573(n+1)+A015448(n))`
-/

namespace A363441.P7519629823122665167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A096573 (n + 1) + A015448 n).toNat

end

end A363441.P7519629823122665167

/-! ## A363441.P1341809301684667308

`A364955(A002110(n))+A329693(3*n)`
-/

namespace A363441.P1341809301684667308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364955 (A002110 n).toNat + A329693 (3 * n)

end

end A363441.P1341809301684667308

/-!
# A363442: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(x^k) * (3*x)^k/k ).

The programs for A363442, there is no canonical definition to state claims against.
-/

/-! ## A363442.P2057101980421427093

`∏[∑{e}[(n+2)^(n+2)+2*n+1, #]]`
-/

namespace A363442.P2057101980421427093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ (n + 2) + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A363442.P2057101980421427093

/-! ## A363442.P14328966355390933880

`∏[A118943(record[A020086(n)])]`
-/

namespace A363442.P14328966355390933880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118943 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A363442.P14328966355390933880

/-!
# A363443: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(x^k) * (4*x)^k/k ).

The programs for A363443, there is no canonical definition to state claims against.
-/

/-! ## A363443.P1913404242677259092

`A000010(∏[∑[2*n]/a(n-1)+4])` with `a(0)=2, a(1)=6`
-/

namespace A363443.P1913404242677259092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A363443.P1913404242677259092

/-! ## A363443.P8704579386315949148

`A060968(A002893(n))`
-/

namespace A363443.P8704579386315949148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (A002893 n).toNat

end

end A363443.P8704579386315949148

/-!
# A363447: a(0) = 0; a(n) = a(a(n-1))-1 mod (n+1) for all n >= 1.

The programs for A363447, the canonical program `A363447.P9352887814135850751` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363447 has offset 0).

The definition of A363447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363447.P9352887814135850751

`(a(a(n-1))+n)%(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363447

/-- `(a(a(n-1))+n)%(n+1)` -/
def P9352887814135850751.Spec : Prop :=
  ∀ n, (P9352887814135850751.a n : ℤ) = A363447 n

theorem P9352887814135850751.correct : P9352887814135850751.Spec := by
  intro n
  simp only [A363447]

end A363447

/-! ## A363447.P5146182920100526469

`A139712(n+2)-A000005(A001992(n+1))`
-/

namespace A363447.P5146182920100526469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139712 (n + 2) - A000005 (A001992 (n + 1)).toNat

end

end A363447.P5146182920100526469

namespace A363447

/-- `A139712(n+2)-A000005(A001992(n+1))` -/
def P5146182920100526469.Spec : Prop :=
  ∀ n, P5146182920100526469.a n = A363447 n

end A363447

/-!
# A363448: Number of noncrossing partitions of the n-set with no pair of singletons {i} and {j} that can be merged into {i,j} and leave the partition a noncrossing partition.

The programs for A363448, there is no canonical definition to state claims against.
-/

/-! ## A363448.P17198438557201413869

`A000108(n)-A363449(n)`
-/

namespace A363448.P17198438557201413869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A363449 n

end

end A363448.P17198438557201413869

/-! ## A363448.P7851784565068028283

`abs(A168491(n))-A363449(n)`
-/

namespace A363448.P7851784565068028283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A363449 n

end

end A363448.P7851784565068028283

/-! ## A363448.P14784655413684867562

`A120588(n+1)-A363449(n)`
-/

namespace A363448.P14784655413684867562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A363449 n

end

end A363448.P14784655413684867562

/-! ## A363448.P2619398481815433256

`A120304(n)+2-A363449(n)`
-/

namespace A363448.P2619398481815433256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2 - A363449 n

end

end A363448.P2619398481815433256

/-! ## A363448.P15191723483331596089

`A028303(2*n)-A363449(n)`
-/

namespace A363448.P15191723483331596089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - A363449 n

end

end A363448.P15191723483331596089

/-! ## A363448.P13393732658216503730

`A126120(2*n)-A363449(n)`
-/

namespace A363448.P13393732658216503730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A363449 n

end

end A363448.P13393732658216503730

/-! ## A363448.P8669130065381252672

`A126324(2*n)-A363449(n)`
-/

namespace A363448.P8669130065381252672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) - A363449 n

end

end A363448.P8669130065381252672

/-! ## A363448.P10033804790284927907

`A208355(2*n)-A363449(n)`
-/

namespace A363448.P10033804790284927907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - A363449 n

end

end A363448.P10033804790284927907

/-! ## A363448.P7881979469251198015

`A329687(3*n)-A363449(n)`
-/

namespace A363448.P7881979469251198015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n) - A363449 n

end

end A363448.P7881979469251198015

/-! ## A363448.P10115373164422786791

`A246604(n)+n-A363449(n)`
-/

namespace A363448.P10115373164422786791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + (n : ℤ) - A363449 n

end

end A363448.P10115373164422786791

/-!
# A363449: Number of noncrossing partitions of the n-set with some pair of singletons {i} and {j} that can be merged into {i,j} and leave the partition a noncrossing-partition.

The programs for A363449, there is no canonical definition to state claims against.
-/

/-! ## A363449.P349432679947904615

`A000108(n)-A363448(n)`
-/

namespace A363449.P349432679947904615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A363448 n

end

end A363449.P349432679947904615

/-! ## A363449.P2554890601779255195

`∑{#}[floor(n/2), ((n-2*#+1)*C(n, n-#)/(n-#+1))²]-A363448(n)`
-/

namespace A363449.P2554890601779255195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((((n : ℤ) - (2 * k : ℤ) + 1) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℤ) : ℚ) / ((n : ℤ) - (k : ℤ) + 1 : ℚ)) ^ 2 - (A363448 n : ℚ)

end

end A363449.P2554890601779255195

/-! ## A363449.P14590479858747056482

`abs(A168491(n))-A363448(n)`
-/

namespace A363449.P14590479858747056482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A363448 n

end

end A363449.P14590479858747056482

/-! ## A363449.P3146743146164417039

`A120588(n+1)-A363448(n)`
-/

namespace A363449.P3146743146164417039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A363448 n

end

end A363449.P3146743146164417039

/-! ## A363449.P12320375925402568763

`A120304(n)+2-A363448(n)`
-/

namespace A363449.P12320375925402568763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2 - A363448 n

end

end A363449.P12320375925402568763

/-! ## A363449.P16064126155670902570

`A028303(2*n)-A363448(n)`
-/

namespace A363449.P16064126155670902570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - A363448 n

end

end A363449.P16064126155670902570

/-! ## A363449.P6076862146468419311

`A329687(3*n)-A363448(n)`
-/

namespace A363449.P6076862146468419311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n) - A363448 n

end

end A363449.P6076862146468419311

/-! ## A363449.P8340506360464621759

`∑{d}[n+1, A034742(#)]-A363448(n)`
-/

namespace A363449.P8340506360464621759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034742 d - A363448 n

end

end A363449.P8340506360464621759

/-!
# A363450: Partial sums of A180405.

The programs for A363450, there is no canonical definition to state claims against.
-/

/-! ## A363450.P10723319860999394199

`∑[A180405(n+1)]`
-/

namespace A363450.P10723319860999394199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363450.P10723319860999394199

/-! ## A363450.P5886011510284258698

`A180405(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A363450.P5886011510284258698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A180405 (n + 1) + a (A023443 n).toNat

end

end A363450.P5886011510284258698

/-!
# A363452: Total number of blocks containing only odd elements in all partitions of [n].

The programs for A363452, there is no canonical definition to state claims against.
-/

/-! ## A363452.P4129564604664145311

`A363434(n)-A363453(n)`
-/

namespace A363452.P4129564604664145311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363434 n - A363453 n

end

end A363452.P4129564604664145311

/-! ## A363452.P13008720072217357030

`A216332(n+1)-A000110(n)`
-/

namespace A363452.P13008720072217357030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (n + 1) - A000110 n

end

end A363452.P13008720072217357030

/-! ## A363452.P1112031829910203029

`A216332(1+n)-A011971(∑[n])`
-/

namespace A363452.P1112031829910203029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (1 + n) - A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363452.P1112031829910203029

/-! ## A363452.P16426446892849783986

`A216332(n+1)-A123081(∑[n])`
-/

namespace A363452.P16426446892849783986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (n + 1) - A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363452.P16426446892849783986

/-! ## A363452.P5363478334257750806

`A216332(n+1)-A259691(∑[n])`
-/

namespace A363452.P5363478334257750806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (n + 1) - A259691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363452.P5363478334257750806

/-! ## A363452.P5313899123853029994

`A216332(n+1)-A346520(∑[n])`
-/

namespace A363452.P5313899123853029994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (n + 1) - A346520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363452.P5313899123853029994

/-! ## A363452.P17240304198385236160

`A216332(n+1)-A283424(C(n, 2))`
-/

namespace A363452.P17240304198385236160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (n + 1) - A283424 (Nat.choose n 2)

end

end A363452.P17240304198385236160

/-! ## A363452.P9623834847894373812

`A011971(A080476(n+1))-A095149(∑[n])`
-/

namespace A363452.P9623834847894373812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A080476 (n + 1)).toNat - A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363452.P9623834847894373812

/-! ## A363452.P17522434111524616946

`A011971(A080476(n+1))-A108087(∑[n])`
-/

namespace A363452.P17522434111524616946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A080476 (n + 1)).toNat - A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363452.P17522434111524616946

/-! ## A363452.P13138658346672732278

`A011971(A080476(n+1))-A346517(∑[n])`
-/

namespace A363452.P13138658346672732278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A080476 (n + 1)).toNat - A346517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363452.P13138658346672732278

/-!
# A363453: Total number of blocks containing only even elements in all partitions of [n].

The programs for A363453, there is no canonical definition to state claims against.
-/

/-! ## A363453.P8513185190623378883

`A363434(n)-A363452(n)`
-/

namespace A363453.P8513185190623378883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363434 n - A363452 n

end

end A363453.P8513185190623378883

/-! ## A363453.P11543807022820476368

`A216078(n+1)-A000110(n)`
-/

namespace A363453.P11543807022820476368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A000110 n

end

end A363453.P11543807022820476368

/-! ## A363453.P15447434578080901885

`A216078(n+1)-abs(A292935(n))`
-/

namespace A363453.P15447434578080901885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - |A292935 n|

end

end A363453.P15447434578080901885

/-! ## A363453.P5107060609773419024

`A216078(n+1)-A123081(∑[n])`
-/

namespace A363453.P5107060609773419024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363453.P5107060609773419024

/-! ## A363453.P17005612157628864409

`A216078(n+1)-A212431(∑[n])`
-/

namespace A363453.P17005612157628864409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A212431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363453.P17005612157628864409

/-! ## A363453.P11192083215790262945

`A216078(n+1)-A327884(∑[n])`
-/

namespace A363453.P11192083215790262945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A327884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363453.P11192083215790262945

/-! ## A363453.P7149530117925025592

`A216078(n+1)-A346426(∑[n])`
-/

namespace A363453.P7149530117925025592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A346426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363453.P7149530117925025592

/-! ## A363453.P4873356369210057025

`A216078(n+1)-Δ[A005001(n)]`
-/

namespace A363453.P4873356369210057025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - (f1 (n + 1) - f1 n)

end

end A363453.P4873356369210057025

/-! ## A363453.P15566959604462459042

`A216078(n+1)-A229223(∑[n]+n)`
-/

namespace A363453.P15566959604462459042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A229223 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A363453.P15566959604462459042

/-! ## A363453.P16093575855471358193

`A216078(n+1)-A108087(A000217(n))`
-/

namespace A363453.P16093575855471358193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) - A108087 (A000217 n).toNat

end

end A363453.P16093575855471358193

/-!
# A363454: Number of partitions of [n] such that the number of blocks containing only odd elements equals the number of blocks containing only even elements and no block contains both odd and even elements.

The programs for A363454, there is no canonical definition to state claims against.
-/

/-! ## A363454.P2468839807649940995

`A110855(A194274(n))`
-/

namespace A363454.P2468839807649940995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (A194274 n).toNat

end

end A363454.P2468839807649940995

/-! ## A363454.P6121906129655884266

`A110855(A007590(n+1))`
-/

namespace A363454.P6121906129655884266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (A007590 (n + 1)).toNat

end

end A363454.P6121906129655884266

/-! ## A363454.P11806737900913454527

`A110855(A156324(n+1))`
-/

namespace A363454.P11806737900913454527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (A156324 (n + 1)).toNat

end

end A363454.P11806737900913454527

/-! ## A363454.P15236859671727240295

`A110855(A000982(n)+n)`
-/

namespace A363454.P15236859671727240295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (A000982 n + (n : ℤ)).toNat

end

end A363454.P15236859671727240295

/-! ## A363454.P2152593393161268728

`A110855(A085268(n)+A000217(n))`
-/

namespace A363454.P2152593393161268728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (A085268 (n + 32) + A000217 n).toNat

end

end A363454.P2152593393161268728

/-!
# A363455: The number of distinct primorial numbers (A002110) larger than 1 in the representation of A025487(n) as a product of primorial numbers.

The programs for A363455, there is no canonical definition to state claims against.
-/

/-! ## A363455.P11854945861023409360

`A071625(A025487(n+1))`
-/

namespace A363455.P11854945861023409360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A025487 (n + 1)).toNat

end

end A363455.P11854945861023409360

/-! ## A363455.P13256678355832465047

`∑{e}[∏{p}[A181820(n+1), #], #]`
-/

namespace A363455.P13256678355832465047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A363455.P13256678355832465047

/-! ## A363455.P1329686882641723166

`A001221(A181820(n+1))`
-/

namespace A363455.P1329686882641723166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181820 (n + 1)).toNat

end

end A363455.P1329686882641723166

/-! ## A363455.P16893635945825172205

`∑{d}[A181820(n+1), A010051(#)]`
-/

namespace A363455.P16893635945825172205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A363455.P16893635945825172205

/-! ## A363455.P12345238792959985986

`∑{p}[A181820(n+1), A008966(#)]`
-/

namespace A363455.P12345238792959985986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008966 p

end

end A363455.P12345238792959985986

/-! ## A363455.P10169088990939644828

`A001222(∏{p}[A181820(n+1), #])`
-/

namespace A363455.P10169088990939644828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A363455.P10169088990939644828

/-! ## A363455.P4387295151703617702

`∑{p}[A181815(n+1), A033273(#)]`
-/

namespace A363455.P4387295151703617702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033273 p

end

end A363455.P4387295151703617702

/-! ## A363455.P5025445176077803417

`A001221(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A363455.P5025445176077803417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A363455.P5025445176077803417

/-! ## A363455.P13831535140033933187

`A001221(A181815(n+1))`
-/

namespace A363455.P13831535140033933187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181815 (n + 1)).toNat

end

end A363455.P13831535140033933187

/-! ## A363455.P6886720211002791241

`A071625(record[A046523(n+1)])`
-/

namespace A363455.P6886720211002791241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363455.P6886720211002791241

/-!
# A363456: Positions of the terms of the Chernoff sequence (A006939) in A025487.

The programs for A363456, there is no canonical definition to state claims against.
-/

/-! ## A363456.P9139952132146290795

`A329898(A330683(a(n-1)))` with `a(0)=1`
-/

namespace A363456.P9139952132146290795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329898 (A330683 (a (n - 1)).toNat).toNat

end

end A363456.P9139952132146290795

/-! ## A363456.P3878317093802433864

`A302540(A150142(n))`
-/

namespace A363456.P3878317093802433864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (A150142 n).toNat

end

end A363456.P3878317093802433864

/-!
# A363457: Positions of products of distinct primorial numbers (A129912) in the sequence of products of primorial numbers (A025487).

The programs for A363457, there is no canonical definition to state claims against.
-/

/-! ## A363457.P5641261141042177110

`record[(n+1)*A341629(A181820(n+1))]`
-/

namespace A363457.P5641261141042177110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A341629 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363457.P5641261141042177110

/-! ## A363457.P2642169910855588156

`A101296(A129912(n+1))`
-/

namespace A363457.P2642169910855588156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A129912 (n + 1)).toNat

end

end A363457.P2642169910855588156

/-! ## A363457.P10644084888663696315

`A085089(A129912(n+1))`
-/

namespace A363457.P10644084888663696315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A129912 (n + 1)).toNat

end

end A363457.P10644084888663696315

/-!
# A363459: Sum of the first n prime powers A246655.

The programs for A363459, the canonical program `A363459.P15388970718301156450` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363459 has offset 1).

The definition of A363459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363459.P15388970718301156450

`A024918(n+2)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A363459

/-- `A024918(n+2)-1` -/
def P15388970718301156450.Spec : Prop :=
  ∀ n, P15388970718301156450.a n = A363459 (n + 1)

theorem P15388970718301156450.correct : P15388970718301156450.Spec := by
  intro n
  simp only [A363459, Nat.add_sub_cancel]

end A363459

/-! ## A363459.P5024936266810739668

`∑[A246655(1+n)]`
-/

namespace A363459.P5024936266810739668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P5024936266810739668

namespace A363459

/-- `∑[A246655(1+n)]` -/
def P5024936266810739668.Spec : Prop :=
  ∀ n, P5024936266810739668.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P17878425588024449677

`∑[ceil(sqrt(A060615(n)))]`
-/

namespace A363459.P17878425588024449677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060615 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P17878425588024449677

namespace A363459

/-- `∑[ceil(sqrt(A060615(n)))]` -/
def P17878425588024449677.Spec : Prop :=
  ∀ n, P17878425588024449677.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P1742478047329779086

`∑[∑[A275120(n+1)]]`
-/

namespace A363459.P1742478047329779086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P1742478047329779086

namespace A363459

/-- `∑[∑[A275120(n+1)]]` -/
def P1742478047329779086.Spec : Prop :=
  ∀ n, P1742478047329779086.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P8565658582526510063

`∑[∑[A057820(n+1)]+1]`
-/

namespace A363459.P8565658582526510063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P8565658582526510063

namespace A363459

/-- `∑[∑[A057820(n+1)]+1]` -/
def P8565658582526510063.Spec : Prop :=
  ∀ n, P8565658582526510063.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P2123984091823305464

`∑[A000961(2+n)]`
-/

namespace A363459.P2123984091823305464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P2123984091823305464

namespace A363459

/-- `∑[A000961(2+n)]` -/
def P2123984091823305464.Spec : Prop :=
  ∀ n, P2123984091823305464.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P11713268150196028276

`∑[sqrt(A056798(n+2))]`
-/

namespace A363459.P11713268150196028276
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P11713268150196028276

namespace A363459

/-- `∑[sqrt(A056798(n+2))]` -/
def P11713268150196028276.Spec : Prop :=
  ∀ n, P11713268150196028276.a n = (A363459 (n + 1) : ℝ)

end A363459

/-! ## A363459.P1406222876051900019

`∑[A181062(n+2)+1]`
-/

namespace A363459.P1406222876051900019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P1406222876051900019

namespace A363459

/-- `∑[A181062(n+2)+1]` -/
def P1406222876051900019.Spec : Prop :=
  ∀ n, P1406222876051900019.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P15717025739489304162

`∑[A138929(n+2)/2]`
-/

namespace A363459.P15717025739489304162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P15717025739489304162

namespace A363459

/-- `∑[A138929(n+2)/2]` -/
def P15717025739489304162.Spec : Prop :=
  ∀ n, P15717025739489304162.a n = (A363459 (n + 1) : ℚ)

end A363459

/-! ## A363459.P3808189727998114839

`A181062(n+2)+A024918(n+1)`
-/

namespace A363459.P3808189727998114839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2) + A024918 (n + 1)

end

end A363459.P3808189727998114839

namespace A363459

/-- `A181062(n+2)+A024918(n+1)` -/
def P3808189727998114839.Spec : Prop :=
  ∀ n, P3808189727998114839.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P11333693645769312429

`∑[record[A008475(n+2)]]`
-/

namespace A363459.P11333693645769312429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P11333693645769312429

namespace A363459

/-- `∑[record[A008475(n+2)]]` -/
def P11333693645769312429.Spec : Prop :=
  ∀ n, P11333693645769312429.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P217642704496551537

`∑[record[A034699(n+2)]]`
-/

namespace A363459.P217642704496551537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P217642704496551537

namespace A363459

/-- `∑[record[A034699(n+2)]]` -/
def P217642704496551537.Spec : Prop :=
  ∀ n, P217642704496551537.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P17734211629596958910

`∑[record[A330691(n+2)]]`
-/

namespace A363459.P17734211629596958910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P17734211629596958910

namespace A363459

/-- `∑[record[A330691(n+2)]]` -/
def P17734211629596958910.Spec : Prop :=
  ∀ n, P17734211629596958910.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P14434042051287339404

`∑[record[A324388(n+2)]]`
-/

namespace A363459.P14434042051287339404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P14434042051287339404

namespace A363459

/-- `∑[record[A324388(n+2)]]` -/
def P14434042051287339404.Spec : Prop :=
  ∀ n, P14434042051287339404.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P9203874722181987774

`∑[record[A354933(n+2)]]`
-/

namespace A363459.P9203874722181987774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P9203874722181987774

namespace A363459

/-- `∑[record[A354933(n+2)]]` -/
def P9203874722181987774.Spec : Prop :=
  ∀ n, P9203874722181987774.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P17009829223842992972

`∑[record[A222416(n+2)]]`
-/

namespace A363459.P17009829223842992972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P17009829223842992972

namespace A363459

/-- `∑[record[A222416(n+2)]]` -/
def P17009829223842992972.Spec : Prop :=
  ∀ n, P17009829223842992972.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P6199097975347233847

`∑[lt[∏{p}[n, n-#], n]]`
-/

namespace A363459.P6199097975347233847
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - (p : ℤ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P6199097975347233847

namespace A363459

/-- `∑[lt[∏{p}[n, n-#], n]]` -/
def P6199097975347233847.Spec : Prop :=
  ∀ n, (P6199097975347233847.a n : ℤ) = A363459 (n + 1)

end A363459

/-! ## A363459.P290681804055079752

`∑[lt[∏{e}[n, n-#], n]]`
-/

namespace A363459.P290681804055079752
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - (Nat.factorization (f3 n) p : ℤ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P290681804055079752

namespace A363459

/-- `∑[lt[∏{e}[n, n-#], n]]` -/
def P290681804055079752.Spec : Prop :=
  ∀ n, (P290681804055079752.a n : ℤ) = A363459 (n + 1)

end A363459

/-! ## A363459.P14455758972248339977

`∑[record[A028233(n+2)]]`
-/

namespace A363459.P14455758972248339977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P14455758972248339977

namespace A363459

/-- `∑[record[A028233(n+2)]]` -/
def P14455758972248339977.Spec : Prop :=
  ∀ n, P14455758972248339977.a n = A363459 (n + 1)

end A363459

/-! ## A363459.P2070245832099959701

`∑[record[A034684(n+2)]]`
-/

namespace A363459.P2070245832099959701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363459.P2070245832099959701

namespace A363459

/-- `∑[record[A034684(n+2)]]` -/
def P2070245832099959701.Spec : Prop :=
  ∀ n, P2070245832099959701.a n = A363459 (n + 1)

end A363459

/-!
# A363462: Numbers k for which the arithmetic derivative k' (A003415) is a Fibonacci number (A000045).

The programs for A363462, there is no canonical definition to state claims against.
-/

/-! ## A363462.P2127536273719699008

`∪[A000040(n+1), A362141(n+1)]`
-/

namespace A363462.P2127536273719699008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P2127536273719699008

/-! ## A363462.P585382403184639365

`∪[A008578(n+1), A362141(n+1)]`
-/

namespace A363462.P585382403184639365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P585382403184639365

/-! ## A363462.P10274185253949855775

`∪[A015919(n+1), A362141(n+1)]`
-/

namespace A363462.P10274185253949855775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P10274185253949855775

/-! ## A363462.P1572943069948938828

`∪[A095320(n+1), A362141(n+1)]`
-/

namespace A363462.P1572943069948938828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P1572943069948938828

/-! ## A363462.P9305395814818320984

`∪[A116974(n+1), A362141(n+1)]`
-/

namespace A363462.P9305395814818320984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P9305395814818320984

/-! ## A363462.P10542780077654956566

`∪[A216883(n+1), A362141(n+1)]`
-/

namespace A363462.P10542780077654956566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P10542780077654956566

/-! ## A363462.P4733126108334911461

`∪[A216884(n+1), A362141(n+1)]`
-/

namespace A363462.P4733126108334911461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P4733126108334911461

/-! ## A363462.P18112961178373020579

`∪[A216885(n+1), A362141(n+1)]`
-/

namespace A363462.P18112961178373020579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P18112961178373020579

/-! ## A363462.P770544695321940611

`∪[A216886(n+1), A362141(n+1)]`
-/

namespace A363462.P770544695321940611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P770544695321940611

/-! ## A363462.P5703194130203831008

`∪[A216887(n+1), A362141(n+1)]`
-/

namespace A363462.P5703194130203831008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363462.P5703194130203831008

/-!
# A363465: G.f. A(x) satisfies: A(x) = x + x^2 * exp( Sum_{k>=1} A(x^k)^3 / (k*x^(2*k)) ).

The programs for A363465, there is no canonical definition to state claims against.
-/

/-! ## A363465.P18354420287706131306

`A180854(A184785(n))`
-/

namespace A363465.P18354420287706131306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (A184785 n).toNat

end

end A363465.P18354420287706131306

/-! ## A363465.P1724768705477469016

`A180854(A275873(n))`
-/

namespace A363465.P1724768705477469016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (A275873 n).toNat

end

end A363465.P1724768705477469016

/-! ## A363465.P4204287627737348194

`A210983(A298539(n+1))`
-/

namespace A363465.P4204287627737348194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210983 (A298539 (n + 1)).toNat

end

end A363465.P4204287627737348194

/-!
# A363466: G.f. A(x) satisfies: A(x) = x + x^2 * exp( Sum_{k>=1} A(x^k)^4 / (k*x^(3*k)) ).

The programs for A363466, there is no canonical definition to state claims against.
-/

/-! ## A363466.P4822815292306420285

`A152098(n)-A227188(A360660(n))`
-/

namespace A363466.P4822815292306420285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152098 n - A227188 (A360660 n).toNat

end

end A363466.P4822815292306420285

/-! ## A363466.P2659356650684797984

`A254524(A035310(n+1)-A000695(n))`
-/

namespace A363466.P2659356650684797984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (A035310 (n + 1) - A000695 n).toNat

end

end A363466.P2659356650684797984

/-! ## A363466.P16728745387522054175

`A156562(A106228(n)-A280269(n+1))`
-/

namespace A363466.P16728745387522054175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A106228 n - A280269 (n + 1)).toNat

end

end A363466.P16728745387522054175

/-!
# A363468: G.f. A(x) satisfies: A(x) = x + x^2 * exp( Sum_{k>=1} (-1)^(k+1) * A(x^k)^4 / (k*x^(3*k)) ).

The programs for A363468, there is no canonical definition to state claims against.
-/

/-! ## A363468.P15361567761167729175

`A070000(A151139(n)+n)`
-/

namespace A363468.P15361567761167729175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A151139 n + (n : ℤ)).toNat

end

end A363468.P15361567761167729175

/-! ## A363468.P8609760770125141057

`A159477((n-2)*a(n-1)+1)+A000045(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A363468.P8609760770125141057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A159477 (((n : ℤ) - 2) * a (n - 1) + 1).toNat + A000045 n

end

end A363468.P8609760770125141057

/-! ## A363468.P14521415930944452626

`A362381(n)+A000523(A362392(n))`
-/

namespace A363468.P14521415930944452626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362381 n + A000523 (A362392 n).toNat

end

end A363468.P14521415930944452626

/-!
# A363469: Multiplicative order of 2 modulo 2*prime(n)+1.

The programs for A363469, there is no canonical definition to state claims against.
-/

/-! ## A363469.P1061410873747286224

`A002326(Δ[A007504(n)])`
-/

namespace A363469.P1061410873747286224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (f1 (n + 1) - f1 n).toNat

end

end A363469.P1061410873747286224

/-! ## A363469.P7318837293653717996

`A002326(record[A051698(n)])`
-/

namespace A363469.P7318837293653717996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363469.P7318837293653717996

/-! ## A363469.P1375458256208294793

`A002326(A000040(1+n))`
-/

namespace A363469.P1375458256208294793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A000040 (1 + n)).toNat

end

end A363469.P1375458256208294793

/-! ## A363469.P1299996498033485950

`A002326(A008578(n+2))`
-/

namespace A363469.P1299996498033485950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A008578 (n + 2)).toNat

end

end A363469.P1299996498033485950

/-! ## A363469.P5965047409865261501

`A002326(A182986(n+2))`
-/

namespace A363469.P5965047409865261501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A182986 (n + 2)).toNat

end

end A363469.P5965047409865261501

/-! ## A363469.P17329514088342740396

`A002326(A007504(n+1)-A007504(n))`
-/

namespace A363469.P17329514088342740396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A007504 (n + 1) - A007504 n).toNat

end

end A363469.P17329514088342740396

/-! ## A363469.P9493554495865069529

`A002326(A104192(n+1)+A000010(n+1))`
-/

namespace A363469.P9493554495865069529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A104192 (n + 1) + A000010 (n + 1)).toNat

end

end A363469.P9493554495865069529

/-! ## A363469.P8811917769292981029

`A007733(A072055(n+1))`
-/

namespace A363469.P8811917769292981029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A072055 (n + 1)).toNat

end

end A363469.P8811917769292981029

/-! ## A363469.P18003905154166879924

`A024222(A089241(n+1))`
-/

namespace A363469.P18003905154166879924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A089241 (n + 1)).toNat

end

end A363469.P18003905154166879924

/-! ## A363469.P13234871603462889737

`A024222(A166496(n+1))`
-/

namespace A363469.P13234871603462889737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A166496 (n + 1)).toNat

end

end A363469.P13234871603462889737

/-!
# A363470: G.f. satisfies A(x) = exp( 2 * Sum_{k>=1} A(-x^k) * x^k/k ).

The programs for A363470, there is no canonical definition to state claims against.
-/

/-! ## A363470.P66109526759275142

`∑{#}[n, A200438(#)*A200438(n-#)]`
-/

namespace A363470.P66109526759275142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A200438 k * A200438 (n - k)

end

end A363470.P66109526759275142

/-!
# A363472: Total number of blocks in all partitions of [n] where each block has at least one odd element and at least one even element.

The programs for A363472, there is no canonical definition to state claims against.
-/

/-! ## A363472.P9659912347667253294

`A349161(A000984(n+1))%A000085(n)`
-/

namespace A363472.P9659912347667253294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349161 (A000984 (n + 1)).toNat) (A000085 n)

end

end A363472.P9659912347667253294

/-!
# A363476: a(n) = Fibonacci(n)^2 * Fibonacci(n+1)^3.

The programs for A363476, the canonical program `A363476.P10705104161184273659` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363476 has offset 0).

The definition of A363476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²*A000045(n+1)^3` (program `A363476.P10705104161184273659`, by `A363476.P10705104161184273659.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A363476.P17998887254575663078

`ogf((x+4x^3+x^4)/(1-8x-40x^2+60x^3+40x^4-8x^5-x^6))`
-/

namespace A363476.P17998887254575663078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 4, 1] [1, -8, -40, 60, 40, -8, -1] n

end

end A363476.P17998887254575663078

namespace A363476

/-- `ogf((x+4x^3+x^4)/(1-8x-40x^2+60x^3+40x^4-8x^5-x^6))` -/
def P17998887254575663078.Spec : Prop :=
  ∀ n, P17998887254575663078.a n = A363476 n

end A363476

/-! ## A363476.P10705104161184273659

`A000045(n)²*A000045(n+1)^3`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A363476

/-- `A000045(n)²*A000045(n+1)^3` -/
def P10705104161184273659.Spec : Prop :=
  ∀ n, P10705104161184273659.a n = A363476 n

theorem P10705104161184273659.correct : P10705104161184273659.Spec := by
  intro n
  simp only [A363476]

end A363476

/-! ## A363476.P4623981629518136918

`Δ[A001654(n)]*A066258(n)`
-/

namespace A363476.P4623981629518136918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A066258 n

end

end A363476.P4623981629518136918

namespace A363476

/-- `Δ[A001654(n)]*A066258(n)` -/
def P4623981629518136918.Spec : Prop :=
  ∀ n, P4623981629518136918.a n = A363476 n

end A363476

/-! ## A363476.P8194921996853100571

`A007598(n)*A056570(n+1)`
-/

namespace A363476.P8194921996853100571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A056570 (n + 1)

end

end A363476.P8194921996853100571

namespace A363476

/-- `A007598(n)*A056570(n+1)` -/
def P8194921996853100571.Spec : Prop :=
  ∀ n, P8194921996853100571.a n = A363476 n

end A363476

/-! ## A363476.P289888381244497717

`A007598(n+1)*A066258(n)`
-/

namespace A363476.P289888381244497717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) * A066258 n

end

end A363476.P289888381244497717

namespace A363476

/-- `A007598(n+1)*A066258(n)` -/
def P289888381244497717.Spec : Prop :=
  ∀ n, P289888381244497717.a n = A363476 n

theorem P289888381244497717.correct : P289888381244497717.Spec := by
  intro n
  simp only [A363476, Nat.add_sub_cancel, A363476.P289888381244497717.a, A363476.P10705104161184273659.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, A066258, A066258.P1402866479795286772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363476

/-! ## A363476.P16940343848542437654

`A001654(n)²*∑[A212804(n)]`
-/

namespace A363476.P16940343848542437654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363476.P16940343848542437654

namespace A363476

/-- `A001654(n)²*∑[A212804(n)]` -/
def P16940343848542437654.Spec : Prop :=
  ∀ n, P16940343848542437654.a n = A363476 n

end A363476

/-! ## A363476.P9188399809251000310

`∑[A212804(n)]²*A066258(n)`
-/

namespace A363476.P9188399809251000310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A066258 n

end

end A363476.P9188399809251000310

namespace A363476

/-- `∑[A212804(n)]²*A066258(n)` -/
def P9188399809251000310.Spec : Prop :=
  ∀ n, P9188399809251000310.a n = A363476 n

end A363476

/-! ## A363476.P14396122592484342852

`A000045(n)²*∑[A346513(n)]`
-/

namespace A363476.P14396122592484342852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363476.P14396122592484342852

namespace A363476

/-- `A000045(n)²*∑[A346513(n)]` -/
def P14396122592484342852.Spec : Prop :=
  ∀ n, P14396122592484342852.a n = A363476 n

end A363476

/-! ## A363476.P5381930214584266314

`A074677(2*n)²*A000045(n+1)`
-/

namespace A363476.P5381930214584266314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n) ^ 2 * A000045 (n + 1)

end

end A363476.P5381930214584266314

namespace A363476

/-- `A074677(2*n)²*A000045(n+1)` -/
def P5381930214584266314.Spec : Prop :=
  ∀ n, P5381930214584266314.a n = A363476 n

end A363476

/-! ## A363476.P18031221893626891800

`(A005968(n+1)-A005968(n))*A007598(n)`
-/

namespace A363476.P18031221893626891800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005968 (n + 1) - A005968 n) * A007598 n

end

end A363476.P18031221893626891800

namespace A363476

/-- `(A005968(n+1)-A005968(n))*A007598(n)` -/
def P18031221893626891800.Spec : Prop :=
  ∀ n, P18031221893626891800.a n = A363476 n

end A363476

/-!
# A363477: Numbers that are integer averages of first k odd primes for some k.

The programs for A363477, there is no canonical definition to state claims against.
-/

/-! ## A363477.P5602089945768498838

`A071148(A097961(n+1))/A097961(n+1)`
-/

namespace A363477.P5602089945768498838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071148 (A097961 (n + 1)).toNat : ℚ) / (A097961 (n + 1) : ℚ)

end

end A363477.P5602089945768498838

/-!
# A363478: E.g.f. satisfies A(x) = exp(x * (1 + x) * A(x)^3).

The programs for A363478, the canonical program `A363478.P16804701829442594262` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363478 has offset 0).

The definition of A363478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363478.P16804701829442594262

`n!*∑{#}[n, (3*#+1)^(#-1)*C(#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363478

/-- `n!*∑{#}[n, (3*#+1)^(#-1)*C(#, n-#)/#!]` -/
def P16804701829442594262.Spec : Prop :=
  ∀ n, P16804701829442594262.a n = (A363478 n : ℚ)

end A363478

/-!
# A363479: E.g.f. satisfies A(x) = exp(x * A(x)^3 * (1 + x * A(x)^3)).

The programs for A363479, the canonical program `A363479.P1005506303181139146` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363479 has offset 0).

The definition of A363479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363479.P1005506303181139146

`n!*∑{#}[n, (3*n+1)^(#-1)*C(#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363479

/-- `n!*∑{#}[n, (3*n+1)^(#-1)*C(#, n-#)/#!]` -/
def P1005506303181139146.Spec : Prop :=
  ∀ n, P1005506303181139146.a n = (A363479 n : ℚ)

end A363479

/-!
# A363480: G.f. satisfies A(x) = exp( Sum_{k>=1} A(2*x^k)^2 * x^k/k ).

The programs for A363480, there is no canonical definition to state claims against.
-/

/-! ## A363480.P6355052004212402785

`A001775(A007098(n))`
-/

namespace A363480.P6355052004212402785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001775 (A007098 n).toNat

end

end A363480.P6355052004212402785

/-!
# A363481: G.f. satisfies A(x) = exp( 2 * Sum_{k>=1} A(2*x^k) * x^k/k ).

The programs for A363481, there is no canonical definition to state claims against.
-/

/-! ## A363481.P5191876937834252727

`A070046(A028362(n+1))+n`
-/

namespace A363481.P5191876937834252727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (A028362 (n + 1)).toNat + (n : ℤ)

end

end A363481.P5191876937834252727

/-!
# A363483: a(n) is the least k that has exactly n divisors whose arithmetic derivative is odd.

The programs for A363483, there is no canonical definition to state claims against.
-/

/-! ## A363483.P8304627854675257601

`A169697(A385277(n))*A329317(n+1)`
-/

namespace A363483.P8304627854675257601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169697 (A385277 n).toNat * A329317 (n + 1)

end

end A363483.P8304627854675257601

/-!
# A363485: Number of integer partitions of n covering an initial interval of positive integers with more than one mode.

The programs for A363485, there is no canonical definition to state claims against.
-/

/-! ## A363485.P3074007578817283384

`A196564(A001045(n)-A002487(n))`
-/

namespace A363485.P3074007578817283384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A001045 n - A002487 n).toNat

end

end A363485.P3074007578817283384

/-! ## A363485.P18211572988086253687

`A139354(A049893(n+1)+A000566(n))`
-/

namespace A363485.P18211572988086253687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A049893 (n + 1) + A000566 n).toNat

end

end A363485.P18211572988086253687

/-!
# A363486: Low mode in the multiset of prime indices of n.

The programs for A363486, there is no canonical definition to state claims against.
-/

/-! ## A363486.P13388043693491324492

`A364191(∏{p}[n+1, lcm(n+1, #²)/(n+1)]*∏{p}[n+1, #])`
-/

namespace A363486.P13388043693491324492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (SequenceMachineLib.roundAway ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)) * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A363486.P13388043693491324492

/-! ## A363486.P642529734721245366

`A055396(A261969(n+1))`
-/

namespace A363486.P642529734721245366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A261969 (n + 1)).toNat

end

end A363486.P642529734721245366

/-! ## A363486.P2011710803019970905

`A055396(A327526(n+1))`
-/

namespace A363486.P2011710803019970905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A327526 (n + 1)).toNat

end

end A363486.P2011710803019970905

/-! ## A363486.P2282911760926005781

`A055396(A375931(n+1))`
-/

namespace A363486.P2282911760926005781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A375931 (n + 1)).toNat

end

end A363486.P2282911760926005781

/-! ## A363486.P14370289504855361278

`A364191(A069799(n+1))`
-/

namespace A363486.P14370289504855361278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A069799 (n + 1)).toNat

end

end A363486.P14370289504855361278

/-! ## A363486.P6931933899145058181

`A364191(A105119(n+1))`
-/

namespace A363486.P6931933899145058181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A105119 (n + 1)).toNat

end

end A363486.P6931933899145058181

/-! ## A363486.P15549526482313651903

`A277697(A304768(n+1))`
-/

namespace A363486.P15549526482313651903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A304768 (n + 1)).toNat

end

end A363486.P15549526482313651903

/-! ## A363486.P6528355910483026011

`A364191(A225891(n+1))`
-/

namespace A363486.P6528355910483026011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A225891 (n + 1)).toNat

end

end A363486.P6528355910483026011

/-! ## A363486.P1417798504541958473

`A364191(A293448(n+1))`
-/

namespace A363486.P1417798504541958473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A293448 (n + 1)).toNat

end

end A363486.P1417798504541958473

/-! ## A363486.P18034478542010041580

`A364191(A295417(n+1))`
-/

namespace A363486.P18034478542010041580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A295417 (n + 1)).toNat

end

end A363486.P18034478542010041580

/-!
# A363487: High mode in the multiset of prime indices of n.

The programs for A363487, there is no canonical definition to state claims against.
-/

/-! ## A363487.P17721590467385817843

`A061395(A261969(n+1))`
-/

namespace A363487.P17721590467385817843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A261969 (n + 1)).toNat

end

end A363487.P17721590467385817843

/-! ## A363487.P12776650704104834095

`A061395(A375931(1+n))`
-/

namespace A363487.P12776650704104834095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A375931 (1 + n)).toNat

end

end A363487.P12776650704104834095

/-! ## A363487.P14635047296572082234

`A363486(A217434(n+1))`
-/

namespace A363487.P14635047296572082234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (A217434 (n + 1)).toNat

end

end A363487.P14635047296572082234

/-! ## A363487.P10013687273098640547

`A363486(A327498(n+1))`
-/

namespace A363487.P10013687273098640547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (A327498 (n + 1)).toNat

end

end A363487.P10013687273098640547

/-! ## A363487.P8137133324626903159

`gcd(A108230(A003557(n+1)), A108230(n+1))`
-/

namespace A363487.P8137133324626903159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108230 (A003557 (n + 1)).toNat) (A108230 (n + 1))

end

end A363487.P8137133324626903159

/-! ## A363487.P15930366277541967670

`A263297(A261969(n+1)^A010872(3*n+1))`
-/

namespace A363487.P15930366277541967670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (SequenceMachineLib.roundAway ((A261969 (n + 1) : ℚ) ^ (A010872 (3 * n + 1) : ℤ))).toNat

end

end A363487.P15930366277541967670

/-! ## A363487.P4017687231024520572

`A363942(A385216(n+1))`
-/

namespace A363487.P4017687231024520572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363942 (A385216 (n + 1)).toNat

end

end A363487.P4017687231024520572

/-!
# A363488: Even numbers whose prime factorization has at least as many 2's as non-2's.

The programs for A363488, there is no canonical definition to state claims against.
-/

/-! ## A363488.P11928745887934008651

`record[2*A079880(n+1)]`
-/

namespace A363488.P11928745887934008651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363488.P11928745887934008651

/-! ## A363488.P12374073107277936611

`eq[2, A079879(n+1)]+1`
-/

namespace A363488.P12374073107277936611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363488.P12374073107277936611

/-! ## A363488.P17162311473681940574

`2*record[A079880(n-log2(1/2))]`
-/

namespace A363488.P17162311473681940574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363488.P17162311473681940574

/-! ## A363488.P5967141152717627849

`eq[2, A079879(A028310(n))]`
-/

namespace A363488.P5967141152717627849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363488.P5967141152717627849

/-! ## A363488.P15670122719755176329

`eq[2, A079879(A298028(n))]`
-/

namespace A363488.P15670122719755176329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A298028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363488.P15670122719755176329

/-! ## A363488.P1970140945886522560

`A317108(record[A079880(n+1)])`
-/

namespace A363488.P1970140945886522560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363488.P1970140945886522560

/-! ## A363488.P12447584069725847139

`A020725(eq[2, A079879(n+1)])`
-/

namespace A363488.P12447584069725847139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363488.P12447584069725847139

/-! ## A363488.P1272798478128225140

`eq[2, A006530(A347043(n+1))]+1`
-/

namespace A363488.P1272798478128225140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A347043 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363488.P1272798478128225140

/-! ## A363488.P708641186549831455

`∪[A095305(n+1), A360013(n+1)]`
-/

namespace A363488.P708641186549831455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363488.P708641186549831455

/-! ## A363488.P15155534168339337446

`∪[A095305(n+1), A364056(n+1)]`
-/

namespace A363488.P15155534168339337446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363488.P15155534168339337446

/-!
# A363489: Rounded mean of the multiset of prime indices of n.

The programs for A363489, there is no canonical definition to state claims against.
-/

/-! ## A363489.P11974864342279009460

`lcm(A055396(n+1), A115721(A112668(n+1)))`
-/

namespace A363489.P11974864342279009460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055396 (n + 1)) (A115721 (A112668 (n + 1)).toNat)

end

end A363489.P11974864342279009460

/-! ## A363489.P9628897588802363156

`A333768(A124766(n)*A233249(n+1))`
-/

namespace A363489.P9628897588802363156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A124766 n * A233249 (n + 1)).toNat

end

end A363489.P9628897588802363156

/-! ## A363489.P7057181340212243827

`A363943(n+1)+A286561(A271581(3*n+1))`
-/

namespace A363489.P7057181340212243827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (n + 1) + A286561 (A271581 (3 * n + 1)).toNat

end

end A363489.P7057181340212243827

/-! ## A363489.P3778787960456498991

`A363941((n+1)*A325765(n))`
-/

namespace A363489.P3778787960456498991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 ((n + 1 : ℤ) * A325765 n).toNat

end

end A363489.P3778787960456498991

/-! ## A363489.P13151900334312814175

`A363941((n+1)*A319149(n+1))`
-/

namespace A363489.P13151900334312814175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 ((n + 1 : ℤ) * A319149 (n + 1)).toNat

end

end A363489.P13151900334312814175

/-!
# A363495: Number of partitions of [2n+1] having exactly n parity changes within their blocks.

The programs for A363495, there is no canonical definition to state claims against.
-/

/-! ## A363495.P1064927840717682522

`A363493((n+1)²+n²)`
-/

namespace A363495.P1064927840717682522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363493 ((n + 1) ^ 2 + n ^ 2)

end

end A363495.P1064927840717682522

/-! ## A363495.P12284992490744056822

`A363493(A001844(n))+A063524(n+2)`
-/

namespace A363495.P12284992490744056822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363493 (A001844 n).toNat + A063524 (n + 2)

end

end A363495.P12284992490744056822

/-! ## A363495.P15593962119658908925

`A363493(A001844(n))+A000007(2*(n+1))`
-/

namespace A363495.P15593962119658908925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363493 (A001844 n).toNat + A000007 (2 * (n + 1))

end

end A363495.P15593962119658908925

/-! ## A363495.P11520868609210941217

`A363493(A001844(n))%A209289(n+3)`
-/

namespace A363495.P11520868609210941217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363493 (A001844 n).toNat) (A209289 (n + 3))

end

end A363495.P11520868609210941217

/-! ## A363495.P13285376371754874143

`A363493(A001844(n))%A139162(n+3)`
-/

namespace A363495.P13285376371754874143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363493 (A001844 n).toNat) (A139162 (n + 3))

end

end A363495.P13285376371754874143

/-!
# A363496: Total number of parity changes within the blocks of all partitions of [n].

The programs for A363496, there is no canonical definition to state claims against.
-/

/-! ## A363496.P3768071467601734562

`A066339(A287860(n)-A236320(n+1))`
-/

namespace A363496.P3768071467601734562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A287860 n - A236320 (n + 1)).toNat

end

end A363496.P3768071467601734562

/-! ## A363496.P8022811341671138508

`A266193(A327871(n)-A202453(n+1))`
-/

namespace A363496.P8022811341671138508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A327871 n - A202453 (n + 1)).toNat

end

end A363496.P8022811341671138508

/-! ## A363496.P2390555785288491926

`A266193(A327871(n)-A266193(n+2))`
-/

namespace A363496.P2390555785288491926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A327871 n - A266193 (n + 2)).toNat

end

end A363496.P2390555785288491926

/-!
# A363497: a(n) = Sum_{k=0..n} floor(sqrt(k))^3.

The programs for A363497, the canonical program `A363497.P9176856105177611331` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363497 has offset 0).

The definition of A363497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363497.P9176856105177611331

`∑[floor(sqrt(n))^3]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363497

/-- `∑[floor(sqrt(n))^3]` -/
def P9176856105177611331.Spec : Prop :=
  ∀ n, (P9176856105177611331.a n : ℤ) = A363497 n

theorem P9176856105177611331.correct : P9176856105177611331.Spec := by
  intro n
  simp only [A363497]

end A363497

/-! ## A363497.P6854618863679082205

`A000578(floor(sqrt(n)))+a(n-1)` with `a(0)=0`
-/

namespace A363497.P6854618863679082205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000578 (Nat.sqrt n) + a (n - 1)

end

end A363497.P6854618863679082205

namespace A363497

/-- `A000578(floor(sqrt(n)))+a(n-1)` -/
def P6854618863679082205.Spec : Prop :=
  ∀ n, P6854618863679082205.a n = A363497 n

end A363497

/-! ## A363497.P8678519906591185972

`∑[A000578(A000196(n))]%A008421(n)`
-/

namespace A363497.P8678519906591185972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008421 n)

end

end A363497.P8678519906591185972

namespace A363497

/-- `∑[A000578(A000196(n))]%A008421(n)` -/
def P8678519906591185972.Spec : Prop :=
  ∀ n, P8678519906591185972.a n = A363497 n

end A363497

/-! ## A363497.P441561613836420188

`∑[A000578(A000196(n))-A000007(n)]+1`
-/

namespace A363497.P441561613836420188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000196 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A363497.P441561613836420188

namespace A363497

/-- `∑[A000578(A000196(n))-A000007(n)]+1` -/
def P441561613836420188.Spec : Prop :=
  ∀ n, P441561613836420188.a n = A363497 n

end A363497

/-! ## A363497.P16171002186178994853

`∑[A000196(n)^3]%A221172(n)`
-/

namespace A363497.P16171002186178994853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A221172 n)

end

end A363497.P16171002186178994853

namespace A363497

/-- `∑[A000196(n)^3]%A221172(n)` -/
def P16171002186178994853.Spec : Prop :=
  ∀ n, P16171002186178994853.a n = A363497 n

end A363497

/-!
# A363498: a(n) = Sum_{k=0..n} floor(sqrt(k))^4.

The programs for A363498, the canonical program `A363498.P3306703456032946991` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363498 has offset 0).

The definition of A363498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363498.P3306703456032946991

`∑[floor(sqrt(n))^4]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363498

/-- `∑[floor(sqrt(n))^4]` -/
def P3306703456032946991.Spec : Prop :=
  ∀ n, (P3306703456032946991.a n : ℤ) = A363498 n

theorem P3306703456032946991.correct : P3306703456032946991.Spec := by
  intro n
  simp only [A363498]

end A363498

/-! ## A363498.P6344006662282472239

`∑[A000196(n)²²]%A213848(n+1)`
-/

namespace A363498.P6344006662282472239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A213848 (n + 1))

end

end A363498.P6344006662282472239

namespace A363498

/-- `∑[A000196(n)²²]%A213848(n+1)` -/
def P6344006662282472239.Spec : Prop :=
  ∀ n, P6344006662282472239.a n = A363498 n

end A363498

/-! ## A363498.P12708818503547264905

`A349433(A000040(n+1))+∑[A000196(n)²²]`
-/

namespace A363498.P12708818503547264905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (A000040 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363498.P12708818503547264905

namespace A363498

/-- `A349433(A000040(n+1))+∑[A000196(n)²²]` -/
def P12708818503547264905.Spec : Prop :=
  ∀ n, P12708818503547264905.a n = A363498 n

end A363498

/-! ## A363498.P10163869329363497762

`∑[A000196(n)²²]%A022577(n)`
-/

namespace A363498.P10163869329363497762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A022577 n)

end

end A363498.P10163869329363497762

namespace A363498

/-- `∑[A000196(n)²²]%A022577(n)` -/
def P10163869329363497762.Spec : Prop :=
  ∀ n, P10163869329363497762.a n = A363498 n

end A363498

/-! ## A363498.P5582838648652856101

`A349433(A309587(n+1))+∑[A000196(n)²²]`
-/

namespace A363498.P5582838648652856101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000196 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (A309587 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363498.P5582838648652856101

namespace A363498

/-- `A349433(A309587(n+1))+∑[A000196(n)²²]` -/
def P5582838648652856101.Spec : Prop :=
  ∀ n, P5582838648652856101.a n = A363498 n

end A363498

/-!
# A363499: a(n) = Sum_{k=0..n} floor(sqrt(k))^5.

The programs for A363499, the canonical program `A363499.P11666707829786267100` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363499 has offset 0).

The definition of A363499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363499.P11666707829786267100

`∑[floor(sqrt(n))^5]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363499

/-- `∑[floor(sqrt(n))^5]` -/
def P11666707829786267100.Spec : Prop :=
  ∀ n, (P11666707829786267100.a n : ℤ) = A363499 n

theorem P11666707829786267100.correct : P11666707829786267100.Spec := by
  intro n
  simp only [A363499]

end A363499

