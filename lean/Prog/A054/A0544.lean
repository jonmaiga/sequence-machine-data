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
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A054401: a(n) = 5^n - 4^n - 1.

The programs for A054401, the canonical program `A054401.P516365639106465424` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054401 has offset 1).

The definition of A054401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(n+1)-4^(n+1)-1` (program `A054401.P516365639106465424`, by `A054401.P516365639106465424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054401.P516365639106465424

`5^(n+1)-4^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054401

/-- `5^(n+1)-4^(n+1)-1` -/
def P516365639106465424.Spec : Prop :=
  ∀ n, P516365639106465424.a n = A054401 (n + 1)

theorem P516365639106465424.correct : P516365639106465424.Spec := by
  intro n
  simp only [A054401, Nat.add_sub_cancel]

end A054401

/-! ## A054401.P5736113407459914786

`record[A005060(abs(1-n))-1]`
-/

namespace A054401.P5736113407459914786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 |1 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054401.P5736113407459914786

namespace A054401

/-- `record[A005060(abs(1-n))-1]` -/
def P5736113407459914786.Spec : Prop :=
  ∀ n, P5736113407459914786.a n = A054401 (n + 1)

end A054401

/-! ## A054401.P15387002784293444289

`xor(∑[A257285(n)], A257260(2*(n+2)))`
-/

namespace A054401.P15387002784293444289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A257260 (2 * (n + 2)))

end

end A054401.P15387002784293444289

namespace A054401

/-- `xor(∑[A257285(n)], A257260(2*(n+2)))` -/
def P15387002784293444289.Spec : Prop :=
  ∀ n, P15387002784293444289.a n = A054401 (n + 1)

end A054401

/-!
# A054402: Numbers that are the sum of a positive square and a positive cube in more than one way.

The programs for A054402, there is no canonical definition to state claims against.
-/

/-! ## A054402.P3142931455736754762

`lt[1, A078359(n+1)]+1`
-/

namespace A054402.P3142931455736754762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054402.P3142931455736754762

/-! ## A054402.P9690182898541986748

`eq[1, log2(a(A078359(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A054402.P9690182898541986748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  Real.logb 2 (f2 (A078359 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A054402.P9690182898541986748

/-! ## A054402.P1460506423850553690

`eq[1, A284050(a(A078359(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A054402.P1460506423850553690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A284050 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054402.P1460506423850553690

/-! ## A054402.P3721048209480437242

`eq[1, A002262(a(A078359(n)))]` with `a(0)=5, a(1)=5, a(2)=4`
-/

namespace A054402.P3721048209480437242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 4] fun n f2 =>
  A002262 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054402.P3721048209480437242

/-! ## A054402.P7992705143652134903

`eq[2, A078359(A233583(n+1))]`
-/

namespace A054402.P7992705143652134903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078359 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054402.P7992705143652134903

/-!
# A054403: Result of third stage of sieve of Eratosthenes (after eliminating multiples of 2, 3 and 5).

The programs for A054403, the canonical program `A054403.P10855021196834469793` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054403 has offset 1).

The definition of A054403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054403.P4087788284486564467

`∪[A014210(n), A070884(n)]`
-/

namespace A054403.P4087788284486564467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P4087788284486564467

namespace A054403

/-- `∪[A014210(n), A070884(n)]` -/
def P4087788284486564467.Spec : Prop :=
  ∀ n, (P4087788284486564467.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P10855021196834469793

`∪[A042988(n), A070884(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A054403

/-- `∪[A042988(n), A070884(n)]` -/
def P10855021196834469793.Spec : Prop :=
  ∀ n, (P10855021196834469793.a n : ℤ) = A054403 (n + 1)

theorem P10855021196834469793.correct : P10855021196834469793.Spec := by
  intro n
  simp only [A054403, Nat.add_sub_cancel]

end A054403

/-! ## A054403.P11506262979676732722

`∪[A042990(n), A070884(n)]`
-/

namespace A054403.P11506262979676732722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P11506262979676732722

namespace A054403

/-- `∪[A042990(n), A070884(n)]` -/
def P11506262979676732722.Spec : Prop :=
  ∀ n, (P11506262979676732722.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P9948178801796794494

`∪[A057999(n), A070884(n)]`
-/

namespace A054403.P9948178801796794494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P9948178801796794494

namespace A054403

/-- `∪[A057999(n), A070884(n)]` -/
def P9948178801796794494.Spec : Prop :=
  ∀ n, (P9948178801796794494.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P14296576705908574242

`∪[A070884(n), A080190(n)]`
-/

namespace A054403.P14296576705908574242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080190 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P14296576705908574242

namespace A054403

/-- `∪[A070884(n), A080190(n)]` -/
def P14296576705908574242.Spec : Prop :=
  ∀ n, (P14296576705908574242.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P15620330752560884560

`∪[A070884(n), A087520(n)]`
-/

namespace A054403.P15620330752560884560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087520 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P15620330752560884560

namespace A054403

/-- `∪[A070884(n), A087520(n)]` -/
def P15620330752560884560.Spec : Prop :=
  ∀ n, (P15620330752560884560.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P7163103540841132475

`∪[A070884(n), A087580(n)]`
-/

namespace A054403.P7163103540841132475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087580 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P7163103540841132475

namespace A054403

/-- `∪[A070884(n), A087580(n)]` -/
def P7163103540841132475.Spec : Prop :=
  ∀ n, (P7163103540841132475.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P12115682907122934729

`∪[A070884(n), A093503(n)]`
-/

namespace A054403.P12115682907122934729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093503 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P12115682907122934729

namespace A054403

/-- `∪[A070884(n), A093503(n)]` -/
def P12115682907122934729.Spec : Prop :=
  ∀ n, (P12115682907122934729.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P6821115623951696371

`∪[A070884(n), A111107(n)]`
-/

namespace A054403.P6821115623951696371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P6821115623951696371

namespace A054403

/-- `∪[A070884(n), A111107(n)]` -/
def P6821115623951696371.Spec : Prop :=
  ∀ n, (P6821115623951696371.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P5600526863100748651

`∪[A070884(n), A134207(n)]`
-/

namespace A054403.P5600526863100748651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P5600526863100748651

namespace A054403

/-- `∪[A070884(n), A134207(n)]` -/
def P5600526863100748651.Spec : Prop :=
  ∀ n, (P5600526863100748651.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P461389137172904325

`∪[A070884(n), A155954(n)]`
-/

namespace A054403.P461389137172904325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P461389137172904325

namespace A054403

/-- `∪[A070884(n), A155954(n)]` -/
def P461389137172904325.Spec : Prop :=
  ∀ n, (P461389137172904325.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P6729667266633839063

`∪[A070884(n), A237057(n)]`
-/

namespace A054403.P6729667266633839063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P6729667266633839063

namespace A054403

/-- `∪[A070884(n), A237057(n)]` -/
def P6729667266633839063.Spec : Prop :=
  ∀ n, (P6729667266633839063.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P11273792515105666445

`∪[A070884(n), A261192(n)]`
-/

namespace A054403.P11273792515105666445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P11273792515105666445

namespace A054403

/-- `∪[A070884(n), A261192(n)]` -/
def P11273792515105666445.Spec : Prop :=
  ∀ n, (P11273792515105666445.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P9556719457285147873

`∪[A070884(n), A387687(n)]`
-/

namespace A054403.P9556719457285147873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387687 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P9556719457285147873

namespace A054403

/-- `∪[A070884(n), A387687(n)]` -/
def P9556719457285147873.Spec : Prop :=
  ∀ n, (P9556719457285147873.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P13571370208310740523

`∪[A000040(n+1), A070884(n)]`
-/

namespace A054403.P13571370208310740523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P13571370208310740523

namespace A054403

/-- `∪[A000040(n+1), A070884(n)]` -/
def P13571370208310740523.Spec : Prop :=
  ∀ n, (P13571370208310740523.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P10878416651747770020

`∪[A000043(n+1), A070884(n)]`
-/

namespace A054403.P10878416651747770020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P10878416651747770020

namespace A054403

/-- `∪[A000043(n+1), A070884(n)]` -/
def P10878416651747770020.Spec : Prop :=
  ∀ n, (P10878416651747770020.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P179047650690392402

`∪[A002200(n+1), A070884(n)]`
-/

namespace A054403.P179047650690392402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P179047650690392402

namespace A054403

/-- `∪[A002200(n+1), A070884(n)]` -/
def P179047650690392402.Spec : Prop :=
  ∀ n, (P179047650690392402.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P15058951527034615356

`∪[A002385(n+1), A070884(n)]`
-/

namespace A054403.P15058951527034615356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P15058951527034615356

namespace A054403

/-- `∪[A002385(n+1), A070884(n)]` -/
def P15058951527034615356.Spec : Prop :=
  ∀ n, (P15058951527034615356.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P15196165182481366138

`∪[A005384(n+1), A070884(n)]`
-/

namespace A054403.P15196165182481366138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P15196165182481366138

namespace A054403

/-- `∪[A005384(n+1), A070884(n)]` -/
def P15196165182481366138.Spec : Prop :=
  ∀ n, (P15196165182481366138.a n : ℤ) = A054403 (n + 1)

end A054403

/-! ## A054403.P13292021944278541655

`∪[A007459(n+1), A070884(n)]`
-/

namespace A054403.P13292021944278541655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P13292021944278541655

namespace A054403

/-- `∪[A007459(n+1), A070884(n)]` -/
def P13292021944278541655.Spec : Prop :=
  ∀ n, (P13292021944278541655.a n : ℤ) = A054403 (n + 1)

end A054403

/-!
# A054404: Number of daughters to wait before picking in sultan's dowry problem with n daughters.

The programs for A054404, the canonical program `A054404.P6998542438210838920` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054404 has offset 1).

The definition of A054404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054404.P6998542438210838920

`round(sqrt(∑[2*n])/e)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054404

/-- `round(sqrt(∑[2*n])/e)` -/
def P6998542438210838920.Spec : Prop :=
  ∀ n, P6998542438210838920.a n = A054404 (n + 1)

theorem P6998542438210838920.correct : P6998542438210838920.Spec := by
  intro n
  simp only [A054404, Nat.add_sub_cancel]

end A054404

/-! ## A054404.P8935146667329917040

`∑[char[A103762(n+1)]]`
-/

namespace A054404.P8935146667329917040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054404.P8935146667329917040

namespace A054404

/-- `∑[char[A103762(n+1)]]` -/
def P8935146667329917040.Spec : Prop :=
  ∀ n, (P8935146667329917040.a n : ℤ) = A054404 (n + 1)

end A054404

/-! ## A054404.P8565576850700510061

`∑[char[A213908(n+1)+n]]`
-/

namespace A054404.P8565576850700510061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054404.P8565576850700510061

namespace A054404

/-- `∑[char[A213908(n+1)+n]]` -/
def P8565576850700510061.Spec : Prop :=
  ∀ n, (P8565576850700510061.a n : ℤ) = A054404 (n + 1)

end A054404

/-! ## A054404.P15103131850756266616

`∑[char[A065475(A136617(n+1)+n)]]`
-/

namespace A054404.P15103131850756266616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A136617 (n + 1) + (n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054404.P15103131850756266616

namespace A054404

/-- `∑[char[A065475(A136617(n+1)+n)]]` -/
def P15103131850756266616.Spec : Prop :=
  ∀ n, (P15103131850756266616.a n : ℤ) = A054404 (n + 1)

end A054404

/-! ## A054404.P11879528665725891081

`∑[char[A136617(n+1)+A087156(n+1)]]`
-/

namespace A054404.P11879528665725891081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + A087156 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054404.P11879528665725891081

namespace A054404

/-- `∑[char[A136617(n+1)+A087156(n+1)]]` -/
def P11879528665725891081.Spec : Prop :=
  ∀ n, (P11879528665725891081.a n : ℤ) = A054404 (n + 1)

end A054404

/-! ## A054404.P10263889570144647141

`∑[char[A136617(n+1)+(n+1)%A018252(n+1)]]`
-/

namespace A054404.P10263889570144647141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + Int.tmod (n + 1 : ℤ) (A018252 (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054404.P10263889570144647141

namespace A054404

/-- `∑[char[A136617(n+1)+(n+1)%A018252(n+1)]]` -/
def P10263889570144647141.Spec : Prop :=
  ∀ n, (P10263889570144647141.a n : ℤ) = A054404 (n + 1)

end A054404

/-! ## A054404.P9727750038282865474

`floor((sin(1)+n+1)/e)*A193592(A000096(n))`
-/

namespace A054404.P9727750038282865474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sin (1 : ℝ) + (n + 1 : ℝ)) / Real.exp 1⌋ * A193592 (A000096 n).toNat

end

end A054404.P9727750038282865474

namespace A054404

/-- `floor((sin(1)+n+1)/e)*A193592(A000096(n))` -/
def P9727750038282865474.Spec : Prop :=
  ∀ n, P9727750038282865474.a n = A054404 (n + 1)

end A054404

/-! ## A054404.P10937885362021865744

`A065033(A032634(2*n+1))%A293654(∑{d}[n+1, #])`
-/

namespace A054404.P10937885362021865744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A032634 (2 * n + 1)).toNat) (A293654 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A054404.P10937885362021865744

namespace A054404

/-- `A065033(A032634(2*n+1))%A293654(∑{d}[n+1, #])` -/
def P10937885362021865744.Spec : Prop :=
  ∀ n, P10937885362021865744.a n = A054404 (n + 1)

end A054404

/-! ## A054404.P10185186389039834192

`and(A058000(n+1), A226033(n+1))`
-/

namespace A054404.P10185186389039834192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A226033 (n + 1))

end

end A054404.P10185186389039834192

namespace A054404

/-- `and(A058000(n+1), A226033(n+1))` -/
def P10185186389039834192.Spec : Prop :=
  ∀ n, P10185186389039834192.a n = A054404 (n + 1)

end A054404

/-! ## A054404.P15280074440293633140

`and(A084403(n+1), A226033(n+1))`
-/

namespace A054404.P15280074440293633140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084403 (n + 1)) (A226033 (n + 1))

end

end A054404.P15280074440293633140

namespace A054404

/-- `and(A084403(n+1), A226033(n+1))` -/
def P15280074440293633140.Spec : Prop :=
  ∀ n, P15280074440293633140.a n = A054404 (n + 1)

end A054404

/-!
# A054405: Row sums of array T as in A055215.

The programs for A054405, the canonical program `A054405.P17452862411664086916` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054405 has offset 0).

The definition of A054405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054405.P17452862411664086916

`a(n-1)+a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054405

/-- `a(n-1)+a(n-2)-a(n-4)` -/
def P17452862411664086916.Spec : Prop :=
  ∀ n, P17452862411664086916.a n = A054405 n

theorem P17452862411664086916.correct : P17452862411664086916.Spec := by
  intro n
  simp only [A054405]

end A054405

/-! ## A054405.P205077351786872456

`ogf((1+x)/(1-x-x^2+x^4))`
-/

namespace A054405.P205077351786872456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -1, 0, 1] n

end

end A054405.P205077351786872456

namespace A054405

/-- `ogf((1+x)/(1-x-x^2+x^4))` -/
def P205077351786872456.Spec : Prop :=
  ∀ n, P205077351786872456.a n = A054405 n

end A054405

/-! ## A054405.P8988356353018470221

`∑[a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A054405.P8988356353018470221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P8988356353018470221

namespace A054405

/-- `∑[a(n-2)+a(n-3)]` -/
def P8988356353018470221.Spec : Prop :=
  ∀ n, (P8988356353018470221.a n : ℤ) = A054405 n

end A054405

/-! ## A054405.P2039044509651215917

`a(n-2)+a(n-3)+2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A054405.P2039044509651215917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + (a (n - 3) + 2)

end

end A054405.P2039044509651215917

namespace A054405

/-- `a(n-2)+a(n-3)+2` -/
def P2039044509651215917.Spec : Prop :=
  ∀ n, (P2039044509651215917.a n : ℤ) = A054405 n

end A054405

/-! ## A054405.P6149602189596237898

`3-floor(1-a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A054405.P6149602189596237898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 - (1 - a (n - 2) - a (n - 3))

end

end A054405.P6149602189596237898

namespace A054405

/-- `3-floor(1-a(n-2)-a(n-3))` -/
def P6149602189596237898.Spec : Prop :=
  ∀ n, P6149602189596237898.a n = A054405 n

end A054405

/-! ## A054405.P7039192767444712419

`∑[a(n-1)-(a(n-4)-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A054405.P7039192767444712419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P7039192767444712419

namespace A054405

/-- `∑[a(n-1)-(a(n-4)-a(n-2))]` -/
def P7039192767444712419.Spec : Prop :=
  ∀ n, P7039192767444712419.a n = A054405 n

end A054405

/-! ## A054405.P13319214197742110502

`∑[∑[A000931(n)]]`
-/

namespace A054405.P13319214197742110502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P13319214197742110502

namespace A054405

/-- `∑[∑[A000931(n)]]` -/
def P13319214197742110502.Spec : Prop :=
  ∀ n, P13319214197742110502.a n = A054405 n

end A054405

/-! ## A054405.P1306527712056921434

`∑[A134816(n+1)]`
-/

namespace A054405.P1306527712056921434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P1306527712056921434

namespace A054405

/-- `∑[A134816(n+1)]` -/
def P1306527712056921434.Spec : Prop :=
  ∀ n, P1306527712056921434.a n = A054405 n

end A054405

/-! ## A054405.P14828006487023125417

`∑[A182097(n+2)]`
-/

namespace A054405.P14828006487023125417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P14828006487023125417

namespace A054405

/-- `∑[A182097(n+2)]` -/
def P14828006487023125417.Spec : Prop :=
  ∀ n, P14828006487023125417.a n = A054405 n

end A054405

/-! ## A054405.P15561248238537538771

`∑[A078027(n+7)]`
-/

namespace A054405.P15561248238537538771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P15561248238537538771

namespace A054405

/-- `∑[A078027(n+7)]` -/
def P15561248238537538771.Spec : Prop :=
  ∀ n, P15561248238537538771.a n = A054405 n

end A054405

/-! ## A054405.P937883119027941301

`∑[A133034(n+9)]`
-/

namespace A054405.P937883119027941301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P937883119027941301

namespace A054405

/-- `∑[A133034(n+9)]` -/
def P937883119027941301.Spec : Prop :=
  ∀ n, P937883119027941301.a n = A054405 n

end A054405

/-! ## A054405.P10164659537658679682

`A023434(n+3)-1`
-/

namespace A054405.P10164659537658679682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 3) - 1

end

end A054405.P10164659537658679682

namespace A054405

/-- `A023434(n+3)-1` -/
def P10164659537658679682.Spec : Prop :=
  ∀ n, P10164659537658679682.a n = A054405 n

end A054405

/-! ## A054405.P10962737377730963082

`A164001(n+3)-2`
-/

namespace A054405.P10962737377730963082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 3) - 2

end

end A054405.P10962737377730963082

namespace A054405

/-- `A164001(n+3)-2` -/
def P10962737377730963082.Spec : Prop :=
  ∀ n, P10962737377730963082.a n = A054405 n

end A054405

/-! ## A054405.P1070764482317956095

`A182097(n+7)-2`
-/

namespace A054405.P1070764482317956095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 7) - 2

end

end A054405.P1070764482317956095

namespace A054405

/-- `A182097(n+7)-2` -/
def P1070764482317956095.Spec : Prop :=
  ∀ n, P1070764482317956095.a n = A054405 n

end A054405

/-! ## A054405.P13452489507992851712

`A000931(n+10)-2`
-/

namespace A054405.P13452489507992851712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 10) - 2

end

end A054405.P13452489507992851712

namespace A054405

/-- `A000931(n+10)-2` -/
def P13452489507992851712.Spec : Prop :=
  ∀ n, P13452489507992851712.a n = A054405 n

end A054405

/-! ## A054405.P17006412188537208902

`record[abs(1-A023434(n))]`
-/

namespace A054405.P17006412188537208902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A023434 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054405.P17006412188537208902

namespace A054405

/-- `record[abs(1-A023434(n))]` -/
def P17006412188537208902.Spec : Prop :=
  ∀ n, P17006412188537208902.a n = A054405 n

end A054405

/-! ## A054405.P2403864954734426342

`∑[∑[A291289(n)/2]]`
-/

namespace A054405.P2403864954734426342
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291289 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P2403864954734426342

namespace A054405

/-- `∑[∑[A291289(n)/2]]` -/
def P2403864954734426342.Spec : Prop :=
  ∀ n, P2403864954734426342.a n = (A054405 n : ℚ)

end A054405

/-! ## A054405.P16827694664170435381

`∑[A052954(n+2)-1]`
-/

namespace A054405.P16827694664170435381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P16827694664170435381

namespace A054405

/-- `∑[A052954(n+2)-1]` -/
def P16827694664170435381.Spec : Prop :=
  ∀ n, P16827694664170435381.a n = A054405 n

end A054405

/-! ## A054405.P6721920586932174673

`∑[A127682(2*n+3)]`
-/

namespace A054405.P6721920586932174673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054405.P6721920586932174673

namespace A054405

/-- `∑[A127682(2*n+3)]` -/
def P6721920586932174673.Spec : Prop :=
  ∀ n, P6721920586932174673.a n = A054405 n

end A054405

/-! ## A054405.P8512109784138607245

`record[abs(2-abs(A133034(n)))]`
-/

namespace A054405.P8512109784138607245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A133034 n|)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054405.P8512109784138607245

namespace A054405

/-- `record[abs(2-abs(A133034(n)))]` -/
def P8512109784138607245.Spec : Prop :=
  ∀ n, P8512109784138607245.a n = A054405 n

end A054405

/-!
# A054406: Beatty sequence for (3+sqrt 3)/2; complement of A022838.

The programs for A054406, the canonical program `A054406.P6391815710011889929` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054406 has offset 1).

The definition of A054406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054406.P6391815710011889929

`floor((n+1)*(3+sqrt(3))/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054406

/-- `floor((n+1)*(3+sqrt(3))/2)` -/
def P6391815710011889929.Spec : Prop :=
  ∀ n, P6391815710011889929.a n = A054406 (n + 1)

theorem P6391815710011889929.correct : P6391815710011889929.Spec := by
  intro n
  simp only [A054406, Nat.add_sub_cancel]

end A054406

/-! ## A054406.P10243078380320690192

`∑[A245222(n)]+n`
-/

namespace A054406.P10243078380320690192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A054406.P10243078380320690192

namespace A054406

/-- `∑[A245222(n)]+n` -/
def P10243078380320690192.Spec : Prop :=
  ∀ n, P10243078380320690192.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P14532781239787821689

`A188070(n+1)+n`
-/

namespace A054406.P14532781239787821689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) + (n : ℤ)

end

end A054406.P14532781239787821689

namespace A054406

/-- `A188070(n+1)+n` -/
def P14532781239787821689.Spec : Prop :=
  ∀ n, P14532781239787821689.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P5562163743078177672

`A003511(n+1)+1+n`
-/

namespace A054406.P5562163743078177672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1) + 1 + (n : ℤ)

end

end A054406.P5562163743078177672

namespace A054406

/-- `A003511(n+1)+1+n` -/
def P5562163743078177672.Spec : Prop :=
  ∀ n, P5562163743078177672.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P4975872765608315723

`round(sqrt(A194141(n+1))+n)`
-/

namespace A054406.P4975872765608315723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A194141 (n + 1) : ℝ) + (n : ℝ))

end

end A054406.P4975872765608315723

namespace A054406

/-- `round(sqrt(A194141(n+1))+n)` -/
def P4975872765608315723.Spec : Prop :=
  ∀ n, P4975872765608315723.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P6533506216585096645

`ceil((A003512(n+1)+n)/2)`
-/

namespace A054406.P6533506216585096645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003512 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A054406.P6533506216585096645

namespace A054406

/-- `ceil((A003512(n+1)+n)/2)` -/
def P6533506216585096645.Spec : Prop :=
  ∀ n, P6533506216585096645.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P7463729511152133347

`comp[A180123(n+1)]+2+n`
-/

namespace A054406.P7463729511152133347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A054406.P7463729511152133347

namespace A054406

/-- `comp[A180123(n+1)]+2+n` -/
def P7463729511152133347.Spec : Prop :=
  ∀ n, (P7463729511152133347.a n : ℤ) = A054406 (n + 1)

end A054406

/-! ## A054406.P16360143377469637489

`A016789(n)-A074065(n+1)`
-/

namespace A054406.P16360143377469637489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A074065 (n + 1)

end

end A054406.P16360143377469637489

namespace A054406

/-- `A016789(n)-A074065(n+1)` -/
def P16360143377469637489.Spec : Prop :=
  ∀ n, P16360143377469637489.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P10929870907101975054

`A004767(n)-A182772(n+1)`
-/

namespace A054406.P10929870907101975054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A182772 (n + 1)

end

end A054406.P10929870907101975054

namespace A054406

/-- `A004767(n)-A182772(n+1)` -/
def P10929870907101975054.Spec : Prop :=
  ∀ n, P10929870907101975054.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P13792930128181924165

`A022838(n+1)+A014245(n+1)`
-/

namespace A054406.P13792930128181924165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A014245 (n + 1)

end

end A054406.P13792930128181924165

namespace A054406

/-- `A022838(n+1)+A014245(n+1)` -/
def P13792930128181924165.Spec : Prop :=
  ∀ n, P13792930128181924165.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P12082567501094011352

`A022805(n+1)-A022838(n+1)`
-/

namespace A054406.P12082567501094011352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022805 (n + 1) - A022838 (n + 1)

end

end A054406.P12082567501094011352

namespace A054406

/-- `A022805(n+1)-A022838(n+1)` -/
def P12082567501094011352.Spec : Prop :=
  ∀ n, P12082567501094011352.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P4706450242787377079

`A189406(n+1)-A003512(n+1)`
-/

namespace A054406.P4706450242787377079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189406 (n + 1) - A003512 (n + 1)

end

end A054406.P4706450242787377079

namespace A054406

/-- `A189406(n+1)-A003512(n+1)` -/
def P4706450242787377079.Spec : Prop :=
  ∀ n, P4706450242787377079.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P1080441496139903583

`∪[A356085(n+1), A356087(n+1)]`
-/

namespace A054406.P1080441496139903583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054406.P1080441496139903583

namespace A054406

/-- `∪[A356085(n+1), A356087(n+1)]` -/
def P1080441496139903583.Spec : Prop :=
  ∀ n, (P1080441496139903583.a n : ℤ) = A054406 (n + 1)

end A054406

/-! ## A054406.P14001341623137419310

`∪[A356181(n+1), A356183(n+1)]`
-/

namespace A054406.P14001341623137419310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054406.P14001341623137419310

namespace A054406

/-- `∪[A356181(n+1), A356183(n+1)]` -/
def P14001341623137419310.Spec : Prop :=
  ∀ n, (P14001341623137419310.a n : ℤ) = A054406 (n + 1)

end A054406

/-! ## A054406.P514891244921749542

`A198081(A003511(n+1))`
-/

namespace A054406.P514891244921749542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A003511 (n + 1)).toNat

end

end A054406.P514891244921749542

namespace A054406

/-- `A198081(A003511(n+1))` -/
def P514891244921749542.Spec : Prop :=
  ∀ n, P514891244921749542.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P7100590401446102702

`record[A026255(n+1)]`
-/

namespace A054406.P7100590401446102702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054406.P7100590401446102702

namespace A054406

/-- `record[A026255(n+1)]` -/
def P7100590401446102702.Spec : Prop :=
  ∀ n, P7100590401446102702.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P432351062171617768

`A026255(A022838(n+1))`
-/

namespace A054406.P432351062171617768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A022838 (n + 1)).toNat

end

end A054406.P432351062171617768

namespace A054406

/-- `A026255(A022838(n+1))` -/
def P432351062171617768.Spec : Prop :=
  ∀ n, P432351062171617768.a n = A054406 (n + 1)

end A054406

/-! ## A054406.P16008493209080300651

`A026255(A171970(2*(n+1)))`
-/

namespace A054406.P16008493209080300651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A171970 (2 * (n + 1))).toNat

end

end A054406.P16008493209080300651

namespace A054406

/-- `A026255(A171970(2*(n+1)))` -/
def P16008493209080300651.Spec : Prop :=
  ∀ n, P16008493209080300651.a n = A054406 (n + 1)

end A054406

/-!
# A054407: Number of asymmetric n X n binary matrices under action of dihedral group of the square D_4.

The programs for A054407, there is no canonical definition to state claims against.
-/

/-! ## A054407.P350565080111702214

`12*A025919(A140049(n))`
-/

namespace A054407.P350565080111702214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A025919 (A140049 n).toNat

end

end A054407.P350565080111702214

/-!
# A054408: a(n) = smallest positive integer not already in sequence such that the partial sum a(1)+...+a(n) is prime.

The programs for A054408, there is no canonical definition to state claims against.
-/

/-! ## A054408.P3058476550374518701

`lcm(2, A073659(n+1))-char[1]`
-/

namespace A054408.P3058476550374518701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A073659 (n + 1)) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054408.P3058476550374518701

/-! ## A054408.P13624232884289245486

`A073659(A181440(n+1))`
-/

namespace A054408.P13624232884289245486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (A181440 (n + 1)).toNat

end

end A054408.P13624232884289245486

/-! ## A054408.P3249674411770720764

`A073659(A154955(n+1)+1+n)`
-/

namespace A054408.P3249674411770720764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (A154955 (n + 1) + 1 + (n : ℤ)).toNat

end

end A054408.P3249674411770720764

/-! ## A054408.P8639007465018672449

`A073659(xor(n, A010051(or(1, n)+1))+1)`
-/

namespace A054408.P8639007465018672449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (Int.xor (n : ℤ) (A010051 (Nat.lor 1 n + 1)) + 1).toNat

end

end A054408.P8639007465018672449

/-! ## A054408.P15504069311566523142

`A073659(n+1)+A008683(A062383(n))`
-/

namespace A054408.P15504069311566523142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 1) + A008683 (A062383 n).toNat

end

end A054408.P15504069311566523142

/-! ## A054408.P7290005798912684697

`A154269(A008578(n+1))+A073659(n+1)`
-/

namespace A054408.P7290005798912684697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A008578 (n + 1)).toNat + A073659 (n + 1)

end

end A054408.P7290005798912684697

/-! ## A054408.P1821350123550774354

`A073659(n+1)%A032672(a(n-2)+1)` with `a(0)=2, a(1)=1`
-/

namespace A054408.P1821350123550774354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.tmod (A073659 (n + 1)) (A032672 (a (n - 2) + 1).toNat)

end

end A054408.P1821350123550774354

/-! ## A054408.P10499809958589987008

`A073659(n+1)+A008683(A101103(n+1))`
-/

namespace A054408.P10499809958589987008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 1) + A008683 (A101103 (n + 1)).toNat

end

end A054408.P10499809958589987008

/-! ## A054408.P16732496086199709119

`A154269(A217795(n+1)/2)+A073659(n+1)`
-/

namespace A054408.P16732496086199709119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (SequenceMachineLib.roundAway ((A217795 (n + 1) : ℚ) / 2)).toNat + A073659 (n + 1)

end

end A054408.P16732496086199709119

/-! ## A054408.P15796253793883395073

`A073659(n+1)-A154269(A217795(n+1))`
-/

namespace A054408.P15796253793883395073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 1) - A154269 (A217795 (n + 1)).toNat

end

end A054408.P15796253793883395073

/-! ## A054408.P9322346843210746028

`A154269(2*A217795(n+1))+A073659(n+1)`
-/

namespace A054408.P9322346843210746028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * A217795 (n + 1)).toNat + A073659 (n + 1)

end

end A054408.P9322346843210746028

/-! ## A054408.P7567749932100410428

`A154269(n²+1)+A073659(n+1)`
-/

namespace A054408.P7567749932100410428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n ^ 2 + 1) + A073659 (n + 1)

end

end A054408.P7567749932100410428

/-!
# A054409: Maximal difference between consecutive primes in range [prime(n), prime(n)^2].

The programs for A054409, there is no canonical definition to state claims against.
-/

/-! ## A054409.P15711307182828995043

`A063095(∑[A050216(n)]-1)`
-/

namespace A054409.P15711307182828995043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A054409.P15711307182828995043

/-! ## A054409.P17017451356527103764

`A063095(A000879(n+1)-1)`
-/

namespace A054409.P17017451356527103764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A000879 (n + 1) - 1).toNat

end

end A054409.P17017451356527103764

/-! ## A054409.P9659502610492270349

`A063095(A062773(n+1)-2)`
-/

namespace A054409.P9659502610492270349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A062773 (n + 1) - 2).toNat

end

end A054409.P9659502610492270349

/-! ## A054409.P2276345427620003259

`A063095(A079047(n+1)+n)`
-/

namespace A054409.P2276345427620003259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A079047 (n + 1) + (n : ℤ)).toNat

end

end A054409.P2276345427620003259

/-! ## A054409.P12930950562191496246

`A063095(A054272(n+1)-1+n)`
-/

namespace A054409.P12930950562191496246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A054272 (n + 1) - 1 + (n : ℤ)).toNat

end

end A054409.P12930950562191496246

/-! ## A054409.P890545591718880898

`A063095(A054272(n+1)-A024000(n))`
-/

namespace A054409.P890545591718880898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A054272 (n + 1) - A024000 n).toNat

end

end A054409.P890545591718880898

/-! ## A054409.P196183771971305806

`A063095(A000720(A001248(n+1))-1)`
-/

namespace A054409.P196183771971305806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063095 (A000720 (A001248 (n + 1)).toNat - 1).toNat

end

end A054409.P196183771971305806

/-!
# A054410: Susceptibility series H_3 for 2-dimensional Ising model (divided by 2).

The programs for A054410, the canonical program `A054410.P16043295285107417042` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054410 has offset 0).

The definition of A054410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054410.P16043295285107417042

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=12, a(2)=52, a(3)=148, a(4)=328`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054410

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16043295285107417042.Spec : Prop :=
  ∀ n, P16043295285107417042.a n = A054410 n

theorem P16043295285107417042.correct : P16043295285107417042.Spec := by
  intro n
  simp only [A054410]

end A054410

/-! ## A054410.P393964817958107912

`A008529(n)-A033431(n)`
-/

namespace A054410.P393964817958107912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008529 n - A033431 n

end

end A054410.P393964817958107912

namespace A054410

/-- `A008529(n)-A033431(n)` -/
def P393964817958107912.Spec : Prop :=
  ∀ n, P393964817958107912.a n = A054410 n

end A054410

/-! ## A054410.P7850288936541905216

`A008412(n)+n*A005893(n)`
-/

namespace A054410.P7850288936541905216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + (n : ℤ) * A005893 n

end

end A054410.P7850288936541905216

namespace A054410

/-- `A008412(n)+n*A005893(n)` -/
def P7850288936541905216.Spec : Prop :=
  ∀ n, P7850288936541905216.a n = A054410 n

end A054410

/-! ## A054410.P15570653553588145200

`A008529(n)-n²*A005843(n)`
-/

namespace A054410.P15570653553588145200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008529 n - (n ^ 2 : ℤ) * A005843 n

end

end A054410.P15570653553588145200

namespace A054410

/-- `A008529(n)-n²*A005843(n)` -/
def P15570653553588145200.Spec : Prop :=
  ∀ n, P15570653553588145200.a n = A054410 n

end A054410

/-! ## A054410.P16405810903264269262

`A001386(n)+A004006(n)-A004068(n)`
-/

namespace A054410.P16405810903264269262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n + (A004006 n - A004068 n)

end

end A054410.P16405810903264269262

namespace A054410

/-- `A001386(n)+A004006(n)-A004068(n)` -/
def P16405810903264269262.Spec : Prop :=
  ∀ n, P16405810903264269262.a n = A054410 n

end A054410

/-! ## A054410.P17096925507179283633

`A008529(n)+A008532(n)-A008530(n)`
-/

namespace A054410.P17096925507179283633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008529 n + (A008532 n - A008530 n)

end

end A054410.P17096925507179283633

namespace A054410

/-- `A008529(n)+A008532(n)-A008530(n)` -/
def P17096925507179283633.Spec : Prop :=
  ∀ n, P17096925507179283633.a n = A054410 n

end A054410

/-! ## A054410.P766740512502685575

`A008412(n)+A002522(n)*A005843(n)`
-/

namespace A054410.P766740512502685575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + A002522 n * A005843 n

end

end A054410.P766740512502685575

namespace A054410

/-- `A008412(n)+A002522(n)*A005843(n)` -/
def P766740512502685575.Spec : Prop :=
  ∀ n, P766740512502685575.a n = A054410 n

end A054410

/-! ## A054410.P9407045507705398833

`2*(A005902(n)-A000578(n))-A005901(n)`
-/

namespace A054410.P9407045507705398833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005902 n - A000578 n) - A005901 n

end

end A054410.P9407045507705398833

namespace A054410

/-- `2*(A005902(n)-A000578(n))-A005901(n)` -/
def P9407045507705398833.Spec : Prop :=
  ∀ n, P9407045507705398833.a n = A054410 n

end A054410

/-! ## A054410.P16369858055520469021

`A001386(n)-A007290(n+1)-A007290(n+1)`
-/

namespace A054410.P16369858055520469021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - A007290 (n + 1) - A007290 (n + 1)

end

end A054410.P16369858055520469021

namespace A054410

/-- `A001386(n)-A007290(n+1)-A007290(n+1)` -/
def P16369858055520469021.Spec : Prop :=
  ∀ n, P16369858055520469021.a n = A054410 n

end A054410

/-!
# A054411: Numbers k such that Sum_{j} p_j = Sum_{j} e_j where Product_{j} p_j^(e_j) is the prime factorization of k.

The programs for A054411, there is no canonical definition to state claims against.
-/

/-! ## A054411.P456862739239604964

`eq[A001222(n+1), A008472(n+1)]+1`
-/

namespace A054411.P456862739239604964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054411.P456862739239604964

/-! ## A054411.P13044191953154368543

`∩[A068936(n+1), A068937(n+1)]`
-/

namespace A054411.P13044191953154368543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054411.P13044191953154368543

/-! ## A054411.P567331182333670508

`eq[A008472(n+1), A144494(n+1)]+1`
-/

namespace A054411.P567331182333670508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054411.P567331182333670508

/-! ## A054411.P6459092190804561788

`eq[A001222(n+1)², A235323(n+1)]+1`
-/

namespace A054411.P6459092190804561788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054411.P6459092190804561788

/-! ## A054411.P11936747227237120109

`eq[A254340(n+1)-(n+2), A001222(n+1)]+1`
-/

namespace A054411.P11936747227237120109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054411.P11936747227237120109

/-!
# A054412: Numbers k such that, in the prime factorization of k, the product of exponents equals the product of prime factors.

The programs for A054412, there is no canonical definition to state claims against.
-/

/-! ## A054412.P12822236431805350439

`∩[A272859(n+1), A356433(n+1)]`
-/

namespace A054412.P12822236431805350439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054412.P12822236431805350439

/-! ## A054412.P18013231317588480275

`eq[A005361(n+1), A007947(n+1)]+1`
-/

namespace A054412.P18013231317588480275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054412.P18013231317588480275

/-! ## A054412.P14590119838771022917

`record[A272859(n+1)%A000010(A231293(n+1))]`
-/

namespace A054412.P14590119838771022917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272859 (n + 1)) (A000010 (A231293 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054412.P14590119838771022917

/-! ## A054412.P17138819781218194715

`A272859(A178861(n+1))%A356433(3*(n+1))`
-/

namespace A054412.P17138819781218194715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272859 (A178861 (n + 1)).toNat) (A356433 (3 * (n + 1)))

end

end A054412.P17138819781218194715

/-! ## A054412.P2305838023378304189

`A272859(A062399(n+1))`
-/

namespace A054412.P2305838023378304189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272859 (A062399 (n + 1)).toNat

end

end A054412.P2305838023378304189

/-!
# A054413: a(n) = 7*a(n-1) + a(n-2), with a(0)=1 and a(1)=7.

The programs for A054413, the canonical program `A054413.P13562162144105124911` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054413 has offset 0).

The definition of A054413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+a(n-2)` (program `A054413.P13562162144105124911`, by `A054413.P13562162144105124911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054413.P13562162144105124911

`7*a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054413

/-- `7*a(n-1)+a(n-2)` -/
def P13562162144105124911.Spec : Prop :=
  ∀ n, (P13562162144105124911.a n : ℤ) = A054413 n

theorem P13562162144105124911.correct : P13562162144105124911.Spec := by
  intro n
  simp only [A054413]

end A054413

/-! ## A054413.P8526005193473728755

`ogf(1/(1-7x-x^2))`
-/

namespace A054413.P8526005193473728755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, -1] n

end

end A054413.P8526005193473728755

namespace A054413

/-- `ogf(1/(1-7x-x^2))` -/
def P8526005193473728755.Spec : Prop :=
  ∀ n, P8526005193473728755.a n = A054413 n

end A054413

/-! ## A054413.P11411110148677603889

`8*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A054413.P11411110148677603889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  8 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A054413.P11411110148677603889

namespace A054413

/-- `8*a(n-1)-(a(n-1)-a(n-2))` -/
def P11411110148677603889.Spec : Prop :=
  ∀ n, P11411110148677603889.a n = A054413 n

end A054413

/-! ## A054413.P1760365932493475957

`A015453(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A054413.P1760365932493475957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015453 (n + 1) - a (n - 1)

end

end A054413.P1760365932493475957

namespace A054413

/-- `A015453(n+1)-a(n-1)` -/
def P1760365932493475957.Spec : Prop :=
  ∀ n, P1760365932493475957.a n = A054413 n

end A054413

/-! ## A054413.P10522886730012052959

`∑[A086902(n)-A015453(n)]`
-/

namespace A054413.P10522886730012052959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086902 n - A015453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054413.P10522886730012052959

namespace A054413

/-- `∑[A086902(n)-A015453(n)]` -/
def P10522886730012052959.Spec : Prop :=
  ∀ n, P10522886730012052959.a n = A054413 n

end A054413

/-! ## A054413.P9273998866829776288

`A155196(n+1)/6`
-/

namespace A054413.P9273998866829776288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155196 (n + 1) : ℚ) / 6

end

end A054413.P9273998866829776288

namespace A054413

/-- `A155196(n+1)/6` -/
def P9273998866829776288.Spec : Prop :=
  ∀ n, P9273998866829776288.a n = (A054413 n : ℚ)

end A054413

/-! ## A054413.P1327567110317488601

`A073133(A055999(n+4))`
-/

namespace A054413.P1327567110317488601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (A055999 (n + 4)).toNat

end

end A054413.P1327567110317488601

namespace A054413

/-- `A073133(A055999(n+4))` -/
def P1327567110317488601.Spec : Prop :=
  ∀ n, P1327567110317488601.a n = A054413 n

end A054413

/-! ## A054413.P5978130638147461178

`A172236(A055999(n+5))`
-/

namespace A054413.P5978130638147461178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (A055999 (n + 5)).toNat

end

end A054413.P5978130638147461178

namespace A054413

/-- `A172236(A055999(n+5))` -/
def P5978130638147461178.Spec : Prop :=
  ∀ n, P5978130638147461178.a n = A054413 n

end A054413

/-! ## A054413.P10577514756395335082

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A054413.P10577514756395335082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A054413.P10577514756395335082

namespace A054413

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P10577514756395335082.Spec : Prop :=
  ∀ n, P10577514756395335082.a n = A054413 n

end A054413

/-! ## A054413.P12265450783995245238

`sqrt(A099367(n+1))`
-/

namespace A054413.P12265450783995245238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099367 (n + 1) : ℝ)

end

end A054413.P12265450783995245238

namespace A054413

/-- `sqrt(A099367(n+1))` -/
def P12265450783995245238.Spec : Prop :=
  ∀ n, P12265450783995245238.a n = (A054413 n : ℝ)

end A054413

/-!
# A054414: a(n) = 1 + floor(n/(1-log(2)/log(3))).

The programs for A054414, the canonical program `A054414.P11597734480598977056` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054414 has offset 0).

The definition of A054414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+floor(n/(1-log(2)/log(3)))` (program `A054414.P11597734480598977056`, by `A054414.P11597734480598977056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054414.P11597734480598977056

`1+floor(n/(1-log(2)/log(3)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054414

/-- `1+floor(n/(1-log(2)/log(3)))` -/
def P11597734480598977056.Spec : Prop :=
  ∀ n, P11597734480598977056.a n = A054414 n

theorem P11597734480598977056.correct : P11597734480598977056.Spec := by
  intro n
  simp only [A054414]

end A054414

/-! ## A054414.P4347428730368941269

`comp[A204399(n)]`
-/

namespace A054414.P4347428730368941269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A054414.P4347428730368941269

namespace A054414

/-- `comp[A204399(n)]` -/
def P4347428730368941269.Spec : Prop :=
  ∀ n, (P4347428730368941269.a n : ℤ) = A054414 n

end A054414

/-! ## A054414.P8949558649561414023

`A056576(A368131(n)+n+1)`
-/

namespace A054414.P8949558649561414023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (A368131 n + (n + 1 : ℤ)).toNat

end

end A054414.P8949558649561414023

namespace A054414

/-- `A056576(A368131(n)+n+1)` -/
def P8949558649561414023.Spec : Prop :=
  ∀ n, P8949558649561414023.a n = A054414 n

end A054414

/-! ## A054414.P14837249509230761393

`record[(n+1)/(A022924(n)+1)]`
-/

namespace A054414.P14837249509230761393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A022924 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054414.P14837249509230761393

namespace A054414

/-- `record[(n+1)/(A022924(n)+1)]` -/
def P14837249509230761393.Spec : Prop :=
  ∀ n, P14837249509230761393.a n = (A054414 n : ℚ)

end A054414

/-! ## A054414.P14628481378701554560

`record[n+1-A156301(n)%A156301(n+1)]`
-/

namespace A054414.P14628481378701554560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A156301 n) (A156301 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054414.P14628481378701554560

namespace A054414

/-- `record[n+1-A156301(n)%A156301(n+1)]` -/
def P14628481378701554560.Spec : Prop :=
  ∀ n, P14628481378701554560.a n = A054414 n

end A054414

/-! ## A054414.P2697129361024056848

`record[gcd(n+1, A020915(n+1)-A020915(n))]`
-/

namespace A054414.P2697129361024056848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A020915 (n + 1) - A020915 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054414.P2697129361024056848

namespace A054414

/-- `record[gcd(n+1, A020915(n+1)-A020915(n))]` -/
def P2697129361024056848.Spec : Prop :=
  ∀ n, (P2697129361024056848.a n : ℤ) = A054414 n

end A054414

/-!
# A054415: Smallest prime factor of n!-1 (for n>2), a(2)=1.

The programs for A054415, there is no canonical definition to state claims against.
-/

/-! ## A054415.P18248484750482836721

`A242567(n+3)+3%comp[∑[n]]+n`
-/

namespace A054415.P18248484750482836721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242567 (n + 3) + ((3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℕ) : ℤ)

end

end A054415.P18248484750482836721

/-! ## A054415.P2479272228419025393

`A033312(n+2)/A056110(n+2)`
-/

namespace A054415.P2479272228419025393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033312 (n + 2) : ℚ) / (A056110 (n + 2) : ℚ)

end

end A054415.P2479272228419025393

/-! ## A054415.P17131082221901784683

`record[A105060(n+1)]/A056110(n+2)`
-/

namespace A054415.P17131082221901784683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105060 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A056110 (n + 2) : ℚ)

end

end A054415.P17131082221901784683

/-! ## A054415.P4316681525871718873

`A030494(2*n+1)/A056110(n+2)`
-/

namespace A054415.P4316681525871718873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030494 (2 * n + 1) : ℚ) / (A056110 (n + 2) : ℚ)

end

end A054415.P4316681525871718873

/-! ## A054415.P1444605352187877693

`floor(A030494(n+1+n)/A056110(n+2))`
-/

namespace A054415.P1444605352187877693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030494 (n + 1 + n) : ℚ) / (A056110 (n + 2) : ℚ)⌋

end

end A054415.P1444605352187877693

/-!
# A054416: Numbers k such that 9090...9091 (with k-1 copies of 90 and one copy of 91) is prime.

The programs for A054416, there is no canonical definition to state claims against.
-/

/-! ## A054416.P16380609601942558692

`(A001562(n+1)-1)/2`
-/

namespace A054416.P16380609601942558692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001562 (n + 1) - 1 : ℚ) / 2

end

end A054416.P16380609601942558692

/-! ## A054416.P17623898691770444396

`floor(A001562(n+1)/2)`
-/

namespace A054416.P17623898691770444396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001562 (n + 1) : ℚ) / 2⌋

end

end A054416.P17623898691770444396

/-! ## A054416.P14901116408982447184

`ceil(xor(A001562(n+1), A299581(n+1))/2)`
-/

namespace A054416.P14901116408982447184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (A001562 (n + 1)) (A299581 (n + 1)) : ℚ) / 2⌉

end

end A054416.P14901116408982447184

/-! ## A054416.P948684147101901902

`A095373(n+1)+char[2]`
-/

namespace A054416.P948684147101901902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095373 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054416.P948684147101901902

/-! ## A054416.P10706735265104995156

`A004524(A001562(n+1))`
-/

namespace A054416.P10706735265104995156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A001562 (n + 1)).toNat

end

end A054416.P10706735265104995156

/-!
# A054417: Number of connected 3 X n binary matrices with rightmost column [1,0,0]'.

The programs for A054417, the canonical program `A054417.P1519421519442763275` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054417 has offset 1).

The definition of A054417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054417.P1519421519442763275

`7*a(n-1)-3*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=5, a(2)=37`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054417

/-- `7*a(n-1)-3*a(n-2)+5*a(n-3)` -/
def P1519421519442763275.Spec : Prop :=
  ∀ n, P1519421519442763275.a n = A054417 (n + 1)

theorem P1519421519442763275.correct : P1519421519442763275.Spec := by
  intro n
  simp only [A054417, Nat.add_sub_cancel]

end A054417

/-! ## A054417.P15750949084933185834

`ogf((1-2x+5x^2)/(1-7x+3x^2-5x^3))`
-/

namespace A054417.P15750949084933185834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5] [1, -7, 3, -5] n

end

end A054417.P15750949084933185834

namespace A054417

/-- `ogf((1-2x+5x^2)/(1-7x+3x^2-5x^3))` -/
def P15750949084933185834.Spec : Prop :=
  ∀ n, P15750949084933185834.a n = A054417 (n + 1)

end A054417

/-! ## A054417.P17784187754406185894

`Δ[A054420(n+1)/2]`
-/

namespace A054417.P17784187754406185894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054420 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054417.P17784187754406185894

namespace A054417

/-- `Δ[A054420(n+1)/2]` -/
def P17784187754406185894.Spec : Prop :=
  ∀ n, P17784187754406185894.a n = (A054417 (n + 1) : ℚ)

end A054417

/-! ## A054417.P16844637668982792660

`(A054420(n+2)-A054420(n+1))/2`
-/

namespace A054417.P16844637668982792660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054420 (n + 2) - A054420 (n + 1) : ℚ) / 2

end

end A054417.P16844637668982792660

namespace A054417

/-- `(A054420(n+2)-A054420(n+1))/2` -/
def P16844637668982792660.Spec : Prop :=
  ∀ n, P16844637668982792660.a n = (A054417 (n + 1) : ℚ)

end A054417

/-! ## A054417.P7705840715485307218

`A054419(n+1)-2*A054418(n+1)`
-/

namespace A054417.P7705840715485307218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054419 (n + 1) - 2 * A054418 (n + 1)

end

end A054417.P7705840715485307218

namespace A054417

/-- `A054419(n+1)-2*A054418(n+1)` -/
def P7705840715485307218.Spec : Prop :=
  ∀ n, P7705840715485307218.a n = A054417 (n + 1)

end A054417

/-! ## A054417.P6831786031392609037

`A054419(n+1)%(A054418(n+1)+A000007(n))`
-/

namespace A054417.P6831786031392609037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054419 (n + 1)) (A054418 (n + 1) + A000007 n)

end

end A054417.P6831786031392609037

namespace A054417

/-- `A054419(n+1)%(A054418(n+1)+A000007(n))` -/
def P6831786031392609037.Spec : Prop :=
  ∀ n, P6831786031392609037.a n = A054417 (n + 1)

end A054417

/-!
# A054418: Number of connected 3 X n binary matrices with rightmost column [1,1,1]', divided by 4.

The programs for A054418, the canonical program `A054418.P4682199086137298686` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054418 has offset 1).

The definition of A054418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054418.P4682199086137298686

`7*a(n-1)-3*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=8, a(2)=53`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054418

/-- `7*a(n-1)-3*a(n-2)+5*a(n-3)` -/
def P4682199086137298686.Spec : Prop :=
  ∀ n, P4682199086137298686.a n = A054418 (n + 1)

theorem P4682199086137298686.correct : P4682199086137298686.Spec := by
  intro n
  simp only [A054418, Nat.add_sub_cancel]

end A054418

/-! ## A054418.P15753492307981325874

`ogf((1+x)/(1-7x+3x^2-5x^3))`
-/

namespace A054418.P15753492307981325874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, 3, -5] n

end

end A054418.P15753492307981325874

namespace A054418

/-- `ogf((1+x)/(1-7x+3x^2-5x^3))` -/
def P15753492307981325874.Spec : Prop :=
  ∀ n, P15753492307981325874.a n = A054418 (n + 1)

end A054418

/-! ## A054418.P7784166598211900770

`Δ[A054417(n+1)/4]`
-/

namespace A054418.P7784166598211900770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054417 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054418.P7784166598211900770

namespace A054418

/-- `Δ[A054417(n+1)/4]` -/
def P7784166598211900770.Spec : Prop :=
  ∀ n, P7784166598211900770.a n = (A054418 (n + 1) : ℚ)

end A054418

/-! ## A054418.P9681386669430500052

`Δ[Δ[A054420(n+1)/8]]`
-/

namespace A054418.P9681386669430500052
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054420 (n + 1) : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054418.P9681386669430500052

namespace A054418

/-- `Δ[Δ[A054420(n+1)/8]]` -/
def P9681386669430500052.Spec : Prop :=
  ∀ n, P9681386669430500052.a n = (A054418 (n + 1) : ℚ)

end A054418

/-! ## A054418.P17718358676571310095

`(A054419(n+1)-A054417(n+1))/2`
-/

namespace A054418.P17718358676571310095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054419 (n + 1) - A054417 (n + 1) : ℚ) / 2

end

end A054418.P17718358676571310095

namespace A054418

/-- `(A054419(n+1)-A054417(n+1))/2` -/
def P17718358676571310095.Spec : Prop :=
  ∀ n, P17718358676571310095.a n = (A054418 (n + 1) : ℚ)

end A054418

/-!
# A054419: Number of connected 3 X n binary matrices (divided by 2).

The programs for A054419, the canonical program `A054419.P11550507441608045927` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054419 has offset 1).

The definition of A054419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054419.P11550507441608045927

`7*a(n-1)-3*a(n-2)+5*a(n-3)` with `a(0)=3, a(1)=21, a(2)=143`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054419

/-- `7*a(n-1)-3*a(n-2)+5*a(n-3)` -/
def P11550507441608045927.Spec : Prop :=
  ∀ n, P11550507441608045927.a n = A054419 (n + 1)

theorem P11550507441608045927.correct : P11550507441608045927.Spec := by
  intro n
  simp only [A054419, Nat.add_sub_cancel]

end A054419

/-! ## A054419.P17915551690472829517

`ogf((3+5x^2)/(1-7x+3x^2-5x^3))`
-/

namespace A054419.P17915551690472829517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 5] [1, -7, 3, -5] n

end

end A054419.P17915551690472829517

namespace A054419

/-- `ogf((3+5x^2)/(1-7x+3x^2-5x^3))` -/
def P17915551690472829517.Spec : Prop :=
  ∀ n, P17915551690472829517.a n = A054419 (n + 1)

end A054419

/-! ## A054419.P17664535523443182310

`A054417(n+1)+2*A054418(n+1)`
-/

namespace A054419.P17664535523443182310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054417 (n + 1) + 2 * A054418 (n + 1)

end

end A054419.P17664535523443182310

namespace A054419

/-- `A054417(n+1)+2*A054418(n+1)` -/
def P17664535523443182310.Spec : Prop :=
  ∀ n, P17664535523443182310.a n = A054419 (n + 1)

end A054419

/-!
# A054420: Number of connectable 3 X n binary matrices.

The programs for A054420, the canonical program `A054420.P13424771030531071813` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054420 has offset 1).

The definition of A054420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054420.P13424771030531071813

`7*a(n-1)-3*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054420

/-- `7*a(n-1)-3*a(n-2)+5*a(n-3)` -/
def P13424771030531071813.Spec : Prop :=
  ∀ n, P13424771030531071813.a n = A054420 (n + 1)

theorem P13424771030531071813.correct : P13424771030531071813.Spec := by
  intro n
  simp only [A054420, Nat.add_sub_cancel]

end A054420

/-! ## A054420.P180910586777755343

`ogf((-1+4x+5x^2)/(-1+7x-3x^2+5x^3))`
-/

namespace A054420.P180910586777755343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -5] [1, -7, 3, -5] n

end

end A054420.P180910586777755343

namespace A054420

/-- `ogf((-1+4x+5x^2)/(-1+7x-3x^2+5x^3))` -/
def P180910586777755343.Spec : Prop :=
  ∀ n, P180910586777755343.a n = A054420 (n + 1)

end A054420

/-! ## A054420.P17502788797964919060

`Δ[A054418(n+1)]%A054419(n+1)`
-/

namespace A054420.P17502788797964919060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A054419 (n + 1))

