import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A115400: Number of n-colorings of the octahedral graph.

The programs for A115400, the canonical program `A115400.P9151205723702640959` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115400 has offset 0).

The definition of A115400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115400.P9151205723702640959

`n*(n-1)*(n-2)*(n^3-9*n²+29*n-32)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115400

/-- `n*(n-1)*(n-2)*(n^3-9*n²+29*n-32)` -/
def P9151205723702640959.Spec : Prop :=
  ∀ n, P9151205723702640959.a n = A115400 n

theorem P9151205723702640959.correct : P9151205723702640959.Spec := by
  intro n
  simp only [A115400]

end A115400

/-! ## A115400.P966341231693419066

`A342088(A152950(n+1))%A232694(n)`
-/

namespace A115400.P966341231693419066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342088 (A152950 (n + 1)).toNat) (A232694 n)

end

end A115400.P966341231693419066

namespace A115400

/-- `A342088(A152950(n+1))%A232694(n)` -/
def P966341231693419066.Spec : Prop :=
  ∀ n, P966341231693419066.a n = A115400 n

end A115400

/-!
# A115401: Record differences between prime(n+3) and prime(n). Differences in A031165.

The programs for A115401, there is no canonical definition to state claims against.
-/

/-! ## A115401.P8077815578589915351

`record[A031165(n+1)]`
-/

namespace A115401.P8077815578589915351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115401.P8077815578589915351

/-! ## A115401.P1390076458870550398

`record[A054541(n+1)+A031131(n+1)]`
-/

namespace A115401.P1390076458870550398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115401.P1390076458870550398

/-! ## A115401.P3182052424445253809

`record[A031131(n+2)+A001223(n+1)]`
-/

namespace A115401.P3182052424445253809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 2) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115401.P3182052424445253809

/-! ## A115401.P9700954520801553529

`record[A034961(n+2)-A034961(n+1)]`
-/

namespace A115401.P9700954520801553529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 2) - A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115401.P9700954520801553529

/-! ## A115401.P11699114638802214346

`record[A000040(n+4)-A000040(n+1)]`
-/

namespace A115401.P11699114638802214346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115401.P11699114638802214346

/-!
# A115402: Difference between 3-almostprime(n) and 3-almostprime(n+3).

The programs for A115402, the canonical program `A115402.P3622041107575865208` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115402 has offset 1).

The definition of A115402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115402.P3622041107575865208

`A014612(n+4)-A014612(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115402

/-- `A014612(n+4)-A014612(n+1)` -/
def P3622041107575865208.Spec : Prop :=
  ∀ n, P3622041107575865208.a n = A115402 (n + 1)

theorem P3622041107575865208.correct : P3622041107575865208.Spec := by
  intro n
  simp only [A115402, Nat.add_sub_cancel]

end A115402

/-! ## A115402.P4760796024240034170

`A114403(n+1)+A110934(n+2)`
-/

namespace A115402.P4760796024240034170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (n + 1) + A110934 (n + 2)

end

end A115402.P4760796024240034170

namespace A115402

/-- `A114403(n+1)+A110934(n+2)` -/
def P4760796024240034170.Spec : Prop :=
  ∀ n, P4760796024240034170.a n = A115402 (n + 1)

theorem P4760796024240034170.correct : P4760796024240034170.Spec := by
  intro n
  simp only [A115402, Nat.add_sub_cancel, A115402.P4760796024240034170.a, A115402.P3622041107575865208.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A110934, A110934.P9568083779091695448.a, A114403, A114403.P7554247449644843870.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115402

/-! ## A115402.P15336609892687489569

`A114403(n+1)+A114403(n+2)+A114403(n+3)`
-/

namespace A115402.P15336609892687489569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (n + 1) + (A114403 (n + 2) + A114403 (n + 3))

end

end A115402.P15336609892687489569

namespace A115402

/-- `A114403(n+1)+A114403(n+2)+A114403(n+3)` -/
def P15336609892687489569.Spec : Prop :=
  ∀ n, P15336609892687489569.a n = A115402 (n + 1)

theorem P15336609892687489569.correct : P15336609892687489569.Spec := by
  intro n
  simp only [A115402, Nat.add_sub_cancel, A115402.P15336609892687489569.a, A115402.P3622041107575865208.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A114403, A114403.P7554247449644843870.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115402

/-! ## A115402.P15739954990351063652

`A110934(n+1)+Δ[A014612(n+3)]`
-/

namespace A115402.P15739954990351063652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110934 (n + 1) + (f1 (n + 1) - f1 n)

end

end A115402.P15739954990351063652

namespace A115402

/-- `A110934(n+1)+Δ[A014612(n+3)]` -/
def P15739954990351063652.Spec : Prop :=
  ∀ n, P15739954990351063652.a n = A115402 (n + 1)

theorem P15739954990351063652.correct : P15739954990351063652.Spec := by
  intro n
  simp only [A115402, Nat.add_sub_cancel, A115402.P15739954990351063652.f1, A115402.P15739954990351063652.a, A115402.P3622041107575865208.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A110934, A110934.P9568083779091695448.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115402

/-! ## A115402.P6480686018260011666

`Δ[A014612(n+1)+A014612(n+2)+A014612(n+3)]`
-/

namespace A115402.P6480686018260011666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) + (A014612 (n + 2) + A014612 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115402.P6480686018260011666

namespace A115402

/-- `Δ[A014612(n+1)+A014612(n+2)+A014612(n+3)]` -/
def P6480686018260011666.Spec : Prop :=
  ∀ n, P6480686018260011666.a n = A115402 (n + 1)

theorem P6480686018260011666.correct : P6480686018260011666.Spec := by
  intro n
  simp only [A115402, Nat.add_sub_cancel, A115402.P6480686018260011666.f1, A115402.P6480686018260011666.a, A115402.P3622041107575865208.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115402

/-! ## A115402.P5636075310559032334

`(A014612(n+4)+A001414(n+5))%(A014612(n+1)+A001414(n+5))`
-/

namespace A115402.P5636075310559032334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014612 (n + 4) + A001414 (n + 5)) (A014612 (n + 1) + A001414 (n + 5))

end

end A115402.P5636075310559032334

namespace A115402

/-- `(A014612(n+4)+A001414(n+5))%(A014612(n+1)+A001414(n+5))` -/
def P5636075310559032334.Spec : Prop :=
  ∀ n, P5636075310559032334.a n = A115402 (n + 1)

end A115402

/-! ## A115402.P12237078536129406483

`A058933(A124317(n+4))-(eq[1, A101605(n+1)]+1)`
-/

namespace A115402.P12237078536129406483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A124317 (n + 4)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A115402.P12237078536129406483

namespace A115402

/-- `A058933(A124317(n+4))-(eq[1, A101605(n+1)]+1)` -/
def P12237078536129406483.Spec : Prop :=
  ∀ n, P12237078536129406483.a n = A115402 (n + 1)

end A115402

/-! ## A115402.P5766812231424328108

`A058933(A124317(n+4))-(eq[1, A101637(2*(n+1))]+1)`
-/

namespace A115402.P5766812231424328108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A124317 (n + 4)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A115402.P5766812231424328108

namespace A115402

/-- `A058933(A124317(n+4))-(eq[1, A101637(2*(n+1))]+1)` -/
def P5766812231424328108.Spec : Prop :=
  ∀ n, P5766812231424328108.a n = A115402 (n + 1)

end A115402

/-! ## A115402.P16073017001260549408

`A058933(A124268(n+4))-(eq[1, A101605(n+1)]+1)`
-/

namespace A115402.P16073017001260549408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A124268 (n + 4)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A115402.P16073017001260549408

namespace A115402

/-- `A058933(A124268(n+4))-(eq[1, A101605(n+1)]+1)` -/
def P16073017001260549408.Spec : Prop :=
  ∀ n, P16073017001260549408.a n = A115402 (n + 1)

end A115402

/-!
# A115403: Numbers k such that k^3+1 is 3-almost prime (product of three primes).

The programs for A115403, the canonical program `A115403.P13733478826157625303` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115403 has offset 1).

The definition of A115403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115403.P13733478826157625303

`eq[8, A278251(n)+A086568(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A115403

/-- `eq[8, A278251(n)+A086568(n+1)]` -/
def P13733478826157625303.Spec : Prop :=
  ∀ n, (P13733478826157625303.a n : ℤ) = A115403 (n + 1)

theorem P13733478826157625303.correct : P13733478826157625303.Spec := by
  intro n
  simp only [A115403, Nat.add_sub_cancel]

end A115403

/-! ## A115403.P16898763139265215062

`eq[3, A001222(n+1)+A001222(A278251(n))]`
-/

namespace A115403.P16898763139265215062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A278251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115403.P16898763139265215062

namespace A115403

/-- `eq[3, A001222(n+1)+A001222(A278251(n))]` -/
def P16898763139265215062.Spec : Prop :=
  ∀ n, (P16898763139265215062.a n : ℤ) = A115403 (n + 1)

end A115403

/-! ## A115403.P16698444402075118875

`eq[8, A278253(A046523(n+1))+A278251(n)]`
-/

namespace A115403.P16698444402075118875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (A046523 (n + 1)).toNat + A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115403.P16698444402075118875

namespace A115403

/-- `eq[8, A278253(A046523(n+1))+A278251(n)]` -/
def P16698444402075118875.Spec : Prop :=
  ∀ n, (P16698444402075118875.a n : ℤ) = A115403 (n + 1)

end A115403

/-! ## A115403.P6084476436438100042

`eq[A086568(n+1), A114403(A278251(n))]`
-/

namespace A115403.P6084476436438100042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (A278251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115403.P6084476436438100042

namespace A115403

/-- `eq[A086568(n+1), A114403(A278251(n))]` -/
def P6084476436438100042.Spec : Prop :=
  ∀ n, (P6084476436438100042.a n : ℤ) = A115403 (n + 1)

end A115403

/-! ## A115403.P11778907270845739795

`eq[3, A001222(n+1)+A001222(A002061(n))]`
-/

namespace A115403.P11778907270845739795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A002061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115403.P11778907270845739795

namespace A115403

/-- `eq[3, A001222(n+1)+A001222(A002061(n))]` -/
def P11778907270845739795.Spec : Prop :=
  ∀ n, (P11778907270845739795.a n : ℤ) = A115403 (n + 1)

end A115403

/-!
# A115404: Numbers n such that n^4+1 is a 4-almost prime (product of four primes).

The programs for A115404, the canonical program `A115404.P9169398074652638064` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115404 has offset 1).

The definition of A115404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115404.P9169398074652638064

`eq[4, A193929(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A115404

/-- `eq[4, A193929(n)]` -/
def P9169398074652638064.Spec : Prop :=
  ∀ n, (P9169398074652638064.a n : ℤ) = A115404 (n + 1)

theorem P9169398074652638064.correct : P9169398074652638064.Spec := by
  intro n
  simp only [A115404, Nat.add_sub_cancel]

end A115404

/-! ## A115404.P18386427551439864756

`lt[A002378(2*(n+2)), A350625(A193562(n))]`
-/

namespace A115404.P18386427551439864756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350625 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115404.P18386427551439864756

namespace A115404

/-- `lt[A002378(2*(n+2)), A350625(A193562(n))]` -/
def P18386427551439864756.Spec : Prop :=
  ∀ n, (P18386427551439864756.a n : ℤ) = A115404 (n + 1)

end A115404

/-! ## A115404.P10174743498820873011

`lt[A082663(2*n+3), A350625(A193562(n))]`
-/

namespace A115404.P10174743498820873011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082663 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350625 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115404.P10174743498820873011

namespace A115404

/-- `lt[A082663(2*n+3), A350625(A193562(n))]` -/
def P10174743498820873011.Spec : Prop :=
  ∀ n, (P10174743498820873011.a n : ℤ) = A115404 (n + 1)

end A115404

/-! ## A115404.P12008757506690815963

`lt[A320702(3*n+5), A350625(A193562(n))]`
-/

namespace A115404.P12008757506690815963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320702 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350625 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115404.P12008757506690815963

namespace A115404

/-- `lt[A320702(3*n+5), A350625(A193562(n))]` -/
def P12008757506690815963.Spec : Prop :=
  ∀ n, (P12008757506690815963.a n : ℤ) = A115404 (n + 1)

end A115404

/-! ## A115404.P15521928523633933480

`lt[A003384(n+1), A350625(A193562(n))]`
-/

namespace A115404.P15521928523633933480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350625 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115404.P15521928523633933480

namespace A115404

/-- `lt[A003384(n+1), A350625(A193562(n))]` -/
def P15521928523633933480.Spec : Prop :=
  ∀ n, (P15521928523633933480.a n : ℤ) = A115404 (n + 1)

end A115404

/-!
# A115405: Numbers n such that n^k is deficient for all k>0.

The programs for A115405, the canonical program `A115405.P1522796264930506782` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115405 has offset 1).

The definition of A115405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115405.P1522796264930506782

`eq[0, A323170(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115405

/-- `eq[0, A323170(n+1)]+1` -/
def P1522796264930506782.Spec : Prop :=
  ∀ n, (P1522796264930506782.a n : ℤ) = A115405 (n + 1)

theorem P1522796264930506782.correct : P1522796264930506782.Spec := by
  intro n
  simp only [A115405, Nat.add_sub_cancel]

end A115405

/-! ## A115405.P9688738090357633395

`lt[A318879(n+1), 1]+1`
-/

namespace A115405.P9688738090357633395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115405.P9688738090357633395

namespace A115405

/-- `lt[A318879(n+1), 1]+1` -/
def P9688738090357633395.Spec : Prop :=
  ∀ n, (P9688738090357633395.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P14718614920759799183

`lt[n, A297111(n+1)]+1`
-/

namespace A115405.P14718614920759799183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A115405.P14718614920759799183

namespace A115405

/-- `lt[n, A297111(n+1)]+1` -/
def P14718614920759799183.Spec : Prop :=
  ∀ n, (P14718614920759799183.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P15214954683968405813

`comp[A054741(n+1)-1]+1`
-/

namespace A115405.P15214954683968405813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A115405.P15214954683968405813

namespace A115405

/-- `comp[A054741(n+1)-1]+1` -/
def P15214954683968405813.Spec : Prop :=
  ∀ n, (P15214954683968405813.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P9583272766719875231

`lt[-1, A083254(n+1)]+1`
-/

namespace A115405.P9583272766719875231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A115405.P9583272766719875231

namespace A115405

/-- `lt[-1, A083254(n+1)]+1` -/
def P9583272766719875231.Spec : Prop :=
  ∀ n, (P9583272766719875231.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P13058770649647731303

`lt[∑[n], A002618(n+1)]+1`
-/

namespace A115405.P13058770649647731303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A115405.P13058770649647731303

namespace A115405

/-- `lt[∑[n], A002618(n+1)]+1` -/
def P13058770649647731303.Spec : Prop :=
  ∀ n, (P13058770649647731303.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P9991811937234610267

`lt[n, 2*A000010(n+1)]+1`
-/

namespace A115405.P9991811937234610267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A115405.P9991811937234610267

namespace A115405

/-- `lt[n, 2*A000010(n+1)]+1` -/
def P9991811937234610267.Spec : Prop :=
  ∀ n, (P9991811937234610267.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P2249415280166255765

`lt[2*n, A002246(n+1)]+1`
-/

namespace A115405.P2249415280166255765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A115405.P2249415280166255765

namespace A115405

/-- `lt[2*n, A002246(n+1)]+1` -/
def P2249415280166255765.Spec : Prop :=
  ∀ n, (P2249415280166255765.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P15501530450880367358

`lt[cosh(log(n+1)), A039649(n+1)]+1`
-/

namespace A115405.P15501530450880367358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log (n + 1 : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A115405.P15501530450880367358

namespace A115405

/-- `lt[cosh(log(n+1)), A039649(n+1)]+1` -/
def P15501530450880367358.Spec : Prop :=
  ∀ n, (P15501530450880367358.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P3915868706748379661

`lt[n, A004277(A000010(n+1))]+1`
-/

namespace A115405.P3915868706748379661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A115405.P3915868706748379661

namespace A115405

/-- `lt[n, A004277(A000010(n+1))]+1` -/
def P3915868706748379661.Spec : Prop :=
  ∀ n, (P3915868706748379661.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P11347632473445499254

`lt[A008619(n), A000010(n+1)+1]+1`
-/

namespace A115405.P11347632473445499254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A115405.P11347632473445499254

namespace A115405

/-- `lt[A008619(n), A000010(n+1)+1]+1` -/
def P11347632473445499254.Spec : Prop :=
  ∀ n, (P11347632473445499254.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P3662487718833220853

`lt[A004526(n), A039649(n+1)-1]+1`
-/

namespace A115405.P3662487718833220853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A115405.P3662487718833220853

namespace A115405

/-- `lt[A004526(n), A039649(n+1)-1]+1` -/
def P3662487718833220853.Spec : Prop :=
  ∀ n, (P3662487718833220853.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P2559445928092152570

`record[(n+1)/A001157(A318875(n+1)+1)]`
-/

namespace A115405.P2559445928092152570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001157 (A318875 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115405.P2559445928092152570

namespace A115405

/-- `record[(n+1)/A001157(A318875(n+1)+1)]` -/
def P2559445928092152570.Spec : Prop :=
  ∀ n, P2559445928092152570.a n = (A115405 (n + 1) : ℚ)

end A115405

/-! ## A115405.P5849614953686476331

`record[(n+1)%A000265(2*A000010(n+1)+1)]`
-/

namespace A115405.P5849614953686476331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000265 (2 * A000010 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115405.P5849614953686476331

namespace A115405

/-- `record[(n+1)%A000265(2*A000010(n+1)+1)]` -/
def P5849614953686476331.Spec : Prop :=
  ∀ n, P5849614953686476331.a n = A115405 (n + 1)

end A115405

/-! ## A115405.P16254006189494329509

`eq[1, A261605(A318877(n+1))]+1`
-/

namespace A115405.P16254006189494329509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261605 (A318877 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115405.P16254006189494329509

namespace A115405

/-- `eq[1, A261605(A318877(n+1))]+1` -/
def P16254006189494329509.Spec : Prop :=
  ∀ n, (P16254006189494329509.a n : ℤ) = A115405 (n + 1)

end A115405

/-! ## A115405.P14934361228041750730

`lt[∑[n], A000010((n+1)²)]+1`
-/

namespace A115405.P14934361228041750730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A115405.P14934361228041750730

namespace A115405

/-- `lt[∑[n], A000010((n+1)²)]+1` -/
def P14934361228041750730.Spec : Prop :=
  ∀ n, (P14934361228041750730.a n : ℤ) = A115405 (n + 1)

end A115405

/-!
# A115406: Unique m such that A024431(m) - A024431(A115407(n)) = n.

The programs for A115406, there is no canonical definition to state claims against.
-/

/-! ## A115406.P14901574669087252614

`round(sqrt(2*A115408(n+1)))`
-/

namespace A115406.P14901574669087252614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A115408 (n + 1) : ℝ))

end

end A115406.P14901574669087252614

/-! ## A115406.P1287045406222471565

`A002024(A115408(n+1))`
-/

namespace A115406.P1287045406222471565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A115408 (n + 1)).toNat

end

end A115406.P1287045406222471565

/-! ## A115406.P307198109836272123

`A000194(2*A115408(n+1))`
-/

namespace A115406.P307198109836272123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A115408 (n + 1)).toNat

end

end A115406.P307198109836272123

/-! ## A115406.P10484096843578897566

`A349520(2*A115408(n+1))`
-/

namespace A115406.P10484096843578897566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * A115408 (n + 1)).toNat

end

end A115406.P10484096843578897566

/-! ## A115406.P3386546120535293161

`A003056(A115408(n+1)-1)+1`
-/

namespace A115406.P3386546120535293161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A115408 (n + 1) - 1).toNat + 1

end

end A115406.P3386546120535293161

/-!
# A115407: Unique m such that A024431(A115406(n)) - A024431(m) = n.

The programs for A115407, there is no canonical definition to state claims against.
-/

/-! ## A115407.P16318629816486162068

`A002262(A115408(n+1)-1)`
-/

namespace A115407.P16318629816486162068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A115408 (n + 1) - 1).toNat

end

end A115407.P16318629816486162068

/-! ## A115407.P7281821241252288459

`A002260(A115408(n+1))-A007318(∑[n])`
-/

namespace A115407.P7281821241252288459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A115408 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115407.P7281821241252288459

/-! ## A115407.P3516345012207393380

`A115406(n+1)-A004736(A115408(n+1))`
-/

namespace A115407.P3516345012207393380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115406 (n + 1) - A004736 (A115408 (n + 1)).toNat

end

end A115407.P3516345012207393380

/-! ## A115407.P3320077298034205419

`A002260(A115408(n+1))-A000041(C(n, n²))`
-/

namespace A115407.P3320077298034205419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A115408 (n + 1)).toNat - A000041 (Nat.choose n (n ^ 2))

end

end A115407.P3320077298034205419

/-! ## A115407.P4642257979968104854

`A062157(2*(n+1))+A002260(A115408(n+1))`
-/

namespace A115407.P4642257979968104854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 1)) + A002260 (A115408 (n + 1)).toNat

end

end A115407.P4642257979968104854

/-!
# A115409: Inverse integer permutation of A115408.

The programs for A115409, there is no canonical definition to state claims against.
-/

/-! ## A115409.P11624203958098348342

`A024431(A002024(n+1))-A024431(A002262(n))`
-/

namespace A115409.P11624203958098348342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024431 (A002024 (n + 1)).toNat - A024431 (A002262 n).toNat

end

end A115409.P11624203958098348342

/-!
# A115411: a(n) = least k such that semiprime(n) divides k-th triangular number.

The programs for A115411, there is no canonical definition to state claims against.
-/

/-! ## A115411.P2318439222909958892

`A011772(A001358(n+1))`
-/

namespace A115411.P2318439222909958892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A001358 (n + 1)).toNat

end

end A115411.P2318439222909958892

/-! ## A115411.P8651963724950181321

`A011772(A176540(n+2))`
-/

namespace A115411.P8651963724950181321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A176540 (n + 2)).toNat

end

end A115411.P8651963724950181321

/-! ## A115411.P5810352573645021715

`A011772(eq[2, A001222(n+1)]+1)`
-/

namespace A115411.P5810352573645021715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A115411.P5810352573645021715

/-! ## A115411.P11596440395716697229

`A011772(eq[4, a(A001222(n))²])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A115411.P11596440395716697229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115411.P11596440395716697229

/-! ## A115411.P4690766149130103090

`A011772(eq[2, A105700(n)])`
-/

namespace A115411.P4690766149130103090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115411.P4690766149130103090

/-! ## A115411.P15567534762630426649

`A011772(eq[2, A226378(n)])`
-/

namespace A115411.P15567534762630426649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115411.P15567534762630426649

/-! ## A115411.P10613482832119510224

`A321366(eq[2, A001222(n+1)]+1)-1`
-/

namespace A115411.P10613482832119510224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A115411.P10613482832119510224

/-! ## A115411.P901823253090269359

`A344005(A075818(n+1))`
-/

namespace A115411.P901823253090269359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A075818 (n + 1)).toNat

end

end A115411.P901823253090269359

/-! ## A115411.P4953275514950780375

`A344005(2*(eq[2, A001222(n+1)]+1))`
-/

namespace A115411.P4953275514950780375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A115411.P4953275514950780375

/-! ## A115411.P11300323632161075491

`A011772(eq[2, A166974(n)])`
-/

namespace A115411.P11300323632161075491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115411.P11300323632161075491

/-!
# A115412: G.f.: (x - 1)/(x^5 - x^3 - x^2 - x - 1).

The programs for A115412, the canonical program `A115412.P13422381437492962097` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115412 has offset 0).

The definition of A115412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115412.P13422381437492962097

`ogf((1-x)/(1+x+x^2+x^3-x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115412

/-- `ogf((1-x)/(1+x+x^2+x^3-x^5))` -/
def P13422381437492962097.Spec : Prop :=
  ∀ n, P13422381437492962097.a n = A115412 n

theorem P13422381437492962097.correct : P13422381437492962097.Spec := by
  intro n
  simp only [A115412]

end A115412

/-!
# A115413: Expansion of (x - 1)/(1 - x^2 + x^3 + x^4 - x^5).

The programs for A115413, the canonical program `A115413.P1998553418151267753` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115413 has offset 0).

The definition of A115413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1+x)/(1-x^2+x^3+x^4-x^5))` (program `A115413.P1998553418151267753`, by `A115413.P1998553418151267753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115413.P1998553418151267753

`ogf((-1+x)/(1-x^2+x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115413

/-- `ogf((-1+x)/(1-x^2+x^3+x^4-x^5))` -/
def P1998553418151267753.Spec : Prop :=
  ∀ n, P1998553418151267753.a n = A115413 n

theorem P1998553418151267753.correct : P1998553418151267753.Spec := by
  intro n
  simp only [A115413]

end A115413

/-! ## A115413.P4231682969994713191

`a(n-2)-a(n-3)-a(n-4)+a(n-5)` with `a(0)=-1, a(1)=1, a(2)=-1, a(3)=2, a(4)=-1`
-/

namespace A115413.P4231682969994713191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, -1, 2, -1] fun n a =>
  a (n - 2) - a (n - 3) - a (n - 4) + a (n - 5)

end

end A115413.P4231682969994713191

namespace A115413

/-- `a(n-2)-a(n-3)-a(n-4)+a(n-5)` -/
def P4231682969994713191.Spec : Prop :=
  ∀ n, P4231682969994713191.a n = A115413 n

end A115413

/-!
# A115415: Real part of (n + i)^n, with i=sqrt(-1).

The programs for A115415, there is no canonical definition to state claims against.
-/

/-! ## A115415.P5272991776612745225

`A065033(∑[A182356(n)])`
-/

namespace A115415.P5272991776612745225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115415.P5272991776612745225

/-! ## A115415.P15909910768601240367

`abs(A001057(∑[A182356(n)]))`
-/

namespace A115415.P15909910768601240367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A115415.P15909910768601240367

/-!
# A115416: Imaginary part of (n + i)^n, with i=sqrt(-1).

The programs for A115416, there is no canonical definition to state claims against.
-/

/-! ## A115416.P174550727049387223

`A302606(n)-A067169(A002104(n))`
-/

namespace A115416.P174550727049387223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302606 n - A067169 ((A002104 n).toNat + 11)

end

end A115416.P174550727049387223

/-!
# A115417: Dates of Sundays starting from Jan 01 2001.

The programs for A115417, there is no canonical definition to state claims against.
-/

/-! ## A115417.P17174193030801844236

`A008684(7*(n+1))`
-/

namespace A115417.P17174193030801844236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (7 * (n + 1))

end

end A115417.P17174193030801844236

/-! ## A115417.P11837454079445031723

`A008684(A008589(n+1))%31`
-/

namespace A115417.P11837454079445031723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008684 (A008589 (n + 1)).toNat) 31

end

end A115417.P11837454079445031723

/-! ## A115417.P14226955643310609289

`A008684(A008589(n+1))/A007318(∑[n])`
-/

namespace A115417.P14226955643310609289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008684 (A008589 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A115417.P14226955643310609289

/-! ## A115417.P10180265370999960664

`A008684(A008589(n+1))+A000007(A000010(n+1))`
-/

namespace A115417.P10180265370999960664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A008589 (n + 1)).toNat + A000007 (A000010 (n + 1)).toNat

end

end A115417.P10180265370999960664

/-! ## A115417.P10550612794376787692

`A008684(A008589(n+1))+A000007(A002313(n+1))`
-/

namespace A115417.P10550612794376787692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A008589 (n + 1)).toNat + A000007 (A002313 (n + 1)).toNat

end

end A115417.P10550612794376787692

/-! ## A115417.P6036618007065927639

`A008684(A008589(n+1))+A000007(A003157(n+1))`
-/

namespace A115417.P6036618007065927639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A008589 (n + 1)).toNat + A000007 (A003157 (n + 1)).toNat

end

end A115417.P6036618007065927639

/-! ## A115417.P12844128997500183568

`A008684(A008589(n+1))+A000007(A052273(n+1))`
-/

namespace A115417.P12844128997500183568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A008589 (n + 1)).toNat + A000007 (A052273 (n + 1)).toNat

