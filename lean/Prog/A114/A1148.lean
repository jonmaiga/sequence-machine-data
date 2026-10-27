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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A114800: Octuple factorial, 8-factorial, n!8, n!!!!!!!!.

The programs for A114800, the canonical program `A114800.P611565297450204324` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114800 has offset 0).

The definition of A114800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114800.P611565297450204324

`n*a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114800

/-- `n*a(n-8)` -/
def P611565297450204324.Spec : Prop :=
  ∀ n, (P611565297450204324.a n : ℤ) = A114800 n

theorem P611565297450204324.correct : P611565297450204324.Spec := by
  intro n
  simp only [A114800]

end A114800

/-! ## A114800.P12782714824866889323

`gcd(n!, A129116(A055999(n+4)-1))`
-/

namespace A114800.P12782714824866889323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A129116 (A055999 (n + 4) - 1).toNat)

end

end A114800.P12782714824866889323

namespace A114800

/-- `gcd(n!, A129116(A055999(n+4)-1))` -/
def P12782714824866889323.Spec : Prop :=
  ∀ n, (P12782714824866889323.a n : ℤ) = A114800 n

end A114800

/-! ## A114800.P10066373376842433962

`A000005(ceil(2^(n-1)))*A175740(n)`
-/

namespace A114800.P10066373376842433962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A175740 n

end

end A114800.P10066373376842433962

namespace A114800

/-- `A000005(ceil(2^(n-1)))*A175740(n)` -/
def P10066373376842433962.Spec : Prop :=
  ∀ n, P10066373376842433962.a n = A114800 n

end A114800

/-! ## A114800.P4113479530693856827

`A000005(ceil(2^(n-1)))*A214949(n+1)`
-/

namespace A114800.P4113479530693856827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A214949 (n + 1)

end

end A114800.P4113479530693856827

namespace A114800

/-- `A000005(ceil(2^(n-1)))*A214949(n+1)` -/
def P4113479530693856827.Spec : Prop :=
  ∀ n, P4113479530693856827.a n = A114800 n

end A114800

/-! ## A114800.P16925129803110783074

`A000005(A011782(n))*A273737(n)`
-/

namespace A114800.P16925129803110783074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A273737 n

end

end A114800.P16925129803110783074

namespace A114800

/-- `A000005(A011782(n))*A273737(n)` -/
def P16925129803110783074.Spec : Prop :=
  ∀ n, P16925129803110783074.a n = A114800 n

end A114800

/-!
# A114801: 2-concatenation-free sequence starting (1,2).

The programs for A114801, there is no canonical definition to state claims against.
-/

/-! ## A114801.P1737439819031024887

`A114802(A153679(n+1))`
-/

namespace A114801.P1737439819031024887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114802 (A153679 (n + 1)).toNat

end

end A114801.P1737439819031024887

/-! ## A114801.P14809293769319928296

`A114802(A238628(2*n+3))`
-/

namespace A114801.P14809293769319928296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114802 (A238628 (2 * n + 3)).toNat

end

end A114801.P14809293769319928296

/-! ## A114801.P474892194762758613

`and(A114802(n+1), A359085(n+1))`
-/

namespace A114801.P474892194762758613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114802 (n + 1)) (A359085 (n + 1))

end

end A114801.P474892194762758613

/-! ## A114801.P15871772242437208204

`A114802(n+1)%A016755(A114806(n))`
-/

namespace A114801.P15871772242437208204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114802 (n + 1)) (A016755 (A114806 n).toNat)

end

end A114801.P15871772242437208204

/-! ## A114801.P2895489421916325564

`A001221(A176608(n+1))*A114802(n+1)`
-/

namespace A114801.P2895489421916325564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A176608 (n + 1)).toNat * A114802 (n + 1)

end

end A114801.P2895489421916325564

/-!
# A114802: 3-concatenation-free sequence starting (1,2).

The programs for A114802, there is no canonical definition to state claims against.
-/

/-! ## A114802.P17418661328522049405

`∩[A061917(n+1), A114801(n+1)]`
-/

namespace A114802.P17418661328522049405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114802.P17418661328522049405

/-! ## A114802.P17242612252515173830

`∩[A084050(n+1), A114801(n+1)]`
-/

namespace A114802.P17242612252515173830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114802.P17242612252515173830

/-! ## A114802.P8920071020106259831

`∩[A114801(n+1), A169824(n+1)]`
-/

namespace A114802.P8920071020106259831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114802.P8920071020106259831

/-! ## A114802.P1961090668572103282

`∩[A114801(n+1), A281625(n+1)]`
-/

namespace A114802.P1961090668572103282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114802.P1961090668572103282

/-! ## A114802.P2708540723924269457

`∩[A114801(n+1), A303502(n+1)]`
-/

namespace A114802.P2708540723924269457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114802.P2708540723924269457

/-! ## A114802.P12230380759835437470

`eq[A055640(n), A090822(A139337(n))]`
-/

namespace A114802.P12230380759835437470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114802.P12230380759835437470

/-! ## A114802.P2777796204491888869

`eq[A000377(A123895(n)), A004218(n+1)]`
-/

namespace A114802.P2777796204491888869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A123895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114802.P2777796204491888869

/-! ## A114802.P9395320965455646714

`∩[A114801(n+1), A325152(n+1)]`
-/

namespace A114802.P9395320965455646714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114802.P9395320965455646714

/-!
# A114803: Integers when g2^3-27*g3^2=0 in cubic polynomials of the form: w^2=4*x^3-g2*x-g3.

The programs for A114803, the canonical program `A114803.P8769315445607929498` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114803 has offset 0).

The definition of A114803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114803.P8769315445607929498

`A000463(n+1)*A079097(A141310(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114803

/-- `A000463(n+1)*A079097(A141310(n))` -/
def P8769315445607929498.Spec : Prop :=
  ∀ n, P8769315445607929498.a n = A114803 n

theorem P8769315445607929498.correct : P8769315445607929498.Spec := by
  intro n
  simp only [A114803]

end A114803

/-! ## A114803.P16140205933710078621

`A008619(n)²*A052938(abs(A009531(n)))`
-/

namespace A114803.P16140205933710078621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 * A052938 |A009531 n|.toNat

end

end A114803.P16140205933710078621

namespace A114803

/-- `A008619(n)²*A052938(abs(A009531(n)))` -/
def P16140205933710078621.Spec : Prop :=
  ∀ n, P16140205933710078621.a n = A114803 n

end A114803

/-! ## A114803.P11877013180338986465

`A064455(n+1)*A158416(n)*A008619(n)`
-/

namespace A114803.P11877013180338986465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) * A158416 n * A008619 n

end

end A114803.P11877013180338986465

namespace A114803

/-- `A064455(n+1)*A158416(n)*A008619(n)` -/
def P11877013180338986465.Spec : Prop :=
  ∀ n, P11877013180338986465.a n = A114803 n

end A114803

/-! ## A114803.P2209847570274666816

`A064455(n+1)^A040001(n)*A008619(n)`
-/

namespace A114803.P2209847570274666816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064455 (n + 1) : ℚ) ^ (A040001 n : ℤ) * (A008619 n : ℚ)

end

end A114803.P2209847570274666816

namespace A114803

/-- `A064455(n+1)^A040001(n)*A008619(n)` -/
def P2209847570274666816.Spec : Prop :=
  ∀ n, P2209847570274666816.a n = (A114803 n : ℚ)

end A114803

/-! ## A114803.P13096167456205992848

`A346005(A001651(n+1))`
-/

namespace A114803.P13096167456205992848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346005 (A001651 (n + 1)).toNat

end

end A114803.P13096167456205992848

namespace A114803

/-- `A346005(A001651(n+1))` -/
def P13096167456205992848.Spec : Prop :=
  ∀ n, P13096167456205992848.a n = A114803 n

end A114803

/-! ## A114803.P9028209342516723338

`A064455(n+1)*A109595(A114119(n))`
-/

namespace A114803.P9028209342516723338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) * A109595 (A114119 n).toNat

end

end A114803.P9028209342516723338

namespace A114803

/-- `A064455(n+1)*A109595(A114119(n))` -/
def P9028209342516723338.Spec : Prop :=
  ∀ n, P9028209342516723338.a n = A114803 n

end A114803

/-! ## A114803.P5920875164493288499

`A064455(n+1)*A110653(2*n+1)`
-/

namespace A114803.P5920875164493288499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1) * A110653 (2 * n + 1)

end

end A114803.P5920875164493288499

namespace A114803

/-- `A064455(n+1)*A110653(2*n+1)` -/
def P5920875164493288499.Spec : Prop :=
  ∀ n, P5920875164493288499.a n = A114803 n

end A114803

/-! ## A114803.P9848909945557114024

`Δ[n*A008619(n)]*A110653(2*n+1)`
-/

namespace A114803.P9848909945557114024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110653 (2 * n + 1)

end

end A114803.P9848909945557114024

namespace A114803

/-- `Δ[n*A008619(n)]*A110653(2*n+1)` -/
def P9848909945557114024.Spec : Prop :=
  ∀ n, P9848909945557114024.a n = A114803 n

end A114803

/-! ## A114803.P14349788089754645829

`A109815(A000463(2*n+n+3))`
-/

namespace A114803.P14349788089754645829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A000463 (2 * n + (n + 3))).toNat

end

end A114803.P14349788089754645829

namespace A114803

/-- `A109815(A000463(2*n+n+3))` -/
def P14349788089754645829.Spec : Prop :=
  ∀ n, P14349788089754645829.a n = A114803 n

end A114803

/-! ## A114803.P8777055422320485835

`A109815(A114119(n)^A000034(n))`
-/

namespace A114803.P8777055422320485835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (SequenceMachineLib.roundAway ((A114119 n : ℚ) ^ (A000034 n : ℤ))).toNat

end

end A114803.P8777055422320485835

namespace A114803

/-- `A109815(A114119(n)^A000034(n))` -/
def P8777055422320485835.Spec : Prop :=
  ∀ n, P8777055422320485835.a n = A114803 n

end A114803

/-!
# A114805: Cumulative sum of quintuple factorial numbers n!!!!! (A085157).

The programs for A114805, the canonical program `A114805.P5482013149527747366` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114805 has offset 0).

The definition of A114805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114805.P5482013149527747366

`∑[n*a(n-5)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114805

/-- `∑[n*a(n-5)]` -/
def P5482013149527747366.Spec : Prop :=
  ∀ n, (P5482013149527747366.a n : ℤ) = A114805 n

theorem P5482013149527747366.correct : P5482013149527747366.Spec := by
  intro n
  simp only [A114805]

end A114805

/-! ## A114805.P13682299586043863454

`∑[A085157(n)]`
-/

namespace A114805.P13682299586043863454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114805.P13682299586043863454

namespace A114805

/-- `∑[A085157(n)]` -/
def P13682299586043863454.Spec : Prop :=
  ∀ n, P13682299586043863454.a n = A114805 n

theorem P13682299586043863454.correct : P13682299586043863454.Spec := by
  intro n
  simp only [A114805, Nat.add_sub_cancel, A114805.P13682299586043863454.f1, A114805.P13682299586043863454.a, A114805.P5482013149527747366.f1, A114805.P5482013149527747366.a, A085157, A085157.P6075407064572541314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114805

/-! ## A114805.P15443924889546481373

`A085157(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A114805.P15443924889546481373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085157 n + a (A023443 n).toNat

end

end A114805.P15443924889546481373

namespace A114805

/-- `A085157(n)+a(A023443(n))` -/
def P15443924889546481373.Spec : Prop :=
  ∀ n, P15443924889546481373.a n = A114805 n

end A114805

/-! ## A114805.P2440918465997564465

`A085157(n%A063498(n))+a(n-1)` with `a(0)=1`
-/

namespace A114805.P2440918465997564465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085157 (Int.tmod (n : ℤ) (A063498 n)).toNat + a (n - 1)

end

end A114805.P2440918465997564465

namespace A114805

/-- `A085157(n%A063498(n))+a(n-1)` -/
def P2440918465997564465.Spec : Prop :=
  ∀ n, P2440918465997564465.a n = A114805 n

end A114805

/-! ## A114805.P9520148468415190820

`a(n-1)+A085157(n)%A085157(n+1)` with `a(0)=1`
-/

namespace A114805.P9520148468415190820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A085157 n) (A085157 (n + 1))

end

end A114805.P9520148468415190820

namespace A114805

/-- `a(n-1)+A085157(n)%A085157(n+1)` -/
def P9520148468415190820.Spec : Prop :=
  ∀ n, P9520148468415190820.a n = A114805 n

end A114805

/-! ## A114805.P4370343971398126027

`∑[A129116(A167499(n)+A008486(n))]`
-/

namespace A114805.P4370343971398126027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A167499 n + A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114805.P4370343971398126027

namespace A114805

/-- `∑[A129116(A167499(n)+A008486(n))]` -/
def P4370343971398126027.Spec : Prop :=
  ∀ n, P4370343971398126027.a n = A114805 n

end A114805

/-!
# A114806: Nonuple factorial, 9-factorial, n!9, n!!!!!!!!!.

The programs for A114806, the canonical program `A114806.P1179373294819903503` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114806 has offset 0).

The definition of A114806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114806.P1179373294819903503

`n*a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114806

/-- `n*a(n-9)` -/
def P1179373294819903503.Spec : Prop :=
  ∀ n, (P1179373294819903503.a n : ℤ) = A114806 n

theorem P1179373294819903503.correct : P1179373294819903503.Spec := by
  intro n
  simp only [A114806]

end A114806

/-! ## A114806.P8949954174433230823

`A349194(gcd(C(2, n²), A051885(n)))`
-/

namespace A114806.P8949954174433230823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) (A051885 n))

end

end A114806.P8949954174433230823

namespace A114806

/-- `A349194(gcd(C(2, n²), A051885(n)))` -/
def P8949954174433230823.Spec : Prop :=
  ∀ n, P8949954174433230823.a n = A114806 n

end A114806

/-! ## A114806.P9442335726430521969

`A349194(A051885(A000007(n)+n))`
-/

namespace A114806.P9442335726430521969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (A051885 (A000007 n + (n : ℤ)).toNat).toNat

end

end A114806.P9442335726430521969

namespace A114806

/-- `A349194(A051885(A000007(n)+n))` -/
def P9442335726430521969.Spec : Prop :=
  ∀ n, P9442335726430521969.a n = A114806 n

end A114806

/-! ## A114806.P3679940942960823663

`A349194(A051885(n^A178334(n)))`
-/

namespace A114806.P3679940942960823663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (A051885 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A114806.P3679940942960823663

namespace A114806

/-- `A349194(A051885(n^A178334(n)))` -/
def P3679940942960823663.Spec : Prop :=
  ∀ n, P3679940942960823663.a n = A114806 n

end A114806

/-! ## A114806.P15803549920188142315

`A349194(A051885(C(n, A178334(n))))`
-/

namespace A114806.P15803549920188142315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (A051885 (Nat.choose n (A178334 n).toNat)).toNat

end

end A114806.P15803549920188142315

namespace A114806

/-- `A349194(A051885(C(n, A178334(n))))` -/
def P15803549920188142315.Spec : Prop :=
  ∀ n, P15803549920188142315.a n = A114806 n

end A114806

/-!
# A114810: Number of complex, weakly primitive Dirichlet characters modulo n.

The programs for A114810, the canonical program `A114810.P14941330468482581055` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114810 has offset 1).

The definition of A114810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114810.P14941330468482581055

`A000010(A007947(n+1))*A000010((n+1)/A007947(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114810

/-- `A000010(A007947(n+1))*A000010((n+1)/A007947(n+1))` -/
def P14941330468482581055.Spec : Prop :=
  ∀ n, P14941330468482581055.a n = A114810 (n + 1)

theorem P14941330468482581055.correct : P14941330468482581055.Spec := by
  intro n
  simp only [A114810, Nat.add_sub_cancel]

end A114810

/-! ## A114810.P3387844851624277263

`A000010((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A114810.P3387844851624277263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A114810.P3387844851624277263

namespace A114810

/-- `A000010((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]` -/
def P3387844851624277263.Spec : Prop :=
  ∀ n, P3387844851624277263.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P5811047410858436723

`A127473(n+1)/A384050(n+1)`
-/

namespace A114810.P5811047410858436723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127473 (n + 1) : ℚ) / (A384050 (n + 1) : ℚ)

end

end A114810.P5811047410858436723

namespace A114810

/-- `A127473(n+1)/A384050(n+1)` -/
def P5811047410858436723.Spec : Prop :=
  ∀ n, P5811047410858436723.a n = (A114810 (n + 1) : ℚ)

end A114810

/-! ## A114810.P6956613281571174228

`∑{d}[n+1, A008683(#)*A055653((n+1)/#)]`
-/

namespace A114810.P6956613281571174228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A055653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114810.P6956613281571174228

namespace A114810

/-- `∑{d}[n+1, A008683(#)*A055653((n+1)/#)]` -/
def P6956613281571174228.Spec : Prop :=
  ∀ n, P6956613281571174228.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P1268065890645999578

`∑{d}[n+1, A007427(#)*A360522((n+1)/#)]`
-/

namespace A114810.P1268065890645999578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A360522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114810.P1268065890645999578

namespace A114810

/-- `∑{d}[n+1, A007427(#)*A360522((n+1)/#)]` -/
def P1268065890645999578.Spec : Prop :=
  ∀ n, P1268065890645999578.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P14349184539722043537

`∑{d}[n+1, A000010(#)*A395496((n+1)/#)]`
-/

namespace A114810.P14349184539722043537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A395496 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114810.P14349184539722043537

namespace A114810

/-- `∑{d}[n+1, A000010(#)*A395496((n+1)/#)]` -/
def P14349184539722043537.Spec : Prop :=
  ∀ n, P14349184539722043537.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P5788021174169143266

`∑{d}[n+1, A307445(#)*A332713((n+1)/#)]`
-/

namespace A114810.P5788021174169143266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A332713 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114810.P5788021174169143266

namespace A114810

/-- `∑{d}[n+1, A307445(#)*A332713((n+1)/#)]` -/
def P5788021174169143266.Spec : Prop :=
  ∀ n, P5788021174169143266.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P4802166813667005632

`A000010((n+1)/∏{p}[n+1, #])*A173557(n+1)`
-/

namespace A114810.P4802166813667005632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A173557 (n + 1)

end

end A114810.P4802166813667005632

namespace A114810

/-- `A000010((n+1)/∏{p}[n+1, #])*A173557(n+1)` -/
def P4802166813667005632.Spec : Prop :=
  ∀ n, P4802166813667005632.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P7919836963387272614

`A000010(gcd(n+1, ∑{p}[n+1, (n+1)/#]))*A173557(n+1)`
-/

namespace A114810.P7919836963387272614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))) * A173557 (n + 1)

end

end A114810.P7919836963387272614

namespace A114810

/-- `A000010(gcd(n+1, ∑{p}[n+1, (n+1)/#]))*A173557(n+1)` -/
def P7919836963387272614.Spec : Prop :=
  ∀ n, P7919836963387272614.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P1762540580799979938

`A000010(A003557(n+1))*A173557(n+1)`
-/

namespace A114810.P1762540580799979938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003557 (n + 1)).toNat * A173557 (n + 1)

end

end A114810.P1762540580799979938

namespace A114810

/-- `A000010(A003557(n+1))*A173557(n+1)` -/
def P1762540580799979938.Spec : Prop :=
  ∀ n, P1762540580799979938.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P11553050706740988988

`A000010(A000188(n+1))*A390752(n+1)`
-/

namespace A114810.P11553050706740988988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000188 (n + 1)).toNat * A390752 (n + 1)

