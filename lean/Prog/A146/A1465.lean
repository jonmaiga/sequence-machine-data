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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A146501: Period 6: repeat [4,8,7,5,1,2].

The programs for A146501, the canonical program `A146501.P41968539825202592` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146501 has offset 0).

The definition of A146501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146501.P41968539825202592

`dr(2*a(n-1))` with `a(0)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146501

/-- `dr(2*a(n-1))` -/
def P41968539825202592.Spec : Prop :=
  ∀ n, (P41968539825202592.a n : ℤ) = A146501 n

theorem P41968539825202592.correct : P41968539825202592.Spec := by
  intro n
  simp only [A146501]

end A146501

/-!
# A146507: Numbers congruent to {1, 13} mod 42.

The programs for A146507, the canonical program `A146507.P1754778370472560057` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146507 has offset 1).

The definition of A146507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146507.P1754778370472560057

`21*(n+1)-29+(n+1)%2*9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146507

/-- `21*(n+1)-29+(n+1)%2*9` -/
def P1754778370472560057.Spec : Prop :=
  ∀ n, P1754778370472560057.a n = A146507 (n + 1)

theorem P1754778370472560057.correct : P1754778370472560057.Spec := by
  intro n
  simp only [A146507, Nat.add_sub_cancel]

end A146507

/-! ## A146507.P18141530934785904278

`a(n-2)+42` with `a(0)=1, a(1)=13`
-/

namespace A146507.P18141530934785904278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  a (n - 2) + 42

end

end A146507.P18141530934785904278

namespace A146507

/-- `a(n-2)+42` -/
def P18141530934785904278.Spec : Prop :=
  ∀ n, (P18141530934785904278.a n : ℤ) = A146507 (n + 1)

end A146507

/-! ## A146507.P13285839570764047288

`∑[xor(18, a(n-1))]` with `a(0)=1, a(1)=12`
-/

namespace A146507.P13285839570764047288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  Nat.xor 18 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146507.P13285839570764047288

namespace A146507

/-- `∑[xor(18, a(n-1))]` -/
def P13285839570764047288.Spec : Prop :=
  ∀ n, (P13285839570764047288.a n : ℤ) = A146507 (n + 1)

end A146507

/-! ## A146507.P5479751220253899098

`∑[42-a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A146507.P5479751220253899098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  42 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146507.P5479751220253899098

namespace A146507

/-- `∑[42-a(n-1)]` -/
def P5479751220253899098.Spec : Prop :=
  ∀ n, P5479751220253899098.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P4179399433049509482

`7*(6*n-4)-a(n-1)` with `a(0)=1`
-/

namespace A146507.P4179399433049509482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * ((6 * n : ℤ) - 4) - a (n - 1)

end

end A146507.P4179399433049509482

namespace A146507

/-- `7*(6*n-4)-a(n-1)` -/
def P4179399433049509482.Spec : Prop :=
  ∀ n, P4179399433049509482.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P2955090356677093266

`6*A047352(n+1)+1`
-/

namespace A146507.P2955090356677093266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A047352 (n + 1) + 1

end

end A146507.P2955090356677093266

namespace A146507

/-- `6*A047352(n+1)+1` -/
def P2955090356677093266.Spec : Prop :=
  ∀ n, P2955090356677093266.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P9591347321656982531

`6*abs(1-A047356(n+1))+1`
-/

namespace A146507.P9591347321656982531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * |1 - A047356 (n + 1)| + 1

end

end A146507.P9591347321656982531

namespace A146507

/-- `6*abs(1-A047356(n+1))+1` -/
def P9591347321656982531.Spec : Prop :=
  ∀ n, P9591347321656982531.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P13511022020469004770

`∑[A000010(A094461(a(n-1)))]` with `a(0)=1`
-/

namespace A146507.P13511022020469004770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000010 (A094461 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146507.P13511022020469004770

namespace A146507

/-- `∑[A000010(A094461(a(n-1)))]` -/
def P13511022020469004770.Spec : Prop :=
  ∀ n, P13511022020469004770.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P2172481596936165990

`A113801(xor(1, 3*n))`
-/

namespace A146507.P2172481596936165990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (Nat.xor 1 (3 * n))

end

end A146507.P2172481596936165990

namespace A146507

/-- `A113801(xor(1, 3*n))` -/
def P2172481596936165990.Spec : Prop :=
  ∀ n, P2172481596936165990.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P17369243713195846252

`A113801(A047239(n+1))`
-/

namespace A146507.P17369243713195846252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A047239 (n + 1)).toNat

end

end A146507.P17369243713195846252

namespace A146507

/-- `A113801(A047239(n+1))` -/
def P17369243713195846252.Spec : Prop :=
  ∀ n, P17369243713195846252.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P12954104147015695352

`A113801(A047425(2*n+1)-(n+2))`
-/

namespace A146507.P12954104147015695352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A047425 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A146507.P12954104147015695352

namespace A146507

/-- `A113801(A047425(2*n+1)-(n+2))` -/
def P12954104147015695352.Spec : Prop :=
  ∀ n, P12954104147015695352.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P13526883841281318960

`A016921(A047352(n+1))`
-/

namespace A146507.P13526883841281318960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A047352 (n + 1)).toNat

end

end A146507.P13526883841281318960

namespace A146507

/-- `A016921(A047352(n+1))` -/
def P13526883841281318960.Spec : Prop :=
  ∀ n, P13526883841281318960.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P226887407973283023

`∩[A113801(n+1), A016921(n)]`
-/

namespace A146507.P226887407973283023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146507.P226887407973283023

namespace A146507

/-- `∩[A113801(n+1), A016921(n)]` -/
def P226887407973283023.Spec : Prop :=
  ∀ n, (P226887407973283023.a n : ℤ) = A146507 (n + 1)

end A146507

/-! ## A146507.P6676945788660039764

`∩[A113801(n+1), A308196(n)]`
-/

namespace A146507.P6676945788660039764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146507.P6676945788660039764

namespace A146507

/-- `∩[A113801(n+1), A308196(n)]` -/
def P6676945788660039764.Spec : Prop :=
  ∀ n, (P6676945788660039764.a n : ℤ) = A146507 (n + 1)

end A146507

/-! ## A146507.P12074554724626723625

`A016921(A047216(n+1)-1+n)`
-/

namespace A146507.P12074554724626723625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A047216 (n + 1) - 1 + (n : ℤ)).toNat

end

end A146507.P12074554724626723625

namespace A146507

/-- `A016921(A047216(n+1)-1+n)` -/
def P12074554724626723625.Spec : Prop :=
  ∀ n, P12074554724626723625.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P2129554462140700363

`A016921(A001651(A047241(n+1))-(n+1))`
-/

namespace A146507.P2129554462140700363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A001651 (A047241 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A146507.P2129554462140700363

namespace A146507

/-- `A016921(A001651(A047241(n+1))-(n+1))` -/
def P2129554462140700363.Spec : Prop :=
  ∀ n, P2129554462140700363.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P10755040284066683878

`A017041(A047352(n+1))-A047288(n+1)`
-/

namespace A146507.P10755040284066683878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (A047352 (n + 1)).toNat - A047288 (n + 1)

end

end A146507.P10755040284066683878

namespace A146507

/-- `A017041(A047352(n+1))-A047288(n+1)` -/
def P10755040284066683878.Spec : Prop :=
  ∀ n, P10755040284066683878.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P2808073855365504801

`A017017(A047348(n+1)-2)-A047348(n+1)`
-/

namespace A146507.P2808073855365504801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (A047348 (n + 1) - 2).toNat - A047348 (n + 1)

end

end A146507.P2808073855365504801

namespace A146507

/-- `A017017(A047348(n+1)-2)-A047348(n+1)` -/
def P2808073855365504801.Spec : Prop :=
  ∀ n, P2808073855365504801.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P10186429831070039082

`A091361(A047389(n+1))-2`
-/

namespace A146507.P10186429831070039082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (A047389 (n + 1)).toNat - 2

end

end A146507.P10186429831070039082

namespace A146507

/-- `A091361(A047389(n+1))-2` -/
def P10186429831070039082.Spec : Prop :=
  ∀ n, P10186429831070039082.a n = A146507 (n + 1)

end A146507

/-! ## A146507.P17022050525953826327

`A091361(A047307(2*n+1))-2`
-/

namespace A146507.P17022050525953826327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (A047307 (2 * n + 1)).toNat - 2

end

end A146507.P17022050525953826327

namespace A146507

/-- `A091361(A047307(2*n+1))-2` -/
def P17022050525953826327.Spec : Prop :=
  ∀ n, P17022050525953826327.a n = A146507 (n + 1)

end A146507

/-!
# A146509: Numbers that are congruent to {1, 5} mod 18.

The programs for A146509, the canonical program `A146509.P17311515414198977307` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146509 has offset 1).

The definition of A146509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146509.P17311515414198977307

`18*(n+1)-a(n-1)-30` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146509

/-- `18*(n+1)-a(n-1)-30` -/
def P17311515414198977307.Spec : Prop :=
  ∀ n, P17311515414198977307.a n = A146509 (n + 1)

theorem P17311515414198977307.correct : P17311515414198977307.Spec := by
  intro n
  simp only [A146509, Nat.add_sub_cancel]

end A146509

/-! ## A146509.P6653566233251460678

`(18*(n+1)-5*(-1)^(n+1)-21)/2`
-/

namespace A146509.P6653566233251460678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) - 21 : ℚ) / 2

end

end A146509.P6653566233251460678

namespace A146509

/-- `(18*(n+1)-5*(-1)^(n+1)-21)/2` -/
def P6653566233251460678.Spec : Prop :=
  ∀ n, P6653566233251460678.a n = (A146509 (n + 1) : ℚ)

theorem P6653566233251460678.correct : P6653566233251460678.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A146509, Nat.add_sub_cancel, A146509.P6653566233251460678.a, A146509.P17311515414198977307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A146509, Nat.add_sub_cancel, A146509.P6653566233251460678.a, A146509.P17311515414198977307.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A146509

/-! ## A146509.P17052241874295106918

`a(n-2)+18` with `a(0)=1, a(1)=5`
-/

namespace A146509.P17052241874295106918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 18

end

end A146509.P17052241874295106918

namespace A146509

/-- `a(n-2)+18` -/
def P17052241874295106918.Spec : Prop :=
  ∀ n, (P17052241874295106918.a n : ℤ) = A146509 (n + 1)

end A146509

/-! ## A146509.P11724475656951436726

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=14`
-/

namespace A146509.P11724475656951436726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146509.P11724475656951436726

namespace A146509

/-- `∑[abs(a(n-2))]` -/
def P11724475656951436726.Spec : Prop :=
  ∀ n, (P11724475656951436726.a n : ℤ) = A146509 (n + 1)

end A146509

/-! ## A146509.P6247966830364914807

`∑[18-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A146509.P6247966830364914807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146509.P6247966830364914807

namespace A146509

/-- `∑[18-a(n-1)]` -/
def P6247966830364914807.Spec : Prop :=
  ∀ n, P6247966830364914807.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P12826658301193684467

`5*comp[or(2, n)]+1-n`
-/

namespace A146509.P12826658301193684467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)

end

end A146509.P12826658301193684467

namespace A146509

/-- `5*comp[or(2, n)]+1-n` -/
def P12826658301193684467.Spec : Prop :=
  ∀ n, P12826658301193684467.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P15378974945956793781

`5*lt[n, or(2, n)]+1-n`
-/

namespace A146509.P15378974945956793781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ) - (n : ℤ)

end

end A146509.P15378974945956793781

namespace A146509

/-- `5*lt[n, or(2, n)]+1-n` -/
def P15378974945956793781.Spec : Prop :=
  ∀ n, P15378974945956793781.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P12483377393072980172

`∑[∑[ogf((6+4x+8x^2)/(1+x))]]-5`
-/

namespace A146509.P12483377393072980172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4, 8] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A146509.P12483377393072980172

namespace A146509

/-- `∑[∑[ogf((6+4x+8x^2)/(1+x))]]-5` -/
def P12483377393072980172.Spec : Prop :=
  ∀ n, P12483377393072980172.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P13205569606788225745

`record[5*and(n, n+2)]-(n-1)`
-/

namespace A146509.P13205569606788225745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.land n (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((n : ℤ) - 1)

end

end A146509.P13205569606788225745

namespace A146509

/-- `record[5*and(n, n+2)]-(n-1)` -/
def P13205569606788225745.Spec : Prop :=
  ∀ n, P13205569606788225745.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P17358283630291201671

`5*lt[n-1, xor(2, n)]-n+1`
-/

namespace A146509.P17358283630291201671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A146509.P17358283630291201671

namespace A146509

/-- `5*lt[n-1, xor(2, n)]-n+1` -/
def P17358283630291201671.Spec : Prop :=
  ∀ n, P17358283630291201671.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P15243575990034207475

`record[(2*n+1)/dr((n+3)²+n+1)]`
-/

namespace A146509.P15243575990034207475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (SequenceMachineLib.digitalRoot ((n + 3) ^ 2 + (n + 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146509.P15243575990034207475

namespace A146509

/-- `record[(2*n+1)/dr((n+3)²+n+1)]` -/
def P15243575990034207475.Spec : Prop :=
  ∀ n, P15243575990034207475.a n = (A146509 (n + 1) : ℚ)

end A146509

/-! ## A146509.P13271948744976062394

`record[2*n+1-dr((n+3)*2*n)²]`
-/

namespace A146509.P13271948744976062394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((n + 3) * (2 * n) : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146509.P13271948744976062394

namespace A146509

/-- `record[2*n+1-dr((n+3)*2*n)²]` -/
def P13271948744976062394.Spec : Prop :=
  ∀ n, P13271948744976062394.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P11118120813497112097

`A147832(n+1)+Δ[n²]`
-/

namespace A146509.P11118120813497112097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147832 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A146509.P11118120813497112097

namespace A146509

/-- `A147832(n+1)+Δ[n²]` -/
def P11118120813497112097.Spec : Prop :=
  ∀ n, P11118120813497112097.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P9758310652973900218

`4*xor(1, 3*n)-A168329(n+1)`
-/

namespace A146509.P9758310652973900218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 (3 * n) : ℤ) - A168329 (n + 1)

end

end A146509.P9758310652973900218

namespace A146509

/-- `4*xor(1, 3*n)-A168329(n+1)` -/
def P9758310652973900218.Spec : Prop :=
  ∀ n, P9758310652973900218.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P10118751510995737249

`2*abs(n-A228137(n+1))-or(1, n)`
-/

namespace A146509.P10118751510995737249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(n : ℤ) - A228137 (n + 1)| - (Nat.lor 1 n : ℤ)

end

end A146509.P10118751510995737249

namespace A146509

/-- `2*abs(n-A228137(n+1))-or(1, n)` -/
def P10118751510995737249.Spec : Prop :=
  ∀ n, P10118751510995737249.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P4970924097608445115

`A017173(n)-A010676(n)`
-/

namespace A146509.P4970924097608445115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - A010676 n

end

end A146509.P4970924097608445115

namespace A146509

/-- `A017173(n)-A010676(n)` -/
def P4970924097608445115.Spec : Prop :=
  ∀ n, P4970924097608445115.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P8078616503840831165

`A017185(n)-A010687(n)`
-/

namespace A146509.P8078616503840831165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n - A010687 n

end

end A146509.P8078616503840831165

namespace A146509

/-- `A017185(n)-A010687(n)` -/
def P8078616503840831165.Spec : Prop :=
  ∀ n, P8078616503840831165.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P11104006157696707519

`A017197(n)-A010697(n)`
-/

namespace A146509.P11104006157696707519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - A010697 n

end

end A146509.P11104006157696707519

namespace A146509

/-- `A017197(n)-A010697(n)` -/
def P11104006157696707519.Spec : Prop :=
  ∀ n, P11104006157696707519.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P10521613168426596197

`A017209(n)-A010706(n)`
-/

namespace A146509.P10521613168426596197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n - A010706 n

end

end A146509.P10521613168426596197

namespace A146509

/-- `A017209(n)-A010706(n)` -/
def P10521613168426596197.Spec : Prop :=
  ∀ n, P10521613168426596197.a n = A146509 (n + 1)

end A146509

/-! ## A146509.P7528339259161781241

`A017221(n)-A010714(n)`
-/

namespace A146509.P7528339259161781241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n - A010714 n

end

end A146509.P7528339259161781241

namespace A146509

/-- `A017221(n)-A010714(n)` -/
def P7528339259161781241.Spec : Prop :=
  ∀ n, P7528339259161781241.a n = A146509 (n + 1)

end A146509

/-!
# A146510: Numbers congruent to {1, 4} mod 15.

The programs for A146510, the canonical program `A146510.P14654567209796118350` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146510 has offset 1).

The definition of A146510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146510.P14654567209796118350

`(15*(n+1)-22+(n+1)%2*9)/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146510

/-- `(15*(n+1)-22+(n+1)%2*9)/2` -/
def P14654567209796118350.Spec : Prop :=
  ∀ n, P14654567209796118350.a n = (A146510 (n + 1) : ℚ)

end A146510

/-! ## A146510.P10887818208893176930

`a(n-2)+15` with `a(0)=1, a(1)=4`
-/

namespace A146510.P10887818208893176930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 15

end

end A146510.P10887818208893176930

namespace A146510

/-- `a(n-2)+15` -/
def P10887818208893176930.Spec : Prop :=
  ∀ n, (P10887818208893176930.a n : ℤ) = A146510 (n + 1)

end A146510

/-! ## A146510.P2682317556858107430