end

end A115417.P12844128997500183568

/-! ## A115417.P7302166647712999947

`A008684(A008589(n+1))+A000007(A141195(n+1))`
-/

namespace A115417.P7302166647712999947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A008589 (n + 1)).toNat + A000007 (A141195 (n + 1)).toNat

end

end A115417.P7302166647712999947

/-!
# A115419: Numbers having a 1 in position 3 of their binary expansion.

The programs for A115419, the canonical program `A115419.P6382820142599462684` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115419 has offset 1).

The definition of A115419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115419.P6382820142599462684

`record[or(8, n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115419

/-- `record[or(8, n)]` -/
def P6382820142599462684.Spec : Prop :=
  ∀ n, (P6382820142599462684.a n : ℤ) = A115419 (n + 1)

theorem P6382820142599462684.correct : P6382820142599462684.Spec := by
  intro n
  simp only [A115419, Nat.add_sub_cancel]

end A115419

/-! ## A115419.P4029047359332714699

`record[xor(8, n)]`
-/

namespace A115419.P4029047359332714699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115419.P4029047359332714699

namespace A115419

/-- `record[xor(8, n)]` -/
def P4029047359332714699.Spec : Prop :=
  ∀ n, (P4029047359332714699.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P15080559567658134864

`comp[and(n, -9)]`
-/

namespace A115419.P15080559567658134864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-9)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115419.P15080559567658134864

namespace A115419

/-- `comp[and(n, -9)]` -/
def P15080559567658134864.Spec : Prop :=
  ∀ n, (P15080559567658134864.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P14090887555452271766

`eq[n, or(8, n)]`
-/

namespace A115419.P14090887555452271766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115419.P14090887555452271766

namespace A115419

/-- `eq[n, or(8, n)]` -/
def P14090887555452271766.Spec : Prop :=
  ∀ n, (P14090887555452271766.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P11939209091996546698

`lt[xor(8, n), n]`
-/

namespace A115419.P11939209091996546698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115419.P11939209091996546698

namespace A115419

/-- `lt[xor(8, n), n]` -/
def P11939209091996546698.Spec : Prop :=
  ∀ n, (P11939209091996546698.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P10375059148733637793

`comp[or(8, n)]+8`
-/

namespace A115419.P10375059148733637793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 8

end

end A115419.P10375059148733637793

namespace A115419

/-- `comp[or(8, n)]+8` -/
def P10375059148733637793.Spec : Prop :=
  ∀ n, (P10375059148733637793.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P1589739070854836219

`comp[or(8, n)-8]`
-/

namespace A115419.P1589739070854836219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 8 n : ℤ) - 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115419.P1589739070854836219

namespace A115419

/-- `comp[or(8, n)-8]` -/
def P1589739070854836219.Spec : Prop :=
  ∀ n, (P1589739070854836219.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P3628465835171463594

`or(8, comp[or(8, n)])`
-/

namespace A115419.P3628465835171463594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A115419.P3628465835171463594

namespace A115419

/-- `or(8, comp[or(8, n)])` -/
def P3628465835171463594.Spec : Prop :=
  ∀ n, (P3628465835171463594.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P6673356901715177605

`lt[and(n, -9), n]`
-/

namespace A115419.P6673356901715177605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115419.P6673356901715177605

namespace A115419

/-- `lt[and(n, -9), n]` -/
def P6673356901715177605.Spec : Prop :=
  ∀ n, (P6673356901715177605.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P14360028535368226311

`or(7, n)+1+n`
-/

namespace A115419.P14360028535368226311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n + 1 + n

end

end A115419.P14360028535368226311

namespace A115419

/-- `or(7, n)+1+n` -/
def P14360028535368226311.Spec : Prop :=
  ∀ n, (P14360028535368226311.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P4531642865226822993

`lt[0, n*and(8, n)]`
-/

namespace A115419.P4531642865226822993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115419.P4531642865226822993

namespace A115419

/-- `lt[0, n*and(8, n)]` -/
def P4531642865226822993.Spec : Prop :=
  ∀ n, (P4531642865226822993.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P4810596049015727220

`lt[or(8, n)-1, n]`
-/

namespace A115419.P4810596049015727220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 8 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115419.P4810596049015727220

namespace A115419

/-- `lt[or(8, n)-1, n]` -/
def P4810596049015727220.Spec : Prop :=
  ∀ n, (P4810596049015727220.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P2276502319486947260

`eq[8, and(n, 7-n)]`
-/

namespace A115419.P2276502319486947260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (7 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115419.P2276502319486947260

namespace A115419

/-- `eq[8, and(n, 7-n)]` -/
def P2276502319486947260.Spec : Prop :=
  ∀ n, (P2276502319486947260.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P17243348297952726246

`lt[1, n^and(8, n)]`
-/

namespace A115419.P17243348297952726246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115419.P17243348297952726246

namespace A115419

/-- `lt[1, n^and(8, n)]` -/
def P17243348297952726246.Spec : Prop :=
  ∀ n, (P17243348297952726246.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P10588054927193565352

`eq[n, xor(8, n)+8]`
-/

namespace A115419.P10588054927193565352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115419.P10588054927193565352

namespace A115419

/-- `eq[n, xor(8, n)+8]` -/
def P10588054927193565352.Spec : Prop :=
  ∀ n, (P10588054927193565352.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P15326722162555863870

`eq[8, xor(n, n-8)]`
-/

namespace A115419.P15326722162555863870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115419.P15326722162555863870

namespace A115419

/-- `eq[8, xor(n, n-8)]` -/
def P15326722162555863870.Spec : Prop :=
  ∀ n, (P15326722162555863870.a n : ℤ) = A115419 (n + 1)

end A115419

/-! ## A115419.P3303857826268645197

`record[and(n, -9)+8]`
-/

namespace A115419.P3303857826268645197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-9) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115419.P3303857826268645197

namespace A115419

/-- `record[and(n, -9)+8]` -/
def P3303857826268645197.Spec : Prop :=
  ∀ n, P3303857826268645197.a n = A115419 (n + 1)

end A115419

/-! ## A115419.P2238587061737367719

`A020744(n)-A010877(n)`
-/

namespace A115419.P2238587061737367719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n - A010877 n

end

end A115419.P2238587061737367719

namespace A115419

/-- `A020744(n)-A010877(n)` -/
def P2238587061737367719.Spec : Prop :=
  ∀ n, P2238587061737367719.a n = A115419 (n + 1)

end A115419

/-! ## A115419.P14501738334917374427

`A109613(n)+A244588(n)+1`
-/

namespace A115419.P14501738334917374427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + (A244588 n + 1)

end

end A115419.P14501738334917374427

namespace A115419

/-- `A109613(n)+A244588(n)+1` -/
def P14501738334917374427.Spec : Prop :=
  ∀ n, P14501738334917374427.a n = A115419 (n + 1)

end A115419

/-! ## A115419.P130798631907965677

`A174091(n)+A244587(n)+1`
-/

namespace A115419.P130798631907965677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174091 n + (A244587 n + 1)

end

end A115419.P130798631907965677

namespace A115419

/-- `A174091(n)+A244587(n)+1` -/
def P130798631907965677.Spec : Prop :=
  ∀ n, P130798631907965677.a n = A115419 (n + 1)

end A115419

/-!
# A115420: Numbers having a 1 in position 4 of their binary expansion.

The programs for A115420, there is no canonical definition to state claims against.
-/

/-! ## A115420.P9061618252921779906

`record[or(16, n)]`
-/

namespace A115420.P9061618252921779906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 16 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115420.P9061618252921779906

/-! ## A115420.P11498746828668200269

`record[xor(16, n)]`
-/

namespace A115420.P11498746828668200269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 16 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115420.P11498746828668200269

/-! ## A115420.P625396888392186454

`comp[and(n, -17)]`
-/

namespace A115420.P625396888392186454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-17)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115420.P625396888392186454

/-! ## A115420.P15484041110816141087

`eq[n, or(16, n)]`
-/

namespace A115420.P15484041110816141087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 16 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115420.P15484041110816141087

/-! ## A115420.P5284993351429551424

`lt[xor(16, n), n]`
-/

namespace A115420.P5284993351429551424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 16 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115420.P5284993351429551424

/-! ## A115420.P12150079890151770765

`comp[or(16, n)]+16`
-/

namespace A115420.P12150079890151770765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 16 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 16

end

end A115420.P12150079890151770765

/-! ## A115420.P18295702357836854756

`comp[or(16, n)-16]`
-/

namespace A115420.P18295702357836854756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 16 n : ℤ) - 16

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115420.P18295702357836854756

/-! ## A115420.P7115947424140951734

`comp[xor(16, or(16, n))]`
-/

namespace A115420.P7115947424140951734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 16 (Nat.lor 16 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A115420.P7115947424140951734

/-! ## A115420.P1216175573807045876

`or(15, n)+1+n`
-/

namespace A115420.P1216175573807045876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 15 n + 1 + n

end

end A115420.P1216175573807045876

/-! ## A115420.P5881020545874370692

`lt[or(16, n)-1, n]`
-/

namespace A115420.P5881020545874370692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 16 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115420.P5881020545874370692

/-!
# A115421: Numbers having a 1 in position 5 of their binary expansion.

The programs for A115421, the canonical program `A115421.P14730913890024970256` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115421 has offset 1).

The definition of A115421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115421.P14730913890024970256

`record[or(32, n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115421

/-- `record[or(32, n)]` -/
def P14730913890024970256.Spec : Prop :=
  ∀ n, (P14730913890024970256.a n : ℤ) = A115421 (n + 1)

theorem P14730913890024970256.correct : P14730913890024970256.Spec := by
  intro n
  simp only [A115421, Nat.add_sub_cancel]

end A115421

/-! ## A115421.P18001146079890727025

`record[xor(32, n)]`
-/

namespace A115421.P18001146079890727025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 32 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115421.P18001146079890727025

namespace A115421

/-- `record[xor(32, n)]` -/
def P18001146079890727025.Spec : Prop :=
  ∀ n, (P18001146079890727025.a n : ℤ) = A115421 (n + 1)

end A115421

/-! ## A115421.P7105069130120147905

`comp[and(n, -33)]`
-/

namespace A115421.P7105069130120147905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-33)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115421.P7105069130120147905

namespace A115421

/-- `comp[and(n, -33)]` -/
def P7105069130120147905.Spec : Prop :=
  ∀ n, (P7105069130120147905.a n : ℤ) = A115421 (n + 1)

end A115421

/-! ## A115421.P701884491225496312

`comp[n%or(32, n)]`
-/

namespace A115421.P701884491225496312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 32 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A115421.P701884491225496312

namespace A115421

/-- `comp[n%or(32, n)]` -/
def P701884491225496312.Spec : Prop :=
  ∀ n, (P701884491225496312.a n : ℤ) = A115421 (n + 1)

end A115421

/-! ## A115421.P5091045379561267720

`or(31, n)+1+n`
-/

namespace A115421.P5091045379561267720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 31 n + 1 + n

end

end A115421.P5091045379561267720

namespace A115421

/-- `or(31, n)+1+n` -/
def P5091045379561267720.Spec : Prop :=
  ∀ n, (P5091045379561267720.a n : ℤ) = A115421 (n + 1)

end A115421

/-! ## A115421.P8143619201023675611

`2*n-or(n, -32)`
-/

namespace A115421.P8143619201023675611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor (n : ℤ) (-32)

end

end A115421.P8143619201023675611

namespace A115421

/-- `2*n-or(n, -32)` -/
def P8143619201023675611.Spec : Prop :=
  ∀ n, P8143619201023675611.a n = A115421 (n + 1)

end A115421

/-! ## A115421.P13884387177841884093

`and(31, 31-n)+2*n+1`
-/

namespace A115421.P13884387177841884093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (31 - (n : ℤ)) + (2 * n + 1 : ℤ)

end

end A115421.P13884387177841884093

namespace A115421

/-- `and(31, 31-n)+2*n+1` -/
def P13884387177841884093.Spec : Prop :=
  ∀ n, P13884387177841884093.a n = A115421 (n + 1)

end A115421

/-!
# A115422: Numbers k > 0 such that k XOR 20*k = 21*k.

The programs for A115422, the canonical program `A115422.P14522138724164837158` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115422 has offset 1).

