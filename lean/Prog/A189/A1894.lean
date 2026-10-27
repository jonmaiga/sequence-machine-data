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
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A189400: n+[nr/s]+[nt/s]; r=1, s=sqrt(e), t=e.

The programs for A189400, the canonical program `A189400.P13699763659893574540` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189400 has offset 1).

The definition of A189400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189400.P13699763659893574540

`n+1+floor((n+1)/sqrt(e))+floor((n+1)*sqrt(e))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189400

/-- `n+1+floor((n+1)/sqrt(e))+floor((n+1)*sqrt(e))` -/
def P13699763659893574540.Spec : Prop :=
  ∀ n, P13699763659893574540.a n = A189400 (n + 1)

theorem P13699763659893574540.correct : P13699763659893574540.Spec := by
  intro n
  simp only [A189400, Nat.add_sub_cancel]

end A189400

/-! ## A189400.P2945586181482397509

`A111660(A134860(n+1))`
-/

namespace A189400.P2945586181482397509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A134860 (n + 1)).toNat

end

end A189400.P2945586181482397509

namespace A189400

/-- `A111660(A134860(n+1))` -/
def P2945586181482397509.Spec : Prop :=
  ∀ n, P2945586181482397509.a n = A189400 (n + 1)

end A189400

/-!
# A189401: n+[nr/t]+[ns/t]; r=1, s=sqrt(e), t=e.

The programs for A189401, the canonical program `A189401.P4880423856562258179` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189401 has offset 1).

The definition of A189401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189401.P4880423856562258179

`A189400(n+1)+A189403(n+1)-A189399(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189401

/-- `A189400(n+1)+A189403(n+1)-A189399(n+1)` -/
def P4880423856562258179.Spec : Prop :=
  ∀ n, P4880423856562258179.a n = A189401 (n + 1)

theorem P4880423856562258179.correct : P4880423856562258179.Spec := by
  intro n
  simp only [A189401, Nat.add_sub_cancel]

end A189401

/-! ## A189401.P855081950429532104

`A189400(n+1)-(n+1+A061402(n+1)+A022843(n+1)-A189403(n+1))`
-/

namespace A189401.P855081950429532104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189400 (n + 1) - ((n + 1 : ℤ) + (A061402 (n + 1) + A022843 (n + 1)) - A189403 (n + 1))

end

end A189401.P855081950429532104

namespace A189401

/-- `A189400(n+1)-(n+1+A061402(n+1)+A022843(n+1)-A189403(n+1))` -/
def P855081950429532104.Spec : Prop :=
  ∀ n, P855081950429532104.a n = A189401 (n + 1)

end A189401

/-! ## A189401.P6657911456282942160

`A108611(2*floor(ϕ*(n+1))-1)+floor((n+1)/(sqrt(3)-1))`
-/

namespace A189401.P6657911456282942160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1).toNat + ⌊(n + 1 : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋

end

end A189401.P6657911456282942160

namespace A189401

/-- `A108611(2*floor(ϕ*(n+1))-1)+floor((n+1)/(sqrt(3)-1))` -/
def P6657911456282942160.Spec : Prop :=
  ∀ n, P6657911456282942160.a n = A189401 (n + 1)

end A189401

/-! ## A189401.P10563349585619924973

`2*(n+1)-A000002(A272330(3*n+2))`
-/

namespace A189401.P10563349585619924973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000002 (A272330 (3 * n + 2)).toNat

end

end A189401.P10563349585619924973

namespace A189401

/-- `2*(n+1)-A000002(A272330(3*n+2))` -/
def P10563349585619924973.Spec : Prop :=
  ∀ n, P10563349585619924973.a n = A189401 (n + 1)

end A189401

/-! ## A189401.P3124349020073945826

`A353627(A193507(3*(n+1))+A147650(n+1))+2*n`
-/

namespace A189401.P3124349020073945826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (A193507 (3 * (n + 1)) + A147650 (n + 1)).toNat + (2 * n : ℤ)

end

end A189401.P3124349020073945826

namespace A189401

/-- `A353627(A193507(3*(n+1))+A147650(n+1))+2*n` -/
def P3124349020073945826.Spec : Prop :=
  ∀ n, P3124349020073945826.a n = A189401 (n + 1)

end A189401

/-!
# A189402: n+[ns/r]+[nt/r]; r=1, s=e, t=e^2.

The programs for A189402, the canonical program `A189402.P8311304485526110853` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189402 has offset 1).

The definition of A189402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189402.P8311304485526110853

`A182767(n+1)+A022843(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189402

/-- `A182767(n+1)+A022843(n+1)` -/
def P8311304485526110853.Spec : Prop :=
  ∀ n, P8311304485526110853.a n = A189402 (n + 1)

theorem P8311304485526110853.correct : P8311304485526110853.Spec := by
  intro n
  simp only [A189402, Nat.add_sub_cancel]

end A189402

/-! ## A189402.P14687956054065922981

`A182767(n+1)+∑[A276859(n+1)]`
-/

namespace A189402.P14687956054065922981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182767 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189402.P14687956054065922981

namespace A189402

/-- `A182767(n+1)+∑[A276859(n+1)]` -/
def P14687956054065922981.Spec : Prop :=
  ∀ n, P14687956054065922981.a n = A189402 (n + 1)

end A189402

/-! ## A189402.P7074628098579071593

`A182767(n+1)+record[A108599(n+1)]`
-/

namespace A189402.P7074628098579071593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182767 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189402.P7074628098579071593

namespace A189402

/-- `A182767(n+1)+record[A108599(n+1)]` -/
def P7074628098579071593.Spec : Prop :=
  ∀ n, P7074628098579071593.a n = A189402 (n + 1)

end A189402

/-! ## A189402.P11817209784251527785

`A182767(n+1)+A108599(A054385(n+1))`
-/

namespace A189402.P11817209784251527785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182767 (n + 1) + A108599 (A054385 (n + 1)).toNat

end

end A189402.P11817209784251527785

namespace A189402

/-- `A182767(n+1)+A108599(A054385(n+1))` -/
def P11817209784251527785.Spec : Prop :=
  ∀ n, P11817209784251527785.a n = A189402 (n + 1)

end A189402

/-!
# A189403: n+[nr/s]+[nt/s]; r=1, s=e, t=e^2.

The programs for A189403, the canonical program `A189403.P8871410371183353853` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189403 has offset 1).

The definition of A189403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189403.P3088057204174980739

`A189520(n+1)-2*(n+1)`
-/

namespace A189403.P3088057204174980739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189520 (n + 1) - (2 * (n + 1) : ℤ)

end

end A189403.P3088057204174980739

namespace A189403

/-- `A189520(n+1)-2*(n+1)` -/
def P3088057204174980739.Spec : Prop :=
  ∀ n, P3088057204174980739.a n = A189403 (n + 1)

theorem P3088057204174980739.correct : P3088057204174980739.Spec := by
  intro n
  simp only [A189403, Nat.add_sub_cancel, A189403.P3088057204174980739.a, A189403.P8871410371183353853.a, A000572, A000572.P3578859663019225295.a, A032634, A032634.P6588867285997603959.a, A189520, A189520.P1730264741793748391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189403

/-! ## A189403.P8871410371183353853

`A032634(n+1)+A000572(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189403

/-- `A032634(n+1)+A000572(n+1)` -/
def P8871410371183353853.Spec : Prop :=
  ∀ n, P8871410371183353853.a n = A189403 (n + 1)

theorem P8871410371183353853.correct : P8871410371183353853.Spec := by
  intro n
  simp only [A189403, Nat.add_sub_cancel]

end A189403

/-! ## A189403.P4997213190020861072

`A022843(n+1)+comp[A022843(n)+n]`
-/

namespace A189403.P4997213190020861072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A189403.P4997213190020861072

namespace A189403

/-- `A022843(n+1)+comp[A022843(n)+n]` -/
def P4997213190020861072.Spec : Prop :=
  ∀ n, P4997213190020861072.a n = A189403 (n + 1)

end A189403

/-! ## A189403.P12963848119934771246

`A189518(n+1)+A189519(n+1)-A005408(n)`
-/

namespace A189403.P12963848119934771246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189518 (n + 1) + (A189519 (n + 1) - A005408 n)

end

end A189403.P12963848119934771246

namespace A189403

/-- `A189518(n+1)+A189519(n+1)-A005408(n)` -/
def P12963848119934771246.Spec : Prop :=
  ∀ n, P12963848119934771246.a n = A189403 (n + 1)

end A189403

/-! ## A189403.P3879961156668869191

`A000572(n+1)+A292647(n+1)%A103517(n)`
-/

namespace A189403.P3879961156668869191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) + Int.tmod (A292647 (n + 1)) (A103517 n)

end

end A189403.P3879961156668869191

namespace A189403

/-- `A000572(n+1)+A292647(n+1)%A103517(n)` -/
def P3879961156668869191.Spec : Prop :=
  ∀ n, P3879961156668869191.a n = A189403 (n + 1)

end A189403

/-! ## A189403.P13199314786993739248

`A189399(n+1)+A189401(n+1)-A189400(n+1)`
-/

namespace A189403.P13199314786993739248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189399 (n + 1) + (A189401 (n + 1) - A189400 (n + 1))

end

end A189403.P13199314786993739248

namespace A189403

/-- `A189399(n+1)+A189401(n+1)-A189400(n+1)` -/
def P13199314786993739248.Spec : Prop :=
  ∀ n, P13199314786993739248.a n = A189403 (n + 1)

theorem P13199314786993739248.correct : P13199314786993739248.Spec := by
  intro n
  simp only [A189403, Nat.add_sub_cancel, A189403.P13199314786993739248.a, A189403.P8871410371183353853.a, A000572, A000572.P3578859663019225295.a, A032634, A032634.P6588867285997603959.a, A189399, A189399.P1112579676270563252.a, A189400, A189400.P13699763659893574540.a, A189401, A189401.P4880423856562258179.a, A061402, A061402.P2254178269698688534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A189403

/-! ## A189403.P10043174319886341016

`A292647(n+1)+A000210(n+1)`
-/

namespace A189403.P10043174319886341016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292647 (n + 1) + A000210 (n + 1)

end

end A189403.P10043174319886341016

namespace A189403

/-- `A292647(n+1)+A000210(n+1)` -/
def P10043174319886341016.Spec : Prop :=
  ∀ n, P10043174319886341016.a n = A189403 (n + 1)

end A189403

/-!
# A189404: n+[nr/t]+[ns/t]; r=1, s=e, t=e^2.

The programs for A189404, the canonical program `A189404.P4406585851978852284` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189404 has offset 1).

The definition of A189404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189404.P4406585851978852284

`A182768(n+1)+A032634(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189404

/-- `A182768(n+1)+A032634(n+1)` -/
def P4406585851978852284.Spec : Prop :=
  ∀ n, P4406585851978852284.a n = A189404 (n + 1)

theorem P4406585851978852284.correct : P4406585851978852284.Spec := by
  intro n
  simp only [A189404, Nat.add_sub_cancel]

end A189404

/-! ## A189404.P12135084522890365532

`A182768(n+1)+A189403(n+1)-A000572(n+1)`
-/

namespace A189404.P12135084522890365532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182768 (n + 1) + (A189403 (n + 1) - A000572 (n + 1))

end

end A189404.P12135084522890365532

namespace A189404

/-- `A182768(n+1)+A189403(n+1)-A000572(n+1)` -/
def P12135084522890365532.Spec : Prop :=
  ∀ n, P12135084522890365532.a n = A189404 (n + 1)

theorem P12135084522890365532.correct : P12135084522890365532.Spec := by
  intro n
  simp only [A189404, Nat.add_sub_cancel, A189404.P12135084522890365532.a, A189404.P4406585851978852284.a, A000572, A000572.P3578859663019225295.a, A032634, A032634.P6588867285997603959.a, A182768, A182768.P18079098345805938446.a, A189403, A189403.P8871410371183353853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189404

/-! ## A189404.P5246056203168478759

`A209899(n+2)+A006594(n+1)`
-/

namespace A189404.P5246056203168478759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209899 (n + 2) + A006594 (n + 1)

end

end A189404.P5246056203168478759

namespace A189404

/-- `A209899(n+2)+A006594(n+1)` -/
def P5246056203168478759.Spec : Prop :=
  ∀ n, P5246056203168478759.a n = A189404 (n + 1)

end A189404

/-! ## A189404.P17930273559261497232

`or(A025441(A319501(n)), A054406(n+1))-A008619(A292646(n+1))`
-/

namespace A189404.P17930273559261497232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 (A319501 n).toNat) (A054406 (n + 1)) - A008619 (A292646 (n + 1)).toNat

end

end A189404.P17930273559261497232

namespace A189404

/-- `or(A025441(A319501(n)), A054406(n+1))-A008619(A292646(n+1))` -/
def P17930273559261497232.Spec : Prop :=
  ∀ n, P17930273559261497232.a n = A189404 (n + 1)

end A189404

/-! ## A189404.P16697656724625399719

`or(A025441(A319501(n)), A054406(n+1))-A008619(∑[char[A006594(n+1)]+1])`
-/

namespace A189404.P16697656724625399719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 (A319501 n).toNat) (A054406 (n + 1)) - A008619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189404.P16697656724625399719

namespace A189404

/-- `or(A025441(A319501(n)), A054406(n+1))-A008619(∑[char[A006594(n+1)]+1])` -/
def P16697656724625399719.Spec : Prop :=
  ∀ n, P16697656724625399719.a n = A189404 (n + 1)

end A189404

/-!
# A189405: n+[ns/r]+[nt/r]; r=1, s=-1+sqrt(3), t=1+sqrt(3).

The programs for A189405, the canonical program `A189405.P2004610319566400979` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189405 has offset 1).

The definition of A189405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189405.P17525026065593979427

`2*floor((n+1)*sqrt(3))+1+n`
-/

namespace A189405.P17525026065593979427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ + 1 + (n : ℤ)

end

end A189405.P17525026065593979427

namespace A189405

/-- `2*floor((n+1)*sqrt(3))+1+n` -/
def P17525026065593979427.Spec : Prop :=
  ∀ n, P17525026065593979427.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P11256548422634291468

`∑[dr(or(21, A080757(n)))]`
-/

namespace A189405.P11256548422634291468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor 21 (A080757 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P11256548422634291468

namespace A189405

/-- `∑[dr(or(21, A080757(n)))]` -/
def P11256548422634291468.Spec : Prop :=
  ∀ n, (P11256548422634291468.a n : ℤ) = A189405 (n + 1)

end A189405

/-! ## A189405.P2091400012825364281

`∑[or(1, A276865(n+1))]`
-/

namespace A189405.P2091400012825364281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276865 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P2091400012825364281

namespace A189405

/-- `∑[or(1, A276865(n+1))]` -/
def P2091400012825364281.Spec : Prop :=
  ∀ n, P2091400012825364281.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P462592238950750743

`∑[2*A007538(n+1)-1]`
-/

namespace A189405.P462592238950750743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007538 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P462592238950750743

namespace A189405

/-- `∑[2*A007538(n+1)-1]` -/
def P462592238950750743.Spec : Prop :=
  ∀ n, P462592238950750743.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P7405971625206274107

`∑[or(1, A188068(n+1)+3)]`
-/

namespace A189405.P7405971625206274107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188068 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P7405971625206274107

namespace A189405

/-- `∑[or(1, A188068(n+1)+3)]` -/
def P7405971625206274107.Spec : Prop :=
  ∀ n, P7405971625206274107.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P2004610319566400979

`abs(2*A022838(n+1)+Δ[n²]-n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189405

/-- `abs(2*A022838(n+1)+Δ[n²]-n)` -/
def P2004610319566400979.Spec : Prop :=
  ∀ n, P2004610319566400979.a n = A189405 (n + 1)

theorem P2004610319566400979.correct : P2004610319566400979.Spec := by
  intro n
  simp only [A189405, Nat.add_sub_cancel]

end A189405

/-! ## A189405.P11364872969480472751

`∑[A000040(3-Δ[A195120(n)])]`
-/

namespace A189405.P11364872969480472751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P11364872969480472751

namespace A189405

/-- `∑[A000040(3-Δ[A195120(n)])]` -/
def P11364872969480472751.Spec : Prop :=
  ∀ n, P11364872969480472751.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P16565622120268501305

`∑[A080757(n)+A007538(n+1)]`
-/

namespace A189405.P16565622120268501305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n + A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P16565622120268501305

namespace A189405

/-- `∑[A080757(n)+A007538(n+1)]` -/
def P16565622120268501305.Spec : Prop :=
  ∀ n, P16565622120268501305.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P6449052671219099601

`A188089(n+1)%A182778(n+1)`
-/

namespace A189405.P6449052671219099601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188089 (n + 1)) (A182778 (n + 1))

end

end A189405.P6449052671219099601

namespace A189405

/-- `A188089(n+1)%A182778(n+1)` -/
def P6449052671219099601.Spec : Prop :=
  ∀ n, P6449052671219099601.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P624077795860381170

`∑[2*A000032(Δ[A195120(n)])+1]`
-/

namespace A189405.P624077795860381170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P624077795860381170

namespace A189405

/-- `∑[2*A000032(Δ[A195120(n)])+1]` -/
def P624077795860381170.Spec : Prop :=
  ∀ n, P624077795860381170.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P2964242288816426956

`∑[A276865(n+1)+A188068(n+1)]`
-/

namespace A189405.P2964242288816426956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1) + A188068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P2964242288816426956

namespace A189405

/-- `∑[A276865(n+1)+A188068(n+1)]` -/
def P2964242288816426956.Spec : Prop :=
  ∀ n, P2964242288816426956.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P11128814377649235847

`abs(A022838(n+1)+A180123(n+1)-n)`
-/

namespace A189405.P11128814377649235847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022838 (n + 1) + (A180123 (n + 1) - (n : ℤ))|

end

end A189405.P11128814377649235847

namespace A189405

/-- `abs(A022838(n+1)+A180123(n+1)-n)` -/
def P11128814377649235847.Spec : Prop :=
  ∀ n, P11128814377649235847.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P17764855409559737204

`∑[2^Δ[comp[A054406(n+1)]]+1]`
-/

namespace A189405.P17764855409559737204
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P17764855409559737204

namespace A189405

/-- `∑[2^Δ[comp[A054406(n+1)]]+1]` -/
def P17764855409559737204.Spec : Prop :=
  ∀ n, P17764855409559737204.a n = (A189405 (n + 1) : ℚ)

end A189405

/-! ## A189405.P8259062470809058947

`∑[A000041(Δ[A188069(n+1)])]`
-/

namespace A189405.P8259062470809058947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P8259062470809058947

namespace A189405

/-- `∑[A000041(Δ[A188069(n+1)])]` -/
def P8259062470809058947.Spec : Prop :=
  ∀ n, P8259062470809058947.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P16884315146731292485

`∑[A005408(Δ[A172475(2*n)])]`
-/

namespace A189405.P16884315146731292485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189405.P16884315146731292485

namespace A189405

/-- `∑[A005408(Δ[A172475(2*n)])]` -/
def P16884315146731292485.Spec : Prop :=
  ∀ n, P16884315146731292485.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P3893200491503558994

`A182772(A054088(n+1))`
-/

namespace A189405.P3893200491503558994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (A054088 (n + 1)).toNat

end

end A189405.P3893200491503558994

namespace A189405

/-- `A182772(A054088(n+1))` -/
def P3893200491503558994.Spec : Prop :=
  ∀ n, P3893200491503558994.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P16571778409226621177

`A182772(∑[A007538(n+1)])`
-/

namespace A189405.P16571778409226621177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189405.P16571778409226621177

namespace A189405

/-- `A182772(∑[A007538(n+1)])` -/
def P16571778409226621177.Spec : Prop :=
  ∀ n, P16571778409226621177.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P12166448707163514115

`A182772(A180123(n+1)-n)`
-/

namespace A189405.P12166448707163514115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (A180123 (n + 1) - (n : ℤ)).toNat

end

end A189405.P12166448707163514115

namespace A189405

/-- `A182772(A180123(n+1)-n)` -/
def P12166448707163514115.Spec : Prop :=
  ∀ n, P12166448707163514115.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P12548746635660713282

`A182772(A022838(n+1)+1+n)`
-/

namespace A189405.P12548746635660713282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (A022838 (n + 1) + 1 + (n : ℤ)).toNat

end

end A189405.P12548746635660713282

namespace A189405

/-- `A182772(A022838(n+1)+1+n)` -/
def P12548746635660713282.Spec : Prop :=
  ∀ n, P12548746635660713282.a n = A189405 (n + 1)

end A189405

/-! ## A189405.P2132192233664269599

`A182772(A003512(n+1)-(n+1))`
-/

namespace A189405.P2132192233664269599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182772 (A003512 (n + 1) - (n + 1 : ℤ)).toNat

end

end A189405.P2132192233664269599

namespace A189405

/-- `A182772(A003512(n+1)-(n+1))` -/
def P2132192233664269599.Spec : Prop :=
  ∀ n, P2132192233664269599.a n = A189405 (n + 1)

end A189405

/-!
# A189406: n+[nr/s]+[nt/s]; r=1, s=-1+sqrt(3), t=1+sqrt(3).

The programs for A189406, the canonical program `A189406.P16545699037991193201` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189406 has offset 1).

The definition of A189406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189406.P2423556811814218642

`floor((sqrt(3)+3)*(n+1))+floor((n+1)/(sqrt(3)-1))`
-/

namespace A189406.P2423556811814218642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 3) * (n + 1 : ℝ)⌋ + ⌊(n + 1 : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋

end

end A189406.P2423556811814218642

namespace A189406

/-- `floor((sqrt(3)+3)*(n+1))+floor((n+1)/(sqrt(3)-1))` -/
def P2423556811814218642.Spec : Prop :=
  ∀ n, P2423556811814218642.a n = A189406 (n + 1)

end A189406

/-! ## A189406.P2874827671818536470

`floor(∑[xor(9, A276865(n+1))]/2)`
-/

namespace A189406.P2874827671818536470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A276865 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A189406.P2874827671818536470

namespace A189406

/-- `floor(∑[xor(9, A276865(n+1))]/2)` -/
def P2874827671818536470.Spec : Prop :=
  ∀ n, P2874827671818536470.a n = A189406 (n + 1)

end A189406

/-! ## A189406.P11499558417353780059

`abs(A182778(n+1)+floor((n+1)/(sqrt(3)-1)))`
-/

namespace A189406.P11499558417353780059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182778 (n + 1) + ⌊(n + 1 : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋|

end

end A189406.P11499558417353780059

namespace A189406

/-- `abs(A182778(n+1)+floor((n+1)/(sqrt(3)-1)))` -/
def P11499558417353780059.Spec : Prop :=
  ∀ n, P11499558417353780059.a n = A189406 (n + 1)

end A189406

/-! ## A189406.P8987967868173313234

`A000027(A182778(n+1)+A003511(n+1))`
-/

namespace A189406.P8987967868173313234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A182778 (n + 1) + A003511 (n + 1)).toNat

end

end A189406.P8987967868173313234

namespace A189406

/-- `A000027(A182778(n+1)+A003511(n+1))` -/
def P8987967868173313234.Spec : Prop :=
  ∀ n, P8987967868173313234.a n = A189406 (n + 1)

end A189406

/-! ## A189406.P16545699037991193201

`A000027(A003512(n+1)+A188070(n+1)+n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189406

/-- `A000027(A003512(n+1)+A188070(n+1)+n)` -/
def P16545699037991193201.Spec : Prop :=
  ∀ n, P16545699037991193201.a n = A189406 (n + 1)

theorem P16545699037991193201.correct : P16545699037991193201.Spec := by
  intro n
  simp only [A189406, Nat.add_sub_cancel]

end A189406

/-! ## A189406.P16736632223099221900

`A000027(A003512(n+1)+A022838(n+1)+A014245(n+1))`
-/

namespace A189406.P16736632223099221900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003512 (n + 1) + (A022838 (n + 1) + A014245 (n + 1))).toNat

end

end A189406.P16736632223099221900

namespace A189406

/-- `A000027(A003512(n+1)+A022838(n+1)+A014245(n+1))` -/
def P16736632223099221900.Spec : Prop :=
  ∀ n, P16736632223099221900.a n = A189406 (n + 1)

end A189406

/-! ## A189406.P1543487737896501002

`A000027(A003512(n+1)+record[A026255(n+1)])`
-/

namespace A189406.P1543487737896501002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003512 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189406.P1543487737896501002

namespace A189406

/-- `A000027(A003512(n+1)+record[A026255(n+1)])` -/
def P1543487737896501002.Spec : Prop :=
  ∀ n, P1543487737896501002.a n = A189406 (n + 1)

end A189406

/-!
# A189407: n+[nr/t]+[ns/t]; r=1, s=-1+sqrt(3), t=1+sqrt(3).

The programs for A189407, the canonical program `A189407.P16182445017687967578` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189407 has offset 1).

The definition of A189407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189407.P16182445017687967578

`A014245(n+1)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189407

/-- `A014245(n+1)+n` -/
def P16182445017687967578.Spec : Prop :=
  ∀ n, P16182445017687967578.a n = A189407 (n + 1)

theorem P16182445017687967578.correct : P16182445017687967578.Spec := by
  intro n
  simp only [A189407, Nat.add_sub_cancel]

end A189407

/-! ## A189407.P15087422908211091164

`ceil(A182777(n+1)/2+n)`
-/

namespace A189407.P15087422908211091164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182777 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A189407.P15087422908211091164

namespace A189407

/-- `ceil(A182777(n+1)/2+n)` -/
def P15087422908211091164.Spec : Prop :=
  ∀ n, P15087422908211091164.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P1552355742925972014

`comp[floor(n*sqrt(3))]-A022838(n+1)+n`
-/

namespace A189407.P1552355742925972014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A022838 (n + 1) + (n : ℤ)

end

end A189407.P1552355742925972014

namespace A189407

/-- `comp[floor(n*sqrt(3))]-A022838(n+1)+n` -/
def P1552355742925972014.Spec : Prop :=
  ∀ n, P1552355742925972014.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P13982741117881573231

`A054406(n+1)+n-∑[A080757(n)]`
-/

namespace A189407.P13982741117881573231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1) + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189407.P13982741117881573231

