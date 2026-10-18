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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A004200: Continued fraction for Sum_{k>=0} 1/3^(2^k).

The programs for A004200, there is no canonical definition to state claims against.
-/

/-! ## A004200.P14559631745023394865

`floor(A006464(n)/atan(2))`
-/

namespace A004200.P14559631745023394865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006464 n : ℝ) / Real.arctan (2 : ℝ)⌋

end

end A004200.P14559631745023394865

/-! ## A004200.P11335508963073295990

`A057428(n)+A006464(n)`
-/

namespace A004200.P11335508963073295990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A006464 n

end

end A004200.P11335508963073295990

/-! ## A004200.P8522866557454705293

`A006464(n)-A057427(n)`
-/

namespace A004200.P8522866557454705293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - A057427 n

end

end A004200.P8522866557454705293

/-! ## A004200.P7921121604446778284

`A000007(n)+A006464(n)-1`
-/

namespace A004200.P7921121604446778284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A006464 n - 1)

end

end A004200.P7921121604446778284

/-! ## A004200.P18199976099163017709

`A006464(n)-A019428(2*n)`
-/

namespace A004200.P18199976099163017709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - A019428 (2 * n)

end

end A004200.P18199976099163017709

/-! ## A004200.P1639234032860445340

`A006464(n)-(1-A000122(n))²`
-/

namespace A004200.P1639234032860445340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - (1 - A000122 n) ^ 2

end

end A004200.P1639234032860445340

/-! ## A004200.P16900103354566753156

`A006464(n)-A066247(2*(n+1))`
-/

namespace A004200.P16900103354566753156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - A066247 (2 * (n + 1))

end

end A004200.P16900103354566753156

/-! ## A004200.P2989551317253832790

`A006464(n)-A000040(n+1)%2`
-/

namespace A004200.P2989551317253832790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - Int.tmod (A000040 (n + 1)) 2

end

end A004200.P2989551317253832790

/-! ## A004200.P17488181838192935779

`A006464(n)-A001221(A001316(n))`
-/

namespace A004200.P17488181838192935779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - A001221 (A001316 n).toNat

end

end A004200.P17488181838192935779

/-! ## A004200.P12497793046417969457

`A006464(n)-A140082(A053644(n))`
-/

namespace A004200.P12497793046417969457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - A140082 (A053644 n).toNat

end

end A004200.P12497793046417969457

/-! ## A004200.P6953497986696479798

`A006464(n)-A284893(A008458(n))`
-/

namespace A004200.P6953497986696479798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - A284893 (A008458 n).toNat

end

end A004200.P6953497986696479798

/-! ## A004200.P15819040131398237504

`A122165(n)+2*A057428(n)`
-/

namespace A004200.P15819040131398237504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122165 n + 2 * A057428 n

end

end A004200.P15819040131398237504

/-! ## A004200.P12354464065723310826

`A122165(n)-2*A057427(n)`
-/

namespace A004200.P12354464065723310826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122165 n - 2 * A057427 n

end

end A004200.P12354464065723310826

/-! ## A004200.P1300291006526441384

`A122165(n)-2*A178334(n)`
-/

namespace A004200.P1300291006526441384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122165 n - 2 * A178334 n

end

end A004200.P1300291006526441384

/-! ## A004200.P16498814540698132170

`A006464(n)-and(1, A014963(n²+2))`
-/

namespace A004200.P16498814540698132170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - Int.land 1 (A014963 (n ^ 2 + 2))

end

end A004200.P16498814540698132170

/-!
# A004201: Accept one, reject one, accept two, reject two, ...

The programs for A004201, the canonical program `A004201.P3444704990256805059` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004201 has offset 1).

The definition of A004201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004201.P3339253434071045175

`A061885(n)+1`
-/

namespace A004201.P3339253434071045175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n + 1

end

end A004201.P3339253434071045175

namespace A004201

/-- `A061885(n)+1` -/
def P3339253434071045175.Spec : Prop :=
  ∀ n, P3339253434071045175.a n = A004201 (n + 1)

end A004201

/-! ## A004201.P5916176876199542162

`n+1+A000217(A003056(n))`
-/

namespace A004201.P5916176876199542162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000217 (A003056 n).toNat

end

end A004201.P5916176876199542162

namespace A004201

/-- `n+1+A000217(A003056(n))` -/
def P5916176876199542162.Spec : Prop :=
  ∀ n, P5916176876199542162.a n = A004201 (n + 1)

end A004201

/-! ## A004201.P3444704990256805059

`A004202(n+1)-A002024(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004201

/-- `A004202(n+1)-A002024(n+1)` -/
def P3444704990256805059.Spec : Prop :=
  ∀ n, P3444704990256805059.a n = A004201 (n + 1)

theorem P3444704990256805059.correct : P3444704990256805059.Spec := by
  intro n
  simp only [A004201, Nat.add_sub_cancel]

end A004201

/-! ## A004201.P11125489666013848116

`n+1+A000217(A002024(n+1)-1)`
-/

namespace A004201.P11125489666013848116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000217 (A002024 (n + 1) - 1).toNat

end

end A004201.P11125489666013848116

namespace A004201

/-- `n+1+A000217(A002024(n+1)-1)` -/
def P11125489666013848116.Spec : Prop :=
  ∀ n, P11125489666013848116.a n = A004201 (n + 1)

end A004201

/-! ## A004201.P12254643576687243396

`lt[(ceil(sqrt(n))²-n)², n]`
-/

namespace A004201.P12254643576687243396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004201.P12254643576687243396

namespace A004201

/-- `lt[(ceil(sqrt(n))²-n)², n]` -/
def P12254643576687243396.Spec : Prop :=
  ∀ n, (P12254643576687243396.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P3873067444662121865

`C(∑[char[∑[n]]], 2)+1+n`
-/

namespace A004201.P3873067444662121865
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1 + n

end

end A004201.P3873067444662121865

namespace A004201

/-- `C(∑[char[∑[n]]], 2)+1+n` -/
def P3873067444662121865.Spec : Prop :=
  ∀ n, (P3873067444662121865.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P6380362533133305846

`comp[C(comp[∑[n]]-n, 2)+n]+1`
-/

namespace A004201.P6380362533133305846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A004201.P6380362533133305846

namespace A004201

/-- `comp[C(comp[∑[n]]-n, 2)+n]+1` -/
def P6380362533133305846.Spec : Prop :=
  ∀ n, (P6380362533133305846.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P9093820924155515195

`eq[0, ceil(2*sqrt(n+1))%2]+1`
-/

namespace A004201.P9093820924155515195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004201.P9093820924155515195

namespace A004201

/-- `eq[0, ceil(2*sqrt(n+1))%2]+1` -/
def P9093820924155515195.Spec : Prop :=
  ∀ n, (P9093820924155515195.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P6716999501025000991

`C(comp[C(n, 2)-1]-n, 2)+n+1`
-/

namespace A004201.P6716999501025000991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 + (n + 1)

end

end A004201.P6716999501025000991

namespace A004201

/-- `C(comp[C(n, 2)-1]-n, 2)+n+1` -/
def P6716999501025000991.Spec : Prop :=
  ∀ n, (P6716999501025000991.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P10475974623604048809

`lt[n+1-round(sqrt(n+1))², 1]+1`
-/

namespace A004201.P10475974623604048809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004201.P10475974623604048809

namespace A004201

/-- `lt[n+1-round(sqrt(n+1))², 1]+1` -/
def P10475974623604048809.Spec : Prop :=
  ∀ n, (P10475974623604048809.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P2990431666231087863

`∑[A130296(n+1)]`
-/

namespace A004201.P2990431666231087863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004201.P2990431666231087863

namespace A004201

/-- `∑[A130296(n+1)]` -/
def P2990431666231087863.Spec : Prop :=
  ∀ n, P2990431666231087863.a n = A004201 (n + 1)

end A004201

/-! ## A004201.P11393651579129438948

`A057944(n)+1+n`
-/

namespace A004201.P11393651579129438948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + 1 + (n : ℤ)

end

end A004201.P11393651579129438948

namespace A004201

/-- `A057944(n)+1+n` -/
def P11393651579129438948.Spec : Prop :=
  ∀ n, P11393651579129438948.a n = A004201 (n + 1)

end A004201

/-! ## A004201.P2527209466914496699

`Δ[n²]-A002262(n)`
-/

namespace A004201.P2527209466914496699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A002262 n

end

end A004201.P2527209466914496699

namespace A004201

/-- `Δ[n²]-A002262(n)` -/
def P2527209466914496699.Spec : Prop :=
  ∀ n, P2527209466914496699.a n = A004201 (n + 1)

end A004201

/-! ## A004201.P13158282327395777849

`comp[A064801(n+1)]+1`
-/

namespace A004201.P13158282327395777849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004201.P13158282327395777849

namespace A004201

/-- `comp[A064801(n+1)]+1` -/
def P13158282327395777849.Spec : Prop :=
  ∀ n, (P13158282327395777849.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P3436287658343747701

`∑[val(A099627(n), 2)+1]`
-/

namespace A004201.P3436287658343747701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099627 n).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004201.P3436287658343747701

namespace A004201

/-- `∑[val(A099627(n), 2)+1]` -/
def P3436287658343747701.Spec : Prop :=
  ∀ n, (P3436287658343747701.a n : ℤ) = A004201 (n + 1)

end A004201

/-! ## A004201.P6902998927339342121

`∑[A132119(n+1)-n]`
-/

namespace A004201.P6902998927339342121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132119 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004201.P6902998927339342121

namespace A004201

/-- `∑[A132119(n+1)-n]` -/
def P6902998927339342121.Spec : Prop :=
  ∀ n, P6902998927339342121.a n = A004201 (n + 1)

end A004201

/-! ## A004201.P7857322880461432625

`Δ[n²]-sqrt(A143844(n))`
-/

namespace A004201.P7857322880461432625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.sqrt (A143844 n : ℝ)

end

end A004201.P7857322880461432625

namespace A004201

/-- `Δ[n²]-sqrt(A143844(n))` -/
def P7857322880461432625.Spec : Prop :=
  ∀ n, P7857322880461432625.a n = (A004201 (n + 1) : ℝ)

end A004201

/-! ## A004201.P11689989702325284224

`Δ[n²]-log2(A059268(n))`
-/

namespace A004201.P11689989702325284224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.logb 2 (A059268 n : ℝ)

end

end A004201.P11689989702325284224

namespace A004201

/-- `Δ[n²]-log2(A059268(n))` -/
def P11689989702325284224.Spec : Prop :=
  ∀ n, P11689989702325284224.a n = (A004201 (n + 1) : ℝ)

end A004201

/-! ## A004201.P11411795662279897422

`∪[(n+1)², A063657(n+1)]`
-/

namespace A004201.P11411795662279897422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004201.P11411795662279897422

namespace A004201

/-- `∪[(n+1)², A063657(n+1)]` -/
def P11411795662279897422.Spec : Prop :=
  ∀ n, (P11411795662279897422.a n : ℤ) = A004201 (n + 1)

end A004201

/-!
# A004202: Skip 1, take 1, skip 2, take 2, skip 3, take 3, etc.

The programs for A004202, the canonical program `A004202.P6327880886669607984` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004202 has offset 1).

The definition of A004202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004202.P7616947341377979077

`n+1+A127739(n+1)`
-/

namespace A004202.P7616947341377979077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A127739 (n + 1)

end

end A004202.P7616947341377979077

namespace A004202

/-- `n+1+A127739(n+1)` -/
def P7616947341377979077.Spec : Prop :=
  ∀ n, P7616947341377979077.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P6327880886669607984

`n+1+A000217(A002024(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004202

/-- `n+1+A000217(A002024(n+1))` -/
def P6327880886669607984.Spec : Prop :=
  ∀ n, P6327880886669607984.a n = A004202 (n + 1)

theorem P6327880886669607984.correct : P6327880886669607984.Spec := by
  intro n
  simp only [A004202, Nat.add_sub_cancel]

end A004202

/-! ## A004202.P15055483537479303742

`lt[0, n-round(sqrt(n))²]`
-/

namespace A004202.P15055483537479303742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004202.P15055483537479303742

namespace A004202

/-- `lt[0, n-round(sqrt(n))²]` -/
def P15055483537479303742.Spec : Prop :=
  ∀ n, (P15055483537479303742.a n : ℤ) = A004202 (n + 1)

end A004202

/-! ## A004202.P9528751547241221310

`C(comp[∑[n]]-n, 2)+1+n`
-/

namespace A004202.P9528751547241221310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n

end

end A004202.P9528751547241221310

namespace A004202

/-- `C(comp[∑[n]]-n, 2)+1+n` -/
def P9528751547241221310.Spec : Prop :=
  ∀ n, (P9528751547241221310.a n : ℤ) = A004202 (n + 1)

end A004202

/-! ## A004202.P7481908325824962196

`C(comp[∑[n]]-n, 2)-xor(n, -1)`
-/

namespace A004202.P7481908325824962196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - Int.xor (n : ℤ) (-1)

end

end A004202.P7481908325824962196

namespace A004202

/-- `C(comp[∑[n]]-n, 2)-xor(n, -1)` -/
def P7481908325824962196.Spec : Prop :=
  ∀ n, P7481908325824962196.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P6673254068267349495

`eq[1, and(1, ceil(2*sqrt(n+1)))]+1`
-/

namespace A004202.P6673254068267349495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004202.P6673254068267349495

namespace A004202

/-- `eq[1, and(1, ceil(2*sqrt(n+1)))]+1` -/
def P6673254068267349495.Spec : Prop :=
  ∀ n, (P6673254068267349495.a n : ℤ) = A004202 (n + 1)

end A004202

/-! ## A004202.P420097267730799442

`abs(lt[n, (ceil(sqrt(n))²-n)²]-1)+1`
-/

namespace A004202.P420097267730799442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1| + 1

end

end A004202.P420097267730799442

namespace A004202

/-- `abs(lt[n, (ceil(sqrt(n))²-n)²]-1)+1` -/
def P420097267730799442.Spec : Prop :=
  ∀ n, P420097267730799442.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P12403179570587488773

`∑[2-A167407(n)]`
-/

namespace A004202.P12403179570587488773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004202.P12403179570587488773

namespace A004202

/-- `∑[2-A167407(n)]` -/
def P12403179570587488773.Spec : Prop :=
  ∀ n, P12403179570587488773.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P9477128583307773940

`∑[3-A155124(n)]`
-/

namespace A004202.P9477128583307773940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A155124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004202.P9477128583307773940

namespace A004202

/-- `∑[3-A155124(n)]` -/
def P9477128583307773940.Spec : Prop :=
  ∀ n, P9477128583307773940.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P10681389707108883601

`A064801(n+1)+1`
-/

namespace A004202.P10681389707108883601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) + 1

end

end A004202.P10681389707108883601

namespace A004202

/-- `A064801(n+1)+1` -/
def P10681389707108883601.Spec : Prop :=
  ∀ n, P10681389707108883601.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P14712535632861792479

`A057944(n)+comp[∑[n]]`
-/

namespace A004202.P14712535632861792479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A004202.P14712535632861792479

namespace A004202

/-- `A057944(n)+comp[∑[n]]` -/
def P14712535632861792479.Spec : Prop :=
  ∀ n, P14712535632861792479.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P9464319702368676451

`A000124(∑[char[∑[n]]])+n`
-/

namespace A004202.P9464319702368676451
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A004202.P9464319702368676451

namespace A004202

/-- `A000124(∑[char[∑[n]]])+n` -/
def P9464319702368676451.Spec : Prop :=
  ∀ n, P9464319702368676451.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P6624002893719367548

`A025581(n)+2*(n+1)`
-/

namespace A004202.P6624002893719367548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (2 * (n + 1) : ℤ)

end

end A004202.P6624002893719367548

namespace A004202

/-- `A025581(n)+2*(n+1)` -/
def P6624002893719367548.Spec : Prop :=
  ∀ n, P6624002893719367548.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P13174056069619670108

`A004736(n+1)+Δ[n²]`
-/

namespace A004202.P13174056069619670108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A004202.P13174056069619670108

namespace A004202

/-- `A004736(n+1)+Δ[n²]` -/
def P13174056069619670108.Spec : Prop :=
  ∀ n, P13174056069619670108.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P13036425614023556050

`∑[A066182(n+1)+1-n]`
-/

namespace A004202.P13036425614023556050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004202.P13036425614023556050

namespace A004202

/-- `∑[A066182(n+1)+1-n]` -/
def P13036425614023556050.Spec : Prop :=
  ∀ n, P13036425614023556050.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P9365137885075077885

`ceil((1-sqrt(A189151(n+1)))²)`
-/

namespace A004202.P9365137885075077885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.sqrt (A189151 (n + 1) : ℝ)) ^ 2⌉

end

end A004202.P9365137885075077885

namespace A004202

/-- `ceil((1-sqrt(A189151(n+1)))²)` -/
def P9365137885075077885.Spec : Prop :=
  ∀ n, P9365137885075077885.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P5012915191875251516

`Δ[n²]+sqrt(A055461(n+1))`
-/

namespace A004202.P5012915191875251516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + Real.sqrt (A055461 (n + 1) : ℝ)

end

end A004202.P5012915191875251516

namespace A004202

/-- `Δ[n²]+sqrt(A055461(n+1))` -/
def P5012915191875251516.Spec : Prop :=
  ∀ n, P5012915191875251516.a n = (A004202 (n + 1) : ℝ)

end A004202

/-! ## A004202.P13069911215684425612

`A000217(∑[char[∑[n]]])+1+n`
-/

namespace A004202.P13069911215684425612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A004202.P13069911215684425612

namespace A004202

/-- `A000217(∑[char[∑[n]]])+1+n` -/
def P13069911215684425612.Spec : Prop :=
  ∀ n, P13069911215684425612.a n = A004202 (n + 1)

end A004202

/-! ## A004202.P8351107095302876148

`A000217(round(sqrt(2*n+1)))+n+1`
-/

namespace A004202.P8351107095302876148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat + (n + 1 : ℤ)

end

end A004202.P8351107095302876148

namespace A004202

/-- `A000217(round(sqrt(2*n+1)))+n+1` -/
def P8351107095302876148.Spec : Prop :=
  ∀ n, P8351107095302876148.a n = A004202 (n + 1)

end A004202

/-!
# A004204: Number of permutations of length n with spread 0.

The programs for A004204, there is no canonical definition to state claims against.
-/

/-! ## A004204.P14691697550559128123

`A147679(∑[n]+1)`
-/

namespace A004204.P14691697550559128123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004204.P14691697550559128123

/-! ## A004204.P6596464155434099912

`and(-1, A147679(A000124(n)))`
-/

namespace A004204.P6596464155434099912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A147679 (A000124 n).toNat)

end

end A004204.P6596464155434099912

/-! ## A004204.P16608911567492713950

`A147679(A000124(n))+A025469(n)`
-/

namespace A004204.P16608911567492713950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (A000124 n).toNat + A025469 n

end

end A004204.P16608911567492713950

/-! ## A004204.P5669938073467821925

`A147679(A000124(n))%A340243(n)`
-/

namespace A004204.P5669938073467821925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147679 (A000124 n).toNat) (A340243 n)

end

end A004204.P5669938073467821925

/-! ## A004204.P1524075428654340345

`A147679(A000124(n))^A007318(∑[n])`
-/

namespace A004204.P1524075428654340345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147679 (A000124 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A004204.P1524075428654340345

/-!
# A004205: Number of permutations of length n with spread 1.

The programs for A004205, there is no canonical definition to state claims against.
-/

/-! ## A004205.P6041667794422549678

`A147679(C(n+3, 2))`
-/

namespace A004205.P6041667794422549678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (Nat.choose (n + 3) 2)

end

end A004205.P6041667794422549678

/-! ## A004205.P2190422653741285542

`A147679(∑[n+1]+2)`
-/

namespace A004205.P2190422653741285542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A004205.P2190422653741285542

/-! ## A004205.P4421590422048957905

`record[A147679(p?[round(8*n/7)]+1)]`
-/

namespace A004205.P4421590422048957905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004205.P4421590422048957905

/-! ## A004205.P2250171092667908850

`record[A147679(ceil(∏{d}[n+1, #^(#-n)])+1)]`
-/

namespace A004205.P2250171092667908850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (⌈∏ d ∈ Nat.divisors (f2 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004205.P2250171092667908850

/-! ## A004205.P11355746486927514939

`record[A147679(ceil((n+1)/∏{p}[n+1, (n+1)/#])+1)]`
-/

namespace A004205.P11355746486927514939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004205.P11355746486927514939

/-!
# A004206: Number of permutations of length n with spread 2.

The programs for A004206, there is no canonical definition to state claims against.
-/

/-! ## A004206.P6048958023530943629

`A147679(∑[n+3]+2)`
-/

namespace A004206.P6048958023530943629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A004206.P6048958023530943629

/-! ## A004206.P905281234126243231

`and(-1, A147679(A167614(n+1)))`
-/

namespace A004206.P905281234126243231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A147679 (A167614 (n + 1)).toNat)

end

end A004206.P905281234126243231

/-! ## A004206.P11518186061441940935

`record[A147679(A167614(val(n+1, 2)+1))]`
-/

namespace A004206.P11518186061441940935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004206.P11518186061441940935

/-! ## A004206.P6170270234192471282

`A147679(A167614(n+1))+A025469(n)`
-/

namespace A004206.P6170270234192471282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 (A167614 (n + 1)).toNat + A025469 n

end

end A004206.P6170270234192471282

/-!
# A004207: a(0) = 1, a(n) = sum of digits of all previous terms.

The programs for A004207, the canonical program `A004207.P9379893475422078749` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004207 has offset 0).

The definition of A004207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004207.P9379893475422078749

`A062028(a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004207

/-- `A062028(a(n-1))` -/
def P9379893475422078749.Spec : Prop :=
  ∀ n, P9379893475422078749.a n = A004207 n

theorem P9379893475422078749.correct : P9379893475422078749.Spec := by
  intro n
  simp only [A004207]

end A004207

/-! ## A004207.P3836665415307512796

`A065075(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A004207.P3836665415307512796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A065075 n + a (n - 1)

end

end A004207.P3836665415307512796

namespace A004207

/-- `A065075(n)+a(n-1)` -/
def P3836665415307512796.Spec : Prop :=
  ∀ n, P3836665415307512796.a n = A004207 n

end A004207

/-! ## A004207.P12852978240017968863

`A219675(A028310(n))`
-/

namespace A004207.P12852978240017968863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (A028310 n).toNat

end

end A004207.P12852978240017968863

namespace A004207

/-- `A219675(A028310(n))` -/
def P12852978240017968863.Spec : Prop :=
  ∀ n, P12852978240017968863.a n = A004207 n

end A004207

/-! ## A004207.P13460621490752242323

`A219675(A000007(n)+n)`
-/

namespace A004207.P13460621490752242323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (A000007 n + (n : ℤ)).toNat

end

end A004207.P13460621490752242323

namespace A004207

/-- `A219675(A000007(n)+n)` -/
def P13460621490752242323.Spec : Prop :=
  ∀ n, P13460621490752242323.a n = A004207 n

end A004207

/-! ## A004207.P17177013182009351402

`A219675(or(n, A000007(n)))`
-/

namespace A004207.P17177013182009351402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A004207.P17177013182009351402

namespace A004207

/-- `A219675(or(n, A000007(n)))` -/
def P17177013182009351402.Spec : Prop :=
  ∀ n, P17177013182009351402.a n = A004207 n

end A004207

/-! ## A004207.P5993842676136725713

`A219675(xor(n, A000007(n)))`
-/

namespace A004207.P5993842676136725713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A004207.P5993842676136725713

namespace A004207

/-- `A219675(xor(n, A000007(n)))` -/
def P5993842676136725713.Spec : Prop :=
  ∀ n, P5993842676136725713.a n = A004207 n

end A004207

/-! ## A004207.P1023412625657602592

`a(2-A049710(n))*A219675(n)` with `a(0)=1`
-/

namespace A004207.P1023412625657602592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (2 - A049710 n).toNat * A219675 n

end

end A004207.P1023412625657602592

namespace A004207

/-- `a(2-A049710(n))*A219675(n)` -/
def P1023412625657602592.Spec : Prop :=
  ∀ n, P1023412625657602592.a n = A004207 n

end A004207

/-! ## A004207.P6763504039200466326

`a(2-A088569(n))*A219675(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A004207.P6763504039200466326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (2 - A088569 n).toNat * A219675 n

end

end A004207.P6763504039200466326

namespace A004207

/-- `a(2-A088569(n))*A219675(n)` -/
def P6763504039200466326.Spec : Prop :=
  ∀ n, P6763504039200466326.a n = A004207 n

end A004207

/-! ## A004207.P12926874921570760561

`A219675(gcd(n, ∏{d}[n, #]))`
-/

namespace A004207.P12926874921570760561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (Nat.gcd n (∏ d ∈ Nat.divisors (f1 n), d))

end

end A004207.P12926874921570760561

namespace A004207

/-- `A219675(gcd(n, ∏{d}[n, #]))` -/
def P12926874921570760561.Spec : Prop :=
  ∀ n, P12926874921570760561.a n = A004207 n

end A004207

/-! ## A004207.P5691998472481488089

`A007953(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A004207.P5691998472481488089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A004207.P5691998472481488089

namespace A004207

/-- `A007953(a(n-1))+a(n-1)` -/
def P5691998472481488089.Spec : Prop :=
  ∀ n, P5691998472481488089.a n = A004207 n

end A004207

/-! ## A004207.P13198874783199566374

`A219675(n+1)-A007953(A219675(n))`
-/

namespace A004207.P13198874783199566374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (n + 1) - A007953 (A219675 n).toNat

end

end A004207.P13198874783199566374

namespace A004207

/-- `A219675(n+1)-A007953(A219675(n))` -/
def P13198874783199566374.Spec : Prop :=
  ∀ n, P13198874783199566374.a n = A004207 n

end A004207

/-! ## A004207.P2901481046743442717

`A257174(A219675(n))`
-/

namespace A004207.P2901481046743442717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A219675 n).toNat

end

end A004207.P2901481046743442717

namespace A004207

/-- `A257174(A219675(n))` -/
def P2901481046743442717.Spec : Prop :=
  ∀ n, P2901481046743442717.a n = A004207 n

end A004207

/-! ## A004207.P4151551604562501112

`A219675(A007318(∑[n]+1))`
-/

namespace A004207.P4151551604562501112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A004207.P4151551604562501112

namespace A004207

/-- `A219675(A007318(∑[n]+1))` -/
def P4151551604562501112.Spec : Prop :=
  ∀ n, P4151551604562501112.a n = A004207 n

end A004207

/-! ## A004207.P4168842439629885131

`A007318(A000124(n))+A219675(n)-n`
-/

namespace A004207.P4168842439629885131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat + (A219675 n - (n : ℤ))

end

end A004207.P4168842439629885131

namespace A004207

/-- `A007318(A000124(n))+A219675(n)-n` -/
def P4168842439629885131.Spec : Prop :=
  ∀ n, P4168842439629885131.a n = A004207 n

end A004207

/-!
# A004208: a(n) = n * (2*n - 1)!! - Sum_{k=0..n-1} a(k) * (2*n - 2*k - 1)!!.

The programs for A004208, there is no canonical definition to state claims against.
-/

/-! ## A004208.P2517743117329425884

`1/2*A000698(n+2)`
-/

namespace A004208.P2517743117329425884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000698 (n + 2) : ℚ)

end

end A004208.P2517743117329425884

/-! ## A004208.P674950430386654563

`A000698(n+2)/2`
-/

namespace A004208.P674950430386654563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000698 (n + 2) : ℚ) / 2

end

end A004208.P674950430386654563

/-! ## A004208.P12941917116540028247

`abs(A185971(n+2)/2)`
-/

namespace A004208.P12941917116540028247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A185971 (n + 2) : ℚ) / 2|

end

end A004208.P12941917116540028247

/-! ## A004208.P15185723770844988134

`A286781(∑[n+1])/2`
-/

namespace A004208.P15185723770844988134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286781 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A004208.P15185723770844988134

/-! ## A004208.P18364938660829770857

`∑{d}[n+1, #*A305868(#)]`
-/

namespace A004208.P18364938660829770857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A305868 d

end

end A004208.P18364938660829770857

/-! ## A004208.P15462595185051664208

`record[A286781(n)/A286785(n)]`
-/

namespace A004208.P15462595185051664208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286781 n : ℚ) / (A286785 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004208.P15462595185051664208

/-!
# A004209: For m=2,3,..., write m in bases m,m-1,...,3,2.

The programs for A004209, there is no canonical definition to state claims against.
-/

/-! ## A004209.P8202548241652370119

`A004053(A061579(n*A123110(n))+2)`
-/

namespace A004209.P8202548241652370119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (A061579 ((n : ℤ) * A123110 n).toNat + 2).toNat

end

end A004209.P8202548241652370119

/-! ## A004209.P17590607173160858659

`A004053(A107436(n+1)+A056943(n)+1)`
-/

namespace A004209.P17590607173160858659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (A107436 (n + 1) + (A056943 n + 1)).toNat

end

end A004209.P17590607173160858659

/-! ## A004209.P12384599005572889207

`A082492(comp[∑[n]])`
-/

namespace A004209.P12384599005572889207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A004209.P12384599005572889207

/-! ## A004209.P7921510939725503021

`A004053(∑[char[∑[n]]]²+1-n)`
-/

namespace A004209.P7921510939725503021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - (n : ℤ))).toNat

end

end A004209.P7921510939725503021

/-! ## A004209.P9466198308724489865

`A082492(A014132(n+1))%A017054(n)`
-/

namespace A004209.P9466198308724489865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082492 (A014132 (n + 1)).toNat) (A017054 n)

end

end A004209.P9466198308724489865

/-! ## A004209.P11091222141804167046

`lcm(A033999(n), A082492(A014132(n+1)))`
-/

namespace A004209.P11091222141804167046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A082492 (A014132 (n + 1)).toNat)

end

end A004209.P11091222141804167046

/-! ## A004209.P4546488853773397318

`or(A000038(n), A082492(A014132(n+1)))`
-/

namespace A004209.P4546488853773397318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A082492 (A014132 (n + 1)).toNat)

end

end A004209.P4546488853773397318

/-! ## A004209.P16886279369533742194

`A082492(A014132(n+1))+A000038(A014132(n+1)²)`
-/

namespace A004209.P16886279369533742194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A014132 (n + 1)).toNat + A000038 (A014132 (n + 1) ^ 2).toNat

end

end A004209.P16886279369533742194

/-!
# A004211: Shifts one place left under 2nd-order binomial transform.

The programs for A004211, there is no canonical definition to state claims against.
-/

/-! ## A004211.P586788873223801746

`A261275(∑[n]+n)`
-/

namespace A004211.P586788873223801746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004211.P586788873223801746

/-! ## A004211.P4701589509992463808

`or(1, A261275(A000096(n)))`
-/

namespace A004211.P4701589509992463808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261275 (A000096 n).toNat)

end

end A004211.P4701589509992463808

/-! ## A004211.P15664065517306363289

`A009599(n)+A009153(n)`
-/

namespace A004211.P15664065517306363289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009599 n + A009153 n

end

end A004211.P15664065517306363289

/-! ## A004211.P7947301237389942081

`or(1, A261275(Δ[A005581(n)]))`
-/

namespace A004211.P7947301237389942081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261275 (f1 (n + 1) - f1 n).toNat)

end

end A004211.P7947301237389942081

/-! ## A004211.P11590545478455448224

`lcm(A033999(n), A261275(A000096(n)))`
-/

namespace A004211.P11590545478455448224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A261275 (A000096 n).toNat)

end

end A004211.P11590545478455448224

/-! ## A004211.P361938503357163913

`A261275(A000096(n))+A000007(n+3)`
-/

namespace A004211.P361938503357163913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (A000096 n).toNat + A000007 (n + 3)

end

end A004211.P361938503357163913

/-! ## A004211.P1020146033920930322

`C(A028310(n), n)*A261275(A000096(n))`
-/

namespace A004211.P1020146033920930322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A028310 n).toNat n : ℤ) * A261275 (A000096 n).toNat

end

end A004211.P1020146033920930322

/-! ## A004211.P13330634241232758039

`A261275(Δ[A005581(n)])+A000007(n+1)`
-/

namespace A004211.P13330634241232758039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A004211.P13330634241232758039

/-! ## A004211.P1465959707974470239

`(A000027(n+1)-n)*A261275(Δ[A005581(n)])`
-/

namespace A004211.P1465959707974470239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A261275 (f1 (n + 1) - f1 n).toNat

end

end A004211.P1465959707974470239

/-! ## A004211.P2904266858902809302

`A154602(∑[n])`
-/

namespace A004211.P2904266858902809302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004211.P2904266858902809302

/-!
# A004212: Shifts one place left under 3rd-order binomial transform.

The programs for A004212, there is no canonical definition to state claims against.
-/

/-! ## A004212.P7651012828060109844

`A357649(n)+A356572(n)`
-/

namespace A004212.P7651012828060109844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357649 n + A356572 n

end

end A004212.P7651012828060109844

/-! ## A004212.P12796737974288543213

`A111673(A167614(n+2))`
-/

namespace A004212.P12796737974288543213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111673 (A167614 (n + 2)).toNat

end

end A004212.P12796737974288543213

/-! ## A004212.P16991653461774550068

`A241578(∑[n+3]-1)`
-/

namespace A004212.P16991653461774550068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A004212.P16991653461774550068

/-! ## A004212.P11824191868837398887

`A241579(∑[n+2]+4)`
-/

namespace A004212.P11824191868837398887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A004212.P11824191868837398887

/-!
# A004213: Shifts one place left under 4th-order binomial transform.

The programs for A004213, there is no canonical definition to state claims against.
-/

/-! ## A004213.P9294091528242038103

`A357650(n)+A357617(n)`
-/

namespace A004213.P9294091528242038103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357650 n + A357617 n

end

end A004213.P9294091528242038103

/-! ## A004213.P11801448308937782689

`A241578(∑[n+4]+1)`
-/

namespace A004213.P11801448308937782689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004213.P11801448308937782689

/-! ## A004213.P13110924369607133159

`A241579(A141214(n)+7)`
-/

namespace A004213.P13110924369607133159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (A141214 n + 7).toNat

end

end A004213.P13110924369607133159

/-! ## A004213.P2212805592081490665

`A241579(A052905(n)+9)`
-/

namespace A004213.P2212805592081490665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (A052905 n + 9).toNat

end

end A004213.P2212805592081490665

/-!
# A004214: Positive numbers that are not the sum of three nonzero squares.

The programs for A004214, there is no canonical definition to state claims against.
-/

/-! ## A004214.P14774826382390848784

`A134739(n+1)^(1/3)`
-/

namespace A004214.P14774826382390848784
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134739 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A004214.P14774826382390848784

/-! ## A004214.P18047505374555211695

`lt[3*A037215(n), n]`
-/

namespace A004214.P18047505374555211695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037215 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004214.P18047505374555211695

/-! ## A004214.P8558255687307434325

`lt[3*A347802(n), n]`
-/

namespace A004214.P8558255687307434325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A347802 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004214.P8558255687307434325

/-! ## A004214.P585346677339420202

`lt[n*A025427(n), n]`
-/

namespace A004214.P585346677339420202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025427 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004214.P585346677339420202

/-! ## A004214.P3153199164490296190

`lt[n*A063691(n), n]`
-/

namespace A004214.P3153199164490296190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063691 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004214.P3153199164490296190

/-! ## A004214.P7803822626402737001