end

end A114810.P11553050706740988988

namespace A114810

/-- `A000010(A000188(n+1))*A390752(n+1)` -/
def P11553050706740988988.Spec : Prop :=
  ∀ n, P11553050706740988988.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P9111110953600336240

`A000010(n+1)/A057521(n+1)*A380160(n+1)`
-/

namespace A114810.P9111110953600336240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A057521 (n + 1) : ℚ) * (A380160 (n + 1) : ℚ)

end

end A114810.P9111110953600336240

namespace A114810

/-- `A000010(n+1)/A057521(n+1)*A380160(n+1)` -/
def P9111110953600336240.Spec : Prop :=
  ∀ n, P9111110953600336240.a n = (A114810 (n + 1) : ℚ)

end A114810

/-! ## A114810.P7124290265952352932

`A000010(A003557(n+1))*A000010(A007947(n+1))`
-/

namespace A114810.P7124290265952352932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003557 (n + 1)).toNat * A000010 (A007947 (n + 1)).toNat

end

end A114810.P7124290265952352932

namespace A114810

/-- `A000010(A003557(n+1))*A000010(A007947(n+1))` -/
def P7124290265952352932.Spec : Prop :=
  ∀ n, P7124290265952352932.a n = A114810 (n + 1)

theorem P7124290265952352932.correct : P7124290265952352932.Spec := by
  intro n
  simp only [A114810, Nat.add_sub_cancel, A114810.P7124290265952352932.a, A114810.P14941330468482581055.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114810

/-! ## A114810.P6582125819052800705

`A000010(A000188(n+1))*A000010(A019554(n+1))`
-/

namespace A114810.P6582125819052800705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000188 (n + 1)).toNat * A000010 (A019554 (n + 1)).toNat

end

end A114810.P6582125819052800705

namespace A114810

/-- `A000010(A000188(n+1))*A000010(A019554(n+1))` -/
def P6582125819052800705.Spec : Prop :=
  ∀ n, P6582125819052800705.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P2519132022658237529

`A000010(A000189(n+1))*A000010(A019555(n+1))`
-/

namespace A114810.P2519132022658237529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000189 (n + 1)).toNat * A000010 (A019555 (n + 1)).toNat

end

end A114810.P2519132022658237529

namespace A114810

/-- `A000010(A000189(n+1))*A000010(A019555(n+1))` -/
def P2519132022658237529.Spec : Prop :=
  ∀ n, P2519132022658237529.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P8308014327293000437

`A000010(A000190(n+1))*A000010(A053166(n+1))`
-/

namespace A114810.P8308014327293000437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000190 (n + 1)).toNat * A000010 (A053166 (n + 1)).toNat

end

end A114810.P8308014327293000437

namespace A114810

/-- `A000010(A000190(n+1))*A000010(A053166(n+1))` -/
def P8308014327293000437.Spec : Prop :=
  ∀ n, P8308014327293000437.a n = A114810 (n + 1)

end A114810

/-! ## A114810.P2724020267677228079

`A000010(n+1)/A000188(n+1)*A000010(A000188(n+1))`
-/

namespace A114810.P2724020267677228079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ) * (A000010 (A000188 (n + 1)).toNat : ℚ)

end

end A114810.P2724020267677228079

namespace A114810

/-- `A000010(n+1)/A000188(n+1)*A000010(A000188(n+1))` -/
def P2724020267677228079.Spec : Prop :=
  ∀ n, P2724020267677228079.a n = (A114810 (n + 1) : ℚ)

end A114810

/-! ## A114810.P1112703099498020448

`A000010(n+1)/A000189(n+1)*A000010(A000189(n+1))`
-/

namespace A114810.P1112703099498020448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000189 (n + 1) : ℚ) * (A000010 (A000189 (n + 1)).toNat : ℚ)

end

end A114810.P1112703099498020448

namespace A114810

/-- `A000010(n+1)/A000189(n+1)*A000010(A000189(n+1))` -/
def P1112703099498020448.Spec : Prop :=
  ∀ n, P1112703099498020448.a n = (A114810 (n + 1) : ℚ)

end A114810

/-! ## A114810.P5188006305907486601

`A000010(n+1)/A000190(n+1)*A000010(A000190(n+1))`
-/

namespace A114810.P5188006305907486601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000190 (n + 1) : ℚ) * (A000010 (A000190 (n + 1)).toNat : ℚ)

end

end A114810.P5188006305907486601

namespace A114810

/-- `A000010(n+1)/A000190(n+1)*A000010(A000190(n+1))` -/
def P5188006305907486601.Spec : Prop :=
  ∀ n, P5188006305907486601.a n = (A114810 (n + 1) : ℚ)

end A114810

/-! ## A114810.P16716106667951112247

`A000010(n+1)/A003557(n+1)*A000010(A003557(n+1))`
-/

namespace A114810.P16716106667951112247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A000010 (A003557 (n + 1)).toNat : ℚ)

end

end A114810.P16716106667951112247

namespace A114810

/-- `A000010(n+1)/A003557(n+1)*A000010(A003557(n+1))` -/
def P16716106667951112247.Spec : Prop :=
  ∀ n, P16716106667951112247.a n = (A114810 (n + 1) : ℚ)

end A114810

/-!
# A114811: Number of real, weakly primitive Dirichlet characters modulo n.

The programs for A114811, the canonical program `A114811.P355530453840476527` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114811 has offset 1).

The definition of A114811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114811.P2063255588650493220

`A074823(lcm(4, n+1)/4)`
-/

namespace A114811.P2063255588650493220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

end

end A114811.P2063255588650493220

namespace A114811

/-- `A074823(lcm(4, n+1)/4)` -/
def P2063255588650493220.Spec : Prop :=
  ∀ n, P2063255588650493220.a n = A114811 (n + 1)

end A114811

/-! ## A114811.P14155660216285495744

`A074823((n+1)/gcd(4, n+1))`
-/

namespace A114811.P14155660216285495744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 4 (n + 1) : ℚ))).toNat

end

end A114811.P14155660216285495744

namespace A114811

/-- `A074823((n+1)/gcd(4, n+1))` -/
def P14155660216285495744.Spec : Prop :=
  ∀ n, P14155660216285495744.a n = A114811 (n + 1)

end A114811

/-! ## A114811.P12620488063153353021

`A074823(A060819(n+1))`
-/

namespace A114811.P12620488063153353021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (A060819 (n + 1)).toNat

end

end A114811.P12620488063153353021

namespace A114811

/-- `A074823(A060819(n+1))` -/
def P12620488063153353021.Spec : Prop :=
  ∀ n, P12620488063153353021.a n = A114811 (n + 1)

end A114811

/-! ## A114811.P16153261961650895471

`∑{d}[n+1, A008683(#)*A087688((n+1)/#)]`
-/

namespace A114811.P16153261961650895471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A087688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114811.P16153261961650895471

namespace A114811

/-- `∑{d}[n+1, A008683(#)*A087688((n+1)/#)]` -/
def P16153261961650895471.Spec : Prop :=
  ∀ n, P16153261961650895471.a n = A114811 (n + 1)

end A114811

/-! ## A114811.P355530453840476527