namespace A189407

/-- `A054406(n+1)+n-∑[A080757(n)]` -/
def P13982741117881573231.Spec : Prop :=
  ∀ n, P13982741117881573231.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P11267459071720493891

`A182777(n+1)-A074065(n+1)+n`
-/

namespace A189407.P11267459071720493891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1) - A074065 (n + 1) + (n : ℤ)

end

end A189407.P11267459071720493891

namespace A189407

/-- `A182777(n+1)-A074065(n+1)+n` -/
def P11267459071720493891.Spec : Prop :=
  ∀ n, P11267459071720493891.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P13799537220781887053

`A065033(A182777(n+1))+n`
-/

namespace A189407.P13799537220781887053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A182777 (n + 1)).toNat + (n : ℤ)

end

end A189407.P13799537220781887053

namespace A189407

/-- `A065033(A182777(n+1))+n` -/
def P13799537220781887053.Spec : Prop :=
  ∀ n, P13799537220781887053.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P13968293658575406579

`A004526(A182777(n+1)+1)+n`
-/

namespace A189407.P13968293658575406579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182777 (n + 1) + 1).toNat + (n : ℤ)

end

end A189407.P13968293658575406579

namespace A189407

/-- `A004526(A182777(n+1)+1)+n` -/
def P13968293658575406579.Spec : Prop :=
  ∀ n, P13968293658575406579.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P11267195858472994301

`A026256(A022838(n+1))+n`
-/

namespace A189407.P11267195858472994301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026256 (A022838 (n + 1)).toNat + (n : ℤ)

end

end A189407.P11267195858472994301

namespace A189407

/-- `A026256(A022838(n+1))+n` -/
def P11267195858472994301.Spec : Prop :=
  ∀ n, P11267195858472994301.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P1316332411621883360

`A195120(A054406(n+1)-A080757(n))+n`
-/

namespace A189407.P1316332411621883360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A054406 (n + 1) - A080757 n).toNat + (n : ℤ)

end

end A189407.P1316332411621883360

namespace A189407

/-- `A195120(A054406(n+1)-A080757(n))+n` -/
def P1316332411621883360.Spec : Prop :=
  ∀ n, P1316332411621883360.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P2813024150814415254

`A026256(A054406(n+1))+n`
-/

namespace A189407.P2813024150814415254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026256 (A054406 (n + 1)).toNat + (n : ℤ)

end

end A189407.P2813024150814415254

namespace A189407

/-- `A026256(A054406(n+1))+n` -/
def P2813024150814415254.Spec : Prop :=
  ∀ n, P2813024150814415254.a n = A189407 (n + 1)

end A189407

/-! ## A189407.P16097323492351099243

`A004526(A182772(2*(n+1))-1)`
-/

namespace A189407.P16097323492351099243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182772 (2 * (n + 1)) - 1).toNat

end

end A189407.P16097323492351099243

namespace A189407

/-- `A004526(A182772(2*(n+1))-1)` -/
def P16097323492351099243.Spec : Prop :=
  ∀ n, P16097323492351099243.a n = A189407 (n + 1)

end A189407

/-!
# A189409: a(n) = prime(n)#^2 + 1, where prime(n)# is the n-th primorial (A002110).

The programs for A189409, there is no canonical definition to state claims against.
-/

/-! ## A189409.P5572946797547421142

`∏[eq[n, ∏{d}[n, #]]]²+1`
-/

namespace A189409.P5572946797547421142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1

end

end A189409.P5572946797547421142

/-! ## A189409.P12620308830179427538

`∏[lt[∏{e}[n+1, #+1], 3]+1]²+1`
-/

namespace A189409.P12620308830179427538
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1

end

end A189409.P12620308830179427538

/-! ## A189409.P5508168938925280778

`A061742(n)+1`
-/

namespace A189409.P5508168938925280778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061742 n + 1

end

end A189409.P5508168938925280778

/-! ## A189409.P11402258845079640660

`A002110(n)²+1`
-/

namespace A189409.P11402258845079640660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n ^ 2 + 1

end

end A189409.P11402258845079640660

/-!
# A189411: Odd primes p such that sigma(p)/2 is a power of an odd prime.

The programs for A189411, the canonical program `A189411.P10301634183479862056` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189411 has offset 1).

The definition of A189411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189411.P10301634183479862056

`∩[A008846(n+1), A086983(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A189411

/-- `∩[A008846(n+1), A086983(n+1)]` -/
def P10301634183479862056.Spec : Prop :=
  ∀ n, (P10301634183479862056.a n : ℤ) = A189411 (n + 1)

theorem P10301634183479862056.correct : P10301634183479862056.Spec := by
  intro n
  simp only [A189411, Nat.add_sub_cancel]

end A189411

/-! ## A189411.P17509047074034898044

`∩[A008846(n+1), A178490(n+1)]`
-/

namespace A189411.P17509047074034898044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P17509047074034898044

namespace A189411

/-- `∩[A008846(n+1), A178490(n+1)]` -/
def P17509047074034898044.Spec : Prop :=
  ∀ n, (P17509047074034898044.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P10425073396814366266

`∩[A086983(n+1), A191218(n+1)]`
-/

namespace A189411.P10425073396814366266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P10425073396814366266

namespace A189411

/-- `∩[A086983(n+1), A191218(n+1)]` -/
def P10425073396814366266.Spec : Prop :=
  ∀ n, (P10425073396814366266.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P15557558875576753441

`∩[A178490(n+1), A191218(n+1)]`
-/

namespace A189411.P15557558875576753441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P15557558875576753441

namespace A189411

/-- `∩[A178490(n+1), A191218(n+1)]` -/
def P15557558875576753441.Spec : Prop :=
  ∀ n, (P15557558875576753441.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P12139022810765740076

`∩[A191218(n+1), A319450(n+1)]`
-/

namespace A189411.P12139022810765740076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P12139022810765740076

namespace A189411

/-- `∩[A191218(n+1), A319450(n+1)]` -/
def P12139022810765740076.Spec : Prop :=
  ∀ n, (P12139022810765740076.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P15045189766900567120

`∩[A191218(n+1), A380101(n+1)]`
-/

namespace A189411.P15045189766900567120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P15045189766900567120

namespace A189411

/-- `∩[A191218(n+1), A380101(n+1)]` -/
def P15045189766900567120.Spec : Prop :=
  ∀ n, (P15045189766900567120.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P5776160085060154664

`∩[A002144(n+1), A086983(n+1)]`
-/

namespace A189411.P5776160085060154664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P5776160085060154664

namespace A189411

/-- `∩[A002144(n+1), A086983(n+1)]` -/
def P5776160085060154664.Spec : Prop :=
  ∀ n, (P5776160085060154664.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P3529201268114791162

`∩[A002144(n+1), A178490(n+1)]`
-/

namespace A189411.P3529201268114791162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P3529201268114791162

namespace A189411

/-- `∩[A002144(n+1), A178490(n+1)]` -/
def P3529201268114791162.Spec : Prop :=
  ∀ n, (P3529201268114791162.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P16068257851619047417

`∩[A002313(n+1), A178490(n+1)]`
-/

namespace A189411.P16068257851619047417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P16068257851619047417

namespace A189411

/-- `∩[A002313(n+1), A178490(n+1)]` -/
def P16068257851619047417.Spec : Prop :=
  ∀ n, (P16068257851619047417.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P1316078118128055273

`∩[A002144(n+1), A319450(n+1)]`
-/

namespace A189411.P1316078118128055273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P1316078118128055273

namespace A189411

/-- `∩[A002144(n+1), A319450(n+1)]` -/
def P1316078118128055273.Spec : Prop :=
  ∀ n, (P1316078118128055273.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P7685137897400394700

`∩[A086983(n+1), A280084(n+1)]`
-/

namespace A189411.P7685137897400394700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P7685137897400394700

namespace A189411

/-- `∩[A086983(n+1), A280084(n+1)]` -/
def P7685137897400394700.Spec : Prop :=
  ∀ n, (P7685137897400394700.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P11293127849031696615

`∩[A002144(n+1), A380101(n+1)]`
-/

namespace A189411.P11293127849031696615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P11293127849031696615

namespace A189411

/-- `∩[A002144(n+1), A380101(n+1)]` -/
def P11293127849031696615.Spec : Prop :=
  ∀ n, (P11293127849031696615.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P11679703525336345310

`∩[A002313(n+1), A380101(n+1)]`
-/

namespace A189411.P11679703525336345310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P11679703525336345310

namespace A189411

/-- `∩[A002313(n+1), A380101(n+1)]` -/
def P11679703525336345310.Spec : Prop :=
  ∀ n, (P11679703525336345310.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P4990683530217873701

`∩[A086983(n+1), A120960(n+1)]`
-/

namespace A189411.P4990683530217873701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P4990683530217873701

namespace A189411

/-- `∩[A086983(n+1), A120960(n+1)]` -/
def P4990683530217873701.Spec : Prop :=
  ∀ n, (P4990683530217873701.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P9305021206871304278

`∩[A055025(n+1), A178490(n+1)]`
-/

namespace A189411.P9305021206871304278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P9305021206871304278

namespace A189411

/-- `∩[A055025(n+1), A178490(n+1)]` -/
def P9305021206871304278.Spec : Prop :=
  ∀ n, (P9305021206871304278.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P14352413571854166948

`∩[A120960(n+1), A178490(n+1)]`
-/

namespace A189411.P14352413571854166948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P14352413571854166948

namespace A189411

/-- `∩[A120960(n+1), A178490(n+1)]` -/
def P14352413571854166948.Spec : Prop :=
  ∀ n, (P14352413571854166948.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P16518778059113766105

`∩[A172480(n+1), A319450(n+1)]`
-/

namespace A189411.P16518778059113766105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P16518778059113766105

namespace A189411

/-- `∩[A172480(n+1), A319450(n+1)]` -/
def P16518778059113766105.Spec : Prop :=
  ∀ n, (P16518778059113766105.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P7129368089712454853

`∩[A085759(n+1), A086983(n+1)]`
-/

namespace A189411.P7129368089712454853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P7129368089712454853

namespace A189411

/-- `∩[A085759(n+1), A086983(n+1)]` -/
def P7129368089712454853.Spec : Prop :=
  ∀ n, (P7129368089712454853.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P12655323795340736047

`∩[A085759(n+1), A178490(n+1)]`
-/

namespace A189411.P12655323795340736047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P12655323795340736047

namespace A189411

/-- `∩[A085759(n+1), A178490(n+1)]` -/
def P12655323795340736047.Spec : Prop :=
  ∀ n, (P12655323795340736047.a n : ℤ) = A189411 (n + 1)

end A189411

/-! ## A189411.P12643096114024470841

`∩[A175768(n+1), A178490(n+1)]`
-/

namespace A189411.P12643096114024470841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P12643096114024470841

namespace A189411

/-- `∩[A175768(n+1), A178490(n+1)]` -/
def P12643096114024470841.Spec : Prop :=
  ∀ n, (P12643096114024470841.a n : ℤ) = A189411 (n + 1)

end A189411

/-!
# A189412: Number of concave quadrilaterals on an n X n grid (or geoboard).

The programs for A189412, there is no canonical definition to state claims against.
-/

/-! ## A189412.P9319617431411738778

`3*A334712(n+1)`
-/

namespace A189412.P9319617431411738778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A334712 (n + 1)

end

end A189412.P9319617431411738778

/-! ## A189412.P7649418360738511981

`3*(A175383(n+1)-A189413(n+1))`
-/

namespace A189412.P7649418360738511981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A175383 (n + 1) - A189413 (n + 1))

end

end A189412.P7649418360738511981

/-! ## A189412.P7448665478066265195

`3*A175383(n+1)%(A189413(n+1)+A151878(n))`
-/

namespace A189412.P7448665478066265195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A175383 (n + 1)) (A189413 (n + 1) + A151878 n)

end

end A189412.P7448665478066265195

/-! ## A189412.P7843581010989316830

`3*(A189345(n+1)-(A334713(n+1)+A178256(n+1))-A189413(n+1))`
-/

namespace A189412.P7843581010989316830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A189345 (n + 1) - (A334713 (n + 1) + A178256 (n + 1)) - A189413 (n + 1))

end

end A189412.P7843581010989316830

/-! ## A189412.P1486339082529631691

`A189414(n+1)-A189413(n+1)`
-/

namespace A189412.P1486339082529631691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189414 (n + 1) - A189413 (n + 1)

end

end A189412.P1486339082529631691

/-!
# A189413: Number of convex quadrilaterals on an n X n grid (or geoboard).

The programs for A189413, there is no canonical definition to state claims against.
-/

/-! ## A189413.P13216817384768353711

`A189345(n+1)-(A334713(n+1)+A178256(n+1))-A334712(n+1)`
-/

namespace A189413.P13216817384768353711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189345 (n + 1) - (A334713 (n + 1) + A178256 (n + 1)) - A334712 (n + 1)

end

end A189413.P13216817384768353711

/-! ## A189413.P18026194777970742795

`A175383(n+1)-A334712(n+1)`
-/

namespace A189413.P18026194777970742795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175383 (n + 1) - A334712 (n + 1)

end

end A189413.P18026194777970742795

/-! ## A189413.P2879244404406245012

`A175383(n+1)-A189412(n+1)/3`
-/

namespace A189413.P2879244404406245012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175383 (n + 1) : ℚ) - (A189412 (n + 1) : ℚ) / 3

end

end A189413.P2879244404406245012

/-! ## A189413.P6020999531574458720

`A189414(n+1)-A189412(n+1)`
-/

namespace A189413.P6020999531574458720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189414 (n + 1) - A189412 (n + 1)

end

end A189413.P6020999531574458720

/-! ## A189413.P4580500756670846573

`A189414(n+1)-3*A334712(n+1)`
-/

namespace A189413.P4580500756670846573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189414 (n + 1) - 3 * A334712 (n + 1)

end

end A189413.P4580500756670846573

/-!
# A189414: Number of quadrilaterals on an n X n grid (or geoboard).

The programs for A189414, there is no canonical definition to state claims against.
-/

/-! ## A189414.P12218808361560866375

`A189412(n+1)+A189413(n+1)`
-/

namespace A189414.P12218808361560866375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189412 (n + 1) + A189413 (n + 1)

end

end A189414.P12218808361560866375

/-! ## A189414.P17783976150511972636

`A175383(n+1)+2*A334712(n+1)`
-/

namespace A189414.P17783976150511972636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175383 (n + 1) + 2 * A334712 (n + 1)

end

end A189414.P17783976150511972636

/-! ## A189414.P11023555809542169138

`A189413(n+1)+3*A334712(n+1)`
-/

namespace A189414.P11023555809542169138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189413 (n + 1) + 3 * A334712 (n + 1)

end

end A189414.P11023555809542169138

/-! ## A189414.P8096725851698278368

`A189413(n+1)+A189412(A348553(n))`
-/

namespace A189414.P8096725851698278368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189413 (n + 1) + A189412 (A348553 n).toNat

end

end A189414.P8096725851698278368

/-! ## A189414.P16618584755279837277

`A175383(n+1)+A189412(n+1)-A334712(n+1)`
-/

namespace A189414.P16618584755279837277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175383 (n + 1) + (A189412 (n + 1) - A334712 (n + 1))

end

end A189414.P16618584755279837277

/-!
# A189416: Number of parallelograms on an n X n grid.

The programs for A189416, there is no canonical definition to state claims against.
-/

/-! ## A189416.P7727711231849769754

`A227182(lcm(n, A067318(n+1)))`
-/

namespace A189416.P7727711231849769754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227182 (Int.lcm (n : ℤ) (A067318 (n + 1)))

end

end A189416.P7727711231849769754

/-!
# A189417: Number of kites on an n X n grid (or geoboard).

The programs for A189417, there is no canonical definition to state claims against.
-/

/-! ## A189417.P1066485534117495609

`floor(∑[A300857((n+1)^n)]/3)`
-/

namespace A189417.P1066485534117495609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300857 ((n + 1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A189417.P1066485534117495609

/-!
# A189418: Number of rhombi on an n X n grid (or geoboard).

The programs for A189418, there is no canonical definition to state claims against.
-/

/-! ## A189418.P18190516452374124871

`A200505(A119366(n))+A081282(n)`
-/

namespace A189418.P18190516452374124871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (A119366 n).toNat + A081282 n

end

end A189418.P18190516452374124871

/-! ## A189418.P13225518718996466520

`A001523(2*n)-A194062(A000108(n))`
-/

namespace A189418.P13225518718996466520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (2 * n) - A194062 (A000108 n).toNat

end

end A189418.P13225518718996466520

/-!
# A189421: Expansion of e.g.f. exp(sin(x)+2*sin(x)^2).

The programs for A189421, there is no canonical definition to state claims against.
-/

/-! ## A189421.P17891527493359559530

`A119955(A336139(n+1))`
-/

namespace A189421.P17891527493359559530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119955 (A336139 (n + 1)).toNat

end

end A189421.P17891527493359559530

/-! ## A189421.P2835318354716738586

`A304442(A006882(2*n)-A005388(n))`
-/

namespace A189421.P2835318354716738586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A006882 (2 * n) - A005388 n).toNat

end

end A189421.P2835318354716738586

/-!
# A189426: Expansion of (x^2)/(1-2*x-x^2+x^3)^2.

The programs for A189426, the canonical program `A189426.P2670497444341694929` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189426 has offset 0).

The definition of A189426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-4x+2x^2+6x^3-3x^4-2x^5+x^6))` (program `A189426.P2670497444341694929`, by `A189426.P2670497444341694929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189426.P2670497444341694929

`ogf(x^2/(1-4x+2x^2+6x^3-3x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189426

/-- `ogf(x^2/(1-4x+2x^2+6x^3-3x^4-2x^5+x^6))` -/
def P2670497444341694929.Spec : Prop :=
  ∀ n, P2670497444341694929.a n = A189426 n

theorem P2670497444341694929.correct : P2670497444341694929.Spec := by
  intro n
  simp only [A189426]

end A189426

/-! ## A189426.P7623050204242018425

`Δ[A189427(abs(1-n))]`
-/

namespace A189426.P7623050204242018425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189427 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189426.P7623050204242018425

namespace A189426

/-- `Δ[A189427(abs(1-n))]` -/
def P7623050204242018425.Spec : Prop :=
  ∀ n, P7623050204242018425.a n = A189426 n

end A189426

/-! ## A189426.P2168764238711111289

`A189427(n)-A189427(abs(1-n))`
-/

namespace A189426.P2168764238711111289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189427 n - A189427 |1 - (n : ℤ)|.toNat

end

end A189426.P2168764238711111289

namespace A189426

/-- `A189427(n)-A189427(abs(1-n))` -/
def P2168764238711111289.Spec : Prop :=
  ∀ n, P2168764238711111289.a n = A189426 n

end A189426

/-! ## A189426.P14248298396719103384

`∑[A056926(A350551(n)²)]`
-/

namespace A189426.P14248298396719103384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A350551 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189426.P14248298396719103384

namespace A189426

/-- `∑[A056926(A350551(n)²)]` -/
def P14248298396719103384.Spec : Prop :=
  ∀ n, P14248298396719103384.a n = A189426 n

end A189426

/-!
# A189427: Expansion of (x^2)/((1-x)*(1-2*x-x^2+x^3)^2).

The programs for A189427, the canonical program `A189427.P6062338781323161124` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189427 has offset 0).

The definition of A189427 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-5x+6x^2+4x^3-9x^4+x^5+3x^6-x^7))` (program `A189427.P6062338781323161124`, by `A189427.P6062338781323161124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189427.P6062338781323161124