`eq[0, A025427(n+1)]+1`
-/

namespace A004214.P7803822626402737001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004214.P7803822626402737001

/-! ## A004214.P8464866557686697665

`lt[A037215(n+1), 1]+1`
-/

namespace A004214.P8464866557686697665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004214.P8464866557686697665

/-! ## A004214.P5534219117756259855

`lt[A063691(n+1), 1]+1`
-/

namespace A004214.P5534219117756259855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004214.P5534219117756259855

/-! ## A004214.P9964721773229824671

`lt[A347802(n+1), 1]+1`
-/

namespace A004214.P9964721773229824671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004214.P9964721773229824671

/-! ## A004214.P17370504474841439986

`eq[A000007(n), A025427(n)]`
-/

namespace A004214.P17370504474841439986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P17370504474841439986

/-! ## A004214.P16115148682509485445

`eq[A000038(n), A025427(n)]`
-/

namespace A004214.P16115148682509485445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P16115148682509485445

/-! ## A004214.P108267557593531993

`eq[A000007(n), A037215(n)]`
-/

namespace A004214.P108267557593531993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P108267557593531993

/-! ## A004214.P6451353779367097406

`eq[A000038(n), A037215(n)]`
-/

namespace A004214.P6451353779367097406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P6451353779367097406

/-! ## A004214.P5586958491275620518

`eq[A000007(n), A063691(n)]`
-/

namespace A004214.P5586958491275620518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P5586958491275620518

/-! ## A004214.P870368547582636004

`eq[A000038(n), A063691(n)]`
-/

namespace A004214.P870368547582636004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P870368547582636004

/-! ## A004214.P16591139342964811890

`eq[A000007(n), A347802(n)]`
-/

namespace A004214.P16591139342964811890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P16591139342964811890

/-! ## A004214.P3469438863424023169

`eq[A000038(n), A347802(n)]`
-/

namespace A004214.P3469438863424023169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004214.P3469438863424023169

/-! ## A004214.P18231529149366982446

`eq[1, A057427(n)+A025427(n)]`
-/

namespace A004214.P18231529149366982446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004214.P18231529149366982446

/-! ## A004214.P11469057671284074921

`eq[1, A063691(n)+A057427(n)]`
-/

namespace A004214.P11469057671284074921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004214.P11469057671284074921

/-! ## A004214.P2118225036031726686

`eq[1, A158388(n)+A025427(n)]`
-/

namespace A004214.P2118225036031726686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004214.P2118225036031726686

/-!
# A004215: Numbers that are the sum of 4 but no fewer nonzero squares.

The programs for A004215, there is no canonical definition to state claims against.
-/

/-! ## A004215.P2113791628413490383

`A055039(n+1)/2`
-/

namespace A004215.P2113791628413490383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055039 (n + 1) : ℚ) / 2

end

end A004215.P2113791628413490383

/-! ## A004215.P7923215253001998285

`A134738(n+1)^(1/3)`
-/

namespace A004215.P7923215253001998285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134738 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A004215.P7923215253001998285

/-! ## A004215.P3928790301616880118

`filter[A214328(n+1), A049240(#)]`
-/

namespace A004215.P3928790301616880118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A004215.P3928790301616880118

/-! ## A004215.P11710048908602508107

`filter[A214328(n+1), A343219(#)]`
-/

namespace A004215.P11710048908602508107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A004215.P11710048908602508107

/-! ## A004215.P18047936691369903723

`filter[A214328(n+1), A347523(#)]`
-/

namespace A004215.P18047936691369903723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A004215.P18047936691369903723

/-! ## A004215.P17654124357766472231

`eq[4, a(A262678(n))+1]` with `a(0)=0`
-/

namespace A004215.P17654124357766472231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A262678 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004215.P17654124357766472231

/-! ## A004215.P16167023265470933137

`lt[A229062(A262678(n)), 1]`
-/

namespace A004215.P16167023265470933137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A262678 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004215.P16167023265470933137

/-! ## A004215.P13908670533909288996

`∩[A004436(n+1), A055052(n+1)]`
-/

namespace A004215.P13908670533909288996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P13908670533909288996

/-! ## A004215.P2782598080936035686

`∩[A055052(n+1), A214328(n+1)]`
-/

namespace A004215.P2782598080936035686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P2782598080936035686

/-! ## A004215.P1247812174077323133

`∩[A004214(n+1), A055050(n+1)]`
-/

namespace A004215.P1247812174077323133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P1247812174077323133

/-! ## A004215.P8478431687868925665

`∩[A055050(n+1), A055052(n+1)]`
-/

namespace A004215.P8478431687868925665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P8478431687868925665

/-! ## A004215.P17301945418125345266

`∩[A055050(n+1), A214328(n+1)]`
-/

namespace A004215.P17301945418125345266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P17301945418125345266

/-! ## A004215.P6905474628625172759

`∩[A004214(n+1), A091067(n+1)]`
-/

namespace A004215.P6905474628625172759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P6905474628625172759

/-! ## A004215.P1044937526082262126

`∩[A055052(n+1), A091067(n+1)]`
-/

namespace A004215.P1044937526082262126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P1044937526082262126

/-! ## A004215.P6986893084870212443

`∩[A055053(n+1), A214328(n+1)]`
-/

namespace A004215.P6986893084870212443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P6986893084870212443

/-! ## A004215.P8374217912413777589

`eq[4, A002828(n)]`
-/

namespace A004215.P8374217912413777589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004215.P8374217912413777589

/-! ## A004215.P14611168435108300119

`∩[A055052(n+1), A338691(n+1)]`
-/

namespace A004215.P14611168435108300119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P14611168435108300119

/-! ## A004215.P212046313654289700

`∩[A003273(n+1), A214328(n+1)]`
-/

namespace A004215.P212046313654289700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P212046313654289700

/-! ## A004215.P16434724231672790909

`∩[A004781(n+1), A214328(n+1)]`
-/

namespace A004215.P16434724231672790909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P16434724231672790909

/-! ## A004215.P17537169142003464677

`∩[A004436(n+1), A097700(n+1)]`
-/

namespace A004215.P17537169142003464677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004215.P17537169142003464677

/-!
# A004216: a(n) = floor(log_10(n)).

The programs for A004216, the canonical program `A004216.P11701108540860389608` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004216 has offset 1).

The definition of A004216 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004216.P17579324715674490696

`a(floor((n+1)/10)-1)+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0`
-/

namespace A004216.P17579324715674490696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 0] fun n a =>
  a (⌊(n + 1 : ℚ) / 10⌋ - 1).toNat + 1

end

end A004216.P17579324715674490696

namespace A004216

/-- `a(floor((n+1)/10)-1)+1` -/
def P17579324715674490696.Spec : Prop :=
  ∀ n, (P17579324715674490696.a n : ℤ) = A004216 (n + 1)

end A004216

/-! ## A004216.P11701108540860389608

`A055642(n+1)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004216

/-- `A055642(n+1)-1` -/
def P11701108540860389608.Spec : Prop :=
  ∀ n, P11701108540860389608.a n = A004216 (n + 1)

theorem P11701108540860389608.correct : P11701108540860389608.Spec := by
  intro n
  simp only [A004216, Nat.add_sub_cancel]

end A004216

/-! ## A004216.P14541748789437881715

`floor(log(n+1)/log(10))`
-/

namespace A004216.P14541748789437881715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ) / Real.log (10 : ℝ)⌋

end

end A004216.P14541748789437881715

namespace A004216

/-- `floor(log(n+1)/log(10))` -/
def P14541748789437881715.Spec : Prop :=
  ∀ n, P14541748789437881715.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P11263254052661382549

`∑{digits}[n+1, A036370(#)]-1`
-/

namespace A004216.P11263254052661382549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum - 1

end

end A004216.P11263254052661382549

namespace A004216

/-- `∑{digits}[n+1, A036370(#)]-1` -/
def P11263254052661382549.Spec : Prop :=
  ∀ n, P11263254052661382549.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P15542402420534315781

`∑{digits}[n+1, A053632(#)]-1`
-/

namespace A004216.P15542402420534315781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A053632 x).sum - 1

end

end A004216.P15542402420534315781

namespace A004216

/-- `∑{digits}[n+1, A053632(#)]-1` -/
def P15542402420534315781.Spec : Prop :=
  ∀ n, P15542402420534315781.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P11546791817646736499

`abs(1-A055642(-xor(n, -1)))`
-/

namespace A004216.P11546791817646736499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A055642 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A004216.P11546791817646736499

namespace A004216

/-- `abs(1-A055642(-xor(n, -1)))` -/
def P11546791817646736499.Spec : Prop :=
  ∀ n, P11546791817646736499.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P7896133950144644712

`val(n+1, 10)+A160093(n+1)-1`
-/

namespace A004216.P7896133950144644712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 10 : ℤ) + (A160093 (n + 1) - 1)

end

end A004216.P7896133950144644712

namespace A004216

/-- `val(n+1, 10)+A160093(n+1)-1` -/
def P7896133950144644712.Spec : Prop :=
  ∀ n, P7896133950144644712.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P427411109087721076

`A002265(∑[char[A114322(n+1)]])`
-/

namespace A004216.P427411109087721076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004216.P427411109087721076

namespace A004216

/-- `A002265(∑[char[A114322(n+1)]])` -/
def P427411109087721076.Spec : Prop :=
  ∀ n, P427411109087721076.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P17412336166841609018

`A037825(n+1)+A037817(n+1)`
-/

namespace A004216.P17412336166841609018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (n + 1) + A037817 (n + 1)

end

end A004216.P17412336166841609018

namespace A004216

/-- `A037825(n+1)+A037817(n+1)` -/
def P17412336166841609018.Spec : Prop :=
  ∀ n, P17412336166841609018.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P15894352049565419794

`A037833(n+1)+A037808(n+1)`
-/

namespace A004216.P15894352049565419794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1) + A037808 (n + 1)

end

end A004216.P15894352049565419794

namespace A004216

/-- `A037833(n+1)+A037808(n+1)` -/
def P15894352049565419794.Spec : Prop :=
  ∀ n, P15894352049565419794.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P7464163738517511353

`A160094(n+1)-(2-A160093(n+1))`
-/

namespace A004216.P7464163738517511353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1) - (2 - A160093 (n + 1))

end

end A004216.P7464163738517511353

namespace A004216

/-- `A160094(n+1)-(2-A160093(n+1))` -/
def P7464163738517511353.Spec : Prop :=
  ∀ n, P7464163738517511353.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P18350058727707972668

`A004218(n+2)-1`
-/

namespace A004216.P18350058727707972668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2) - 1

end

end A004216.P18350058727707972668

namespace A004216

/-- `A004218(n+2)-1` -/
def P18350058727707972668.Spec : Prop :=
  ∀ n, P18350058727707972668.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P15504351227925985935

`A004218(A059995(n+1)+1)`
-/

namespace A004216.P15504351227925985935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A059995 (n + 1) + 1).toNat

end

end A004216.P15504351227925985935

namespace A004216

/-- `A004218(A059995(n+1)+1)` -/
def P15504351227925985935.Spec : Prop :=
  ∀ n, P15504351227925985935.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P9108429721572051479

`A004218(A059995(n+11))`
-/

namespace A004216.P9108429721572051479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A059995 (n + 11)).toNat

end

end A004216.P9108429721572051479

namespace A004216

/-- `A004218(A059995(n+11))` -/
def P9108429721572051479.Spec : Prop :=
  ∀ n, P9108429721572051479.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P5281373786405602708

`A297034(A213217(A093704(n+1)))`
-/

namespace A004216.P5281373786405602708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A213217 (A093704 (n + 1)).toNat).toNat

end

end A004216.P5281373786405602708

namespace A004216

/-- `A297034(A213217(A093704(n+1)))` -/
def P5281373786405602708.Spec : Prop :=
  ∀ n, P5281373786405602708.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P2936613197890756232

`A060953(p?[A000045(A074279(n+1))])`
-/

namespace A004216.P2936613197890756232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A074279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004216.P2936613197890756232

namespace A004216

/-- `A060953(p?[A000045(A074279(n+1))])` -/
def P2936613197890756232.Spec : Prop :=
  ∀ n, P2936613197890756232.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P15479418514433998308

`A000523(∑[A151667(A007932(n+1))])`
-/

namespace A004216.P15479418514433998308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 (A007932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004216.P15479418514433998308

namespace A004216

/-- `A000523(∑[A151667(A007932(n+1))])` -/
def P15479418514433998308.Spec : Prop :=
  ∀ n, P15479418514433998308.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P8024988136545636510

`A001221(∏[A160094(n+1)])`
-/

namespace A004216.P8024988136545636510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004216.P8024988136545636510

namespace A004216

/-- `A001221(∏[A160094(n+1)])` -/
def P8024988136545636510.Spec : Prop :=
  ∀ n, P8024988136545636510.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P9375865468787650750

`A001221(∏[Δ[A171397(n)]])`
-/

namespace A004216.P9375865468787650750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004216.P9375865468787650750

namespace A004216

/-- `A001221(∏[Δ[A171397(n)]])` -/
def P9375865468787650750.Spec : Prop :=
  ∀ n, P9375865468787650750.a n = A004216 (n + 1)

end A004216

/-! ## A004216.P18045867885594866920

`A297038(n+1)+A088722(A118403(n))`
-/

namespace A004216.P18045867885594866920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (n + 1) + A088722 (A118403 n).toNat

end

end A004216.P18045867885594866920

namespace A004216

/-- `A297038(n+1)+A088722(A118403(n))` -/
def P18045867885594866920.Spec : Prop :=
  ∀ n, P18045867885594866920.a n = A004216 (n + 1)

end A004216

/-!
# A004218: a(n) = log_10(n) rounded up.

The programs for A004218, the canonical program `A004218.P13942540286173673531` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004218 has offset 1).

The definition of A004218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004218.P13942540286173673531

`a(floor(n/10))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004218

/-- `a(floor(n/10))+1` -/
def P13942540286173673531.Spec : Prop :=
  ∀ n, (P13942540286173673531.a n : ℤ) = A004218 (n + 1)

theorem P13942540286173673531.correct : P13942540286173673531.Spec := by
  intro n
  simp only [A004218, Nat.add_sub_cancel]

end A004218

/-!
# A004219: a(n) = floor(10*log_10(n)).

The programs for A004219, the canonical program `A004219.P10419407225420304577` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004219 has offset 1).

The definition of A004219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004219.P10419407225420304577

`floor(10*log(n+1)/log(10))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004219

/-- `floor(10*log(n+1)/log(10))` -/
def P10419407225420304577.Spec : Prop :=
  ∀ n, P10419407225420304577.a n = A004219 (n + 1)

theorem P10419407225420304577.correct : P10419407225420304577.Spec := by
  intro n
  simp only [A004219, Nat.add_sub_cancel]

end A004219

/-! ## A004219.P14465470232520300121

`∑{digits}[(n+1)^10, A063435(#)]-1`
-/

namespace A004219.P14465470232520300121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A063435 x).sum - 1

end

end A004219.P14465470232520300121

namespace A004219

/-- `∑{digits}[(n+1)^10, A063435(#)]-1` -/
def P14465470232520300121.Spec : Prop :=
  ∀ n, P14465470232520300121.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P9449725398052035881

`∑{digits}[(n+1)^10, A209869(#+1)]-1`
-/

namespace A004219.P9449725398052035881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A209869 (x + 1)).sum - 1

end

end A004219.P9449725398052035881

namespace A004219

/-- `∑{digits}[(n+1)^10, A209869(#+1)]-1` -/
def P9449725398052035881.Spec : Prop :=
  ∀ n, P9449725398052035881.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P5417695463827038868

`A059995(A004222(n+1))`
-/

namespace A004219.P5417695463827038868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004222 (n + 1)).toNat

end

end A004219.P5417695463827038868

namespace A004219

/-- `A059995(A004222(n+1))` -/
def P5417695463827038868.Spec : Prop :=
  ∀ n, P5417695463827038868.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P598634231226875555

`A004221(n+1)+A004222(n+1)-A004224(n+1)`
-/

namespace A004219.P598634231226875555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (n + 1) + (A004222 (n + 1) - A004224 (n + 1))

end

end A004219.P598634231226875555

namespace A004219

/-- `A004221(n+1)+A004222(n+1)-A004224(n+1)` -/
def P598634231226875555.Spec : Prop :=
  ∀ n, P598634231226875555.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P5755605490513951482

`A004221(n+1)+A004225(n+1)-A004227(n+1)`
-/

namespace A004219.P5755605490513951482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (n + 1) + (A004225 (n + 1) - A004227 (n + 1))

end

end A004219.P5755605490513951482

namespace A004219

/-- `A004221(n+1)+A004225(n+1)-A004227(n+1)` -/
def P5755605490513951482.Spec : Prop :=
  ∀ n, P5755605490513951482.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P7509286096903455921

`A004221(n+1)+A004228(n+1)-A004230(n+1)`
-/

namespace A004219.P7509286096903455921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (n + 1) + (A004228 (n + 1) - A004230 (n + 1))

end

end A004219.P7509286096903455921

namespace A004219

/-- `A004221(n+1)+A004228(n+1)-A004230(n+1)` -/
def P7509286096903455921.Spec : Prop :=
  ∀ n, P7509286096903455921.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P8755412100656591820

`A239504(n+1)-1`
-/

namespace A004219.P8755412100656591820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (n + 1) - 1

end

end A004219.P8755412100656591820

namespace A004219

/-- `A239504(n+1)-1` -/
def P8755412100656591820.Spec : Prop :=
  ∀ n, P8755412100656591820.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P8368055725407289093

`A002837(A239504(n+1))`
-/

namespace A004219.P8368055725407289093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A239504 (n + 1)).toNat

end

end A004219.P8368055725407289093

namespace A004219

/-- `A002837(A239504(n+1))` -/
def P8368055725407289093.Spec : Prop :=
  ∀ n, P8368055725407289093.a n = A004219 (n + 1)

end A004219

/-! ## A004219.P6131367284576799722

`floor(A004222(n+1)/10)%A004222(n+2)`
-/

namespace A004219.P6131367284576799722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A004222 (n + 1) : ℚ) / 10⌋ (A004222 (n + 2))

end

end A004219.P6131367284576799722

namespace A004219

/-- `floor(A004222(n+1)/10)%A004222(n+2)` -/
def P6131367284576799722.Spec : Prop :=
  ∀ n, P6131367284576799722.a n = A004219 (n + 1)

end A004219

/-!
# A004220: a(n) = 10*log_10(n) rounded to the nearest integer.

The programs for A004220, the canonical program `A004220.P10885989294340546606` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004220 has offset 1).

The definition of A004220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004220.P10885989294340546606

`round(10*log(n+1)/log(10))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004220

/-- `round(10*log(n+1)/log(10))` -/
def P10885989294340546606.Spec : Prop :=
  ∀ n, P10885989294340546606.a n = A004220 (n + 1)

theorem P10885989294340546606.correct : P10885989294340546606.Spec := by
  intro n
  simp only [A004220, Nat.add_sub_cancel]

end A004220

/-! ## A004220.P5715955351995995423

`A059995(A004224(n+1)+4)`
-/

namespace A004220.P5715955351995995423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004224 (n + 1) + 4).toNat

end

end A004220.P5715955351995995423

namespace A004220

/-- `A059995(A004224(n+1)+4)` -/
def P5715955351995995423.Spec : Prop :=
  ∀ n, P5715955351995995423.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P7947618469402582658

`A059995(A004222(n+1)+5)`
-/

namespace A004220.P7947618469402582658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004222 (n + 1) + 5).toNat

end

end A004220.P7947618469402582658

namespace A004220

/-- `A059995(A004222(n+1)+5)` -/
def P7947618469402582658.Spec : Prop :=
  ∀ n, P7947618469402582658.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P13565725469364239830

`round(A004222(n+1)/10)%A005891(n)`
-/

namespace A004220.P13565725469364239830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004222 (n + 1) : ℚ) / 10)) (A005891 n)

end

end A004220.P13565725469364239830

namespace A004220

/-- `round(A004222(n+1)/10)%A005891(n)` -/
def P13565725469364239830.Spec : Prop :=
  ∀ n, P13565725469364239830.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P6730785600013970314

`A000038(n+1)+round(A004222(n+1)/10)`
-/

namespace A004220.P6730785600013970314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway ((A004222 (n + 1) : ℚ) / 10)

end

end A004220.P6730785600013970314

namespace A004220

/-- `A000038(n+1)+round(A004222(n+1)/10)` -/
def P6730785600013970314.Spec : Prop :=
  ∀ n, P6730785600013970314.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P142249052240295260

`A056594(2*n+1)+round(A004222(n+1)/10)`
-/

namespace A004220.P142249052240295260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) + SequenceMachineLib.roundAway ((A004222 (n + 1) : ℚ) / 10)

end

end A004220.P142249052240295260

namespace A004220

/-- `A056594(2*n+1)+round(A004222(n+1)/10)` -/
def P142249052240295260.Spec : Prop :=
  ∀ n, P142249052240295260.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P11889387588870543106

`ceil(A004219((n+1)²)/2)`
-/

namespace A004220.P11889387588870543106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004219 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004220.P11889387588870543106

namespace A004220

/-- `ceil(A004219((n+1)²)/2)` -/
def P11889387588870543106.Spec : Prop :=
  ∀ n, P11889387588870543106.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P15333356413171576683

`A004526(A004221((n+1)²))`
-/

namespace A004220.P15333356413171576683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004221 ((n + 1) ^ 2)).toNat

end

end A004220.P15333356413171576683

namespace A004220

/-- `A004526(A004221((n+1)²))` -/
def P15333356413171576683.Spec : Prop :=
  ∀ n, P15333356413171576683.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P4574114637416503008

`A110654(A004219((n+1)²))`
-/

namespace A004220.P4574114637416503008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004219 ((n + 1) ^ 2)).toNat

end

end A004220.P4574114637416503008

namespace A004220

/-- `A110654(A004219((n+1)²))` -/
def P4574114637416503008.Spec : Prop :=
  ∀ n, P4574114637416503008.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P2192876757919856458

`A004526(A004219((n+1)²)+1)`
-/

namespace A004220.P2192876757919856458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004219 ((n + 1) ^ 2) + 1).toNat

end

end A004220.P2192876757919856458

namespace A004220

/-- `A004526(A004219((n+1)²)+1)` -/
def P2192876757919856458.Spec : Prop :=
  ∀ n, P2192876757919856458.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P4472639549556486895

`A004219((n+1)²)-A004219(n+1)`
-/

namespace A004220.P4472639549556486895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 ((n + 1) ^ 2) - A004219 (n + 1)

end

end A004220.P4472639549556486895

namespace A004220

/-- `A004219((n+1)²)-A004219(n+1)` -/
def P4472639549556486895.Spec : Prop :=
  ∀ n, P4472639549556486895.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P13952641079595742211

`A004221((n+1)²)-A004221(n+1)`
-/

namespace A004220.P13952641079595742211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 ((n + 1) ^ 2) - A004221 (n + 1)

end

end A004220.P13952641079595742211

namespace A004220

/-- `A004221((n+1)²)-A004221(n+1)` -/
def P13952641079595742211.Spec : Prop :=
  ∀ n, P13952641079595742211.a n = A004220 (n + 1)

end A004220

/-! ## A004220.P8490566754401291761

`A065033(A004219((n+1)²))%A008574(n)`
-/

namespace A004220.P8490566754401291761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A004219 ((n + 1) ^ 2)).toNat) (A008574 n)

end

end A004220.P8490566754401291761

namespace A004220

/-- `A065033(A004219((n+1)²))%A008574(n)` -/
def P8490566754401291761.Spec : Prop :=
  ∀ n, P8490566754401291761.a n = A004220 (n + 1)

end A004220

/-!
# A004221: a(n) = ceiling(10*log_10(n)).

The programs for A004221, the canonical program `A004221.P6867410002021583751` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004221 has offset 1).

The definition of A004221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004221.P11142040686312276393

`ceil(10/log(10)*log(n+1))`
-/

namespace A004221.P11142040686312276393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 / Real.log (10 : ℝ) * Real.log (n + 1 : ℝ)⌉

end

end A004221.P11142040686312276393

namespace A004221

/-- `ceil(10/log(10)*log(n+1))` -/
def P11142040686312276393.Spec : Prop :=
  ∀ n, P11142040686312276393.a n = A004221 (n + 1)

end A004221

/-! ## A004221.P1347045679467170664

`A004219(n+1)+char[A294069(n+1)]`
-/

namespace A004221.P1347045679467170664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004221.P1347045679467170664

namespace A004221

/-- `A004219(n+1)+char[A294069(n+1)]` -/
def P1347045679467170664.Spec : Prop :=
  ∀ n, P1347045679467170664.a n = A004221 (n + 1)

end A004221

/-! ## A004221.P9387135320735923883

`A028904(A004219(n+1))+A004218(n+1)`
-/

namespace A004221.P9387135320735923883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A004219 (n + 1)).toNat + A004218 (n + 1)

end

end A004221.P9387135320735923883

namespace A004221

/-- `A028904(A004219(n+1))+A004218(n+1)` -/
def P9387135320735923883.Spec : Prop :=
  ∀ n, P9387135320735923883.a n = A004221 (n + 1)

end A004221

/-! ## A004221.P6867410002021583751

`A004218(n+1)+A004219(n+1)-A004216(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004221

/-- `A004218(n+1)+A004219(n+1)-A004216(n+1)` -/
def P6867410002021583751.Spec : Prop :=
  ∀ n, P6867410002021583751.a n = A004221 (n + 1)

theorem P6867410002021583751.correct : P6867410002021583751.Spec := by
  intro n
  simp only [A004221, Nat.add_sub_cancel]

end A004221

/-! ## A004221.P7215999048411882727

`A004219(n+1)+A004224(n+1)-A004222(n+1)`
-/

namespace A004221.P7215999048411882727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1) + (A004224 (n + 1) - A004222 (n + 1))

end

end A004221.P7215999048411882727

namespace A004221

/-- `A004219(n+1)+A004224(n+1)-A004222(n+1)` -/
def P7215999048411882727.Spec : Prop :=
  ∀ n, P7215999048411882727.a n = A004221 (n + 1)

end A004221

/-! ## A004221.P2454569334286799375

`A004219(n+1)+A004227(n+1)-A004225(n+1)`
-/

namespace A004221.P2454569334286799375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1) + (A004227 (n + 1) - A004225 (n + 1))

end

end A004221.P2454569334286799375

namespace A004221

/-- `A004219(n+1)+A004227(n+1)-A004225(n+1)` -/
def P2454569334286799375.Spec : Prop :=
  ∀ n, P2454569334286799375.a n = A004221 (n + 1)

end A004221

/-! ## A004221.P2369243577879716105

`A004219(n+1)+A004230(n+1)-A004228(n+1)`
-/

namespace A004221.P2369243577879716105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1) + (A004230 (n + 1) - A004228 (n + 1))

end

end A004221.P2369243577879716105

namespace A004221

/-- `A004219(n+1)+A004230(n+1)-A004228(n+1)` -/
def P2369243577879716105.Spec : Prop :=
  ∀ n, P2369243577879716105.a n = A004221 (n + 1)

end A004221

/-!
# A004222: a(n) = 100*log_10(n) rounded down.

The programs for A004222, there is no canonical definition to state claims against.
-/

/-! ## A004222.P3286251511549463296

`A059995(A004225(n+1))`
-/

namespace A004222.P3286251511549463296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004225 (n + 1)).toNat

end

end A004222.P3286251511549463296

/-! ## A004222.P1040843047344819890

`A004224(n+1)-char[A294069(n+1)]`
-/

namespace A004222.P1040843047344819890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004224 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004222.P1040843047344819890

/-! ## A004222.P13765349958834282911

`A004216(n+1)+A004224(n+1)-A004218(n+1)`
-/

namespace A004222.P13765349958834282911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) + (A004224 (n + 1) - A004218 (n + 1))

end

end A004222.P13765349958834282911

/-! ## A004222.P8820895728322624417

`A004219(n+1)+A004224(n+1)-A004221(n+1)`
-/

namespace A004222.P8820895728322624417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1) + (A004224 (n + 1) - A004221 (n + 1))

end

end A004222.P8820895728322624417

/-! ## A004222.P7094893787661013873

`A004224(n+1)+A004225(n+1)-A004227(n+1)`
-/

namespace A004222.P7094893787661013873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004224 (n + 1) + (A004225 (n + 1) - A004227 (n + 1))

end

end A004222.P7094893787661013873

/-! ## A004222.P12339175125004421897

`A004224(n+1)+A004228(n+1)-A004230(n+1)`
-/

namespace A004222.P12339175125004421897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004224 (n + 1) + (A004228 (n + 1) - A004230 (n + 1))

end

end A004222.P12339175125004421897

/-! ## A004222.P12251897057817617967

`∑[abs(Δ[A194129(n)])]`
-/

namespace A004222.P12251897057817617967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004222.P12251897057817617967

/-! ## A004222.P749943964438987736

`A194129(n+1)-1`
-/

namespace A004222.P749943964438987736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194129 (n + 1) - 1

end

end A004222.P749943964438987736

/-! ## A004222.P10150365697492895220

`A023443(A194129(n+1))`
-/

namespace A004222.P10150365697492895220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194129 (n + 1)).toNat

end

end A004222.P10150365697492895220

/-! ## A004222.P6633202388280015178

`∑[A000007(n+1)+Δ[A194129(n)]]`
-/

namespace A004222.P6633202388280015178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004222.P6633202388280015178

/-!
# A004223: a(n) = 100*log_10(n) rounded to the nearest integer.

The programs for A004223, there is no canonical definition to state claims against.
-/

/-! ## A004223.P8952766044430703368

`round(A004225(n+1)/10)`
-/

namespace A004223.P8952766044430703368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004225 (n + 1) : ℚ) / 10)

end

end A004223.P8952766044430703368

/-! ## A004223.P4831467082931343589

`A059995(A004227(n+1)+4)`
-/

namespace A004223.P4831467082931343589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004227 (n + 1) + 4).toNat

end

end A004223.P4831467082931343589

/-! ## A004223.P11560390740867017542

`A059995(A004225(n+1)+5)`
-/

namespace A004223.P11560390740867017542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004225 (n + 1) + 5).toNat

end

end A004223.P11560390740867017542

/-! ## A004223.P3546581266369985344

`A110654(floor(A004225(n+1)/5))`
-/

namespace A004223.P3546581266369985344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ⌊(A004225 (n + 1) : ℚ) / 5⌋.toNat

end

end A004223.P3546581266369985344

/-! ## A004223.P9127277057697484446

`abs(A001057(floor(A004225(n+1)/5)))`
-/

namespace A004223.P9127277057697484446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 ⌊(A004225 (n + 1) : ℚ) / 5⌋.toNat|

end

end A004223.P9127277057697484446

/-! ## A004223.P14980954249384616863

`floor(A004224((n+1)²)/2)`
-/

namespace A004223.P14980954249384616863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004224 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004223.P14980954249384616863

/-! ## A004223.P11176954054570374786

`ceil(A004222((n+1)²)/2)`
-/

namespace A004223.P11176954054570374786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004222 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004223.P11176954054570374786

/-! ## A004223.P13365679041819982516

`A004222((n+1)²)-A004222(n+1)`
-/

namespace A004223.P13365679041819982516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 ((n + 1) ^ 2) - A004222 (n + 1)

end

end A004223.P13365679041819982516

/-! ## A004223.P17211326144738356952

`A004224((n+1)²)-A004224(n+1)`
-/

namespace A004223.P17211326144738356952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004224 ((n + 1) ^ 2) - A004224 (n + 1)

end

end A004223.P17211326144738356952

/-! ## A004223.P17048956068835910753

`A194129((n+1)²)-A194129(n+1)`
-/

namespace A004223.P17048956068835910753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194129 ((n + 1) ^ 2) - A194129 (n + 1)

end

end A004223.P17048956068835910753

/-!
# A004224: a(n) = 100*log_10(n) rounded up.

The programs for A004224, there is no canonical definition to state claims against.
-/

/-! ## A004224.P8447478221792600378

`ceil(A004227(n+1)/10)`
-/

namespace A004224.P8447478221792600378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004227 (n + 1) : ℚ) / 10⌉

end

end A004224.P8447478221792600378

/-! ## A004224.P14577071612847243465

`A059995(A004227(n+1)+9)`
-/

namespace A004224.P14577071612847243465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004227 (n + 1) + 9).toNat

end

end A004224.P14577071612847243465

/-! ## A004224.P17162088435935342847

`A004222(n+1)+char[A294069(n+1)]`
-/

namespace A004224.P17162088435935342847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004224.P17162088435935342847

/-! ## A004224.P13939253864829555973

`A004218(n+1)+A004222(n+1)-A004216(n+1)`
-/

namespace A004224.P13939253864829555973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + (A004222 (n + 1) - A004216 (n + 1))

end

end A004224.P13939253864829555973

/-! ## A004224.P6609668423537920261

`A004221(n+1)+A004222(n+1)-A004219(n+1)`
-/

namespace A004224.P6609668423537920261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (n + 1) + (A004222 (n + 1) - A004219 (n + 1))

end

end A004224.P6609668423537920261

/-! ## A004224.P15850440821083106227

`A004222(n+1)+A004227(n+1)-A004225(n+1)`
-/

namespace A004224.P15850440821083106227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (n + 1) + (A004227 (n + 1) - A004225 (n + 1))

end

end A004224.P15850440821083106227

/-! ## A004224.P684910643653091074

`A004222(n+1)+A004230(n+1)-A004228(n+1)`
-/

namespace A004224.P684910643653091074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (n + 1) + (A004230 (n + 1) - A004228 (n + 1))

end

end A004224.P684910643653091074

/-! ## A004224.P14316907142307274487

`A004218(n+1)+A194129(n+1)-A004218(n+2)`
-/

namespace A004224.P14316907142307274487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + (A194129 (n + 1) - A004218 (n + 2))

end

end A004224.P14316907142307274487

/-!
# A004225: a(n) = 1000*log_10(n) rounded down.

The programs for A004225, there is no canonical definition to state claims against.
-/

/-! ## A004225.P11339730353707087197

`floor(A004228(n+1)/10)`
-/

namespace A004225.P11339730353707087197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004228 (n + 1) : ℚ) / 10⌋

end

end A004225.P11339730353707087197

/-! ## A004225.P4239178922075046356

`A004227(n+1)-char[A294069(n+1)]`
-/

namespace A004225.P4239178922075046356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004227 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004225.P4239178922075046356

/-! ## A004225.P7705465143800767868

`A004216(n+1)+A004227(n+1)-A004218(n+1)`
-/

namespace A004225.P7705465143800767868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) + (A004227 (n + 1) - A004218 (n + 1))

end

end A004225.P7705465143800767868

/-! ## A004225.P1726046338879927023

`A004219(n+1)+A004227(n+1)-A004221(n+1)`
-/

namespace A004225.P1726046338879927023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1) + (A004227 (n + 1) - A004221 (n + 1))

end

end A004225.P1726046338879927023

/-! ## A004225.P6753437443030552004

`A004222(n+1)+A004227(n+1)-A004224(n+1)`
-/

namespace A004225.P6753437443030552004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (n + 1) + (A004227 (n + 1) - A004224 (n + 1))

end

end A004225.P6753437443030552004

/-! ## A004225.P4829351742572804115

`A004227(n+1)+A004228(n+1)-A004230(n+1)`
-/

namespace A004225.P4829351742572804115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004227 (n + 1) + (A004228 (n + 1) - A004230 (n + 1))

end