`∑[15-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A146510.P2682317556858107430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  15 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146510.P2682317556858107430

namespace A146510

/-- `∑[15-a(n-1)]` -/
def P2682317556858107430.Spec : Prop :=
  ∀ n, P2682317556858107430.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P12276069027079577441

`∑[3*gcd(2, n)²]-11`
-/

namespace A146510.P12276069027079577441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 11

end

end A146510.P12276069027079577441

namespace A146510

/-- `∑[3*gcd(2, n)²]-11` -/
def P12276069027079577441.Spec : Prop :=
  ∀ n, P12276069027079577441.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P10019143208961054063

`∑[∑[ogf((1+3x+11x^2)/(1+x))]]`
-/

namespace A146510.P10019143208961054063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 11] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146510.P10019143208961054063

namespace A146510

/-- `∑[∑[ogf((1+3x+11x^2)/(1+x))]]` -/
def P10019143208961054063.Spec : Prop :=
  ∀ n, P10019143208961054063.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P10712376420742611462

`5*(3*n-2)-a(n-1)` with `a(0)=1`
-/

namespace A146510.P10712376420742611462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((3 * n : ℤ) - 2) - a (n - 1)

end

end A146510.P10712376420742611462

namespace A146510

/-- `5*(3*n-2)-a(n-1)` -/
def P10712376420742611462.Spec : Prop :=
  ∀ n, P10712376420742611462.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P7853590648225022207

`3*∑[((n-1)%2+1)²]+1`
-/

namespace A146510.P7853590648225022207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 2 + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A146510.P7853590648225022207

namespace A146510

/-- `3*∑[((n-1)%2+1)²]+1` -/
def P7853590648225022207.Spec : Prop :=
  ∀ n, P7853590648225022207.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P9514447947151955234

`∑[A040033(n)]-5`
-/

namespace A146510.P9514447947151955234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A146510.P9514447947151955234

namespace A146510

/-- `∑[A040033(n)]-5` -/
def P9514447947151955234.Spec : Prop :=
  ∀ n, P9514447947151955234.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P13264183755890967920

`A212161(n)-(n+5)`
-/

namespace A146510.P13264183755890967920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 n - (n + 5 : ℤ)

end

end A146510.P13264183755890967920

namespace A146510

/-- `A212161(n)-(n+5)` -/
def P13264183755890967920.Spec : Prop :=
  ∀ n, P13264183755890967920.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P2773023929318963481

`∑[A287462(a(n-1))]` with `a(0)=1`
-/

namespace A146510.P2773023929318963481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A287462 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146510.P2773023929318963481

namespace A146510

/-- `∑[A287462(a(n-1))]` -/
def P2773023929318963481.Spec : Prop :=
  ∀ n, P2773023929318963481.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P6902975181334713533

`3*A008851(n+1)+1`
-/

namespace A146510.P6902975181334713533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008851 (n + 1) + 1

end

end A146510.P6902975181334713533

namespace A146510

/-- `3*A008851(n+1)+1` -/
def P6902975181334713533.Spec : Prop :=
  ∀ n, P6902975181334713533.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P15318687361765891798

`3*A047216(n+1)-2`
-/

namespace A146510.P15318687361765891798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047216 (n + 1) - 2

end

end A146510.P15318687361765891798

namespace A146510

/-- `3*A047216(n+1)-2` -/
def P15318687361765891798.Spec : Prop :=
  ∀ n, P15318687361765891798.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P17088410106139332635

`3*A047221(n+1)-5`
-/

namespace A146510.P17088410106139332635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047221 (n + 1) - 5

end

end A146510.P17088410106139332635

namespace A146510

/-- `3*A047221(n+1)-5` -/
def P17088410106139332635.Spec : Prop :=
  ∀ n, P17088410106139332635.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P2110512957522542869

`(A267985(n+1)-5)/2`
-/

namespace A146510.P2110512957522542869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267985 (n + 1) - 5 : ℚ) / 2

end

end A146510.P2110512957522542869

namespace A146510

/-- `(A267985(n+1)-5)/2` -/
def P2110512957522542869.Spec : Prop :=
  ∀ n, P2110512957522542869.a n = (A146510 (n + 1) : ℚ)

end A146510

/-! ## A146510.P5865968706028645373

`∑[A188134(a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A146510.P5865968706028645373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A188134 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146510.P5865968706028645373

namespace A146510

/-- `∑[A188134(a(n-1))]` -/
def P5865968706028645373.Spec : Prop :=
  ∀ n, P5865968706028645373.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P429112611227928221

`A143795(n+1)+2*n`
-/

namespace A146510.P429112611227928221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1) + (2 * n : ℤ)

end

end A146510.P429112611227928221

namespace A146510

/-- `A143795(n+1)+2*n` -/
def P429112611227928221.Spec : Prop :=
  ∀ n, P429112611227928221.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P8399219294239265497

`∑[3*A280193(n)²]-2`
-/

namespace A146510.P8399219294239265497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A280193 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A146510.P8399219294239265497

namespace A146510

/-- `∑[3*A280193(n)²]-2` -/
def P8399219294239265497.Spec : Prop :=
  ∀ n, P8399219294239265497.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P16917381126824762814

`A112651(n+1)+Δ[n²]`
-/

namespace A146510.P16917381126824762814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A146510.P16917381126824762814

namespace A146510

/-- `A112651(n+1)+Δ[n²]` -/
def P16917381126824762814.Spec : Prop :=
  ∀ n, P16917381126824762814.a n = A146510 (n + 1)

end A146510

/-! ## A146510.P15384094982568947003

`∑[3*A000032(a((n+1)%2))]` with `a(0)=1`
-/

namespace A146510.P15384094982568947003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * A000032 (f1 ((n + 1) % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146510.P15384094982568947003

namespace A146510

/-- `∑[3*A000032(a((n+1)%2))]` -/
def P15384094982568947003.Spec : Prop :=
  ∀ n, P15384094982568947003.a n = A146510 (n + 1)

end A146510

/-!
# A146511: Numbers congruent to {5, 17} modulo 66.

The programs for A146511, the canonical program `A146511.P17648886867556632399` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146511 has offset 1).

The definition of A146511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146511.P17648886867556632399

`a(n-2)+66` with `a(0)=5, a(1)=17`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146511

/-- `a(n-2)+66` -/
def P17648886867556632399.Spec : Prop :=
  ∀ n, (P17648886867556632399.a n : ℤ) = A146511 (n + 1)

theorem P17648886867556632399.correct : P17648886867556632399.Spec := by
  intro n
  simp only [A146511, Nat.add_sub_cancel]

end A146511

/-! ## A146511.P2647662311177720333

`∑[A015761(a((n+1)%2))]` with `a(0)=5`
-/

namespace A146511.P2647662311177720333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A015761 (f1 ((n + 1) % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146511.P2647662311177720333

namespace A146511

/-- `∑[A015761(a((n+1)%2))]` -/
def P2647662311177720333.Spec : Prop :=
  ∀ n, P2647662311177720333.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P12810303734397194854

`∑[A118424(a(and(1, n+1)))]` with `a(0)=5`
-/

namespace A146511.P12810303734397194854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A118424 (f1 (Nat.land 1 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146511.P12810303734397194854

namespace A146511

/-- `∑[A118424(a(and(1, n+1)))]` -/
def P12810303734397194854.Spec : Prop :=
  ∀ n, P12810303734397194854.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P17822507885589432098

`A247128(A146510(n+1))`
-/

namespace A146511.P17822507885589432098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247128 (A146510 (n + 1)).toNat

end

end A146511.P17822507885589432098

namespace A146511

/-- `A247128(A146510(n+1))` -/
def P17822507885589432098.Spec : Prop :=
  ∀ n, P17822507885589432098.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P15868839899629699907

`A146509(n+1)+4*A146512(n+1)`
-/

namespace A146511.P15868839899629699907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) + 4 * A146512 (n + 1)

end

end A146511.P15868839899629699907

namespace A146511

/-- `A146509(n+1)+4*A146512(n+1)` -/
def P15868839899629699907.Spec : Prop :=
  ∀ n, P15868839899629699907.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P5386344298212180303

`A197652(A197652(n+1)+n+1)+A007310(n+2)`
-/

namespace A146511.P5386344298212180303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (A197652 (n + 1) + (n : ℤ) + 1).toNat + A007310 (n + 2)

end

end A146511.P5386344298212180303

namespace A146511

/-- `A197652(A197652(n+1)+n+1)+A007310(n+2)` -/
def P5386344298212180303.Spec : Prop :=
  ∀ n, P5386344298212180303.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P18348877232158460598

`A113803(A113805(n+1))-A113770(n+2)`
-/

namespace A146511.P18348877232158460598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (A113805 (n + 1)).toNat - A113770 (n + 2)

end

end A146511.P18348877232158460598

namespace A146511

/-- `A113803(A113805(n+1))-A113770(n+2)` -/
def P18348877232158460598.Spec : Prop :=
  ∀ n, P18348877232158460598.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P6792930012665394240

`A016777(A151977(n+1))+A016777(A016777(n))`
-/

namespace A146511.P6792930012665394240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A151977 (n + 1)).toNat + A016777 (A016777 n).toNat

end

end A146511.P6792930012665394240

namespace A146511

/-- `A016777(A151977(n+1))+A016777(A016777(n))` -/
def P6792930012665394240.Spec : Prop :=
  ∀ n, P6792930012665394240.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P18010468435308562890

`A042948(A047470(A047473(n+1)))+n`
-/

namespace A146511.P18010468435308562890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047470 (A047473 (n + 1)).toNat).toNat + (n : ℤ)

end

end A146511.P18010468435308562890

namespace A146511

/-- `A042948(A047470(A047473(n+1)))+n` -/
def P18010468435308562890.Spec : Prop :=
  ∀ n, P18010468435308562890.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P17725024399605632758

`A001651(4*(A146512(n+1)-A004526(n)))`
-/

namespace A146511.P17725024399605632758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (4 * (A146512 (n + 1) - A004526 n)).toNat

end

end A146511.P17725024399605632758

namespace A146511

/-- `A001651(4*(A146512(n+1)-A004526(n)))` -/
def P17725024399605632758.Spec : Prop :=
  ∀ n, P17725024399605632758.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P13070340268328067546

`A001651(4*(A228137(n+1)-A004526(n+1)))`
-/

namespace A146511.P13070340268328067546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (4 * (A228137 (n + 1) - A004526 (n + 1))).toNat

end

end A146511.P13070340268328067546

namespace A146511

/-- `A001651(4*(A228137(n+1)-A004526(n+1)))` -/
def P13070340268328067546.Spec : Prop :=
  ∀ n, P13070340268328067546.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P15790373166458054101

`A301710(A146512(n+1))`
-/

namespace A146511.P15790373166458054101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 (A146512 (n + 1)).toNat

end

end A146511.P15790373166458054101

namespace A146511

/-- `A301710(A146512(n+1))` -/
def P15790373166458054101.Spec : Prop :=
  ∀ n, P15790373166458054101.a n = A146511 (n + 1)

end A146511

/-! ## A146511.P13859660390559623321

`eq[A040611(n), A262083(n)]`
-/

namespace A146511.P13859660390559623321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P13859660390559623321

namespace A146511

/-- `eq[A040611(n), A262083(n)]` -/
def P13859660390559623321.Spec : Prop :=
  ∀ n, (P13859660390559623321.a n : ℤ) = A146511 (n + 1)

end A146511

/-! ## A146511.P10366809367281156937

`eq[A040743(n), A071768(n+1)]`
-/

namespace A146511.P10366809367281156937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040743 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P10366809367281156937

namespace A146511

/-- `eq[A040743(n), A071768(n+1)]` -/
def P10366809367281156937.Spec : Prop :=
  ∀ n, (P10366809367281156937.a n : ℤ) = A146511 (n + 1)

end A146511

/-! ## A146511.P8837543659672154372

`eq[A040863(n), A071768(n+1)]`
-/

namespace A146511.P8837543659672154372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P8837543659672154372

namespace A146511

/-- `eq[A040863(n), A071768(n+1)]` -/
def P8837543659672154372.Spec : Prop :=
  ∀ n, (P8837543659672154372.a n : ℤ) = A146511 (n + 1)

end A146511

/-! ## A146511.P6873785815916858780

`eq[A040611(n), A089123(n+1)]`
-/

namespace A146511.P6873785815916858780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P6873785815916858780

namespace A146511

/-- `eq[A040611(n), A089123(n+1)]` -/
def P6873785815916858780.Spec : Prop :=
  ∀ n, (P6873785815916858780.a n : ℤ) = A146511 (n + 1)

end A146511

/-! ## A146511.P13330149572722385573

`eq[A040636(n), A090369(n+1)]`
-/

namespace A146511.P13330149572722385573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040636 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P13330149572722385573

namespace A146511

/-- `eq[A040636(n), A090369(n+1)]` -/
def P13330149572722385573.Spec : Prop :=
  ∀ n, (P13330149572722385573.a n : ℤ) = A146511 (n + 1)

end A146511

/-! ## A146511.P3238185113388695597

`eq[A040636(n), A104514(n+1)]`
-/

namespace A146511.P3238185113388695597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040636 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P3238185113388695597

namespace A146511

/-- `eq[A040636(n), A104514(n+1)]` -/
def P3238185113388695597.Spec : Prop :=
  ∀ n, (P3238185113388695597.a n : ℤ) = A146511 (n + 1)

end A146511

/-! ## A146511.P6255112500677579761

`eq[A040636(n), A111787(n+1)]`
-/

namespace A146511.P6255112500677579761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040636 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P6255112500677579761

namespace A146511

/-- `eq[A040636(n), A111787(n+1)]` -/
def P6255112500677579761.Spec : Prop :=
  ∀ n, (P6255112500677579761.a n : ℤ) = A146511 (n + 1)

end A146511

/-! ## A146511.P14649380682639423859

`eq[A070434(n), A089123(n+1)]`
-/

namespace A146511.P14649380682639423859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146511.P14649380682639423859

namespace A146511

/-- `eq[A070434(n), A089123(n+1)]` -/
def P14649380682639423859.Spec : Prop :=
  ∀ n, (P14649380682639423859.a n : ℤ) = A146511 (n + 1)

end A146511

/-!
# A146512: Numbers congruent to {1, 3} mod 12.

The programs for A146512, the canonical program `A146512.P10667560224484011414` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146512 has offset 1).

The definition of A146512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146512.P10667560224484011414

`6*n-1+2*(-1)^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146512

/-- `6*n-1+2*(-1)^n` -/
def P10667560224484011414.Spec : Prop :=
  ∀ n, P10667560224484011414.a n = A146512 (n + 1)

theorem P10667560224484011414.correct : P10667560224484011414.Spec := by
  intro n
  simp only [A146512, Nat.add_sub_cancel]

end A146512

/-! ## A146512.P11741120011799103025

`or(1, 3*comp[or(2, n)])`
-/

namespace A146512.P11741120011799103025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A146512.P11741120011799103025

namespace A146512

/-- `or(1, 3*comp[or(2, n)])` -/
def P11741120011799103025.Spec : Prop :=
  ∀ n, (P11741120011799103025.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P15889671245249881639

`∑[12-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A146512.P15889671245249881639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P15889671245249881639

namespace A146512

/-- `∑[12-a(n-1)]` -/
def P15889671245249881639.Spec : Prop :=
  ∀ n, P15889671245249881639.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P13931409125211939289

`∑[∑[ogf((1+2x+9x^2)/(1+x))]]`
-/

namespace A146512.P13931409125211939289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 9] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P13931409125211939289

namespace A146512

/-- `∑[∑[ogf((1+2x+9x^2)/(1+x))]]` -/
def P13931409125211939289.Spec : Prop :=
  ∀ n, P13931409125211939289.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P18193413957402137784

`ogf((1+2x+9x^2)/(1-x-x^2+x^3))`
-/

namespace A146512.P18193413957402137784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 9] [1, -1, -1, 1] n

end

end A146512.P18193413957402137784

namespace A146512

/-- `ogf((1+2x+9x^2)/(1-x-x^2+x^3))` -/
def P18193413957402137784.Spec : Prop :=
  ∀ n, P18193413957402137784.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P15822780537162562630

`record[(2*n+1)/(n%6)!]`
-/

namespace A146512.P15822780537162562630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Nat.factorial (n % 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146512.P15822780537162562630

namespace A146512

/-- `record[(2*n+1)/(n%6)!]` -/
def P15822780537162562630.Spec : Prop :=
  ∀ n, P15822780537162562630.a n = (A146512 (n + 1) : ℚ)

end A146512

/-! ## A146512.P6461774457784216263

`∩[2*n+1, floor((2*n+1)/5+2*n+1)]`
-/

namespace A146512.P6461774457784216263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / 5 + (2 * n + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146512.P6461774457784216263

namespace A146512

/-- `∩[2*n+1, floor((2*n+1)/5+2*n+1)]` -/
def P6461774457784216263.Spec : Prop :=
  ∀ n, (P6461774457784216263.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P14844432568988404742

`∑[gcd(10, A002445(n))]`
-/

namespace A146512.P14844432568988404742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A002445 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P14844432568988404742

namespace A146512

/-- `∑[gcd(10, A002445(n))]` -/
def P14844432568988404742.Spec : Prop :=
  ∀ n, (P14844432568988404742.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P13322621231409803756

`∑[dr(A033046(n))+1]`
-/

namespace A146512.P13322621231409803756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033046 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P13322621231409803756

namespace A146512

/-- `∑[dr(A033046(n))+1]` -/
def P13322621231409803756.Spec : Prop :=
  ∀ n, (P13322621231409803756.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P16984179892921116189

`∑[dr(A195042(n))+1]`
-/

namespace A146512.P16984179892921116189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A195042 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P16984179892921116189

namespace A146512

/-- `∑[dr(A195042(n))+1]` -/
def P16984179892921116189.Spec : Prop :=
  ∀ n, (P16984179892921116189.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P4694594127617372287

`∑[dr(A195147(n))+1]`
-/

namespace A146512.P4694594127617372287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A195147 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P4694594127617372287

namespace A146512

/-- `∑[dr(A195147(n))+1]` -/
def P4694594127617372287.Spec : Prop :=
  ∀ n, (P4694594127617372287.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P8374740621521613178

`∑[dr(A197352(n))+1]`
-/

namespace A146512.P8374740621521613178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A197352 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P8374740621521613178

namespace A146512

/-- `∑[dr(A197352(n))+1]` -/
def P8374740621521613178.Spec : Prop :=
  ∀ n, (P8374740621521613178.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P17436334661298531119

`∑[dr(A342615(n))+1]`
-/

namespace A146512.P17436334661298531119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A342615 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P17436334661298531119

namespace A146512

/-- `∑[dr(A342615(n))+1]` -/
def P17436334661298531119.Spec : Prop :=
  ∀ n, (P17436334661298531119.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P14898009111201366537

`∑[A065137(a(n-1))]` with `a(0)=1`
-/

namespace A146512.P14898009111201366537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A065137 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P14898009111201366537

namespace A146512

/-- `∑[A065137(a(n-1))]` -/
def P14898009111201366537.Spec : Prop :=
  ∀ n, P14898009111201366537.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P4838060386953342018

`∑[A215749(a(n-1))]` with `a(0)=1`
-/

namespace A146512.P4838060386953342018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A215749 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P4838060386953342018

namespace A146512

/-- `∑[A215749(a(n-1))]` -/
def P4838060386953342018.Spec : Prop :=
  ∀ n, P4838060386953342018.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P2671871655457802921

`∑[A246479(a(n-1))]` with `a(0)=1`
-/

namespace A146512.P2671871655457802921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A246479 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P2671871655457802921

namespace A146512

/-- `∑[A246479(a(n-1))]` -/
def P2671871655457802921.Spec : Prop :=
  ∀ n, P2671871655457802921.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P11401559227838992546

`∑[A339090(a(n-1))]` with `a(0)=1`
-/

namespace A146512.P11401559227838992546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A339090 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146512.P11401559227838992546

namespace A146512

/-- `∑[A339090(a(n-1))]` -/
def P11401559227838992546.Spec : Prop :=
  ∀ n, P11401559227838992546.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P7848873102666434709

`∪[A017533(n), A017557(n)]`
-/

namespace A146512.P7848873102666434709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A146512.P7848873102666434709

namespace A146512

/-- `∪[A017533(n), A017557(n)]` -/
def P7848873102666434709.Spec : Prop :=
  ∀ n, (P7848873102666434709.a n : ℤ) = A146512 (n + 1)

end A146512

/-! ## A146512.P11875002805904156325

`A242215(n)%A091999(n+1)`
-/

namespace A146512.P11875002805904156325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242215 n) (A091999 (n + 1))

end

end A146512.P11875002805904156325

namespace A146512

/-- `A242215(n)%A091999(n+1)` -/
def P11875002805904156325.Spec : Prop :=
  ∀ n, P11875002805904156325.a n = A146512 (n + 1)

end A146512

/-! ## A146512.P17357022819429192344

`A348845(n)%A225539(n+1)`
-/

namespace A146512.P17357022819429192344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348845 n) (A225539 (n + 1))

end

end A146512.P17357022819429192344

namespace A146512

/-- `A348845(n)%A225539(n+1)` -/
def P17357022819429192344.Spec : Prop :=
  ∀ n, P17357022819429192344.a n = A146512 (n + 1)

end A146512

/-!
# A146523: Binomial transform of A010685.

The programs for A146523, the canonical program `A146523.P15942672408006870669` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146523 has offset 0).

The definition of A146523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146523.P4113601937970053729

`ogf((1+3x)/(1-2x))`
-/

namespace A146523.P4113601937970053729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2] n

end

end A146523.P4113601937970053729

namespace A146523

/-- `ogf((1+3x)/(1-2x))` -/
def P4113601937970053729.Spec : Prop :=
  ∀ n, P4113601937970053729.a n = A146523 n

end A146523

/-! ## A146523.P15942672408006870669

`2*a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146523

/-- `2*a(n-1)` -/
def P15942672408006870669.Spec : Prop :=
  ∀ n, (P15942672408006870669.a n : ℤ) = A146523 n

theorem P15942672408006870669.correct : P15942672408006870669.Spec := by
  intro n
  simp only [A146523]

end A146523

/-! ## A146523.P4582625723805420916

`a(n-1)/sqrt(1/4)` with `a(0)=1, a(1)=5`
-/

namespace A146523.P4582625723805420916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A146523.P4582625723805420916

namespace A146523

/-- `a(n-1)/sqrt(1/4)` -/
def P4582625723805420916.Spec : Prop :=
  ∀ n, P4582625723805420916.a n = (A146523 n : ℝ)

end A146523

/-! ## A146523.P11498492234201391238

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A146523.P11498492234201391238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 1)

end

end A146523.P11498492234201391238

namespace A146523

/-- `a(n-1)+a(n-1)` -/
def P11498492234201391238.Spec : Prop :=
  ∀ n, (P11498492234201391238.a n : ℤ) = A146523 n

theorem P11498492234201391238.correct : P11498492234201391238.Spec := by
  intro n
  simp only [A146523, Nat.add_sub_cancel, A146523.P11498492234201391238.a, A146523.P15942672408006870669.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A146523

/-! ## A146523.P6705134018120116098

`lcm(2^(n-1), a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A146523.P6705134018120116098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A146523.P6705134018120116098

namespace A146523

/-- `lcm(2^(n-1), a(n-1))` -/
def P6705134018120116098.Spec : Prop :=
  ∀ n, (P6705134018120116098.a n : ℤ) = A146523 n

end A146523

/-! ## A146523.P13449972669722004652

`2^n+3*floor(2^(n-1))`
-/

namespace A146523.P13449972669722004652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + 3 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A146523.P13449972669722004652

namespace A146523

/-- `2^n+3*floor(2^(n-1))` -/
def P13449972669722004652.Spec : Prop :=
  ∀ n, P13449972669722004652.a n = A146523 n

end A146523

/-! ## A146523.P16566689834889185543

`A029749(3*n)`
-/

namespace A146523.P16566689834889185543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (3 * n)

end

end A146523.P16566689834889185543

namespace A146523

/-- `A029749(3*n)` -/
def P16566689834889185543.Spec : Prop :=
  ∀ n, P16566689834889185543.a n = A146523 n

end A146523

/-! ## A146523.P2178845890067213549

`∑[abs(A166577(n))]`
-/

namespace A146523.P2178845890067213549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166577 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146523.P2178845890067213549

namespace A146523

/-- `∑[abs(A166577(n))]` -/
def P2178845890067213549.Spec : Prop :=
  ∀ n, P2178845890067213549.a n = A146523 n

end A146523

/-! ## A146523.P16906848972352633808

`abs(Δ[A140360(n)])`
-/

namespace A146523.P16906848972352633808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A146523.P16906848972352633808

namespace A146523

/-- `abs(Δ[A140360(n)])` -/
def P16906848972352633808.Spec : Prop :=
  ∀ n, P16906848972352633808.a n = A146523 n

end A146523

/-! ## A146523.P4099508807453057915

`A114744(3*n+1)`
-/

namespace A146523.P4099508807453057915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114744 (3 * n + 1)

end

end A146523.P4099508807453057915

namespace A146523

/-- `A114744(3*n+1)` -/
def P4099508807453057915.Spec : Prop :=
  ∀ n, P4099508807453057915.a n = A146523 n

end A146523

/-! ## A146523.P17132851784180689299

`A029750(4*n+1)`
-/

namespace A146523.P17132851784180689299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (4 * n + 1)

end

end A146523.P17132851784180689299

namespace A146523

/-- `A029750(4*n+1)` -/
def P17132851784180689299.Spec : Prop :=
  ∀ n, P17132851784180689299.a n = A146523 n

end A146523

/-! ## A146523.P10949410877288124109

`A084215((n+1)%(2*n+1))`
-/

namespace A146523.P10949410877288124109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 ((n + 1) % (2 * n + 1))

end

end A146523.P10949410877288124109

namespace A146523

/-- `A084215((n+1)%(2*n+1))` -/
def P10949410877288124109.Spec : Prop :=
  ∀ n, P10949410877288124109.a n = A146523 n

end A146523

/-! ## A146523.P5948165715015197692

`A103969(A008706(n))`
-/

namespace A146523.P5948165715015197692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (A008706 n).toNat

end

end A146523.P5948165715015197692

namespace A146523

/-- `A103969(A008706(n))` -/
def P5948165715015197692.Spec : Prop :=
  ∀ n, P5948165715015197692.a n = A146523 n

end A146523

/-! ## A146523.P6901909143611345747

`A029745(A103517(n))`
-/

namespace A146523.P6901909143611345747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029745 (A103517 n).toNat

end

end A146523.P6901909143611345747

namespace A146523

/-- `A029745(A103517(n))` -/
def P6901909143611345747.Spec : Prop :=
  ∀ n, P6901909143611345747.a n = A146523 n

end A146523

/-! ## A146523.P5562784317636247129

`A084215(A087156(n+1))`
-/

namespace A146523.P5562784317636247129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (A087156 (n + 1)).toNat

end

end A146523.P5562784317636247129

namespace A146523

/-- `A084215(A087156(n+1))` -/
def P5562784317636247129.Spec : Prop :=
  ∀ n, P5562784317636247129.a n = A146523 n

end A146523

/-! ## A146523.P4447318159055051860

`A333905(A267872(n+1))`
-/

namespace A146523.P4447318159055051860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (A267872 (n + 1)).toNat

end

end A146523.P4447318159055051860

namespace A146523

/-- `A333905(A267872(n+1))` -/
def P4447318159055051860.Spec : Prop :=
  ∀ n, P4447318159055051860.a n = A146523 n

end A146523

/-! ## A146523.P12639996936399800320

`A084215(A199969(n+2))`
-/

namespace A146523.P12639996936399800320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (A199969 (n + 2)).toNat

end

end A146523.P12639996936399800320

namespace A146523

/-- `A084215(A199969(n+2))` -/
def P12639996936399800320.Spec : Prop :=
  ∀ n, P12639996936399800320.a n = A146523 n

end A146523

/-! ## A146523.P6756589338990375564

`and(A052940(n), A135092(n))`
-/

namespace A146523.P6756589338990375564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052940 n) (A135092 n)

end

end A146523.P6756589338990375564

namespace A146523

/-- `and(A052940(n), A135092(n))` -/
def P6756589338990375564.Spec : Prop :=
  ∀ n, P6756589338990375564.a n = A146523 n

end A146523

/-! ## A146523.P2484195195880352297

`and(A052940(n), A157823(n))`
-/

namespace A146523.P2484195195880352297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052940 n) (A157823 n)

end

end A146523.P2484195195880352297

namespace A146523

/-- `and(A052940(n), A157823(n))` -/
def P2484195195880352297.Spec : Prop :=
  ∀ n, P2484195195880352297.a n = A146523 n

end A146523

/-! ## A146523.P8645570605427991133

`and(A135092(n), A168642(n))`
-/

namespace A146523.P8645570605427991133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135092 n) (A168642 n)

end

end A146523.P8645570605427991133

namespace A146523

/-- `and(A135092(n), A168642(n))` -/
def P8645570605427991133.Spec : Prop :=
  ∀ n, P8645570605427991133.a n = A146523 n

end A146523

/-!
# A146524: a(n) is the largest nonnegative integer m such that 2*n*k+1 is prime for all k where 1<=k<=m. a(n) = 0 if 2n+1 is composite.

The programs for A146524, there is no canonical definition to state claims against.
-/

/-! ## A146524.P10437977728988881649

`floor(A061767(2*(n+1))/(2*(n+1)))-1`
-/

namespace A146524.P10437977728988881649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061767 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)⌋ - 1

end

end A146524.P10437977728988881649

/-! ## A146524.P13263060365513584511

`floor(A061767(2*(n+1))/A070846(n+1))`
-/

namespace A146524.P13263060365513584511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061767 (2 * (n + 1)) : ℚ) / (A070846 (n + 1) : ℚ)⌋

end

end A146524.P13263060365513584511

/-! ## A146524.P7484779902407721616

`floor(A061767(2*(n+1))/A307437(n+1))`
-/

namespace A146524.P7484779902407721616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061767 (2 * (n + 1)) : ℚ) / (A307437 (n + 1) : ℚ)⌋

end

end A146524.P7484779902407721616

/-! ## A146524.P11012443851683535865

`floor(A061767(2*(n+1))/A034694(2*(n+1)))`
-/

namespace A146524.P11012443851683535865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061767 (2 * (n + 1)) : ℚ) / (A034694 (2 * (n + 1)) : ℚ)⌋