`ogf(x^2/(1-5x+6x^2+4x^3-9x^4+x^5+3x^6-x^7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189427

/-- `ogf(x^2/(1-5x+6x^2+4x^3-9x^4+x^5+3x^6-x^7))` -/
def P6062338781323161124.Spec : Prop :=
  ∀ n, P6062338781323161124.a n = A189427 n

theorem P6062338781323161124.correct : P6062338781323161124.Spec := by
  intro n
  simp only [A189427]

end A189427

/-! ## A189427.P16911076675153413876

`∑[A189426(n)]`
-/

namespace A189427.P16911076675153413876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189427.P16911076675153413876

namespace A189427

/-- `∑[A189426(n)]` -/
def P16911076675153413876.Spec : Prop :=
  ∀ n, P16911076675153413876.a n = A189427 n

end A189427

/-! ## A189427.P11439857082540764148

`∑[∑[A056926(A350551(n)²)]]`
-/

namespace A189427.P11439857082540764148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A350551 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189427.P11439857082540764148

namespace A189427

/-- `∑[∑[A056926(A350551(n)²)]]` -/
def P11439857082540764148.Spec : Prop :=
  ∀ n, P11439857082540764148.a n = A189427 n

end A189427

/-! ## A189427.P6809818049394070792

`∑[∑[A262689(A350551(n)²)]]`
-/

namespace A189427.P6809818049394070792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A350551 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189427.P6809818049394070792

namespace A189427

/-- `∑[∑[A262689(A350551(n)²)]]` -/
def P6809818049394070792.Spec : Prop :=
  ∀ n, P6809818049394070792.a n = A189427 n

end A189427

/-!
# A189428: Number of n X n array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189428, there is no canonical definition to state claims against.
-/

/-! ## A189428.P16327445541100555313

`A189435(∑[4*n]+1)`
-/

namespace A189428.P16327445541100555313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189428.P16327445541100555313

/-! ## A189428.P11577309809738097464

`record[A189435(∑[A266981(n)])]`
-/

namespace A189428.P11577309809738097464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189428.P11577309809738097464

/-! ## A189428.P12365675692212349461

`record[A189435(Δ[A235355(n)])]`
-/

namespace A189428.P12365675692212349461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189428.P12365675692212349461

/-! ## A189428.P11837441716410544424

`and(-1, A189435(A001844(n)))`
-/

namespace A189428.P11837441716410544424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A189435 (A001844 n).toNat)

end

end A189428.P11837441716410544424

/-! ## A189428.P7144418878479148206

`record[A189435(A330613(n+1))]`
-/

namespace A189428.P7144418878479148206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189428.P7144418878479148206

/-!
# A189429: Number of n X 3 array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189429, the canonical program `A189429.P13380350483133453429` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189429 has offset 1).

The definition of A189429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189429.P13380350483133453429

`a(n-1)+4*a(n-2)+10*a(n-3)+12*a(n-4)+8*a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=31, a(4)=109`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189429

/-- `a(n-1)+4*a(n-2)+10*a(n-3)+12*a(n-4)+8*a(n-5)` -/
def P13380350483133453429.Spec : Prop :=
  ∀ n, (P13380350483133453429.a n : ℤ) = A189429 (n + 1)

theorem P13380350483133453429.correct : P13380350483133453429.Spec := by
  intro n
  simp only [A189429, Nat.add_sub_cancel]

end A189429

/-! ## A189429.P575169108987022620

`A189435(∑[n+3]+1)`
-/

namespace A189429.P575169108987022620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189429.P575169108987022620

namespace A189429

/-- `A189435(∑[n+3]+1)` -/
def P575169108987022620.Spec : Prop :=
  ∀ n, P575169108987022620.a n = A189429 (n + 1)

end A189429

/-! ## A189429.P10107311558711838556

`record[A189435(A198464(n+1))]`
-/

namespace A189429.P10107311558711838556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189429.P10107311558711838556

namespace A189429

/-- `record[A189435(A198464(n+1))]` -/
def P10107311558711838556.Spec : Prop :=
  ∀ n, P10107311558711838556.a n = A189429 (n + 1)

end A189429

/-! ## A189429.P2299233577325883685

`record[A189435(n+1)-A327245(n+3)]`
-/

namespace A189429.P2299233577325883685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (n + 1) - A327245 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189429.P2299233577325883685

namespace A189429

/-- `record[A189435(n+1)-A327245(n+3)]` -/
def P2299233577325883685.Spec : Prop :=
  ∀ n, P2299233577325883685.a n = A189429 (n + 1)

end A189429

/-! ## A189429.P8863693712058829935

`record[A189435(n+1)/A098473(n+3)]`
-/

namespace A189429.P8863693712058829935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189435 (n + 1) : ℚ) / (A098473 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189429.P8863693712058829935

namespace A189429

/-- `record[A189435(n+1)/A098473(n+3)]` -/
def P8863693712058829935.Spec : Prop :=
  ∀ n, P8863693712058829935.a n = (A189429 (n + 1) : ℚ)

end A189429

/-!
# A189430: Number of nX4 array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189430, there is no canonical definition to state claims against.
-/

/-! ## A189430.P1046943673058131489

`A189435(A141214(n+1))`
-/

namespace A189430.P1046943673058131489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A141214 (n + 1)).toNat

end

end A189430.P1046943673058131489

/-! ## A189430.P3270693103274704548

`A189435(A027379(n+2))`
-/

namespace A189430.P3270693103274704548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A027379 (n + 2)).toNat

end

end A189430.P3270693103274704548

/-! ## A189430.P9194582532498575717

`A189435(A155212(n)+5)`
-/

namespace A189430.P9194582532498575717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A155212 n + 5).toNat

end

end A189430.P9194582532498575717

/-! ## A189430.P1124111902684671043

`A189435(A056000(n)+7)`
-/

namespace A189430.P1124111902684671043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A056000 n + 7).toNat

end

end A189430.P1124111902684671043

/-! ## A189430.P14713424194147662935

`A189435(eq[2, A152157(n)])`
-/

namespace A189430.P14713424194147662935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189430.P14713424194147662935

/-!
# A189431: Number of nX5 array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189431, there is no canonical definition to state claims against.
-/

/-! ## A189431.P12875993250335896482

`A189435(Δ[A264443(n)])`
-/

namespace A189431.P12875993250335896482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (f1 (n + 1) - f1 n).toNat

end

end A189431.P12875993250335896482

/-! ## A189431.P15523413312499196098

`A189435(eq[3, A152157(n)])`
-/

namespace A189431.P15523413312499196098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189431.P15523413312499196098

/-! ## A189431.P5839545805085127747

`A189435(eq[4, A193592(n)])`
-/

namespace A189431.P5839545805085127747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189431.P5839545805085127747

/-! ## A189431.P5913383380795395119

`A189435(eq[8, A209434(n)])`
-/

namespace A189431.P5913383380795395119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189431.P5913383380795395119

/-! ## A189431.P16271597513433607116

`A189435(Δ[A023545(n+1)])`
-/

namespace A189431.P16271597513433607116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (f1 (n + 1) - f1 n).toNat

end

end A189431.P16271597513433607116

/-!
# A189432: Number of nX6 array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189432, there is no canonical definition to state claims against.
-/

/-! ## A189432.P1544452005394700965

`A189435(A052905(n+3))`
-/

namespace A189432.P1544452005394700965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A052905 (n + 3)).toNat

end

end A189432.P1544452005394700965

/-! ## A189432.P17271784041930162287

`A189435(eq[3, A219347(n)])`
-/

namespace A189432.P17271784041930162287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189432.P17271784041930162287

/-! ## A189432.P5331424664837476718

`A189435(eq[5, A193592(n)])`
-/

namespace A189432.P5331424664837476718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189432.P5331424664837476718

/-! ## A189432.P11346362104397960334

`A189435(A167614(n+5)-8)`
-/

namespace A189432.P11346362104397960334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A167614 (n + 5) - 8).toNat

end

end A189432.P11346362104397960334

/-! ## A189432.P9608675025464024953

`A189435(eq[7, A049286(n+1)])`
-/

namespace A189432.P9608675025464024953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189432.P9608675025464024953

/-!
# A189433: Number of n X 7 array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189433, there is no canonical definition to state claims against.
-/

/-! ## A189433.P17341357464502751378

`A189435(eq[4, A219347(n)])`
-/

namespace A189433.P17341357464502751378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189433.P17341357464502751378

/-! ## A189433.P3109321558170931840

`A189435(eq[6, A193592(n)])`
-/

namespace A189433.P3109321558170931840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189433.P3109321558170931840

/-! ## A189433.P16142309961577620763

`A189435(eq[7, A152157(n)])`
-/

namespace A189433.P16142309961577620763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189433.P16142309961577620763

/-! ## A189433.P2864578909757894096

`A189435(eq[7, A200370(n+1)])`
-/

namespace A189433.P2864578909757894096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189433.P2864578909757894096

/-! ## A189433.P15024947914480335407

`A189435(eq[32, A057728(n+1)])`
-/

namespace A189433.P15024947914480335407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189433.P15024947914480335407

/-!
# A189434: Number of nX8 array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189434, there is no canonical definition to state claims against.
-/

/-! ## A189434.P11106736924108901309

`A189435(eq[5, A219347(n)])`
-/

namespace A189434.P11106736924108901309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189434.P11106736924108901309

/-! ## A189434.P1140750499740841848

`A189435(eq[7, A193592(n)])`
-/

namespace A189434.P1140750499740841848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189434.P1140750499740841848

/-! ## A189434.P975011697037759765

`A189435(eq[12, A185782(n+1)])`
-/

namespace A189434.P975011697037759765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189434.P975011697037759765

/-! ## A189434.P648303326093223331

`record[A189435(n+1)*A320841(n)]`
-/

namespace A189434.P648303326093223331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (n + 1) * A320841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189434.P648303326093223331

/-! ## A189434.P6728758634584157291

`A189435(A119963(n)+A253145(n+7)-8)`
-/

namespace A189434.P6728758634584157291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A119963 n + (A253145 (n + 7) - 8)).toNat

end

end A189434.P6728758634584157291

/-!
# A189435: T(n,k)=Number of nXk array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189435, there is no canonical definition to state claims against.
-/

/-! ## A189435.P11226080128467459924

`A242312(2^A071922(n))`
-/

namespace A189435.P11226080128467459924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242312 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A071922 n : ℤ))).toNat

end

end A189435.P11226080128467459924

/-! ## A189435.P2014125920343033082

`A242312(2^A098446(n))`
-/

namespace A189435.P2014125920343033082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242312 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A098446 n : ℤ))).toNat

end

end A189435.P2014125920343033082

/-! ## A189435.P8042287316967183931

`A242312(2^A098447(n))`
-/

namespace A189435.P8042287316967183931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242312 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A098447 n : ℤ))).toNat

end

end A189435.P8042287316967183931

/-! ## A189435.P4495299155063230253

`dr(A007318(2^A071922(n)))`
-/

namespace A189435.P4495299155063230253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007318 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A071922 n : ℤ))).toNat)

end

end A189435.P4495299155063230253

/-! ## A189435.P9722943718458902732

`dr(A007318(2^A098446(n)))`
-/

namespace A189435.P9722943718458902732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007318 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A098446 n : ℤ))).toNat)

end

end A189435.P9722943718458902732

/-!
# A189436: Number of 4 X n array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189436, the canonical program `A189436.P8342431753744262291` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189436 has offset 1).

The definition of A189436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189436.P8342431753744262291

`4*a(n-1)+2*a(n-2)-6*a(n-3)+4*a(n-4)-a(n-5)` with `a(0)=1, a(1)=9, a(2)=31, a(3)=140, a(4)=571`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189436

/-- `4*a(n-1)+2*a(n-2)-6*a(n-3)+4*a(n-4)-a(n-5)` -/
def P8342431753744262291.Spec : Prop :=
  ∀ n, P8342431753744262291.a n = A189436 (n + 1)

theorem P8342431753744262291.correct : P8342431753744262291.Spec := by
  intro n
  simp only [A189436, Nat.add_sub_cancel]

end A189436

/-! ## A189436.P5169948946814034176

`A189435(A141214(n)+7)`
-/

namespace A189436.P5169948946814034176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A141214 n + 7).toNat

end

end A189436.P5169948946814034176

namespace A189436

/-- `A189435(A141214(n)+7)` -/
def P5169948946814034176.Spec : Prop :=
  ∀ n, P5169948946814034176.a n = A189436 (n + 1)

end A189436

/-! ## A189436.P13805433536471134099

`A189435(A052905(n)+9)`
-/

namespace A189436.P13805433536471134099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A052905 n + 9).toNat

end

end A189436.P13805433536471134099

namespace A189436

/-- `A189435(A052905(n)+9)` -/
def P13805433536471134099.Spec : Prop :=
  ∀ n, P13805433536471134099.a n = A189436 (n + 1)

end A189436

/-! ## A189436.P15977985281296847636

`A189435(A055999(n)+10)`
-/

namespace A189436.P15977985281296847636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A055999 n + 10).toNat

end

end A189436.P15977985281296847636

namespace A189436

/-- `A189435(A055999(n)+10)` -/
def P15977985281296847636.Spec : Prop :=
  ∀ n, P15977985281296847636.a n = A189436 (n + 1)

end A189436

/-! ## A189436.P5664820797066661774

`A189435(A167614(n+2)+1)`
-/

namespace A189436.P5664820797066661774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A167614 (n + 2) + 1).toNat

end

end A189436.P5664820797066661774

namespace A189436

/-- `A189435(A167614(n+2)+1)` -/
def P5664820797066661774.Spec : Prop :=
  ∀ n, P5664820797066661774.a n = A189436 (n + 1)

end A189436

/-!
# A189437: Number of 5 X n array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189437, there is no canonical definition to state claims against.
-/

/-! ## A189437.P8694844594985135811

`A189435(∑[n+4]+11)`
-/

namespace A189437.P8694844594985135811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A189437.P8694844594985135811

/-!
# A189438: Number of 6Xn array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189438, there is no canonical definition to state claims against.
-/

/-! ## A189438.P3476012593017439288

`A189435(A056115(n)+21)`
-/

namespace A189438.P3476012593017439288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A056115 n + 21).toNat

end

end A189438.P3476012593017439288

/-! ## A189438.P6492117887057583425

`A189435(eq[6, A256910(n)])`
-/

namespace A189438.P6492117887057583425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189438.P6492117887057583425

/-! ## A189438.P4496178524047655432

`A189435(A134869(n+5)+5)`
-/

namespace A189438.P4496178524047655432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A134869 (n + 5) + 5).toNat

end

end A189438.P4496178524047655432

/-! ## A189438.P6037705329802315217

`A189435(A246172(n+1)+20)`
-/

namespace A189438.P6037705329802315217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A246172 (n + 1) + 20).toNat

end

end A189438.P6037705329802315217

/-! ## A189438.P2411313638120639058

`A189435(eq[6, A130270(n+1)])`
-/

namespace A189438.P2411313638120639058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189438.P2411313638120639058

/-!
# A189439: Number of 7Xn array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189439, there is no canonical definition to state claims against.
-/

/-! ## A189439.P11600489117436958000

`A189435(eq[11, A066657(n)])`
-/

namespace A189439.P11600489117436958000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189439.P11600489117436958000

/-! ## A189439.P9089491303056053209

`A189435(A167614(n+5)+4)`
-/

namespace A189439.P9089491303056053209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A167614 (n + 5) + 4).toNat

end

end A189439.P9089491303056053209

/-! ## A189439.P15221189366024217020

`A189435(A161680(n+7)+7)`
-/

namespace A189439.P15221189366024217020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A161680 (n + 7) + 7).toNat

end

end A189439.P15221189366024217020

/-! ## A189439.P8829509361634669789

`A189435(eq[8, A131818(n+1)])`
-/

namespace A189439.P8829509361634669789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189439.P8829509361634669789

/-! ## A189439.P13568474626542872586

`A189435(A027379(n)+4*(n+7))`
-/

namespace A189439.P13568474626542872586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A027379 n + (4 * (n + 7) : ℤ)).toNat

end

end A189439.P13568474626542872586

/-!
# A189440: Number of 8Xn array permutations with each element not moving, or moving one space N, SW or SE.

The programs for A189440, there is no canonical definition to state claims against.
-/

/-! ## A189440.P14601195660680477487

`A189435(eq[13, A066657(n)])`
-/

namespace A189440.P14601195660680477487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189440.P14601195660680477487

/-! ## A189440.P2591933256547192453

`A189435(A167487(n+6)+1)`
-/

namespace A189440.P2591933256547192453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A167487 (n + 6) + 1).toNat

end

end A189440.P2591933256547192453

/-! ## A189440.P8182549504058796705

`A189435(A167499(n+6)+3)`
-/

namespace A189440.P8182549504058796705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (A167499 (n + 6) + 3).toNat

end

end A189440.P8182549504058796705

/-! ## A189440.P8252903048872741392

`A189435(eq[7, A002262(n)]+1)`
-/

namespace A189440.P8252903048872741392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A189440.P8252903048872741392

/-! ## A189440.P11126545134284808144

`A189435(eq[9, A131818(n+1)])`
-/

namespace A189440.P11126545134284808144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189440.P11126545134284808144

/-!
# A189441: Primes that are the arithmetic derivative (A003415) of some number.

The programs for A189441, there is no canonical definition to state claims against.
-/

/-! ## A189441.P7949135701816894765

`record[A351078(A189762(n+2))]`
-/

namespace A189441.P7949135701816894765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (A189762 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189441.P7949135701816894765

/-! ## A189441.P222065056570952304

`p?[n%(A098699(n)+1)²]`
-/

namespace A189441.P222065056570952304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) ((A098699 n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P222065056570952304

/-! ## A189441.P11905626004967062119

`p?[n*A018252(C(2, A098699(n))+1)]`
-/

namespace A189441.P11905626004967062119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018252 (Nat.choose 2 (A098699 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P11905626004967062119

/-! ## A189441.P8619147754527278269

`p?[n*A244805(C(2, A098699(n))+1)]`
-/

namespace A189441.P8619147754527278269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244805 (Nat.choose 2 (A098699 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P8619147754527278269

/-! ## A189441.P11504093560565583197

`p?[n-C(2, A098699(n))*A028310(n)]`
-/

namespace A189441.P11504093560565583197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (A098699 n).toNat : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P11504093560565583197

/-! ## A189441.P8523951107741524211

`p?[n+1-gcd(A063980(n+1), A098699(n))]`
-/

namespace A189441.P8523951107741524211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (A063980 (n + 1)) (A098699 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P8523951107741524211

/-! ## A189441.P9735709837847727839

`p?[n-C(2, A098699(n))*A000203(n+1)]`
-/

namespace A189441.P9735709837847727839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (A098699 n).toNat : ℤ) * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P9735709837847727839

/-! ## A189441.P3754747669571127242

`p?[A003415(A098699(A000040(n+1)))]`
-/

namespace A189441.P3754747669571127242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A098699 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P3754747669571127242

/-! ## A189441.P3215522086855274833

`p?[A003415(A098699(A065091(n+1)))]`
-/

namespace A189441.P3215522086855274833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A098699 (A065091 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P3215522086855274833

/-! ## A189441.P11308941762623499008

`p?[A003415(A098699(A324050(n+1)))]`
-/

namespace A189441.P11308941762623499008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A098699 (A324050 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P11308941762623499008

/-! ## A189441.P1313523632617237494

`p?[A003415(A098699(2*n+1))]`
-/

namespace A189441.P1313523632617237494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A098699 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P1313523632617237494

/-! ## A189441.P6918419473651774327

`p?[A003415(A189762(n+1))]`
-/

namespace A189441.P6918419473651774327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A189762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P6918419473651774327

/-! ## A189441.P3942184294357341937

`p?[A239433(n+1)]`
-/

namespace A189441.P3942184294357341937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189441.P3942184294357341937

/-! ## A189441.P14940470673973496777

`record[A006530(A239433(n+2))]`
-/

namespace A189441.P14940470673973496777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239433 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189441.P14940470673973496777

/-! ## A189441.P11377669704487166261

`filter[A239433(n+1), A010051(#)]`
-/

namespace A189441.P11377669704487166261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A189441.P11377669704487166261

/-! ## A189441.P3262801059845610671

`filter[A239433(n+1), A080339(#)]`
-/

namespace A189441.P3262801059845610671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A189441.P3262801059845610671

/-! ## A189441.P6187958097294464193

`filter[A239433(n+1), A080545(#)]`
-/

namespace A189441.P6187958097294464193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A189441.P6187958097294464193

/-! ## A189441.P10392151196847810352

`filter[A239433(n+1), A171387(#)]`
-/

namespace A189441.P10392151196847810352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A189441.P10392151196847810352

/-! ## A189441.P582170643027206021

`∩[A000040(n+1), A239433(n+1)]`
-/

namespace A189441.P582170643027206021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189441.P582170643027206021

/-! ## A189441.P9462187005117914532

`∩[A006005(n+1), A239433(n+1)]`
-/

namespace A189441.P9462187005117914532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189441.P9462187005117914532

/-!
# A189442: a(n) = A140230(n) / A016116(n-1).

The programs for A189442, the canonical program `A189442.P5614315760736136417` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189442 has offset 1).

The definition of A189442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189442.P5614315760736136417

`A140230(n+1)/A016116(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189442

/-- `A140230(n+1)/A016116(n)` -/
def P5614315760736136417.Spec : Prop :=
  ∀ n, P5614315760736136417.a n = (A189442 (n + 1) : ℚ)

end A189442

/-! ## A189442.P12398399792402688057

`A046978(n)+(n+1)*A046980(n)`
-/

namespace A189442.P12398399792402688057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (n + 1 : ℤ) * A046980 n

end

end A189442.P12398399792402688057

namespace A189442

/-- `A046978(n)+(n+1)*A046980(n)` -/
def P12398399792402688057.Spec : Prop :=
  ∀ n, P12398399792402688057.a n = A189442 (n + 1)

end A189442

/-! ## A189442.P5225904856667365294

`Δ[A316386(n)]/A016116(n)`
-/

namespace A189442.P5225904856667365294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316386 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A016116 n : ℚ)

end

end A189442.P5225904856667365294

namespace A189442

/-- `Δ[A316386(n)]/A016116(n)` -/
def P5225904856667365294.Spec : Prop :=
  ∀ n, P5225904856667365294.a n = (A189442 (n + 1) : ℚ)

end A189442

/-! ## A189442.P14070748932143100262

`Δ[abs(A316386(n))]/A320770(n)`
-/

namespace A189442.P14070748932143100262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316386 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A320770 n : ℚ)

end

end A189442.P14070748932143100262

namespace A189442

/-- `Δ[abs(A316386(n))]/A320770(n)` -/
def P14070748932143100262.Spec : Prop :=
  ∀ n, P14070748932143100262.a n = (A189442 (n + 1) : ℚ)

end A189442

/-! ## A189442.P4059229889303720843

`Δ[n*A009545(n)]/A016116(n)`
-/

namespace A189442.P4059229889303720843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A009545 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A016116 n : ℚ)

end

end A189442.P4059229889303720843

namespace A189442

/-- `Δ[n*A009545(n)]/A016116(n)` -/
def P4059229889303720843.Spec : Prop :=
  ∀ n, P4059229889303720843.a n = (A189442 (n + 1) : ℚ)

end A189442

/-! ## A189442.P8070288051010724057

`Δ[A316386(n)]/A000079(A004526(n))`
-/

namespace A189442.P8070288051010724057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316386 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 (A004526 n).toNat : ℚ)

end

end A189442.P8070288051010724057

namespace A189442

/-- `Δ[A316386(n)]/A000079(A004526(n))` -/
def P8070288051010724057.Spec : Prop :=
  ∀ n, P8070288051010724057.a n = (A189442 (n + 1) : ℚ)

end A189442

/-! ## A189442.P14202040249076751913

`(A316386(n+1)-A316386(n))/A016116(n)`
-/

namespace A189442.P14202040249076751913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316386 (n + 1) - A316386 n : ℚ) / (A016116 n : ℚ)

end

end A189442.P14202040249076751913

namespace A189442

/-- `(A316386(n+1)-A316386(n))/A016116(n)` -/
def P14202040249076751913.Spec : Prop :=
  ∀ n, P14202040249076751913.a n = (A189442 (n + 1) : ℚ)

end A189442

/-! ## A189442.P3486856758753791495

`A140230(n+1)/abs(A320770(n))`
-/

namespace A189442.P3486856758753791495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140230 (n + 1) : ℚ) / (|A320770 n| : ℚ)

end

end A189442.P3486856758753791495

namespace A189442

/-- `A140230(n+1)/abs(A320770(n))` -/
def P3486856758753791495.Spec : Prop :=
  ∀ n, P3486856758753791495.a n = (A189442 (n + 1) : ℚ)

end A189442

/-! ## A189442.P12990661079391901501

`A140230(n+1)/A000079(A004526(n))`
-/

namespace A189442.P12990661079391901501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140230 (n + 1) : ℚ) / (A000079 (A004526 n).toNat : ℚ)

end

end A189442.P12990661079391901501

namespace A189442

/-- `A140230(n+1)/A000079(A004526(n))` -/
def P12990661079391901501.Spec : Prop :=
  ∀ n, P12990661079391901501.a n = (A189442 (n + 1) : ℚ)

end A189442

/-!
# A189443: Number of n X n array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189443, there is no canonical definition to state claims against.
-/

/-! ## A189443.P9208407278941789744

`A189449(∑[4*n]+1)`
-/

namespace A189443.P9208407278941789744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189443.P9208407278941789744

/-! ## A189443.P826433922391188911

`record[A189449(Δ[A079824(n+1)])]`
-/

namespace A189443.P826433922391188911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189443.P826433922391188911

/-! ## A189443.P13190626065820892530

`A189449(A001844(n))*A208183(n)`
-/

namespace A189443.P13190626065820892530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A001844 n).toNat * A208183 n

end

end A189443.P13190626065820892530

/-! ## A189443.P16483915703305650538

`lcm(A033999(n), A189449(A001844(n)))`
-/

namespace A189443.P16483915703305650538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A189449 (A001844 n).toNat)

end

end A189443.P16483915703305650538

/-!
# A189444: Number of n X 4 array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189444, there is no canonical definition to state claims against.
-/

/-! ## A189444.P3698433126500093738

`sqrt(A264274(2*n+1))`
-/

namespace A189444.P3698433126500093738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264274 (2 * n + 1) : ℝ)

end

end A189444.P3698433126500093738

/-! ## A189444.P2719287523817182178

`A189449(A141214(n+1))`
-/

namespace A189444.P2719287523817182178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A141214 (n + 1)).toNat

end

end A189444.P2719287523817182178

/-! ## A189444.P16241735115624929434

`A189449(A155212(n)+5)`
-/

namespace A189444.P16241735115624929434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A155212 n + 5).toNat

end

end A189444.P16241735115624929434

/-! ## A189444.P12929587301116048466

`A189449(A056000(n)+7)`
-/

namespace A189444.P12929587301116048466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A056000 n + 7).toNat

end

end A189444.P12929587301116048466

/-! ## A189444.P13818458442138463170

`A189449(A052905(n+1)+2)`
-/

namespace A189444.P13818458442138463170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A052905 (n + 1) + 2).toNat

end

end A189444.P13818458442138463170

/-!
# A189445: Number of n X 5 array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189445, there is no canonical definition to state claims against.
-/

/-! ## A189445.P2027502222033676300

`sqrt(A264275(record[xor(1, n)]))`
-/

namespace A189445.P2027502222033676300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℝ)

end

end A189445.P2027502222033676300

/-! ## A189445.P13360360660845504748

`sqrt(A264275(2*n+1))`
-/

namespace A189445.P13360360660845504748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264275 (2 * n + 1) : ℝ)

end

end A189445.P13360360660845504748

/-! ## A189445.P6295933660876706131

`A189449(Δ[A264443(n)])`
-/

namespace A189445.P6295933660876706131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (f1 (n + 1) - f1 n).toNat

end

end A189445.P6295933660876706131

/-! ## A189445.P15482555921149412130

`A189449(A046691(n+3))`
-/

namespace A189445.P15482555921149412130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A046691 (n + 3)).toNat

end

end A189445.P15482555921149412130

/-! ## A189445.P10651926503487921320

`A189449(eq[4, A193592(n)])`
-/

namespace A189445.P10651926503487921320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189445.P10651926503487921320

/-!
# A189446: Number of nX6 array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189446, there is no canonical definition to state claims against.
-/

/-! ## A189446.P11819905065675995007

`sqrt(A264276(record[xor(1, n)]))`
-/

namespace A189446.P11819905065675995007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264276 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℝ)

end

end A189446.P11819905065675995007

/-! ## A189446.P1423781114471883719

`sqrt(A264276(2*n+1))`
-/

namespace A189446.P1423781114471883719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264276 (2 * n + 1) : ℝ)

end

end A189446.P1423781114471883719

/-! ## A189446.P6533759908043401043

`A189449(eq[3, A219347(n)])`
-/

namespace A189446.P6533759908043401043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189446.P6533759908043401043

/-! ## A189446.P9272345235854235962

`A189449(eq[5, A193592(n)])`
-/

namespace A189446.P9272345235854235962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189446.P9272345235854235962

/-! ## A189446.P7160085792280758687

`A189449(eq[6, A200370(n+1)])`
-/

namespace A189446.P7160085792280758687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189446.P7160085792280758687

/-!
# A189447: Number of n X 7 array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189447, there is no canonical definition to state claims against.
-/

/-! ## A189447.P11110426496163944915

`sqrt(A264277(2*n+1))`
-/

namespace A189447.P11110426496163944915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264277 (2 * n + 1) : ℝ)

end

end A189447.P11110426496163944915

/-! ## A189447.P10578292749998544616

`A189449(eq[4, A219347(n)])`
-/

namespace A189447.P10578292749998544616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189447.P10578292749998544616

/-! ## A189447.P5804243895327631833

`A189449(eq[6, A193592(n)])`
-/

namespace A189447.P5804243895327631833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189447.P5804243895327631833

/-! ## A189447.P12867270081251133020

`A189449(Δ[A026054(n+4)])`
-/

namespace A189447.P12867270081251133020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (f1 (n + 1) - f1 n).toNat

end

end A189447.P12867270081251133020

/-! ## A189447.P6675461081133220200

`A189449(eq[7, A200370(n+1)])`
-/

namespace A189447.P6675461081133220200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189447.P6675461081133220200

/-!
# A189448: Number of n X 8 array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189448, there is no canonical definition to state claims against.
-/

/-! ## A189448.P9987462221818388573

`A189449(eq[5, A219347(n)])`
-/

namespace A189448.P9987462221818388573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189448.P9987462221818388573

/-! ## A189448.P9290285927457484152

`A189449(eq[7, A193592(n)])`
-/

namespace A189448.P9290285927457484152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189448.P9290285927457484152

/-! ## A189448.P12359809754775080408

`A189449(A056115(n+3)+8)`
-/

namespace A189448.P12359809754775080408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A056115 (n + 3) + 8).toNat

end

end A189448.P12359809754775080408

/-! ## A189448.P1857805028397421431

`A189449(eq[12, A185782(n+1)])`
-/

namespace A189448.P1857805028397421431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189448.P1857805028397421431

/-! ## A189448.P10923527742019627745

`A189449(eq[64, A057728(n+1)])`
-/

namespace A189448.P10923527742019627745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189448.P10923527742019627745

/-!
# A189450: Number of 2 X n array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189450, the canonical program `A189450.P2585880159804070912` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189450 has offset 1).

The definition of A189450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189450.P12140155754145670990

`ogf((1+x-4x^2+x^3)/(1-4x+4x^3-x^4))`
-/

namespace A189450.P12140155754145670990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4, 1] [1, -4, 0, 4, -1] n

end

end A189450.P12140155754145670990

namespace A189450

/-- `ogf((1+x-4x^2+x^3)/(1-4x+4x^3-x^4))` -/
def P12140155754145670990.Spec : Prop :=
  ∀ n, P12140155754145670990.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P2585880159804070912

`4*a(n-1)-4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=16, a(3)=61`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189450

/-- `4*a(n-1)-4*a(n-3)+a(n-4)` -/
def P2585880159804070912.Spec : Prop :=
  ∀ n, P2585880159804070912.a n = A189450 (n + 1)

theorem P2585880159804070912.correct : P2585880159804070912.Spec := by
  intro n
  simp only [A189450, Nat.add_sub_cancel]

end A189450

/-! ## A189450.P3122992481295811188

`A072335(n)+n%2`
-/

namespace A189450.P3122992481295811188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 n + ((n % 2 : ℕ) : ℤ)

end

end A189450.P3122992481295811188

namespace A189450

/-- `A072335(n)+n%2` -/
def P3122992481295811188.Spec : Prop :=
  ∀ n, P3122992481295811188.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P13137801631630149324

`ceil(A006253(n+1)/2)`
-/

namespace A189450.P13137801631630149324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006253 (n + 1) : ℚ) / 2⌉

end

end A189450.P13137801631630149324

namespace A189450

/-- `ceil(A006253(n+1)/2)` -/
def P13137801631630149324.Spec : Prop :=
  ∀ n, P13137801631630149324.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P5198299224373336938

`∑[A109437(n+1)]+and(1, n)`
-/

namespace A189450.P5198299224373336938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 n : ℤ)

end

end A189450.P5198299224373336938

namespace A189450

/-- `∑[A109437(n+1)]+and(1, n)` -/
def P5198299224373336938.Spec : Prop :=
  ∀ n, P5198299224373336938.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P8930572870149613777

`A101265(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A189450.P8930572870149613777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101265 (n + 2) - a (n - 1)

end

end A189450.P8930572870149613777

namespace A189450

/-- `A101265(n+2)-a(n-1)` -/
def P8930572870149613777.Spec : Prop :=
  ∀ n, P8930572870149613777.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P15403040233203440455

`A101879(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A189450.P15403040233203440455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101879 (n + 2) - a (n - 1)

end

end A189450.P15403040233203440455

namespace A189450

/-- `A101879(n+2)-a(n-1)` -/
def P15403040233203440455.Spec : Prop :=
  ∀ n, P15403040233203440455.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P4755423828731768911

`∑[record[A001353(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A189450.P4755423828731768911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A001353 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189450.P4755423828731768911

namespace A189450

/-- `∑[record[A001353(n)-a(n-1)]]` -/
def P4755423828731768911.Spec : Prop :=
  ∀ n, P4755423828731768911.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P13760757857097796869

`∑[A001353(n+1)]+1-a(n-1)` with `a(0)=1`
-/

namespace A189450.P13760757857097796869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - a (n - 1)

end

end A189450.P13760757857097796869

namespace A189450

/-- `∑[A001353(n+1)]+1-a(n-1)` -/
def P13760757857097796869.Spec : Prop :=
  ∀ n, P13760757857097796869.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P9828848989948113748

`A072335(n)+A000035(n)`
-/

namespace A189450.P9828848989948113748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 n + A000035 n

end

end A189450.P9828848989948113748

namespace A189450

/-- `A072335(n)+A000035(n)` -/
def P9828848989948113748.Spec : Prop :=
  ∀ n, P9828848989948113748.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P3879563967127492435

`A112832(n+1)-A000035(n+1)`
-/

namespace A189450.P3879563967127492435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112832 (n + 1) - A000035 (n + 1)

end

end A189450.P3879563967127492435

namespace A189450

/-- `A112832(n+1)-A000035(n+1)` -/
def P3879563967127492435.Spec : Prop :=
  ∀ n, P3879563967127492435.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P2899367092514782223

`A112832(n+1)+A000034(n)-2`
-/

namespace A189450.P2899367092514782223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112832 (n + 1) + (A000034 n - 2)

end

end A189450.P2899367092514782223

namespace A189450

/-- `A112832(n+1)+A000034(n)-2` -/
def P2899367092514782223.Spec : Prop :=
  ∀ n, P2899367092514782223.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P5751884786824722174

`A006253(n+1)-∑[∑[A006253(n)]]`
-/

namespace A189450.P5751884786824722174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189450.P5751884786824722174

namespace A189450

/-- `A006253(n+1)-∑[∑[A006253(n)]]` -/
def P5751884786824722174.Spec : Prop :=
  ∀ n, P5751884786824722174.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P13962432964232133200

`A133161(n+1)+A001353(n)-a(n-1)+1` with `a(0)=1`
-/

namespace A189450.P13962432964232133200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133161 (n + 1) + (A001353 n - a (n - 1)) + 1

end

end A189450.P13962432964232133200

namespace A189450

/-- `A133161(n+1)+A001353(n)-a(n-1)+1` -/
def P13962432964232133200.Spec : Prop :=
  ∀ n, P13962432964232133200.a n = A189450 (n + 1)

end A189450

/-! ## A189450.P17056786147175479931

`round(A155020(n+1)²/A011782(n+1))`
-/

namespace A189450.P17056786147175479931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155020 (n + 1) ^ 2 : ℚ) / (A011782 (n + 1) : ℚ))

end

end A189450.P17056786147175479931

namespace A189450

/-- `round(A155020(n+1)²/A011782(n+1))` -/
def P17056786147175479931.Spec : Prop :=
  ∀ n, P17056786147175479931.a n = A189450 (n + 1)

end A189450

/-!
# A189451: Number of 3Xn array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189451, there is no canonical definition to state claims against.
-/

/-! ## A189451.P1903170082026283568

`sqrt(A264133(2*n+1))`
-/

namespace A189451.P1903170082026283568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264133 (2 * n + 1) : ℝ)

end

end A189451.P1903170082026283568

/-! ## A189451.P1963086507758845832

`A189449(∑[n+2]+4)`
-/

namespace A189451.P1963086507758845832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189451.P1963086507758845832

/-! ## A189451.P16612872440902780196

`A189449(A167614(n+1))%(12*8^n)`
-/

namespace A189451.P16612872440902780196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189449 (A167614 (n + 1)).toNat) (12 * 8 ^ n : ℤ)

end

end A189451.P16612872440902780196

/-! ## A189451.P10590918764755503367

`A189449(A167614(n+1))+A178798(n)`
-/

namespace A189451.P10590918764755503367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A167614 (n + 1)).toNat + A178798 n