end

end A054420.P17502788797964919060

namespace A054420

/-- `Δ[A054418(n+1)]%A054419(n+1)` -/
def P17502788797964919060.Spec : Prop :=
  ∀ n, P17502788797964919060.a n = A054420 (n + 1)

end A054420

/-! ## A054420.P157262798251114305

`Δ[Δ[A054417(n+1)/4]]%A054419(n+1)`
-/

namespace A054420.P157262798251114305
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054417 (n + 1) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A054419 (n + 1))

end

end A054420.P157262798251114305

namespace A054420

/-- `Δ[Δ[A054417(n+1)/4]]%A054419(n+1)` -/
def P157262798251114305.Spec : Prop :=
  ∀ n, P157262798251114305.a n = A054420 (n + 1)

end A054420

/-!
# A054421: Number of disconnected 3 X n binary matrices.

The programs for A054421, the canonical program `A054421.P9396055700112553269` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054421 has offset 1).

The definition of A054421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054421.P9396055700112553269

`14*a(n-1)-52*a(n-2)+26*a(n-3)-35*a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=102`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054421

/-- `14*a(n-1)-52*a(n-2)+26*a(n-3)-35*a(n-4)` -/
def P9396055700112553269.Spec : Prop :=
  ∀ n, P9396055700112553269.a n = A054421 (n + 1)

theorem P9396055700112553269.correct : P9396055700112553269.Spec := by
  intro n
  simp only [A054421, Nat.add_sub_cancel]

end A054421

/-!
# A054422: Number of unlabeled asymmetric ternary cacti having n triangles.

The programs for A054422, there is no canonical definition to state claims against.
-/

/-! ## A054422.P14505884338476422317

`A303913(∑[n+3])`
-/

namespace A054422.P14505884338476422317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054422.P14505884338476422317

/-! ## A054422.P3513928716757852707

`gcd(A285476(n), A303913(A027379(n+1)))`
-/

namespace A054422.P3513928716757852707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285476 n) (A303913 (A027379 (n + 1)).toNat)

end

end A054422.P3513928716757852707

/-! ## A054422.P9088389031430897682

`lcm(A040001(n), A303913(A027379(n+1)))`
-/

namespace A054422.P9088389031430897682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A303913 (A027379 (n + 1)).toNat)

end

end A054422.P9088389031430897682

/-! ## A054422.P16549343161008802875

`char[A014682(n)]*A303913(A027379(n+1))`
-/

namespace A054422.P16549343161008802875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A303913 (A027379 (n + 1)).toNat

end

end A054422.P16549343161008802875

/-! ## A054422.P16428620054728631366

`char[A061579(n)]*A303913(A027379(n+1))`
-/

namespace A054422.P16428620054728631366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A303913 (A027379 (n + 1)).toNat

end

end A054422.P16428620054728631366

/-! ## A054422.P16976895730363031270

`char[A292579(n)]*A303913(A027379(n+1))`
-/

namespace A054422.P16976895730363031270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A303913 (A027379 (n + 1)).toNat

end

end A054422.P16976895730363031270

/-! ## A054422.P18303718966251842910

`A303913(A027379(n+1))/A007318(C(2, n+2))`
-/

namespace A054422.P18303718966251842910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303913 (A027379 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A054422.P18303718966251842910

/-! ## A054422.P4643891095763272899

`A303913(A027379(n+1))%A000032(A000040(n+1))`
-/

namespace A054422.P4643891095763272899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303913 (A027379 (n + 1)).toNat) (A000032 (A000040 (n + 1)).toNat)

end

end A054422.P4643891095763272899

/-!
# A054423: Number of unlabeled 3-gonal cacti having n triangles.

The programs for A054423, there is no canonical definition to state claims against.
-/

/-! ## A054423.P15408719600610113745

`2*A082938(n)-A047749(n)`
-/

namespace A054423.P15408719600610113745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082938 n - A047749 n

end

end A054423.P15408719600610113745

/-! ## A054423.P7946048799495830657

`A303694(∑[n+3])`
-/

namespace A054423.P7946048799495830657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054423.P7946048799495830657

/-! ## A054423.P3697715664658252310

`or(A000007(n), A303694(A027379(n+1)))`
-/

namespace A054423.P3697715664658252310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A303694 (A027379 (n + 1)).toNat)

end

end A054423.P3697715664658252310

/-! ## A054423.P12524848787462639489

`or(A000007(n), A303694(A055998(n+1)))`
-/

namespace A054423.P12524848787462639489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A303694 (A055998 (n + 1)).toNat)

end

end A054423.P12524848787462639489

/-! ## A054423.P7490095460741366848

`A000034(2*n)*A303694(A027379(n+1))`
-/

namespace A054423.P7490095460741366848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A303694 (A027379 (n + 1)).toNat

end

end A054423.P7490095460741366848

/-!
# A054424: Permutation of natural numbers: maps the canonical list of fractions (A020652/A020653) to whole Stern-Brocot (Farey) tree (top = 1/1 and both sides < 1 and > 1, but excluding the "fractions" 0/1 and 1/0).

The programs for A054424, there is no canonical definition to state claims against.
-/

/-! ## A054424.P11930555715325912741

`A054425(A166527(n+1))`
-/

namespace A054424.P11930555715325912741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (A166527 (n + 1)).toNat

end

end A054424.P11930555715325912741

/-! ## A054424.P7833811468618635998

`A054425(eq[1, A003989(n+1)]+1)`
-/

namespace A054424.P7833811468618635998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054424.P7833811468618635998

/-! ## A054424.P10357827775521251679

`A054425(lt[0, A054425(n+1)]+1)`
-/

namespace A054424.P10357827775521251679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A054424.P10357827775521251679

/-! ## A054424.P8587961306794038955

`A054425(eq[1, A054431(n+1)]+1)`
-/

namespace A054424.P8587961306794038955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054424.P8587961306794038955

/-! ## A054424.P16171436127594728217

`A054425(eq[1, A077478(n+1)]+1)`
-/

namespace A054424.P16171436127594728217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054424.P16171436127594728217

/-! ## A054424.P15941101269096110029

`A054425(eq[1, A184097(n+1)]+1)`
-/

namespace A054424.P15941101269096110029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054424.P15941101269096110029

/-! ## A054424.P7456368419586259997

`A054425(eq[1, A287957(n+1)]+1)`
-/

namespace A054424.P7456368419586259997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054424.P7456368419586259997

/-! ## A054424.P13239252645811596855

`A054425(eq[1, A066340(n+2)]+1)`
-/

namespace A054424.P13239252645811596855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066340 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054424.P13239252645811596855

/-! ## A054424.P11039463242059815253

`A054425(record[(n+1)*A054431(n+1)])`
-/

namespace A054424.P11039463242059815253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054424.P11039463242059815253

/-! ## A054424.P17045651317573213756

`A054425(record[(n+1)/A003989(n+1)])`
-/

namespace A054424.P17045651317573213756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003989 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A054424.P17045651317573213756

/-! ## A054424.P14578136810857125914

`A054425(∑[A132068(n+2)])`
-/

namespace A054424.P14578136810857125914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054424.P14578136810857125914

/-!
# A054425: A054424 expanded to normal triangular array, with zeros at those (x,y) where x and y are not relatively prime.

The programs for A054425, there is no canonical definition to state claims against.
-/

/-! ## A054425.P6184849198323656488

`(A338579(n+2)-1)*A054431(n+1)`
-/

namespace A054425.P6184849198323656488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338579 (n + 2) - 1) * A054431 (n + 1)

end

end A054425.P6184849198323656488

/-! ## A054425.P2488197775378344333

`A054424(∑[A054431(n+1)])*A054431(n+1)`
-/

namespace A054425.P2488197775378344333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054424 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A054431 (n + 1)

end

end A054425.P2488197775378344333

/-!
# A054426: Inverse permutation to A054424.

The programs for A054426, there is no canonical definition to state claims against.
-/

/-! ## A054426.P9732209400149032660

`A054430(A054428(n+2)-1)`
-/

namespace A054426.P9732209400149032660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054430 (A054428 (n + 2) - 1).toNat

end

end A054426.P9732209400149032660

/-! ## A054426.P18233712745625639565

`A054428(A054429(n+1)+1)-1`
-/

namespace A054426.P18233712745625639565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054428 (A054429 (n + 1) + 1).toNat - 1

end

end A054426.P18233712745625639565

/-! ## A054426.P9222173478536332412

`A087960(A090288(n))+A054428(A054429(n+1)+1)`
-/

namespace A054426.P9222173478536332412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A090288 n).toNat + A054428 (A054429 (n + 1) + 1).toNat

end

end A054426.P9222173478536332412

/-! ## A054426.P9745051966206895046

`A087960(A290544(n))+A054428(A054429(n+1)+1)`
-/

namespace A054426.P9745051966206895046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A290544 n).toNat + A054428 (A054429 (n + 1) + 1).toNat

end

end A054426.P9745051966206895046

/-!
# A054427: Permutation of natural numbers: maps the fractions A038567/A038566 to the right side (n/m > 1) of Stern-Brocot tree.

The programs for A054427, there is no canonical definition to state claims against.
-/

/-! ## A054427.P862985746063920594

`A305614(A235934(n+1))+A252756(A249812(n+1))`
-/

namespace A054427.P862985746063920594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (A235934 (n + 1)).toNat + A252756 (A249812 (n + 1)).toNat

end

end A054427.P862985746063920594

/-!
# A054429: Simple self-inverse permutation of natural numbers: list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

The programs for A054429, the canonical program `A054429.P11515140416303889102` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054429 has offset 1).

The definition of A054429 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054429.P10405854118876009620

`3*A053644(n+1)-(n+1)-1`
-/

namespace A054429.P10405854118876009620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053644 (n + 1) - (n + 1 : ℤ) - 1

end

end A054429.P10405854118876009620

namespace A054429

/-- `3*A053644(n+1)-(n+1)-1` -/
def P10405854118876009620.Spec : Prop :=
  ∀ n, P10405854118876009620.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P11515140416303889102

`A092569(A065190(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054429

/-- `A092569(A065190(n+1))` -/
def P11515140416303889102.Spec : Prop :=
  ∀ n, P11515140416303889102.a n = A054429 (n + 1)

theorem P11515140416303889102.correct : P11515140416303889102.Spec := by
  intro n
  simp only [A054429, Nat.add_sub_cancel]

end A054429

/-! ## A054429.P13106059187236507139

`A117120(A063946(n+1))`
-/

namespace A054429.P13106059187236507139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A063946 (n + 1)).toNat

end

end A054429.P13106059187236507139

namespace A054429

/-- `A117120(A063946(n+1))` -/
def P13106059187236507139.Spec : Prop :=
  ∀ n, P13106059187236507139.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P9596866889645238581

`xor(n+1, 2^floor(log2(n+1))-1)`
-/

namespace A054429.P9596866889645238581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)

end

end A054429.P9596866889645238581

namespace A054429

/-- `xor(n+1, 2^floor(log2(n+1))-1)` -/
def P9596866889645238581.Spec : Prop :=
  ∀ n, P9596866889645238581.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P4227052344200239489

`A004756(n+1)-(2*n+3)`
-/

namespace A054429.P4227052344200239489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1) - (2 * n + 3 : ℤ)

end

end A054429.P4227052344200239489

namespace A054429

/-- `A004756(n+1)-(2*n+3)` -/
def P4227052344200239489.Spec : Prop :=
  ∀ n, P4227052344200239489.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P17789442878460344621

`3*A053644(n+1)-(n+2)`
-/

namespace A054429.P17789442878460344621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053644 (n + 1) - (n + 2 : ℤ)

end

end A054429.P17789442878460344621

namespace A054429

/-- `3*A053644(n+1)-(n+2)` -/
def P17789442878460344621.Spec : Prop :=
  ∀ n, P17789442878460344621.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P14279517400777527563

`3*A000079(floor(log2(n+1)))-2-n`
-/

namespace A054429.P14279517400777527563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000079 (Nat.log 2 (n + 1)) - 2 - (n : ℤ)

end

end A054429.P14279517400777527563

namespace A054429

/-- `3*A000079(floor(log2(n+1)))-2-n` -/
def P14279517400777527563.Spec : Prop :=
  ∀ n, P14279517400777527563.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P15154197257778097201

`A033484(A000523(n+1))-n`
-/

namespace A054429.P15154197257778097201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (A000523 (n + 1)).toNat - (n : ℤ)

end

end A054429.P15154197257778097201

namespace A054429

/-- `A033484(A000523(n+1))-n` -/
def P15154197257778097201.Spec : Prop :=
  ∀ n, P15154197257778097201.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P14684310100243475676

`A053644(n+1)+A035327(n+1)`
-/

namespace A054429.P14684310100243475676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + A035327 (n + 1)

end

end A054429.P14684310100243475676

namespace A054429

/-- `A053644(n+1)+A035327(n+1)` -/
def P14684310100243475676.Spec : Prop :=
  ∀ n, P14684310100243475676.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P9689214208218955858

`A092323(n+1)+A080079(n+1)`
-/

namespace A054429.P9689214208218955858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (n + 1) + A080079 (n + 1)

end

end A054429.P9689214208218955858

namespace A054429

/-- `A092323(n+1)+A080079(n+1)` -/
def P9689214208218955858.Spec : Prop :=
  ∀ n, P9689214208218955858.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P4876354805087311547

`A004754(n+1)-A006257(n+1)`
-/

namespace A054429.P4876354805087311547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) - A006257 (n + 1)

end

end A054429.P4876354805087311547

namespace A054429

/-- `A004754(n+1)-A006257(n+1)` -/
def P4876354805087311547.Spec : Prop :=
  ∀ n, P4876354805087311547.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P6947697405219564116

`A003817(n+1)-A053645(n+1)`
-/

namespace A054429.P6947697405219564116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A053645 (n + 1)

end

end A054429.P6947697405219564116

namespace A054429

/-- `A003817(n+1)-A053645(n+1)` -/
def P6947697405219564116.Spec : Prop :=
  ∀ n, P6947697405219564116.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P16389178142469027262

`A004758(n+1)-A171763(n+1)`
-/

namespace A054429.P16389178142469027262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1) - A171763 (n + 1)

end

end A054429.P16389178142469027262

namespace A054429

/-- `A004758(n+1)-A171763(n+1)` -/
def P16389178142469027262.Spec : Prop :=
  ∀ n, P16389178142469027262.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P7568093670526035780

`A004756(n+1)%A144396(n+1)`
-/

namespace A054429.P7568093670526035780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004756 (n + 1)) (A144396 (n + 1))

end

end A054429.P7568093670526035780

namespace A054429

/-- `A004756(n+1)%A144396(n+1)` -/
def P7568093670526035780.Spec : Prop :=
  ∀ n, P7568093670526035780.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P18435436079845381650

`A016777(n-A053645(n+1))-n`
-/

namespace A054429.P18435436079845381650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((n : ℤ) - A053645 (n + 1)).toNat - (n : ℤ)

end

end A054429.P18435436079845381650

namespace A054429

/-- `A016777(n-A053645(n+1))-n` -/
def P18435436079845381650.Spec : Prop :=
  ∀ n, P18435436079845381650.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P655257674866571775

`A080079(n+1)-A053645(n+1)+n`
-/

namespace A054429.P655257674866571775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1) - A053645 (n + 1) + (n : ℤ)

end

end A054429.P655257674866571775

namespace A054429

/-- `A080079(n+1)-A053645(n+1)+n` -/
def P655257674866571775.Spec : Prop :=
  ∀ n, P655257674866571775.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P8095143385691338780

`A337909(n+2)-1`
-/

namespace A054429.P8095143385691338780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337909 (n + 2) - 1

end

end A054429.P8095143385691338780

namespace A054429

/-- `A337909(n+2)-1` -/
def P8095143385691338780.Spec : Prop :=
  ∀ n, P8095143385691338780.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P9602457927176116746

`∑[A099892(n+1)]-n`
-/

namespace A054429.P9602457927176116746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054429.P9602457927176116746

namespace A054429

/-- `∑[A099892(n+1)]-n` -/
def P9602457927176116746.Spec : Prop :=
  ∀ n, P9602457927176116746.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P13090144869170861921

`A280510(n+2)-(n+2)`
-/

namespace A054429.P13090144869170861921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280510 (n + 2) - (n + 2 : ℤ)

end

end A054429.P13090144869170861921

namespace A054429

/-- `A280510(n+2)-(n+2)` -/
def P13090144869170861921.Spec : Prop :=
  ∀ n, P13090144869170861921.a n = A054429 (n + 1)

end A054429

/-! ## A054429.P3436306872151484074

`Δ[A073121(n+1)]-(n+2)`
-/

namespace A054429.P3436306872151484074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A054429.P3436306872151484074

namespace A054429

/-- `Δ[A073121(n+1)]-(n+2)` -/
def P3436306872151484074.Spec : Prop :=
  ∀ n, P3436306872151484074.a n = A054429 (n + 1)

end A054429

/-!
# A054430: Simple self-inverse permutation of natural numbers: List each clump of phi(n) numbers (starting from phi(2) = 1) in reverse order.

The programs for A054430, there is no canonical definition to state claims against.
-/

/-! ## A054430.P3429691762294045261

`A054428(A054424(n+1)+1)-1`
-/

namespace A054430.P3429691762294045261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054428 (A054424 (n + 1) + 1).toNat - 1

end

end A054430.P3429691762294045261

/-! ## A054430.P16992958733609262836

`A163805(gcd(n, n+1))+A054428(A054424(n+1)+1)`
-/

namespace A054430.P16992958733609262836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.gcd n (n + 1)) + A054428 (A054424 (n + 1) + 1).toNat

end

end A054430.P16992958733609262836

/-! ## A054430.P1189183819324078110

`A054426(A054427(n+2)-1)`
-/

namespace A054430.P1189183819324078110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054426 (A054427 (n + 2) - 1).toNat

end

end A054430.P1189183819324078110

/-! ## A054430.P12205602653625824417

`A054426(A054429(A054424(n+1)))`
-/

namespace A054430.P12205602653625824417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054426 (A054429 (A054424 (n + 1)).toNat).toNat

end

end A054430.P12205602653625824417

/-!
# A054431: Array read by antidiagonals: T(x, y) tells whether (x, y) are coprime (1) or not (0).

The programs for A054431, the canonical program `A054431.P5825808231892718128` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054431 has offset 1).

The definition of A054431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054431.P4000828198386883514

`A300294(n+2)`
-/

namespace A054431.P4000828198386883514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 2)

end

end A054431.P4000828198386883514

namespace A054431

/-- `A300294(n+2)` -/
def P4000828198386883514.Spec : Prop :=
  ∀ n, P4000828198386883514.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P15692427918146676915

`abs(A323378(n+1))`
-/

namespace A054431.P15692427918146676915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323378 (n + 1)|

end

end A054431.P15692427918146676915

namespace A054431

/-- `abs(A323378(n+1))` -/
def P15692427918146676915.Spec : Prop :=
  ∀ n, P15692427918146676915.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P4335095319477085082

`round(acot(A003989(n+1)))`
-/

namespace A054431.P4335095319477085082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A003989 (n + 1) : ℝ))

end

end A054431.P4335095319477085082

namespace A054431

/-- `round(acot(A003989(n+1)))` -/
def P4335095319477085082.Spec : Prop :=
  ∀ n, P4335095319477085082.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P18068191222335207140

`floor(1/A077478(n+1))`
-/

namespace A054431.P18068191222335207140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A077478 (n + 1) : ℚ)⌋

end

end A054431.P18068191222335207140

namespace A054431

/-- `floor(1/A077478(n+1))` -/
def P18068191222335207140.Spec : Prop :=
  ∀ n, P18068191222335207140.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P11850386748634080241

`floor(1/A134866(n+1))`
-/

namespace A054431.P11850386748634080241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A134866 (n + 1) : ℚ)⌋

end

end A054431.P11850386748634080241

namespace A054431

/-- `floor(1/A134866(n+1))` -/
def P11850386748634080241.Spec : Prop :=
  ∀ n, P11850386748634080241.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P11668644105661685839

`char[eq[1, A066340(n+2)]]`
-/

namespace A054431.P11668644105661685839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066340 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A054431.P11668644105661685839

namespace A054431

/-- `char[eq[1, A066340(n+2)]]` -/
def P11668644105661685839.Spec : Prop :=
  ∀ n, (P11668644105661685839.a n : ℤ) = A054431 (n + 1)

end A054431

/-! ## A054431.P16548350880772632142

`ceil((A102057(n+1)/(n+1))²/π)`
-/

namespace A054431.P16548350880772632142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((A102057 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2 : ℝ) / Real.pi⌉

end

end A054431.P16548350880772632142

namespace A054431

/-- `ceil((A102057(n+1)/(n+1))²/π)` -/
def P16548350880772632142.Spec : Prop :=
  ∀ n, P16548350880772632142.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P13521427061395408864

`A000007(A076953(n+1))`
-/

namespace A054431.P13521427061395408864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A076953 (n + 1)).toNat

end

end A054431.P13521427061395408864

namespace A054431

/-- `A000007(A076953(n+1))` -/
def P13521427061395408864.Spec : Prop :=
  ∀ n, P13521427061395408864.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P5493522864975087532

`A008683(A003989(n+1)²)`
-/

namespace A054431.P5493522864975087532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003989 (n + 1) ^ 2).toNat

end

end A054431.P5493522864975087532

namespace A054431

/-- `A008683(A003989(n+1)²)` -/
def P5493522864975087532.Spec : Prop :=
  ∀ n, P5493522864975087532.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P10561582948429647874

`A055615(A003989(n+1)²)`
-/

namespace A054431.P10561582948429647874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A003989 (n + 1) ^ 2).toNat

end

end A054431.P10561582948429647874

namespace A054431

/-- `A055615(A003989(n+1)²)` -/
def P10561582948429647874.Spec : Prop :=
  ∀ n, P10561582948429647874.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P9081787991141647175

`A008683(A077478(n+1)²)`
-/

namespace A054431.P9081787991141647175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A077478 (n + 1) ^ 2).toNat

end

end A054431.P9081787991141647175

namespace A054431

/-- `A008683(A077478(n+1)²)` -/
def P9081787991141647175.Spec : Prop :=
  ∀ n, P9081787991141647175.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P16820800454034390000

`A097945(A003989(n+1)²)`
-/

namespace A054431.P16820800454034390000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (A003989 (n + 1) ^ 2).toNat

end

end A054431.P16820800454034390000

namespace A054431

/-- `A097945(A003989(n+1)²)` -/
def P16820800454034390000.Spec : Prop :=
  ∀ n, P16820800454034390000.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P17410064214563136702

`A128407(A003989(n+1)²)`
-/

namespace A054431.P17410064214563136702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (A003989 (n + 1) ^ 2).toNat

end

end A054431.P17410064214563136702

namespace A054431

/-- `A128407(A003989(n+1)²)` -/
def P17410064214563136702.Spec : Prop :=
  ∀ n, P17410064214563136702.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P17583843116730293976

`A185906(A003989(n+1)²)`
-/

namespace A054431.P17583843116730293976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185906 (A003989 (n + 1) ^ 2).toNat

end

end A054431.P17583843116730293976

namespace A054431

/-- `A185906(A003989(n+1)²)` -/
def P17583843116730293976.Spec : Prop :=
  ∀ n, P17583843116730293976.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P9534256674472381972

`A318608(A077478(n+1)²)`
-/

namespace A054431.P9534256674472381972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (A077478 (n + 1) ^ 2).toNat

end

end A054431.P9534256674472381972

namespace A054431

/-- `A318608(A077478(n+1)²)` -/
def P9534256674472381972.Spec : Prop :=
  ∀ n, P9534256674472381972.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P5825808231892718128

`A000007(A003989(n+1)-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A054431

/-- `A000007(A003989(n+1)-1)` -/
def P5825808231892718128.Spec : Prop :=
  ∀ n, P5825808231892718128.a n = A054431 (n + 1)

theorem P5825808231892718128.correct : P5825808231892718128.Spec := by
  intro n
  simp only [A054431, Nat.add_sub_cancel]

end A054431

/-! ## A054431.P14026217917295833257

`A000007(A077478(n+1)-1)`
-/

namespace A054431.P14026217917295833257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A077478 (n + 1) - 1).toNat

