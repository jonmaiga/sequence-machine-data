import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A070700: a(n) = n^7 mod 18.

The programs for A070700, the canonical program `A070700.P10660328075017905480` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070700 has offset 0).

The definition of A070700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%18` (program `A070700.P10660328075017905480`, by `A070700.P10660328075017905480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070700.P10660328075017905480

`(n^7)%18`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070700

/-- `(n^7)%18` -/
def P10660328075017905480.Spec : Prop :=
  ∀ n, (P10660328075017905480.a n : ℤ) = A070700 n

theorem P10660328075017905480.correct : P10660328075017905480.Spec := by
  intro n
  simp only [A070700]

end A070700

/-!
# A070701: a(n) = n^7 mod 19.

The programs for A070701, the canonical program `A070701.P1053756247288364062` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070701 has offset 0).

The definition of A070701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%19` (program `A070701.P1053756247288364062`, by `A070701.P1053756247288364062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070701.P1053756247288364062

`(n^7)%19`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070701

/-- `(n^7)%19` -/
def P1053756247288364062.Spec : Prop :=
  ∀ n, (P1053756247288364062.a n : ℤ) = A070701 n

theorem P1053756247288364062.correct : P1053756247288364062.Spec := by
  intro n
  simp only [A070701]

end A070701

/-!
# A070703: a(n) = n^7 mod 22.

The programs for A070703, the canonical program `A070703.P2903533296522925251` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070703 has offset 0).

The definition of A070703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%22` (program `A070703.P2903533296522925251`, by `A070703.P2903533296522925251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070703.P2903533296522925251

`(n^7)%22`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070703

/-- `(n^7)%22` -/
def P2903533296522925251.Spec : Prop :=
  ∀ n, (P2903533296522925251.a n : ℤ) = A070703 n

theorem P2903533296522925251.correct : P2903533296522925251.Spec := by
  intro n
  simp only [A070703]

end A070703

/-!
# A070704: a(n) = n^7 mod 23.

The programs for A070704, the canonical program `A070704.P12191928524554733706` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070704 has offset 0).

The definition of A070704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%23` (program `A070704.P12191928524554733706`, by `A070704.P12191928524554733706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070704.P12191928524554733706

`(n^7)%23`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070704

/-- `(n^7)%23` -/
def P12191928524554733706.Spec : Prop :=
  ∀ n, (P12191928524554733706.a n : ℤ) = A070704 n

theorem P12191928524554733706.correct : P12191928524554733706.Spec := by
  intro n
  simp only [A070704]

end A070704

/-!
# A070705: LCM of first n prime powers modulo next prime power.

The programs for A070705, the canonical program `A070705.P850557199446930633` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070705 has offset 1).

The definition of A070705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070705.P850557199446930633

`A158851(record[A047994(n+3)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070705

/-- `A158851(record[A047994(n+3)])` -/
def P850557199446930633.Spec : Prop :=
  ∀ n, P850557199446930633.a n = A070705 (n + 1)

theorem P850557199446930633.correct : P850557199446930633.Spec := by
  intro n
  simp only [A070705, Nat.add_sub_cancel]

end A070705

/-! ## A070705.P9703804851945188133

`A158851(record[A344005(n+3)])`
-/

namespace A070705.P9703804851945188133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070705.P9703804851945188133

namespace A070705

/-- `A158851(record[A344005(n+3)])` -/
def P9703804851945188133.Spec : Prop :=
  ∀ n, P9703804851945188133.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P12361851888679512220

`A158851(A000961(n+3)-1)`
-/

namespace A070705.P12361851888679512220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (A000961 (n + 3) - 1).toNat

end

end A070705.P12361851888679512220

namespace A070705

/-- `A158851(A000961(n+3)-1)` -/
def P12361851888679512220.Spec : Prop :=
  ∀ n, P12361851888679512220.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P10753441336671435382

`A158851(lt[2, A100994(n+1)])`
-/

namespace A070705.P10753441336671435382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A070705.P10753441336671435382

namespace A070705

/-- `A158851(lt[2, A100994(n+1)])` -/
def P10753441336671435382.Spec : Prop :=
  ∀ n, P10753441336671435382.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P14795658783972942735

`A158851(lt[A048671(n+1), n])`
-/

namespace A070705.P14795658783972942735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070705.P14795658783972942735

namespace A070705

/-- `A158851(lt[A048671(n+1), n])` -/
def P14795658783972942735.Spec : Prop :=
  ∀ n, P14795658783972942735.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P16057408209976240664

`A158851(lt[A205959(n+1), n])`
-/

namespace A070705.P16057408209976240664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070705.P16057408209976240664

namespace A070705

/-- `A158851(lt[A205959(n+1), n])` -/
def P16057408209976240664.Spec : Prop :=
  ∀ n, P16057408209976240664.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P12384175033084261489

`A158851(lt[1, n*A158851(n+1)]+1)`
-/

namespace A070705.P12384175033084261489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A070705.P12384175033084261489

namespace A070705

/-- `A158851(lt[1, n*A158851(n+1)]+1)` -/
def P12384175033084261489.Spec : Prop :=
  ∀ n, P12384175033084261489.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P15329038902132970626

`A158851(lt[sin(a(n-1)), A158851(n+1)]+1)` with `a(0)=1`
-/

namespace A070705.P15329038902132970626
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.sin (f1 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1)

end

end A070705.P15329038902132970626

namespace A070705

/-- `A158851(lt[sin(a(n-1)), A158851(n+1)]+1)` -/
def P15329038902132970626.Spec : Prop :=
  ∀ n, P15329038902132970626.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P663772079030725131

`A158851(lt[A282750(a(n-1)+1), A158851(n+1)]+1)` with `a(0)=1`
-/

namespace A070705.P663772079030725131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A282750 (f1 (n - 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A070705.P663772079030725131

namespace A070705

/-- `A158851(lt[A282750(a(n-1)+1), A158851(n+1)]+1)` -/
def P663772079030725131.Spec : Prop :=
  ∀ n, P663772079030725131.a n = A070705 (n + 1)

end A070705

/-! ## A070705.P17246816275297128682

`∏[A025473(n+2)]%A000961(n+3)`
-/

namespace A070705.P17246816275297128682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A000961 (n + 3))

end

end A070705.P17246816275297128682

namespace A070705

/-- `∏[A025473(n+2)]%A000961(n+3)` -/
def P17246816275297128682.Spec : Prop :=
  ∀ n, P17246816275297128682.a n = A070705 (n + 1)

end A070705

/-!
# A070706: a(n) = n^7 mod 25.

The programs for A070706, the canonical program `A070706.P2316573771963838858` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070706 has offset 0).

The definition of A070706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%25` (program `A070706.P2316573771963838858`, by `A070706.P2316573771963838858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070706.P2316573771963838858

`(n^7)%25`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070706

/-- `(n^7)%25` -/
def P2316573771963838858.Spec : Prop :=
  ∀ n, (P2316573771963838858.a n : ℤ) = A070706 n

theorem P2316573771963838858.correct : P2316573771963838858.Spec := by
  intro n
  simp only [A070706]

end A070706

/-!
# A070707: n^7 mod 26.

The programs for A070707, the canonical program `A070707.P15090386989191250687` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070707 has offset 0).

The definition of A070707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%26` (program `A070707.P15090386989191250687`, by `A070707.P15090386989191250687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070707.P15090386989191250687

`(n^7)%26`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070707

/-- `(n^7)%26` -/
def P15090386989191250687.Spec : Prop :=
  ∀ n, (P15090386989191250687.a n : ℤ) = A070707 n

theorem P15090386989191250687.correct : P15090386989191250687.Spec := by
  intro n
  simp only [A070707]

end A070707

/-!
# A070708: n^7 mod 27.

The programs for A070708, the canonical program `A070708.P15769443278295569027` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070708 has offset 0).

The definition of A070708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%27` (program `A070708.P15769443278295569027`, by `A070708.P15769443278295569027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070708.P15769443278295569027

`(n^7)%27`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070708

/-- `(n^7)%27` -/
def P15769443278295569027.Spec : Prop :=
  ∀ n, (P15769443278295569027.a n : ℤ) = A070708 n

theorem P15769443278295569027.correct : P15769443278295569027.Spec := by
  intro n
  simp only [A070708]

end A070708

/-!
# A070709: a(n) = n^7 mod 28.

The programs for A070709, the canonical program `A070709.P18202591909110165382` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070709 has offset 0).

The definition of A070709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%28` (program `A070709.P18202591909110165382`, by `A070709.P18202591909110165382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070709.P18202591909110165382

`(n^7)%28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070709

/-- `(n^7)%28` -/
def P18202591909110165382.Spec : Prop :=
  ∀ n, (P18202591909110165382.a n : ℤ) = A070709 n

theorem P18202591909110165382.correct : P18202591909110165382.Spec := by
  intro n
  simp only [A070709]

end A070709

/-!
# A070710: a(n) = n^7 mod 29.

The programs for A070710, the canonical program `A070710.P4043715406847016494` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070710 has offset 0).

The definition of A070710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%29` (program `A070710.P4043715406847016494`, by `A070710.P4043715406847016494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070710.P4043715406847016494

`(n^7)%29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070710

/-- `(n^7)%29` -/
def P4043715406847016494.Spec : Prop :=
  ∀ n, (P4043715406847016494.a n : ℤ) = A070710 n

theorem P4043715406847016494.correct : P4043715406847016494.Spec := by
  intro n
  simp only [A070710]

end A070710

/-!
# A070712: a(n) = n^7 mod 31.

The programs for A070712, the canonical program `A070712.P6704538214844274359` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070712 has offset 0).

The definition of A070712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%31` (program `A070712.P6704538214844274359`, by `A070712.P6704538214844274359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070712.P6704538214844274359

`(n^7)%31`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070712

/-- `(n^7)%31` -/
def P6704538214844274359.Spec : Prop :=
  ∀ n, (P6704538214844274359.a n : ℤ) = A070712 n

theorem P6704538214844274359.correct : P6704538214844274359.Spec := by
  intro n
  simp only [A070712]

end A070712

/-!
# A070713: Integers whose sum of digits as well as product of digits is a nonzero square.

The programs for A070713, the canonical program `A070713.P188697954911876999` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070713 has offset 1).

The definition of A070713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070713.P8210577789321389188

`∩[A050626(n+1), A062398(n+1)]`
-/

namespace A070713.P8210577789321389188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070713.P8210577789321389188

namespace A070713

/-- `∩[A050626(n+1), A062398(n+1)]` -/
def P8210577789321389188.Spec : Prop :=
  ∀ n, (P8210577789321389188.a n : ℤ) = A070713 (n + 1)

end A070713

/-! ## A070713.P188697954911876999

`∩[A028839(n+1), A050626(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070713

/-- `∩[A028839(n+1), A050626(n+1)]` -/
def P188697954911876999.Spec : Prop :=
  ∀ n, (P188697954911876999.a n : ℤ) = A070713 (n + 1)

theorem P188697954911876999.correct : P188697954911876999.Spec := by
  intro n
  simp only [A070713, Nat.add_sub_cancel]

end A070713

/-! ## A070713.P9530104694183155509

`record[A004719(A062398(n+1))]`
-/

namespace A070713.P9530104694183155509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A062398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070713.P9530104694183155509

namespace A070713

/-- `record[A004719(A062398(n+1))]` -/
def P9530104694183155509.Spec : Prop :=
  ∀ n, P9530104694183155509.a n = A070713 (n + 1)

end A070713

/-! ## A070713.P4149081504893244485

`filter[A062398(n+1), A168046(#)]`
-/

namespace A070713.P4149081504893244485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A070713.P4149081504893244485

namespace A070713

/-- `filter[A062398(n+1), A168046(#)]` -/
def P4149081504893244485.Spec : Prop :=
  ∀ n, P4149081504893244485.a n = A070713 (n + 1)

end A070713

/-!
# A070714: n^7 mod 33.

The programs for A070714, the canonical program `A070714.P842147079228887040` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070714 has offset 0).

The definition of A070714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%33` (program `A070714.P842147079228887040`, by `A070714.P842147079228887040.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070714.P842147079228887040

`(n^7)%33`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070714

/-- `(n^7)%33` -/
def P842147079228887040.Spec : Prop :=
  ∀ n, (P842147079228887040.a n : ℤ) = A070714 n

theorem P842147079228887040.correct : P842147079228887040.Spec := by
  intro n
  simp only [A070714]

end A070714

/-!
# A070715: n^7 mod 34.

The programs for A070715, the canonical program `A070715.P11183232882870198320` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070715 has offset 0).

The definition of A070715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%34` (program `A070715.P11183232882870198320`, by `A070715.P11183232882870198320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070715.P11183232882870198320

`(n^7)%34`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070715

/-- `(n^7)%34` -/
def P11183232882870198320.Spec : Prop :=
  ∀ n, (P11183232882870198320.a n : ℤ) = A070715 n

theorem P11183232882870198320.correct : P11183232882870198320.Spec := by
  intro n
  simp only [A070715]

end A070715

/-!
# A070716: a(n) = n^7 mod 35.

The programs for A070716, the canonical program `A070716.P10671963441947959004` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070716 has offset 0).

The definition of A070716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%35` (program `A070716.P10671963441947959004`, by `A070716.P10671963441947959004.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070716.P10671963441947959004

`(n^7)%35`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070716

/-- `(n^7)%35` -/
def P10671963441947959004.Spec : Prop :=
  ∀ n, (P10671963441947959004.a n : ℤ) = A070716 n

theorem P10671963441947959004.correct : P10671963441947959004.Spec := by
  intro n
  simp only [A070716]

end A070716

/-!
# A070717: a(n) = n^7 mod 36.

The programs for A070717, the canonical program `A070717.P11956319545847344645` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070717 has offset 0).

The definition of A070717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%36` (program `A070717.P11956319545847344645`, by `A070717.P11956319545847344645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070717.P11956319545847344645

`(n^7)%36`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070717

/-- `(n^7)%36` -/
def P11956319545847344645.Spec : Prop :=
  ∀ n, (P11956319545847344645.a n : ℤ) = A070717 n

theorem P11956319545847344645.correct : P11956319545847344645.Spec := by
  intro n
  simp only [A070717]

end A070717

/-!
# A070718: n^7 mod 37.

The programs for A070718, the canonical program `A070718.P4026774642365335803` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070718 has offset 0).

The definition of A070718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%37` (program `A070718.P4026774642365335803`, by `A070718.P4026774642365335803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070718.P4026774642365335803

`(n^7)%37`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070718

/-- `(n^7)%37` -/
def P4026774642365335803.Spec : Prop :=
  ∀ n, (P4026774642365335803.a n : ℤ) = A070718 n

theorem P4026774642365335803.correct : P4026774642365335803.Spec := by
  intro n
  simp only [A070718]

end A070718

/-!
# A070719: n^7 mod 38.

The programs for A070719, the canonical program `A070719.P14326460280136748727` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070719 has offset 0).

The definition of A070719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%38` (program `A070719.P14326460280136748727`, by `A070719.P14326460280136748727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070719.P14326460280136748727

`(n^7)%38`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070719

/-- `(n^7)%38` -/
def P14326460280136748727.Spec : Prop :=
  ∀ n, (P14326460280136748727.a n : ℤ) = A070719 n

theorem P14326460280136748727.correct : P14326460280136748727.Spec := by
  intro n
  simp only [A070719]

end A070719

/-!
# A070720: a(n) = n^7 mod 39.

The programs for A070720, the canonical program `A070720.P11255924744975673775` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070720 has offset 0).

The definition of A070720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%39` (program `A070720.P11255924744975673775`, by `A070720.P11255924744975673775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070720.P11255924744975673775

`(n^7)%39`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070720

/-- `(n^7)%39` -/
def P11255924744975673775.Spec : Prop :=
  ∀ n, (P11255924744975673775.a n : ℤ) = A070720 n

theorem P11255924744975673775.correct : P11255924744975673775.Spec := by
  intro n
  simp only [A070720]

end A070720

/-!
# A070722: a(n) = n^7 mod 41.

The programs for A070722, the canonical program `A070722.P6936710322876078744` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070722 has offset 0).

The definition of A070722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%41` (program `A070722.P6936710322876078744`, by `A070722.P6936710322876078744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070722.P6936710322876078744

`(n^7)%41`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070722

/-- `(n^7)%41` -/
def P6936710322876078744.Spec : Prop :=
  ∀ n, (P6936710322876078744.a n : ℤ) = A070722 n

theorem P6936710322876078744.correct : P6936710322876078744.Spec := by
  intro n
  simp only [A070722]

end A070722

/-!
# A070723: n^7 mod 43.

The programs for A070723, the canonical program `A070723.P1180490967227485761` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070723 has offset 0).

The definition of A070723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%43` (program `A070723.P1180490967227485761`, by `A070723.P1180490967227485761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070723.P1180490967227485761

`(n^7)%43`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070723

/-- `(n^7)%43` -/
def P1180490967227485761.Spec : Prop :=
  ∀ n, (P1180490967227485761.a n : ℤ) = A070723 n

theorem P1180490967227485761.correct : P1180490967227485761.Spec := by
  intro n
  simp only [A070723]

end A070723

/-!
# A070724: n^7 mod 44.

The programs for A070724, the canonical program `A070724.P17830499145606348136` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070724 has offset 0).

The definition of A070724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%44` (program `A070724.P17830499145606348136`, by `A070724.P17830499145606348136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070724.P17830499145606348136

`(n^7)%44`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070724

/-- `(n^7)%44` -/
def P17830499145606348136.Spec : Prop :=
  ∀ n, (P17830499145606348136.a n : ℤ) = A070724 n

theorem P17830499145606348136.correct : P17830499145606348136.Spec := by
  intro n
  simp only [A070724]

end A070724

/-!
# A070725: a(n) = n^7 mod 45.

The programs for A070725, the canonical program `A070725.P16799068598866600846` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070725 has offset 0).

The definition of A070725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%45` (program `A070725.P16799068598866600846`, by `A070725.P16799068598866600846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070725.P16799068598866600846

`(n^7)%45`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070725

/-- `(n^7)%45` -/
def P16799068598866600846.Spec : Prop :=
  ∀ n, (P16799068598866600846.a n : ℤ) = A070725 n

theorem P16799068598866600846.correct : P16799068598866600846.Spec := by
  intro n
  simp only [A070725]

end A070725

/-!
# A070726: a(n) = n^7 mod 46.

The programs for A070726, the canonical program `A070726.P4811997283120488526` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070726 has offset 0).

The definition of A070726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%46` (program `A070726.P4811997283120488526`, by `A070726.P4811997283120488526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070726.P4811997283120488526

`(n^7)%46`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070726

/-- `(n^7)%46` -/
def P4811997283120488526.Spec : Prop :=
  ∀ n, (P4811997283120488526.a n : ℤ) = A070726 n

theorem P4811997283120488526.correct : P4811997283120488526.Spec := by
  intro n
  simp only [A070726]

end A070726

/-!
# A070727: n^7 mod 47.

The programs for A070727, the canonical program `A070727.P17648762542610318295` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070727 has offset 0).

The definition of A070727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%47` (program `A070727.P17648762542610318295`, by `A070727.P17648762542610318295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070727.P17648762542610318295

`(n^7)%47`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070727

/-- `(n^7)%47` -/
def P17648762542610318295.Spec : Prop :=
  ∀ n, (P17648762542610318295.a n : ℤ) = A070727 n

theorem P17648762542610318295.correct : P17648762542610318295.Spec := by
  intro n
  simp only [A070727]

end A070727

/-!
# A070728: n^7 mod 48.

The programs for A070728, the canonical program `A070728.P17221185885536517575` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070728 has offset 0).

The definition of A070728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%48` (program `A070728.P17221185885536517575`, by `A070728.P17221185885536517575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070728.P17221185885536517575

`(n^7)%48`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070728

/-- `(n^7)%48` -/
def P17221185885536517575.Spec : Prop :=
  ∀ n, (P17221185885536517575.a n : ℤ) = A070728 n

theorem P17221185885536517575.correct : P17221185885536517575.Spec := by
  intro n
  simp only [A070728]