end

end A189451.P10590918764755503367

/-! ## A189451.P4970687833096226417

`gcd(A000038(n), A189449(A167614(n+1)))`
-/

namespace A189451.P4970687833096226417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A189449 (A167614 (n + 1)).toNat)

end

end A189451.P4970687833096226417

/-!
# A189452: Number of 4Xn array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189452, there is no canonical definition to state claims against.
-/

/-! ## A189452.P3388915647760921032

`sqrt(A264134(2*n+1))`
-/

namespace A189452.P3388915647760921032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264134 (2 * n + 1) : ℝ)

end

end A189452.P3388915647760921032

/-! ## A189452.P3077729492687745072

`A189449(A141214(n)+7)`
-/

namespace A189452.P3077729492687745072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A141214 n + 7).toNat

end

end A189452.P3077729492687745072

/-! ## A189452.P16490957856455099067

`A189449(A052905(n)+9)`
-/

namespace A189452.P16490957856455099067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A052905 n + 9).toNat

end

end A189452.P16490957856455099067

/-! ## A189452.P5429958778129433718

`A189449(A055999(n)+10)`
-/

namespace A189452.P5429958778129433718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A055999 n + 10).toNat

end

end A189452.P5429958778129433718

/-! ## A189452.P10208426543965630505

`A189449(A167614(n+2)+1)`
-/

namespace A189452.P10208426543965630505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A167614 (n + 2) + 1).toNat

end

end A189452.P10208426543965630505

/-!
# A189453: Number of 5Xn array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189453, there is no canonical definition to state claims against.
-/

/-! ## A189453.P7385215351578770719

`A189449(∑[n+4]+11)`
-/

namespace A189453.P7385215351578770719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A189453.P7385215351578770719

/-! ## A189453.P1610964481154968130

`sqrt(A264135(2*n+1))`
-/

namespace A189453.P1610964481154968130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264135 (2 * n + 1) : ℝ)

end

end A189453.P1610964481154968130

/-!
# A189454: Number of 6Xn array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189454, there is no canonical definition to state claims against.
-/

/-! ## A189454.P9253420009426656912

`A189449(A056115(n)+21)`
-/

namespace A189454.P9253420009426656912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A056115 n + 21).toNat

end

end A189454.P9253420009426656912

/-! ## A189454.P16560641446968086373

`A189449(A000217(n+5)+6)`
-/

namespace A189454.P16560641446968086373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A000217 (n + 5) + 6).toNat

end

end A189454.P16560641446968086373

/-! ## A189454.P7910732975910859144

`A189449(eq[6, A130270(n+1)])`
-/

namespace A189454.P7910732975910859144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189454.P7910732975910859144

/-! ## A189454.P4203442550940860053

`A189449(eq[7, A131818(n+1)])`
-/

namespace A189454.P4203442550940860053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189454.P4203442550940860053

/-! ## A189454.P2175691482917021041

`A189449(eq[4, A219347(n)]-Δ[n²])`
-/

namespace A189454.P2175691482917021041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

end

end A189454.P2175691482917021041

/-!
# A189455: Number of 7Xn array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189455, there is no canonical definition to state claims against.
-/

/-! ## A189455.P11198681874992681368

`A189449(A167487(n+5))`
-/

namespace A189455.P11198681874992681368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A167487 (n + 5)).toNat

end

end A189455.P11198681874992681368

/-! ## A189455.P9872425274537290628

`A189449(eq[11, A066657(n)])`
-/

namespace A189455.P9872425274537290628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189455.P9872425274537290628

/-! ## A189455.P1055709957645414648

`A189449(A000217(n+6)+7)`
-/

namespace A189455.P1055709957645414648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A000217 (n + 6) + 7).toNat

end

end A189455.P1055709957645414648

/-! ## A189455.P11058061609625436170

`A189449(eq[6, A002262(n)]+1)`
-/

namespace A189455.P11058061609625436170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A189455.P11058061609625436170

/-! ## A189455.P13965759769483244917

`A189449(eq[8, A131818(n+1)])`
-/

namespace A189455.P13965759769483244917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189455.P13965759769483244917

/-!
# A189456: Number of 8Xn array permutations with each element moving zero or one space horizontally or diagonally.

The programs for A189456, there is no canonical definition to state claims against.
-/

/-! ## A189456.P12024039354262693782

`A189449(eq[13, A066657(n)])`
-/

namespace A189456.P12024039354262693782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189456.P12024039354262693782

/-! ## A189456.P4714156730576632111

`A189449(A167499(n+6)+3)`
-/

namespace A189456.P4714156730576632111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A167499 (n + 6) + 3).toNat

end

end A189456.P4714156730576632111

/-! ## A189456.P16487517551292657256

`A189449(A000124(n+7)+7)`
-/

namespace A189456.P16487517551292657256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A000124 (n + 7) + 7).toNat

end

end A189456.P16487517551292657256

/-! ## A189456.P5219772124021439503

`A189449(eq[9, A131818(n+1)])`
-/

namespace A189456.P5219772124021439503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189456.P5219772124021439503

/-! ## A189456.P77804840555733375

`A189449(A000096(n+7)+1-n)`
-/

namespace A189456.P77804840555733375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189449 (A000096 (n + 7) + 1 - (n : ℤ)).toNat

end

end A189456.P77804840555733375

/-!
# A189457: a(n) = n+[ns/r]+[nt/r]; r=2, s=sqrt(2), t=1+sqrt(2).

The programs for A189457, the canonical program `A189457.P2388743509015515209` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189457 has offset 1).

The definition of A189457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189457.P2388743509015515209

`n+1+floor((n+1)*sqrt(2)/2)+floor((n+1)*(1+sqrt(2))/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189457

/-- `n+1+floor((n+1)*sqrt(2)/2)+floor((n+1)*(1+sqrt(2))/2)` -/
def P2388743509015515209.Spec : Prop :=
  ∀ n, P2388743509015515209.a n = A189457 (n + 1)

theorem P2388743509015515209.correct : P2388743509015515209.Spec := by
  intro n
  simp only [A189457, Nat.add_sub_cancel]

end A189457

/-! ## A189457.P17392838064518242780

`floor(A003152(n+1)+A003151(n+1)/2)`
-/

namespace A189457.P17392838064518242780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003152 (n + 1) : ℚ) + (A003151 (n + 1) : ℚ) / 2⌋

end

end A189457.P17392838064518242780

namespace A189457

/-- `floor(A003152(n+1)+A003151(n+1)/2)` -/
def P17392838064518242780.Spec : Prop :=
  ∀ n, P17392838064518242780.a n = A189457 (n + 1)

end A189457

/-! ## A189457.P1606406387388061636

`A186221(A003152(n+1))`
-/

namespace A189457.P1606406387388061636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (A003152 (n + 1)).toNat

end

end A189457.P1606406387388061636

namespace A189457

/-- `A186221(A003152(n+1))` -/
def P1606406387388061636.Spec : Prop :=
  ∀ n, P1606406387388061636.a n = A189457 (n + 1)

end A189457

/-! ## A189457.P17434475711273373447

`A186221(A080755(n+1)-1)`
-/

namespace A189457.P17434475711273373447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (A080755 (n + 1) - 1).toNat

end

end A189457.P17434475711273373447

namespace A189457

/-- `A186221(A080755(n+1)-1)` -/
def P17434475711273373447.Spec : Prop :=
  ∀ n, P17434475711273373447.a n = A189457 (n + 1)

end A189457

/-! ## A189457.P18155721617191966048

`ceil(A188375(A188375(2*n+1))/2)`
-/

namespace A189457.P18155721617191966048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188375 (A188375 (2 * n + 1)).toNat : ℚ) / 2⌉

end

end A189457.P18155721617191966048

namespace A189457

/-- `ceil(A188375(A188375(2*n+1))/2)` -/
def P18155721617191966048.Spec : Prop :=
  ∀ n, P18155721617191966048.a n = A189457 (n + 1)

end A189457

/-! ## A189457.P12256655047448291047

`A061288(A189458(n+1))`
-/

namespace A189457.P12256655047448291047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A189458 (n + 1)).toNat

end

end A189457.P12256655047448291047

namespace A189457

/-- `A061288(A189458(n+1))` -/
def P12256655047448291047.Spec : Prop :=
  ∀ n, P12256655047448291047.a n = A189457 (n + 1)

end A189457

/-! ## A189457.P18402361474778046541

`A049474(A049472(n+1)+A001952(n+1)-1)`
-/

namespace A189457.P18402361474778046541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A049472 (n + 1) + (A001952 (n + 1) - 1)).toNat

end

end A189457.P18402361474778046541

namespace A189457

/-- `A049474(A049472(n+1)+A001952(n+1)-1)` -/
def P18402361474778046541.Spec : Prop :=
  ∀ n, P18402361474778046541.a n = A189457 (n + 1)

end A189457

/-!
# A189458: a(n) = n+[nr/s]+[nt/s]; r=2, s=sqrt(2), t=1+sqrt(2).

The programs for A189458, the canonical program `A189458.P12146221499861744725` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189458 has offset 1).

The definition of A189458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189458.P12146221499861744725

`n+1+floor(2*(n+1)/sqrt(2))+floor((n+1)*(1+sqrt(2))/sqrt(2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189458

/-- `n+1+floor(2*(n+1)/sqrt(2))+floor((n+1)*(1+sqrt(2))/sqrt(2))` -/
def P12146221499861744725.Spec : Prop :=
  ∀ n, P12146221499861744725.a n = A189458 (n + 1)

theorem P12146221499861744725.correct : P12146221499861744725.Spec := by
  intro n
  simp only [A189458, Nat.add_sub_cancel]

end A189458

/-! ## A189458.P4277958912873092355

`∑[Δ[A091087(n)]+2]`
-/

namespace A189458.P4277958912873092355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189458.P4277958912873092355

namespace A189458

/-- `∑[Δ[A091087(n)]+2]` -/
def P4277958912873092355.Spec : Prop :=
  ∀ n, P4277958912873092355.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P8213372724447049305

`floor(A184920(n+1)/2)`
-/

namespace A189458.P8213372724447049305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184920 (n + 1) : ℚ) / 2⌋

end

end A189458.P8213372724447049305

namespace A189458

/-- `floor(A184920(n+1)/2)` -/
def P8213372724447049305.Spec : Prop :=
  ∀ n, P8213372724447049305.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P8144013050012468197

`floor(A188383(n+1)/2)`
-/

namespace A189458.P8144013050012468197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188383 (n + 1) : ℚ) / 2⌋

end

end A189458.P8144013050012468197

namespace A189458

/-- `floor(A188383(n+1)/2)` -/
def P8144013050012468197.Spec : Prop :=
  ∀ n, P8144013050012468197.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P10680378329056176165

`ceil(A140868(n+1)/sqrt(2))`
-/

namespace A189458.P10680378329056176165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140868 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A189458.P10680378329056176165

namespace A189458

/-- `ceil(A140868(n+1)/sqrt(2))` -/
def P10680378329056176165.Spec : Prop :=
  ∀ n, P10680378329056176165.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P10040202007650836300

`∑[A089585(Δ[A091087(n)])-1]`
-/

namespace A189458.P10040202007650836300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089585 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189458.P10040202007650836300

namespace A189458

/-- `∑[A089585(Δ[A091087(n)])-1]` -/
def P10040202007650836300.Spec : Prop :=
  ∀ n, P10040202007650836300.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P7992102199394550640

`∑[A091242(Δ[A091087(n)])-1]`
-/

namespace A189458.P7992102199394550640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189458.P7992102199394550640

namespace A189458

/-- `∑[A091242(Δ[A091087(n)])-1]` -/
def P7992102199394550640.Spec : Prop :=
  ∀ n, P7992102199394550640.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P4672941120257570982

`∑[A112780(Δ[A091087(n)])-1]`
-/

namespace A189458.P4672941120257570982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112780 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189458.P4672941120257570982

namespace A189458

/-- `∑[A112780(Δ[A091087(n)])-1]` -/
def P4672941120257570982.Spec : Prop :=
  ∀ n, P4672941120257570982.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P1760490639757270657

`∑[A280382(Δ[A091087(n)])-1]`
-/

namespace A189458.P1760490639757270657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189458.P1760490639757270657

namespace A189458

/-- `∑[A280382(Δ[A091087(n)])-1]` -/
def P1760490639757270657.Spec : Prop :=
  ∀ n, P1760490639757270657.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P17903212521991734638

`A190335(2*(n+1))`
-/

namespace A189458.P17903212521991734638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190335 (2 * (n + 1))

end

end A189458.P17903212521991734638

namespace A189458

/-- `A190335(2*(n+1))` -/
def P17903212521991734638.Spec : Prop :=
  ∀ n, P17903212521991734638.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P705750726633623969

`floor(A187971(2*(n+1))/2)`
-/

namespace A189458.P705750726633623969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187971 (2 * (n + 1)) : ℚ) / 2⌋

end

end A189458.P705750726633623969

namespace A189458