The definition of A115422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115422.P14522138724164837158

`∩[A048716(n+2), A115847(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115422

/-- `∩[A048716(n+2), A115847(n)]` -/
def P14522138724164837158.Spec : Prop :=
  ∀ n, (P14522138724164837158.a n : ℤ) = A115422 (n + 1)

theorem P14522138724164837158.correct : P14522138724164837158.Spec := by
  intro n
  simp only [A115422, Nat.add_sub_cancel]

end A115422

/-! ## A115422.P3201494914301797058

`record[gcd(n+1, and(n, 20*(n+1)))]`
-/

namespace A115422.P3201494914301797058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land n (20 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115422.P3201494914301797058

namespace A115422

/-- `record[gcd(n+1, and(n, 20*(n+1)))]` -/
def P3201494914301797058.Spec : Prop :=
  ∀ n, (P3201494914301797058.a n : ℤ) = A115422 (n + 1)

end A115422

/-! ## A115422.P2606109318766466824

`filter[A391856(n+2), A342892(#)]`
-/

namespace A115422.P2606109318766466824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A115422.P2606109318766466824

namespace A115422

/-- `filter[A391856(n+2), A342892(#)]` -/
def P2606109318766466824.Spec : Prop :=
  ∀ n, P2606109318766466824.a n = A115422 (n + 1)

end A115422

/-! ## A115422.P11103590721967309088

`eq[and(n, A008602(n)), A000038(n)]`
-/

namespace A115422.P11103590721967309088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008602 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115422.P11103590721967309088

namespace A115422

/-- `eq[and(n, A008602(n)), A000038(n)]` -/
def P11103590721967309088.Spec : Prop :=
  ∀ n, (P11103590721967309088.a n : ℤ) = A115422 (n + 1)

end A115422

/-! ## A115422.P9007506346056160400

`record[and(-A008620(n), A247160(n+1))]`
-/

namespace A115422.P9007506346056160400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A008620 n) (A247160 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115422.P9007506346056160400

namespace A115422

/-- `record[and(-A008620(n), A247160(n+1))]` -/
def P9007506346056160400.Spec : Prop :=
  ∀ n, P9007506346056160400.a n = A115422 (n + 1)

end A115422

/-! ## A115422.P12862870319268315325

`A100282(record[A100281(n+1)])`
-/

namespace A115422.P12862870319268315325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100282 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115422.P12862870319268315325

namespace A115422

/-- `A100282(record[A100281(n+1)])` -/
def P12862870319268315325.Spec : Prop :=
  ∀ n, P12862870319268315325.a n = A115422 (n + 1)

end A115422

/-! ## A115422.P8890052922057102593

`A100282(record[A099896(A099896(n+1))])`
-/

namespace A115422.P8890052922057102593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099896 (A099896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100282 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115422.P8890052922057102593

namespace A115422

/-- `A100282(record[A099896(A099896(n+1))])` -/
def P8890052922057102593.Spec : Prop :=
  ∀ n, P8890052922057102593.a n = A115422 (n + 1)

end A115422

/-!
# A115423: Integers n > 0 such that n XOR 30*n = 31*n.

The programs for A115423, the canonical program `A115423.P7439849481679969083` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115423 has offset 1).

The definition of A115423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115423.P7439849481679969083

`∩[A115422(n+1), A115795(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115423

/-- `∩[A115422(n+1), A115795(n+1)]` -/
def P7439849481679969083.Spec : Prop :=
  ∀ n, (P7439849481679969083.a n : ℤ) = A115423 (n + 1)

theorem P7439849481679969083.correct : P7439849481679969083.Spec := by
  intro n
  simp only [A115423, Nat.add_sub_cancel]

end A115423

/-! ## A115423.P6286704963843762008

`∩[A115422(n+1), A115831(n+1)]`
-/

namespace A115423.P6286704963843762008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P6286704963843762008

namespace A115423

/-- `∩[A115422(n+1), A115831(n+1)]` -/
def P6286704963843762008.Spec : Prop :=
  ∀ n, (P6286704963843762008.a n : ℤ) = A115423 (n + 1)

end A115423

/-! ## A115423.P7081489075009068778

`∩[A115422(n+1), A391737(n+1)]`
-/

namespace A115423.P7081489075009068778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P7081489075009068778

namespace A115423

/-- `∩[A115422(n+1), A391737(n+1)]` -/
def P7081489075009068778.Spec : Prop :=
  ∀ n, (P7081489075009068778.a n : ℤ) = A115423 (n + 1)

end A115423

/-! ## A115423.P8828323266272425812

`∩[A115422(n+1), A048718(n)]`
-/

namespace A115423.P8828323266272425812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P8828323266272425812

namespace A115423

/-- `∩[A115422(n+1), A048718(n)]` -/
def P8828323266272425812.Spec : Prop :=
  ∀ n, (P8828323266272425812.a n : ℤ) = A115423 (n + 1)

end A115423

/-! ## A115423.P5305424112085196888

`∩[A115422(n+1), A115797(n+1)]`
-/

namespace A115423.P5305424112085196888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P5305424112085196888

namespace A115423

/-- `∩[A115422(n+1), A115797(n+1)]` -/
def P5305424112085196888.Spec : Prop :=
  ∀ n, (P5305424112085196888.a n : ℤ) = A115423 (n + 1)

end A115423

/-! ## A115423.P1839732971819007360

`∩[A115422(n+1), A115793(n+1)]`
-/

namespace A115423.P1839732971819007360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P1839732971819007360

namespace A115423

/-- `∩[A115422(n+1), A115793(n+1)]` -/
def P1839732971819007360.Spec : Prop :=
  ∀ n, (P1839732971819007360.a n : ℤ) = A115423 (n + 1)

end A115423

/-! ## A115423.P2950613142241050114

`∩[A391346(n+1), A391737(n+1)]`
-/

namespace A115423.P2950613142241050114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115423.P2950613142241050114

namespace A115423

/-- `∩[A391346(n+1), A391737(n+1)]` -/
def P2950613142241050114.Spec : Prop :=
  ∀ n, (P2950613142241050114.a n : ℤ) = A115423 (n + 1)

end A115423

/-! ## A115423.P16855521055802734449

`record[or(n, A247160(n+1))-n]`
-/

namespace A115423.P16855521055802734449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A247160 (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115423.P16855521055802734449

namespace A115423

/-- `record[or(n, A247160(n+1))-n]` -/
def P16855521055802734449.Spec : Prop :=
  ∀ n, P16855521055802734449.a n = A115423 (n + 1)

end A115423

/-! ## A115423.P14000163148335964671

`record[and(A001478(n+1), A247160(n+1))]`
-/

namespace A115423.P14000163148335964671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (n + 1)) (A247160 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115423.P14000163148335964671

namespace A115423

/-- `record[and(A001478(n+1), A247160(n+1))]` -/
def P14000163148335964671.Spec : Prop :=
  ∀ n, P14000163148335964671.a n = A115423 (n + 1)

end A115423

/-! ## A115423.P6176653963064768500

`record[and(A010078(n+1), A247160(n+1))]`
-/

namespace A115423.P6176653963064768500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010078 (n + 1)) (A247160 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115423.P6176653963064768500

namespace A115423

/-- `record[and(A010078(n+1), A247160(n+1))]` -/
def P6176653963064768500.Spec : Prop :=
  ∀ n, P6176653963064768500.a n = A115423 (n + 1)

end A115423

/-!
# A115424: Integers n > 0 such that n XOR 62*n = 63*n.

The programs for A115424, the canonical program `A115424.P2393217423443762188` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115424 has offset 1).

The definition of A115424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115424.P2393217423443762188

`A115805(n+2)/3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115424

/-- `A115805(n+2)/3` -/
def P2393217423443762188.Spec : Prop :=
  ∀ n, P2393217423443762188.a n = (A115424 (n + 1) : ℚ)

end A115424

/-! ## A115424.P18020079012026031040

`∩[A115423(n+1), A391860(n+1)]`
-/

namespace A115424.P18020079012026031040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115424.P18020079012026031040

namespace A115424

/-- `∩[A115423(n+1), A391860(n+1)]` -/
def P18020079012026031040.Spec : Prop :=
  ∀ n, (P18020079012026031040.a n : ℤ) = A115424 (n + 1)

end A115424

/-! ## A115424.P9390214574507566159

`∩[A114086(n+1), A115423(n+1)]`
-/

namespace A115424.P9390214574507566159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115424.P9390214574507566159

namespace A115424

/-- `∩[A114086(n+1), A115423(n+1)]` -/
def P9390214574507566159.Spec : Prop :=
  ∀ n, (P9390214574507566159.a n : ℤ) = A115424 (n + 1)

end A115424

/-! ## A115424.P17815140827514942660

`A318515(A115805(n+2))`
-/

namespace A115424.P17815140827514942660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318515 (A115805 (n + 2)).toNat

end

end A115424.P17815140827514942660

namespace A115424

/-- `A318515(A115805(n+2))` -/
def P17815140827514942660.Spec : Prop :=
  ∀ n, P17815140827514942660.a n = A115424 (n + 1)

end A115424

/-! ## A115424.P7278782937430287456

`record[A292601(A115422(n+1))]`
-/

namespace A115424.P7278782937430287456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (A115422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115424.P7278782937430287456

namespace A115424

/-- `record[A292601(A115422(n+1))]` -/
def P7278782937430287456.Spec : Prop :=
  ∀ n, P7278782937430287456.a n = A115424 (n + 1)

end A115424

/-!
# A115425: The first four terms of the sequence are doubled, then those numbers are tripled and then those numbers are quadrupled, etc.

The programs for A115425, there is no canonical definition to state claims against.
-/

/-! ## A115425.P7400436116455502921

`2*A117826(n+1)`
-/

namespace A115425.P7400436116455502921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117826 (n + 1)

end

end A115425.P7400436116455502921

/-! ## A115425.P6437005606098697993

`lcm(2, 2*A117826(Δ[n²]-n))`
-/

namespace A115425.P6437005606098697993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * A117826 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A115425.P6437005606098697993

/-! ## A115425.P10301171894777826061

`2*∑[char[4*n]]!*A010883(n)`
-/

namespace A115425.P10301171894777826061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A010883 n)

end

end A115425.P10301171894777826061

/-! ## A115425.P8090218663228125542

`A117826(C(n+1, n))+A117826(n+1)`
-/

namespace A115425.P8090218663228125542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117826 (Nat.choose (n + 1) n) + A117826 (n + 1)

end

end A115425.P8090218663228125542

/-! ## A115425.P10516953986339444447

`and(2*A008621(n)!*A010883(n), -2)`
-/

namespace A115425.P10516953986339444447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * ((Nat.factorial (A008621 n).toNat : ℤ) * A010883 n)) (-2)

end

end A115425.P10516953986339444447

/-!
# A115427: Numbers k such that k^2 is the concatenation of two numbers m and m+2.

The programs for A115427, there is no canonical definition to state claims against.
-/

/-! ## A115427.P13080999040323037331

`A116295(n+1)+1`
-/

namespace A115427.P13080999040323037331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116295 (n + 1) + 1

end

end A115427.P13080999040323037331

/-! ## A115427.P5821312299109549164

`A116275(n+1)+2`
-/

namespace A115427.P5821312299109549164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116275 (n + 1) + 2

end

end A115427.P5821312299109549164

/-! ## A115427.P8640093025726036869

`A116242(n+1)+3`
-/

namespace A115427.P8640093025726036869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116242 (n + 1) + 3

end

end A115427.P8640093025726036869

/-!
# A115430: Numbers k such that the concatenation of k with k+9 gives a square.

The programs for A115430, there is no canonical definition to state claims against.
-/

/-! ## A115430.P18245190021460549979

`record[A116113(n+2)%A116244(n+2)]`
-/

namespace A115430.P18245190021460549979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116113 (n + 2)) (A116244 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115430.P18245190021460549979

/-! ## A115430.P5446301298948611305

`record[A116159(n+3)%A116244(n+2)]`
-/

namespace A115430.P5446301298948611305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116159 (n + 3)) (A116244 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115430.P5446301298948611305

/-! ## A115430.P7961981640155754893

`A116113(lt[A113954(n), A331450(3*(n+1))])`
-/

namespace A115430.P7961981640155754893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331450 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116113 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115430.P7961981640155754893

/-!
# A115437: Numbers m such that the concatenation of m with m+4 gives a square.

The programs for A115437, there is no canonical definition to state claims against.
-/

/-! ## A115437.P12294531348225637465

`A116125(n+2)-A010054(A095302(n))`
-/

namespace A115437.P12294531348225637465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116125 (n + 2) - A010054 (A095302 n).toNat

end

end A115437.P12294531348225637465

/-!
# A115439: Numbers m such that the square of m is the concatenation of two numbers k and k+5.

The programs for A115439, there is no canonical definition to state claims against.
-/

/-! ## A115439.P17727573871253463677

`A116315(n+1)+1`
-/

namespace A115439.P17727573871253463677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116315 (n + 1) + 1

end

end A115439.P17727573871253463677

/-! ## A115439.P3831964779892350772

`A116297(n+1)+2`
-/

namespace A115439.P3831964779892350772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116297 (n + 1) + 2

end

end A115439.P3831964779892350772

/-! ## A115439.P1782601646480475504

`ceil(sqrt(A340231(n+1)))`
-/

namespace A115439.P1782601646480475504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A340231 (n + 1) : ℝ)⌉