end

end A054431.P14026217917295833257

namespace A054431

/-- `A000007(A077478(n+1)-1)` -/
def P14026217917295833257.Spec : Prop :=
  ∀ n, P14026217917295833257.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P2895534612885541405

`1-A000007(A396382(n+1))`
-/

namespace A054431.P2895534612885541405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A396382 (n + 1)).toNat

end

end A054431.P2895534612885541405

namespace A054431

/-- `1-A000007(A396382(n+1))` -/
def P2895534612885541405.Spec : Prop :=
  ∀ n, P2895534612885541405.a n = A054431 (n + 1)

end A054431

/-! ## A054431.P12295758975210451680

`gcd(A000038(n), A323378(n+1))`
-/

namespace A054431.P12295758975210451680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A323378 (n + 1))

end

end A054431.P12295758975210451680

namespace A054431

/-- `gcd(A000038(n), A323378(n+1))` -/
def P12295758975210451680.Spec : Prop :=
  ∀ n, (P12295758975210451680.a n : ℤ) = A054431 (n + 1)

end A054431

/-! ## A054431.P12317697467199585031

`lcm(A020985(n), A323378(n+1))`
-/

namespace A054431.P12317697467199585031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A323378 (n + 1))

end

end A054431.P12317697467199585031

namespace A054431

/-- `lcm(A020985(n), A323378(n+1))` -/
def P12317697467199585031.Spec : Prop :=
  ∀ n, (P12317697467199585031.a n : ℤ) = A054431 (n + 1)

end A054431

/-!
# A054432: a(n) = Sum_{1<=k<=n, gcd(k,n)=1} 2^(k-1).

The programs for A054432, there is no canonical definition to state claims against.
-/

/-! ## A054432.P3105448384798964036

`∑{d}[n+1, A008683(#)*A338647((n+1)/#)]`
-/

namespace A054432.P3105448384798964036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A338647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054432.P3105448384798964036

/-! ## A054432.P4844280651691345727

`A245392(n+1)-∑{d}[n+1, 2^(#-1)]`
-/

namespace A054432.P4844280651691345727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245392 (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A054432.P4844280651691345727

/-! ## A054432.P7403602346104914753

`A245392(n+1)-A034729(n+1)`
-/

namespace A054432.P7403602346104914753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245392 (n + 1) - A034729 (n + 1)

end

end A054432.P7403602346104914753

/-! ## A054432.P15655304856511298748

`A245392(n+1)-A055895(n+1)/2`
-/

namespace A054432.P15655304856511298748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245392 (n + 1) : ℚ) - (A055895 (n + 1) : ℚ) / 2

end

end A054432.P15655304856511298748

/-! ## A054432.P17271100804956675221

`A245392(n+1)-(A247146(n+1)+2^n)`
-/

namespace A054432.P17271100804956675221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245392 (n + 1) - (A247146 (n + 1) + (2 ^ n : ℤ))

end

end A054432.P17271100804956675221

/-! ## A054432.P4271769111425361208

`A245392(n+1)-or(A328337(n+1)+1, 2^n)`
-/

namespace A054432.P4271769111425361208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245392 (n + 1) - Int.lor (A328337 (n + 1) + 1) (2 ^ n : ℤ)

end

end A054432.P4271769111425361208

/-! ## A054432.P14904299391116891295

`A245392(n+1)-(∑{d}[n+1, A151821(#)]+1)/2`
-/

namespace A054432.P14904299391116891295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245392 (n + 1) : ℚ) - ((∑ d ∈ Nat.divisors (f1 n), A151821 d + 1 : ℤ) : ℚ) / 2

end

end A054432.P14904299391116891295

/-! ## A054432.P5249201161386139361

`A245392(n+1)-or(1, ∑{d}[n+1, A000079(n%#)])`
-/

namespace A054432.P5249201161386139361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245392 (n + 1) - Int.lor 1 (∑ d ∈ Nat.divisors (f1 n), A000079 (n % d))

end

end A054432.P5249201161386139361

/-! ## A054432.P10977042044575984986

`A245392(n+1)-(A130711(n+1)+A108046(n+1))`
-/

namespace A054432.P10977042044575984986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245392 (n + 1) - (A130711 (n + 1) + A108046 (n + 1))

end

end A054432.P10977042044575984986

/-!
# A054433: Numbers formed by interpreting the reduced residue set of every even number as a Zeckendorf Expansion.

The programs for A054433, there is no canonical definition to state claims against.
-/

/-! ## A054433.P12227868034810264102

`ceil(ϕ*A063683(n+1)-A014963(6*(n+1)))`
-/

namespace A054433.P12227868034810264102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A063683 (n + 1) : ℝ) - (A014963 (6 * (n + 1)) : ℝ)⌉

end

end A054433.P12227868034810264102

/-! ## A054433.P16054211808319070299

`ceil(A008683(A002146(n))+ϕ*A063683(n+1))`
-/

namespace A054433.P16054211808319070299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A002146 n).toNat : ℝ) + Real.goldenRatio * (A063683 (n + 1) : ℝ)⌉

end

end A054433.P16054211808319070299

/-! ## A054433.P3062091254149872373

`floor(ϕ*A063683(n+1)-A383151(3*n)%3)`
-/

namespace A054433.P3062091254149872373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A063683 (n + 1) : ℝ) - (Int.tmod (A383151 (3 * n)) 3 : ℝ)⌋

end

end A054433.P3062091254149872373

/-! ## A054433.P11995325207199205013

`A063683(n+1)/A050611(n)*A048757(n)`
-/

namespace A054433.P11995325207199205013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063683 (n + 1) : ℚ) / (A050611 n : ℚ) * (A048757 n : ℚ)

end

end A054433.P11995325207199205013

/-! ## A054433.P8924949328016205334

`floor(ϕ*A063683(n+1)-A010043(n)%3)`
-/

namespace A054433.P8924949328016205334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A063683 (n + 1) : ℝ) - (Int.tmod (A010043 n) 3 : ℝ)⌋

end

end A054433.P8924949328016205334

/-!
# A054436: Smallest area of a Pythagorean triangle with n as length of a leg.

The programs for A054436, there is no canonical definition to state claims against.
-/

/-! ## A054436.P15880994094662486425

`(n+3)*A055527(n+3)/2`
-/

namespace A054436.P15880994094662486425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A055527 (n + 3) : ℚ) / 2

end

end A054436.P15880994094662486425

/-! ## A054436.P16375623048884745386

`A014682((n+3)*A055527(n+3))`
-/

namespace A054436.P16375623048884745386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 3 : ℤ) * A055527 (n + 3)).toNat

end

end A054436.P16375623048884745386

/-! ## A054436.P15935740698763147547

`A332893((n+3)*A055527(n+3))`
-/

namespace A054436.P15935740698763147547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 ((n + 3 : ℤ) * A055527 (n + 3)).toNat

end

end A054436.P15935740698763147547

/-! ## A054436.P2697269700390679514

`A001281((n+3)*A055527(n+3))`
-/

namespace A054436.P2697269700390679514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n + 3 : ℤ) * A055527 (n + 3)).toNat

end

end A054436.P2697269700390679514

/-!
# A054437: Maximal subscripts within generalized Fibonacci sequence containing n.

The programs for A054437, there is no canonical definition to state claims against.
-/

/-! ## A054437.P1081605153121552325

`A345377(A124455(n+1)*A319432(n+1))`
-/

namespace A054437.P1081605153121552325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345377 (A124455 (n + 1) * A319432 (n + 1)).toNat

end

end A054437.P1081605153121552325

/-! ## A054437.P14217132516102744521

`A225541(A004273(A089961(n+1))*A017581(n))`
-/

namespace A054437.P14217132516102744521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A004273 (A089961 (n + 1)).toNat * A017581 n).toNat

end

end A054437.P14217132516102744521

/-! ## A054437.P2619459931047011670

`A108852(A187829(n+1))-A000119(n)`
-/

namespace A054437.P2619459931047011670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A187829 (n + 1)).toNat - A000119 n

end

end A054437.P2619459931047011670

/-! ## A054437.P17691295499611562270

`A108852(n+1)-A286326(A187829(n+1))`
-/

namespace A054437.P17691295499611562270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (n + 1) - A286326 (A187829 (n + 1)).toNat

end

end A054437.P17691295499611562270

/-! ## A054437.P13864827202692797900

`A334441(n)+A020639(A002046(n+1))`
-/

namespace A054437.P13864827202692797900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334441 n + A020639 (A002046 (n + 1)).toNat

end

end A054437.P13864827202692797900

/-!
# A054438: Third derivative of n.

The programs for A054438, the canonical program `A054438.P5014567345859985492` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054438 has offset 0).

The definition of A054438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054438.P5014567345859985492

`A038570(A038554(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054438

/-- `A038570(A038554(n))` -/
def P5014567345859985492.Spec : Prop :=
  ∀ n, P5014567345859985492.a n = A054438 n

theorem P5014567345859985492.correct : P5014567345859985492.Spec := by
  intro n
  simp only [A054438]

end A054438

/-! ## A054438.P7109609912585198040

`A038570(floor(A038556(n)/2))`
-/

namespace A054438.P7109609912585198040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 ⌊(A038556 n : ℚ) / 2⌋.toNat

end

end A054438.P7109609912585198040

namespace A054438

/-- `A038570(floor(A038556(n)/2))` -/
def P7109609912585198040.Spec : Prop :=
  ∀ n, P7109609912585198040.a n = A054438 n

end A054438

/-! ## A054438.P2775221375377744113

`A038570(A038558(A038570(n)))`
-/

namespace A054438.P2775221375377744113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (A038558 (A038570 n).toNat).toNat

end

end A054438.P2775221375377744113

namespace A054438

/-- `A038570(A038558(A038570(n)))` -/
def P2775221375377744113.Spec : Prop :=
  ∀ n, P2775221375377744113.a n = A054438 n

end A054438

/-! ## A054438.P1986087827107441140

`A038570(A003188(n)-A053644(n))`
-/

namespace A054438.P1986087827107441140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (A003188 n - A053644 n).toNat

end

end A054438.P1986087827107441140

namespace A054438

/-- `A038570(A003188(n)-A053644(n))` -/
def P1986087827107441140.Spec : Prop :=
  ∀ n, P1986087827107441140.a n = A054438 n

end A054438

/-! ## A054438.P10873579948339851791

`A038570(xor(A003188(n), A053644(n)))`
-/

namespace A054438.P10873579948339851791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (Int.xor (A003188 n) (A053644 n)).toNat

end

end A054438.P10873579948339851791

namespace A054438

/-- `A038570(xor(A003188(n), A053644(n)))` -/
def P10873579948339851791.Spec : Prop :=
  ∀ n, P10873579948339851791.a n = A054438 n

end A054438

/-! ## A054438.P11560071168869635391

`A038554(A038554(A038554(n)+A000007(n)))`
-/

namespace A054438.P11560071168869635391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A038554 (A038554 n + A000007 n).toNat).toNat

end

end A054438.P11560071168869635391

namespace A054438

/-- `A038554(A038554(A038554(n)+A000007(n)))` -/
def P11560071168869635391.Spec : Prop :=
  ∀ n, P11560071168869635391.a n = A054438 n

end A054438

/-! ## A054438.P6827506461648805140

`A038554(A038554(A038554(n)+A000038(n)))`
-/

namespace A054438.P6827506461648805140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A038554 (A038554 n + A000038 n).toNat).toNat

end

end A054438.P6827506461648805140

namespace A054438

/-- `A038554(A038554(A038554(n)+A000038(n)))` -/
def P6827506461648805140.Spec : Prop :=
  ∀ n, P6827506461648805140.a n = A054438 n

end A054438

/-! ## A054438.P8340130423077009270

`A038554(A038554(A038554(n)%A008486(n)))`
-/

namespace A054438.P8340130423077009270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A038554 (Int.tmod (A038554 n) (A008486 n)).toNat).toNat

end

end A054438.P8340130423077009270

namespace A054438

/-- `A038554(A038554(A038554(n)%A008486(n)))` -/
def P8340130423077009270.Spec : Prop :=
  ∀ n, P8340130423077009270.a n = A054438 n

end A054438

/-! ## A054438.P6134056844476264499

`A038554(A038554(A038554(n))%A052938(n))`
-/

namespace A054438.P6134056844476264499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (Int.tmod (A038554 (A038554 n).toNat) (A052938 n)).toNat

end

end A054438.P6134056844476264499

namespace A054438

/-- `A038554(A038554(A038554(n))%A052938(n))` -/
def P6134056844476264499.Spec : Prop :=
  ∀ n, P6134056844476264499.a n = A054438 n

end A054438

/-! ## A054438.P16297162162065071894

`A038554(A038554(A038554(A343647(A343646(n)))))`
-/

namespace A054438.P16297162162065071894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A038554 (A038554 (A343647 (A343646 n).toNat).toNat).toNat).toNat

end

end A054438.P16297162162065071894

namespace A054438

/-- `A038554(A038554(A038554(A343647(A343646(n)))))` -/
def P16297162162065071894.Spec : Prop :=
  ∀ n, P16297162162065071894.a n = A054438 n

end A054438

/-! ## A054438.P2417358652828845242

`A038554(A038554(A038554(A335133(A335133(n)))))`
-/

namespace A054438.P2417358652828845242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A038554 (A038554 (A335133 (A335133 n).toNat).toNat).toNat).toNat

end

end A054438.P2417358652828845242

namespace A054438

/-- `A038554(A038554(A038554(A335133(A335133(n)))))` -/
def P2417358652828845242.Spec : Prop :=
  ∀ n, P2417358652828845242.a n = A054438 n

end A054438

/-! ## A054438.P1561358309667903330

`A054439(A038558(n))`
-/

namespace A054438.P1561358309667903330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054439 (A038558 n).toNat

end

end A054438.P1561358309667903330

namespace A054438

/-- `A054439(A038558(n))` -/
def P1561358309667903330.Spec : Prop :=
  ∀ n, P1561358309667903330.a n = A054438 n

end A054438

/-!
# A054439: Fourth derivative of n.

The programs for A054439, the canonical program `A054439.P8347525699778646254` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054439 has offset 0).

The definition of A054439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038570, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054439.P8347525699778646254

`A038570(A038570(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054439

/-- `A038570(A038570(n))` -/
def P8347525699778646254.Spec : Prop :=
  ∀ n, P8347525699778646254.a n = A054439 n

theorem P8347525699778646254.correct : P8347525699778646254.Spec := by
  intro n
  simp only [A054439]

end A054439

/-! ## A054439.P2453956114484973146

`A038554(A038554(A038554(A038554(n))))`
-/

namespace A054439.P2453956114484973146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A038554 (A038554 (A038554 n).toNat).toNat).toNat

end

end A054439.P2453956114484973146

namespace A054439

/-- `A038554(A038554(A038554(A038554(n))))` -/
def P2453956114484973146.Spec : Prop :=
  ∀ n, P2453956114484973146.a n = A054439 n

end A054439

/-! ## A054439.P7089390001821494798

`A054438(A038554(n))`
-/

namespace A054439.P7089390001821494798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054438 (A038554 n).toNat

end

end A054439.P7089390001821494798

namespace A054439

/-- `A054438(A038554(n))` -/
def P7089390001821494798.Spec : Prop :=
  ∀ n, P7089390001821494798.a n = A054439 n

end A054439

/-! ## A054439.P4390501208544498622

`A054438(floor(A038556(n)/2))`
-/

namespace A054439.P4390501208544498622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054438 ⌊(A038556 n : ℚ) / 2⌋.toNat

end

end A054439.P4390501208544498622

namespace A054439

/-- `A054438(floor(A038556(n)/2))` -/
def P4390501208544498622.Spec : Prop :=
  ∀ n, P4390501208544498622.a n = A054439 n

end A054439

/-! ## A054439.P8001943604098318081

`A054438(A003188(n)-A053644(n))`
-/

namespace A054439.P8001943604098318081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054438 (A003188 n - A053644 n).toNat

end

end A054439.P8001943604098318081

namespace A054439

/-- `A054438(A003188(n)-A053644(n))` -/
def P8001943604098318081.Spec : Prop :=
  ∀ n, P8001943604098318081.a n = A054439 n

end A054439

/-! ## A054439.P867305094932671400

`A054438(xor(A003188(n), A053644(n)))`
-/

namespace A054439.P867305094932671400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054438 (Int.xor (A003188 n) (A053644 n)).toNat

end

end A054439.P867305094932671400

namespace A054439

/-- `A054438(xor(A003188(n), A053644(n)))` -/
def P867305094932671400.Spec : Prop :=
  ∀ n, P867305094932671400.a n = A054439 n

end A054439

/-! ## A054439.P6429169283495530399

`A054438(A038558(A038558(A054438(n))))`
-/

namespace A054439.P6429169283495530399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054438 (A038558 (A038558 (A054438 n).toNat).toNat).toNat

end

end A054439.P6429169283495530399

namespace A054439

/-- `A054438(A038558(A038558(A054438(n))))` -/
def P6429169283495530399.Spec : Prop :=
  ∀ n, P6429169283495530399.a n = A054439 n

end A054439

/-!
# A054440: Number of ordered pairs of partitions of n with no common parts.

The programs for A054440, there is no canonical definition to state claims against.
-/

/-! ## A054440.P15176521980934071495

`A036453(n+1)*A260669(n)`
-/

namespace A054440.P15176521980934071495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A260669 n

end

end A054440.P15176521980934071495

/-! ## A054440.P9215846025784764335

`(A057427(n)+1)*A260669(n)`
-/

namespace A054440.P9215846025784764335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A260669 n

end

end A054440.P9215846025784764335

/-! ## A054440.P4342835076055985165

`A104435(n+1)*A260669(n)`
-/

namespace A054440.P4342835076055985165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A260669 n

end

end A054440.P4342835076055985165

/-! ## A054440.P14794453958657867294

`A260669(A028310(n))+A260669(n)`
-/

namespace A054440.P14794453958657867294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260669 (A028310 n).toNat + A260669 n

end

end A054440.P14794453958657867294

/-! ## A054440.P7350156090160803973

`A020639(A001223(n+1))*A260669(n)`
-/

namespace A054440.P7350156090160803973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A260669 n

end

end A054440.P7350156090160803973

/-! ## A054440.P6531792055048527355

`A020639(A007366(n+1))*A260669(n)`
-/

namespace A054440.P6531792055048527355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007366 (n + 1)).toNat * A260669 n

end

end A054440.P6531792055048527355

/-! ## A054440.P3104737726447643842

`A370005(∑[n])`
-/

namespace A054440.P3104737726447643842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054440.P3104737726447643842

/-! ## A054440.P11073492361635161813

`A284592(∑[4*n])`
-/

namespace A054440.P11073492361635161813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054440.P11073492361635161813

/-! ## A054440.P15589006125338950874

`A284592(A046092(n))^ceil(acot(n))`
-/

namespace A054440.P15589006125338950874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284592 (A046092 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A054440.P15589006125338950874

/-! ## A054440.P2668365223258068711

`xor(1, xor(1, A284592(2*A002378(n))))`
-/

namespace A054440.P2668365223258068711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A284592 (2 * A002378 n).toNat))

end

end A054440.P2668365223258068711

/-! ## A054440.P15856868390945147032

`or(A000007(n), A284592(2*A002378(n)))`
-/

namespace A054440.P15856868390945147032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A284592 (2 * A002378 n).toNat)

end

end A054440.P15856868390945147032

/-! ## A054440.P17436855638166781584

`A284592(A046092(n))+C(n, A004277(n))`
-/

namespace A054440.P17436855638166781584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (A046092 n).toNat + (Nat.choose n (A004277 n).toNat : ℤ)

end

end A054440.P17436855638166781584

/-! ## A054440.P2228808571856405747

`A284592(A046092(n))/A014963(∑[n+1])`
-/

namespace A054440.P2228808571856405747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284592 (A046092 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A054440.P2228808571856405747

/-! ## A054440.P12874866558171469337

`char[A004476(n)]*A284592(2*A002378(n))`
-/

namespace A054440.P12874866558171469337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A284592 (2 * A002378 n).toNat

end

end A054440.P12874866558171469337

/-! ## A054440.P6837478437125666505

`A284592(2*A002378(n))+A000007(n+1)`
-/

namespace A054440.P6837478437125666505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (2 * A002378 n).toNat + A000007 (n + 1)

end

end A054440.P6837478437125666505

/-! ## A054440.P10366488959241372871

`A000041(C(2, n))*A284592(2*A002378(n))`
-/

namespace A054440.P10366488959241372871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A284592 (2 * A002378 n).toNat

end

end A054440.P10366488959241372871

/-! ## A054440.P7306527988154062150

`A000108(C(2, n))*A284592(2*A002378(n))`
-/

namespace A054440.P7306527988154062150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A284592 (2 * A002378 n).toNat

end

end A054440.P7306527988154062150

/-! ## A054440.P15227453669499268868

`A007318(C(2, n))*A284592(2*A002378(n))`
-/

namespace A054440.P15227453669499268868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A284592 (2 * A002378 n).toNat

end

end A054440.P15227453669499268868

/-! ## A054440.P15430586921696240603

`A008683(gcd(n, n+1))*A284592(A046092(n))`
-/

namespace A054440.P15430586921696240603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * A284592 (A046092 n).toNat

end

end A054440.P15430586921696240603

/-!
# A054441: Convolution of (shifted) A026671 with A000984 (central binomial coefficients of even order).

The programs for A054441, the canonical program `A054441.P15897159802868765390` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054441 has offset 0).

The definition of A054441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026671, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054441.P15897159802868765390

`A026671(n)-C(2*n, n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054441

/-- `A026671(n)-C(2*n, n)` -/
def P15897159802868765390.Spec : Prop :=
  ∀ n, P15897159802868765390.a n = A054441 n

theorem P15897159802868765390.correct : P15897159802868765390.Spec := by
  intro n
  simp only [A054441]

end A054441

/-! ## A054441.P15805158549070381605

`record[and(1, n)*A026733(n)]`
-/

namespace A054441.P15805158549070381605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A026733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054441.P15805158549070381605

namespace A054441

/-- `record[and(1, n)*A026733(n)]` -/
def P15805158549070381605.Spec : Prop :=
  ∀ n, P15805158549070381605.a n = A054441 n

end A054441

/-! ## A054441.P8936995801949501836

`A010753(comp[2*(n+1)]+n)`
-/

namespace A054441.P8936995801949501836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010753 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A054441.P8936995801949501836

namespace A054441

/-- `A010753(comp[2*(n+1)]+n)` -/
def P8936995801949501836.Spec : Prop :=
  ∀ n, P8936995801949501836.a n = A054441 n

end A054441

/-! ## A054441.P8212444252149777842

`A026671(n)-A000984(n)`
-/

namespace A054441.P8212444252149777842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A000984 n

end

end A054441.P8212444252149777842

namespace A054441

/-- `A026671(n)-A000984(n)` -/
def P8212444252149777842.Spec : Prop :=
  ∀ n, P8212444252149777842.a n = A054441 n

end A054441

/-! ## A054441.P1145443128625973528

`A014445(n)-A176085(n)`
-/

namespace A054441.P1145443128625973528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A176085 n

end

end A054441.P1145443128625973528

namespace A054441

/-- `A014445(n)-A176085(n)` -/
def P1145443128625973528.Spec : Prop :=
  ∀ n, P1145443128625973528.a n = A054441 n

end A054441

/-! ## A054441.P13276497753564193027

`A279014(n)-A088218(n)`
-/

namespace A054441.P13276497753564193027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279014 n - A088218 n

end

end A054441.P13276497753564193027

namespace A054441

/-- `A279014(n)-A088218(n)` -/
def P13276497753564193027.Spec : Prop :=
  ∀ n, P13276497753564193027.a n = A054441 n

end A054441

/-! ## A054441.P655892157459222213

`A026671(n)-record[A081668(n)]`
-/

namespace A054441.P655892157459222213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054441.P655892157459222213

namespace A054441

/-- `A026671(n)-record[A081668(n)]` -/
def P655892157459222213.Spec : Prop :=
  ∀ n, P655892157459222213.a n = A054441 n

end A054441

/-! ## A054441.P10456600721714351173

`A026671(n)-record[A126869(n)]`
-/

namespace A054441.P10456600721714351173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054441.P10456600721714351173

namespace A054441

/-- `A026671(n)-record[A126869(n)]` -/
def P10456600721714351173.Spec : Prop :=
  ∀ n, P10456600721714351173.a n = A054441 n

end A054441

/-! ## A054441.P4326437254386225791

`A026671(n)-record[A126930(n)]`
-/

namespace A054441.P4326437254386225791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054441.P4326437254386225791

namespace A054441

/-- `A026671(n)-record[A126930(n)]` -/
def P4326437254386225791.Spec : Prop :=
  ∀ n, P4326437254386225791.a n = A054441 n

end A054441

/-! ## A054441.P7830152917328049230

`record[A000035(n)*A026733(n)]`
-/

namespace A054441.P7830152917328049230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A026733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054441.P7830152917328049230

namespace A054441

/-- `record[A000035(n)*A026733(n)]` -/
def P7830152917328049230.Spec : Prop :=
  ∀ n, P7830152917328049230.a n = A054441 n

end A054441

/-! ## A054441.P8907102719028367326

`A026676(2*n)-A000984(n)`
-/

namespace A054441.P8907102719028367326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * n) - A000984 n

end

end A054441.P8907102719028367326

namespace A054441

/-- `A026676(2*n)-A000984(n)` -/
def P8907102719028367326.Spec : Prop :=
  ∀ n, P8907102719028367326.a n = A054441 n

end A054441

/-! ## A054441.P1215253284998940185

`A026671(n)-A001405(2*n)`
-/

namespace A054441.P1215253284998940185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A001405 (2 * n)

end

end A054441.P1215253284998940185

namespace A054441

/-- `A026671(n)-A001405(2*n)` -/
def P1215253284998940185.Spec : Prop :=
  ∀ n, P1215253284998940185.a n = A054441 n

end A054441

/-! ## A054441.P14049710711145676051

`A026671(n)-A081668(2*n)`
-/

namespace A054441.P14049710711145676051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A081668 (2 * n)

end

end A054441.P14049710711145676051

namespace A054441

/-- `A026671(n)-A081668(2*n)` -/
def P14049710711145676051.Spec : Prop :=
  ∀ n, P14049710711145676051.a n = A054441 n

end A054441

/-! ## A054441.P4233277497385904691

`A026671(n)-A126869(2*n)`
-/

namespace A054441.P4233277497385904691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A126869 (2 * n)

end

end A054441.P4233277497385904691

namespace A054441

/-- `A026671(n)-A126869(2*n)` -/
def P4233277497385904691.Spec : Prop :=
  ∀ n, P4233277497385904691.a n = A054441 n

end A054441

/-! ## A054441.P4060151074174403489

`A026671(n)-A126930(2*n)`
-/

namespace A054441.P4060151074174403489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - A126930 (2 * n)

end

end A054441.P4060151074174403489

namespace A054441

/-- `A026671(n)-A126930(2*n)` -/
def P4060151074174403489.Spec : Prop :=
  ∀ n, P4060151074174403489.a n = A054441 n

end A054441

/-! ## A054441.P4891507268096839280

`record[A026678(n)%A026676(n+1)]`
-/

namespace A054441.P4891507268096839280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026678 n) (A026676 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054441.P4891507268096839280

namespace A054441

/-- `record[A026678(n)%A026676(n+1)]` -/
def P4891507268096839280.Spec : Prop :=
  ∀ n, P4891507268096839280.a n = A054441 n

end A054441

/-! ## A054441.P13946576296534581018

`A026742(2*n+1)-A000984(n)`
-/

namespace A054441.P13946576296534581018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * n + 1) - A000984 n

end

end A054441.P13946576296534581018

namespace A054441

/-- `A026742(2*n+1)-A000984(n)` -/
def P13946576296534581018.Spec : Prop :=
  ∀ n, P13946576296534581018.a n = A054441 n

end A054441

/-! ## A054441.P13882097217086752866

`A027214(2*n+1)-A001405(2*n)`
-/

namespace A054441.P13882097217086752866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027214 (2 * n + 1) - A001405 (2 * n)

end

end A054441.P13882097217086752866

namespace A054441

/-- `A027214(2*n+1)-A001405(2*n)` -/
def P13882097217086752866.Spec : Prop :=
  ∀ n, P13882097217086752866.a n = A054441 n

end A054441

/-! ## A054441.P4267225202480382504

`A000045(A008585(n))-A176085(n)`
-/

namespace A054441.P4267225202480382504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008585 n).toNat - A176085 n

end

end A054441.P4267225202480382504

namespace A054441

/-- `A000045(A008585(n))-A176085(n)` -/
def P4267225202480382504.Spec : Prop :=
  ∀ n, P4267225202480382504.a n = A054441 n

end A054441

/-! ## A054441.P14649255985714074146

`A026671(n)-(A176085(n)+A081696(n))`
-/

namespace A054441.P14649255985714074146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - (A176085 n + A081696 n)

end

end A054441.P14649255985714074146

namespace A054441

/-- `A026671(n)-(A176085(n)+A081696(n))` -/
def P14649255985714074146.Spec : Prop :=
  ∀ n, P14649255985714074146.a n = A054441 n

end A054441

/-!
# A054442: Second convolution of A001405 (central binomial numbers).

The programs for A054442, there is no canonical definition to state claims against.
-/

/-! ## A054442.P16490206669125034090

`C(n+1, floor(n/2))+2*a(n-1)` with `a(0)=1`
-/

namespace A054442.P16490206669125034090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n + 1) ⌊(n : ℚ) / 2⌋.toNat + 2 * a (n - 1)

end

end A054442.P16490206669125034090

/-! ## A054442.P10183439423340473151

`A054336(∑[n+2]+3)`
-/

namespace A054442.P10183439423340473151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A054442.P10183439423340473151

/-! ## A054442.P3266947935603971163

`A007007(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A054442.P3266947935603971163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007007 (n + 1) + 2 * a (n - 1)

end

end A054442.P3266947935603971163

/-! ## A054442.P14916512615639077960

`A037952(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A054442.P14916512615639077960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037952 (n + 1) + 2 * a (n - 1)

end

end A054442.P14916512615639077960

/-! ## A054442.P12154683119774335281

`record[gcd(A054336(n+3), A293112(n))]`
-/

namespace A054442.P12154683119774335281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054336 (n + 3)) (A293112 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054442.P12154683119774335281

/-!
# A054443: Third convolution of A001405 (central binomial numbers).

The programs for A054443, there is no canonical definition to state claims against.
-/

/-! ## A054443.P3707985955102369854

`A054336(∑[n+3]+6)`
-/

namespace A054443.P3707985955102369854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A054443.P3707985955102369854

/-! ## A054443.P10869409407864590270

`A054336(A167614(n+2))%(3^(2*n+1))`
-/

namespace A054443.P10869409407864590270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054336 (A167614 (n + 2)).toNat) (3 ^ (2 * n + 1) : ℤ)

end

end A054443.P10869409407864590270

/-! ## A054443.P14049383091034566056

`gcd(A000038(n), A054336(A167614(n+2)))`
-/

namespace A054443.P14049383091034566056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054336 (A167614 (n + 2)).toNat)

end

end A054443.P14049383091034566056

/-! ## A054443.P13141897310605139116

`A054336(A167614(n+2))+A000038(n+1)`
-/

namespace A054443.P13141897310605139116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A167614 (n + 2)).toNat + A000038 (n + 1)

end

end A054443.P13141897310605139116

/-! ## A054443.P15998842370479111629

`A054336(A167614(n+2))+char[A001235(n+1)]`
-/

namespace A054443.P15998842370479111629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054443.P15998842370479111629

/-! ## A054443.P6337498727272212625

`A054336(A167614(n+2))+char[A142601(n+1)]`
-/

namespace A054443.P6337498727272212625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142601 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054443.P6337498727272212625

/-! ## A054443.P16178868858669009140

`A054336(A167614(n+2))+char[A142607(n+1)]`
-/

namespace A054443.P16178868858669009140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054443.P16178868858669009140

/-! ## A054443.P1911602500928440792

`A054336(A167614(n+2))+char[A142608(n+1)]`
-/

namespace A054443.P1911602500928440792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142608 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054443.P1911602500928440792

/-! ## A054443.P7066546478743368659

`A054336(A167614(n+2))+A004197(C(n, n²))`
-/

namespace A054443.P7066546478743368659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A167614 (n + 2)).toNat + A004197 (Nat.choose n (n ^ 2))

end

end A054443.P7066546478743368659

/-!
# A054444: Even-indexed terms of A001629(n), n >= 2, (Fibonacci convolution).

The programs for A054444, the canonical program `A054444.P480886182038389124` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054444 has offset 0).

The definition of A054444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054444.P480886182038389124

`∑[A029907(Δ[n²])]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054444

/-- `∑[A029907(Δ[n²])]` -/
def P480886182038389124.Spec : Prop :=
  ∀ n, P480886182038389124.a n = A054444 n

theorem P480886182038389124.correct : P480886182038389124.Spec := by
  intro n
  simp only [A054444]

end A054444

/-! ## A054444.P7459777123347540252

`A116796(n+2)-1`
-/

namespace A054444.P7459777123347540252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116796 (n + 2) - 1

end

end A054444.P7459777123347540252

namespace A054444

/-- `A116796(n+2)-1` -/
def P7459777123347540252.Spec : Prop :=
  ∀ n, P7459777123347540252.a n = A054444 n

end A054444

/-! ## A054444.P8677986911854383235

`A001629(2*(n+1))`
-/

namespace A054444.P8677986911854383235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * (n + 1))

end

end A054444.P8677986911854383235

namespace A054444

/-- `A001629(2*(n+1))` -/
def P8677986911854383235.Spec : Prop :=
  ∀ n, P8677986911854383235.a n = A054444 n

end A054444

/-! ## A054444.P17512502537914004167

`∑[∑[A239342(2*n+1)]]`
-/

namespace A054444.P17512502537914004167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054444.P17512502537914004167

namespace A054444

/-- `∑[∑[A239342(2*n+1)]]` -/
def P17512502537914004167.Spec : Prop :=
  ∀ n, P17512502537914004167.a n = A054444 n

end A054444

/-! ## A054444.P3528414905751769590

`∑[A211228(2*n+2*n+1)]`
-/

namespace A054444.P3528414905751769590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054444.P3528414905751769590

namespace A054444

/-- `∑[A211228(2*n+2*n+1)]` -/
def P3528414905751769590.Spec : Prop :=
  ∀ n, P3528414905751769590.a n = A054444 n

end A054444

/-! ## A054444.P3893669595527063856

`A029907(2*n+1)+a(n-1)` with `a(0)=1`
-/

namespace A054444.P3893669595527063856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029907 (2 * n + 1) + a (n - 1)

end

end A054444.P3893669595527063856

namespace A054444

/-- `A029907(2*n+1)+a(n-1)` -/
def P3893669595527063856.Spec : Prop :=
  ∀ n, P3893669595527063856.a n = A054444 n

end A054444

/-! ## A054444.P9463794962216248536

`(2*n+1)*A000045(Δ[n²])-a(n-1)` with `a(0)=1`
-/

namespace A054444.P9463794962216248536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A054444.P9463794962216248536

namespace A054444

/-- `(2*n+1)*A000045(Δ[n²])-a(n-1)` -/
def P9463794962216248536.Spec : Prop :=
  ∀ n, P9463794962216248536.a n = A054444 n

end A054444

/-! ## A054444.P11042648347065230983

`(2*n+1)*Δ[A000045(2*n)]-a(n-1)` with `a(0)=1`
-/