/-- `floor(A187971(2*(n+1))/2)` -/
def P705750726633623969.Spec : Prop :=
  ∀ n, P705750726633623969.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P12074776116303539238

`A081477(A003151(n+1))`
-/

namespace A189458.P12074776116303539238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (A003151 (n + 1)).toNat

end

end A189458.P12074776116303539238

namespace A189458

/-- `A081477(A003151(n+1))` -/
def P12074776116303539238.Spec : Prop :=
  ∀ n, P12074776116303539238.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P16729709069151604435

`A081477(A080754(n+1)-1)`
-/

namespace A189458.P16729709069151604435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (A080754 (n + 1) - 1).toNat

end

end A189458.P16729709069151604435

namespace A189458

/-- `A081477(A080754(n+1)-1)` -/
def P16729709069151604435.Spec : Prop :=
  ∀ n, P16729709069151604435.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P4861692433662310032

`A285074(A285075(n+2)-2)`
-/

namespace A189458.P4861692433662310032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (A285075 (n + 2) - 2).toNat

end

end A189458.P4861692433662310032

namespace A189458

/-- `A285074(A285075(n+2)-2)` -/
def P4861692433662310032.Spec : Prop :=
  ∀ n, P4861692433662310032.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P8518787654767016367

`A285077(A285075(n+2)-2)`
-/

namespace A189458.P8518787654767016367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (A285075 (n + 2) - 2).toNat

end

end A189458.P8518787654767016367

namespace A189458

/-- `A285077(A285075(n+2)-2)` -/
def P8518787654767016367.Spec : Prop :=
  ∀ n, P8518787654767016367.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P9892187479307560015

`A285074(A285078(n+2)-2)`
-/

namespace A189458.P9892187479307560015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (A285078 (n + 2) - 2).toNat

end

end A189458.P9892187479307560015

namespace A189458

/-- `A285074(A285078(n+2)-2)` -/
def P9892187479307560015.Spec : Prop :=
  ∀ n, P9892187479307560015.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P6411644796070464939

`A285077(A285078(n+2)-2)`
-/

namespace A189458.P6411644796070464939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (A285078 (n + 2) - 2).toNat

end

end A189458.P6411644796070464939

namespace A189458

/-- `A285077(A285078(n+2)-2)` -/
def P6411644796070464939.Spec : Prop :=
  ∀ n, P6411644796070464939.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P14348806423139740851

`A081477(A022804(n+1)/2)`
-/

namespace A189458.P14348806423139740851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (SequenceMachineLib.roundAway ((A022804 (n + 1) : ℚ) / 2)).toNat

end

end A189458.P14348806423139740851

namespace A189458

/-- `A081477(A022804(n+1)/2)` -/
def P14348806423139740851.Spec : Prop :=
  ∀ n, P14348806423139740851.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P14785319762912639453

`A285077(comp[A285077(n+1)-2])`
-/

namespace A189458.P14785319762912639453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A189458.P14785319762912639453

namespace A189458

/-- `A285077(comp[A285077(n+1)-2])` -/
def P14785319762912639453.Spec : Prop :=
  ∀ n, P14785319762912639453.a n = A189458 (n + 1)

end A189458

/-! ## A189458.P16813831751726493610

`A285077(A188376(2*(n+1))/2)`
-/

namespace A189458.P16813831751726493610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (SequenceMachineLib.roundAway ((A188376 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A189458.P16813831751726493610

namespace A189458

/-- `A285077(A188376(2*(n+1))/2)` -/
def P16813831751726493610.Spec : Prop :=
  ∀ n, P16813831751726493610.a n = A189458 (n + 1)

end A189458

/-!
# A189459: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1+sqrt(2), t=1/2+sqrt(2).

The programs for A189459, the canonical program `A189459.P5699157972660240871` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189459 has offset 1).

The definition of A189459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189459.P5699157972660240871

`n+1+floor((n+1)*(1+sqrt(2)))+floor((n+1)*(1+2*sqrt(2))/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189459

/-- `n+1+floor((n+1)*(1+sqrt(2)))+floor((n+1)*(1+2*sqrt(2))/2)` -/
def P5699157972660240871.Spec : Prop :=
  ∀ n, P5699157972660240871.a n = A189459 (n + 1)

theorem P5699157972660240871.correct : P5699157972660240871.Spec := by
  intro n
  simp only [A189459, Nat.add_sub_cancel]

end A189459

/-! ## A189459.P7634714366427578310

`ceil(A137803(n+1)+A286690(n+1)/2)`
-/

namespace A189459.P7634714366427578310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137803 (n + 1) : ℚ) + (A286690 (n + 1) : ℚ) / 2⌉

end

end A189459.P7634714366427578310

namespace A189459

/-- `ceil(A137803(n+1)+A286690(n+1)/2)` -/
def P7634714366427578310.Spec : Prop :=
  ∀ n, P7634714366427578310.a n = A189459 (n + 1)

end A189459

/-! ## A189459.P1418208584649391136

`A190336(A190337(n+1))%A190337(n+1)`
-/

namespace A189459.P1418208584649391136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190336 (A190337 (n + 1)).toNat) (A190337 (n + 1))

end

end A189459.P1418208584649391136

namespace A189459

/-- `A190336(A190337(n+1))%A190337(n+1)` -/
def P1418208584649391136.Spec : Prop :=
  ∀ n, P1418208584649391136.a n = A189459 (n + 1)

end A189459

/-! ## A189459.P2466652531130473574

`A330143(A001952(n+1))`
-/

namespace A189459.P2466652531130473574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330143 (A001952 (n + 1)).toNat

end

end A189459.P2466652531130473574

namespace A189459

/-- `A330143(A001952(n+1))` -/
def P2466652531130473574.Spec : Prop :=
  ∀ n, P2466652531130473574.a n = A189459 (n + 1)

end A189459

/-! ## A189459.P3407855787098823891

`A105566(A004919(n+1))`
-/

namespace A189459.P3407855787098823891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A004919 (n + 1)).toNat

end

end A189459.P3407855787098823891

namespace A189459

/-- `A105566(A004919(n+1))` -/
def P3407855787098823891.Spec : Prop :=
  ∀ n, P3407855787098823891.a n = A189459 (n + 1)

end A189459

/-!
# A189460: n+[ns/r]+[nt/r]; r=2, s=sqrt(5), t=1+sqrt(5).

The programs for A189460, the canonical program `A189460.P11928172565416121221` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189460 has offset 1).

The definition of A189460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189460.P6364438293307101365

`A194151(n+1)+A001950(n+1)`
-/

namespace A189460.P6364438293307101365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (n + 1) + A001950 (n + 1)

end

end A189460.P6364438293307101365

namespace A189460

/-- `A194151(n+1)+A001950(n+1)` -/
def P6364438293307101365.Spec : Prop :=
  ∀ n, P6364438293307101365.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P10002736094997403108

`A194151(n+1)+A283234(n+1)/2`
-/

namespace A189460.P10002736094997403108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194151 (n + 1) : ℚ) + (A283234 (n + 1) : ℚ) / 2

end

end A189460.P10002736094997403108

namespace A189460

/-- `A194151(n+1)+A283234(n+1)/2` -/
def P10002736094997403108.Spec : Prop :=
  ∀ n, P10002736094997403108.a n = (A189460 (n + 1) : ℚ)

end A189460

/-! ## A189460.P11928172565416121221

`A001651(n+1)+or(A000035(n), A022839(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189460

/-- `A001651(n+1)+or(A000035(n), A022839(n+1))` -/
def P11928172565416121221.Spec : Prop :=
  ∀ n, P11928172565416121221.a n = A189460 (n + 1)

theorem P11928172565416121221.correct : P11928172565416121221.Spec := by
  intro n
  simp only [A189460, Nat.add_sub_cancel]

end A189460

/-! ## A189460.P1791625743719718153

`A058066(n+1)+A000201(n+1)`
-/

namespace A189460.P1791625743719718153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (n + 1) + A000201 (n + 1)

end

end A189460.P1791625743719718153

namespace A189460

/-- `A058066(n+1)+A000201(n+1)` -/
def P1791625743719718153.Spec : Prop :=
  ∀ n, P1791625743719718153.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P3354840665425029874

`floor(A000201(n+1)+A004976(n+1)/2)`
-/

namespace A189460.P3354840665425029874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000201 (n + 1) : ℚ) + (A004976 (n + 1) : ℚ) / 2⌋

end

end A189460.P3354840665425029874

namespace A189460

/-- `floor(A000201(n+1)+A004976(n+1)/2)` -/
def P3354840665425029874.Spec : Prop :=
  ∀ n, P3354840665425029874.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P4253942968043836266

`A004526(A022839(n+1))+A001950(n+1)`
-/

namespace A189460.P4253942968043836266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022839 (n + 1)).toNat + A001950 (n + 1)

end

end A189460.P4253942968043836266

namespace A189460

/-- `A004526(A022839(n+1))+A001950(n+1)` -/
def P4253942968043836266.Spec : Prop :=
  ∀ n, P4253942968043836266.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P8190918501231883223

`A008619(A022839(n+1))+A003622(n+1)`
-/

namespace A189460.P8190918501231883223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022839 (n + 1)).toNat + A003622 (n + 1)

end

end A189460.P8190918501231883223

namespace A189460

/-- `A008619(A022839(n+1))+A003622(n+1)` -/
def P8190918501231883223.Spec : Prop :=
  ∀ n, P8190918501231883223.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P109654662329850818

`A004526(A001961(n+1)+n+1)+A001950(n+1)`
-/

namespace A189460.P109654662329850818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001961 (n + 1) + (n + 1 : ℤ)).toNat + A001950 (n + 1)

end

end A189460.P109654662329850818

namespace A189460

/-- `A004526(A001961(n+1)+n+1)+A001950(n+1)` -/
def P109654662329850818.Spec : Prop :=
  ∀ n, P109654662329850818.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P1434317827783444159

`A004526(A004976(n+1))+A000201(n+1)`
-/

namespace A189460.P1434317827783444159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004976 (n + 1)).toNat + A000201 (n + 1)

end

end A189460.P1434317827783444159

namespace A189460

/-- `A004526(A004976(n+1))+A000201(n+1)` -/
def P1434317827783444159.Spec : Prop :=
  ∀ n, P1434317827783444159.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P2366397501508975292

`A004526(A007067(n+1)+A001950(n+1))+A000201(n+1)`
-/

namespace A189460.P2366397501508975292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007067 (n + 1) + A001950 (n + 1)).toNat + A000201 (n + 1)

end

end A189460.P2366397501508975292

namespace A189460

/-- `A004526(A007067(n+1)+A001950(n+1))+A000201(n+1)` -/
def P2366397501508975292.Spec : Prop :=
  ∀ n, P2366397501508975292.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P13235575958500893466

`A004526(A003623(n+1)+A000201(2*(n+1)))`
-/

namespace A189460.P13235575958500893466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003623 (n + 1) + A000201 (2 * (n + 1))).toNat

end

end A189460.P13235575958500893466

namespace A189460

/-- `A004526(A003623(n+1)+A000201(2*(n+1)))` -/
def P13235575958500893466.Spec : Prop :=
  ∀ n, P13235575958500893466.a n = A189460 (n + 1)

end A189460

/-! ## A189460.P2000788189952356807

`A004526(A000201(n+1)+A007067(n+1)+A003623(n+1))`
-/

namespace A189460.P2000788189952356807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000201 (n + 1) + (A007067 (n + 1) + A003623 (n + 1))).toNat

end

end A189460.P2000788189952356807

namespace A189460

/-- `A004526(A000201(n+1)+A007067(n+1)+A003623(n+1))` -/
def P2000788189952356807.Spec : Prop :=
  ∀ n, P2000788189952356807.a n = A189460 (n + 1)

end A189460

/-!
# A189461: n+[nr/s]+[nt/s]; r=2, s=sqrt(5), t=1+sqrt(5).

The programs for A189461, the canonical program `A189461.P9547068110749333866` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189461 has offset 1).

The definition of A189461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189461.P9018889626375578910

`A330185(n+1)-(n+1)`
-/

namespace A189461.P9018889626375578910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330185 (n + 1) - (n + 1 : ℤ)

end

end A189461.P9018889626375578910

namespace A189461

/-- `A330185(n+1)-(n+1)` -/
def P9018889626375578910.Spec : Prop :=
  ∀ n, P9018889626375578910.a n = A189461 (n + 1)

theorem P9018889626375578910.correct : P9018889626375578910.Spec := by
  intro n
  simp only [A189461, Nat.add_sub_cancel, A189461.P9018889626375578910.a, A189461.P9547068110749333866.a, A184746, A184746.P4321245870303371499.a, A188258, A188258.P3174497814932549514.a, A330185, A330185.P3671403461841618346.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A189461

/-! ## A189461.P16591469722264863195

`A016885(n)-A330176(n+1)`
-/

namespace A189461.P16591469722264863195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A330176 (n + 1)

end

end A189461.P16591469722264863195

namespace A189461

/-- `A016885(n)-A330176(n+1)` -/
def P16591469722264863195.Spec : Prop :=
  ∀ n, P16591469722264863195.a n = A189461 (n + 1)

theorem P16591469722264863195.correct : P16591469722264863195.Spec := by
  intro n
  simp only [A189461, Nat.add_sub_cancel, A189461.P16591469722264863195.a, A189461.P9547068110749333866.a, A016885, A016885.P12442016633976001399.a, A184746, A184746.P4321245870303371499.a, A188258, A188258.P3174497814932549514.a, A330176, A330176.P3206787331036609517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A189461

/-! ## A189461.P9547068110749333866

`A188258(n+1)+A184746(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189461

/-- `A188258(n+1)+A184746(n+1)` -/
def P9547068110749333866.Spec : Prop :=
  ∀ n, P9547068110749333866.a n = A189461 (n + 1)

theorem P9547068110749333866.correct : P9547068110749333866.Spec := by
  intro n
  simp only [A189461, Nat.add_sub_cancel]

end A189461

/-! ## A189461.P10370556163641322750

`A184903(2*(n+1))-(n+1)`
-/

namespace A189461.P10370556163641322750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184903 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A189461.P10370556163641322750

namespace A189461

/-- `A184903(2*(n+1))-(n+1)` -/
def P10370556163641322750.Spec : Prop :=
  ∀ n, P10370556163641322750.a n = A189461 (n + 1)

end A189461

/-! ## A189461.P15549395703672156574

`A007494(A194964(2*(n+1)))+2*n`
-/

namespace A189461.P15549395703672156574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A194964 (2 * (n + 1))).toNat + (2 * n : ℤ)

end

end A189461.P15549395703672156574

namespace A189461

/-- `A007494(A194964(2*(n+1)))+2*n` -/
def P15549395703672156574.Spec : Prop :=
  ∀ n, P15549395703672156574.a n = A189461 (n + 1)

end A189461

/-! ## A189461.P1734753590958431966

`2*n+A194964(2*(n+1))+A194964(n+1)`
-/

namespace A189461.P1734753590958431966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A194964 (2 * (n + 1)) + A194964 (n + 1))

end

end A189461.P1734753590958431966

namespace A189461

/-- `2*n+A194964(2*(n+1))+A194964(n+1)` -/
def P1734753590958431966.Spec : Prop :=
  ∀ n, P1734753590958431966.a n = A189461 (n + 1)

end A189461

/-! ## A189461.P824925217000350810

`A032766(A189934(n+1))-(n+1)`
-/

namespace A189461.P824925217000350810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A189934 (n + 1)).toNat - (n + 1 : ℤ)

end

end A189461.P824925217000350810

namespace A189461

/-- `A032766(A189934(n+1))-(n+1)` -/
def P824925217000350810.Spec : Prop :=
  ∀ n, P824925217000350810.a n = A189461 (n + 1)

end A189461

/-! ## A189461.P9916086195832577974

`A267528(A189934(n+1))-n`
-/

namespace A189461.P9916086195832577974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A189934 (n + 1)).toNat - (n : ℤ)

end

end A189461.P9916086195832577974

namespace A189461

/-- `A267528(A189934(n+1))-n` -/
def P9916086195832577974.Spec : Prop :=
  ∀ n, P9916086195832577974.a n = A189461 (n + 1)

end A189461

/-! ## A189461.P9757747506367742422

`A019446(A188258(2*(n+1)))+n`
-/

namespace A189461.P9757747506367742422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A188258 (2 * (n + 1))).toNat + (n : ℤ)

end

end A189461.P9757747506367742422

namespace A189461

/-- `A019446(A188258(2*(n+1)))+n` -/
def P9757747506367742422.Spec : Prop :=
  ∀ n, P9757747506367742422.a n = A189461 (n + 1)

end A189461

/-! ## A189461.P6976525341852136319

`A057353(A189932(n+1))-(n+1)`
-/

namespace A189461.P6976525341852136319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A189932 (n + 1)).toNat - (n + 1 : ℤ)

end

end A189461.P6976525341852136319

namespace A189461

/-- `A057353(A189932(n+1))-(n+1)` -/
def P6976525341852136319.Spec : Prop :=
  ∀ n, P6976525341852136319.a n = A189461 (n + 1)

end A189461

/-!
# A189462: n+[nr/t]+[ns/t]; r=2, s=sqrt(5), t=1+sqrt(5).

The programs for A189462, the canonical program `A189462.P12762323558477115791` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189462 has offset 1).

The definition of A189462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189462.P5509093316784997914

`ceil(comp[floor(ϕ*n)]/2)+n`
-/

namespace A189462.P5509093316784997914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉ + (n : ℤ)

end

end A189462.P5509093316784997914

namespace A189462

/-- `ceil(comp[floor(ϕ*n)]/2)+n` -/
def P5509093316784997914.Spec : Prop :=
  ∀ n, P5509093316784997914.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P12175576552602350796

`ceil(A287726(n+1)/2)`
-/

namespace A189462.P12175576552602350796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287726 (n + 1) : ℚ) / 2⌉

end

end A189462.P12175576552602350796

namespace A189462

/-- `ceil(A287726(n+1)/2)` -/
def P12175576552602350796.Spec : Prop :=
  ∀ n, P12175576552602350796.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P12762323558477115791

`floor((A003231(n+1)+n)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189462

/-- `floor((A003231(n+1)+n)/2)` -/
def P12762323558477115791.Spec : Prop :=
  ∀ n, P12762323558477115791.a n = A189462 (n + 1)

theorem P12762323558477115791.correct : P12762323558477115791.Spec := by
  intro n
  simp only [A189462, Nat.add_sub_cancel]

end A189462

/-! ## A189462.P13603172201411189369

`ceil(A001950(n+1)/2+n)`
-/

namespace A189462.P13603172201411189369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001950 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A189462.P13603172201411189369

namespace A189462

/-- `ceil(A001950(n+1)/2+n)` -/
def P13603172201411189369.Spec : Prop :=
  ∀ n, P13603172201411189369.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P5084947602307100629

`round((A054770(n+1)+n)/2)`
-/

namespace A189462.P5084947602307100629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054770 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A189462.P5084947602307100629

namespace A189462

/-- `round((A054770(n+1)+n)/2)` -/
def P5084947602307100629.Spec : Prop :=
  ∀ n, P5084947602307100629.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P8759318663641048602

`ceil((A016825(n)+A005206(n))/2)`
-/

namespace A189462.P8759318663641048602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016825 n + A005206 n : ℚ) / 2⌉

end

end A189462.P8759318663641048602

namespace A189462

/-- `ceil((A016825(n)+A005206(n))/2)` -/
def P8759318663641048602.Spec : Prop :=
  ∀ n, P8759318663641048602.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P9484988676417045222

`floor((A003622(n+1)+A005408(n)+1)/2)`
-/

namespace A189462.P9484988676417045222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003622 (n + 1) + (A005408 n + 1) : ℚ) / 2⌋

end

end A189462.P9484988676417045222

namespace A189462

/-- `floor((A003622(n+1)+A005408(n)+1)/2)` -/
def P9484988676417045222.Spec : Prop :=
  ∀ n, P9484988676417045222.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P4792987510264164678

`floor(A286750(2*n+1)/2)`
-/

namespace A189462.P4792987510264164678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286750 (2 * n + 1) : ℚ) / 2⌋

end

end A189462.P4792987510264164678

namespace A189462

/-- `floor(A286750(2*n+1)/2)` -/
def P4792987510264164678.Spec : Prop :=
  ∀ n, P4792987510264164678.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P14931332951341400862

`ceil(A287675(2*n+1)/2)`
-/

namespace A189462.P14931332951341400862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287675 (2 * n + 1) : ℚ) / 2⌉

end

end A189462.P14931332951341400862

namespace A189462

/-- `ceil(A287675(2*n+1)/2)` -/
def P14931332951341400862.Spec : Prop :=
  ∀ n, P14931332951341400862.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P13137789358277695887

`ceil(A287723(2*n+1)/2)`
-/

namespace A189462.P13137789358277695887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287723 (2 * n + 1) : ℚ) / 2⌉

end

end A189462.P13137789358277695887

namespace A189462

/-- `ceil(A287723(2*n+1)/2)` -/
def P13137789358277695887.Spec : Prop :=
  ∀ n, P13137789358277695887.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P6890204191234324333

`floor((A286750(A005408(n)+1)-1)/2)`
-/

namespace A189462.P6890204191234324333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286750 (A005408 n + 1).toNat - 1 : ℚ) / 2⌋

end

end A189462.P6890204191234324333

namespace A189462

/-- `floor((A286750(A005408(n)+1)-1)/2)` -/
def P6890204191234324333.Spec : Prop :=
  ∀ n, P6890204191234324333.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P9969611733908753649

`eq[0, A103344(2*n)]`
-/

namespace A189462.P9969611733908753649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189462.P9969611733908753649

namespace A189462

/-- `eq[0, A103344(2*n)]` -/
def P9969611733908753649.Spec : Prop :=
  ∀ n, (P9969611733908753649.a n : ℤ) = A189462 (n + 1)

end A189462

/-! ## A189462.P4318755194423510719

`A008619(A287726(n+1)-1)`
-/

namespace A189462.P4318755194423510719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A287726 (n + 1) - 1).toNat

end

end A189462.P4318755194423510719

namespace A189462

/-- `A008619(A287726(n+1)-1)` -/
def P4318755194423510719.Spec : Prop :=
  ∀ n, P4318755194423510719.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P10051365190316677515

`A110654(A287723(2*n+1))`
-/

namespace A189462.P10051365190316677515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287723 (2 * n + 1)).toNat

end

end A189462.P10051365190316677515

namespace A189462

/-- `A110654(A287723(2*n+1))` -/
def P10051365190316677515.Spec : Prop :=
  ∀ n, P10051365190316677515.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P5153468122655932604

`A110654(A054770(n+1)+n)`
-/

namespace A189462.P5153468122655932604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A054770 (n + 1) + (n : ℤ)).toNat

end

end A189462.P5153468122655932604

namespace A189462

/-- `A110654(A054770(n+1)+n)` -/
def P5153468122655932604.Spec : Prop :=
  ∀ n, P5153468122655932604.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P15794772339635844735

`A110654(A001950(n+1)+2*n)`
-/

namespace A189462.P15794772339635844735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001950 (n + 1) + (2 * n : ℤ)).toNat

end

end A189462.P15794772339635844735

namespace A189462

/-- `A110654(A001950(n+1)+2*n)` -/
def P15794772339635844735.Spec : Prop :=
  ∀ n, P15794772339635844735.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P5700930723472082914

`A110654(A287775(2*n+1)+n)`
-/

namespace A189462.P5700930723472082914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287775 (2 * n + 1) + (n : ℤ)).toNat

end

end A189462.P5700930723472082914

namespace A189462

/-- `A110654(A287775(2*n+1)+n)` -/
def P5700930723472082914.Spec : Prop :=
  ∀ n, P5700930723472082914.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P1092671414899214012

`A065033(A287726(n+1))`
-/

namespace A189462.P1092671414899214012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A287726 (n + 1)).toNat

end

end A189462.P1092671414899214012

namespace A189462

/-- `A065033(A287726(n+1))` -/
def P1092671414899214012.Spec : Prop :=
  ∀ n, P1092671414899214012.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P18422526863943592520

`A004526(A276855(n+1)-1)`
-/

namespace A189462.P18422526863943592520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A276855 (n + 1) - 1).toNat

end

end A189462.P18422526863943592520

namespace A189462