end

end A115439.P1782601646480475504

/-! ## A115439.P545025027129142466

`round(sqrt(A340231(n+1)+A275238(n)))`
-/

namespace A115439.P545025027129142466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A340231 (n + 1) + A275238 n : ℝ))

end

end A115439.P545025027129142466

/-! ## A115439.P4200176855376886072

`floor(A178688(n+1)+sqrt(A340231(n+1)))`
-/

namespace A115439.P4200176855376886072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178688 (n + 1) : ℝ) + Real.sqrt (A340231 (n + 1) : ℝ)⌋

end

end A115439.P4200176855376886072

/-!
# A115440: Numbers whose square is the concatenation of two numbers k and k+8.

The programs for A115440, there is no canonical definition to state claims against.
-/

/-! ## A115440.P1071210016116512728

`A116335(n+1)+1`
-/

namespace A115440.P1071210016116512728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116335 (n + 1) + 1

end

end A115440.P1071210016116512728

/-! ## A115440.P2826148214653886962

`A116317(n+1)+2`
-/

namespace A115440.P2826148214653886962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116317 (n + 1) + 2

end

end A115440.P2826148214653886962

/-! ## A115440.P2079250865862597881

`A116282(n+1)+3`
-/

namespace A115440.P2079250865862597881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116282 (n + 1) + 3