end

end A146524.P11012443851683535865

/-! ## A146524.P2124157056797747296

`and(A010684(A127293(n)), A225460(n))`
-/

namespace A146524.P2124157056797747296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 (A127293 n).toNat) (A225460 n)

end

end A146524.P2124157056797747296

/-!
# A146525: a(n) is the largest nonnegative integer m such that 2*n*k-1 is prime for all k where 1<=k<=m. a(n) = 0 if 2n-1 is composite.

The programs for A146525, there is no canonical definition to state claims against.
-/

/-! ## A146525.P10206877623865626011

`A266981(A140808(2*(n+1)))%(A016825(n)-n)`
-/

namespace A146525.P10206877623865626011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266981 (A140808 (2 * (n + 1))).toNat) (A016825 n - (n : ℤ))

end

end A146525.P10206877623865626011

/-!
# A146527: a(n) = number of distinct composites, when each is represented in binary, that occur as substrings within the binary representation of n.

The programs for A146527, there is no canonical definition to state claims against.
-/

/-! ## A146527.P4737540244245848084

`A122953(n+1)-(A078826(n+1)+1)`
-/

namespace A146527.P4737540244245848084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122953 (n + 1) - (A078826 (n + 1) + 1)

end

end A146527.P4737540244245848084

/-! ## A146527.P15451833605442048982

`A066247(A111866(n))*A088428(A062948(n+1))`
-/

namespace A146527.P15451833605442048982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A111866 n).toNat * A088428 (A062948 (n + 1)).toNat

end

end A146527.P15451833605442048982

/-! ## A146527.P14306721272183192285

`A124760(A047675(n+1))+A072670(n)`
-/

namespace A146527.P14306721272183192285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A047675 (n + 1)).toNat + A072670 n

end

end A146527.P14306721272183192285

/-! ## A146527.P10367547616672000437

`A063962(A032020(n)+A000055(n))`
-/

namespace A146527.P10367547616672000437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A032020 n + A000055 n).toNat

end

end A146527.P10367547616672000437

/-! ## A146527.P16147966838854653748

`A102679(A001405(n))+A055212(n+1)`
-/

namespace A146527.P16147966838854653748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A001405 n).toNat + A055212 (n + 1)

end

end A146527.P16147966838854653748

/-!
# A146528: a(0) = 4; for n >= 1, a(n) = 2^n + 4.

The programs for A146528, the canonical program `A146528.P13692325072109288007` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146528 has offset 0).

The definition of A146528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146528.P13692325072109288007

`or(1, 2^n)+3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146528

/-- `or(1, 2^n)+3` -/
def P13692325072109288007.Spec : Prop :=
  ∀ n, (P13692325072109288007.a n : ℤ) = A146528 n

theorem P13692325072109288007.correct : P13692325072109288007.Spec := by
  intro n
  simp only [A146528]

end A146528

/-! ## A146528.P12379480290271153533

`and(2^n+4, -2)`
-/

namespace A146528.P12379480290271153533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 ^ n + 4 : ℤ) (-2)

end

end A146528.P12379480290271153533

namespace A146528

/-- `and(2^n+4, -2)` -/
def P12379480290271153533.Spec : Prop :=
  ∀ n, P12379480290271153533.a n = A146528 n

end A146528

/-! ## A146528.P2090177344478426911

`∑[ogf((-4+6x+2x^2)/(-1+2x))]`
-/

namespace A146528.P2090177344478426911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, -2] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146528.P2090177344478426911

namespace A146528

/-- `∑[ogf((-4+6x+2x^2)/(-1+2x))]` -/
def P2090177344478426911.Spec : Prop :=
  ∀ n, P2090177344478426911.a n = A146528 n

end A146528

/-! ## A146528.P11178245105959206565

`ogf((4-6x-2x^2)/(1-3x+2x^2))`
-/

namespace A146528.P11178245105959206565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, -2] [1, -3, 2] n

end

end A146528.P11178245105959206565

namespace A146528

/-- `ogf((4-6x-2x^2)/(1-3x+2x^2))` -/
def P11178245105959206565.Spec : Prop :=
  ∀ n, P11178245105959206565.a n = A146528 n

end A146528

/-! ## A146528.P12669939819080195575

`2*(a(n-1)-2)` with `a(0)=4, a(1)=6`
-/

namespace A146528.P12669939819080195575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  2 * (a (n - 1) - 2)

end

end A146528.P12669939819080195575

namespace A146528

/-- `2*(a(n-1)-2)` -/
def P12669939819080195575.Spec : Prop :=
  ∀ n, P12669939819080195575.a n = A146528 n

end A146528

/-! ## A146528.P17658541131947036596

`2*(floor(2^(n-1))+2)`
-/

namespace A146528.P17658541131947036596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2)

end

end A146528.P17658541131947036596

namespace A146528

/-- `2*(floor(2^(n-1))+2)` -/
def P17658541131947036596.Spec : Prop :=
  ∀ n, P17658541131947036596.a n = A146528 n

end A146528

/-! ## A146528.P8603282787460316702

`gcd(2, a(n-1))^n+4` with `a(0)=4`
-/

namespace A146528.P8603282787460316702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.gcd 2 (a (n - 1)) ^ n + 4

end

end A146528.P8603282787460316702

namespace A146528

/-- `gcd(2, a(n-1))^n+4` -/
def P8603282787460316702.Spec : Prop :=
  ∀ n, (P8603282787460316702.a n : ℤ) = A146528 n

end A146528

/-! ## A146528.P8225563691708386215

`a(n-1)+2^(n-1)` with `a(0)=4, a(1)=6`
-/

namespace A146528.P8225563691708386215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A146528.P8225563691708386215

namespace A146528

/-- `a(n-1)+2^(n-1)` -/
def P8225563691708386215.Spec : Prop :=
  ∀ n, P8225563691708386215.a n = (A146528 n : ℚ)

end A146528

/-! ## A146528.P11923069204030186759

`∑[2^(C(3, n+2)+n-1)]`
-/

namespace A146528.P11923069204030186759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose 3 (n + 2) : ℤ) + ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146528.P11923069204030186759

namespace A146528

/-- `∑[2^(C(3, n+2)+n-1)]` -/
def P11923069204030186759.Spec : Prop :=
  ∀ n, P11923069204030186759.a n = (A146528 n : ℚ)

end A146528

/-! ## A146528.P6174439571120224604

`floor(a(n-1)+a(n-1)-4)` with `a(0)=4, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A146528.P6174439571120224604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) + (a (n - 1) - 4)

end

end A146528.P6174439571120224604

namespace A146528

/-- `floor(a(n-1)+a(n-1)-4)` -/
def P6174439571120224604.Spec : Prop :=
  ∀ n, P6174439571120224604.a n = A146528 n

end A146528

/-! ## A146528.P8031977579955359620

`floor(a(n-1)-(4-a(n-1)))` with `a(0)=4, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A146528.P8031977579955359620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) - (4 - a (n - 1))

end

end A146528.P8031977579955359620

namespace A146528

/-- `floor(a(n-1)-(4-a(n-1)))` -/
def P8031977579955359620.Spec : Prop :=
  ∀ n, P8031977579955359620.a n = A146528 n

end A146528

/-! ## A146528.P7091611788215656360

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A146528.P7091611788215656360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146528.P7091611788215656360

namespace A146528

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P7091611788215656360.Spec : Prop :=
  ∀ n, (P7091611788215656360.a n : ℤ) = A146528 n

end A146528

/-! ## A146528.P16173611517438312370

`A133140(n)+2`
-/

namespace A146528.P16173611517438312370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 n + 2

end

end A146528.P16173611517438312370

namespace A146528

/-- `A133140(n)+2` -/
def P16173611517438312370.Spec : Prop :=
  ∀ n, P16173611517438312370.a n = A146528 n

end A146528

/-! ## A146528.P14311242389145067382

`A083318(n)+3`
-/

namespace A146528.P14311242389145067382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n + 3

end

end A146528.P14311242389145067382

namespace A146528

/-- `A083318(n)+3` -/
def P14311242389145067382.Spec : Prop :=
  ∀ n, P14311242389145067382.a n = A146528 n

theorem P14311242389145067382.correct : P14311242389145067382.Spec := by
  intro n
  simp only [A146528, Nat.add_sub_cancel, A146528.P14311242389145067382.a, A146528.P13692325072109288007.a, A083318, A083318.P6902906341366749197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146528

/-! ## A146528.P7197588365353103606

`A155559(n)+4`
-/

namespace A146528.P7197588365353103606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + 4

end

end A146528.P7197588365353103606

namespace A146528

/-- `A155559(n)+4` -/
def P7197588365353103606.Spec : Prop :=
  ∀ n, P7197588365353103606.a n = A146528 n

end A146528

/-! ## A146528.P17614979100801333482

`A127904(n+1)+3`
-/

namespace A146528.P17614979100801333482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (n + 1) + 3

end

end A146528.P17614979100801333482

namespace A146528

/-- `A127904(n+1)+3` -/
def P17614979100801333482.Spec : Prop :=
  ∀ n, P17614979100801333482.a n = A146528 n

end A146528

/-! ## A146528.P9047077659119981773

`A131572(2*n)+4`
-/

namespace A146528.P9047077659119981773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n) + 4

end

end A146528.P9047077659119981773

namespace A146528

/-- `A131572(2*n)+4` -/
def P9047077659119981773.Spec : Prop :=
  ∀ n, P9047077659119981773.a n = A146528 n

end A146528

/-! ## A146528.P11096130967891980308

`A132045(n)+3+n`
-/

namespace A146528.P11096130967891980308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 n + 3 + (n : ℤ)

end

end A146528.P11096130967891980308

namespace A146528

/-- `A132045(n)+3+n` -/
def P11096130967891980308.Spec : Prop :=
  ∀ n, P11096130967891980308.a n = A146528 n

end A146528

/-! ## A146528.P12470881614318760725

`A255176(n)+2^n`
-/

namespace A146528.P12470881614318760725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n + (2 ^ n : ℤ)

end

end A146528.P12470881614318760725

namespace A146528

/-- `A255176(n)+2^n` -/
def P12470881614318760725.Spec : Prop :=
  ∀ n, P12470881614318760725.a n = A146528 n

end A146528

/-! ## A146528.P353875540188198559

`∑[A090129(n+1)]+3`
-/

namespace A146528.P353875540188198559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A146528.P353875540188198559

namespace A146528

/-- `∑[A090129(n+1)]+3` -/
def P353875540188198559.Spec : Prop :=
  ∀ n, P353875540188198559.a n = A146528 n

end A146528

/-!
# A146529: a(0) = 6, a(n) = v(n) + v(n-1) - 2 where v(0)=4 and v(n) = 2^n + 4.

The programs for A146529, the canonical program `A146529.P10986284262004877072` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146529 has offset 0).

The definition of A146529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146529.P10986284262004877072

`3*a(n-1)-2*a(n-2)` with `a(0)=6, a(1)=8, a(2)=12, a(3)=18`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146529

/-- `3*a(n-1)-2*a(n-2)` -/
def P10986284262004877072.Spec : Prop :=
  ∀ n, P10986284262004877072.a n = A146529 n

theorem P10986284262004877072.correct : P10986284262004877072.Spec := by
  intro n
  simp only [A146529]

end A146529

/-! ## A146529.P9467656230846622635

`∑[ogf((-6+10x+2x^3)/(-1+2x))]`
-/

namespace A146529.P9467656230846622635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 0, -2] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146529.P9467656230846622635

namespace A146529

/-- `∑[ogf((-6+10x+2x^3)/(-1+2x))]` -/
def P9467656230846622635.Spec : Prop :=
  ∀ n, P9467656230846622635.a n = A146529 n

end A146529

/-! ## A146529.P4969391545996537198

`ogf((6-10x-2x^3)/(1-3x+2x^2))`
-/

namespace A146529.P4969391545996537198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 0, -2] [1, -3, 2] n

end

end A146529.P4969391545996537198

namespace A146529

/-- `ogf((6-10x-2x^3)/(1-3x+2x^2))` -/
def P4969391545996537198.Spec : Prop :=
  ∀ n, P4969391545996537198.a n = A146529 n

end A146529

/-! ## A146529.P907238030736476444

`∑[2*a(n-1)]` with `a(0)=6, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A146529.P907238030736476444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2, 4, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146529.P907238030736476444

namespace A146529

/-- `∑[2*a(n-1)]` -/
def P907238030736476444.Spec : Prop :=
  ∀ n, (P907238030736476444.a n : ℤ) = A146529 n

end A146529

/-! ## A146529.P18036671691798742757

`2*floor(3*(2^(n-2)+1))`
-/

namespace A146529.P18036671691798742757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊3 * ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 1)⌋

end

end A146529.P18036671691798742757

namespace A146529

/-- `2*floor(3*(2^(n-2)+1))` -/
def P18036671691798742757.Spec : Prop :=
  ∀ n, P18036671691798742757.a n = A146529 n

end A146529

/-! ## A146529.P5919753220391590993

`∑[a(n-1)+a(n-1)]` with `a(0)=6, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A146529.P5919753220391590993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2, 4, 6] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146529.P5919753220391590993

namespace A146529

/-- `∑[a(n-1)+a(n-1)]` -/
def P5919753220391590993.Spec : Prop :=
  ∀ n, (P5919753220391590993.a n : ℤ) = A146529 n

end A146529

/-! ## A146529.P16283252777885578270

`A060013(n+3)+3`
-/

namespace A146529.P16283252777885578270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060013 (n + 3) + 3

end

end A146529.P16283252777885578270

namespace A146529

/-- `A060013(n+3)+3` -/
def P16283252777885578270.Spec : Prop :=
  ∀ n, P16283252777885578270.a n = A146529 n

end A146529

/-! ## A146529.P3239135661221400132

`or(1, A003461(n))+1`
-/

namespace A146529.P3239135661221400132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003461 n) + 1

end

end A146529.P3239135661221400132

namespace A146529

/-- `or(1, A003461(n))+1` -/
def P3239135661221400132.Spec : Prop :=
  ∀ n, P3239135661221400132.a n = A146529 n

end A146529

/-! ## A146529.P5465066285533691683

`or(1, A003945(n))+5`
-/

namespace A146529.P5465066285533691683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003945 n) + 5

end

end A146529.P5465066285533691683

namespace A146529

/-- `or(1, A003945(n))+5` -/
def P5465066285533691683.Spec : Prop :=
  ∀ n, P5465066285533691683.a n = A146529 n

end A146529

/-! ## A146529.P8309528289777264701

`A087009(n+1)+a(n-1)` with `a(0)=6`
-/

namespace A146529.P8309528289777264701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A087009 (n + 1) + a (n - 1)

end

end A146529.P8309528289777264701

namespace A146529

/-- `A087009(n+1)+a(n-1)` -/
def P8309528289777264701.Spec : Prop :=
  ∀ n, P8309528289777264701.a n = A146529 n

end A146529

/-! ## A146529.P9936522705130333812

`2*∑[round(A042950(n)/4)]+4`
-/

namespace A146529.P9936522705130333812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A042950 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A146529.P9936522705130333812

namespace A146529

/-- `2*∑[round(A042950(n)/4)]+4` -/
def P9936522705130333812.Spec : Prop :=
  ∀ n, P9936522705130333812.a n = A146529 n

end A146529

/-! ## A146529.P14115944944027652713

`A168614(n)+A127904(n)`
-/

namespace A146529.P14115944944027652713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 n + A127904 n

end

end A146529.P14115944944027652713

namespace A146529

/-- `A168614(n)+A127904(n)` -/
def P14115944944027652713.Spec : Prop :=
  ∀ n, P14115944944027652713.a n = A146529 n

end A146529

/-! ## A146529.P14232278270809393085

`A089985(n+1)+A056469(n)+2`
-/

namespace A146529.P14232278270809393085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089985 (n + 1) + (A056469 n + 2)

end

end A146529.P14232278270809393085

namespace A146529

/-- `A089985(n+1)+A056469(n)+2` -/
def P14232278270809393085.Spec : Prop :=
  ∀ n, P14232278270809393085.a n = A146529 n

end A146529

/-! ## A146529.P17540679194767944445

`A056469(A184985(n+1))+A056469(n)+2`
-/

namespace A146529.P17540679194767944445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 (A184985 (n + 1)).toNat + (A056469 n + 2)

end

end A146529.P17540679194767944445

namespace A146529

/-- `A056469(A184985(n+1))+A056469(n)+2` -/
def P17540679194767944445.Spec : Prop :=
  ∀ n, P17540679194767944445.a n = A146529 n

end A146529

/-! ## A146529.P12530462717745291957

`A056469(A199969(n+1))+2*A056469(n)`
-/

namespace A146529.P12530462717745291957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 (A199969 (n + 1)).toNat + 2 * A056469 n

end

end A146529.P12530462717745291957

namespace A146529

/-- `A056469(A199969(n+1))+2*A056469(n)` -/
def P12530462717745291957.Spec : Prop :=
  ∀ n, P12530462717745291957.a n = A146529 n

end A146529

/-! ## A146529.P7710057146227186324

`A052548(n+1)+A052548(n)-A369491(n)`
-/

namespace A146529.P7710057146227186324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (n + 1) + (A052548 n - A369491 n)

end

end A146529.P7710057146227186324

namespace A146529

/-- `A052548(n+1)+A052548(n)-A369491(n)` -/
def P7710057146227186324.Spec : Prop :=
  ∀ n, P7710057146227186324.a n = A146529 n

end A146529

/-!
# A146531: Triangle read by rows: a(n) = 3^floor(n/2)*Gamma(1 + floor(n/2)); t(n,m) = a(n)/(a(n - m)*a(m)).

The programs for A146531, there is no canonical definition to state claims against.
-/

/-! ## A146531.P9111166336652936822

`2*A146532(n)-A211226(n)`
-/

namespace A146531.P9111166336652936822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146532 n - A211226 n

end

end A146531.P9111166336652936822

/-! ## A146531.P7970247321565809339

`gcd(3*A211226(n), A051159(n))`
-/

namespace A146531.P7970247321565809339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A211226 n) (A051159 n)

end

end A146531.P7970247321565809339

/-! ## A146531.P9774185016500127867

`A004277(A146532(n))-A211226(n)`
-/

namespace A146531.P9774185016500127867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A146532 n).toNat - A211226 n

end

end A146531.P9774185016500127867

/-! ## A146531.P4921653297802734768

`A010684(A004198(n))*A211226(n)`
-/

namespace A146531.P4921653297802734768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A004198 n).toNat * A211226 n

end

end A146531.P4921653297802734768

/-! ## A146531.P7503789535697087976

`A010684(A004247(n))*A211226(n)`
-/

namespace A146531.P7503789535697087976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A004247 n).toNat * A211226 n

end

end A146531.P7503789535697087976

/-! ## A146531.P14217226007335956585

`gcd(A008486(A211226(n)), A051159(n))`
-/

namespace A146531.P14217226007335956585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 (A211226 n).toNat) (A051159 n)

end

end A146531.P14217226007335956585

/-! ## A146531.P15099947906699996903

`A146532(n)+A211226(n)-A051159(n)`
-/

namespace A146531.P15099947906699996903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146532 n + (A211226 n - A051159 n)

end

end A146531.P15099947906699996903

/-! ## A146531.P9361579953033124906

`gcd(A211226(n)+A146532(n), A013622(n))`
-/

namespace A146531.P9361579953033124906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211226 n + A146532 n) (A013622 n)

end

end A146531.P9361579953033124906

/-!
# A146532: Triangle read by rows: a(n)=2^Floor[n/2]*Gamma[1 + Floor[n/2]]; t(n,m) = a[n]/(a[n - m]*a[m]).

The programs for A146532, there is no canonical definition to state claims against.
-/

/-! ## A146532.P6069599746674288690

`lcm(A082907(n), A211226(n))`
-/

namespace A146532.P6069599746674288690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082907 n) (A211226 n)

end

end A146532.P6069599746674288690

/-! ## A146532.P4791226433706272498

`2*A211226(n)-A051159(n)`
-/

namespace A146532.P4791226433706272498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211226 n - A051159 n

end

end A146532.P4791226433706272498

/-! ## A146532.P5708622505468809438

`(2-A106465(n))*A211226(n)`
-/

namespace A146532.P5708622505468809438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A106465 n) * A211226 n

end

end A146532.P5708622505468809438

/-! ## A146532.P13659243486370772852

`(A211226(n)+A146531(n))/2`
-/

namespace A146532.P13659243486370772852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211226 n + A146531 n : ℚ) / 2

end

end A146532.P13659243486370772852

/-! ## A146532.P1003274514844026539

`gcd(2*A211226(n), A013622(n))`
-/

namespace A146532.P1003274514844026539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A211226 n) (A013622 n)

end

end A146532.P1003274514844026539

/-! ## A146532.P9084875834860398565

`gcd(2, A106470(n))*A211226(n)`
-/

namespace A146532.P9084875834860398565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A106470 n) : ℤ) * A211226 n

end

end A146532.P9084875834860398565

/-! ## A146532.P13514102353664330665

`A004526(A211226(n)+A146531(n))`
-/

namespace A146532.P13514102353664330665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211226 n + A146531 n).toNat

end

end A146532.P13514102353664330665

/-! ## A146532.P9235916029440351549

`A246277(A211226(n)+A146531(n))`
-/

namespace A146532.P9235916029440351549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A211226 n + A146531 n).toNat

end

end A146532.P9235916029440351549

/-! ## A146532.P11111713677609637678

`A004277(A211226(n))-A051159(n)`
-/

namespace A146532.P11111713677609637678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A211226 n).toNat - A051159 n

end

end A146532.P11111713677609637678

/-! ## A146532.P9304746423335065086

`A000034(A004198(n))*A211226(n)`
-/

namespace A146532.P9304746423335065086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004198 n).toNat * A211226 n

end

end A146532.P9304746423335065086

/-!
# A146533: Catalan transform of A135092.

The programs for A146533, the canonical program `A146533.P16673604564613569017` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146533 has offset 0).

The definition of A146533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146533.P15882951951573887296

`(4-2/n)*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A146533.P15882951951573887296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A146533.P15882951951573887296