/-- `A004526(A276855(n+1)-1)` -/
def P18422526863943592520.Spec : Prop :=
  ∀ n, P18422526863943592520.a n = A189462 (n + 1)

end A189462

/-! ## A189462.P16299160842578937615

`A004526(A287675(2*(n+1)))`
-/

namespace A189462.P16299160842578937615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A287675 (2 * (n + 1))).toNat

end

end A189462.P16299160842578937615

namespace A189462

/-- `A004526(A287675(2*(n+1)))` -/
def P16299160842578937615.Spec : Prop :=
  ∀ n, P16299160842578937615.a n = A189462 (n + 1)

end A189462

/-!
# A189463: a(n) = [3*n*r] - 3*[n*r], where r=sqrt(5).

The programs for A189463, the canonical program `A189463.P16879808233919991558` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189463 has offset 1).

The definition of A189463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189463.P16879808233919991558

`floor(3*(n+1)*sqrt(5))-3*floor((n+1)*sqrt(5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189463

/-- `floor(3*(n+1)*sqrt(5))-3*floor((n+1)*sqrt(5))` -/
def P16879808233919991558.Spec : Prop :=
  ∀ n, P16879808233919991558.a n = A189463 (n + 1)

theorem P16879808233919991558.correct : P16879808233919991558.Spec := by
  intro n
  simp only [A189463, Nat.add_sub_cancel]

end A189463

/-! ## A189463.P58828478693942610

`floor((n+1)*sqrt(45))%3`
-/

namespace A189463.P58828478693942610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (45 : ℝ)⌋ 3

end

end A189463.P58828478693942610

namespace A189463

/-- `floor((n+1)*sqrt(45))%3` -/
def P58828478693942610.Spec : Prop :=
  ∀ n, P58828478693942610.a n = A189463 (n + 1)

end A189463

/-! ## A189463.P1996313642874284000

`A140397(2*(n+1))`
-/

namespace A189463.P1996313642874284000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (2 * (n + 1))

end

end A189463.P1996313642874284000

namespace A189463

/-- `A140397(2*(n+1))` -/
def P1996313642874284000.Spec : Prop :=
  ∀ n, P1996313642874284000.a n = A189463 (n + 1)

end A189463

/-! ## A189463.P18022492009327528595

`A001951(A001961(3*(n+1))%A001961(n+1))`
-/

namespace A189463.P18022492009327528595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.tmod (A001961 (3 * (n + 1))) (A001961 (n + 1))).toNat

end

end A189463.P18022492009327528595

namespace A189463

/-- `A001951(A001961(3*(n+1))%A001961(n+1))` -/
def P18022492009327528595.Spec : Prop :=
  ∀ n, P18022492009327528595.a n = A189463 (n + 1)

end A189463

/-! ## A189463.P10918355483429260422

`A001951(A001962(3*(n+1))%A001962(n+1))`
-/

namespace A189463.P10918355483429260422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.tmod (A001962 (3 * (n + 1))) (A001962 (n + 1))).toNat

end

end A189463.P10918355483429260422

namespace A189463

/-- `A001951(A001962(3*(n+1))%A001962(n+1))` -/
def P10918355483429260422.Spec : Prop :=
  ∀ n, P10918355483429260422.a n = A189463 (n + 1)

end A189463

/-! ## A189463.P12011581899500079034

`A001951(A004976(3*(n+1))%A004976(n+1))`
-/

namespace A189463.P12011581899500079034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.tmod (A004976 (3 * (n + 1))) (A004976 (n + 1))).toNat

end

end A189463.P12011581899500079034

namespace A189463

/-- `A001951(A004976(3*(n+1))%A004976(n+1))` -/
def P12011581899500079034.Spec : Prop :=
  ∀ n, P12011581899500079034.a n = A189463 (n + 1)

end A189463

/-! ## A189463.P12594336658322851269

`A393579(6*(n+1))`
-/

namespace A189463.P12594336658322851269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393579 (6 * (n + 1))

end

end A189463.P12594336658322851269

namespace A189463

/-- `A393579(6*(n+1))` -/
def P12594336658322851269.Spec : Prop :=
  ∀ n, P12594336658322851269.a n = A189463 (n + 1)

end A189463

/-! ## A189463.P8658316550612087083

`A010872(A292639(2*(n+1)))`
-/

namespace A189463.P8658316550612087083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A292639 (2 * (n + 1))).toNat

end

end A189463.P8658316550612087083

namespace A189463

/-- `A010872(A292639(2*(n+1)))` -/
def P8658316550612087083.Spec : Prop :=
  ∀ n, P8658316550612087083.a n = A189463 (n + 1)

end A189463

/-!
# A189464: Positions of 0 in A189463.

The programs for A189464, the canonical program `A189464.P18164366256384428897` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189464 has offset 1).

The definition of A189464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189464.P18164366256384428897

`record[n*a(A189463(n))]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189464

/-- `record[n*a(A189463(n))]` -/
def P18164366256384428897.Spec : Prop :=
  ∀ n, (P18164366256384428897.a n : ℤ) = A189464 (n + 1)

theorem P18164366256384428897.correct : P18164366256384428897.Spec := by
  intro n
  simp only [A189464, Nat.add_sub_cancel]

end A189464

/-! ## A189464.P6640952430637487425

`record[(n+1)*(1-A189463(n+1))]`
-/

namespace A189464.P6640952430637487425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A189463 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189464.P6640952430637487425

namespace A189464

/-- `record[(n+1)*(1-A189463(n+1))]` -/
def P6640952430637487425.Spec : Prop :=
  ∀ n, P6640952430637487425.a n = A189464 (n + 1)

end A189464

/-! ## A189464.P17221287779652028863

`record[A005843(n+1-A189463(n+1))-(n+1)]`
-/

namespace A189464.P17221287779652028863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1 : ℤ) - A189463 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189464.P17221287779652028863

namespace A189464

/-- `record[A005843(n+1-A189463(n+1))-(n+1)]` -/
def P17221287779652028863.Spec : Prop :=
  ∀ n, P17221287779652028863.a n = A189464 (n + 1)

end A189464

/-! ## A189464.P6328139227658983964

`record[(n+1)/A189465(n+1)^A189463(n+1)]`
-/

namespace A189464.P6328139227658983964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A189465 (n + 1) : ℚ) ^ (A189463 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189464.P6328139227658983964

namespace A189464

/-- `record[(n+1)/A189465(n+1)^A189463(n+1)]` -/
def P6328139227658983964.Spec : Prop :=
  ∀ n, P6328139227658983964.a n = (A189464 (n + 1) : ℚ)

end A189464

/-! ## A189464.P6446598584646971735

`record[(n+1)/A190158(n+1)^A189463(n+1)]`
-/

namespace A189464.P6446598584646971735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A190158 (n + 1) : ℚ) ^ (A189463 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189464.P6446598584646971735

namespace A189464

/-- `record[(n+1)/A190158(n+1)^A189463(n+1)]` -/
def P6446598584646971735.Spec : Prop :=
  ∀ n, P6446598584646971735.a n = (A189464 (n + 1) : ℚ)

end A189464

/-! ## A189464.P4664646975660283694

`lt[2, A024569(2*(n+1))]+1`
-/

namespace A189464.P4664646975660283694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189464.P4664646975660283694

namespace A189464

/-- `lt[2, A024569(2*(n+1))]+1` -/
def P4664646975660283694.Spec : Prop :=
  ∀ n, (P4664646975660283694.a n : ℤ) = A189464 (n + 1)

end A189464

/-! ## A189464.P8633292263588924269

`lt[A096270(2*n), A289034(A284395(2*n+1))]`
-/

namespace A189464.P8633292263588924269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A284395 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189464.P8633292263588924269

namespace A189464

/-- `lt[A096270(2*n), A289034(A284395(2*n+1))]` -/
def P8633292263588924269.Spec : Prop :=
  ∀ n, (P8633292263588924269.a n : ℤ) = A189464 (n + 1)

end A189464

/-! ## A189464.P13268304136476558194

`lt[A188432(A284395(2*n+1)), A188432(2*n+1)]`
-/

namespace A189464.P13268304136476558194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A284395 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189464.P13268304136476558194

namespace A189464

/-- `lt[A188432(A284395(2*n+1)), A188432(2*n+1)]` -/
def P13268304136476558194.Spec : Prop :=
  ∀ n, (P13268304136476558194.a n : ℤ) = A189464 (n + 1)

end A189464

/-! ## A189464.P11454619717098480129

`lt[A289034(2*n+1), A289034(A284395(2*n+1))]`
-/

namespace A189464.P11454619717098480129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A284395 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189464.P11454619717098480129

namespace A189464

/-- `lt[A289034(2*n+1), A289034(A284395(2*n+1))]` -/
def P11454619717098480129.Spec : Prop :=
  ∀ n, (P11454619717098480129.a n : ℤ) = A189464 (n + 1)

end A189464

/-!
# A189465: Positions of 1 in A189463.

The programs for A189465, the canonical program `A189465.P12803094612992992419` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189465 has offset 1).

The definition of A189465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189465.P12803094612992992419

`eq[1, A189463(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189465

/-- `eq[1, A189463(n+1)]+1` -/
def P12803094612992992419.Spec : Prop :=
  ∀ n, (P12803094612992992419.a n : ℤ) = A189465 (n + 1)

theorem P12803094612992992419.correct : P12803094612992992419.Spec := by
  intro n
  simp only [A189465, Nat.add_sub_cancel]

end A189465

/-! ## A189465.P16238814822784046186

`lt[3, -(n*a(A189463(n)))]` with `a(0)=3`
-/

namespace A189465.P16238814822784046186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  -((n : ℤ) * f2 (A189463 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189465.P16238814822784046186

namespace A189465

/-- `lt[3, -(n*a(A189463(n)))]` -/
def P16238814822784046186.Spec : Prop :=
  ∀ n, (P16238814822784046186.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P14282327047507443336

`eq[1, A112171(a(A189463(n)))]` with `a(0)=2`
-/

namespace A189465.P14282327047507443336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A112171 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P14282327047507443336

namespace A189465

/-- `eq[1, A112171(a(A189463(n)))]` -/
def P14282327047507443336.Spec : Prop :=
  ∀ n, (P14282327047507443336.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P15541498607626542255

`eq[3, A270474(a(A189463(n)))]` with `a(0)=1`
-/

namespace A189465.P15541498607626542255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A270474 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P15541498607626542255

namespace A189465

/-- `eq[3, A270474(a(A189463(n)))]` -/
def P15541498607626542255.Spec : Prop :=
  ∀ n, (P15541498607626542255.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P5089650564412623357

`eq[4, A116966(a(A189463(n)))]` with `a(0)=1`
-/

namespace A189465.P5089650564412623357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A116966 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P5089650564412623357

namespace A189465

/-- `eq[4, A116966(a(A189463(n)))]` -/
def P5089650564412623357.Spec : Prop :=
  ∀ n, (P5089650564412623357.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P6690126361067705436

`eq[2, A029967(a(A189463(n)))]` with `a(0)=4`
-/

namespace A189465.P6690126361067705436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A029967 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P6690126361067705436

namespace A189465

/-- `eq[2, A029967(a(A189463(n)))]` -/
def P6690126361067705436.Spec : Prop :=
  ∀ n, (P6690126361067705436.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P8284172660526303129

`eq[2, A035553(a(A189463(n)))]` with `a(0)=4`
-/

namespace A189465.P8284172660526303129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A035553 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P8284172660526303129

namespace A189465

/-- `eq[2, A035553(a(A189463(n)))]` -/
def P8284172660526303129.Spec : Prop :=
  ∀ n, (P8284172660526303129.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P9922300468632479451

`eq[1, A002264(a(A189463(n)))]` with `a(0)=17`
-/

namespace A189465.P9922300468632479451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f2 =>
  A002264 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P9922300468632479451

namespace A189465

/-- `eq[1, A002264(a(A189463(n)))]` -/
def P9922300468632479451.Spec : Prop :=
  ∀ n, (P9922300468632479451.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P441158680416828584

`record[n^A084680(a(A189463(n)))]` with `a(0)=2`
-/

namespace A189465.P441158680416828584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) ^ (A084680 (SequenceMachineLib.roundAway (f1 (A189463 n).toNat)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189465.P441158680416828584

namespace A189465

/-- `record[n^A084680(a(A189463(n)))]` -/
def P441158680416828584.Spec : Prop :=
  ∀ n, P441158680416828584.a n = (A189465 (n + 1) : ℚ)

end A189465

/-! ## A189465.P7718232660290788197

`eq[2, A195173(3*n)%3]`
-/

namespace A189465.P7718232660290788197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195173 (3 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P7718232660290788197

namespace A189465

/-- `eq[2, A195173(3*n)%3]` -/
def P7718232660290788197.Spec : Prop :=
  ∀ n, (P7718232660290788197.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P15342758222256697349

`eq[2, A003842(A004919(2*n))]`
-/

namespace A189465.P15342758222256697349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A004919 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189465.P15342758222256697349

namespace A189465

/-- `eq[2, A003842(A004919(2*n))]` -/
def P15342758222256697349.Spec : Prop :=
  ∀ n, (P15342758222256697349.a n : ℤ) = A189465 (n + 1)

end A189465

/-! ## A189465.P13187644082718360211

`lt[A003849(2*n+1), A188432(A284395(2*n+1))]`
-/

namespace A189465.P13187644082718360211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A284395 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189465.P13187644082718360211

namespace A189465

/-- `lt[A003849(2*n+1), A188432(A284395(2*n+1))]` -/
def P13187644082718360211.Spec : Prop :=
  ∀ n, (P13187644082718360211.a n : ℤ) = A189465 (n + 1)

end A189465

/-!
# A189467: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1+sqrt(2), t=1/2+sqrt(2).

The programs for A189467, the canonical program `A189467.P4290163417405909871` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189467 has offset 1).

The definition of A189467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189467.P4290163417405909871

`n+1+floor((n+1)/(1+sqrt(2)))+floor((n+1)*(1/2+sqrt(2))/(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189467

/-- `n+1+floor((n+1)/(1+sqrt(2)))+floor((n+1)*(1/2+sqrt(2))/(1+sqrt(2)))` -/
def P4290163417405909871.Spec : Prop :=
  ∀ n, P4290163417405909871.a n = A189467 (n + 1)

theorem P4290163417405909871.correct : P4290163417405909871.Spec := by
  intro n
  simp only [A189467, Nat.add_sub_cancel]

end A189467

/-! ## A189467.P17279184280172551763

`ceil(A003151(n+1)/2+n)`
-/

namespace A189467.P17279184280172551763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003151 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A189467.P17279184280172551763

namespace A189467

/-- `ceil(A003151(n+1)/2+n)` -/
def P17279184280172551763.Spec : Prop :=
  ∀ n, P17279184280172551763.a n = A189467 (n + 1)

end A189467

/-! ## A189467.P8513749831132310115

`ceil((A184922(n+1)+n)/2)`
-/

namespace A189467.P8513749831132310115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184922 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A189467.P8513749831132310115

namespace A189467

/-- `ceil((A184922(n+1)+n)/2)` -/
def P8513749831132310115.Spec : Prop :=
  ∀ n, P8513749831132310115.a n = A189467 (n + 1)

end A189467

/-! ## A189467.P11839862082972157230

`A008619(A286904(2*n+1)-2)`
-/

namespace A189467.P11839862082972157230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A286904 (2 * n + 1) - 2).toNat

end

end A189467.P11839862082972157230

namespace A189467

/-- `A008619(A286904(2*n+1)-2)` -/
def P11839862082972157230.Spec : Prop :=
  ∀ n, P11839862082972157230.a n = A189467 (n + 1)

end A189467

/-! ## A189467.P6760686986865090603

`A004526(A286923(n+1))`
-/

namespace A189467.P6760686986865090603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A286923 (n + 1)).toNat

end

end A189467.P6760686986865090603

namespace A189467

/-- `A004526(A286923(n+1))` -/
def P6760686986865090603.Spec : Prop :=
  ∀ n, P6760686986865090603.a n = A189467 (n + 1)

end A189467

/-! ## A189467.P16514523415279399991

`A004526(A187338(n+1)-1)`
-/

namespace A189467.P16514523415279399991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187338 (n + 1) - 1).toNat

end

end A189467.P16514523415279399991

namespace A189467

/-- `A004526(A187338(n+1)-1)` -/
def P16514523415279399991.Spec : Prop :=
  ∀ n, P16514523415279399991.a n = A189467 (n + 1)

end A189467

/-! ## A189467.P16951989142182278348

`A004526(A001952(n+1)+n)`
-/

namespace A189467.P16951989142182278348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001952 (n + 1) + (n : ℤ)).toNat

end

end A189467.P16951989142182278348

namespace A189467

/-- `A004526(A001952(n+1)+n)` -/
def P16951989142182278348.Spec : Prop :=
  ∀ n, P16951989142182278348.a n = A189467 (n + 1)

end A189467

/-!
# A189468: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1+sqrt(2), t=1/2+sqrt(2).

The programs for A189468, the canonical program `A189468.P3465744089343280651` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189468 has offset 1).

The definition of A189468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189468.P3465744089343280651

`n+1+floor(2*(n+1)/(1+2*sqrt(2)))+floor(2*(n+1)*(1+sqrt(2))/(1+2*sqrt(2)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189468

/-- `n+1+floor(2*(n+1)/(1+2*sqrt(2)))+floor(2*(n+1)*(1+sqrt(2))/(1+2*sqrt(2)))` -/
def P3465744089343280651.Spec : Prop :=
  ∀ n, P3465744089343280651.a n = A189468 (n + 1)

theorem P3465744089343280651.correct : P3465744089343280651.Spec := by
  intro n
  simp only [A189468, Nat.add_sub_cancel]

end A189468

/-! ## A189468.P2061017545548909696

`A367328(A214066(n+1))`
-/

namespace A189468.P2061017545548909696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367328 (A214066 (n + 1)).toNat

end

end A189468.P2061017545548909696

namespace A189468

/-- `A367328(A214066(n+1))` -/
def P2061017545548909696.Spec : Prop :=
  ∀ n, P2061017545548909696.a n = A189468 (n + 1)

end A189468

/-! ## A189468.P14842333240433226619

`A001414(A245480(n+2))`
-/

namespace A189468.P14842333240433226619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A245480 (n + 2)).toNat

end

end A189468.P14842333240433226619

namespace A189468

/-- `A001414(A245480(n+2))` -/
def P14842333240433226619.Spec : Prop :=
  ∀ n, P14842333240433226619.a n = A189468 (n + 1)

end A189468

/-! ## A189468.P1439647238384441291

`A177151(A261953(n+1))`
-/

namespace A189468.P1439647238384441291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A261953 (n + 1)).toNat

end

end A189468.P1439647238384441291

namespace A189468

/-- `A177151(A261953(n+1))` -/
def P1439647238384441291.Spec : Prop :=
  ∀ n, P1439647238384441291.a n = A189468 (n + 1)

end A189468

/-! ## A189468.P5719646545133376361

`A177151(A276340(n+1))`
-/

namespace A189468.P5719646545133376361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A276340 (n + 1)).toNat

end

end A189468.P5719646545133376361

namespace A189468

/-- `A177151(A276340(n+1))` -/
def P5719646545133376361.Spec : Prop :=
  ∀ n, P5719646545133376361.a n = A189468 (n + 1)

end A189468

/-!
# A189469: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1+sqrt(2), t=1+sqrt(3).

The programs for A189469, the canonical program `A189469.P1215592601126023914` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189469 has offset 1).

The definition of A189469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189469.P1215592601126023914

`n+1+floor((n+1)*(1+sqrt(2)))+floor((n+1)*(1+sqrt(3)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189469

/-- `n+1+floor((n+1)*(1+sqrt(2)))+floor((n+1)*(1+sqrt(3)))` -/
def P1215592601126023914.Spec : Prop :=
  ∀ n, P1215592601126023914.a n = A189469 (n + 1)

theorem P1215592601126023914.correct : P1215592601126023914.Spec := by
  intro n
  simp only [A189469, Nat.add_sub_cancel]

end A189469

/-! ## A189469.P14409920037462683355

`∑[A276864(n+1)+A007538(n+1)]`
-/

namespace A189469.P14409920037462683355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1) + A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189469.P14409920037462683355

namespace A189469

/-- `∑[A276864(n+1)+A007538(n+1)]` -/
def P14409920037462683355.Spec : Prop :=
  ∀ n, P14409920037462683355.a n = A189469 (n + 1)

end A189469

/-! ## A189469.P9365219628718972892

`∑[Δ[A329791(n)]+3]`
-/

namespace A189469.P9365219628718972892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189469.P9365219628718972892

namespace A189469

/-- `∑[Δ[A329791(n)]+3]` -/
def P9365219628718972892.Spec : Prop :=
  ∀ n, P9365219628718972892.a n = A189469 (n + 1)

end A189469

/-!
# A189470: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1+sqrt(2), t=1+sqrt(3).

The programs for A189470, the canonical program `A189470.P10428409762076069559` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189470 has offset 1).

The definition of A189470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189470.P10428409762076069559

`n+1+floor((n+1)/(1+sqrt(2)))+floor((n+1)*(1+sqrt(3))/(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189470

/-- `n+1+floor((n+1)/(1+sqrt(2)))+floor((n+1)*(1+sqrt(3))/(1+sqrt(2)))` -/
def P10428409762076069559.Spec : Prop :=
  ∀ n, P10428409762076069559.a n = A189470 (n + 1)

theorem P10428409762076069559.correct : P10428409762076069559.Spec := by
  intro n
  simp only [A189470, Nat.add_sub_cancel]

end A189470

/-!
# A189471: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1+sqrt(2), t=1+sqrt(3).

The programs for A189471, the canonical program `A189471.P3244063199192565675` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189471 has offset 1).

The definition of A189471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189471.P3244063199192565675

`n+1+floor((n+1)/(1+sqrt(3)))+floor((n+1)*(1+sqrt(2))/(1+sqrt(3)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189471

/-- `n+1+floor((n+1)/(1+sqrt(3)))+floor((n+1)*(1+sqrt(2))/(1+sqrt(3)))` -/
def P3244063199192565675.Spec : Prop :=
  ∀ n, P3244063199192565675.a n = A189471 (n + 1)

theorem P3244063199192565675.correct : P3244063199192565675.Spec := by
  intro n
  simp only [A189471, Nat.add_sub_cancel]

end A189471

/-! ## A189471.P15097795078778757374

`eq[A178334(3*n+4), A323116(2*n+5)]`
-/

namespace A189471.P15097795078778757374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323116 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189471.P15097795078778757374

namespace A189471

/-- `eq[A178334(3*n+4), A323116(2*n+5)]` -/
def P15097795078778757374.Spec : Prop :=
  ∀ n, (P15097795078778757374.a n : ℤ) = A189471 (n + 1)

end A189471

/-! ## A189471.P15196780932984957383

`A095201(A285669(n+1))`
-/

namespace A189471.P15196780932984957383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095201 (A285669 (n + 1)).toNat

end

end A189471.P15196780932984957383

namespace A189471

/-- `A095201(A285669(n+1))` -/
def P15196780932984957383.Spec : Prop :=
  ∀ n, P15196780932984957383.a n = A189471 (n + 1)

end A189471

/-! ## A189471.P16012898907352419621

`(A285669(A000005(2^n))-1)/2`
-/

namespace A189471.P16012898907352419621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285669 (A000005 (2 ^ n)).toNat - 1 : ℚ) / 2

end

end A189471.P16012898907352419621

namespace A189471

/-- `(A285669(A000005(2^n))-1)/2` -/
def P16012898907352419621.Spec : Prop :=
  ∀ n, P16012898907352419621.a n = (A189471 (n + 1) : ℚ)

end A189471

/-!
# A189472: n+[ns/r]+[nt/r]; r=1, s=e/2, t=2/e.

The programs for A189472, there is no canonical definition to state claims against.
-/

/-! ## A189472.P644462643675979561

`A189403(A077168(n))-(n+1)`
-/

namespace A189472.P644462643675979561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (A077168 n).toNat - (n + 1 : ℤ)

end

end A189472.P644462643675979561

/-! ## A189472.P6688090380183319344

`A189403(n+1)-A061775(2^n)`
-/

namespace A189472.P6688090380183319344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) - A061775 (2 ^ n)