end A004225.P4829351742572804115

/-!
# A004226: a(n) = 1000*log_10(n) rounded to the nearest integer.

The programs for A004226, there is no canonical definition to state claims against.
-/

/-! ## A004226.P4269954994055740031

`round(A004228(n+1)/10)`
-/

namespace A004226.P4269954994055740031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004228 (n + 1) : ℚ) / 10)

end

end A004226.P4269954994055740031

/-! ## A004226.P16729928996265094593

`floor(A004227((n+1)²)/2)`
-/

namespace A004226.P16729928996265094593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004227 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004226.P16729928996265094593

/-! ## A004226.P715392909357344483

`ceil(A004225((n+1)²)/2)`
-/

namespace A004226.P715392909357344483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004225 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004226.P715392909357344483

/-! ## A004226.P6741309900891636615

`round(A004225((abs(2*n-n)+1)²)/2)`
-/

namespace A004226.P6741309900891636615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004225 ((|(2 * n : ℤ) - (n : ℤ)| + 1) ^ 2).toNat : ℚ) / 2)

end

end A004226.P6741309900891636615

/-! ## A004226.P10706803799842784083

`A004526(A004227((n+1)²))`
-/

namespace A004226.P10706803799842784083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004227 ((n + 1) ^ 2)).toNat

end

end A004226.P10706803799842784083

/-! ## A004226.P10133483264149149688

`A110654(A004225((n+1)²))`
-/

namespace A004226.P10133483264149149688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004225 ((n + 1) ^ 2)).toNat

end

end A004226.P10133483264149149688

/-! ## A004226.P16477520631390215589

`A004526(A004225((n+1)²)+1)`
-/

namespace A004226.P16477520631390215589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004225 ((n + 1) ^ 2) + 1).toNat

end

end A004226.P16477520631390215589

/-! ## A004226.P3980484041923138031

`A004225((n+1)²)-A004225(n+1)`
-/

namespace A004226.P3980484041923138031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004225 ((n + 1) ^ 2) - A004225 (n + 1)

end

end A004226.P3980484041923138031

/-! ## A004226.P9382607025295116082

`A004227((n+1)²)-A004227(n+1)`
-/

namespace A004226.P9382607025295116082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004227 ((n + 1) ^ 2) - A004227 (n + 1)

end

end A004226.P9382607025295116082

/-!
# A004227: a(n) = ceiling(1000*log_10(n)).

The programs for A004227, there is no canonical definition to state claims against.
-/

/-! ## A004227.P1019604387276221171

`ceil(A004230(n+1)/10)`
-/

namespace A004227.P1019604387276221171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004230 (n + 1) : ℚ) / 10⌉

end

end A004227.P1019604387276221171

/-! ## A004227.P1643289746437611546

`A004225(n+1)+char[A294069(n+1)]`
-/

namespace A004227.P1643289746437611546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004225 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004227.P1643289746437611546

/-! ## A004227.P6684694739475478735

`A004218(n+1)+A004225(n+1)-A004216(n+1)`
-/

namespace A004227.P6684694739475478735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + (A004225 (n + 1) - A004216 (n + 1))

end

end A004227.P6684694739475478735

/-! ## A004227.P8770883458402907841

`A004221(n+1)+A004225(n+1)-A004219(n+1)`
-/

namespace A004227.P8770883458402907841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (n + 1) + (A004225 (n + 1) - A004219 (n + 1))

end

end A004227.P8770883458402907841

/-! ## A004227.P5444026486345850319

`A004224(n+1)+A004225(n+1)-A004222(n+1)`
-/

namespace A004227.P5444026486345850319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004224 (n + 1) + (A004225 (n + 1) - A004222 (n + 1))

end

end A004227.P5444026486345850319

/-! ## A004227.P16602194253374583818

`A004225(n+1)+A004230(n+1)-A004228(n+1)`
-/

namespace A004227.P16602194253374583818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004225 (n + 1) + (A004230 (n + 1) - A004228 (n + 1))

end

end A004227.P16602194253374583818

/-!
# A004228: a(n) = 10000*log_10(n) rounded down.

The programs for A004228, there is no canonical definition to state claims against.
-/

/-! ## A004228.P11559886452808655845

`A004230(n+1)-char[A294069(n+1)]`
-/

namespace A004228.P11559886452808655845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004230 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004228.P11559886452808655845

/-! ## A004228.P2580564375424200646

`A004216(n+1)+A004230(n+1)-A004218(n+1)`
-/

namespace A004228.P2580564375424200646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) + (A004230 (n + 1) - A004218 (n + 1))

end

end A004228.P2580564375424200646

/-! ## A004228.P11777013589221589981

`A004219(n+1)+A004230(n+1)-A004221(n+1)`
-/

namespace A004228.P11777013589221589981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1) + (A004230 (n + 1) - A004221 (n + 1))

end

end A004228.P11777013589221589981

/-! ## A004228.P11500644358434444814

`A004222(n+1)+A004230(n+1)-A004224(n+1)`
-/

namespace A004228.P11500644358434444814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (n + 1) + (A004230 (n + 1) - A004224 (n + 1))

end

end A004228.P11500644358434444814

/-! ## A004228.P5184908623541554641

`A004225(n+1)+A004230(n+1)-A004227(n+1)`
-/

namespace A004228.P5184908623541554641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004225 (n + 1) + (A004230 (n + 1) - A004227 (n + 1))

end

end A004228.P5184908623541554641

/-!
# A004229: a(n) = 10000*log_10(n) rounded to the nearest integer.

The programs for A004229, there is no canonical definition to state claims against.
-/

/-! ## A004229.P14465040091351216154

`floor(A004230((n+1)²)/2)`
-/

namespace A004229.P14465040091351216154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004230 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004229.P14465040091351216154

/-! ## A004229.P13366019200739377888

`ceil(A004228((n+1)²)/2)`
-/

namespace A004229.P13366019200739377888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004228 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004229.P13366019200739377888

/-! ## A004229.P3303498377553089121

`round(A004228(C(n+1, n)²)/2)`
-/

namespace A004229.P3303498377553089121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004228 (Nat.choose (n + 1) n ^ 2) : ℚ) / 2)

end

end A004229.P3303498377553089121

/-! ## A004229.P5978226793740372317

`round(A004228((n-log2(1/2))²)/2)`
-/

namespace A004229.P5978226793740372317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004228 (SequenceMachineLib.roundAway (((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) ^ 2)).toNat : ℚ) / 2)

end

end A004229.P5978226793740372317

/-! ## A004229.P13058997651048697589

`record[Δ[A004228(A000463(n+1))]]`
-/

namespace A004229.P13058997651048697589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004228 (A000463 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004229.P13058997651048697589

/-! ## A004229.P2323738445872854686

`A004228((n+1)²)-A004228(n+1)`
-/

namespace A004229.P2323738445872854686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004228 ((n + 1) ^ 2) - A004228 (n + 1)

end

end A004229.P2323738445872854686

/-! ## A004229.P12745223714121161245

`A004230((n+1)²)-A004230(n+1)`
-/

namespace A004229.P12745223714121161245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004230 ((n + 1) ^ 2) - A004230 (n + 1)

end

end A004229.P12745223714121161245

/-! ## A004229.P3877610408492290708

`record[A004228(A055461(n+1))]-A004228(n+1)`
-/

namespace A004229.P3877610408492290708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004228 (A055461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004228 (n + 1)

end

end A004229.P3877610408492290708

/-! ## A004229.P6708232497159468083

`record[A004228(A133819(n+1))]-A004228(n+1)`
-/

namespace A004229.P6708232497159468083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004228 (A133819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004228 (n + 1)

end

end A004229.P6708232497159468083

/-!
# A004230: a(n) = 10000*log_10(n) rounded up.

The programs for A004230, there is no canonical definition to state claims against.
-/

/-! ## A004230.P11637537569301935369

`A004228(n+1)+char[A294069(n+1)]`
-/

namespace A004230.P11637537569301935369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004228 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004230.P11637537569301935369

/-! ## A004230.P13627808268079519398

`A004218(n+1)+A004228(n+1)-A004216(n+1)`
-/

namespace A004230.P13627808268079519398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + (A004228 (n + 1) - A004216 (n + 1))

end

end A004230.P13627808268079519398

/-! ## A004230.P1769235078541556107

`A004221(n+1)+A004228(n+1)-A004219(n+1)`
-/

namespace A004230.P1769235078541556107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004221 (n + 1) + (A004228 (n + 1) - A004219 (n + 1))

end

end A004230.P1769235078541556107

/-! ## A004230.P3328223894430307862

`A004224(n+1)+A004228(n+1)-A004222(n+1)`
-/

namespace A004230.P3328223894430307862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004224 (n + 1) + (A004228 (n + 1) - A004222 (n + 1))

end

end A004230.P3328223894430307862

/-! ## A004230.P13198644485395051207

`A004227(n+1)+A004228(n+1)-A004225(n+1)`
-/

namespace A004230.P13198644485395051207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004227 (n + 1) + (A004228 (n + 1) - A004225 (n + 1))

end

end A004230.P13198644485395051207

/-!
# A004232: a(n) = n^2 + prime(n).

The programs for A004232, the canonical program `A004232.P3456609317362794228` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004232 has offset 1).

The definition of A004232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004232.P6914069237316706509

`Δ[A007504(n)]+(n+1)²`
-/

namespace A004232.P6914069237316706509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)

end

end A004232.P6914069237316706509

namespace A004232

/-- `Δ[A007504(n)]+(n+1)²` -/
def P6914069237316706509.Spec : Prop :=
  ∀ n, P6914069237316706509.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P3456609317362794228

`(n+1)²+A000040(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004232

/-- `(n+1)²+A000040(n+1)` -/
def P3456609317362794228.Spec : Prop :=
  ∀ n, P3456609317362794228.a n = A004232 (n + 1)

theorem P3456609317362794228.correct : P3456609317362794228.Spec := by
  intro n
  simp only [A004232, Nat.add_sub_cancel]

end A004232

/-! ## A004232.P11476621350024327260

`A078916(n+1)+n²-1`
-/

namespace A004232.P11476621350024327260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A004232.P11476621350024327260

namespace A004232

/-- `A078916(n+1)+n²-1` -/
def P11476621350024327260.Spec : Prop :=
  ∀ n, P11476621350024327260.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P7498410198532695069

`A014688(n+1)+∑[2*n]`
-/

namespace A004232.P7498410198532695069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004232.P7498410198532695069

namespace A004232

/-- `A014688(n+1)+∑[2*n]` -/
def P7498410198532695069.Spec : Prop :=
  ∀ n, P7498410198532695069.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P1566100452590432711

`∑[A230847(n+1)+2*n]`
-/

namespace A004232.P1566100452590432711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004232.P1566100452590432711

namespace A004232

/-- `∑[A230847(n+1)+2*n]` -/
def P1566100452590432711.Spec : Prop :=
  ∀ n, P1566100452590432711.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P17063150215899403346

`∑[A054541(n+1)+Δ[n²]]`
-/

namespace A004232.P17063150215899403346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004232.P17063150215899403346

namespace A004232

/-- `∑[A054541(n+1)+Δ[n²]]` -/
def P17063150215899403346.Spec : Prop :=
  ∀ n, P17063150215899403346.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P7240557180462021517

`∑[2*n]+A000040(C(n+1, n))+n+1`
-/

namespace A004232.P7240557180462021517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000040 (Nat.choose (n + 1) n) + (n + 1 : ℤ))

end

end A004232.P7240557180462021517

namespace A004232

/-- `∑[2*n]+A000040(C(n+1, n))+n+1` -/
def P7240557180462021517.Spec : Prop :=
  ∀ n, P7240557180462021517.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P11536771602904365363

`Δ[A007504(n)+A000330(n)]`
-/

namespace A004232.P11536771602904365363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004232.P11536771602904365363

namespace A004232

/-- `Δ[A007504(n)+A000330(n)]` -/
def P11536771602904365363.Spec : Prop :=
  ∀ n, P11536771602904365363.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P16622526507384263163

`A008864(n+1)+A005563(n)`
-/

namespace A004232.P16622526507384263163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A005563 n

end

end A004232.P16622526507384263163

namespace A004232

/-- `A008864(n+1)+A005563(n)` -/
def P16622526507384263163.Spec : Prop :=
  ∀ n, P16622526507384263163.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P3161097564156862537

`A028387(n)+A014692(n+1)`
-/

namespace A004232.P3161097564156862537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + A014692 (n + 1)

end

end A004232.P3161097564156862537

namespace A004232

/-- `A028387(n)+A014692(n+1)` -/
def P3161097564156862537.Spec : Prop :=
  ∀ n, P3161097564156862537.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P2473239929724867121

`A129726(n+1)+A002522(n)`
-/

namespace A004232.P2473239929724867121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129726 (n + 1) + A002522 n

end

end A004232.P2473239929724867121

namespace A004232

/-- `A129726(n+1)+A002522(n)` -/
def P2473239929724867121.Spec : Prop :=
  ∀ n, P2473239929724867121.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P8407535901007084920

`A000040(n+1)+∑[A005408(n)]`
-/

namespace A004232.P8407535901007084920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004232.P8407535901007084920

namespace A004232

/-- `A000040(n+1)+∑[A005408(n)]` -/
def P8407535901007084920.Spec : Prop :=
  ∀ n, P8407535901007084920.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P1112550105709522444

`A000040(n+1)+Δ[A000330(n)]`
-/

namespace A004232.P1112550105709522444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f1 (n + 1) - f1 n)

end

end A004232.P1112550105709522444

namespace A004232

/-- `A000040(n+1)+Δ[A000330(n)]` -/
def P1112550105709522444.Spec : Prop :=
  ∀ n, P1112550105709522444.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P11462699153959576873

`A000040(n+1)+A005563(n)+1`
-/

namespace A004232.P11462699153959576873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A005563 n + 1)

end

end A004232.P11462699153959576873

namespace A004232

/-- `A000040(n+1)+A005563(n)+1` -/
def P11462699153959576873.Spec : Prop :=
  ∀ n, P11462699153959576873.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P17266817062541954217

`A052147(n+1)+A008865(n+1)`
-/

namespace A004232.P17266817062541954217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A008865 (n + 1)

end

end A004232.P17266817062541954217

namespace A004232

/-- `A052147(n+1)+A008865(n+1)` -/
def P17266817062541954217.Spec : Prop :=
  ∀ n, P17266817062541954217.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P14604360305493275796

`A100484(n+1)+A073497(n+1)`
-/

namespace A004232.P14604360305493275796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A073497 (n + 1)

end

end A004232.P14604360305493275796

namespace A004232

/-- `A100484(n+1)+A073497(n+1)` -/
def P14604360305493275796.Spec : Prop :=
  ∀ n, P14604360305493275796.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P8778840817320550658

`A183199(n+1)+A040976(n+1)`
-/

namespace A004232.P8778840817320550658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183199 (n + 1) + A040976 (n + 1)

end

end A004232.P8778840817320550658

namespace A004232

/-- `A183199(n+1)+A040976(n+1)` -/
def P8778840817320550658.Spec : Prop :=
  ∀ n, P8778840817320550658.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P7602734991970202222

`A123968(n+1)+A113935(n+1)`
-/

namespace A004232.P7602734991970202222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123968 (n + 1) + A113935 (n + 1)

end

end A004232.P7602734991970202222

namespace A004232

/-- `A123968(n+1)+A113935(n+1)` -/
def P7602734991970202222.Spec : Prop :=
  ∀ n, P7602734991970202222.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P10013726035889395222

`A264724(n+1)+A104192(n+1)`
-/

namespace A004232.P10013726035889395222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1) + A104192 (n + 1)

end

end A004232.P10013726035889395222

namespace A004232

/-- `A264724(n+1)+A104192(n+1)` -/
def P10013726035889395222.Spec : Prop :=
  ∀ n, P10013726035889395222.a n = A004232 (n + 1)

end A004232

/-! ## A004232.P7647163366764059622

`A006093(n+1)+A005563(n)+2`
-/

namespace A004232.P7647163366764059622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A005563 n + 2)

end

end A004232.P7647163366764059622

namespace A004232

/-- `A006093(n+1)+A005563(n)+2` -/
def P7647163366764059622.Spec : Prop :=
  ∀ n, P7647163366764059622.a n = A004232 (n + 1)

end A004232

/-!
# A004233: a(n) = ceiling(log(n)).

The programs for A004233, the canonical program `A004233.P5344956152729149784` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004233 has offset 1).

The definition of A004233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(n+1))` (program `A004233.P5344956152729149784`, by `A004233.P5344956152729149784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004233.P5344956152729149784

`ceil(log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004233

/-- `ceil(log(n+1))` -/
def P5344956152729149784.Spec : Prop :=
  ∀ n, P5344956152729149784.a n = A004233 (n + 1)

theorem P5344956152729149784.correct : P5344956152729149784.Spec := by
  intro n
  simp only [A004233, Nat.add_sub_cancel]

end A004233

/-! ## A004233.P10165552160705081122

`(floor(log(n+1))+1)%(n+1)`
-/

namespace A004233.P10165552160705081122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.log (n + 1 : ℝ)⌋ + 1) (n + 1 : ℤ)

end

end A004233.P10165552160705081122

namespace A004233

/-- `(floor(log(n+1))+1)%(n+1)` -/
def P10165552160705081122.Spec : Prop :=
  ∀ n, P10165552160705081122.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P13349251143452239177

`∑[char[A000149(n)]]`
-/

namespace A004233.P13349251143452239177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004233.P13349251143452239177

namespace A004233

/-- `∑[char[A000149(n)]]` -/
def P13349251143452239177.Spec : Prop :=
  ∀ n, (P13349251143452239177.a n : ℤ) = A004233 (n + 1)

end A004233

/-! ## A004233.P12792930190472876778

`∑[char[A005182(Δ[n²])]]`
-/

namespace A004233.P12792930190472876778
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004233.P12792930190472876778

namespace A004233

/-- `∑[char[A005182(Δ[n²])]]` -/
def P12792930190472876778.Spec : Prop :=
  ∀ n, (P12792930190472876778.a n : ℤ) = A004233 (n + 1)

end A004233

/-! ## A004233.P5897933995363735675

`A212450(n+1)-(n+1)`
-/

namespace A004233.P5897933995363735675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (n + 1) - (n + 1 : ℤ)

end

end A004233.P5897933995363735675

namespace A004233

/-- `A212450(n+1)-(n+1)` -/
def P5897933995363735675.Spec : Prop :=
  ∀ n, P5897933995363735675.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P2927659150453864661

`A057427(n)+floor(log(n+1))`
-/

namespace A004233.P2927659150453864661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ⌊Real.log (n + 1 : ℝ)⌋

end

end A004233.P2927659150453864661

namespace A004233

/-- `A057427(n)+floor(log(n+1))` -/
def P2927659150453864661.Spec : Prop :=
  ∀ n, P2927659150453864661.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P2165604628521748744

`∑[char[floor(exp(A001222(n+1)))]]`
-/

namespace A004233.P2165604628521748744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A001222 (n + 1) : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004233.P2165604628521748744

namespace A004233

/-- `∑[char[floor(exp(A001222(n+1)))]]` -/
def P2165604628521748744.Spec : Prop :=
  ∀ n, (P2165604628521748744.a n : ℤ) = A004233 (n + 1)

end A004233

/-! ## A004233.P12987865471568449723

`A000195(n+1)-A057428(n)`
-/

namespace A004233.P12987865471568449723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) - A057428 n

end

end A004233.P12987865471568449723

namespace A004233

/-- `A000195(n+1)-A057428(n)` -/
def P12987865471568449723.Spec : Prop :=
  ∀ n, P12987865471568449723.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P9011600948994714828

`A212445(n+1)-A028310(n)`
-/

namespace A004233.P9011600948994714828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1) - A028310 n

end

end A004233.P9011600948994714828

namespace A004233

/-- `A212445(n+1)-A028310(n)` -/
def P9011600948994714828.Spec : Prop :=
  ∀ n, P9011600948994714828.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P7222310171502479884

`A259042(A040976(n+1))+A000195(n+1)`
-/

namespace A004233.P7222310171502479884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259042 (A040976 (n + 1)).toNat + A000195 (n + 1)

end

end A004233.P7222310171502479884

namespace A004233

/-- `A259042(A040976(n+1))+A000195(n+1)` -/
def P7222310171502479884.Spec : Prop :=
  ∀ n, P7222310171502479884.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P15495945691843065163

`A000195(n+1)+A001671(n)-A000149(n)`
-/

namespace A004233.P15495945691843065163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) + (A001671 n - A000149 n)

end

end A004233.P15495945691843065163

namespace A004233

/-- `A000195(n+1)+A001671(n)-A000149(n)` -/
def P15495945691843065163.Spec : Prop :=
  ∀ n, P15495945691843065163.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P15813760345085565763

`round(log(log(A076035(n+1))))`
-/

namespace A004233.P15813760345085565763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (A076035 (n + 1) : ℝ)))

end

end A004233.P15813760345085565763

namespace A004233

/-- `round(log(log(A076035(n+1))))` -/
def P15813760345085565763.Spec : Prop :=
  ∀ n, P15813760345085565763.a n = A004233 (n + 1)

end A004233

/-! ## A004233.P3063844609161118097

`floor(tanh(n)+log(n+1))`
-/

namespace A004233.P3063844609161118097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (n : ℝ) + Real.log (n + 1 : ℝ)⌋

end

end A004233.P3063844609161118097

namespace A004233

/-- `floor(tanh(n)+log(n+1))` -/
def P3063844609161118097.Spec : Prop :=
  ∀ n, P3063844609161118097.a n = A004233 (n + 1)

end A004233

/-!
# A004234: a(n) = floor(10*log(n)).

The programs for A004234, the canonical program `A004234.P18293226382991257378` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004234 has offset 1).

The definition of A004234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10*log(n+1))` (program `A004234.P18293226382991257378`, by `A004234.P18293226382991257378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004234.P18293226382991257378

`floor(10*log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004234

/-- `floor(10*log(n+1))` -/
def P18293226382991257378.Spec : Prop :=
  ∀ n, P18293226382991257378.a n = A004234 (n + 1)

theorem P18293226382991257378.correct : P18293226382991257378.Spec := by
  intro n
  simp only [A004234, Nat.add_sub_cancel]

end A004234

/-! ## A004234.P13493449143759908061

`A004236(n+1)-C(n, C(n, n²))`
-/

namespace A004234.P13493449143759908061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (n + 1) - (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A004234.P13493449143759908061

namespace A004234

/-- `A004236(n+1)-C(n, C(n, n²))` -/
def P13493449143759908061.Spec : Prop :=
  ∀ n, P13493449143759908061.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P13639090874151006168

`A059995(A004237(n+1))`
-/

namespace A004234.P13639090874151006168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004237 (n + 1)).toNat

end

end A004234.P13639090874151006168

namespace A004234

/-- `A059995(A004237(n+1))` -/
def P13639090874151006168.Spec : Prop :=
  ∀ n, P13639090874151006168.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P12790608345445562194

`A057428(n)+A004236(n+1)`
-/

namespace A004234.P12790608345445562194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004236 (n + 1)

end

end A004234.P12790608345445562194

namespace A004234

/-- `A057428(n)+A004236(n+1)` -/
def P12790608345445562194.Spec : Prop :=
  ∀ n, P12790608345445562194.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P6463241790132559694

`A004236(n+1)-A057427(n)`
-/

namespace A004234.P6463241790132559694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (n + 1) - A057427 n

end

end A004234.P6463241790132559694

namespace A004234

/-- `A004236(n+1)-A057427(n)` -/
def P6463241790132559694.Spec : Prop :=
  ∀ n, P6463241790132559694.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P12354271472295148562

`A004236(n+1)-A002828(A004236(n+1)²)`
-/

namespace A004234.P12354271472295148562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (n + 1) - A002828 (A004236 (n + 1) ^ 2).toNat

end

end A004234.P12354271472295148562

namespace A004234

/-- `A004236(n+1)-A002828(A004236(n+1)²)` -/
def P12354271472295148562.Spec : Prop :=
  ∀ n, P12354271472295148562.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P3473154969747918560

`A004236(n+1)-A211666(A004236(n+1)+1)`
-/

namespace A004234.P3473154969747918560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (n + 1) - A211666 (A004236 (n + 1) + 1).toNat

end

end A004234.P3473154969747918560

namespace A004234

/-- `A004236(n+1)-A211666(A004236(n+1)+1)` -/
def P3473154969747918560.Spec : Prop :=
  ∀ n, P3473154969747918560.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P5690755295065304728

`A004236(n+1)-A004248(C(2, A000040(n+1)))`
-/

namespace A004234.P5690755295065304728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (n + 1) - A004248 (Nat.choose 2 (A000040 (n + 1)).toNat)

end

end A004234.P5690755295065304728

namespace A004234

/-- `A004236(n+1)-A004248(C(2, A000040(n+1)))` -/
def P5690755295065304728.Spec : Prop :=
  ∀ n, P5690755295065304728.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P1904405889047344543

`A004236(n+1)-A004248(C(2, A004236(n+1)))`
-/

namespace A004234.P1904405889047344543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (n + 1) - A004248 (Nat.choose 2 (A004236 (n + 1)).toNat)

end

end A004234.P1904405889047344543

namespace A004234

/-- `A004236(n+1)-A004248(C(2, A004236(n+1)))` -/
def P1904405889047344543.Spec : Prop :=
  ∀ n, P1904405889047344543.a n = A004234 (n + 1)

end A004234

/-! ## A004234.P10305534045753046101

`A004236(n+1)-A002828(n²)`
-/

namespace A004234.P10305534045753046101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (n + 1) - A002828 (n ^ 2)

end

end A004234.P10305534045753046101

namespace A004234

/-- `A004236(n+1)-A002828(n²)` -/
def P10305534045753046101.Spec : Prop :=
  ∀ n, P10305534045753046101.a n = A004234 (n + 1)

end A004234

/-!
# A004235: a(n) = 10*log(n) rounded to the nearest integer.

The programs for A004235, the canonical program `A004235.P5938977375892647187` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004235 has offset 1).

The definition of A004235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004235.P5938977375892647187

`round(10*log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004235

/-- `round(10*log(n+1))` -/
def P5938977375892647187.Spec : Prop :=
  ∀ n, P5938977375892647187.a n = A004235 (n + 1)

theorem P5938977375892647187.correct : P5938977375892647187.Spec := by
  intro n
  simp only [A004235, Nat.add_sub_cancel]

end A004235

/-! ## A004235.P13063564878873171651

`A059995(A004239(n+1)+4)`
-/

namespace A004235.P13063564878873171651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004239 (n + 1) + 4).toNat

end

end A004235.P13063564878873171651

namespace A004235

/-- `A059995(A004239(n+1)+4)` -/
def P13063564878873171651.Spec : Prop :=
  ∀ n, P13063564878873171651.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P1766458174481288623

`A059995(A004237(n+1)+5)`
-/

namespace A004235.P1766458174481288623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004237 (n + 1) + 5).toNat

end

end A004235.P1766458174481288623

namespace A004235

/-- `A059995(A004237(n+1)+5)` -/
def P1766458174481288623.Spec : Prop :=
  ∀ n, P1766458174481288623.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P3464160794870979586

`A004526(ceil(A004239(n+1)/5))`
-/

namespace A004235.P3464160794870979586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈(A004239 (n + 1) : ℚ) / 5⌉.toNat

end

end A004235.P3464160794870979586

namespace A004235

/-- `A004526(ceil(A004239(n+1)/5))` -/
def P3464160794870979586.Spec : Prop :=
  ∀ n, P3464160794870979586.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P2817286483578418527

`A002266(A004237(n+1))-A004234(n+1)`
-/

namespace A004235.P2817286483578418527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004237 (n + 1)).toNat - A004234 (n + 1)

end

end A004235.P2817286483578418527

namespace A004235

/-- `A002266(A004237(n+1))-A004234(n+1)` -/
def P2817286483578418527.Spec : Prop :=
  ∀ n, P2817286483578418527.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P9853630817128342032

`ceil(A004234((n+1)²)/2)`
-/

namespace A004235.P9853630817128342032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004234 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004235.P9853630817128342032

namespace A004235

/-- `ceil(A004234((n+1)²)/2)` -/
def P9853630817128342032.Spec : Prop :=
  ∀ n, P9853630817128342032.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P6119603811617626676

`A004526(A004236((n+1)²))`
-/

namespace A004235.P6119603811617626676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004236 ((n + 1) ^ 2)).toNat

end

end A004235.P6119603811617626676

namespace A004235

/-- `A004526(A004236((n+1)²))` -/
def P6119603811617626676.Spec : Prop :=
  ∀ n, P6119603811617626676.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P10478000977668904271

`A110654(A004234((n+1)²))`
-/

namespace A004235.P10478000977668904271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004234 ((n + 1) ^ 2)).toNat

end

end A004235.P10478000977668904271

namespace A004235

/-- `A110654(A004234((n+1)²))` -/
def P10478000977668904271.Spec : Prop :=
  ∀ n, P10478000977668904271.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P5648522474214024977

`A004526(A004234((n+1)²)+1)`
-/

namespace A004235.P5648522474214024977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004234 ((n + 1) ^ 2) + 1).toNat

end

end A004235.P5648522474214024977

namespace A004235

/-- `A004526(A004234((n+1)²)+1)` -/
def P5648522474214024977.Spec : Prop :=
  ∀ n, P5648522474214024977.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P1922579866156359577

`A004234((n+1)²)-A004234(n+1)`
-/

namespace A004235.P1922579866156359577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004234 ((n + 1) ^ 2) - A004234 (n + 1)

end

end A004235.P1922579866156359577

namespace A004235

/-- `A004234((n+1)²)-A004234(n+1)` -/
def P1922579866156359577.Spec : Prop :=
  ∀ n, P1922579866156359577.a n = A004235 (n + 1)

end A004235

/-! ## A004235.P13498951036420206204

`A004236((n+1)²)-A004236(n+1)`
-/

namespace A004235.P13498951036420206204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 ((n + 1) ^ 2) - A004236 (n + 1)

end

end A004235.P13498951036420206204

namespace A004235

/-- `A004236((n+1)²)-A004236(n+1)` -/
def P13498951036420206204.Spec : Prop :=
  ∀ n, P13498951036420206204.a n = A004235 (n + 1)

end A004235

/-!
# A004236: a(n) = ceiling(10*log(n)).

The programs for A004236, the canonical program `A004236.P14507091136985963735` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004236 has offset 1).

The definition of A004236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(10*log(n+1))` (program `A004236.P14507091136985963735`, by `A004236.P14507091136985963735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004236.P14507091136985963735

`ceil(10*log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004236

/-- `ceil(10*log(n+1))` -/
def P14507091136985963735.Spec : Prop :=
  ∀ n, P14507091136985963735.a n = A004236 (n + 1)

theorem P14507091136985963735.correct : P14507091136985963735.Spec := by
  intro n
  simp only [A004236, Nat.add_sub_cancel]

end A004236

/-! ## A004236.P5664082068911770251

`C(n, C(n, n²))+A004234(n+1)`
-/

namespace A004236.P5664082068911770251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) + A004234 (n + 1)

end

end A004236.P5664082068911770251

namespace A004236

/-- `C(n, C(n, n²))+A004234(n+1)` -/
def P5664082068911770251.Spec : Prop :=
  ∀ n, P5664082068911770251.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P1340167485910805744

`A057427(n)+A004234(n+1)`
-/

namespace A004236.P1340167485910805744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004234 (n + 1)

end

end A004236.P1340167485910805744

namespace A004236

/-- `A057427(n)+A004234(n+1)` -/
def P1340167485910805744.Spec : Prop :=
  ∀ n, P1340167485910805744.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P7237754741589270892

`A004234(n+1)-A057428(n)`
-/

namespace A004236.P7237754741589270892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004234 (n + 1) - A057428 n

end

end A004236.P7237754741589270892

namespace A004236

/-- `A004234(n+1)-A057428(n)` -/
def P7237754741589270892.Spec : Prop :=
  ∀ n, P7237754741589270892.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P12177280011702208350

`A004234(n+1)+char[A320012(n+1)]`
-/

namespace A004236.P12177280011702208350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004234 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004236.P12177280011702208350

namespace A004236

/-- `A004234(n+1)+char[A320012(n+1)]` -/
def P12177280011702208350.Spec : Prop :=
  ∀ n, P12177280011702208350.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P8435477986740465742

`A001221(A001316(n))+floor(10*log(n+1))`
-/

namespace A004236.P8435477986740465742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat + ⌊10 * Real.log (n + 1 : ℝ)⌋

end

end A004236.P8435477986740465742

namespace A004236

/-- `A001221(A001316(n))+floor(10*log(n+1))` -/
def P8435477986740465742.Spec : Prop :=
  ∀ n, P8435477986740465742.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P6592476146002984117

`A010051(A020639(n+1))+A004234(n+1)`
-/

namespace A004236.P6592476146002984117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A020639 (n + 1)).toNat + A004234 (n + 1)

end

end A004236.P6592476146002984117

namespace A004236

/-- `A010051(A020639(n+1))+A004234(n+1)` -/
def P6592476146002984117.Spec : Prop :=
  ∀ n, P6592476146002984117.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P10706550027401518031

`A211666(A004234(n+1)+1)+A004234(n+1)`
-/

namespace A004236.P10706550027401518031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A004234 (n + 1) + 1).toNat + A004234 (n + 1)

end

end A004236.P10706550027401518031

namespace A004236

/-- `A211666(A004234(n+1)+1)+A004234(n+1)` -/
def P10706550027401518031.Spec : Prop :=
  ∀ n, P10706550027401518031.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P12191535659747784222

`A004248(C(2, A000040(n+1)))+A004234(n+1)`
-/

namespace A004236.P12191535659747784222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A000040 (n + 1)).toNat) + A004234 (n + 1)

end

end A004236.P12191535659747784222

namespace A004236

/-- `A004248(C(2, A000040(n+1)))+A004234(n+1)` -/
def P12191535659747784222.Spec : Prop :=
  ∀ n, P12191535659747784222.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P6162951643599314411

`A004248(C(2, A004234(n+1)))+A004234(n+1)`
-/

namespace A004236.P6162951643599314411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A004234 (n + 1)).toNat) + A004234 (n + 1)

end

end A004236.P6162951643599314411

namespace A004236

/-- `A004248(C(2, A004234(n+1)))+A004234(n+1)` -/
def P6162951643599314411.Spec : Prop :=
  ∀ n, P6162951643599314411.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P15395757893733206361

`A004233(n+1)+A004234(n+1)-A000195(n+1)`
-/

namespace A004236.P15395757893733206361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) + (A004234 (n + 1) - A000195 (n + 1))

end

end A004236.P15395757893733206361

namespace A004236

/-- `A004233(n+1)+A004234(n+1)-A000195(n+1)` -/
def P15395757893733206361.Spec : Prop :=
  ∀ n, P15395757893733206361.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P11411528635892132902

`A004234(n+1)+A004216(A004234(n+2))`
-/

namespace A004236.P11411528635892132902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004234 (n + 1) + A004216 (A004234 (n + 2)).toNat

end

end A004236.P11411528635892132902

namespace A004236

/-- `A004234(n+1)+A004216(A004234(n+2))` -/
def P11411528635892132902.Spec : Prop :=
  ∀ n, P11411528635892132902.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P5239893352347774266

`A080940(2*n+1)+A004234(n+1)`
-/

namespace A004236.P5239893352347774266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (2 * n + 1) + A004234 (n + 1)

end

end A004236.P5239893352347774266

namespace A004236

/-- `A080940(2*n+1)+A004234(n+1)` -/
def P5239893352347774266.Spec : Prop :=
  ∀ n, P5239893352347774266.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P2314193597200110733

`A182936(4*n+2)+A004234(n+1)`
-/

namespace A004236.P2314193597200110733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (4 * n + 2) + A004234 (n + 1)

end

end A004236.P2314193597200110733

namespace A004236

/-- `A182936(4*n+2)+A004234(n+1)` -/
def P2314193597200110733.Spec : Prop :=
  ∀ n, P2314193597200110733.a n = A004236 (n + 1)

end A004236

/-! ## A004236.P11169043756794963126

`A131209(A004234(n+1))`
-/

namespace A004236.P11169043756794963126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A004234 (n + 1)).toNat

end

end A004236.P11169043756794963126

namespace A004236

/-- `A131209(A004234(n+1))` -/
def P11169043756794963126.Spec : Prop :=
  ∀ n, P11169043756794963126.a n = A004236 (n + 1)

end A004236

/-!
# A004237: a(n) = floor(100*log(n)).

The programs for A004237, the canonical program `A004237.P3040975142586842287` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004237 has offset 1).

The definition of A004237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004237.P3040975142586842287

`floor(50*log((n+1)²))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004237