`∏{e}[A060819(n+1), A151668(A151668(#)+#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114811

/-- `∏{e}[A060819(n+1), A151668(A151668(#)+#)]` -/
def P355530453840476527.Spec : Prop :=
  ∀ n, P355530453840476527.a n = A114811 (n + 1)

theorem P355530453840476527.correct : P355530453840476527.Spec := by
  intro n
  simp only [A114811, Nat.add_sub_cancel]

end A114811

/-! ## A114811.P12754688803254861192

`∏{e}[A060819(n+1), A347088(A048477(#)+1)]`
-/

namespace A114811.P12754688803254861192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A347088 (A048477 (Nat.factorization (f1 n).natAbs p) + 1).toNat

end

end A114811.P12754688803254861192

namespace A114811

/-- `∏{e}[A060819(n+1), A347088(A048477(#)+1)]` -/
def P12754688803254861192.Spec : Prop :=
  ∀ n, P12754688803254861192.a n = A114811 (n + 1)

end A114811

/-! ## A114811.P5509130762316794465

`A326814(A181318(n+1))`
-/

namespace A114811.P5509130762316794465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326814 (A181318 (n + 1)).toNat

end

end A114811.P5509130762316794465

namespace A114811

/-- `A326814(A181318(n+1))` -/
def P5509130762316794465.Spec : Prop :=
  ∀ n, P5509130762316794465.a n = A114811 (n + 1)

end A114811

/-!
# A114812: Indices of Fibonacci numbers with 3 prime factors when counted with multiplicity.

The programs for A114812, there is no canonical definition to state claims against.
-/

/-! ## A114812.P396325359378621334

`eq[3, A038575(n)]`
-/

namespace A114812.P396325359378621334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114812.P396325359378621334

/-! ## A114812.P1535882569627305133

`lt[A073294(xor(3, A038575(n))), 1]`
-/

namespace A114812.P1535882569627305133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073294 (Int.xor 3 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114812.P1535882569627305133

/-! ## A114812.P651681582160465286

`lt[A026996(xor(3, A038575(n))), 2]`
-/

namespace A114812.P651681582160465286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026996 (Int.xor 3 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114812.P651681582160465286

/-! ## A114812.P12556321967273013856

`lt[(3-A233583(A038575(n)+1))², 1]`
-/

namespace A114812.P12556321967273013856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A233583 (A038575 n + 1).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114812.P12556321967273013856

/-! ## A114812.P17725363478151988001

`lt[xor(10, A000040(A038575(n)+1)+3), 2]`
-/

namespace A114812.P17725363478151988001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A000040 (A038575 n + 1).toNat + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114812.P17725363478151988001

/-!
# A114813: Indices of Fibonacci numbers with 4 prime factors when counted with multiplicity.

The programs for A114813, there is no canonical definition to state claims against.
-/

/-! ## A114813.P3867051507195186543

`eq[4, A038575(n)]`
-/

namespace A114813.P3867051507195186543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114813.P3867051507195186543

/-! ## A114813.P16770028151674220012

`eq[8, A286545(n+1)]+1`
-/

namespace A114813.P16770028151674220012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114813.P16770028151674220012

/-! ## A114813.P8623891237208724462

`eq[8, A286545(A028310(n))]`
-/

namespace A114813.P8623891237208724462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114813.P8623891237208724462

/-! ## A114813.P15579595308078415718

`eq[8, A286545(A065033(2*n))]`
-/

namespace A114813.P15579595308078415718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114813.P15579595308078415718

/-! ## A114813.P8969764807455955808

`∩[A037918(n+1), A114843(n+1)]`
-/

namespace A114813.P8969764807455955808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114813.P8969764807455955808

/-! ## A114813.P1495826138164152121

`eq[8, A286545(A138153(n+1))]`
-/

namespace A114813.P1495826138164152121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114813.P1495826138164152121

/-! ## A114813.P840989445946387463

`eq[8, A286545(A233583(n+1))]`
-/

namespace A114813.P840989445946387463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114813.P840989445946387463

/-! ## A114813.P11427242172585429119

`∩[A114843(n+1), A174331(n+1)]`
-/

namespace A114813.P11427242172585429119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114813.P11427242172585429119

/-!
# A114814: Indices of Fibonacci numbers with 5 prime factors when counted with multiplicity.

The programs for A114814, there is no canonical definition to state claims against.
-/

/-! ## A114814.P3439495548793487487

`eq[5, A038575(n)]`
-/

namespace A114814.P3439495548793487487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114814.P3439495548793487487

/-! ## A114814.P12389679730438529865

`lt[A063706(xor(4, A038575(n))), 1]`
-/

namespace A114814.P12389679730438529865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063706 (Int.xor 4 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114814.P12389679730438529865

/-! ## A114814.P16633681479623738675

`lt[A019320(xor(4, A038575(n))), 2]`
-/

namespace A114814.P16633681479623738675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (Int.xor 4 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114814.P16633681479623738675

/-! ## A114814.P14271294014693372625

`lt[A063707(xor(4, A038575(n))), 2]`
-/

namespace A114814.P14271294014693372625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063707 (Int.xor 4 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114814.P14271294014693372625

/-!
# A114815: Indices of Fibonacci numbers with 6 prime factors when counted with multiplicity.

The programs for A114815, there is no canonical definition to state claims against.
-/

/-! ## A114815.P17570739974708748914

`eq[6, A038575(n)]`
-/

namespace A114815.P17570739974708748914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114815.P17570739974708748914

/-! ## A114815.P9599666416153598674

`lt[A073294(xor(6, A038575(n))), 1]`
-/

namespace A114815.P9599666416153598674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073294 (Int.xor 6 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114815.P9599666416153598674

/-! ## A114815.P8795119440436943960

`lt[A063706(xor(7, A038575(n))), 1]`
-/

namespace A114815.P8795119440436943960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063706 (Int.xor 7 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114815.P8795119440436943960

/-! ## A114815.P3277253608414925158

`lt[A019320(xor(7, A038575(n))), 2]`
-/

namespace A114815.P3277253608414925158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (Int.xor 7 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114815.P3277253608414925158

/-! ## A114815.P3120870930785820625

`lt[A063707(xor(7, A038575(n))), 2]`
-/

namespace A114815.P3120870930785820625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063707 (Int.xor 7 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114815.P3120870930785820625

/-!
# A114816: Indices of Fibonacci numbers with 7 prime factors when counted with multiplicity.

The programs for A114816, there is no canonical definition to state claims against.
-/

/-! ## A114816.P13060085829511177775

`eq[7, A038575(n)]`
-/

namespace A114816.P13060085829511177775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114816.P13060085829511177775

/-! ## A114816.P13747097123705775427

`lt[A006694(xor(7, A038575(n))), 1]`
-/

namespace A114816.P13747097123705775427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (Int.xor 7 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114816.P13747097123705775427

/-! ## A114816.P10073499341474930534

`A028310(lt[xor(7, A038575(n)), 1])`
-/

namespace A114816.P10073499341474930534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A038575 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A114816.P10073499341474930534

/-! ## A114816.P17700409889344995306

`lt[A073294(xor(7, A038575(n))), 1]`
-/

namespace A114816.P17700409889344995306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073294 (Int.xor 7 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114816.P17700409889344995306

/-! ## A114816.P17541358236138805880

`lt[A026996(xor(7, A038575(n))), 2]`
-/

namespace A114816.P17541358236138805880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026996 (Int.xor 7 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114816.P17541358236138805880

/-! ## A114816.P1770430011428113754

`lt[lcm(n, 7-A233583(A038575(n)+1)), n]`
-/

namespace A114816.P1770430011428113754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (7 - A233583 (A038575 n + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114816.P1770430011428113754

/-!
# A114817: Indices of Fibonacci numbers with 8 prime factors when counted with multiplicity.

The programs for A114817, there is no canonical definition to state claims against.
-/

/-! ## A114817.P6253607225761124256

`eq[8, A038575(n)]`
-/

namespace A114817.P6253607225761124256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114817.P6253607225761124256

/-! ## A114817.P3251551171712001820

`lt[A088133(A038575(n)+2), 2]`
-/

namespace A114817.P3251551171712001820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A038575 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114817.P3251551171712001820

/-! ## A114817.P15507952641751444846

`lt[A006694(xor(8, A038575(n))), 1]`
-/

namespace A114817.P15507952641751444846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (Int.xor 8 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114817.P15507952641751444846

/-! ## A114817.P5463081535561975130

`lt[A022088(xor(8, A038575(n))), 1]`
-/

namespace A114817.P5463081535561975130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (Int.xor 8 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114817.P5463081535561975130

/-! ## A114817.P10774138927345086363

`A028310(lt[xor(8, A038575(n)), 1])`
-/

namespace A114817.P10774138927345086363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A038575 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A114817.P10774138927345086363

/-! ## A114817.P17375391837894338809

`lt[A153643(xor(8, A038575(n))+2), 4]`
-/

namespace A114817.P17375391837894338809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 (Int.xor 8 (A038575 n) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114817.P17375391837894338809

/-!
# A114818: Indices of Fibonacci numbers with 9 prime factors when counted with multiplicity.

The programs for A114818, there is no canonical definition to state claims against.
-/

/-! ## A114818.P8723668282972374548

`eq[9, A038575(n)]`
-/

namespace A114818.P8723668282972374548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114818.P8723668282972374548

/-! ## A114818.P10107620205244964726

`lt[A088133(A038575(n)+1), 2]`
-/

namespace A114818.P10107620205244964726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A038575 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114818.P10107620205244964726

/-! ## A114818.P6578779877526404350

`lt[A063706(xor(8, A038575(n))), 1]`
-/

namespace A114818.P6578779877526404350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063706 (Int.xor 8 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114818.P6578779877526404350

/-! ## A114818.P12661364718678973

`lt[A019320(xor(8, A038575(n))), 2]`
-/

namespace A114818.P12661364718678973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (Int.xor 8 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114818.P12661364718678973

/-! ## A114818.P14437549963786459664

`lt[A063707(xor(8, A038575(n))), 2]`
-/

namespace A114818.P14437549963786459664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063707 (Int.xor 8 (A038575 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114818.P14437549963786459664

/-!
# A114819: Indices of Fibonacci numbers with 10 prime factors when counted with multiplicity.

The programs for A114819, there is no canonical definition to state claims against.
-/

/-! ## A114819.P9021095227258014655

`eq[10, A038575(n)]`
-/

namespace A114819.P9021095227258014655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114819.P9021095227258014655

/-! ## A114819.P11021279312387455481

`A303215(eq[8, A219347(n)])`
-/

namespace A114819.P11021279312387455481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114819.P11021279312387455481

/-! ## A114819.P11665159105289445565

`A303215(eq[9, A193592(n)])`
-/

namespace A114819.P11665159105289445565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114819.P11665159105289445565

/-!
# A114820: Indices of Fibonacci numbers with 11 prime factors when counted with multiplicity.

The programs for A114820, there is no canonical definition to state claims against.
-/

/-! ## A114820.P12467861967936159840

`eq[11, A038575(n)]`
-/

namespace A114820.P12467861967936159840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114820.P12467861967936159840

/-! ## A114820.P2145428819760450931

`A303215(A056000(n+7))`
-/

namespace A114820.P2145428819760450931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (A056000 (n + 7)).toNat

end

end A114820.P2145428819760450931

/-!
# A114821: Indices of Fibonacci numbers with 12 prime factors when counted with multiplicity.

The programs for A114821, there is no canonical definition to state claims against.
-/

/-! ## A114821.P3949137273934454833

`eq[12, A038575(n)]`
-/

namespace A114821.P3949137273934454833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114821.P3949137273934454833

/-! ## A114821.P14694328960943249855

`lt[A098007(n+3), A038575(A038575(n))]`
-/

namespace A114821.P14694328960943249855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114821.P14694328960943249855

/-!
# A114822: Indices of Fibonacci numbers with 13 prime factors when counted with multiplicity.

The programs for A114822, there is no canonical definition to state claims against.
-/

/-! ## A114822.P11928347147931417753

`eq[13, A038575(n)]`
-/

namespace A114822.P11928347147931417753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114822.P11928347147931417753

/-! ## A114822.P2962421377638270553

`lt[A008619(n), A078777(A038575(n))]`
-/

namespace A114822.P2962421377638270553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078777 (A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114822.P2962421377638270553

/-!
# A114823: Indices of Fibonacci numbers with 13 distinct prime factors.

The programs for A114823, there is no canonical definition to state claims against.
-/

/-! ## A114823.P7876715677441471767

`eq[13, A022307(n)]`
-/

namespace A114823.P7876715677441471767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114823.P7876715677441471767

/-! ## A114823.P7283741924318462250

`A303217(eq[12, A193592(n)])`
-/

namespace A114823.P7283741924318462250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114823.P7283741924318462250

/-!
# A114824: Indices of Fibonacci numbers with 12 distinct prime factors.

The programs for A114824, there is no canonical definition to state claims against.
-/

/-! ## A114824.P12171751443474307489

`eq[12, A022307(n)]`
-/

namespace A114824.P12171751443474307489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114824.P12171751443474307489

/-! ## A114824.P7901395261172712904

`A303217(eq[11, A193592(n)])`
-/

namespace A114824.P7901395261172712904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114824.P7901395261172712904

/-! ## A114824.P4950855370334195002

`A303217(eq[12, A219347(n)])`
-/

namespace A114824.P4950855370334195002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114824.P4950855370334195002

/-!
# A114825: Indices of Fibonacci numbers with 11 distinct prime factors.

The programs for A114825, there is no canonical definition to state claims against.
-/

/-! ## A114825.P3134878681076437424

`eq[11, A022307(n)]`
-/

namespace A114825.P3134878681076437424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114825.P3134878681076437424

/-! ## A114825.P12577304421288430089

`lt[A000096(n), A351870(A022307(n))]`
-/

namespace A114825.P12577304421288430089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114825.P12577304421288430089

/-! ## A114825.P5862360363976027736

`lt[A008131(n), A351870(A022307(n))]`
-/

namespace A114825.P5862360363976027736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114825.P5862360363976027736

/-! ## A114825.P11280919859886581616

`lt[A314220(n), A351870(A022307(n))]`
-/

namespace A114825.P11280919859886581616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114825.P11280919859886581616

/-! ## A114825.P2499745908808607869

`lt[A167614(n+1), A351870(A022307(n))]`
-/

namespace A114825.P2499745908808607869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114825.P2499745908808607869

/-!
# A114826: Indices of Fibonacci numbers with 10 distinct prime factors.

The programs for A114826, there is no canonical definition to state claims against.
-/

/-! ## A114826.P6136010229836758674

`eq[10, A022307(n)]`
-/

namespace A114826.P6136010229836758674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114826.P6136010229836758674

/-! ## A114826.P10645946419798035262

`A303217(A051936(n+10))`
-/

namespace A114826.P10645946419798035262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (A051936 (n + 10)).toNat

end

end A114826.P10645946419798035262

/-! ## A114826.P8036248501027141056

`A303217(eq[8, A219347(n)])`
-/

namespace A114826.P8036248501027141056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114826.P8036248501027141056

/-! ## A114826.P16189863805523237835

`A303217(eq[9, A193592(n)])`
-/

namespace A114826.P16189863805523237835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114826.P16189863805523237835

/-! ## A114826.P1896686246699406436

`A303217(A000124(n+10)-10)`
-/

namespace A114826.P1896686246699406436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (A000124 (n + 10) - 10).toNat

end

end A114826.P1896686246699406436

/-!
# A114828: Numbers k such that the k-th octagonal number has 9 prime factors counted with multiplicity.

The programs for A114828, the canonical program `A114828.P7860029595471098069` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114828 has offset 1).

The definition of A114828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114828.P7860029595471098069

`eq[10, A193295(A008486(n)+2)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114828

/-- `eq[10, A193295(A008486(n)+2)]+1` -/
def P7860029595471098069.Spec : Prop :=
  ∀ n, (P7860029595471098069.a n : ℤ) = A114828 (n + 1)

theorem P7860029595471098069.correct : P7860029595471098069.Spec := by
  intro n
  simp only [A114828, Nat.add_sub_cancel]

end A114828

/-! ## A114828.P2147293890485242885

`A114447(n+1)*A292586(A000079(n+1))`
-/

namespace A114828.P2147293890485242885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114447 (n + 1) * A292586 (A000079 (n + 1)).toNat

end

end A114828.P2147293890485242885

namespace A114828

/-- `A114447(n+1)*A292586(A000079(n+1))` -/
def P2147293890485242885.Spec : Prop :=
  ∀ n, P2147293890485242885.a n = A114828 (n + 1)

end A114828

/-! ## A114828.P13146828536545457386

`A055396(A287100(n+2))*A114447(n+1)`
-/

namespace A114828.P13146828536545457386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A287100 (n + 2)).toNat * A114447 (n + 1)

end

end A114828.P13146828536545457386

namespace A114828

/-- `A055396(A287100(n+2))*A114447(n+1)` -/
def P13146828536545457386.Spec : Prop :=
  ∀ n, P13146828536545457386.a n = A114828 (n + 1)

end A114828

/-! ## A114828.P5831701059131426060

`A114447(n+1)*A319708(A357713(n))`
-/

namespace A114828.P5831701059131426060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114447 (n + 1) * A319708 (A357713 n).toNat

end

end A114828.P5831701059131426060

namespace A114828

/-- `A114447(n+1)*A319708(A357713(n))` -/
def P5831701059131426060.Spec : Prop :=
  ∀ n, P5831701059131426060.a n = A114828 (n + 1)

end A114828

/-!
# A114829: Each term is previous term plus floor of geometric mean of all previous terms.

The programs for A114829, there is no canonical definition to state claims against.
-/

/-! ## A114829.P14198627128005297869

`∑[A048766(A280128(5*n))]`
-/

namespace A114829.P14198627128005297869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A280128 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114829.P14198627128005297869

/-! ## A114829.P13988804738316691532

`∑[A048766(A048448(A047967(n)))]`
-/

namespace A114829.P13988804738316691532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048448 (A047967 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114829.P13988804738316691532

/-! ## A114829.P10377228877689402588

`∑[A048766(A245434(A017089(n)))]`
-/

namespace A114829.P10377228877689402588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A245434 (A017089 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114829.P10377228877689402588

/-! ## A114829.P9694686075644490996

`a(n-1)+A048766(A280128(5*n))+A000007(n)` with `a(0)=1`
-/

namespace A114829.P9694686075644490996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A048766 (A280128 (5 * n)).toNat + A000007 n)

end

end A114829.P9694686075644490996

/-! ## A114829.P2586098169922466960

`a(n-1)+A048766(A280128(5*n))+A000038(n+1)` with `a(0)=1`
-/

namespace A114829.P2586098169922466960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A048766 (A280128 (5 * n)).toNat + A000038 (n + 1))

end

end A114829.P2586098169922466960

/-!
# A114830: Each term is previous term plus ceiling of geometric mean of all previous terms.

The programs for A114830, there is no canonical definition to state claims against.
-/

/-! ## A114830.P2428124830950412220

`∑[A056556(∑[A143184(n)])]`
-/

namespace A114830.P2428124830950412220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114830.P2428124830950412220

/-! ## A114830.P15543273124570430618

`∑[A056556(A261203(n))]`
-/

namespace A114830.P15543273124570430618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A261203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114830.P15543273124570430618

/-! ## A114830.P13073597102328405477

`∑[A103298(A325862(n))]`
-/

namespace A114830.P13073597102328405477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A325862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114830.P13073597102328405477

/-! ## A114830.P3425691377830129465

`∑[A048766(A327381(n+3))]`
-/

namespace A114830.P3425691377830129465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A327381 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114830.P3425691377830129465

/-! ## A114830.P11520533772760342129

`A003056(A053767(a(n-1)))` with `a(0)=1`
-/

namespace A114830.P11520533772760342129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 (A053767 (a (n - 1)).toNat).toNat

end

end A114830.P11520533772760342129

/-!
# A114831: Each term is previous term plus floor of harmonic mean of two previous terms.

The programs for A114831, there is no canonical definition to state claims against.
-/

/-! ## A114831.P15293317952644411612

`A114832(A028310(n))+A001221(A000079(n))`
-/

namespace A114831.P15293317952644411612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114832 (A028310 n).toNat + A001221 (A000079 n).toNat

end

end A114831.P15293317952644411612

/-! ## A114831.P1823588287723101762

`A008620(A114832(n+2))`
-/

namespace A114831.P1823588287723101762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A114832 (n + 2)).toNat

end

end A114831.P1823588287723101762

/-! ## A114831.P3692939323506712314

`A195072(2*A134009(n+1))`
-/

namespace A114831.P3692939323506712314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (2 * A134009 (n + 1)).toNat

end

end A114831.P3692939323506712314

/-!
# A114832: Each term is previous term plus ceiling of harmonic mean of two previous terms.

The programs for A114832, there is no canonical definition to state claims against.
-/

/-! ## A114832.P8600372920471047797

`A023443(A114831(n+2))`
-/

namespace A114832.P8600372920471047797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A114831 (n + 2)).toNat

end

end A114832.P8600372920471047797

/-! ## A114832.P2852786693403317747

`A023445(A114831(n+2)+2)`
-/

namespace A114832.P2852786693403317747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A114831 (n + 2) + 2).toNat

end

end A114832.P2852786693403317747

/-! ## A114832.P2336540393738107402

`A028310(A114831(n+2)-1)`
-/

namespace A114832.P2336540393738107402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A114831 (n + 2) - 1).toNat

end

end A114832.P2336540393738107402

/-! ## A114832.P690183206146983231

`A114831(n+2)-A001221(A000079(n+1))`
-/

namespace A114832.P690183206146983231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114831 (n + 2) - A001221 (A000079 (n + 1)).toNat

end

end A114832.P690183206146983231

/-! ## A114832.P14904574715567127483

`A114831(n+2)-A001222(A061712(n+1))`
-/

namespace A114832.P14904574715567127483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114831 (n + 2) - A001222 (A061712 (n + 1)).toNat

end

end A114832.P14904574715567127483

/-!
# A114833: Each term is previous term plus ceiling of root mean square of two previous terms.

The programs for A114833, the canonical program `A114833.P2323859100314250132` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114833 has offset 0).

The definition of A114833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114833.P2323859100314250132

`a(n-1)+ceil(sqrt((a(n-1)²+a(n-2)²)/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114833

/-- `a(n-1)+ceil(sqrt((a(n-1)²+a(n-2)²)/2))` -/
def P2323859100314250132.Spec : Prop :=
  ∀ n, P2323859100314250132.a n = A114833 n

theorem P2323859100314250132.correct : P2323859100314250132.Spec := by
  intro n
  simp only [A114833]

end A114833

/-! ## A114833.P8076889716181175331

`∑[∑[A094718(∑[n+3]-2)]]`
-/

namespace A114833.P8076889716181175331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094718 (∑ j ∈ Finset.range (n + 1), f3 j - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114833.P8076889716181175331

namespace A114833

/-- `∑[∑[A094718(∑[n+3]-2)]]` -/
def P8076889716181175331.Spec : Prop :=
  ∀ n, P8076889716181175331.a n = A114833 n

end A114833

/-! ## A114833.P10450092642992465047

`A284275(n+1)+A284261(A319616(n))`
-/

namespace A114833.P10450092642992465047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284275 (n + 1) + A284261 (A319616 n).toNat

end

end A114833.P10450092642992465047

namespace A114833

/-- `A284275(n+1)+A284261(A319616(n))` -/
def P10450092642992465047.Spec : Prop :=
  ∀ n, P10450092642992465047.a n = A114833 n

end A114833

/-! ## A114833.P14622088488583213891

`A276581(n*A082582(n))`
-/

namespace A114833.P14622088488583213891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 ((n : ℤ) * A082582 n).toNat

end

end A114833.P14622088488583213891

namespace A114833

/-- `A276581(n*A082582(n))` -/
def P14622088488583213891.Spec : Prop :=
  ∀ n, P14622088488583213891.a n = A114833 n

end A114833

/-! ## A114833.P4448309063690118314

`A276581(lcm(n, A082582(n)))`
-/

namespace A114833.P4448309063690118314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (Int.lcm (n : ℤ) (A082582 n))

end

end A114833.P4448309063690118314

namespace A114833

/-- `A276581(lcm(n, A082582(n)))` -/
def P4448309063690118314.Spec : Prop :=
  ∀ n, P4448309063690118314.a n = A114833 n

end A114833

/-!
# A114834: Each term is previous term plus floor of root mean square of two previous terms.

The programs for A114834, there is no canonical definition to state claims against.
-/

/-! ## A114834.P5784768699974923526

`A100196(A238826(n+1)+A026757(n))`
-/

namespace A114834.P5784768699974923526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A238826 (n + 1) + A026757 n).toNat

end

end A114834.P5784768699974923526

/-! ## A114834.P9142039375639321107

`A100196(A218552(n+1)+A218552(n))`
-/

namespace A114834.P9142039375639321107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A218552 (n + 1) + A218552 n).toNat

end

end A114834.P9142039375639321107

/-! ## A114834.P14881804408569387773

`A001462(A000598(n)+A000045(2*n))`
-/

namespace A114834.P14881804408569387773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000598 n + A000045 (2 * n)).toNat

end

end A114834.P14881804408569387773

/-! ## A114834.P11339329258571371035

`A001462(A048816(2*n+1)-A241447(n))`
-/

namespace A114834.P11339329258571371035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A048816 (2 * n + 1) - A241447 n).toNat

end

end A114834.P11339329258571371035

/-! ## A114834.P1182906175198230918

`A001462(A048816(2*n+1)-A303338(n+1))`
-/

namespace A114834.P1182906175198230918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A048816 (2 * n + 1) - A303338 (n + 1)).toNat

end

end A114834.P1182906175198230918

/-!
# A114836: Indices of Fibonacci numbers with 9 distinct prime factors.

The programs for A114836, there is no canonical definition to state claims against.
-/

/-! ## A114836.P16817872582032769854

`eq[9, A022307(n)]`
-/

namespace A114836.P16817872582032769854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114836.P16817872582032769854

/-! ## A114836.P13989331308160366111

`lt[A167614(n+1), A351870(A022307(n)+2)]`
-/

namespace A114836.P13989331308160366111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A022307 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114836.P13989331308160366111

/-! ## A114836.P5770880894496353914

`lt[A007094(2*n+1), A181061(A022307(n))]`
-/

namespace A114836.P5770880894496353914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114836.P5770880894496353914

/-! ## A114836.P15358875075619910466

`lt[A023717(n+1), A181061(A022307(n))]`
-/

namespace A114836.P15358875075619910466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114836.P15358875075619910466

/-! ## A114836.P15571108658980372202

`lt[A023717(n), A181061(A022307(n))-1]`
-/

namespace A114836.P15571108658980372202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A022307 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114836.P15571108658980372202

/-!
# A114837: Indices of Fibonacci numbers with 8 distinct prime factors.

The programs for A114837, there is no canonical definition to state claims against.
-/

/-! ## A114837.P3373065188619722180

`eq[8, A022307(n)]`
-/

namespace A114837.P3373065188619722180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114837.P3373065188619722180

/-! ## A114837.P2716511791442032895

`lt[A333552(n+1), A181061(A022307(n)+1)]`
-/

namespace A114837.P2716511791442032895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A022307 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114837.P2716511791442032895

/-! ## A114837.P16790514202822081768

`lt[A260273(n+1), A181061(A022307(n)+1)]`
-/

namespace A114837.P16790514202822081768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A022307 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114837.P16790514202822081768

/-! ## A114837.P11085654534915580175

`A303217(A056126(n)+29)`
-/

namespace A114837.P11085654534915580175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (A056126 n + 29).toNat

end

end A114837.P11085654534915580175

/-! ## A114837.P9078292437845819285

`A303217(eq[5, A219347(n)])`
-/

namespace A114837.P9078292437845819285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114837.P9078292437845819285

/-!
# A114838: Indices of Fibonacci numbers with 7 distinct prime factors.

The programs for A114838, there is no canonical definition to state claims against.
-/

/-! ## A114838.P2510866822200942729

`eq[7, A022307(n)]`
-/

namespace A114838.P2510866822200942729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114838.P2510866822200942729

/-! ## A114838.P10206192007434335210

`lt[A000045(xor(8, A022307(n)+1)), 1]`
-/

namespace A114838.P10206192007434335210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 8 (A022307 n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114838.P10206192007434335210

/-! ## A114838.P265765962431655543

`lt[xor(8, A022307(n)+1), A014306(n)]`
-/

namespace A114838.P265765962431655543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A022307 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114838.P265765962431655543

/-! ## A114838.P1426597625386745057

`lt[A162410(xor(8, A022307(n)+1)+1), 1]`
-/

namespace A114838.P1426597625386745057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162410 (Int.xor 8 (A022307 n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114838.P1426597625386745057

/-! ## A114838.P17089485888557585122

`lt[A329436(xor(8, A022307(n)+1)+1), 1]`
-/

namespace A114838.P17089485888557585122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329436 (Int.xor 8 (A022307 n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114838.P17089485888557585122

/-! ## A114838.P12412626715839507080

`lt[A000040(xor(8, A022307(n)+1)+1)-1, 2]`
-/

namespace A114838.P12412626715839507080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.xor 8 (A022307 n + 1) + 1).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114838.P12412626715839507080

/-! ## A114838.P1561566123581697428

`lt[A019565(xor(8, A022307(n)+1)+1)-1, 2]`
-/

namespace A114838.P1561566123581697428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor 8 (A022307 n + 1) + 1).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114838.P1561566123581697428

/-!
# A114839: Indices of Fibonacci numbers with 6 distinct prime factors.

The programs for A114839, there is no canonical definition to state claims against.
-/

/-! ## A114839.P8425701927710521261

`eq[6, A022307(n)]`
-/

namespace A114839.P8425701927710521261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114839.P8425701927710521261

/-! ## A114839.P9337289901955535410

`lt[A162410(xor(8, A022307(n)+2)+1), 1]`
-/

namespace A114839.P9337289901955535410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162410 (Int.xor 8 (A022307 n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114839.P9337289901955535410

/-! ## A114839.P4157785647511498378

`lt[A000038(n), A185016(A022307(n))]`
-/

namespace A114839.P4157785647511498378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114839.P4157785647511498378

/-! ## A114839.P8511100676376802685

`lt[A185016(n), A185016(A022307(n))]`
-/

namespace A114839.P8511100676376802685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114839.P8511100676376802685

/-! ## A114839.P13225380471410710138

`lt[A034974(A022307(n)+1), A022307(n)]`
-/

namespace A114839.P13225380471410710138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (A022307 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114839.P13225380471410710138

/-!
# A114840: Indices of Fibonacci numbers with 5 distinct prime factors.

The programs for A114840, there is no canonical definition to state claims against.
-/

/-! ## A114840.P7291726543686174360

`eq[5, A022307(n)]`
-/

namespace A114840.P7291726543686174360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114840.P7291726543686174360

/-! ## A114840.P17036164825235510124

`lt[xor(8, (A049820(A022307(n)+1)+1)²), 6]`
-/

namespace A114840.P17036164825235510124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 ((A049820 (A022307 n + 1).toNat + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114840.P17036164825235510124

/-! ## A114840.P370564031140715329

`lt[A000038(n), A185016(A022307(n)+1)]`
-/

namespace A114840.P370564031140715329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114840.P370564031140715329

/-! ## A114840.P1262967346414253408

`lt[A185016(n), A185016(A022307(n)+1)]`
-/

namespace A114840.P1262967346414253408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114840.P1262967346414253408

/-! ## A114840.P11135312993389654361

`lt[A034974(A022307(n)+2), A022307(n)]`
-/

namespace A114840.P11135312993389654361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (A022307 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114840.P11135312993389654361

/-!
# A114841: Indices of Fibonacci numbers with 3 distinct prime factors.

The programs for A114841, there is no canonical definition to state claims against.
-/

/-! ## A114841.P11407294334014470200

`eq[3, A022307(n)]`
-/

namespace A114841.P11407294334014470200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114841.P11407294334014470200

/-! ## A114841.P12460685449275972611

`lt[xor(9, A333552(A022307(n)+1)), 2]`
-/

namespace A114841.P12460685449275972611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A333552 (A022307 n + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114841.P12460685449275972611

/-! ## A114841.P7964961494617233439

`lt[A000038(n), A185016(A022307(n)+3)]`
-/

namespace A114841.P7964961494617233439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114841.P7964961494617233439

/-! ## A114841.P2177428009912375054

`lt[A185016(n), A185016(A022307(n)+3)]`
-/

namespace A114841.P2177428009912375054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114841.P2177428009912375054

/-! ## A114841.P6161943571417399774

`lt[A000038(n), A185016(2*A022307(n))]`
-/

namespace A114841.P6161943571417399774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (2 * A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114841.P6161943571417399774

/-! ## A114841.P8569470432757265452

`lt[A185016(n), A185016(2*A022307(n))]`
-/

namespace A114841.P8569470432757265452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (2 * A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114841.P8569470432757265452

/-!
# A114842: Indices of Fibonacci numbers with 2 distinct prime factors.

The programs for A114842, there is no canonical definition to state claims against.
-/

/-! ## A114842.P4099907609922089316

`eq[2, A022307(n)]`
-/

namespace A114842.P4099907609922089316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114842.P4099907609922089316

/-! ## A114842.P14225355671955622098

`lt[A000045(xor(2, A022307(n))), 1]`
-/

namespace A114842.P14225355671955622098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 2 (A022307 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114842.P14225355671955622098

/-! ## A114842.P9059140050296642018

`lt[A019565(xor(2, A022307(n))), 2]`
-/

namespace A114842.P9059140050296642018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor 2 (A022307 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114842.P9059140050296642018

/-! ## A114842.P10547325247741001912

`lt[(2-A022307(n))², A158388(n)]`
-/

namespace A114842.P10547325247741001912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A022307 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114842.P10547325247741001912

/-! ## A114842.P772002661148485458

`lt[A247169(A022307(n)), A000038(n)]`
-/

namespace A114842.P772002661148485458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247169 (A022307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114842.P772002661148485458

/-! ## A114842.P14962956707553043797

`lt[A247169(A022307(n)), A158388(n)]`
-/

namespace A114842.P14962956707553043797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247169 (A022307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114842.P14962956707553043797

/-! ## A114842.P1219050887761884378

`lt[A247169(A022307(n)), A112347(n)²]`
-/

namespace A114842.P1219050887761884378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247169 (A022307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114842.P1219050887761884378

/-! ## A114842.P18353521133006559733

`lt[A247169(A022307(n)), A294937(n+1)]`
-/

namespace A114842.P18353521133006559733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247169 (A022307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114842.P18353521133006559733

/-!
# A114843: Indices of Fibonacci numbers with 4 distinct prime factors.

The programs for A114843, there is no canonical definition to state claims against.
-/

/-! ## A114843.P7680872838828591892

`eq[4, A022307(n)]`
-/

namespace A114843.P7680872838828591892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114843.P7680872838828591892

/-! ## A114843.P18137014865149971375

`lt[xor(9, A098166(A022307(n)+2)+1), 2]`
-/

namespace A114843.P18137014865149971375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A098166 (A022307 n + 2).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114843.P18137014865149971375

/-! ## A114843.P10242143847898984787

`lt[A000038(n), A185016(A022307(n)+2)]`
-/

namespace A114843.P10242143847898984787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114843.P10242143847898984787

/-! ## A114843.P7080523579360518466

`lt[A185016(n), A185016(A022307(n)+2)]`
-/

namespace A114843.P7080523579360518466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A022307 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114843.P7080523579360518466

/-! ## A114843.P17343578609050963928

`lt[A236542(A022307(n)+2), A022307(n)+2]`
-/

namespace A114843.P17343578609050963928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236542 (A022307 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114843.P17343578609050963928

/-!
# A114844: Sum of first n digits of Pi to digit-wise power of first n digits of e.

The programs for A114844, there is no canonical definition to state claims against.
-/

/-! ## A114844.P10263413074067467368

`∑[A000796(n)^A001113(n)]`
-/

namespace A114844.P10263413074067467368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) : ℚ) ^ (A001113 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114844.P10263413074067467368

/-! ## A114844.P1125798279519180267

`∑[Δ[A059582(n)]^A001113(n)]`
-/

namespace A114844.P1125798279519180267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A001113 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114844.P1125798279519180267

/-! ## A114844.P849080472201954592

`∑[(9-A030644(n))^A001113(n)]`
-/

namespace A114844.P849080472201954592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1) : ℚ) ^ (A001113 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114844.P849080472201954592

/-! ## A114844.P2970964975154938260

`∑[A001355(Δ[n²])^A001113(n)]`
-/

namespace A114844.P2970964975154938260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) ^ (A001113 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114844.P2970964975154938260

/-! ## A114844.P3722453996048224440

`∑[A000796(n)^A001355(2*(n+1))]`
-/

namespace A114844.P3722453996048224440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) : ℚ) ^ (A001355 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114844.P3722453996048224440

/-! ## A114844.P10681605090572777332

`∑[A110766(2*n+1)^A001113(n)]`
-/

namespace A114844.P10681605090572777332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110766 (2 * n + 1) : ℚ) ^ (A001113 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114844.P10681605090572777332

/-! ## A114844.P12787553447089410308

`∑[A001355(2*n+1)^A001355(2*(n+1))]`
-/

namespace A114844.P12787553447089410308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 (2 * n + 1) : ℚ) ^ (A001355 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114844.P12787553447089410308

/-!
# A114845: Slowest growing sequence of semiprimes having the semiprime-pairwise-average property: for any i,j, (a(i)+a(j))/2 is semiprime.

The programs for A114845, there is no canonical definition to state claims against.
-/

/-! ## A114845.P15127381237367526834

`2*A164979(n+1)`
-/

namespace A114845.P15127381237367526834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164979 (n + 1)

end

end A114845.P15127381237367526834

/-! ## A114845.P5582981233642297967

`ceil(4/2*A164979(A005555(n)))`
-/

namespace A114845.P5582981233642297967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 2 * (A164979 (A005555 n).toNat : ℚ)⌉

end

end A114845.P5582981233642297967

/-! ## A114845.P16654709024681584684

`A164979(n+1)+A164979(-xor(n, -1))`
-/

namespace A114845.P16654709024681584684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164979 (n + 1) + A164979 (-Int.xor (n : ℤ) (-1)).toNat

end

end A114845.P16654709024681584684

/-! ## A114845.P1288681040149527770

`A164979(n+1)+A164979(A005555(n))`
-/

namespace A114845.P1288681040149527770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164979 (n + 1) + A164979 (A005555 n).toNat

end

end A114845.P1288681040149527770

/-! ## A114845.P13763358381079377828

`A164979(A000027(n+1))+A164979(n+1)`
-/

namespace A114845.P13763358381079377828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164979 (A000027 (n + 1)).toNat + A164979 (n + 1)

end

end A114845.P13763358381079377828

/-!
# A114846: Numbers of the form p^p - p!, where p is a prime.

The programs for A114846, the canonical program `A114846.P6612991570136823220` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114846 has offset 1).

The definition of A114846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114846.P6612991570136823220

`A000040(n+1)^A000040(n+1)-A000040(n+1)!`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114846

/-- `A000040(n+1)^A000040(n+1)-A000040(n+1)!` -/
def P6612991570136823220.Spec : Prop :=
  ∀ n, P6612991570136823220.a n = (A114846 (n + 1) : ℚ)

end A114846

/-! ## A114846.P12436626027897066067

`A036679(p?[comp[n²]])`
-/

namespace A114846.P12436626027897066067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036679 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A114846.P12436626027897066067

namespace A114846

/-- `A036679(p?[comp[n²]])` -/
def P12436626027897066067.Spec : Prop :=
  ∀ n, P12436626027897066067.a n = A114846 (n + 1)

end A114846

/-! ## A114846.P328878640481527614

`record[(n+2)^A006530(n+2)-(n+2)!]`
-/

namespace A114846.P328878640481527614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A006530 (n + 2) : ℤ) - (Nat.factorial (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114846.P328878640481527614

namespace A114846

/-- `record[(n+2)^A006530(n+2)-(n+2)!]` -/
def P328878640481527614.Spec : Prop :=
  ∀ n, P328878640481527614.a n = (A114846 (n + 1) : ℚ)

end A114846

/-! ## A114846.P14279582230913248770

`record[(n+2)^A014963(n+2)-(n+2)!]`
-/

namespace A114846.P14279582230913248770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A014963 (n + 2) : ℤ) - (Nat.factorial (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114846.P14279582230913248770

namespace A114846

/-- `record[(n+2)^A014963(n+2)-(n+2)!]` -/
def P14279582230913248770.Spec : Prop :=
  ∀ n, P14279582230913248770.a n = (A114846 (n + 1) : ℚ)

end A114846

/-! ## A114846.P6539826507739374956

`record[(n+2)^A020639(n+2)-(n+2)!]`
-/

namespace A114846.P6539826507739374956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A020639 (n + 2) : ℤ) - (Nat.factorial (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114846.P6539826507739374956

namespace A114846

/-- `record[(n+2)^A020639(n+2)-(n+2)!]` -/
def P6539826507739374956.Spec : Prop :=
  ∀ n, P6539826507739374956.a n = (A114846 (n + 1) : ℚ)

end A114846

/-!
# A114847: Primes that can be partitioned as sum of k primes, where k is the number of digits in n-th prime.

The programs for A114847, there is no canonical definition to state claims against.
-/

/-! ## A114847.P4844675213676272192

`p?[A008578(n+2)+and(2, A230774(n+1))]`
-/

namespace A114847.P4844675213676272192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + Int.land 2 (A230774 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114847.P4844675213676272192

/-! ## A114847.P3898568996530373723

`p?[A135761(A292438(n)+A135761(n+1))]`
-/

namespace A114847.P3898568996530373723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (A292438 n + A135761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114847.P3898568996530373723

/-! ## A114847.P4427712262246862093

`p?[∑[A161638(2*n+3)]]`
-/

namespace A114847.P4427712262246862093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161638 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114847.P4427712262246862093

/-! ## A114847.P11211893737565687754

`p?[A114983(n+1)]`
-/

namespace A114847.P11211893737565687754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114847.P11211893737565687754

/-! ## A114847.P7132684363489635

`p?[comp[A164922(n+8)-1]]`
-/

namespace A114847.P7132684363489635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164922 (n + 8) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114847.P7132684363489635

/-!
# A114849: F(4n+4)/F(4)-F(3n+3)/F(3) where F(n)=A000045(n).

The programs for A114849, the canonical program `A114849.P13755260774206618270` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114849 has offset 0).

The definition of A114849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114849.P13755260774206618270

`A000045(4*n+4)/A000045(4)-A000045(3*n+3)/A000045(3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114849

/-- `A000045(4*n+4)/A000045(4)-A000045(3*n+3)/A000045(3)` -/
def P13755260774206618270.Spec : Prop :=
  ∀ n, P13755260774206618270.a n = (A114849 n : ℚ)

end A114849

/-! ## A114849.P11860854754862340205

`∑[A049685(n)-A033887(n)]`
-/

namespace A114849.P11860854754862340205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049685 n - A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114849.P11860854754862340205

namespace A114849

/-- `∑[A049685(n)-A033887(n)]` -/
def P11860854754862340205.Spec : Prop :=
  ∀ n, P11860854754862340205.a n = A114849 n

end A114849

/-! ## A114849.P7953609689237496524

`A004187(n+1)-A001076(n+1)`
-/

namespace A114849.P7953609689237496524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1) - A001076 (n + 1)

end

end A114849.P7953609689237496524

namespace A114849

/-- `A004187(n+1)-A001076(n+1)` -/
def P7953609689237496524.Spec : Prop :=
  ∀ n, P7953609689237496524.a n = A114849 n

end A114849

/-! ## A114849.P14422031779980414170

`A000045(4*(n+1))/3-A000045(3*(n+1))/2`
-/

namespace A114849.P14422031779980414170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * (n + 1)) : ℚ) / 3 - (A000045 (3 * (n + 1)) : ℚ) / 2

end

end A114849.P14422031779980414170

namespace A114849

/-- `A000045(4*(n+1))/3-A000045(3*(n+1))/2` -/
def P14422031779980414170.Spec : Prop :=
  ∀ n, P14422031779980414170.a n = (A114849 n : ℚ)

end A114849

/-! ## A114849.P16496501443730964273

`A004187(n+1)-A004695(A008486(n+1))`
-/

namespace A114849.P16496501443730964273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1) - A004695 (A008486 (n + 1)).toNat

end

end A114849.P16496501443730964273

namespace A114849

/-- `A004187(n+1)-A004695(A008486(n+1))` -/
def P16496501443730964273.Spec : Prop :=
  ∀ n, P16496501443730964273.a n = A114849 n

end A114849

/-! ## A114849.P10299898350093227338

`A004187(n+1)-A059973(A005843(n+1))`
-/

namespace A114849.P10299898350093227338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1) - A059973 (A005843 (n + 1)).toNat

end

end A114849.P10299898350093227338

namespace A114849

/-- `A004187(n+1)-A059973(A005843(n+1))` -/
def P10299898350093227338.Spec : Prop :=
  ∀ n, P10299898350093227338.a n = A114849 n

end A114849

/-! ## A114849.P16005304835281303009

`A004187(n+1)+A049652(n)-A049652(n+1)`
-/

namespace A114849.P16005304835281303009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1) + (A049652 n - A049652 (n + 1))

end

end A114849.P16005304835281303009

namespace A114849

/-- `A004187(n+1)+A049652(n)-A049652(n+1)` -/
def P16005304835281303009.Spec : Prop :=
  ∀ n, P16005304835281303009.a n = A114849 n

end A114849

/-!
# A114850: 

The programs for A114850, there is no canonical definition to state claims against.
-/

/-! ## A114850.P9353092498329079058

`A000312(A001358(n+1))`
-/

namespace A114850.P9353092498329079058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A001358 (n + 1)).toNat

end

end A114850.P9353092498329079058

/-! ## A114850.P10921877850631723441

`A000312(eq[2, A001222(n+1)]+1)`
-/

namespace A114850.P10921877850631723441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A114850.P10921877850631723441

/-! ## A114850.P13419143209073018420

`A000312(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=2`
-/

namespace A114850.P13419143209073018420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114850.P13419143209073018420

/-! ## A114850.P2228637022739347644

`(eq[2, A001222(n+1)]+1)^A001358(n+1)`
-/

namespace A114850.P2228637022739347644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) ^ (A001358 (n + 1) : ℤ)

end

end A114850.P2228637022739347644

/-! ## A114850.P6333071007287958401

`(eq[2, A001222(n+1)]+1)^sqrt(A074985(n+1))`
-/

namespace A114850.P6333071007287958401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℝ) ^ (Real.sqrt (A074985 (n + 1) : ℝ))

end

end A114850.P6333071007287958401

/-!
# A114851: Number of lambda calculus terms of size n, where size(lambda x.M) = 2 + size(M), size(M N) = 2 + size(M) + size(N), and size(V) = 1 + i for a variable V bound by the i-th enclosing lambda (corresponding to a binary encoding).

The programs for A114851, there is no canonical definition to state claims against.
-/

/-! ## A114851.P9296325184791145929

`A089408(n)-A019590(A030137(n+1))`
-/

namespace A114851.P9296325184791145929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n - A019590 (A030137 (n + 1)).toNat

end

end A114851.P9296325184791145929

/-! ## A114851.P15188009381513358195

`A089408(n)-A071024(A223885(n+1))`
-/

namespace A114851.P15188009381513358195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n - A071024 (A223885 (n + 1)).toNat

end

end A114851.P15188009381513358195

/-! ## A114851.P1503289149421270078

`A047072(A007590(n+1))-A071024(A223885(n+1))`
-/

namespace A114851.P1503289149421270078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A007590 (n + 1)).toNat - A071024 (A223885 (n + 1)).toNat

end

end A114851.P1503289149421270078

/-! ## A114851.P12219735310547773461

`A047072(A080476(n+1))-A071024(A223885(n+1))`
-/

namespace A114851.P12219735310547773461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A080476 (n + 1)).toNat - A071024 (A223885 (n + 1)).toNat

end

end A114851.P12219735310547773461

/-! ## A114851.P17431326455201867608

`gcd(A182122(n)+A210628(n)², A210628(n))-A071024(A223885(n+1))`
-/

namespace A114851.P17431326455201867608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A182122 n + A210628 n ^ 2) (A210628 n) : ℤ) - A071024 (A223885 (n + 1)).toNat

end

end A114851.P17431326455201867608

/-!
# A114852: The number of closed lambda calculus terms of size n, where size(lambda x.M)=2+size(M), size(M N)=2+size(M)+size(N), and size(V)=1+i for a variable V bound by the i-th enclosing lambda (corresponding to a binary encoding).

The programs for A114852, there is no canonical definition to state claims against.
-/

/-! ## A114852.P15859625811511149196

`A333958(n+2-A006530(2^n))`
-/

namespace A114852.P15859625811511149196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333958 ((n + 2 : ℤ) - A006530 (2 ^ n)).toNat

end

end A114852.P15859625811511149196

/-! ## A114852.P9241749277666428351

`A333958(A028310(n)*A278657(n))`
-/

namespace A114852.P9241749277666428351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333958 (A028310 n * A278657 n).toNat

end

end A114852.P9241749277666428351

/-! ## A114852.P4467641148189517896

`A333958(A028310(n)^A278657(n))`
-/

namespace A114852.P4467641148189517896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333958 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A114852.P4467641148189517896

/-! ## A114852.P18395785603202594027

`A333958(C(A028310(n), A278657(n)))`
-/

namespace A114852.P18395785603202594027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333958 (Nat.choose (A028310 n).toNat (A278657 n).toNat)

end

end A114852.P18395785603202594027

/-! ## A114852.P1461344979706480055

`A001221(A000079(n))*A333958(A028310(n))`
-/

namespace A114852.P1461344979706480055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 n).toNat * A333958 (A028310 n).toNat

end

end A114852.P1461344979706480055

/-!
# A114853: a(n) = floor(n^n/n!!).

The programs for A114853, the canonical program `A114853.P17543835691522968281` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114853 has offset 1).

The definition of A114853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114853.P17543835691522968281

`floor(A000312(n+1)/A006882(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114853

/-- `floor(A000312(n+1)/A006882(n+1))` -/
def P17543835691522968281.Spec : Prop :=
  ∀ n, P17543835691522968281.a n = A114853 (n + 1)

theorem P17543835691522968281.correct : P17543835691522968281.Spec := by
  intro n
  simp only [A114853, Nat.add_sub_cancel]

end A114853

/-! ## A114853.P2850589226429467005

`A033774(A239215(2*(n+1))+A001764(n+2))`
-/

namespace A114853.P2850589226429467005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033774 (A239215 (2 * (n + 1)) + A001764 (n + 2)).toNat

end

end A114853.P2850589226429467005

namespace A114853

/-- `A033774(A239215(2*(n+1))+A001764(n+2))` -/
def P2850589226429467005.Spec : Prop :=
  ∀ n, P2850589226429467005.a n = A114853 (n + 1)

end A114853

/-!
# A114854: a(n) = floor(n^(n/2)/n!!).

The programs for A114854, the canonical program `A114854.P9377016747603560014` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114854 has offset 1).

The definition of A114854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114854.P9377016747603560014

`floor(sqrt(A000312(n+1))/A006882(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114854

/-- `floor(sqrt(A000312(n+1))/A006882(n+1))` -/
def P9377016747603560014.Spec : Prop :=
  ∀ n, P9377016747603560014.a n = A114854 (n + 1)

theorem P9377016747603560014.correct : P9377016747603560014.Spec := by
  intro n
  simp only [A114854, Nat.add_sub_cancel]

end A114854

/-! ## A114854.P17743046466759642776

`A194988(A038722(a(n-4)+2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A114854.P17743046466759642776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 4] fun n a =>
  A194988 (A038722 (a (n - 4) + 2 * a (n - 2)).toNat).toNat

end

end A114854.P17743046466759642776

namespace A114854

/-- `A194988(A038722(a(n-4)+2*a(n-2)))` -/
def P17743046466759642776.Spec : Prop :=
  ∀ n, P17743046466759642776.a n = A114854 (n + 1)

end A114854

/-!
# A114855: Expansion of q^(-1/3) * (eta(q) * eta(q^4))^2 / eta(q^2) in powers of q.

The programs for A114855, there is no canonical definition to state claims against.
-/

/-! ## A114855.P6628506413418743758

`(-1)^n*A113277(n)`
-/

namespace A114855.P6628506413418743758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113277 n

end

end A114855.P6628506413418743758

/-! ## A114855.P8189750798598764696

`A113277(n)*A219977(n)`
-/

namespace A114855.P8189750798598764696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113277 n * A219977 n

end

end A114855.P8189750798598764696

/-! ## A114855.P8173294327070449336

`A113277(n)*A309873(n+1)`
-/

namespace A114855.P8173294327070449336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113277 n * A309873 (n + 1)

end

end A114855.P8173294327070449336

/-! ## A114855.P1945847594101507555

`A113277(n)/Δ[A265331(n+1)]`
-/

namespace A114855.P1945847594101507555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A114855.P1945847594101507555

/-! ## A114855.P4787635196591175228

`A113277(n)*A113297(A007814(n+1))`
-/

namespace A114855.P4787635196591175228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113277 n * A113297 (A007814 (n + 1)).toNat

end

end A114855.P4787635196591175228

/-! ## A114855.P10082222959594503682

`A113277(n)/A010815(A000326(n))`
-/

namespace A114855.P10082222959594503682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113277 n : ℚ) / (A010815 (A000326 n).toNat : ℚ)

end

end A114855.P10082222959594503682

/-!
# A114856: Indices n of ("bad") Gram points g(n) for which (-1)^n Z(g(n)) < 0, where Z(t) is the Riemann-Siegel Z-function.

The programs for A114856, there is no canonical definition to state claims against.
-/

/-! ## A114856.P14665087928542919050

`A153815(n+1)+A288640(A153815(n+1))-2`
-/

namespace A114856.P14665087928542919050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (n + 1) + (A288640 (A153815 (n + 1)).toNat - 2)

end

end A114856.P14665087928542919050

/-! ## A114856.P16760002065365751189

`A153815(A111705(n+1))-A305936(3*n+2)`
-/

namespace A114856.P16760002065365751189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (A111705 (n + 1)).toNat - A305936 (3 * n + 2)

end

end A114856.P16760002065365751189

/-! ## A114856.P7747130918995965701

`A153815(A161980(n+1))-A305936(3*n+2)`
-/

namespace A114856.P7747130918995965701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (A161980 (n + 1)).toNat - A305936 (3 * n + 2)

end

end A114856.P7747130918995965701

/-! ## A114856.P16779563159803669588

`A153815(A032555(n+1))-A305936(3*n+2)`
-/

namespace A114856.P16779563159803669588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (A032555 (n + 1)).toNat - A305936 (3 * n + 2)

end

end A114856.P16779563159803669588

/-!
# A114862: Inverse permutation to sequence A114861.

The programs for A114862, there is no canonical definition to state claims against.
-/

/-! ## A114862.P9766849974502760489

`A083050(n)+A014038(A037270(n))`
-/

namespace A114862.P9766849974502760489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 n + A014038 (A037270 n).toNat

end

end A114862.P9766849974502760489

/-! ## A114862.P382094298918803309

`A083050(A088705(A033484(n))+n)`
-/

namespace A114862.P382094298918803309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (A088705 (A033484 n).toNat + (n : ℤ)).toNat

end

end A114862.P382094298918803309

/-! ## A114862.P14344598540470257933

`A083050(A121373(A083048(n))+n)`
-/

namespace A114862.P14344598540470257933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (A121373 (A083048 n).toNat + (n : ℤ)).toNat

end

end A114862.P14344598540470257933

/-! ## A114862.P9236933654571917128

`A083050(A121373(A154222(n))+n)`
-/

namespace A114862.P9236933654571917128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (A121373 (A154222 n).toNat + (n : ℤ)).toNat

end

end A114862.P9236933654571917128

/-! ## A114862.P7962527008387775109

`A083050(n)-A010815(A083048(n))`
-/

namespace A114862.P7962527008387775109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 n - A010815 (A083048 n).toNat

end

end A114862.P7962527008387775109

/-!
# A114868: a(n) = floor(n^(n/4)/n!!!!).

The programs for A114868, there is no canonical definition to state claims against.
-/

/-! ## A114868.P14243700226101071617

`A322832(Δ[A276571(A023105(n))])`
-/

namespace A114868.P14243700226101071617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A023105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (f1 (n + 1) - f1 n).toNat

end

end A114868.P14243700226101071617

/-!
# A114870: a(n) = A002627(n+1) - A002627(n) - n!.

The programs for A114870, the canonical program `A114870.P5398482328974684213` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114870 has offset 0).

The definition of A114870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002627(n+1)-A002627(n)-n!` (program `A114870.P5398482328974684213`, by `A114870.P5398482328974684213.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114870.P5398482328974684213

`A002627(n+1)-A002627(n)-n!`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114870

/-- `A002627(n+1)-A002627(n)-n!` -/
def P5398482328974684213.Spec : Prop :=
  ∀ n, P5398482328974684213.a n = A114870 n

theorem P5398482328974684213.correct : P5398482328974684213.Spec := by
  intro n
  simp only [A114870]

end A114870

/-! ## A114870.P16544987440684143775

`floor(Δ[e*n!])+1-(n+1)!`
-/

namespace A114870.P16544987440684143775
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + 1 - (Nat.factorial (n + 1) : ℤ)

end

end A114870.P16544987440684143775

namespace A114870

/-- `floor(Δ[e*n!])+1-(n+1)!` -/
def P16544987440684143775.Spec : Prop :=
  ∀ n, P16544987440684143775.a n = A114870 n

end A114870

/-! ## A114870.P11708883073867932246

`∑[-Δ[n*(a(n-1)-1)]]-n!*∑[1/n!]` with `a(0)=1`
-/

namespace A114870.P11708883073867932246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A114870.P11708883073867932246

namespace A114870

/-- `∑[-Δ[n*(a(n-1)-1)]]-n!*∑[1/n!]` -/
def P11708883073867932246.Spec : Prop :=
  ∀ n, P11708883073867932246.a n = (A114870 n : ℚ)

end A114870

/-! ## A114870.P2038625475242772703

`(2*n+1)*a(n-1)-(n-1)*((n+2)*a(n-2)-(n-2)*a(n-3))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A114870.P2038625475242772703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) - ((n : ℤ) - 1) * ((n + 2 : ℤ) * a (n - 2) - ((n : ℤ) - 2) * a (n - 3))

end

end A114870.P2038625475242772703

namespace A114870

/-- `(2*n+1)*a(n-1)-(n-1)*((n+2)*a(n-2)-(n-2)*a(n-3))` -/
def P2038625475242772703.Spec : Prop :=
  ∀ n, P2038625475242772703.a n = A114870 n

end A114870

/-! ## A114870.P3088117562215374855

`A193657(n)-n!`
-/

namespace A114870.P3088117562215374855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 n - (Nat.factorial n : ℤ)

end

end A114870.P3088117562215374855

namespace A114870

/-- `A193657(n)-n!` -/
def P3088117562215374855.Spec : Prop :=
  ∀ n, P3088117562215374855.a n = A114870 n

theorem P3088117562215374855.correct : P3088117562215374855.Spec := by
  intro n
  simp only [A114870, Nat.add_sub_cancel, A114870.P3088117562215374855.a, A114870.P5398482328974684213.a, A002627, A002627.P17737737289086489454.a, A193657, A193657.P433001986972353019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114870

/-! ## A114870.P12048752990767655524

`Δ[A002627(n)]-n!`
-/

namespace A114870.P12048752990767655524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.factorial n : ℤ)

end

end A114870.P12048752990767655524

namespace A114870

/-- `Δ[A002627(n)]-n!` -/
def P12048752990767655524.Spec : Prop :=
  ∀ n, P12048752990767655524.a n = A114870 n

theorem P12048752990767655524.correct : P12048752990767655524.Spec := by
  intro n
  simp only [A114870, Nat.add_sub_cancel, A114870.P12048752990767655524.f1, A114870.P12048752990767655524.a, A114870.P5398482328974684213.a, SequenceMachineLib.memo_apply]

end A114870

/-! ## A114870.P11897935072296451113

`A001339(n)-(n+1)!`
-/

namespace A114870.P11897935072296451113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n - (Nat.factorial (n + 1) : ℤ)

end

end A114870.P11897935072296451113

namespace A114870

/-- `A001339(n)-(n+1)!` -/
def P11897935072296451113.Spec : Prop :=
  ∀ n, P11897935072296451113.a n = A114870 n

end A114870

/-! ## A114870.P14975267546964016799

`Δ[A000522(n)]-(n+1)!`
-/

namespace A114870.P14975267546964016799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.factorial (n + 1) : ℤ)

end

end A114870.P14975267546964016799

namespace A114870

/-- `Δ[A000522(n)]-(n+1)!` -/
def P14975267546964016799.Spec : Prop :=
  ∀ n, P14975267546964016799.a n = A114870 n

end A114870

/-! ## A114870.P919574233919934497

`A193657(n)-A000142(n)`
-/

namespace A114870.P919574233919934497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 n - A000142 n

end

end A114870.P919574233919934497

namespace A114870

/-- `A193657(n)-A000142(n)` -/
def P919574233919934497.Spec : Prop :=
  ∀ n, P919574233919934497.a n = A114870 n

theorem P919574233919934497.correct : P919574233919934497.Spec := by
  intro n
  simp only [A114870, Nat.add_sub_cancel, A114870.P919574233919934497.a, A114870.P5398482328974684213.a, A000142, A000142.P3272619076580183195.a, A002627, A002627.P17737737289086489454.a, A193657, A193657.P433001986972353019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114870

/-! ## A114870.P17666726227238381521

`A001339(n)-A132159(∑[n])`
-/

namespace A114870.P17666726227238381521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n - A132159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114870.P17666726227238381521

namespace A114870

/-- `A001339(n)-A132159(∑[n])` -/
def P17666726227238381521.Spec : Prop :=
  ∀ n, P17666726227238381521.a n = A114870 n

end A114870

/-!
# A114871: Numbers of the form (p-1)p^k (where p is a prime and k>=0) in ascending order.

The programs for A114871, the canonical program `A114871.P5701746807057101` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114871 has offset 1).

The definition of A114871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114871.P5701746807057101

`lt[acot(1), A134269(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A114871

/-- `lt[acot(1), A134269(n+1)]+1` -/
def P5701746807057101.Spec : Prop :=
  ∀ n, (P5701746807057101.a n : ℤ) = A114871 (n + 1)

theorem P5701746807057101.correct : P5701746807057101.Spec := by
  intro n
  simp only [A114871, Nat.add_sub_cancel]

end A114871

/-! ## A114871.P3909640178511668352

`record[A000010(A034699(A034699(n+1)+n+1))]`
-/

namespace A114871.P3909640178511668352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A034699 (A034699 (n + 1) + (n + 1 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114871.P3909640178511668352

namespace A114871

/-- `record[A000010(A034699(A034699(n+1)+n+1))]` -/
def P3909640178511668352.Spec : Prop :=
  ∀ n, P3909640178511668352.a n = A114871 (n + 1)

end A114871

/-! ## A114871.P10315056761685493104

`eq[1, char[A085730(n+1)]]`
-/

namespace A114871.P10315056761685493104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085730 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114871.P10315056761685493104

namespace A114871

/-- `eq[1, char[A085730(n+1)]]` -/
def P10315056761685493104.Spec : Prop :=
  ∀ n, (P10315056761685493104.a n : ℤ) = A114871 (n + 1)

end A114871

/-! ## A114871.P14179309912324131265

`eq[1, A001221(A338702(n))]`
-/

namespace A114871.P14179309912324131265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338702 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114871.P14179309912324131265

namespace A114871

/-- `eq[1, A001221(A338702(n))]` -/
def P14179309912324131265.Spec : Prop :=
  ∀ n, (P14179309912324131265.a n : ℤ) = A114871 (n + 1)

end A114871

/-! ## A114871.P11615691432367600508

`eq[A000010(A338702(n)), A325402(n)]`
-/

namespace A114871.P11615691432367600508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A338702 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114871.P11615691432367600508

namespace A114871

/-- `eq[A000010(A338702(n)), A325402(n)]` -/
def P11615691432367600508.Spec : Prop :=
  ∀ n, (P11615691432367600508.a n : ℤ) = A114871 (n + 1)

end A114871

/-! ## A114871.P15415509028533544283

`record[(n+1)%(A014963(A338702(n+1))+n)]`
-/

namespace A114871.P15415509028533544283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A338702 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114871.P15415509028533544283

namespace A114871

/-- `record[(n+1)%(A014963(A338702(n+1))+n)]` -/
def P15415509028533544283.Spec : Prop :=
  ∀ n, P15415509028533544283.a n = A114871 (n + 1)

end A114871

/-! ## A114871.P5197330854023044518

`record[A000010(A034699(A081472(n+1)))]`
-/

namespace A114871.P5197330854023044518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A034699 (A081472 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114871.P5197330854023044518

namespace A114871

/-- `record[A000010(A034699(A081472(n+1)))]` -/
def P5197330854023044518.Spec : Prop :=
  ∀ n, P5197330854023044518.a n = A114871 (n + 1)

end A114871

/-! ## A114871.P17891883779567649704

`record[A011773(A032447(n+1))]`
-/

namespace A114871.P17891883779567649704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (A032447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114871.P17891883779567649704

namespace A114871

/-- `record[A011773(A032447(n+1))]` -/
def P17891883779567649704.Spec : Prop :=
  ∀ n, P17891883779567649704.a n = A114871 (n + 1)

end A114871

/-! ## A114871.P17192219090397120658

`∪[A006093(n+1), A114873(n+1)]`
-/

namespace A114871.P17192219090397120658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114871.P17192219090397120658

namespace A114871

/-- `∪[A006093(n+1), A114873(n+1)]` -/
def P17192219090397120658.Spec : Prop :=
  ∀ n, (P17192219090397120658.a n : ℤ) = A114871 (n + 1)

end A114871

/-! ## A114871.P9131391067771770803

`∪[A114873(n+1), A114874(n+1)]`
-/

namespace A114871.P9131391067771770803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114871.P9131391067771770803

namespace A114871

/-- `∪[A114873(n+1), A114874(n+1)]` -/
def P9131391067771770803.Spec : Prop :=
  ∀ n, (P9131391067771770803.a n : ℤ) = A114871 (n + 1)

end A114871

/-!
# A114872: Even numbers not representable as (p-1)p^k (where p is a prime and k>=0) in ascending order.

The programs for A114872, there is no canonical definition to state claims against.
-/

/-! ## A114872.P15784845655498141731

`eq[n%2, A134269(n+2)]+2`
-/

namespace A114872.P15784845655498141731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A114872.P15784845655498141731

/-! ## A114872.P5852069504547951509

`lt[A134269(round(acot(n)+n)), (-1)^n]`
-/

namespace A114872.P5852069504547951509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114872.P5852069504547951509

/-! ## A114872.P5236580460921702490

`eq[0, A134269(n^and(1, n)+1)]+1`
-/

namespace A114872.P5236580460921702490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (n ^ Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114872.P5236580460921702490

/-! ## A114872.P3384523120256332888

`lt[A134269(abs(1-n)+1), (-1)^n]`
-/

namespace A114872.P3384523120256332888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114872.P3384523120256332888

/-! ## A114872.P7524545349409417452

`2*comp[floor(A000010(A034699(n+1))/2)]`
-/

namespace A114872.P7524545349409417452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (A034699 (n + 1)).toNat : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A114872.P7524545349409417452

/-! ## A114872.P4298840586449708688

`eq[A014963(A338702(n)), A019428(n)]`
-/

namespace A114872.P4298840586449708688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A338702 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114872.P4298840586449708688

/-! ## A114872.P14441526540827140077

`lt[A019425(n), A001221(A338702(n))]`
-/

namespace A114872.P14441526540827140077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338702 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114872.P14441526540827140077

/-! ## A114872.P2539376666264174971

`lt[A019427(n), A001221(A338702(n))]`
-/

namespace A114872.P2539376666264174971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338702 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114872.P2539376666264174971

/-! ## A114872.P9777558175598008520

`lt[A093178(n), A001221(A338702(n))]`
-/

namespace A114872.P9777558175598008520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338702 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114872.P9777558175598008520

/-! ## A114872.P4972879624725475583

`lt[A152271(n), A001221(A338702(n))]`
-/

namespace A114872.P4972879624725475583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338702 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114872.P4972879624725475583

/-!
# A114873: Numbers representable in exactly one way as (p-1)p^k (where p is a prime and k>=0), in ascending order.

The programs for A114873, there is no canonical definition to state claims against.
-/

/-! ## A114873.P8264207113287355245

`eq[1, A134269(n+1)]+1`
-/

namespace A114873.P8264207113287355245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114873.P8264207113287355245

/-! ## A114873.P4206452639399290987

`eq[n-1, abs(n-A134269(A028310(n)))]`
-/

namespace A114873.P4206452639399290987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A134269 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114873.P4206452639399290987

/-! ## A114873.P4048170282189637175

`eq[A019425(n), A134269(A028310(n))]`
-/

namespace A114873.P4048170282189637175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114873.P4048170282189637175

/-! ## A114873.P5474570980649339852

`eq[A054977(n), A134269(A028310(n))]`
-/

namespace A114873.P5474570980649339852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114873.P5474570980649339852

/-! ## A114873.P12183336738836619845

`eq[A057427(n), A134269(A028310(n))]`
-/

namespace A114873.P12183336738836619845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114873.P12183336738836619845

/-! ## A114873.P15684051434972378103

`eq[-A057428(n), A134269(A028310(n))]`
-/

namespace A114873.P15684051434972378103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114873.P15684051434972378103

/-! ## A114873.P8520315472775404553

`eq[A057427(n), A134269(A065033(2*n))]`
-/

namespace A114873.P8520315472775404553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114873.P8520315472775404553

/-!
# A114874: Numbers representable in exactly two ways as (p-1)*p^e (where p is a prime and e >= 0) in ascending order.

The programs for A114874, there is no canonical definition to state claims against.
-/

/-! ## A114874.P1236115957380365906

`A087126(n+1)-1`
-/

namespace A114874.P1236115957380365906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087126 (n + 1) - 1

end

end A114874.P1236115957380365906

/-! ## A114874.P17934939988952125904

`record[A087126(A262519(n))-1]`
-/

namespace A114874.P17934939988952125904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087126 (A262519 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114874.P17934939988952125904

/-! ## A114874.P1796008425565304685

`xor(1, A087126(A000027(n+1)))`
-/

namespace A114874.P1796008425565304685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A087126 (A000027 (n + 1)).toNat)

end

end A114874.P1796008425565304685

/-! ## A114874.P10459099048162425487

`xor(A000034(2*n), A087126(n+1))`
-/

namespace A114874.P10459099048162425487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A087126 (n + 1))

end

end A114874.P10459099048162425487

/-! ## A114874.P15682856841725274962

`xor(A007318(C(n, n²)), A087126(n+1))`
-/

namespace A114874.P15682856841725274962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.choose n (n ^ 2))) (A087126 (n + 1))

end

end A114874.P15682856841725274962

/-! ## A114874.P7389175630890436510

`xor(A000041(C(2, n+2)), A087126(n+1))`
-/

namespace A114874.P7389175630890436510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.choose 2 (n + 2))) (A087126 (n + 1))

end

end A114874.P7389175630890436510

/-! ## A114874.P11712879435604647113

`xor(A007318(val(n+1, 5)), A087126(n+1))`
-/

namespace A114874.P11712879435604647113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (SequenceMachineLib.valuation (n + 1) 5)) (A087126 (n + 1))

end

end A114874.P11712879435604647113

/-! ## A114874.P4128763096111504610

`xor(A000041(gcd(n, n+1)), A087126(n+1))`
-/

namespace A114874.P4128763096111504610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.gcd n (n + 1))) (A087126 (n + 1))

end

end A114874.P4128763096111504610

/-! ## A114874.P6471199241654952156

`xor(A008683(C(n, n²)!), A087126(n+1))`
-/

namespace A114874.P6471199241654952156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (Nat.factorial (Nat.choose n (n ^ 2)))) (A087126 (n + 1))

end

end A114874.P6471199241654952156

/-! ## A114874.P1767104604623560862

`xor(A014963(A008458(n)), A087126(n+1))`
-/

namespace A114874.P1767104604623560862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A008458 n).toNat) (A087126 (n + 1))

end

end A114874.P1767104604623560862

/-! ## A114874.P7735961136093425844

`xor(A014963(A000217(n+5)), A087126(n+1))`
-/

namespace A114874.P7735961136093425844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A000217 (n + 5)).toNat) (A087126 (n + 1))

end

end A114874.P7735961136093425844

/-!
# A114878: a(n) = (1/15)*(3*Fibonacci(5*(n+1)) - 5*Fibonacci(4*(n+1))).

The programs for A114878, the canonical program `A114878.P10140484698583460294` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114878 has offset 0).

The definition of A114878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114878.P10140484698583460294

`(3*A000045(5*(n+1))-5*A000045(4*(n+1)))/15`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114878

/-- `(3*A000045(5*(n+1))-5*A000045(4*(n+1)))/15` -/
def P10140484698583460294.Spec : Prop :=
  ∀ n, P10140484698583460294.a n = (A114878 n : ℚ)

end A114878

/-! ## A114878.P16530204776661773612

`1/15*(3*A000045(5*(n+1))-5*A000045(4*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114878.P16530204776661773612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 15 * (3 * A000045 (5 * (n + 1)) - 5 * A000045 (4 * (n + 1)) : ℚ)

end

end A114878.P16530204776661773612

namespace A114878

/-- `1/15*(3*A000045(5*(n+1))-5*A000045(4*(n+1)))` -/
def P16530204776661773612.Spec : Prop :=
  ∀ n, P16530204776661773612.a n = (A114878 n : ℚ)

end A114878

/-! ## A114878.P6313819092227770358

`A049666(n+1)-∑[A049685(n)]`
-/

namespace A114878.P6313819092227770358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114878.P6313819092227770358

namespace A114878

/-- `A049666(n+1)-∑[A049685(n)]` -/
def P6313819092227770358.Spec : Prop :=
  ∀ n, P6313819092227770358.a n = A114878 n

end A114878

/-! ## A114878.P15655902471356149258

`A049666(n+1)-A004187(n+1)`
-/

namespace A114878.P15655902471356149258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (n + 1) - A004187 (n + 1)

end

end A114878.P15655902471356149258

namespace A114878

/-- `A049666(n+1)-A004187(n+1)` -/
def P15655902471356149258.Spec : Prop :=
  ∀ n, P15655902471356149258.a n = A114878 n

end A114878

/-! ## A114878.P13607084229367241685

`A004698(A008587(n+1))-A004187(n+1)`
-/

namespace A114878.P13607084229367241685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 (A008587 (n + 1)).toNat - A004187 (n + 1)

end

end A114878.P13607084229367241685

namespace A114878

/-- `A004698(A008587(n+1))-A004187(n+1)` -/
def P13607084229367241685.Spec : Prop :=
  ∀ n, P13607084229367241685.a n = A114878 n

end A114878

/-! ## A114878.P15501057412487596547

`A004698(A008706(n+1))-A293543(A008574(n+1))`
-/

namespace A114878.P15501057412487596547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 (A008706 (n + 1)).toNat - A293543 (A008574 (n + 1)).toNat

end

end A114878.P15501057412487596547

namespace A114878

/-- `A004698(A008706(n+1))-A293543(A008574(n+1))` -/
def P15501057412487596547.Spec : Prop :=
  ∀ n, P15501057412487596547.a n = A114878 n

end A114878

/-!
# A114881: Sieve of Eratosthenes minus 1.

The programs for A114881, there is no canonical definition to state claims against.
-/

/-! ## A114881.P14164677909782621943

`A083140(n+2)-1`
-/

namespace A114881.P14164677909782621943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (n + 2) - 1

end

end A114881.P14164677909782621943

/-! ## A114881.P3171516393220907891

`A249741(∑[char[∑[n]]]²-n)`
-/

namespace A114881.P3171516393220907891
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A114881.P3171516393220907891

/-! ## A114881.P10094422961169702612

`A083221(∑[char[∑[n]]]²-n+1)-1`
-/

namespace A114881.P10094422961169702612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat - 1

end

end A114881.P10094422961169702612

/-! ## A114881.P13463661986086595123

`abs(1-A083221(∑[2*n]%comp[∑[n]]+2))`
-/

namespace A114881.P13463661986086595123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A083221 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2)|

end

end A114881.P13463661986086595123

/-! ## A114881.P10739818821940156129

`A249811(A054582(n))`
-/

namespace A114881.P10739818821940156129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A054582 n).toNat

end

end A114881.P10739818821940156129

/-! ## A114881.P5031735099170452556

`A249811(A075300(n)+1)`
-/

namespace A114881.P5031735099170452556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A075300 n + 1).toNat

end

end A114881.P5031735099170452556

/-! ## A114881.P4583942893691654876

`A249815(A246273(n+1))`
-/

namespace A114881.P4583942893691654876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (A246273 (n + 1)).toNat

end

end A114881.P4583942893691654876

/-! ## A114881.P1198170706581697763

`A023443(A083140(n+2))`
-/

namespace A114881.P1198170706581697763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083140 (n + 2)).toNat

end

end A114881.P1198170706581697763

/-! ## A114881.P11339015994059578077

`A207801(A288870(n))-1`
-/

namespace A114881.P11339015994059578077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (A288870 n).toNat - 1

end

end A114881.P11339015994059578077

/-! ## A114881.P16475460649765842578

`A023444(A083140(n+2)+1)`
-/

namespace A114881.P16475460649765842578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A083140 (n + 2) + 1).toNat

end

end A114881.P16475460649765842578

/-!
# A114882: Transposition sequence of A114881.

The programs for A114882, there is no canonical definition to state claims against.
-/

/-! ## A114882.P15507221852559385086

`A246273(A249742(n+1))`
-/

namespace A114882.P15507221852559385086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A249742 (n + 1)).toNat

end

end A114882.P15507221852559385086

/-! ## A114882.P7060074368718060850

`A246275(A250252(n+1))`
-/

namespace A114882.P7060074368718060850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (A250252 (n + 1)).toNat

end

end A114882.P7060074368718060850

/-! ## A114882.P4701317614474221454

`A083140(A252460(n+2))-1`
-/

namespace A114882.P4701317614474221454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A252460 (n + 2)).toNat - 1

end

end A114882.P4701317614474221454

/-! ## A114882.P11390069464402084334

`A246273(A252460(n+2)-1)`
-/

namespace A114882.P11390069464402084334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A252460 (n + 2) - 1).toNat

end

end A114882.P11390069464402084334

/-! ## A114882.P4150668829791772897

`A249741(and(-1, A250252(n+1)))`
-/

namespace A114882.P4150668829791772897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (Int.land (-1) (A250252 (n + 1))).toNat

end

end A114882.P4150668829791772897

/-!
# A114885: Prime indices with record values of the least positive primitive root.

The programs for A114885, there is no canonical definition to state claims against.
-/

/-! ## A114885.P7387009025492571099

`A066529(A002229(n+1))`
-/

namespace A114885.P7387009025492571099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066529 (A002229 (n + 1)).toNat

end

end A114885.P7387009025492571099

/-! ## A114885.P8173961615178290723

`A000720(A002230(n+1))`
-/

namespace A114885.P8173961615178290723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002230 (n + 1)).toNat

end

end A114885.P8173961615178290723

/-! ## A114885.P976987595459868244

`∑{d}[A002230(n+1), A061395(#)]`
-/

namespace A114885.P976987595459868244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A114885.P976987595459868244

/-!
# A114886: Indices n >= 1 for which M_n < M_(n-1), where M_n is the maximum of abs(xi(1/2 + i*t)) on [t_n,t_(n+1)].

The programs for A114886, there is no canonical definition to state claims against.
-/

/-! ## A114886.P14074500593570718517

`comp[A009003(3*n+4)-A243487(3*n+2)]+1`
-/

namespace A114886.P14074500593570718517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (3 * n + 4) - A243487 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A114886.P14074500593570718517

/-! ## A114886.P1414713163044233081

`∑[A236833(A245230(n+1))]`
-/

namespace A114886.P1414713163044233081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 (A245230 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114886.P1414713163044233081

/-! ## A114886.P15846454922250040472

`∑[gcd(A218289(n+1)+n+1, A184318(n+2))]`
-/

namespace A114886.P15846454922250040472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218289 (n + 1) + (n + 1 : ℤ)) (A184318 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114886.P15846454922250040472

/-! ## A114886.P12991766241114084378

`lt[A109010(n), A032452(A065764(2*(n+1)))]`
-/

namespace A114886.P12991766241114084378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032452 (A065764 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114886.P12991766241114084378

/-! ## A114886.P10523044302815289932

`∑[gcd(A017475(n), A209655(n+2))]`
-/

namespace A114886.P10523044302815289932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017475 n) (A209655 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114886.P10523044302815289932

/-!
# A114887: Multiperfect numbers sigma(n) = k*n, which are divisible by the sum of their prime factors without repetition.

The programs for A114887, there is no canonical definition to state claims against.
-/

/-! ## A114887.P6632616296239123981

`A282775(A085498(n+1)+1+n)`
-/

namespace A114887.P6632616296239123981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282775 (A085498 (n + 1) + 1 + (n : ℤ)).toNat

end

end A114887.P6632616296239123981

/-! ## A114887.P16519019880942674186

`A282775(A326836(3*n+4)-(n-log2(1/2)))`
-/

namespace A114887.P16519019880942674186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282775 (SequenceMachineLib.roundAway ((A326836 (3 * n + 4) : ℝ) - ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)))).toNat

end

end A114887.P16519019880942674186

/-!
# A114889: a(1)=1 and, for n>1, a(n) is the smallest integer greater than a(n-1) such that a(n)+a(i) is not a power of 3, for i=1,..., n-1.

The programs for A114889, there is no canonical definition to state claims against.
-/

/-! ## A114889.P4695173717554749605

`A167878(n)/2+1+n`
-/

namespace A114889.P4695173717554749605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167878 n : ℚ) / 2 + 1 + (n : ℚ)

end

end A114889.P4695173717554749605

/-! ## A114889.P5102887692953773288

`A114890(n)+a(n-1)` with `a(0)=1`
-/

namespace A114889.P5102887692953773288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114890 n + a (n - 1)

end

end A114889.P5102887692953773288

/-! ## A114889.P16496970683415286933

`∑[A114890(abs(1-n)+1)]`
-/

namespace A114889.P16496970683415286933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114890 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114889.P16496970683415286933

/-! ## A114889.P10120297945616755299

`lt[A093347(2*n+1), n]`
-/

namespace A114889.P10120297945616755299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114889.P10120297945616755299

/-! ## A114889.P9670541652110472120

`(A167877(n)+3*n+2)/2`
-/

namespace A114889.P9670541652110472120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167877 n + (3 * n + 2 : ℤ) : ℚ) / 2

end

end A114889.P9670541652110472120

/-! ## A114889.P6418758798755411912

`record[(n-a(n-1))*A316829(n)]` with `a(0)=1`
-/

namespace A114889.P6418758798755411912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - f1 (n - 1)) * A316829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114889.P6418758798755411912

/-! ## A114889.P15517664490883514986

`A003278(A081611(n))+n`
-/

namespace A114889.P15517664490883514986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A081611 n).toNat + (n : ℤ)

end

end A114889.P15517664490883514986

/-! ## A114889.P5398685457111747414

`A008619(A167878(n))+n`
-/

namespace A114889.P5398685457111747414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A167878 n).toNat + (n : ℤ)

end

end A114889.P5398685457111747414

/-! ## A114889.P15233238999964840881

`A003278(∑[A039966(n)])+n`
-/

namespace A114889.P15233238999964840881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A114889.P15233238999964840881

/-! ## A114889.P12251407081792496649

`A000463(A167878(n)+1)+n`
-/

namespace A114889.P12251407081792496649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A167878 n + 1).toNat + (n : ℤ)

end

end A114889.P12251407081792496649

/-!
# A114890: First differences of A114889.

The programs for A114890, the canonical program `A114890.P12766305809805665187` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114890 has offset 1).

The definition of A114890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114890.P12928478366068540201

`Δ[A167878(n)/2]+1`
-/

namespace A114890.P12928478366068540201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167878 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P12928478366068540201

namespace A114890

/-- `Δ[A167878(n)/2]+1` -/
def P12928478366068540201.Spec : Prop :=
  ∀ n, P12928478366068540201.a n = (A114890 (n + 1) : ℚ)

end A114890

/-! ## A114890.P1476232368305576655

`(Δ[A167877(n)]+3)/2`
-/

namespace A114890.P1476232368305576655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 3 : ℚ) / 2

end

end A114890.P1476232368305576655

namespace A114890

/-- `(Δ[A167877(n)]+3)/2` -/
def P1476232368305576655.Spec : Prop :=
  ∀ n, P1476232368305576655.a n = (A114890 (n + 1) : ℚ)

end A114890

/-! ## A114890.P16088935520597546502

`A008619(Δ[A167878(n)])`
-/

namespace A114890.P16088935520597546502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A114890.P16088935520597546502

namespace A114890

/-- `A008619(Δ[A167878(n)])` -/
def P16088935520597546502.Spec : Prop :=
  ∀ n, P16088935520597546502.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P1681146710757881302

`A027656(Δ[A167878(n)])`
-/

namespace A114890.P1681146710757881302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (f1 (n + 1) - f1 n).toNat

end

end A114890.P1681146710757881302

namespace A114890

/-- `A027656(Δ[A167878(n)])` -/
def P1681146710757881302.Spec : Prop :=
  ∀ n, P1681146710757881302.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P5434150121871766752

`A028242(Δ[A167878(n)])`
-/

namespace A114890.P5434150121871766752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (n + 1) - f1 n).toNat

end

end A114890.P5434150121871766752

namespace A114890

/-- `A028242(Δ[A167878(n)])` -/
def P5434150121871766752.Spec : Prop :=
  ∀ n, P5434150121871766752.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P12766305809805665187

`Δ[A003278(A081611(n))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114890

/-- `Δ[A003278(A081611(n))]+1` -/
def P12766305809805665187.Spec : Prop :=
  ∀ n, P12766305809805665187.a n = A114890 (n + 1)

theorem P12766305809805665187.correct : P12766305809805665187.Spec := by
  intro n
  simp only [A114890, Nat.add_sub_cancel]

end A114890

/-! ## A114890.P13649266091471663100

`A000463(Δ[A167878(n)]+1)`
-/

namespace A114890.P13649266091471663100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (n + 1) - f1 n + 1).toNat

end

end A114890.P13649266091471663100

namespace A114890

/-- `A000463(Δ[A167878(n)]+1)` -/
def P13649266091471663100.Spec : Prop :=
  ∀ n, P13649266091471663100.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P11182555480679423259

`A001281(Δ[A167878(n)])+1`
-/

namespace A114890.P11182555480679423259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat + 1

end

end A114890.P11182555480679423259

namespace A114890

/-- `A001281(Δ[A167878(n)])+1` -/
def P11182555480679423259.Spec : Prop :=
  ∀ n, P11182555480679423259.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P12251232064383219220

`A003602(Δ[A167878(n)]+1)`
-/

namespace A114890.P12251232064383219220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n + 1).toNat

end

end A114890.P12251232064383219220

namespace A114890

/-- `A003602(Δ[A167878(n)]+1)` -/
def P12251232064383219220.Spec : Prop :=
  ∀ n, P12251232064383219220.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P4086952066159300967

`A004525(Δ[A167878(n)])+1`
-/

namespace A114890.P4086952066159300967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat + 1

end

end A114890.P4086952066159300967

namespace A114890

/-- `A004525(Δ[A167878(n)])+1` -/
def P4086952066159300967.Spec : Prop :=
  ∀ n, P4086952066159300967.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P6235979366431858431

`A004526(Δ[A167878(n)])+1`
-/

namespace A114890.P6235979366431858431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat + 1

end

end A114890.P6235979366431858431

namespace A114890

/-- `A004526(Δ[A167878(n)])+1` -/
def P6235979366431858431.Spec : Prop :=
  ∀ n, P6235979366431858431.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P16238653830784276837

`A008619(Δ[A167877(n)]+1)`
-/

namespace A114890.P16238653830784276837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n + 1).toNat

end

end A114890.P16238653830784276837

namespace A114890

/-- `A008619(Δ[A167877(n)]+1)` -/
def P16238653830784276837.Spec : Prop :=
  ∀ n, P16238653830784276837.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P2135660037661203587

`A004526(Δ[A167877(n)]+3)`
-/

namespace A114890.P2135660037661203587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n + 3).toNat

end

end A114890.P2135660037661203587

namespace A114890

/-- `A004526(Δ[A167877(n)]+3)` -/
def P2135660037661203587.Spec : Prop :=
  ∀ n, P2135660037661203587.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P11458941349945399150

`A000463(or(1, Δ[A167878(n)]))`
-/

namespace A114890.P11458941349945399150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (f1 (n + 1) - f1 n)).toNat

end

end A114890.P11458941349945399150

namespace A114890

/-- `A000463(or(1, Δ[A167878(n)]))` -/
def P11458941349945399150.Spec : Prop :=
  ∀ n, P11458941349945399150.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P10568400157255214287

`A000463(xor(1, Δ[A167878(n)]))`
-/

namespace A114890.P10568400157255214287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.xor 1 (f1 (n + 1) - f1 n)).toNat

end

end A114890.P10568400157255214287

namespace A114890

/-- `A000463(xor(1, Δ[A167878(n)]))` -/
def P10568400157255214287.Spec : Prop :=
  ∀ n, P10568400157255214287.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P7356586652586763035

`A003602(xor(1, Δ[A167878(n)]))`
-/

namespace A114890.P7356586652586763035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.xor 1 (f1 (n + 1) - f1 n)).toNat

end

end A114890.P7356586652586763035

namespace A114890

/-- `A003602(xor(1, Δ[A167878(n)]))` -/
def P7356586652586763035.Spec : Prop :=
  ∀ n, P7356586652586763035.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P11027120059640696738

`Δ[A003278(A061392(2*(n+1)))]+1`
-/

namespace A114890.P11027120059640696738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A061392 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P11027120059640696738

namespace A114890

/-- `Δ[A003278(A061392(2*(n+1)))]+1` -/
def P11027120059640696738.Spec : Prop :=
  ∀ n, P11027120059640696738.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P10446418778029783139

`Δ[A005836(A061392(2*n+1))]+1`
-/

namespace A114890.P10446418778029783139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A061392 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P10446418778029783139

namespace A114890

/-- `Δ[A005836(A061392(2*n+1))]+1` -/
def P10446418778029783139.Spec : Prop :=
  ∀ n, P10446418778029783139.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P15640447096556352715

`Δ[A005836(A131996(3*n+1))]+1`
-/

namespace A114890.P15640447096556352715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A131996 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P15640447096556352715

namespace A114890

/-- `Δ[A005836(A131996(3*n+1))]+1` -/
def P15640447096556352715.Spec : Prop :=
  ∀ n, P15640447096556352715.a n = A114890 (n + 1)

end A114890

/-! ## A114890.P7984172130164856968

`Δ[A005836(1-A081610(n)+n)]+1`
-/

namespace A114890.P7984172130164856968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (1 - A081610 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P7984172130164856968

namespace A114890

/-- `Δ[A005836(1-A081610(n)+n)]+1` -/
def P7984172130164856968.Spec : Prop :=
  ∀ n, P7984172130164856968.a n = A114890 (n + 1)

end A114890

/-!
# A114891: Numbers that are the smallest element of a k-cycle (k > 1) of permutation A114861.

The programs for A114891, there is no canonical definition to state claims against.
-/

/-! ## A114891.P3841306173676883237

`A114892(n)+a(n-1)` with `a(0)=1`
-/

namespace A114891.P3841306173676883237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114892 n + a (n - 1)

end

end A114891.P3841306173676883237

/-! ## A114891.P9776088482367773531

`∑[A114892(abs(1-n)+1)]-1`
-/

namespace A114891.P9776088482367773531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114892 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A114891.P9776088482367773531

/-! ## A114891.P4805898896249321408

`record[A123882(n+1)+abs(A110161(n))]`
-/

namespace A114891.P4805898896249321408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (n + 1) + |A110161 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114891.P4805898896249321408

/-! ## A114891.P1887291618315330171

`record[A123882(n+1)+A110161(n²)]`
-/

namespace A114891.P1887291618315330171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (n + 1) + A110161 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114891.P1887291618315330171

/-! ## A114891.P15314142528809284714

`A254011(C(2, n))+record[A085229(n+1)]`
-/

namespace A114891.P15314142528809284714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (Nat.choose 2 n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114891.P15314142528809284714

/-! ## A114891.P7323316220489030704

`record[A267870(A101776(n))+A123882(n+1)]`
-/

namespace A114891.P7323316220489030704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (A101776 n).toNat + A123882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114891.P7323316220489030704

/-!
# A114892: a(n) is the cycle length corresponding to A114891(n).

The programs for A114892, there is no canonical definition to state claims against.
-/

/-! ## A114892.P3941094578269902801

`Δ[A114891(n+1)]`
-/

namespace A114892.P3941094578269902801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114892.P3941094578269902801

/-! ## A114892.P16639610540130937536

`abs(Δ[A114891(-xor(n, -1))])`
-/

namespace A114892.P16639610540130937536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A114892.P16639610540130937536

/-! ## A114892.P16341496668073424547

`Δ[record[A114891(A328396(n))]]`
-/

namespace A114892.P16341496668073424547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114892.P16341496668073424547

/-! ## A114892.P1644268159781362116

`A000027(Δ[A114891(-xor(n, -1))])`
-/

namespace A114892.P1644268159781362116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A114892.P1644268159781362116

/-! ## A114892.P12933314669082515668

`A028897(Δ[A114891(-xor(n, -1))])`
-/

namespace A114892.P12933314669082515668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (f1 (n + 1) - f1 n).toNat

end

end A114892.P12933314669082515668

/-! ## A114892.P8997949114957438929

`A157189(Δ[A114891(-xor(n, -1))])`
-/

namespace A114892.P8997949114957438929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157189 (f1 (n + 1) - f1 n).toNat

end

end A114892.P8997949114957438929

/-! ## A114892.P11336690323276587945

`A265351(Δ[A114891(-xor(n, -1))])`
-/

namespace A114892.P11336690323276587945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (f1 (n + 1) - f1 n).toNat

end

end A114892.P11336690323276587945

/-! ## A114892.P8359144115244703257

`A265369(Δ[A114891(-xor(n, -1))])`
-/

namespace A114892.P8359144115244703257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265369 (f1 (n + 1) - f1 n).toNat

end

end A114892.P8359144115244703257

/-! ## A114892.P9864790108082873471

`A114891(n+2)-A114891(n+1)`
-/

namespace A114892.P9864790108082873471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (n + 2) - A114891 (n + 1)

end

end A114892.P9864790108082873471

/-! ## A114892.P11745458623681976316

`A001222(2^Δ[A114891(-xor(n, -1))])`
-/

namespace A114892.P11745458623681976316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114891 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A114892.P11745458623681976316

/-!
# A114894: a(n) is the minimal k such that a deck of 2k cards is returned to its original state by n out-shuffles.

The programs for A114894, there is no canonical definition to state claims against.
-/

/-! ## A114894.P2043696567786905099

`ceil(A212953(n+1)/2)`
-/

namespace A114894.P2043696567786905099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212953 (n + 1) : ℚ) / 2⌉

end

end A114894.P2043696567786905099

/-! ## A114894.P14228086177078422418

`A000225(n)%A212953(n+1)+1`
-/

namespace A114894.P14228086177078422418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) (A212953 (n + 1)) + 1

end

end A114894.P14228086177078422418

/-! ## A114894.P15176603656860892107

`A255047(n)%A212953(n+1)+1`
-/

namespace A114894.P15176603656860892107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255047 n) (A212953 (n + 1)) + 1

end

end A114894.P15176603656860892107

/-! ## A114894.P9300456206340576656

`(A212953(n+1)+A007318(∑[n]))/2`
-/

namespace A114894.P9300456206340576656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212953 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A114894.P9300456206340576656

/-!
# A114895: Increasing sequence of primes such that sum of any two neighbor terms is a prime power (power of prime).

The programs for A114895, there is no canonical definition to state claims against.
-/

/-! ## A114895.P1337184273579243853

`A212103(a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A114895.P1337184273579243853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A212103 (a (n - 1)).toNat

end

end A114895.P1337184273579243853

/-! ## A114895.P9973234147812089579

`record[p?[A178030(or(2*n, n%4))]]`
-/

namespace A114895.P9973234147812089579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178030 (Nat.lor (2 * n) (n % 4))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114895.P9973234147812089579

/-!
# A114896: A symmetrical triangle of weight coefficients using the Divisors Sigma function: t(n,m) = Sigma_0(n-m+1)*Sigma_0(m+1).

The programs for A114896, the canonical program `A114896.P7654343572320911277` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114896 has offset 0).

The definition of A114896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(row(n)-col(n)+1)*A000005(col(n)+1)` (program `A114896.P7654343572320911277`, by `A114896.P7654343572320911277.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114896.P7654343572320911277

`A000005(row(n)-col(n)+1)*A000005(col(n)+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114896

/-- `A000005(row(n)-col(n)+1)*A000005(col(n)+1)` -/
def P7654343572320911277.Spec : Prop :=
  ∀ n, P7654343572320911277.a n = A114896 n

theorem P7654343572320911277.correct : P7654343572320911277.Spec := by
  intro n
  simp only [A114896]

end A114896

/-! ## A114896.P17373098473855671725

`A000005(row(n)+1-(col(n)+1)+1)*A000005(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114896.P17373098473855671725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A000005 (SequenceMachineLib.triCol n + 1)

end

end A114896.P17373098473855671725

namespace A114896

/-- `A000005(row(n)+1-(col(n)+1)+1)*A000005(col(n)+1)` -/
def P17373098473855671725.Spec : Prop :=
  ∀ n, P17373098473855671725.a n = A114896 n

theorem P17373098473855671725.correct : P17373098473855671725.Spec := by
  intro n
  simp only [A114896, Nat.add_sub_cancel, A114896.P17373098473855671725.a, A114896.P7654343572320911277.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114896

/-! ## A114896.P2332190021878675213

`A272171(n+1)*A272171(A061579(n)+1)`
-/

namespace A114896.P2332190021878675213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (n + 1) * A272171 (A061579 n + 1).toNat

end

end A114896.P2332190021878675213

namespace A114896

/-- `A272171(n+1)*A272171(A061579(n)+1)` -/
def P2332190021878675213.Spec : Prop :=
  ∀ n, P2332190021878675213.a n = A114896 n

end A114896

/-! ## A114896.P6996589607150126283

`A272171(n+1)*A272171(A112367(n)+1)`
-/

namespace A114896.P6996589607150126283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (n + 1) * A272171 (A112367 n + 1).toNat

end

end A114896.P6996589607150126283

namespace A114896

/-- `A272171(n+1)*A272171(A112367(n)+1)` -/
def P6996589607150126283.Spec : Prop :=
  ∀ n, P6996589607150126283.a n = A114896 n

end A114896

/-! ## A114896.P7111254290126109006

`A000005(A002260(n+1))*A000005(A004736(n+1))`
-/

namespace A114896.P7111254290126109006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A000005 (A004736 (n + 1)).toNat

end

end A114896.P7111254290126109006

namespace A114896

/-- `A000005(A002260(n+1))*A000005(A004736(n+1))` -/
def P7111254290126109006.Spec : Prop :=
  ∀ n, P7111254290126109006.a n = A114896 n

end A114896

/-! ## A114896.P17053613356025674326

`A000005(A003989(n+1))*A000005(A003990(n+1))`
-/

namespace A114896.P17053613356025674326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003989 (n + 1)).toNat * A000005 (A003990 (n + 1)).toNat

end

end A114896.P17053613356025674326

namespace A114896

/-- `A000005(A003989(n+1))*A000005(A003990(n+1))` -/
def P17053613356025674326.Spec : Prop :=
  ∀ n, P17053613356025674326.a n = A114896 n

end A114896

/-! ## A114896.P7361968702488752753

`A000005(A002262(n)+1)*A000005(A025581(n)+1)`
-/

namespace A114896.P7361968702488752753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002262 n + 1).toNat * A000005 (A025581 n + 1).toNat

end

end A114896.P7361968702488752753

namespace A114896

/-- `A000005(A002262(n)+1)*A000005(A025581(n)+1)` -/
def P7361968702488752753.Spec : Prop :=
  ∀ n, P7361968702488752753.a n = A114896 n

end A114896

/-! ## A114896.P11477861135372021387

`A000005(A003983(n+1))*A000005(A051125(n+1))`
-/

namespace A114896.P11477861135372021387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003983 (n + 1)).toNat * A000005 (A051125 (n + 1)).toNat

end

end A114896.P11477861135372021387

namespace A114896

/-- `A000005(A003983(n+1))*A000005(A051125(n+1))` -/
def P11477861135372021387.Spec : Prop :=
  ∀ n, P11477861135372021387.a n = A114896 n

end A114896

/-! ## A114896.P11145150742061407468

`A000005(A208233(n+1))*A000005(A208234(n+1))`
-/

namespace A114896.P11145150742061407468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A208233 (n + 1)).toNat * A000005 (A208234 (n + 1)).toNat

end

end A114896.P11145150742061407468

namespace A114896

/-- `A000005(A208233(n+1))*A000005(A208234(n+1))` -/
def P11145150742061407468.Spec : Prop :=
  ∀ n, P11145150742061407468.a n = A114896 n

end A114896

/-! ## A114896.P18336414187522706167

`A000005(A057555(2*n+1))*A000005(A057555(2*(n+1)))`
-/

namespace A114896.P18336414187522706167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057555 (2 * n + 1)).toNat * A000005 (A057555 (2 * (n + 1))).toNat

end

end A114896.P18336414187522706167

namespace A114896

/-- `A000005(A057555(2*n+1))*A000005(A057555(2*(n+1)))` -/
def P18336414187522706167.Spec : Prop :=
  ∀ n, P18336414187522706167.a n = A114896 n

end A114896

/-! ## A114896.P3470735337474658375

`A355731(A073060(n))`
-/

namespace A114896.P3470735337474658375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A073060 n).toNat

end

end A114896.P3470735337474658375

namespace A114896

/-- `A355731(A073060(n))` -/
def P3470735337474658375.Spec : Prop :=
  ∀ n, P3470735337474658375.a n = A114896 n

end A114896

/-! ## A114896.P15082839286481597538

`A355731(A098350(n+1))`
-/

namespace A114896.P15082839286481597538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A098350 (n + 1)).toNat

end

end A114896.P15082839286481597538

namespace A114896

/-- `A355731(A098350(n+1))` -/
def P15082839286481597538.Spec : Prop :=
  ∀ n, P15082839286481597538.a n = A114896 n

end A114896

/-! ## A114896.P595277962909844375

`∏{e}[A036561(n), A000005(#+1)]`
-/

namespace A114896.P595277962909844375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p + 1)

end

end A114896.P595277962909844375

namespace A114896

/-- `∏{e}[A036561(n), A000005(#+1)]` -/
def P595277962909844375.Spec : Prop :=
  ∀ n, P595277962909844375.a n = A114896 n

end A114896

/-! ## A114896.P11685955371913585352

`A000005(A092542(n+1))*A000005(A092543(n+1))`
-/

namespace A114896.P11685955371913585352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A092542 (n + 1)).toNat * A000005 (A092543 (n + 1)).toNat

end

end A114896.P11685955371913585352

namespace A114896

/-- `A000005(A092542(n+1))*A000005(A092543(n+1))` -/
def P11685955371913585352.Spec : Prop :=
  ∀ n, P11685955371913585352.a n = A114896 n

end A114896

/-!
# A114897: a(1) = 1. a(n+1) = number of earlier terms a(k) (1 <= k <= n) where a(k)+n is a prime.

The programs for A114897, there is no canonical definition to state claims against.
-/

/-! ## A114897.P1978264864545562970

`A123541(A171950(n+2))`
-/

namespace A114897.P1978264864545562970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (A171950 (n + 2)).toNat

end

end A114897.P1978264864545562970

/-! ## A114897.P2909185867119547518

`A123541(xor(n, 2*A154272(n+1)))`
-/

namespace A114897.P2909185867119547518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (Int.xor (n : ℤ) (2 * A154272 (n + 1))).toNat

end

end A114897.P2909185867119547518

/-! ## A114897.P9954052258864163455

`a(2-A088569(n))*A123541(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A114897.P9954052258864163455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (2 - A088569 n).toNat * A123541 n

end

end A114897.P9954052258864163455

/-! ## A114897.P16267931292440392312

`A123541(n)-A010815(n)*A154272(n+1)`
-/

namespace A114897.P16267931292440392312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n - A010815 n * A154272 (n + 1)

end

end A114897.P16267931292440392312

/-! ## A114897.P13177154878926682813

`A123541(n)-A015325(n)*A154272(n+1)`
-/

namespace A114897.P13177154878926682813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n - A015325 n * A154272 (n + 1)

end

end A114897.P13177154878926682813

/-! ## A114897.P15523157266292681889

`A114898(n+1)+A123541(n)-A108839(n+1)`
-/

namespace A114897.P15523157266292681889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114898 (n + 1) + (A123541 n - A108839 (n + 1))

end

end A114897.P15523157266292681889

/-! ## A114897.P4660020454066656939

`A123541(n)-A015325(A163985(n))`
-/

namespace A114897.P4660020454066656939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n - A015325 (A163985 n).toNat

end

end A114897.P4660020454066656939

/-! ## A114897.P6585065081159582284

`A123541(n)+A015325(A163985(n)+2)`
-/

namespace A114897.P6585065081159582284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n + A015325 (A163985 n + 2).toNat

end

end A114897.P6585065081159582284

/-! ## A114897.P640338532497357237

`A123541(lcm(A020513(n), A233583(n+1)))`
-/

namespace A114897.P640338532497357237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (Int.lcm (A020513 n) (A233583 (n + 1)))

end

end A114897.P640338532497357237

/-! ## A114897.P16300268927217627143

`A123541(n)+A010815(p?[A007494(n)])`
-/

namespace A114897.P16300268927217627143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n + A010815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114897.P16300268927217627143

/-! ## A114897.P15879507076647547384

`A123541(n)+A010815(A053184(n+1))`
-/

namespace A114897.P15879507076647547384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n + A010815 (A053184 (n + 1)).toNat

end

end A114897.P15879507076647547384

/-!
# A114898: a(1)=0. a(n) = number of earlier terms a(k) (1 <=k <=n-1) where a(k)+n is a prime.

The programs for A114898, there is no canonical definition to state claims against.
-/

/-! ## A114898.P8967588494593384289

`xor(A108839(n+1), A154272(n+1))`
-/

namespace A114898.P8967588494593384289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108839 (n + 1)) (A154272 (n + 1))

end

end A114898.P8967588494593384289

/-! ## A114898.P3834374204904899745

`xor(A108839(n+1), A329670(n+1))`
-/

namespace A114898.P3834374204904899745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108839 (n + 1)) (A329670 (n + 1))

end

end A114898.P3834374204904899745

/-! ## A114898.P17774380655145298077

`xor(A108839(n+1), A183919(A071054(n)))`
-/

namespace A114898.P17774380655145298077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108839 (n + 1)) (A183919 (A071054 n).toNat)

end

end A114898.P17774380655145298077

/-! ## A114898.P10323840953678061364

`A108839(n+1)+A114897(n+1)-A123541(n)`
-/

namespace A114898.P10323840953678061364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (n + 1) + (A114897 (n + 1) - A123541 n)

end

end A114898.P10323840953678061364

/-! ## A114898.P11595194502459499421

`xor(A010054(A008864(n+1)), A108839(n+1))`
-/

namespace A114898.P11595194502459499421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 (A008864 (n + 1)).toNat) (A108839 (n + 1))

end

end A114898.P11595194502459499421

/-! ## A114898.P4473987791189628501

`A108839(n+1)-A015325(A163985(n))`
-/

namespace A114898.P4473987791189628501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (n + 1) - A015325 (A163985 n).toNat

end

end A114898.P4473987791189628501

/-! ## A114898.P6513843663231254039

`A108839(n+1)+A015325(A163985(n)+2)`
-/

namespace A114898.P6513843663231254039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (n + 1) + A015325 (A163985 n + 2).toNat

end

end A114898.P6513843663231254039

/-! ## A114898.P3989276124869709352

`A108839(n+1)+A010815(A053184(n+1))`
-/

namespace A114898.P3989276124869709352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108839 (n + 1) + A010815 (A053184 (n + 1)).toNat

end

end A114898.P3989276124869709352

/-! ## A114898.P15841452395750885602

`xor(A108839(n+1), A183919(A210419(n+1)))`
-/

namespace A114898.P15841452395750885602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108839 (n + 1)) (A183919 (A210419 (n + 1)).toNat)

end

end A114898.P15841452395750885602

/-! ## A114898.P15095014063303634916

`xor(A010054(A052905(n)), A108839(n+1))`
-/

namespace A114898.P15095014063303634916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 (A052905 n).toNat) (A108839 (n + 1))

end

end A114898.P15095014063303634916

/-! ## A114898.P532033384749136877

`xor(A108839(n+1), A178225((n+1)²))`
-/

namespace A114898.P532033384749136877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108839 (n + 1)) (A178225 ((n + 1) ^ 2))

end

end A114898.P532033384749136877