end A070728

/-!
# A070730: Euro coinage (in cents) from smallest physical size to largest.

The programs for A070730, there is no canonical definition to state claims against.
-/

/-! ## A070730.P13837627453502773853

`10*a(n-3)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=5`
-/

namespace A070730.P13837627453502773853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 10, 5] fun n a =>
  10 * a (n - 3)

end

end A070730.P13837627453502773853

/-! ## A070730.P12173518325678114804

`A051109(A116941(n))`
-/

namespace A070730.P12173518325678114804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (A116941 n).toNat

end

end A070730.P12173518325678114804

/-! ## A070730.P17102569641777196949

`A051109(A116942(n))`
-/

namespace A070730.P17102569641777196949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (A116942 n).toNat

end

end A070730.P17102569641777196949

/-! ## A070730.P14676221688531310481

`A051109(A093573(n+1))`
-/

namespace A070730.P14676221688531310481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (A093573 (n + 1)).toNat

end

end A070730.P14676221688531310481

/-!
# A070731: Size of largest conjugacy class in the group GL(n,2).

The programs for A070731, there is no canonical definition to state claims against.
-/

/-! ## A070731.P15304009887441226210

`∏[A171476(n)]/A082877(n+1)`
-/

namespace A070731.P15304009887441226210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A082877 (n + 1) : ℚ)

end

end A070731.P15304009887441226210

/-! ## A070731.P342609369480602525

`A002884(n+1)/A082877(n+1)`
-/

namespace A070731.P342609369480602525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (A082877 (n + 1) : ℚ)

end

end A070731.P342609369480602525

/-! ## A070731.P6794683120980710206

`∏[A171476(n)]/A018534(comp[2*n+3]+1)`
-/

namespace A070731.P6794683120980710206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A018534 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) : ℚ)

end

end A070731.P6794683120980710206

/-! ## A070731.P14397018821650128327

`A002884(n+1)/A018534(comp[2*n+3]+1)`
-/

namespace A070731.P14397018821650128327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (A018534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ)

end

end A070731.P14397018821650128327

/-! ## A070731.P10349548055369368085

`∏[A171476(n)]/record[A018534(n+1)/n^(n%2)]`
-/

namespace A070731.P10349548055369368085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018534 (n + 1) : ℚ) / (n ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A070731.P10349548055369368085

/-!
# A070732: Size of largest conjugacy class in the group GL(2,Z_n).

The programs for A070732, the canonical program `A070732.P10550468717027057537` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070732 has offset 1).

The definition of A070732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070732.P10550468717027057537

`A000056(n+1)/A000010(2*(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070732

/-- `A000056(n+1)/A000010(2*(n+1))` -/
def P10550468717027057537.Spec : Prop :=
  ∀ n, P10550468717027057537.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P14073944763485667119

`A000082(n+1)/A000034(n)`
-/

namespace A070732.P14073944763485667119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A070732.P14073944763485667119

namespace A070732

/-- `A000082(n+1)/A000034(n)` -/
def P14073944763485667119.Spec : Prop :=
  ∀ n, P14073944763485667119.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P12916774599128756623

`A001615(n+1)*A026741(n+1)`
-/

namespace A070732.P12916774599128756623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A026741 (n + 1)

end

end A070732.P12916774599128756623

namespace A070732

/-- `A001615(n+1)*A026741(n+1)` -/
def P12916774599128756623.Spec : Prop :=
  ∀ n, P12916774599128756623.a n = A070732 (n + 1)

end A070732

/-! ## A070732.P6592704069696163884

`A080512(n+1)*A253629(n+1)`
-/

namespace A070732.P6592704069696163884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1) * A253629 (n + 1)

end

end A070732.P6592704069696163884

namespace A070732

/-- `A080512(n+1)*A253629(n+1)` -/
def P6592704069696163884.Spec : Prop :=
  ∀ n, P6592704069696163884.a n = A070732 (n + 1)

end A070732

/-! ## A070732.P15605378944811320144

`A000056(n+1)/A062570(n+1)`
-/

namespace A070732.P15605378944811320144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A070732.P15605378944811320144

namespace A070732

/-- `A000056(n+1)/A062570(n+1)` -/
def P15605378944811320144.Spec : Prop :=
  ∀ n, P15605378944811320144.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P986951143388786660

`A065430(n+1)/A000010(n+1)`
-/

namespace A070732.P986951143388786660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065430 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A070732.P986951143388786660

namespace A070732

/-- `A065430(n+1)/A000010(n+1)` -/
def P986951143388786660.Spec : Prop :=
  ∀ n, P986951143388786660.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P5098152569299600159

`A000252(n+1)/A082953(n+1)`
-/

namespace A070732.P5098152569299600159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A082953 (n + 1) : ℚ)

end

end A070732.P5098152569299600159

namespace A070732

/-- `A000252(n+1)/A082953(n+1)` -/
def P5098152569299600159.Spec : Prop :=
  ∀ n, P5098152569299600159.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P11590302861447441850

`A000082(n+1)/gcd(2, A129202(n))`
-/

namespace A070732.P11590302861447441850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (Int.gcd 2 (A129202 n) : ℚ)

end

end A070732.P11590302861447441850

namespace A070732

/-- `A000082(n+1)/gcd(2, A129202(n))` -/
def P11590302861447441850.Spec : Prop :=
  ∀ n, P11590302861447441850.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P6801319525205913001

`gcd(n+1, A000217(n))*A001615(n+1)`
-/

namespace A070732.P6801319525205913001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A000217 n) : ℤ) * A001615 (n + 1)

end

end A070732.P6801319525205913001

namespace A070732

/-- `gcd(n+1, A000217(n))*A001615(n+1)` -/
def P6801319525205913001.Spec : Prop :=
  ∀ n, P6801319525205913001.a n = A070732 (n + 1)

end A070732

/-! ## A070732.P17277592196961173685

`(n+1)*A007434(n+1)/A062570(n+1)`
-/

namespace A070732.P17277592196961173685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A007434 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A070732.P17277592196961173685

namespace A070732

/-- `(n+1)*A007434(n+1)/A062570(n+1)` -/
def P17277592196961173685.Spec : Prop :=
  ∀ n, P17277592196961173685.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P3907402956617028164

`∑{d}[n+1, A065766(#)*A092673((n+1)/#)]`
-/

namespace A070732.P3907402956617028164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065766 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070732.P3907402956617028164

namespace A070732

/-- `∑{d}[n+1, A065766(#)*A092673((n+1)/#)]` -/
def P3907402956617028164.Spec : Prop :=
  ∀ n, P3907402956617028164.a n = A070732 (n + 1)

end A070732

/-! ## A070732.P16211466277330926913

`A000252(n+1)/(A000010(n+1)*A062570(n+1))`
-/

namespace A070732.P16211466277330926913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000010 (n + 1) * A062570 (n + 1) : ℚ)

end

end A070732.P16211466277330926913

namespace A070732

/-- `A000252(n+1)/(A000010(n+1)*A062570(n+1))` -/
def P16211466277330926913.Spec : Prop :=
  ∀ n, P16211466277330926913.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P13784551653901827872

`A000056(n+1)/A000252(n+1)*A065430(n+1)`
-/

namespace A070732.P13784551653901827872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A065430 (n + 1) : ℚ)

end

end A070732.P13784551653901827872

namespace A070732

/-- `A000056(n+1)/A000252(n+1)*A065430(n+1)` -/
def P13784551653901827872.Spec : Prop :=
  ∀ n, P13784551653901827872.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P7143545621616996500

`A001615(n+1)*A002618(n+1)/A062570(n+1)`
-/

namespace A070732.P7143545621616996500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) * A002618 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A070732.P7143545621616996500

namespace A070732

/-- `A001615(n+1)*A002618(n+1)/A062570(n+1)` -/
def P7143545621616996500.Spec : Prop :=
  ∀ n, P7143545621616996500.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P11563279378697050979

`A000252(n+1)/(A000010(2*(n+1))*A000010(n+1))`
-/

namespace A070732.P11563279378697050979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000010 (2 * (n + 1)) * A000010 (n + 1) : ℚ)

end

end A070732.P11563279378697050979

namespace A070732

/-- `A000252(n+1)/(A000010(2*(n+1))*A000010(n+1))` -/
def P11563279378697050979.Spec : Prop :=
  ∀ n, P11563279378697050979.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P3996476745767017963

`(n+1)*A000010(n+1)*A001615(n+1)/A062570(n+1)`
-/

namespace A070732.P3996476745767017963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000010 (n + 1) * A001615 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A070732.P3996476745767017963

namespace A070732

/-- `(n+1)*A000010(n+1)*A001615(n+1)/A062570(n+1)` -/
def P3996476745767017963.Spec : Prop :=
  ∀ n, P3996476745767017963.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P2249223456854276046

`(n+1)*(A039649(n+1)-1)*A001615(n+1)/A062570(n+1)`
-/

namespace A070732.P2249223456854276046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A039649 (n + 1) - 1) * A001615 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A070732.P2249223456854276046

namespace A070732

/-- `(n+1)*(A039649(n+1)-1)*A001615(n+1)/A062570(n+1)` -/
def P2249223456854276046.Spec : Prop :=
  ∀ n, P2249223456854276046.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P2729957949375035243

`A000082(n+1)/A003557(2*A007947(n+1))`
-/

namespace A070732.P2729957949375035243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A003557 (2 * A007947 (n + 1)).toNat : ℚ)

end

end A070732.P2729957949375035243

namespace A070732

/-- `A000082(n+1)/A003557(2*A007947(n+1))` -/
def P2729957949375035243.Spec : Prop :=
  ∀ n, P2729957949375035243.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P1813564167963261855

`A000010((n+1)²)*A001615(n+1)/A062570(n+1)`
-/

namespace A070732.P1813564167963261855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) * A001615 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ)

end

end A070732.P1813564167963261855

namespace A070732

/-- `A000010((n+1)²)*A001615(n+1)/A062570(n+1)` -/
def P1813564167963261855.Spec : Prop :=
  ∀ n, P1813564167963261855.a n = (A070732 (n + 1) : ℚ)

end A070732

/-! ## A070732.P6527533410543273290

`A001615(A129194(n+1))`
-/

namespace A070732.P6527533410543273290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A129194 (n + 1)).toNat

end

end A070732.P6527533410543273290

namespace A070732

/-- `A001615(A129194(n+1))` -/
def P6527533410543273290.Spec : Prop :=
  ∀ n, P6527533410543273290.a n = A070732 (n + 1)

end A070732

/-!
# A070733: Size of largest conjugacy class in A_n, the alternating group on n symbols.

The programs for A070733, there is no canonical definition to state claims against.
-/

/-! ## A070733.P12609604138141341841

`A004525(A131451(n+1)/A103297(n))`
-/

namespace A070733.P12609604138141341841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A131451 (n + 1) : ℚ) / (A103297 n : ℚ))).toNat

end

end A070733.P12609604138141341841

/-! ## A070733.P3341073767515283843

`A028310(floor(A001710(n+1)/A053263(n)))`
-/

namespace A070733.P3341073767515283843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A001710 (n + 1) : ℚ) / (A053263 n : ℚ)⌋.toNat

end

end A070733.P3341073767515283843

/-! ## A070733.P8759914881375667275

`A004525(A062833(n+1)/A062821(n+1))`
-/

namespace A070733.P8759914881375667275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A062833 (n + 1) : ℚ) / (A062821 (n + 1) : ℚ))).toNat

end

end A070733.P8759914881375667275

/-!
# A070734: Order of the subgroup of the symmetric group S_n generated by the cycles (1,2,3) and (1,2,3,...,n).

The programs for A070734, the canonical program `A070734.P1732737245580355612` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070734 has offset 3).

The definition of A070734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070734.P1732737245580355612

`(3+(-1)^(n+3))/4*(n+3)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070734

/-- `(3+(-1)^(n+3))/4*(n+3)!` -/
def P1732737245580355612.Spec : Prop :=
  ∀ n, P1732737245580355612.a n = (A070734 (n + 3) : ℚ)

end A070734

/-! ## A070734.P12396589819790079503

`(n+3)!/gcd(2, n)`
-/

namespace A070734.P12396589819790079503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A070734.P12396589819790079503

namespace A070734

/-- `(n+3)!/gcd(2, n)` -/
def P12396589819790079503.Spec : Prop :=
  ∀ n, P12396589819790079503.a n = (A070734 (n + 3) : ℚ)

end A070734

/-! ## A070734.P3930032015746642956

`(n+3)!/(2-n%2)`
-/

namespace A070734.P3930032015746642956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A070734.P3930032015746642956

namespace A070734

/-- `(n+3)!/(2-n%2)` -/
def P3930032015746642956.Spec : Prop :=
  ∀ n, P3930032015746642956.a n = (A070734 (n + 3) : ℚ)

end A070734

/-! ## A070734.P3537229061263714303

`(n+3)!/(2-and(1, n))`
-/

namespace A070734.P3537229061263714303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

end

end A070734.P3537229061263714303

namespace A070734

/-- `(n+3)!/(2-and(1, n))` -/
def P3537229061263714303.Spec : Prop :=
  ∀ n, P3537229061263714303.a n = (A070734 (n + 3) : ℚ)

end A070734

/-! ## A070734.P345697367379055497

`(and(1, n)+1)*∏[n+3]`
-/

namespace A070734.P345697367379055497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A070734.P345697367379055497

namespace A070734

/-- `(and(1, n)+1)*∏[n+3]` -/
def P345697367379055497.Spec : Prop :=
  ∀ n, (P345697367379055497.a n : ℤ) = A070734 (n + 3)

end A070734

/-! ## A070734.P17342767106913974720

`(5^n)%3*∏[n+3]`
-/

namespace A070734.P17342767106913974720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n % 3 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A070734.P17342767106913974720

namespace A070734

/-- `(5^n)%3*∏[n+3]` -/
def P17342767106913974720.Spec : Prop :=
  ∀ n, (P17342767106913974720.a n : ℤ) = A070734 (n + 3)

end A070734

/-! ## A070734.P11174659191335348218

`abs((n+3)!/or(n, -2))`
-/

namespace A070734.P11174659191335348218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (n + 3) : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)|

end

end A070734.P11174659191335348218

namespace A070734

/-- `abs((n+3)!/or(n, -2))` -/
def P11174659191335348218.Spec : Prop :=
  ∀ n, P11174659191335348218.a n = (A070734 (n + 3) : ℚ)

end A070734

/-! ## A070734.P2812029112099623148

`-((n+3)!/or(n, -2))`
-/

namespace A070734.P2812029112099623148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial (n + 3) : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

end

end A070734.P2812029112099623148

namespace A070734

/-- `-((n+3)!/or(n, -2))` -/
def P2812029112099623148.Spec : Prop :=
  ∀ n, P2812029112099623148.a n = (A070734 (n + 3) : ℚ)

end A070734

/-! ## A070734.P12981840355107595265

`gcd((n+3)!, Δ[∏[n+3]])`
-/

namespace A070734.P12981840355107595265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (n + 3) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A070734.P12981840355107595265

namespace A070734

/-- `gcd((n+3)!, Δ[∏[n+3]])` -/
def P12981840355107595265.Spec : Prop :=
  ∀ n, (P12981840355107595265.a n : ℤ) = A070734 (n + 3)

end A070734

/-! ## A070734.P13723844564325222921

`((2*n)%4)!*∏[n+3]`
-/

namespace A070734.P13723844564325222921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 4) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A070734.P13723844564325222921

namespace A070734

/-- `((2*n)%4)!*∏[n+3]` -/
def P13723844564325222921.Spec : Prop :=
  ∀ n, (P13723844564325222921.a n : ℤ) = A070734 (n + 3)

end A070734

/-!
# A070735: Let r, s, t be three permutations of the set { 1, 2, 3, ..., n }; a(n) = minimal value of Sum_{i=1..n} r(i)*s(i)*t(i).

The programs for A070735, there is no canonical definition to state claims against.
-/

/-! ## A070735.P2485943090594992338

`A260355(∑[n+3]+1)`
-/

namespace A070735.P2485943090594992338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A070735.P2485943090594992338

/-! ## A070735.P11854066046666952959

`record[A010054(n+3)*A260355(n+1)]`
-/

namespace A070735.P11854066046666952959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A260355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070735.P11854066046666952959

/-! ## A070735.P9376840045978665437

`record[A260355(n+1)/A260355(n+4)]`
-/

namespace A070735.P9376840045978665437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260355 (n + 1) : ℚ) / (A260355 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070735.P9376840045978665437

/-! ## A070735.P17289095189622397426

`A260355(A034856(n+2))%A063990(n+1)`
-/

namespace A070735.P17289095189622397426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260355 (A034856 (n + 2)).toNat) (A063990 (n + 1))

end

end A070735.P17289095189622397426

/-! ## A070735.P11887460898402582301

`gcd(A242534(n+1), A260355(A034856(n+2)))`
-/

namespace A070735.P11887460898402582301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242534 (n + 1)) (A260355 (A034856 (n + 2)).toNat)

end

end A070735.P11887460898402582301

/-!
# A070736: Let r, s, t, u be four permutations of the set { 1, 2, 3, ..., n }; a(n) = minimal value of Sum_{i=1..n} r(i)*s(i)*t(i)*u(i).

The programs for A070736, there is no canonical definition to state claims against.
-/

/-! ## A070736.P4390223894061257177

`A260355(∑[n+4]+3)`
-/

namespace A070736.P4390223894061257177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A070736.P4390223894061257177

/-!
# A070737: Smallest number x such that the first n cyclotomic polynomials evaluated at x are primes.

The programs for A070737, there is no canonical definition to state claims against.
-/

/-! ## A070737.P1165283779890632733

`A233512(∏{p}[n+1, #])+and(n, 2*n)`
-/

namespace A070737.P1165283779890632733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233512 (∏ p ∈ Nat.primeFactors (f1 n), p) + (Nat.land n (2 * n) : ℤ)

end

end A070737.P1165283779890632733

/-! ## A070737.P17557514412616251259

`A233512(ceil(sqrt((n+1)*∏{p}[n+1, #])))`
-/

namespace A070737.P17557514412616251259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233512 ⌈Real.sqrt (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℝ)⌉.toNat

end

end A070737.P17557514412616251259

/-!
# A070738: Nonprimes n such that n^2 reduced modulo phi(n) = phi(n)^2 reduced modulo n.

The programs for A070738, there is no canonical definition to state claims against.
-/

/-! ## A070738.P10558440766149314891

`filter[A279083(n+1), A118247(#)]`
-/

namespace A070738.P10558440766149314891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118247 (f1 j).toNat = 1) n)

end

end A070738.P10558440766149314891

/-! ## A070738.P3848051559066293327

`A000010(A073483(n+5)+A073473(n+1))`
-/

namespace A070738.P3848051559066293327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A073483 (n + 5) + A073473 (n + 1)).toNat

end

end A070738.P3848051559066293327

/-! ## A070738.P16072197220128375350

`lt[A302982(n+5), A079722(A000203(n+4))]`
-/

namespace A070738.P16072197220128375350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302982 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079722 (A000203 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070738.P16072197220128375350

/-! ## A070738.P9690044025974357536

`A064834(A143395(3*n+4))+A001694(n+1)`
-/

namespace A070738.P9690044025974357536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A143395 (3 * n + 4)).toNat + A001694 (n + 1)

end

end A070738.P9690044025974357536

/-!
# A070739: Primes of form 2^x + 2^y + 1.

The programs for A070739, there is no canonical definition to state claims against.
-/

/-! ## A070739.P14898017664641708190

`∩[or(1, A018900(n+1)), A128898(n+1)]`
-/

namespace A070739.P14898017664641708190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018900 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070739.P14898017664641708190

/-! ## A070739.P17675233104848965417

`∩[A128898(n+1), A099627(n)+2]`
-/

namespace A070739.P17675233104848965417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070739.P17675233104848965417

/-! ## A070739.P17864891565412073671

`∩[A095736(n+1), A165255(n+1)]`
-/

namespace A070739.P17864891565412073671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070739.P17864891565412073671