end

end A189472.P6688090380183319344

/-! ## A189472.P12773771721445008992

`A006594(n+1)+A000210(A077168(n))`
-/

namespace A189472.P12773771721445008992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1) + A000210 (A077168 n).toNat

end

end A189472.P12773771721445008992

/-! ## A189472.P6133203189186917335

`A189403(n+1)+A001478(A077168(n))`
-/

namespace A189472.P6133203189186917335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) + A001478 (A077168 n).toNat

end

end A189472.P6133203189186917335

/-! ## A189472.P6701646545036683039

`A189403(n+1)-A029931(A000079(n))`
-/

namespace A189472.P6701646545036683039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189403 (n + 1) - A029931 (A000079 n).toNat

end

end A189472.P6701646545036683039

/-!
# A189473: n+[nr/s]+[nt/s]; r=1, s=e/2, t=2/e.

The programs for A189473, there is no canonical definition to state claims against.
-/

/-! ## A189473.P14032928611052598281

`A330184(n+1)+A055641(A117776(n+1))`
-/

namespace A189473.P14032928611052598281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330184 (n + 1) + A055641 (A117776 (n + 1)).toNat

end

end A189473.P14032928611052598281

/-! ## A189473.P3218274759533428492

`2*n+A055641(A117776(n+1))+A008624(n+2)`
-/

namespace A189473.P3218274759533428492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A055641 (A117776 (n + 1)).toNat + A008624 (n + 2))

end

end A189473.P3218274759533428492

/-! ## A189473.P4914677619454728391

`A032615(A304497(3*n+2)+A241273(n))`
-/

namespace A189473.P4914677619454728391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A304497 (3 * n + 2) + A241273 n).toNat

end

end A189473.P4914677619454728391

/-! ## A189473.P9921594362719854852

`A286991(n+1)-A022303(A113392(n))`
-/

namespace A189473.P9921594362719854852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286991 (n + 1) - A022303 (A113392 n).toNat

end

end A189473.P9921594362719854852

/-! ## A189473.P16977128326589834141

`A074279(Δ[n^4])`
-/

namespace A189473.P16977128326589834141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A189473.P16977128326589834141

/-!
# A189474: n+[nr/t]+[ns/t]; r=1, s=e/2, t=2/e.

The programs for A189474, there is no canonical definition to state claims against.
-/

/-! ## A189474.P7117428068168198766

`xor(char[A098670(2*n+1)], A167520(4*n+3))`
-/

namespace A189474.P7117428068168198766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098670 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A167520 (4 * n + 3))

end

end A189474.P7117428068168198766

/-! ## A189474.P3463224308139238605

`A111660(A313051(n+1))+Δ[n²]`
-/

namespace A189474.P3463224308139238605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A313051 (n + 1)).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A189474.P3463224308139238605

/-! ## A189474.P1890135385655994805

`A111660(A313051(n+1))+A005843(n)+1`
-/

namespace A189474.P1890135385655994805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A313051 (n + 1)).toNat + A005843 n + 1

end

end A189474.P1890135385655994805

/-! ## A189474.P6680703099436098975

`A350174(A042988(2*(n+2))*A193732(2*n+1))`
-/

namespace A189474.P6680703099436098975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A042988 (2 * (n + 2)) * A193732 (2 * n + 1)).toNat

end

end A189474.P6680703099436098975

/-! ## A189474.P15259869044916686513

`A209900(A000201(3*(n+1)))`
-/

namespace A189474.P15259869044916686513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A000201 (3 * (n + 1))).toNat

end

end A189474.P15259869044916686513

/-!
# A189475: First differences of A036449, triangular numbers by definition.

The programs for A189475, there is no canonical definition to state claims against.
-/

/-! ## A189475.P3846605566857233645

`A036449(n+2)-A036449(n+1)`
-/

namespace A189475.P3846605566857233645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (n + 2) - A036449 (n + 1)

end

end A189475.P3846605566857233645

/-! ## A189475.P10513198655100110656

`Δ[A036449(n+1)]`
-/

namespace A189475.P10513198655100110656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189475.P10513198655100110656

/-! ## A189475.P12711585735413821151

`abs(Δ[A036449(ϕ²-(ϕ-n))])`
-/

namespace A189475.P12711585735413821151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A189475.P12711585735413821151

/-! ## A189475.P10968277797152258105

`Δ[record[A036449(A152271(n))]]`
-/

namespace A189475.P10968277797152258105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189475.P10968277797152258105

/-! ## A189475.P5524975185930364441

`Δ[record[A036449(A263111(n))]]`
-/

namespace A189475.P5524975185930364441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189475.P5524975185930364441

/-! ## A189475.P9973779268619033812

`Δ[record[A036449(A324347(n))]]`
-/

namespace A189475.P9973779268619033812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189475.P9973779268619033812

/-! ## A189475.P4639405559813537568

`Δ[record[A036449(A051340(n))]]`
-/

namespace A189475.P4639405559813537568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189475.P4639405559813537568

/-! ## A189475.P3852240848534947655

`Δ[record[A036449(A195663(n))]]`
-/

namespace A189475.P3852240848534947655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036449 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189475.P3852240848534947655

/-! ## A189475.P14640473142271103500

`Δ[A358416(n+1)²]`
-/

namespace A189475.P14640473142271103500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358416 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189475.P14640473142271103500

/-!
# A189476: Fixed point of the morphism 0->01, 1->100.

The programs for A189476, there is no canonical definition to state claims against.
-/

/-! ## A189476.P7879610910130862531

`char[A189478(n+1)-1]`
-/

namespace A189476.P7879610910130862531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189476.P7879610910130862531

/-! ## A189476.P9724824425621855194

`1-char[A189477(n+1)-1]`
-/

namespace A189476.P9724824425621855194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189477 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189476.P9724824425621855194

/-! ## A189476.P13134799328628033541

`Δ[A189575(A028310(n))]`
-/

namespace A189476.P13134799328628033541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189476.P13134799328628033541

/-! ## A189476.P7842703235299612053

`A189575(n+1)-A189575(A028310(n))`
-/

namespace A189476.P7842703235299612053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (n + 1) - A189575 (A028310 n).toNat

end

end A189476.P7842703235299612053

/-! ## A189476.P17881242829114814095

`A002264(Δ[A189478(n+1)])`
-/

namespace A189476.P17881242829114814095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A189476.P17881242829114814095

/-! ## A189476.P7699975757611448199

`A060144(Δ[A189478(n+1)])`
-/

namespace A189476.P7699975757611448199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (f1 (n + 1) - f1 n).toNat

end

end A189476.P7699975757611448199

/-! ## A189476.P1339860376627784864

`A065684(Δ[A189478(n+1)])`
-/

namespace A189476.P1339860376627784864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065684 (f1 (n + 1) - f1 n).toNat

end

end A189476.P1339860376627784864

/-! ## A189476.P4502465453560009506

`A124027(Δ[A189478(n+1)])`
-/

namespace A189476.P4502465453560009506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124027 (f1 (n + 1) - f1 n).toNat

end

end A189476.P4502465453560009506

/-! ## A189476.P18058957082216393714

`A189627(Δ[A189478(n+1)])`
-/

namespace A189476.P18058957082216393714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189627 (f1 (n + 1) - f1 n).toNat

end

end A189476.P18058957082216393714

/-! ## A189476.P17672649520887619393

`A214210(Δ[A189478(n+1)])`
-/

namespace A189476.P17672649520887619393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214210 (f1 (n + 1) - f1 n).toNat

end

end A189476.P17672649520887619393

/-! ## A189476.P18037097734856427082

`A235614(Δ[A189478(n+1)])`
-/

namespace A189476.P18037097734856427082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235614 (f1 (n + 1) - f1 n).toNat

end

end A189476.P18037097734856427082

/-! ## A189476.P1405553172877081291

`A188295(Δ[A189478(n+1)]²)`
-/

namespace A189476.P1405553172877081291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A189476.P1405553172877081291

/-! ## A189476.P9780741258063815302

`A188321(Δ[A189478(n+1)]²)`
-/

namespace A189476.P9780741258063815302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A189476.P9780741258063815302

/-! ## A189476.P8126379066865773685

`A335617(Δ[A189478(n+1)]²)`
-/

namespace A189476.P8126379066865773685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335617 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A189476.P8126379066865773685

/-! ## A189476.P1004735166206108701

`A335617(Δ[A189478(n+1)]-1)`
-/

namespace A189476.P1004735166206108701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335617 (f1 (n + 1) - f1 n - 1).toNat

end

end A189476.P1004735166206108701

/-! ## A189476.P11697025742878652424

`Δ[A189575(A004275(n+1)-n)]`
-/

namespace A189476.P11697025742878652424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189476.P11697025742878652424

/-! ## A189476.P12635700996693493186

`Δ[A189575(A008619(A004275(n)))]`
-/

namespace A189476.P12635700996693493186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189476.P12635700996693493186

/-! ## A189476.P8099660728677055953

`Δ[A189575(A008619(A004273(n)))]`
-/

namespace A189476.P8099660728677055953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189575 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189476.P8099660728677055953

/-!
# A189477: Positions of 0 in A189476; complement of A189478.

The programs for A189477, there is no canonical definition to state claims against.
-/

/-! ## A189477.P8886581308328394641

`comp[A189478(n+1)-1]+1`
-/

namespace A189477.P8886581308328394641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189477.P8886581308328394641

/-! ## A189477.P9132430435149328743

`eq[0, A189476(n+1)]+1`
-/

namespace A189477.P9132430435149328743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189477.P9132430435149328743

/-! ## A189477.P10902003776311333904

`lt[char[A189478(n+1)], A057427(n)]`
-/

namespace A189477.P10902003776311333904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189478 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189477.P10902003776311333904

/-! ## A189477.P14298691239852838947

`record[n+1-A001105(n*A189476(n+1))]`
-/

namespace A189477.P14298691239852838947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001105 ((n : ℤ) * A189476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189477.P14298691239852838947

/-! ## A189477.P375561867007977768

`record[n+1-A008574(n)*A189476(n+1)]`
-/

namespace A189477.P375561867007977768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008574 n * A189476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189477.P375561867007977768

/-! ## A189477.P4694805862892679882

`record[n+1-A017317(n)*A189476(n+1)]`
-/

namespace A189477.P4694805862892679882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A017317 n * A189476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189477.P4694805862892679882

/-! ## A189477.P7238465016539331480

`record[n+1-A004914(n*A189476(n+1)+1)]`
-/

namespace A189477.P7238465016539331480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004914 ((n : ℤ) * A189476 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189477.P7238465016539331480

/-! ## A189477.P8493124808777668871

`record[n+1-A000041(n)*A189476(n+1)]`
-/

namespace A189477.P8493124808777668871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000041 n * A189476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189477.P8493124808777668871

/-! ## A189477.P7653053465225409848

`record[(1-A189476(A133310(n)))*A133310(n)]`
-/

namespace A189477.P7653053465225409848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189476 (A133310 n).toNat) * A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189477.P7653053465225409848

/-! ## A189477.P8263036246503520709

`record[A028242(2*n-A189476(n+1))]`
-/

namespace A189477.P8263036246503520709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((2 * n : ℤ) - A189476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189477.P8263036246503520709

/-!
# A189478: Positions of 1 in A189476; complement of A189477.

The programs for A189478, there is no canonical definition to state claims against.
-/

/-! ## A189478.P13548173896405706953

`eq[1, A189476(n+1)]+1`
-/

namespace A189478.P13548173896405706953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189478.P13548173896405706953

/-! ## A189478.P9334036857879125325

`record[(n+2)*A189476(n+2)]`
-/

namespace A189478.P9334036857879125325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189478.P9334036857879125325

/-! ## A189478.P2899981230834585369

`A344180(eq[1, A189476(A344180(n))])`
-/

namespace A189478.P2899981230834585369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189476 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189478.P2899981230834585369

/-! ## A189478.P2413837375519934923

`lt[n*char[A189477(n+1)], n]`
-/

namespace A189478.P2413837375519934923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189478.P2413837375519934923

/-! ## A189478.P8080368766511275666

`lt[char[A189477(n+1)], A057427(n)]`
-/

namespace A189478.P8080368766511275666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189477 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189478.P8080368766511275666

/-! ## A189478.P2915674383855747951

`eq[1, A189476(A065033(2*n))]`
-/

namespace A189478.P2915674383855747951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189476 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189478.P2915674383855747951

/-! ## A189478.P12969850128864259019

`eq[1, A189476(A123108(2*n))]`
-/

namespace A189478.P12969850128864259019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189476 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189478.P12969850128864259019

/-!
# A189479: Fixed point starting with 0 of the morphism 0->01, 1->101.

The programs for A189479, the canonical program `A189479.P12296644109445828024` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189479 has offset 1).

The definition of A189479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189479.P12412696872354325948

`Δ[ceil((n-1)/ϕ)]`
-/

namespace A189479.P12412696872354325948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189479.P12412696872354325948

namespace A189479

/-- `Δ[ceil((n-1)/ϕ)]` -/
def P12412696872354325948.Spec : Prop :=
  ∀ n, P12412696872354325948.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P9049902180324384288

`xor(1, char[ceil(n*ϕ²)])`
-/

namespace A189479.P9049902180324384288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A189479.P9049902180324384288

namespace A189479

/-- `xor(1, char[ceil(n*ϕ²)])` -/
def P9049902180324384288.Spec : Prop :=
  ∀ n, (P9049902180324384288.a n : ℤ) = A189479 (n + 1)

end A189479

/-! ## A189479.P5292001596647427147

`3%Δ[ceil(ϕ*(n-1))]`
-/

namespace A189479.P5292001596647427147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A189479.P5292001596647427147

namespace A189479

/-- `3%Δ[ceil(ϕ*(n-1))]` -/
def P5292001596647427147.Spec : Prop :=
  ∀ n, P5292001596647427147.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P6625463979666727131

`and(1, Δ[floor((1-n)/ϕ)])`
-/

namespace A189479.P6625463979666727131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A189479.P6625463979666727131

namespace A189479

/-- `and(1, Δ[floor((1-n)/ϕ)])` -/
def P6625463979666727131.Spec : Prop :=
  ∀ n, P6625463979666727131.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P9608820996447113784

`ceil(tanh(char[floor(ϕ*n)+1]))`
-/

namespace A189479.P9608820996447113784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

end

end A189479.P9608820996447113784

namespace A189479

/-- `ceil(tanh(char[floor(ϕ*n)+1]))` -/
def P9608820996447113784.Spec : Prop :=
  ∀ n, P9608820996447113784.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P13915116509015380402

`round(tanh(char[floor(ϕ*n)+1]))`
-/

namespace A189479.P13915116509015380402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

end

end A189479.P13915116509015380402

namespace A189479

/-- `round(tanh(char[floor(ϕ*n)+1]))` -/
def P13915116509015380402.Spec : Prop :=
  ∀ n, P13915116509015380402.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P10135463931580901598

`a(Δ[floor((n-1)/ϕ)])` with `a(0)=0, a(1)=1`
-/

namespace A189479.P10135463931580901598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A189479.P10135463931580901598

namespace A189479

/-- `a(Δ[floor((n-1)/ϕ)])` -/
def P10135463931580901598.Spec : Prop :=
  ∀ n, (P10135463931580901598.a n : ℤ) = A189479 (n + 1)

end A189479

/-! ## A189479.P16618661986594937311

`Δ[ceil(ϕ*(n-1))]!-1`
-/

namespace A189479.P16618661986594937311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A189479.P16618661986594937311

namespace A189479

/-- `Δ[ceil(ϕ*(n-1))]!-1` -/
def P16618661986594937311.Spec : Prop :=
  ∀ n, P16618661986594937311.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P12296644109445828024

`Δ[n+2-a(a(n-1))]²` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189479

/-- `Δ[n+2-a(a(n-1))]²` -/
def P12296644109445828024.Spec : Prop :=
  ∀ n, P12296644109445828024.a n = A189479 (n + 1)

theorem P12296644109445828024.correct : P12296644109445828024.Spec := by
  intro n
  simp only [A189479, Nat.add_sub_cancel]

end A189479

/-! ## A189479.P631868481675067417

`1-and(floor(2*ϕ*n), a(n-1))` with `a(0)=0`
-/

namespace A189479.P631868481675067417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - Int.land ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ (a (n - 1))

end

end A189479.P631868481675067417

namespace A189479

/-- `1-and(floor(2*ϕ*n), a(n-1))` -/
def P631868481675067417.Spec : Prop :=
  ∀ n, P631868481675067417.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P9724743377648015275

`C(2*n, Δ[floor((n-1)*(n+2-ϕ))])`
-/

namespace A189479.P9724743377648015275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * ((n + 2 : ℝ) - Real.goldenRatio)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (f1 (n + 1) - f1 n).toNat

end

end A189479.P9724743377648015275

namespace A189479

/-- `C(2*n, Δ[floor((n-1)*(n+2-ϕ))])` -/
def P9724743377648015275.Spec : Prop :=
  ∀ n, (P9724743377648015275.a n : ℤ) = A189479 (n + 1)

end A189479

/-! ## A189479.P3493660853741418210

`char[A026351(n)]`
-/

namespace A189479.P3493660853741418210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189479.P3493660853741418210

namespace A189479

/-- `char[A026351(n)]` -/
def P3493660853741418210.Spec : Prop :=
  ∀ n, (P3493660853741418210.a n : ℤ) = A189479 (n + 1)

end A189479

/-! ## A189479.P10227112873032626438

`char[A066096(n)+1]`
-/

namespace A189479.P10227112873032626438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189479.P10227112873032626438

namespace A189479

/-- `char[A066096(n)+1]` -/
def P10227112873032626438.Spec : Prop :=
  ∀ n, (P10227112873032626438.a n : ℤ) = A189479 (n + 1)

end A189479

/-! ## A189479.P11585033665216782277

`1-char[A004957(n)]`
-/

namespace A189479.P11585033665216782277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189479.P11585033665216782277

namespace A189479

/-- `1-char[A004957(n)]` -/
def P11585033665216782277.Spec : Prop :=
  ∀ n, P11585033665216782277.a n = A189479 (n + 1)

end A189479

/-! ## A189479.P5461279106721172262

`char[A114986(n)+n]`
-/

namespace A189479.P5461279106721172262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189479.P5461279106721172262

namespace A189479

/-- `char[A114986(n)+n]` -/
def P5461279106721172262.Spec : Prop :=
  ∀ n, (P5461279106721172262.a n : ℤ) = A189479 (n + 1)

end A189479

/-! ## A189479.P10932265844640074749

`char[A026352(n)-n]`
-/

namespace A189479.P10932265844640074749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189479.P10932265844640074749

namespace A189479

/-- `char[A026352(n)-n]` -/
def P10932265844640074749.Spec : Prop :=
  ∀ n, (P10932265844640074749.a n : ℤ) = A189479 (n + 1)

end A189479

/-! ## A189479.P11428197843510359369

`1-A289034(n+1)`
-/

namespace A189479.P11428197843510359369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A289034 (n + 1)

end

end A189479.P11428197843510359369

namespace A189479

/-- `1-A289034(n+1)` -/
def P11428197843510359369.Spec : Prop :=
  ∀ n, P11428197843510359369.a n = A189479 (n + 1)

theorem P11428197843510359369.correct : P11428197843510359369.Spec := by
  intro n
  simp only [A189479, Nat.add_sub_cancel, A189479.P11428197843510359369.a, A189479.P12296644109445828024.f1, A189479.P12296644109445828024.a, A289034, A289034.P3101325627668885776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189479

/-!
# A189480: [4rn]-4[rn], where r=sqrt(5) and [ ]=floor.

The programs for A189480, the canonical program `A189480.P16037819259308962881` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189480 has offset 1).

The definition of A189480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189480.P16037819259308962881

`floor(8*ϕ*(n+1))%4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A189480

/-- `floor(8*ϕ*(n+1))%4` -/
def P16037819259308962881.Spec : Prop :=
  ∀ n, P16037819259308962881.a n = A189480 (n + 1)

theorem P16037819259308962881.correct : P16037819259308962881.Spec := by
  intro n
  simp only [A189480, Nat.add_sub_cancel]

end A189480

/-! ## A189480.P7922715085148737996

`and(3, floor(8*ϕ*(n+1)))`
-/

namespace A189480.P7922715085148737996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌊8 * (Real.goldenRatio * (n + 1 : ℝ))⌋

end

end A189480.P7922715085148737996

namespace A189480

/-- `and(3, floor(8*ϕ*(n+1)))` -/
def P7922715085148737996.Spec : Prop :=
  ∀ n, P7922715085148737996.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P13992095239542081587

`A190440(2*(n+1))`
-/

namespace A189480.P13992095239542081587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (2 * (n + 1))

end

end A189480.P13992095239542081587

namespace A189480

/-- `A190440(2*(n+1))` -/
def P13992095239542081587.Spec : Prop :=
  ∀ n, P13992095239542081587.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P9243271790993461683

`A190248(2*(n+1))+A078588(2*(n+1))`
-/

namespace A189480.P9243271790993461683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (2 * (n + 1)) + A078588 (2 * (n + 1))

end

end A189480.P9243271790993461683

namespace A189480

/-- `A190248(2*(n+1))+A078588(2*(n+1))` -/
def P9243271790993461683.Spec : Prop :=
  ∀ n, P9243271790993461683.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P883732711661853827

`A022839(4*(n+1))-4*A022839(n+1)`
-/

namespace A189480.P883732711661853827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (4 * (n + 1)) - 4 * A022839 (n + 1)

end

end A189480.P883732711661853827

namespace A189480

/-- `A022839(4*(n+1))-4*A022839(n+1)` -/
def P883732711661853827.Spec : Prop :=
  ∀ n, P883732711661853827.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P5758657380379326597

`-(-A276854(A008574(n+1))%A276854(n+1))`
-/

namespace A189480.P5758657380379326597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A276854 (A008574 (n + 1)).toNat) (A276854 (n + 1))

end

end A189480.P5758657380379326597

namespace A189480

/-- `-(-A276854(A008574(n+1))%A276854(n+1))` -/
def P5758657380379326597.Spec : Prop :=
  ∀ n, P5758657380379326597.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P4467089451324510202

`A008574(A195172(n+1))-A195172(A008574(n+1))`
-/

namespace A189480.P4467089451324510202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A195172 (n + 1)).toNat - A195172 (A008574 (n + 1)).toNat

end

end A189480.P4467089451324510202

namespace A189480

/-- `A008574(A195172(n+1))-A195172(A008574(n+1))` -/
def P4467089451324510202.Spec : Prop :=
  ∀ n, P4467089451324510202.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P14948106848550192315

`A008574(A195173(n+1))-A195173(A008574(n+1))`
-/

namespace A189480.P14948106848550192315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A195173 (n + 1)).toNat - A195173 (A008574 (n + 1)).toNat

end

end A189480.P14948106848550192315

namespace A189480

/-- `A008574(A195173(n+1))-A195173(A008574(n+1))` -/
def P14948106848550192315.Spec : Prop :=
  ∀ n, P14948106848550192315.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P6467200862264906734

`A008586(A195172(n+1))-A195172(A008586(n+1))`
-/

namespace A189480.P6467200862264906734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A195172 (n + 1)).toNat - A195172 (A008586 (n + 1)).toNat

end

end A189480.P6467200862264906734

namespace A189480

/-- `A008586(A195172(n+1))-A195172(A008586(n+1))` -/
def P6467200862264906734.Spec : Prop :=
  ∀ n, P6467200862264906734.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P14266314094755715200

`A276854(A008574(n+1))-A008574(A276854(n+1))`
-/

namespace A189480.P14266314094755715200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (A008574 (n + 1)).toNat - A008574 (A276854 (n + 1)).toNat

end

end A189480.P14266314094755715200

namespace A189480

/-- `A276854(A008574(n+1))-A008574(A276854(n+1))` -/
def P14266314094755715200.Spec : Prop :=
  ∀ n, P14266314094755715200.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P16329599145949228150

`A276854(A008586(n+1))-A008586(A276854(n+1))`
-/

namespace A189480.P16329599145949228150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (A008586 (n + 1)).toNat - A008586 (A276854 (n + 1)).toNat

end

end A189480.P16329599145949228150

namespace A189480

/-- `A276854(A008586(n+1))-A008586(A276854(n+1))` -/
def P16329599145949228150.Spec : Prop :=
  ∀ n, P16329599145949228150.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P1188130821033859026

`A004921(n+1)-A004958(A004976(n+1))`
-/

namespace A189480.P1188130821033859026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004921 (n + 1) - A004958 (A004976 (n + 1)).toNat

end

end A189480.P1188130821033859026

namespace A189480

/-- `A004921(n+1)-A004958(A004976(n+1))` -/
def P1188130821033859026.Spec : Prop :=
  ∀ n, P1188130821033859026.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P1398931388904136075

`A004976(A008574(n+1))-A008574(A004976(n+1))`
-/

namespace A189480.P1398931388904136075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A008574 (n + 1)).toNat - A008574 (A004976 (n + 1)).toNat

end

end A189480.P1398931388904136075

namespace A189480

/-- `A004976(A008574(n+1))-A008574(A004976(n+1))` -/
def P1398931388904136075.Spec : Prop :=
  ∀ n, P1398931388904136075.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P14580698841592165208

`A004976(A008586(n+1))-A008586(A004976(n+1))`
-/

namespace A189480.P14580698841592165208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A008586 (n + 1)).toNat - A008586 (A004976 (n + 1)).toNat

end

end A189480.P14580698841592165208

namespace A189480

/-- `A004976(A008586(n+1))-A008586(A004976(n+1))` -/
def P14580698841592165208.Spec : Prop :=
  ∀ n, P14580698841592165208.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P15834688110755530903

`A308898(A194152(2*(n+1)))`
-/

namespace A189480.P15834688110755530903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308898 (A194152 (2 * (n + 1))).toNat

end

end A189480.P15834688110755530903

namespace A189480

/-- `A308898(A194152(2*(n+1)))` -/
def P15834688110755530903.Spec : Prop :=
  ∀ n, P15834688110755530903.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P7161489898604914527

`A190886(A004921(n+1))`
-/

namespace A189480.P7161489898604914527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190886 (A004921 (n + 1)).toNat

end

end A189480.P7161489898604914527

namespace A189480

/-- `A190886(A004921(n+1))` -/
def P7161489898604914527.Spec : Prop :=
  ∀ n, P7161489898604914527.a n = A189480 (n + 1)

end A189480

/-! ## A189480.P13134995821812281071

`A079343(A330175(2*(n+1)))`
-/

namespace A189480.P13134995821812281071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A330175 (2 * (n + 1))).toNat

end

end A189480.P13134995821812281071

namespace A189480

/-- `A079343(A330175(2*(n+1)))` -/
def P13134995821812281071.Spec : Prop :=
  ∀ n, P13134995821812281071.a n = A189480 (n + 1)

end A189480

/-!
# A189481: Numbers n such that x' = n has a unique solution, where x' denotes the arithmetic derivative (A003415).

The programs for A189481, there is no canonical definition to state claims against.
-/

/-! ## A189481.P17362362306261601945

`eq[1, A099302(n+2)]+2`
-/

namespace A189481.P17362362306261601945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A189481.P17362362306261601945

/-! ## A189481.P10071655379807073506

`A009056(eq[1, A099302(n+2)])`
-/

namespace A189481.P10071655379807073506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189481.P10071655379807073506

/-! ## A189481.P12369360484750382437

`eq[1, A099302(A289207(n)+2)]`
-/

namespace A189481.P12369360484750382437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (A289207 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189481.P12369360484750382437

/-! ## A189481.P2300159061084760476

`∑{d}[A189482(n+1), A300251(#)]`
-/

namespace A189481.P2300159061084760476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A189481.P2300159061084760476

/-! ## A189481.P4774189650355671295

`A003415(A189482(n+1))`
-/

namespace A189481.P4774189650355671295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A189482 (n + 1)).toNat

end

end A189481.P4774189650355671295

/-! ## A189481.P12366879883081834036

`A000720(p?[A000040(n+2)*A099302(n+2)]+1)`
-/

namespace A189481.P12366879883081834036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A099302 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A189481.P12366879883081834036

/-! ## A189481.P7187552939387336691

`A319703(2*A189482(n+1))`
-/

namespace A189481.P7187552939387336691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A189482 (n + 1)).toNat

end

end A189481.P7187552939387336691

/-! ## A189481.P4152350817114736561

`record[A239433(n+1)/A099302(A239433(n+1))]`
-/

namespace A189481.P4152350817114736561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239433 (n + 1) : ℚ) / (A099302 (A239433 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189481.P4152350817114736561

/-! ## A189481.P13482137463195219896

`eq[1, A099302(A233583(n+1))]`
-/

namespace A189481.P13482137463195219896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189481.P13482137463195219896

/-!
# A189482: The anti-derivative of the numbers in A189481.

The programs for A189482, there is no canonical definition to state claims against.
-/

/-! ## A189482.P3617290390349907794

`A098699(A189481(n+1))`
-/

namespace A189482.P3617290390349907794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (A189481 (n + 1)).toNat

end

end A189482.P3617290390349907794

/-! ## A189482.P9425912386361981849

`A098699(eq[1, A099302(n+2)]+2)`
-/

namespace A189482.P9425912386361981849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A189482.P9425912386361981849

/-! ## A189482.P9775399981370847355

`A099303(A189481(Δ[n²]-n))`
-/

namespace A189482.P9775399981370847355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (A189481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A189482.P9775399981370847355

/-! ## A189482.P4152742963244036762

`A099303(eq[1, A099302(n+2)]+2)`
-/

namespace A189482.P4152742963244036762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A189482.P4152742963244036762

/-! ## A189482.P12261759166057767985

`A099303(A189481(n+1)%∑[n+6])`
-/

namespace A189482.P12261759166057767985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (Int.tmod (A189481 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A189482.P12261759166057767985

/-! ## A189482.P12619261468916899300

`lcm(A033999(n), A099303(A189481(n+1)))`
-/

namespace A189482.P12619261468916899300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A099303 (A189481 (n + 1)).toNat)

end

end A189482.P12619261468916899300

/-! ## A189482.P11647659581134849568

`A099303(A189481(n+1))%A016945(n)²`
-/

namespace A189482.P11647659581134849568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099303 (A189481 (n + 1)).toNat) (A016945 n ^ 2)

end

end A189482.P11647659581134849568

/-! ## A189482.P668960041286025560

`A099303(A189481(n+1))+A000007(n+1)`
-/

namespace A189482.P668960041286025560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (A189481 (n + 1)).toNat + A000007 (n + 1)

end

end A189482.P668960041286025560

/-! ## A189482.P474617869339205203

`A033999(2*n)*A099303(A189481(n+1))`
-/

namespace A189482.P474617869339205203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A099303 (A189481 (n + 1)).toNat

end

end A189482.P474617869339205203

/-! ## A189482.P12418648788611338664

`A007318(C(2, n))*A099303(A189481(n+1))`
-/

namespace A189482.P12418648788611338664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A099303 (A189481 (n + 1)).toNat

end

end A189482.P12418648788611338664

/-! ## A189482.P15313451446577492666

`floor(A072400(n+1)/4)!*A099303(A189481(n+1))`
-/

namespace A189482.P15313451446577492666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(A072400 (n + 1) : ℚ) / 4⌋.toNat : ℤ) * A099303 (A189481 (n + 1)).toNat

end

end A189482.P15313451446577492666

/-! ## A189482.P15218908670383558043

`A001222(A028416(n+1))*A099303(A189481(n+1))`
-/

namespace A189482.P15218908670383558043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028416 (n + 1)).toNat * A099303 (A189481 (n + 1)).toNat

end

end A189482.P15218908670383558043

/-! ## A189482.P18049483743112200396

`A001222(A073681(n+1))*A099303(A189481(n+1))`
-/

namespace A189482.P18049483743112200396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073681 (n + 1)).toNat * A099303 (A189481 (n + 1)).toNat