namespace A054444.P11042648347065230983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) * (f1 (n + 1) - f1 n) - a (n - 1)

end

end A054444.P11042648347065230983

namespace A054444

/-- `(2*n+1)*Δ[A000045(2*n)]-a(n-1)` -/
def P11042648347065230983.Spec : Prop :=
  ∀ n, P11042648347065230983.a n = A054444 n

end A054444

/-! ## A054444.P6577895298458035060

`lcm(2*n+1, (2*n+1)*A000045(2*n+1))-a(n-1)` with `a(0)=1`
-/

namespace A054444.P6577895298458035060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (2 * n + 1 : ℤ) ((2 * n + 1 : ℤ) * A000045 (2 * n + 1)) : ℤ) - a (n - 1)

end

end A054444.P6577895298458035060

namespace A054444

/-- `lcm(2*n+1, (2*n+1)*A000045(2*n+1))-a(n-1)` -/
def P6577895298458035060.Spec : Prop :=
  ∀ n, P6577895298458035060.a n = A054444 n

end A054444

/-! ## A054444.P13592016642138875658

`A238846(n)+A197649(n)`
-/

namespace A054444.P13592016642138875658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n + A197649 n

end

end A054444.P13592016642138875658

namespace A054444

/-- `A238846(n)+A197649(n)` -/
def P13592016642138875658.Spec : Prop :=
  ∀ n, P13592016642138875658.a n = A054444 n

end A054444

/-! ## A054444.P14309711101731944197

`A281199(n+1)+A027989(n)`
-/

namespace A054444.P14309711101731944197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281199 (n + 1) + A027989 n

end

end A054444.P14309711101731944197

namespace A054444

/-- `A281199(n+1)+A027989(n)` -/
def P14309711101731944197.Spec : Prop :=
  ∀ n, P14309711101731944197.a n = A054444 n

end A054444

/-! ## A054444.P8460006861787938393

`A001871(n)-A129720(2*n)`
-/

namespace A054444.P8460006861787938393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n - A129720 (2 * n)

end

end A054444.P8460006861787938393

namespace A054444

/-- `A001871(n)-A129720(2*n)` -/
def P8460006861787938393.Spec : Prop :=
  ∀ n, P8460006861787938393.a n = A054444 n

end A054444

/-! ## A054444.P15174010586408129426

`A001871(n)-A129722(2*n)`
-/

namespace A054444.P15174010586408129426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n - A129722 (2 * n)

end

end A054444.P15174010586408129426

namespace A054444

/-- `A001871(n)-A129722(2*n)` -/
def P15174010586408129426.Spec : Prop :=
  ∀ n, P15174010586408129426.a n = A054444 n

end A054444

/-! ## A054444.P6302066502736764295

`∑[record[A029907(A006257(n+1))]]`
-/

namespace A054444.P6302066502736764295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A006257 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054444.P6302066502736764295

namespace A054444

/-- `∑[record[A029907(A006257(n+1))]]` -/
def P6302066502736764295.Spec : Prop :=
  ∀ n, P6302066502736764295.a n = A054444 n

end A054444

/-! ## A054444.P12959847834993578141

`A027989(n+1)-A122367(n+1)`
-/

namespace A054444.P12959847834993578141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027989 (n + 1) - A122367 (n + 1)

end

end A054444.P12959847834993578141

namespace A054444

/-- `A027989(n+1)-A122367(n+1)` -/
def P12959847834993578141.Spec : Prop :=
  ∀ n, P12959847834993578141.a n = A054444 n

end A054444

/-! ## A054444.P8963019089117876803

`A027989(n+1)-A001519(n+2)`
-/

namespace A054444.P8963019089117876803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027989 (n + 1) - A001519 (n + 2)

end

end A054444.P8963019089117876803

namespace A054444

/-- `A027989(n+1)-A001519(n+2)` -/
def P8963019089117876803.Spec : Prop :=
  ∀ n, P8963019089117876803.a n = A054444 n

end A054444

/-! ## A054444.P3076581954031548826

`A121532(n+2)+A121530(n+2)`
-/

namespace A054444.P3076581954031548826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121532 (n + 2) + A121530 (n + 2)

end

end A054444.P3076581954031548826

namespace A054444

/-- `A121532(n+2)+A121530(n+2)` -/
def P3076581954031548826.Spec : Prop :=
  ∀ n, P3076581954031548826.a n = A054444 n

end A054444

/-! ## A054444.P14613654715031518872

`A377679(n+2)+A377670(n+2)`
-/

namespace A054444.P14613654715031518872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377679 (n + 2) + A377670 (n + 2)

end

end A054444.P14613654715031518872

namespace A054444

/-- `A377679(n+2)+A377670(n+2)` -/
def P14613654715031518872.Spec : Prop :=
  ∀ n, P14613654715031518872.a n = A054444 n

end A054444

/-! ## A054444.P16627804266281757230

`A129722(2*n)+A117202(n+1)`
-/

namespace A054444.P16627804266281757230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n) + A117202 (n + 1)

end

end A054444.P16627804266281757230

namespace A054444

/-- `A129722(2*n)+A117202(n+1)` -/
def P16627804266281757230.Spec : Prop :=
  ∀ n, P16627804266281757230.a n = A054444 n

end A054444

/-! ## A054444.P13740596952742248387

`A055244(2*n)+A029907(2*n)`
-/

namespace A054444.P13740596952742248387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (2 * n) + A029907 (2 * n)

end

end A054444.P13740596952742248387

namespace A054444

/-- `A055244(2*n)+A029907(2*n)` -/
def P13740596952742248387.Spec : Prop :=
  ∀ n, P13740596952742248387.a n = A054444 n

end A054444

/-!
# A054445: Triangle read by rows giving partial row sums of triangle A033184(n,m), n >= m >= 1 (Catalan triangle).

The programs for A054445, the canonical program `A054445.P13488964530829040640` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054445 has offset 0).

The definition of A054445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054445.P13488964530829040640

`A030237(∑[char[∑[n]]]²-n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A054445

/-- `A030237(∑[char[∑[n]]]²-n)` -/
def P13488964530829040640.Spec : Prop :=
  ∀ n, P13488964530829040640.a n = A054445 n

theorem P13488964530829040640.correct : P13488964530829040640.Spec := by
  intro n
  simp only [A054445]

end A054445

/-! ## A054445.P8857293349658220245

`A033184(comp[∑[n]]+1)`
-/

namespace A054445.P8857293349658220245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A054445.P8857293349658220245

namespace A054445

/-- `A033184(comp[∑[n]]+1)` -/
def P8857293349658220245.Spec : Prop :=
  ∀ n, P8857293349658220245.a n = A054445 n

end A054445

/-! ## A054445.P8044963665224351115

`A106566(lt[3, A143453(n)])`
-/

namespace A054445.P8044963665224351115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P8044963665224351115

namespace A054445

/-- `A106566(lt[3, A143453(n)])` -/
def P8044963665224351115.Spec : Prop :=
  ∀ n, P8044963665224351115.a n = A054445 n

end A054445

/-! ## A054445.P17784410491803495048

`A009766(A099375(n)+n)`
-/

namespace A054445.P17784410491803495048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A099375 n + (n : ℤ)).toNat

end

end A054445.P17784410491803495048

namespace A054445

/-- `A009766(A099375(n)+n)` -/
def P17784410491803495048.Spec : Prop :=
  ∀ n, P17784410491803495048.a n = A054445 n

end A054445

/-! ## A054445.P14176352655253639584

`A009766(A185782(n+1)+n+1)`
-/

namespace A054445.P14176352655253639584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A185782 (n + 1) + (n + 1 : ℤ)).toNat

end

end A054445.P14176352655253639584

namespace A054445

/-- `A009766(A185782(n+1)+n+1)` -/
def P14176352655253639584.Spec : Prop :=
  ∀ n, P14176352655253639584.a n = A054445 n

end A054445

/-! ## A054445.P16140464490953197106

`A009766(A061579(A080036(n)))`
-/

namespace A054445.P16140464490953197106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A061579 (A080036 n).toNat).toNat

end

end A054445.P16140464490953197106

namespace A054445

/-- `A009766(A061579(A080036(n)))` -/
def P16140464490953197106.Spec : Prop :=
  ∀ n, P16140464490953197106.a n = A054445 n

end A054445

/-! ## A054445.P6323641528995457204

`A106566(lt[1, A106597(n)]+1)`
-/

namespace A054445.P6323641528995457204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A054445.P6323641528995457204

namespace A054445

/-- `A106566(lt[1, A106597(n)]+1)` -/
def P6323641528995457204.Spec : Prop :=
  ∀ n, P6323641528995457204.a n = A054445 n

end A054445

/-! ## A054445.P10961221353857678445

`A059365(lt[3, A143453(n)])`
-/

namespace A054445.P10961221353857678445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P10961221353857678445

namespace A054445

/-- `A059365(lt[3, A143453(n)])` -/
def P10961221353857678445.Spec : Prop :=
  ∀ n, P10961221353857678445.a n = A054445 n

end A054445

/-! ## A054445.P17283316114570700236

`A059365(lt[2, A002260(n+1)])`
-/

namespace A054445.P17283316114570700236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P17283316114570700236

namespace A054445

/-- `A059365(lt[2, A002260(n+1)])` -/
def P17283316114570700236.Spec : Prop :=
  ∀ n, P17283316114570700236.a n = A054445 n

end A054445

/-! ## A054445.P8577812419226832305

`A106566(lt[1, A106579(n)])`
-/

namespace A054445.P8577812419226832305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P8577812419226832305

namespace A054445

/-- `A106566(lt[1, A106579(n)])` -/
def P8577812419226832305.Spec : Prop :=
  ∀ n, P8577812419226832305.a n = A054445 n

end A054445

/-! ## A054445.P2247245119125309767

`2*A065602(n+2)-A167772(n)`
-/

namespace A054445.P2247245119125309767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065602 (n + 2) - A167772 n

end

end A054445.P2247245119125309767

namespace A054445

/-- `2*A065602(n+2)-A167772(n)` -/
def P2247245119125309767.Spec : Prop :=
  ∀ n, P2247245119125309767.a n = A054445 n

end A054445

/-! ## A054445.P18002427210818299072

`2*A167772(A014132(n+1))-A167772(n)`
-/

namespace A054445.P18002427210818299072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167772 (A014132 (n + 1)).toNat - A167772 n

end

end A054445.P18002427210818299072

namespace A054445

/-- `2*A167772(A014132(n+1))-A167772(n)` -/
def P18002427210818299072.Spec : Prop :=
  ∀ n, P18002427210818299072.a n = A054445 n

end A054445

/-! ## A054445.P2768179422609403542

`A167432(n)/A130321(n)`
-/

namespace A054445.P2768179422609403542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167432 n : ℚ) / (A130321 n : ℚ)

end

end A054445.P2768179422609403542

namespace A054445

/-- `A167432(n)/A130321(n)` -/
def P2768179422609403542.Spec : Prop :=
  ∀ n, P2768179422609403542.a n = (A054445 n : ℚ)

end A054445

/-! ## A054445.P8392653149087194140

`A059365(lt[3, A094250(n)])`
-/

namespace A054445.P8392653149087194140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P8392653149087194140

namespace A054445

/-- `A059365(lt[3, A094250(n)])` -/
def P8392653149087194140.Spec : Prop :=
  ∀ n, P8392653149087194140.a n = A054445 n

end A054445

/-! ## A054445.P3926054006308775740

`A106566(lt[3, A094250(n)])`
-/

namespace A054445.P3926054006308775740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P3926054006308775740

namespace A054445

/-- `A106566(lt[3, A094250(n)])` -/
def P3926054006308775740.Spec : Prop :=
  ∀ n, P3926054006308775740.a n = A054445 n

end A054445

/-! ## A054445.P11503563546055598227

`A059365(lt[1, A215204(n)])`
-/

namespace A054445.P11503563546055598227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P11503563546055598227

namespace A054445

/-- `A059365(lt[1, A215204(n)])` -/
def P11503563546055598227.Spec : Prop :=
  ∀ n, P11503563546055598227.a n = A054445 n

end A054445

/-! ## A054445.P17993132554286032973

`A106566(lt[1, A215204(n)])`
-/

namespace A054445.P17993132554286032973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A054445.P17993132554286032973

namespace A054445

/-- `A106566(lt[1, A215204(n)])` -/
def P17993132554286032973.Spec : Prop :=
  ∀ n, P17993132554286032973.a n = A054445 n

end A054445

/-!
# A054446: Triangle of partial row sums of triangle A037027(n,m), n >= m >= 0 (Fibonacci convolution triangle).

The programs for A054446, there is no canonical definition to state claims against.
-/

/-! ## A054446.P15646286113056223046

`A391592(A067345(n+1))`
-/

namespace A054446.P15646286113056223046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391592 (A067345 (n + 1)).toNat

end

end A054446.P15646286113056223046

/-!
# A054447: Row sums of triangle A054446 (partial row sums triangle of Fibonacci convolution triangle).

The programs for A054447, the canonical program `A054447.P3864546750210140072` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054447 has offset 0).

The definition of A054447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054447.P3864546750210140072

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=26`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054447

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P3864546750210140072.Spec : Prop :=
  ∀ n, P3864546750210140072.a n = A054447 n

theorem P3864546750210140072.correct : P3864546750210140072.Spec := by
  intro n
  simp only [A054447]

end A054447

/-! ## A054447.P11658482327838196390

`ogf((1-x-x^2)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A054447.P11658482327838196390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 2, 4, 1] n

end

end A054447.P11658482327838196390

namespace A054447

/-- `ogf((1-x-x^2)/(1-4x+2x^2+4x^3+x^4))` -/
def P11658482327838196390.Spec : Prop :=
  ∀ n, P11658482327838196390.a n = A054447 n

end A054447

/-! ## A054447.P7484002213440105769

`A331321(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A054447.P7484002213440105769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A331321 n + a (n - 2)

end

end A054447.P7484002213440105769

namespace A054447

/-- `A331321(n)+a(n-2)` -/
def P7484002213440105769.Spec : Prop :=
  ∀ n, P7484002213440105769.a n = A054447 n

end A054447

/-! ## A054447.P921103762338296116

`A292327(n)-A000129(n+1)`
-/

namespace A054447.P921103762338296116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 n - A000129 (n + 1)

end

end A054447.P921103762338296116

namespace A054447

/-- `A292327(n)-A000129(n+1)` -/
def P921103762338296116.Spec : Prop :=
  ∀ n, P921103762338296116.a n = A054447 n

end A054447

/-! ## A054447.P6727726330338525825

`A006645(n+1)+∑[A001333(n)]`
-/

namespace A054447.P6727726330338525825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054447.P6727726330338525825

namespace A054447

/-- `A006645(n+1)+∑[A001333(n)]` -/
def P6727726330338525825.Spec : Prop :=
  ∀ n, P6727726330338525825.a n = A054447 n

end A054447

/-! ## A054447.P14422214980309464666

`A006645(n+1)+A000129(n+1)`
-/

namespace A054447.P14422214980309464666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + A000129 (n + 1)

end

end A054447.P14422214980309464666

namespace A054447

/-- `A006645(n+1)+A000129(n+1)` -/
def P14422214980309464666.Spec : Prop :=
  ∀ n, P14422214980309464666.a n = A054447 n

end A054447

/-! ## A054447.P16824856329710067419

`A074084(n+1)+Δ[A000129(n+1)]`
-/

namespace A054447.P16824856329710067419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074084 (n + 1) + (f1 (n + 1) - f1 n)

end

end A054447.P16824856329710067419

namespace A054447

/-- `A074084(n+1)+Δ[A000129(n+1)]` -/
def P16824856329710067419.Spec : Prop :=
  ∀ n, P16824856329710067419.a n = A054447 n

end A054447

/-! ## A054447.P7215743465621153047

`A006645(n+1)+A052542(n+1)/2`
-/

namespace A054447.P7215743465621153047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006645 (n + 1) : ℚ) + (A052542 (n + 1) : ℚ) / 2

end

end A054447.P7215743465621153047

namespace A054447

/-- `A006645(n+1)+A052542(n+1)/2` -/
def P7215743465621153047.Spec : Prop :=
  ∀ n, P7215743465621153047.a n = (A054447 n : ℚ)

end A054447

/-! ## A054447.P16693381767756297553

`A292327(n)-A000129(n)-A001333(n)`
-/

namespace A054447.P16693381767756297553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 n - A000129 n - A001333 n

end

end A054447.P16693381767756297553

namespace A054447

/-- `A292327(n)-A000129(n)-A001333(n)` -/
def P16693381767756297553.Spec : Prop :=
  ∀ n, P16693381767756297553.a n = A054447 n

end A054447

/-! ## A054447.P17125438108246353313

`A292327(n)-(A097076(n+1)+A097076(n))`
-/

namespace A054447.P17125438108246353313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292327 n - (A097076 (n + 1) + A097076 n)

end

end A054447.P17125438108246353313

namespace A054447

/-- `A292327(n)-(A097076(n+1)+A097076(n))` -/
def P17125438108246353313.Spec : Prop :=
  ∀ n, P17125438108246353313.a n = A054447 n

end A054447

/-! ## A054447.P12967211681925877427

`A000129(n+1)+A074084(n+1)+A000129(n)`
-/

namespace A054447.P12967211681925877427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A074084 (n + 1) + A000129 n)

end

end A054447.P12967211681925877427

namespace A054447

/-- `A000129(n+1)+A074084(n+1)+A000129(n)` -/
def P12967211681925877427.Spec : Prop :=
  ∀ n, P12967211681925877427.a n = A054447 n

end A054447

/-! ## A054447.P804290440552180698

`A026937(n)-A006645(n)`
-/

namespace A054447.P804290440552180698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n - A006645 n

end

end A054447.P804290440552180698

namespace A054447

/-- `A026937(n)-A006645(n)` -/
def P804290440552180698.Spec : Prop :=
  ∀ n, P804290440552180698.a n = A054447 n

end A054447

/-! ## A054447.P16868066751429813535

`A006645(n+2)-A364553(n)`
-/

namespace A054447.P16868066751429813535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 2) - A364553 n

end

end A054447.P16868066751429813535

namespace A054447

/-- `A006645(n+2)-A364553(n)` -/
def P16868066751429813535.Spec : Prop :=
  ∀ n, P16868066751429813535.a n = A054447 n

end A054447

/-! ## A054447.P15957200330670867025

`(A292400(n)-A000129(n))/2`
-/

namespace A054447.P15957200330670867025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292400 n - A000129 n : ℚ) / 2

end

end A054447.P15957200330670867025

namespace A054447

/-- `(A292400(n)-A000129(n))/2` -/
def P15957200330670867025.Spec : Prop :=
  ∀ n, P15957200330670867025.a n = (A054447 n : ℚ)

end A054447

/-! ## A054447.P15341190988188986980

`Δ[A006645(n+1)]-A006645(n)`
-/

namespace A054447.P15341190988188986980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006645 n

end

end A054447.P15341190988188986980

namespace A054447

/-- `Δ[A006645(n+1)]-A006645(n)` -/
def P15341190988188986980.Spec : Prop :=
  ∀ n, P15341190988188986980.a n = A054447 n

end A054447

/-! ## A054447.P7120964217591716973

`A119915(n+1)-A006645(n+1)`
-/

namespace A054447.P7120964217591716973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) - A006645 (n + 1)

end

end A054447.P7120964217591716973

namespace A054447

/-- `A119915(n+1)-A006645(n+1)` -/
def P7120964217591716973.Spec : Prop :=
  ∀ n, P7120964217591716973.a n = A054447 n

end A054447

/-! ## A054447.P15866375503672228761

`(A119915(n+1)+A000129(n+1))/2`
-/

namespace A054447.P15866375503672228761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119915 (n + 1) + A000129 (n + 1) : ℚ) / 2

end

end A054447.P15866375503672228761

namespace A054447

/-- `(A119915(n+1)+A000129(n+1))/2` -/
def P15866375503672228761.Spec : Prop :=
  ∀ n, P15866375503672228761.a n = (A054447 n : ℚ)

end A054447

/-! ## A054447.P11520632645211207065

`(A331321(n+1)-A215928(n+1))/2`
-/

namespace A054447.P11520632645211207065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331321 (n + 1) - A215928 (n + 1) : ℚ) / 2

end

end A054447.P11520632645211207065

namespace A054447

/-- `(A331321(n+1)-A215928(n+1))/2` -/
def P11520632645211207065.Spec : Prop :=
  ∀ n, P11520632645211207065.a n = (A054447 n : ℚ)

end A054447

/-! ## A054447.P17937684819708462011

`A291264(n)/4`
-/

namespace A054447.P17937684819708462011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291264 n : ℚ) / 4

end

end A054447.P17937684819708462011

namespace A054447

/-- `A291264(n)/4` -/
def P17937684819708462011.Spec : Prop :=
  ∀ n, P17937684819708462011.a n = (A054447 n : ℚ)

end A054447

/-! ## A054447.P2320575068202675312

`Δ[A088210(n)/4]`
-/

namespace A054447.P2320575068202675312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088210 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054447.P2320575068202675312

namespace A054447

/-- `Δ[A088210(n)/4]` -/
def P2320575068202675312.Spec : Prop :=
  ∀ n, P2320575068202675312.a n = (A054447 n : ℚ)

end A054447

/-!
# A054449: Row sums of triangle A054448 (second member of partial row sums triangle family of Fibonacci convolution triangle).

The programs for A054449, there is no canonical definition to state claims against.
-/

/-! ## A054449.P16748766508564757591

`A292328(n)-A292327(n)`
-/

namespace A054449.P16748766508564757591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292328 n - A292327 n

end

end A054449.P16748766508564757591

/-! ## A054449.P4716002337885958439

`A292328(n)-(A074084(n+1)+A000129(n+2))`
-/

namespace A054449.P4716002337885958439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292328 n - (A074084 (n + 1) + A000129 (n + 2))

end

end A054449.P4716002337885958439

/-! ## A054449.P18248013488863355773

`A292328(n)-(A291142(n)+2*A291142(n+1))`
-/

namespace A054449.P18248013488863355773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292328 n - (A291142 n + 2 * A291142 (n + 1))

end

end A054449.P18248013488863355773

/-! ## A054449.P8107921882132157608

`A292328(n)-(A026937(n+1)+A006645(n)-A088210(n))`
-/

namespace A054449.P8107921882132157608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292328 n - (A026937 (n + 1) + (A006645 n - A088210 n))

end

end A054449.P8107921882132157608

/-! ## A054449.P17250384342297579622

`A190215(A052905(n)+7)-(A074084(n+1)+A000129(n+2))`
-/

namespace A054449.P17250384342297579622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (A052905 n + 7).toNat - (A074084 (n + 1) + A000129 (n + 2))

end

end A054449.P17250384342297579622

/-! ## A054449.P15434842566856943268

`A190215(A055999(n)+8)-(A074084(n+1)+A000129(n+2))`
-/

namespace A054449.P15434842566856943268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190215 (A055999 n + 8).toNat - (A074084 (n + 1) + A000129 (n + 2))

end

end A054449.P15434842566856943268

/-!
# A054450: Triangle of partial row sums of unsigned triangle A049310(n,m), n >= m >= 0 (Chebyshev S-polynomials).

The programs for A054450, there is no canonical definition to state claims against.
-/

/-! ## A054450.P6639521186334906043

`gcd(Δ[A134511(n)], A134511(n))`
-/

namespace A054450.P6639521186334906043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A134511 n)

end

end A054450.P6639521186334906043

/-! ## A054450.P13058969397739268453

`A134511(1-A128174(n+1)+n)`
-/

namespace A054450.P13058969397739268453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134511 (1 - A128174 (n + 1) + (n : ℤ)).toNat

end

end A054450.P13058969397739268453

/-! ## A054450.P8551589790433542044

`A038792(A385406(n+1))`
-/

namespace A054450.P8551589790433542044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A385406 (n + 1)).toNat

end

end A054450.P8551589790433542044

/-! ## A054450.P13616538813319504365

`A038792(A057028(n+1))`
-/

namespace A054450.P13616538813319504365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A057028 (n + 1)).toNat

end

end A054450.P13616538813319504365

/-! ## A054450.P16450154830174359317

`A099573(A061579(n))`
-/

namespace A054450.P16450154830174359317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A061579 n).toNat

end

end A054450.P16450154830174359317

/-! ## A054450.P5904002489623525711

`A038792(A209293(n+1))`
-/

namespace A054450.P5904002489623525711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A209293 (n + 1)).toNat

end

end A054450.P5904002489623525711

/-! ## A054450.P12545771318692512938

`A099573(A114327(n)+n)`
-/

namespace A054450.P12545771318692512938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A114327 n + (n : ℤ)).toNat

end

end A054450.P12545771318692512938

/-! ## A054450.P55426895007084846

`A099573(A038722(n+1)-1)`
-/

namespace A054450.P55426895007084846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A038722 (n + 1) - 1).toNat

end

end A054450.P55426895007084846

/-! ## A054450.P15163918493797773961

`A099573(A093995(n+1)-(n+1))`
-/

namespace A054450.P15163918493797773961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A054450.P15163918493797773961

/-! ## A054450.P11897295085440771259

`A099573(A002024(n+1)²-(n+1))`
-/

namespace A054450.P11897295085440771259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A054450.P11897295085440771259

/-! ## A054450.P5885065775325742664

`A099573(xor(n, -1)+A002024(n+1)²)`
-/

namespace A054450.P5885065775325742664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (Int.xor (n : ℤ) (-1) + A002024 (n + 1) ^ 2).toNat

end

end A054450.P5885065775325742664

/-! ## A054450.P11204765248294264955

`A099573(A038722(n+2))`
-/

namespace A054450.P11204765248294264955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A038722 (n + 2)).toNat

end

end A054450.P11204765248294264955

/-!
# A054451: Third column of triangle A054450 (partial row sums of unsigned Chebyshev triangle A049310).

The programs for A054451, the canonical program `A054451.P12627754394687116483` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054451 has offset 0).

The definition of A054451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054451.P5538753772468067997

`∑[ogf(1/(1-3x^2-x^3+2x^4+x^5))]`
-/

namespace A054451.P5538753772468067997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3, -1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P5538753772468067997

namespace A054451

/-- `∑[ogf(1/(1-3x^2-x^3+2x^4+x^5))]` -/
def P5538753772468067997.Spec : Prop :=
  ∀ n, P5538753772468067997.a n = A054451 n

end A054451

/-! ## A054451.P12627754394687116483