end

end A115440.P2079250865862597881

/-! ## A115440.P7691014255627208492

`A116239(n+1)+4`
-/

namespace A115440.P7691014255627208492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116239 (n + 1) + 4

end

end A115440.P7691014255627208492

/-!
# A115441: Numbers whose square is the concatenation of two numbers k and k+9.

The programs for A115441, there is no canonical definition to state claims against.
-/

/-! ## A115441.P12047011254437361238

`A116344(n+1)+1`
-/

namespace A115441.P12047011254437361238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116344 (n + 1) + 1

end

end A115441.P12047011254437361238

/-! ## A115441.P2936650686281127106

`A116323(n+1)+2`
-/

namespace A115441.P2936650686281127106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116323 (n + 1) + 2

end

end A115441.P2936650686281127106

/-!
# A115442: Numbers whose square is the concatenation of two numbers k and k-2.

The programs for A115442, there is no canonical definition to state claims against.
-/

/-! ## A115442.P15359224979429710446

`A116266(n+1)+1`
-/

namespace A115442.P15359224979429710446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116266 (n + 1) + 1

end

end A115442.P15359224979429710446

/-!
# A115443: Numbers whose square is the concatenation of two numbers k and k-4.

The programs for A115443, there is no canonical definition to state claims against.
-/

/-! ## A115443.P1554491763486939155

`A116252(n+1)+1`
-/

namespace A115443.P1554491763486939155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116252 (n + 1) + 1

end

end A115443.P1554491763486939155

/-! ## A115443.P2063570280592846931

`A116235(n+1)+2`
-/

namespace A115443.P2063570280592846931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116235 (n + 1) + 2

end

end A115443.P2063570280592846931

/-!
# A115444: Numbers whose square is the concatenation of two numbers k and k-5.

The programs for A115444, there is no canonical definition to state claims against.
-/

/-! ## A115444.P17728680911477678244

`A116247(n+1)+1`
-/

namespace A115444.P17728680911477678244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116247 (n + 1) + 1

end

end A115444.P17728680911477678244

/-! ## A115444.P4661602482868771797

`A116227(n+1)+2`
-/

namespace A115444.P4661602482868771797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116227 (n + 1) + 2

end

end A115444.P4661602482868771797

/-!
# A115446: Numbers k such that the square of k is the concatenation of two numbers m and m-8.

The programs for A115446, there is no canonical definition to state claims against.
-/

/-! ## A115446.P8155173784670374579

`A116226(n+1)+1`
-/

namespace A115446.P8155173784670374579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116226 (n + 1) + 1

end

end A115446.P8155173784670374579

/-!
# A115448: Numbers k such that phi(k) = sigma(phi(phi(k))).

The programs for A115448, there is no canonical definition to state claims against.
-/

/-! ## A115448.P11606604247226153458

`A222218(A036038(n+1)*A086871(n))`
-/

namespace A115448.P11606604247226153458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A036038 (n + 1) * A086871 n).toNat

end

end A115448.P11606604247226153458

/-!
# A115450: Number triangle (1/((1-x)(1-2x)),-x)-(x/((1-x)(1-2x)),-x^2) (expressed in the notation of Riordan arrays).

The programs for A115450, there is no canonical definition to state claims against.
-/

/-! ## A115450.P10901866646780076272

`A065109(n)*A143086(n)/A144463(n)`
-/

namespace A115450.P10901866646780076272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065109 n * A143086 n : ℚ) / (A144463 n : ℚ)

end

end A115450.P10901866646780076272

/-!
# A115451: Expansion of 1/((1+x)*(1-2*x)*(1+x^2)).

The programs for A115451, the canonical program `A115451.P1064776782662161810` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115451 has offset 0).

The definition of A115451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^3-2x^4))` (program `A115451.P1064776782662161810`, by `A115451.P1064776782662161810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115451.P1064776782662161810

`ogf(1/(1-x-x^2-x^3-2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115451

/-- `ogf(1/(1-x-x^2-x^3-2x^4))` -/
def P1064776782662161810.Spec : Prop :=
  ∀ n, P1064776782662161810.a n = A115451 n

theorem P1064776782662161810.correct : P1064776782662161810.Spec := by
  intro n
  simp only [A115451]

end A115451

/-! ## A115451.P16654666263352526714

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A115451.P16654666263352526714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + 2 * a (n - 4)

end

end A115451.P16654666263352526714

namespace A115451

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P16654666263352526714.Spec : Prop :=
  ∀ n, (P16654666263352526714.a n : ℤ) = A115451 n

end A115451

/-! ## A115451.P11687452007038289805

`A112030(n)/10+(-1)^n/6+2^(n+3)/15`
-/

namespace A115451.P11687452007038289805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112030 n : ℚ) / 10 + ((-1) ^ n : ℚ) / 6 + (2 ^ (n + 3) : ℚ) / 15

end

end A115451.P11687452007038289805

namespace A115451

/-- `A112030(n)/10+(-1)^n/6+2^(n+3)/15` -/
def P11687452007038289805.Spec : Prop :=
  ∀ n, P11687452007038289805.a n = (A115451 n : ℚ)

end A115451

/-! ## A115451.P16108847502051611468

`2*a(n-1)+a(n-2)%4-1` with `a(0)=1, a(1)=1`
-/

namespace A115451.P16108847502051611468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + (Int.tmod (a (n - 2)) 4 - 1)

end

end A115451.P16108847502051611468

namespace A115451

/-- `2*a(n-1)+a(n-2)%4-1` -/
def P16108847502051611468.Spec : Prop :=
  ∀ n, P16108847502051611468.a n = A115451 n

end A115451

/-! ## A115451.P9597833138977589058

`∑[A181586(n+2)]`
-/

namespace A115451.P9597833138977589058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115451.P9597833138977589058

namespace A115451

/-- `∑[A181586(n+2)]` -/
def P9597833138977589058.Spec : Prop :=
  ∀ n, P9597833138977589058.a n = A115451 n

end A115451

/-! ## A115451.P15696342050242481740

`A007909(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A115451.P15696342050242481740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007909 n + a (n - 2)

end

end A115451.P15696342050242481740

namespace A115451

/-- `A007909(n)+a(n-2)` -/
def P15696342050242481740.Spec : Prop :=
  ∀ n, P15696342050242481740.a n = A115451 n

end A115451

/-! ## A115451.P18053721891069697041

`a(n-1)+A219977(n)+a(n-1)` with `a(0)=1`
-/

namespace A115451.P18053721891069697041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A219977 n + a (n - 1))