end

end A189482.P18049483743112200396

/-!
# A189483: Primes that are not the arithmetic derivative (A003415) of any integer.

The programs for A189483, there is no canonical definition to state claims against.
-/

/-! ## A189483.P4323923403129351112

`p?[A098700(n+1)]`
-/

namespace A189483.P4323923403129351112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189483.P4323923403129351112

/-! ## A189483.P15216698776861544516

`filter[A098700(n+1), A010051(#)]`
-/

namespace A189483.P15216698776861544516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A189483.P15216698776861544516

/-! ## A189483.P12597304884492591066

`filter[A098700(n+1), A323152(#)]`
-/

namespace A189483.P12597304884492591066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A189483.P12597304884492591066

/-! ## A189483.P18398504717433855440

`filter[A098700(n+1), A323153(#)]`
-/

namespace A189483.P18398504717433855440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A189483.P18398504717433855440

/-! ## A189483.P10921435732263686710

`filter[A098700(n+1), A327861(#)]`
-/

namespace A189483.P10921435732263686710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A189483.P10921435732263686710

/-! ## A189483.P4120235296244503630

`filter[A098700(n+1), A340371(#)]`
-/

namespace A189483.P4120235296244503630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A189483.P4120235296244503630

/-! ## A189483.P15714601322639413339

`filter[A098700(n+1), A365716(#)]`
-/

namespace A189483.P15714601322639413339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A189483.P15714601322639413339

/-! ## A189483.P16449294368737685690

`record[A006530(2*A098700(n+1))]`
-/

namespace A189483.P16449294368737685690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A098700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189483.P16449294368737685690

/-! ## A189483.P10129137618455710929

`∩[A000040(n+1), A098700(n+1)]`
-/

namespace A189483.P10129137618455710929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P10129137618455710929

/-! ## A189483.P14302907094876410002

`∩[A001751(n+1), A098700(n+1)]`
-/

namespace A189483.P14302907094876410002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P14302907094876410002

/-! ## A189483.P17597409773429501304

`∩[A008578(n+1), A098700(n+1)]`
-/

namespace A189483.P17597409773429501304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P17597409773429501304

/-! ## A189483.P13640691225225520285

`∩[A025584(n+1), A098700(n+1)]`
-/

namespace A189483.P13640691225225520285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P13640691225225520285

/-! ## A189483.P13423445131238456529

`∩[A033946(n+1), A098700(n+1)]`
-/

namespace A189483.P13423445131238456529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P13423445131238456529

/-! ## A189483.P5120004802804323157

`∩[A045319(n+1), A098700(n+1)]`
-/

namespace A189483.P5120004802804323157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P5120004802804323157

/-! ## A189483.P11674181450694825657

`∩[A046022(n+1), A098700(n+1)]`
-/

namespace A189483.P11674181450694825657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P11674181450694825657

/-! ## A189483.P13473346737138742452

`∩[A051948(n+1), A098700(n+1)]`
-/

namespace A189483.P13473346737138742452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P13473346737138742452

/-! ## A189483.P1642404941425050558

`∩[A053577(n+1), A098700(n+1)]`
-/

namespace A189483.P1642404941425050558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P1642404941425050558

/-! ## A189483.P11295401310401179397

`∩[A053813(n+1), A098700(n+1)]`
-/

namespace A189483.P11295401310401179397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P11295401310401179397

/-! ## A189483.P17140340004668721818

`∩[A058363(n+1), A098700(n+1)]`
-/

namespace A189483.P17140340004668721818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P17140340004668721818

/-! ## A189483.P13841243843504409981

`∩[A062972(n+1), A098700(n+1)]`
-/

namespace A189483.P13841243843504409981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189483.P13841243843504409981

/-!
# A189487: Expansion of e.g.f. exp(x*exp(x) + x^2*exp(2*x)).

The programs for A189487, there is no canonical definition to state claims against.
-/

/-! ## A189487.P4005611412019268213

`A051374(A076325(n+2)-n)`
-/

namespace A189487.P4005611412019268213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051374 (A076325 (n + 2) - (n : ℤ)).toNat

end

end A189487.P4005611412019268213

/-! ## A189487.P4906620179806288155

`A004526(A187001(n)+A005649(n))`
-/

namespace A189487.P4906620179806288155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187001 n + A005649 n).toNat

end

end A189487.P4906620179806288155

/-!
# A189488: Expansion of e.g.f. exp(x*exp(x)+x^2*exp(2*x)+x^3*exp(3*x)).

The programs for A189488, there is no canonical definition to state claims against.
-/

/-! ## A189488.P2248920777453234641

`A065033(A052773(n))+A052883(n)`
-/

namespace A189488.P2248920777453234641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A052773 n).toNat + A052883 n

end

end A189488.P2248920777453234641

/-! ## A189488.P18046977499634697777

`A238483(A006906(n))+A128328(n)`
-/

namespace A189488.P18046977499634697777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238483 (A006906 n).toNat + A128328 n

end

end A189488.P18046977499634697777

/-!
# A189489: E.g.f. A(x) satisfies A(x) = x*exp( A(x)*exp(A(x)) + A(x)^2*exp(2*A(x)) ).

The programs for A189489, there is no canonical definition to state claims against.
-/

/-! ## A189489.P15102599385439799101

`A052040(n+1)*A215630(A365012(n))`
-/

namespace A189489.P15102599385439799101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1) * A215630 (A365012 n).toNat

end

end A189489.P15102599385439799101

/-!
# A189490: Number of arrangements of n+1 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189490, there is no canonical definition to state claims against.
-/

/-! ## A189490.P16519492456643293543

`A189498((n+1)²+n²)`
-/

namespace A189490.P16519492456643293543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 ((n + 1) ^ 2 + n ^ 2)

end

end A189490.P16519492456643293543

/-! ## A189490.P4610512556886206248

`lcm(2, A189498(A001844(n)))`
-/

namespace A189490.P4610512556886206248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189498 (A001844 n).toNat)

end

end A189490.P4610512556886206248

/-! ## A189490.P11049169912397056769

`record[A003982(n)*A189498(n+1)]`
-/

namespace A189490.P11049169912397056769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189490.P11049169912397056769

/-! ## A189490.P15725470412232701102

`A000010(gcd(n, n+1))*A189498(A001844(n))`
-/

namespace A189490.P15725470412232701102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A189498 (A001844 n).toNat

end

end A189490.P15725470412232701102

/-! ## A189490.P7746416792121854384

`((-1)^A007318(n))²*A189498(A001844(n))`
-/

namespace A189490.P7746416792121854384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A189498 (A001844 n).toNat : ℚ)

end

end A189490.P7746416792121854384

/-!
# A189491: Number of arrangements of n+1 nonzero numbers x(i) in -2..2 with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189491, there is no canonical definition to state claims against.
-/

/-! ## A189491.P9390204598786886801

`A189498(∑[n+2])`
-/

namespace A189491.P9390204598786886801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189491.P9390204598786886801

/-! ## A189491.P12244949466980695347

`record[A189498(A000096(A033930(n)))]`
-/

namespace A189491.P12244949466980695347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000096 (A033930 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189491.P12244949466980695347

/-! ## A189491.P12941566607486754743

`record[A189498(A000096(A002260(n+1)))]`
-/

namespace A189491.P12941566607486754743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189491.P12941566607486754743

/-! ## A189491.P1320940250791430681

`record[A189498(A000096(A026233(n+1)))]`
-/

namespace A189491.P1320940250791430681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000096 (A026233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189491.P1320940250791430681

/-! ## A189491.P13007836466485599753

`record[A189498(A000096(A054531(n+1)))]`
-/

namespace A189491.P13007836466485599753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000096 (A054531 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189491.P13007836466485599753

/-!
# A189492: Number of arrangements of n+1 nonzero numbers x(i) in -3..3 with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189492, there is no canonical definition to state claims against.
-/

/-! ## A189492.P14373808155001938715

`A189498(∑[n+3]+1)`
-/

namespace A189492.P14373808155001938715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189492.P14373808155001938715

/-! ## A189492.P2455934030748556939

`or(A000038(n), A189498(A034856(n+2)))`
-/

namespace A189492.P2455934030748556939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A189498 (A034856 (n + 2)).toNat)

end

end A189492.P2455934030748556939

/-! ## A189492.P622935262698385715

`A189498(A034856(n+2))%A189493(n+1)`
-/

namespace A189492.P622935262698385715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189498 (A034856 (n + 2)).toNat) (A189493 (n + 1))

end

end A189492.P622935262698385715

/-! ## A189492.P10357413828798534761

`A172364(A270417(n+1))*A189498(A055999(n)+4)`
-/

namespace A189492.P10357413828798534761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172364 (A270417 (n + 1)).toNat * A189498 (A055999 n + 4).toNat

end

end A189492.P10357413828798534761

/-! ## A189492.P6119868252662856261

`A172364(A151722(n))*A189498(A055999(n)+4)`
-/

namespace A189492.P6119868252662856261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172364 (A151722 n).toNat * A189498 (A055999 n + 4).toNat

end

end A189492.P6119868252662856261

/-!
# A189493: Number of arrangements of n+1 nonzero numbers x(i) in -4..4 with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189493, there is no canonical definition to state claims against.
-/

/-! ## A189493.P13574172559837879533

`A189498(A027379(n+2))`
-/

namespace A189493.P13574172559837879533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A027379 (n + 2)).toNat

end

end A189493.P13574172559837879533

/-! ## A189493.P11295780132365851890

`A189498(A055998(n+2))`
-/

namespace A189493.P11295780132365851890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A055998 (n + 2)).toNat

end

end A189493.P11295780132365851890

/-! ## A189493.P7913058782382184543

`A189498(A155212(n)+5)`
-/

namespace A189493.P7913058782382184543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A155212 n + 5).toNat

end

end A189493.P7913058782382184543

/-! ## A189493.P12455500380800891773

`A189498(A056000(n)+7)`
-/

namespace A189493.P12455500380800891773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A056000 n + 7).toNat

end

end A189493.P12455500380800891773

/-! ## A189493.P640057840673670451

`A189498(eq[3, A193592(n)])`
-/

namespace A189493.P640057840673670451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189493.P640057840673670451

/-!
# A189494: Number of arrangements of n+1 nonzero numbers x(i) in -5..5 with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189494, there is no canonical definition to state claims against.
-/

/-! ## A189494.P9738002479243859374

`A189498(Δ[A264443(n)])`
-/

namespace A189494.P9738002479243859374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n).toNat

end

end A189494.P9738002479243859374

/-! ## A189494.P15145092394884143428

`A189498(A046691(n+3))`
-/

namespace A189494.P15145092394884143428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A046691 (n + 3)).toNat

end

end A189494.P15145092394884143428

/-! ## A189494.P14356151784035504891

`A189498(Δ[A023545(n+1)])`
-/

namespace A189494.P14356151784035504891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n).toNat

end

end A189494.P14356151784035504891

/-! ## A189494.P9741643861748533890

`A189498(A052905(n+2)+1)`
-/

namespace A189494.P9741643861748533890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A052905 (n + 2) + 1).toNat

end

end A189494.P9741643861748533890

/-! ## A189494.P7319700931129187241

`A189498(A000124(n+5)-5)`
-/

namespace A189494.P7319700931129187241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000124 (n + 5) - 5).toNat

end

end A189494.P7319700931129187241

/-!
# A189495: Number of arrangements of n+1 nonzero numbers x(i) in -6..6 with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189495, there is no canonical definition to state claims against.
-/

/-! ## A189495.P3892830302809506591

`A189498(eq[3, A219347(n)])`
-/

namespace A189495.P3892830302809506591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189495.P3892830302809506591

/-! ## A189495.P9189073296448570248

`A189498(A000096(n+5)-4)`
-/

namespace A189495.P9189073296448570248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000096 (n + 5) - 4).toNat

end

end A189495.P9189073296448570248

/-! ## A189495.P14152563810604125877

`A189498(A000124(n+6)-6)`
-/

namespace A189495.P14152563810604125877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A000124 (n + 6) - 6).toNat

end

end A189495.P14152563810604125877

/-! ## A189495.P7302447608829226977

`A189498(Δ[A264443(n+1)]-1)`
-/

namespace A189495.P7302447608829226977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n - 1).toNat

end

end A189495.P7302447608829226977

/-! ## A189495.P11619653129086240988

`A189498(Δ[A023545(n+2)]-1)`
-/

namespace A189495.P11619653129086240988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n - 1).toNat

end

end A189495.P11619653129086240988

/-!
# A189496: Number of arrangements of n+1 nonzero numbers x(i) in -7..7 with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189496, there is no canonical definition to state claims against.
-/

/-! ## A189496.P8083413185622912618

`A189498(A055999(n+4))`
-/

namespace A189496.P8083413185622912618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A055999 (n + 4)).toNat

end

end A189496.P8083413185622912618

/-! ## A189496.P7823898752882153717

`A189498(eq[4, A219347(n)])`
-/

namespace A189496.P7823898752882153717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189496.P7823898752882153717

/-! ## A189496.P7176259041488532764

`A189498(eq[6, A193592(n)])`
-/

namespace A189496.P7176259041488532764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189496.P7176259041488532764

/-! ## A189496.P6686190704269301865

`A189498(A052905(n+4)-1)`
-/

namespace A189496.P6686190704269301865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (A052905 (n + 4) - 1).toNat

end

end A189496.P6686190704269301865

/-! ## A189496.P14062607509424998441

`A189498(Δ[A264443(n+1)+A052905(n+1)])`
-/

namespace A189496.P14062607509424998441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1) + A052905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n).toNat

end

end A189496.P14062607509424998441

/-!
# A189497: Number of arrangements of n+1 nonzero numbers x(i) in -8..8 with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189497, there is no canonical definition to state claims against.
-/

/-! ## A189497.P9396508568312252662

`A189498(eq[5, A219347(n)])`
-/

namespace A189497.P9396508568312252662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189497.P9396508568312252662

/-! ## A189497.P15797993222400134168

`A189498(eq[7, A193592(n)])`
-/

namespace A189497.P15797993222400134168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189497.P15797993222400134168

/-! ## A189497.P13773127211506154227

`A189498(Δ[A264443(n+2)+A052905(n+1)])`
-/

namespace A189497.P13773127211506154227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2) + A052905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n).toNat

end

end A189497.P13773127211506154227

/-! ## A189497.P6568196768853981875

`A189498(Δ[A264443(n+2)+A046691(n+2)])`
-/

namespace A189497.P6568196768853981875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2) + A046691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n).toNat

end

end A189497.P6568196768853981875

/-! ## A189497.P1362430260165333290

`A189498(Δ[A264443(n+2)+A166136(n+3)])`
-/

namespace A189497.P1362430260165333290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2) + A166136 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (f1 (n + 1) - f1 n).toNat

end

end A189497.P1362430260165333290

/-!
# A189498: T(n,k)=Number of arrangements of n+1 nonzero numbers x(i) in -k..k with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189498, there is no canonical definition to state claims against.
-/

/-! ## A189498.P17969495760634499633

`A190071(n+1)+A086010(A151421(n))`
-/

namespace A189498.P17969495760634499633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (n + 1) + A086010 (A151421 n).toNat

end

end A189498.P17969495760634499633

/-! ## A189498.P8593647640583505700

`A190071(n+1)+A025427(A356968(n))`
-/

namespace A189498.P8593647640583505700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190071 (n + 1) + A025427 (A356968 n).toNat

end

end A189498.P8593647640583505700

/-! ## A189498.P12566456922150269236

`A240862(A070251(n+1))+A190071(n+1)`
-/

namespace A189498.P12566456922150269236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 (A070251 (n + 1)).toNat + A190071 (n + 1)

end

end A189498.P12566456922150269236

/-! ## A189498.P291729949950241901

`A281034(A032559(n+1))+A190071(n+1)`
-/

namespace A189498.P291729949950241901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A032559 (n + 1)).toNat + A190071 (n + 1)

end

end A189498.P291729949950241901

/-!
# A189499: Number of arrangements of 3 nonzero numbers x(i) in -n..n with the sum of floor(x(i)/x(i+1)) equal to zero.

The programs for A189499, there is no canonical definition to state claims against.
-/

/-! ## A189499.P2322947380998366307

`A189498(∑[n+1]+2)`
-/

namespace A189499.P2322947380998366307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189498 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A189499.P2322947380998366307

/-! ## A189499.P1530779893986242723

`A261079(A035076(n+2))+A068601(n+1)`
-/

namespace A189499.P1530779893986242723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (A035076 (n + 2)).toNat + A068601 (n + 1)

end

end A189499.P1530779893986242723