`∑[3*a(n-2)+a(n-3)-2*a(n-4)-a(n-5)]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1, a(4)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054451

/-- `∑[3*a(n-2)+a(n-3)-2*a(n-4)-a(n-5)]` -/
def P12627754394687116483.Spec : Prop :=
  ∀ n, P12627754394687116483.a n = A054451 n

theorem P12627754394687116483.correct : P12627754394687116483.Spec := by
  intro n
  simp only [A054451]

end A054451

/-! ## A054451.P1473587792088219358

`∑[A213043(n)]`
-/

namespace A054451.P1473587792088219358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P1473587792088219358

namespace A054451

/-- `∑[A213043(n)]` -/
def P1473587792088219358.Spec : Prop :=
  ∀ n, P1473587792088219358.a n = A054451 n

end A054451

/-! ## A054451.P17530889969834460682

`1+A007382(n+1)`
-/

namespace A054451.P17530889969834460682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007382 (n + 1)

end

end A054451.P17530889969834460682

namespace A054451

/-- `1+A007382(n+1)` -/
def P17530889969834460682.Spec : Prop :=
  ∀ n, P17530889969834460682.a n = A054451 n

end A054451

/-! ## A054451.P14562594828097713021

`A052952(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A054451.P14562594828097713021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052952 n + a (n - 2)

end

end A054451.P14562594828097713021

namespace A054451

/-- `A052952(n)+a(n-2)` -/
def P14562594828097713021.Spec : Prop :=
  ∀ n, P14562594828097713021.a n = A054451 n

end A054451

/-! ## A054451.P269478291673295651

`∑[∑[A008346(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A054451.P269478291673295651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A008346 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P269478291673295651

namespace A054451

/-- `∑[∑[A008346(n)-a(n-1)]]` -/
def P269478291673295651.Spec : Prop :=
  ∀ n, P269478291673295651.a n = A054451 n

end A054451

/-! ## A054451.P4498489266406267465

`∑[A000045(n+1)]-∑[n]%(n+1)`
-/

namespace A054451.P4498489266406267465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

end

end A054451.P4498489266406267465

namespace A054451

/-- `∑[A000045(n+1)]-∑[n]%(n+1)` -/
def P4498489266406267465.Spec : Prop :=
  ∀ n, P4498489266406267465.a n = A054451 n

end A054451

/-! ## A054451.P2597304168498554468

`A000045(n+3)-gcd(n+3, floor((n+3)/2))`
-/

namespace A054451.P2597304168498554468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - (Int.gcd (n + 3 : ℤ) ⌊(n + 3 : ℚ) / 2⌋ : ℤ)

end

end A054451.P2597304168498554468

namespace A054451

/-- `A000045(n+3)-gcd(n+3, floor((n+3)/2))` -/
def P2597304168498554468.Spec : Prop :=
  ∀ n, P2597304168498554468.a n = A054451 n

end A054451

/-! ## A054451.P11335613749318177477

`∑[A000045(n+2)-(a(n-1)+and(1, n))]` with `a(0)=1`
-/

namespace A054451.P11335613749318177477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000045 (n + 2) - (f1 (n - 1) + (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P11335613749318177477

namespace A054451

/-- `∑[A000045(n+2)-(a(n-1)+and(1, n))]` -/
def P11335613749318177477.Spec : Prop :=
  ∀ n, P11335613749318177477.a n = A054451 n

end A054451

/-! ## A054451.P14588457727408191074

`A215004(n)+A142150(n)`
-/

namespace A054451.P14588457727408191074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 n + A142150 n

end

end A054451.P14588457727408191074

namespace A054451

/-- `A215004(n)+A142150(n)` -/
def P14588457727408191074.Spec : Prop :=
  ∀ n, P14588457727408191074.a n = A054451 n

end A054451

/-! ## A054451.P15409425162310737794

`A081662(n)-A093353(n)`
-/

namespace A054451.P15409425162310737794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081662 n - A093353 n

end

end A054451.P15409425162310737794

namespace A054451

/-- `A081662(n)-A093353(n)` -/
def P15409425162310737794.Spec : Prop :=
  ∀ n, P15409425162310737794.a n = A054451 n

end A054451

/-! ## A054451.P6302332165118094857

`∑[A081659(n)-A014682(n)]`
-/

namespace A054451.P6302332165118094857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P6302332165118094857

namespace A054451

/-- `∑[A081659(n)-A014682(n)]` -/
def P6302332165118094857.Spec : Prop :=
  ∀ n, P6302332165118094857.a n = A054451 n

end A054451

/-! ## A054451.P16593335690429475029

`A020695(n)-A133622(n+1)`
-/

namespace A054451.P16593335690429475029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A133622 (n + 1)

end

end A054451.P16593335690429475029

namespace A054451

/-- `A020695(n)-A133622(n+1)` -/
def P16593335690429475029.Spec : Prop :=
  ∀ n, P16593335690429475029.a n = A054451 n

end A054451

/-! ## A054451.P9164013561353633514

`∑[∑[A212804(n)]-A001057(n)]`
-/

namespace A054451.P9164013561353633514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P9164013561353633514

namespace A054451

/-- `∑[∑[A212804(n)]-A001057(n)]` -/
def P9164013561353633514.Spec : Prop :=
  ∀ n, P9164013561353633514.a n = A054451 n

end A054451

/-! ## A054451.P17804751273321005894

`∑[A000045(n+1)-A001057(n)]`
-/

namespace A054451.P17804751273321005894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P17804751273321005894

namespace A054451

/-- `∑[A000045(n+1)-A001057(n)]` -/
def P17804751273321005894.Spec : Prop :=
  ∀ n, P17804751273321005894.a n = A054451 n

end A054451

/-! ## A054451.P10197678406303360019

`A026741(n+1)+∑[A000071(n+1)]`
-/

namespace A054451.P10197678406303360019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P10197678406303360019

namespace A054451

/-- `A026741(n+1)+∑[A000071(n+1)]` -/
def P10197678406303360019.Spec : Prop :=
  ∀ n, P10197678406303360019.a n = A054451 n

end A054451

/-! ## A054451.P1952047559058429215

`∑[A000071(n+1)+1-A001057(n)]`
-/

namespace A054451.P1952047559058429215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (1 - A001057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P1952047559058429215

namespace A054451

/-- `∑[A000071(n+1)+1-A001057(n)]` -/
def P1952047559058429215.Spec : Prop :=
  ∀ n, P1952047559058429215.a n = A054451 n

end A054451

/-! ## A054451.P4819623577719334281

`∑[A000045(n+1)]-A142150(n+1)`
-/

namespace A054451.P4819623577719334281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142150 (n + 1)

end

end A054451.P4819623577719334281

namespace A054451

/-- `∑[A000045(n+1)]-A142150(n+1)` -/
def P4819623577719334281.Spec : Prop :=
  ∀ n, P4819623577719334281.a n = A054451 n

end A054451

/-! ## A054451.P3186897357614562336

`∑[A000045(n+1)+n-A014682(n)]`
-/

namespace A054451.P3186897357614562336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + ((n : ℤ) - A014682 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054451.P3186897357614562336

namespace A054451

/-- `∑[A000045(n+1)+n-A014682(n)]` -/
def P3186897357614562336.Spec : Prop :=
  ∀ n, P3186897357614562336.a n = A054451 n

end A054451

/-! ## A054451.P4018630975449711253

`A255875(n+1)+1-A080512(n+1)`
-/

namespace A054451.P4018630975449711253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255875 (n + 1) + (1 - A080512 (n + 1))

end

end A054451.P4018630975449711253

namespace A054451

/-- `A255875(n+1)+1-A080512(n+1)` -/
def P4018630975449711253.Spec : Prop :=
  ∀ n, P4018630975449711253.a n = A054451 n

end A054451

/-!
# A054452: Partial sums of A027941(n-1) with a(-1) = 0.

The programs for A054452, the canonical program `A054452.P816379126767088245` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054452 has offset 0).

The definition of A054452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054452.P6416882561336416472

`∑[∑[ogf(x^2/(1-3x+x^2))]]`
-/

namespace A054452.P6416882561336416472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P6416882561336416472

namespace A054452

/-- `∑[∑[ogf(x^2/(1-3x+x^2))]]` -/
def P6416882561336416472.Spec : Prop :=
  ∀ n, P6416882561336416472.a n = A054452 n

end A054452

/-! ## A054452.P12088768280149738837

`∑[ceil(ϕ²*a(n-1))+1]` with `a(0)=0, a(1)=0`
-/

namespace A054452.P12088768280149738837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P12088768280149738837

namespace A054452

/-- `∑[ceil(ϕ²*a(n-1))+1]` -/
def P12088768280149738837.Spec : Prop :=
  ∀ n, P12088768280149738837.a n = A054452 n

end A054452

/-! ## A054452.P866941990347277078

`∑[∑[ceil(ϕ²*a(n-1))]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A054452.P866941990347277078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  ⌈Real.goldenRatio ^ 2 * (f2 (n - 1) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P866941990347277078

namespace A054452

/-- `∑[∑[ceil(ϕ²*a(n-1))]]` -/
def P866941990347277078.Spec : Prop :=
  ∀ n, P866941990347277078.a n = A054452 n

end A054452

/-! ## A054452.P15524377041007303902

`∑[∑[round(ϕ*ϕ*a(n-1))]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A054452.P15524377041007303902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (f2 (n - 1) : ℝ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P15524377041007303902

namespace A054452

/-- `∑[∑[round(ϕ*ϕ*a(n-1))]]` -/
def P15524377041007303902.Spec : Prop :=
  ∀ n, P15524377041007303902.a n = A054452 n

end A054452

/-! ## A054452.P816379126767088245

`∑[record[a(n-2)-a(n-1)]]-n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054452

/-- `∑[record[a(n-2)-a(n-1)]]-n` -/
def P816379126767088245.Spec : Prop :=
  ∀ n, P816379126767088245.a n = A054452 n

theorem P816379126767088245.correct : P816379126767088245.Spec := by
  intro n
  simp only [A054452]

end A054452

/-! ## A054452.P8037421308787495972

`∑[3*a(n-1)+1-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A054452.P8037421308787495972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  3 * f1 (n - 1) + (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P8037421308787495972

namespace A054452

/-- `∑[3*a(n-1)+1-a(n-2)]` -/
def P8037421308787495972.Spec : Prop :=
  ∀ n, P8037421308787495972.a n = A054452 n

end A054452

/-! ## A054452.P3962838990438009901

`∑[1-(a(n-2)-3*a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A054452.P3962838990438009901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - (f1 (n - 2) - 3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P3962838990438009901

namespace A054452

/-- `∑[1-(a(n-2)-3*a(n-1))]` -/
def P3962838990438009901.Spec : Prop :=
  ∀ n, P3962838990438009901.a n = A054452 n

end A054452

/-! ## A054452.P13002046363033389300

`∑[lcm(3, a(n-1))-a(n-2)]-(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A054452.P13002046363033389300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 3 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A054452.P13002046363033389300

namespace A054452

/-- `∑[lcm(3, a(n-1))-a(n-2)]-(n+1)` -/
def P13002046363033389300.Spec : Prop :=
  ∀ n, P13002046363033389300.a n = A054452 n

end A054452

/-! ## A054452.P15962807664337944159

`A001906(n)-n`
-/

namespace A054452.P15962807664337944159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - (n : ℤ)

end

end A054452.P15962807664337944159

namespace A054452

/-- `A001906(n)-n` -/
def P15962807664337944159.Spec : Prop :=
  ∀ n, P15962807664337944159.a n = A054452 n

end A054452

/-! ## A054452.P18225950723117075113

`∑[A293064(n+1)]`
-/

namespace A054452.P18225950723117075113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P18225950723117075113

namespace A054452

/-- `∑[A293064(n+1)]` -/
def P18225950723117075113.Spec : Prop :=
  ∀ n, P18225950723117075113.a n = A054452 n

end A054452

/-! ## A054452.P2760843008114215782

`∑[A001519(n)-1]`
-/

namespace A054452.P2760843008114215782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P2760843008114215782

namespace A054452

/-- `∑[A001519(n)-1]` -/
def P2760843008114215782.Spec : Prop :=
  ∀ n, P2760843008114215782.a n = A054452 n

end A054452

/-! ## A054452.P16128094602043109704

`1-∑[A186025(n)]`
-/

namespace A054452.P16128094602043109704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P16128094602043109704

namespace A054452

/-- `1-∑[A186025(n)]` -/
def P16128094602043109704.Spec : Prop :=
  ∀ n, P16128094602043109704.a n = A054452 n

end A054452

/-! ## A054452.P14423686561704309896

`∑[A032908(n)-2]`
-/

namespace A054452.P14423686561704309896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P14423686561704309896

namespace A054452

/-- `∑[A032908(n)-2]` -/
def P14423686561704309896.Spec : Prop :=
  ∀ n, P14423686561704309896.a n = A054452 n

end A054452

/-! ## A054452.P4732405761680291595

`∑[A119282(2*n)]`
-/

namespace A054452.P4732405761680291595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054452.P4732405761680291595

namespace A054452

/-- `∑[A119282(2*n)]` -/
def P4732405761680291595.Spec : Prop :=
  ∀ n, P4732405761680291595.a n = A054452 n

end A054452

/-! ## A054452.P8337032992517671941

`A055588(n)-(n+1)`
-/

namespace A054452.P8337032992517671941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - (n + 1 : ℤ)

end

end A054452.P8337032992517671941

namespace A054452

/-- `A055588(n)-(n+1)` -/
def P8337032992517671941.Spec : Prop :=
  ∀ n, P8337032992517671941.a n = A054452 n

end A054452

/-! ## A054452.P5204141858854366620

`A249450(n)+2-n`
-/

namespace A054452.P5204141858854366620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 n + (2 - (n : ℤ))

end

end A054452.P5204141858854366620

namespace A054452

/-- `A249450(n)+2-n` -/
def P5204141858854366620.Spec : Prop :=
  ∀ n, P5204141858854366620.a n = A054452 n

end A054452

/-! ## A054452.P13510642467718266425

`A065220(2*n)+n`
-/

namespace A054452.P13510642467718266425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (2 * n) + (n : ℤ)

end

end A054452.P13510642467718266425

namespace A054452

/-- `A065220(2*n)+n` -/
def P13510642467718266425.Spec : Prop :=
  ∀ n, P13510642467718266425.a n = A054452 n

end A054452

/-! ## A054452.P9025492193241379960

`A000045(2*n)-n`
-/

namespace A054452.P9025492193241379960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - (n : ℤ)

end

end A054452.P9025492193241379960

namespace A054452

/-- `A000045(2*n)-n` -/
def P9025492193241379960.Spec : Prop :=
  ∀ n, P9025492193241379960.a n = A054452 n

end A054452

/-! ## A054452.P4251331130072382543

`A094966(2*n)-n`
-/

namespace A054452.P4251331130072382543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n) - (n : ℤ)

end

end A054452.P4251331130072382543

namespace A054452

/-- `A094966(2*n)-n` -/
def P4251331130072382543.Spec : Prop :=
  ∀ n, P4251331130072382543.a n = A054452 n

end A054452

/-! ## A054452.P11756590533839766256

`A109522(2*n)-n`
-/

namespace A054452.P11756590533839766256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 (2 * n) - (n : ℤ)

end

end A054452.P11756590533839766256

namespace A054452

/-- `A109522(2*n)-n` -/
def P11756590533839766256.Spec : Prop :=
  ∀ n, P11756590533839766256.a n = A054452 n

end A054452

/-!
# A054453: Triangle of partial row sums of triangle A054450(n,m), n >= m >= 0.

The programs for A054453, there is no canonical definition to state claims against.
-/

/-! ## A054453.P9577818263904591415

`A373195(A239101(n))`
-/

namespace A054453.P9577818263904591415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373195 (A239101 n).toNat

end

end A054453.P9577818263904591415

/-! ## A054453.P8939740578645919980

`A119466(A048494(n))+1`
-/

namespace A054453.P8939740578645919980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119466 (A048494 n).toNat + 1

end

end A054453.P8939740578645919980

/-!
# A054454: Third column of triangle A054453.

The programs for A054454, the canonical program `A054454.P4740952391609667406` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054454 has offset 0).

The definition of A054454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054454.P15605216237584785118

`∑[ogf(1/(1-x-3x^2+x^3+3x^4+x^5))]`
-/

namespace A054454.P15605216237584785118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -3, 1, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P15605216237584785118

namespace A054454

/-- `∑[ogf(1/(1-x-3x^2+x^3+3x^4+x^5))]` -/
def P15605216237584785118.Spec : Prop :=
  ∀ n, P15605216237584785118.a n = A054454 n

end A054454

/-! ## A054454.P18150630996680161960

`∑[abs(A175722(n))]`
-/

namespace A054454.P18150630996680161960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175722 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P18150630996680161960

namespace A054454

/-- `∑[abs(A175722(n))]` -/
def P18150630996680161960.Spec : Prop :=
  ∀ n, P18150630996680161960.a n = A054454 n

end A054454

/-! ## A054454.P4740952391609667406

`∑[∑[A094188(n+2)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054454

/-- `∑[∑[A094188(n+2)]]` -/
def P4740952391609667406.Spec : Prop :=
  ∀ n, P4740952391609667406.a n = A054454 n

theorem P4740952391609667406.correct : P4740952391609667406.Spec := by
  intro n
  simp only [A054454]

end A054454

/-! ## A054454.P502958963462714590

`∑[∑[∑[A006367(n)-a(n-1)]]]` with `a(0)=1`
-/

namespace A054454.P502958963462714590
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A006367 n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P502958963462714590

namespace A054454

/-- `∑[∑[∑[A006367(n)-a(n-1)]]]` -/
def P502958963462714590.Spec : Prop :=
  ∀ n, P502958963462714590.a n = A054454 n

end A054454

/-! ## A054454.P5226080245119005843

`∑[∑[A010049(n+1)-a(n-1)]]` with `a(0)=1`
-/

namespace A054454.P5226080245119005843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A010049 (n + 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P5226080245119005843

namespace A054454

/-- `∑[∑[A010049(n+1)-a(n-1)]]` -/
def P5226080245119005843.Spec : Prop :=
  ∀ n, P5226080245119005843.a n = A054454 n

end A054454

/-! ## A054454.P15718855551384798102

`A023610(n)-A074331(n)`
-/

namespace A054454.P15718855551384798102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - A074331 n

end

end A054454.P15718855551384798102

namespace A054454

/-- `A023610(n)-A074331(n)` -/
def P15718855551384798102.Spec : Prop :=
  ∀ n, P15718855551384798102.a n = A054454 n

end A054454

/-! ## A054454.P6128966112754941071

`A052952(n)+A006478(n+2)`
-/

namespace A054454.P6128966112754941071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n + A006478 (n + 2)

end

end A054454.P6128966112754941071

namespace A054454

/-- `A052952(n)+A006478(n+2)` -/
def P6128966112754941071.Spec : Prop :=
  ∀ n, P6128966112754941071.a n = A054454 n

end A054454

/-! ## A054454.P9158509768856986007

`∑[∑[A078024(n)+A010049(n)]]`
-/

namespace A054454.P9158509768856986007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n + A010049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P9158509768856986007

namespace A054454

/-- `∑[∑[A078024(n)+A010049(n)]]` -/
def P9158509768856986007.Spec : Prop :=
  ∀ n, P9158509768856986007.a n = A054454 n

end A054454

/-! ## A054454.P10792965692354951668

`∑[∑[A078024(n)+Δ[A001629(n)]]]`
-/

namespace A054454.P10792965692354951668
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n + (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P10792965692354951668

namespace A054454

/-- `∑[∑[A078024(n)+Δ[A001629(n)]]]` -/
def P10792965692354951668.Spec : Prop :=
  ∀ n, P10792965692354951668.a n = A054454 n

end A054454

/-! ## A054454.P1185478220288295091

`A001629(n+3)-A052952(n+1)`
-/

namespace A054454.P1185478220288295091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 3) - A052952 (n + 1)

end

end A054454.P1185478220288295091

namespace A054454

/-- `A001629(n+3)-A052952(n+1)` -/
def P1185478220288295091.Spec : Prop :=
  ∀ n, P1185478220288295091.a n = A054454 n

end A054454

/-! ## A054454.P569374839845082939

`∑[abs(∑[∑[A023610(n)*A033999(n)]])]`
-/

namespace A054454.P569374839845082939
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n * A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P569374839845082939

namespace A054454

/-- `∑[abs(∑[∑[A023610(n)*A033999(n)]])]` -/
def P569374839845082939.Spec : Prop :=
  ∀ n, P569374839845082939.a n = A054454 n

end A054454

/-! ## A054454.P15715203905820642558

`A006478(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A054454.P15715203905820642558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006478 (n + 3) - a (n - 1)

end

end A054454.P15715203905820642558

namespace A054454

/-- `A006478(n+3)-a(n-1)` -/
def P15715203905820642558.Spec : Prop :=
  ∀ n, P15715203905820642558.a n = A054454 n

end A054454

/-! ## A054454.P8989092656557742262

`∑[A000045(n+1)+a(n-2)+a(n-1)]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054454.P8989092656557742262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000045 (n + 1) + (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A054454.P8989092656557742262

namespace A054454

/-- `∑[A000045(n+1)+a(n-2)+a(n-1)]-a(n-1)` -/
def P8989092656557742262.Spec : Prop :=
  ∀ n, P8989092656557742262.a n = A054454 n

end A054454

/-! ## A054454.P5305013503822737039

`A324129(n+2)-A208354(n+2)`
-/

namespace A054454.P5305013503822737039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324129 (n + 2) - A208354 (n + 2)

end

end A054454.P5305013503822737039

namespace A054454

/-- `A324129(n+2)-A208354(n+2)` -/
def P5305013503822737039.Spec : Prop :=
  ∀ n, P5305013503822737039.a n = A054454 n

end A054454

/-! ## A054454.P2592482595430396469

`∑[A067418(∑[n])]-a(n-1)` with `a(0)=1`
-/

namespace A054454.P2592482595430396469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A054454.P2592482595430396469

namespace A054454

/-- `∑[A067418(∑[n])]-a(n-1)` -/
def P2592482595430396469.Spec : Prop :=
  ∀ n, P2592482595430396469.a n = A054454 n

end A054454

/-! ## A054454.P9503232324100427542

`A054453(∑[n+2]+3)`
-/

namespace A054454.P9503232324100427542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054453 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A054454.P9503232324100427542

namespace A054454

/-- `A054453(∑[n+2]+3)` -/
def P9503232324100427542.Spec : Prop :=
  ∀ n, P9503232324100427542.a n = A054454 n

end A054454

/-!
# A054455: Row sums of triangle A054453.

The programs for A054455, the canonical program `A054455.P11057358339827526175` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054455 has offset 0).

The definition of A054455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054455.P11057358339827526175

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=16, a(4)=34, a(5)=70`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054455

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P11057358339827526175.Spec : Prop :=
  ∀ n, P11057358339827526175.a n = A054455 n

theorem P11057358339827526175.correct : P11057358339827526175.Spec := by
  intro n
  simp only [A054455]

end A054455

/-! ## A054455.P588567487288166102

`a(n-1)+a(n-2)+A239342(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A054455.P588567487288166102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + A239342 (n + 1))

end

end A054455.P588567487288166102

namespace A054455

/-- `a(n-1)+a(n-2)+A239342(n+1)` -/
def P588567487288166102.Spec : Prop :=
  ∀ n, P588567487288166102.a n = A054455 n

end A054455

/-! ## A054455.P7081070584058371842

`A055243(n)+A010049(n)`
-/

namespace A054455.P7081070584058371842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n + A010049 n

end

end A054455.P7081070584058371842

namespace A054455

/-- `A055243(n)+A010049(n)` -/
def P7081070584058371842.Spec : Prop :=
  ∀ n, P7081070584058371842.a n = A054455 n

end A054455

/-! ## A054455.P11283332448710540394

`A055243(n)+Δ[A001629(n)]`
-/

namespace A054455.P11283332448710540394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n + (f1 (n + 1) - f1 n)

end

end A054455.P11283332448710540394

namespace A054455

/-- `A055243(n)+Δ[A001629(n)]` -/
def P11283332448710540394.Spec : Prop :=
  ∀ n, P11283332448710540394.a n = A054455 n

end A054455

/-! ## A054455.P4001321220034772423

`A074082(n+2)+A010049(n+2)`
-/

namespace A054455.P4001321220034772423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074082 (n + 2) + A010049 (n + 2)

end

end A054455.P4001321220034772423

namespace A054455

/-- `A074082(n+2)+A010049(n+2)` -/
def P4001321220034772423.Spec : Prop :=
  ∀ n, P4001321220034772423.a n = A054455 n

end A054455

/-! ## A054455.P12610406174724234139

`A276129(n+1)-A239342(n+2)`
-/

namespace A054455.P12610406174724234139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276129 (n + 1) - A239342 (n + 2)

end

end A054455.P12610406174724234139

namespace A054455

/-- `A276129(n+1)-A239342(n+2)` -/
def P12610406174724234139.Spec : Prop :=
  ∀ n, P12610406174724234139.a n = A054455 n

end A054455

/-! ## A054455.P17343230450544381101

`A001629(n+1)+A055243(n)-A001629(n)`
-/

namespace A054455.P17343230450544381101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + (A055243 n - A001629 n)

end

end A054455.P17343230450544381101

namespace A054455

/-- `A001629(n+1)+A055243(n)-A001629(n)` -/
def P17343230450544381101.Spec : Prop :=
  ∀ n, P17343230450544381101.a n = A054455 n

end A054455

/-! ## A054455.P11180465883931996540

`A276129(n+1)-(A029907(n+1)+A000045(n+1))`
-/

namespace A054455.P11180465883931996540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276129 (n + 1) - (A029907 (n + 1) + A000045 (n + 1))

end

end A054455.P11180465883931996540

namespace A054455

/-- `A276129(n+1)-(A029907(n+1)+A000045(n+1))` -/
def P11180465883931996540.Spec : Prop :=
  ∀ n, P11180465883931996540.a n = A054455 n

end A054455

/-! ## A054455.P5155913598471957321

`A001628(n)-(A129707(n)+A001629(n))`
-/

namespace A054455.P5155913598471957321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n - (A129707 n + A001629 n)

end

end A054455.P5155913598471957321

namespace A054455

/-- `A001628(n)-(A129707(n)+A001629(n))` -/
def P5155913598471957321.Spec : Prop :=
  ∀ n, P5155913598471957321.a n = A054455 n

end A054455

/-! ## A054455.P430500373366463116

`((5*n²+27*n+50)*A000045(n+1)+34*(n+1)*A000045(n))/50`
-/

namespace A054455.P430500373366463116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n ^ 2 + 27 * n + 50 : ℤ) * A000045 (n + 1) + 34 * ((n + 1 : ℤ) * A000045 n) : ℚ) / 50

end

end A054455.P430500373366463116

namespace A054455

/-- `((5*n²+27*n+50)*A000045(n+1)+34*(n+1)*A000045(n))/50` -/
def P430500373366463116.Spec : Prop :=
  ∀ n, P430500373366463116.a n = (A054455 n : ℚ)

end A054455

/-! ## A054455.P13790579854575320869

`A210796(∑[n+2]-1)`
-/

namespace A054455.P13790579854575320869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210796 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A054455.P13790579854575320869

namespace A054455

/-- `A210796(∑[n+2]-1)` -/
def P13790579854575320869.Spec : Prop :=
  ∀ n, P13790579854575320869.a n = A054455 n

end A054455

/-! ## A054455.P15192474213012081666

`record[A210796(n+1)/A210792(n+4)]`
-/

namespace A054455.P15192474213012081666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210796 (n + 1) : ℚ) / (A210792 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054455.P15192474213012081666

namespace A054455

/-- `record[A210796(n+1)/A210792(n+4)]` -/
def P15192474213012081666.Spec : Prop :=
  ∀ n, P15192474213012081666.a n = (A054455 n : ℚ)

end A054455

/-! ## A054455.P16595162516057565102

`record[A210796(n+1)/A210797(n+4)]`
-/

namespace A054455.P16595162516057565102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210796 (n + 1) : ℚ) / (A210797 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054455.P16595162516057565102

namespace A054455

/-- `record[A210796(n+1)/A210797(n+4)]` -/
def P16595162516057565102.Spec : Prop :=
  ∀ n, P16595162516057565102.a n = (A054455 n : ℚ)

end A054455

/-!
# A054456: Convolution triangle of A000129(n) (Pell numbers).

The programs for A054456, there is no canonical definition to state claims against.
-/

/-! ## A054456.P4910070279024274274

`A096164(n+1)-A016389(A106187(n))`
-/

namespace A054456.P4910070279024274274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096164 (n + 1) - A016389 (A106187 n).toNat

end

end A054456.P4910070279024274274

/-! ## A054456.P16320961601980961247

`A096164(n+1)-A054908(A130321(n))`
-/

namespace A054456.P16320961601980961247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096164 (n + 1) - A054908 (A130321 n).toNat

end

end A054456.P16320961601980961247

/-! ## A054456.P5237605498618107285

`A096164(n+1)-A016389(A272946(n))`
-/

namespace A054456.P5237605498618107285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096164 (n + 1) - A016389 (A272946 n).toNat

end

end A054456.P5237605498618107285

/-! ## A054456.P12528802107180857037

`A096164(n+1)-A283991(A051947(n))`
-/

namespace A054456.P12528802107180857037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096164 (n + 1) - A283991 (A051947 n).toNat

end

end A054456.P12528802107180857037

/-! ## A054456.P11935444104273235078

`A096164(n+1)-A266342(A347193(n+1))`
-/

namespace A054456.P11935444104273235078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096164 (n + 1) - A266342 (A347193 (n + 1)).toNat

end

end A054456.P11935444104273235078

/-!
# A054457: Pell numbers A000129(n+1) (without P(0)) convoluted twice with itself.

The programs for A054457, there is no canonical definition to state claims against.
-/

/-! ## A054457.P15055041492973296157

`A054456(∑[n+2]+3)`
-/

namespace A054457.P15055041492973296157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A054457.P15055041492973296157

/-! ## A054457.P1864674701178304716

`record[A112899(∑[n+2]-2)]`
-/

namespace A054457.P1864674701178304716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054457.P1864674701178304716

/-! ## A054457.P10937560481481440841

`A112899(A052905(n+2)+2)`
-/

namespace A054457.P10937560481481440841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (A052905 (n + 2) + 2).toNat

end

end A054457.P10937560481481440841

/-! ## A054457.P11585873645392745813

`A112899(A000217(n+5)-3)`
-/

namespace A054457.P11585873645392745813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (A000217 (n + 5) - 3).toNat

end

end A054457.P11585873645392745813

/-! ## A054457.P16926720295263776753

`A112899(A000124(n+5)-4)`
-/

namespace A054457.P16926720295263776753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 (A000124 (n + 5) - 4).toNat

end

end A054457.P16926720295263776753

/-! ## A054457.P8257108846641372078

`A112899(2*(n+1)+A167614(n+2)+1)`
-/

namespace A054457.P8257108846641372078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112899 ((2 * (n + 1) : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A054457.P8257108846641372078

/-!
# A054458: Convolution triangle based on A001333(n), n >= 1.

The programs for A054458, there is no canonical definition to state claims against.
-/

/-! ## A054458.P3055813760786206000

`A209696(A038722(n+1))`
-/

namespace A054458.P3055813760786206000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209696 (A038722 (n + 1)).toNat

end

end A054458.P3055813760786206000

/-! ## A054458.P12318447725862048430

`A209696(A061579(n)+1)`
-/

namespace A054458.P12318447725862048430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209696 (A061579 n + 1).toNat

end

end A054458.P12318447725862048430

/-! ## A054458.P864867603182910862

`A209696(A093995(n+1)-n)`
-/

namespace A054458.P864867603182910862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209696 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A054458.P864867603182910862

/-! ## A054458.P7386510402803889654

`A209696(A002024(n+1)²-n)`
-/

namespace A054458.P7386510402803889654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209696 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A054458.P7386510402803889654

/-! ## A054458.P10675627751681996007

`A209696(A265129(n+1)-(n+1))`
-/

namespace A054458.P10675627751681996007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209696 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A054458.P10675627751681996007

/-!
# A054459: A001333(n), n >= 1, convolved with itself.

The programs for A054459, the canonical program `A054459.P14953385742709259650` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054459 has offset 0).

The definition of A054459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054459.P14953385742709259650

`2*A006645(n+2)-A000129(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054459

/-- `2*A006645(n+2)-A000129(n+1)` -/
def P14953385742709259650.Spec : Prop :=
  ∀ n, P14953385742709259650.a n = A054459 n

theorem P14953385742709259650.correct : P14953385742709259650.Spec := by
  intro n
  simp only [A054459]

end A054459

/-! ## A054459.P9023853843841807265

`ogf((1+2x+x^2)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A054459.P9023853843841807265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -4, 2, 4, 1] n

end

end A054459.P9023853843841807265

namespace A054459

/-- `ogf((1+2x+x^2)/(1-4x+2x^2+4x^3+x^4))` -/
def P9023853843841807265.Spec : Prop :=
  ∀ n, P9023853843841807265.a n = A054459 n

end A054459

/-! ## A054459.P4077504935074617151

`∑[A088210(n)]`
-/

namespace A054459.P4077504935074617151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054459.P4077504935074617151

namespace A054459

/-- `∑[A088210(n)]` -/
def P4077504935074617151.Spec : Prop :=
  ∀ n, P4077504935074617151.a n = A054459 n

end A054459

/-! ## A054459.P6166248923224290458

`A187917(n+1)+A054447(n)`
-/

namespace A054459.P6166248923224290458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187917 (n + 1) + A054447 n

end

end A054459.P6166248923224290458

namespace A054459

/-- `A187917(n+1)+A054447(n)` -/
def P6166248923224290458.Spec : Prop :=
  ∀ n, P6166248923224290458.a n = A054459 n

end A054459

/-! ## A054459.P10727579555014305726

`A364553(n+1)+A364553(n)`
-/

namespace A054459.P10727579555014305726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364553 (n + 1) + A364553 n

end

end A054459.P10727579555014305726

namespace A054459

/-- `A364553(n+1)+A364553(n)` -/
def P10727579555014305726.Spec : Prop :=
  ∀ n, P10727579555014305726.a n = A054459 n

end A054459

/-! ## A054459.P17603855035352107332

`record[abs(A001333(n)-A119915(n))]`
-/

namespace A054459.P17603855035352107332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001333 n - A119915 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054459.P17603855035352107332

namespace A054459

/-- `record[abs(A001333(n)-A119915(n))]` -/
def P17603855035352107332.Spec : Prop :=
  ∀ n, P17603855035352107332.a n = A054459 n

end A054459

/-! ## A054459.P13026579148507077187

`∑[A093967(n+1)+A000129(n)]`
-/

namespace A054459.P13026579148507077187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 (n + 1) + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054459.P13026579148507077187

namespace A054459

/-- `∑[A093967(n+1)+A000129(n)]` -/
def P13026579148507077187.Spec : Prop :=
  ∀ n, P13026579148507077187.a n = A054459 n

end A054459

/-! ## A054459.P3162050826497982288

`∑[A119915(n+1)+A119915(n)]`
-/

namespace A054459.P3162050826497982288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) + A119915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054459.P3162050826497982288

namespace A054459

/-- `∑[A119915(n+1)+A119915(n)]` -/
def P3162050826497982288.Spec : Prop :=
  ∀ n, P3162050826497982288.a n = A054459 n

end A054459

/-! ## A054459.P4730002776957170193

`A187915(n+1)-A088211(n+1)`
-/

namespace A054459.P4730002776957170193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187915 (n + 1) - A088211 (n + 1)

end

end A054459.P4730002776957170193

namespace A054459

/-- `A187915(n+1)-A088211(n+1)` -/
def P4730002776957170193.Spec : Prop :=
  ∀ n, P4730002776957170193.a n = A054459 n

end A054459

/-! ## A054459.P13972927610495733754

`A119915(n+2)-A078057(n+1)`
-/

namespace A054459.P13972927610495733754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 2) - A078057 (n + 1)

end

end A054459.P13972927610495733754

namespace A054459

/-- `A119915(n+2)-A078057(n+1)` -/
def P13972927610495733754.Spec : Prop :=
  ∀ n, P13972927610495733754.a n = A054459 n

end A054459

/-! ## A054459.P10828475788294949242

`A119915(n+2)-A001333(n+2)`
-/

namespace A054459.P10828475788294949242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 2) - A001333 (n + 2)

end

end A054459.P10828475788294949242

namespace A054459

/-- `A119915(n+2)-A001333(n+2)` -/
def P10828475788294949242.Spec : Prop :=
  ∀ n, P10828475788294949242.a n = A054459 n

end A054459

/-! ## A054459.P5719830569552689703

`A093967(n+1)+2*A006645(n+1)`
-/

namespace A054459.P5719830569552689703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 (n + 1) + 2 * A006645 (n + 1)

end

end A054459.P5719830569552689703

namespace A054459

/-- `A093967(n+1)+2*A006645(n+1)` -/
def P5719830569552689703.Spec : Prop :=
  ∀ n, P5719830569552689703.a n = A054459 n

end A054459

/-! ## A054459.P14124257903483347670

`A119915(n+2)-A152113(2*(n+2))`
-/

namespace A054459.P14124257903483347670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 2) - A152113 (2 * (n + 2))

end

end A054459.P14124257903483347670

namespace A054459

/-- `A119915(n+2)-A152113(2*(n+2))` -/
def P14124257903483347670.Spec : Prop :=
  ∀ n, P14124257903483347670.a n = A054459 n

end A054459

/-! ## A054459.P13164613180095610066

`A119915(n+1)+n*A000129(n+1)`
-/

namespace A054459.P13164613180095610066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) + (n : ℤ) * A000129 (n + 1)

end

end A054459.P13164613180095610066

namespace A054459

/-- `A119915(n+1)+n*A000129(n+1)` -/
def P13164613180095610066.Spec : Prop :=
  ∀ n, P13164613180095610066.a n = A054459 n

end A054459

/-! ## A054459.P10257933409477948866

`A006645(n)+A261056(n)-A000129(n+1)`
-/

namespace A054459.P10257933409477948866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 n + (A261056 n - A000129 (n + 1))

end

end A054459.P10257933409477948866

namespace A054459

/-- `A006645(n)+A261056(n)-A000129(n+1)` -/
def P10257933409477948866.Spec : Prop :=
  ∀ n, P10257933409477948866.a n = A054459 n

end A054459

/-! ## A054459.P2100960574773578230

`Δ[A364655(n+1)]`
-/

namespace A054459.P2100960574773578230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054459.P2100960574773578230

namespace A054459

/-- `Δ[A364655(n+1)]` -/
def P2100960574773578230.Spec : Prop :=
  ∀ n, P2100960574773578230.a n = A054459 n

end A054459

/-! ## A054459.P14817022048218500887

`A364655(n+2)-A364655(n+1)`
-/

namespace A054459.P14817022048218500887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364655 (n + 2) - A364655 (n + 1)

end

end A054459.P14817022048218500887

namespace A054459

/-- `A364655(n+2)-A364655(n+1)` -/
def P14817022048218500887.Spec : Prop :=
  ∀ n, P14817022048218500887.a n = A054459 n

end A054459

/-! ## A054459.P16372362151382554128

`A291264(n+1)-Δ[Δ[A054447(n+1)]]`
-/

namespace A054459.P16372362151382554128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291264 (n + 1) - (f1 (n + 1) - f1 n)

end

end A054459.P16372362151382554128

namespace A054459

/-- `A291264(n+1)-Δ[Δ[A054447(n+1)]]` -/
def P16372362151382554128.Spec : Prop :=
  ∀ n, P16372362151382554128.a n = A054459 n

end A054459

/-! ## A054459.P6255563005684255809

`A054458(∑[n+1]+1)`
-/

namespace A054459.P6255563005684255809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054459.P6255563005684255809

namespace A054459

/-- `A054458(∑[n+1]+1)` -/
def P6255563005684255809.Spec : Prop :=
  ∀ n, P6255563005684255809.a n = A054459 n

end A054459

/-! ## A054459.P8840568063433559514

`A209696(∑[n+2])`
-/

namespace A054459.P8840568063433559514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209696 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054459.P8840568063433559514

namespace A054459

/-- `A209696(∑[n+2])` -/
def P8840568063433559514.Spec : Prop :=
  ∀ n, P8840568063433559514.a n = A054459 n

end A054459

/-!
# A054460: A001333(n), n >= 1, convolved twice with itself.

The programs for A054460, the canonical program `A054460.P9460801062302457116` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054460 has offset 0).

The definition of A054460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054460.P5791437684040293275

`(n+1)/2*A074084(n+3)`
-/

namespace A054460.P5791437684040293275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A074084 (n + 3) : ℚ)

end

end A054460.P5791437684040293275

namespace A054460

/-- `(n+1)/2*A074084(n+3)` -/
def P5791437684040293275.Spec : Prop :=
  ∀ n, P5791437684040293275.a n = (A054460 n : ℚ)

end A054460

/-! ## A054460.P9460801062302457116

`A364619(n+1)+A364619(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054460

/-- `A364619(n+1)+A364619(n+2)` -/
def P9460801062302457116.Spec : Prop :=
  ∀ n, P9460801062302457116.a n = A054460 n

theorem P9460801062302457116.correct : P9460801062302457116.Spec := by
  intro n
  simp only [A054460]

end A054460

/-! ## A054460.P17861427091786772869

`A054458(∑[n+2]+3)`
-/

namespace A054460.P17861427091786772869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A054460.P17861427091786772869

namespace A054460

/-- `A054458(∑[n+2]+3)` -/
def P17861427091786772869.Spec : Prop :=
  ∀ n, P17861427091786772869.a n = A054460 n

end A054460

/-! ## A054460.P11489031814956766031

`A209696(∑[n+3]+1)`
-/

namespace A054460.P11489031814956766031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209696 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054460.P11489031814956766031

namespace A054460

/-- `A209696(∑[n+3]+1)` -/
def P11489031814956766031.Spec : Prop :=
  ∀ n, P11489031814956766031.a n = A054460 n

end A054460

/-! ## A054460.P12997490377255363024

`record[gcd(A209687(n+4), A209696(n+1))]`
-/

namespace A054460.P12997490377255363024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209687 (n + 4)) (A209696 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054460.P12997490377255363024

namespace A054460

/-- `record[gcd(A209687(n+4), A209696(n+1))]` -/
def P12997490377255363024.Spec : Prop :=
  ∀ n, (P12997490377255363024.a n : ℤ) = A054460 n

end A054460

/-! ## A054460.P8726724749460650696

`A209696(A034856(n+2))%A251235(n+1)`
-/

namespace A054460.P8726724749460650696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209696 (A034856 (n + 2)).toNat) (A251235 (n + 1))

end

end A054460.P8726724749460650696

namespace A054460

/-- `A209696(A034856(n+2))%A251235(n+1)` -/
def P8726724749460650696.Spec : Prop :=
  ∀ n, P8726724749460650696.a n = A054460 n

end A054460

/-!
# A054462: Numbers k such that (k+1)^k + k^(k-1) is prime.

The programs for A054462, there is no canonical definition to state claims against.
-/

/-! ## A054462.P13637085921845885609

`∑[A160014(A169780(n)²)]`
-/

namespace A054462.P13637085921845885609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (A169780 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054462.P13637085921845885609

/-! ## A054462.P5610734821504181693

`∑[A111579(A057635(n+1))]`
-/

namespace A054462.P5610734821504181693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111579 (A057635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054462.P5610734821504181693

/-! ## A054462.P10905301768837147439

`∑[A111579(∑[A351836(n+1)])]`
-/

namespace A054462.P10905301768837147439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111579 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054462.P10905301768837147439

/-! ## A054462.P4208536316160896722

`∑[A292892(record[A047160(n+2)])]`
-/

namespace A054462.P4208536316160896722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054462.P4208536316160896722

/-!
# A054463: Numbers k such that (k+1)^k - k^(k-1) is prime.

The programs for A054463, there is no canonical definition to state claims against.
-/

/-! ## A054463.P15944745514975570094

`A227455(A102661(a(n-1)))` with `a(0)=2, a(1)=5`
-/

namespace A054463.P15944745514975570094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A227455 (A102661 (a (n - 1)).toNat).toNat

end

end A054463.P15944745514975570094

/-!
# A054464: Numbers n such that Sum_{k=1..n} d(k) is an integer where d(k) is the decimal fraction 0.k (e.g. d(999)=0.999).

The programs for A054464, there is no canonical definition to state claims against.
-/

/-! ## A054464.P5386551628851037902

`A275624(A275623(n+1))`
-/

namespace A054464.P5386551628851037902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275624 (A275623 (n + 1)).toNat

end

end A054464.P5386551628851037902

/-! ## A054464.P9812277410610459201

`eq[1, A275626(A028310(n))]`
-/

namespace A054464.P9812277410610459201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275626 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054464.P9812277410610459201

/-!
# A054466: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which generate a group of order two under binary matrix multiplication.

The programs for A054466, there is no canonical definition to state claims against.
-/

/-! ## A054466.P15896667342871514080

`1+2*A053171(n+1)`
-/

namespace A054466.P15896667342871514080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A053171 (n + 1)

end

end A054466.P15896667342871514080

/-! ## A054466.P2284706793953232192

`A016921(A053171(n+1)/3)`
-/

namespace A054466.P2284706793953232192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (SequenceMachineLib.roundAway ((A053171 (n + 1) : ℚ) / 3)).toNat

end

end A054466.P2284706793953232192

/-! ## A054466.P9582275156829152714

`A339913(3*A053171(n+1))`
-/

namespace A054466.P9582275156829152714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (3 * A053171 (n + 1)).toNat

end

end A054466.P9582275156829152714

/-! ## A054466.P12369049876369399779

`A267363(A053171(n+1))`
-/

namespace A054466.P12369049876369399779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267363 (A053171 (n + 1)).toNat

end

end A054466.P12369049876369399779

/-! ## A054466.P4688397447204952457

`A103391(4*A053171(n+1))`
-/

namespace A054466.P4688397447204952457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (4 * A053171 (n + 1)).toNat

end

end A054466.P4688397447204952457

/-!
# A054467: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which generate a group of order four under binary matrix multiplication.

The programs for A054467, there is no canonical definition to state claims against.
-/

/-! ## A054467.P11788563588842299428

`2*A053173(n+1)`
-/

namespace A054467.P11788563588842299428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053173 (n + 1)

end

end A054467.P11788563588842299428

/-! ## A054467.P154855331673442637

`lcm(4, A053173(A005496(n)))`
-/

namespace A054467.P154855331673442637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A053173 (A005496 n).toNat)

end

end A054467.P154855331673442637

/-! ## A054467.P8800314833265213047

`lcm(12, A053173(A000027(n+1)))`
-/

namespace A054467.P8800314833265213047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A053173 (A000027 (n + 1)).toNat)

end

end A054467.P8800314833265213047

/-! ## A054467.P17758122883722337361

`lcm(A053173(n+1), A290205(n))`
-/

namespace A054467.P17758122883722337361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053173 (n + 1)) (A290205 n)

end

end A054467.P17758122883722337361

/-! ## A054467.P5445231330836367272

`A053173(n+1)+A053173(C(n+1, n))`
-/

namespace A054467.P5445231330836367272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053173 (n + 1) + A053173 (Nat.choose (n + 1) n)

end

end A054467.P5445231330836367272

/-!
# A054468: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which generate a group of order six under binary matrix multiplication.

The programs for A054468, there is no canonical definition to state claims against.
-/

/-! ## A054468.P3095750922412513728

`A053172(n+1)+2*A053174(n+1)`
-/

namespace A054468.P3095750922412513728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053172 (n + 1) + 2 * A053174 (n + 1)

end

end A054468.P3095750922412513728

/-!
# A054469: a(n) = a(n-1) + a(n-2) + (n+2)*binomial(n+3, 3)/2, with a(0) = 1, a(1) = 7.

The programs for A054469, the canonical program `A054469.P1059248484426619638` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054469 has offset 0).

The definition of A054469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054469.P1059248484426619638

`a(n-1)+a(n-2)+(n+2)*C(n+3, 3)/2` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054469

/-- `a(n-1)+a(n-2)+(n+2)*C(n+3, 3)/2` -/
def P1059248484426619638.Spec : Prop :=
  ∀ n, P1059248484426619638.a n = (A054469 n : ℚ)

end A054469

/-! ## A054469.P3266441128545165733

`a(n-1)+a(n-2)+(n+1)*(n+2)²*(n+3)/12` with `a(0)=1, a(1)=7`
-/

namespace A054469.P3266441128545165733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + a (n - 2) + ((n + 1) * (n + 2) ^ 2 * (n + 3) : ℚ) / 12

end

end A054469.P3266441128545165733

namespace A054469

/-- `a(n-1)+a(n-2)+(n+1)*(n+2)²*(n+3)/12` -/
def P3266441128545165733.Spec : Prop :=
  ∀ n, P3266441128545165733.a n = (A054469 n : ℚ)

end A054469

/-! ## A054469.P15553928143323257918

`∑[∑[∑[∑[ogf((1+x)/(1-2x+x^3))]]]]`
-/

namespace A054469.P15553928143323257918
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, 0, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P15553928143323257918

namespace A054469

/-- `∑[∑[∑[∑[ogf((1+x)/(1-2x+x^3))]]]]` -/
def P15553928143323257918.Spec : Prop :=
  ∀ n, P15553928143323257918.a n = A054469 n

end A054469

/-! ## A054469.P6058195858951686521

`∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` with `a(0)=1, a(1)=2`
-/

namespace A054469.P6058195858951686521
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f5 =>
  f5 (n - 1) + f5 (n - 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P6058195858951686521

namespace A054469

/-- `∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` -/
def P6058195858951686521.Spec : Prop :=
  ∀ n, (P6058195858951686521.a n : ℤ) = A054469 n

end A054469

/-! ## A054469.P7557030457137524957

`∑[A053809(n)]`
-/

namespace A054469.P7557030457137524957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P7557030457137524957

namespace A054469

/-- `∑[A053809(n)]` -/
def P7557030457137524957.Spec : Prop :=
  ∀ n, P7557030457137524957.a n = A054469 n

end A054469

/-! ## A054469.P11497574131035378140

`∑[∑[A053808(n)]]`
-/

namespace A054469.P11497574131035378140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P11497574131035378140

namespace A054469

/-- `∑[∑[A053808(n)]]` -/
def P11497574131035378140.Spec : Prop :=
  ∀ n, P11497574131035378140.a n = A054469 n

end A054469

/-! ## A054469.P12687803771283344359

`∑[∑[A163250(n+2)]]`
-/

namespace A054469.P12687803771283344359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P12687803771283344359

namespace A054469

/-- `∑[∑[A163250(n+2)]]` -/
def P12687803771283344359.Spec : Prop :=
  ∀ n, P12687803771283344359.a n = A054469 n

end A054469

/-! ## A054469.P386736844484943827

`∑[∑[∑[A001891(n+1)]]]`
-/

namespace A054469.P386736844484943827
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P386736844484943827

namespace A054469

/-- `∑[∑[∑[A001891(n+1)]]]` -/
def P386736844484943827.Spec : Prop :=
  ∀ n, P386736844484943827.a n = A054469 n

end A054469

/-! ## A054469.P12053799609525512677

`∑[∑[∑[∑[∑[A000045(n+2)]]]]]`
-/

namespace A054469.P12053799609525512677
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P12053799609525512677

namespace A054469

/-- `∑[∑[∑[∑[∑[A000045(n+2)]]]]]` -/
def P12053799609525512677.Spec : Prop :=
  ∀ n, P12053799609525512677.a n = A054469 n

end A054469

/-! ## A054469.P15269381581686918198

`∑[A014166(n+1)+A014166(n)]`
-/

namespace A054469.P15269381581686918198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (n + 1) + A014166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P15269381581686918198

namespace A054469

/-- `∑[A014166(n+1)+A014166(n)]` -/
def P15269381581686918198.Spec : Prop :=
  ∀ n, P15269381581686918198.a n = A054469 n

end A054469

/-! ## A054469.P4797701026304815739

`A053739(n)+A053739(n)-A014166(n+1)`
-/

namespace A054469.P4797701026304815739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 n + (A053739 n - A014166 (n + 1))

end

end A054469.P4797701026304815739

namespace A054469

/-- `A053739(n)+A053739(n)-A014166(n+1)` -/
def P4797701026304815739.Spec : Prop :=
  ∀ n, P4797701026304815739.a n = A054469 n

end A054469

/-! ## A054469.P5720217545785178303

`A053739(n+1)+A053739(n)-A053809(n+1)`
-/

namespace A054469.P5720217545785178303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (n + 1) + (A053739 n - A053809 (n + 1))

end

end A054469.P5720217545785178303

namespace A054469

/-- `A053739(n+1)+A053739(n)-A053809(n+1)` -/
def P5720217545785178303.Spec : Prop :=
  ∀ n, P5720217545785178303.a n = A054469 n

end A054469

/-! ## A054469.P12950796899111001101

`∑[∑[A213566(∑[n]+1)]]`
-/

namespace A054469.P12950796899111001101
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213566 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P12950796899111001101

namespace A054469

/-- `∑[∑[A213566(∑[n]+1)]]` -/
def P12950796899111001101.Spec : Prop :=
  ∀ n, P12950796899111001101.a n = A054469 n

end A054469

/-! ## A054469.P2503562306774794849

`∑[∑[A213590(∑[n]+1)]]`
-/

namespace A054469.P2503562306774794849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213590 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054469.P2503562306774794849

namespace A054469

/-- `∑[∑[A213590(∑[n]+1)]]` -/
def P2503562306774794849.Spec : Prop :=
  ∀ n, P2503562306774794849.a n = A054469 n

end A054469

/-!
# A054470: Partial sums of A054469.

The programs for A054470, the canonical program `A054470.P2840083931229191237` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054470 has offset 0).

The definition of A054470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054470.P2840083931229191237

`a(n-1)+a(n-2)+(2*n+5)*C(n+4, 4)/5` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054470

/-- `a(n-1)+a(n-2)+(2*n+5)*C(n+4, 4)/5` -/
def P2840083931229191237.Spec : Prop :=
  ∀ n, P2840083931229191237.a n = (A054470 n : ℚ)

end A054470

/-! ## A054470.P3427270238071152517

`∑[∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]]` with `a(0)=1, a(1)=2`
-/

namespace A054470.P3427270238071152517
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f6 =>
  f6 (n - 1) + f6 (n - 2)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054470.P3427270238071152517

namespace A054470

/-- `∑[∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]]` -/
def P3427270238071152517.Spec : Prop :=
  ∀ n, (P3427270238071152517.a n : ℤ) = A054470 n

end A054470

/-! ## A054470.P16946958391243536542

`∑[A054469(n)]`
-/

namespace A054470.P16946958391243536542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054470.P16946958391243536542

namespace A054470

/-- `∑[A054469(n)]` -/
def P16946958391243536542.Spec : Prop :=
  ∀ n, P16946958391243536542.a n = A054470 n

end A054470

/-! ## A054470.P12869093982067102111

`∑[∑[A053809(n)]]`
-/

namespace A054470.P12869093982067102111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053809 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054470.P12869093982067102111

namespace A054470

/-- `∑[∑[A053809(n)]]` -/
def P12869093982067102111.Spec : Prop :=
  ∀ n, P12869093982067102111.a n = A054470 n

end A054470

/-! ## A054470.P17219855243648427317

`∑[∑[∑[A053808(n)]]]`
-/

namespace A054470.P17219855243648427317
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054470.P17219855243648427317

namespace A054470

/-- `∑[∑[∑[A053808(n)]]]` -/
def P17219855243648427317.Spec : Prop :=
  ∀ n, P17219855243648427317.a n = A054470 n

end A054470

/-! ## A054470.P13322230332208467214

`∑[∑[∑[A163250(n+2)]]]`
-/

namespace A054470.P13322230332208467214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054470.P13322230332208467214

namespace A054470

/-- `∑[∑[∑[A163250(n+2)]]]` -/
def P13322230332208467214.Spec : Prop :=
  ∀ n, P13322230332208467214.a n = A054470 n

end A054470

/-! ## A054470.P15650827803045186181

`∑[∑[∑[∑[∑[∑[A000045(n+2)]]]]]]`
-/

namespace A054470.P15650827803045186181
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054470.P15650827803045186181

namespace A054470

/-- `∑[∑[∑[∑[∑[∑[A000045(n+2)]]]]]]` -/
def P15650827803045186181.Spec : Prop :=
  ∀ n, P15650827803045186181.a n = A054470 n

end A054470

/-! ## A054470.P6823168270296327502

`A053295(n)+A053295(n)-A053739(n)`
-/

namespace A054470.P6823168270296327502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 n + (A053295 n - A053739 n)

end

end A054470.P6823168270296327502

namespace A054470

/-- `A053295(n)+A053295(n)-A053739(n)` -/
def P6823168270296327502.Spec : Prop :=
  ∀ n, P6823168270296327502.a n = A054470 n

end A054470

/-! ## A054470.P16466371598557008121

`2*A053295(n)-A053739(n)`
-/

namespace A054470.P16466371598557008121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053295 n - A053739 n

end

end A054470.P16466371598557008121

namespace A054470

/-- `2*A053295(n)-A053739(n)` -/
def P16466371598557008121.Spec : Prop :=
  ∀ n, P16466371598557008121.a n = A054470 n

end A054470

/-!
# A054472: Number of ways to color faces of an icosahedron using at most n colors.

The programs for A054472, the canonical program `A054472.P14762802537838301689` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054472 has offset 0).

The definition of A054472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054472.P14762802537838301689

`(n^20+15*n^10+20*n^8+24*n^4)/60`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054472

/-- `(n^20+15*n^10+20*n^8+24*n^4)/60` -/
def P14762802537838301689.Spec : Prop :=
  ∀ n, P14762802537838301689.a n = (A054472 n : ℚ)

end A054472

/-!
# A054473: Number of ways of numbering the faces of a cube with nonnegative integers so that the sum of the 6 numbers is n.

The programs for A054473, the canonical program `A054473.P5529264726719540084` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054473 has offset 0).

The definition of A054473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054473.P5529264726719540084

`A003082(n)-A173196(A110654(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054473

/-- `A003082(n)-A173196(A110654(n))` -/
def P5529264726719540084.Spec : Prop :=
  ∀ n, P5529264726719540084.a n = A054473 n

theorem P5529264726719540084.correct : P5529264726719540084.Spec := by
  intro n
  simp only [A054473]

end A054473

/-! ## A054473.P4638192411481318624

`A306202(A053993(n))`
-/

namespace A054473.P4638192411481318624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A053993 n).toNat

end

end A054473.P4638192411481318624

namespace A054473

/-- `A306202(A053993(n))` -/
def P4638192411481318624.Spec : Prop :=
  ∀ n, P4638192411481318624.a n = A054473 n

end A054473

/-! ## A054473.P3378491439194691767

`A328869(A323433(n))`
-/

namespace A054473.P3378491439194691767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328869 (A323433 n).toNat

end

end A054473.P3378491439194691767

namespace A054473

/-- `A328869(A323433(n))` -/
def P3378491439194691767.Spec : Prop :=
  ∀ n, P3378491439194691767.a n = A054473 n

end A054473

/-! ## A054473.P14702303599846544138

`A345913(2*A374634(n))`
-/

namespace A054473.P14702303599846544138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (2 * A374634 n).toNat

end

end A054473.P14702303599846544138

namespace A054473

/-- `A345913(2*A374634(n))` -/
def P14702303599846544138.Spec : Prop :=
  ∀ n, P14702303599846544138.a n = A054473 n

end A054473

/-! ## A054473.P76572527702204300

`A345913(2*A048816(n+1))`
-/

namespace A054473.P76572527702204300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (2 * A048816 (n + 1)).toNat

end

end A054473.P76572527702204300

namespace A054473

/-- `A345913(2*A048816(n+1))` -/
def P76572527702204300.Spec : Prop :=
  ∀ n, P76572527702204300.a n = A054473 n

end A054473

/-!
# A054474: Number of walks on square lattice that start and end at origin after 2n steps, not touching origin at intermediate stages.

The programs for A054474, there is no canonical definition to state claims against.
-/

/-! ## A054474.P1240007209986320020

`A361397(∑[n+3])`
-/

namespace A054474.P1240007209986320020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054474.P1240007209986320020

/-! ## A054474.P8665342458879657421

`A361397(A141214(n))%A050248(n+1)`
-/

namespace A054474.P8665342458879657421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361397 (A141214 n).toNat) (A050248 (n + 1))