end

end A115451.P18053721891069697041

namespace A115451

/-- `a(n-1)+A219977(n)+a(n-1)` -/
def P18053721891069697041.Spec : Prop :=
  ∀ n, P18053721891069697041.a n = A115451 n

end A115451

/-! ## A115451.P1889233534291541752

`A215095(n)+A056594(n)`
-/

namespace A115451.P1889233534291541752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215095 n + A056594 n

end

end A115451.P1889233534291541752

namespace A115451

/-- `A215095(n)+A056594(n)` -/
def P1889233534291541752.Spec : Prop :=
  ∀ n, P1889233534291541752.a n = A115451 n

end A115451

/-! ## A115451.P13662622467089639492

`xor(A059841(n), A215095(n))`
-/

namespace A115451.P13662622467089639492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A215095 n)

end

end A115451.P13662622467089639492

namespace A115451

/-- `xor(A059841(n), A215095(n))` -/
def P13662622467089639492.Spec : Prop :=
  ∀ n, P13662622467089639492.a n = A115451 n

end A115451

/-! ## A115451.P15275727194339947116

`A206481(n+2)+A215095(n)-A215097(n)`
-/

namespace A115451.P15275727194339947116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206481 (n + 2) + (A215095 n - A215097 n)

end

end A115451.P15275727194339947116

namespace A115451

/-- `A206481(n+2)+A215095(n)-A215097(n)` -/
def P15275727194339947116.Spec : Prop :=
  ∀ n, P15275727194339947116.a n = A115451 n

end A115451

/-! ## A115451.P16693595081681194113

`A256494(n+2)+A001045(n)-A256494(n+1)`
-/

namespace A115451.P16693595081681194113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (n + 2) + (A001045 n - A256494 (n + 1))

end

end A115451.P16693595081681194113

namespace A115451

/-- `A256494(n+2)+A001045(n)-A256494(n+1)` -/
def P16693595081681194113.Spec : Prop :=
  ∀ n, P16693595081681194113.a n = A115451 n

end A115451

/-! ## A115451.P1629289785540350420

`∑[2^(n-1)-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A115451.P1629289785540350420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A115451.P1629289785540350420

namespace A115451

/-- `∑[2^(n-1)-a(n-2)]-a(n-1)` -/
def P1629289785540350420.Spec : Prop :=
  ∀ n, P1629289785540350420.a n = (A115451 n : ℚ)

end A115451

/-! ## A115451.P2453195486534073908

`ceil(A083593(n)/2)`
-/

namespace A115451.P2453195486534073908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083593 n : ℚ) / 2⌉

end

end A115451.P2453195486534073908

namespace A115451

/-- `ceil(A083593(n)/2)` -/
def P2453195486534073908.Spec : Prop :=
  ∀ n, P2453195486534073908.a n = A115451 n

end A115451

/-! ## A115451.P13897727250770683360

`A007910(n)-a(n-1)` with `a(0)=1`
-/

namespace A115451.P13897727250770683360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007910 n - a (n - 1)

end

end A115451.P13897727250770683360

namespace A115451

/-- `A007910(n)-a(n-1)` -/
def P13897727250770683360.Spec : Prop :=
  ∀ n, P13897727250770683360.a n = A115451 n

end A115451

/-! ## A115451.P17456923399369927881

`∑[and(A007909(n), A007910(n))]`
-/

namespace A115451.P17456923399369927881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007909 n) (A007910 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115451.P17456923399369927881

namespace A115451

/-- `∑[and(A007909(n), A007910(n))]` -/
def P17456923399369927881.Spec : Prop :=
  ∀ n, P17456923399369927881.a n = A115451 n

end A115451

/-! ## A115451.P5241971845270235213

`(A007909(n)+abs(A077925(n)))/2`
-/

namespace A115451.P5241971845270235213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007909 n + |A077925 n| : ℚ) / 2

end

end A115451.P5241971845270235213

namespace A115451

/-- `(A007909(n)+abs(A077925(n)))/2` -/
def P5241971845270235213.Spec : Prop :=
  ∀ n, P5241971845270235213.a n = (A115451 n : ℚ)

end A115451

/-! ## A115451.P13830180578529536173

`(A274845(2*n)+A001045(n+1))/2`
-/

namespace A115451.P13830180578529536173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274845 (2 * n) + A001045 (n + 1) : ℚ) / 2

end

end A115451.P13830180578529536173

namespace A115451

/-- `(A274845(2*n)+A001045(n+1))/2` -/
def P13830180578529536173.Spec : Prop :=
  ∀ n, P13830180578529536173.a n = (A115451 n : ℚ)

end A115451

/-! ## A115451.P16721556159516770557

`abs(A077931(n))`
-/

namespace A115451.P16721556159516770557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077931 n|

end

end A115451.P16721556159516770557

namespace A115451

/-- `abs(A077931(n))` -/
def P16721556159516770557.Spec : Prop :=
  ∀ n, P16721556159516770557.a n = A115451 n

end A115451

/-! ## A115451.P5520286491043518862

`ceil(A077854(n)/3)`
-/

namespace A115451.P5520286491043518862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077854 n : ℚ) / 3⌉

end

end A115451.P5520286491043518862

namespace A115451

/-- `ceil(A077854(n)/3)` -/
def P5520286491043518862.Spec : Prop :=
  ∀ n, P5520286491043518862.a n = A115451 n

end A115451

/-! ## A115451.P15016430549809509729

`Δ[Δ[A368346(n+2)]]`
-/

namespace A115451.P15016430549809509729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368346 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115451.P15016430549809509729

namespace A115451

/-- `Δ[Δ[A368346(n+2)]]` -/
def P15016430549809509729.Spec : Prop :=
  ∀ n, P15016430549809509729.a n = A115451 n

end A115451

/-!
# A115454: Composite positive integers written in base 2.

The programs for A115454, the canonical program `A115454.P7778183975533024959` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115454 has offset 1).

The definition of A115454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115454.P7778183975533024959

`A007088(A002808(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115454

/-- `A007088(A002808(n+1))` -/
def P7778183975533024959.Spec : Prop :=
  ∀ n, P7778183975533024959.a n = A115454 (n + 1)

theorem P7778183975533024959.correct : P7778183975533024959.Spec := by
  intro n
  simp only [A115454, Nat.add_sub_cancel]

end A115454

/-! ## A115454.P3486205398455818952

`A007088(A018252(n+2))`
-/

namespace A115454.P3486205398455818952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A018252 (n + 2)).toNat

end

end A115454.P3486205398455818952

namespace A115454

/-- `A007088(A018252(n+2))` -/
def P3486205398455818952.Spec : Prop :=
  ∀ n, P3486205398455818952.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P1332215553888804665

`A007088(A141468(n+3))`
-/

namespace A115454.P1332215553888804665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A141468 (n + 3)).toNat

end

end A115454.P1332215553888804665

namespace A115454

/-- `A007088(A141468(n+3))` -/
def P1332215553888804665.Spec : Prop :=
  ∀ n, P1332215553888804665.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P13109144587579847709

`A007088(lt[1, A074206(n)])`
-/

namespace A115454.P13109144587579847709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115454.P13109144587579847709

namespace A115454

/-- `A007088(lt[1, A074206(n)])` -/
def P13109144587579847709.Spec : Prop :=
  ∀ n, P13109144587579847709.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P7294860582714865639

`A007088(lt[1, A175126(n)])`
-/

namespace A115454.P7294860582714865639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115454.P7294860582714865639

namespace A115454

/-- `A007088(lt[1, A175126(n)])` -/
def P7294860582714865639.Spec : Prop :=
  ∀ n, P7294860582714865639.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P15928966729849677419

`A007088(lt[1, A328772(n)])`
-/

namespace A115454.P15928966729849677419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115454.P15928966729849677419

namespace A115454

/-- `A007088(lt[1, A328772(n)])` -/
def P15928966729849677419.Spec : Prop :=
  ∀ n, P15928966729849677419.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P2369406886482508268

`A007088(lt[1, A292504(n+1)]+1)`
-/

namespace A115454.P2369406886482508268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A115454.P2369406886482508268

namespace A115454

/-- `A007088(lt[1, A292504(n+1)]+1)` -/
def P2369406886482508268.Spec : Prop :=
  ∀ n, P2369406886482508268.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P10064505613192647877

`A007088(lt[A006530(n+1), n]+1)`
-/

namespace A115454.P10064505613192647877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A115454.P10064505613192647877

namespace A115454

/-- `A007088(lt[A006530(n+1), n]+1)` -/
def P10064505613192647877.Spec : Prop :=
  ∀ n, P10064505613192647877.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P533682387681544584

`A007088(lt[A020639(n+1), n]+1)`
-/

namespace A115454.P533682387681544584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A115454.P533682387681544584

namespace A115454

/-- `A007088(lt[A020639(n+1), n]+1)` -/
def P533682387681544584.Spec : Prop :=
  ∀ n, P533682387681544584.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P12508257226553883998

`A007088(A053767(n+1)-A053767(n))`
-/

namespace A115454.P12508257226553883998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A053767 (n + 1) - A053767 n).toNat

end

end A115454.P12508257226553883998

namespace A115454

/-- `A007088(A053767(n+1)-A053767(n))` -/
def P12508257226553883998.Spec : Prop :=
  ∀ n, P12508257226553883998.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P18081300093860012986

`A007088(lt[2, A225244(n)])`
-/

namespace A115454.P18081300093860012986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115454.P18081300093860012986

namespace A115454

/-- `A007088(lt[2, A225244(n)])` -/
def P18081300093860012986.Spec : Prop :=
  ∀ n, P18081300093860012986.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P15434754473033951156

`A007088(lt[2, A319410(n)])`
-/

namespace A115454.P15434754473033951156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115454.P15434754473033951156

namespace A115454

/-- `A007088(lt[2, A319410(n)])` -/
def P15434754473033951156.Spec : Prop :=
  ∀ n, P15434754473033951156.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P14321119754582819309

`A169965(A002808(n+1)+1)/2`
-/

namespace A115454.P14321119754582819309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A002808 (n + 1) + 1).toNat : ℚ) / 2

end

end A115454.P14321119754582819309

namespace A115454

/-- `A169965(A002808(n+1)+1)/2` -/
def P14321119754582819309.Spec : Prop :=
  ∀ n, P14321119754582819309.a n = (A115454 (n + 1) : ℚ)

end A115454

/-! ## A115454.P5377125773876291638

`A169967(A002808(n+1)+1)/4`
-/

namespace A115454.P5377125773876291638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (A002808 (n + 1) + 1).toNat : ℚ) / 4

end

end A115454.P5377125773876291638

namespace A115454

/-- `A169967(A002808(n+1)+1)/4` -/
def P5377125773876291638.Spec : Prop :=
  ∀ n, P5377125773876291638.a n = (A115454 (n + 1) : ℚ)

end A115454

/-! ## A115454.P17198490489545866562

`A185544(A282671(n+1))`
-/

namespace A115454.P17198490489545866562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282671 (n + 1)).toNat

end

end A115454.P17198490489545866562

namespace A115454

/-- `A185544(A282671(n+1))` -/
def P17198490489545866562.Spec : Prop :=
  ∀ n, P17198490489545866562.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P12457437724024646170

`A185544(A139270(n+2))`
-/

namespace A115454.P12457437724024646170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A139270 (n + 2)).toNat

end

end A115454.P12457437724024646170

namespace A115454

/-- `A185544(A139270(n+2))` -/
def P12457437724024646170.Spec : Prop :=
  ∀ n, P12457437724024646170.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P6588306663054464245

`A185544(2*A018252(n+2))`
-/

namespace A115454.P6588306663054464245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A018252 (n + 2)).toNat

end

end A115454.P6588306663054464245

namespace A115454

/-- `A185544(2*A018252(n+2))` -/
def P6588306663054464245.Spec : Prop :=
  ∀ n, P6588306663054464245.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P12015344072721921139

`A007088(lt[A019320(n), A131577(n)])`
-/

namespace A115454.P12015344072721921139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115454.P12015344072721921139

namespace A115454