namespace A146533

/-- `(4-2/n)*a(n-1)` -/
def P15882951951573887296.Spec : Prop :=
  ∀ n, P15882951951573887296.a n = (A146533 n : ℚ)

end A146533

/-! ## A146533.P16228256911610278711

`2*(2-n^(-1))*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A146533.P16228256911610278711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A146533.P16228256911610278711

namespace A146533

/-- `2*(2-n^(-1))*a(n-1)` -/
def P16228256911610278711.Spec : Prop :=
  ∀ n, P16228256911610278711.a n = (A146533 n : ℚ)

end A146533

/-! ## A146533.P9601699712078002371

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A146533.P9601699712078002371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146533.P9601699712078002371

namespace A146533

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P9601699712078002371.Spec : Prop :=
  ∀ n, P9601699712078002371.a n = (A146533 n : ℚ)

end A146533

/-! ## A146533.P9245944656039485959

`A262543(n+1)+A026619(n+1)`
-/

namespace A146533.P9245944656039485959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262543 (n + 1) + A026619 (n + 1)

end

end A146533.P9245944656039485959

namespace A146533

/-- `A262543(n+1)+A026619(n+1)` -/
def P9245944656039485959.Spec : Prop :=
  ∀ n, P9245944656039485959.a n = A146533 n

end A146533

/-! ## A146533.P11335903184197940160

`A029609(n)+A029609(n)-A029651(n)`
-/

namespace A146533.P11335903184197940160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029609 n + (A029609 n - A029651 n)

end

end A146533.P11335903184197940160

namespace A146533

/-- `A029609(n)+A029609(n)-A029651(n)` -/
def P11335903184197940160.Spec : Prop :=
  ∀ n, P11335903184197940160.a n = A146533 n

end A146533

/-! ## A146533.P15754027199882746652

`A029609(n)+A100320(n)-A000984(n)`
-/

namespace A146533.P15754027199882746652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029609 n + (A100320 n - A000984 n)

end

end A146533.P15754027199882746652

namespace A146533

/-- `A029609(n)+A100320(n)-A000984(n)` -/
def P15754027199882746652.Spec : Prop :=
  ∀ n, P15754027199882746652.a n = A146533 n

end A146533

/-! ## A146533.P16673604564613569017

`A029651(n)+A144706(n)-A000984(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A146533

/-- `A029651(n)+A144706(n)-A000984(n)` -/
def P16673604564613569017.Spec : Prop :=
  ∀ n, P16673604564613569017.a n = A146533 n

theorem P16673604564613569017.correct : P16673604564613569017.Spec := by
  intro n
  simp only [A146533]

end A146533

/-! ## A146533.P11772198284457072013

`A000984(n)+A146534(n)-A029651(n)`
-/

namespace A146533.P11772198284457072013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A146534 n - A029651 n)

end

end A146533.P11772198284457072013

namespace A146533

/-- `A000984(n)+A146534(n)-A029651(n)` -/
def P11772198284457072013.Spec : Prop :=
  ∀ n, P11772198284457072013.a n = A146533 n

end A146533

/-! ## A146533.P11668335616330570815

`A000984(n)+A144706(n)-A088218(n)`
-/

namespace A146533.P11668335616330570815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A144706 n - A088218 n)

end

end A146533.P11668335616330570815

namespace A146533

/-- `A000984(n)+A144706(n)-A088218(n)` -/
def P11668335616330570815.Spec : Prop :=
  ∀ n, P11668335616330570815.a n = A146533 n

end A146533

/-! ## A146533.P10427900717337014290

`A088218(n)+A146534(n)-A000984(n)`
-/

namespace A146533.P10427900717337014290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + (A146534 n - A000984 n)

end

end A146533.P10427900717337014290

namespace A146533

/-- `A088218(n)+A146534(n)-A000984(n)` -/
def P10427900717337014290.Spec : Prop :=
  ∀ n, P10427900717337014290.a n = A146533 n

end A146533

/-! ## A146533.P2958319973998114198

`A029609(n)+A144706(n)-A100320(n)`
-/

namespace A146533.P2958319973998114198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029609 n + (A144706 n - A100320 n)

end

end A146533.P2958319973998114198

namespace A146533

/-- `A029609(n)+A144706(n)-A100320(n)` -/
def P2958319973998114198.Spec : Prop :=
  ∀ n, P2958319973998114198.a n = A146533 n

end A146533

/-! ## A146533.P741470673587918221

`A100320(n)+A144706(n)-A029651(n)`
-/

namespace A146533.P741470673587918221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + (A144706 n - A029651 n)

end

end A146533.P741470673587918221

namespace A146533

/-- `A100320(n)+A144706(n)-A029651(n)` -/
def P741470673587918221.Spec : Prop :=
  ∀ n, P741470673587918221.a n = A146533 n

end A146533

/-! ## A146533.P10947302716040497872

`A100320(n)+A146534(n)-A029609(n)`
-/

namespace A146533.P10947302716040497872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + (A146534 n - A029609 n)

end

end A146533.P10947302716040497872

namespace A146533

/-- `A100320(n)+A146534(n)-A029609(n)` -/
def P10947302716040497872.Spec : Prop :=
  ∀ n, P10947302716040497872.a n = A146533 n

end A146533

/-! ## A146533.P8180520325202077008

`A029651(n)+A146534(n)-A100320(n)`
-/

namespace A146533.P8180520325202077008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n + (A146534 n - A100320 n)

end

end A146533.P8180520325202077008

namespace A146533

/-- `A029651(n)+A146534(n)-A100320(n)` -/
def P8180520325202077008.Spec : Prop :=
  ∀ n, P8180520325202077008.a n = A146533 n

end A146533

/-! ## A146533.P18153452243965527959

`A100320(n)+A100320(n)-A088218(n)`
-/

namespace A146533.P18153452243965527959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + (A100320 n - A088218 n)

end

end A146533.P18153452243965527959

namespace A146533

/-- `A100320(n)+A100320(n)-A088218(n)` -/
def P18153452243965527959.Spec : Prop :=
  ∀ n, P18153452243965527959.a n = A146533 n

end A146533

/-! ## A146533.P2277939429591535787

`A029609(n)+A146534(n)-A144706(n)`
-/

namespace A146533.P2277939429591535787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029609 n + (A146534 n - A144706 n)

end

end A146533.P2277939429591535787

namespace A146533

/-- `A029609(n)+A146534(n)-A144706(n)` -/
def P2277939429591535787.Spec : Prop :=
  ∀ n, P2277939429591535787.a n = A146533 n

end A146533

/-! ## A146533.P8307772609538065821

`A029609(n)-(A088218(n)-A029651(n))`
-/

namespace A146533.P8307772609538065821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029609 n - (A088218 n - A029651 n)

end

end A146533.P8307772609538065821

namespace A146533

/-- `A029609(n)-(A088218(n)-A029651(n))` -/
def P8307772609538065821.Spec : Prop :=
  ∀ n, P8307772609538065821.a n = A146533 n

end A146533

/-! ## A146533.P10027200801768306800

`record[gcd(7, (n+1)%2)*C(n, ∑[n%2])]`
-/

namespace A146533.P10027200801768306800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 ((n + 1) % 2) * Nat.choose n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146533.P10027200801768306800

namespace A146533

/-- `record[gcd(7, (n+1)%2)*C(n, ∑[n%2])]` -/
def P10027200801768306800.Spec : Prop :=
  ∀ n, (P10027200801768306800.a n : ℤ) = A146533 n

end A146533

/-!
# A146534: a(n) = 4*C(2n,n) - 3*0^n.

The programs for A146534, the canonical program `A146534.P13924852514814578879` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146534 has offset 0).

The definition of A146534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*C(2*n, n)-3*0^n` (program `A146534.P13924852514814578879`, by `A146534.P13924852514814578879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146534.P13924852514814578879

`4*C(2*n, n)-3*0^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146534

/-- `4*C(2*n, n)-3*0^n` -/
def P13924852514814578879.Spec : Prop :=
  ∀ n, P13924852514814578879.a n = A146534 n

theorem P13924852514814578879.correct : P13924852514814578879.Spec := by
  intro n
  simp only [A146534]

end A146534

/-! ## A146534.P17239158943171839117

`(4-2/n)*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A146534.P17239158943171839117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A146534.P17239158943171839117

namespace A146534

/-- `(4-2/n)*a(n-1)` -/
def P17239158943171839117.Spec : Prop :=
  ∀ n, P17239158943171839117.a n = (A146534 n : ℚ)

end A146534

/-! ## A146534.P17991579522572793457