/-- `floor(50*log((n+1)²))` -/
def P3040975142586842287.Spec : Prop :=
  ∀ n, P3040975142586842287.a n = A004237 (n + 1)

theorem P3040975142586842287.correct : P3040975142586842287.Spec := by
  intro n
  simp only [A004237, Nat.add_sub_cancel]

end A004237

/-! ## A004237.P17663930321421574244

`A004239(n+1)-C(n, C(n, n²))`
-/

namespace A004237.P17663930321421574244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A004237.P17663930321421574244

namespace A004237

/-- `A004239(n+1)-C(n, C(n, n²))` -/
def P17663930321421574244.Spec : Prop :=
  ∀ n, P17663930321421574244.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P1346838687129754334

`A059995(A004240(n+1))`
-/

namespace A004237.P1346838687129754334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004240 (n + 1)).toNat

end

end A004237.P1346838687129754334

namespace A004237

/-- `A059995(A004240(n+1))` -/
def P1346838687129754334.Spec : Prop :=
  ∀ n, P1346838687129754334.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P4295665174576246905

`A028310(A004239(n+1))-1`
-/

namespace A004237.P4295665174576246905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004239 (n + 1)).toNat - 1

end

end A004237.P4295665174576246905

namespace A004237

/-- `A028310(A004239(n+1))-1` -/
def P4295665174576246905.Spec : Prop :=
  ∀ n, P4295665174576246905.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P12918944904496809700

`A057428(n)+A004239(n+1)`
-/

namespace A004237.P12918944904496809700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004239 (n + 1)

end

end A004237.P12918944904496809700

namespace A004237

/-- `A057428(n)+A004239(n+1)` -/
def P12918944904496809700.Spec : Prop :=
  ∀ n, P12918944904496809700.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P4066316028211800624

`A004239(n+1)-A057427(n)`
-/

namespace A004237.P4066316028211800624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - A057427 n

end

end A004237.P4066316028211800624

namespace A004237

/-- `A004239(n+1)-A057427(n)` -/
def P4066316028211800624.Spec : Prop :=
  ∀ n, P4066316028211800624.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P3282919122620141281

`A004239(n+1)-char[A038722(n+1)]`
-/

namespace A004237.P3282919122620141281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004237.P3282919122620141281

namespace A004237

/-- `A004239(n+1)-char[A038722(n+1)]` -/
def P3282919122620141281.Spec : Prop :=
  ∀ n, P3282919122620141281.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P8626928371899531451

`A004239(n+1)-A001221(A001316(n))`
-/

namespace A004237.P8626928371899531451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - A001221 (A001316 n).toNat

end

end A004237.P8626928371899531451

namespace A004237

/-- `A004239(n+1)-A001221(A001316(n))` -/
def P8626928371899531451.Spec : Prop :=
  ∀ n, P8626928371899531451.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P8693241849860605532

`A004239(n+1)-A010051(A027746(n+1))`
-/

namespace A004237.P8693241849860605532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - A010051 (A027746 (n + 1)).toNat

end

end A004237.P8693241849860605532

namespace A004237

/-- `A004239(n+1)-A010051(A027746(n+1))` -/
def P8693241849860605532.Spec : Prop :=
  ∀ n, P8693241849860605532.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P709474313004598731

`A004239(n+1)-A004248(C(2, A000040(n+1)))`
-/

namespace A004237.P709474313004598731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - A004248 (Nat.choose 2 (A000040 (n + 1)).toNat)

end

end A004237.P709474313004598731

namespace A004237

/-- `A004239(n+1)-A004248(C(2, A000040(n+1)))` -/
def P709474313004598731.Spec : Prop :=
  ∀ n, P709474313004598731.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P10841529197030708896

`A004239(n+1)-A004248(C(2, A004239(n+1)))`
-/

namespace A004237.P10841529197030708896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - A004248 (Nat.choose 2 (A004239 (n + 1)).toNat)

end

end A004237.P10841529197030708896

namespace A004237

/-- `A004239(n+1)-A004248(C(2, A004239(n+1)))` -/
def P10841529197030708896.Spec : Prop :=
  ∀ n, P10841529197030708896.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P17034089885589045712

`A004239(n+1)-A004216(A004234(n+2))`
-/

namespace A004237.P17034089885589045712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - A004216 (A004234 (n + 2)).toNat

end

end A004237.P17034089885589045712

namespace A004237

/-- `A004239(n+1)-A004216(A004234(n+2))` -/
def P17034089885589045712.Spec : Prop :=
  ∀ n, P17034089885589045712.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P2667451859831047625

`A004239(n+1)-A043545(2*n)`
-/

namespace A004237.P2667451859831047625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (n + 1) - A043545 (2 * n)

end

end A004237.P2667451859831047625

namespace A004237

/-- `A004239(n+1)-A043545(2*n)` -/
def P2667451859831047625.Spec : Prop :=
  ∀ n, P2667451859831047625.a n = A004237 (n + 1)

end A004237

/-! ## A004237.P8546250093861393878

`ceil(50*log((n+1)²)-A002262(A000124(n)))`
-/

namespace A004237.P8546250093861393878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈50 * Real.log ((n + 1) ^ 2 : ℝ) - (A002262 (A000124 n).toNat : ℝ)⌉

end

end A004237.P8546250093861393878

namespace A004237

/-- `ceil(50*log((n+1)²)-A002262(A000124(n)))` -/
def P8546250093861393878.Spec : Prop :=
  ∀ n, P8546250093861393878.a n = A004237 (n + 1)

end A004237

/-!
# A004238: a(n) = 100*log(n) rounded to nearest integer.

The programs for A004238, the canonical program `A004238.P16818788998765037058` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004238 has offset 1).

The definition of A004238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004238.P16818788998765037058

`round(10*10*log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004238

/-- `round(10*10*log(n+1))` -/
def P16818788998765037058.Spec : Prop :=
  ∀ n, P16818788998765037058.a n = A004238 (n + 1)

theorem P16818788998765037058.correct : P16818788998765037058.Spec := by
  intro n
  simp only [A004238, Nat.add_sub_cancel]

end A004238

/-! ## A004238.P2019903477686062517

`A059995(A004242(n+1)+4)`
-/

namespace A004238.P2019903477686062517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004242 (n + 1) + 4).toNat

end

end A004238.P2019903477686062517

namespace A004238

/-- `A059995(A004242(n+1)+4)` -/
def P2019903477686062517.Spec : Prop :=
  ∀ n, P2019903477686062517.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P4413914456183752583

`A059995(A004240(n+1)+5)`
-/

namespace A004238.P4413914456183752583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004240 (n + 1) + 5).toNat

end

end A004238.P4413914456183752583

namespace A004238

/-- `A059995(A004240(n+1)+5)` -/
def P4413914456183752583.Spec : Prop :=
  ∀ n, P4413914456183752583.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P9616423772805374867

`A002266(A004240(n+1))-A004237(n+1)`
-/

namespace A004238.P9616423772805374867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004240 (n + 1)).toNat - A004237 (n + 1)

end

end A004238.P9616423772805374867

namespace A004238

/-- `A002266(A004240(n+1))-A004237(n+1)` -/
def P9616423772805374867.Spec : Prop :=
  ∀ n, P9616423772805374867.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P10099845676146348323

`floor(A008835(A000040(n+1))/2+50*log((n+1)²))`
-/

namespace A004238.P10099845676146348323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A008835 (A000040 (n + 1)).toNat : ℚ) / 2 : ℝ) + 50 * Real.log ((n + 1) ^ 2 : ℝ)⌋

end

end A004238.P10099845676146348323

namespace A004238

/-- `floor(A008835(A000040(n+1))/2+50*log((n+1)²))` -/
def P10099845676146348323.Spec : Prop :=
  ∀ n, P10099845676146348323.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P9895216002666822587

`floor(A004239((n+1)²)/2)`
-/

namespace A004238.P9895216002666822587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004239 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004238.P9895216002666822587

namespace A004238

/-- `floor(A004239((n+1)²)/2)` -/
def P9895216002666822587.Spec : Prop :=
  ∀ n, P9895216002666822587.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P8595361564357782785

`floor((A004237((n+1)²)+1)/2)`
-/

namespace A004238.P8595361564357782785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004237 ((n + 1) ^ 2) + 1 : ℚ) / 2⌋

end

end A004238.P8595361564357782785

namespace A004238

/-- `floor((A004237((n+1)²)+1)/2)` -/
def P8595361564357782785.Spec : Prop :=
  ∀ n, P8595361564357782785.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P2656069341849873092

`A004526(A004239((n+1)²))`
-/

namespace A004238.P2656069341849873092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004239 ((n + 1) ^ 2)).toNat

end

end A004238.P2656069341849873092

namespace A004238

/-- `A004526(A004239((n+1)²))` -/
def P2656069341849873092.Spec : Prop :=
  ∀ n, P2656069341849873092.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P12155447793929391512

`A110654(A004237((n+1)²))`
-/

namespace A004238.P12155447793929391512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004237 ((n + 1) ^ 2)).toNat

end

end A004238.P12155447793929391512

namespace A004238

/-- `A110654(A004237((n+1)²))` -/
def P12155447793929391512.Spec : Prop :=
  ∀ n, P12155447793929391512.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P4887389900719946178

`A004526(A004237((n+1)²)+1)`
-/

namespace A004238.P4887389900719946178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004237 ((n + 1) ^ 2) + 1).toNat

end

end A004238.P4887389900719946178

namespace A004238

/-- `A004526(A004237((n+1)²)+1)` -/
def P4887389900719946178.Spec : Prop :=
  ∀ n, P4887389900719946178.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P8357711202662237115

`A004237((n+1)²)-A004237(n+1)`
-/

namespace A004238.P8357711202662237115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004237 ((n + 1) ^ 2) - A004237 (n + 1)

end

end A004238.P8357711202662237115

namespace A004238

/-- `A004237((n+1)²)-A004237(n+1)` -/
def P8357711202662237115.Spec : Prop :=
  ∀ n, P8357711202662237115.a n = A004238 (n + 1)

end A004238

/-! ## A004238.P10026954754363448502

`A004239((n+1)²)-A004239(n+1)`
-/

namespace A004238.P10026954754363448502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 ((n + 1) ^ 2) - A004239 (n + 1)

end

end A004238.P10026954754363448502

namespace A004238

/-- `A004239((n+1)²)-A004239(n+1)` -/
def P10026954754363448502.Spec : Prop :=
  ∀ n, P10026954754363448502.a n = A004238 (n + 1)

end A004238

/-!
# A004239: a(n) = ceiling(100*log(n)).

The programs for A004239, the canonical program `A004239.P11371760278727843198` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004239 has offset 1).

The definition of A004239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004239.P8089991188748978477

`ceil(25*4*log(n+1))`
-/

namespace A004239.P8089991188748978477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈25 * (4 * Real.log (n + 1 : ℝ))⌉

end

end A004239.P8089991188748978477

namespace A004239

/-- `ceil(25*4*log(n+1))` -/
def P8089991188748978477.Spec : Prop :=
  ∀ n, P8089991188748978477.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P10778116170391848018

`floor(50*log((n+1)²))+n²%(n+1)`
-/

namespace A004239.P10778116170391848018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊50 * Real.log ((n + 1) ^ 2 : ℝ)⌋ + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A004239.P10778116170391848018

namespace A004239

/-- `floor(50*log((n+1)²))+n²%(n+1)` -/
def P10778116170391848018.Spec : Prop :=
  ∀ n, P10778116170391848018.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P11371760278727843198

`C(n, C(n, n²))+A004237(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004239

/-- `C(n, C(n, n²))+A004237(n+1)` -/
def P11371760278727843198.Spec : Prop :=
  ∀ n, P11371760278727843198.a n = A004239 (n + 1)

theorem P11371760278727843198.correct : P11371760278727843198.Spec := by
  intro n
  simp only [A004239, Nat.add_sub_cancel]

end A004239

/-! ## A004239.P1690742964368437222

`A057427(n)+A004237(n+1)`
-/

namespace A004239.P1690742964368437222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004237 (n + 1)

end

end A004239.P1690742964368437222

namespace A004239

/-- `A057427(n)+A004237(n+1)` -/
def P1690742964368437222.Spec : Prop :=
  ∀ n, P1690742964368437222.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P669720298033043577

`A004237(n+1)-A057428(n)`
-/

namespace A004239.P669720298033043577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004237 (n + 1) - A057428 n

end

end A004239.P669720298033043577

namespace A004239

/-- `A004237(n+1)-A057428(n)` -/
def P669720298033043577.Spec : Prop :=
  ∀ n, P669720298033043577.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P2868783893287800833

`A004248(C(2, A000040(n+1)))+A004237(n+1)`
-/

namespace A004239.P2868783893287800833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A000040 (n + 1)).toNat) + A004237 (n + 1)

end

end A004239.P2868783893287800833

namespace A004239

/-- `A004248(C(2, A000040(n+1)))+A004237(n+1)` -/
def P2868783893287800833.Spec : Prop :=
  ∀ n, P2868783893287800833.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P3892864728087089671

`A004248(C(2, A004237(n+1)))+A004237(n+1)`
-/

namespace A004239.P3892864728087089671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A004237 (n + 1)).toNat) + A004237 (n + 1)

end

end A004239.P3892864728087089671

namespace A004239

/-- `A004248(C(2, A004237(n+1)))+A004237(n+1)` -/
def P3892864728087089671.Spec : Prop :=
  ∀ n, P3892864728087089671.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P11936260116002184706

`A004233(n+1)+A004237(n+1)-A000195(n+1)`
-/

namespace A004239.P11936260116002184706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (n + 1) + (A004237 (n + 1) - A000195 (n + 1))

end

end A004239.P11936260116002184706

namespace A004239

/-- `A004233(n+1)+A004237(n+1)-A000195(n+1)` -/
def P11936260116002184706.Spec : Prop :=
  ∀ n, P11936260116002184706.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P7684537114305658947

`A004237(n+1)+A004216(A004234(n+2))`
-/

namespace A004239.P7684537114305658947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004237 (n + 1) + A004216 (A004234 (n + 2)).toNat

end

end A004239.P7684537114305658947

namespace A004239

/-- `A004237(n+1)+A004216(A004234(n+2))` -/
def P7684537114305658947.Spec : Prop :=
  ∀ n, P7684537114305658947.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P13703724150690733032

`A004237(n+1)+A001222(A008578(n+1))`
-/

namespace A004239.P13703724150690733032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004237 (n + 1) + A001222 (A008578 (n + 1)).toNat

end

end A004239.P13703724150690733032

namespace A004239

/-- `A004237(n+1)+A001222(A008578(n+1))` -/
def P13703724150690733032.Spec : Prop :=
  ∀ n, P13703724150690733032.a n = A004239 (n + 1)

end A004239

/-! ## A004239.P13176208313195354978

`A004237(n+1)+A001221(A046644(n+1))`
-/

namespace A004239.P13176208313195354978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004237 (n + 1) + A001221 (A046644 (n + 1)).toNat

end

end A004239.P13176208313195354978

namespace A004239

/-- `A004237(n+1)+A001221(A046644(n+1))` -/
def P13176208313195354978.Spec : Prop :=
  ∀ n, P13176208313195354978.a n = A004239 (n + 1)

end A004239

/-!
# A004240: a(n) = floor(1000*log(n)).

The programs for A004240, the canonical program `A004240.P18216188522558915322` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004240 has offset 1).

The definition of A004240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1000*log(n+1))` (program `A004240.P18216188522558915322`, by `A004240.P18216188522558915322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004240.P18216188522558915322

`floor(1000*log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004240

/-- `floor(1000*log(n+1))` -/
def P18216188522558915322.Spec : Prop :=
  ∀ n, P18216188522558915322.a n = A004240 (n + 1)

theorem P18216188522558915322.correct : P18216188522558915322.Spec := by
  intro n
  simp only [A004240, Nat.add_sub_cancel]

end A004240

/-! ## A004240.P12501745084348664889

`A004242(n+1)-C(n, C(n, n²))`
-/

namespace A004240.P12501745084348664889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A004240.P12501745084348664889

namespace A004240

/-- `A004242(n+1)-C(n, C(n, n²))` -/
def P12501745084348664889.Spec : Prop :=
  ∀ n, P12501745084348664889.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P7667498810582259473

`A028310(A004242(n+1))-1`
-/

namespace A004240.P7667498810582259473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004242 (n + 1)).toNat - 1

end

end A004240.P7667498810582259473

namespace A004240

/-- `A028310(A004242(n+1))-1` -/
def P7667498810582259473.Spec : Prop :=
  ∀ n, P7667498810582259473.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P7988716889220601248

`A057428(n)+A004242(n+1)`
-/

namespace A004240.P7988716889220601248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004242 (n + 1)

end

end A004240.P7988716889220601248

namespace A004240

/-- `A057428(n)+A004242(n+1)` -/
def P7988716889220601248.Spec : Prop :=
  ∀ n, P7988716889220601248.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P5656353925591683022

`A004242(n+1)-A057427(n)`
-/

namespace A004240.P5656353925591683022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A057427 n

end

end A004240.P5656353925591683022

namespace A004240

/-- `A004242(n+1)-A057427(n)` -/
def P5656353925591683022.Spec : Prop :=
  ∀ n, P5656353925591683022.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P14363906013770059610

`A004242(n+1)-char[A038722(n+1)]`
-/

namespace A004240.P14363906013770059610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004240.P14363906013770059610

namespace A004240

/-- `A004242(n+1)-char[A038722(n+1)]` -/
def P14363906013770059610.Spec : Prop :=
  ∀ n, P14363906013770059610.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P8873958546820845741

`A004242(n+1)-A001222(A027746(n+1))`
-/

namespace A004240.P8873958546820845741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A001222 (A027746 (n + 1)).toNat

end

end A004240.P8873958546820845741

namespace A004240

/-- `A004242(n+1)-A001222(A027746(n+1))` -/
def P8873958546820845741.Spec : Prop :=
  ∀ n, P8873958546820845741.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P18385403845330024052

`A004242(n+1)-A004248(C(2, A000040(n+1)))`
-/

namespace A004240.P18385403845330024052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A004248 (Nat.choose 2 (A000040 (n + 1)).toNat)

end

end A004240.P18385403845330024052

namespace A004240

/-- `A004242(n+1)-A004248(C(2, A000040(n+1)))` -/
def P18385403845330024052.Spec : Prop :=
  ∀ n, P18385403845330024052.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P8545359659304167295

`A004242(n+1)-A004248(C(2, A004242(n+1)))`
-/

namespace A004240.P8545359659304167295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A004248 (Nat.choose 2 (A004242 (n + 1)).toNat)

end

end A004240.P8545359659304167295

namespace A004240

/-- `A004242(n+1)-A004248(C(2, A004242(n+1)))` -/
def P8545359659304167295.Spec : Prop :=
  ∀ n, P8545359659304167295.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P4420004182426789315

`A004242(n+1)-A004216(A004234(n+2))`
-/

namespace A004240.P4420004182426789315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A004216 (A004234 (n + 2)).toNat

end

end A004240.P4420004182426789315

namespace A004240

/-- `A004242(n+1)-A004216(A004234(n+2))` -/
def P4420004182426789315.Spec : Prop :=
  ∀ n, P4420004182426789315.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P4249684974649454971

`A004242(n+1)-A001222(A008578(n+1))`
-/

namespace A004240.P4249684974649454971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A004240.P4249684974649454971

namespace A004240

/-- `A004242(n+1)-A001222(A008578(n+1))` -/
def P4249684974649454971.Spec : Prop :=
  ∀ n, P4249684974649454971.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P712855996356531081

`A004242(n+1)-A080940(2*n+1)`
-/

namespace A004240.P712855996356531081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A080940 (2 * n + 1)

end

end A004240.P712855996356531081

namespace A004240

/-- `A004242(n+1)-A080940(2*n+1)` -/
def P712855996356531081.Spec : Prop :=
  ∀ n, P712855996356531081.a n = A004240 (n + 1)

end A004240

/-! ## A004240.P15654790676465366482

`A004242(n+1)-A001221(A046644(n+1))`
-/

namespace A004240.P15654790676465366482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 (n + 1) - A001221 (A046644 (n + 1)).toNat

end

end A004240.P15654790676465366482

namespace A004240

/-- `A004242(n+1)-A001221(A046644(n+1))` -/
def P15654790676465366482.Spec : Prop :=
  ∀ n, P15654790676465366482.a n = A004240 (n + 1)

end A004240

/-!
# A004241: a(n) = 1000*log(n) rounded to the nearest integer.

The programs for A004241, the canonical program `A004241.P13634921494107503085` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004241 has offset 1).

The definition of A004241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004241.P13634921494107503085

`round(10*50*log((n+1)²))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004241

/-- `round(10*50*log((n+1)²))` -/
def P13634921494107503085.Spec : Prop :=
  ∀ n, P13634921494107503085.a n = A004241 (n + 1)

theorem P13634921494107503085.correct : P13634921494107503085.Spec := by
  intro n
  simp only [A004241, Nat.add_sub_cancel]

end A004241

/-! ## A004241.P10152478557529231534

`ceil(A004240((n+1)²)/2)`
-/

namespace A004241.P10152478557529231534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004240 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004241.P10152478557529231534

namespace A004241

/-- `ceil(A004240((n+1)²)/2)` -/
def P10152478557529231534.Spec : Prop :=
  ∀ n, P10152478557529231534.a n = A004241 (n + 1)

end A004241

/-! ## A004241.P3853329940164379927

`ceil((A004242((n+1)²)-1)/2)`
-/

namespace A004241.P3853329940164379927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004242 ((n + 1) ^ 2) - 1 : ℚ) / 2⌉

end

end A004241.P3853329940164379927

namespace A004241

/-- `ceil((A004242((n+1)²)-1)/2)` -/
def P3853329940164379927.Spec : Prop :=
  ∀ n, P3853329940164379927.a n = A004241 (n + 1)

end A004241

/-! ## A004241.P7550141494974360899

`A004526(A004242((n+1)²))`
-/

namespace A004241.P7550141494974360899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004242 ((n + 1) ^ 2)).toNat

end

end A004241.P7550141494974360899

namespace A004241

/-- `A004526(A004242((n+1)²))` -/
def P7550141494974360899.Spec : Prop :=
  ∀ n, P7550141494974360899.a n = A004241 (n + 1)

end A004241

/-! ## A004241.P6689786049647326095

`A110654(A004240((n+1)²))`
-/

namespace A004241.P6689786049647326095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004240 ((n + 1) ^ 2)).toNat

end

end A004241.P6689786049647326095

namespace A004241

/-- `A110654(A004240((n+1)²))` -/
def P6689786049647326095.Spec : Prop :=
  ∀ n, P6689786049647326095.a n = A004241 (n + 1)

end A004241

/-! ## A004241.P2718725458722725550

`A004526(A004240((n+1)²)+1)`
-/

namespace A004241.P2718725458722725550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004240 ((n + 1) ^ 2) + 1).toNat

end

end A004241.P2718725458722725550

namespace A004241

/-- `A004526(A004240((n+1)²)+1)` -/
def P2718725458722725550.Spec : Prop :=
  ∀ n, P2718725458722725550.a n = A004241 (n + 1)

end A004241

/-! ## A004241.P16856368838673354945

`A028242(xor(1, A004240((n+1)²)))`
-/

namespace A004241.P16856368838673354945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A004240 ((n + 1) ^ 2))).toNat

end

end A004241.P16856368838673354945

namespace A004241

/-- `A028242(xor(1, A004240((n+1)²)))` -/
def P16856368838673354945.Spec : Prop :=
  ∀ n, P16856368838673354945.a n = A004241 (n + 1)

end A004241

/-! ## A004241.P2913554277110047754

`A004240((n+1)²)-A004240(n+1)`
-/

namespace A004241.P2913554277110047754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004240 ((n + 1) ^ 2) - A004240 (n + 1)

end

end A004241.P2913554277110047754

namespace A004241

/-- `A004240((n+1)²)-A004240(n+1)` -/
def P2913554277110047754.Spec : Prop :=
  ∀ n, P2913554277110047754.a n = A004241 (n + 1)

end A004241

/-! ## A004241.P6244773183303319530

`A004242((n+1)²)-A004242(n+1)`
-/

namespace A004241.P6244773183303319530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004242 ((n + 1) ^ 2) - A004242 (n + 1)

end

end A004241.P6244773183303319530

namespace A004241

/-- `A004242((n+1)²)-A004242(n+1)` -/
def P6244773183303319530.Spec : Prop :=
  ∀ n, P6244773183303319530.a n = A004241 (n + 1)

end A004241

/-!
# A004242: a(n) = ceiling(1000*log(n)).

The programs for A004242, the canonical program `A004242.P17345234271312260739` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004242 has offset 1).

The definition of A004242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(1000*log(n+1))` (program `A004242.P17345234271312260739`, by `A004242.P17345234271312260739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004242.P17345234271312260739

`ceil(1000*log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004242

/-- `ceil(1000*log(n+1))` -/
def P17345234271312260739.Spec : Prop :=
  ∀ n, P17345234271312260739.a n = A004242 (n + 1)

theorem P17345234271312260739.correct : P17345234271312260739.Spec := by
  intro n
  simp only [A004242, Nat.add_sub_cancel]

end A004242

/-! ## A004242.P15112625310557261231

`A004240(n+1)+n²%(n+1)`
-/

namespace A004242.P15112625310557261231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004240 (n + 1) + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A004242.P15112625310557261231

namespace A004242

/-- `A004240(n+1)+n²%(n+1)` -/
def P15112625310557261231.Spec : Prop :=
  ∀ n, P15112625310557261231.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P473629629496504747

`A326178(A004240(n+1))`
-/

namespace A004242.P473629629496504747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A004240 (n + 1)).toNat

end

end A004242.P473629629496504747

namespace A004242

/-- `A326178(A004240(n+1))` -/
def P473629629496504747.Spec : Prop :=
  ∀ n, P473629629496504747.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P1058263481398696489

`A057427(n)+A004240(n+1)`
-/

namespace A004242.P1058263481398696489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004240 (n + 1)

end

end A004242.P1058263481398696489

namespace A004242

/-- `A057427(n)+A004240(n+1)` -/
def P1058263481398696489.Spec : Prop :=
  ∀ n, P1058263481398696489.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P11768679467932994372

`A004240(n+1)-A057428(n)`
-/

namespace A004242.P11768679467932994372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004240 (n + 1) - A057428 n

end

end A004242.P11768679467932994372

namespace A004242

/-- `A004240(n+1)-A057428(n)` -/
def P11768679467932994372.Spec : Prop :=
  ∀ n, P11768679467932994372.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P18332640946245415282

`A019427(2*n)+A004240(n+1)`
-/

namespace A004242.P18332640946245415282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n) + A004240 (n + 1)

end

end A004242.P18332640946245415282

namespace A004242

/-- `A019427(2*n)+A004240(n+1)` -/
def P18332640946245415282.Spec : Prop :=
  ∀ n, P18332640946245415282.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P3326503504412952714

`A004240(n+1)+log2(A000032(C(2, n+2)))`
-/

namespace A004242.P3326503504412952714
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004240 (n + 1) : ℝ) + Real.logb 2 (A000032 (Nat.choose 2 (n + 2)) : ℝ)

end

end A004242.P3326503504412952714

namespace A004242

/-- `A004240(n+1)+log2(A000032(C(2, n+2)))` -/
def P3326503504412952714.Spec : Prop :=
  ∀ n, P3326503504412952714.a n = (A004242 (n + 1) : ℝ)

end A004242

/-! ## A004242.P10902220508232879323

`A004240(n+1)+A001222(A069901(n+1))`
-/

namespace A004242.P10902220508232879323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004240 (n + 1) + A001222 (A069901 (n + 1)).toNat

end

end A004242.P10902220508232879323

namespace A004242

/-- `A004240(n+1)+A001222(A069901(n+1))` -/
def P10902220508232879323.Spec : Prop :=
  ∀ n, P10902220508232879323.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P478550242916122285

`A004248(C(2, A000040(n+1)))+A004240(n+1)`
-/

namespace A004242.P478550242916122285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A000040 (n + 1)).toNat) + A004240 (n + 1)

end

end A004242.P478550242916122285

namespace A004242

/-- `A004248(C(2, A000040(n+1)))+A004240(n+1)` -/
def P478550242916122285.Spec : Prop :=
  ∀ n, P478550242916122285.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P13698908278828064490

`A004248(C(2, A004240(n+1)))+A004240(n+1)`
-/

namespace A004242.P13698908278828064490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A004240 (n + 1)).toNat) + A004240 (n + 1)

end

end A004242.P13698908278828064490

namespace A004242

/-- `A004248(C(2, A004240(n+1)))+A004240(n+1)` -/
def P13698908278828064490.Spec : Prop :=
  ∀ n, P13698908278828064490.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P5281117150638010467

`A004240(n+1)+A004216(A004234(n+2))`
-/

namespace A004242.P5281117150638010467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004240 (n + 1) + A004216 (A004234 (n + 2)).toNat

end

end A004242.P5281117150638010467

namespace A004242

/-- `A004240(n+1)+A004216(A004234(n+2))` -/
def P5281117150638010467.Spec : Prop :=
  ∀ n, P5281117150638010467.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P7741304820211674113

`A004240(n+1)+A001221(A008578(n+1))`
-/

namespace A004242.P7741304820211674113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004240 (n + 1) + A001221 (A008578 (n + 1)).toNat

end

end A004242.P7741304820211674113

namespace A004242

/-- `A004240(n+1)+A001221(A008578(n+1))` -/
def P7741304820211674113.Spec : Prop :=
  ∀ n, P7741304820211674113.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P4233617620096244148

`A069859(Δ[(2*n)²]-2)+A004240(n+1)`
-/

namespace A004242.P4233617620096244148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2).toNat + A004240 (n + 1)

end

end A004242.P4233617620096244148

namespace A004242

/-- `A069859(Δ[(2*n)²]-2)+A004240(n+1)` -/
def P4233617620096244148.Spec : Prop :=
  ∀ n, P4233617620096244148.a n = A004242 (n + 1)

end A004242

/-! ## A004242.P14535189254246637048

`A080940(2*n+1)+A004240(n+1)`
-/

namespace A004242.P14535189254246637048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (2 * n + 1) + A004240 (n + 1)

end

end A004242.P14535189254246637048

namespace A004242

/-- `A080940(2*n+1)+A004240(n+1)` -/
def P14535189254246637048.Spec : Prop :=
  ∀ n, P14535189254246637048.a n = A004242 (n + 1)

end A004242

/-!
# A004243: a(n) = floor(10000*log(n)).

The programs for A004243, the canonical program `A004243.P1839129116372217013` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004243 has offset 1).

The definition of A004243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004243.P1839129116372217013

`floor((20/2)²²*log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004243

/-- `floor((20/2)²²*log(n+1))` -/
def P1839129116372217013.Spec : Prop :=
  ∀ n, P1839129116372217013.a n = A004243 (n + 1)

theorem P1839129116372217013.correct : P1839129116372217013.Spec := by
  intro n
  simp only [A004243, Nat.add_sub_cancel]

end A004243

/-! ## A004243.P15690276327107108261

`A004245(n+1)-C(n, C(n, n²))`
-/

namespace A004243.P15690276327107108261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) - (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A004243.P15690276327107108261

namespace A004243

/-- `A004245(n+1)-C(n, C(n, n²))` -/
def P15690276327107108261.Spec : Prop :=
  ∀ n, P15690276327107108261.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P2460297549962068088

`A057428(n)+A004245(n+1)`
-/

namespace A004243.P2460297549962068088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004245 (n + 1)

end

end A004243.P2460297549962068088

namespace A004243

/-- `A057428(n)+A004245(n+1)` -/
def P2460297549962068088.Spec : Prop :=
  ∀ n, P2460297549962068088.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P8931349676841795517

`A004245(n+1)-A057427(n)`
-/

namespace A004243.P8931349676841795517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) - A057427 n

end

end A004243.P8931349676841795517

namespace A004243

/-- `A004245(n+1)-A057427(n)` -/
def P8931349676841795517.Spec : Prop :=
  ∀ n, P8931349676841795517.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P14759432674066476544

`A004245(n+1)-char[A116966(n)]`
-/

namespace A004243.P14759432674066476544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004243.P14759432674066476544

namespace A004243

/-- `A004245(n+1)-char[A116966(n)]` -/
def P14759432674066476544.Spec : Prop :=
  ∀ n, P14759432674066476544.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P5827375081648005213

`A004245(n+1)+A000007(n)-1`
-/

namespace A004243.P5827375081648005213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) + (A000007 n - 1)

end

end A004243.P5827375081648005213

namespace A004243

/-- `A004245(n+1)+A000007(n)-1` -/
def P5827375081648005213.Spec : Prop :=
  ∀ n, P5827375081648005213.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P14547044527149384847

`A004245(n+1)-n²%A007947(n+1)`
-/

namespace A004243.P14547044527149384847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) - Int.tmod (n ^ 2 : ℤ) (A007947 (n + 1))

end

end A004243.P14547044527149384847

namespace A004243

/-- `A004245(n+1)-n²%A007947(n+1)` -/
def P14547044527149384847.Spec : Prop :=
  ∀ n, P14547044527149384847.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P17856080260391430986

`A004245(n+1)-A004248(C(2, A000040(n+1)))`
-/

namespace A004243.P17856080260391430986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) - A004248 (Nat.choose 2 (A000040 (n + 1)).toNat)

end

end A004243.P17856080260391430986

namespace A004243

/-- `A004245(n+1)-A004248(C(2, A000040(n+1)))` -/
def P17856080260391430986.Spec : Prop :=
  ∀ n, P17856080260391430986.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P18074879105846014477

`A004245(n+1)-A004248(C(2, A004245(n+1)))`
-/

namespace A004243.P18074879105846014477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) - A004248 (Nat.choose 2 (A004245 (n + 1)).toNat)

end

end A004243.P18074879105846014477

namespace A004243

/-- `A004245(n+1)-A004248(C(2, A004245(n+1)))` -/
def P18074879105846014477.Spec : Prop :=
  ∀ n, P18074879105846014477.a n = A004243 (n + 1)

end A004243

/-! ## A004243.P6053706420899401464

`A004245(n+1)-A004216(A004234(n+2))`
-/