/-- `A007088(lt[A019320(n), A131577(n)])` -/
def P12015344072721921139.Spec : Prop :=
  ∀ n, P12015344072721921139.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P12366021291193986239

`A007088(lt[A019320(n), A000225(n)])`
-/

namespace A115454.P12366021291193986239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115454.P12366021291193986239

namespace A115454

/-- `A007088(lt[A019320(n), A000225(n)])` -/
def P12366021291193986239.Spec : Prop :=
  ∀ n, P12366021291193986239.a n = A115454 (n + 1)

end A115454

/-! ## A115454.P9953244352085199993

`A085209(A324600(n+2))`
-/

namespace A115454.P9953244352085199993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085209 (A324600 (n + 2)).toNat

end

end A115454.P9953244352085199993

namespace A115454

/-- `A085209(A324600(n+2))` -/
def P9953244352085199993.Spec : Prop :=
  ∀ n, P9953244352085199993.a n = A115454 (n + 1)

end A115454

/-!
# A115455: a(n) = number of reverse alternating fixed-point-free involutions w on 1,2,...,2n, i.e., w(1) < w(2) > w(3) < w(4) > ... < w(2n), w^2=1 and w(i) != i for all i.

The programs for A115455, there is no canonical definition to state claims against.
-/

/-! ## A115455.P15976347195157369744

`A007779(n)-a(n-1)` with `a(0)=1`
-/

namespace A115455.P15976347195157369744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007779 n - a (n - 1)

end

end A115455.P15976347195157369744

/-! ## A115455.P13955401297239577559

`A294602(∏{p}[A321128(3*n+1)+A000142(n), #])`
-/

namespace A115455.P13955401297239577559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321128 (3 * n + 1) + A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A115455.P13955401297239577559

/-! ## A115455.P10614431175527108430

`A373074(A341912(2*n+1)-A000700(3*(n+1)))`
-/

namespace A115455.P10614431175527108430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (A341912 (2 * n + 1 + 15) - A000700 (3 * (n + 1))).toNat

end

end A115455.P10614431175527108430

/-!
# A115457: Number of monic irreducible polynomials of degree n in GF(2)[x,y].

The programs for A115457, there is no canonical definition to state claims against.
-/

/-! ## A115457.P1142677669021111211

`∏{e}[2^n, A152128(#)]`
-/

namespace A115457.P1142677669021111211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A152128 (Nat.factorization (f1 n) p)

end

end A115457.P1142677669021111211

/-! ## A115457.P7254289417224089319

`C(A152128(n), ceil(sin(n)²))`
-/

namespace A115457.P7254289417224089319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152128 n).toNat ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

end

end A115457.P7254289417224089319

/-! ## A115457.P18122534736851968360

`A152128(n)+A000007(n)`
-/

namespace A115457.P18122534736851968360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152128 n + A000007 n

end

end A115457.P18122534736851968360

/-! ## A115457.P9119292177302837596

`A152128(n)+A076710(n)`
-/

namespace A115457.P9119292177302837596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152128 n + A076710 n

end

end A115457.P9119292177302837596

/-! ## A115457.P14099593352150041805

`A152128(n)^A178334(n)`
-/

namespace A115457.P14099593352150041805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152128 n : ℚ) ^ (A178334 n : ℤ)

end

end A115457.P14099593352150041805

/-!
# A115461: Number of monic irreducible polynomials of degree n in GF(3)[x,y].

The programs for A115461, there is no canonical definition to state claims against.
-/

/-! ## A115461.P18276525370066017340

`∏{e}[2^n, A152129(#)]`
-/

namespace A115461.P18276525370066017340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A152129 (Nat.factorization (f1 n) p)

end

end A115461.P18276525370066017340

/-! ## A115461.P9988477928721451164

`A152129(n)+char[(8*n)²]`
-/

namespace A115461.P9988477928721451164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152129 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A115461.P9988477928721451164

/-! ## A115461.P5401555424276363116

`A152129(n%a(n-1))` with `a(0)=1, a(1)=12`
-/

namespace A115461.P5401555424276363116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A152129 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A115461.P5401555424276363116

/-! ## A115461.P9653843656418273433

`A152129(n)^A178334(n)`
-/

namespace A115461.P9653843656418273433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152129 n : ℚ) ^ (A178334 n : ℤ)

end

end A115461.P9653843656418273433

/-! ## A115461.P16078856168598224807

`gcd(A076710(n), A152129(n))`
-/

namespace A115461.P16078856168598224807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076710 n) (A152129 n)

end

end A115461.P16078856168598224807

/-!
# A115465: Number of monic irreducible polynomials of degree n in GF(5)[x,y].

The programs for A115465, there is no canonical definition to state claims against.
-/

/-! ## A115465.P1921498672101037719

`C(A152131(n), ceil(sin(n)²))`
-/

namespace A115465.P1921498672101037719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152131 n).toNat ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

end

end A115465.P1921498672101037719

/-! ## A115465.P17608778533688388681

`∏{e}[A000079(n), A152131(#)]`
-/

namespace A115465.P17608778533688388681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A152131 (Nat.factorization (f1 n).natAbs p)

end

end A115465.P17608778533688388681

/-! ## A115465.P8372292873353570444

`∏{e}[A008862(n), A152131(#)]`
-/

namespace A115465.P8372292873353570444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A152131 (Nat.factorization (f1 n).natAbs p)

end

end A115465.P8372292873353570444

/-! ## A115465.P13381259905520592167

`A152140(∑[n])+A152131(n)`
-/

namespace A115465.P13381259905520592167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (∑ j ∈ Finset.range (n + 1), f1 j) + A152131 n

end

end A115465.P13381259905520592167

/-!
# A115473: Number of monic irreducible polynomials of degree 2 in GF(2)[x1,...,xn].

The programs for A115473, there is no canonical definition to state claims against.
-/

/-! ## A115473.P2186250864881229133

`A000225(A000217(n+2))-A000217(A000225(n+2))`
-/

namespace A115473.P2186250864881229133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000217 (n + 2)).toNat - A000217 (A000225 (n + 2)).toNat

end

end A115473.P2186250864881229133

/-! ## A115473.P11062168825822417662

`A095121(A000096(n+1))-A000096(A095121(n+1))`
-/

namespace A115473.P11062168825822417662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (A000096 (n + 1)).toNat - A000096 (A095121 (n + 1)).toNat

end

end A115473.P11062168825822417662

/-!
# A115489: Number of monic irreducible polynomials of degree 3 in GF(2^n)[x].

The programs for A115489, the canonical program `A115489.P4070022247930319062` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115489 has offset 1).

The definition of A115489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115489.P4070022247930319062

`10*a(n-1)-16*a(n-2)` with `a(0)=2, a(1)=20`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115489

/-- `10*a(n-1)-16*a(n-2)` -/
def P4070022247930319062.Spec : Prop :=
  ∀ n, P4070022247930319062.a n = A115489 (n + 1)

theorem P4070022247930319062.correct : P4070022247930319062.Spec := by
  intro n
  simp only [A115489, Nat.add_sub_cancel]

end A115489

/-! ## A115489.P15579248164902056338

`1/3*(8^(n+1)-2^(n+1))`
-/

namespace A115489.P15579248164902056338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((8 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) : ℚ)

end

end A115489.P15579248164902056338

namespace A115489

/-- `1/3*(8^(n+1)-2^(n+1))` -/
def P15579248164902056338.Spec : Prop :=
  ∀ n, P15579248164902056338.a n = (A115489 (n + 1) : ℚ)

theorem P15579248164902056338.correct : P15579248164902056338.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A115489, Nat.add_sub_cancel, A115489.P15579248164902056338.a, A115489.P4070022247930319062.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A115489, Nat.add_sub_cancel, A115489.P15579248164902056338.a, A115489.P4070022247930319062.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115489

/-! ## A115489.P15654189631533999805

`ogf(2/(1-10x+16x^2))`
-/

namespace A115489.P15654189631533999805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -10, 16] n

end

end A115489.P15654189631533999805

namespace A115489

/-- `ogf(2/(1-10x+16x^2))` -/
def P15654189631533999805.Spec : Prop :=
  ∀ n, P15654189631533999805.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P17205963230386140043

`lcm(2^(n+1), ∑[4^n])`
-/

namespace A115489.P17205963230386140043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115489.P17205963230386140043

namespace A115489

/-- `lcm(2^(n+1), ∑[4^n])` -/
def P17205963230386140043.Spec : Prop :=
  ∀ n, (P17205963230386140043.a n : ℤ) = A115489 (n + 1)

end A115489

/-! ## A115489.P16992118511647040544

`floor(2*(a(n-1)+8^n))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A115489.P16992118511647040544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + 8 ^ n)

end

end A115489.P16992118511647040544

namespace A115489

/-- `floor(2*(a(n-1)+8^n))` -/
def P16992118511647040544.Spec : Prop :=
  ∀ n, (P16992118511647040544.a n : ℤ) = A115489 (n + 1)

end A115489

/-! ## A115489.P5638137027599883851

`2^(n+1)+8*a(n-1)` with `a(0)=2`
-/

namespace A115489.P5638137027599883851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ (n + 1) + 8 * a (n - 1)

end

end A115489.P5638137027599883851

namespace A115489

/-- `2^(n+1)+8*a(n-1)` -/
def P5638137027599883851.Spec : Prop :=
  ∀ n, (P5638137027599883851.a n : ℤ) = A115489 (n + 1)

end A115489

/-! ## A115489.P1981550089153707307

`∑[4*a(n-1)]/2^-n` with `a(0)=2`
-/

namespace A115489.P1981550089153707307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A115489.P1981550089153707307

namespace A115489

/-- `∑[4*a(n-1)]/2^-n` -/
def P1981550089153707307.Spec : Prop :=
  ∀ n, P1981550089153707307.a n = (A115489 (n + 1) : ℚ)

end A115489

/-! ## A115489.P16411454041931371273

`floor(2^n*∑[4*a(n-1)])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A115489.P16411454041931371273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115489.P16411454041931371273

namespace A115489

/-- `floor(2^n*∑[4*a(n-1)])` -/
def P16411454041931371273.Spec : Prop :=
  ∀ n, (P16411454041931371273.a n : ℤ) = A115489 (n + 1)

end A115489

/-! ## A115489.P11639897202761096350

`or(2*a(n-1), 8*a(n-1))` with `a(0)=2`
-/

namespace A115489.P11639897202761096350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (2 * a (n - 1)) (8 * a (n - 1))

end

end A115489.P11639897202761096350

namespace A115489

/-- `or(2*a(n-1), 8*a(n-1))` -/
def P11639897202761096350.Spec : Prop :=
  ∀ n, (P11639897202761096350.a n : ℤ) = A115489 (n + 1)

end A115489

/-! ## A115489.P295849489134230453

`∑[2^n*A206374(n)]`
-/

namespace A115489.P295849489134230453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A206374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115489.P295849489134230453

namespace A115489

/-- `∑[2^n*A206374(n)]` -/
def P295849489134230453.Spec : Prop :=
  ∀ n, P295849489134230453.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P6706631938792061639

`A016131(n)+A016131(n)`
-/

namespace A115489.P6706631938792061639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016131 n + A016131 n

end

end A115489.P6706631938792061639

namespace A115489

/-- `A016131(n)+A016131(n)` -/
def P6706631938792061639.Spec : Prop :=
  ∀ n, P6706631938792061639.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P8830798427310819386

`A016162(n)+A016127(n)`
-/

namespace A115489.P8830798427310819386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016162 n + A016127 n

end

end A115489.P8830798427310819386

namespace A115489

/-- `A016162(n)+A016127(n)` -/
def P8830798427310819386.Spec : Prop :=
  ∀ n, P8830798427310819386.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P5430825871668465199

`A016290(n)+A006516(n+1)`
-/

namespace A115489.P5430825871668465199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n + A006516 (n + 1)

end

end A115489.P5430825871668465199

namespace A115489

/-- `A016290(n)+A006516(n+1)` -/
def P5430825871668465199.Spec : Prop :=
  ∀ n, P5430825871668465199.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P15853217838473730786

`A023001(n+1)+A016203(n)`
-/

namespace A115489.P15853217838473730786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 1) + A016203 n

end

end A115489.P15853217838473730786

namespace A115489

/-- `A023001(n+1)+A016203(n)` -/
def P15853217838473730786.Spec : Prop :=
  ∀ n, P15853217838473730786.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P4135428098882101561