`4*a(n-1)-8*A000108(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A146534.P17991579522572793457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 * a (n - 1) - 8 * A000108 (n - 1)

end

end A146534.P17991579522572793457

namespace A146534

/-- `4*a(n-1)-8*A000108(n-1)` -/
def P17991579522572793457.Spec : Prop :=
  ∀ n, P17991579522572793457.a n = A146534 n

end A146534

/-! ## A146534.P9553783371118050396

`A047073(A163300(n+1))`
-/

namespace A146534.P9553783371118050396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 (A163300 (n + 1)).toNat

end

end A146534.P9553783371118050396

namespace A146534

/-- `A047073(A163300(n+1))` -/
def P9553783371118050396.Spec : Prop :=
  ∀ n, P9553783371118050396.a n = A146534 n

end A146534

/-! ## A146534.P11566349974209837176

`A000984(n)*A123932(n)`
-/

namespace A146534.P11566349974209837176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A123932 n

end

end A146534.P11566349974209837176

namespace A146534

/-- `A000984(n)*A123932(n)` -/
def P11566349974209837176.Spec : Prop :=
  ∀ n, P11566349974209837176.a n = A146534 n

end A146534

/-! ## A146534.P4957487662870905769

`A068875(n)*A103517(n)`
-/

namespace A146534.P4957487662870905769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A103517 n

end

end A146534.P4957487662870905769

namespace A146534

/-- `A068875(n)*A103517(n)` -/
def P4957487662870905769.Spec : Prop :=
  ∀ n, P4957487662870905769.a n = A146534 n

end A146534

/-! ## A146534.P5155464341768146835

`A280560(n)²*A000984(n)`
-/

namespace A146534.P5155464341768146835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2 * A000984 n

end

end A146534.P5155464341768146835

namespace A146534

/-- `A280560(n)²*A000984(n)` -/
def P5155464341768146835.Spec : Prop :=
  ∀ n, P5155464341768146835.a n = A146534 n

end A146534

/-! ## A146534.P10638083817432397481

`A036453(n+1)*A100320(n)`
-/

namespace A146534.P10638083817432397481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A100320 n

end

end A146534.P10638083817432397481

namespace A146534

/-- `A036453(n+1)*A100320(n)` -/
def P10638083817432397481.Spec : Prop :=
  ∀ n, P10638083817432397481.a n = A146534 n

end A146534

/-! ## A146534.P4488477707713819596

`2*A029609(n)-A000984(n)`
-/

namespace A146534.P4488477707713819596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029609 n - A000984 n

end

end A146534.P4488477707713819596

namespace A146534

/-- `2*A029609(n)-A000984(n)` -/
def P4488477707713819596.Spec : Prop :=
  ∀ n, P4488477707713819596.a n = A146534 n

end A146534

/-! ## A146534.P10553208460100546178

`2*A144706(n)-A100320(n)`
-/

namespace A146534.P10553208460100546178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144706 n - A100320 n

end

end A146534.P10553208460100546178

namespace A146534

/-- `2*A144706(n)-A100320(n)` -/
def P10553208460100546178.Spec : Prop :=
  ∀ n, P10553208460100546178.a n = A146534 n

end A146534

/-! ## A146534.P715797467222257992

`A280560(n)²*A063886(2*n)`
-/

namespace A146534.P715797467222257992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2 * A063886 (2 * n)

end

end A146534.P715797467222257992

namespace A146534

/-- `A280560(n)²*A063886(2*n)` -/
def P715797467222257992.Spec : Prop :=
  ∀ n, P715797467222257992.a n = A146534 n

end A146534

/-! ## A146534.P14455736715351039757

`A084100(n+1)²*A001405(2*n)`
-/

namespace A146534.P14455736715351039757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (n + 1) ^ 2 * A001405 (2 * n)

end

end A146534.P14455736715351039757

namespace A146534

/-- `A084100(n+1)²*A001405(2*n)` -/
def P14455736715351039757.Spec : Prop :=
  ∀ n, P14455736715351039757.a n = A146534 n

end A146534

/-! ## A146534.P18293871029278928094

`A084100(n+1)²*A063886(2*n)`
-/

namespace A146534.P18293871029278928094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (n + 1) ^ 2 * A063886 (2 * n)

end

end A146534.P18293871029278928094

namespace A146534

/-- `A084100(n+1)²*A063886(2*n)` -/
def P18293871029278928094.Spec : Prop :=
  ∀ n, P18293871029278928094.a n = A146534 n

end A146534

/-! ## A146534.P10503354852434712011

`A040001(2*n)²*A001405(2*n)`
-/

namespace A146534.P10503354852434712011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) ^ 2 * A001405 (2 * n)

end

end A146534.P10503354852434712011

namespace A146534

/-- `A040001(2*n)²*A001405(2*n)` -/
def P10503354852434712011.Spec : Prop :=
  ∀ n, P10503354852434712011.a n = A146534 n

end A146534

/-! ## A146534.P2022793955652612698

`A040001(2*n)²*A126869(2*n)`
-/

namespace A146534.P2022793955652612698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) ^ 2 * A126869 (2 * n)

end

end A146534.P2022793955652612698

namespace A146534

/-- `A040001(2*n)²*A126869(2*n)` -/
def P2022793955652612698.Spec : Prop :=
  ∀ n, P2022793955652612698.a n = A146534 n

end A146534

/-! ## A146534.P2067938440797546768

`A040001(2*n)²*A128014(2*n)`
-/

namespace A146534.P2067938440797546768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) ^ 2 * A128014 (2 * n)

end

end A146534.P2067938440797546768

namespace A146534

/-- `A040001(2*n)²*A128014(2*n)` -/
def P2067938440797546768.Spec : Prop :=
  ∀ n, P2067938440797546768.a n = A146534 n

end A146534

/-! ## A146534.P739810314977103521

`A176742(2*n)²*A063886(2*n)`
-/

namespace A146534.P739810314977103521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 (2 * n) ^ 2 * A063886 (2 * n)

end

end A146534.P739810314977103521

namespace A146534

/-- `A176742(2*n)²*A063886(2*n)` -/
def P739810314977103521.Spec : Prop :=
  ∀ n, P739810314977103521.a n = A146534 n

end A146534

/-!
# A146535: Numerator of (2*n-1)/3.

The programs for A146535, the canonical program `A146535.P7338263605323803498` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146535 has offset 1).

The definition of A146535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146535.P7338263605323803498

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=7, a(4)=3, a(5)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146535

/-- `2*a(n-3)-a(n-6)` -/
def P7338263605323803498.Spec : Prop :=
  ∀ n, P7338263605323803498.a n = A146535 (n + 1)

theorem P7338263605323803498.correct : P7338263605323803498.Spec := by
  intro n
  simp only [A146535, Nat.add_sub_cancel]

end A146535

/-! ## A146535.P13830282520753221233

`(2*(n+1)-1)*(7-A061347(n+1)+3*A102283(n+1))/9`
-/

namespace A146535.P13830282520753221233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (7 - A061347 (n + 1) + 3 * A102283 (n + 1)) : ℚ) / 9

end

end A146535.P13830282520753221233

namespace A146535

/-- `(2*(n+1)-1)*(7-A061347(n+1)+3*A102283(n+1))/9` -/
def P13830282520753221233.Spec : Prop :=
  ∀ n, P13830282520753221233.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P1786530004094053287

`lcm(3, Δ[n²])/3`
-/

namespace A146535.P1786530004094053287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 3

end

end A146535.P1786530004094053287

namespace A146535

/-- `lcm(3, Δ[n²])/3` -/
def P1786530004094053287.Spec : Prop :=
  ∀ n, P1786530004094053287.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P13209479775750993623

`gcd(∑[n²], Δ[n²])`
-/

namespace A146535.P13209479775750993623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A146535.P13209479775750993623

namespace A146535

/-- `gcd(∑[n²], Δ[n²])` -/
def P13209479775750993623.Spec : Prop :=
  ∀ n, (P13209479775750993623.a n : ℤ) = A146535 (n + 1)

end A146535

/-! ## A146535.P6799364314963595833

`Δ[n²]/gcd(3, 1-n)`
-/

namespace A146535.P6799364314963595833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ)

end

end A146535.P6799364314963595833

namespace A146535

/-- `Δ[n²]/gcd(3, 1-n)` -/
def P6799364314963595833.Spec : Prop :=
  ∀ n, P6799364314963595833.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P18205629478608020404

`floor(lcm(6, 2*n+1)/6)`
-/

namespace A146535.P18205629478608020404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 6 (2 * n + 1) : ℚ) / 6⌋

end

end A146535.P18205629478608020404

namespace A146535

/-- `floor(lcm(6, 2*n+1)/6)` -/
def P18205629478608020404.Spec : Prop :=
  ∀ n, P18205629478608020404.a n = A146535 (n + 1)

end A146535

/-! ## A146535.P3712801168462159918

`sqrt(lcm(9, (2*n+1)²))/3`
-/

namespace A146535.P3712801168462159918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 9 ((2 * n + 1) ^ 2) : ℝ) / 3

end

end A146535.P3712801168462159918

namespace A146535

/-- `sqrt(lcm(9, (2*n+1)²))/3` -/
def P3712801168462159918.Spec : Prop :=
  ∀ n, P3712801168462159918.a n = (A146535 (n + 1) : ℝ)

end A146535

/-! ## A146535.P6894890951164532184

`(2*n+1)/3^(∑[n]%3)`
-/

namespace A146535.P6894890951164532184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (3 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ)

end

end A146535.P6894890951164532184

namespace A146535

/-- `(2*n+1)/3^(∑[n]%3)` -/
def P6894890951164532184.Spec : Prop :=
  ∀ n, P6894890951164532184.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P4822561847907765395

`C(2*n, 3)%(2*n+1)+1`
-/

namespace A146535.P4822561847907765395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 % (2 * n + 1) + 1

end

end A146535.P4822561847907765395

namespace A146535

/-- `C(2*n, 3)%(2*n+1)+1` -/
def P4822561847907765395.Spec : Prop :=
  ∀ n, (P4822561847907765395.a n : ℤ) = A146535 (n + 1)

end A146535

/-! ## A146535.P17679703870610929784

`(2*n+1)/or(1, (n+1)%3)`
-/

namespace A146535.P17679703870610929784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Nat.lor 1 ((n + 1) % 3) : ℚ)

end

end A146535.P17679703870610929784

namespace A146535

/-- `(2*n+1)/or(1, (n+1)%3)` -/
def P17679703870610929784.Spec : Prop :=
  ∀ n, P17679703870610929784.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P9381330866650329456

`(2*n+1)/gcd(9, n+2)%6`
-/

namespace A146535.P9381330866650329456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / ((Nat.gcd 9 (n + 2) % 6 : ℕ) : ℚ)

end

end A146535.P9381330866650329456

namespace A146535

/-- `(2*n+1)/gcd(9, n+2)%6` -/
def P9381330866650329456.Spec : Prop :=
  ∀ n, P9381330866650329456.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P15868397837478396765

`(2*n+1)/sqrt(dr((n+2)^6))`
-/

namespace A146535.P15868397837478396765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) / Real.sqrt (SequenceMachineLib.digitalRoot ((n + 2) ^ 6 : ℤ) : ℝ)

end

end A146535.P15868397837478396765

namespace A146535

/-- `(2*n+1)/sqrt(dr((n+2)^6))` -/
def P15868397837478396765.Spec : Prop :=
  ∀ n, P15868397837478396765.a n = (A146535 (n + 1) : ℝ)

end A146535

/-! ## A146535.P2068513567639048620

`(2*n+1)/floor(cosh((2*n)%3))`
-/

namespace A146535.P2068513567639048620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (⌊Real.cosh ((2 * n % 3 : ℕ) : ℝ)⌋ : ℚ)

end

end A146535.P2068513567639048620

namespace A146535

/-- `(2*n+1)/floor(cosh((2*n)%3))` -/
def P2068513567639048620.Spec : Prop :=
  ∀ n, P2068513567639048620.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P6526550831211984624

`(2*n+1)/(2*n+1)²%6`
-/

namespace A146535.P6526550831211984624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (((2 * n + 1) ^ 2 % 6 : ℕ) : ℚ)

end

end A146535.P6526550831211984624

namespace A146535

/-- `(2*n+1)/(2*n+1)²%6` -/
def P6526550831211984624.Spec : Prop :=
  ∀ n, P6526550831211984624.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P7956805038009194905

`(2*n+1)/dr(gcd(6, 2*n+1))`
-/

namespace A146535.P7956805038009194905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (Nat.gcd 6 (2 * n + 1) : ℤ) : ℚ)

end

end A146535.P7956805038009194905

namespace A146535

/-- `(2*n+1)/dr(gcd(6, 2*n+1))` -/
def P7956805038009194905.Spec : Prop :=
  ∀ n, P7956805038009194905.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P11193874377008496906

`ceil(lcm(n+1+n, n+2)/(n+2))`
-/

namespace A146535.P11193874377008496906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (n + 1 + n) (n + 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A146535.P11193874377008496906

namespace A146535

/-- `ceil(lcm(n+1+n, n+2)/(n+2))` -/
def P11193874377008496906.Spec : Prop :=
  ∀ n, P11193874377008496906.a n = A146535 (n + 1)

end A146535

/-! ## A146535.P11710868869530106424

`(2*n+1)/and(3, (2*n+1)%6)`
-/

namespace A146535.P11710868869530106424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Nat.land 3 ((2 * n + 1) % 6) : ℚ)

end

end A146535.P11710868869530106424

namespace A146535

/-- `(2*n+1)/and(3, (2*n+1)%6)` -/
def P11710868869530106424.Spec : Prop :=
  ∀ n, P11710868869530106424.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P3899843869391840570

`gcd(2*(2*n+1), ∑[(2*n)²])/2`
-/

namespace A146535.P3899843869391840570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A146535.P3899843869391840570

namespace A146535

/-- `gcd(2*(2*n+1), ∑[(2*n)²])/2` -/
def P3899843869391840570.Spec : Prop :=
  ∀ n, P3899843869391840570.a n = (A146535 (n + 1) : ℚ)

end A146535

/-! ## A146535.P14531912654098187273

`(2*n+1)/sqrt(gcd((1-n)², (n+2)²))`
-/

namespace A146535.P14531912654098187273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) / Real.sqrt (Int.gcd ((1 - (n : ℤ)) ^ 2) ((n + 2) ^ 2 : ℤ) : ℝ)

end

end A146535.P14531912654098187273

namespace A146535

/-- `(2*n+1)/sqrt(gcd((1-n)², (n+2)²))` -/
def P14531912654098187273.Spec : Prop :=
  ∀ n, P14531912654098187273.a n = (A146535 (n + 1) : ℝ)

end A146535

/-! ## A146535.P257657139911461149

`floor((2*n+1)/gcd(n+1+n, ∑[n+1]))`
-/

namespace A146535.P257657139911461149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / (Nat.gcd (n + 1 + n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A146535.P257657139911461149

namespace A146535

/-- `floor((2*n+1)/gcd(n+1+n, ∑[n+1]))` -/
def P257657139911461149.Spec : Prop :=
  ∀ n, P257657139911461149.a n = A146535 (n + 1)

end A146535

/-!
# A146536: Sum of the first 10^n twin primes.

The programs for A146536, the canonical program `A146536.P9622132107236050422` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146536 has offset 0).

The definition of A146536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086169, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A146536.P9622132107236050422

`A086169(10^n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A146536

/-- `A086169(10^n)` -/
def P9622132107236050422.Spec : Prop :=
  ∀ n, P9622132107236050422.a n = A146536 n

theorem P9622132107236050422.correct : P9622132107236050422.Spec := by
  intro n
  simp only [A146536]

end A146536

/-!
# A146537: a(n) = A144453(n)/16.

The programs for A146537, there is no canonical definition to state claims against.
-/

/-! ## A146537.P17092676182265009185

`A144453(n)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146537.P17092676182265009185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144453 n : ℚ) / 16

end

end A146537.P17092676182265009185

/-! ## A146537.P16896447876179891433

`gcd(A079588(n), A144453(n))`
-/

namespace A146537.P16896447876179891433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079588 n) (A144453 n)

end

end A146537.P16896447876179891433

/-! ## A146537.P1357258516978840212

`A178978(4*n+1)/2`
-/

namespace A146537.P1357258516978840212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178978 (4 * n + 1) : ℚ) / 2

end

end A146537.P1357258516978840212

/-! ## A146537.P2343514830928289358

`A061039(8*n+5)/16`
-/

namespace A146537.P2343514830928289358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061039 (8 * n + 5) : ℚ) / 16

end

end A146537.P2343514830928289358

/-! ## A146537.P2316591863094348694

`gcd(5*A079588(n), A061039(8*n+5))`
-/

namespace A146537.P2316591863094348694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * A079588 n) (A061039 (8 * n + 5))

end

end A146537.P2316591863094348694

/-! ## A146537.P5734444019778902067

`A061045(Δ[A033566(n)])/4`
-/

namespace A146537.P5734444019778902067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033566 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061045 (f1 (n + 1) - f1 n).toNat : ℚ) / 4

end

end A146537.P5734444019778902067

/-! ## A146537.P14843629647528416641

`A014682(A178978(2*n+2*n+1))`
-/

namespace A146537.P14843629647528416641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A178978 (2 * n + (2 * n + 1))).toNat

end

end A146537.P14843629647528416641

/-! ## A146537.P5202075235102312974

`A106610(A038502(n+1)*A093544(n+1))`
-/

namespace A146537.P5202075235102312974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A038502 (n + 1) * A093544 (n + 1)).toNat

end

end A146537.P5202075235102312974

/-! ## A146537.P9173836076983592987

`A106610(A106610((2*n+1)²+n))`
-/

namespace A146537.P9173836076983592987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A106610 ((2 * n + 1) ^ 2 + n)).toNat

end

end A146537.P9173836076983592987

/-!
# A146538: Even numbers n such that n+3 is not a prime.

The programs for A146538, the canonical program `A146538.P8666981964067901687` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146538 has offset 1).

The definition of A146538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146538.P5711170773233653052

`2*comp[floor((p?[round(8*n/7)]-2)/2)]`
-/

namespace A146538.P5711170773233653052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A146538.P5711170773233653052

namespace A146538

/-- `2*comp[floor((p?[round(8*n/7)]-2)/2)]` -/
def P5711170773233653052.Spec : Prop :=
  ∀ n, (P5711170773233653052.a n : ℤ) = A146538 (n + 1)

end A146538

/-! ## A146538.P8666981964067901687

`A007921(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A146538

/-- `A007921(n+1)-1` -/
def P8666981964067901687.Spec : Prop :=
  ∀ n, P8666981964067901687.a n = A146538 (n + 1)

theorem P8666981964067901687.correct : P8666981964067901687.Spec := by
  intro n
  simp only [A146538, Nat.add_sub_cancel]

end A146538

/-! ## A146538.P7644123771176262705

`A309355(n+1)-2`
-/

namespace A146538.P7644123771176262705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) - 2

end

end A146538.P7644123771176262705

namespace A146538

/-- `A309355(n+1)-2` -/
def P7644123771176262705.Spec : Prop :=
  ∀ n, P7644123771176262705.a n = A146538 (n + 1)

theorem P7644123771176262705.correct : P7644123771176262705.Spec := by
  intro n
  simp only [A146538, Nat.add_sub_cancel, A146538.P7644123771176262705.a, A146538.P8666981964067901687.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A309355, A309355.P9345418795961828822.a, A071904, A071904.P6554188440157640390.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146538

/-! ## A146538.P9842474918934814491

`A071904(n+1)-3`
-/

namespace A146538.P9842474918934814491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - 3

end

end A146538.P9842474918934814491

namespace A146538

/-- `A071904(n+1)-3` -/
def P9842474918934814491.Spec : Prop :=
  ∀ n, P9842474918934814491.a n = A146538 (n + 1)

theorem P9842474918934814491.correct : P9842474918934814491.Spec := by
  intro n
  simp only [A146538, Nat.add_sub_cancel, A146538.P9842474918934814491.a, A146538.P8666981964067901687.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A071904, A071904.P6554188440157640390.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146538

/-! ## A146538.P12392799858080322569

`2*A153238(n+1)`
-/

namespace A146538.P12392799858080322569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1)

end

end A146538.P12392799858080322569

namespace A146538

/-- `2*A153238(n+1)` -/
def P12392799858080322569.Spec : Prop :=
  ∀ n, P12392799858080322569.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P8805770597757898681

`eq[0, A370482(n+3)]`
-/

namespace A146538.P8805770597757898681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146538.P8805770597757898681

namespace A146538

/-- `eq[0, A370482(n+3)]` -/
def P8805770597757898681.Spec : Prop :=
  ∀ n, (P8805770597757898681.a n : ℤ) = A146538 (n + 1)

end A146538

/-! ## A146538.P10339954944804531977

`eq[1, A107393(n+3)]`
-/

namespace A146538.P10339954944804531977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146538.P10339954944804531977

namespace A146538

/-- `eq[1, A107393(n+3)]` -/
def P10339954944804531977.Spec : Prop :=
  ∀ n, (P10339954944804531977.a n : ℤ) = A146538 (n + 1)

end A146538

/-! ## A146538.P10652433263560205588

`∑[A067970(n+1)]-2`
-/

namespace A146538.P10652433263560205588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A146538.P10652433263560205588

namespace A146538

/-- `∑[A067970(n+1)]-2` -/
def P10652433263560205588.Spec : Prop :=
  ∀ n, P10652433263560205588.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P498741878553977788

`2*(A153052(n+1)+1)`
-/

namespace A146538.P498741878553977788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153052 (n + 1) + 1)

end

end A146538.P498741878553977788

namespace A146538

/-- `2*(A153052(n+1)+1)` -/
def P498741878553977788.Spec : Prop :=
  ∀ n, P498741878553977788.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P13237657790529818790

`2*(A153053(n+1)+2)`
-/

namespace A146538.P13237657790529818790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153053 (n + 1) + 2)

end

end A146538.P13237657790529818790

namespace A146538

/-- `2*(A153053(n+1)+2)` -/
def P13237657790529818790.Spec : Prop :=
  ∀ n, P13237657790529818790.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P9767330372350629249

`2*(A053726(n+1)-2)`
-/

namespace A146538.P9767330372350629249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053726 (n + 1) - 2)

end

end A146538.P9767330372350629249

namespace A146538

/-- `2*(A053726(n+1)-2)` -/
def P9767330372350629249.Spec : Prop :=
  ∀ n, P9767330372350629249.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P11581060826243020923

`2*(A155723(n+1)+3)`
-/

namespace A146538.P11581060826243020923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155723 (n + 1) + 3)

end

end A146538.P11581060826243020923

namespace A146538

/-- `2*(A155723(n+1)+3)` -/
def P11581060826243020923.Spec : Prop :=
  ∀ n, P11581060826243020923.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P14124836187613686293

`A153053(n+1)+A053726(n+1)`
-/

namespace A146538.P14124836187613686293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + A053726 (n + 1)

end

end A146538.P14124836187613686293

namespace A146538

/-- `A153053(n+1)+A053726(n+1)` -/
def P14124836187613686293.Spec : Prop :=
  ∀ n, P14124836187613686293.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P4429498225604878655

`A336407(n+1)+A008508(n+1)`
-/

namespace A146538.P4429498225604878655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) + A008508 (n + 1)

end

end A146538.P4429498225604878655

namespace A146538

/-- `A336407(n+1)+A008508(n+1)` -/
def P4429498225604878655.Spec : Prop :=
  ∀ n, P4429498225604878655.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P3614172711179085665

`A154115(n+1)-A129146(n+1)`
-/

namespace A146538.P3614172711179085665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) - A129146 (n + 1)

end

end A146538.P3614172711179085665

namespace A146538

/-- `A154115(n+1)-A129146(n+1)` -/
def P3614172711179085665.Spec : Prop :=
  ∀ n, P3614172711179085665.a n = A146538 (n + 1)

theorem P3614172711179085665.correct : P3614172711179085665.Spec := by
  intro n
  simp only [A146538, Nat.add_sub_cancel, A146538.P3614172711179085665.a, A146538.P8666981964067901687.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A129146, A129146.P11255753064502351239.a, A154115, A154115.P220062109648616098.a, A065091, A065091.P6971844946592549357.a, A071904, A071904.P6554188440157640390.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146538

/-! ## A146538.P2282038067039262493

`A014076(n+2)-3`
-/

namespace A146538.P2282038067039262493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) - 3

end

end A146538.P2282038067039262493

namespace A146538

/-- `A014076(n+2)-3` -/
def P2282038067039262493.Spec : Prop :=
  ∀ n, P2282038067039262493.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P3230422303273047197

`Δ[A163631(n+1)]-3`
-/

namespace A146538.P3230422303273047197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A146538.P3230422303273047197

namespace A146538

/-- `Δ[A163631(n+1)]-3` -/
def P3230422303273047197.Spec : Prop :=
  ∀ n, P3230422303273047197.a n = A146538 (n + 1)

end A146538

/-! ## A146538.P524332408168447854

`A153052(n+1)+A047845(n+2)`
-/

namespace A146538.P524332408168447854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + A047845 (n + 2)

end

end A146538.P524332408168447854

namespace A146538

/-- `A153052(n+1)+A047845(n+2)` -/
def P524332408168447854.Spec : Prop :=
  ∀ n, P524332408168447854.a n = A146538 (n + 1)

end A146538

/-!
# A146539: A061045 mod 9.

The programs for A146539, there is no canonical definition to state claims against.
-/

/-! ## A146539.P6990579537079493041

`A061045(n+6)%9`
-/

namespace A146539.P6990579537079493041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061045 (n + 6)) 9

end

end A146539.P6990579537079493041

/-!
# A146540: The PolyLog functional part of A008292 (the Eulerian numbers) is treated as a curvature to give a set of polynomial triangle sequence coefficients: p(x,n)=Sum[A008292(n,m)*x^(m-1),{m,0,n}]; q(x,n)=k from Solve[FullSimplify[ExpandAll[p[x, n]/(x - 1)^n]] - (1 + k/x^2) == 0, k].

The programs for A146540, there is no canonical definition to state claims against.
-/

/-! ## A146540.P7672951790184979556

`A173018(n+1)-A130595(n+1)`
-/

namespace A146540.P7672951790184979556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (n + 1) - A130595 (n + 1)

end

end A146540.P7672951790184979556

/-! ## A146540.P10409628225441940491

`A123125(n+2)-A130595(n+1)`
-/

namespace A146540.P10409628225441940491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (n + 2) - A130595 (n + 1)

end

end A146540.P10409628225441940491

/-! ## A146540.P572768195411669508

`A173018(n+1)-A007318(n+1)*A097807(n+1)`
-/

namespace A146540.P572768195411669508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (n + 1) - A007318 (n + 1) * A097807 (n + 1)

end

end A146540.P572768195411669508

/-!
# A146541: Binomial transform of A010688.

The programs for A146541, the canonical program `A146541.P536084448656765383` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146541 has offset 0).

The definition of A146541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146541.P409439072290511295

`ogf((1+6x)/(1-2x))`
-/

namespace A146541.P409439072290511295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -2] n

end

end A146541.P409439072290511295

namespace A146541

/-- `ogf((1+6x)/(1-2x))` -/
def P409439072290511295.Spec : Prop :=
  ∀ n, P409439072290511295.a n = A146541 n

end A146541

/-! ## A146541.P536084448656765383

`record[and(-7, 2^n)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146541

/-- `record[and(-7, 2^n)]` -/
def P536084448656765383.Spec : Prop :=
  ∀ n, P536084448656765383.a n = A146541 n

theorem P536084448656765383.correct : P536084448656765383.Spec := by
  intro n
  simp only [A146541]

end A146541

/-! ## A146541.P14288057552225264133

`2*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A146541.P14288057552225264133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * a (n - 1)

end

end A146541.P14288057552225264133

namespace A146541

/-- `2*a(n-1)` -/
def P14288057552225264133.Spec : Prop :=
  ∀ n, (P14288057552225264133.a n : ℤ) = A146541 n

end A146541

/-! ## A146541.P1761418655347389600

`record[(2-C(2, n))^n]`
-/

namespace A146541.P1761418655347389600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146541.P1761418655347389600

namespace A146541

/-- `record[(2-C(2, n))^n]` -/
def P1761418655347389600.Spec : Prop :=
  ∀ n, P1761418655347389600.a n = A146541 n

end A146541

/-! ## A146541.P15091209549531173209

`record[ceil(atan(n-1))^n]`
-/

namespace A146541.P15091209549531173209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((n : ℤ) - 1 : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146541.P15091209549531173209

namespace A146541

/-- `record[ceil(atan(n-1))^n]` -/
def P15091209549531173209.Spec : Prop :=
  ∀ n, P15091209549531173209.a n = A146541 n

end A146541

/-! ## A146541.P12801726251064615342

`ceil(cosh(sin(n)))^(n+2)`
-/

namespace A146541.P12801726251064615342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ ^ (n + 2)

end

end A146541.P12801726251064615342

namespace A146541

/-- `ceil(cosh(sin(n)))^(n+2)` -/
def P12801726251064615342.Spec : Prop :=
  ∀ n, P12801726251064615342.a n = A146541 n

end A146541

/-! ## A146541.P14344757521550133163

`2^(2%(n+2)+n)`
-/

namespace A146541.P14344757521550133163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 % (n + 2) + n)

end

end A146541.P14344757521550133163

namespace A146541

/-- `2^(2%(n+2)+n)` -/
def P14344757521550133163.Spec : Prop :=
  ∀ n, (P14344757521550133163.a n : ℤ) = A146541 n

end A146541

/-! ## A146541.P17269863956699955772

`gcd(6, 2^n)^(n+2)`
-/

namespace A146541.P17269863956699955772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (2 ^ n) ^ (n + 2)

end

end A146541.P17269863956699955772

namespace A146541

/-- `gcd(6, 2^n)^(n+2)` -/
def P17269863956699955772.Spec : Prop :=
  ∀ n, (P17269863956699955772.a n : ℤ) = A146541 n

end A146541

/-! ## A146541.P15816725348411676928

`2^ceil(sqrt(n*(n+4)))`
-/

namespace A146541.P15816725348411676928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.sqrt (n * (n + 4) : ℝ)⌉ : ℤ)

end

end A146541.P15816725348411676928

namespace A146541

/-- `2^ceil(sqrt(n*(n+4)))` -/
def P15816725348411676928.Spec : Prop :=
  ∀ n, P15816725348411676928.a n = (A146541 n : ℚ)

end A146541

/-! ## A146541.P4388146703701855336

`∏{d}[n, ceil((2/#)^(n+2))]`
-/

namespace A146541.P4388146703701855336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈(2 / (d : ℚ)) ^ (n + 2)⌉

end

end A146541.P4388146703701855336

namespace A146541

/-- `∏{d}[n, ceil((2/#)^(n+2))]` -/
def P4388146703701855336.Spec : Prop :=
  ∀ n, P4388146703701855336.a n = A146541 n

end A146541

/-! ## A146541.P10638075488376226416

`∏{p}[xor(n, -n), #^(n+2)]`
-/

namespace A146541.P10638075488376226416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ (n + 2)

end

end A146541.P10638075488376226416

namespace A146541

/-- `∏{p}[xor(n, -n), #^(n+2)]` -/
def P10638075488376226416.Spec : Prop :=
  ∀ n, (P10638075488376226416.a n : ℤ) = A146541 n

end A146541

/-! ## A146541.P6465181008150980344

`lcm(4, 2-a(n-1))+4` with `a(0)=1`
-/

namespace A146541.P6465181008150980344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 4 (2 - (a (n - 1) : ℤ)) + 4

end

end A146541.P6465181008150980344

namespace A146541