namespace A004243.P6053706420899401464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 (n + 1) - A004216 (A004234 (n + 2)).toNat

end

end A004243.P6053706420899401464

namespace A004243

/-- `A004245(n+1)-A004216(A004234(n+2))` -/
def P6053706420899401464.Spec : Prop :=
  ∀ n, P6053706420899401464.a n = A004243 (n + 1)

end A004243

/-!
# A004244: a(n) = 10000*log(n) rounded to nearest integer.

The programs for A004244, there is no canonical definition to state claims against.
-/

/-! ## A004244.P7739346588525417095

`A104077(A008592(n+1))`
-/

namespace A004244.P7739346588525417095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104077 (A008592 (n + 1)).toNat

end

end A004244.P7739346588525417095

/-! ## A004244.P8110858962270848767

`floor(A004245((n+1)²)/2)`
-/

namespace A004244.P8110858962270848767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004245 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004244.P8110858962270848767

/-! ## A004244.P3651512186950629863

`ceil(A004243((n+1)²)/2)`
-/

namespace A004244.P3651512186950629863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004243 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004244.P3651512186950629863

/-! ## A004244.P14165816351610077741

`record[Δ[A004243(A000463(n+1))]]`
-/

namespace A004244.P14165816351610077741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 (A000463 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004244.P14165816351610077741

/-! ## A004244.P10089711639220778726

`A004243((n+1)²)-A004243(n+1)`
-/

namespace A004244.P10089711639220778726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 ((n + 1) ^ 2) - A004243 (n + 1)

end

end A004244.P10089711639220778726

/-! ## A004244.P8194570176030818326

`A004245((n+1)²)-A004245(n+1)`
-/

namespace A004244.P8194570176030818326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004245 ((n + 1) ^ 2) - A004245 (n + 1)

end

end A004244.P8194570176030818326

/-!
# A004245: a(n) = ceiling(10000*log(n)).

The programs for A004245, the canonical program `A004245.P6957919564192117304` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004245 has offset 1).

The definition of A004245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004245.P6957919564192117304

`C(n, C(n, n²))+A004243(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004245

/-- `C(n, C(n, n²))+A004243(n+1)` -/
def P6957919564192117304.Spec : Prop :=
  ∀ n, P6957919564192117304.a n = A004245 (n + 1)

theorem P6957919564192117304.correct : P6957919564192117304.Spec := by
  intro n
  simp only [A004245, Nat.add_sub_cancel]

end A004245

/-! ## A004245.P74080818868320793

`A057427(n)+A004243(n+1)`
-/

namespace A004245.P74080818868320793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004243 (n + 1)

end

end A004245.P74080818868320793

namespace A004245

/-- `A057427(n)+A004243(n+1)` -/
def P74080818868320793.Spec : Prop :=
  ∀ n, P74080818868320793.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P4343912267808769481

`A004243(n+1)-A057428(n)`
-/

namespace A004245.P4343912267808769481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 (n + 1) - A057428 n

end

end A004245.P4343912267808769481

namespace A004245

/-- `A004243(n+1)-A057428(n)` -/
def P4343912267808769481.Spec : Prop :=
  ∀ n, P4343912267808769481.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P17325216967172957189

`A004243(n+1)+char[A344180(n)]`
-/

namespace A004245.P17325216967172957189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A004245.P17325216967172957189

namespace A004245

/-- `A004243(n+1)+char[A344180(n)]` -/
def P17325216967172957189.Spec : Prop :=
  ∀ n, P17325216967172957189.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P3159051901663523700

`A004243(n+1)+1-A000007(n)`
-/

namespace A004245.P3159051901663523700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 (n + 1) + (1 - A000007 n)

end

end A004245.P3159051901663523700

namespace A004245

/-- `A004243(n+1)+1-A000007(n)` -/
def P3159051901663523700.Spec : Prop :=
  ∀ n, P3159051901663523700.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P14490838668287762440

`A004243(n+1)+A001221(A001316(n))`
-/

namespace A004245.P14490838668287762440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 (n + 1) + A001221 (A001316 n).toNat

end

end A004245.P14490838668287762440

namespace A004245

/-- `A004243(n+1)+A001221(A001316(n))` -/
def P14490838668287762440.Spec : Prop :=
  ∀ n, P14490838668287762440.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P5855146882951814176

`A004248(C(2, A000040(n+1)))+A004243(n+1)`
-/

namespace A004245.P5855146882951814176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A000040 (n + 1)).toNat) + A004243 (n + 1)

end

end A004245.P5855146882951814176

namespace A004245

/-- `A004248(C(2, A000040(n+1)))+A004243(n+1)` -/
def P5855146882951814176.Spec : Prop :=
  ∀ n, P5855146882951814176.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P1368773656254179360

`A004248(C(2, A004243(n+1)))+A004243(n+1)`
-/

namespace A004245.P1368773656254179360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose 2 (A004243 (n + 1)).toNat) + A004243 (n + 1)

end

end A004245.P1368773656254179360

namespace A004245

/-- `A004248(C(2, A004243(n+1)))+A004243(n+1)` -/
def P1368773656254179360.Spec : Prop :=
  ∀ n, P1368773656254179360.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P11319293259621301427

`A004243(n+1)+A004216(A004234(n+2))`
-/

namespace A004245.P11319293259621301427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 (n + 1) + A004216 (A004234 (n + 2)).toNat

end

end A004245.P11319293259621301427

namespace A004245

/-- `A004243(n+1)+A004216(A004234(n+2))` -/
def P11319293259621301427.Spec : Prop :=
  ∀ n, P11319293259621301427.a n = A004245 (n + 1)

end A004245

/-! ## A004245.P13157342809534077634

`A004243(n+1)+A001222(A008578(n+1))`
-/

namespace A004245.P13157342809534077634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004243 (n + 1) + A001222 (A008578 (n + 1)).toNat

end

end A004245.P13157342809534077634

namespace A004245

/-- `A004243(n+1)+A001222(A008578(n+1))` -/
def P13157342809534077634.Spec : Prop :=
  ∀ n, P13157342809534077634.a n = A004245 (n + 1)

end A004245

/-!
# A004246: Number of permutations of length n with spread 3.

The programs for A004246, there is no canonical definition to state claims against.
-/

/-! ## A004246.P4511531063772761660

`A147679((n+3)²-∑[n+1])`
-/

namespace A004246.P4511531063772761660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147679 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004246.P4511531063772761660

/-!
# A004247: Multiplication table read by antidiagonals: T(i,j) = i*j (i>=0, j>=0). Alternatively, multiplication triangle read by rows: P(i,j) = j*(i-j) (i>=0, 0<=j<=i).

The programs for A004247, the canonical program `A004247.P14233945955703425283` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004247 has offset 0).

The definition of A004247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004247.P3145771427808378852

`A004197(n)*A003984(n)`
-/

namespace A004247.P3145771427808378852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n * A003984 n

end

end A004247.P3145771427808378852

namespace A004247

/-- `A004197(n)*A003984(n)` -/
def P3145771427808378852.Spec : Prop :=
  ∀ n, P3145771427808378852.a n = A004247 n

end A004247

/-! ## A004247.P14233945955703425283

`A002262(n)*A025581(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004247

/-- `A002262(n)*A025581(n)` -/
def P14233945955703425283.Spec : Prop :=
  ∀ n, P14233945955703425283.a n = A004247 n

theorem P14233945955703425283.correct : P14233945955703425283.Spec := by
  intro n
  simp only [A004247]

end A004247

/-! ## A004247.P10870328764857680706

`A077028(n)-1`
-/

namespace A004247.P10870328764857680706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n - 1

end

end A004247.P10870328764857680706

namespace A004247

/-- `A077028(n)-1` -/
def P10870328764857680706.Spec : Prop :=
  ∀ n, P10870328764857680706.a n = A004247 n

end A004247

/-! ## A004247.P10801615904990206791

`1-A176270(n)`
-/

namespace A004247.P10801615904990206791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176270 n

end

end A004247.P10801615904990206791

namespace A004247

/-- `1-A176270(n)` -/
def P10801615904990206791.Spec : Prop :=
  ∀ n, P10801615904990206791.a n = A004247 n

end A004247

/-! ## A004247.P12346451686718105883

`A309555(n)-3`
-/

namespace A004247.P12346451686718105883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309555 n - 3

end

end A004247.P12346451686718105883

namespace A004247

/-- `A309555(n)-3` -/
def P12346451686718105883.Spec : Prop :=
  ∀ n, P12346451686718105883.a n = A004247 n

end A004247

/-! ## A004247.P11107884398255847585

`sqrt(A082043(n))-1`
-/

namespace A004247.P11107884398255847585
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082043 n : ℝ) - 1

end

end A004247.P11107884398255847585

namespace A004247

/-- `sqrt(A082043(n))-1` -/
def P11107884398255847585.Spec : Prop :=
  ∀ n, P11107884398255847585.a n = (A004247 n : ℝ)

end A004247

/-! ## A004247.P11729246989974176777

`floor(A287326(n)/6)`
-/

namespace A004247.P11729246989974176777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287326 n : ℚ) / 6⌋

end

end A004247.P11729246989974176777

namespace A004247

/-- `floor(A287326(n)/6)` -/
def P11729246989974176777.Spec : Prop :=
  ∀ n, P11729246989974176777.a n = A004247 n

end A004247

/-! ## A004247.P5089809706419897457

`(1-A176625(n))/3`
-/

namespace A004247.P5089809706419897457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A176625 n : ℚ) / 3

end

end A004247.P5089809706419897457

namespace A004247

/-- `(1-A176625(n))/3` -/
def P5089809706419897457.Spec : Prop :=
  ∀ n, P5089809706419897457.a n = (A004247 n : ℚ)

end A004247

/-! ## A004247.P2764183362987323624

`(A296180(n)-1)/3`
-/

namespace A004247.P2764183362987323624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296180 n - 1 : ℚ) / 3

end

end A004247.P2764183362987323624

namespace A004247

/-- `(A296180(n)-1)/3` -/
def P2764183362987323624.Spec : Prop :=
  ∀ n, P2764183362987323624.a n = (A004247 n : ℚ)

end A004247

/-! ## A004247.P3519224843984818407

`floor(sqrt(A082039(n)-1))`
-/

namespace A004247.P3519224843984818407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082039 n - 1)

end

end A004247.P3519224843984818407

namespace A004247

/-- `floor(sqrt(A082039(n)-1))` -/
def P3519224843984818407.Spec : Prop :=
  ∀ n, P3519224843984818407.a n = A004247 n

end A004247

/-! ## A004247.P10753361718446229266

`floor(sqrt(A082046(n)))-1`
-/

namespace A004247.P10753361718446229266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082046 n) - 1

end

end A004247.P10753361718446229266

namespace A004247

/-- `floor(sqrt(A082046(n)))-1` -/
def P10753361718446229266.Spec : Prop :=
  ∀ n, P10753361718446229266.a n = A004247 n

end A004247

/-! ## A004247.P17269731665441369428

`A086460(n)-char[∑[n]]`
-/

namespace A004247.P17269731665441369428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086460 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A004247.P17269731665441369428

namespace A004247

/-- `A086460(n)-char[∑[n]]` -/
def P17269731665441369428.Spec : Prop :=
  ∀ n, P17269731665441369428.a n = A004247 n

end A004247

/-! ## A004247.P14365150644711569793

`(A130154(n+1)-1)/2`
-/

namespace A004247.P14365150644711569793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130154 (n + 1) - 1 : ℚ) / 2

end

end A004247.P14365150644711569793

namespace A004247

/-- `(A130154(n+1)-1)/2` -/
def P14365150644711569793.Spec : Prop :=
  ∀ n, P14365150644711569793.a n = (A004247 n : ℚ)

end A004247

/-! ## A004247.P13992628179580401734

`A004526(A157528(n))`
-/

namespace A004247.P13992628179580401734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A157528 n).toNat

end

end A004247.P13992628179580401734

namespace A004247

/-- `A004526(A157528(n))` -/
def P13992628179580401734.Spec : Prop :=
  ∀ n, P13992628179580401734.a n = A004247 n

end A004247

/-! ## A004247.P865738052994143407

`A023445(A309555(n))`
-/

namespace A004247.P865738052994143407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A309555 n).toNat

end

end A004247.P865738052994143407

namespace A004247

/-- `A023445(A309555(n))` -/
def P865738052994143407.Spec : Prop :=
  ∀ n, P865738052994143407.a n = A004247 n

end A004247

/-! ## A004247.P15751103482535488243

`A004524(A130154(n+1))`
-/

namespace A004247.P15751103482535488243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A130154 (n + 1)).toNat

end

end A004247.P15751103482535488243

namespace A004247

/-- `A004524(A130154(n+1))` -/
def P15751103482535488243.Spec : Prop :=
  ∀ n, P15751103482535488243.a n = A004247 n

end A004247

/-! ## A004247.P3213461596188569801

`A061858(n)+A048720(n)`
-/

namespace A004247.P3213461596188569801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n + A048720 n

end

end A004247.P3213461596188569801

namespace A004247

/-- `A061858(n)+A048720(n)` -/
def P3213461596188569801.Spec : Prop :=
  ∀ n, P3213461596188569801.a n = A004247 n

end A004247

/-! ## A004247.P4795278163626545555

`A059036(n)-A003056(n)`
-/

namespace A004247.P4795278163626545555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n - A003056 n

end

end A004247.P4795278163626545555

namespace A004247

/-- `A059036(n)-A003056(n)` -/
def P4795278163626545555.Spec : Prop :=
  ∀ n, P4795278163626545555.a n = A004247 n

end A004247

/-! ## A004247.P1313501489117920493

`A073254(n)-A048147(n)`
-/

namespace A004247.P1313501489117920493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - A048147 n

end

end A004247.P1313501489117920493

namespace A004247

/-- `A073254(n)-A048147(n)` -/
def P1313501489117920493.Spec : Prop :=
  ∀ n, P1313501489117920493.a n = A004247 n

end A004247

/-! ## A004247.P3492491712261957058

`A082043(n)-A082039(n)`
-/

namespace A004247.P3492491712261957058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n - A082039 n

end

end A004247.P3492491712261957058

namespace A004247

/-- `A082043(n)-A082039(n)` -/
def P3492491712261957058.Spec : Prop :=
  ∀ n, P3492491712261957058.a n = A004247 n

end A004247

/-!
# A004248: Array read by ascending antidiagonals: A(n, k) = k^n.

The programs for A004248, the canonical program `A004248.P8443486986946494157` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004248 has offset 0).

The definition of A004248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004248.P11869167368301789705

`A055652(n)-A003992(n)`
-/

namespace A004248.P11869167368301789705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 n - A003992 n

end

end A004248.P11869167368301789705

namespace A004248

/-- `A055652(n)-A003992(n)` -/
def P11869167368301789705.Spec : Prop :=
  ∀ n, P11869167368301789705.a n = A004248 n

end A004248

/-! ## A004248.P707957251948598559

`A103462(n)-A023532(n)`
-/

namespace A004248.P707957251948598559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103462 n - A023532 n

end

end A004248.P707957251948598559

namespace A004248

/-- `A103462(n)-A023532(n)` -/
def P707957251948598559.Spec : Prop :=
  ∀ n, P707957251948598559.a n = A004248 n

end A004248

/-! ## A004248.P8443486986946494157

`A002262(n)^A025581(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004248

/-- `A002262(n)^A025581(n)` -/
def P8443486986946494157.Spec : Prop :=
  ∀ n, P8443486986946494157.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P5304605623402138067

`A002262(n)^(A004736(n+1)-1)`
-/

namespace A004248.P5304605623402138067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A004248.P5304605623402138067

namespace A004248

/-- `A002262(n)^(A004736(n+1)-1)` -/
def P5304605623402138067.Spec : Prop :=
  ∀ n, P5304605623402138067.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P4832872630000269539

`(A002260(n+1)-1)^A025581(n)`
-/

namespace A004248.P4832872630000269539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1 : ℚ) ^ (A025581 n : ℤ)

end

end A004248.P4832872630000269539

namespace A004248

/-- `(A002260(n+1)-1)^A025581(n)` -/
def P4832872630000269539.Spec : Prop :=
  ∀ n, P4832872630000269539.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P15709034307991726972

`A002262(n)^(A057555(2*(n+1))-1)`
-/

namespace A004248.P15709034307991726972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A057555 (2 * (n + 1)) - 1 : ℤ)

end

end A004248.P15709034307991726972

namespace A004248

/-- `A002262(n)^(A057555(2*(n+1))-1)` -/
def P15709034307991726972.Spec : Prop :=
  ∀ n, P15709034307991726972.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P4115069871424084822

`(A002260(n+1)-1)^(A004736(n+1)-1)`
-/

namespace A004248.P4115069871424084822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A004248.P4115069871424084822

namespace A004248

/-- `(A002260(n+1)-1)^(A004736(n+1)-1)` -/
def P4115069871424084822.Spec : Prop :=
  ∀ n, P4115069871424084822.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P17558680077185294180

`A002262(n)^(A000217(round(sqrt(2*n+1)))-(n+1))`
-/

namespace A004248.P17558680077185294180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ) : ℤ)

end

end A004248.P17558680077185294180

namespace A004248

/-- `A002262(n)^(A000217(round(sqrt(2*n+1)))-(n+1))` -/
def P17558680077185294180.Spec : Prop :=
  ∀ n, P17558680077185294180.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P15977706859815277121

`A002262(n)^(round(sqrt(2*n+1))-A002260(n+1))`
-/

namespace A004248.P15977706859815277121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1) : ℤ)

end

end A004248.P15977706859815277121

namespace A004248

/-- `A002262(n)^(round(sqrt(2*n+1))-A002260(n+1))` -/
def P15977706859815277121.Spec : Prop :=
  ∀ n, P15977706859815277121.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P721797299417256544

`A002262(n)^(A000096(A003056(n))-n)`
-/

namespace A004248.P721797299417256544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A000096 (A003056 n).toNat - (n : ℤ) : ℤ)

end

end A004248.P721797299417256544

namespace A004248

/-- `A002262(n)^(A000096(A003056(n))-n)` -/
def P721797299417256544.Spec : Prop :=
  ∀ n, P721797299417256544.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P6206148800277702431

`A002262(n)^(A004736(n+2)%A004736(n+1))`
-/

namespace A004248.P6206148800277702431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (Int.tmod (A004736 (n + 2)) (A004736 (n + 1)) : ℤ)

end

end A004248.P6206148800277702431

namespace A004248

/-- `A002262(n)^(A004736(n+2)%A004736(n+1))` -/
def P6206148800277702431.Spec : Prop :=
  ∀ n, P6206148800277702431.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P9193782243604737322

`A003992(A061579(n))`
-/

namespace A004248.P9193782243604737322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A061579 n).toNat

end

end A004248.P9193782243604737322

namespace A004248

/-- `A003992(A061579(n))` -/
def P9193782243604737322.Spec : Prop :=
  ∀ n, P9193782243604737322.a n = A004248 n

end A004248

/-! ## A004248.P5346734805055144038

`A003992(A038722(n+1)-1)`
-/

namespace A004248.P5346734805055144038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A038722 (n + 1) - 1).toNat

end

end A004248.P5346734805055144038

namespace A004248

/-- `A003992(A038722(n+1)-1)` -/
def P5346734805055144038.Spec : Prop :=
  ∀ n, P5346734805055144038.a n = A004248 n

end A004248

/-! ## A004248.P7943803518681975236

`A003992(A004736(n+1)-A002260(n+1)+n)`
-/

namespace A004248.P7943803518681975236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A004736 (n + 1) - A002260 (n + 1) + (n : ℤ)).toNat

end

end A004248.P7943803518681975236

namespace A004248

/-- `A003992(A004736(n+1)-A002260(n+1)+n)` -/
def P7943803518681975236.Spec : Prop :=
  ∀ n, P7943803518681975236.a n = A004248 n

end A004248

/-! ## A004248.P10127634358739364064

`A003992(A038722(n+2))`
-/

namespace A004248.P10127634358739364064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A038722 (n + 2)).toNat

end

end A004248.P10127634358739364064

namespace A004248

/-- `A003992(A038722(n+2))` -/
def P10127634358739364064.Spec : Prop :=
  ∀ n, P10127634358739364064.a n = A004248 n

end A004248

/-! ## A004248.P11525148930260390438

`A003992(n)-A055651(n)`
-/

namespace A004248.P11525148930260390438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n - A055651 n

end

end A004248.P11525148930260390438

namespace A004248

/-- `A003992(n)-A055651(n)` -/
def P11525148930260390438.Spec : Prop :=
  ∀ n, P11525148930260390438.a n = A004248 n

end A004248

/-! ## A004248.P5891608137760877853

`A265583(n+1)/A002260(n+1)`
-/

namespace A004248.P5891608137760877853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265583 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A004248.P5891608137760877853

namespace A004248

/-- `A265583(n+1)/A002260(n+1)` -/
def P5891608137760877853.Spec : Prop :=
  ∀ n, P5891608137760877853.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P4770184771843966156

`A265583(n+1)/A131818(n+1)`
-/

namespace A004248.P4770184771843966156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265583 (n + 1) : ℚ) / (A131818 (n + 1) : ℚ)

end

end A004248.P4770184771843966156

namespace A004248

/-- `A265583(n+1)/A131818(n+1)` -/
def P4770184771843966156.Spec : Prop :=
  ∀ n, P4770184771843966156.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P12697132095461740989

`A265583(n+1)/A134868(n+1)`
-/

namespace A004248.P12697132095461740989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265583 (n + 1) : ℚ) / (A134868 (n + 1) : ℚ)

end

end A004248.P12697132095461740989

namespace A004248

/-- `A265583(n+1)/A134868(n+1)` -/
def P12697132095461740989.Spec : Prop :=
  ∀ n, P12697132095461740989.a n = (A004248 n : ℚ)

end A004248

/-! ## A004248.P5359287221074782293

`A265583(n+1)/A135223(n+1)`
-/

namespace A004248.P5359287221074782293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265583 (n + 1) : ℚ) / (A135223 (n + 1) : ℚ)

end

end A004248.P5359287221074782293

namespace A004248

/-- `A265583(n+1)/A135223(n+1)` -/
def P5359287221074782293.Spec : Prop :=
  ∀ n, P5359287221074782293.a n = (A004248 n : ℚ)

end A004248

/-!
# A004249: a(n) = (2^2^...^2) (with n 2's) + 1.

The programs for A004249, the canonical program `A004249.P13402057027361073072` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004249 has offset 0).

The definition of A004249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004249.P13402057027361073072

`2^a(n-1)/2+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004249

/-- `2^a(n-1)/2+1` -/
def P13402057027361073072.Spec : Prop :=
  ∀ n, P13402057027361073072.a n = (A004249 n : ℝ)

end A004249

/-!
# A004250: Number of partitions of n into 3 or more parts.

The programs for A004250, there is no canonical definition to state claims against.
-/

/-! ## A004250.P16594239745095749507

`A058984(n+1)-1`
-/

namespace A004250.P16594239745095749507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 (n + 1) - 1

end

end A004250.P16594239745095749507

/-! ## A004250.P13396269199790144887

`A000041(n+1)-floor((n+3)/2)`
-/

namespace A004250.P13396269199790144887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ⌊(n + 3 : ℚ) / 2⌋

end

end A004250.P13396269199790144887

/-! ## A004250.P8216290741142731327

`∑[A117995(n+1)]`
-/

namespace A004250.P8216290741142731327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004250.P8216290741142731327

/-! ## A004250.P9961456438055905686

`∑[A117298(n+1)-1]`
-/

namespace A004250.P9961456438055905686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004250.P9961456438055905686

/-! ## A004250.P4174618413110024713

`∑[Δ[A000041(n)]-n%2]`
-/

namespace A004250.P4174618413110024713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004250.P4174618413110024713

/-! ## A004250.P6127868859328143493

`A000065(n+1)-round(n/2)`
-/

namespace A004250.P6127868859328143493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / 2)

end

end A004250.P6127868859328143493

/-! ## A004250.P10159202000273050442

`∑[A002865(n+1)]-round(n/2)`
-/

namespace A004250.P10159202000273050442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.roundAway ((n : ℚ) / 2)

end

end A004250.P10159202000273050442

/-! ## A004250.P2725885612040321828

`A362548(n+1)+A002620(n)`
-/

namespace A004250.P2725885612040321828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362548 (n + 1) + A002620 n

end

end A004250.P2725885612040321828

/-! ## A004250.P9206124492565503039

`A004526(n)+A000094(n+2)`
-/

namespace A004250.P9206124492565503039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A000094 (n + 2)

end

end A004250.P9206124492565503039

/-! ## A004250.P7428868738348286348

`∑[A002865(n+1)-A000035(n)]`
-/

namespace A004250.P7428868738348286348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004250.P7428868738348286348

/-! ## A004250.P1220011046808475614

`Δ[A058984(n)]-(1-A058984(n))`
-/

namespace A004250.P1220011046808475614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (1 - A058984 n)

end

end A004250.P1220011046808475614

/-! ## A004250.P17398717210322628882

`A052810(n+1)-(A080513(n)+1)`
-/

namespace A004250.P17398717210322628882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (n + 1) - (A080513 n + 1)

end

end A004250.P17398717210322628882

/-! ## A004250.P9174585409502290456

`A144300(n+1)-A003165(n+1)`
-/

namespace A004250.P9174585409502290456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 1) - A003165 (n + 1)

end

end A004250.P9174585409502290456

/-! ## A004250.P14385617171131039435

`A328863(n+1)-A001399(n+1)`
-/

namespace A004250.P14385617171131039435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328863 (n + 1) - A001399 (n + 1)

end

end A004250.P14385617171131039435

/-! ## A004250.P6482702629432029457

`A133041(n+1)-(A032766(n+1)+1)`
-/

namespace A004250.P6482702629432029457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (n + 1) - (A032766 (n + 1) + 1)

end

end A004250.P6482702629432029457

/-! ## A004250.P1227075936250443121

`A065033(n+1)+A000094(n+2)-1`
-/

namespace A004250.P1227075936250443121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + (A000094 (n + 2) - 1)

end

end A004250.P1227075936250443121

/-!
# A004251: Number of graphical partitions (degree-vectors for simple graphs with n vertices, or possible ordered row-sum vectors for a symmetric 0-1 matrix with diagonal values 0).

The programs for A004251, there is no canonical definition to state claims against.
-/

/-! ## A004251.P121355505413181516

`∑[A095268(n)]`
-/

namespace A004251.P121355505413181516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004251.P121355505413181516

/-! ## A004251.P9454438040393362753

`A095268(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A004251.P9454438040393362753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095268 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A004251.P9454438040393362753

/-! ## A004251.P15503446901739862285

`a(n-1)+A095268(n)+A000007(n)` with `a(0)=1, a(1)=1`
-/

namespace A004251.P15503446901739862285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A095268 n + A000007 n)

end

end A004251.P15503446901739862285

/-! ## A004251.P268977578267319026

`a(n-1)+A095268(n)*A204162(A120108(n))` with `a(0)=1`
-/

namespace A004251.P268977578267319026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A095268 n * A204162 (A120108 n).toNat

end

end A004251.P268977578267319026

/-! ## A004251.P11755664200546375443

`A000088(n)-A182159(n)`
-/

namespace A004251.P11755664200546375443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A182159 n

end

end A004251.P11755664200546375443

/-!
# A004253: a(n) = 5*a(n-1) - a(n-2), with a(1)=1, a(2)=4.

The programs for A004253, the canonical program `A004253.P4041301978586479119` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004253 has offset 1).

The definition of A004253 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A004253.P4041301978586479119`, by `A004253.P4041301978586479119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004253.P4041301978586479119

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004253

/-- `5*a(n-1)-a(n-2)` -/
def P4041301978586479119.Spec : Prop :=
  ∀ n, P4041301978586479119.a n = A004253 (n + 1)

theorem P4041301978586479119.correct : P4041301978586479119.Spec := by
  intro n
  simp only [A004253, Nat.add_sub_cancel]

end A004253

/-! ## A004253.P2453876565148838198

`lcm(5, a(n-1))-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A004253.P2453876565148838198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A004253.P2453876565148838198

namespace A004253

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P2453876565148838198.Spec : Prop :=
  ∀ n, P2453876565148838198.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P2100059719301737061

`A136210(Δ[n²])`
-/

namespace A004253.P2100059719301737061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004253.P2100059719301737061

namespace A004253

/-- `A136210(Δ[n²])` -/
def P2100059719301737061.Spec : Prop :=
  ∀ n, P2100059719301737061.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P8214928675012254696

`abs(A101463(2*n))`
-/

namespace A004253.P8214928675012254696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101463 (2 * n)|

end

end A004253.P8214928675012254696

namespace A004253

/-- `abs(A101463(2*n))` -/
def P8214928675012254696.Spec : Prop :=
  ∀ n, P8214928675012254696.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P18011969172087668140

`A217787(3*(n+1))`
-/

namespace A004253.P18011969172087668140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (3 * (n + 1))

end

end A004253.P18011969172087668140

namespace A004253

/-- `A217787(3*(n+1))` -/
def P18011969172087668140.Spec : Prop :=
  ∀ n, P18011969172087668140.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P1614986826491673387

`A136211(A004277(n))`
-/

namespace A004253.P1614986826491673387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A004277 n).toNat

end

end A004253.P1614986826491673387

namespace A004253

/-- `A136211(A004277(n))` -/
def P1614986826491673387.Spec : Prop :=
  ∀ n, P1614986826491673387.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P14703698746915490329

`A136211(A004275(n+1))`
-/

namespace A004253.P14703698746915490329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A004275 (n + 1)).toNat

end

end A004253.P14703698746915490329

namespace A004253

/-- `A136211(A004275(n+1))` -/
def P14703698746915490329.Spec : Prop :=
  ∀ n, P14703698746915490329.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P15733684346926188027

`A136211(A004273(n)+1)`
-/

namespace A004253.P15733684346926188027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A004273 n + 1).toNat

end

end A004253.P15733684346926188027

namespace A004253

/-- `A136211(A004273(n)+1)` -/
def P15733684346926188027.Spec : Prop :=
  ∀ n, P15733684346926188027.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P6628529486941119238

`A136211(A028310(2*n))`
-/

namespace A004253.P6628529486941119238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A028310 (2 * n)).toNat

end

end A004253.P6628529486941119238

namespace A004253

/-- `A136211(A028310(2*n))` -/
def P6628529486941119238.Spec : Prop :=
  ∀ n, P6628529486941119238.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P7166109061473002731

`A004254(n)+A002320(n)`
-/

namespace A004253.P7166109061473002731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + A002320 n

end

end A004253.P7166109061473002731

namespace A004253

/-- `A004254(n)+A002320(n)` -/
def P7166109061473002731.Spec : Prop :=
  ∀ n, P7166109061473002731.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P4615243461203039423

`A136211(A028310(n)+n)`
-/

namespace A004253.P4615243461203039423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A028310 n + (n : ℤ)).toNat

end

end A004253.P4615243461203039423

namespace A004253

/-- `A136211(A028310(n)+n)` -/
def P4615243461203039423.Spec : Prop :=
  ∀ n, P4615243461203039423.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P3682797364087137097

`A002310(n)+2*A004254(n)`
-/

namespace A004253.P3682797364087137097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n + 2 * A004254 n

end

end A004253.P3682797364087137097

namespace A004253

/-- `A002310(n)+2*A004254(n)` -/
def P3682797364087137097.Spec : Prop :=
  ∀ n, P3682797364087137097.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P11081787858773399462

`A136211(Δ[n²-A028310(n)])`
-/

namespace A004253.P11081787858773399462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (f1 (n + 1) - f1 n).toNat

end

end A004253.P11081787858773399462

namespace A004253

/-- `A136211(Δ[n²-A028310(n)])` -/
def P11081787858773399462.Spec : Prop :=
  ∀ n, P11081787858773399462.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P2806710607511174763

`A002310(n)+Δ[A101368(n+1)]`
-/

namespace A004253.P2806710607511174763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n + (f1 (n + 1) - f1 n)

end

end A004253.P2806710607511174763

namespace A004253

/-- `A002310(n)+Δ[A101368(n+1)]` -/
def P2806710607511174763.Spec : Prop :=
  ∀ n, P2806710607511174763.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P10211702020186561992

`A101368(n+2)+∑[A004254(n)]`
-/

namespace A004253.P10211702020186561992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004253.P10211702020186561992

namespace A004253

/-- `A101368(n+2)+∑[A004254(n)]` -/
def P10211702020186561992.Spec : Prop :=
  ∀ n, P10211702020186561992.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P11997712848692078962

`A237254(2*n+1)+A004254(n)`
-/

namespace A004253.P11997712848692078962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 1) + A004254 n

end

end A004253.P11997712848692078962

namespace A004253

/-- `A237254(2*n+1)+A004254(n)` -/
def P11997712848692078962.Spec : Prop :=
  ∀ n, P11997712848692078962.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P3779165105913472985

`A002320(n)+Δ[A101368(n+1)/2]`
-/

namespace A004253.P3779165105913472985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101368 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002320 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A004253.P3779165105913472985

namespace A004253

/-- `A002320(n)+Δ[A101368(n+1)/2]` -/
def P3779165105913472985.Spec : Prop :=
  ∀ n, P3779165105913472985.a n = (A004253 (n + 1) : ℚ)

end A004253

/-! ## A004253.P1685279493693257874

`A002320(n)+A002320(n)-A002310(n)`
-/

namespace A004253.P1685279493693257874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n + (A002320 n - A002310 n)

end

end A004253.P1685279493693257874

namespace A004253

/-- `A002320(n)+A002320(n)-A002310(n)` -/
def P1685279493693257874.Spec : Prop :=
  ∀ n, P1685279493693257874.a n = A004253 (n + 1)

end A004253

/-! ## A004253.P9592859125945520889

`Δ[A004254(n)]`
-/

namespace A004253.P9592859125945520889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004253.P9592859125945520889

namespace A004253

/-- `Δ[A004254(n)]` -/
def P9592859125945520889.Spec : Prop :=
  ∀ n, P9592859125945520889.a n = A004253 (n + 1)

end A004253

/-!
# A004254: a(n) = 5*a(n-1) - a(n-2) for n > 1, a(0) = 0, a(1) = 1.

The programs for A004254, the canonical program `A004254.P3368397127393006179` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004254 has offset 0).

The definition of A004254 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A004254.P3368397127393006179`, by `A004254.P3368397127393006179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004254.P3368397127393006179