end

end A054474.P8665342458879657421

/-!
# A054475: Numbers not divisible by any of their digits when written in base 4.

The programs for A054475, the canonical program `A054475.P14661608982889306377` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054475 has offset 1).

The definition of A054475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054475.P17059519945435783350

`filter[A023709(n+1), A354354(#)]`
-/

namespace A054475.P17059519945435783350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A054475.P17059519945435783350

namespace A054475

/-- `filter[A023709(n+1), A354354(#)]` -/
def P17059519945435783350.Spec : Prop :=
  ∀ n, P17059519945435783350.a n = A054475 (n + 1)

end A054475

/-! ## A054475.P14661608982889306377

`∩[A023709(n+1), A168489(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054475

/-- `∩[A023709(n+1), A168489(n+1)]` -/
def P14661608982889306377.Spec : Prop :=
  ∀ n, (P14661608982889306377.a n : ℤ) = A054475 (n + 1)

theorem P14661608982889306377.correct : P14661608982889306377.Spec := by
  intro n
  simp only [A054475, Nat.add_sub_cancel]

end A054475

/-! ## A054475.P901886775236386514

`eq[1, A292371(n)+A010155(n)]`
-/

namespace A054475.P901886775236386514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n + A010155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054475.P901886775236386514

namespace A054475

/-- `eq[1, A292371(n)+A010155(n)]` -/
def P901886775236386514.Spec : Prop :=
  ∀ n, (P901886775236386514.a n : ℤ) = A054475 (n + 1)

end A054475

/-! ## A054475.P14622200152580816416

`eq[2, A292371(n)+A010124(n)]`
-/

namespace A054475.P14622200152580816416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n + A010124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054475.P14622200152580816416

namespace A054475

/-- `eq[2, A292371(n)+A010124(n)]` -/
def P14622200152580816416.Spec : Prop :=
  ∀ n, (P14622200152580816416.a n : ℤ) = A054475 (n + 1)

end A054475

/-! ## A054475.P458741773178415423

`∩[A007310(n+1), A023709(n+1)]`
-/

namespace A054475.P458741773178415423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054475.P458741773178415423

namespace A054475

/-- `∩[A007310(n+1), A023709(n+1)]` -/
def P458741773178415423.Spec : Prop :=
  ∀ n, (P458741773178415423.a n : ℤ) = A054475 (n + 1)

end A054475

/-! ## A054475.P5465960072931841741

`eq[A000285(A292371(n)), A010155(n)]`
-/

namespace A054475.P5465960072931841741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (A292371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054475.P5465960072931841741

namespace A054475

/-- `eq[A000285(A292371(n)), A010155(n)]` -/
def P5465960072931841741.Spec : Prop :=
  ∀ n, (P5465960072931841741.a n : ℤ) = A054475 (n + 1)

end A054475

/-! ## A054475.P7884045455988189101

`eq[A010124(n), A016825(A292371(n))]`
-/

namespace A054475.P7884045455988189101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054475.P7884045455988189101

namespace A054475

/-- `eq[A010124(n), A016825(A292371(n))]` -/
def P7884045455988189101.Spec : Prop :=
  ∀ n, (P7884045455988189101.a n : ℤ) = A054475 (n + 1)

end A054475

/-! ## A054475.P422084071962647766

`eq[2*A010160(n), (2*A001316(A292371(n)))²]`
-/

namespace A054475.P422084071962647766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001316 (A292371 n).toNat) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054475.P422084071962647766

namespace A054475

/-- `eq[2*A010160(n), (2*A001316(A292371(n)))²]` -/
def P422084071962647766.Spec : Prop :=
  ∀ n, (P422084071962647766.a n : ℤ) = A054475 (n + 1)

end A054475

/-! ## A054475.P14714622287033025942

`eq[A100219(n), A292371(n)]`
-/

namespace A054475.P14714622287033025942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054475.P14714622287033025942

namespace A054475

/-- `eq[A100219(n), A292371(n)]` -/
def P14714622287033025942.Spec : Prop :=
  ∀ n, (P14714622287033025942.a n : ℤ) = A054475 (n + 1)

end A054475

/-! ## A054475.P812806729262293300

`eq[or(n, A088442(n)), A186101(n)]`
-/

namespace A054475.P812806729262293300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A088442 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054475.P812806729262293300

namespace A054475

/-- `eq[or(n, A088442(n)), A186101(n)]` -/
def P812806729262293300.Spec : Prop :=
  ∀ n, (P812806729262293300.a n : ℤ) = A054475 (n + 1)

end A054475

/-!
# A054477: A Pellian-related sequence.

The programs for A054477, the canonical program `A054477.P7323039507278076901` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054477 has offset 0).

The definition of A054477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054477.P7323039507278076901

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054477

/-- `5*a(n-1)-a(n-2)` -/
def P7323039507278076901.Spec : Prop :=
  ∀ n, P7323039507278076901.a n = A054477 n

theorem P7323039507278076901.correct : P7323039507278076901.Spec := by
  intro n
  simp only [A054477]

end A054477

/-! ## A054477.P1391118423070439440

`ogf((1+8x)/(1-5x+x^2))`
-/

namespace A054477.P1391118423070439440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -5, 1] n

end

end A054477.P1391118423070439440

namespace A054477

/-- `ogf((1+8x)/(1-5x+x^2))` -/
def P1391118423070439440.Spec : Prop :=
  ∀ n, P1391118423070439440.a n = A054477 n

end A054477

/-! ## A054477.P16120101501285676607

`Δ[lcm(5, a(n-1))-a(n-2)]` with `a(0)=3, a(1)=4`
-/

namespace A054477.P16120101501285676607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054477.P16120101501285676607

namespace A054477

/-- `Δ[lcm(5, a(n-1))-a(n-2)]` -/
def P16120101501285676607.Spec : Prop :=
  ∀ n, P16120101501285676607.a n = A054477 n

end A054477

/-! ## A054477.P2310112587867488856

`3*A030221(n)-A003501(n)`
-/

namespace A054477.P2310112587867488856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A030221 n - A003501 n

end

end A054477.P2310112587867488856

namespace A054477

/-- `3*A030221(n)-A003501(n)` -/
def P2310112587867488856.Spec : Prop :=
  ∀ n, P2310112587867488856.a n = A054477 n

end A054477

/-! ## A054477.P9799468812938481041

`A030221(n)+7*A004254(n)`
-/

namespace A054477.P9799468812938481041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 n + 7 * A004254 n

end

end A054477.P9799468812938481041

namespace A054477

/-- `A030221(n)+7*A004254(n)` -/
def P9799468812938481041.Spec : Prop :=
  ∀ n, P9799468812938481041.a n = A054477 n

end A054477

/-! ## A054477.P14048702727853498327

`A002320(n)+10*A004254(n)`
-/

namespace A054477.P14048702727853498327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n + 10 * A004254 n

end

end A054477.P14048702727853498327

namespace A054477

/-- `A002320(n)+10*A004254(n)` -/
def P14048702727853498327.Spec : Prop :=
  ∀ n, P14048702727853498327.a n = A054477 n

end A054477

/-! ## A054477.P915876124512263685

`A136211(2*n+1)+8*A004254(n)`
-/

namespace A054477.P915876124512263685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (2 * n + 1) + 8 * A004254 n

end

end A054477.P915876124512263685

namespace A054477

/-- `A136211(2*n+1)+8*A004254(n)` -/
def P915876124512263685.Spec : Prop :=
  ∀ n, P915876124512263685.a n = A054477 n

end A054477

/-! ## A054477.P11189726591486703362

`A099867(n)+A099867(n)-A004254(n+1)`
-/

namespace A054477.P11189726591486703362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099867 n + (A099867 n - A004254 (n + 1))

end

end A054477.P11189726591486703362

namespace A054477

/-- `A099867(n)+A099867(n)-A004254(n+1)` -/
def P11189726591486703362.Spec : Prop :=
  ∀ n, P11189726591486703362.a n = A054477 n

end A054477

/-! ## A054477.P2562442747474841940

`A004254(n)+A290902(n)-A164582(n+1)`
-/

namespace A054477.P2562442747474841940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + (A290902 n - A164582 (n + 1))

end

end A054477.P2562442747474841940

namespace A054477

/-- `A004254(n)+A290902(n)-A164582(n+1)` -/
def P2562442747474841940.Spec : Prop :=
  ∀ n, P2562442747474841940.a n = A054477 n

end A054477

/-! ## A054477.P10105501493339596051

`Δ[A003501(n)]-A003501(n)`
-/

namespace A054477.P10105501493339596051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003501 n

end

end A054477.P10105501493339596051

namespace A054477

/-- `Δ[A003501(n)]-A003501(n)` -/
def P10105501493339596051.Spec : Prop :=
  ∀ n, P10105501493339596051.a n = A054477 n

end A054477

/-! ## A054477.P12465737920892782381

`A003501(n+1)-2*A003501(n)`
-/

namespace A054477.P12465737920892782381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 (n + 1) - 2 * A003501 n

end

end A054477.P12465737920892782381

namespace A054477

/-- `A003501(n+1)-2*A003501(n)` -/
def P12465737920892782381.Spec : Prop :=
  ∀ n, P12465737920892782381.a n = A054477 n

end A054477

/-! ## A054477.P17154128331130262631

`A030221(n+1)-(A164582(n+1)+A164582(n+2))`
-/

namespace A054477.P17154128331130262631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 (n + 1) - (A164582 (n + 1) + A164582 (n + 2))

end

end A054477.P17154128331130262631

namespace A054477

/-- `A030221(n+1)-(A164582(n+1)+A164582(n+2))` -/
def P17154128331130262631.Spec : Prop :=
  ∀ n, P17154128331130262631.a n = A054477 n

end A054477

/-!
# A054479: Number of sets of cycle graphs of 2n nodes where the 2-colored edges alternate colors.

The programs for A054479, there is no canonical definition to state claims against.
-/

/-! ## A054479.P18152047298107775734

`A001147(n)*A053871(n)`
-/

namespace A054479.P18152047298107775734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A053871 n

end

end A054479.P18152047298107775734

/-! ## A054479.P9073637698446454595

`sqrt(A001818(n))*A053871(n)`
-/

namespace A054479.P9073637698446454595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001818 n : ℝ) * (A053871 n : ℝ)

end

end A054479.P9073637698446454595

/-! ## A054479.P3621218964714327737

`A001497(∑[n])*A053871(n)`
-/

namespace A054479.P3621218964714327737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (∑ j ∈ Finset.range (n + 1), f1 j) * A053871 n

end

end A054479.P3621218964714327737

/-! ## A054479.P13066648775399706112

`A053871(n)*A085881(∑[n])`
-/

namespace A054479.P13066648775399706112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 n * A085881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054479.P13066648775399706112

/-! ## A054479.P2304829952517043339

`A053871(n)*A176230(∑[n])`
-/

namespace A054479.P2304829952517043339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 n * A176230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054479.P2304829952517043339

/-!
# A054480: Number of different positive braids with n crossings of 4 strands.

The programs for A054480, the canonical program `A054480.P3382687088351669044` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054480 has offset 0).

The definition of A054480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054480.P3382687088351669044

`∑[ogf(1/(1-2x-x^2+x^3+x^4+x^5))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054480

/-- `∑[ogf(1/(1-2x-x^2+x^3+x^4+x^5))]` -/
def P3382687088351669044.Spec : Prop :=
  ∀ n, P3382687088351669044.a n = A054480 n

theorem P3382687088351669044.correct : P3382687088351669044.Spec := by
  intro n
  simp only [A054480]

end A054480

/-! ## A054480.P10600293556434735449

`∑[A249728(A006253(n))]`
-/

namespace A054480.P10600293556434735449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A006253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054480.P10600293556434735449

namespace A054480

/-- `∑[A249728(A006253(n))]` -/
def P10600293556434735449.Spec : Prop :=
  ∀ n, P10600293556434735449.a n = A054480 n

end A054480

/-! ## A054480.P17644101784195009493

`∑[∑[A003056(A150383(n))]]`
-/

namespace A054480.P17644101784195009493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150383 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054480.P17644101784195009493

namespace A054480

/-- `∑[∑[A003056(A150383(n))]]` -/
def P17644101784195009493.Spec : Prop :=
  ∀ n, P17644101784195009493.a n = A054480 n

end A054480

/-! ## A054480.P12657910592501081930

`∑[∑[A003056(A150426(n))]]`
-/

namespace A054480.P12657910592501081930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150426 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054480.P12657910592501081930

namespace A054480

/-- `∑[∑[A003056(A150426(n))]]` -/
def P12657910592501081930.Spec : Prop :=
  ∀ n, P12657910592501081930.a n = A054480 n

end A054480

/-!
# A054481: Highest common factor of successive highly composite numbers (1), A002182.

The programs for A054481, there is no canonical definition to state claims against.
-/

/-! ## A054481.P10019906453047425377

`A002182(n+1)/A054482(n+2)`
-/

namespace A054481.P10019906453047425377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A054482 (n + 2) : ℚ)

end

end A054481.P10019906453047425377

/-! ## A054481.P7143624034406733278

`A002182(n+2)/A054483(n+2)`
-/

namespace A054481.P7143624034406733278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 2) : ℚ) / (A054483 (n + 2) : ℚ)

end

end A054481.P7143624034406733278

/-! ## A054481.P5084718837389258671

`gcd(A002182(n+1), A002182(n+2))`
-/

namespace A054481.P5084718837389258671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A002182 (n + 2))

end

end A054481.P5084718837389258671

/-! ## A054481.P14092001498597365290

`(A135372(n+1)-1)/A054482(n+2)`
-/

namespace A054481.P14092001498597365290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1 : ℚ) / (A054482 (n + 2) : ℚ)

end

end A054481.P14092001498597365290

/-! ## A054481.P16951113646851070889

`A262501(n+1)/(A054483(n+2)-A054482(n+2))`
-/

namespace A054481.P16951113646851070889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262501 (n + 1) : ℚ) / (A054483 (n + 2) - A054482 (n + 2) : ℚ)

end

end A054481.P16951113646851070889

/-! ## A054481.P5537057725693196040

`gcd(A301413(n+1)*A319865(n+1), A262501(A028310(n+1)))`
-/

namespace A054481.P5537057725693196040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301413 (n + 1) * A319865 (n + 1)) (A262501 (A028310 (n + 1)).toNat)

end

end A054481.P5537057725693196040

/-! ## A054481.P7527551188982345227

`gcd(A231622(A057979(2*n))+A135372(n+1), Δ[A135372(n+1)])`
-/

namespace A054481.P7527551188982345227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231622 (A057979 (2 * n)).toNat + A135372 (n + 1)) (f1 (n + 1) - f1 n)

end

end A054481.P7527551188982345227

/-! ## A054481.P11602537521585890282

`gcd(A002110(A108602(n+1))*A301413(n+1), Δ[A002110(A108602(n+1))*A301413(n+1)])`
-/

namespace A054481.P11602537521585890282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A108602 (n + 1)).toNat * A301413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A108602 (n + 1)).toNat * A301413 (n + 1)) (f1 (n + 1) - f1 n)

end

end A054481.P11602537521585890282

/-! ## A054481.P13992926327483642330

`sqrt(gcd(A262501(n+1)², A046952(n+1)))`
-/

namespace A054481.P13992926327483642330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A262501 (n + 1) ^ 2) (A046952 (n + 1)) : ℝ)

end

end A054481.P13992926327483642330

/-! ## A054481.P9756519535944378114

`sqrt(gcd(A046952(n+1), A046952(n+2)))`
-/

namespace A054481.P9756519535944378114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A046952 (n + 1)) (A046952 (n + 2)) : ℝ)

end

end A054481.P9756519535944378114

/-! ## A054481.P4296452393449956935

`A025487(A306802(n+1))/A054482(n+2)`
-/

namespace A054481.P4296452393449956935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (A306802 (n + 1)).toNat : ℚ) / (A054482 (n + 2) : ℚ)

end

end A054481.P4296452393449956935

/-! ## A054481.P5847778898581542765

`gcd(A025487(A306802(n+1)), A025487(A306802(n+2)))`
-/

namespace A054481.P5847778898581542765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025487 (A306802 (n + 1)).toNat) (A025487 (A306802 (n + 2)).toNat)

end

end A054481.P5847778898581542765

/-! ## A054481.P2909556944155168829

`A262501(n+1)/A053878(n+2)`
-/

namespace A054481.P2909556944155168829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262501 (n + 1) : ℚ) / (A053878 (n + 2) : ℚ)

end

end A054481.P2909556944155168829

/-! ## A054481.P13308156477500344451

`Δ[A002182(n+1)]/A053878(n+2)`
-/

namespace A054481.P13308156477500344451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A053878 (n + 2) : ℚ)

end

end A054481.P13308156477500344451

/-! ## A054481.P11936678677012382805

`A061799(A002183(n+1))/A054482(n+2)`
-/

namespace A054481.P11936678677012382805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (A002183 (n + 1)).toNat : ℚ) / (A054482 (n + 2) : ℚ)

end

end A054481.P11936678677012382805

/-! ## A054481.P2303285421435894503

`(A002182(n+2)-A002182(n+1))/A053878(n+2)`
-/

namespace A054481.P2303285421435894503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 2) - A002182 (n + 1) : ℚ) / (A053878 (n + 2) : ℚ)

end

end A054481.P2303285421435894503

/-!
# A054482: Denominator of lowest terms fraction from division of a highly composite number (1) by its predecessor.

The programs for A054482, there is no canonical definition to state claims against.
-/

/-! ## A054482.P9088837360809355602

`A002182(n+1)/A054481(n+2)`
-/

namespace A054482.P9088837360809355602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054482.P9088837360809355602

/-! ## A054482.P6663817509914125659

`A054483(n+2)/ratio[A002182(n+1)]`
-/

namespace A054482.P6663817509914125659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054483 (n + 2) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A054482.P6663817509914125659

/-! ## A054482.P10273257837049183704

`A002182(n+1)/A002182(n+2)*A054483(n+2)`
-/

namespace A054482.P10273257837049183704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A002182 (n + 2) : ℚ) * (A054483 (n + 2) : ℚ)

end

end A054482.P10273257837049183704

/-! ## A054482.P788951581652969082

`(A135372(n+1)-1)/A054481(n+2)`
-/

namespace A054482.P788951581652969082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1 : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054482.P788951581652969082

/-! ## A054482.P17947648244398774907

`A054483(n+2)-A262501(n+1)/A054481(n+2)`
-/

namespace A054482.P17947648244398774907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054483 (n + 2) : ℚ) - (A262501 (n + 1) : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054482.P17947648244398774907

/-! ## A054482.P8326282506003494001

`sqrt(A046952(n+1))/A054481(n+2)`
-/

namespace A054482.P8326282506003494001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ) / (A054481 (n + 2) : ℝ)

end

end A054482.P8326282506003494001

/-! ## A054482.P3611695361032607201

`A152047(n+1)*A152048(n+1)/A054481(n+2)`
-/

namespace A054482.P3611695361032607201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152047 (n + 1) * A152048 (n + 1) : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054482.P3611695361032607201

/-! ## A054482.P11904449048977456877

`A025487(A306802(n+1))/A054481(n+2)`
-/

namespace A054482.P11904449048977456877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (A306802 (n + 1)).toNat : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054482.P11904449048977456877

/-! ## A054482.P11028907129576471152

`A054483(n+2)-A053878(n+2)`
-/

namespace A054482.P11028907129576471152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054483 (n + 2) - A053878 (n + 2)

end

end A054482.P11028907129576471152

/-! ## A054482.P3419854961815544756

`A061799(A002183(n+1))/A054481(n+2)`
-/

namespace A054482.P3419854961815544756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (A002183 (n + 1)).toNat : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054482.P3419854961815544756

/-! ## A054482.P9550943155514456815

`A002182(n+1)/A262501(n+1)*A053878(n+2)`
-/

namespace A054482.P9550943155514456815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A262501 (n + 1) : ℚ) * (A053878 (n + 2) : ℚ)

end

end A054482.P9550943155514456815

/-!
# A054483: Numerator of lowest terms fraction from division of a highly composite number (1) by its predecessor.

The programs for A054483, there is no canonical definition to state claims against.
-/

/-! ## A054483.P118997745579383165

`A002182(n+2)/A054481(n+2)`
-/

namespace A054483.P118997745579383165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 2) : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054483.P118997745579383165

/-! ## A054483.P621679701704959033

`ratio[A002182(n+1)]*A054482(n+2)`
-/

namespace A054483.P621679701704959033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A054482 (n + 2) : ℚ)

end

end A054483.P621679701704959033

/-! ## A054483.P4263739833214017556

`ceil(ratio[A135372(n+1)]*A054482(n+2))`
-/

namespace A054483.P4263739833214017556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A054482 (n + 2) : ℚ)⌉

end

end A054483.P4263739833214017556

/-! ## A054483.P5707789019545629162

`A002182(n+2)/A002182(n+1)*A054482(n+2)`
-/

namespace A054483.P5707789019545629162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 2) : ℚ) / (A002182 (n + 1) : ℚ) * (A054482 (n + 2) : ℚ)

end

end A054483.P5707789019545629162

/-! ## A054483.P14811007373423881192

`A054482(n+2)+A262501(n+1)/A054481(n+2)`
-/

namespace A054483.P14811007373423881192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054482 (n + 2) : ℚ) + (A262501 (n + 1) : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054483.P14811007373423881192

/-! ## A054483.P5583921875669271795

`A054481(n+3)/A054481(n+2)*A054482(n+3)`
-/

namespace A054483.P5583921875669271795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054481 (n + 3) : ℚ) / (A054481 (n + 2) : ℚ) * (A054482 (n + 3) : ℚ)

end

end A054483.P5583921875669271795

/-! ## A054483.P113792944269511761

`A152047(n+2)/A054481(n+2)*A152048(n+2)`
-/

namespace A054483.P113792944269511761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152047 (n + 2) : ℚ) / (A054481 (n + 2) : ℚ) * (A152048 (n + 2) : ℚ)

end

end A054483.P113792944269511761

/-! ## A054483.P1067261819438668246

`ratio[A025487(A306802(n+1))]*A054482(n+2)`
-/

namespace A054483.P1067261819438668246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A054482 (n + 2) : ℚ)

end

end A054483.P1067261819438668246

/-! ## A054483.P9268100946840202847

`A054482(n+2)+A053878(n+2)`
-/

namespace A054483.P9268100946840202847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054482 (n + 2) + A053878 (n + 2)

end

end A054483.P9268100946840202847

/-! ## A054483.P14321455659602962744

`A002182(n+2)/A262501(n+1)*A053878(n+2)`
-/

namespace A054483.P14321455659602962744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 2) : ℚ) / (A262501 (n + 1) : ℚ) * (A053878 (n + 2) : ℚ)

end

end A054483.P14321455659602962744

/-! ## A054483.P18021859991856316825

`A061799(A002183(n+2))/A054481(n+2)`
-/

namespace A054483.P18021859991856316825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (A002183 (n + 2)).toNat : ℚ) / (A054481 (n + 2) : ℚ)

end

end A054483.P18021859991856316825

/-! ## A054483.P1319583014953978228

`ratio[A061799(A002183(n+1))]*A054482(n+2)`
-/

namespace A054483.P1319583014953978228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A002183 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A054482 (n + 2) : ℚ)

end

end A054483.P1319583014953978228

/-!
# A054484: Numbers not divisible by any of their digits when written in base 7.

The programs for A054484, there is no canonical definition to state claims against.
-/

/-! ## A054484.P15699759631602510249

`A119605(lt[A225039(n+1), A200154(2*(n+2))])`
-/

namespace A054484.P15699759631602510249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054484.P15699759631602510249

/-! ## A054484.P10223464896336589727

`eq[A162297(A091042(n)), A321936(n)]`
-/

namespace A054484.P10223464896336589727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162297 (A091042 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054484.P10223464896336589727

/-!
# A054485: Expansion of (1+3*x)/(1-4*x+x^2).

The programs for A054485, the canonical program `A054485.P7681277805820408975` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054485 has offset 0).

The definition of A054485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-4x+x^2))` (program `A054485.P7681277805820408975`, by `A054485.P7681277805820408975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054485.P7681277805820408975

`ogf((1+3x)/(1-4x+x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054485

/-- `ogf((1+3x)/(1-4x+x^2))` -/
def P7681277805820408975.Spec : Prop :=
  ∀ n, P7681277805820408975.a n = A054485 n

theorem P7681277805820408975.correct : P7681277805820408975.Spec := by
  intro n
  simp only [A054485]

end A054485

/-! ## A054485.P5476882367554640027

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A054485.P5476882367554640027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  4 * a (n - 1) - a (n - 2)

end

end A054485.P5476882367554640027

namespace A054485

/-- `4*a(n-1)-a(n-2)` -/
def P5476882367554640027.Spec : Prop :=
  ∀ n, P5476882367554640027.a n = A054485 n

end A054485

/-! ## A054485.P842297085898263150

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A054485.P842297085898263150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A054485.P842297085898263150

namespace A054485

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P842297085898263150.Spec : Prop :=
  ∀ n, P842297085898263150.a n = A054485 n

end A054485

/-! ## A054485.P7777949691441852412

`lcm(4, a(n-1))-a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A054485.P7777949691441852412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - a (n - 2)

end

end A054485.P7777949691441852412

namespace A054485

/-- `lcm(4, a(n-1))-a(n-2)` -/
def P7777949691441852412.Spec : Prop :=
  ∀ n, P7777949691441852412.a n = A054485 n

end A054485

/-! ## A054485.P7249637512869443465

`Δ[a(n-1)/(1/2)²-a(n-2)]` with `a(0)=2, a(1)=3`
-/

namespace A054485.P7249637512869443465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054485.P7249637512869443465

namespace A054485

/-- `Δ[a(n-1)/(1/2)²-a(n-2)]` -/
def P7249637512869443465.Spec : Prop :=
  ∀ n, P7249637512869443465.a n = (A054485 n : ℚ)

end A054485

/-! ## A054485.P14312291513879026800

`Δ[A144720(n)]`
-/

namespace A054485.P14312291513879026800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054485.P14312291513879026800

namespace A054485

/-- `Δ[A144720(n)]` -/
def P14312291513879026800.Spec : Prop :=
  ∀ n, P14312291513879026800.a n = A054485 n

end A054485

/-! ## A054485.P501346326461772085

`A052530(n)+A001834(n)`
-/

namespace A054485.P501346326461772085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n + A001834 n

end

end A054485.P501346326461772085

namespace A054485

/-- `A052530(n)+A001834(n)` -/
def P501346326461772085.Spec : Prop :=
  ∀ n, P501346326461772085.a n = A054485 n

end A054485

/-! ## A054485.P5051965690145830452

`A054491(n)+A001353(n)`
-/

namespace A054485.P5051965690145830452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n + A001353 n

end

end A054485.P5051965690145830452

namespace A054485

/-- `A054491(n)+A001353(n)` -/
def P5051965690145830452.Spec : Prop :=
  ∀ n, P5051965690145830452.a n = A054485 n

end A054485

/-! ## A054485.P6293382515567662346

`A106707(n)+A055845(n)`
-/

namespace A054485.P6293382515567662346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + A055845 n

end

end A054485.P6293382515567662346

namespace A054485

/-- `A106707(n)+A055845(n)` -/
def P6293382515567662346.Spec : Prop :=
  ∀ n, P6293382515567662346.a n = A054485 n

end A054485

/-! ## A054485.P13411193735201751740

`A055845(n)-A001353(n)`
-/

namespace A054485.P13411193735201751740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055845 n - A001353 n

end

end A054485.P13411193735201751740

namespace A054485

/-- `A055845(n)-A001353(n)` -/
def P13411193735201751740.Spec : Prop :=
  ∀ n, P13411193735201751740.a n = A054485 n

end A054485

/-! ## A054485.P3968122123518710424

`A077234(n)-A001075(n)`
-/

namespace A054485.P3968122123518710424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077234 n - A001075 n

end

end A054485.P3968122123518710424

namespace A054485

/-- `A077234(n)-A001075(n)` -/
def P3968122123518710424.Spec : Prop :=
  ∀ n, P3968122123518710424.a n = A054485 n

end A054485

/-! ## A054485.P7346428041187092530

`A054491(n)-A106707(n)`
-/

namespace A054485.P7346428041187092530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054491 n - A106707 n

end

end A054485.P7346428041187092530

namespace A054485

/-- `A054491(n)-A106707(n)` -/
def P7346428041187092530.Spec : Prop :=
  ∀ n, P7346428041187092530.a n = A054485 n

end A054485

/-! ## A054485.P15110348623580539818

`Δ[A001835(n)+A001075(n)]`
-/

namespace A054485.P15110348623580539818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n + A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054485.P15110348623580539818

namespace A054485

/-- `Δ[A001835(n)+A001075(n)]` -/
def P15110348623580539818.Spec : Prop :=
  ∀ n, P15110348623580539818.a n = A054485 n

end A054485

/-! ## A054485.P458770190241078757

`A001834(n)+Δ[A001835(n)]`
-/

namespace A054485.P458770190241078757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + (f1 (n + 1) - f1 n)

end

end A054485.P458770190241078757

namespace A054485

/-- `A001834(n)+Δ[A001835(n)]` -/
def P458770190241078757.Spec : Prop :=
  ∀ n, P458770190241078757.a n = A054485 n

end A054485

/-! ## A054485.P14658236769995734662

`Δ[A092184(n)+A001835(n)]`
-/

namespace A054485.P14658236769995734662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054485.P14658236769995734662

namespace A054485

/-- `Δ[A092184(n)+A001835(n)]` -/
def P14658236769995734662.Spec : Prop :=
  ∀ n, P14658236769995734662.a n = A054485 n

end A054485

/-! ## A054485.P11812711340381925427

`A005320(n)+A001353(n+1)`
-/

namespace A054485.P11812711340381925427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n + A001353 (n + 1)

end

end A054485.P11812711340381925427

namespace A054485

/-- `A005320(n)+A001353(n+1)` -/
def P11812711340381925427.Spec : Prop :=
  ∀ n, P11812711340381925427.a n = A054485 n

end A054485

/-! ## A054485.P10676551022509665422

`A231896(n)+A001835(n+1)`
-/

namespace A054485.P10676551022509665422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n + A001835 (n + 1)

end

end A054485.P10676551022509665422

namespace A054485