/-- `lcm(4, 2-a(n-1))+4` -/
def P6465181008150980344.Spec : Prop :=
  ∀ n, (P6465181008150980344.a n : ℤ) = A146541 n

end A146541

/-! ## A146541.P12262292471412753889

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A146541.P12262292471412753889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + a (n - 1)

end

end A146541.P12262292471412753889

namespace A146541

/-- `a(n-1)+a(n-1)` -/
def P12262292471412753889.Spec : Prop :=
  ∀ n, (P12262292471412753889.a n : ℤ) = A146541 n

end A146541

/-! ## A146541.P3983895475656021504

`record[(n-1-abs(3-n))^n]`
-/

namespace A146541.P3983895475656021504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - |3 - (n : ℤ)|) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146541.P3983895475656021504

namespace A146541

/-- `record[(n-1-abs(3-n))^n]` -/
def P3983895475656021504.Spec : Prop :=
  ∀ n, P3983895475656021504.a n = A146541 n

end A146541

/-! ## A146541.P14251524563322600859

`a(n-1)/(1-1/2)` with `a(0)=1, a(1)=8`
-/

namespace A146541.P14251524563322600859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A146541.P14251524563322600859

namespace A146541

/-- `a(n-1)/(1-1/2)` -/
def P14251524563322600859.Spec : Prop :=
  ∀ n, P14251524563322600859.a n = (A146541 n : ℚ)

end A146541

/-! ## A146541.P10688321566476424686

`abs((2-C(2, n+2))^(n+2))`
-/

namespace A146541.P10688321566476424686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - (Nat.choose 2 (n + 2) : ℤ)) ^ (n + 2)|

end

end A146541.P10688321566476424686

namespace A146541

/-- `abs((2-C(2, n+2))^(n+2))` -/
def P10688321566476424686.Spec : Prop :=
  ∀ n, P10688321566476424686.a n = A146541 n

end A146541

/-! ## A146541.P11803285436530687337

`2^(n+2)-C(3, (n+1)²)`
-/

namespace A146541.P11803285436530687337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - (Nat.choose 3 ((n + 1) ^ 2) : ℤ)

end

end A146541.P11803285436530687337

namespace A146541

/-- `2^(n+2)-C(3, (n+1)²)` -/
def P11803285436530687337.Spec : Prop :=
  ∀ n, P11803285436530687337.a n = A146541 n

end A146541

/-! ## A146541.P14697788981309831387

`A029745(Δ[n²])`
-/

namespace A146541.P14697788981309831387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029745 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146541.P14697788981309831387

namespace A146541

/-- `A029745(Δ[n²])` -/
def P14697788981309831387.Spec : Prop :=
  ∀ n, P14697788981309831387.a n = A146541 n

end A146541

/-! ## A146541.P12265346077495037056

`xor(1, A134067(n))+1`
-/

namespace A146541.P12265346077495037056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A134067 n) + 1

end

end A146541.P12265346077495037056

namespace A146541

/-- `xor(1, A134067(n))+1` -/
def P12265346077495037056.Spec : Prop :=
  ∀ n, P12265346077495037056.a n = A146541 n

end A146541

/-! ## A146541.P11631573609882002688

`xor(1, A171497(n))-1`
-/

namespace A146541.P11631573609882002688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A171497 n) - 1

end

end A146541.P11631573609882002688

namespace A146541

/-- `xor(1, A171497(n))-1` -/
def P11631573609882002688.Spec : Prop :=
  ∀ n, P11631573609882002688.a n = A146541 n

end A146541

/-!
# A146543: The LerchPhi functional part of A060187 MacMahon numbers is treated/ solved for as a curvature to give a set of polynomial triangle sequence coefficients: p(x,n) = Sum[A060187(n,m)*x^(m-1),{m,0,n}]; q(x,n)=k from Solve[FullSimplify[ExpandAll[p[x, n]/(x - 1)^n]] - (1 + k/x^2) == 0, k].

The programs for A146543, there is no canonical definition to state claims against.
-/

/-! ## A146543.P6163181126051398938

`2*A262227(A099375(n)+1+n)`
-/

namespace A146543.P6163181126051398938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262227 (A099375 n + 1 + (n : ℤ)).toNat

end

end A146543.P6163181126051398938

/-! ## A146543.P7422716196336453505

`abs(A138076(A007401(n+1))-A074909(n))`
-/

namespace A146543.P7422716196336453505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138076 (A007401 (n + 1)).toNat - A074909 n|

end

end A146543.P7422716196336453505

/-! ## A146543.P6829648188269203485

`2*A262227(A114327(n)+A014132(n+1))`
-/

namespace A146543.P6829648188269203485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262227 (A114327 n + A014132 (n + 1)).toNat

end

end A146543.P6829648188269203485

/-!
# A146556: Natural growth of an aliquot sequence driven by a perfect number 2^(p-1)*((2^p) - 1).

The programs for A146556, there is no canonical definition to state claims against.
-/

/-! ## A146556.P17617379449147365550

`2*A000203(a(n-1))-a(n-1)` with `a(0)=3`
-/

namespace A146556.P17617379449147365550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A000203 (a (n - 1)).toNat - a (n - 1)

end

end A146556.P17617379449147365550

/-! ## A146556.P1468998114857354600