`5*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004254

/-- `5*a(n-1)-a(n-2)` -/
def P3368397127393006179.Spec : Prop :=
  ∀ n, P3368397127393006179.a n = A004254 n

theorem P3368397127393006179.correct : P3368397127393006179.Spec := by
  intro n
  simp only [A004254]

end A004254

/-! ## A004254.P275853553366242029

`∑[lcm(5, a(n-1))-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A004254.P275853553366242029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004254.P275853553366242029

namespace A004254

/-- `∑[lcm(5, a(n-1))-a(n-2)]` -/
def P275853553366242029.Spec : Prop :=
  ∀ n, P275853553366242029.a n = A004254 n

end A004254

/-! ## A004254.P16221396555771772229

`Δ[A101368(n+1)/2]`
-/

namespace A004254.P16221396555771772229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101368 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004254.P16221396555771772229

namespace A004254

/-- `Δ[A101368(n+1)/2]` -/
def P16221396555771772229.Spec : Prop :=
  ∀ n, P16221396555771772229.a n = (A004254 n : ℚ)

end A004254

/-! ## A004254.P14166300598832299400

`A002320(n)-A002310(n)`
-/

namespace A004254.P14166300598832299400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n - A002310 n

end

end A004254.P14166300598832299400

namespace A004254

/-- `A002320(n)-A002310(n)` -/
def P14166300598832299400.Spec : Prop :=
  ∀ n, P14166300598832299400.a n = A004254 n

end A004254

/-! ## A004254.P17082070787688793988

`∑[A217787(A008486(n))]-1`
-/

namespace A004254.P17082070787688793988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004254.P17082070787688793988

namespace A004254

/-- `∑[A217787(A008486(n))]-1` -/
def P17082070787688793988.Spec : Prop :=
  ∀ n, P17082070787688793988.a n = A004254 n

end A004254

/-! ## A004254.P6152296949834018010

`∑[A217787(A008585(n))]-1`
-/

namespace A004254.P6152296949834018010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004254.P6152296949834018010

namespace A004254

/-- `∑[A217787(A008585(n))]-1` -/
def P6152296949834018010.Spec : Prop :=
  ∀ n, P6152296949834018010.a n = A004254 n

end A004254

/-! ## A004254.P13436077424595076084

`A004253(n+1)-A002320(n)`
-/

namespace A004254.P13436077424595076084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) - A002320 n

end

end A004254.P13436077424595076084

namespace A004254

/-- `A004253(n+1)-A002320(n)` -/
def P13436077424595076084.Spec : Prop :=
  ∀ n, P13436077424595076084.a n = A004254 n

end A004254

/-! ## A004254.P7040529698768576434

`A136210(2*n+1)-A002320(n)`
-/

namespace A004254.P7040529698768576434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 (2 * n + 1) - A002320 n

end

end A004254.P7040529698768576434

namespace A004254

/-- `A136210(2*n+1)-A002320(n)` -/
def P7040529698768576434.Spec : Prop :=
  ∀ n, P7040529698768576434.a n = A004254 n

end A004254

/-! ## A004254.P18193618941464016027

`A237254(2*n+1)-A002310(n)`
-/

namespace A004254.P18193618941464016027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 1) - A002310 n

end

end A004254.P18193618941464016027

namespace A004254

/-- `A237254(2*n+1)-A002310(n)` -/
def P18193618941464016027.Spec : Prop :=
  ∀ n, P18193618941464016027.a n = A004254 n

end A004254

/-! ## A004254.P2496587795397036050

`(A004253(n+1)-A002310(n))/2`
-/

namespace A004254.P2496587795397036050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004253 (n + 1) - A002310 n : ℚ) / 2

end

end A004254.P2496587795397036050

namespace A004254

/-- `(A004253(n+1)-A002310(n))/2` -/
def P2496587795397036050.Spec : Prop :=
  ∀ n, P2496587795397036050.a n = (A004254 n : ℚ)

end A004254

/-! ## A004254.P12630336181751963951

`A217787(3*(n+1))-A002320(n)`
-/

namespace A004254.P12630336181751963951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (3 * (n + 1)) - A002320 n

end

end A004254.P12630336181751963951

namespace A004254

/-- `A217787(3*(n+1))-A002320(n)` -/
def P12630336181751963951.Spec : Prop :=
  ∀ n, P12630336181751963951.a n = A004254 n

end A004254

/-! ## A004254.P14005416767020983652

`A004253(n+1)-A237254(2*n+1)`
-/

namespace A004254.P14005416767020983652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) - A237254 (2 * n + 1)

end

end A004254.P14005416767020983652

namespace A004254

/-- `A004253(n+1)-A237254(2*n+1)` -/
def P14005416767020983652.Spec : Prop :=
  ∀ n, P14005416767020983652.a n = A004254 n

end A004254

/-! ## A004254.P7228658819164374144

`A217787(3*n+1)-A217787(3*n)`
-/

namespace A004254.P7228658819164374144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (3 * n + 1) - A217787 (3 * n)

end

end A004254.P7228658819164374144

namespace A004254

/-- `A217787(3*n+1)-A217787(3*n)` -/
def P7228658819164374144.Spec : Prop :=
  ∀ n, P7228658819164374144.a n = A004254 n

end A004254

/-! ## A004254.P2198914537259601946

`A136210(2*n+1)-A237254(2*n+1)`
-/

namespace A004254.P2198914537259601946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 (2 * n + 1) - A237254 (2 * n + 1)

end

end A004254.P2198914537259601946

namespace A004254

/-- `A136210(2*n+1)-A237254(2*n+1)` -/
def P2198914537259601946.Spec : Prop :=
  ∀ n, P2198914537259601946.a n = A004254 n

end A004254

/-! ## A004254.P9499017554848113353

`A002310(n)-A217787(A008486(n))`
-/

namespace A004254.P9499017554848113353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n - A217787 (A008486 n).toNat

end

end A004254.P9499017554848113353

namespace A004254

/-- `A002310(n)-A217787(A008486(n))` -/
def P9499017554848113353.Spec : Prop :=
  ∀ n, P9499017554848113353.a n = A004254 n

end A004254

/-! ## A004254.P17355605215098956512

`A002310(n)-A217787(A008585(n))`
-/

namespace A004254.P17355605215098956512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n - A217787 (A008585 n).toNat

end

end A004254.P17355605215098956512

namespace A004254

/-- `A002310(n)-A217787(A008585(n))` -/
def P17355605215098956512.Spec : Prop :=
  ∀ n, P17355605215098956512.a n = A004254 n

end A004254

/-! ## A004254.P18338050634837663397

`A002320(n)-A217787(A016777(n))`
-/

namespace A004254.P18338050634837663397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n - A217787 (A016777 n).toNat

end

end A004254.P18338050634837663397

namespace A004254

/-- `A002320(n)-A217787(A016777(n))` -/
def P18338050634837663397.Spec : Prop :=
  ∀ n, P18338050634837663397.a n = A004254 n

end A004254

/-! ## A004254.P18381104324737340820

`A237254(2*n+1)-A237254(A004277(n))`
-/

namespace A004254.P18381104324737340820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 1) - A237254 (A004277 n).toNat

end

end A004254.P18381104324737340820

namespace A004254

/-- `A237254(2*n+1)-A237254(A004277(n))` -/
def P18381104324737340820.Spec : Prop :=
  ∀ n, P18381104324737340820.a n = A004254 n

end A004254

/-! ## A004254.P13875267782464258427

`A237254(2*n+1)-A237254(A004275(n+1))`
-/

namespace A004254.P13875267782464258427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 1) - A237254 (A004275 (n + 1)).toNat

end

end A004254.P13875267782464258427

namespace A004254

/-- `A237254(2*n+1)-A237254(A004275(n+1))` -/
def P13875267782464258427.Spec : Prop :=
  ∀ n, P13875267782464258427.a n = A004254 n

end A004254

/-!
# A004255: a(n) = n*(n + 1)*(n^2 - 3*n + 6)/8.

The programs for A004255, the canonical program `A004255.P12780250135199061509` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004255 has offset 1).

The definition of A004255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*((n+1)²-3*(n+1)+6)/8` (program `A004255.P2863354367136740038`, by `A004255.P2863354367136740038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004255.P2863354367136740038

`(n+1)*(n+2)*((n+1)²-3*(n+1)+6)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004255.P2863354367136740038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 6 : ℚ) / 8))

end

end A004255.P2863354367136740038

namespace A004255

/-- `(n+1)*(n+2)*((n+1)²-3*(n+1)+6)/8` -/
def P2863354367136740038.Spec : Prop :=
  ∀ n, P2863354367136740038.a n = (A004255 (n + 1) : ℚ)

theorem P2863354367136740038.correct : P2863354367136740038.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A004255, Nat.add_sub_cancel, A004255.P2863354367136740038.a, A004255.P12780250135199061509.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A004255, Nat.add_sub_cancel, A004255.P2863354367136740038.a, A004255.P12780250135199061509.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A004255

/-! ## A004255.P12780250135199061509

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=25, a(4)=60`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004255

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12780250135199061509.Spec : Prop :=
  ∀ n, P12780250135199061509.a n = A004255 (n + 1)

theorem P12780250135199061509.correct : P12780250135199061509.Spec := by
  intro n
  simp only [A004255, Nat.add_sub_cancel]

end A004255

/-! ## A004255.P10619576246194700893

`A062026(n+1)/2`
-/

namespace A004255.P10619576246194700893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062026 (n + 1) : ℚ) / 2

end

end A004255.P10619576246194700893

namespace A004255

/-- `A062026(n+1)/2` -/
def P10619576246194700893.Spec : Prop :=
  ∀ n, P10619576246194700893.a n = (A004255 (n + 1) : ℚ)

end A004255

/-! ## A004255.P12519388547837151104

`∑[∑[3*C(n, 2)+1]]`
-/

namespace A004255.P12519388547837151104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004255.P12519388547837151104

namespace A004255

/-- `∑[∑[3*C(n, 2)+1]]` -/
def P12519388547837151104.Spec : Prop :=
  ∀ n, (P12519388547837151104.a n : ℤ) = A004255 (n + 1)

end A004255

/-! ## A004255.P6961053313884427016

`∑[n+1]+C(∑[n], 2)`
-/

namespace A004255.P6961053313884427016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A004255.P6961053313884427016

namespace A004255

/-- `∑[n+1]+C(∑[n], 2)` -/
def P6961053313884427016.Spec : Prop :=
  ∀ n, (P6961053313884427016.a n : ℤ) = A004255 (n + 1)

end A004255

/-! ## A004255.P11727384352208935197

`floor(∑[∑[∑[a(n-1)+3]]])` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A004255.P11727384352208935197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004255.P11727384352208935197

namespace A004255

/-- `floor(∑[∑[∑[a(n-1)+3]]])` -/
def P11727384352208935197.Spec : Prop :=
  ∀ n, (P11727384352208935197.a n : ℤ) = A004255 (n + 1)

end A004255

/-! ## A004255.P17288647131115126140

`C(C(n+1, 2)+1, 2)+1+n`
-/

namespace A004255.P17288647131115126140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2 + 1) 2 + 1 + n

end

end A004255.P17288647131115126140

namespace A004255

/-- `C(C(n+1, 2)+1, 2)+1+n` -/
def P17288647131115126140.Spec : Prop :=
  ∀ n, (P17288647131115126140.a n : ℤ) = A004255 (n + 1)

end A004255

/-! ## A004255.P7404846820320639285

`floor(∑[∑[4-∑[a(n-1)-3]]])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A004255.P7404846820320639285
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004255.P7404846820320639285

namespace A004255

/-- `floor(∑[∑[4-∑[a(n-1)-3]]])` -/
def P7404846820320639285.Spec : Prop :=
  ∀ n, P7404846820320639285.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P5003693113228967295

`C(∑[n], 2)-∑[n-1-2*n]`
-/

namespace A004255.P5003693113228967295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A004255.P5003693113228967295

namespace A004255

/-- `C(∑[n], 2)-∑[n-1-2*n]` -/
def P5003693113228967295.Spec : Prop :=
  ∀ n, P5003693113228967295.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P18398922950741461718

`a(n-1)+(n+1)*(∑[n-1]+2)` with `a(0)=1`
-/

namespace A004255.P18398922950741461718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A004255.P18398922950741461718

namespace A004255

/-- `a(n-1)+(n+1)*(∑[n-1]+2)` -/
def P18398922950741461718.Spec : Prop :=
  ∀ n, P18398922950741461718.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P5626298837461365169

`or(1, n)*∑[ceil(lcm(2, n²)/4)]+1+n`
-/

namespace A004255.P5626298837461365169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n ^ 2) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A004255.P5626298837461365169

namespace A004255

/-- `or(1, n)*∑[ceil(lcm(2, n²)/4)]+1+n` -/
def P5626298837461365169.Spec : Prop :=
  ∀ n, P5626298837461365169.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P1895509599884643287

`∑[(n+1)*∑[n-1]]+lcm(n+1, n+2)`
-/

namespace A004255.P1895509599884643287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm (n + 1) (n + 2) : ℤ)

end

end A004255.P1895509599884643287

namespace A004255

/-- `∑[(n+1)*∑[n-1]]+lcm(n+1, n+2)` -/
def P1895509599884643287.Spec : Prop :=
  ∀ n, P1895509599884643287.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P2889041669164613843

`A101357(n+1)`
-/

namespace A004255.P2889041669164613843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 (n + 1)

end

end A004255.P2889041669164613843

namespace A004255

/-- `A101357(n+1)` -/
def P2889041669164613843.Spec : Prop :=
  ∀ n, P2889041669164613843.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P14021893691367155192

`A002817(n)+1+n`
-/

namespace A004255.P14021893691367155192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + 1 + (n : ℤ)

end

end A004255.P14021893691367155192

namespace A004255

/-- `A002817(n)+1+n` -/
def P14021893691367155192.Spec : Prop :=
  ∀ n, P14021893691367155192.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P8984454799728140706

`record[A101357(abs(1-n))]`
-/

namespace A004255.P8984454799728140706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004255.P8984454799728140706

namespace A004255

/-- `record[A101357(abs(1-n))]` -/
def P8984454799728140706.Spec : Prop :=
  ∀ n, P8984454799728140706.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P15726071179618622477

`n²+A294259(n)+1`
-/

namespace A004255.P15726071179618622477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A294259 n + 1)

end

end A004255.P15726071179618622477

namespace A004255

/-- `n²+A294259(n)+1` -/
def P15726071179618622477.Spec : Prop :=
  ∀ n, P15726071179618622477.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P3603038146791153949

`∑[A006003(n)]+n+1`
-/

namespace A004255.P3603038146791153949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A004255.P3603038146791153949

namespace A004255

/-- `∑[A006003(n)]+n+1` -/
def P3603038146791153949.Spec : Prop :=
  ∀ n, P3603038146791153949.a n = A004255 (n + 1)

end A004255

/-! ## A004255.P5467905061029800778

`A001621(n)/2+n+1`
-/

namespace A004255.P5467905061029800778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001621 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A004255.P5467905061029800778

namespace A004255

/-- `A001621(n)/2+n+1` -/
def P5467905061029800778.Spec : Prop :=
  ∀ n, P5467905061029800778.a n = (A004255 (n + 1) : ℚ)

end A004255

/-! ## A004255.P5479709312503790187

`C(A000124(n), 2)+1+n`
-/

namespace A004255.P5479709312503790187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000124 n).toNat 2 + 1 + n

end

end A004255.P5479709312503790187

namespace A004255

/-- `C(A000124(n), 2)+1+n` -/
def P5479709312503790187.Spec : Prop :=
  ∀ n, (P5479709312503790187.a n : ℤ) = A004255 (n + 1)

end A004255

/-! ## A004255.P1414142861929714404

`A050534(n+1)+∑[n+1]`
-/

namespace A004255.P1414142861929714404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004255.P1414142861929714404

namespace A004255

/-- `A050534(n+1)+∑[n+1]` -/
def P1414142861929714404.Spec : Prop :=
  ∀ n, P1414142861929714404.a n = A004255 (n + 1)

end A004255

/-!
# A004256: a(n) = n^2*(n+1)*(n+2)^2/6.

The programs for A004256, the canonical program `A004256.P18290825349552605954` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004256 has offset 0).

The definition of A004256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004256.P18290825349552605954

`n²*(n+1)*(n+2)²/6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004256

/-- `n²*(n+1)*(n+2)²/6` -/
def P18290825349552605954.Spec : Prop :=
  ∀ n, P18290825349552605954.a n = (A004256 n : ℚ)

end A004256

/-! ## A004256.P17906973667140737172

`n*A004320(n)`
-/

namespace A004256.P17906973667140737172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004320 n

end

end A004256.P17906973667140737172

namespace A004256

/-- `n*A004320(n)` -/
def P17906973667140737172.Spec : Prop :=
  ∀ n, P17906973667140737172.a n = A004256 n

end A004256

/-! ## A004256.P11903108404345209820

`n*∑[A016061(n)]`
-/

namespace A004256.P11903108404345209820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004256.P11903108404345209820

namespace A004256

/-- `n*∑[A016061(n)]` -/
def P11903108404345209820.Spec : Prop :=
  ∀ n, P11903108404345209820.a n = A004256 n

end A004256

/-! ## A004256.P17278776618159038188

`n*(n+2)*A000292(n)`
-/

namespace A004256.P17278776618159038188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) * A000292 n

end

end A004256.P17278776618159038188

namespace A004256

/-- `n*(n+2)*A000292(n)` -/
def P17278776618159038188.Spec : Prop :=
  ∀ n, P17278776618159038188.a n = A004256 n

end A004256

/-! ## A004256.P16473803971018540440

`∑[∑[2*A004466(n)+n]]`
-/

namespace A004256.P16473803971018540440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004466 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004256.P16473803971018540440

namespace A004256

/-- `∑[∑[2*A004466(n)+n]]` -/
def P16473803971018540440.Spec : Prop :=
  ∀ n, P16473803971018540440.a n = A004256 n

end A004256

/-! ## A004256.P6900639372097783338

`A000292(n)*A005563(n)`
-/

namespace A004256.P6900639372097783338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A005563 n

end

end A004256.P6900639372097783338

namespace A004256

/-- `A000292(n)*A005563(n)` -/
def P6900639372097783338.Spec : Prop :=
  ∀ n, P6900639372097783338.a n = A004256 n

end A004256

/-! ## A004256.P8386543129829414110

`A213556(n+1)-A225007(n)`
-/

namespace A004256.P8386543129829414110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) - A225007 n

end

end A004256.P8386543129829414110

namespace A004256

/-- `A213556(n+1)-A225007(n)` -/
def P8386543129829414110.Spec : Prop :=
  ∀ n, P8386543129829414110.a n = A004256 n

end A004256

/-! ## A004256.P11955191545611584679

`A004282(n)+A004302(n)-A000292(n)`
-/

namespace A004256.P11955191545611584679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 n + (A004302 n - A000292 n)

end

end A004256.P11955191545611584679

namespace A004256

/-- `A004282(n)+A004302(n)-A000292(n)` -/
def P11955191545611584679.Spec : Prop :=
  ∀ n, P11955191545611584679.a n = A004256 n

end A004256

/-! ## A004256.P526429264193376009

`A004282(n)+A004282(n)-A004320(n)`
-/

namespace A004256.P526429264193376009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 n + (A004282 n - A004320 n)

end

end A004256.P526429264193376009

namespace A004256

/-- `A004282(n)+A004282(n)-A004320(n)` -/
def P526429264193376009.Spec : Prop :=
  ∀ n, P526429264193376009.a n = A004256 n

end A004256

/-! ## A004256.P12966597784921495280

`(A000125(n+1)-(n+2))*A005563(n)`
-/

namespace A004256.P12966597784921495280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000125 (n + 1) - (n + 2 : ℤ)) * A005563 n

end

end A004256.P12966597784921495280

namespace A004256

/-- `(A000125(n+1)-(n+2))*A005563(n)` -/
def P12966597784921495280.Spec : Prop :=
  ∀ n, P12966597784921495280.a n = A004256 n

end A004256

/-! ## A004256.P5780759719400275518

`Δ[A000332(n+2)]*A005563(n)`
-/

namespace A004256.P5780759719400275518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005563 n

end

end A004256.P5780759719400275518

namespace A004256

/-- `Δ[A000332(n+2)]*A005563(n)` -/
def P5780759719400275518.Spec : Prop :=
  ∀ n, P5780759719400275518.a n = A004256 n

end A004256

/-! ## A004256.P7919246228033138738

`∑[∑[A212570(2*n)/2]]`
-/

namespace A004256.P7919246228033138738
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212570 (2 * n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004256.P7919246228033138738

namespace A004256

/-- `∑[∑[A212570(2*n)/2]]` -/
def P7919246228033138738.Spec : Prop :=
  ∀ n, P7919246228033138738.a n = (A004256 n : ℚ)

end A004256

/-! ## A004256.P1908713752939900842

`∑[∑[A004466(2*n)/4]]`
-/

namespace A004256.P1908713752939900842
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004466 (2 * n) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004256.P1908713752939900842

namespace A004256

/-- `∑[∑[A004466(2*n)/4]]` -/
def P1908713752939900842.Spec : Prop :=
  ∀ n, P1908713752939900842.a n = (A004256 n : ℚ)

end A004256

/-! ## A004256.P2133230650318239328

`∑[∑[A212578(2*n)-n]]`
-/

namespace A004256.P2133230650318239328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 (2 * n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004256.P2133230650318239328

namespace A004256

/-- `∑[∑[A212578(2*n)-n]]` -/
def P2133230650318239328.Spec : Prop :=
  ∀ n, P2133230650318239328.a n = A004256 n

end A004256

/-!
# A004257: a(n) = round(log_2(n)).

The programs for A004257, the canonical program `A004257.P17307970520050706458` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004257 has offset 1).

The definition of A004257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(log2(n+1))` (program `A004257.P17307970520050706458`, by `A004257.P17307970520050706458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004257.P17307970520050706458

`round(log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004257

/-- `round(log2(n+1))` -/
def P17307970520050706458.Spec : Prop :=
  ∀ n, P17307970520050706458.a n = A004257 (n + 1)

theorem P17307970520050706458.correct : P17307970520050706458.Spec := by
  intro n
  simp only [A004257, Nat.add_sub_cancel]

end A004257

/-! ## A004257.P11512698779874892138

`floor(log2(A258833(n)))`
-/

namespace A004257.P11512698779874892138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A258833 n).toNat

end

end A004257.P11512698779874892138

namespace A004257

/-- `floor(log2(A258833(n)))` -/
def P11512698779874892138.Spec : Prop :=
  ∀ n, (P11512698779874892138.a n : ℤ) = A004257 (n + 1)

end A004257

/-! ## A004257.P2210890389475968709

`∑[char[A084188(n)]]`
-/

namespace A004257.P2210890389475968709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004257.P2210890389475968709

namespace A004257

/-- `∑[char[A084188(n)]]` -/
def P2210890389475968709.Spec : Prop :=
  ∀ n, (P2210890389475968709.a n : ℤ) = A004257 (n + 1)

end A004257

/-! ## A004257.P12484582450344066286

`floor(log2(sqrt(A033816(n))))`
-/

namespace A004257.P12484582450344066286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A033816 n : ℝ))⌋

end

end A004257.P12484582450344066286

namespace A004257

/-- `floor(log2(sqrt(A033816(n))))` -/
def P12484582450344066286.Spec : Prop :=
  ∀ n, P12484582450344066286.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P5459174184438646890

`floor(log2(A001951(n+1)))`
-/

namespace A004257.P5459174184438646890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001951 (n + 1)).toNat

end

end A004257.P5459174184438646890

namespace A004257

/-- `floor(log2(A001951(n+1)))` -/
def P5459174184438646890.Spec : Prop :=
  ∀ n, (P5459174184438646890.a n : ℤ) = A004257 (n + 1)

end A004257

/-! ## A004257.P8963958605739534221

`floor(log2(A285360(n+1)))`
-/

namespace A004257.P8963958605739534221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A285360 (n + 1)).toNat

end

end A004257.P8963958605739534221

namespace A004257

/-- `floor(log2(A285360(n+1)))` -/
def P8963958605739534221.Spec : Prop :=
  ∀ n, (P8963958605739534221.a n : ℤ) = A004257 (n + 1)

end A004257

/-! ## A004257.P6515617322377915463

`ceil(log2(A049474(n+1)))`
-/

namespace A004257.P6515617322377915463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A049474 (n + 1) : ℝ)⌉

end

end A004257.P6515617322377915463

namespace A004257

/-- `ceil(log2(A049474(n+1)))` -/
def P6515617322377915463.Spec : Prop :=
  ∀ n, P6515617322377915463.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P1110962277941540287

`∑[Δ[A188916(n)]-1]`
-/

namespace A004257.P1110962277941540287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004257.P1110962277941540287

namespace A004257

/-- `∑[Δ[A188916(n)]-1]` -/
def P1110962277941540287.Spec : Prop :=
  ∀ n, P1110962277941540287.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P16259840171945524252

`A110654(floor(log2((n+1)²)))`
-/

namespace A004257.P16259840171945524252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Nat.log 2 ((n + 1) ^ 2))

end

end A004257.P16259840171945524252

namespace A004257

/-- `A110654(floor(log2((n+1)²)))` -/
def P16259840171945524252.Spec : Prop :=
  ∀ n, P16259840171945524252.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P11948332960681556915

`A188916(n+1)-(n+1)`
-/

namespace A004257.P11948332960681556915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188916 (n + 1) - (n + 1 : ℤ)

end

end A004257.P11948332960681556915

namespace A004257

/-- `A188916(n+1)-(n+1)` -/
def P11948332960681556915.Spec : Prop :=
  ∀ n, P11948332960681556915.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P3278686431895273312

`ceil(log2(A080827(n+1))/2)`
-/

namespace A004257.P3278686431895273312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A080827 (n + 1) : ℝ) / 2⌉

end

end A004257.P3278686431895273312

namespace A004257

/-- `ceil(log2(A080827(n+1))/2)` -/
def P3278686431895273312.Spec : Prop :=
  ∀ n, P3278686431895273312.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P1465188517829172824

`ceil(log2(A118002(n+1))/2)`
-/

namespace A004257.P1465188517829172824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A118002 (n + 1) : ℝ) / 2⌉

end

end A004257.P1465188517829172824

namespace A004257

/-- `ceil(log2(A118002(n+1))/2)` -/
def P1465188517829172824.Spec : Prop :=
  ∀ n, P1465188517829172824.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P5285033829859550310

`ceil(log2(A236283(n+1))/2)`
-/

namespace A004257.P5285033829859550310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A236283 (n + 1) : ℝ) / 2⌉

end

end A004257.P5285033829859550310

namespace A004257

/-- `ceil(log2(A236283(n+1))/2)` -/
def P5285033829859550310.Spec : Prop :=
  ∀ n, P5285033829859550310.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P7366007206608368091

`ceil(log2(A099392(n+2))/2)`
-/

namespace A004257.P7366007206608368091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A099392 (n + 2) : ℝ) / 2⌉

end

end A004257.P7366007206608368091

namespace A004257

/-- `ceil(log2(A099392(n+2))/2)` -/
def P7366007206608368091.Spec : Prop :=
  ∀ n, P7366007206608368091.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P8471604239092857494

`∑[char[A017910(2*n+1)]]`
-/

namespace A004257.P8471604239092857494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004257.P8471604239092857494

namespace A004257

/-- `∑[char[A017910(2*n+1)]]` -/
def P8471604239092857494.Spec : Prop :=
  ∀ n, (P8471604239092857494.a n : ℤ) = A004257 (n + 1)

end A004257

/-! ## A004257.P15909710084633917291

`A029837(A049474(n+1))`
-/

namespace A004257.P15909710084633917291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A049474 (n + 1)).toNat

end

end A004257.P15909710084633917291

namespace A004257

/-- `A029837(A049474(n+1))` -/
def P15909710084633917291.Spec : Prop :=
  ∀ n, P15909710084633917291.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P6722217264161638139

`∑[A001222(Δ[A188916(n)])]`
-/

namespace A004257.P6722217264161638139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004257.P6722217264161638139

namespace A004257

/-- `∑[A001222(Δ[A188916(n)])]` -/
def P6722217264161638139.Spec : Prop :=
  ∀ n, P6722217264161638139.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P14977336623552810546

`∑[A188901(Δ[A188916(n)])]`
-/

namespace A004257.P14977336623552810546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188901 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004257.P14977336623552810546

namespace A004257

/-- `∑[A188901(Δ[A188916(n)])]` -/
def P14977336623552810546.Spec : Prop :=
  ∀ n, P14977336623552810546.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P3735248939708318429

`A001222(∏[Δ[A188916(n)]])`
-/

namespace A004257.P3735248939708318429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004257.P3735248939708318429

namespace A004257

/-- `A001222(∏[Δ[A188916(n)]])` -/
def P3735248939708318429.Spec : Prop :=
  ∀ n, P3735248939708318429.a n = A004257 (n + 1)

end A004257

/-! ## A004257.P7308873963327147138

`A023809(A188916(n+1)-n)`
-/

namespace A004257.P7308873963327147138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023809 (A188916 (n + 1) - (n : ℤ)).toNat

end

end A004257.P7308873963327147138

namespace A004257

/-- `A023809(A188916(n+1)-n)` -/
def P7308873963327147138.Spec : Prop :=
  ∀ n, P7308873963327147138.a n = A004257 (n + 1)

end A004257

/-!
# A004259: a(n) = floor(10*log_2(n)).

The programs for A004259, the canonical program `A004259.P5565251257177775551` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004259 has offset 1).

The definition of A004259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10*log2(n+1))` (program `A004259.P5565251257177775551`, by `A004259.P5565251257177775551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004259.P5565251257177775551

`floor(10*log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004259

/-- `floor(10*log2(n+1))` -/
def P5565251257177775551.Spec : Prop :=
  ∀ n, P5565251257177775551.a n = A004259 (n + 1)

theorem P5565251257177775551.correct : P5565251257177775551.Spec := by
  intro n
  simp only [A004259, Nat.add_sub_cancel]

end A004259

/-! ## A004259.P1624818717324183482

`ceil(log2(A168118(n+1)))`
-/

namespace A004259.P1624818717324183482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A168118 (n + 1) : ℝ)⌉

end

end A004259.P1624818717324183482

namespace A004259

/-- `ceil(log2(A168118(n+1)))` -/
def P1624818717324183482.Spec : Prop :=
  ∀ n, P1624818717324183482.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P16945714464201627689

`ceil(log2(A168220(n+1)))`
-/

namespace A004259.P16945714464201627689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A168220 (n + 1) : ℝ)⌉

end

end A004259.P16945714464201627689

namespace A004259

/-- `ceil(log2(A168220(n+1)))` -/
def P16945714464201627689.Spec : Prop :=
  ∀ n, P16945714464201627689.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P11730435596115088604

`ceil(log2(A168564(n+1)))`
-/

namespace A004259.P11730435596115088604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A168564 (n + 1) : ℝ)⌉

end

end A004259.P11730435596115088604

namespace A004259

/-- `ceil(log2(A168564(n+1)))` -/
def P11730435596115088604.Spec : Prop :=
  ∀ n, P11730435596115088604.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P16374131363393189880

`ceil(log2(A168660(n+1)))`
-/

namespace A004259.P16374131363393189880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A168660 (n + 1) : ℝ)⌉

end

end A004259.P16374131363393189880

namespace A004259

/-- `ceil(log2(A168660(n+1)))` -/
def P16374131363393189880.Spec : Prop :=
  ∀ n, P16374131363393189880.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P9473836881087649720

`A059995(A004262(n+1))`
-/

namespace A004259.P9473836881087649720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004262 (n + 1)).toNat

end

end A004259.P9473836881087649720

namespace A004259

/-- `A059995(A004262(n+1))` -/
def P9473836881087649720.Spec : Prop :=
  ∀ n, P9473836881087649720.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P12861984371526396539

`A004261(n+1)-A043545(n)`
-/

namespace A004259.P12861984371526396539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004261 (n + 1) - A043545 n

end

end A004259.P12861984371526396539

namespace A004259

/-- `A004261(n+1)-A043545(n)` -/
def P12861984371526396539.Spec : Prop :=
  ∀ n, P12861984371526396539.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P7328190170576722693

`ceil(log2(A071236(n+1)))`
-/

namespace A004259.P7328190170576722693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A071236 (n + 1) : ℝ)⌉

end

end A004259.P7328190170576722693

namespace A004259

/-- `ceil(log2(A071236(n+1)))` -/
def P7328190170576722693.Spec : Prop :=
  ∀ n, P7328190170576722693.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P7863715596735222324

`ceil(log2(A168126(n+1)))`
-/

namespace A004259.P7863715596735222324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A168126 (n + 1) : ℝ)⌉

end

end A004259.P7863715596735222324

namespace A004259

/-- `ceil(log2(A168126(n+1)))` -/
def P7863715596735222324.Spec : Prop :=
  ∀ n, P7863715596735222324.a n = A004259 (n + 1)

end A004259

/-! ## A004259.P17414457974789822978

`ceil(log2(A168188(n+1)))`
-/

namespace A004259.P17414457974789822978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A168188 (n + 1) : ℝ)⌉

end

end A004259.P17414457974789822978

namespace A004259

/-- `ceil(log2(A168188(n+1)))` -/
def P17414457974789822978.Spec : Prop :=
  ∀ n, P17414457974789822978.a n = A004259 (n + 1)

end A004259

/-!
# A004260: a(n) = round(10*log_2(n)).

The programs for A004260, the canonical program `A004260.P16170201491358949365` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004260 has offset 1).

The definition of A004260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(10*log2(n+1))` (program `A004260.P16170201491358949365`, by `A004260.P16170201491358949365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004260.P16170201491358949365