/-- `A231896(n)+A001835(n+1)` -/
def P10676551022509665422.Spec : Prop :=
  ∀ n, P10676551022509665422.a n = A054485 n

end A054485

/-! ## A054485.P9625430049788946875

`A231896(n)+A079935(n+1)`
-/

namespace A054485.P9625430049788946875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n + A079935 (n + 1)

end

end A054485.P9625430049788946875

namespace A054485

/-- `A231896(n)+A079935(n+1)` -/
def P9625430049788946875.Spec : Prop :=
  ∀ n, P9625430049788946875.a n = A054485 n

end A054485

/-! ## A054485.P9212351743109360415

`A052530(n+1)-A001835(n)`
-/

namespace A054485.P9212351743109360415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 1) - A001835 n

end

end A054485.P9212351743109360415

namespace A054485

/-- `A052530(n+1)-A001835(n)` -/
def P9212351743109360415.Spec : Prop :=
  ∀ n, P9212351743109360415.a n = A054485 n

end A054485

/-! ## A054485.P8237221146074323539

`A005320(n)-A106707(n+1)`
-/

namespace A054485.P8237221146074323539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n - A106707 (n + 1)

end

end A054485.P8237221146074323539

namespace A054485

/-- `A005320(n)-A106707(n+1)` -/
def P8237221146074323539.Spec : Prop :=
  ∀ n, P8237221146074323539.a n = A054485 n

end A054485

/-!
# A054486: Expansion of (1+2*x)/(1-3*x+x^2).

The programs for A054486, the canonical program `A054486.P3700426217166027429` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054486 has offset 0).

The definition of A054486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-3x+x^2))` (program `A054486.P3700426217166027429`, by `A054486.P3700426217166027429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054486.P3700426217166027429

`ogf((1+2x)/(1-3x+x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054486

/-- `ogf((1+2x)/(1-3x+x^2))` -/
def P3700426217166027429.Spec : Prop :=
  ∀ n, P3700426217166027429.a n = A054486 n

theorem P3700426217166027429.correct : P3700426217166027429.Spec := by
  intro n
  simp only [A054486]

end A054486

/-! ## A054486.P14682827457220051629

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A054486.P14682827457220051629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) - a (n - 2)

end

end A054486.P14682827457220051629

namespace A054486

/-- `3*a(n-1)-a(n-2)` -/
def P14682827457220051629.Spec : Prop :=
  ∀ n, P14682827457220051629.a n = A054486 n

end A054486

/-! ## A054486.P3642728154601833329

`A000285(2*n)`
-/

namespace A054486.P3642728154601833329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (2 * n)

end

end A054486.P3642728154601833329

namespace A054486

/-- `A000285(2*n)` -/
def P3642728154601833329.Spec : Prop :=
  ∀ n, P3642728154601833329.a n = A054486 n

end A054486

/-! ## A054486.P781689456176528615

`A104449(2*n+1)`
-/

namespace A054486.P781689456176528615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (2 * n + 1)

end

end A054486.P781689456176528615

namespace A054486

/-- `A104449(2*n+1)` -/
def P781689456176528615.Spec : Prop :=
  ∀ n, P781689456176528615.a n = A054486 n

end A054486

/-! ## A054486.P12479019463994501997

`A228208(2*n+1)`
-/

namespace A054486.P12479019463994501997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (2 * n + 1)

end

end A054486.P12479019463994501997

namespace A054486

/-- `A228208(2*n+1)` -/
def P12479019463994501997.Spec : Prop :=
  ∀ n, P12479019463994501997.a n = A054486 n

end A054486

/-! ## A054486.P11152869239030719492

`A002878(n)+A001906(n)`
-/

namespace A054486.P11152869239030719492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + A001906 n

end

end A054486.P11152869239030719492

namespace A054486

/-- `A002878(n)+A001906(n)` -/
def P11152869239030719492.Spec : Prop :=
  ∀ n, P11152869239030719492.a n = A054486 n

end A054486

/-! ## A054486.P5313869004848981288

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A054486.P5313869004848981288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A054486.P5313869004848981288

namespace A054486

/-- `ceil(ϕ²*a(n-1))` -/
def P5313869004848981288.Spec : Prop :=
  ∀ n, P5313869004848981288.a n = A054486 n

end A054486

/-! ## A054486.P6105224797518821897

`ceil(a(n-1)/(2-ϕ))` with `a(0)=1, a(1)=5`
-/

namespace A054486.P6105224797518821897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A054486.P6105224797518821897

namespace A054486

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P6105224797518821897.Spec : Prop :=
  ∀ n, P6105224797518821897.a n = A054486 n

end A054486

/-! ## A054486.P2037025150100293188

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A054486.P2037025150100293188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A054486.P2037025150100293188

namespace A054486

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P2037025150100293188.Spec : Prop :=
  ∀ n, P2037025150100293188.a n = A054486 n

end A054486

/-! ## A054486.P4070453324366590104

`record[floor(-(ϕ*a(n-2)))]` with `a(0)=1, a(1)=5`
-/

namespace A054486.P4070453324366590104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  ⌊-(Real.goldenRatio * (f1 (n - 2) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054486.P4070453324366590104

namespace A054486

/-- `record[floor(-(ϕ*a(n-2)))]` -/
def P4070453324366590104.Spec : Prop :=
  ∀ n, P4070453324366590104.a n = A054486 n

end A054486

/-! ## A054486.P17668103262133803609

`lcm(3, a(n-1))-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A054486.P17668103262133803609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A054486.P17668103262133803609

namespace A054486

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P17668103262133803609.Spec : Prop :=
  ∀ n, P17668103262133803609.a n = A054486 n

end A054486

/-! ## A054486.P15839269671409724864

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A054486.P15839269671409724864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A054486.P15839269671409724864

namespace A054486

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P15839269671409724864.Spec : Prop :=
  ∀ n, P15839269671409724864.a n = A054486 n

end A054486

/-! ## A054486.P16067015088844150180

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A054486.P16067015088844150180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A054486.P16067015088844150180

namespace A054486

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P16067015088844150180.Spec : Prop :=
  ∀ n, P16067015088844150180.a n = A054486 n

end A054486

/-! ## A054486.P2780576784182790311

`A295717(2*n)`
-/

namespace A054486.P2780576784182790311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 (2 * n)

end

end A054486.P2780576784182790311

namespace A054486

/-- `A295717(2*n)` -/
def P2780576784182790311.Spec : Prop :=
  ∀ n, P2780576784182790311.a n = A054486 n

end A054486

/-! ## A054486.P9493132008188770220

`A022308(2*n)+1`
-/

namespace A054486.P9493132008188770220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (2 * n) + 1

end

end A054486.P9493132008188770220

namespace A054486

/-- `A022308(2*n)+1` -/
def P9493132008188770220.Spec : Prop :=
  ∀ n, P9493132008188770220.a n = A054486 n

end A054486

/-! ## A054486.P11556392192468208687

`∑[A104449(2*n)]-2`
-/

namespace A054486.P11556392192468208687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A054486.P11556392192468208687

namespace A054486

/-- `∑[A104449(2*n)]-2` -/
def P11556392192468208687.Spec : Prop :=
  ∀ n, P11556392192468208687.a n = A054486 n

end A054486

/-! ## A054486.P6734140861018234582

`A057427(n)+A031506(n)`
-/

namespace A054486.P6734140861018234582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A031506 n

end

end A054486.P6734140861018234582

namespace A054486

/-- `A057427(n)+A031506(n)` -/
def P6734140861018234582.Spec : Prop :=
  ∀ n, P6734140861018234582.a n = A054486 n

end A054486

/-! ## A054486.P16731827792332056939

`A097136(n)+A027941(n)`
-/

namespace A054486.P16731827792332056939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A027941 n

end

end A054486.P16731827792332056939

namespace A054486

/-- `A097136(n)+A027941(n)` -/
def P16731827792332056939.Spec : Prop :=
  ∀ n, P16731827792332056939.a n = A054486 n

end A054486

/-! ## A054486.P14947684002247213162

`A192920(n)+A192916(n)`
-/

namespace A054486.P14947684002247213162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192920 n + A192916 n

end

end A054486.P14947684002247213162

namespace A054486

/-- `A192920(n)+A192916(n)` -/
def P14947684002247213162.Spec : Prop :=
  ∀ n, P14947684002247213162.a n = A054486 n

end A054486

/-! ## A054486.P11464175122939173460

`A249450(n)+A162483(n)`
-/

namespace A054486.P11464175122939173460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 n + A162483 n

end

end A054486.P11464175122939173460

namespace A054486

/-- `A249450(n)+A162483(n)` -/
def P11464175122939173460.Spec : Prop :=
  ∀ n, P11464175122939173460.a n = A054486 n

end A054486

/-!
# A054487: a(n) = (3*n+4)*binomial(n+7, 7)/4.

The programs for A054487, the canonical program `A054487.P13476755437769856622` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054487 has offset 0).

The definition of A054487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054487.P8876070987395672767

`(3*n+4)*C(n+7, 7)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054487.P8876070987395672767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 4) * Nat.choose (n + 7) 7 : ℚ) / 4

end

end A054487.P8876070987395672767

namespace A054487

/-- `(3*n+4)*C(n+7, 7)/4` -/
def P8876070987395672767.Spec : Prop :=
  ∀ n, P8876070987395672767.a n = (A054487 n : ℚ)

end A054487

/-! ## A054487.P13476755437769856622

`6*C(n+8, 8)-5*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054487

/-- `6*C(n+8, 8)-5*C(n+7, 7)` -/
def P13476755437769856622.Spec : Prop :=
  ∀ n, P13476755437769856622.a n = A054487 n

theorem P13476755437769856622.correct : P13476755437769856622.Spec := by
  intro n
  simp only [A054487]

end A054487

/-! ## A054487.P6203030030400854445

`∑[∑[(n+1)*C(n+5, 5)]]`
-/

namespace A054487.P6203030030400854445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 5) 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054487.P6203030030400854445

namespace A054487

/-- `∑[∑[(n+1)*C(n+5, 5)]]` -/
def P6203030030400854445.Spec : Prop :=
  ∀ n, (P6203030030400854445.a n : ℤ) = A054487 n

end A054487

/-! ## A054487.P16214191902369996867

`∑[∑[(n+1)*∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A054487.P16214191902369996867
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054487.P16214191902369996867

namespace A054487

/-- `∑[∑[(n+1)*∑[∑[∑[∑[n+1]]]]]]` -/
def P16214191902369996867.Spec : Prop :=
  ∀ n, (P16214191902369996867.a n : ℤ) = A054487 n

end A054487

/-! ## A054487.P17261639437125020026

`A034265(n)+a(n-1)` with `a(0)=1`
-/

namespace A054487.P17261639437125020026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034265 n + a (n - 1)

end

end A054487.P17261639437125020026

namespace A054487

/-- `A034265(n)+a(n-1)` -/
def P17261639437125020026.Spec : Prop :=
  ∀ n, P17261639437125020026.a n = A054487 n

end A054487

/-! ## A054487.P3013297324857618093

`(n+1-n/4)*A000580(n+7)`
-/

namespace A054487.P3013297324857618093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) - (n : ℚ) / 4) * (A000580 (n + 7) : ℚ)

end

end A054487.P3013297324857618093

namespace A054487

/-- `(n+1-n/4)*A000580(n+7)` -/
def P3013297324857618093.Spec : Prop :=
  ∀ n, P3013297324857618093.a n = (A054487 n : ℚ)

end A054487

/-! ## A054487.P17445405634285920752

`gcd(∑[A034265(n)], A000038(n))`
-/

namespace A054487.P17445405634285920752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A054487.P17445405634285920752

namespace A054487

/-- `gcd(∑[A034265(n)], A000038(n))` -/
def P17445405634285920752.Spec : Prop :=
  ∀ n, (P17445405634285920752.a n : ℤ) = A054487 n

end A054487

/-! ## A054487.P11133860846625618424

`A112460(n+4)-A095664(n)`
-/

namespace A054487.P11133860846625618424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112460 (n + 4) - A095664 n

end

end A054487.P11133860846625618424

namespace A054487

/-- `A112460(n+4)-A095664(n)` -/
def P11133860846625618424.Spec : Prop :=
  ∀ n, P11133860846625618424.a n = A054487 n

end A054487

/-! ## A054487.P2131235341122957223

`A027767(n+6)-2*A095664(n)`
-/

namespace A054487.P2131235341122957223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027767 (n + 6) - 2 * A095664 n

end

end A054487.P2131235341122957223

namespace A054487

/-- `A027767(n+6)-2*A095664(n)` -/
def P2131235341122957223.Spec : Prop :=
  ∀ n, P2131235341122957223.a n = A054487 n

end A054487

/-! ## A054487.P8010955847710574529

`2*A112460(n+4)-A027767(n+6)`
-/

namespace A054487.P8010955847710574529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112460 (n + 4) - A027767 (n + 6)

end

end A054487.P8010955847710574529

namespace A054487

/-- `2*A112460(n+4)-A027767(n+6)` -/
def P8010955847710574529.Spec : Prop :=
  ∀ n, P8010955847710574529.a n = A054487 n

end A054487

/-! ## A054487.P17487482790932814225

`A034266(n+1)+A034266(n+1)-A056001(n)`
-/

namespace A054487.P17487482790932814225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034266 (n + 1) + (A034266 (n + 1) - A056001 n)

end

end A054487.P17487482790932814225

namespace A054487

/-- `A034266(n+1)+A034266(n+1)-A056001(n)` -/
def P17487482790932814225.Spec : Prop :=
  ∀ n, P17487482790932814225.a n = A054487 n

end A054487

/-! ## A054487.P704478176206979438

`A055848(n+1)-(A055848(n)+A034265(n+1))`
-/

namespace A054487.P704478176206979438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055848 (n + 1) - (A055848 n + A034265 (n + 1))

end

end A054487.P704478176206979438

namespace A054487

/-- `A055848(n+1)-(A055848(n)+A034265(n+1))` -/
def P704478176206979438.Spec : Prop :=
  ∀ n, P704478176206979438.a n = A054487 n

end A054487

/-!
# A054488: Expansion of (1+2*x)/(1-6*x+x^2).

The programs for A054488, the canonical program `A054488.P18292712458476479814` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054488 has offset 0).

The definition of A054488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-6x+x^2))` (program `A054488.P18292712458476479814`, by `A054488.P18292712458476479814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054488.P18292712458476479814

`ogf((1+2x)/(1-6x+x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054488

/-- `ogf((1+2x)/(1-6x+x^2))` -/
def P18292712458476479814.Spec : Prop :=
  ∀ n, P18292712458476479814.a n = A054488 n

theorem P18292712458476479814.correct : P18292712458476479814.Spec := by
  intro n
  simp only [A054488]

end A054488

/-! ## A054488.P15997964998563544124

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A054488.P15997964998563544124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A054488.P15997964998563544124

namespace A054488

/-- `6*a(n-1)-a(n-2)` -/
def P15997964998563544124.Spec : Prop :=
  ∀ n, P15997964998563544124.a n = A054488 n

end A054488

/-! ## A054488.P2195402104235647808

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=1, a(1)=8`
-/

namespace A054488.P2195402104235647808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A054488.P2195402104235647808

namespace A054488

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P2195402104235647808.Spec : Prop :=
  ∀ n, P2195402104235647808.a n = A054488 n

end A054488

/-! ## A054488.P9273550115255407019

`A077241(2*n)`
-/

namespace A054488.P9273550115255407019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 (2 * n)

end

end A054488.P9273550115255407019

namespace A054488

/-- `A077241(2*n)` -/
def P9273550115255407019.Spec : Prop :=
  ∀ n, P9273550115255407019.a n = A054488 n

end A054488

/-! ## A054488.P5553991999912901899

`A144797(Δ[n²])/2`
-/

namespace A054488.P5553991999912901899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144797 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A054488.P5553991999912901899

namespace A054488

/-- `A144797(Δ[n²])/2` -/
def P5553991999912901899.Spec : Prop :=
  ∀ n, P5553991999912901899.a n = (A054488 n : ℚ)

end A054488

/-! ## A054488.P7892583733038247698

`floor(A144797(2*n+1)/2)`
-/

namespace A054488.P7892583733038247698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144797 (2 * n + 1) : ℚ) / 2⌋

end

end A054488.P7892583733038247698

namespace A054488

/-- `floor(A144797(2*n+1)/2)` -/
def P7892583733038247698.Spec : Prop :=
  ∀ n, P7892583733038247698.a n = A054488 n

end A054488

/-! ## A054488.P14611450309106059968

`A002315(n)+A001109(n)`
-/

namespace A054488.P14611450309106059968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + A001109 n

end

end A054488.P14611450309106059968

namespace A054488

/-- `A002315(n)+A001109(n)` -/
def P14611450309106059968.Spec : Prop :=
  ∀ n, P14611450309106059968.a n = A054488 n

end A054488

/-! ## A054488.P14078713912685707650

`A038761(n)-A001109(n)`
-/

namespace A054488.P14078713912685707650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n - A001109 n

end

end A054488.P14078713912685707650

namespace A054488

/-- `A038761(n)-A001109(n)` -/
def P14078713912685707650.Spec : Prop :=
  ∀ n, P14078713912685707650.a n = A054488 n

end A054488

/-! ## A054488.P11027029728956574317

`A054489(n)-A001542(n)`
-/

namespace A054488.P11027029728956574317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n - A001542 n

end

end A054488.P11027029728956574317

namespace A054488

/-- `A054489(n)-A001542(n)` -/
def P11027029728956574317.Spec : Prop :=
  ∀ n, P11027029728956574317.a n = A054488 n

end A054488

/-! ## A054488.P11647866466375951077

`A275794(n)-A002315(n)`
-/

namespace A054488.P11647866466375951077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n - A002315 n

end

end A054488.P11647866466375951077

namespace A054488

/-- `A275794(n)-A002315(n)` -/
def P11647866466375951077.Spec : Prop :=
  ∀ n, P11647866466375951077.a n = A054488 n

end A054488

/-! ## A054488.P5065672692848171763

`A301383(n)-A053141(n)`
-/

namespace A054488.P5065672692848171763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301383 n - A053141 n

end

end A054488.P5065672692848171763

namespace A054488

/-- `A301383(n)-A053141(n)` -/
def P5065672692848171763.Spec : Prop :=
  ∀ n, P5065672692848171763.a n = A054488 n

end A054488

/-! ## A054488.P3185966589126603155

`A001109(n)+Δ[A001108(n)]`
-/

namespace A054488.P3185966589126603155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + (f1 (n + 1) - f1 n)

end

end A054488.P3185966589126603155

namespace A054488

/-- `A001109(n)+Δ[A001108(n)]` -/
def P3185966589126603155.Spec : Prop :=
  ∀ n, P3185966589126603155.a n = A054488 n

end A054488

/-! ## A054488.P4821783611182812222

`Δ[A011900(n)]-A038723(n)`
-/

namespace A054488.P4821783611182812222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038723 n

end

end A054488.P4821783611182812222

namespace A054488

/-- `Δ[A011900(n)]-A038723(n)` -/
def P4821783611182812222.Spec : Prop :=
  ∀ n, P4821783611182812222.a n = A054488 n

end A054488

/-! ## A054488.P13354963826829008089

`Δ[A001541(n)-A053142(n)]`
-/

namespace A054488.P13354963826829008089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n - A053142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054488.P13354963826829008089

namespace A054488

/-- `Δ[A001541(n)-A053142(n)]` -/
def P13354963826829008089.Spec : Prop :=
  ∀ n, P13354963826829008089.a n = A054488 n

end A054488

/-! ## A054488.P10449673121798995576

`A077413(n)-Δ[A001109(n)]`
-/

namespace A054488.P10449673121798995576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n - (f1 (n + 1) - f1 n)

end

end A054488.P10449673121798995576

namespace A054488

/-- `A077413(n)-Δ[A001109(n)]` -/
def P10449673121798995576.Spec : Prop :=
  ∀ n, P10449673121798995576.a n = A054488 n

end A054488

/-! ## A054488.P8193057915186701788

`Δ[A053141(n)]-A038723(n)`
-/

namespace A054488.P8193057915186701788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038723 n

end

end A054488.P8193057915186701788

namespace A054488

/-- `Δ[A053141(n)]-A038723(n)` -/
def P8193057915186701788.Spec : Prop :=
  ∀ n, P8193057915186701788.a n = A054488 n

end A054488

/-! ## A054488.P18256346418039071681

`A001542(n)+A001109(n+1)`
-/

namespace A054488.P18256346418039071681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n + A001109 (n + 1)

end

end A054488.P18256346418039071681

namespace A054488

/-- `A001542(n)+A001109(n+1)` -/
def P18256346418039071681.Spec : Prop :=
  ∀ n, P18256346418039071681.a n = A054488 n

end A054488

/-! ## A054488.P885416355277286984

`A001542(n+1)-A038723(n)`
-/

namespace A054488.P885416355277286984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) - A038723 n

end

end A054488.P885416355277286984

namespace A054488

/-- `A001542(n+1)-A038723(n)` -/
def P885416355277286984.Spec : Prop :=
  ∀ n, P885416355277286984.a n = A054488 n

end A054488

/-! ## A054488.P1629725970462450224

`A038725(n+1)-A001541(n)`
-/

namespace A054488.P1629725970462450224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038725 (n + 1) - A001541 n

end

end A054488.P1629725970462450224

namespace A054488

/-- `A038725(n+1)-A001541(n)` -/
def P1629725970462450224.Spec : Prop :=
  ∀ n, P1629725970462450224.a n = A054488 n

end A054488

/-! ## A054488.P1170915805886586764

`A077413(n)-A001653(n+1)`
-/

namespace A054488.P1170915805886586764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n - A001653 (n + 1)

end

end A054488.P1170915805886586764

namespace A054488

/-- `A077413(n)-A001653(n+1)` -/
def P1170915805886586764.Spec : Prop :=
  ∀ n, P1170915805886586764.a n = A054488 n

end A054488

/-!
# A054489: Expansion of (1+4*x)/(1-6*x+x^2).

The programs for A054489, the canonical program `A054489.P2303737746325980003` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054489 has offset 0).

The definition of A054489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-6x+x^2))` (program `A054489.P2303737746325980003`, by `A054489.P2303737746325980003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054489.P2303737746325980003

`ogf((1+4x)/(1-6x+x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054489

/-- `ogf((1+4x)/(1-6x+x^2))` -/
def P2303737746325980003.Spec : Prop :=
  ∀ n, P2303737746325980003.a n = A054489 n

theorem P2303737746325980003.correct : P2303737746325980003.Spec := by
  intro n
  simp only [A054489]

end A054489

/-! ## A054489.P3614456776709999842

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A054489.P3614456776709999842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A054489.P3614456776709999842

namespace A054489

/-- `6*a(n-1)-a(n-2)` -/
def P3614456776709999842.Spec : Prop :=
  ∀ n, P3614456776709999842.a n = A054489 n

end A054489

/-! ## A054489.P10641239763041534901

`A276599(Δ[n²])`
-/

namespace A054489.P10641239763041534901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054489.P10641239763041534901

namespace A054489

/-- `A276599(Δ[n²])` -/
def P10641239763041534901.Spec : Prop :=
  ∀ n, P10641239763041534901.a n = A054489 n

end A054489

/-! ## A054489.P10046468331923312340

`A038761(n)+A001109(n)`
-/

namespace A054489.P10046468331923312340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n + A001109 n

end

end A054489.P10046468331923312340

namespace A054489

/-- `A038761(n)+A001109(n)` -/
def P10046468331923312340.Spec : Prop :=
  ∀ n, P10046468331923312340.a n = A054489 n

end A054489

/-! ## A054489.P7990796574020575897

`A054488(n)+A001542(n)`
-/

namespace A054489.P7990796574020575897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + A001542 n

end

end A054489.P7990796574020575897

namespace A054489

/-- `A054488(n)+A001542(n)` -/
def P7990796574020575897.Spec : Prop :=
  ∀ n, P7990796574020575897.a n = A054489 n

end A054489

/-! ## A054489.P7093559070183511790

`A054490(n)-A001109(n)`
-/

namespace A054489.P7093559070183511790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n - A001109 n

end

end A054489.P7093559070183511790

namespace A054489

/-- `A054490(n)-A001109(n)` -/
def P7093559070183511790.Spec : Prop :=
  ∀ n, P7093559070183511790.a n = A054489 n

end A054489

/-! ## A054489.P14996939179005368649

`A077413(n)-A001541(n)`
-/

namespace A054489.P14996939179005368649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n - A001541 n

end

end A054489.P14996939179005368649

namespace A054489

/-- `A077413(n)-A001541(n)` -/
def P14996939179005368649.Spec : Prop :=
  ∀ n, P14996939179005368649.a n = A054489 n

end A054489

/-! ## A054489.P3257044116034817062

`Δ[A001541(n)]-A038723(n)`
-/

namespace A054489.P3257044116034817062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038723 n

end

end A054489.P3257044116034817062

namespace A054489

/-- `Δ[A001541(n)]-A038723(n)` -/
def P3257044116034817062.Spec : Prop :=
  ∀ n, P3257044116034817062.a n = A054489 n

end A054489

/-! ## A054489.P5012527538724516559

`A275794(n)-Δ[A001109(n)]`
-/

namespace A054489.P5012527538724516559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n - (f1 (n + 1) - f1 n)

end

end A054489.P5012527538724516559

namespace A054489

/-- `A275794(n)-Δ[A001109(n)]` -/
def P5012527538724516559.Spec : Prop :=
  ∀ n, P5012527538724516559.a n = A054489 n

end A054489

/-! ## A054489.P12559687297009467235

`A005319(n)+A001109(n+1)`
-/

namespace A054489.P12559687297009467235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n + A001109 (n + 1)

end

end A054489.P12559687297009467235

namespace A054489

/-- `A005319(n)+A001109(n+1)` -/
def P12559687297009467235.Spec : Prop :=
  ∀ n, P12559687297009467235.a n = A054489 n

end A054489

/-! ## A054489.P9841870553280983006

`A106328(n+1)+A002315(n)`
-/

namespace A054489.P9841870553280983006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (n + 1) + A002315 n

end

end A054489.P9841870553280983006

namespace A054489

/-- `A106328(n+1)+A002315(n)` -/
def P9841870553280983006.Spec : Prop :=
  ∀ n, P9841870553280983006.a n = A054489 n

end A054489

/-! ## A054489.P2749058002038159678

`A001542(n+1)-A038725(n)`
-/

namespace A054489.P2749058002038159678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 1) - A038725 n

end

end A054489.P2749058002038159678

namespace A054489

/-- `A001542(n+1)-A038725(n)` -/
def P2749058002038159678.Spec : Prop :=
  ∀ n, P2749058002038159678.a n = A054489 n

end A054489

/-! ## A054489.P14631728377229823480

`A053141(n+1)-A072221(n)`
-/

namespace A054489.P14631728377229823480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (n + 1) - A072221 n

end

end A054489.P14631728377229823480

namespace A054489

/-- `A053141(n+1)-A072221(n)` -/
def P14631728377229823480.Spec : Prop :=
  ∀ n, P14631728377229823480.a n = A054489 n

end A054489

/-! ## A054489.P3116900816875827784

`A275794(n)-A001653(n+1)`
-/

namespace A054489.P3116900816875827784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n - A001653 (n + 1)

end

end A054489.P3116900816875827784

namespace A054489

/-- `A275794(n)-A001653(n+1)` -/
def P3116900816875827784.Spec : Prop :=
  ∀ n, P3116900816875827784.a n = A054489 n

end A054489

/-! ## A054489.P5083860569496121249

`A048654(2*n)+A001109(n)`
-/

namespace A054489.P5083860569496121249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (2 * n) + A001109 n

end

end A054489.P5083860569496121249

namespace A054489

/-- `A048654(2*n)+A001109(n)` -/
def P5083860569496121249.Spec : Prop :=
  ∀ n, P5083860569496121249.a n = A054489 n

end A054489

/-! ## A054489.P13563050545808687963

`A054488(n)+A000129(2*n)`
-/

namespace A054489.P13563050545808687963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + A000129 (2 * n)

end

end A054489.P13563050545808687963

namespace A054489

/-- `A054488(n)+A000129(2*n)` -/
def P13563050545808687963.Spec : Prop :=
  ∀ n, P13563050545808687963.a n = A054489 n

end A054489

/-! ## A054489.P18252783060585497386

`A054488(n)+2*A001109(n)`
-/

namespace A054489.P18252783060585497386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + 2 * A001109 n

end

end A054489.P18252783060585497386

namespace A054489

/-- `A054488(n)+2*A001109(n)` -/
def P18252783060585497386.Spec : Prop :=
  ∀ n, P18252783060585497386.a n = A054489 n

end A054489

/-! ## A054489.P3569244173387730850

`A077442(2*n)+A001109(n)`
-/

namespace A054489.P3569244173387730850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (2 * n) + A001109 n

end

end A054489.P3569244173387730850

namespace A054489

/-- `A077442(2*n)+A001109(n)` -/
def P3569244173387730850.Spec : Prop :=
  ∀ n, P3569244173387730850.a n = A054489 n

end A054489

/-! ## A054489.P11843553126757121629

`A038761(n)+A001542(n)/2`
-/

namespace A054489.P11843553126757121629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038761 n : ℚ) + (A001542 n : ℚ) / 2

end

end A054489.P11843553126757121629

namespace A054489

/-- `A038761(n)+A001542(n)/2` -/
def P11843553126757121629.Spec : Prop :=
  ∀ n, P11843553126757121629.a n = (A054489 n : ℚ)

end A054489

/-! ## A054489.P16744225206990628104

`2*A002315(n)-A038723(n)`
-/

namespace A054489.P16744225206990628104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n - A038723 n

end

end A054489.P16744225206990628104

namespace A054489

/-- `2*A002315(n)-A038723(n)` -/
def P16744225206990628104.Spec : Prop :=
  ∀ n, P16744225206990628104.a n = A054489 n

end A054489

/-!
# A054490: Expansion of (1+5*x)/(1-6*x+x^2).

The programs for A054490, the canonical program `A054490.P9234763241834996385` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054490 has offset 0).

The definition of A054490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x)/(1-6x+x^2))` (program `A054490.P9234763241834996385`, by `A054490.P9234763241834996385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054490.P9234763241834996385

`ogf((1+5x)/(1-6x+x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054490

/-- `ogf((1+5x)/(1-6x+x^2))` -/
def P9234763241834996385.Spec : Prop :=
  ∀ n, P9234763241834996385.a n = A054490 n

theorem P9234763241834996385.correct : P9234763241834996385.Spec := by
  intro n
  simp only [A054490]

end A054490

/-! ## A054490.P5334455263134153178

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A054490.P5334455263134153178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A054490.P5334455263134153178

namespace A054490

/-- `6*a(n-1)-a(n-2)` -/
def P5334455263134153178.Spec : Prop :=
  ∀ n, P5334455263134153178.a n = A054490 n

end A054490

/-! ## A054490.P578646788736663791

`sqrt(8*A038723(n)²-7)`
-/

namespace A054490.P578646788736663791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (8 * A038723 n ^ 2 - 7 : ℝ)

end

end A054490.P578646788736663791

namespace A054490

/-- `sqrt(8*A038723(n)²-7)` -/
def P578646788736663791.Spec : Prop :=
  ∀ n, P578646788736663791.a n = (A054490 n : ℝ)

end A054490

/-! ## A054490.P8659561457572293421

`lcm(6, a(n-1))-a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A054490.P8659561457572293421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  (Int.lcm 6 (a (n - 1)) : ℤ) - a (n - 2)

end

end A054490.P8659561457572293421

namespace A054490

/-- `lcm(6, a(n-1))-a(n-2)` -/
def P8659561457572293421.Spec : Prop :=
  ∀ n, P8659561457572293421.a n = A054490 n

end A054490

/-! ## A054490.P15005795815301260976

`or(1, floor(a(n-1)/(3-sqrt(8))))` with `a(0)=1, a(1)=11`
-/

namespace A054490.P15005795815301260976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  Int.lor 1 ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A054490.P15005795815301260976

namespace A054490

/-- `or(1, floor(a(n-1)/(3-sqrt(8))))` -/
def P15005795815301260976.Spec : Prop :=
  ∀ n, P15005795815301260976.a n = A054490 n

end A054490

/-! ## A054490.P12463719230562221346

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=-3, a(2)=1`
-/

namespace A054490.P12463719230562221346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054490.P12463719230562221346

namespace A054490

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P12463719230562221346.Spec : Prop :=
  ∀ n, P12463719230562221346.a n = A054490 n

end A054490

/-! ## A054490.P11200601289379131519

`Δ[A210695(n)]`
-/

namespace A054490.P11200601289379131519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054490.P11200601289379131519

namespace A054490

/-- `Δ[A210695(n)]` -/
def P11200601289379131519.Spec : Prop :=
  ∀ n, P11200601289379131519.a n = A054490 n

end A054490

/-! ## A054490.P13501634762524399464

`A048655(2*n)`
-/

namespace A054490.P13501634762524399464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (2 * n)

end

end A054490.P13501634762524399464

namespace A054490

/-- `A048655(2*n)` -/
def P13501634762524399464.Spec : Prop :=
  ∀ n, P13501634762524399464.a n = A054490 n

end A054490

/-! ## A054490.P15649784374827166887

`A135246(4*n)`
-/

namespace A054490.P15649784374827166887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135246 (4 * n)

end

end A054490.P15649784374827166887

namespace A054490

/-- `A135246(4*n)` -/
def P15649784374827166887.Spec : Prop :=
  ∀ n, P15649784374827166887.a n = A054490 n

end A054490

/-! ## A054490.P6670529955710727319

`A077446(Δ[n²])`
-/

namespace A054490.P6670529955710727319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054490.P6670529955710727319

namespace A054490

/-- `A077446(Δ[n²])` -/
def P6670529955710727319.Spec : Prop :=
  ∀ n, P6670529955710727319.a n = A054490 n

end A054490

/-! ## A054490.P1070464614593817865

`record[Δ[A041010(n)]]`
-/

namespace A054490.P1070464614593817865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054490.P1070464614593817865

namespace A054490

/-- `record[Δ[A041010(n)]]` -/
def P1070464614593817865.Spec : Prop :=
  ∀ n, P1070464614593817865.a n = A054490 n

end A054490

/-! ## A054490.P16707559311675883558

`A266505(4*n+1)`
-/

namespace A054490.P16707559311675883558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (4 * n + 1)

end

end A054490.P16707559311675883558

namespace A054490

/-- `A266505(4*n+1)` -/
def P16707559311675883558.Spec : Prop :=
  ∀ n, P16707559311675883558.a n = A054490 n

end A054490

/-! ## A054490.P14420676206057264916

`A266506(8*n+3)`
-/

namespace A054490.P14420676206057264916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (8 * n + 3)

end

end A054490.P14420676206057264916

namespace A054490

/-- `A266506(8*n+3)` -/
def P14420676206057264916.Spec : Prop :=
  ∀ n, P14420676206057264916.a n = A054490 n

end A054490

/-! ## A054490.P16310409094073258519

`2*A006451(2*n)+1`
-/

namespace A054490.P16310409094073258519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006451 (2 * n) + 1

end

end A054490.P16310409094073258519

namespace A054490

/-- `2*A006451(2*n)+1` -/
def P16310409094073258519.Spec : Prop :=
  ∀ n, P16310409094073258519.a n = A054490 n

end A054490

/-! ## A054490.P8098213437507315071

`A005319(n)+A002315(n)`
-/

namespace A054490.P8098213437507315071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n + A002315 n

end

end A054490.P8098213437507315071

namespace A054490

/-- `A005319(n)+A002315(n)` -/
def P8098213437507315071.Spec : Prop :=
  ∀ n, P8098213437507315071.a n = A054490 n

end A054490

/-! ## A054490.P12450017277413512758

`A038761(n)+A001542(n)`
-/

namespace A054490.P12450017277413512758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n + A001542 n

end

end A054490.P12450017277413512758

namespace A054490

/-- `A038761(n)+A001542(n)` -/
def P12450017277413512758.Spec : Prop :=
  ∀ n, P12450017277413512758.a n = A054490 n

end A054490

/-! ## A054490.P17245004837714719510

`A054489(n)+A001109(n)`
-/

namespace A054490.P17245004837714719510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054489 n + A001109 n

end

end A054490.P17245004837714719510

namespace A054490

/-- `A054489(n)+A001109(n)` -/
def P17245004837714719510.Spec : Prop :=
  ∀ n, P17245004837714719510.a n = A054490 n

end A054490

/-! ## A054490.P17535371984317993691

`A081554(n)+A001541(n)`
-/

namespace A054490.P17535371984317993691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 n + A001541 n

end

end A054490.P17535371984317993691

namespace A054490

/-- `A081554(n)+A001541(n)` -/
def P17535371984317993691.Spec : Prop :=
  ∀ n, P17535371984317993691.a n = A054490 n

end A054490

/-! ## A054490.P13820395715929558241

`A301383(n)+A182435(n)`
-/

namespace A054490.P13820395715929558241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301383 n + A182435 n

end

end A054490.P13820395715929558241

namespace A054490

/-- `A301383(n)+A182435(n)` -/
def P13820395715929558241.Spec : Prop :=
  ∀ n, P13820395715929558241.a n = A054490 n

end A054490

/-! ## A054490.P7231316204500677999

`A005319(n)+Δ[A001108(n)]`
-/

namespace A054490.P7231316204500677999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n + (f1 (n + 1) - f1 n)

end

end A054490.P7231316204500677999

namespace A054490

/-- `A005319(n)+Δ[A001108(n)]` -/
def P7231316204500677999.Spec : Prop :=
  ∀ n, P7231316204500677999.a n = A054490 n

end A054490

/-!
# A054491: a(n) = 4*a(n-1) - a(n-2), a(0)=1, a(1)=6.

The programs for A054491, the canonical program `A054491.P5284808898361570194` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054491 has offset 0).

The definition of A054491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A054491.P5284808898361570194`, by `A054491.P5284808898361570194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054491.P5284808898361570194

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054491

/-- `4*a(n-1)-a(n-2)` -/
def P5284808898361570194.Spec : Prop :=
  ∀ n, P5284808898361570194.a n = A054491 n

theorem P5284808898361570194.correct : P5284808898361570194.Spec := by
  intro n
  simp only [A054491]

end A054491

/-! ## A054491.P33148877761647409

`ogf((1+2x)/(1-4x+x^2))`
-/

namespace A054491.P33148877761647409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, 1] n

end

end A054491.P33148877761647409

namespace A054491

/-- `ogf((1+2x)/(1-4x+x^2))` -/
def P33148877761647409.Spec : Prop :=
  ∀ n, P33148877761647409.a n = A054491 n

end A054491

/-! ## A054491.P1373496355281061070

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A054491.P1373496355281061070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A054491.P1373496355281061070

namespace A054491

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P1373496355281061070.Spec : Prop :=
  ∀ n, P1373496355281061070.a n = A054491 n

end A054491

/-! ## A054491.P6891465522157773092

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A054491.P6891465522157773092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A054491.P6891465522157773092

namespace A054491

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P6891465522157773092.Spec : Prop :=
  ∀ n, P6891465522157773092.a n = (A054491 n : ℚ)

end A054491

/-! ## A054491.P7097620820079977500

`A077237(2*n)`
-/

namespace A054491.P7097620820079977500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077237 (2 * n)

end

end A054491.P7097620820079977500

namespace A054491

/-- `A077237(2*n)` -/
def P7097620820079977500.Spec : Prop :=
  ∀ n, P7097620820079977500.a n = A054491 n

end A054491

/-! ## A054491.P2718689676643917329

`Δ[A107401(Δ[n²])]`
-/

namespace A054491.P2718689676643917329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054491.P2718689676643917329

namespace A054491

/-- `Δ[A107401(Δ[n²])]` -/
def P2718689676643917329.Spec : Prop :=
  ∀ n, P2718689676643917329.a n = A054491 n

end A054491

/-! ## A054491.P2769342875345705398

`A001353(n)+∑[ceil((sqrt(3)+2)^n)]`
-/

namespace A054491.P2769342875345705398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054491.P2769342875345705398

namespace A054491

/-- `A001353(n)+∑[ceil((sqrt(3)+2)^n)]` -/
def P2769342875345705398.Spec : Prop :=
  ∀ n, P2769342875345705398.a n = A054491 n

end A054491

/-! ## A054491.P9884821048135424429

`A001834(n)+A001353(n)`
-/

namespace A054491.P9884821048135424429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + A001353 n

end

end A054491.P9884821048135424429

namespace A054491

/-- `A001834(n)+A001353(n)` -/
def P9884821048135424429.Spec : Prop :=
  ∀ n, P9884821048135424429.a n = A054491 n

end A054491

/-! ## A054491.P10713850948202060091

`A106707(n)+A054485(n)`
-/

namespace A054491.P10713850948202060091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + A054485 n

end

end A054491.P10713850948202060091

namespace A054491

/-- `A106707(n)+A054485(n)` -/
def P10713850948202060091.Spec : Prop :=
  ∀ n, P10713850948202060091.a n = A054491 n

end A054491

/-! ## A054491.P6148465133490458813

`A231896(n)+A001075(n)`
-/

namespace A054491.P6148465133490458813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n + A001075 n

end

end A054491.P6148465133490458813

namespace A054491

/-- `A231896(n)+A001075(n)` -/
def P6148465133490458813.Spec : Prop :=
  ∀ n, P6148465133490458813.a n = A054491 n

end A054491

/-! ## A054491.P17534443579052952958

`A054485(n)-A001353(n)`
-/

namespace A054491.P17534443579052952958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054485 n - A001353 n

end

end A054491.P17534443579052952958

namespace A054491

/-- `A054485(n)-A001353(n)` -/
def P17534443579052952958.Spec : Prop :=
  ∀ n, P17534443579052952958.a n = A054491 n

end A054491

/-! ## A054491.P9606621348806526669

`A055845(n)-A052530(n)`
-/

namespace A054491.P9606621348806526669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055845 n - A052530 n

end

end A054491.P9606621348806526669

namespace A054491

/-- `A055845(n)-A052530(n)` -/
def P9606621348806526669.Spec : Prop :=
  ∀ n, P9606621348806526669.a n = A054491 n

end A054491

/-! ## A054491.P10993105665900043671

`A001834(n)-A106707(n)`
-/

namespace A054491.P10993105665900043671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n - A106707 n

end

end A054491.P10993105665900043671

namespace A054491

/-- `A001834(n)-A106707(n)` -/
def P10993105665900043671.Spec : Prop :=
  ∀ n, P10993105665900043671.a n = A054491 n

end A054491

/-! ## A054491.P2842562915071798572

`A082841(n)-A144720(n)`
-/

namespace A054491.P2842562915071798572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n - A144720 n

end

end A054491.P2842562915071798572

namespace A054491

/-- `A082841(n)-A144720(n)` -/
def P2842562915071798572.Spec : Prop :=
  ∀ n, P2842562915071798572.a n = A054491 n

end A054491

/-! ## A054491.P17792193341315971024

`Δ[A001571(n)]-A001835(n)`
-/

namespace A054491.P17792193341315971024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001835 n

end

end A054491.P17792193341315971024

namespace A054491

/-- `Δ[A001571(n)]-A001835(n)` -/
def P17792193341315971024.Spec : Prop :=
  ∀ n, P17792193341315971024.a n = A054491 n

end A054491

/-! ## A054491.P12570579868033057427

`Δ[A102871(n)]-A001835(n)`
-/

namespace A054491.P12570579868033057427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001835 n

end

end A054491.P12570579868033057427

namespace A054491

/-- `Δ[A102871(n)]-A001835(n)` -/
def P12570579868033057427.Spec : Prop :=
  ∀ n, P12570579868033057427.a n = A054491 n

end A054491

/-! ## A054491.P14892414414656823640

`A005320(n)+A001835(n+1)`
-/

namespace A054491.P14892414414656823640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 n + A001835 (n + 1)

end

end A054491.P14892414414656823640

namespace A054491

/-- `A005320(n)+A001835(n+1)` -/
def P14892414414656823640.Spec : Prop :=
  ∀ n, P14892414414656823640.a n = A054491 n

end A054491

/-! ## A054491.P1320500390000397735

`A052530(n)+A001353(n+1)`
-/

namespace A054491.P1320500390000397735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n + A001353 (n + 1)

end

end A054491.P1320500390000397735

namespace A054491

/-- `A052530(n)+A001353(n+1)` -/
def P1320500390000397735.Spec : Prop :=
  ∀ n, P1320500390000397735.a n = A054491 n

end A054491

/-! ## A054491.P17806423680077703167

`A079935(n+1)+A005320(n)`
-/

namespace A054491.P17806423680077703167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1) + A005320 n

end

end A054491.P17806423680077703167

namespace A054491

/-- `A079935(n+1)+A005320(n)` -/
def P17806423680077703167.Spec : Prop :=
  ∀ n, P17806423680077703167.a n = A054491 n

end A054491

/-! ## A054491.P16129270977392532720

`A001075(n+1)-A001835(n)`
-/

namespace A054491.P16129270977392532720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 1) - A001835 n

end

end A054491.P16129270977392532720

namespace A054491

/-- `A001075(n+1)-A001835(n)` -/
def P16129270977392532720.Spec : Prop :=
  ∀ n, P16129270977392532720.a n = A054491 n

end A054491

/-!
# A054492: a(n) = 3*a(n-1) - a(n-2), a(0)=1, a(1)=6.

The programs for A054492, the canonical program `A054492.P1600116613554382852` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054492 has offset 0).

The definition of A054492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A054492.P1600116613554382852`, by `A054492.P1600116613554382852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054492.P1600116613554382852

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054492

/-- `3*a(n-1)-a(n-2)` -/
def P1600116613554382852.Spec : Prop :=
  ∀ n, P1600116613554382852.a n = A054492 n

theorem P1600116613554382852.correct : P1600116613554382852.Spec := by
  intro n
  simp only [A054492]

end A054492

/-! ## A054492.P9818795684079676011

`ogf((1+3x)/(1-3x+x^2))`
-/

namespace A054492.P9818795684079676011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, 1] n

end

end A054492.P9818795684079676011

namespace A054492

/-- `ogf((1+3x)/(1-3x+x^2))` -/
def P9818795684079676011.Spec : Prop :=
  ∀ n, P9818795684079676011.a n = A054492 n

end A054492

/-! ## A054492.P8178630828874097976

`record[Δ[a(n-2)-a(n-1)]]` with `a(0)=3, a(1)=4`
-/

namespace A054492.P8178630828874097976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054492.P8178630828874097976

namespace A054492

/-- `record[Δ[a(n-2)-a(n-1)]]` -/
def P8178630828874097976.Spec : Prop :=
  ∀ n, P8178630828874097976.a n = A054492 n

end A054492

/-! ## A054492.P8317585591759696748

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A054492.P8317585591759696748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A054492.P8317585591759696748

namespace A054492

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P8317585591759696748.Spec : Prop :=
  ∀ n, P8317585591759696748.a n = A054492 n

theorem P8317585591759696748.correct : P8317585591759696748.Spec := by
  intro n
  simp only [A054492, Nat.add_sub_cancel, A054492.P8317585591759696748.a, A054492.P1600116613554382852.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054492

/-! ## A054492.P1871869466855176143

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A054492.P1871869466855176143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A054492.P1871869466855176143

namespace A054492

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P1871869466855176143.Spec : Prop :=
  ∀ n, P1871869466855176143.a n = A054492 n

theorem P1871869466855176143.correct : P1871869466855176143.Spec := by
  intro n
  simp only [A054492, Nat.add_sub_cancel, A054492.P1871869466855176143.a, A054492.P1600116613554382852.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054492

/-! ## A054492.P16824478271851759820

`A022095(2*n)`
-/

namespace A054492.P16824478271851759820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (2 * n)

end

end A054492.P16824478271851759820

namespace A054492

/-- `A022095(2*n)` -/
def P16824478271851759820.Spec : Prop :=
  ∀ n, P16824478271851759820.a n = A054492 n

end A054492

/-! ## A054492.P10103594754209424589

`A022309(2*n)+1`
-/

namespace A054492.P10103594754209424589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (2 * n) + 1

end

end A054492.P10103594754209424589

namespace A054492

/-- `A022309(2*n)+1` -/
def P10103594754209424589.Spec : Prop :=
  ∀ n, P10103594754209424589.a n = A054492 n

end A054492

/-! ## A054492.P13470239632100128625

`A054486(n)+A001906(n)`
-/

namespace A054492.P13470239632100128625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n + A001906 n

end

end A054492.P13470239632100128625

namespace A054492

/-- `A054486(n)+A001906(n)` -/
def P13470239632100128625.Spec : Prop :=
  ∀ n, P13470239632100128625.a n = A054492 n

end A054492

/-! ## A054492.P277416518842043782

`A097136(n)+A035508(n)`
-/

namespace A054492.P277416518842043782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097136 n + A035508 n

end

end A054492.P277416518842043782

namespace A054492

/-- `A097136(n)+A035508(n)` -/
def P277416518842043782.Spec : Prop :=
  ∀ n, P277416518842043782.a n = A054492 n

end A054492

/-! ## A054492.P6645413349136174838

`A264080(n)+A192879(n)`
-/

namespace A054492.P6645413349136174838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264080 n + A192879 n

end

end A054492.P6645413349136174838

namespace A054492

/-- `A264080(n)+A192879(n)` -/
def P6645413349136174838.Spec : Prop :=
  ∀ n, P6645413349136174838.a n = A054492 n

end A054492

/-! ## A054492.P17540864896934446058

`A055267(n)-A001906(n)`
-/

namespace A054492.P17540864896934446058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n - A001906 n

end

end A054492.P17540864896934446058

namespace A054492

/-- `A055267(n)-A001906(n)` -/
def P17540864896934446058.Spec : Prop :=
  ∀ n, P17540864896934446058.a n = A054492 n

end A054492

/-! ## A054492.P4061906911829519983

`A335807(n)-A052925(n)`
-/

namespace A054492.P4061906911829519983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335807 n - A052925 n

end

end A054492.P4061906911829519983

namespace A054492

/-- `A335807(n)-A052925(n)` -/
def P4061906911829519983.Spec : Prop :=
  ∀ n, P4061906911829519983.a n = A054492 n

end A054492

/-! ## A054492.P3511909849569190139

`A201157(n+1)+A001519(n)`
-/

namespace A054492.P3511909849569190139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A001519 n

end

end A054492.P3511909849569190139

namespace A054492

/-- `A201157(n+1)+A001519(n)` -/
def P3511909849569190139.Spec : Prop :=
  ∀ n, P3511909849569190139.a n = A054492 n

end A054492

/-! ## A054492.P7267147910506472542

`A192916(n+1)+A192916(n)`
-/

namespace A054492.P7267147910506472542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192916 (n + 1) + A192916 n

end

end A054492.P7267147910506472542

namespace A054492

/-- `A192916(n+1)+A192916(n)` -/
def P7267147910506472542.Spec : Prop :=
  ∀ n, P7267147910506472542.a n = A054492 n

end A054492

/-! ## A054492.P18235179142615157263

`A001906(n)+A000285(2*n)`
-/

namespace A054492.P18235179142615157263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + A000285 (2 * n)

end

end A054492.P18235179142615157263

namespace A054492

/-- `A001906(n)+A000285(2*n)` -/
def P18235179142615157263.Spec : Prop :=
  ∀ n, P18235179142615157263.a n = A054492 n

end A054492

/-! ## A054492.P8260475964213459690

`A002878(n)+2*A001906(n)`
-/

namespace A054492.P8260475964213459690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + 2 * A001906 n

end

end A054492.P8260475964213459690

namespace A054492

/-- `A002878(n)+2*A001906(n)` -/
def P8260475964213459690.Spec : Prop :=
  ∀ n, P8260475964213459690.a n = A054492 n

end A054492

/-! ## A054492.P16915972412377402974

`A054486(n)+A000045(2*n)`
-/

namespace A054492.P16915972412377402974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n + A000045 (2 * n)

end

end A054492.P16915972412377402974

namespace A054492

/-- `A054486(n)+A000045(2*n)` -/
def P16915972412377402974.Spec : Prop :=
  ∀ n, P16915972412377402974.a n = A054492 n

end A054492

/-! ## A054492.P14887546848632563831

`A055267(n)-A000045(2*n)`
-/

namespace A054492.P14887546848632563831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055267 n - A000045 (2 * n)

end

end A054492.P14887546848632563831

namespace A054492

/-- `A055267(n)-A000045(2*n)` -/
def P14887546848632563831.Spec : Prop :=
  ∀ n, P14887546848632563831.a n = A054492 n

end A054492

/-! ## A054492.P8511592869591536906

`A054888(n)+A052995(n)/2`
-/

namespace A054492.P8511592869591536906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054888 n : ℚ) + (A052995 n : ℚ) / 2

end

end A054492.P8511592869591536906

namespace A054492

/-- `A054888(n)+A052995(n)/2` -/
def P8511592869591536906.Spec : Prop :=
  ∀ n, P8511592869591536906.a n = (A054492 n : ℚ)

end A054492

/-! ## A054492.P2929330419182791243

`A104449(2*n+1)+A001906(n)`
-/

namespace A054492.P2929330419182791243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (2 * n + 1) + A001906 n

end

end A054492.P2929330419182791243

namespace A054492

/-- `A104449(2*n+1)+A001906(n)` -/
def P2929330419182791243.Spec : Prop :=
  ∀ n, P2929330419182791243.a n = A054492 n

end A054492

/-!
# A054493: A Pellian-related recursive sequence.

The programs for A054493, the canonical program `A054493.P2082880474784568663` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054493 has offset 0).

The definition of A054493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054493.P2082880474784568663

`5*a(n-1)-a(n-2)+2` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054493

/-- `5*a(n-1)-a(n-2)+2` -/
def P2082880474784568663.Spec : Prop :=
  ∀ n, P2082880474784568663.a n = A054493 n

theorem P2082880474784568663.correct : P2082880474784568663.Spec := by
  intro n
  simp only [A054493]

end A054493

/-! ## A054493.P7252738679005495661

`∑[ogf((1+x)/(1-5x+x^2))]`
-/

namespace A054493.P7252738679005495661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P7252738679005495661

namespace A054493

/-- `∑[ogf((1+x)/(1-5x+x^2))]` -/
def P7252738679005495661.Spec : Prop :=
  ∀ n, P7252738679005495661.a n = A054493 n

end A054493

/-! ## A054493.P18383809799967479885

`ogf((1+x)/(1-6x+6x^2-x^3))`
-/

namespace A054493.P18383809799967479885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 6, -1] n

end

end A054493.P18383809799967479885

namespace A054493

/-- `ogf((1+x)/(1-6x+6x^2-x^3))` -/
def P18383809799967479885.Spec : Prop :=
  ∀ n, P18383809799967479885.a n = A054493 n

end A054493

/-! ## A054493.P7908110451041732080

`∑[5*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A054493.P7908110451041732080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  5 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P7908110451041732080

namespace A054493

/-- `∑[5*a(n-1)-a(n-2)]` -/
def P7908110451041732080.Spec : Prop :=
  ∀ n, P7908110451041732080.a n = A054493 n

end A054493

/-! ## A054493.P17226324363864693699

`∑[lcm(5, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A054493.P17226324363864693699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P17226324363864693699

namespace A054493

/-- `∑[lcm(5, a(n-1))-a(n-2)]` -/
def P17226324363864693699.Spec : Prop :=
  ∀ n, P17226324363864693699.a n = A054493 n

end A054493

/-! ## A054493.P9224208001885830114

`2-(a(n-2)-5*a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A054493.P9224208001885830114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 - (a (n - 2) - 5 * a (n - 1))

end

end A054493.P9224208001885830114

namespace A054493

/-- `2-(a(n-2)-5*a(n-1))` -/
def P9224208001885830114.Spec : Prop :=
  ∀ n, P9224208001885830114.a n = A054493 n

end A054493

/-! ## A054493.P11459790556234666949

`∑[A030221(n)]`
-/

namespace A054493.P11459790556234666949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P11459790556234666949

namespace A054493

/-- `∑[A030221(n)]` -/
def P11459790556234666949.Spec : Prop :=
  ∀ n, P11459790556234666949.a n = A054493 n

end A054493

/-! ## A054493.P743800955664998690

`∑[∑[A003501(n)]-1]`
-/

namespace A054493.P743800955664998690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P743800955664998690

namespace A054493

/-- `∑[∑[A003501(n)]-1]` -/
def P743800955664998690.Spec : Prop :=
  ∀ n, P743800955664998690.a n = A054493 n

end A054493

/-! ## A054493.P7472585784453428510

`∑[record[Δ[A237254(n+1)]]]`
-/

namespace A054493.P7472585784453428510
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P7472585784453428510

namespace A054493

/-- `∑[record[Δ[A237254(n+1)]]]` -/
def P7472585784453428510.Spec : Prop :=
  ∀ n, P7472585784453428510.a n = A054493 n

end A054493

/-! ## A054493.P10953263476999163433

`A089817(n)+∑[A004254(n)]`
-/

namespace A054493.P10953263476999163433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089817 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P10953263476999163433

namespace A054493

/-- `A089817(n)+∑[A004254(n)]` -/
def P10953263476999163433.Spec : Prop :=
  ∀ n, P10953263476999163433.a n = A054493 n

end A054493

/-! ## A054493.P2624037024126631844

`∑[A004254(n+1)+A004254(n)]`
-/

namespace A054493.P2624037024126631844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (n + 1) + A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P2624037024126631844

namespace A054493

/-- `∑[A004254(n+1)+A004254(n)]` -/
def P2624037024126631844.Spec : Prop :=
  ∀ n, P2624037024126631844.a n = A054493 n

end A054493

/-! ## A054493.P12562283658365276634

`∑[A002310(n+1)-A002320(n)]`
-/

namespace A054493.P12562283658365276634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 (n + 1) - A002320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P12562283658365276634

namespace A054493

/-- `∑[A002310(n+1)-A002320(n)]` -/
def P12562283658365276634.Spec : Prop :=
  ∀ n, P12562283658365276634.a n = A054493 n

end A054493

/-! ## A054493.P2931586069307071235

`A107389(n+2)+A107389(n+3)`
-/

namespace A054493.P2931586069307071235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107389 (n + 2) + A107389 (n + 3)

end

end A054493.P2931586069307071235

namespace A054493

/-- `A107389(n+2)+A107389(n+3)` -/
def P2931586069307071235.Spec : Prop :=
  ∀ n, P2931586069307071235.a n = A054493 n

end A054493

/-! ## A054493.P1154286452585573425

`A101368(n+1)+Δ[A002310(n)]-1`
-/

namespace A054493.P1154286452585573425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A054493.P1154286452585573425

namespace A054493

/-- `A101368(n+1)+Δ[A002310(n)]-1` -/
def P1154286452585573425.Spec : Prop :=
  ∀ n, P1154286452585573425.a n = A054493 n

end A054493

/-! ## A054493.P9875457543626245743

`∑[2*A004253(n+1)-A002310(n)]`
-/

namespace A054493.P9875457543626245743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004253 (n + 1) - A002310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P9875457543626245743

namespace A054493

/-- `∑[2*A004253(n+1)-A002310(n)]` -/
def P9875457543626245743.Spec : Prop :=
  ∀ n, P9875457543626245743.a n = A054493 n

end A054493

/-! ## A054493.P16900195879397754594

`A004254(n+1)+A101368(n+2)-1`
-/

namespace A054493.P16900195879397754594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (n + 1) + (A101368 (n + 2) - 1)

end

end A054493.P16900195879397754594

namespace A054493

/-- `A004254(n+1)+A101368(n+2)-1` -/
def P16900195879397754594.Spec : Prop :=
  ∀ n, P16900195879397754594.a n = A054493 n

end A054493

/-! ## A054493.P189216400050910706

`∑[A004253(n+1)+Δ[A101368(n+1)]]`
-/

namespace A054493.P189216400050910706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P189216400050910706

namespace A054493

/-- `∑[A004253(n+1)+Δ[A101368(n+1)]]` -/
def P189216400050910706.Spec : Prop :=
  ∀ n, P189216400050910706.a n = A054493 n

end A054493

/-! ## A054493.P5863825988964407626

`∑[A237254(2*(n+1))-A237254(2*n+1)]`
-/

namespace A054493.P5863825988964407626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * (n + 1)) - A237254 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054493.P5863825988964407626

namespace A054493

/-- `∑[A237254(2*(n+1))-A237254(2*n+1)]` -/
def P5863825988964407626.Spec : Prop :=
  ∀ n, P5863825988964407626.a n = A054493 n

end A054493

/-! ## A054493.P5199603681671297872

`A089817(n)+A089817(n)-A004254(n+1)`
-/

namespace A054493.P5199603681671297872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089817 n + (A089817 n - A004254 (n + 1))

end

end A054493.P5199603681671297872

namespace A054493

/-- `A089817(n)+A089817(n)-A004254(n+1)` -/
def P5199603681671297872.Spec : Prop :=
  ∀ n, P5199603681671297872.a n = A054493 n

end A054493

/-! ## A054493.P3856438648446922272

`A221365(Δ[n²])/3`
-/

namespace A054493.P3856438648446922272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221365 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A054493.P3856438648446922272

namespace A054493

/-- `A221365(Δ[n²])/3` -/
def P3856438648446922272.Spec : Prop :=
  ∀ n, P3856438648446922272.a n = (A054493 n : ℚ)

end A054493

/-!
# A054494: Largest Fibonacci factor of n.

The programs for A054494, there is no canonical definition to state claims against.
-/

/-! ## A054494.P15556750427070271186

`(n+1)/A054495(n+1)`
-/

namespace A054494.P15556750427070271186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A054495 (n + 1) : ℚ)

end

end A054494.P15556750427070271186

/-! ## A054494.P5902547346239263321

`A280686((n+1)*char[A000071(n+1)]+n+1)`
-/

namespace A054494.P5902547346239263321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280686 ((n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + 1)

end

end A054494.P5902547346239263321

/-! ## A054494.P13119422935563306382

`A000045(A075850(n+2))`
-/

namespace A054494.P13119422935563306382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A075850 (n + 2)).toNat

end

end A054494.P13119422935563306382

/-! ## A054494.P12726687227878063305

`A280686(A008605(n+1))`
-/

namespace A054494.P12726687227878063305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280686 (A008605 (n + 1)).toNat

end

end A054494.P12726687227878063305

/-! ## A054494.P5195077603485494527

`A219158(A054495(n+1)+A000217(n))`
-/

namespace A054494.P5195077603485494527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A054495 (n + 1) + A000217 n).toNat