`A091818(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A146556.P1468998114857354600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A091818 (a (n - 1)).toNat + a (n - 1)

end

end A146556.P1468998114857354600

/-! ## A146556.P576964153032194829

`A074400(a(n-1))-a(n-1)` with `a(0)=3`
-/

namespace A146556.P576964153032194829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A074400 (a (n - 1)).toNat - a (n - 1)

end

end A146556.P576964153032194829

/-! ## A146556.P10769425795454042558

`A002659(a(n-1))+1-a(n-1)` with `a(0)=3`
-/

namespace A146556.P10769425795454042558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002659 (a (n - 1)).toNat + (1 - a (n - 1))

end

end A146556.P10769425795454042558

/-! ## A146556.P6115310380405861140

`A318889(2*a(n-1))` with `a(0)=3`
-/

namespace A146556.P6115310380405861140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A318889 (2 * a (n - 1)).toNat

end

end A146556.P6115310380405861140

/-!
# A146557: Number of collinear triples of distinct points in Zn x Zn with no two on the same "horizontal" or "vertical" line.

The programs for A146557, there is no canonical definition to state claims against.
-/

/-! ## A146557.P7549027979136904695

`A002620(n)*A254948(A041673(n))`
-/

namespace A146557.P7549027979136904695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A254948 (A041673 n).toNat

end

end A146557.P7549027979136904695

/-! ## A146557.P14792168059224168189

`and(A001791(A038507(n)), A124535(n))`
-/

namespace A146557.P14792168059224168189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001791 (A038507 n).toNat) (A124535 n)

end

end A146557.P14792168059224168189

/-!
# A146558: Number of order n permutations without collinear triples modulo n.

The programs for A146558, there is no canonical definition to state claims against.
-/

/-! ## A146558.P14404744557437951811

`A329290(∑[record[A224118(n+1)]])`
-/

namespace A146558.P14404744557437951811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224118 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146558.P14404744557437951811

/-! ## A146558.P17095150878801382840

`and(A332043(n+1), A332872(n+2))`
-/

namespace A146558.P17095150878801382840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A332043 (n + 1)) (A332872 (n + 2))

end

end A146558.P17095150878801382840

/-! ## A146558.P10929070813956494799

`A132269(n)*A323302(A132269(n))`
-/

namespace A146558.P10929070813956494799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132269 n * A323302 (A132269 n).toNat

end

end A146558.P10929070813956494799

/-! ## A146558.P6050754478840786871

`A007955(n+1)*A035162(A006318(n))`
-/

namespace A146558.P6050754478840786871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A035162 (A006318 n).toNat

end

end A146558.P6050754478840786871

/-!
# A146559: Expansion of (1-x)/(1 - 2*x + 2*x^2).

The programs for A146559, the canonical program `A146559.P10823798363315330489` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146559 has offset 0).

The definition of A146559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+2x^2))` (program `A146559.P10823798363315330489`, by `A146559.P10823798363315330489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146559.P15124227699782121659

`(-1)^n*A009116(n)`
-/

namespace A146559.P15124227699782121659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009116 n

end

end A146559.P15124227699782121659

namespace A146559

/-- `(-1)^n*A009116(n)` -/
def P15124227699782121659.Spec : Prop :=
  ∀ n, P15124227699782121659.a n = A146559 n

end A146559

/-! ## A146559.P10823798363315330489

`ogf((1-x)/(1-2x+2x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146559

/-- `ogf((1-x)/(1-2x+2x^2))` -/
def P10823798363315330489.Spec : Prop :=
  ∀ n, P10823798363315330489.a n = A146559 n

theorem P10823798363315330489.correct : P10823798363315330489.Spec := by
  intro n
  simp only [A146559]

end A146559

/-! ## A146559.P401054373831290385

`2*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146559.P401054373831290385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2)

end

end A146559.P401054373831290385

namespace A146559

/-- `2*a(n-1)-2*a(n-2)` -/
def P401054373831290385.Spec : Prop :=
  ∀ n, P401054373831290385.a n = A146559 n

end A146559

/-! ## A146559.P18160197516597819562

`A121625(n)/n^n`
-/

namespace A146559.P18160197516597819562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121625 n : ℚ) / (n ^ n : ℚ)

end

end A146559.P18160197516597819562

namespace A146559

/-- `A121625(n)/n^n` -/
def P18160197516597819562.Spec : Prop :=
  ∀ n, P18160197516597819562.a n = (A146559 n : ℚ)

end A146559

/-! ## A146559.P12906435274410249246

`2*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A146559.P12906435274410249246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A146559.P12906435274410249246

namespace A146559

/-- `2*(a(n-1)-a(n-2))` -/
def P12906435274410249246.Spec : Prop :=
  ∀ n, P12906435274410249246.a n = A146559 n

end A146559

/-! ## A146559.P9940923809211827239

`(a(n-1)-a(n-2))/(1-1/2)` with `a(0)=1, a(1)=1`
-/

namespace A146559.P9940923809211827239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A146559.P9940923809211827239

namespace A146559

/-- `(a(n-1)-a(n-2))/(1-1/2)` -/
def P9940923809211827239.Spec : Prop :=
  ∀ n, P9940923809211827239.a n = (A146559 n : ℚ)

end A146559

/-! ## A146559.P10813143537462577607

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A146559.P10813143537462577607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A146559.P10813143537462577607

namespace A146559

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P10813143537462577607.Spec : Prop :=
  ∀ n, P10813143537462577607.a n = A146559 n

end A146559

/-! ## A146559.P8179433173423090066

`a(n-1)-A009545(n-1)` with `a(0)=1`
-/

namespace A146559.P8179433173423090066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A009545 (n - 1)

end

end A146559.P8179433173423090066

namespace A146559

/-- `a(n-1)-A009545(n-1)` -/
def P8179433173423090066.Spec : Prop :=
  ∀ n, P8179433173423090066.a n = A146559 n

end A146559

/-! ## A146559.P3536794447279940590

`a(n-1)-A099087(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146559.P3536794447279940590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A099087 (n - 2)

end

end A146559.P3536794447279940590

namespace A146559

/-- `a(n-1)-A099087(n-2)` -/
def P3536794447279940590.Spec : Prop :=
  ∀ n, P3536794447279940590.a n = A146559 n

end A146559

/-! ## A146559.P6057980642876857811

`A009116(n)*A033999(n)`
-/

namespace A146559.P6057980642876857811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A033999 n

end

end A146559.P6057980642876857811

namespace A146559

/-- `A009116(n)*A033999(n)` -/
def P6057980642876857811.Spec : Prop :=
  ∀ n, P6057980642876857811.a n = A146559 n

end A146559

/-! ## A146559.P12054928814079175228

`A009116(n)/A033999(n+2)`
-/

namespace A146559.P12054928814079175228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009116 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A146559.P12054928814079175228

namespace A146559

/-- `A009116(n)/A033999(n+2)` -/
def P12054928814079175228.Spec : Prop :=
  ∀ n, P12054928814079175228.a n = (A146559 n : ℚ)

theorem P12054928814079175228.correct : P12054928814079175228.Spec := by
  intro n
  simp only [A146559, Nat.add_sub_cancel, A146559.P12054928814079175228.a, A146559.P10823798363315330489.a, A009116, A009116.P721434042884447878.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A146559

/-! ## A146559.P2533577123730992714

`A009116(n)*A056594(2*n)`
-/

namespace A146559.P2533577123730992714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A056594 (2 * n)

end

end A146559.P2533577123730992714

namespace A146559

/-- `A009116(n)*A056594(2*n)` -/
def P2533577123730992714.Spec : Prop :=
  ∀ n, P2533577123730992714.a n = A146559 n

end A146559

/-! ## A146559.P18392098837926814593

`A009116(n)*A057077(2*n)`
-/

namespace A146559.P18392098837926814593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A057077 (2 * n)

end

end A146559.P18392098837926814593

namespace A146559

/-- `A009116(n)*A057077(2*n)` -/
def P18392098837926814593.Spec : Prop :=
  ∀ n, P18392098837926814593.a n = A146559 n

end A146559

/-! ## A146559.P7110951163609943395

`A009116(n)*A034947(2*n+1)`
-/

namespace A146559.P7110951163609943395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A034947 (2 * n + 1)

end

end A146559.P7110951163609943395

namespace A146559

/-- `A009116(n)*A034947(2*n+1)` -/
def P7110951163609943395.Spec : Prop :=
  ∀ n, P7110951163609943395.a n = A146559 n

end A146559

/-! ## A146559.P13113879532032941956

`A009116(n)*A101455(2*n+1)`
-/

namespace A146559.P13113879532032941956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A101455 (2 * n + 1)

end

end A146559.P13113879532032941956

namespace A146559

/-- `A009116(n)*A101455(2*n+1)` -/
def P13113879532032941956.Spec : Prop :=
  ∀ n, P13113879532032941956.a n = A146559 n

end A146559

/-! ## A146559.P3595069892980915786

`A009116(n)*A112030(2*n+1)`
-/

namespace A146559.P3595069892980915786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A112030 (2 * n + 1)

end

end A146559.P3595069892980915786

namespace A146559

/-- `A009116(n)*A112030(2*n+1)` -/
def P3595069892980915786.Spec : Prop :=
  ∀ n, P3595069892980915786.a n = A146559 n

end A146559

/-! ## A146559.P960274328721567794

`A009116(n)*A117569(2*n+1)`
-/

namespace A146559.P960274328721567794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n * A117569 (2 * n + 1)

end

end A146559.P960274328721567794

namespace A146559

/-- `A009116(n)*A117569(2*n+1)` -/
def P960274328721567794.Spec : Prop :=
  ∀ n, P960274328721567794.a n = A146559 n

end A146559

/-! ## A146559.P16089229109892539292

`A016116(n)*A046980(n)`
-/

namespace A146559.P16089229109892539292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A046980 n

end

end A146559.P16089229109892539292

namespace A146559

/-- `A016116(n)*A046980(n)` -/
def P16089229109892539292.Spec : Prop :=
  ∀ n, P16089229109892539292.a n = A146559 n

end A146559

/-! ## A146559.P11373461477743940910

`A016116(n)*A046978(n+2)`
-/

namespace A146559.P11373461477743940910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A046978 (n + 2)

end

end A146559.P11373461477743940910

namespace A146559

/-- `A016116(n)*A046978(n+2)` -/
def P11373461477743940910.Spec : Prop :=
  ∀ n, P11373461477743940910.a n = A146559 n

end A146559

/-! ## A146559.P6161522939582381744

`A046978(n+2)*A158780(n+2)`
-/

namespace A146559.P6161522939582381744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (n + 2) * A158780 (n + 2)

end

end A146559.P6161522939582381744

namespace A146559

/-- `A046978(n+2)*A158780(n+2)` -/
def P6161522939582381744.Spec : Prop :=
  ∀ n, P6161522939582381744.a n = A146559 n

end A146559

/-!
# A146560: Squarefree semiprimes n such that n+1 is squarefree and n+2 is prime.

The programs for A146560, the canonical program `A146560.P14857807103795998292` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146560 has offset 1).

The definition of A146560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146560.P8230378616366196723

`∩[A066774(n+1), A073250(n+1)]`
-/

namespace A146560.P8230378616366196723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P8230378616366196723

namespace A146560

/-- `∩[A066774(n+1), A073250(n+1)]` -/
def P8230378616366196723.Spec : Prop :=
  ∀ n, (P8230378616366196723.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P16237453238287167775

`∩[A073250(n+1), A146948(n+1)]`
-/

namespace A146560.P16237453238287167775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P16237453238287167775

namespace A146560

/-- `∩[A073250(n+1), A146948(n+1)]` -/
def P16237453238287167775.Spec : Prop :=
  ∀ n, (P16237453238287167775.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P6233258854529582220

`∩[A073250(n+1), A241809(n+1)]`
-/

namespace A146560.P6233258854529582220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P6233258854529582220

namespace A146560

/-- `∩[A073250(n+1), A241809(n+1)]` -/
def P6233258854529582220.Spec : Prop :=
  ∀ n, (P6233258854529582220.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P14857807103795998292

`∩[A146948(n+1), A309005(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A146560

/-- `∩[A146948(n+1), A309005(n+1)]` -/
def P14857807103795998292.Spec : Prop :=
  ∀ n, (P14857807103795998292.a n : ℤ) = A146560 (n + 1)

theorem P14857807103795998292.correct : P14857807103795998292.Spec := by
  intro n
  simp only [A146560, Nat.add_sub_cancel]

end A146560

/-! ## A146560.P8789756941470705422

`∩[A146948(n+1), A241809(n+2)]`
-/

namespace A146560.P8789756941470705422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P8789756941470705422

namespace A146560

/-- `∩[A146948(n+1), A241809(n+2)]` -/
def P8789756941470705422.Spec : Prop :=
  ∀ n, (P8789756941470705422.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P16398372343249892098

`∩[A066774(n+1), A112925(n+1)-1]`
-/

namespace A146560.P16398372343249892098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P16398372343249892098

namespace A146560

/-- `∩[A066774(n+1), A112925(n+1)-1]` -/
def P16398372343249892098.Spec : Prop :=
  ∀ n, (P16398372343249892098.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P4083127726889616369

`∩[A112925(n+2)-1, A241809(n+2)]`
-/

namespace A146560.P4083127726889616369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P4083127726889616369

namespace A146560

/-- `∩[A112925(n+2)-1, A241809(n+2)]` -/
def P4083127726889616369.Spec : Prop :=
  ∀ n, (P4083127726889616369.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P10462683043273648016

`∩[A007675(n+1), A241809(n+1)]`
-/

namespace A146560.P10462683043273648016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P10462683043273648016

namespace A146560

/-- `∩[A007675(n+1), A241809(n+1)]` -/
def P10462683043273648016.Spec : Prop :=
  ∀ n, (P10462683043273648016.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P7054581600233137480

`∩[A241809(n+1), A369021(n+1)]`
-/

namespace A146560.P7054581600233137480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P7054581600233137480

namespace A146560

/-- `∩[A241809(n+1), A369021(n+1)]` -/
def P7054581600233137480.Spec : Prop :=
  ∀ n, (P7054581600233137480.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P10659812781111365702

`∩[A066774(n+1), A121495(n+1)]`
-/

namespace A146560.P10659812781111365702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P10659812781111365702

namespace A146560

/-- `∩[A066774(n+1), A121495(n+1)]` -/
def P10659812781111365702.Spec : Prop :=
  ∀ n, (P10659812781111365702.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P10376438357140325078

`∩[A121495(n+1), A241809(n+1)]`
-/

namespace A146560.P10376438357140325078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P10376438357140325078

namespace A146560

/-- `∩[A121495(n+1), A241809(n+1)]` -/
def P10376438357140325078.Spec : Prop :=
  ∀ n, (P10376438357140325078.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P1003335024705435035

`∩[A007674(n+1), A241809(n+1)]`
-/

namespace A146560.P1003335024705435035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P1003335024705435035

namespace A146560

/-- `∩[A007674(n+1), A241809(n+1)]` -/
def P1003335024705435035.Spec : Prop :=
  ∀ n, (P1003335024705435035.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P499274172048353112

`∩[A081083(n+1), A241809(n+1)]`
-/

namespace A146560.P499274172048353112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P499274172048353112

namespace A146560

/-- `∩[A081083(n+1), A241809(n+1)]` -/
def P499274172048353112.Spec : Prop :=
  ∀ n, (P499274172048353112.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P4200866470972386433

`∩[A241809(n+1), A344314(n+1)]`
-/

namespace A146560.P4200866470972386433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P4200866470972386433

namespace A146560

/-- `∩[A241809(n+1), A344314(n+1)]` -/
def P4200866470972386433.Spec : Prop :=
  ∀ n, (P4200866470972386433.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P7723395396301740179

`∩[A241809(n+1), A358817(n+1)]`
-/

namespace A146560.P7723395396301740179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P7723395396301740179

namespace A146560

/-- `∩[A241809(n+1), A358817(n+1)]` -/
def P7723395396301740179.Spec : Prop :=
  ∀ n, (P7723395396301740179.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P10435378088442235632

`∩[A241809(n+1), A369020(n+1)]`
-/

namespace A146560.P10435378088442235632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P10435378088442235632

namespace A146560

/-- `∩[A241809(n+1), A369020(n+1)]` -/
def P10435378088442235632.Spec : Prop :=
  ∀ n, (P10435378088442235632.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P15634664742185448119

`∩[A241809(n+1), A344312(n+1)]`
-/

namespace A146560.P15634664742185448119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P15634664742185448119

namespace A146560

/-- `∩[A241809(n+1), A344312(n+1)]` -/
def P15634664742185448119.Spec : Prop :=
  ∀ n, (P15634664742185448119.a n : ℤ) = A146560 (n + 1)

end A146560

/-! ## A146560.P10812713503099440125

`∩[A241809(n+1), A398170(n+1)]`
-/

namespace A146560.P10812713503099440125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P10812713503099440125

namespace A146560

/-- `∩[A241809(n+1), A398170(n+1)]` -/
def P10812713503099440125.Spec : Prop :=
  ∀ n, (P10812713503099440125.a n : ℤ) = A146560 (n + 1)

end A146560

/-!
# A146562: 'Erratic' numbers in A064353 [Kolakoski (1,3)].

The programs for A146562, there is no canonical definition to state claims against.
-/

/-! ## A146562.P18399528875405178962

`A362930(n+1)+Δ[n²]`
-/

namespace A146562.P18399528875405178962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362930 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A146562.P18399528875405178962

/-! ## A146562.P2639542307172379212

`A362930(n+1)+A005843(n)+1`
-/

namespace A146562.P2639542307172379212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362930 (n + 1) + A005843 n + 1

end

end A146562.P2639542307172379212

/-! ## A146562.P157821796912343456

`A000027(n+1)+A362930(n+1)+n`
-/

namespace A146562.P157821796912343456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A362930 (n + 1) + (n : ℤ))

end

end A146562.P157821796912343456

/-! ## A146562.P1686468293253755488

`A005408(n)+comp[A362929(n+1)-2]+2`
-/

namespace A146562.P1686468293253755488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362929 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 : ℤ)

end

end A146562.P1686468293253755488

/-! ## A146562.P17891592338077794847

`A000265(2*n+1)+round(sqrt(A362930(n+1)²+1))`
-/

namespace A146562.P17891592338077794847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A362930 (n + 1) ^ 2 + 1 : ℝ))

end

end A146562.P17891592338077794847

/-! ## A146562.P18054663497259769968

`xor(1, 2*n)+eq[1, A362927(n+1)]+1`
-/

namespace A146562.P18054663497259769968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A146562.P18054663497259769968

/-! ## A146562.P4075562696436599394

`record[A193356(n+1)]+eq[1, A362927(n+1)]+1`
-/

namespace A146562.P4075562696436599394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A146562.P4075562696436599394

/-! ## A146562.P17916998097530178461

`A004396(3*n)+A362930(n+1)+1`
-/

namespace A146562.P17916998097530178461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (3 * n) + (A362930 (n + 1) + 1)

end

end A146562.P17916998097530178461

/-! ## A146562.P12439990113461834338

`A028310(A362930(n+1)+A005408(n))`
-/

namespace A146562.P12439990113461834338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A362930 (n + 1) + A005408 n).toNat

end

end A146562.P12439990113461834338

/-!
# A146564: a(n) is the number of solutions of the equation k*n/(k-n) = c. k,c integers.

The programs for A146564, the canonical program `A146564.P5455940889942169782` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146564 has offset 1).

The definition of A146564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146564.P3015087178330249845

`3*A063647(n+1)+1`
-/

namespace A146564.P3015087178330249845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A063647 (n + 1) + 1

end

end A146564.P3015087178330249845

namespace A146564

/-- `3*A063647(n+1)+1` -/
def P3015087178330249845.Spec : Prop :=
  ∀ n, P3015087178330249845.a n = A146564 (n + 1)

theorem P3015087178330249845.correct : P3015087178330249845.Spec := by
  intro n
  simp only [A146564, Nat.add_sub_cancel, A146564.P3015087178330249845.a, A146564.P5455940889942169782.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A063647, A063647.P10388026275025770888.a, A018892, A018892.P739243444939951687.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A146564

/-! ## A146564.P7821160329919131629

`3*A018892(n+1)-2`
-/

namespace A146564.P7821160329919131629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018892 (n + 1) - 2

end

end A146564.P7821160329919131629

namespace A146564

/-- `3*A018892(n+1)-2` -/
def P7821160329919131629.Spec : Prop :=
  ∀ n, P7821160329919131629.a n = A146564 (n + 1)

theorem P7821160329919131629.correct : P7821160329919131629.Spec := by
  intro n
  simp only [A146564, Nat.add_sub_cancel, A146564.P7821160329919131629.a, A146564.P5455940889942169782.a, A018892, A018892.P739243444939951687.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A146564

/-! ## A146564.P14189277336846297349

`floor(3*A048691(n+1)/2)`
-/

namespace A146564.P14189277336846297349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A048691 (n + 1) : ℚ) / 2⌋

end

end A146564.P14189277336846297349

namespace A146564

/-- `floor(3*A048691(n+1)/2)` -/
def P14189277336846297349.Spec : Prop :=
  ∀ n, P14189277336846297349.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P5455940889942169782

`3*A046079(2*(n+1))+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A146564

/-- `3*A046079(2*(n+1))+1` -/
def P5455940889942169782.Spec : Prop :=
  ∀ n, P5455940889942169782.a n = A146564 (n + 1)

theorem P5455940889942169782.correct : P5455940889942169782.Spec := by
  intro n
  simp only [A146564, Nat.add_sub_cancel]

end A146564

/-! ## A146564.P11154786394271108264

`A001651(A048691(n+1))`
-/

namespace A146564.P11154786394271108264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A048691 (n + 1)).toNat

end

end A146564.P11154786394271108264

namespace A146564

/-- `A001651(A048691(n+1))` -/
def P11154786394271108264.Spec : Prop :=
  ∀ n, P11154786394271108264.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P10740401962852459062

`A016777(A063647(n+1))`
-/

namespace A146564.P10740401962852459062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A063647 (n + 1)).toNat

end

end A146564.P10740401962852459062

namespace A146564

/-- `A016777(A063647(n+1))` -/
def P10740401962852459062.Spec : Prop :=
  ∀ n, P10740401962852459062.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P9001955115309074718

`A016777(A046079(2*(n+1)))`
-/

namespace A146564.P9001955115309074718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A046079 (2 * (n + 1))).toNat

end

end A146564.P9001955115309074718

namespace A146564

/-- `A016777(A046079(2*(n+1)))` -/
def P9001955115309074718.Spec : Prop :=
  ∀ n, P9001955115309074718.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P6210355095026949416

`A048691(n+1)+A063647(n+1)`
-/

namespace A146564.P6210355095026949416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + A063647 (n + 1)

end

end A146564.P6210355095026949416

namespace A146564

/-- `A048691(n+1)+A063647(n+1)` -/
def P6210355095026949416.Spec : Prop :=
  ∀ n, P6210355095026949416.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P14468957110569995950

`A018892(n+1)+A048691(n+1)-1`
-/

namespace A146564.P14468957110569995950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + (A048691 (n + 1) - 1)

end

end A146564.P14468957110569995950

namespace A146564

/-- `A018892(n+1)+A048691(n+1)-1` -/
def P14468957110569995950.Spec : Prop :=
  ∀ n, P14468957110569995950.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P11688960167952263822

`∑{d}[n+1, A073184(#)*A074943((n+1)/#)]`
-/

namespace A146564.P11688960167952263822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A074943 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A146564.P11688960167952263822

namespace A146564

/-- `∑{d}[n+1, A073184(#)*A074943((n+1)/#)]` -/
def P11688960167952263822.Spec : Prop :=
  ∀ n, P11688960167952263822.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P12704686921408956930

`A063647(n+1)+A004273(A063647(n+1)+1)`
-/

namespace A146564.P12704686921408956930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + A004273 (A063647 (n + 1) + 1).toNat

end

end A146564.P12704686921408956930

namespace A146564

/-- `A063647(n+1)+A004273(A063647(n+1)+1)` -/
def P12704686921408956930.Spec : Prop :=
  ∀ n, P12704686921408956930.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P5694723188391258981

`A018892(n+1)+A005843(A018892(n+1)-1)`
-/

namespace A146564.P5694723188391258981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + A005843 (A018892 (n + 1) - 1).toNat

end

end A146564.P5694723188391258981

namespace A146564

/-- `A018892(n+1)+A005843(A018892(n+1)-1)` -/
def P5694723188391258981.Spec : Prop :=
  ∀ n, P5694723188391258981.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P13824271968202933788

`A048691(n+1)+A001281(A048691(n+1)-1)`
-/

namespace A146564.P13824271968202933788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + A001281 (A048691 (n + 1) - 1).toNat

end

end A146564.P13824271968202933788

namespace A146564

/-- `A048691(n+1)+A001281(A048691(n+1)-1)` -/
def P13824271968202933788.Spec : Prop :=
  ∀ n, P13824271968202933788.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P8272099815777789047

`A048691(n+1)+A004525(A048691(n+1)-1)`
-/

namespace A146564.P8272099815777789047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + A004525 (A048691 (n + 1) - 1).toNat

end

end A146564.P8272099815777789047

namespace A146564

/-- `A048691(n+1)+A004525(A048691(n+1)-1)` -/
def P8272099815777789047.Spec : Prop :=
  ∀ n, P8272099815777789047.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P10862574169002605603

`A048691(n+1)+A004526(A048691(n+1)-1)`
-/

namespace A146564.P10862574169002605603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + A004526 (A048691 (n + 1) - 1).toNat

end

end A146564.P10862574169002605603

namespace A146564

/-- `A048691(n+1)+A004526(A048691(n+1)-1)` -/
def P10862574169002605603.Spec : Prop :=
  ∀ n, P10862574169002605603.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P12455624340806024728

`A048691(n+1)+A029578(A048691(n+1)-1)`
-/

namespace A146564.P12455624340806024728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + A029578 (A048691 (n + 1) - 1).toNat

end

end A146564.P12455624340806024728

namespace A146564

/-- `A048691(n+1)+A029578(A048691(n+1)-1)` -/
def P12455624340806024728.Spec : Prop :=
  ∀ n, P12455624340806024728.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P4470454280549138497

`A097140(A048691(n+1)-1)+A048691(n+1)`
-/

namespace A146564.P4470454280549138497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A048691 (n + 1) - 1).toNat + A048691 (n + 1)

end

end A146564.P4470454280549138497

namespace A146564

/-- `A097140(A048691(n+1)-1)+A048691(n+1)` -/
def P4470454280549138497.Spec : Prop :=
  ∀ n, P4470454280549138497.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P7808635758241815856

`A023444(2*A018892(n+1))+A018892(n+1)`
-/

namespace A146564.P7808635758241815856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (2 * A018892 (n + 1)).toNat + A018892 (n + 1)

end

end A146564.P7808635758241815856

namespace A146564

/-- `A023444(2*A018892(n+1))+A018892(n+1)` -/
def P7808635758241815856.Spec : Prop :=
  ∀ n, P7808635758241815856.a n = A146564 (n + 1)

end A146564

/-! ## A146564.P14229485070853643455

`A048691(n+1)+A002265(2*A048691(n+1))`
-/

namespace A146564.P14229485070853643455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + A002265 (2 * A048691 (n + 1)).toNat

end

end A146564.P14229485070853643455

namespace A146564

/-- `A048691(n+1)+A002265(2*A048691(n+1))` -/
def P14229485070853643455.Spec : Prop :=
  ∀ n, P14229485070853643455.a n = A146564 (n + 1)

end A146564

/-!
# A146565: Triangle read by rows: T(n,k) = [x^k] p(x,n) where p(x,n) = (1 + x)^n for n < 2, p(x,n) = (1 + x + x^2)*(1 + x)^(n - 2) for 2 <= n <= 4, and p(x,n) = (1 + 3*x + 5*x^2 + 3*x^3 + x^4)*(1 + x)^(n - 4) for n > 4.

The programs for A146565, there is no canonical definition to state claims against.
-/

/-! ## A146565.P14084319827162354536

`A048766(A163940(n)+A056940(n))`
-/

namespace A146565.P14084319827162354536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A163940 n + A056940 n).toNat

end

end A146565.P14084319827162354536

/-! ## A146565.P10591052821861654575

`A007318(n)-A122922(A202756(n+1))`
-/

namespace A146565.P10591052821861654575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A122922 (A202756 (n + 1)).toNat

end

end A146565.P10591052821861654575

/-! ## A146565.P12988721286147845563

`A366066(A115594(n+1)²)`
-/

namespace A146565.P12988721286147845563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366066 (A115594 (n + 1) ^ 2).toNat

end

end A146565.P12988721286147845563

/-! ## A146565.P11511275014935465289

`A246869(A115594(n+1)^3)`
-/

namespace A146565.P11511275014935465289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246869 (A115594 (n + 1) ^ 3).toNat

end

end A146565.P11511275014935465289

/-! ## A146565.P3762652152660300814

`A277760(A118180(n))`
-/

namespace A146565.P3762652152660300814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277760 (A118180 n).toNat

end

end A146565.P3762652152660300814

/-!
# A146566: Numbers k such that k*sigma_0(k) is divisible by (k - sigma_0(k)).

The programs for A146566, there is no canonical definition to state claims against.
-/

/-! ## A146566.P11107647640306226565

`eq[1, A352483(n+1)]+1`
-/

namespace A146566.P11107647640306226565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A146566.P11107647640306226565

/-! ## A146566.P11696769452127976722

`eq[1, A352483(A028310(n))]`
-/

namespace A146566.P11696769452127976722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352483 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146566.P11696769452127976722

/-! ## A146566.P10292257494520466960

`A020725(eq[1, A352483(n+1)])`
-/

namespace A146566.P10292257494520466960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146566.P10292257494520466960

/-! ## A146566.P4095269778110440229

`A065475(eq[1, A352483(n+1)])`
-/

namespace A146566.P4095269778110440229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146566.P4095269778110440229

/-! ## A146566.P7864462672806369969

`eq[1, A352483(A233583(n+1))]`
-/

namespace A146566.P7864462672806369969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352483 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146566.P7864462672806369969

/-!
# A146567: Numbers k such that k*sigma_0(k)/(k+sigma_0(k)) = c, c an integer.

The programs for A146567, there is no canonical definition to state claims against.
-/

/-! ## A146567.P626328562871648439

`A046525(A098170(n+1)-A019446(n+1))`
-/

namespace A146567.P626328562871648439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046525 (A098170 (n + 1) - A019446 (n + 1)).toNat

end

end A146567.P626328562871648439

/-! ## A146567.P1692714049746079418

`record[A214636(3*n+4)]*∑{d}[n+1, #]`
-/

namespace A146567.P1692714049746079418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214636 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A146567.P1692714049746079418

/-!
# A146568: Coefficients of Pascal's triangle polynomial minus MacMahon polynomial A060187 with a power of x divided out: q(x,n)=2^n*(1 - x)^(n + 1)* LerchPhi[x, -n, 1/2]; p(x,n)=((x+1)^n-q(x,n))/x.

The programs for A146568, there is no canonical definition to state claims against.
-/

/-! ## A146568.P5455624893808251665

`A154817(n+1)-A014410(n+2)`
-/

namespace A146568.P5455624893808251665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154817 (n + 1) - A014410 (n + 2)

end

end A146568.P5455624893808251665

/-! ## A146568.P110061709372076678

`A060187((n-comp[∑[n]])²+1-n)-A014410(n+2)`
-/

namespace A146568.P110061709372076678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (1 - (n : ℤ))).toNat - A014410 (n + 2)

end

end A146568.P110061709372076678

/-! ## A146568.P117286972309206249

`A158781(lt[1, A158781(n)])-A014410(n+2)`
-/

namespace A146568.P117286972309206249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A014410 (n + 2)

end

end A146568.P117286972309206249

/-!
# A146570: Number of n X n binary arrays with all ones connected only in a 0100-0100-1111 pattern in any orientation.

The programs for A146570, there is no canonical definition to state claims against.
-/

/-! ## A146570.P17937152757942127075

`A146572(2*n+3)`
-/

namespace A146570.P17937152757942127075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146572 (2 * n + 3)

end

end A146570.P17937152757942127075

/-! ## A146570.P2494281529983160645

`or(1, A146572(A005408(n+1)))`
-/

namespace A146570.P2494281529983160645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146572 (A005408 (n + 1)).toNat)

end

end A146570.P2494281529983160645

/-! ## A146570.P14995947571244001836

`or(1, A146572(A144396(n+1)))`
-/

namespace A146570.P14995947571244001836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146572 (A144396 (n + 1)).toNat)

end

end A146570.P14995947571244001836

/-! ## A146570.P4248921832746277475

`∏{d}[A005408(n+1), A146572(#)]`
-/

namespace A146570.P4248921832746277475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146572 d

end

end A146570.P4248921832746277475

/-! ## A146570.P4536374816044542912

`∏{d}[A144396(n+1), A146572(#)]`
-/

namespace A146570.P4536374816044542912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146572 d

end

end A146570.P4536374816044542912

/-!
# A146571: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-0100-1111 pattern in any orientation.

The programs for A146571, there is no canonical definition to state claims against.
-/

/-! ## A146571.P6513017378725666096

`or(A146438(n+1), A339087(A026768(n)))`
-/

namespace A146571.P6513017378725666096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146438 (n + 1)) (A339087 (A026768 n).toNat)

end

end A146571.P6513017378725666096

/-! ## A146571.P9953578366484049285

`and(A146456(n+1), A201958(A146475(n+1)))`
-/

namespace A146571.P9953578366484049285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146456 (n + 1)) (A201958 (A146475 (n + 1)).toNat)

end

end A146571.P9953578366484049285

/-! ## A146571.P9458007795995227028

`or(A146438(n+1), A241703(A146449(n+1)))`
-/

namespace A146571.P9458007795995227028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146438 (n + 1)) (A241703 (A146449 (n + 1)).toNat)

end

end A146571.P9458007795995227028

/-! ## A146571.P7798963406672855963

`or(A146433(A146449(n+2)), A146438(n+1))`
-/

namespace A146571.P7798963406672855963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146433 (A146449 (n + 2)).toNat) (A146438 (n + 1))

end

end A146571.P7798963406672855963

/-!
# A146572: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-0100-1111 pattern in any orientation.

The programs for A146572, there is no canonical definition to state claims against.
-/

/-! ## A146572.P14209037031495439987

`A032742(2*A146785(n+1))`
-/

namespace A146572.P14209037031495439987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A146785 (n + 1)).toNat

end

end A146572.P14209037031495439987

/-! ## A146572.P6010086103257088551

`A078898(2*A146785(n+1))`
-/

namespace A146572.P6010086103257088551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * A146785 (n + 1)).toNat

end

end A146572.P6010086103257088551

/-! ## A146572.P17785975570537184544

`A289435(2*A146785(n+1))`
-/

namespace A146572.P17785975570537184544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (2 * A146785 (n + 1)).toNat

end

end A146572.P17785975570537184544

/-! ## A146572.P4286595747573683463

`A289441(2*A146785(n+1))`
-/

namespace A146572.P4286595747573683463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (2 * A146785 (n + 1)).toNat

end

end A146572.P4286595747573683463

/-! ## A146572.P15862141765009824856

`A032742(lcm(2, A146785(n+1)))`
-/

namespace A146572.P15862141765009824856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.lcm 2 (A146785 (n + 1)))

end

end A146572.P15862141765009824856

/-!
# A146573: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-0100-1111 pattern in any orientation.

The programs for A146573, there is no canonical definition to state claims against.
-/

/-! ## A146573.P14721139999392508904

`A146575(2*(n+2))`
-/

namespace A146573.P14721139999392508904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146575 (2 * (n + 2))

end

end A146573.P14721139999392508904

/-! ## A146573.P17636598121649041068

`or(1, A146575(A144396(n+1)))`
-/

namespace A146573.P17636598121649041068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146575 (A144396 (n + 1)).toNat)

end

end A146573.P17636598121649041068

/-! ## A146573.P3993276619934612310

`∏{d}[A144396(n+1), A146575(#)]`
-/

namespace A146573.P3993276619934612310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146575 d

end

end A146573.P3993276619934612310

/-! ## A146573.P8433600156639078194

`A185284(n)+A146575(A144396(n+1))`
-/

namespace A146573.P8433600156639078194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A146575 (A144396 (n + 1)).toNat

end

end A146573.P8433600156639078194

/-! ## A146573.P2111168134793139130

`A146575(A144396(n+1))%A000040(C(n+6, 5))`
-/

namespace A146573.P2111168134793139130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146575 (A144396 (n + 1)).toNat) (A000040 (Nat.choose (n + 6) 5))

end

end A146573.P2111168134793139130

/-!
# A146574: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-0100-1111 pattern in any orientation.

The programs for A146574, there is no canonical definition to state claims against.
-/

/-! ## A146574.P4287145282543658828

`2*floor(A321402(n)/5)+1`
-/

namespace A146574.P4287145282543658828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A321402 n : ℚ) / 5⌋ + 1

end

end A146574.P4287145282543658828

/-! ## A146574.P6068996829651155882

`A101435(A000048(n))`
-/

namespace A146574.P6068996829651155882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A000048 n).toNat

end

end A146574.P6068996829651155882

/-! ## A146574.P986347049764673950

`A156724(A030032(n))`
-/

namespace A146574.P986347049764673950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A030032 n).toNat

end

end A146574.P986347049764673950

/-! ## A146574.P141878388367694273

`A388292(A023422(n))`
-/

namespace A146574.P141878388367694273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388292 (A023422 n).toNat

end

end A146574.P141878388367694273

/-! ## A146574.P10295510736592119374

`A294371(A275072(n))`
-/

namespace A146574.P10295510736592119374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294371 (A275072 n).toNat

end

end A146574.P10295510736592119374

/-!
# A146576: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-0100-1111 pattern in any orientation.

The programs for A146576, there is no canonical definition to state claims against.
-/

/-! ## A146576.P7264682988611645106

`A158405(A177427(n)%A051426(n+1))`
-/

namespace A146576.P7264682988611645106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (Int.tmod (A177427 n) (A051426 (n + 1))).toNat

end

end A146576.P7264682988611645106

/-! ## A146576.P10042947718992137181

`A185170(A241390(n)%A122532(n+1))`
-/

namespace A146576.P10042947718992137181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185170 (Int.tmod (A241390 n) (A122532 (n + 1))).toNat

end

end A146576.P10042947718992137181

/-! ## A146576.P2665771554063874256

`A216319(A216327(2*n+1)+A010551(n))`
-/

namespace A146576.P2665771554063874256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216319 (A216327 (2 * n + 1) + A010551 n).toNat

end

end A146576.P2665771554063874256

/-! ## A146576.P970311602490674812

`or(3, A267502(n+2))-2`
-/

namespace A146576.P970311602490674812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A267502 (n + 2)) - 2

end

end A146576.P970311602490674812