/-! ## A070739.P3008243509349884623

`p?[A173786(n)+1]`
-/

namespace A070739.P3008243509349884623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070739.P3008243509349884623

/-! ## A070739.P17332246628562378170

`p?[A099627(n)+2]`
-/

namespace A070739.P17332246628562378170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070739.P17332246628562378170

/-!
# A070741: z such that the Diophantine equation x^3+y^4=z^3 has solutions.

The programs for A070741, there is no canonical definition to state claims against.
-/

/-! ## A070741.P17074410200111666401

`A038593(n+1)*A095691(A095724(n+1))`
-/

namespace A070741.P17074410200111666401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) * A095691 (A095724 (n + 1)).toNat

end

end A070741.P17074410200111666401

/-!
# A070743: n sets a new record for the index of the (presumably) last palindrome in the 'Reverse and Add' trajectory of n.

The programs for A070743, there is no canonical definition to state claims against.
-/

/-! ## A070743.P4273099745619270239

`∑[A032846(A093453(∑{d}[n+1, #]))]`
-/

namespace A070743.P4273099745619270239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032846 (A093453 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070743.P4273099745619270239

/-!
# A070745: Numbers z such that the Diophantine equation x^2 + y^3 = z^2 has solutions with x, y > 0.

The programs for A070745, there is no canonical definition to state claims against.
-/

/-! ## A070745.P6951484558178919071

`sqrt(A066647(n+1))`
-/

namespace A070745.P6951484558178919071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A066647 (n + 1) : ℝ)

end

end A070745.P6951484558178919071

/-! ## A070745.P10415031036010375561

`root(A066647(2*n-(n-1)), 2)`
-/

namespace A070745.P10415031036010375561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066647 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A070745.P10415031036010375561

/-! ## A070745.P5633898445242496886

`root(A066647(n+1), 2)%A000045(n+5)`
-/

namespace A070745.P5633898445242496886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A066647 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000045 (n + 5))

end

end A070745.P5633898445242496886

/-! ## A070745.P14212851466455173075

`root(A066647(n+1), 2)*A007318(∑[n])`
-/

namespace A070745.P14212851466455173075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066647 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A070745.P14212851466455173075

/-! ## A070745.P3108931747615236224

`A133388(A066647(n+1)+1)`
-/

namespace A070745.P3108931747615236224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A066647 (n + 1) + 1).toNat

end

end A070745.P3108931747615236224

/-!
# A070747: a(n) = signum(sin(n)), where signum=A057427.

The programs for A070747, the canonical program `A070747.P869791433030483318` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070747 has offset 0).

The definition of A070747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070747.P869791433030483318

`ceil(sin(n)+floor(sin(n)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070747

/-- `ceil(sin(n)+floor(sin(n)))` -/
def P869791433030483318.Spec : Prop :=
  ∀ n, P869791433030483318.a n = A070747 n

theorem P869791433030483318.correct : P869791433030483318.Spec := by
  intro n
  simp only [A070747]

end A070747

/-!
# A070748: a(n) = signum(sin(prime(n))), where signum=A057427, prime=A000040.

The programs for A070748, the canonical program `A070748.P9957700921087628630` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070748 has offset 1).

The definition of A070748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070748.P9957700921087628630

`or(1, floor(sin(A000040(n+1))))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070748

/-- `or(1, floor(sin(A000040(n+1))))` -/
def P9957700921087628630.Spec : Prop :=
  ∀ n, P9957700921087628630.a n = A070748 (n + 1)

theorem P9957700921087628630.correct : P9957700921087628630.Spec := by
  intro n
  simp only [A070748, Nat.add_sub_cancel]

end A070748

/-! ## A070748.P4161149044647310080

`2*floor(sin(A008578(n+2)))+1`
-/

namespace A070748.P4161149044647310080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sin (A008578 (n + 2) : ℝ)⌋ + 1

end

end A070748.P4161149044647310080

namespace A070748

/-- `2*floor(sin(A008578(n+2)))+1` -/
def P4161149044647310080.Spec : Prop :=
  ∀ n, P4161149044647310080.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P15167784921272726519

`A070747(A000040(n+1))`
-/

namespace A070748.P15167784921272726519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (A000040 (n + 1)).toNat

end

end A070748.P15167784921272726519

namespace A070748

/-- `A070747(A000040(n+1))` -/
def P15167784921272726519.Spec : Prop :=
  ∀ n, P15167784921272726519.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P15328444725936194671

`A070747(A006005(n+1))`
-/

namespace A070748.P15328444725936194671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (A006005 (n + 1)).toNat

end

end A070748.P15328444725936194671

namespace A070748

/-- `A070747(A006005(n+1))` -/
def P15328444725936194671.Spec : Prop :=
  ∀ n, P15328444725936194671.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P1803642353169729908

`A070747(A008578(n+2))`
-/

namespace A070748.P1803642353169729908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (A008578 (n + 2)).toNat

end

end A070748.P1803642353169729908

namespace A070748

/-- `A070747(A008578(n+2))` -/
def P1803642353169729908.Spec : Prop :=
  ∀ n, P1803642353169729908.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P10755111420156394431

`A070747(A075643(n+2))`
-/

namespace A070748.P10755111420156394431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (A075643 (n + 2)).toNat

end

end A070748.P10755111420156394431

namespace A070748

/-- `A070747(A075643(n+2))` -/
def P10755111420156394431.Spec : Prop :=
  ∀ n, P10755111420156394431.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P1529851718451104124

`A070747(A171525(n+2))`
-/

namespace A070748.P1529851718451104124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (A171525 (n + 2)).toNat

end

end A070748.P1529851718451104124

namespace A070748

/-- `A070747(A171525(n+2))` -/
def P1529851718451104124.Spec : Prop :=
  ∀ n, P1529851718451104124.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P6702349920757803824

`A070747(A182986(n+2))`
-/

namespace A070748.P6702349920757803824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (A182986 (n + 2)).toNat

end

end A070748.P6702349920757803824

namespace A070748

/-- `A070747(A182986(n+2))` -/
def P6702349920757803824.Spec : Prop :=
  ∀ n, P6702349920757803824.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P7068186287470346574

`or(1, A000493(p?[A014681(n)]))`
-/

namespace A070748.P7068186287470346574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000493 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A070748.P7068186287470346574

namespace A070748

/-- `or(1, A000493(p?[A014681(n)]))` -/
def P7068186287470346574.Spec : Prop :=
  ∀ n, P7068186287470346574.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P2711897605828122299

`A070747(eq[A070747(n)², A072721(n)])`
-/

namespace A070748.P2711897605828122299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070748.P2711897605828122299

namespace A070748

/-- `A070747(eq[A070747(n)², A072721(n)])` -/
def P2711897605828122299.Spec : Prop :=
  ∀ n, P2711897605828122299.a n = A070748 (n + 1)

end A070748

/-! ## A070748.P3169625170359635137

`2*floor(sin(record[A051664(n+1)]))+1`
-/

namespace A070748.P3169625170359635137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋ + 1

end

end A070748.P3169625170359635137

namespace A070748

/-- `2*floor(sin(record[A051664(n+1)]))+1` -/
def P3169625170359635137.Spec : Prop :=
  ∀ n, P3169625170359635137.a n = A070748 (n + 1)

end A070748

/-!
# A070749: Nearest integer to sin(prime(n)), prime=A000040.

The programs for A070749, the canonical program `A070749.P5792120864452831297` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070749 has offset 1).

The definition of A070749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070749.P17746937410733004064

`round(sin(Δ[A007504(n)]))`
-/

namespace A070749.P17746937410733004064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (n + 1) - f1 n : ℝ))

end

end A070749.P17746937410733004064

namespace A070749

/-- `round(sin(Δ[A007504(n)]))` -/
def P17746937410733004064.Spec : Prop :=
  ∀ n, P17746937410733004064.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P5792120864452831297