`round(10*log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004260

/-- `round(10*log2(n+1))` -/
def P16170201491358949365.Spec : Prop :=
  ∀ n, P16170201491358949365.a n = A004260 (n + 1)

theorem P16170201491358949365.correct : P16170201491358949365.Spec := by
  intro n
  simp only [A004260, Nat.add_sub_cancel]

end A004260

/-! ## A004260.P11000522763039637348

`A059995(A004264(n+1)+4)`
-/

namespace A004260.P11000522763039637348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004264 (n + 1) + 4).toNat

end

end A004260.P11000522763039637348

namespace A004260

/-- `A059995(A004264(n+1)+4)` -/
def P11000522763039637348.Spec : Prop :=
  ∀ n, P11000522763039637348.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P7761054386021967731

`A059995(A004262(n+1)+5)`
-/

namespace A004260.P7761054386021967731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004262 (n + 1) + 5).toNat

end

end A004260.P7761054386021967731

namespace A004260

/-- `A059995(A004262(n+1)+5)` -/
def P7761054386021967731.Spec : Prop :=
  ∀ n, P7761054386021967731.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P7435430012672499572

`A110654(floor(A004262(n+1)/5))`
-/

namespace A004260.P7435430012672499572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ⌊(A004262 (n + 1) : ℚ) / 5⌋.toNat

end

end A004260.P7435430012672499572

namespace A004260

/-- `A110654(floor(A004262(n+1)/5))` -/
def P7435430012672499572.Spec : Prop :=
  ∀ n, P7435430012672499572.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P14600957222883350181

`A002266(A004262(n+1))-A004259(n+1)`
-/

namespace A004260.P14600957222883350181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004262 (n + 1)).toNat - A004259 (n + 1)

end

end A004260.P14600957222883350181

namespace A004260

/-- `A002266(A004262(n+1))-A004259(n+1)` -/
def P14600957222883350181.Spec : Prop :=
  ∀ n, P14600957222883350181.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P3063942737986199358

`floor(A004261((n+1)²)/2)`
-/

namespace A004260.P3063942737986199358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004261 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004260.P3063942737986199358

namespace A004260

/-- `floor(A004261((n+1)²)/2)` -/
def P3063942737986199358.Spec : Prop :=
  ∀ n, P3063942737986199358.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P3230619440580816293

`ceil(A004259((n+1)²)/2)`
-/

namespace A004260.P3230619440580816293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004259 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004260.P3230619440580816293

namespace A004260

/-- `ceil(A004259((n+1)²)/2)` -/
def P3230619440580816293.Spec : Prop :=
  ∀ n, P3230619440580816293.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P16488402974138312063

`A110654(A004259((n+1)²))`
-/

namespace A004260.P16488402974138312063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004259 ((n + 1) ^ 2)).toNat

end

end A004260.P16488402974138312063

namespace A004260

/-- `A110654(A004259((n+1)²))` -/
def P16488402974138312063.Spec : Prop :=
  ∀ n, P16488402974138312063.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P2405515179382503692

`A002265(2*A004261((n+1)²))`
-/

namespace A004260.P2405515179382503692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A004261 ((n + 1) ^ 2)).toNat

end

end A004260.P2405515179382503692

namespace A004260

/-- `A002265(2*A004261((n+1)²))` -/
def P2405515179382503692.Spec : Prop :=
  ∀ n, P2405515179382503692.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P17521213507226351492

`A004259((n+1)²)-A004259(n+1)`
-/

namespace A004260.P17521213507226351492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004259 ((n + 1) ^ 2) - A004259 (n + 1)

end

end A004260.P17521213507226351492

namespace A004260

/-- `A004259((n+1)²)-A004259(n+1)` -/
def P17521213507226351492.Spec : Prop :=
  ∀ n, P17521213507226351492.a n = A004260 (n + 1)

end A004260

/-! ## A004260.P18103223722302644392

`A004261((n+1)²)-A004261(n+1)`
-/

namespace A004260.P18103223722302644392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004261 ((n + 1) ^ 2) - A004261 (n + 1)

end

end A004260.P18103223722302644392

namespace A004260

/-- `A004261((n+1)²)-A004261(n+1)` -/
def P18103223722302644392.Spec : Prop :=
  ∀ n, P18103223722302644392.a n = A004260 (n + 1)

end A004260

/-!
# A004261: a(n) = ceiling(10*log_2(n)).

The programs for A004261, the canonical program `A004261.P16785427384378932115` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004261 has offset 1).

The definition of A004261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(10*log2(n+1))` (program `A004261.P16785427384378932115`, by `A004261.P16785427384378932115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004261.P16785427384378932115

`ceil(10*log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004261

/-- `ceil(10*log2(n+1))` -/
def P16785427384378932115.Spec : Prop :=
  ∀ n, P16785427384378932115.a n = A004261 (n + 1)

theorem P16785427384378932115.correct : P16785427384378932115.Spec := by
  intro n
  simp only [A004261, Nat.add_sub_cancel]

end A004261

/-! ## A004261.P520596506451137830

`A059995(A004264(n+1)+9)`
-/

namespace A004261.P520596506451137830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004264 (n + 1) + 9).toNat

end

end A004261.P520596506451137830

namespace A004261

/-- `A059995(A004264(n+1)+9)` -/
def P520596506451137830.Spec : Prop :=
  ∀ n, P520596506451137830.a n = A004261 (n + 1)

end A004261

/-! ## A004261.P8520593802560098162

`A043545(n)+A004259(n+1)`
-/

namespace A004261.P8520593802560098162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A004259 (n + 1)

end

end A004261.P8520593802560098162

namespace A004261

/-- `A043545(n)+A004259(n+1)` -/
def P8520593802560098162.Spec : Prop :=
  ∀ n, P8520593802560098162.a n = A004261 (n + 1)

end A004261

/-! ## A004261.P1501063616838236089

`A004259(n+1)+A001221(A048896(n))`
-/

namespace A004261.P1501063616838236089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004259 (n + 1) + A001221 (A048896 n).toNat

end

end A004261.P1501063616838236089

namespace A004261

/-- `A004259(n+1)+A001221(A048896(n))` -/
def P1501063616838236089.Spec : Prop :=
  ∀ n, P1501063616838236089.a n = A004261 (n + 1)

end A004261

/-! ## A004261.P17050914086423632948

`A004259(n+1)+A001221(A080100(n))`
-/

namespace A004261.P17050914086423632948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004259 (n + 1) + A001221 (A080100 n).toNat

end

end A004261.P17050914086423632948

namespace A004261

/-- `A004259(n+1)+A001221(A080100(n))` -/
def P17050914086423632948.Spec : Prop :=
  ∀ n, P17050914086423632948.a n = A004261 (n + 1)

end A004261

/-! ## A004261.P8184161768749336573

`A059995(A004262(n+1))+A043545(n)`
-/

namespace A004261.P8184161768749336573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004262 (n + 1)).toNat + A043545 n

end

end A004261.P8184161768749336573

namespace A004261

/-- `A059995(A004262(n+1))+A043545(n)` -/
def P8184161768749336573.Spec : Prop :=
  ∀ n, P8184161768749336573.a n = A004261 (n + 1)

end A004261

/-! ## A004261.P2367505345405652638

`A004259(n+1)+A000007(A048298(n+1))`
-/

namespace A004261.P2367505345405652638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004259 (n + 1) + A000007 (A048298 (n + 1)).toNat

end

end A004261.P2367505345405652638

namespace A004261

/-- `A004259(n+1)+A000007(A048298(n+1))` -/
def P2367505345405652638.Spec : Prop :=
  ∀ n, P2367505345405652638.a n = A004261 (n + 1)

end A004261

/-! ## A004261.P3524949101493692281

`A319699(A006530(n+1))+A004259(n+1)`
-/

namespace A004261.P3524949101493692281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A006530 (n + 1)).toNat + A004259 (n + 1)

end

end A004261.P3524949101493692281

namespace A004261

/-- `A319699(A006530(n+1))+A004259(n+1)` -/
def P3524949101493692281.Spec : Prop :=
  ∀ n, P3524949101493692281.a n = A004261 (n + 1)

end A004261

/-! ## A004261.P11417037403770379614

`A004259(n+1)+A004267(n+1)-A004265(n+1)`
-/

namespace A004261.P11417037403770379614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004259 (n + 1) + (A004267 (n + 1) - A004265 (n + 1))

end

end A004261.P11417037403770379614

namespace A004261

/-- `A004259(n+1)+A004267(n+1)-A004265(n+1)` -/
def P11417037403770379614.Spec : Prop :=
  ∀ n, P11417037403770379614.a n = A004261 (n + 1)

end A004261

/-!
# A004262: a(n) = floor(100*log_2(n)).

The programs for A004262, the canonical program `A004262.P6261249795647419833` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004262 has offset 1).

The definition of A004262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004262.P6261249795647419833

`floor(50*log2((n+1)²))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004262

/-- `floor(50*log2((n+1)²))` -/
def P6261249795647419833.Spec : Prop :=
  ∀ n, P6261249795647419833.a n = A004262 (n + 1)

theorem P6261249795647419833.correct : P6261249795647419833.Spec := by
  intro n
  simp only [A004262, Nat.add_sub_cancel]

end A004262

/-! ## A004262.P13602552838805776923

`A004264(n+1)-A043545(n)`
-/

namespace A004262.P13602552838805776923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004264 (n + 1) - A043545 n

end

end A004262.P13602552838805776923

namespace A004262

/-- `A004264(n+1)-A043545(n)` -/
def P13602552838805776923.Spec : Prop :=
  ∀ n, P13602552838805776923.a n = A004262 (n + 1)

end A004262

/-! ## A004262.P3107057838527292001

`A004264(n+1)-A057427(A025480(n))`
-/

namespace A004262.P3107057838527292001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004264 (n + 1) - A057427 (A025480 n).toNat

end

end A004262.P3107057838527292001

namespace A004262

/-- `A004264(n+1)-A057427(A025480(n))` -/
def P3107057838527292001.Spec : Prop :=
  ∀ n, P3107057838527292001.a n = A004262 (n + 1)

end A004262

/-! ## A004262.P1760072945362999075

`A004264(n+1)-A057427(log2(A080100(n)))`
-/

namespace A004262.P1760072945362999075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004264 (n + 1) - A057427 (SequenceMachineLib.roundAway (Real.logb 2 (A080100 n : ℝ))).toNat

end

end A004262.P1760072945362999075

namespace A004262

/-- `A004264(n+1)-A057427(log2(A080100(n)))` -/
def P1760072945362999075.Spec : Prop :=
  ∀ n, P1760072945362999075.a n = A004262 (n + 1)

end A004262

/-! ## A004262.P6967041906978448218

`A004264(n+1)-A001221(A117364(n+1))`
-/

namespace A004262.P6967041906978448218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004264 (n + 1) - A001221 (A117364 (n + 1)).toNat

end

end A004262.P6967041906978448218

namespace A004262

/-- `A004264(n+1)-A001221(A117364(n+1))` -/
def P6967041906978448218.Spec : Prop :=
  ∀ n, P6967041906978448218.a n = A004262 (n + 1)

end A004262

/-! ## A004262.P3185233525085317402

`A004264(n+1)-A057427(A080100(n)-1)`
-/

namespace A004262.P3185233525085317402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004264 (n + 1) - A057427 (A080100 n - 1).toNat

end

end A004262.P3185233525085317402

namespace A004262

/-- `A004264(n+1)-A057427(A080100(n)-1)` -/
def P3185233525085317402.Spec : Prop :=
  ∀ n, P3185233525085317402.a n = A004262 (n + 1)

end A004262

/-! ## A004262.P5572886765375658819

`A004264(n+1)+A004265(n+1)-A004267(n+1)`
-/

namespace A004262.P5572886765375658819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004264 (n + 1) + (A004265 (n + 1) - A004267 (n + 1))

end

end A004262.P5572886765375658819

namespace A004262

/-- `A004264(n+1)+A004265(n+1)-A004267(n+1)` -/
def P5572886765375658819.Spec : Prop :=
  ∀ n, P5572886765375658819.a n = A004262 (n + 1)

end A004262

/-! ## A004262.P7356854634793851717

`A059995(A004265(n+1))`
-/

namespace A004262.P7356854634793851717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004265 (n + 1)).toNat

end

end A004262.P7356854634793851717

namespace A004262

/-- `A059995(A004265(n+1))` -/
def P7356854634793851717.Spec : Prop :=
  ∀ n, P7356854634793851717.a n = A004262 (n + 1)

end A004262

/-!
# A004263: a(n) = round(100*log_2(n)).

The programs for A004263, the canonical program `A004263.P6588404121239015099` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004263 has offset 1).

The definition of A004263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004263.P6588404121239015099

`round(50*log2((n+1)²))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004263

/-- `round(50*log2((n+1)²))` -/
def P6588404121239015099.Spec : Prop :=
  ∀ n, P6588404121239015099.a n = A004263 (n + 1)

theorem P6588404121239015099.correct : P6588404121239015099.Spec := by
  intro n
  simp only [A004263, Nat.add_sub_cancel]

end A004263

/-! ## A004263.P40369747187420113

`floor((A004267(n+1)+4)/A040020(n))`
-/

namespace A004263.P40369747187420113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004267 (n + 1) + 4 : ℚ) / (A040020 n : ℚ)⌋

end

end A004263.P40369747187420113

namespace A004263

/-- `floor((A004267(n+1)+4)/A040020(n))` -/
def P40369747187420113.Spec : Prop :=
  ∀ n, P40369747187420113.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P9846658994366198633

`A059995(A004267(n+1)+4)`
-/

namespace A004263.P9846658994366198633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004267 (n + 1) + 4).toNat

end

end A004263.P9846658994366198633

namespace A004263

/-- `A059995(A004267(n+1)+4)` -/
def P9846658994366198633.Spec : Prop :=
  ∀ n, P9846658994366198633.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P8470402187735643823

`A059995(A004265(n+1)+5)`
-/

namespace A004263.P8470402187735643823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004265 (n + 1) + 5).toNat

end

end A004263.P8470402187735643823

namespace A004263

/-- `A059995(A004265(n+1)+5)` -/
def P8470402187735643823.Spec : Prop :=
  ∀ n, P8470402187735643823.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P11826944289694571285

`floor(A004264((n+1)²)/2)`
-/

namespace A004263.P11826944289694571285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004264 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004263.P11826944289694571285

namespace A004263

/-- `floor(A004264((n+1)²)/2)` -/
def P11826944289694571285.Spec : Prop :=
  ∀ n, P11826944289694571285.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P2777738834864478088

`ceil(A004262((n+1)²)/2)`
-/

namespace A004263.P2777738834864478088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004262 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004263.P2777738834864478088

namespace A004263

/-- `ceil(A004262((n+1)²)/2)` -/
def P2777738834864478088.Spec : Prop :=
  ∀ n, P2777738834864478088.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P18436144090157082250

`A004526(A004264((n+1)²))`
-/

namespace A004263.P18436144090157082250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004264 ((n + 1) ^ 2)).toNat

end

end A004263.P18436144090157082250

namespace A004263

/-- `A004526(A004264((n+1)²))` -/
def P18436144090157082250.Spec : Prop :=
  ∀ n, P18436144090157082250.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P9653586742199397428

`A110654(A004262((n+1)²))`
-/

namespace A004263.P9653586742199397428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004262 ((n + 1) ^ 2)).toNat

end

end A004263.P9653586742199397428

namespace A004263

/-- `A110654(A004262((n+1)²))` -/
def P9653586742199397428.Spec : Prop :=
  ∀ n, P9653586742199397428.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P16173520765108752805

`A004526(A004262((n+1)²)+1)`
-/

namespace A004263.P16173520765108752805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004262 ((n + 1) ^ 2) + 1).toNat

end

end A004263.P16173520765108752805

namespace A004263

/-- `A004526(A004262((n+1)²)+1)` -/
def P16173520765108752805.Spec : Prop :=
  ∀ n, P16173520765108752805.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P11064784964589763621

`A004262((n+1)²)-A004262(n+1)`
-/

namespace A004263.P11064784964589763621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004262 ((n + 1) ^ 2) - A004262 (n + 1)

end

end A004263.P11064784964589763621

namespace A004263

/-- `A004262((n+1)²)-A004262(n+1)` -/
def P11064784964589763621.Spec : Prop :=
  ∀ n, P11064784964589763621.a n = A004263 (n + 1)

end A004263

/-! ## A004263.P9717923652392934537

`A004264((n+1)²)-A004264(n+1)`
-/

namespace A004263.P9717923652392934537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004264 ((n + 1) ^ 2) - A004264 (n + 1)

end

end A004263.P9717923652392934537

namespace A004263

/-- `A004264((n+1)²)-A004264(n+1)` -/
def P9717923652392934537.Spec : Prop :=
  ∀ n, P9717923652392934537.a n = A004263 (n + 1)

end A004263

/-!
# A004264: a(n) = ceiling(100*log_2(n)).

The programs for A004264, the canonical program `A004264.P4545862359117810027` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004264 has offset 1).

The definition of A004264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004264.P853205915612120234

`ceil(10*10*log2(n+1))`
-/

namespace A004264.P853205915612120234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 * (10 * Real.logb 2 (n + 1 : ℝ))⌉

end

end A004264.P853205915612120234

namespace A004264

/-- `ceil(10*10*log2(n+1))` -/
def P853205915612120234.Spec : Prop :=
  ∀ n, P853205915612120234.a n = A004264 (n + 1)

end A004264

/-! ## A004264.P4545862359117810027

`A043545(n)+A004262(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004264

/-- `A043545(n)+A004262(n+1)` -/
def P4545862359117810027.Spec : Prop :=
  ∀ n, P4545862359117810027.a n = A004264 (n + 1)

theorem P4545862359117810027.correct : P4545862359117810027.Spec := by
  intro n
  simp only [A004264, Nat.add_sub_cancel]

end A004264

/-! ## A004264.P7410689003504243739

`A004262(n+1)+A001221(A048896(n))`
-/

namespace A004264.P7410689003504243739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004262 (n + 1) + A001221 (A048896 n).toNat

end

end A004264.P7410689003504243739

namespace A004264

/-- `A004262(n+1)+A001221(A048896(n))` -/
def P7410689003504243739.Spec : Prop :=
  ∀ n, P7410689003504243739.a n = A004264 (n + 1)

end A004264

/-! ## A004264.P3945984816403800065

`A057427(A025480(n))+A004262(n+1)`
-/

namespace A004264.P3945984816403800065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025480 n).toNat + A004262 (n + 1)

end

end A004264.P3945984816403800065

namespace A004264

/-- `A057427(A025480(n))+A004262(n+1)` -/
def P3945984816403800065.Spec : Prop :=
  ∀ n, P3945984816403800065.a n = A004264 (n + 1)

end A004264

/-! ## A004264.P172009874113268265

`A027349(A014963(2*(n+1)))+A004262(n+1)`
-/

namespace A004264.P172009874113268265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A014963 (2 * (n + 1))).toNat + A004262 (n + 1)

end

end A004264.P172009874113268265

namespace A004264

/-- `A027349(A014963(2*(n+1)))+A004262(n+1)` -/
def P172009874113268265.Spec : Prop :=
  ∀ n, P172009874113268265.a n = A004264 (n + 1)

end A004264

/-! ## A004264.P10183962807974729286

`A059995(A004267(n+1)+9)`
-/

namespace A004264.P10183962807974729286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004267 (n + 1) + 9).toNat

end

end A004264.P10183962807974729286

namespace A004264

/-- `A059995(A004267(n+1)+9)` -/
def P10183962807974729286.Spec : Prop :=
  ∀ n, P10183962807974729286.a n = A004264 (n + 1)

end A004264

/-!
# A004265: a(n) = floor(1000*log_2(n)).

The programs for A004265, the canonical program `A004265.P5918335743722438808` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004265 has offset 1).

The definition of A004265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1000*log2(n+1))` (program `A004265.P5918335743722438808`, by `A004265.P5918335743722438808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004265.P5918335743722438808

`floor(1000*log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004265

/-- `floor(1000*log2(n+1))` -/
def P5918335743722438808.Spec : Prop :=
  ∀ n, P5918335743722438808.a n = A004265 (n + 1)

theorem P5918335743722438808.correct : P5918335743722438808.Spec := by
  intro n
  simp only [A004265, Nat.add_sub_cancel]

end A004265

/-! ## A004265.P15204514226483122554

`A004267(n+1)-A043545(n)`
-/

namespace A004265.P15204514226483122554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004267 (n + 1) - A043545 n

end

end A004265.P15204514226483122554

namespace A004265

/-- `A004267(n+1)-A043545(n)` -/
def P15204514226483122554.Spec : Prop :=
  ∀ n, P15204514226483122554.a n = A004265 (n + 1)

end A004265

/-! ## A004265.P6316285975726983979

`A004267(n+1)-A001221(A048896(n))`
-/

namespace A004265.P6316285975726983979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004267 (n + 1) - A001221 (A048896 n).toNat

end

end A004265.P6316285975726983979

namespace A004265

/-- `A004267(n+1)-A001221(A048896(n))` -/
def P6316285975726983979.Spec : Prop :=
  ∀ n, P6316285975726983979.a n = A004265 (n + 1)

end A004265

/-! ## A004265.P15616684651879448045

`A004267(n+1)-A057427(A025480(n))`
-/

namespace A004265.P15616684651879448045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004267 (n + 1) - A057427 (A025480 n).toNat

end

end A004265.P15616684651879448045

namespace A004265

/-- `A004267(n+1)-A057427(A025480(n))` -/
def P15616684651879448045.Spec : Prop :=
  ∀ n, P15616684651879448045.a n = A004265 (n + 1)

end A004265

/-! ## A004265.P2203674557812754746

`A004267(n+1)-A059841(A123273(n))`
-/

namespace A004265.P2203674557812754746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004267 (n + 1) - A059841 (A123273 n).toNat

end

end A004265.P2203674557812754746

namespace A004265

/-- `A004267(n+1)-A059841(A123273(n))` -/
def P2203674557812754746.Spec : Prop :=
  ∀ n, P2203674557812754746.a n = A004265 (n + 1)

end A004265

/-! ## A004265.P10136710708225526639

`A004267(n+1)-A155828(A006530(n+1))`
-/

namespace A004265.P10136710708225526639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004267 (n + 1) - A155828 (A006530 (n + 1)).toNat

end

end A004265.P10136710708225526639

namespace A004265

/-- `A004267(n+1)-A155828(A006530(n+1))` -/
def P10136710708225526639.Spec : Prop :=
  ∀ n, P10136710708225526639.a n = A004265 (n + 1)

end A004265

/-! ## A004265.P2547059858668429703

`A004262(n+1)+A004267(n+1)-A004264(n+1)`
-/

namespace A004265.P2547059858668429703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004262 (n + 1) + (A004267 (n + 1) - A004264 (n + 1))

end

end A004265.P2547059858668429703

namespace A004265

/-- `A004262(n+1)+A004267(n+1)-A004264(n+1)` -/
def P2547059858668429703.Spec : Prop :=
  ∀ n, P2547059858668429703.a n = A004265 (n + 1)

end A004265

/-! ## A004265.P10261669882266337049

`A004267(n+1)-A352894(A320561(n+1))`
-/

namespace A004265.P10261669882266337049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004267 (n + 1) - A352894 (A320561 (n + 1)).toNat

end

end A004265.P10261669882266337049

namespace A004265

/-- `A004267(n+1)-A352894(A320561(n+1))` -/
def P10261669882266337049.Spec : Prop :=
  ∀ n, P10261669882266337049.a n = A004265 (n + 1)

end A004265

/-!
# A004266: a(n) = round(1000*log_2(n)).

The programs for A004266, the canonical program `A004266.P9439511517155809029` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004266 has offset 1).

The definition of A004266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(1000*log2(n+1))` (program `A004266.P9439511517155809029`, by `A004266.P9439511517155809029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004266.P9439511517155809029

`round(1000*log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004266

/-- `round(1000*log2(n+1))` -/
def P9439511517155809029.Spec : Prop :=
  ∀ n, P9439511517155809029.a n = A004266 (n + 1)

theorem P9439511517155809029.correct : P9439511517155809029.Spec := by
  intro n
  simp only [A004266, Nat.add_sub_cancel]

end A004266

/-! ## A004266.P14879988771685169675

`ceil((A004270(n+1)-5)/10)`
-/

namespace A004266.P14879988771685169675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004270 (n + 1) - 5 : ℚ) / 10⌉

end

end A004266.P14879988771685169675

namespace A004266

/-- `ceil((A004270(n+1)-5)/10)` -/
def P14879988771685169675.Spec : Prop :=
  ∀ n, P14879988771685169675.a n = A004266 (n + 1)

end A004266

/-! ## A004266.P7036135317053195460

`ceil((A043545(n)+A004268(n+1)-5)/10)`
-/

namespace A004266.P7036135317053195460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A043545 n + A004268 (n + 1) - 5 : ℚ) / 10⌉

end

end A004266.P7036135317053195460

namespace A004266

/-- `ceil((A043545(n)+A004268(n+1)-5)/10)` -/
def P7036135317053195460.Spec : Prop :=
  ∀ n, P7036135317053195460.a n = A004266 (n + 1)

end A004266

/-! ## A004266.P8953911288056450517

`ceil((A004261(n+1)+A004268(n+1)-A004259(n+1)-5)/10)`
-/

namespace A004266.P8953911288056450517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004261 (n + 1) + (A004268 (n + 1) - A004259 (n + 1)) - 5 : ℚ) / 10⌉

end

end A004266.P8953911288056450517

namespace A004266

/-- `ceil((A004261(n+1)+A004268(n+1)-A004259(n+1)-5)/10)` -/
def P8953911288056450517.Spec : Prop :=
  ∀ n, P8953911288056450517.a n = A004266 (n + 1)

end A004266

/-! ## A004266.P17021553778877001626

`floor(A004267((n+1)²)/2)`
-/

namespace A004266.P17021553778877001626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004267 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004266.P17021553778877001626

namespace A004266

/-- `floor(A004267((n+1)²)/2)` -/
def P17021553778877001626.Spec : Prop :=
  ∀ n, P17021553778877001626.a n = A004266 (n + 1)

end A004266

/-! ## A004266.P1777406452425292607

`ceil(A004265((n+1)²)/2)`
-/

namespace A004266.P1777406452425292607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004265 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004266.P1777406452425292607

namespace A004266

/-- `ceil(A004265((n+1)²)/2)` -/
def P1777406452425292607.Spec : Prop :=
  ∀ n, P1777406452425292607.a n = A004266 (n + 1)

end A004266

/-! ## A004266.P51765865530071904

`A004265((n+1)²)-A004265(n+1)`
-/

namespace A004266.P51765865530071904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004265 ((n + 1) ^ 2) - A004265 (n + 1)

end

end A004266.P51765865530071904

namespace A004266

/-- `A004265((n+1)²)-A004265(n+1)` -/
def P51765865530071904.Spec : Prop :=
  ∀ n, P51765865530071904.a n = A004266 (n + 1)

end A004266

/-! ## A004266.P13347525910141764563

`A004267((n+1)²)-A004267(n+1)`
-/

namespace A004266.P13347525910141764563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004267 ((n + 1) ^ 2) - A004267 (n + 1)

end

end A004266.P13347525910141764563

namespace A004266

/-- `A004267((n+1)²)-A004267(n+1)` -/
def P13347525910141764563.Spec : Prop :=
  ∀ n, P13347525910141764563.a n = A004266 (n + 1)

end A004266

/-!
# A004267: a(n) = ceiling(1000*log_2(n)).

The programs for A004267, the canonical program `A004267.P9938997629546116948` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004267 has offset 1).

The definition of A004267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(1000*log2(n+1))` (program `A004267.P9938997629546116948`, by `A004267.P9938997629546116948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004267.P9938997629546116948

`ceil(1000*log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004267

/-- `ceil(1000*log2(n+1))` -/
def P9938997629546116948.Spec : Prop :=
  ∀ n, P9938997629546116948.a n = A004267 (n + 1)

theorem P9938997629546116948.correct : P9938997629546116948.Spec := by
  intro n
  simp only [A004267, Nat.add_sub_cancel]

end A004267

/-! ## A004267.P16568520270422955985

`A043545(n)+A004265(n+1)`
-/

namespace A004267.P16568520270422955985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A004265 (n + 1)

end

end A004267.P16568520270422955985

namespace A004267

/-- `A043545(n)+A004265(n+1)` -/
def P16568520270422955985.Spec : Prop :=
  ∀ n, P16568520270422955985.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P16390084770680886543

`A004265(n+1)+A000007(A099894(n))`
-/

namespace A004267.P16390084770680886543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004265 (n + 1) + A000007 (A099894 n).toNat

end

end A004267.P16390084770680886543

namespace A004267

/-- `A004265(n+1)+A000007(A099894(n))` -/
def P16390084770680886543.Spec : Prop :=
  ∀ n, P16390084770680886543.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P13633672110211858890

`A004265(n+1)-A057428(A038554(n))`
-/

namespace A004267.P13633672110211858890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004265 (n + 1) - A057428 (A038554 n).toNat

end

end A004267.P13633672110211858890

namespace A004267

/-- `A004265(n+1)-A057428(A038554(n))` -/
def P13633672110211858890.Spec : Prop :=
  ∀ n, P13633672110211858890.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P4893798265401341958

`A060576(A000265(n+1))+A004265(n+1)`
-/

namespace A004267.P4893798265401341958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A000265 (n + 1)).toNat + A004265 (n + 1)

end

end A004267.P4893798265401341958

namespace A004267

/-- `A060576(A000265(n+1))+A004265(n+1)` -/
def P4893798265401341958.Spec : Prop :=
  ∀ n, P4893798265401341958.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P3338248621159327476

`A057427(A336361(n+1))+A004265(n+1)`
-/

namespace A004267.P3338248621159327476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A336361 (n + 1)).toNat + A004265 (n + 1)

end

end A004267.P3338248621159327476

namespace A004267

/-- `A057427(A336361(n+1))+A004265(n+1)` -/
def P3338248621159327476.Spec : Prop :=
  ∀ n, P3338248621159327476.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P13504103193276494479

`A004265(n+1)+A057428(A038554(n))*A057428(n)`
-/

namespace A004267.P13504103193276494479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004265 (n + 1) + A057428 (A038554 n).toNat * A057428 n

end

end A004267.P13504103193276494479

namespace A004267

/-- `A004265(n+1)+A057428(A038554(n))*A057428(n)` -/
def P13504103193276494479.Spec : Prop :=
  ∀ n, P13504103193276494479.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P629105850367586471

`A057427(A253556(n+1))+A004265(n+1)`
-/

namespace A004267.P629105850367586471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A253556 (n + 1)).toNat + A004265 (n + 1)

end

end A004267.P629105850367586471

namespace A004267

/-- `A057427(A253556(n+1))+A004265(n+1)` -/
def P629105850367586471.Spec : Prop :=
  ∀ n, P629105850367586471.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P6053555365171709258

`A323022(A088696(n+1))+A004265(n+1)`
-/

namespace A004267.P6053555365171709258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A088696 (n + 1)).toNat + A004265 (n + 1)

end

end A004267.P6053555365171709258

namespace A004267

/-- `A323022(A088696(n+1))+A004265(n+1)` -/
def P6053555365171709258.Spec : Prop :=
  ∀ n, P6053555365171709258.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P15416412171249073881

`A099894(2*A099894(n))+A004265(n+1)`
-/

namespace A004267.P15416412171249073881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (2 * A099894 n).toNat + A004265 (n + 1)

end

end A004267.P15416412171249073881

namespace A004267

/-- `A099894(2*A099894(n))+A004265(n+1)` -/
def P15416412171249073881.Spec : Prop :=
  ∀ n, P15416412171249073881.a n = A004267 (n + 1)

end A004267

/-! ## A004267.P8541593788952397723

`A059841(A003959(n+1))+A004265(n+1)`
-/

namespace A004267.P8541593788952397723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A003959 (n + 1)).toNat + A004265 (n + 1)

end

end A004267.P8541593788952397723

namespace A004267

/-- `A059841(A003959(n+1))+A004265(n+1)` -/
def P8541593788952397723.Spec : Prop :=
  ∀ n, P8541593788952397723.a n = A004267 (n + 1)

end A004267

/-!
# A004268: a(n) = floor(10000*log_2(n)).

The programs for A004268, the canonical program `A004268.P4371925752054289060` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004268 has offset 1).

The definition of A004268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004268.P4371925752054289060

`A004270(n+1)-A043545(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004268

/-- `A004270(n+1)-A043545(n)` -/
def P4371925752054289060.Spec : Prop :=
  ∀ n, P4371925752054289060.a n = A004268 (n + 1)

theorem P4371925752054289060.correct : P4371925752054289060.Spec := by
  intro n
  simp only [A004268, Nat.add_sub_cancel]

end A004268

/-! ## A004268.P9905342162923249090

`A004270(n+1)-A001221(A048896(n))`
-/

namespace A004268.P9905342162923249090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004270 (n + 1) - A001221 (A048896 n).toNat

end

end A004268.P9905342162923249090

namespace A004268

/-- `A004270(n+1)-A001221(A048896(n))` -/
def P9905342162923249090.Spec : Prop :=
  ∀ n, P9905342162923249090.a n = A004268 (n + 1)

end A004268

/-! ## A004268.P10813414462582063229

`A004270(n+1)-A001221(A080100(n))`
-/

namespace A004268.P10813414462582063229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004270 (n + 1) - A001221 (A080100 n).toNat

end

end A004268.P10813414462582063229

namespace A004268

/-- `A004270(n+1)-A001221(A080100(n))` -/
def P10813414462582063229.Spec : Prop :=
  ∀ n, P10813414462582063229.a n = A004268 (n + 1)

end A004268

/-! ## A004268.P17119995120829648043

`A004270(n+1)-A057427(A025480(n))`
-/

namespace A004268.P17119995120829648043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004270 (n + 1) - A057427 (A025480 n).toNat

end

end A004268.P17119995120829648043

namespace A004268

/-- `A004270(n+1)-A057427(A025480(n))` -/
def P17119995120829648043.Spec : Prop :=
  ∀ n, P17119995120829648043.a n = A004268 (n + 1)

end A004268

/-! ## A004268.P9917806118626121525

`A004262(n+1)+A004270(n+1)-A004264(n+1)`
-/

namespace A004268.P9917806118626121525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004262 (n + 1) + (A004270 (n + 1) - A004264 (n + 1))

end

end A004268.P9917806118626121525

namespace A004268

/-- `A004262(n+1)+A004270(n+1)-A004264(n+1)` -/
def P9917806118626121525.Spec : Prop :=
  ∀ n, P9917806118626121525.a n = A004268 (n + 1)

end A004268

/-!
# A004269: a(n) = round(10000*log_2(n)).

The programs for A004269, the canonical program `A004269.P16919580351853942693` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004269 has offset 1).

The definition of A004269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004269.P16919580351853942693

`floor(A004270((n+1)²)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004269

/-- `floor(A004270((n+1)²)/2)` -/
def P16919580351853942693.Spec : Prop :=
  ∀ n, P16919580351853942693.a n = A004269 (n + 1)

theorem P16919580351853942693.correct : P16919580351853942693.Spec := by
  intro n
  simp only [A004269, Nat.add_sub_cancel]

end A004269

/-! ## A004269.P6321238992727608760

`ceil(A004268((n+1)²)/2)`
-/

namespace A004269.P6321238992727608760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004268 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A004269.P6321238992727608760

namespace A004269

/-- `ceil(A004268((n+1)²)/2)` -/
def P6321238992727608760.Spec : Prop :=
  ∀ n, P6321238992727608760.a n = A004269 (n + 1)

end A004269

/-! ## A004269.P8854277150000837979

`round(A004268((2*n+1-n)²)/2)`
-/

namespace A004269.P8854277150000837979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004268 (((2 * n : ℤ) + (1 - (n : ℤ))) ^ 2).toNat : ℚ) / 2)

end

end A004269.P8854277150000837979

namespace A004269

/-- `round(A004268((2*n+1-n)²)/2)` -/
def P8854277150000837979.Spec : Prop :=
  ∀ n, P8854277150000837979.a n = A004269 (n + 1)

end A004269

/-! ## A004269.P16905991044308483685

`floor((A004268((or(n, char[3])+1)²)+1)/2)`
-/

namespace A004269.P16905991044308483685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004268 ((Nat.lor n (if ∃ j, f1 j = n then 1 else 0) + 1) ^ 2) + 1 : ℚ) / 2⌋

end

end A004269.P16905991044308483685

namespace A004269

/-- `floor((A004268((or(n, char[3])+1)²)+1)/2)` -/
def P16905991044308483685.Spec : Prop :=
  ∀ n, P16905991044308483685.a n = A004269 (n + 1)

end A004269

/-! ## A004269.P4334413261002595052

`record[Δ[A004268(A000463(n+1))]]`
-/

namespace A004269.P4334413261002595052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004268 (A000463 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004269.P4334413261002595052

namespace A004269

/-- `record[Δ[A004268(A000463(n+1))]]` -/
def P4334413261002595052.Spec : Prop :=
  ∀ n, P4334413261002595052.a n = A004269 (n + 1)

end A004269

/-! ## A004269.P2841946103913013645

`A004268((n+1)²)-A004268(n+1)`
-/

namespace A004269.P2841946103913013645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004268 ((n + 1) ^ 2) - A004268 (n + 1)

end

end A004269.P2841946103913013645

namespace A004269

/-- `A004268((n+1)²)-A004268(n+1)` -/
def P2841946103913013645.Spec : Prop :=
  ∀ n, P2841946103913013645.a n = A004269 (n + 1)

end A004269

/-! ## A004269.P8744936551139694130

`A004270((n+1)²)-A004270(n+1)`
-/

namespace A004269.P8744936551139694130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004270 ((n + 1) ^ 2) - A004270 (n + 1)

end

end A004269.P8744936551139694130

namespace A004269

/-- `A004270((n+1)²)-A004270(n+1)` -/
def P8744936551139694130.Spec : Prop :=
  ∀ n, P8744936551139694130.a n = A004269 (n + 1)

end A004269

/-!
# A004270: a(n) = ceiling(10000*log_2(n)).

The programs for A004270, the canonical program `A004270.P3827896208979543022` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004270 has offset 1).

The definition of A004270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004270.P3827896208979543022