/-! ## A146576.P4051935867002362723

`A178334(lt[n, n*n%7]^∑[char[3*n]])`
-/

namespace A146576.P4051935867002362723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 7)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ (∑ j ∈ Finset.range (n + 1), f3 j))

end

end A146576.P4051935867002362723

/-!
# A146577: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-0100-1111 pattern in any orientation.

The programs for A146577, there is no canonical definition to state claims against.
-/

/-! ## A146577.P2987608449381584463

`A300330(or(1, A246014(n)))`
-/

namespace A146577.P2987608449381584463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (Int.lor 1 (A246014 n)).toNat

end

end A146577.P2987608449381584463

/-! ## A146577.P2197541904519563623

`or(A014709(A014728(n)), A246014(n))`
-/

namespace A146577.P2197541904519563623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014709 (A014728 n).toNat) (A246014 n)

end

end A146577.P2197541904519563623

/-! ## A146577.P3928119838913713799

`or(A045778(A127997(n+1)), A246014(n))`
-/

namespace A146577.P3928119838913713799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045778 (A127997 (n + 1)).toNat) (A246014 n)

end

end A146577.P3928119838913713799

/-! ## A146577.P7709194562573018860

`or(A057427(A246022(n+1)), A246014(n))`
-/

namespace A146577.P7709194562573018860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A246022 (n + 1)).toNat) (A246014 n)

end

end A146577.P7709194562573018860

/-!
# A146578: Number of n X n binary arrays with all ones connected only in a 0100-1100-0111 pattern in any orientation.

The programs for A146578, there is no canonical definition to state claims against.
-/

/-! ## A146578.P8177816538010803573

`A146580(2*(n+2))`
-/

namespace A146578.P8177816538010803573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146580 (2 * (n + 2))

end

end A146578.P8177816538010803573

/-! ## A146578.P4822060361825543780

`or(1, A146580(A144396(n+1)))`
-/

namespace A146578.P4822060361825543780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146580 (A144396 (n + 1)).toNat)

end

end A146578.P4822060361825543780

/-! ## A146578.P85571873940084174

`A146580(A144396(n+1))%A017058(n)`
-/

namespace A146578.P85571873940084174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146580 (A144396 (n + 1)).toNat) (A017058 n)

end

end A146578.P85571873940084174

/-! ## A146578.P5987879308667045148

`A146580(A144396(n+1))/A146591(n+1)`
-/

namespace A146578.P5987879308667045148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146580 (A144396 (n + 1)).toNat : ℚ) / (A146591 (n + 1) : ℚ)

end

end A146578.P5987879308667045148

/-! ## A146578.P11846586333550727524

`lcm(A146580(A144396(n+1)), A146607(n+1))`
-/

namespace A146578.P11846586333550727524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146580 (A144396 (n + 1)).toNat) (A146607 (n + 1))

end

end A146578.P11846586333550727524

/-!
# A146579: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-1100-0111 pattern in any orientation.

The programs for A146579, there is no canonical definition to state claims against.
-/

/-! ## A146579.P5816911627327321534

`or(A049474(A309861(n)), A146438(n+1))`
-/

namespace A146579.P5816911627327321534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049474 (A309861 n).toNat) (A146438 (n + 1))

end

end A146579.P5816911627327321534

/-! ## A146579.P6228488514914233045

`A339087(A146432(n+1))+A146438(n+1)`
-/

namespace A146579.P6228488514914233045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339087 (A146432 (n + 1)).toNat + A146438 (n + 1)

end

end A146579.P6228488514914233045

/-! ## A146579.P811874947959720489

`or(A146438(n+1), A146449(A276142(n+1)))`
-/

namespace A146579.P811874947959720489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146438 (n + 1)) (A146449 (A276142 (n + 1)).toNat)

end

end A146579.P811874947959720489

/-!
# A146581: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1100-0111 pattern in any orientation.

The programs for A146581, there is no canonical definition to state claims against.
-/

/-! ## A146581.P6692477807110949070

`A146583(2*(n+2))`
-/

namespace A146581.P6692477807110949070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146583 (2 * (n + 2))

end

end A146581.P6692477807110949070

/-! ## A146581.P15758536019573210021

`or(1, A146583(A144396(n+1)))`
-/

namespace A146581.P15758536019573210021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146583 (A144396 (n + 1)).toNat)

end

end A146581.P15758536019573210021

/-! ## A146581.P1524007771980051283

`∏{d}[A144396(n+1), A146583(#)]`
-/

namespace A146581.P1524007771980051283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146583 d

end

end A146581.P1524007771980051283

/-! ## A146581.P8794780439030222759

`A185284(n)+A146583(A144396(n+1))`
-/

namespace A146581.P8794780439030222759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A146583 (A144396 (n + 1)).toNat

end

end A146581.P8794780439030222759

/-! ## A146581.P17409822441339207643

`A146583(A144396(n+1))%A006497(n)`
-/

namespace A146581.P17409822441339207643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146583 (A144396 (n + 1)).toNat) (A006497 n)

end

end A146581.P17409822441339207643

/-!
# A146582: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-1100-0111 pattern in any orientation.

The programs for A146582, there is no canonical definition to state claims against.
-/

/-! ## A146582.P8823249341586510577

`A257144(A146473(n+1))`
-/

namespace A146582.P8823249341586510577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257144 (A146473 (n + 1)).toNat

end

end A146582.P8823249341586510577

/-! ## A146582.P7547632144150782588

`A273134(n+1)+A273107(A127624(2*n+1))`
-/

namespace A146582.P7547632144150782588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273134 (n + 1) + A273107 (A127624 (2 * n + 1)).toNat

end

end A146582.P7547632144150782588

/-!
# A146584: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-1100-0111 pattern in any orientation.

The programs for A146584, there is no canonical definition to state claims against.
-/

/-! ## A146584.P3451335688636579574

`A235487(A146789(n+1)²)/A235487(A146789(n+1))`
-/

namespace A146584.P3451335688636579574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235487 (A146789 (n + 1) ^ 2).toNat : ℚ) / (A235487 (A146789 (n + 1)).toNat : ℚ)

end

end A146584.P3451335688636579574

/-! ## A146584.P13715245960862247450

`A196416(A215006(n))`
-/

namespace A146584.P13715245960862247450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (A215006 n).toNat

end

end A146584.P13715245960862247450

/-! ## A146584.P16704713605942425921

`A196416(A347787(n))`
-/

namespace A146584.P16704713605942425921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (A347787 n).toNat

end

end A146584.P16704713605942425921

/-! ## A146584.P5033029347307427777

`A082457(A063793(n+3))`
-/

namespace A146584.P5033029347307427777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082457 (A063793 (n + 3)).toNat

end

end A146584.P5033029347307427777

/-! ## A146584.P14070696966846099074

`filter[A147509(n+2), A186447(#)]`
-/

namespace A146584.P14070696966846099074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147509 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A186447 (f1 j).toNat = 1) n)

end

end A146584.P14070696966846099074

/-!
# A146585: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-1100-0111 pattern in any orientation.

The programs for A146585, there is no canonical definition to state claims against.
-/

/-! ## A146585.P12397296195312240162

`A097992(A000196(n)*A006701(n))`
-/

namespace A146585.P12397296195312240162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A000196 n * A006701 n).toNat

end

end A146585.P12397296195312240162

/-! ## A146585.P13828090433774701369

`or(A003007(A146058(n+1)), A146041(n+1))`
-/

namespace A146585.P13828090433774701369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003007 (A146058 (n + 1)).toNat) (A146041 (n + 1))

end

end A146585.P13828090433774701369

/-!
# A146586: Number of n X n binary arrays with all ones connected only in a 0110-1111-0100 pattern in any orientation.

The programs for A146586, there is no canonical definition to state claims against.
-/

/-! ## A146586.P8135329650653188843

`A146588(2*n+3)`
-/

namespace A146586.P8135329650653188843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146588 (2 * n + 3)

end

end A146586.P8135329650653188843

/-! ## A146586.P14452889692587361543

`or(1, A146588(A144396(n+1)))`
-/

namespace A146586.P14452889692587361543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146588 (A144396 (n + 1)).toNat)

end

end A146586.P14452889692587361543

/-! ## A146586.P15981396946396791565

`A146588(A144396(n+1))%A017058(n)`
-/

namespace A146586.P15981396946396791565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146588 (A144396 (n + 1)).toNat) (A017058 n)

end

end A146586.P15981396946396791565

/-! ## A146586.P11336257271309646633

`A146588(A144396(n+1))/A146591(n+1)`
-/

namespace A146586.P11336257271309646633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146588 (A144396 (n + 1)).toNat : ℚ) / (A146591 (n + 1) : ℚ)

end

end A146586.P11336257271309646633

/-! ## A146586.P13000027693069618013

`or(1, A146588(A193175(n+1)))`
-/

namespace A146586.P13000027693069618013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146588 (A193175 (n + 1)).toNat)

end

end A146586.P13000027693069618013

/-!
# A146587: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0110-1111-0100 pattern in any orientation.

The programs for A146587, there is no canonical definition to state claims against.
-/

/-! ## A146587.P2731267776268764381

`A147256(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A146587.P2731267776268764381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A147256 (a (n - 3) + (n : ℤ)).toNat

end

end A146587.P2731267776268764381

/-! ## A146587.P9731947874919322884

`A147256(A024654(n)+1)`
-/

namespace A146587.P9731947874919322884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147256 (A024654 n + 1).toNat

end

end A146587.P9731947874919322884

/-! ## A146587.P8665437678106181391

`A147256(A276142(n+1))`
-/

namespace A146587.P8665437678106181391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147256 (A276142 (n + 1)).toNat

end

end A146587.P8665437678106181391

/-! ## A146587.P15610249529474884688

`filter[A147256(n+1), A023960(#)]`
-/

namespace A146587.P15610249529474884688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023960 (f1 j).toNat = 1) n)

end

end A146587.P15610249529474884688

/-! ## A146587.P7712518742274223231

`filter[A147256(n+1), A071374(#)]`
-/

namespace A146587.P7712518742274223231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A146587.P7712518742274223231

/-!
# A146589: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0110-1111-0100 pattern in any orientation.

The programs for A146589, there is no canonical definition to state claims against.
-/

/-! ## A146589.P15620686241524890293

`A146591(2*n+3)`
-/

namespace A146589.P15620686241524890293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146591 (2 * n + 3)

end

end A146589.P15620686241524890293

/-! ## A146589.P9824295168236806541

`or(1, A146591(A138830(n+1)))`
-/

namespace A146589.P9824295168236806541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146591 (A138830 (n + 1)).toNat)

end

end A146589.P9824295168236806541

/-! ## A146589.P5550544573703626721

`or(1, A146591(A144396(n+1)))`
-/

namespace A146589.P5550544573703626721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146591 (A144396 (n + 1)).toNat)

end

end A146589.P5550544573703626721

/-! ## A146589.P12255914731547472074

`or(1, A146591(A346302(n+1)))`
-/

namespace A146589.P12255914731547472074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146591 (A346302 (n + 1)).toNat)

end

end A146589.P12255914731547472074

/-! ## A146589.P14569594329583455945

`A000027(A146591(Δ[(n+1)²]))`
-/

namespace A146589.P14569594329583455945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A146591 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146589.P14569594329583455945

/-!
# A146590: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0110-1111-0100 pattern in any orientation.

The programs for A146590, there is no canonical definition to state claims against.
-/

/-! ## A146590.P225159153520169980

`A330318(A146630(n+1)-A146606(n+1))`
-/

namespace A146590.P225159153520169980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330318 (A146630 (n + 1) - A146606 (n + 1)).toNat

end

end A146590.P225159153520169980

/-! ## A146590.P66679874252893762

`A105356(A146931(n+1))-A192326(A322996(2*(n+1)))`
-/

namespace A146590.P66679874252893762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A146931 (n + 1)).toNat - A192326 (A322996 (2 * (n + 1))).toNat

end

end A146590.P66679874252893762

/-! ## A146590.P3132609308664594673

`A116883(A058058(n+1))`
-/

namespace A146590.P3132609308664594673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116883 (A058058 (n + 1)).toNat

end

end A146590.P3132609308664594673

/-! ## A146590.P4761614128578566257

`A321762(A196876(n+1))`
-/

namespace A146590.P4761614128578566257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321762 (A196876 (n + 1)).toNat

end

end A146590.P4761614128578566257

/-! ## A146590.P6870383758059291780

`filter[A146875(n+2), A030657(#)]`
-/

namespace A146590.P6870383758059291780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146875 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030657 (f1 j).toNat = 1) n)

end

end A146590.P6870383758059291780

/-!
# A146591: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0110-1111-0100 pattern in any orientation.

The programs for A146591, there is no canonical definition to state claims against.
-/

/-! ## A146591.P3327500312760775385

`A122282(A146868(n+1))`
-/

namespace A146591.P3327500312760775385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A146868 (n + 1)).toNat

end

end A146591.P3327500312760775385

/-! ## A146591.P13468857427991956320

`A033677(A146868(n+1)²)`
-/

namespace A146591.P13468857427991956320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A146868 (n + 1) ^ 2).toNat

end

end A146591.P13468857427991956320

/-! ## A146591.P11522670446114916768

`filter[A146868(n+1), A010055(#)]`
-/

namespace A146591.P11522670446114916768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A146591.P11522670446114916768

/-! ## A146591.P16639664987843674966

`filter[A146868(n+1), A030657(#)]`
-/

namespace A146591.P16639664987843674966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030657 (f1 j).toNat = 1) n)

end

end A146591.P16639664987843674966

/-! ## A146591.P3448135141293216956

`filter[A146868(n+1), A071040(#)]`
-/

namespace A146591.P3448135141293216956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071040 (f1 j).toNat = 1) n)

end

end A146591.P3448135141293216956

/-!
# A146592: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0110-1111-0100 pattern in any orientation.

The programs for A146592, there is no canonical definition to state claims against.
-/

/-! ## A146592.P4857166906845100935

`or(A004696(n), A110029(A147215(n+1)))`
-/

namespace A146592.P4857166906845100935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004696 n) (A110029 (A147215 (n + 1)).toNat)

end

end A146592.P4857166906845100935

/-! ## A146592.P5479799346360875893

`or(A043556(A146705(n+1)), A146704(n+1))`
-/

namespace A146592.P5479799346360875893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043556 (A146705 (n + 1)).toNat) (A146704 (n + 1))

end

end A146592.P5479799346360875893

/-! ## A146592.P8537541304040306327

`or(A046665(A146643(n+1)), A146704(n+1))`
-/

namespace A146592.P8537541304040306327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046665 (A146643 (n + 1)).toNat) (A146704 (n + 1))

end

end A146592.P8537541304040306327

/-! ## A146592.P9977732859915342365

`or(A046665(A146715(n+1)), A146704(n+1))`
-/

namespace A146592.P9977732859915342365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046665 (A146715 (n + 1)).toNat) (A146704 (n + 1))

end

end A146592.P9977732859915342365

/-! ## A146592.P17833530006307680405

`or(A112329(A146683(n+1)), A146704(n+1))`
-/

namespace A146592.P17833530006307680405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112329 (A146683 (n + 1)).toNat) (A146704 (n + 1))

end

end A146592.P17833530006307680405

/-!
# A146593: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0110-1111-0100 pattern in any orientation.

The programs for A146593, there is no canonical definition to state claims against.
-/

/-! ## A146593.P13386295865508857862

`A230556(A068307(n+1)*A121269(n))`
-/

namespace A146593.P13386295865508857862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230556 (A068307 (n + 1) * A121269 n).toNat

end

end A146593.P13386295865508857862

/-! ## A146593.P259350887115187328

`A327499(A001006(n)*A332835(n+3))`
-/

namespace A146593.P259350887115187328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (A001006 n * A332835 (n + 3)).toNat

end

end A146593.P259350887115187328

/-! ## A146593.P9607185755099237528

`A013597(and(A022493(n), A262675(3*n+4)))`
-/

namespace A146593.P9607185755099237528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (Int.land (A022493 n) (A262675 (3 * n + 4))).toNat

end

end A146593.P9607185755099237528

/-! ## A146593.P16990746674456940078

`A345298(A146603(n+1)²)+A146713(n+1)`
-/

namespace A146593.P16990746674456940078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345298 (A146603 (n + 1) ^ 2).toNat + A146713 (n + 1)

end

end A146593.P16990746674456940078

/-!
# A146594: Number of n X n binary arrays with all ones connected only in a 1000-1000-1111 pattern in any orientation.

The programs for A146594, there is no canonical definition to state claims against.
-/

/-! ## A146594.P4908867542948523561

`A146596(2*(n+2))`
-/

namespace A146594.P4908867542948523561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146596 (2 * (n + 2))

end

end A146594.P4908867542948523561

/-! ## A146594.P11869332405043969383

`or(1, A146596(A144396(n+1)))`
-/

namespace A146594.P11869332405043969383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146596 (A144396 (n + 1)).toNat)

end

end A146594.P11869332405043969383

/-! ## A146594.P1530140675333692881

`or(1, A146596(A160217(n+1)))`
-/

namespace A146594.P1530140675333692881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146596 (A160217 (n + 1)).toNat)

end

end A146594.P1530140675333692881

/-! ## A146594.P401687909046559214

`or(1, A146596(A193175(n+1)))`
-/

namespace A146594.P401687909046559214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146596 (A193175 (n + 1)).toNat)

end

end A146594.P401687909046559214

/-! ## A146594.P3269781012760275450

`or(1, A146596(A346302(n+1)))`
-/

namespace A146594.P3269781012760275450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146596 (A346302 (n + 1)).toNat)

end

end A146594.P3269781012760275450

/-!
# A146596: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1000-1111 pattern in any orientation.

The programs for A146596, there is no canonical definition to state claims against.
-/

/-! ## A146596.P13223536239645235399

`A087805(A146604(n+1))`
-/

namespace A146596.P13223536239645235399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A146604 (n + 1)).toNat

end

end A146596.P13223536239645235399

/-! ## A146596.P5327104638468007825

`A097284(A146471(n+1))`
-/

namespace A146596.P5327104638468007825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097284 (A146471 (n + 1)).toNat

end

end A146596.P5327104638468007825

/-! ## A146596.P7220611921453138747

`A126352(A146138(n+1))`
-/

namespace A146596.P7220611921453138747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126352 (A146138 (n + 1)).toNat

end

end A146596.P7220611921453138747

/-! ## A146596.P1877432625007765120

`A265384(A146367(n+1))`
-/

namespace A146596.P1877432625007765120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A146367 (n + 1)).toNat

end

end A146596.P1877432625007765120

/-! ## A146596.P4360327087980766749

`A265384(A147430(n+1))`
-/

namespace A146596.P4360327087980766749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A147430 (n + 1)).toNat

end

end A146596.P4360327087980766749

/-!
# A146597: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1111 pattern in any orientation.

The programs for A146597, there is no canonical definition to state claims against.
-/

/-! ## A146597.P7482594715526581107

`A146599(2*n+3)`
-/

namespace A146597.P7482594715526581107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146599 (2 * n + 3)

end

end A146597.P7482594715526581107

/-! ## A146597.P11073546837913763870

`or(1, A146599(A144396(n+1)))`
-/

namespace A146597.P11073546837913763870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146599 (A144396 (n + 1)).toNat)

end

end A146597.P11073546837913763870

/-! ## A146597.P2710192745401267257

`or(1, A146599(A153052(n+1)))`
-/

namespace A146597.P2710192745401267257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146599 (A153052 (n + 1)).toNat)

end

end A146597.P2710192745401267257

/-! ## A146597.P15389736790258920298

`A000027(A146599(Δ[(n+1)²]))`
-/

namespace A146597.P15389736790258920298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A146599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146597.P15389736790258920298

/-! ## A146597.P14197963356576858065

`∏{d}[A144396(n+1), A146599(#)]`
-/

namespace A146597.P14197963356576858065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146599 d

end

end A146597.P14197963356576858065

/-!
# A146598: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1000-1111 pattern in any orientation.

The programs for A146598, there is no canonical definition to state claims against.
-/

/-! ## A146598.P2180601917619976553

`∑[A090109(A006723(n))]-n`
-/

namespace A146598.P2180601917619976553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A006723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A146598.P2180601917619976553

/-! ## A146598.P414855958803709209

`∑[A078822(A211540(n)!)]-n`
-/

namespace A146598.P414855958803709209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078822 (Nat.factorial (A211540 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A146598.P414855958803709209

/-! ## A146598.P15645280531723383806

`∑[A112632(∏[A286305(n)])]-n`
-/

namespace A146598.P15645280531723383806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A146598.P15645280531723383806

/-! ## A146598.P1847397555554330007

`∑[A143091(A146606(n+2))]-n`
-/

namespace A146598.P1847397555554330007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (A146606 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A146598.P1847397555554330007

/-!
# A146599: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1000-1111 pattern in any orientation.

The programs for A146599, there is no canonical definition to state claims against.
-/

/-! ## A146599.P13303520303754945763

`A105223(A146149(n+1))`
-/

namespace A146599.P13303520303754945763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A146149 (n + 1)).toNat

end

end A146599.P13303520303754945763

/-! ## A146599.P15861871378221663585

`A343152(A146450(n+1))`
-/

namespace A146599.P15861871378221663585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343152 (A146450 (n + 1)).toNat

end

end A146599.P15861871378221663585

/-! ## A146599.P17367542609806326632

`or(A124768(A146836(n+1)), A147236(n+1))`
-/

namespace A146599.P17367542609806326632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124768 (A146836 (n + 1)).toNat) (A147236 (n + 1))

end

end A146599.P17367542609806326632

/-! ## A146599.P16200132381261741722

`or(A001222(A146149(n+3)), A147236(n+1))`
-/

namespace A146599.P16200132381261741722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A146149 (n + 3)).toNat) (A147236 (n + 1))

end

end A146599.P16200132381261741722

/-! ## A146599.P3916049856929641733

`or(A001222(A146836(n+5)), A147236(n+1))`
-/

namespace A146599.P3916049856929641733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A146836 (n + 5)).toNat) (A147236 (n + 1))

end

end A146599.P3916049856929641733