end

end A054494.P5195077603485494527

/-! ## A054494.P11951409429466379143

`A280686(31*(n+1))`
-/

namespace A054494.P11951409429466379143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280686 (31 * (n + 1))

end

end A054494.P11951409429466379143

/-! ## A054494.P1102465989582076485

`A234575(A054495(n+1)+A000217(n))`
-/

namespace A054494.P1102465989582076485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A054495 (n + 1) + A000217 n).toNat

end

end A054494.P1102465989582076485

/-! ## A054494.P9057496196582256828

`A051537(A054495(n+1)+∑[n])`
-/

namespace A054494.P9057496196582256828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A054495 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054494.P9057496196582256828

/-! ## A054494.P14784000243596044534

`A049834(A054495(n+1)+A000217(n))`
-/

namespace A054494.P14784000243596044534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A054495 (n + 1) + A000217 n).toNat

end

end A054494.P14784000243596044534

/-!
# A054495: Smallest k such that n/k is a Fibonacci number.

The programs for A054495, there is no canonical definition to state claims against.
-/

/-! ## A054495.P12398716945733622145

`(n+1)/A054494(n+1)`
-/

namespace A054495.P12398716945733622145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A054494 (n + 1) : ℚ)

end

end A054495.P12398716945733622145

/-! ## A054495.P1026141671355482035

`gcd(Δ[A130233(n)], A280687(n+1))`
-/

namespace A054495.P1026141671355482035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A280687 (n + 1))

end

end A054495.P1026141671355482035

/-! ## A054495.P13229636397701035878

`(n+1)/A000045(A075850(n+2))`
-/

namespace A054495.P13229636397701035878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000045 (A075850 (n + 2)).toNat : ℚ)

end

end A054495.P13229636397701035878

/-! ## A054495.P7034269414185209908

`(n+1)/A280686(A008605(n+1))`
-/

namespace A054495.P7034269414185209908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A280686 (A008605 (n + 1)).toNat : ℚ)

end

end A054495.P7034269414185209908

/-! ## A054495.P4680187627764140070

`log2(root(A000079(n+1), A054494(n+1)))`
-/

namespace A054495.P4680187627764140070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 (n + 1) : ℝ) ^ (1 / (A054494 (n + 1) : ℝ)))

end

end A054495.P4680187627764140070

/-! ## A054495.P8445154404585892652

`A234575(A054494(n+1)+A000217(n))`
-/

namespace A054495.P8445154404585892652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A054494 (n + 1) + A000217 n).toNat

end

end A054495.P8445154404585892652

/-! ## A054495.P8205724740513734695

`A049834(A054494(n+1)+∑[n])`
-/

namespace A054495.P8205724740513734695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A054494 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054495.P8205724740513734695

/-! ## A054495.P6842764033128049223

`A051537(A054494(n+1)+∑[n])`
-/

namespace A054495.P6842764033128049223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A054494 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054495.P6842764033128049223

/-! ## A054495.P6628193715410777687

`A126988(A054494(n+1)+∑[n])`
-/

namespace A054495.P6628193715410777687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A054494 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054495.P6628193715410777687

/-!
# A054496: If n = p_1^e_1 * p_2^e_2 * p_3^e_3 * ..., p's = distinct primes, e's = positive integers, then a(n) = p_1^(e_1^2) * p_2^(e_2^2) * p_3^(e_3^2) * ... .

The programs for A054496, the canonical program `A054496.P10627709394606885019` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054496 has offset 1).

The definition of A054496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054496.P10627709394606885019

`∏{p}[n+1, #^val(n+1, #)²]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054496

/-- `∏{p}[n+1, #^val(n+1, #)²]` -/
def P10627709394606885019.Spec : Prop :=
  ∀ n, (P10627709394606885019.a n : ℤ) = A054496 (n + 1)

theorem P10627709394606885019.correct : P10627709394606885019.Spec := by
  intro n
  simp only [A054496, Nat.add_sub_cancel]

end A054496

/-! ## A054496.P1138788096532512787

`A183091(n+1)²/(n+1)`
-/

namespace A054496.P1138788096532512787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A054496.P1138788096532512787

namespace A054496

/-- `A183091(n+1)²/(n+1)` -/
def P1138788096532512787.Spec : Prop :=
  ∀ n, P1138788096532512787.a n = (A054496 (n + 1) : ℚ)

end A054496

/-! ## A054496.P3312912125431452609

`A183091(A003557(n+1))*A183091(n+1)`
-/

namespace A054496.P3312912125431452609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183091 (A003557 (n + 1)).toNat * A183091 (n + 1)

end

end A054496.P3312912125431452609

namespace A054496

/-- `A183091(A003557(n+1))*A183091(n+1)` -/
def P3312912125431452609.Spec : Prop :=
  ∀ n, P3312912125431452609.a n = A054496 (n + 1)

end A054496

/-! ## A054496.P14677922838731712321

`A183091(A057521(n+1))/A057521(n+1)*A183091(n+1)`
-/

namespace A054496.P14677922838731712321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (A057521 (n + 1)).toNat : ℚ) / (A057521 (n + 1) : ℚ) * (A183091 (n + 1) : ℚ)

end

end A054496.P14677922838731712321

namespace A054496

/-- `A183091(A057521(n+1))/A057521(n+1)*A183091(n+1)` -/
def P14677922838731712321.Spec : Prop :=
  ∀ n, P14677922838731712321.a n = (A054496 (n + 1) : ℚ)

end A054496

/-! ## A054496.P14171666384500399487

`(A007955(n+1)/A183092(n+1))²/(n+1)`
-/

namespace A054496.P14171666384500399487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A007955 (n + 1) : ℚ) / (A183092 (n + 1) : ℚ)) ^ 2 / (n + 1 : ℚ)

end

end A054496.P14171666384500399487

namespace A054496

/-- `(A007955(n+1)/A183092(n+1))²/(n+1)` -/
def P14171666384500399487.Spec : Prop :=
  ∀ n, P14171666384500399487.a n = (A054496 (n + 1) : ℚ)

end A054496

/-! ## A054496.P751607055908732082

`A007956(n+1)*A183091(n+1)/A183092(n+1)`
-/

namespace A054496.P751607055908732082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) * A183091 (n + 1) : ℚ) / (A183092 (n + 1) : ℚ)

end

end A054496.P751607055908732082

namespace A054496

/-- `A007956(n+1)*A183091(n+1)/A183092(n+1)` -/
def P751607055908732082.Spec : Prop :=
  ∀ n, P751607055908732082.a n = (A054496 (n + 1) : ℚ)

end A054496

/-! ## A054496.P9964438184477355319

`A309002(n+1)/A055231(n+1)`
-/

namespace A054496.P9964438184477355319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309002 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A054496.P9964438184477355319

namespace A054496

/-- `A309002(n+1)/A055231(n+1)` -/
def P9964438184477355319.Spec : Prop :=
  ∀ n, P9964438184477355319.a n = (A054496 (n + 1) : ℚ)

end A054496

/-! ## A054496.P3795843905960375016

`A000027(A183091(n+1)/(n+1))*A183091(n+1)`
-/

namespace A054496.P3795843905960375016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A183091 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A183091 (n + 1)

end

end A054496.P3795843905960375016

namespace A054496

/-- `A000027(A183091(n+1)/(n+1))*A183091(n+1)` -/
def P3795843905960375016.Spec : Prop :=
  ∀ n, P3795843905960375016.a n = A054496 (n + 1)

end A054496

/-! ## A054496.P3156844715875938928

`A111701(A183091(n+1)/A111701(n+1))*A183091(n+1)`
-/

namespace A054496.P3156844715875938928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (SequenceMachineLib.roundAway ((A183091 (n + 1) : ℚ) / (A111701 (n + 1) : ℚ))).toNat * A183091 (n + 1)

end

end A054496.P3156844715875938928

namespace A054496

/-- `A111701(A183091(n+1)/A111701(n+1))*A183091(n+1)` -/
def P3156844715875938928.Spec : Prop :=
  ∀ n, P3156844715875938928.a n = A054496 (n + 1)

end A054496

/-!
# A054497: Number of symmetric nonnegative integer 7 X 7 matrices with sum of elements equal to 4*n, under action of dihedral group D_4.

The programs for A054497, the canonical program `A054497.P9271263383875408679` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054497 has offset 0).

The definition of A054497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054497.P9271263383875408679

`∑[∑[∑[A060099(n)]]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054497

/-- `∑[∑[∑[A060099(n)]]]` -/
def P9271263383875408679.Spec : Prop :=
  ∀ n, P9271263383875408679.a n = A054497 n

theorem P9271263383875408679.correct : P9271263383875408679.Spec := by
  intro n
  simp only [A054497]

end A054497

/-! ## A054497.P9578411324118148135

`∑[∑[∑[A038163(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A054497.P9578411324118148135
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A038163 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054497.P9578411324118148135

namespace A054497

/-- `∑[∑[∑[A038163(n)+a(n-1)]]]` -/
def P9578411324118148135.Spec : Prop :=
  ∀ n, P9578411324118148135.a n = A054497 n

end A054497

/-! ## A054497.P2033203191499801969

`∑[∑[∑[A299335(n)-a(n-1)]]]` with `a(0)=1`
-/

namespace A054497.P2033203191499801969
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A299335 n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054497.P2033203191499801969

namespace A054497

/-- `∑[∑[∑[A299335(n)-a(n-1)]]]` -/
def P2033203191499801969.Spec : Prop :=
  ∀ n, P2033203191499801969.a n = A054497 n

end A054497

/-! ## A054497.P9114036078197526352

`∑[A001780(n)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A054497.P9114036078197526352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001780 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A054497.P9114036078197526352

namespace A054497

/-- `∑[A001780(n)-a(n-1)]-a(n-1)` -/
def P9114036078197526352.Spec : Prop :=
  ∀ n, P9114036078197526352.a n = A054497 n

end A054497

/-! ## A054497.P4355887689998538255

`∑[2*A060100(n)]-A060100(n)`
-/

namespace A054497.P4355887689998538255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060100 n

end

end A054497.P4355887689998538255

namespace A054497

/-- `∑[2*A060100(n)]-A060100(n)` -/
def P4355887689998538255.Spec : Prop :=
  ∀ n, P4355887689998538255.a n = A054497 n

end A054497

/-!
# A054498: Number of symmetric nonnegative integer 8 X 8 matrices with sum of elements equal to 4*n, under action of dihedral group D_4.

The programs for A054498, the canonical program `A054498.P8491227773940625758` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054498 has offset 0).

The definition of A054498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054498.P7804740775744125846

`∑[∑[A178440(n)]]`
-/

namespace A054498.P7804740775744125846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054498.P7804740775744125846

namespace A054498

/-- `∑[∑[A178440(n)]]` -/
def P7804740775744125846.Spec : Prop :=
  ∀ n, P7804740775744125846.a n = A054498 n

end A054498

/-! ## A054498.P7583791631656850437

`∑[∑[∑[A299338(n)]]]`
-/

namespace A054498.P7583791631656850437
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054498.P7583791631656850437

namespace A054498

/-- `∑[∑[∑[A299338(n)]]]` -/
def P7583791631656850437.Spec : Prop :=
  ∀ n, P7583791631656850437.a n = A054498 n

end A054498

/-! ## A054498.P8491227773940625758

`A038165(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054498

/-- `A038165(n)-a(n-1)` -/
def P8491227773940625758.Spec : Prop :=
  ∀ n, P8491227773940625758.a n = A054498 n

theorem P8491227773940625758.correct : P8491227773940625758.Spec := by
  intro n
  simp only [A054498]

end A054498

/-! ## A054498.P6062361632058872255

`∑[∑[∑[A299337(n)-a(n-1)]]]` with `a(0)=1`
-/

namespace A054498.P6062361632058872255
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A299337 n - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054498.P6062361632058872255

namespace A054498

/-- `∑[∑[∑[A299337(n)-a(n-1)]]]` -/
def P6062361632058872255.Spec : Prop :=
  ∀ n, P6062361632058872255.a n = A054498 n

end A054498

/-! ## A054498.P2565584296116979756

`∑[A060100(n)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A054498.P2565584296116979756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A060100 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A054498.P2565584296116979756

namespace A054498

/-- `∑[A060100(n)-a(n-1)]-a(n-1)` -/
def P2565584296116979756.Spec : Prop :=
  ∀ n, P2565584296116979756.a n = A054498 n

end A054498

/-! ## A054498.P8992989644390394853

`∑[∑[∑[A000579(A004526(n)+6)]]]`
-/

namespace A054498.P8992989644390394853
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A004526 n + 6).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054498.P8992989644390394853

namespace A054498

/-- `∑[∑[∑[A000579(A004526(n)+6)]]]` -/
def P8992989644390394853.Spec : Prop :=
  ∀ n, P8992989644390394853.a n = A054498 n

end A054498

/-! ## A054498.P5836822593737098296

`A210391(∑[n+5]+5)`
-/

namespace A054498.P5836822593737098296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A054498.P5836822593737098296

namespace A054498

/-- `A210391(∑[n+5]+5)` -/
def P5836822593737098296.Spec : Prop :=
  ∀ n, P5836822593737098296.a n = A054498 n

end A054498

/-! ## A054498.P14153943132652965762

`record[A210391(A052905(n))]`
-/

namespace A054498.P14153943132652965762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054498.P14153943132652965762

namespace A054498

/-- `record[A210391(A052905(n))]` -/
def P14153943132652965762.Spec : Prop :=
  ∀ n, P14153943132652965762.a n = A054498 n

end A054498

/-!
# A054499: Number of pairings on a bracelet; number of chord diagrams that can be turned over and having n chords.

The programs for A054499, there is no canonical definition to state claims against.
-/

/-! ## A054499.P1032875273209895498

`A322176(∑[n])`
-/

namespace A054499.P1032875273209895498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054499.P1032875273209895498

/-! ## A054499.P2876464540738345441

`A322176(A000217(n))^ceil(sin(n)²)`
-/

namespace A054499.P2876464540738345441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322176 (A000217 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A054499.P2876464540738345441

/-! ## A054499.P2670193443619597981

`gcd(A151909(n), A322176(A000217(n)))`
-/

namespace A054499.P2670193443619597981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151909 n) (A322176 (A000217 n).toNat)

end

end A054499.P2670193443619597981

/-! ## A054499.P15728024564659781524

`or(A000007(n), A322176(A000217(n)))`
-/

namespace A054499.P15728024564659781524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322176 (A000217 n).toNat)

end

end A054499.P15728024564659781524

/-! ## A054499.P13190978769659287963

`A322176(A000217(n))+A000007(n+1)`
-/

namespace A054499.P13190978769659287963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322176 (A000217 n).toNat + A000007 (n + 1)

end

end A054499.P13190978769659287963

/-! ## A054499.P2824156286597836183

`A322176(A000217(n))+A000038(n+1)`
-/

namespace A054499.P2824156286597836183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322176 (A000217 n).toNat + A000038 (n + 1)

end

end A054499.P2824156286597836183

/-! ## A054499.P1417976058922571283

`lcm(A009001(2*n), A322176(A000217(n)))`
-/

namespace A054499.P1417976058922571283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 (2 * n)) (A322176 (A000217 n).toNat)

end

end A054499.P1417976058922571283

/-! ## A054499.P6658465388120499452

`A000010(ceil(1/(n+1)))*A322176(A000217(n))`
-/

namespace A054499.P6658465388120499452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat * A322176 (A000217 n).toNat

end

end A054499.P6658465388120499452

/-! ## A054499.P10582061384992595975

`A007318(round(1/(n+1)))*A322176(A000217(n))`
-/

namespace A054499.P10582061384992595975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat * A322176 (A000217 n).toNat

end

end A054499.P10582061384992595975