`round(sin(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070749

/-- `round(sin(A000040(n+1)))` -/
def P5792120864452831297.Spec : Prop :=
  ∀ n, P5792120864452831297.a n = A070749 (n + 1)

theorem P5792120864452831297.correct : P5792120864452831297.Spec := by
  intro n
  simp only [A070749, Nat.add_sub_cancel]

end A070749

/-! ## A070749.P15402315705892058691

`round(sin(A006005(n+1)))`
-/

namespace A070749.P15402315705892058691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A006005 (n + 1) : ℝ))

end

end A070749.P15402315705892058691

namespace A070749

/-- `round(sin(A006005(n+1)))` -/
def P15402315705892058691.Spec : Prop :=
  ∀ n, P15402315705892058691.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P12301564283764504936

`round(sin(sqrt(A001248(n+1))))`
-/

namespace A070749.P12301564283764504936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A070749.P12301564283764504936

namespace A070749

/-- `round(sin(sqrt(A001248(n+1))))` -/
def P12301564283764504936.Spec : Prop :=
  ∀ n, P12301564283764504936.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P10785687560631683899

`round(sin(∑[A054541(n+1)]))`
-/

namespace A070749.P10785687560631683899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A070749.P10785687560631683899

namespace A070749

/-- `round(sin(∑[A054541(n+1)]))` -/
def P10785687560631683899.Spec : Prop :=
  ∀ n, P10785687560631683899.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P9412071036485242885

`round(sin(A008578(n+2)))`
-/

namespace A070749.P9412071036485242885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A008578 (n + 2) : ℝ))

end

end A070749.P9412071036485242885

namespace A070749

/-- `round(sin(A008578(n+2)))` -/
def P9412071036485242885.Spec : Prop :=
  ∀ n, P9412071036485242885.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P5314442861905435104

`round(sin(p?[xor(1, n)+1]))^3`
-/

namespace A070749.P5314442861905435104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)) ^ 3

end

end A070749.P5314442861905435104

namespace A070749

/-- `round(sin(p?[xor(1, n)+1]))^3` -/
def P5314442861905435104.Spec : Prop :=
  ∀ n, P5314442861905435104.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P1914856619316869945

`round(sin(p?[xor(1, n)+1]%(11*n+7)))`
-/

namespace A070749.P1914856619316869945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (11 * n + 7) : ℕ) : ℝ))

end

end A070749.P1914856619316869945

namespace A070749

/-- `round(sin(p?[xor(1, n)+1]%(11*n+7)))` -/
def P1914856619316869945.Spec : Prop :=
  ∀ n, P1914856619316869945.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P1963596252514059919

`round(sin(record[A006530(n+2)]))`
-/

namespace A070749.P1963596252514059919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A070749.P1963596252514059919

namespace A070749

/-- `round(sin(record[A006530(n+2)]))` -/
def P1963596252514059919.Spec : Prop :=
  ∀ n, P1963596252514059919.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P7006202546003759035

`round(sin(record[A020639(n+2)]))`
-/

namespace A070749.P7006202546003759035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A070749.P7006202546003759035

namespace A070749

/-- `round(sin(record[A020639(n+2)]))` -/
def P7006202546003759035.Spec : Prop :=
  ∀ n, P7006202546003759035.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P11946374585826856162

`round(sin(record[A000010(n+1)+1]))`
-/

namespace A070749.P11946374585826856162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A070749.P11946374585826856162

namespace A070749

/-- `round(sin(record[A000010(n+1)+1]))` -/
def P11946374585826856162.Spec : Prop :=
  ∀ n, P11946374585826856162.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P10609563225462758744

`round(sin(eq[1, A001222(n+1)]+1))`
-/

namespace A070749.P10609563225462758744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℝ))

end

end A070749.P10609563225462758744

namespace A070749

/-- `round(sin(eq[1, A001222(n+1)]+1))` -/
def P10609563225462758744.Spec : Prop :=
  ∀ n, P10609563225462758744.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P11404773587542256733

`round(sin(p?[comp[n²]]))`
-/

namespace A070749.P11404773587542256733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))

end

end A070749.P11404773587542256733

namespace A070749

/-- `round(sin(p?[comp[n²]]))` -/
def P11404773587542256733.Spec : Prop :=
  ∀ n, P11404773587542256733.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P8593057199557086440

`round(sin(record[A051698(n)]))`
-/

namespace A070749.P8593057199557086440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A070749.P8593057199557086440

namespace A070749

/-- `round(sin(record[A051698(n)]))` -/
def P8593057199557086440.Spec : Prop :=
  ∀ n, P8593057199557086440.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P14872261628225169291

`round(sin(record[∑{p}[n+2, #]]))`
-/

namespace A070749.P14872261628225169291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A070749.P14872261628225169291

namespace A070749

/-- `round(sin(record[∑{p}[n+2, #]]))` -/
def P14872261628225169291.Spec : Prop :=
  ∀ n, P14872261628225169291.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P10267225054558109529

`round(sin(record[A058977(n+1)]))`
-/

namespace A070749.P10267225054558109529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A070749.P10267225054558109529

namespace A070749

/-- `round(sin(record[A058977(n+1)]))` -/
def P10267225054558109529.Spec : Prop :=
  ∀ n, P10267225054558109529.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P17669923043591647403

`round(sin(record[A014963(n+2)]))`
-/

namespace A070749.P17669923043591647403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A070749.P17669923043591647403

namespace A070749

/-- `round(sin(record[A014963(n+2)]))` -/
def P17669923043591647403.Spec : Prop :=
  ∀ n, P17669923043591647403.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P9806376993173566405

`A000494(A000040(n+1))`
-/

namespace A070749.P9806376993173566405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000494 (A000040 (n + 1)).toNat

end

end A070749.P9806376993173566405

namespace A070749

/-- `A000494(A000040(n+1))` -/
def P9806376993173566405.Spec : Prop :=
  ∀ n, P9806376993173566405.a n = A070749 (n + 1)

end A070749

/-! ## A070749.P5818465086581374290

`A000494(A006005(n+1))`
-/

namespace A070749.P5818465086581374290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000494 (A006005 (n + 1)).toNat

end

end A070749.P5818465086581374290

namespace A070749

/-- `A000494(A006005(n+1))` -/
def P5818465086581374290.Spec : Prop :=
  ∀ n, P5818465086581374290.a n = A070749 (n + 1)

end A070749

/-!
# A070750: 0 if n-th prime is even, 1 if n-th prime is == 1 (mod 4), and -1 if n-th prime is == 3 (mod 4).

The programs for A070750, the canonical program `A070750.P13196581040963341553` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070750 has offset 1).

The definition of A070750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070750.P13196581040963341553

`2-A039702(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070750

/-- `2-A039702(n+1)` -/
def P13196581040963341553.Spec : Prop :=
  ∀ n, P13196581040963341553.a n = A070750 (n + 1)

theorem P13196581040963341553.correct : P13196581040963341553.Spec := by
  intro n
  simp only [A070750, Nat.add_sub_cancel]

end A070750

/-! ## A070750.P13083423977693221289

`2-A000040(n+1)%4`
-/

namespace A070750.P13083423977693221289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A000040 (n + 1)) 4

end

end A070750.P13083423977693221289

namespace A070750

/-- `2-A000040(n+1)%4` -/
def P13083423977693221289.Spec : Prop :=
  ∀ n, P13083423977693221289.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P12146079265816450808

`A073579(n+1)%2`
-/

namespace A070750.P12146079265816450808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073579 (n + 1)) 2

end

end A070750.P12146079265816450808

namespace A070750

/-- `A073579(n+1)%2` -/
def P12146079265816450808.Spec : Prop :=
  ∀ n, P12146079265816450808.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P7701196173156492285

`2-Δ[A007504(n)]%4`
-/

namespace A070750.P7701196173156492285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (f1 (n + 1) - f1 n) 4

end

end A070750.P7701196173156492285

namespace A070750

/-- `2-Δ[A007504(n)]%4` -/
def P7701196173156492285.Spec : Prop :=
  ∀ n, P7701196173156492285.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P7292911748030336425

`1-A113935(n+1)%4`
-/

namespace A070750.P7292911748030336425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A113935 (n + 1)) 4

end

end A070750.P7292911748030336425

namespace A070750

/-- `1-A113935(n+1)%4` -/
def P7292911748030336425.Spec : Prop :=
  ∀ n, P7292911748030336425.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P18187106133489155768

`2-A001750(n+1)%4`
-/

namespace A070750.P18187106133489155768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A001750 (n + 1)) 4

end

end A070750.P18187106133489155768

namespace A070750

/-- `2-A001750(n+1)%4` -/
def P18187106133489155768.Spec : Prop :=
  ∀ n, P18187106133489155768.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P9366209816871901283

`2-A075520(n+1)%4`
-/

namespace A070750.P9366209816871901283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A075520 (n + 1)) 4

end

end A070750.P9366209816871901283

namespace A070750

/-- `2-A075520(n+1)%4` -/
def P9366209816871901283.Spec : Prop :=
  ∀ n, P9366209816871901283.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P10427394996481538741

`2-A171032(n+1)%4`
-/

namespace A070750.P10427394996481538741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A171032 (n + 1)) 4

end

end A070750.P10427394996481538741

namespace A070750

/-- `2-A171032(n+1)%4` -/
def P10427394996481538741.Spec : Prop :=
  ∀ n, P10427394996481538741.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P10351335096874026193

`2-and(3, A000040(2*n+1-n))`
-/

namespace A070750.P10351335096874026193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 3 (A000040 (2 * n + 1 - n))

end

end A070750.P10351335096874026193

namespace A070750

/-- `2-and(3, A000040(2*n+1-n))` -/
def P10351335096874026193.Spec : Prop :=
  ∀ n, P10351335096874026193.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P9989288193820133377

`A020513(A080089(n+1))`
-/

namespace A070750.P9989288193820133377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A080089 (n + 1)).toNat

end

end A070750.P9989288193820133377

namespace A070750

/-- `A020513(A080089(n+1))` -/
def P9989288193820133377.Spec : Prop :=
  ∀ n, P9989288193820133377.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P5563288216663564238

`A070238(A068504(n+1))`
-/

namespace A070750.P5563288216663564238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070238 (A068504 (n + 1)).toNat

end

end A070750.P5563288216663564238

namespace A070750

/-- `A070238(A068504(n+1))` -/
def P5563288216663564238.Spec : Prop :=
  ∀ n, P5563288216663564238.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P18177491060173838910

`2-A003324(A039710(n+1))`
-/

namespace A070750.P18177491060173838910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003324 (A039710 (n + 1)).toNat

end

end A070750.P18177491060173838910

namespace A070750

/-- `2-A003324(A039710(n+1))` -/
def P18177491060173838910.Spec : Prop :=
  ∀ n, P18177491060173838910.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P10973919632101600895

`2-A003324(A039714(n+1))`
-/

namespace A070750.P10973919632101600895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003324 (A039714 (n + 1)).toNat

end

end A070750.P10973919632101600895

namespace A070750

/-- `2-A003324(A039714(n+1))` -/
def P10973919632101600895.Spec : Prop :=
  ∀ n, P10973919632101600895.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P2323844509795861519

`2-A003324(A110923(n+1))`
-/

namespace A070750.P2323844509795861519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003324 (A110923 (n + 1)).toNat

end

end A070750.P2323844509795861519

namespace A070750

/-- `2-A003324(A110923(n+1))` -/
def P2323844509795861519.Spec : Prop :=
  ∀ n, P2323844509795861519.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P5080342598485469848

`A046980(2*(A039714(n+1)-1))`
-/

namespace A070750.P5080342598485469848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (2 * (A039714 (n + 1) - 1)).toNat

end

end A070750.P5080342598485469848

namespace A070750

/-- `A046980(2*(A039714(n+1)-1))` -/
def P5080342598485469848.Spec : Prop :=
  ∀ n, P5080342598485469848.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P14797194746520413270

`A000040(n+1)-A076342(n+1)`
-/

namespace A070750.P14797194746520413270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A076342 (n + 1)

end

end A070750.P14797194746520413270

namespace A070750

/-- `A000040(n+1)-A076342(n+1)` -/
def P14797194746520413270.Spec : Prop :=
  ∀ n, P14797194746520413270.a n = A070750 (n + 1)

theorem P14797194746520413270.correct : P14797194746520413270.Spec := by
  intro n
  simp only [A070750, Nat.add_sub_cancel, A070750.P14797194746520413270.a, A070750.P13196581040963341553.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A076342, A076342.P17182392044292318344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070750

/-! ## A070750.P14877239714418083630

`A082542(n+1)-A000040(n+1)`
-/

namespace A070750.P14877239714418083630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082542 (n + 1) - A000040 (n + 1)

end

end A070750.P14877239714418083630

namespace A070750

/-- `A082542(n+1)-A000040(n+1)` -/
def P14877239714418083630.Spec : Prop :=
  ∀ n, P14877239714418083630.a n = A070750 (n + 1)

theorem P14877239714418083630.correct : P14877239714418083630.Spec := by
  intro n
  simp only [A070750, Nat.add_sub_cancel, A070750.P14877239714418083630.a, A070750.P13196581040963341553.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, A082542, A082542.P17184651886074543973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070750

/-! ## A070750.P12660136573949080103

`A098033(n+1)-A100672(n+1)`
-/

namespace A070750.P12660136573949080103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1) - A100672 (n + 1)

end

end A070750.P12660136573949080103

namespace A070750

/-- `A098033(n+1)-A100672(n+1)` -/
def P12660136573949080103.Spec : Prop :=
  ∀ n, P12660136573949080103.a n = A070750 (n + 1)

end A070750

/-! ## A070750.P18313139049370679377

`A052147(n+1)-A267573(n+1)`
-/

namespace A070750.P18313139049370679377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A267573 (n + 1)

end

end A070750.P18313139049370679377

namespace A070750

/-- `A052147(n+1)-A267573(n+1)` -/
def P18313139049370679377.Spec : Prop :=
  ∀ n, P18313139049370679377.a n = A070750 (n + 1)

theorem P18313139049370679377.correct : P18313139049370679377.Spec := by
  intro n
  simp only [A070750, Nat.add_sub_cancel, A070750.P18313139049370679377.a, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, A052147, A052147.P15217781913070555828.a, A267573, A267573.P5530432348318331570.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070750

/-! ## A070750.P3041755636723888913

`A073579(n+1)/A000040(n+1)`
-/

namespace A070750.P3041755636723888913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073579 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A070750.P3041755636723888913

namespace A070750

/-- `A073579(n+1)/A000040(n+1)` -/
def P3041755636723888913.Spec : Prop :=
  ∀ n, P3041755636723888913.a n = (A070750 (n + 1) : ℚ)

end A070750

/-!
# A070751: Numbers n such that sin(n) < 0.

The programs for A070751, the canonical program `A070751.P4830890912901704981` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070751 has offset 1).

The definition of A070751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070751.P4830890912901704981

`lt[sin(n), 0]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070751

/-- `lt[sin(n), 0]` -/
def P4830890912901704981.Spec : Prop :=
  ∀ n, (P4830890912901704981.a n : ℤ) = A070751 (n + 1)

theorem P4830890912901704981.correct : P4830890912901704981.Spec := by
  intro n
  simp only [A070751, Nat.add_sub_cancel]

end A070751

/-! ## A070751.P13564464656180892419

`lt[tan(n/2), 0]`
-/

namespace A070751.P13564464656180892419
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A070751.P13564464656180892419

namespace A070751

/-- `lt[tan(n/2), 0]` -/
def P13564464656180892419.Spec : Prop :=
  ∀ n, (P13564464656180892419.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P4117001994675447598

`lt[cos(n+11), 0]`
-/

namespace A070751.P4117001994675447598
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 11 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A070751.P4117001994675447598

namespace A070751

/-- `lt[cos(n+11), 0]` -/
def P4117001994675447598.Spec : Prop :=
  ∀ n, (P4117001994675447598.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P7451968260857206606

`eq[0, floor(exp(sin(n)))]`
-/

namespace A070751.P7451968260857206606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sin (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070751.P7451968260857206606

namespace A070751

/-- `eq[0, floor(exp(sin(n)))]` -/
def P7451968260857206606.Spec : Prop :=
  ∀ n, (P7451968260857206606.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P933996108461364104

`comp[n*ceil(sin(n))]`
-/

namespace A070751.P933996108461364104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.sin (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A070751.P933996108461364104

namespace A070751

/-- `comp[n*ceil(sin(n))]` -/
def P933996108461364104.Spec : Prop :=
  ∀ n, (P933996108461364104.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P12172375432700594934

`comp[gcd(n, floor(sin(n)))]`
-/

namespace A070751.P12172375432700594934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊Real.sin (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A070751.P12172375432700594934

namespace A070751

/-- `comp[gcd(n, floor(sin(n)))]` -/
def P12172375432700594934.Spec : Prop :=
  ∀ n, (P12172375432700594934.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P15583062574405686734

`comp[lcm(n, ceil(sin(n)))]`
-/

namespace A070751.P15583062574405686734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈Real.sin (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A070751.P15583062574405686734

namespace A070751

/-- `comp[lcm(n, ceil(sin(n)))]` -/
def P15583062574405686734.Spec : Prop :=
  ∀ n, (P15583062574405686734.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P12292387703386553644

`comp[or(n, floor(sin(n)))]`
-/

namespace A070751.P12292387703386553644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.sin (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A070751.P12292387703386553644

namespace A070751

/-- `comp[or(n, floor(sin(n)))]` -/
def P12292387703386553644.Spec : Prop :=
  ∀ n, (P12292387703386553644.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P9150896405317707178

`comp[xor(n, floor(sin(n)))]`
-/

namespace A070751.P9150896405317707178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.sin (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A070751.P9150896405317707178

namespace A070751

/-- `comp[xor(n, floor(sin(n)))]` -/
def P9150896405317707178.Spec : Prop :=
  ∀ n, (P9150896405317707178.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P1258999054406726910

`lt[cot((n+1)/2), 0]+1`
-/

namespace A070751.P1258999054406726910
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A070751.P1258999054406726910

namespace A070751

/-- `lt[cot((n+1)/2), 0]+1` -/
def P1258999054406726910.Spec : Prop :=
  ∀ n, (P1258999054406726910.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P9675056472069983181

`∪[A277095(n+1), A246390(n)]`
-/

namespace A070751.P9675056472069983181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070751.P9675056472069983181

namespace A070751

/-- `∪[A277095(n+1), A246390(n)]` -/
def P9675056472069983181.Spec : Prop :=
  ∀ n, (P9675056472069983181.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P15610459546100607587

`∪[A332482(n+1), A246390(n)]`
-/

namespace A070751.P15610459546100607587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070751.P15610459546100607587

namespace A070751

/-- `∪[A332482(n+1), A246390(n)]` -/
def P15610459546100607587.Spec : Prop :=
  ∀ n, (P15610459546100607587.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P6592925137903341070

`∪[A277095(n+1), A277096(n+1)]`
-/

namespace A070751.P6592925137903341070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070751.P6592925137903341070

namespace A070751

/-- `∪[A277095(n+1), A277096(n+1)]` -/
def P6592925137903341070.Spec : Prop :=
  ∀ n, (P6592925137903341070.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P15831422417076793923

`∪[A277095(n+1), A332483(n+1)]`
-/

namespace A070751.P15831422417076793923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070751.P15831422417076793923

namespace A070751

/-- `∪[A277095(n+1), A332483(n+1)]` -/
def P15831422417076793923.Spec : Prop :=
  ∀ n, (P15831422417076793923.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P3075726342239147272

`∪[A332482(n+1), A332483(n+1)]`
-/

namespace A070751.P3075726342239147272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070751.P3075726342239147272

namespace A070751

/-- `∪[A332482(n+1), A332483(n+1)]` -/
def P3075726342239147272.Spec : Prop :=
  ∀ n, (P3075726342239147272.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P12487542336294991792

`∪[A277094(n+1), A277096(n+1)]+2`
-/

namespace A070751.P12487542336294991792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A070751.P12487542336294991792

namespace A070751

/-- `∪[A277094(n+1), A277096(n+1)]+2` -/
def P12487542336294991792.Spec : Prop :=
  ∀ n, (P12487542336294991792.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P5245084634366387239

`∩[A332486(n+1), A332487(n+1)]`
-/

namespace A070751.P5245084634366387239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070751.P5245084634366387239

namespace A070751

/-- `∩[A332486(n+1), A332487(n+1)]` -/
def P5245084634366387239.Spec : Prop :=
  ∀ n, (P5245084634366387239.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P11954077558162388303

`lt[A274087(n), 0]`
-/

namespace A070751.P11954077558162388303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274087 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070751.P11954077558162388303

namespace A070751

/-- `lt[A274087(n), 0]` -/
def P11954077558162388303.Spec : Prop :=
  ∀ n, (P11954077558162388303.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P10327306894870599953

`lt[A124060(n)+A000493(n), A124060(n)]`
-/

namespace A070751.P10327306894870599953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n + A000493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070751.P10327306894870599953

namespace A070751

/-- `lt[A124060(n)+A000493(n), A124060(n)]` -/
def P10327306894870599953.Spec : Prop :=
  ∀ n, (P10327306894870599953.a n : ℤ) = A070751 (n + 1)

end A070751

/-! ## A070751.P6307760770050940144

`lt[n*A302203(n), n]`
-/

namespace A070751.P6307760770050940144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302203 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070751.P6307760770050940144

namespace A070751

/-- `lt[n*A302203(n), n]` -/
def P6307760770050940144.Spec : Prop :=
  ∀ n, (P6307760770050940144.a n : ℤ) = A070751 (n + 1)

end A070751

/-!
# A070752: Numbers k such that sin(k) > 0.

The programs for A070752, the canonical program `A070752.P3648163339810385949` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070752 has offset 1).

The definition of A070752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070752.P3648163339810385949

`lt[0, sin(n)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070752

/-- `lt[0, sin(n)]` -/
def P3648163339810385949.Spec : Prop :=
  ∀ n, (P3648163339810385949.a n : ℤ) = A070752 (n + 1)

theorem P3648163339810385949.correct : P3648163339810385949.Spec := by
  intro n
  simp only [A070752, Nat.add_sub_cancel]

end A070752

/-! ## A070752.P16621819533097487123

`lt[0, tan(n/2)]`
-/

namespace A070752.P16621819533097487123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A070752.P16621819533097487123

namespace A070752

/-- `lt[0, tan(n/2)]` -/
def P16621819533097487123.Spec : Prop :=
  ∀ n, (P16621819533097487123.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P425985561087910974

`record[n^ceil(sin(n))]`
-/

namespace A070752.P425985561087910974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.sin (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070752.P425985561087910974

namespace A070752

/-- `record[n^ceil(sin(n))]` -/
def P425985561087910974.Spec : Prop :=
  ∀ n, P425985561087910974.a n = (A070752 (n + 1) : ℚ)

end A070752

/-! ## A070752.P2287794521301501429

`comp[lcm(n, floor(sin(n)))]`
-/

namespace A070752.P2287794521301501429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌊Real.sin (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A070752.P2287794521301501429

namespace A070752

/-- `comp[lcm(n, floor(sin(n)))]` -/
def P2287794521301501429.Spec : Prop :=
  ∀ n, (P2287794521301501429.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P10476730562656028545

`record[C(n, ceil(sin(n)))]`
-/

namespace A070752.P10476730562656028545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌈Real.sin (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070752.P10476730562656028545

namespace A070752

/-- `record[C(n, ceil(sin(n)))]` -/
def P10476730562656028545.Spec : Prop :=
  ∀ n, (P10476730562656028545.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P5669751250651439367

`comp[and(n, floor(sin(n)))]`
-/

namespace A070752.P5669751250651439367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊Real.sin (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A070752.P5669751250651439367

namespace A070752

/-- `comp[and(n, floor(sin(n)))]` -/
def P5669751250651439367.Spec : Prop :=
  ∀ n, (P5669751250651439367.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P3904660588263245141

`lt[cos(n+1), cos(1-n)]`
-/

namespace A070752.P3904660588263245141
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 - (n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070752.P3904660588263245141

namespace A070752

/-- `lt[cos(n+1), cos(1-n)]` -/
def P3904660588263245141.Spec : Prop :=
  ∀ n, (P3904660588263245141.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P13269620324401719511

`record[(n+1)*ceil(sin(n+1))]`
-/

namespace A070752.P13269620324401719511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈Real.sin (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070752.P13269620324401719511

namespace A070752

/-- `record[(n+1)*ceil(sin(n+1))]` -/
def P13269620324401719511.Spec : Prop :=
  ∀ n, P13269620324401719511.a n = A070752 (n + 1)

end A070752

/-! ## A070752.P9524395557823200249

`record[gcd(n+1, floor(sin(n+1)))]`
-/

namespace A070752.P9524395557823200249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌊Real.sin (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070752.P9524395557823200249

namespace A070752

/-- `record[gcd(n+1, floor(sin(n+1)))]` -/
def P9524395557823200249.Spec : Prop :=
  ∀ n, (P9524395557823200249.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P14160335917044088898

`record[lcm(n+1, ceil(sin(n+1)))]`
-/

namespace A070752.P14160335917044088898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ⌈Real.sin (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070752.P14160335917044088898

namespace A070752

/-- `record[lcm(n+1, ceil(sin(n+1)))]` -/
def P14160335917044088898.Spec : Prop :=
  ∀ n, (P14160335917044088898.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P17567268563634231919

`record[or(n+1, floor(sin(n+1)))]`
-/

namespace A070752.P17567268563634231919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ⌊Real.sin (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070752.P17567268563634231919

namespace A070752

/-- `record[or(n+1, floor(sin(n+1)))]` -/
def P17567268563634231919.Spec : Prop :=
  ∀ n, P17567268563634231919.a n = A070752 (n + 1)

end A070752

/-! ## A070752.P8826248304719217811

`record[xor(n+1, floor(sin(n+1)))]`
-/

namespace A070752.P8826248304719217811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ⌊Real.sin (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070752.P8826248304719217811

namespace A070752

/-- `record[xor(n+1, floor(sin(n+1)))]` -/
def P8826248304719217811.Spec : Prop :=
  ∀ n, P8826248304719217811.a n = A070752 (n + 1)

end A070752

/-! ## A070752.P17230573465641352885

`lt[cos(n+1), cos(1)*cos(n)]`
-/

namespace A070752.P17230573465641352885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ) * Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070752.P17230573465641352885

namespace A070752

/-- `lt[cos(n+1), cos(1)*cos(n)]` -/
def P17230573465641352885.Spec : Prop :=
  ∀ n, (P17230573465641352885.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P14321178337467932161

`lt[cos(n+1)/cos(1), cos(n)]`
-/

namespace A070752.P14321178337467932161
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ) / Real.cos (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070752.P14321178337467932161

namespace A070752

/-- `lt[cos(n+1)/cos(1), cos(n)]` -/
def P14321178337467932161.Spec : Prop :=
  ∀ n, (P14321178337467932161.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P5240851974743038506

`∪[A277093(n+1), A277094(n+1)]`
-/

namespace A070752.P5240851974743038506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070752.P5240851974743038506

namespace A070752

/-- `∪[A277093(n+1), A277094(n+1)]` -/
def P5240851974743038506.Spec : Prop :=
  ∀ n, (P5240851974743038506.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P4589329226824109691

`∪[A277094(n+1), A332480(n+1)]`
-/

namespace A070752.P4589329226824109691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070752.P4589329226824109691

namespace A070752

/-- `∪[A277094(n+1), A332480(n+1)]` -/
def P4589329226824109691.Spec : Prop :=
  ∀ n, (P4589329226824109691.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P13965670256960186860

`∪[A332480(n+1), A332481(n+1)]`
-/

namespace A070752.P13965670256960186860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070752.P13965670256960186860

namespace A070752

/-- `∪[A332480(n+1), A332481(n+1)]` -/
def P13965670256960186860.Spec : Prop :=
  ∀ n, (P13965670256960186860.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P18126672347905417920

`∩[A332484(n+1), A332485(n+1)]`
-/

namespace A070752.P18126672347905417920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070752.P18126672347905417920

namespace A070752

/-- `∩[A332484(n+1), A332485(n+1)]` -/
def P18126672347905417920.Spec : Prop :=
  ∀ n, (P18126672347905417920.a n : ℤ) = A070752 (n + 1)

end A070752

/-! ## A070752.P382615451004722389

`lt[0, A274087(n)]`
-/

namespace A070752.P382615451004722389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070752.P382615451004722389

namespace A070752

/-- `lt[0, A274087(n)]` -/
def P382615451004722389.Spec : Prop :=
  ∀ n, (P382615451004722389.a n : ℤ) = A070752 (n + 1)

end A070752

/-!
# A070753: Primes p such that sin(p) < 0.

The programs for A070753, the canonical program `A070753.P9287995981668197208` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070753 has offset 1).

The definition of A070753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070753.P9287995981668197208

`p?[lcm(2*n+1, floor(sin(2*n+1)))]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070753

/-- `p?[lcm(2*n+1, floor(sin(2*n+1)))]` -/
def P9287995981668197208.Spec : Prop :=
  ∀ n, (P9287995981668197208.a n : ℤ) = A070753 (n + 1)

theorem P9287995981668197208.correct : P9287995981668197208.Spec := by
  intro n
  simp only [A070753, Nat.add_sub_cancel]

end A070753

/-! ## A070753.P8712642225453410695

`p?[gcd(2*n+1, ceil(sin(2*n+1)))]`
-/

namespace A070753.P8712642225453410695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) ⌈Real.sin (2 * n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070753.P8712642225453410695

namespace A070753

/-- `p?[gcd(2*n+1, ceil(sin(2*n+1)))]` -/
def P8712642225453410695.Spec : Prop :=
  ∀ n, (P8712642225453410695.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P6136385522799333055

`p?[and(2*n+1, floor(sin(2*n+1)))]`
-/

namespace A070753.P6136385522799333055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) ⌊Real.sin (2 * n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070753.P6136385522799333055

namespace A070753

/-- `p?[and(2*n+1, floor(sin(2*n+1)))]` -/
def P6136385522799333055.Spec : Prop :=
  ∀ n, P6136385522799333055.a n = A070753 (n + 1)

end A070753

/-! ## A070753.P4029527303446724336

`p?[abs(n*floor(sin(n)))]`
-/

namespace A070753.P4029527303446724336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ⌊Real.sin (n : ℝ)⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070753.P4029527303446724336

namespace A070753

/-- `p?[abs(n*floor(sin(n)))]` -/
def P4029527303446724336.Spec : Prop :=
  ∀ n, P4029527303446724336.a n = A070753 (n + 1)

end A070753

/-! ## A070753.P1648440320712108238

`p?[lt[sin(n), 0]]`
-/

namespace A070753.P1648440320712108238
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070753.P1648440320712108238

namespace A070753

/-- `p?[lt[sin(n), 0]]` -/
def P1648440320712108238.Spec : Prop :=
  ∀ n, (P1648440320712108238.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P13790711540213986776

`p?[lt[cos(n-1), cos(n+1)]]`
-/

namespace A070753.P13790711540213986776
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℤ) - 1 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070753.P13790711540213986776

namespace A070753

/-- `p?[lt[cos(n-1), cos(n+1)]]` -/
def P13790711540213986776.Spec : Prop :=
  ∀ n, (P13790711540213986776.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P11551383678180014034

`p?[A070751(n+1)]`
-/

namespace A070753.P11551383678180014034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070753.P11551383678180014034

namespace A070753

/-- `p?[A070751(n+1)]` -/
def P11551383678180014034.Spec : Prop :=
  ∀ n, P11551383678180014034.a n = A070753 (n + 1)

end A070753

/-! ## A070753.P13386668248747797468

`filter[A070751(n+1), A010051(#)]`
-/

namespace A070753.P13386668248747797468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070753.P13386668248747797468

namespace A070753

/-- `filter[A070751(n+1), A010051(#)]` -/
def P13386668248747797468.Spec : Prop :=
  ∀ n, P13386668248747797468.a n = A070753 (n + 1)

end A070753

/-! ## A070753.P8063168914787996022

`∩[A000040(n+1), A070751(n+1)]`
-/

namespace A070753.P8063168914787996022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P8063168914787996022

namespace A070753

/-- `∩[A000040(n+1), A070751(n+1)]` -/
def P8063168914787996022.Spec : Prop :=
  ∀ n, (P8063168914787996022.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P5516922328986983668

`∩[A006005(n+1), A070751(n+1)]`
-/

namespace A070753.P5516922328986983668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P5516922328986983668

namespace A070753

/-- `∩[A006005(n+1), A070751(n+1)]` -/
def P5516922328986983668.Spec : Prop :=
  ∀ n, (P5516922328986983668.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P11536687028052871915

`∩[A008578(n+1), A070751(n+1)]`
-/

namespace A070753.P11536687028052871915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P11536687028052871915

namespace A070753

/-- `∩[A008578(n+1), A070751(n+1)]` -/
def P11536687028052871915.Spec : Prop :=
  ∀ n, (P11536687028052871915.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P11464657792981915029

`∩[A033946(n+1), A070751(n+1)]`
-/

namespace A070753.P11464657792981915029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P11464657792981915029

namespace A070753

/-- `∩[A033946(n+1), A070751(n+1)]` -/
def P11464657792981915029.Spec : Prop :=
  ∀ n, (P11464657792981915029.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P7625307762416186131

`∩[A045344(n+1), A070751(n+1)]`
-/

namespace A070753.P7625307762416186131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P7625307762416186131

namespace A070753

/-- `∩[A045344(n+1), A070751(n+1)]` -/
def P7625307762416186131.Spec : Prop :=
  ∀ n, (P7625307762416186131.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P12675464002310326463

`∩[A065091(n+1), A070751(n+1)]`
-/

namespace A070753.P12675464002310326463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P12675464002310326463

namespace A070753

/-- `∩[A065091(n+1), A070751(n+1)]` -/
def P12675464002310326463.Spec : Prop :=
  ∀ n, (P12675464002310326463.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P7516096705441218172

`∩[A070751(n+1), A140475(n+1)]`
-/

namespace A070753.P7516096705441218172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P7516096705441218172

namespace A070753

/-- `∩[A070751(n+1), A140475(n+1)]` -/
def P7516096705441218172.Spec : Prop :=
  ∀ n, (P7516096705441218172.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P7244975702405727613

`∩[A070751(n+1), A158611(n+1)]`
-/

namespace A070753.P7244975702405727613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P7244975702405727613

namespace A070753

/-- `∩[A070751(n+1), A158611(n+1)]` -/
def P7244975702405727613.Spec : Prop :=
  ∀ n, (P7244975702405727613.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P8015022817904471847

`∩[A070751(n+1), A171577(n+1)]`
-/

namespace A070753.P8015022817904471847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P8015022817904471847

namespace A070753

/-- `∩[A070751(n+1), A171577(n+1)]` -/
def P8015022817904471847.Spec : Prop :=
  ∀ n, (P8015022817904471847.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P10321204222530713345

`∩[A070751(n+1), A182986(n+1)]`
-/

namespace A070753.P10321204222530713345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P10321204222530713345

namespace A070753

/-- `∩[A070751(n+1), A182986(n+1)]` -/
def P10321204222530713345.Spec : Prop :=
  ∀ n, (P10321204222530713345.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P16799798317720251036

`∩[A070751(n+1), A215848(n+1)]`
-/

namespace A070753.P16799798317720251036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070753.P16799798317720251036

namespace A070753

/-- `∩[A070751(n+1), A215848(n+1)]` -/
def P16799798317720251036.Spec : Prop :=
  ∀ n, (P16799798317720251036.a n : ℤ) = A070753 (n + 1)

end A070753

/-! ## A070753.P14856469769035040058

`p?[and(n, A000493(n))]`
-/

namespace A070753.P14856469769035040058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A000493 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070753.P14856469769035040058

namespace A070753

/-- `p?[and(n, A000493(n))]` -/
def P14856469769035040058.Spec : Prop :=
  ∀ n, P14856469769035040058.a n = A070753 (n + 1)

end A070753

/-!
# A070754: Primes p such that sin(p) > 0.

The programs for A070754, the canonical program `A070754.P7257896761602174519` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070754 has offset 1).

The definition of A070754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070754.P7257896761602174519

`p?[n*ceil(sin(n))]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070754

/-- `p?[n*ceil(sin(n))]` -/
def P7257896761602174519.Spec : Prop :=
  ∀ n, P7257896761602174519.a n = A070754 (n + 1)

theorem P7257896761602174519.correct : P7257896761602174519.Spec := by
  intro n
  simp only [A070754, Nat.add_sub_cancel]

end A070754

/-! ## A070754.P7151358794128288508

`p?[gcd(n, floor(sin(n)))]`
-/

namespace A070754.P7151358794128288508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊Real.sin (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070754.P7151358794128288508

namespace A070754

/-- `p?[gcd(n, floor(sin(n)))]` -/
def P7151358794128288508.Spec : Prop :=
  ∀ n, (P7151358794128288508.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P13388942783319861534

`p?[lcm(n, ceil(sin(n)))]`
-/

namespace A070754.P13388942783319861534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈Real.sin (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070754.P13388942783319861534

namespace A070754

/-- `p?[lcm(n, ceil(sin(n)))]` -/
def P13388942783319861534.Spec : Prop :=
  ∀ n, (P13388942783319861534.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P16997541502156377104

`p?[C(n, ceil(sin(n)))]`
-/

namespace A070754.P16997541502156377104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌈Real.sin (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070754.P16997541502156377104

namespace A070754

/-- `p?[C(n, ceil(sin(n)))]` -/
def P16997541502156377104.Spec : Prop :=
  ∀ n, (P16997541502156377104.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P17711749401398565478

`p?[or(n, floor(sin(n)))]`
-/

namespace A070754.P17711749401398565478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.sin (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070754.P17711749401398565478

namespace A070754

/-- `p?[or(n, floor(sin(n)))]` -/
def P17711749401398565478.Spec : Prop :=
  ∀ n, P17711749401398565478.a n = A070754 (n + 1)

end A070754

/-! ## A070754.P1800649644955853409

`p?[xor(n, floor(sin(n)))]`
-/

namespace A070754.P1800649644955853409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.sin (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070754.P1800649644955853409

namespace A070754

/-- `p?[xor(n, floor(sin(n)))]` -/
def P1800649644955853409.Spec : Prop :=
  ∀ n, P1800649644955853409.a n = A070754 (n + 1)

end A070754

/-! ## A070754.P10496718484313981154

`p?[lt[0, sin(n)]]`
-/

namespace A070754.P10496718484313981154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070754.P10496718484313981154

namespace A070754

/-- `p?[lt[0, sin(n)]]` -/
def P10496718484313981154.Spec : Prop :=
  ∀ n, (P10496718484313981154.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P9679367040704893181

`p?[lt[cos(n+1), cos(n-1)]]`
-/

namespace A070754.P9679367040704893181
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070754.P9679367040704893181

namespace A070754

/-- `p?[lt[cos(n+1), cos(n-1)]]` -/
def P9679367040704893181.Spec : Prop :=
  ∀ n, (P9679367040704893181.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P12605012639601396791

`p?[A070752(n+1)]`
-/

namespace A070754.P12605012639601396791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070754.P12605012639601396791

namespace A070754

/-- `p?[A070752(n+1)]` -/
def P12605012639601396791.Spec : Prop :=
  ∀ n, P12605012639601396791.a n = A070754 (n + 1)

end A070754

/-! ## A070754.P4652259633025858377

`filter[A070752(n+1), A010051(#)]`
-/

namespace A070754.P4652259633025858377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070754.P4652259633025858377

namespace A070754

/-- `filter[A070752(n+1), A010051(#)]` -/
def P4652259633025858377.Spec : Prop :=
  ∀ n, P4652259633025858377.a n = A070754 (n + 1)

end A070754

/-! ## A070754.P11584792120680837714

`∩[A000040(n+1), A070752(n+1)]`
-/

namespace A070754.P11584792120680837714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070754.P11584792120680837714

namespace A070754

/-- `∩[A000040(n+1), A070752(n+1)]` -/
def P11584792120680837714.Spec : Prop :=
  ∀ n, (P11584792120680837714.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P17753017587751535032

`∩[A045319(n+1), A070752(n+1)]`
-/

namespace A070754.P17753017587751535032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070754.P17753017587751535032

namespace A070754

/-- `∩[A045319(n+1), A070752(n+1)]` -/
def P17753017587751535032.Spec : Prop :=
  ∀ n, (P17753017587751535032.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P18122302093597255867

`∩[A051948(n+1), A070752(n+1)]`
-/

namespace A070754.P18122302093597255867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070754.P18122302093597255867

namespace A070754

/-- `∩[A051948(n+1), A070752(n+1)]` -/
def P18122302093597255867.Spec : Prop :=
  ∀ n, (P18122302093597255867.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P8511645253417739691

`∩[A070752(n+1), A116974(n+1)]`
-/

namespace A070754.P8511645253417739691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070754.P8511645253417739691

namespace A070754

/-- `∩[A070752(n+1), A116974(n+1)]` -/
def P8511645253417739691.Spec : Prop :=
  ∀ n, (P8511645253417739691.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P375398169768948400

`∩[A070752(n+1), A175787(n+1)]`
-/

namespace A070754.P375398169768948400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070754.P375398169768948400

namespace A070754

/-- `∩[A070752(n+1), A175787(n+1)]` -/
def P375398169768948400.Spec : Prop :=
  ∀ n, (P375398169768948400.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P7631551214756178917

`∩[A070752(n+1), A182986(n+1)]`
-/

namespace A070754.P7631551214756178917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070754.P7631551214756178917

namespace A070754

/-- `∩[A070752(n+1), A182986(n+1)]` -/
def P7631551214756178917.Spec : Prop :=
  ∀ n, (P7631551214756178917.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P3531180835906829361

`∩[A070752(n+1), A251595(n+1)]`
-/

namespace A070754.P3531180835906829361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070754.P3531180835906829361

namespace A070754

/-- `∩[A070752(n+1), A251595(n+1)]` -/
def P3531180835906829361.Spec : Prop :=
  ∀ n, (P3531180835906829361.a n : ℤ) = A070754 (n + 1)

end A070754

/-! ## A070754.P2332246946873753910

`p?[n*A070747(n)]`
-/

namespace A070754.P2332246946873753910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070754.P2332246946873753910

namespace A070754

/-- `p?[n*A070747(n)]` -/
def P2332246946873753910.Spec : Prop :=
  ∀ n, P2332246946873753910.a n = A070754 (n + 1)

end A070754

/-! ## A070754.P3578803368799925701

`p?[or(n, A000493(n))]`
-/

namespace A070754.P3578803368799925701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A000493 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070754.P3578803368799925701

namespace A070754

/-- `p?[or(n, A000493(n))]` -/
def P3578803368799925701.Spec : Prop :=
  ∀ n, P3578803368799925701.a n = A070754 (n + 1)

end A070754

/-!
# A070755: Squarefree tetrahedral numbers.

The programs for A070755, the canonical program `A070755.P6719190543050349578` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070755 has offset 1).

The definition of A070755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070755.P6719190543050349578

`record[A361671(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070755

/-- `record[A361671(n+1)]` -/
def P6719190543050349578.Spec : Prop :=
  ∀ n, P6719190543050349578.a n = A070755 (n + 1)

theorem P6719190543050349578.correct : P6719190543050349578.Spec := by
  intro n
  simp only [A070755, Nat.add_sub_cancel]

end A070755

/-! ## A070755.P15034513821481826263

`record[∏{p}[A000447(A042968(n+1)), #]]`
-/

namespace A070755.P15034513821481826263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A042968 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070755.P15034513821481826263

namespace A070755

/-- `record[∏{p}[A000447(A042968(n+1)), #]]` -/
def P15034513821481826263.Spec : Prop :=
  ∀ n, (P15034513821481826263.a n : ℤ) = A070755 (n + 1)

end A070755

/-! ## A070755.P8128444623464582511

`record[A007913(C(n+3, 3))]`
-/

namespace A070755.P8128444623464582511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.choose (n + 3) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070755.P8128444623464582511

namespace A070755

/-- `record[A007913(C(n+3, 3))]` -/
def P8128444623464582511.Spec : Prop :=
  ∀ n, P8128444623464582511.a n = A070755 (n + 1)

end A070755

/-! ## A070755.P3878163352727036014

`record[A007913(∑[∑[n+1]])]`
-/

namespace A070755.P3878163352727036014
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070755.P3878163352727036014

namespace A070755

/-- `record[A007913(∑[∑[n+1]])]` -/
def P3878163352727036014.Spec : Prop :=
  ∀ n, P3878163352727036014.a n = A070755 (n + 1)

end A070755

/-! ## A070755.P2126171099247111769

`filter[A000292(n+1), A008966(#)]`
-/

namespace A070755.P2126171099247111769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A070755.P2126171099247111769

namespace A070755

/-- `filter[A000292(n+1), A008966(#)]` -/
def P2126171099247111769.Spec : Prop :=
  ∀ n, P2126171099247111769.a n = A070755 (n + 1)

end A070755

/-!
# A070757: Number of ways to write 4n as a sum of 4 primes.

The programs for A070757, there is no canonical definition to state claims against.
-/

/-! ## A070757.P5974447965784692745

`A259194(4*(n+1))`
-/

namespace A070757.P5974447965784692745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 (4 * (n + 1))

end

end A070757.P5974447965784692745

/-! ## A070757.P4979620717788523424

`A259195(4*n+6)`
-/

namespace A070757.P4979620717788523424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 (4 * n + 6)

end

end A070757.P4979620717788523424

/-! ## A070757.P10455272558110452062

`A259195(A073760(n+1))%A002997(n+1)`
-/

namespace A070757.P10455272558110452062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259195 (A073760 (n + 1)).toNat) (A002997 (n + 1))

end

end A070757.P10455272558110452062

/-! ## A070757.P8998374604958282334

`A259195(A073760(n+1))/A008683(-or(n, -2))²`
-/

namespace A070757.P8998374604958282334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259195 (A073760 (n + 1)).toNat : ℚ) / (A008683 (-Int.lor (n : ℤ) (-2)).toNat ^ 2 : ℚ)

end

end A070757.P8998374604958282334

/-! ## A070757.P2946722063117947254

`A259195(A073760(n+1))%A022408(n)`
-/

namespace A070757.P2946722063117947254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259195 (A073760 (n + 1)).toNat) (A022408 n)

end

end A070757.P2946722063117947254

/-! ## A070757.P16663360465226518954

`A308854(4*n+6)/(4*n+6)`
-/

namespace A070757.P16663360465226518954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 (4 * n + 6) : ℚ) / (4 * n + 6 : ℚ)

end

end A070757.P16663360465226518954

/-!
# A070758: Values of floor((3/2)^n) that are composite.

The programs for A070758, there is no canonical definition to state claims against.
-/

/-! ## A070758.P9323499145046881704

`A002379(A046037(n+1))`
-/

namespace A070758.P9323499145046881704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (A046037 (n + 1)).toNat

end

end A070758.P9323499145046881704

/-! ## A070758.P4252697327128218111

`A014215(2*A046037(n+1))`
-/

namespace A070758.P4252697327128218111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014215 (2 * A046037 (n + 1)).toNat

end

end A070758.P4252697327128218111

/-! ## A070758.P8641055114089307079

`A014215(A046037(n+1)+A046037(n+1))`
-/

namespace A070758.P8641055114089307079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014215 (A046037 (n + 1) + A046037 (n + 1)).toNat

end

end A070758.P8641055114089307079

/-! ## A070758.P14216999079842175980

`A002379(2*A140823(n+2)-(n-2))`
-/

namespace A070758.P14216999079842175980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (2 * A140823 (n + 2) - ((n : ℤ) - 2)).toNat

end

end A070758.P14216999079842175980

/-! ## A070758.P16985784038000061047

`A014215(2*(2*A140823(n+2)-(n-2)))`
-/

namespace A070758.P16985784038000061047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014215 (2 * (2 * A140823 (n + 2) - ((n : ℤ) - 2))).toNat

end

end A070758.P16985784038000061047

/-!
# A070759: n for which floor((3/2)^n) is prime.

The programs for A070759, there is no canonical definition to state claims against.
-/

/-! ## A070759.P6642800169396824843

`eq[2, A072924(n+1)]+1`
-/

namespace A070759.P6642800169396824843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070759.P6642800169396824843

/-! ## A070759.P11724286071341150097

`eq[2, A072924(A028310(n))]`
-/

namespace A070759.P11724286071341150097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072924 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070759.P11724286071341150097

/-! ## A070759.P10899582559856518329

`A020725(eq[2, A072924(n+1)])`
-/

namespace A070759.P10899582559856518329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070759.P10899582559856518329

/-!
# A070760: Numbers k such that k*rev(k) is a square different from k^2, where rev=A004086, decimal reversal.

The programs for A070760, there is no canonical definition to state claims against.
-/

/-! ## A070760.P16590091157710006520

`∪[A062917(n+1), A322835(n+1)]`
-/

namespace A070760.P16590091157710006520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070760.P16590091157710006520

/-! ## A070760.P7168922212193483356

`∩[A029742(n+2), A306273(n+1)]`
-/

namespace A070760.P7168922212193483356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070760.P7168922212193483356

/-! ## A070760.P89215764708724299

`∩[A261907(n+1), A306273(n+1)]`
-/

namespace A070760.P89215764708724299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070760.P89215764708724299

/-!
# A070761: Values of floor((4/3)^n) that are composite.

The programs for A070761, there is no canonical definition to state claims against.
-/

/-! ## A070761.P18075317010302255136

`A064628(A046038(n+1))`
-/

namespace A070761.P18075317010302255136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (A046038 (n + 1)).toNat

end

end A070761.P18075317010302255136

/-! ## A070761.P6792892469396778718

`filter[A064628(n), A066247(#)]`
-/

namespace A070761.P6792892469396778718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A070761.P6792892469396778718

/-! ## A070761.P11516119436380321761

`filter[A064628(n), A174898(#)]`
-/

namespace A070761.P11516119436380321761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A070761.P11516119436380321761

/-! ## A070761.P1657932896997503887

`record[A191558(A064628(n+5))]`
-/

namespace A070761.P1657932896997503887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A064628 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070761.P1657932896997503887

/-! ## A070761.P14305040469700546837

`A026239(p?[A026239(floor(4^n/3^n))])`
-/

namespace A070761.P14305040469700546837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 ⌊(4 ^ n : ℚ) / (3 ^ n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A070761.P14305040469700546837

/-!
# A070762: n for which floor((4/3)^n) is prime.

The programs for A070762, there is no canonical definition to state claims against.
-/

/-! ## A070762.P1329480174643401811

`eq[1, ∑{e}[floor((4/3)^n), #]]`
-/

namespace A070762.P1329480174643401811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 : ℚ) / 3) ^ n⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070762.P1329480174643401811

/-! ## A070762.P4604580824704925513

`eq[1, ∑{e}[A064628(n+1)-char[1], #]]+1`
-/

namespace A070762.P4604580824704925513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070762.P4604580824704925513

/-! ## A070762.P3649638716597347343

`eq[1, A001222(A064628(n))]`
-/

namespace A070762.P3649638716597347343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064628 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070762.P3649638716597347343

/-! ## A070762.P8108508573055828035

`eq[1, A010051(A064628(n+2))]+2`
-/

namespace A070762.P8108508573055828035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A064628 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070762.P8108508573055828035

/-! ## A070762.P12322384046490820402

`∑[gcd(A086596(n+3), A360983(2*(n+1)))]`
-/

namespace A070762.P12322384046490820402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086596 (n + 3)) (A360983 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070762.P12322384046490820402

/-!
# A070763: Numbers n such that sigma(n) is a power of prime (of the form p^a, p prime, a>=1).

The programs for A070763, there is no canonical definition to state claims against.
-/

/-! ## A070763.P350017832456277921

`∪[A023194(n+1), A065523(n+1)]`
-/

namespace A070763.P350017832456277921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070763.P350017832456277921

/-! ## A070763.P9670736211394143914

`∪[A065523(n+1), A071114(n+1)]`
-/

namespace A070763.P9670736211394143914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070763.P9670736211394143914

/-! ## A070763.P10166755086623964585

`∪[A065523(n+1), A281882(n+1)]`
-/

namespace A070763.P10166755086623964585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070763.P10166755086623964585

/-! ## A070763.P18378484583932027240

`∪[A065523(n+1), A325436(n+1)]`
-/

namespace A070763.P18378484583932027240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070763.P18378484583932027240

/-! ## A070763.P6281319795704745932

`eq[1, A001221(A000203(n+1))]+1`
-/

namespace A070763.P6281319795704745932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070763.P6281319795704745932

/-!
# A070764: Number of polyiamonds with n cells, with holes.

The programs for A070764, there is no canonical definition to state claims against.
-/

/-! ## A070764.P6601291379791200238

`A000577(n+1)-A070765(n+1)`
-/

namespace A070764.P6601291379791200238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A070765 (n + 1)

end

end A070764.P6601291379791200238

/-! ## A070764.P1903349737105466018

`A071333(n+1)-A071334(n+1)`
-/

namespace A070764.P1903349737105466018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071333 (n + 1) - A071334 (n + 1)

end

end A070764.P1903349737105466018

/-! ## A070764.P15594955265444204304

`A000577(A000027(n+1))%A070765(n+1)`
-/

namespace A070764.P15594955265444204304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000577 (A000027 (n + 1)).toNat) (A070765 (n + 1))

end

end A070764.P15594955265444204304

/-! ## A070764.P15188582664022478231

`A000577(n+1)%A070765(A044922(n+1))`
-/

namespace A070764.P15188582664022478231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000577 (n + 1)) (A070765 (A044922 (n + 1)).toNat)

end

end A070764.P15188582664022478231

/-!
# A070765: Number of polyiamonds with n cells, without holes.

The programs for A070765, there is no canonical definition to state claims against.
-/

/-! ## A070765.P10179201797148649396

`A071334(n+1)+A071332(n+1)`
-/

namespace A070765.P10179201797148649396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071334 (n + 1) + A071332 (n + 1)

end

end A070765.P10179201797148649396

/-! ## A070765.P3678509079386878867

`A000577(n+1)-A070764(n+1)`
-/

namespace A070765.P3678509079386878867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A070764 (n + 1)

end

end A070765.P3678509079386878867

/-! ## A070765.P7130193103712924118

`A000577(n+1)+A057428(n)*A070764(n+1)`
-/

namespace A070765.P7130193103712924118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) + A057428 n * A070764 (n + 1)

end

end A070765.P7130193103712924118

/-! ## A070765.P17083403618910380848

`A000577(n+1)+A070764(n+1)*A260196(n)`
-/

namespace A070765.P17083403618910380848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) + A070764 (n + 1) * A260196 n

end

end A070765.P17083403618910380848

/-! ## A070765.P15127636689444866808

`A119532(n+1)-Δ[A173271(n)]-A070764(n+1)`
-/

namespace A070765.P15127636689444866808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119532 (n + 1) - (f1 (n + 1) - f1 n) - A070764 (n + 1)

end

end A070765.P15127636689444866808

/-!
# A070766: Number of polyhexes with n cells that tile the plane.

The programs for A070766, there is no canonical definition to state claims against.
-/

/-! ## A070766.P10867753277148237724

`A075215(n+1)+A075214(n+1)`
-/

namespace A070766.P10867753277148237724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075215 (n + 1) + A075214 (n + 1)

end

end A070766.P10867753277148237724

/-! ## A070766.P15813983117482622427

`A000228(n+1)-A070767(n+1)`
-/

namespace A070766.P15813983117482622427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A070767 (n + 1)

end

end A070766.P15813983117482622427

/-! ## A070766.P1312656067236787855

`A018190(n+1)-A070768(n+1)`
-/

namespace A070766.P1312656067236787855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) - A070768 (n + 1)

end

end A070766.P1312656067236787855

/-! ## A070766.P12315760829858241973

`A000228(n+1)+A057428(n)*A070767(n+1)`
-/

namespace A070766.P12315760829858241973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) + A057428 n * A070767 (n + 1)

end

end A070766.P12315760829858241973

/-! ## A070766.P6521647615924845728

`A018190(n+1)+A057428(n)*A070768(n+1)`
-/

namespace A070766.P6521647615924845728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + A057428 n * A070768 (n + 1)

end

end A070766.P6521647615924845728

/-!
# A070767: Number of polyhexes with n cells that do not tile the plane.

The programs for A070767, there is no canonical definition to state claims against.
-/

/-! ## A070767.P8124746399301215081

`A070768(n+1)+A038144(n+1)`
-/

namespace A070767.P8124746399301215081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070768 (n + 1) + A038144 (n + 1)

end

end A070767.P8124746399301215081

/-! ## A070767.P10261267825920926873

`A000228(n+1)-A070766(n+1)`
-/

namespace A070767.P10261267825920926873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A070766 (n + 1)

end

end A070767.P10261267825920926873

/-! ## A070767.P10582800745296886652

`A000228(n+1)+A070768(n+1)-A018190(n+1)`
-/

namespace A070767.P10582800745296886652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) + (A070768 (n + 1) - A018190 (n + 1))

end

end A070767.P10582800745296886652

/-! ## A070767.P8541600877074060234

`A018190(n+1)+A038144(n+1)-A070766(n+1)`
-/

namespace A070767.P8541600877074060234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + (A038144 (n + 1) - A070766 (n + 1))

end

end A070767.P8541600877074060234

/-! ## A070767.P9900936587284026989

`A030225(n+1)+A030226(n+1)-A070766(n+1)`
-/

namespace A070767.P9900936587284026989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A030226 (n + 1) - A070766 (n + 1))

end

end A070767.P9900936587284026989

/-!
# A070768: Number of polyhexes with n cells without holes that do not tile the plane.

The programs for A070768, there is no canonical definition to state claims against.
-/

/-! ## A070768.P1940732408642264553

`A018190(n+1)-A070766(n+1)`
-/

namespace A070768.P1940732408642264553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) - A070766 (n + 1)

end

end A070768.P1940732408642264553

/-! ## A070768.P15796602795859422709

`A070767(n+1)-A038144(n+1)`
-/

namespace A070768.P15796602795859422709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070767 (n + 1) - A038144 (n + 1)

end

end A070768.P15796602795859422709

/-! ## A070768.P14271354296410606218

`A070767(n+1)+A038144(n+1)*A057428(n)`
-/

namespace A070768.P14271354296410606218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070767 (n + 1) + A038144 (n + 1) * A057428 n

end

end A070768.P14271354296410606218

/-! ## A070768.P11675157224932612111

`A018190(n+1)+A070767(n+1)-A000228(n+1)`
-/

namespace A070768.P11675157224932612111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + (A070767 (n + 1) - A000228 (n + 1))

end

end A070768.P11675157224932612111

/-! ## A070768.P320597971680161679

`A000228(n+1)-(A070766(n+1)+A038144(n+1))`
-/

namespace A070768.P320597971680161679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - (A070766 (n + 1) + A038144 (n + 1))

end

end A070768.P320597971680161679

/-!
# A070770: b + c + d where b >= c >= d >= 0 ordered by b then c then d.

The programs for A070770, the canonical program `A070770.P9804462315160195560` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070770 has offset 0).

The definition of A070770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070770.P9804462315160195560

`A056556(n)+A056557(n)+A056558(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070770

/-- `A056556(n)+A056557(n)+A056558(n)` -/
def P9804462315160195560.Spec : Prop :=
  ∀ n, P9804462315160195560.a n = A070770 n

theorem P9804462315160195560.correct : P9804462315160195560.Spec := by
  intro n
  simp only [A070770]

end A070770

/-! ## A070770.P15531609306856889457

`A355930(A382873(n+1))`
-/

namespace A070770.P15531609306856889457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355930 (A382873 (n + 1)).toNat

end

end A070770.P15531609306856889457

namespace A070770

/-- `A355930(A382873(n+1))` -/
def P15531609306856889457.Spec : Prop :=
  ∀ n, P15531609306856889457.a n = A070770 n

end A070770

/-! ## A070770.P16089459844604334975

`A055941(A014311(n+1))`
-/

namespace A070770.P16089459844604334975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A014311 (n + 1)).toNat

end

end A070770.P16089459844604334975

namespace A070770

/-- `A055941(A014311(n+1))` -/
def P16089459844604334975.Spec : Prop :=
  ∀ n, P16089459844604334975.a n = A070770 n

end A070770

/-! ## A070770.P4177594472990726387

`A055941(eq[3, A000120(n)])`
-/

namespace A070770.P4177594472990726387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070770.P4177594472990726387

namespace A070770

/-- `A055941(eq[3, A000120(n)])` -/
def P4177594472990726387.Spec : Prop :=
  ∀ n, P4177594472990726387.a n = A070770 n

end A070770

/-! ## A070770.P16759212083866879581

`A055941(eq[6, A093659(n)])`
-/

namespace A070770.P16759212083866879581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070770.P16759212083866879581

namespace A070770

/-- `A055941(eq[6, A093659(n)])` -/
def P16759212083866879581.Spec : Prop :=
  ∀ n, P16759212083866879581.a n = A070770 n

end A070770

/-! ## A070770.P7275964384390552927

`A055941(eq[8, A001316(n)])`
-/

namespace A070770.P7275964384390552927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070770.P7275964384390552927

namespace A070770

/-- `A055941(eq[8, A001316(n)])` -/
def P7275964384390552927.Spec : Prop :=
  ∀ n, P7275964384390552927.a n = A070770 n

end A070770

/-! ## A070770.P15451137969891410331

`A073642(eq[3, A000120(n)])-3`
-/

namespace A070770.P15451137969891410331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 3

end

end A070770.P15451137969891410331

namespace A070770

/-- `A073642(eq[3, A000120(n)])-3` -/
def P15451137969891410331.Spec : Prop :=
  ∀ n, P15451137969891410331.a n = A070770 n

end A070770

/-! ## A070770.P6353434166011428076

`A055941(A173589(n+1))-3`
-/

namespace A070770.P6353434166011428076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A173589 (n + 1)).toNat - 3

end

end A070770.P6353434166011428076

namespace A070770

/-- `A055941(A173589(n+1))-3` -/
def P6353434166011428076.Spec : Prop :=
  ∀ n, P6353434166011428076.a n = A070770 n

end A070770

/-! ## A070770.P17740954639814846433

`A354388(A034856(n+2))`
-/

namespace A070770.P17740954639814846433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354388 (A034856 (n + 2)).toNat

end

end A070770.P17740954639814846433

namespace A070770

/-- `A354388(A034856(n+2))` -/
def P17740954639814846433.Spec : Prop :=
  ∀ n, P17740954639814846433.a n = A070770 n

end A070770

/-! ## A070770.P16160661970087943919

`A053737(A023746(n+1))`
-/

namespace A070770.P16160661970087943919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A023746 (n + 1)).toNat

end

end A070770.P16160661970087943919

namespace A070770

/-- `A053737(A023746(n+1))` -/
def P16160661970087943919.Spec : Prop :=
  ∀ n, P16160661970087943919.a n = A070770 n

end A070770

/-!
# A070771: b+c+d+e where b>=c>=d>=e>=0 ordered by b then c then d then e.

The programs for A070771, the canonical program `A070771.P2600916641898740480` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070771 has offset 0).

The definition of A070771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070771.P1101015517190499290

`A055941(A014312(n+1))`
-/

namespace A070771.P1101015517190499290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A014312 (n + 1)).toNat

end

end A070771.P1101015517190499290

namespace A070771

/-- `A055941(A014312(n+1))` -/
def P1101015517190499290.Spec : Prop :=
  ∀ n, P1101015517190499290.a n = A070771 n

end A070771

/-! ## A070771.P2600916641898740480

`A055941(eq[4, A000120(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A070771

/-- `A055941(eq[4, A000120(n)])` -/
def P2600916641898740480.Spec : Prop :=
  ∀ n, P2600916641898740480.a n = A070771 n

theorem P2600916641898740480.correct : P2600916641898740480.Spec := by
  intro n
  simp only [A070771]

end A070771

/-! ## A070771.P10584174753194400532

`A055941(eq[16, A001316(n)])`
-/

namespace A070771.P10584174753194400532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070771.P10584174753194400532

namespace A070771

/-- `A055941(eq[16, A001316(n)])` -/
def P10584174753194400532.Spec : Prop :=
  ∀ n, P10584174753194400532.a n = A070771 n

end A070771

/-! ## A070771.P7043291723234345414

`A055941(eq[4, val(A160713(n), 2)])`
-/

namespace A070771.P7043291723234345414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070771.P7043291723234345414

namespace A070771

/-- `A055941(eq[4, val(A160713(n), 2)])` -/
def P7043291723234345414.Spec : Prop :=
  ∀ n, P7043291723234345414.a n = A070771 n

end A070771

/-! ## A070771.P3297718770129631849

`A055941(∩[A023444(2*n+3), A014313(n+1)])`
-/

namespace A070771.P3297718770129631849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014313 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A070771.P3297718770129631849

namespace A070771

/-- `A055941(∩[A023444(2*n+3), A014313(n+1)])` -/
def P3297718770129631849.Spec : Prop :=
  ∀ n, P3297718770129631849.a n = A070771 n

end A070771

/-! ## A070771.P13844704009193109434

`A053824(A023747(n+1))`
-/

namespace A070771.P13844704009193109434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A023747 (n + 1)).toNat

end

end A070771.P13844704009193109434

namespace A070771

/-- `A053824(A023747(n+1))` -/
def P13844704009193109434.Spec : Prop :=
  ∀ n, P13844704009193109434.a n = A070771 n

end A070771

/-! ## A070771.P12650487174249267689

`A053824(eq[n, A319653(n)])`
-/

namespace A070771.P12650487174249267689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070771.P12650487174249267689

namespace A070771

/-- `A053824(eq[n, A319653(n)])` -/
def P12650487174249267689.Spec : Prop :=
  ∀ n, P12650487174249267689.a n = A070771 n

end A070771

/-!
# A070772: b+c+d+e+f where b>=c>=d>=e>=f>=0 ordered by b then c then d then e then f.

The programs for A070772, the canonical program `A070772.P12759164093813601690` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070772 has offset 0).

The definition of A070772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070772.P2965659580852900961

`A055941(A014313(n+1))`
-/

namespace A070772.P2965659580852900961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A014313 (n + 1)).toNat

end

end A070772.P2965659580852900961

namespace A070772

/-- `A055941(A014313(n+1))` -/
def P2965659580852900961.Spec : Prop :=
  ∀ n, P2965659580852900961.a n = A070772 n

end A070772

/-! ## A070772.P12759164093813601690

`A055941(eq[5, A000120(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A070772

/-- `A055941(eq[5, A000120(n)])` -/
def P12759164093813601690.Spec : Prop :=
  ∀ n, P12759164093813601690.a n = A070772 n

theorem P12759164093813601690.correct : P12759164093813601690.Spec := by
  intro n
  simp only [A070772]

end A070772

/-! ## A070772.P13960139419151220981

`A055941(eq[32, A001316(n)])`
-/

namespace A070772.P13960139419151220981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070772.P13960139419151220981

namespace A070772

/-- `A055941(eq[32, A001316(n)])` -/
def P13960139419151220981.Spec : Prop :=
  ∀ n, P13960139419151220981.a n = A070772 n

end A070772

/-! ## A070772.P12511750879222482255

`A055941(eq[31, A038573(n)])`
-/

namespace A070772.P12511750879222482255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070772.P12511750879222482255

namespace A070772

/-- `A055941(eq[31, A038573(n)])` -/
def P12511750879222482255.Spec : Prop :=
  ∀ n, P12511750879222482255.a n = A070772 n

end A070772

/-! ## A070772.P8829045676068987359

`A053827(record[A319654(n)])`
-/

namespace A070772.P8829045676068987359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070772.P8829045676068987359

namespace A070772

/-- `A053827(record[A319654(n)])` -/
def P8829045676068987359.Spec : Prop :=
  ∀ n, P8829045676068987359.a n = A070772 n

end A070772

/-! ## A070772.P17806582151143050996

`A053827(A023748(n+1))`
-/

namespace A070772.P17806582151143050996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A023748 (n + 1)).toNat

end

end A070772.P17806582151143050996

namespace A070772

/-- `A053827(A023748(n+1))` -/
def P17806582151143050996.Spec : Prop :=
  ∀ n, P17806582151143050996.a n = A070772 n

end A070772

/-! ## A070772.P18355517759726887108

`A354388(Δ[A264443(n)])`
-/

namespace A070772.P18355517759726887108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354388 (f1 (n + 1) - f1 n).toNat

end

end A070772.P18355517759726887108

namespace A070772

/-- `A354388(Δ[A264443(n)])` -/
def P18355517759726887108.Spec : Prop :=
  ∀ n, P18355517759726887108.a n = A070772 n

end A070772

/-!
# A070774: Odd numbers n such that p(2m)-2p(m)=n has no solution (p(m) = m-th prime).

The programs for A070774, there is no canonical definition to state claims against.
-/

/-! ## A070774.P2175047664612414054

`2*eq[0, A070773(n+1)]+1`
-/

namespace A070774.P2175047664612414054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070774.P2175047664612414054

/-! ## A070774.P13449104874024029070

`A005408(eq[0, A070773(n+1)])`
-/

namespace A070774.P13449104874024029070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070774.P13449104874024029070

/-! ## A070774.P1089761189070005105

`A144396(eq[0, A070773(n+1)])`
-/

namespace A070774.P1089761189070005105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070774.P1089761189070005105

/-! ## A070774.P2126236735741563816

`A223134(eq[0, A070773(n+1)])`
-/

namespace A070774.P2126236735741563816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070774.P2126236735741563816

/-! ## A070774.P4447491415018465973

`eq[0, A070773(A152271(n))]`
-/

namespace A070774.P4447491415018465973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070773 (A152271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070774.P4447491415018465973

/-!
# A070775: a(n) = Sum_{k=0..n} binomial(4*n,4*k).

The programs for A070775, there is no canonical definition to state claims against.
-/

/-! ## A070775.P18388943744788781666

`floor((((-4)^n+1)/2)²)`
-/

namespace A070775.P18388943744788781666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((-4) ^ n + 1 : ℚ) / 2) ^ 2⌋

end

end A070775.P18388943744788781666

/-! ## A070775.P80124263356485974

`A377714(2*n)`
-/

namespace A070775.P80124263356485974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377714 (2 * n)

end

end A070775.P80124263356485974

/-! ## A070775.P15280648742181626863

`A038503(4*n)`
-/

namespace A070775.P15280648742181626863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (4 * n)

end

end A070775.P15280648742181626863

/-! ## A070775.P260780927780209125

`A038519(4*n)`
-/

namespace A070775.P260780927780209125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (4 * n)

end

end A070775.P260780927780209125

/-! ## A070775.P8023189163726602726

`record[A038503(A022998(n))]`
-/

namespace A070775.P8023189163726602726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070775.P8023189163726602726

/-! ## A070775.P4557642392372030732

`A137171(A017101(2*n))`
-/

namespace A070775.P4557642392372030732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A017101 (2 * n)).toNat

end

end A070775.P4557642392372030732

/-! ## A070775.P2516266622032857737

`or(1, A009117(n))*A009117(n)`
-/

namespace A070775.P2516266622032857737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009117 n) * A009117 n

end

end A070775.P2516266622032857737

/-! ## A070775.P542890145941769675

`record[A038503(A000265(n+2)+n)]`
-/

namespace A070775.P542890145941769675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (A000265 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070775.P542890145941769675

/-! ## A070775.P10542724942030519882

`record[A108520(n)-A009116(2*(n+1))]`
-/

namespace A070775.P10542724942030519882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - A009116 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070775.P10542724942030519882

/-! ## A070775.P4029067429269285739

`A038504(4*n+1)-A038504(4*n)`
-/

namespace A070775.P4029067429269285739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (4 * n + 1) - A038504 (4 * n)

end

end A070775.P4029067429269285739

/-!
# A070776: Numbers k such that number of terms in the k-th cyclotomic polynomial is equal to the largest prime factor of k.

The programs for A070776, the canonical program `A070776.P10943609566453861141` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070776 has offset 1).

The definition of A070776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070776.P11928463655840920438

`eq[0, A070536(n+1)]+1`
-/

namespace A070776.P11928463655840920438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070776.P11928463655840920438

namespace A070776

/-- `eq[0, A070536(n+1)]+1` -/
def P11928463655840920438.Spec : Prop :=
  ∀ n, (P11928463655840920438.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P5758142039275878571

`eq[0, A318886(n+1)]+1`
-/

namespace A070776.P5758142039275878571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070776.P5758142039275878571

namespace A070776

/-- `eq[0, A318886(n+1)]+1` -/
def P5758142039275878571.Spec : Prop :=
  ∀ n, (P5758142039275878571.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P10943609566453861141

`eq[1, A340363(n+2)]+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070776

/-- `eq[1, A340363(n+2)]+2` -/
def P10943609566453861141.Spec : Prop :=
  ∀ n, (P10943609566453861141.a n : ℤ) = A070776 (n + 1)

theorem P10943609566453861141.correct : P10943609566453861141.Spec := by
  intro n
  simp only [A070776, Nat.add_sub_cancel]

end A070776

/-! ## A070776.P5235370921558976765

`lt[A001221(2*(n+2)), 3]+2`
-/

namespace A070776.P5235370921558976765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A070776.P5235370921558976765

namespace A070776

/-- `lt[A001221(2*(n+2)), 3]+2` -/
def P5235370921558976765.Spec : Prop :=
  ∀ n, (P5235370921558976765.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P1606631598107982053

`∪[A053577(n+1), A076364(n+1)]`
-/

namespace A070776.P1606631598107982053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070776.P1606631598107982053

namespace A070776

/-- `∪[A053577(n+1), A076364(n+1)]` -/
def P1606631598107982053.Spec : Prop :=
  ∀ n, (P1606631598107982053.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P15976326490001407727

`∪[A058363(n+1), A076364(n+1)]`
-/

namespace A070776.P15976326490001407727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070776.P15976326490001407727

namespace A070776

/-- `∪[A058363(n+1), A076364(n+1)]` -/
def P15976326490001407727.Spec : Prop :=
  ∀ n, (P15976326490001407727.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P5669155094302854403

`∪[A053577(n+1), A336101(n+1)]`
-/

namespace A070776.P5669155094302854403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070776.P5669155094302854403

namespace A070776

/-- `∪[A053577(n+1), A336101(n+1)]` -/
def P5669155094302854403.Spec : Prop :=
  ∀ n, (P5669155094302854403.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P4364172232470501912

`record[gcd(n, A318886(A000027(n+1)))+1]`
-/

namespace A070776.P4364172232470501912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A318886 (A000027 (n + 1)).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070776.P4364172232470501912

namespace A070776

/-- `record[gcd(n, A318886(A000027(n+1)))+1]` -/
def P4364172232470501912.Spec : Prop :=
  ∀ n, (P4364172232470501912.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P4455694313756769476

`eq[A006530(n+1), A318884(n+1)]+1`
-/

namespace A070776.P4455694313756769476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070776.P4455694313756769476

namespace A070776

/-- `eq[A006530(n+1), A318884(n+1)]+1` -/
def P4455694313756769476.Spec : Prop :=
  ∀ n, (P4455694313756769476.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P10384477628280545694

`A321193(n+2)/2`
-/

namespace A070776.P10384477628280545694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321193 (n + 2) : ℚ) / 2

end

end A070776.P10384477628280545694

namespace A070776

/-- `A321193(n+2)/2` -/
def P10384477628280545694.Spec : Prop :=
  ∀ n, P10384477628280545694.a n = (A070776 (n + 1) : ℚ)

end A070776

/-! ## A070776.P11034674203180532456

`filter[A324109(n+2), A340363(#)]`
-/

namespace A070776.P11034674203180532456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A070776.P11034674203180532456

namespace A070776

/-- `filter[A324109(n+2), A340363(#)]` -/
def P11034674203180532456.Spec : Prop :=
  ∀ n, P11034674203180532456.a n = A070776 (n + 1)

end A070776

/-! ## A070776.P11567033618608232788

`filter[A324109(n+2), A340372(#)]`
-/

namespace A070776.P11567033618608232788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A070776.P11567033618608232788

namespace A070776

/-- `filter[A324109(n+2), A340372(#)]` -/
def P11567033618608232788.Spec : Prop :=
  ∀ n, P11567033618608232788.a n = A070776 (n + 1)

end A070776

/-! ## A070776.P3622232933977869214

`filter[A285801(n+2), A340363(#)]`
-/

namespace A070776.P3622232933977869214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A070776.P3622232933977869214

namespace A070776

/-- `filter[A285801(n+2), A340363(#)]` -/
def P3622232933977869214.Spec : Prop :=
  ∀ n, P3622232933977869214.a n = A070776 (n + 1)

end A070776

/-! ## A070776.P10463182942923931400

`filter[A318991(n+2), A340363(#)]`
-/

namespace A070776.P10463182942923931400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A070776.P10463182942923931400

namespace A070776

/-- `filter[A318991(n+2), A340363(#)]` -/
def P10463182942923931400.Spec : Prop :=
  ∀ n, P10463182942923931400.a n = A070776 (n + 1)

end A070776

/-! ## A070776.P7635047837582043430

`filter[A075592(n+1), A340363(#)]`
-/

namespace A070776.P7635047837582043430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A070776.P7635047837582043430

namespace A070776

/-- `filter[A075592(n+1), A340363(#)]` -/
def P7635047837582043430.Spec : Prop :=
  ∀ n, P7635047837582043430.a n = A070776 (n + 1)

end A070776

/-! ## A070776.P6496517744299775656

`filter[A070915(n+2), A340363(#)]`
-/

namespace A070776.P6496517744299775656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A070776.P6496517744299775656

namespace A070776

/-- `filter[A070915(n+2), A340363(#)]` -/
def P6496517744299775656.Spec : Prop :=
  ∀ n, P6496517744299775656.a n = A070776 (n + 1)

end A070776

/-! ## A070776.P9286514167686566341

`∩[A070915(n+1), A075592(n+1)]`
-/

namespace A070776.P9286514167686566341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070776.P9286514167686566341

namespace A070776

/-- `∩[A070915(n+1), A075592(n+1)]` -/
def P9286514167686566341.Spec : Prop :=
  ∀ n, (P9286514167686566341.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P7737285676726253760

`eq[0, A340362(n+2)]+2`
-/

namespace A070776.P7737285676726253760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340362 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070776.P7737285676726253760

namespace A070776

/-- `eq[0, A340362(n+2)]+2` -/
def P7737285676726253760.Spec : Prop :=
  ∀ n, (P7737285676726253760.a n : ℤ) = A070776 (n + 1)

end A070776

/-! ## A070776.P9013434163691069344

`eq[1, A340365(n+2)]+2`
-/

namespace A070776.P9013434163691069344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340365 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070776.P9013434163691069344

namespace A070776

/-- `eq[1, A340365(n+2)]+2` -/
def P9013434163691069344.Spec : Prop :=
  ∀ n, (P9013434163691069344.a n : ℤ) = A070776 (n + 1)

end A070776

/-!
# A070777: a(1) = 1; a(n) = (largest prime factor of n) - 1.

The programs for A070777, the canonical program `A070777.P2681575224791587698` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070777 has offset 1).

The definition of A070777 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070777.P2681575224791587698

`A000010(A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070777

/-- `A000010(A006530(n+1))` -/
def P2681575224791587698.Spec : Prop :=
  ∀ n, P2681575224791587698.a n = A070777 (n + 1)

theorem P2681575224791587698.correct : P2681575224791587698.Spec := by
  intro n
  simp only [A070777, Nat.add_sub_cancel]

end A070777

/-! ## A070777.P14917035307012942258

`A111089(n+1)-1`
-/

namespace A070777.P14917035307012942258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1) - 1

end

end A070777.P14917035307012942258

namespace A070777

/-- `A111089(n+1)-1` -/
def P14917035307012942258.Spec : Prop :=
  ∀ n, P14917035307012942258.a n = A070777 (n + 1)

theorem P14917035307012942258.correct : P14917035307012942258.Spec := by
  intro n
  simp only [A070777, Nat.add_sub_cancel, A070777.P14917035307012942258.a, A070777.P2681575224791587698.a, A000010, A000010.P4673923239450215316.a, A006530, A006530.P13372528560459906635.a, A111089, A111089.P6834740455436443643.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070777

/-! ## A070777.P5690187332421515260

`A006530(2*(n+1))-1`
-/

namespace A070777.P5690187332421515260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) - 1

end

end A070777.P5690187332421515260

namespace A070777

/-- `A006530(2*(n+1))-1` -/
def P5690187332421515260.Spec : Prop :=
  ∀ n, P5690187332421515260.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P1655342597163943961

`∏{p}[A053585(n+1), #-1]`
-/

namespace A070777.P1655342597163943961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A070777.P1655342597163943961

namespace A070777

/-- `∏{p}[A053585(n+1), #-1]` -/
def P1655342597163943961.Spec : Prop :=
  ∀ n, P1655342597163943961.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P14721462167358838555

`∏{p}[A323129(n+1), #-1]`
-/

namespace A070777.P14721462167358838555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A070777.P14721462167358838555

namespace A070777

/-- `∏{p}[A323129(n+1), #-1]` -/
def P14721462167358838555.Spec : Prop :=
  ∀ n, P14721462167358838555.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P10584638239625464233

`∏{p}[A345941(n+1), #-1]`
-/

namespace A070777.P10584638239625464233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A070777.P10584638239625464233

namespace A070777

/-- `∏{p}[A345941(n+1), #-1]` -/
def P10584638239625464233.Spec : Prop :=
  ∀ n, P10584638239625464233.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P2995358554719704682

`A070221(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A070777.P2995358554719704682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A070221 n + a (n - 1)

end

end A070777.P2995358554719704682

namespace A070777

/-- `A070221(n)+a(n-1)` -/
def P2995358554719704682.Spec : Prop :=
  ∀ n, P2995358554719704682.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P13219919744404141768

`abs(1-A006530(n+2+n))`
-/

namespace A070777.P13219919744404141768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A006530 (n + 2 + n)|

end

end A070777.P13219919744404141768

namespace A070777

/-- `abs(1-A006530(n+2+n))` -/
def P13219919744404141768.Spec : Prop :=
  ∀ n, P13219919744404141768.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P10301449513952187744

`A129598(n+1)/(n+1)-1`
-/

namespace A070777.P10301449513952187744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129598 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A070777.P10301449513952187744

namespace A070777

/-- `A129598(n+1)/(n+1)-1` -/
def P10301449513952187744.Spec : Prop :=
  ∀ n, P10301449513952187744.a n = (A070777 (n + 1) : ℚ)

theorem P10301449513952187744.correct : P10301449513952187744.Spec := by
  intro n
  simp only [A070777, Nat.add_sub_cancel, A070777.P10301449513952187744.a, A070777.P2681575224791587698.a, A000010, A000010.P4673923239450215316.a, A006530, A006530.P13372528560459906635.a, A129598, A129598.P298873109801223629.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A111089, A111089.P6834740455436443643.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070777

/-! ## A070777.P7457160957285064838

`xor(-1, -A006530(2*n+2))`
-/

namespace A070777.P7457160957285064838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A006530 (2 * n + 2))

end

end A070777.P7457160957285064838

namespace A070777

/-- `xor(-1, -A006530(2*n+2))` -/
def P7457160957285064838.Spec : Prop :=
  ∀ n, P7457160957285064838.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P709684499539808275

`A049559(A053585(n+1))`
-/

namespace A070777.P709684499539808275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A053585 (n + 1)).toNat

end

end A070777.P709684499539808275

namespace A070777

/-- `A049559(A053585(n+1))` -/
def P709684499539808275.Spec : Prop :=
  ∀ n, P709684499539808275.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P13218848783498799180

`A000010(A111089(n+1))`
-/

namespace A070777.P13218848783498799180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A111089 (n + 1)).toNat

end

end A070777.P13218848783498799180

namespace A070777

/-- `A000010(A111089(n+1))` -/
def P13218848783498799180.Spec : Prop :=
  ∀ n, P13218848783498799180.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P17592132025623169381

`A003972(A117364(n+1))`
-/

namespace A070777.P17592132025623169381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A117364 (n + 1)).toNat

end

end A070777.P17592132025623169381

namespace A070777

/-- `A003972(A117364(n+1))` -/
def P17592132025623169381.Spec : Prop :=
  ∀ n, P17592132025623169381.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P2876753019412259757

`A000010(A299766(n+1))`
-/

namespace A070777.P2876753019412259757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A299766 (n + 1)).toNat

end

end A070777.P2876753019412259757

namespace A070777

/-- `A000010(A299766(n+1))` -/
def P2876753019412259757.Spec : Prop :=
  ∀ n, P2876753019412259757.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P9276774737686734848

`A049559(A323129(n+1))`
-/

namespace A070777.P9276774737686734848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A323129 (n + 1)).toNat

end

end A070777.P9276774737686734848

namespace A070777

/-- `A049559(A323129(n+1))` -/
def P9276774737686734848.Spec : Prop :=
  ∀ n, P9276774737686734848.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P2996257506300255355

`A049559(A345941(n+1))`
-/

namespace A070777.P2996257506300255355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A345941 (n + 1)).toNat

end

end A070777.P2996257506300255355

namespace A070777

/-- `A049559(A345941(n+1))` -/
def P2996257506300255355.Spec : Prop :=
  ∀ n, P2996257506300255355.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P3943952418672283927

`A349128(A117366(n+1))`
-/

namespace A070777.P3943952418672283927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349128 (A117366 (n + 1)).toNat

end

end A070777.P3943952418672283927

namespace A070777

/-- `A349128(A117366(n+1))` -/
def P3943952418672283927.Spec : Prop :=
  ∀ n, P3943952418672283927.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P15343510715539759599

`A028310(A006530(n+1)-1)`
-/

namespace A070777.P15343510715539759599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006530 (n + 1) - 1).toNat

end

end A070777.P15343510715539759599

namespace A070777

/-- `A028310(A006530(n+1)-1)` -/
def P15343510715539759599.Spec : Prop :=
  ∀ n, P15343510715539759599.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P15325178151389170959

`A003958(A006530(2*(n+1)))`
-/

namespace A070777.P15325178151389170959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A006530 (2 * (n + 1))).toNat

end

end A070777.P15325178151389170959

namespace A070777

/-- `A003958(A006530(2*(n+1)))` -/
def P15325178151389170959.Spec : Prop :=
  ∀ n, P15325178151389170959.a n = A070777 (n + 1)

end A070777

/-! ## A070777.P9029389405113875486

`A070667(A006530(2*n+2))`
-/

namespace A070777.P9029389405113875486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A006530 (2 * n + 2)).toNat

end

end A070777.P9029389405113875486

namespace A070777

/-- `A070667(A006530(2*n+2))` -/
def P9029389405113875486.Spec : Prop :=
  ∀ n, P9029389405113875486.a n = A070777 (n + 1)

end A070777

/-!
# A070778: Let M denote the 6 X 6 matrix = row by row /1,1,1,1,1,1/1,1,1,1,1,0/1,1,1,1,0,0/1,1,1,0,0,0/1,1,0,0,0,0/1,0,0,0,0,0/ and A(n) the vector (x(n),y(n),z(n),t(n),u(n),v(n)) = M^n*A where A is the vector (1,1,1,1,1,1); then a(n) = u(n).

The programs for A070778, there is no canonical definition to state claims against.
-/

/-! ## A070778.P11079573575643589428

`A069007(n+1)-A069008(n+1)`
-/

namespace A070778.P11079573575643589428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069007 (n + 1) - A069008 (n + 1)

end

end A070778.P11079573575643589428

/-! ## A070778.P5635787218045956461

`A069007(n+1)-(A069009(n+1)+A069009(n))`
-/

namespace A070778.P5635787218045956461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069007 (n + 1) - (A069009 (n + 1) + A069009 n)

end

end A070778.P5635787218045956461

/-! ## A070778.P10050483535303319570

`A069007(A000007(3*(n+1))+n+1)%A069008(n+1)`
-/

namespace A070778.P10050483535303319570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069007 (A000007 (3 * (n + 1)) + (n + 1 : ℤ)).toNat) (A069008 (n + 1))

end

end A070778.P10050483535303319570

/-!
# A070779: Expansion of e.g.f.: (exp(x/(1-x))*(2-x)-1+x)/(1-x)^3.

The programs for A070779, the canonical program `A070779.P7173016781391059202` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070779 has offset 0).

The definition of A070779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070779.P7173016781391059202

`(3*n+2)*a(n-1)-3*n²*a(n-2)+n*(n-1)²*a(n-3)` with `a(0)=1, a(1)=5, a(2)=28`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070779

/-- `(3*n+2)*a(n-1)-3*n²*a(n-2)+n*(n-1)²*a(n-3)` -/
def P7173016781391059202.Spec : Prop :=
  ∀ n, P7173016781391059202.a n = A070779 n

theorem P7173016781391059202.correct : P7173016781391059202.Spec := by
  intro n
  simp only [A070779]

end A070779

/-! ## A070779.P8142131841105945419

`A176122(∑[n+2])`
-/

namespace A070779.P8142131841105945419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070779.P8142131841105945419

namespace A070779

/-- `A176122(∑[n+2])` -/
def P8142131841105945419.Spec : Prop :=
  ∀ n, P8142131841105945419.a n = A070779 n

end A070779

/-! ## A070779.P10520241631615678254

`A002720(n+1)-(n+1)!`
-/

namespace A070779.P10520241631615678254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A070779.P10520241631615678254

namespace A070779

/-- `A002720(n+1)-(n+1)!` -/
def P10520241631615678254.Spec : Prop :=
  ∀ n, P10520241631615678254.a n = A070779 n

end A070779

/-! ## A070779.P504947951889623219

`A097662(n+1)+1-∏[n+1]`
-/

namespace A070779.P504947951889623219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097662 (n + 1) + 1 - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A070779.P504947951889623219

namespace A070779

/-- `A097662(n+1)+1-∏[n+1]` -/
def P504947951889623219.Spec : Prop :=
  ∀ n, P504947951889623219.a n = A070779 n

end A070779

/-! ## A070779.P8254662131057659656

`A000262(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A070779.P8254662131057659656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000262 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A070779.P8254662131057659656

namespace A070779

/-- `A000262(n+1)+(n+1)*a(n-1)` -/
def P8254662131057659656.Spec : Prop :=
  ∀ n, P8254662131057659656.a n = A070779 n

end A070779

/-! ## A070779.P10159452822257482835

`∑[Δ[A002720(n)]-A001563(n)]`
-/

namespace A070779.P10159452822257482835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070779.P10159452822257482835

namespace A070779

/-- `∑[Δ[A002720(n)]-A001563(n)]` -/
def P10159452822257482835.Spec : Prop :=
  ∀ n, P10159452822257482835.a n = A070779 n

end A070779

/-! ## A070779.P13507725160447517862

`A052874(n+1)+record[A129652(n)]`
-/

namespace A070779.P13507725160447517862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052874 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070779.P13507725160447517862

namespace A070779

/-- `A052874(n+1)+record[A129652(n)]` -/
def P13507725160447517862.Spec : Prop :=
  ∀ n, P13507725160447517862.a n = A070779 n

end A070779

/-! ## A070779.P14924636753877725025

`A002720(n+1)-A000142(n+1)`
-/

namespace A070779.P14924636753877725025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (n + 1) - A000142 (n + 1)

end

end A070779.P14924636753877725025

namespace A070779

/-- `A002720(n+1)-A000142(n+1)` -/
def P14924636753877725025.Spec : Prop :=
  ∀ n, P14924636753877725025.a n = A070779 n

end A070779

/-! ## A070779.P3557779299960960848

`A056953(2*(n+1))-A000142(n+1)`
-/

namespace A070779.P3557779299960960848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * (n + 1)) - A000142 (n + 1)

end

end A070779.P3557779299960960848

namespace A070779

/-- `A056953(2*(n+1))-A000142(n+1)` -/
def P3557779299960960848.Spec : Prop :=
  ∀ n, P3557779299960960848.a n = A070779 n

end A070779

/-! ## A070779.P1277040956549540226

`2*A331326(n+1)-A087860(n+1)`
-/

namespace A070779.P1277040956549540226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331326 (n + 1) - A087860 (n + 1)

end

end A070779.P1277040956549540226

namespace A070779

/-- `2*A331326(n+1)-A087860(n+1)` -/
def P1277040956549540226.Spec : Prop :=
  ∀ n, P1277040956549540226.a n = A070779 n

end A070779

/-!
# A070780: a(n) = binomial((n+1)^2,n).

The programs for A070780, the canonical program `A070780.P7012615357018699041` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070780 has offset 0).

The definition of A070780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+1)², n)` (program `A070780.P7012615357018699041`, by `A070780.P7012615357018699041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070780.P7012615357018699041

`C((n+1)², n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070780

/-- `C((n+1)², n)` -/
def P7012615357018699041.Spec : Prop :=
  ∀ n, (P7012615357018699041.a n : ℤ) = A070780 n

theorem P7012615357018699041.correct : P7012615357018699041.Spec := by
  intro n
  simp only [A070780]

end A070780

/-! ## A070780.P13560799218670396941

`lcm(n+1, C(∑[2*n+1], n))`
-/

namespace A070780.P13560799218670396941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A070780.P13560799218670396941

namespace A070780

/-- `lcm(n+1, C(∑[2*n+1], n))` -/
def P13560799218670396941.Spec : Prop :=
  ∀ n, (P13560799218670396941.a n : ℤ) = A070780 n

end A070780

/-! ## A070780.P18046405696732842848

`C(2, n+3)+C(∑[2*n+1], n)`
-/

namespace A070780.P18046405696732842848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A070780.P18046405696732842848

namespace A070780

/-- `C(2, n+3)+C(∑[2*n+1], n)` -/
def P18046405696732842848.Spec : Prop :=
  ∀ n, (P18046405696732842848.a n : ℤ) = A070780 n

end A070780

/-! ## A070780.P3326793321724799714

`record[C(A053187(n), n)]`
-/

namespace A070780.P3326793321724799714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053187 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070780.P3326793321724799714

namespace A070780

/-- `record[C(A053187(n), n)]` -/
def P3326793321724799714.Spec : Prop :=
  ∀ n, (P3326793321724799714.a n : ℤ) = A070780 n

end A070780

/-!
# A070781: a(n) = binomial((n+1)^2, n^2).

The programs for A070781, the canonical program `A070781.P13599032286107280593` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070781 has offset 0).

The definition of A070781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+1)², n²)` (program `A070781.P13599032286107280593`, by `A070781.P13599032286107280593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070781.P13599032286107280593

`C((n+1)², n²)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070781

/-- `C((n+1)², n²)` -/
def P13599032286107280593.Spec : Prop :=
  ∀ n, (P13599032286107280593.a n : ℤ) = A070781 n

theorem P13599032286107280593.correct : P13599032286107280593.Spec := by
  intro n
  simp only [A070781]

end A070781

/-! ## A070781.P4177289792397844847

`lcm(n+1, C(∑[2*n+1], 2*n+1))`
-/

namespace A070781.P4177289792397844847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (2 * n + 1))

end

end A070781.P4177289792397844847

namespace A070781

/-- `lcm(n+1, C(∑[2*n+1], 2*n+1))` -/
def P4177289792397844847.Spec : Prop :=
  ∀ n, (P4177289792397844847.a n : ℤ) = A070781 n

end A070781

/-! ## A070781.P7578286786858783534

`C(2, n+3)+C(∑[2*n+1], 2*n+1)`
-/

namespace A070781.P7578286786858783534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (2 * n + 1)

end

end A070781.P7578286786858783534

namespace A070781

/-- `C(2, n+3)+C(∑[2*n+1], 2*n+1)` -/
def P7578286786858783534.Spec : Prop :=
  ∀ n, (P7578286786858783534.a n : ℤ) = A070781 n

end A070781

/-! ## A070781.P111220486772535699

`record[C(A346004(n), n)]`
-/

namespace A070781.P111220486772535699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346004 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070781.P111220486772535699

namespace A070781

/-- `record[C(A346004(n), n)]` -/
def P111220486772535699.Spec : Prop :=
  ∀ n, (P111220486772535699.a n : ℤ) = A070781 n

end A070781

/-! ## A070781.P10728796269408654309

`record[C(A000463(n+1), n)]`
-/

namespace A070781.P10728796269408654309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000463 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070781.P10728796269408654309

namespace A070781

/-- `record[C(A000463(n+1), n)]` -/
def P10728796269408654309.Spec : Prop :=
  ∀ n, (P10728796269408654309.a n : ℤ) = A070781 n

end A070781

/-!
# A070782: a(n) = Sum_{k=0..n} binomial(5*n,5*k).

The programs for A070782, the canonical program `A070782.P8429444961841830561` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070782 has offset 0).

The definition of A070782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070782.P8429444961841830561

`21*a(n-1)+353*a(n-2)-32*a(n-3)` with `a(0)=1, a(1)=2, a(2)=254`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070782

/-- `21*a(n-1)+353*a(n-2)-32*a(n-3)` -/
def P8429444961841830561.Spec : Prop :=
  ∀ n, P8429444961841830561.a n = A070782 n

theorem P8429444961841830561.correct : P8429444961841830561.Spec := by
  intro n
  simp only [A070782]

end A070782

/-! ## A070782.P91859807941588992

`A054877(5*n)`
-/

namespace A070782.P91859807941588992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (5 * n)

end

end A070782.P91859807941588992

namespace A070782

/-- `A054877(5*n)` -/
def P91859807941588992.Spec : Prop :=
  ∀ n, P91859807941588992.a n = A070782 n

end A070782

/-! ## A070782.P4953161539265007415

`A139398(5*n)`
-/

namespace A070782.P4953161539265007415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (5 * n)

end

end A070782.P4953161539265007415

namespace A070782

/-- `A139398(5*n)` -/
def P4953161539265007415.Spec : Prop :=
  ∀ n, P4953161539265007415.a n = A070782 n

end A070782

/-! ## A070782.P6530806129418287430

`record[A139398(n)^A010891(n)]`
-/

namespace A070782.P6530806129418287430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139398 n : ℚ) ^ (A010891 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070782.P6530806129418287430

namespace A070782

/-- `record[A139398(n)^A010891(n)]` -/
def P6530806129418287430.Spec : Prop :=
  ∀ n, P6530806129418287430.a n = (A070782 n : ℚ)

end A070782

/-! ## A070782.P5370071002366645639

`record[gcd(A054877(n), A139398(n))]`
-/

namespace A070782.P5370071002366645639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054877 n) (A139398 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070782.P5370071002366645639

namespace A070782

/-- `record[gcd(A054877(n), A139398(n))]` -/
def P5370071002366645639.Spec : Prop :=
  ∀ n, (P5370071002366645639.a n : ℤ) = A070782 n

end A070782

/-! ## A070782.P1311961323194881330

`A139398(A008587(n))^A178334(n)`
-/

namespace A070782.P1311961323194881330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139398 (A008587 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A070782.P1311961323194881330

namespace A070782

/-- `A139398(A008587(n))^A178334(n)` -/
def P1311961323194881330.Spec : Prop :=
  ∀ n, P1311961323194881330.a n = (A070782 n : ℚ)

end A070782

/-! ## A070782.P5516515706559787121

`A139398(A008587(n))^A007318(ceil(2/(n+1)))`
-/

namespace A070782.P5516515706559787121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139398 (A008587 n).toNat : ℚ) ^ (A007318 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A070782.P5516515706559787121

namespace A070782

/-- `A139398(A008587(n))^A007318(ceil(2/(n+1)))` -/
def P5516515706559787121.Spec : Prop :=
  ∀ n, P5516515706559787121.a n = (A070782 n : ℚ)

end A070782

/-!
# A070787: Number of triangles with sides whose squares are integers and with positive integer area and longest side of length sqrt(n).

The programs for A070787, there is no canonical definition to state claims against.
-/

/-! ## A070787.P1886106406342891435

`and(A007494(A110334(n)), A211974(n))`
-/

namespace A070787.P1886106406342891435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007494 (A110334 n).toNat) (A211974 n)

end

end A070787.P1886106406342891435

/-! ## A070787.P9263973542515590734

`A319571(A128209(n))%A164818(n+1)`
-/

namespace A070787.P9263973542515590734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319571 (A128209 n).toNat) (A164818 (n + 1))

end

end A070787.P9263973542515590734

/-! ## A070787.P6410930021845813489

`A272620(n+1)*A324883(A324843(2*n+1))`
-/

namespace A070787.P6410930021845813489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (n + 1) * A324883 (A324843 (2 * n + 1)).toNat

end

end A070787.P6410930021845813489

/-! ## A070787.P3609580461445762788

`A272620(n+1)%A318812(A039900(2*n+3))`
-/

namespace A070787.P3609580461445762788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272620 (n + 1)) (A318812 (A039900 (2 * n + 3)).toNat)

end

end A070787.P3609580461445762788

/-! ## A070787.P4125891851939016185

`A000124(n)%A054988(∑[char[1]+n]+1)`
-/

namespace A070787.P4125891851939016185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (A054988 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A070787.P4125891851939016185

/-!
# A070788: Positive integers n such that the Reverse and Add! trajectory of n (presumably) does not join the trajectory of any m < n.

The programs for A070788, there is no canonical definition to state claims against.
-/

/-! ## A070788.P9313354138279946662

`eq[A010681(A135323(n+1)), A059995(n)]`
-/

namespace A070788.P9313354138279946662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010681 (A135323 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070788.P9313354138279946662

/-! ## A070788.P9900096792342293783

`record[xor(A347380(n+1), A347400(n+1))]`
-/

namespace A070788.P9900096792342293783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A347380 (n + 1)) (A347400 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070788.P9900096792342293783

/-! ## A070788.P7395261101080183077

`∑[A049868(A351995(floor(2^(n-1))+2))]`
-/

namespace A070788.P7395261101080183077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 (A351995 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070788.P7395261101080183077

/-! ## A070788.P17173855345345958821

`A055649(eq[A242112(n), A319951(n)])`
-/

namespace A070788.P17173855345345958821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070788.P17173855345345958821

/-!
# A070789: Integers n such that the 'Reverse and Add!' trajectory of n joins the trajectory of 1.

The programs for A070789, there is no canonical definition to state claims against.
-/

/-! ## A070789.P10957211077817062634

`eq[A244568(A056964(n)), A267533(n²)]`
-/

namespace A070789.P10957211077817062634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070789.P10957211077817062634

/-! ## A070789.P11734958885660333055

`eq[1, A244568(A033865(n))]`
-/

namespace A070789.P11734958885660333055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A033865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070789.P11734958885660333055

/-! ## A070789.P8053641468266999546

`eq[1, A244568(A061563(n))]`
-/

namespace A070789.P8053641468266999546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A061563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070789.P8053641468266999546

/-! ## A070789.P5216651012455346978

`eq[A098820(n), A375968(n)]`
-/

namespace A070789.P5216651012455346978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098820 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070789.P5216651012455346978

/-! ## A070789.P13583594798672887328

`∑[∑[A383567(A014486(n))]]`
-/

namespace A070789.P13583594798672887328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383567 (A014486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070789.P13583594798672887328

/-!
# A070791: Integers n such that the 'Reverse and Add!' trajectory of n joins the trajectory of 5.

The programs for A070791, there is no canonical definition to state claims against.
-/

/-! ## A070791.P9916308529844102196

`eq[2, A334204(A052008(n))]`
-/

namespace A070791.P9916308529844102196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334204 (A052008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070791.P9916308529844102196

/-! ## A070791.P17217876698979406377

`eq[2, A233905(A257296(n))]`
-/

namespace A070791.P17217876698979406377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 (A257296 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070791.P17217876698979406377

/-! ## A070791.P16336919743386893314

`eq[2, A277824(A056964(n)²)]`
-/

namespace A070791.P16336919743386893314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 (A056964 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070791.P16336919743386893314

/-! ## A070791.P14472339001746722856

`eq[5, A244568(A045876(n+1))]+1`
-/

namespace A070791.P14472339001746722856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A045876 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070791.P14472339001746722856

/-! ## A070791.P11981862843417261929

`eq[A109012(n), A284264(A052008(n))]`
-/

namespace A070791.P11981862843417261929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284264 (A052008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070791.P11981862843417261929

/-!
# A070792: Integers n such that the 'Reverse and Add!' trajectory of n joins the trajectory of 7.

The programs for A070792, there is no canonical definition to state claims against.
-/

/-! ## A070792.P9479944275278435736

`eq[4, A334204(A061563(n))]`
-/

namespace A070792.P9479944275278435736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334204 (A061563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070792.P9479944275278435736

/-! ## A070792.P294658166160511632

`eq[7, A244568(A033865(n))]`
-/

namespace A070792.P294658166160511632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A033865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070792.P294658166160511632

/-! ## A070792.P5638667494832152763

`lt[A344803(n+1), A117078(A061563(n)+1)]`
-/

namespace A070792.P5638667494832152763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (A061563 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070792.P5638667494832152763

/-! ## A070792.P10873266025480154915

`lt[A346353(n+1), A006954(A061563(n))]`
-/

namespace A070792.P10873266025480154915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006954 (A061563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070792.P10873266025480154915

/-! ## A070792.P13969304823041497302

`A244567(A296898(n+1))%A226668(n+5)`
-/

namespace A070792.P13969304823041497302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244567 (A296898 (n + 1)).toNat) (A226668 (n + 5))

end

end A070792.P13969304823041497302

/-!
# A070793: Integers n such that the 'Reverse and Add!' trajectory of n joins the trajectory of 9.

The programs for A070793, there is no canonical definition to state claims against.
-/

/-! ## A070793.P11895499460129715874

`A020723(9*A061511(n))`
-/

namespace A070793.P11895499460129715874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (9 * A061511 n).toNat

end

end A070793.P11895499460129715874

/-! ## A070793.P6309084863565762041

`A028310(9*(A061511(n)+1))`
-/

namespace A070793.P6309084863565762041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (9 * (A061511 n + 1)).toNat

end

end A070793.P6309084863565762041

/-! ## A070793.P6253144031824754348

`A001651(6*(A061511(n)+1))+1`
-/

namespace A070793.P6253144031824754348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (6 * (A061511 n + 1)).toNat + 1

end

end A070793.P6253144031824754348

/-! ## A070793.P11321300495080081367

`A008486(6*(A061511(n)+1))/2`
-/

namespace A070793.P11321300495080081367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (6 * (A061511 n + 1)).toNat : ℚ) / 2

end

end A070793.P11321300495080081367

/-! ## A070793.P7061534562063155183

`A030451(3*6*(A061511(n)+1))`
-/

namespace A070793.P7061534562063155183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (3 * (6 * (A061511 n + 1))).toNat

end

end A070793.P7061534562063155183

/-!
# A070794: Integers n such that the 'Reverse and Add!' trajectory of n joins the trajectory of 100.

The programs for A070794, there is no canonical definition to state claims against.
-/

/-! ## A070794.P6758902199244277868

`A217132(A000108(n))+A135600(n+1)`
-/

namespace A070794.P6758902199244277868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217132 (A000108 n).toNat + A135600 (n + 1)

end

end A070794.P6758902199244277868

/-!
# A070798: Integers n such that the 'Reverse and Add!' trajectory of n joins the trajectory of 111.

The programs for A070798, there is no canonical definition to state claims against.
-/

/-! ## A070798.P3017067479180914164

`eq[14, A002487(A056964(n))]`
-/

namespace A070798.P3017067479180914164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070798.P3017067479180914164

/-!
# A070799: Numbers of the form 6jk-j-k.

The programs for A070799, the canonical program `A070799.P17110375673296894115` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070799 has offset 1).

The definition of A070799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070799.P17110375673296894115

`eq[0, A091393(6*n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070799

/-- `eq[0, A091393(6*n+1)]` -/
def P17110375673296894115.Spec : Prop :=
  ∀ n, (P17110375673296894115.a n : ℤ) = A070799 (n + 1)

theorem P17110375673296894115.correct : P17110375673296894115.Spec := by
  intro n
  simp only [A070799, Nat.add_sub_cancel]

end A070799

/-! ## A070799.P5856413346459615104

`lt[0, A359327(n+1)]`
-/

namespace A070799.P5856413346459615104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070799.P5856413346459615104

namespace A070799

/-- `lt[0, A359327(n+1)]` -/
def P5856413346459615104.Spec : Prop :=
  ∀ n, (P5856413346459615104.a n : ℤ) = A070799 (n + 1)

end A070799

/-! ## A070799.P3447280992153243104

`lt[0, A359326(2*n+1)]`
-/

namespace A070799.P3447280992153243104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070799.P3447280992153243104

namespace A070799

/-- `lt[0, A359326(2*n+1)]` -/
def P3447280992153243104.Spec : Prop :=
  ∀ n, (P3447280992153243104.a n : ℤ) = A070799 (n + 1)

end A070799

/-! ## A070799.P14716761434865589013

`lt[1, A363891(2*n+1)]`
-/

namespace A070799.P14716761434865589013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363891 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070799.P14716761434865589013

namespace A070799

/-- `lt[1, A363891(2*n+1)]` -/
def P14716761434865589013.Spec : Prop :=
  ∀ n, (P14716761434865589013.a n : ℤ) = A070799 (n + 1)

end A070799

/-! ## A070799.P11847958418081039258

`lt[0, A359325(3*n+1)]`
-/

namespace A070799.P11847958418081039258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070799.P11847958418081039258

namespace A070799

/-- `lt[0, A359325(3*n+1)]` -/
def P11847958418081039258.Spec : Prop :=
  ∀ n, (P11847958418081039258.a n : ℤ) = A070799 (n + 1)

end A070799

/-! ## A070799.P9499553670445192302

`eq[0, A000086(6*n+1)]`
-/

namespace A070799.P9499553670445192302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070799.P9499553670445192302

namespace A070799

/-- `eq[0, A000086(6*n+1)]` -/
def P9499553670445192302.Spec : Prop :=
  ∀ n, (P9499553670445192302.a n : ℤ) = A070799 (n + 1)

end A070799

/-! ## A070799.P7527476272445979947

`eq[0, A000091(6*n+1)]`
-/

namespace A070799.P7527476272445979947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000091 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070799.P7527476272445979947

namespace A070799

/-- `eq[0, A000091(6*n+1)]` -/
def P7527476272445979947.Spec : Prop :=
  ∀ n, (P7527476272445979947.a n : ℤ) = A070799 (n + 1)

end A070799

/-! ## A070799.P6449773775368772464

`lt[2, A343430(6*n+1)]`
-/

namespace A070799.P6449773775368772464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070799.P6449773775368772464

namespace A070799

/-- `lt[2, A343430(6*n+1)]` -/
def P6449773775368772464.Spec : Prop :=
  ∀ n, (P6449773775368772464.a n : ℤ) = A070799 (n + 1)

end A070799

/-! ## A070799.P657431767390550296

`A008612(A395997(n+1))`
-/

namespace A070799.P657431767390550296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A395997 (n + 1)).toNat

end

end A070799.P657431767390550296

namespace A070799

/-- `A008612(A395997(n+1))` -/
def P657431767390550296.Spec : Prop :=
  ∀ n, P657431767390550296.a n = A070799 (n + 1)

end A070799

/-! ## A070799.P5309852347368764753

`lt[1, A005090(12*n+2)]`
-/

namespace A070799.P5309852347368764753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (12 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070799.P5309852347368764753

namespace A070799

/-- `lt[1, A005090(12*n+2)]` -/
def P5309852347368764753.Spec : Prop :=
  ∀ n, (P5309852347368764753.a n : ℤ) = A070799 (n + 1)

end A070799