`ceil(10^(8/2)*log2(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004270

/-- `ceil(10^(8/2)*log2(n+1))` -/
def P3827896208979543022.Spec : Prop :=
  ∀ n, P3827896208979543022.a n = A004270 (n + 1)

theorem P3827896208979543022.correct : P3827896208979543022.Spec := by
  intro n
  simp only [A004270, Nat.add_sub_cancel]

end A004270

/-! ## A004270.P6725868064067468137

`A043545(n)+A004268(n+1)`
-/

namespace A004270.P6725868064067468137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A004268 (n + 1)

end

end A004270.P6725868064067468137

namespace A004270

/-- `A043545(n)+A004268(n+1)` -/
def P6725868064067468137.Spec : Prop :=
  ∀ n, P6725868064067468137.a n = A004270 (n + 1)

end A004270

/-! ## A004270.P17555549597824396864

`A004268(n+1)+A001221(A048896(n))`
-/

namespace A004270.P17555549597824396864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004268 (n + 1) + A001221 (A048896 n).toNat

end

end A004270.P17555549597824396864

namespace A004270

/-- `A004268(n+1)+A001221(A048896(n))` -/
def P17555549597824396864.Spec : Prop :=
  ∀ n, P17555549597824396864.a n = A004270 (n + 1)

end A004270

/-! ## A004270.P238509044161316480

`A004268(n+1)+A001221(A080100(n))`
-/

namespace A004270.P238509044161316480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004268 (n + 1) + A001221 (A080100 n).toNat

end

end A004270.P238509044161316480

namespace A004270

/-- `A004268(n+1)+A001221(A080100(n))` -/
def P238509044161316480.Spec : Prop :=
  ∀ n, P238509044161316480.a n = A004270 (n + 1)

end A004270

/-! ## A004270.P11569947234896511996

`A057427(A025480(n))+A004268(n+1)`
-/

namespace A004270.P11569947234896511996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025480 n).toNat + A004268 (n + 1)

end

end A004270.P11569947234896511996

namespace A004270

/-- `A057427(A025480(n))+A004268(n+1)` -/
def P11569947234896511996.Spec : Prop :=
  ∀ n, P11569947234896511996.a n = A004270 (n + 1)

end A004270

/-! ## A004270.P4866066669613069740

`A004268(n+1)+A001221(A092505(n+1))`
-/

namespace A004270.P4866066669613069740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004268 (n + 1) + A001221 (A092505 (n + 1)).toNat

end

end A004270.P4866066669613069740

namespace A004270

/-- `A004268(n+1)+A001221(A092505(n+1))` -/
def P4866066669613069740.Spec : Prop :=
  ∀ n, P4866066669613069740.a n = A004270 (n + 1)

end A004270

/-! ## A004270.P17958387135519788892

`A004261(n+1)+A004268(n+1)-A004259(n+1)`
-/

namespace A004270.P17958387135519788892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004261 (n + 1) + (A004268 (n + 1) - A004259 (n + 1))

end

end A004270.P17958387135519788892

namespace A004270

/-- `A004261(n+1)+A004268(n+1)-A004259(n+1)` -/
def P17958387135519788892.Spec : Prop :=
  ∀ n, P17958387135519788892.a n = A004270 (n + 1)

end A004270

/-!
# A004271: 1, 3 and the nonnegative even numbers.

The programs for A004271, the canonical program `A004271.P4473346642677845165` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004271 has offset 0).

The definition of A004271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004271.P4473346642677845165

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004271

/-- `2*a(n-1)-a(n-2)` -/
def P4473346642677845165.Spec : Prop :=
  ∀ n, P4473346642677845165.a n = A004271 n

theorem P4473346642677845165.correct : P4473346642677845165.Spec := by
  intro n
  simp only [A004271]

end A004271

/-!
# A004272: 1, 3, 5 and the nonnegative even numbers.

The programs for A004272, the canonical program `A004272.P15574809919313421519` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004272 has offset 0).

The definition of A004272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004272.P15574809919313421519

`comp[2*n+7]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004272

/-- `comp[2*n+7]` -/
def P15574809919313421519.Spec : Prop :=
  ∀ n, (P15574809919313421519.a n : ℤ) = A004272 n

theorem P15574809919313421519.correct : P15574809919313421519.Spec := by
  intro n
  simp only [A004272]

end A004272

/-!
# A004273: 0 together with odd numbers.

The programs for A004273, the canonical program `A004273.P14749522150965308172` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004273 has offset 0).

The definition of A004273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004273.P14749522150965308172

`comp[2*(n+1)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004273

/-- `comp[2*(n+1)]` -/
def P14749522150965308172.Spec : Prop :=
  ∀ n, (P14749522150965308172.a n : ℤ) = A004273 n

theorem P14749522150965308172.correct : P14749522150965308172.Spec := by
  intro n
  simp only [A004273]

end A004273

/-!
# A004274: 0, 2 and the odd numbers.

The programs for A004274, the canonical program `A004274.P10394132084250594392` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004274 has offset 0).

The definition of A004274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004274.P10394132084250594392

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004274

/-- `2*a(n-1)-a(n-2)` -/
def P10394132084250594392.Spec : Prop :=
  ∀ n, P10394132084250594392.a n = A004274 n

theorem P10394132084250594392.correct : P10394132084250594392.Spec := by
  intro n
  simp only [A004274]

end A004274

/-!
# A004275: 1 together with nonnegative even numbers.

The programs for A004275, the canonical program `A004275.P5432371984586133349` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004275 has offset 0).

The definition of A004275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004275.P5432371984586133349

`floor(2*n²/(1+n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004275

/-- `floor(2*n²/(1+n))` -/
def P5432371984586133349.Spec : Prop :=
  ∀ n, P5432371984586133349.a n = A004275 n

theorem P5432371984586133349.correct : P5432371984586133349.Spec := by
  intro n
  simp only [A004275]

end A004275

/-!
# A004276: 0, 2, 4 and the odd numbers.

The programs for A004276, the canonical program `A004276.P7499591390420046602` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004276 has offset 0).

The definition of A004276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004276.P7499591390420046602

`comp[2*(n+3)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004276

/-- `comp[2*(n+3)]` -/
def P7499591390420046602.Spec : Prop :=
  ∀ n, (P7499591390420046602.a n : ℤ) = A004276 n

theorem P7499591390420046602.correct : P7499591390420046602.Spec := by
  intro n
  simp only [A004276]

end A004276

/-!
# A004277: 1 together with positive even numbers.

The programs for A004277, the canonical program `A004277.P16255821370285667660` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004277 has offset 0).

The definition of A004277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004277.P16255821370285667660

`A000007(n)+A005843(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004277

/-- `A000007(n)+A005843(n)` -/
def P16255821370285667660.Spec : Prop :=
  ∀ n, P16255821370285667660.a n = A004277 n

theorem P16255821370285667660.correct : P16255821370285667660.Spec := by
  intro n
  simp only [A004277]

end A004277

/-!
# A004278: 1, 3 and the positive even numbers.

The programs for A004278, the canonical program `A004278.P6535296897428680900` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004278 has offset 1).

The definition of A004278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004278.P6535296897428680900

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004278

/-- `2*a(n-1)-a(n-2)` -/
def P6535296897428680900.Spec : Prop :=
  ∀ n, P6535296897428680900.a n = A004278 (n + 1)

theorem P6535296897428680900.correct : P6535296897428680900.Spec := by
  intro n
  simp only [A004278, Nat.add_sub_cancel]

end A004278

/-!
# A004279: 1, 3, 5 and the positive even numbers.

The programs for A004279, the canonical program `A004279.P8509409336738395268` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004279 has offset 0).

The definition of A004279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004279.P8509409336738395268

`comp[2*(n+3)]+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004279

/-- `comp[2*(n+3)]+1` -/
def P8509409336738395268.Spec : Prop :=
  ∀ n, (P8509409336738395268.a n : ℤ) = A004279 n

theorem P8509409336738395268.correct : P8509409336738395268.Spec := by
  intro n
  simp only [A004279]

end A004279

/-!
# A004280: 2 together with the odd numbers (essentially the result of the first stage of the sieve of Eratosthenes).

The programs for A004280, the canonical program `A004280.P12480383619732989777` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004280 has offset 1).

The definition of A004280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004280.P12480383619732989777

`record[abs(xor(1, n-2))]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004280

/-- `record[abs(xor(1, n-2))]` -/
def P12480383619732989777.Spec : Prop :=
  ∀ n, P12480383619732989777.a n = A004280 (n + 1)

theorem P12480383619732989777.correct : P12480383619732989777.Spec := by
  intro n
  simp only [A004280, Nat.add_sub_cancel]

end A004280

/-!
# A004281: 2, 4 and the odd numbers.

The programs for A004281, the canonical program `A004281.P3057408504832147508` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004281 has offset 0).

The definition of A004281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004281.P3057408504832147508

`comp[2*n+5]+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004281

/-- `comp[2*n+5]+1` -/
def P3057408504832147508.Spec : Prop :=
  ∀ n, (P3057408504832147508.a n : ℤ) = A004281 n

theorem P3057408504832147508.correct : P3057408504832147508.Spec := by
  intro n
  simp only [A004281]

end A004281

/-!
# A004282: a(n) = n*(n+1)^2*(n+2)^2/12.

The programs for A004282, the canonical program `A004282.P3282073839208396829` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004282 has offset 0).

The definition of A004282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004282.P2916634851355012083

`n*(n+1)²*(n+2)²/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004282.P2916634851355012083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 * (n + 2) ^ 2 : ℚ) / 12

end

end A004282.P2916634851355012083

namespace A004282

/-- `n*(n+1)²*(n+2)²/12` -/
def P2916634851355012083.Spec : Prop :=
  ∀ n, P2916634851355012083.a n = (A004282 n : ℚ)

end A004282

/-! ## A004282.P3282073839208396829

`A000217(n+1)*A000292(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004282

/-- `A000217(n+1)*A000292(n)` -/
def P3282073839208396829.Spec : Prop :=
  ∀ n, P3282073839208396829.a n = A004282 n

theorem P3282073839208396829.correct : P3282073839208396829.Spec := by
  intro n
  simp only [A004282]

end A004282

/-! ## A004282.P18262796287090589444

`A004302(n+1)-A000537(n+1)`
-/

namespace A004282.P18262796287090589444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 (n + 1) - A000537 (n + 1)

end

end A004282.P18262796287090589444

namespace A004282

/-- `A004302(n+1)-A000537(n+1)` -/
def P18262796287090589444.Spec : Prop :=
  ∀ n, P18262796287090589444.a n = A004282 n

end A004282

/-! ## A004282.P15876209960876520156

`floor(∑[n+1]/acot(∑[∑[n]]))`
-/

namespace A004282.P15876209960876520156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌋

end

end A004282.P15876209960876520156

namespace A004282

/-- `floor(∑[n+1]/acot(∑[∑[n]]))` -/
def P15876209960876520156.Spec : Prop :=
  ∀ n, P15876209960876520156.a n = A004282 n

end A004282

/-! ## A004282.P5515809330345573014

`∑[a(n-1)+1]*∑[∑[n]]` with `a(0)=1`
-/

namespace A004282.P5515809330345573014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A004282.P5515809330345573014

namespace A004282

/-- `∑[a(n-1)+1]*∑[∑[n]]` -/
def P5515809330345573014.Spec : Prop :=
  ∀ n, (P5515809330345573014.a n : ℤ) = A004282 n

end A004282

/-! ## A004282.P2611281585266817268

`lcm(n+2, ∑[n+1]*∑[∑[n]])`
-/

namespace A004282.P2611281585266817268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A004282.P2611281585266817268

namespace A004282

/-- `lcm(n+2, ∑[n+1]*∑[∑[n]])` -/
def P2611281585266817268.Spec : Prop :=
  ∀ n, (P2611281585266817268.a n : ℤ) = A004282 n

end A004282

/-! ## A004282.P18049396163126254328

`∑[A368046(n)]`
-/

namespace A004282.P18049396163126254328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004282.P18049396163126254328

namespace A004282

/-- `∑[A368046(n)]` -/
def P18049396163126254328.Spec : Prop :=
  ∀ n, P18049396163126254328.a n = A004282 n

end A004282

/-! ## A004282.P3997112652986320184

`∑[∑[A174814(n)-n²]]`
-/

namespace A004282.P3997112652986320184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004282.P3997112652986320184

namespace A004282

/-- `∑[∑[A174814(n)-n²]]` -/
def P3997112652986320184.Spec : Prop :=
  ∀ n, P3997112652986320184.a n = A004282 n

end A004282

/-! ## A004282.P10057497128328542515

`(n+1)/2*A004320(n)`
-/

namespace A004282.P10057497128328542515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A004320 n : ℚ)

end

end A004282.P10057497128328542515

namespace A004282

/-- `(n+1)/2*A004320(n)` -/
def P10057497128328542515.Spec : Prop :=
  ∀ n, P10057497128328542515.a n = (A004282 n : ℚ)

end A004282

/-! ## A004282.P696834331940279157

`A000292(n)*A253145(n)`
-/

namespace A004282.P696834331940279157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A253145 n

end

end A004282.P696834331940279157

namespace A004282

/-- `A000292(n)*A253145(n)` -/
def P696834331940279157.Spec : Prop :=
  ∀ n, P696834331940279157.a n = A004282 n

end A004282

/-! ## A004282.P7014574802220303273

`A085463(n+1)-A034263(n)`
-/

namespace A004282.P7014574802220303273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) - A034263 n

end

end A004282.P7014574802220303273

namespace A004282

/-- `A085463(n+1)-A034263(n)` -/
def P7014574802220303273.Spec : Prop :=
  ∀ n, P7014574802220303273.a n = A004282 n

end A004282

/-! ## A004282.P9206134819107253530

`A208954(n+1)-A076389(n+1)`
-/

namespace A004282.P9206134819107253530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208954 (n + 1) - A076389 (n + 1)

end

end A004282.P9206134819107253530

namespace A004282

/-- `A208954(n+1)-A076389(n+1)` -/
def P9206134819107253530.Spec : Prop :=
  ∀ n, P9206134819107253530.a n = A004282 n

end A004282

/-! ## A004282.P14872090993912129662

`n*A014629(n+1)-A084990(n)`
-/

namespace A004282.P14872090993912129662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014629 (n + 1) - A084990 n

end

end A004282.P14872090993912129662

namespace A004282

/-- `n*A014629(n+1)-A084990(n)` -/
def P14872090993912129662.Spec : Prop :=
  ∀ n, P14872090993912129662.a n = A004282 n

end A004282

/-! ## A004282.P2661238312652491531

`A000292(n)+A000096(n)*A000292(n)`
-/

namespace A004282.P2661238312652491531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A000096 n * A000292 n

end

end A004282.P2661238312652491531

namespace A004282

/-- `A000292(n)+A000096(n)*A000292(n)` -/
def P2661238312652491531.Spec : Prop :=
  ∀ n, P2661238312652491531.a n = A004282 n

end A004282

/-! ## A004282.P9189456683760825283

`(A000292(n+1)-A000292(n))*A000292(n)`
-/

namespace A004282.P9189456683760825283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) - A000292 n) * A000292 n

end

end A004282.P9189456683760825283

namespace A004282

/-- `(A000292(n+1)-A000292(n))*A000292(n)` -/
def P9189456683760825283.Spec : Prop :=
  ∀ n, P9189456683760825283.a n = A004282 n

end A004282

/-! ## A004282.P9948564743591873675

`(A050509(n)-A051662(n))*A000217(n+1)`
-/

namespace A004282.P9948564743591873675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050509 n - A051662 n) * A000217 (n + 1)

end

end A004282.P9948564743591873675

namespace A004282

/-- `(A050509(n)-A051662(n))*A000217(n+1)` -/
def P9948564743591873675.Spec : Prop :=
  ∀ n, P9948564743591873675.a n = A004282 n

end A004282

/-! ## A004282.P11246407033544113734

`(A002717(n)-A173196(n))*A000217(n+1)`
-/

namespace A004282.P11246407033544113734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002717 n - A173196 n) * A000217 (n + 1)

end

end A004282.P11246407033544113734

namespace A004282

/-- `(A002717(n)-A173196(n))*A000217(n+1)` -/
def P11246407033544113734.Spec : Prop :=
  ∀ n, P11246407033544113734.a n = A004282 n

end A004282

/-! ## A004282.P12606132855025952505

`(A373733(n)-A054563(n))*A000217(n+1)`
-/

namespace A004282.P12606132855025952505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A373733 n - A054563 n) * A000217 (n + 1)

end

end A004282.P12606132855025952505

namespace A004282

/-- `(A373733(n)-A054563(n))*A000217(n+1)` -/
def P12606132855025952505.Spec : Prop :=
  ∀ n, P12606132855025952505.a n = A004282 n

end A004282

/-! ## A004282.P14495050641149864312

`A005585(n+1)+A207361(n)-A000330(n+1)`
-/

namespace A004282.P14495050641149864312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A207361 n - A000330 (n + 1))

end

end A004282.P14495050641149864312

namespace A004282

/-- `A005585(n+1)+A207361(n)-A000330(n+1)` -/
def P14495050641149864312.Spec : Prop :=
  ∀ n, P14495050641149864312.a n = A004282 n

end A004282

/-! ## A004282.P10577898626297840301

`(A173196(n+1)+A173196(n))*A000217(n+1)`
-/

namespace A004282.P10577898626297840301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173196 (n + 1) + A173196 n) * A000217 (n + 1)

end

end A004282.P10577898626297840301

namespace A004282

/-- `(A173196(n+1)+A173196(n))*A000217(n+1)` -/
def P10577898626297840301.Spec : Prop :=
  ∀ n, P10577898626297840301.a n = A004282 n

end A004282

/-!
# A004283: Least positive multiple of n written in base 3 using only 0 and 1.

The programs for A004283, there is no canonical definition to state claims against.
-/

/-! ## A004283.P14605429987408865934

`A007089(A244954(n+1))`
-/

namespace A004283.P14605429987408865934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A244954 (n + 1)).toNat

end

end A004283.P14605429987408865934

/-! ## A004283.P7171846861095102944

`filter[A347765(n+2), A179830(#)]`
-/

namespace A004283.P7171846861095102944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179830 (f1 j).toNat = 1) n)

end

end A004283.P7171846861095102944

/-! ## A004283.P12399897896199886567

`A347765(A386630(3*n+4))%A318563(n+3)`
-/

namespace A004283.P12399897896199886567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347765 (A386630 (3 * n + 4)).toNat) (A318563 (n + 3))

end

end A004283.P12399897896199886567

/-!
# A004284: Least positive multiple of n written in base 4 using only 0 and 1.

The programs for A004284, there is no canonical definition to state claims against.
-/

/-! ## A004284.P1149450027365100507

`A007284(A244955(n+1))`
-/

namespace A004284.P1149450027365100507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (A244955 (n + 1)).toNat

end

end A004284.P1149450027365100507

/-! ## A004284.P17147213460206536407

`A063432(A026272(n+1)+A024790(3*(n+1)))`
-/

namespace A004284.P17147213460206536407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (A026272 (n + 1) + A024790 (3 * (n + 1))).toNat

end

end A004284.P17147213460206536407

/-!
# A004285: Least positive multiple of n written in base 5 using only 0 and 1.

The programs for A004285, there is no canonical definition to state claims against.
-/

/-! ## A004285.P7877808741630345240

`A007091(A244956(n+1))`
-/

namespace A004285.P7877808741630345240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A244956 (n + 1)).toNat

end

end A004285.P7877808741630345240

/-!
# A004286: Least positive multiple of n written in base 6 using only 0 and 1.

The programs for A004286, there is no canonical definition to state claims against.
-/

/-! ## A004286.P7132404837229678705

`A007092(A244957(n+1))`
-/

namespace A004286.P7132404837229678705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A244957 (n + 1)).toNat

end

end A004286.P7132404837229678705

/-!
# A004287: Least positive multiple of n written in base 7 using only 0 and 1.

The programs for A004287, there is no canonical definition to state claims against.
-/

/-! ## A004287.P5458609582804114240

`A063432(A027741(n))`
-/

namespace A004287.P5458609582804114240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (A027741 n).toNat

end

end A004287.P5458609582804114240

/-!
# A004288: Least positive multiple of n written in base 8 using only 0 and 1.

The programs for A004288, there is no canonical definition to state claims against.
-/

/-! ## A004288.P5372284341032306701

`∏{p}[A066139(n+1), #]`
-/

namespace A004288.P5372284341032306701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A004288.P5372284341032306701

/-! ## A004288.P9135839473934077448

`∏{p}[A278038(n+1)², #]`
-/

namespace A004288.P9135839473934077448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A004288.P9135839473934077448

/-!
# A004289: Least positive multiple of n written in base 9 using only 0 and 1.

The programs for A004289, there is no canonical definition to state claims against.
-/

/-! ## A004289.P12784822408033874185

`A007095(A244960(n+1))`
-/

namespace A004289.P12784822408033874185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A244960 (n + 1)).toNat

end

end A004289.P12784822408033874185

/-! ## A004289.P7508907855009841085

`A052382(A244960(n+1)+1)-1`
-/

namespace A004289.P7508907855009841085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A244960 (n + 1) + 1).toNat - 1

end

end A004289.P7508907855009841085

/-! ## A004289.P14819118600728615489

`A136400(A132610(n)*A167307(n+1))`
-/

namespace A004289.P14819118600728615489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A132610 n * A167307 (n + 1)).toNat

end

end A004289.P14819118600728615489

/-!
# A004290: Least positive multiple of n that when written in base 10 uses only 0's and 1's.

The programs for A004290, there is no canonical definition to state claims against.
-/

/-! ## A004290.P11982982709314704708

`(n+1)*A079339(n+1)`
-/

namespace A004290.P11982982709314704708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079339 (n + 1)

end

end A004290.P11982982709314704708

/-! ## A004290.P14079951059951958594

`(n+1)*A096681(2*(n+1))`
-/

namespace A004290.P14079951059951958594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096681 (2 * (n + 1))

end

end A004290.P14079951059951958594

/-! ## A004290.P4618423438063439604

`A078241(2*(n+1))/2`
-/

namespace A004290.P4618423438063439604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078241 (2 * (n + 1)) : ℚ) / 2

end

end A004290.P4618423438063439604

/-! ## A004290.P12458949631609570491

`A078242(3*(n+1))/3`
-/

namespace A004290.P12458949631609570491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078242 (3 * (n + 1)) : ℚ) / 3

end

end A004290.P12458949631609570491

/-! ## A004290.P15425953498600703810

`(n+1)*A096682(3*(n+1))`
-/

namespace A004290.P15425953498600703810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096682 (3 * (n + 1))

end

end A004290.P15425953498600703810

/-! ## A004290.P12959898240226114816

`A007088(A257345(n+1))`
-/

namespace A004290.P12959898240226114816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A257345 (n + 1)).toNat

end

end A004290.P12959898240226114816

/-!
# A004291: Expansion of (1 + 2*x + x^2)/(1 - 10*x + x^2).

The programs for A004291, the canonical program `A004291.P10884396152481739543` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004291 has offset 0).

The definition of A004291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004291.P10884396152481739543

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12, a(2)=120`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004291

/-- `10*a(n-1)-a(n-2)` -/
def P10884396152481739543.Spec : Prop :=
  ∀ n, P10884396152481739543.a n = A004291 n

theorem P10884396152481739543.correct : P10884396152481739543.Spec := by
  intro n
  simp only [A004291]

end A004291

/-! ## A004291.P4416386134491982600

`A000007(n)+2*A122653(n)`
-/

namespace A004291.P4416386134491982600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A122653 n

end

end A004291.P4416386134491982600

namespace A004291

/-- `A000007(n)+2*A122653(n)` -/
def P4416386134491982600.Spec : Prop :=
  ∀ n, P4416386134491982600.a n = A004291 n

end A004291

/-! ## A004291.P6542142603646679068

`(3*A122652(n))^A178334(n)`
-/

namespace A004291.P6542142603646679068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A122652 n : ℚ) ^ (A178334 n : ℤ)

end

end A004291.P6542142603646679068

namespace A004291

/-- `(3*A122652(n))^A178334(n)` -/
def P6542142603646679068.Spec : Prop :=
  ∀ n, P6542142603646679068.a n = (A004291 n : ℚ)

end A004291

/-! ## A004291.P3710170987572177502

`record[Δ[A041006(n)]-A041006(n)]`
-/

namespace A004291.P3710170987572177502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A041006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004291.P3710170987572177502

namespace A004291

/-- `record[Δ[A041006(n)]-A041006(n)]` -/
def P3710170987572177502.Spec : Prop :=
  ∀ n, P3710170987572177502.a n = A004291 n

end A004291

/-! ## A004291.P1513898361545587298

`A122553(n)*A142239(A004273(n))`
-/

namespace A004291.P1513898361545587298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A142239 (A004273 n).toNat

end

end A004291.P1513898361545587298

namespace A004291

/-- `A122553(n)*A142239(A004273(n))` -/
def P1513898361545587298.Spec : Prop :=
  ∀ n, P1513898361545587298.a n = A004291 n

end A004291

/-! ## A004291.P10967976988161681255

`A054320(n)+A054320(n)%A001079(n)`
-/

namespace A004291.P10967976988161681255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n + Int.tmod (A054320 n) (A001079 n)

end

end A004291.P10967976988161681255

namespace A004291

/-- `A054320(n)+A054320(n)%A001079(n)` -/
def P10967976988161681255.Spec : Prop :=
  ∀ n, P10967976988161681255.a n = A004291 n

end A004291

/-! ## A004291.P16773071783302020496

`record[Δ[A077411(n)/4]]`
-/

namespace A004291.P16773071783302020496
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077411 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004291.P16773071783302020496

namespace A004291

/-- `record[Δ[A077411(n)/4]]` -/
def P16773071783302020496.Spec : Prop :=
  ∀ n, P16773071783302020496.a n = (A004291 n : ℚ)

end A004291

/-! ## A004291.P7827817902342692990

`Δ[record[A080806(n+1)-A233450(n+1)]]`
-/

namespace A004291.P7827817902342692990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1) - A233450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004291.P7827817902342692990

namespace A004291

/-- `Δ[record[A080806(n+1)-A233450(n+1)]]` -/
def P7827817902342692990.Spec : Prop :=
  ∀ n, P7827817902342692990.a n = A004291 n

end A004291

/-! ## A004291.P6785028444014791581

`Δ[A001079(n)-A077291(A004273(n))]`
-/

namespace A004291.P6785028444014791581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - A077291 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004291.P6785028444014791581

namespace A004291

/-- `Δ[A001079(n)-A077291(A004273(n))]` -/
def P6785028444014791581.Spec : Prop :=
  ∀ n, P6785028444014791581.a n = A004291 n

end A004291

/-! ## A004291.P5891392519287583045

`A080872(2*n+1)+A077411(2*n)%A080806(2*n+1)`
-/

namespace A004291.P5891392519287583045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n + 1) + Int.tmod (A077411 (2 * n)) (A080806 (2 * n + 1))

end

end A004291.P5891392519287583045

namespace A004291

/-- `A080872(2*n+1)+A077411(2*n)%A080806(2*n+1)` -/
def P5891392519287583045.Spec : Prop :=
  ∀ n, P5891392519287583045.a n = A004291 n

end A004291

/-!
# A004292: Expansion of (1+x)^2/(1-18*x+x^2).

The programs for A004292, the canonical program `A004292.P10436460970131299806` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004292 has offset 0).

The definition of A004292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004292.P10436460970131299806

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=20, a(2)=360`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004292

/-- `18*a(n-1)-a(n-2)` -/
def P10436460970131299806.Spec : Prop :=
  ∀ n, P10436460970131299806.a n = A004292 n

theorem P10436460970131299806.correct : P10436460970131299806.Spec := by
  intro n
  simp only [A004292]

end A004292

/-! ## A004292.P7518592082925732989

`A163685(A008458(n))`
-/

namespace A004292.P7518592082925732989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163685 (A008458 n).toNat

end

end A004292.P7518592082925732989

namespace A004292

/-- `A163685(A008458(n))` -/
def P7518592082925732989.Spec : Prop :=
  ∀ n, P7518592082925732989.a n = A004292 n

end A004292

/-! ## A004292.P6207620752741242946

`A060645(n)+A055389(A008588(n))`
-/

namespace A004292.P6207620752741242946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060645 n + A055389 (A008588 n).toNat

end

end A004292.P6207620752741242946

namespace A004292

/-- `A060645(n)+A055389(A008588(n))` -/
def P6207620752741242946.Spec : Prop :=
  ∀ n, P6207620752741242946.a n = A004292 n

end A004292

/-! ## A004292.P1239497610288145703

`A062114(A008458(n))+A060645(n)`
-/

namespace A004292.P1239497610288145703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 (A008458 n).toNat + A060645 n

end

end A004292.P1239497610288145703

namespace A004292

/-- `A062114(A008458(n))+A060645(n)` -/
def P1239497610288145703.Spec : Prop :=
  ∀ n, P1239497610288145703.a n = A004292 n

end A004292

/-! ## A004292.P13549453941497157833

`A060645(n)+Δ[A001076(A004273(n))]`
-/

namespace A004292.P13549453941497157833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060645 n + (f1 (n + 1) - f1 n)

end

end A004292.P13549453941497157833

namespace A004292

/-- `A060645(n)+Δ[A001076(A004273(n))]` -/
def P13549453941497157833.Spec : Prop :=
  ∀ n, P13549453941497157833.a n = A004292 n

end A004292

/-! ## A004292.P9386815413615230965

`A155179(A005843(n))+A117647(4*n)`
-/

namespace A004292.P9386815413615230965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155179 (A005843 n).toNat + A117647 (4 * n)

end

end A004292.P9386815413615230965

namespace A004292

/-- `A155179(A005843(n))+A117647(4*n)` -/
def P9386815413615230965.Spec : Prop :=
  ∀ n, P9386815413615230965.a n = A004292 n

end A004292

/-! ## A004292.P8491805133014181514

`A155179(A005843(n))+A005013(6*n)`
-/

namespace A004292.P8491805133014181514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155179 (A005843 n).toNat + A005013 (6 * n)

end

end A004292.P8491805133014181514

namespace A004292

/-- `A155179(A005843(n))+A005013(6*n)` -/
def P8491805133014181514.Spec : Prop :=
  ∀ n, P8491805133014181514.a n = A004292 n

end A004292

/-! ## A004292.P3576582751897044746

`A015448(2*n+1)-A001076(A004273(n))`
-/

namespace A004292.P3576582751897044746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (2 * n + 1) - A001076 (A004273 n).toNat

end

end A004292.P3576582751897044746

namespace A004292

/-- `A015448(2*n+1)-A001076(A004273(n))` -/
def P3576582751897044746.Spec : Prop :=
  ∀ n, P3576582751897044746.a n = A004292 n

end A004292

/-!
# A004293: Expansion of (1+2*x+x^2)/(1-26*x+x^2).

The programs for A004293, the canonical program `A004293.P2581955656522351177` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004293 has offset 0).

The definition of A004293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004293.P2581955656522351177

`26*a(n-1)-a(n-2)` with `a(0)=1, a(1)=28, a(2)=728`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004293

/-- `26*a(n-1)-a(n-2)` -/
def P2581955656522351177.Spec : Prop :=
  ∀ n, P2581955656522351177.a n = A004293 n

theorem P2581955656522351177.correct : P2581955656522351177.Spec := by
  intro n
  simp only [A004293]

end A004293

/-! ## A004293.P13361311932676404288

`floor(A157461(Δ[n²])/A153111(n+1))`
-/

namespace A004293.P13361311932676404288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157461 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A153111 (n + 1) : ℚ)⌋

end

end A004293.P13361311932676404288

namespace A004293

/-- `floor(A157461(Δ[n²])/A153111(n+1))` -/
def P13361311932676404288.Spec : Prop :=
  ∀ n, P13361311932676404288.a n = A004293 n

end A004293

/-! ## A004293.P10720284618072192172

`round(A157461(2*n+1)/A153111(n+1))`
-/

namespace A004293.P10720284618072192172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157461 (2 * n + 1) : ℚ) / (A153111 (n + 1) : ℚ))

end

end A004293.P10720284618072192172

namespace A004293

/-- `round(A157461(2*n+1)/A153111(n+1))` -/
def P10720284618072192172.Spec : Prop :=
  ∀ n, P10720284618072192172.a n = A004293 n

end A004293

/-! ## A004293.P16627013560637723331

`floor(A262062(2*n+1)/A262063(n+1))`
-/

namespace A004293.P16627013560637723331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262062 (2 * n + 1) : ℚ) / (A262063 (n + 1) : ℚ)⌋

end

end A004293.P16627013560637723331

namespace A004293

/-- `floor(A262062(2*n+1)/A262063(n+1))` -/
def P16627013560637723331.Spec : Prop :=
  ∀ n, P16627013560637723331.a n = A004293 n

end A004293

/-!
# A004294: Expansion of (1+2*x+x^2)/(1-34*x+x^2).

The programs for A004294, there is no canonical definition to state claims against.
-/

/-! ## A004294.P5112993684231068312

`A114689(comp[2*(n+1)]+2*n)`
-/

namespace A004294.P5112993684231068312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114689 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 * n)

end

end A004294.P5112993684231068312

/-! ## A004294.P10998631950316892214

`A075848(2*n)+A000007(n)`
-/

namespace A004294.P10998631950316892214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 (2 * n) + A000007 n

end

end A004294.P10998631950316892214

/-! ## A004294.P968149086891504156

`record[A114689(n)^A056594(n+1)]`
-/

namespace A004294.P968149086891504156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114689 n : ℚ) ^ (A056594 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004294.P968149086891504156

/-! ## A004294.P10422768970623597224

`A054890(2*n+1)-A001109(2*n)`
-/

namespace A004294.P10422768970623597224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054890 (2 * n + 1) - A001109 (2 * n)

end

end A004294.P10422768970623597224

/-! ## A004294.P7622530044806692499

`A001109(comp[2*(n+1)])+A001109(2*n+1)`
-/

namespace A004294.P7622530044806692499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A001109 (2 * n + 1)

end

end A004294.P7622530044806692499

/-! ## A004294.P3709958072323644351

`A002203(A008574(n))-A215936(A008574(n))`
-/

namespace A004294.P3709958072323644351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (A008574 n).toNat - A215936 (A008574 n).toNat

end

end A004294.P3709958072323644351

/-!
# A004298: Expansion of (1+2*x+x^2)/(1-66*x+x^2).

The programs for A004298, there is no canonical definition to state claims against.
-/

/-! ## A004298.P2970459390530875812

`A078989(n)+A078989(n)%A099370(n)`
-/

namespace A004298.P2970459390530875812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078989 n + Int.tmod (A078989 n) (A099370 n)

end

end A004298.P2970459390530875812

/-! ## A004298.P9289740084159561524

`floor(A078989(n)/A097316(n)*A078989(n))`
-/

namespace A004298.P9289740084159561524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078989 n : ℚ) / (A097316 n : ℚ) * (A078989 n : ℚ)⌋

end

end A004298.P9289740084159561524

/-! ## A004298.P17177192430839382023

`floor(A078989(n)²/A097316(n))`
-/

namespace A004298.P17177192430839382023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078989 n ^ 2 : ℚ) / (A097316 n : ℚ)⌋

end

end A004298.P17177192430839382023

/-! ## A004298.P17979341351969597469

`floor(A078989(2*n)/A078988(n))`
-/

namespace A004298.P17979341351969597469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078989 (2 * n) : ℚ) / (A078988 n : ℚ)⌋

end

end A004298.P17979341351969597469