`A147590(n+1)+A082412(n)`
-/

namespace A115489.P4135428098882101561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147590 (n + 1) + A082412 n

end

end A115489.P4135428098882101561

namespace A115489

/-- `A147590(n+1)+A082412(n)` -/
def P4135428098882101561.Spec : Prop :=
  ∀ n, P4135428098882101561.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P3933585996869448202

`A007613(n+1)-A014113(n)`
-/

namespace A115489.P3933585996869448202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007613 (n + 1) - A014113 n

end

end A115489.P3933585996869448202

namespace A115489

/-- `A007613(n+1)-A014113(n)` -/
def P3933585996869448202.Spec : Prop :=
  ∀ n, P3933585996869448202.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P207520993707027115

`A083332(2*n)+A082412(n)`
-/

namespace A115489.P207520993707027115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083332 (2 * n) + A082412 n

end

end A115489.P207520993707027115

namespace A115489

/-- `A083332(2*n)+A082412(n)` -/
def P207520993707027115.Spec : Prop :=
  ∀ n, P207520993707027115.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P15454506018459276207

`A007613(n+1)-A078008(n+1)`
-/

namespace A115489.P15454506018459276207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007613 (n + 1) - A078008 (n + 1)

end

end A115489.P15454506018459276207

namespace A115489

/-- `A007613(n+1)-A078008(n+1)` -/
def P15454506018459276207.Spec : Prop :=
  ∀ n, P15454506018459276207.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P17112214715547966171

`A132805(n+1)-A001045(n+1)`
-/

namespace A115489.P17112214715547966171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132805 (n + 1) - A001045 (n + 1)

end

end A115489.P17112214715547966171

namespace A115489

/-- `A132805(n+1)-A001045(n+1)` -/
def P17112214715547966171.Spec : Prop :=
  ∀ n, P17112214715547966171.a n = A115489 (n + 1)

end A115489

/-! ## A115489.P7417906640586322168

`A103334(n+2)-A000079(n+1)`
-/

namespace A115489.P7417906640586322168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103334 (n + 2) - A000079 (n + 1)

end

end A115489.P7417906640586322168

namespace A115489

/-- `A103334(n+2)-A000079(n+1)` -/
def P7417906640586322168.Spec : Prop :=
  ∀ n, P7417906640586322168.a n = A115489 (n + 1)

end A115489

/-!
# A115490: Number of monic irreducible polynomials of degree 4 in GF(2^n)[x].

The programs for A115490, the canonical program `A115490.P15906913298254431705` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115490 has offset 1).

The definition of A115490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115490.P6557715808325938504

`(16^(n+1)-4^(n+1))/4`
-/

namespace A115490.P6557715808325938504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A115490.P6557715808325938504

namespace A115490

/-- `(16^(n+1)-4^(n+1))/4` -/
def P6557715808325938504.Spec : Prop :=
  ∀ n, P6557715808325938504.a n = (A115490 (n + 1) : ℚ)

theorem P6557715808325938504.correct : P6557715808325938504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A115490, Nat.add_sub_cancel, A115490.P6557715808325938504.a, A115490.P15906913298254431705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A115490, Nat.add_sub_cancel, A115490.P6557715808325938504.a, A115490.P15906913298254431705.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115490

/-! ## A115490.P15906913298254431705

`20*a(n-1)-64*a(n-2)` with `a(0)=3, a(1)=60`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115490

/-- `20*a(n-1)-64*a(n-2)` -/
def P15906913298254431705.Spec : Prop :=
  ∀ n, P15906913298254431705.a n = A115490 (n + 1)

theorem P15906913298254431705.correct : P15906913298254431705.Spec := by
  intro n
  simp only [A115490, Nat.add_sub_cancel]

end A115490

/-! ## A115490.P13792560124575231210

`lcm(4^(n+1)-1, 4^n)`
-/

namespace A115490.P13792560124575231210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 ^ (n + 1) : ℤ) - 1) (4 ^ n : ℤ)

end

end A115490.P13792560124575231210

namespace A115490

/-- `lcm(4^(n+1)-1, 4^n)` -/
def P13792560124575231210.Spec : Prop :=
  ∀ n, (P13792560124575231210.a n : ℤ) = A115490 (n + 1)

end A115490

/-! ## A115490.P7927422496497713976

`4^n*∑[4*a(n-1)]` with `a(0)=3`
-/

namespace A115490.P7927422496497713976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115490.P7927422496497713976

namespace A115490

/-- `4^n*∑[4*a(n-1)]` -/
def P7927422496497713976.Spec : Prop :=
  ∀ n, (P7927422496497713976.a n : ℤ) = A115490 (n + 1)

end A115490

/-! ## A115490.P13467806978959444175

`4*or(4*a(n-1), a(n-1))` with `a(0)=3`
-/

namespace A115490.P13467806978959444175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  4 * Nat.lor (4 * a (n - 1)) (a (n - 1))

end

end A115490.P13467806978959444175

namespace A115490

/-- `4*or(4*a(n-1), a(n-1))` -/
def P13467806978959444175.Spec : Prop :=
  ∀ n, (P13467806978959444175.a n : ℤ) = A115490 (n + 1)

end A115490

/-! ## A115490.P7325525064398943708

`A171499(2*n)`
-/

namespace A115490.P7325525064398943708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171499 (2 * n)

end

end A115490.P7325525064398943708

namespace A115490

/-- `A171499(2*n)` -/
def P7325525064398943708.Spec : Prop :=
  ∀ n, P7325525064398943708.a n = A115490 (n + 1)

end A115490

/-! ## A115490.P16291000204258927212

`3*A166984(n)`
-/

namespace A115490.P16291000204258927212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A166984 n

end

end A115490.P16291000204258927212

namespace A115490

/-- `3*A166984(n)` -/
def P16291000204258927212.Spec : Prop :=
  ∀ n, P16291000204258927212.a n = A115490 (n + 1)

end A115490

/-! ## A115490.P4826935036915171297

`A187560(2*n)+1`
-/

namespace A115490.P4826935036915171297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187560 (2 * n) + 1

end

end A115490.P4826935036915171297

namespace A115490

/-- `A187560(2*n)+1` -/
def P4826935036915171297.Spec : Prop :=
  ∀ n, P4826935036915171297.a n = A115490 (n + 1)

theorem P4826935036915171297.correct : P4826935036915171297.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A115490, Nat.add_sub_cancel, A115490.P4826935036915171297.a, A115490.P15906913298254431705.a, A187560, A187560.P15799347918775068222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A115490, Nat.add_sub_cancel, A115490.P4826935036915171297.a, A115490.P15906913298254431705.a, A187560, A187560.P15799347918775068222.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115490

/-! ## A115490.P5714533448941489690

`A073996(2*n+3)`
-/

namespace A115490.P5714533448941489690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (2 * n + 3)

end

end A115490.P5714533448941489690

namespace A115490

/-- `A073996(2*n+3)` -/
def P5714533448941489690.Spec : Prop :=
  ∀ n, P5714533448941489690.a n = A115490 (n + 1)

end A115490

/-! ## A115490.P896201844476157955

`A073999(2*n+3)`
-/

namespace A115490.P896201844476157955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073999 (2 * n + 3)

end

end A115490.P896201844476157955

namespace A115490

/-- `A073999(2*n+3)` -/
def P896201844476157955.Spec : Prop :=
  ∀ n, P896201844476157955.a n = A115490 (n + 1)

end A115490

/-!
# A115491: Number of monic irreducible polynomials of degree 5 in GF(2^n)[x].

The programs for A115491, the canonical program `A115491.P17872085214319445361` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115491 has offset 1).

The definition of A115491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115491.P17872085214319445361

`34*a(n-1)-64*a(n-2)` with `a(0)=6, a(1)=204`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115491

/-- `34*a(n-1)-64*a(n-2)` -/
def P17872085214319445361.Spec : Prop :=
  ∀ n, P17872085214319445361.a n = A115491 (n + 1)

theorem P17872085214319445361.correct : P17872085214319445361.Spec := by
  intro n
  simp only [A115491, Nat.add_sub_cancel]

end A115491

/-! ## A115491.P11826586531539607384

`(32^(n+2)-16*2^(n+2))/160`
-/

namespace A115491.P11826586531539607384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((32 ^ (n + 2) : ℤ) - (16 * 2 ^ (n + 2) : ℤ) : ℚ) / 160

end

end A115491.P11826586531539607384

namespace A115491

/-- `(32^(n+2)-16*2^(n+2))/160` -/
def P11826586531539607384.Spec : Prop :=
  ∀ n, P11826586531539607384.a n = (A115491 (n + 1) : ℚ)

theorem P11826586531539607384.correct : P11826586531539607384.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A115491, Nat.add_sub_cancel, A115491.P11826586531539607384.a, A115491.P17872085214319445361.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A115491, Nat.add_sub_cancel, A115491.P11826586531539607384.a, A115491.P17872085214319445361.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A115491

/-! ## A115491.P4311362049768334417

`A007909(A016897(n))-A007909(n)`
-/

namespace A115491.P4311362049768334417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (A016897 n).toNat - A007909 n

end

end A115491.P4311362049768334417

namespace A115491

/-- `A007909(A016897(n))-A007909(n)` -/
def P4311362049768334417.Spec : Prop :=
  ∀ n, P4311362049768334417.a n = A115491 (n + 1)

end A115491

/-! ## A115491.P7368601559505435715

`lcm(A112627(A005843(n+1)), A164073(2*(n+2)))`
-/

namespace A115491.P7368601559505435715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112627 (A005843 (n + 1)).toNat) (A164073 (2 * (n + 2)))

end

end A115491.P7368601559505435715

namespace A115491

/-- `lcm(A112627(A005843(n+1)), A164073(2*(n+2)))` -/
def P7368601559505435715.Spec : Prop :=
  ∀ n, (P7368601559505435715.a n : ℤ) = A115491 (n + 1)

end A115491

/-! ## A115491.P14003319457360019385

`A007909(A016897(n))+A007909(n)/A153881(n+2)`
-/

namespace A115491.P14003319457360019385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007909 (A016897 n).toNat : ℚ) + (A007909 n : ℚ) / (A153881 (n + 2) : ℚ)

end

end A115491.P14003319457360019385

namespace A115491

/-- `A007909(A016897(n))+A007909(n)/A153881(n+2)` -/
def P14003319457360019385.Spec : Prop :=
  ∀ n, P14003319457360019385.a n = (A115491 (n + 1) : ℚ)

end A115491

/-!
# A115492: Number of monic irreducible polynomials of degree 2 in GF(2^n)[x,y].

The programs for A115492, there is no canonical definition to state claims against.
-/

/-! ## A115492.P15019043439691550587

`A000225(3*(n+1))*A164051(n+1)`
-/

namespace A115492.P15019043439691550587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (3 * (n + 1)) * A164051 (n + 1)

end

end A115492.P15019043439691550587

/-! ## A115492.P6044093514951554343

`(A000079(3*(n+1))-1)*A164051(n+1)`
-/

namespace A115492.P6044093514951554343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (3 * (n + 1)) - 1) * A164051 (n + 1)

end

end A115492.P6044093514951554343

/-! ## A115492.P4069053105369352924

`(A000302(n+1)+A000079(n))*A024088(n+1)`
-/

namespace A115492.P4069053105369352924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 (n + 1) + A000079 n) * A024088 (n + 1)

end

end A115492.P4069053105369352924

/-! ## A115492.P9400851365885923026

`(A034008(n+3)²+A000079(n))*A000225(3*(n+1))`
-/

namespace A115492.P9400851365885923026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034008 (n + 3) ^ 2 + A000079 n) * A000225 (3 * (n + 1))

end

end A115492.P9400851365885923026

/-! ## A115492.P13176888748203039875

`(A034008(2*(n+2))+A000079(n))*A000225(3*(n+1))`
-/

namespace A115492.P13176888748203039875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034008 (2 * (n + 2)) + A000079 n) * A000225 (3 * (n + 1))

end

end A115492.P13176888748203039875

/-! ## A115492.P1629820816904557152

`(A094373(2*n+3)+A000225(n))*A000225(3*(n+1))`
-/

namespace A115492.P1629820816904557152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094373 (2 * n + 3) + A000225 n) * A000225 (3 * (n + 1))

end

end A115492.P1629820816904557152

