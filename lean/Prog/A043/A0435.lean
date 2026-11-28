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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A043500: Numbers having four 2's in base 10.

The programs for A043500, there is no canonical definition to state claims against.
-/

/-! ## A043500.P8528898784606200202

`A007093(A043290(n+3)*A043404(n+1))`
-/

namespace A043500.P8528898784606200202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A043290 (n + 3) * A043404 (n + 1)).toNat

end

end A043500.P8528898784606200202

/-! ## A043500.P16211118323371943843

`A007094(lcm(A043432(n+1), A294775(2*n+3)))`
-/

namespace A043500.P16211118323371943843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.lcm (A043432 (n + 1)) (A294775 (2 * n + 3)))

end

end A043500.P16211118323371943843

/-! ## A043500.P2407448352065776560

`A007093(A043404(n+1)*A294775(n))`
-/

namespace A043500.P2407448352065776560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A043404 (n + 1) * A294775 n).toNat

end

end A043500.P2407448352065776560

/-! ## A043500.P70690621752722973

`A007094(A043432(n+1)*A294775(n))`
-/

namespace A043500.P70690621752722973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043432 (n + 1) * A294775 n).toNat

end

end A043500.P70690621752722973

/-!
# A043501: Numbers having one 3 in base 10.

The programs for A043501, the canonical program `A043501.P5354299065825686140` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043501 has offset 1).

The definition of A043501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043501.P5354299065825686140

`eq[1, A316864(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043501

/-- `eq[1, A316864(n)]` -/
def P5354299065825686140.Spec : Prop :=
  ∀ n, (P5354299065825686140.a n : ℤ) = A043501 (n + 1)

theorem P5354299065825686140.correct : P5354299065825686140.Spec := by
  intro n
  simp only [A043501, Nat.add_sub_cancel]

end A043501

/-! ## A043501.P7205529625919328385

`eq[1, A268643(A107130(n))]`
-/

namespace A043501.P7205529625919328385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A107130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043501.P7205529625919328385

namespace A043501

/-- `eq[1, A268643(A107130(n))]` -/
def P7205529625919328385.Spec : Prop :=
  ∀ n, (P7205529625919328385.a n : ℤ) = A043501 (n + 1)

end A043501

/-! ## A043501.P15969317439776887752

`eq[1, A316863(A235049(n))]`
-/

namespace A043501.P15969317439776887752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043501.P15969317439776887752

namespace A043501

/-- `eq[1, A316863(A235049(n))]` -/
def P15969317439776887752.Spec : Prop :=
  ∀ n, (P15969317439776887752.a n : ℤ) = A043501 (n + 1)

end A043501

/-! ## A043501.P12046409581836478191

`filter[A011533(n+1), A316864(#)]`
-/

namespace A043501.P12046409581836478191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316864 (f1 j).toNat = 1) n)

end

end A043501.P12046409581836478191

namespace A043501

/-- `filter[A011533(n+1), A316864(#)]` -/
def P12046409581836478191.Spec : Prop :=
  ∀ n, P12046409581836478191.a n = A043501 (n + 1)

end A043501

/-! ## A043501.P18174337433164570836

`eq[n+1, (n+1)*A102683(A222239(n))]`
-/

namespace A043501.P18174337433164570836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102683 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043501.P18174337433164570836

namespace A043501

/-- `eq[n+1, (n+1)*A102683(A222239(n))]` -/
def P18174337433164570836.Spec : Prop :=
  ∀ n, (P18174337433164570836.a n : ℤ) = A043501 (n + 1)

end A043501

/-! ## A043501.P11311704408982961857

`eq[A102669(A107130(n))+1, A102669(n)]`
-/

namespace A043501.P11311704408982961857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A107130 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043501.P11311704408982961857

namespace A043501

/-- `eq[A102669(A107130(n))+1, A102669(n)]` -/
def P11311704408982961857.Spec : Prop :=
  ∀ n, (P11311704408982961857.a n : ℤ) = A043501 (n + 1)

end A043501

/-! ## A043501.P984134565427035986

`filter[A092942(n), A316864(#)]`
-/

namespace A043501.P984134565427035986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316864 (f1 j).toNat = 1) n)

end

end A043501.P984134565427035986

namespace A043501

/-- `filter[A092942(n), A316864(#)]` -/
def P984134565427035986.Spec : Prop :=
  ∀ n, P984134565427035986.a n = A043501 (n + 1)

end A043501

/-!
# A043502: Numbers having two 3's in base 10.

The programs for A043502, the canonical program `A043502.P7320793928787515433` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043502 has offset 1).

The definition of A043502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043502.P7320793928787515433

`eq[2, A316864(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043502

/-- `eq[2, A316864(n)]` -/
def P7320793928787515433.Spec : Prop :=
  ∀ n, (P7320793928787515433.a n : ℤ) = A043502 (n + 1)

theorem P7320793928787515433.correct : P7320793928787515433.Spec := by
  intro n
  simp only [A043502, Nat.add_sub_cancel]

end A043502

/-! ## A043502.P8490515424451668739

`eq[2, A102683(A222239(n))]`
-/

namespace A043502.P8490515424451668739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043502.P8490515424451668739

namespace A043502

/-- `eq[2, A102683(A222239(n))]` -/
def P8490515424451668739.Spec : Prop :=
  ∀ n, (P8490515424451668739.a n : ℤ) = A043502 (n + 1)

end A043502

/-! ## A043502.P2795970655883912130

`eq[2, A268643(A107130(n))]`
-/

namespace A043502.P2795970655883912130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A107130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043502.P2795970655883912130

namespace A043502

/-- `eq[2, A268643(A107130(n))]` -/
def P2795970655883912130.Spec : Prop :=
  ∀ n, (P2795970655883912130.a n : ℤ) = A043502 (n + 1)

end A043502

/-! ## A043502.P14556546359367905324

`eq[2, A268643(A222220(n))]`
-/

namespace A043502.P14556546359367905324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043502.P14556546359367905324

namespace A043502

/-- `eq[2, A268643(A222220(n))]` -/
def P14556546359367905324.Spec : Prop :=
  ∀ n, (P14556546359367905324.a n : ℤ) = A043502 (n + 1)

end A043502

/-! ## A043502.P10833632192246408952

`eq[2, A316863(A235049(n))]`
-/

namespace A043502.P10833632192246408952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043502.P10833632192246408952

namespace A043502

/-- `eq[2, A316863(A235049(n))]` -/
def P10833632192246408952.Spec : Prop :=
  ∀ n, (P10833632192246408952.a n : ℤ) = A043502 (n + 1)

end A043502

/-! ## A043502.P17249458695841363996

`eq[2, A316863(A306436(n))]`
-/

namespace A043502.P17249458695841363996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A306436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043502.P17249458695841363996

namespace A043502

/-- `eq[2, A316863(A306436(n))]` -/
def P17249458695841363996.Spec : Prop :=
  ∀ n, (P17249458695841363996.a n : ℤ) = A043502 (n + 1)

end A043502

/-!
# A043504: Numbers having four 3's in base 10.

The programs for A043504, there is no canonical definition to state claims against.
-/

/-! ## A043504.P11258868314739074003

`A007092(A043384(n+1)^A193518(n+4))`
-/

namespace A043504.P11258868314739074003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.roundAway ((A043384 (n + 1) : ℚ) ^ (A193518 (n + 4) : ℤ))).toNat

end

end A043504.P11258868314739074003

/-! ## A043504.P12087872716381918560

`A007091(A043364(A024657(A024657(A024657(n+1)))))`
-/

namespace A043504.P12087872716381918560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A043364 (A024657 (A024657 (A024657 (n + 1)).toNat).toNat).toNat).toNat

end

end A043504.P12087872716381918560

/-!
# A043505: Numbers having one 4 in base 10.

The programs for A043505, the canonical program `A043505.P9579580581361236781` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043505 has offset 1).

The definition of A043505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043505.P9579580581361236781

`eq[A064532(n)+1, A064692(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043505

/-- `eq[A064532(n)+1, A064692(n)]` -/
def P9579580581361236781.Spec : Prop :=
  ∀ n, (P9579580581361236781.a n : ℤ) = A043505 (n + 1)

theorem P9579580581361236781.correct : P9579580581361236781.Spec := by
  intro n
  simp only [A043505, Nat.add_sub_cancel]

end A043505

/-! ## A043505.P14487190929313932810

`eq[1, A316863(A107128(n))]`
-/

namespace A043505.P14487190929313932810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A107128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043505.P14487190929313932810

namespace A043505

/-- `eq[1, A316863(A107128(n))]` -/
def P14487190929313932810.Spec : Prop :=
  ∀ n, (P14487190929313932810.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P1961262472273566252

`eq[1, A268643(A222221(n))]`
-/

namespace A043505.P1961262472273566252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043505.P1961262472273566252

namespace A043505

/-- `eq[1, A268643(A222221(n))]` -/
def P1961262472273566252.Spec : Prop :=
  ∀ n, (P1961262472273566252.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P8529943358870382043

`eq[1, A316864(A222234(n))]`
-/

namespace A043505.P8529943358870382043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043505.P8529943358870382043

namespace A043505

/-- `eq[1, A316864(A222234(n))]` -/
def P8529943358870382043.Spec : Prop :=
  ∀ n, (P8529943358870382043.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P5276078687888245731

`eq[1, A316864(A235049(n))]`
-/

namespace A043505.P5276078687888245731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043505.P5276078687888245731

namespace A043505

/-- `eq[1, A316864(A235049(n))]` -/
def P5276078687888245731.Spec : Prop :=
  ∀ n, (P5276078687888245731.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P9539897212583338043

`eq[A316865(n), A329684(n)]`
-/

namespace A043505.P9539897212583338043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P9539897212583338043

namespace A043505

/-- `eq[A316865(n), A329684(n)]` -/
def P9539897212583338043.Spec : Prop :=
  ∀ n, (P9539897212583338043.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P6069613855565542632

`eq[A316865(n), A373565(n)]`
-/

namespace A043505.P6069613855565542632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P6069613855565542632

namespace A043505

/-- `eq[A316865(n), A373565(n)]` -/
def P6069613855565542632.Spec : Prop :=
  ∀ n, (P6069613855565542632.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P4550935896953918599

`eq[A121273(n+1), A316865(n)]`
-/

namespace A043505.P4550935896953918599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P4550935896953918599

namespace A043505

/-- `eq[A121273(n+1), A316865(n)]` -/
def P4550935896953918599.Spec : Prop :=
  ∀ n, (P4550935896953918599.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P3084228527861787141

`eq[A171624(n+1), A316865(n)]`
-/

namespace A043505.P3084228527861787141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P3084228527861787141

namespace A043505

/-- `eq[A171624(n+1), A316865(n)]` -/
def P3084228527861787141.Spec : Prop :=
  ∀ n, (P3084228527861787141.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P5600854721859135868

`eq[A205375(n+1), A316865(n)]`
-/

namespace A043505.P5600854721859135868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P5600854721859135868

namespace A043505

/-- `eq[A205375(n+1), A316865(n)]` -/
def P5600854721859135868.Spec : Prop :=
  ∀ n, (P5600854721859135868.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P12519437251349370080

`eq[A283149(n+1), A316865(n)]`
-/

namespace A043505.P12519437251349370080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P12519437251349370080

namespace A043505

/-- `eq[A283149(n+1), A316865(n)]` -/
def P12519437251349370080.Spec : Prop :=
  ∀ n, (P12519437251349370080.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P16925752914050826493

`eq[A316865(n), A319658(n+1)]`
-/

namespace A043505.P16925752914050826493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P16925752914050826493

namespace A043505

/-- `eq[A316865(n), A319658(n+1)]` -/
def P16925752914050826493.Spec : Prop :=
  ∀ n, (P16925752914050826493.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P10715294005459815751

`eq[A316865(n), A352177(n+1)]`
-/

namespace A043505.P10715294005459815751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P10715294005459815751

namespace A043505

/-- `eq[A316865(n), A352177(n+1)]` -/
def P10715294005459815751.Spec : Prop :=
  ∀ n, (P10715294005459815751.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P9864583318843663809

`eq[A027386(n)+2, A027387(n)]`
-/

namespace A043505.P9864583318843663809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P9864583318843663809

namespace A043505

/-- `eq[A027386(n)+2, A027387(n)]` -/
def P9864583318843663809.Spec : Prop :=
  ∀ n, (P9864583318843663809.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P13153615102185363494

`eq[A027388(n)+2, A027389(n)]`
-/

namespace A043505.P13153615102185363494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P13153615102185363494

namespace A043505

/-- `eq[A027388(n)+2, A027389(n)]` -/
def P13153615102185363494.Spec : Prop :=
  ∀ n, (P13153615102185363494.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P8528287819429595737

`eq[A055640(A004179(n))+1, A055640(n)]`
-/

namespace A043505.P8528287819429595737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A004179 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P8528287819429595737

namespace A043505

/-- `eq[A055640(A004179(n))+1, A055640(n)]` -/
def P8528287819429595737.Spec : Prop :=
  ∀ n, (P8528287819429595737.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P982796881602450842

`eq[A102669(A004179(n))+1, A102669(n)]`
-/

namespace A043505.P982796881602450842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A004179 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P982796881602450842

namespace A043505

/-- `eq[A102669(A004179(n))+1, A102669(n)]` -/
def P982796881602450842.Spec : Prop :=
  ∀ n, (P982796881602450842.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P3307586438182069020

`eq[A102673(n), A196564(A005408(n))]`
-/

namespace A043505.P3307586438182069020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P3307586438182069020

namespace A043505

/-- `eq[A102673(n), A196564(A005408(n))]` -/
def P3307586438182069020.Spec : Prop :=
  ∀ n, (P3307586438182069020.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P13285458083789980538

`eq[1, A100910(A017317(n))]`
-/

namespace A043505.P13285458083789980538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043505.P13285458083789980538

namespace A043505

/-- `eq[1, A100910(A017317(n))]` -/
def P13285458083789980538.Spec : Prop :=
  ∀ n, (P13285458083789980538.a n : ℤ) = A043505 (n + 1)

end A043505

/-! ## A043505.P17649068639017310913

`eq[7, A268354(A113581(n))]`
-/

namespace A043505.P17649068639017310913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043505.P17649068639017310913

namespace A043505

/-- `eq[7, A268354(A113581(n))]` -/
def P17649068639017310913.Spec : Prop :=
  ∀ n, (P17649068639017310913.a n : ℤ) = A043505 (n + 1)

end A043505

/-!
# A043506: Numbers having two 4's in base 10.

The programs for A043506, there is no canonical definition to state claims against.
-/

/-! ## A043506.P12581121095302110395

`eq[2, A102683(A222244(n))]`
-/

namespace A043506.P12581121095302110395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043506.P12581121095302110395

/-! ## A043506.P15932934318557954313

`eq[2, A268643(A222221(n))]`
-/

namespace A043506.P15932934318557954313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043506.P15932934318557954313

/-! ## A043506.P17312043152285165258

`eq[2, A316864(A222234(n))]`
-/

namespace A043506.P17312043152285165258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043506.P17312043152285165258

/-! ## A043506.P4198103084156944395

`eq[2, A316864(A235049(n))]`
-/

namespace A043506.P4198103084156944395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043506.P4198103084156944395

/-! ## A043506.P11706030390899893616

`eq[2, val(A113581(n), 7)]`
-/

namespace A043506.P11706030390899893616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113581 n).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043506.P11706030390899893616

/-!
# A043507: Numbers having three 4's in base 10.

The programs for A043507, there is no canonical definition to state claims against.
-/

/-! ## A043507.P12924590985142299181

`A007094(A043439(A032943(A032943(n+1))))`
-/

namespace A043507.P12924590985142299181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043439 (A032943 (A032943 (n + 1)).toNat).toNat).toNat

end

end A043507.P12924590985142299181

/-! ## A043507.P2369844678597988408

`A007094(A043439(A044909(n+1)))`
-/

namespace A043507.P2369844678597988408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A043439 (A044909 (n + 1)).toNat).toNat

end

end A043507.P2369844678597988408

/-!
# A043508: Numbers having four 4's in base 10.

The programs for A043508, there is no canonical definition to state claims against.
-/

/-! ## A043508.P17624306668611933459

`A007091(A043368(A024657(A024657(A024657(n+1)))))`
-/

namespace A043508.P17624306668611933459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A043368 (A024657 (A024657 (A024657 (n + 1)).toNat).toNat).toNat).toNat

end

end A043508.P17624306668611933459

/-!
# A043509: Numbers having exactly one 5 in base 10.

The programs for A043509, the canonical program `A043509.P6603774125387812743` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043509 has offset 1).

The definition of A043509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043509.P936712231570723130

`eq[1, A102683(A222248(n))]`
-/

namespace A043509.P936712231570723130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043509.P936712231570723130

namespace A043509

/-- `eq[1, A102683(A222248(n))]` -/
def P936712231570723130.Spec : Prop :=
  ∀ n, (P936712231570723130.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P10143700762488575224

`eq[1, A268643(A222222(n))]`
-/

namespace A043509.P10143700762488575224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043509.P10143700762488575224

namespace A043509

/-- `eq[1, A268643(A222222(n))]` -/
def P10143700762488575224.Spec : Prop :=
  ∀ n, (P10143700762488575224.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P4980522506480851179

`eq[1, A316863(A222229(n))]`
-/

namespace A043509.P4980522506480851179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043509.P4980522506480851179

namespace A043509

/-- `eq[1, A316863(A222229(n))]` -/
def P4980522506480851179.Spec : Prop :=
  ∀ n, (P4980522506480851179.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P16241920078118521583

`eq[3, A256452(A051801(n))]`
-/

namespace A043509.P16241920078118521583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043509.P16241920078118521583

namespace A043509

/-- `eq[3, A256452(A051801(n))]` -/
def P16241920078118521583.Spec : Prop :=
  ∀ n, (P16241920078118521583.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P8550959811723484636

`eq[A316866(n), A329684(n)]`
-/

namespace A043509.P8550959811723484636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P8550959811723484636

namespace A043509

/-- `eq[A316866(n), A329684(n)]` -/
def P8550959811723484636.Spec : Prop :=
  ∀ n, (P8550959811723484636.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P16614246409946288787

`eq[A316866(n), A373565(n)]`
-/

namespace A043509.P16614246409946288787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P16614246409946288787

namespace A043509

/-- `eq[A316866(n), A373565(n)]` -/
def P16614246409946288787.Spec : Prop :=
  ∀ n, (P16614246409946288787.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P6603774125387812743

`eq[A008461(n+1), A316866(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043509

/-- `eq[A008461(n+1), A316866(n)]` -/
def P6603774125387812743.Spec : Prop :=
  ∀ n, (P6603774125387812743.a n : ℤ) = A043509 (n + 1)

theorem P6603774125387812743.correct : P6603774125387812743.Spec := by
  intro n
  simp only [A043509, Nat.add_sub_cancel]

end A043509

/-! ## A043509.P243836876371949207

`eq[A121273(n+1), A316866(n)]`
-/

namespace A043509.P243836876371949207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P243836876371949207

namespace A043509

/-- `eq[A121273(n+1), A316866(n)]` -/
def P243836876371949207.Spec : Prop :=
  ∀ n, (P243836876371949207.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P3772682325704264991

`eq[A171624(n+1), A316866(n)]`
-/

namespace A043509.P3772682325704264991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P3772682325704264991

namespace A043509

/-- `eq[A171624(n+1), A316866(n)]` -/
def P3772682325704264991.Spec : Prop :=
  ∀ n, (P3772682325704264991.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P2274339528929469726

`eq[A196564(A004180(n))+1, A196564(n)]`
-/

namespace A043509.P2274339528929469726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A004180 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P2274339528929469726

namespace A043509

/-- `eq[A196564(A004180(n))+1, A196564(n)]` -/
def P2274339528929469726.Spec : Prop :=
  ∀ n, (P2274339528929469726.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P18284744869335831995

`eq[A043288(n+1)*A316866(n), A043288(n+1)]`
-/

namespace A043509.P18284744869335831995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (n + 1) * A316866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P18284744869335831995

namespace A043509

/-- `eq[A043288(n+1)*A316866(n), A043288(n+1)]` -/
def P18284744869335831995.Spec : Prop :=
  ∀ n, (P18284744869335831995.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P254207228658789343

`eq[A102669(2*n)+1, A055640(n)]`
-/

namespace A043509.P254207228658789343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P254207228658789343

namespace A043509

/-- `eq[A102669(2*n)+1, A055640(n)]` -/
def P254207228658789343.Spec : Prop :=
  ∀ n, (P254207228658789343.a n : ℤ) = A043509 (n + 1)

end A043509

/-! ## A043509.P8036179997485718063

`eq[A124779(n), A316866(n)]`
-/

namespace A043509.P8036179997485718063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P8036179997485718063

namespace A043509

/-- `eq[A124779(n), A316866(n)]` -/
def P8036179997485718063.Spec : Prop :=
  ∀ n, (P8036179997485718063.a n : ℤ) = A043509 (n + 1)

end A043509

/-!
# A043510: Numbers having two 5's in base 10.

The programs for A043510, the canonical program `A043510.P14539891875598509651` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043510 has offset 1).

The definition of A043510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043510.P14539891875598509651

`eq[2, val(A051801(n), 5)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043510

/-- `eq[2, val(A051801(n), 5)]` -/
def P14539891875598509651.Spec : Prop :=
  ∀ n, (P14539891875598509651.a n : ℤ) = A043510 (n + 1)

theorem P14539891875598509651.correct : P14539891875598509651.Spec := by
  intro n
  simp only [A043510, Nat.add_sub_cancel]

end A043510

/-! ## A043510.P14324438646351388774

`eq[2, A083025(A051801(n))]`
-/

namespace A043510.P14324438646351388774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043510.P14324438646351388774

namespace A043510

/-- `eq[2, A083025(A051801(n))]` -/
def P14324438646351388774.Spec : Prop :=
  ∀ n, (P14324438646351388774.a n : ℤ) = A043510 (n + 1)

end A043510

/-! ## A043510.P14725152464755038195

`eq[2, A102683(A222248(n))]`
-/

namespace A043510.P14725152464755038195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043510.P14725152464755038195

namespace A043510

/-- `eq[2, A102683(A222248(n))]` -/
def P14725152464755038195.Spec : Prop :=
  ∀ n, (P14725152464755038195.a n : ℤ) = A043510 (n + 1)

end A043510

/-! ## A043510.P3618353114289928831

`eq[2, A268643(A222222(n))]`
-/

namespace A043510.P3618353114289928831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043510.P3618353114289928831

namespace A043510

/-- `eq[2, A268643(A222222(n))]` -/
def P3618353114289928831.Spec : Prop :=
  ∀ n, (P3618353114289928831.a n : ℤ) = A043510 (n + 1)

end A043510

/-! ## A043510.P11889776316520442590

`eq[2, A316864(A222235(n))]`
-/

namespace A043510.P11889776316520442590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222235 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043510.P11889776316520442590

namespace A043510

/-- `eq[2, A316864(A222235(n))]` -/
def P11889776316520442590.Spec : Prop :=
  ∀ n, (P11889776316520442590.a n : ℤ) = A043510 (n + 1)

end A043510

/-! ## A043510.P7636312145291884087

`lt[1, A009531(val(A051801(n), 5))]`
-/

namespace A043510.P7636312145291884087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.valuation (A051801 n).toNat 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043510.P7636312145291884087

namespace A043510

/-- `lt[1, A009531(val(A051801(n), 5))]` -/
def P7636312145291884087.Spec : Prop :=
  ∀ n, (P7636312145291884087.a n : ℤ) = A043510 (n + 1)

end A043510

/-!
# A043511: Numbers having three 5's in base 10.

The programs for A043511, there is no canonical definition to state claims against.
-/

/-! ## A043511.P11640730005241067733

`A007094(lcm(A043443(n+1), A321800(n)))`
-/

namespace A043511.P11640730005241067733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.lcm (A043443 (n + 1)) (A321800 n))

end

end A043511.P11640730005241067733

/-!
# A043513: Numbers having one 6 in base 10.

The programs for A043513, the canonical program `A043513.P16611777798555394452` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043513 has offset 1).

The definition of A043513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043513.P10655881829272677944

`eq[1, A102683(A222251(n))]`
-/

namespace A043513.P10655881829272677944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043513.P10655881829272677944

namespace A043513

/-- `eq[1, A102683(A222251(n))]` -/
def P10655881829272677944.Spec : Prop :=
  ∀ n, (P10655881829272677944.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P17170521616104033362

`eq[1, A316864(A061601(n))]`
-/

namespace A043513.P17170521616104033362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043513.P17170521616104033362

namespace A043513

/-- `eq[1, A316864(A061601(n))]` -/
def P17170521616104033362.Spec : Prop :=
  ∀ n, (P17170521616104033362.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P16539335757275744396

`eq[1, A316863(A222230(n))]`
-/

namespace A043513.P16539335757275744396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043513.P16539335757275744396

namespace A043513

/-- `eq[1, A316863(A222230(n))]` -/
def P16539335757275744396.Spec : Prop :=
  ∀ n, (P16539335757275744396.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P16371335170429740125

`eq[1, A316864(A222236(n))]`
-/

namespace A043513.P16371335170429740125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043513.P16371335170429740125

namespace A043513

/-- `eq[1, A316864(A222236(n))]` -/
def P16371335170429740125.Spec : Prop :=
  ∀ n, (P16371335170429740125.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P16974068905776555287

`eq[A316867(n), A329684(n)]`
-/

namespace A043513.P16974068905776555287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P16974068905776555287

namespace A043513

/-- `eq[A316867(n), A329684(n)]` -/
def P16974068905776555287.Spec : Prop :=
  ∀ n, (P16974068905776555287.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P5254024827854446304

`eq[A316867(n), A373565(n)]`
-/

namespace A043513.P5254024827854446304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P5254024827854446304

namespace A043513

/-- `eq[A316867(n), A373565(n)]` -/
def P5254024827854446304.Spec : Prop :=
  ∀ n, (P5254024827854446304.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P16611777798555394452

`eq[A008461(n+1), A316867(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043513

/-- `eq[A008461(n+1), A316867(n)]` -/
def P16611777798555394452.Spec : Prop :=
  ∀ n, (P16611777798555394452.a n : ℤ) = A043513 (n + 1)

theorem P16611777798555394452.correct : P16611777798555394452.Spec := by
  intro n
  simp only [A043513, Nat.add_sub_cancel]

end A043513

/-! ## A043513.P271188890502963025

`eq[A063720(n)+1, A277116(n)]`
-/

namespace A043513.P271188890502963025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063720 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P271188890502963025

namespace A043513

/-- `eq[A063720(n)+1, A277116(n)]` -/
def P271188890502963025.Spec : Prop :=
  ∀ n, (P271188890502963025.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P11014711158466221450

`eq[A117229(n)+1, A276729(n)]`
-/

namespace A043513.P11014711158466221450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117229 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P11014711158466221450

namespace A043513

/-- `eq[A117229(n)+1, A276729(n)]` -/
def P11014711158466221450.Spec : Prop :=
  ∀ n, (P11014711158466221450.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P17269099686758839128

`eq[A121273(n+1), A316867(n)]`
-/

namespace A043513.P17269099686758839128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P17269099686758839128

namespace A043513

/-- `eq[A121273(n+1), A316867(n)]` -/
def P17269099686758839128.Spec : Prop :=
  ∀ n, (P17269099686758839128.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P5640448079055107430

`eq[A171624(n+1), A316867(n)]`
-/

namespace A043513.P5640448079055107430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P5640448079055107430

namespace A043513

/-- `eq[A171624(n+1), A316867(n)]` -/
def P5640448079055107430.Spec : Prop :=
  ∀ n, (P5640448079055107430.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P16500193410665967645

`eq[A283149(n+1), A316867(n)]`
-/

namespace A043513.P16500193410665967645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P16500193410665967645

namespace A043513

/-- `eq[A283149(n+1), A316867(n)]` -/
def P16500193410665967645.Spec : Prop :=
  ∀ n, (P16500193410665967645.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P15581506435903826731

`eq[A316867(n), A319658(n+1)]`
-/

namespace A043513.P15581506435903826731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P15581506435903826731

namespace A043513

/-- `eq[A316867(n), A319658(n+1)]` -/
def P15581506435903826731.Spec : Prop :=
  ∀ n, (P15581506435903826731.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P2999927763903051182

`eq[A316867(n), A352177(n+1)]`
-/

namespace A043513.P2999927763903051182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P2999927763903051182

namespace A043513

/-- `eq[A316867(n), A352177(n+1)]` -/
def P2999927763903051182.Spec : Prop :=
  ∀ n, (P2999927763903051182.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P15592728342510659423

`eq[A043288(n+1)*A316867(n), A043288(n+1)]`
-/

namespace A043513.P15592728342510659423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (n + 1) * A316867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P15592728342510659423

namespace A043513

/-- `eq[A043288(n+1)*A316867(n), A043288(n+1)]` -/
def P15592728342510659423.Spec : Prop :=
  ∀ n, (P15592728342510659423.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P8821082273272619121

`eq[A316867(n)*A319101(n+1), A319101(n+1)]`
-/

namespace A043513.P8821082273272619121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n * A319101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P8821082273272619121

namespace A043513

/-- `eq[A316867(n)*A319101(n+1), A319101(n+1)]` -/
def P8821082273272619121.Spec : Prop :=
  ∀ n, (P8821082273272619121.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P8217083541044097059

`eq[1, val(A113581(n), 13)]`
-/

namespace A043513.P8217083541044097059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113581 n).toNat 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P8217083541044097059

namespace A043513

/-- `eq[1, val(A113581(n), 13)]` -/
def P8217083541044097059.Spec : Prop :=
  ∀ n, (P8217083541044097059.a n : ℤ) = A043513 (n + 1)

end A043513

/-! ## A043513.P15165193265340914729

`eq[1, A100910(A017341(n))]`
-/

namespace A043513.P15165193265340914729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043513.P15165193265340914729

namespace A043513

/-- `eq[1, A100910(A017341(n))]` -/
def P15165193265340914729.Spec : Prop :=
  ∀ n, (P15165193265340914729.a n : ℤ) = A043513 (n + 1)

end A043513

/-!
# A043514: Numbers having two 6's in base 10.

The programs for A043514, the canonical program `A043514.P17552009662386232543` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043514 has offset 1).

The definition of A043514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043514.P14260184787433798670

`eq[2, A102683(A222251(n))]`
-/

namespace A043514.P14260184787433798670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043514.P14260184787433798670

namespace A043514

/-- `eq[2, A102683(A222251(n))]` -/
def P14260184787433798670.Spec : Prop :=
  ∀ n, (P14260184787433798670.a n : ℤ) = A043514 (n + 1)

end A043514

/-! ## A043514.P17552009662386232543

`eq[2, A316864(A061601(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043514

/-- `eq[2, A316864(A061601(n))]` -/
def P17552009662386232543.Spec : Prop :=
  ∀ n, (P17552009662386232543.a n : ℤ) = A043514 (n + 1)

theorem P17552009662386232543.correct : P17552009662386232543.Spec := by
  intro n
  simp only [A043514, Nat.add_sub_cancel]

end A043514

/-! ## A043514.P16441269581593663626

`eq[2, A316864(A222236(n))]`
-/

namespace A043514.P16441269581593663626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043514.P16441269581593663626

namespace A043514

/-- `eq[2, A316864(A222236(n))]` -/
def P16441269581593663626.Spec : Prop :=
  ∀ n, (P16441269581593663626.a n : ℤ) = A043514 (n + 1)

end A043514

/-! ## A043514.P5072370815132587333

`eq[2, A100910(A017341(n))]`
-/

namespace A043514.P5072370815132587333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043514.P5072370815132587333

namespace A043514

/-- `eq[2, A100910(A017341(n))]` -/
def P5072370815132587333.Spec : Prop :=
  ∀ n, (P5072370815132587333.a n : ℤ) = A043514 (n + 1)

end A043514

/-! ## A043514.P15769589909928551803

`A292456(n+2)+A185284(2*n+1)`
-/

namespace A043514.P15769589909928551803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292456 (n + 2) + A185284 (2 * n + 1)

end

end A043514.P15769589909928551803

namespace A043514

/-- `A292456(n+2)+A185284(2*n+1)` -/
def P15769589909928551803.Spec : Prop :=
  ∀ n, P15769589909928551803.a n = A043514 (n + 1)

end A043514

/-!
# A043517: Numbers having one 7 in base 10.

The programs for A043517, the canonical program `A043517.P3710429130746688146` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043517 has offset 1).

The definition of A043517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043517.P1444047260156960499

`eq[1, A316863(A061601(n))]`
-/

namespace A043517.P1444047260156960499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043517.P1444047260156960499

namespace A043517

/-- `eq[1, A316863(A061601(n))]` -/
def P1444047260156960499.Spec : Prop :=
  ∀ n, (P1444047260156960499.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P8323244430452438221

`eq[1, A331671(A051801(n))]`
-/

namespace A043517.P8323244430452438221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043517.P8323244430452438221

namespace A043517

/-- `eq[1, A331671(A051801(n))]` -/
def P8323244430452438221.Spec : Prop :=
  ∀ n, (P8323244430452438221.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P4182933560660981597

`eq[1, A268643(A222224(n))]`
-/

namespace A043517.P4182933560660981597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043517.P4182933560660981597

namespace A043517

/-- `eq[1, A268643(A222224(n))]` -/
def P4182933560660981597.Spec : Prop :=
  ∀ n, (P4182933560660981597.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P9907500168611352582

`eq[A293668(n), A316868(n)]`
-/

namespace A043517.P9907500168611352582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P9907500168611352582

namespace A043517

/-- `eq[A293668(n), A316868(n)]` -/
def P9907500168611352582.Spec : Prop :=
  ∀ n, (P9907500168611352582.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P14382524783734816056

`eq[A316868(n), A329684(n)]`
-/

namespace A043517.P14382524783734816056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P14382524783734816056

namespace A043517

/-- `eq[A316868(n), A329684(n)]` -/
def P14382524783734816056.Spec : Prop :=
  ∀ n, (P14382524783734816056.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P4074330799400296983

`eq[A316868(n), A373565(n)]`
-/

namespace A043517.P4074330799400296983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P4074330799400296983

namespace A043517

/-- `eq[A316868(n), A373565(n)]` -/
def P4074330799400296983.Spec : Prop :=
  ∀ n, (P4074330799400296983.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P10055963332134824765

`eq[A006942(n)+1, A010371(n)]`
-/

namespace A043517.P10055963332134824765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P10055963332134824765

namespace A043517

/-- `eq[A006942(n)+1, A010371(n)]` -/
def P10055963332134824765.Spec : Prop :=
  ∀ n, (P10055963332134824765.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P3710429130746688146

`eq[A102681(n)+1, A102679(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043517

/-- `eq[A102681(n)+1, A102679(n)]` -/
def P3710429130746688146.Spec : Prop :=
  ∀ n, (P3710429130746688146.a n : ℤ) = A043517 (n + 1)

theorem P3710429130746688146.correct : P3710429130746688146.Spec := by
  intro n
  simp only [A043517, Nat.add_sub_cancel]

end A043517

/-! ## A043517.P7686560274993052724

`eq[A008461(n+1), A316868(n)]`
-/

namespace A043517.P7686560274993052724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P7686560274993052724

namespace A043517

/-- `eq[A008461(n+1), A316868(n)]` -/
def P7686560274993052724.Spec : Prop :=
  ∀ n, (P7686560274993052724.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P15358020808119772224

`eq[A277116(n)+1, A074458(n)]`
-/

namespace A043517.P15358020808119772224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P15358020808119772224

namespace A043517

/-- `eq[A277116(n)+1, A074458(n)]` -/
def P15358020808119772224.Spec : Prop :=
  ∀ n, (P15358020808119772224.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P16093937763387200687

`eq[A121273(n+1), A316868(n)]`
-/

namespace A043517.P16093937763387200687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P16093937763387200687

namespace A043517

/-- `eq[A121273(n+1), A316868(n)]` -/
def P16093937763387200687.Spec : Prop :=
  ∀ n, (P16093937763387200687.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P3162508375170774712

`eq[A171624(n+1), A316868(n)]`
-/

namespace A043517.P3162508375170774712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P3162508375170774712

namespace A043517

/-- `eq[A171624(n+1), A316868(n)]` -/
def P3162508375170774712.Spec : Prop :=
  ∀ n, (P3162508375170774712.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P17503449474501170726

`eq[A027386(n)+2, A027388(n)]`
-/

namespace A043517.P17503449474501170726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P17503449474501170726

namespace A043517

/-- `eq[A027386(n)+2, A027388(n)]` -/
def P17503449474501170726.Spec : Prop :=
  ∀ n, (P17503449474501170726.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P8700236357859993104

`eq[A027387(n)+2, A027389(n)]`
-/

namespace A043517.P8700236357859993104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P8700236357859993104

namespace A043517

/-- `eq[A027387(n)+2, A027389(n)]` -/
def P8700236357859993104.Spec : Prop :=
  ∀ n, (P8700236357859993104.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P12622923592222745385

`eq[A051801(n)*A316868(n), A051801(n)]`
-/

namespace A043517.P12622923592222745385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n * A316868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P12622923592222745385

namespace A043517

/-- `eq[A051801(n)*A316868(n), A051801(n)]` -/
def P12622923592222745385.Spec : Prop :=
  ∀ n, (P12622923592222745385.a n : ℤ) = A043517 (n + 1)

end A043517

/-! ## A043517.P14023992807779140451

`eq[A124779(n), A316868(n)]`
-/

namespace A043517.P14023992807779140451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P14023992807779140451

namespace A043517

/-- `eq[A124779(n), A316868(n)]` -/
def P14023992807779140451.Spec : Prop :=
  ∀ n, (P14023992807779140451.a n : ℤ) = A043517 (n + 1)

end A043517

/-!
# A043518: Numbers having two 7's in base 10.

The programs for A043518, the canonical program `A043518.P17478239837040593349` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043518 has offset 1).

The definition of A043518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043518.P16547369590261556317

`eq[2, A102683(A222253(n))]`
-/

namespace A043518.P16547369590261556317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043518.P16547369590261556317

namespace A043518

/-- `eq[2, A102683(A222253(n))]` -/
def P16547369590261556317.Spec : Prop :=
  ∀ n, (P16547369590261556317.a n : ℤ) = A043518 (n + 1)

end A043518

/-! ## A043518.P16579188714535120185

`eq[2, A316864(A055120(n))]`
-/

namespace A043518.P16579188714535120185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A055120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043518.P16579188714535120185

namespace A043518

/-- `eq[2, A316864(A055120(n))]` -/
def P16579188714535120185.Spec : Prop :=
  ∀ n, (P16579188714535120185.a n : ℤ) = A043518 (n + 1)

end A043518

/-! ## A043518.P17478239837040593349

`eq[2, A316863(A061601(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043518

/-- `eq[2, A316863(A061601(n))]` -/
def P17478239837040593349.Spec : Prop :=
  ∀ n, (P17478239837040593349.a n : ℤ) = A043518 (n + 1)

theorem P17478239837040593349.correct : P17478239837040593349.Spec := by
  intro n
  simp only [A043518, Nat.add_sub_cancel]

end A043518

/-! ## A043518.P1737293521511147215

`eq[2, A336396(A051801(n))]`
-/

namespace A043518.P1737293521511147215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043518.P1737293521511147215

namespace A043518

/-- `eq[2, A336396(A051801(n))]` -/
def P1737293521511147215.Spec : Prop :=
  ∀ n, (P1737293521511147215.a n : ℤ) = A043518 (n + 1)

end A043518

/-! ## A043518.P14431634153783717890

`eq[2, A268643(A222224(n))]`
-/

namespace A043518.P14431634153783717890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043518.P14431634153783717890

namespace A043518

/-- `eq[2, A268643(A222224(n))]` -/
def P14431634153783717890.Spec : Prop :=
  ∀ n, (P14431634153783717890.a n : ℤ) = A043518 (n + 1)

end A043518

/-! ## A043518.P12646778370875209511

`eq[A074458(n), A277116(A017281(n))]`
-/

namespace A043518.P12646778370875209511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043518.P12646778370875209511

namespace A043518

/-- `eq[A074458(n), A277116(A017281(n))]` -/
def P12646778370875209511.Spec : Prop :=
  ∀ n, (P12646778370875209511.a n : ℤ) = A043518 (n + 1)

end A043518

/-!
# A043520: Numbers having four 7's in base 10.

The programs for A043520, there is no canonical definition to state claims against.
-/

/-! ## A043520.P5587893806051928436

`A017353(A043519(n+1)*A055642(n))`
-/

namespace A043520.P5587893806051928436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A043519 (n + 1) * A055642 n).toNat

end

end A043520.P5587893806051928436

/-!
# A043521: Numbers having one 8 in base 10.

The programs for A043521, the canonical program `A043521.P8227327573089755904` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043521 has offset 1).

The definition of A043521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043521.P2113026383327124054

`eq[1, A102683(A048379(n))]`
-/

namespace A043521.P2113026383327124054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043521.P2113026383327124054

namespace A043521

/-- `eq[1, A102683(A048379(n))]` -/
def P2113026383327124054.Spec : Prop :=
  ∀ n, (P2113026383327124054.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P14667341400344672542

`eq[1, A102683(A222254(n))]`
-/

namespace A043521.P14667341400344672542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043521.P14667341400344672542

namespace A043521

/-- `eq[1, A102683(A222254(n))]` -/
def P14667341400344672542.Spec : Prop :=
  ∀ n, (P14667341400344672542.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P13719409499952504753

`eq[1, A268643(A061601(n))]`
-/

namespace A043521.P13719409499952504753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043521.P13719409499952504753

namespace A043521

/-- `eq[1, A268643(A061601(n))]` -/
def P13719409499952504753.Spec : Prop :=
  ∀ n, (P13719409499952504753.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P15231562515578664819

`eq[1, A316863(A055120(n))]`
-/

namespace A043521.P15231562515578664819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A055120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043521.P15231562515578664819

namespace A043521

/-- `eq[1, A316863(A055120(n))]` -/
def P15231562515578664819.Spec : Prop :=
  ∀ n, (P15231562515578664819.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P12916616799721674821

`eq[1, A102683(A306436(n))]`
-/

namespace A043521.P12916616799721674821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A306436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043521.P12916616799721674821

namespace A043521

/-- `eq[1, A102683(A306436(n))]` -/
def P12916616799721674821.Spec : Prop :=
  ∀ n, (P12916616799721674821.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P13027615474362258298

`eq[1, A316863(A222232(n))]`
-/

namespace A043521.P13027615474362258298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043521.P13027615474362258298

namespace A043521

/-- `eq[1, A316863(A222232(n))]` -/
def P13027615474362258298.Spec : Prop :=
  ∀ n, (P13027615474362258298.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P5986146578664381295

`eq[1, A316864(A222238(n))]`
-/

namespace A043521.P5986146578664381295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043521.P5986146578664381295

namespace A043521

/-- `eq[1, A316864(A222238(n))]` -/
def P5986146578664381295.Spec : Prop :=
  ∀ n, (P5986146578664381295.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P7688083429004101731

`eq[A005102(n), A316869(n)]`
-/

namespace A043521.P7688083429004101731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P7688083429004101731

namespace A043521

/-- `eq[A005102(n), A316869(n)]` -/
def P7688083429004101731.Spec : Prop :=
  ∀ n, (P7688083429004101731.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P5341673006813755857

`eq[A316869(n), A329684(n)]`
-/

namespace A043521.P5341673006813755857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P5341673006813755857

namespace A043521

/-- `eq[A316869(n), A329684(n)]` -/
def P5341673006813755857.Spec : Prop :=
  ∀ n, (P5341673006813755857.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P7416402673948509669

`eq[A316869(n), A373565(n)]`
-/

namespace A043521.P7416402673948509669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P7416402673948509669

namespace A043521

/-- `eq[A316869(n), A373565(n)]` -/
def P7416402673948509669.Spec : Prop :=
  ∀ n, (P7416402673948509669.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P8227327573089755904

`eq[A102683(n)+1, A102681(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043521

/-- `eq[A102683(n)+1, A102681(n)]` -/
def P8227327573089755904.Spec : Prop :=
  ∀ n, (P8227327573089755904.a n : ℤ) = A043521 (n + 1)

theorem P8227327573089755904.correct : P8227327573089755904.Spec := by
  intro n
  simp only [A043521, Nat.add_sub_cancel]

end A043521

/-! ## A043521.P14941840112146981976

`eq[A008461(n+1), A316869(n)]`
-/

namespace A043521.P14941840112146981976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P14941840112146981976

namespace A043521

/-- `eq[A008461(n+1), A316869(n)]` -/
def P14941840112146981976.Spec : Prop :=
  ∀ n, (P14941840112146981976.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P12122627923044538378

`eq[A045496(n+1), A316869(n)]`
-/

namespace A043521.P12122627923044538378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P12122627923044538378

namespace A043521

/-- `eq[A045496(n+1), A316869(n)]` -/
def P12122627923044538378.Spec : Prop :=
  ∀ n, (P12122627923044538378.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P6033709804426690790

`eq[A045497(n+1), A316869(n)]`
-/

namespace A043521.P6033709804426690790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P6033709804426690790

namespace A043521

/-- `eq[A045497(n+1), A316869(n)]` -/
def P6033709804426690790.Spec : Prop :=
  ∀ n, (P6033709804426690790.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P17752143614328055128

`eq[A059811(n+1), A316869(n)]`
-/

namespace A043521.P17752143614328055128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P17752143614328055128

namespace A043521

/-- `eq[A059811(n+1), A316869(n)]` -/
def P17752143614328055128.Spec : Prop :=
  ∀ n, (P17752143614328055128.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P13813653913159605176

`eq[A121273(n+1), A316869(n)]`
-/

namespace A043521.P13813653913159605176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P13813653913159605176

namespace A043521

/-- `eq[A121273(n+1), A316869(n)]` -/
def P13813653913159605176.Spec : Prop :=
  ∀ n, (P13813653913159605176.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P17153796690564179250

`eq[A125846(n+1), A316869(n)]`
-/

namespace A043521.P17153796690564179250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P17153796690564179250

namespace A043521

/-- `eq[A125846(n+1), A316869(n)]` -/
def P17153796690564179250.Spec : Prop :=
  ∀ n, (P17153796690564179250.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P11801993906412102206

`eq[A125847(n+1), A316869(n)]`
-/

namespace A043521.P11801993906412102206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P11801993906412102206

namespace A043521

/-- `eq[A125847(n+1), A316869(n)]` -/
def P11801993906412102206.Spec : Prop :=
  ∀ n, (P11801993906412102206.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P12703533060529636283

`eq[A171624(n+1), A316869(n)]`
-/

namespace A043521.P12703533060529636283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P12703533060529636283

namespace A043521

/-- `eq[A171624(n+1), A316869(n)]` -/
def P12703533060529636283.Spec : Prop :=
  ∀ n, (P12703533060529636283.a n : ℤ) = A043521 (n + 1)

end A043521

/-! ## A043521.P15399527003164679351

`eq[A283149(n+1), A316869(n)]`
-/

namespace A043521.P15399527003164679351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P15399527003164679351

namespace A043521

/-- `eq[A283149(n+1), A316869(n)]` -/
def P15399527003164679351.Spec : Prop :=
  ∀ n, (P15399527003164679351.a n : ℤ) = A043521 (n + 1)

end A043521

/-!
# A043522: Numbers having two 8's in base 10.

The programs for A043522, there is no canonical definition to state claims against.
-/

/-! ## A043522.P14415987681450575397

`eq[2, A102681(A001613(n))]`
-/

namespace A043522.P14415987681450575397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043522.P14415987681450575397

/-! ## A043522.P17858462127613429481

`eq[2, A102681(A004184(n))]`
-/

namespace A043522.P17858462127613429481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043522.P17858462127613429481

/-! ## A043522.P11602286087814432669

`eq[2, A102683(A048379(n))]`
-/

namespace A043522.P11602286087814432669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043522.P11602286087814432669

/-! ## A043522.P17171860904018344315

`eq[2, A102683(A222254(n))]`
-/

namespace A043522.P17171860904018344315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043522.P17171860904018344315

/-! ## A043522.P15883260855317154419

`eq[2, A102683(A306436(n))]`
-/

namespace A043522.P15883260855317154419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A306436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043522.P15883260855317154419

/-! ## A043522.P15718413672044080091

`eq[2, A316863(A222232(n))]`
-/

namespace A043522.P15718413672044080091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043522.P15718413672044080091

/-!
# A043525: Numbers having one 9 in base 10.

The programs for A043525, the canonical program `A043525.P5874819989311491830` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043525 has offset 1).

The definition of A043525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043525.P5874819989311491830

`eq[1, A102683(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043525

/-- `eq[1, A102683(n)]` -/
def P5874819989311491830.Spec : Prop :=
  ∀ n, (P5874819989311491830.a n : ℤ) = A043525 (n + 1)

theorem P5874819989311491830.correct : P5874819989311491830.Spec := by
  intro n
  simp only [A043525, Nat.add_sub_cancel]

end A043525

/-! ## A043525.P18029801749256479668

`eq[1, A268643(A222226(n))]`
-/

namespace A043525.P18029801749256479668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A222226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043525.P18029801749256479668

namespace A043525

/-- `eq[1, A268643(A222226(n))]` -/
def P18029801749256479668.Spec : Prop :=
  ∀ n, (P18029801749256479668.a n : ℤ) = A043525 (n + 1)

end A043525

/-! ## A043525.P13091216962101897188

`eq[A074458(n)+1, A010371(n)]`
-/

namespace A043525.P13091216962101897188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043525.P13091216962101897188

namespace A043525

/-- `eq[A074458(n)+1, A010371(n)]` -/
def P13091216962101897188.Spec : Prop :=
  ∀ n, (P13091216962101897188.a n : ℤ) = A043525 (n + 1)

end A043525

/-! ## A043525.P4800341145506437523

`eq[A277116(n)+1, A006942(n)]`
-/

namespace A043525.P4800341145506437523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043525.P4800341145506437523

namespace A043525

/-- `eq[A277116(n)+1, A006942(n)]` -/
def P4800341145506437523.Spec : Prop :=
  ∀ n, (P4800341145506437523.a n : ℤ) = A043525 (n + 1)

end A043525

/-! ## A043525.P14152939251425255148

`record[A011539(n+1)/A102683(A011539(n+1))]`
-/

namespace A043525.P14152939251425255148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011539 (n + 1) : ℚ) / (A102683 (A011539 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043525.P14152939251425255148

namespace A043525

/-- `record[A011539(n+1)/A102683(A011539(n+1))]` -/
def P14152939251425255148.Spec : Prop :=
  ∀ n, P14152939251425255148.a n = (A043525 (n + 1) : ℚ)

end A043525

/-! ## A043525.P4496885588929351754

`filter[A278029(n+1), A102683(#)]`
-/

namespace A043525.P4496885588929351754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102683 (f1 j).toNat = 1) n)

end

end A043525.P4496885588929351754

namespace A043525

/-- `filter[A278029(n+1), A102683(#)]` -/
def P4496885588929351754.Spec : Prop :=
  ∀ n, P4496885588929351754.a n = A043525 (n + 1)

end A043525

/-! ## A043525.P13862511233655037856

`A297109(p?[A008578(n+1)*A102683(n)])`
-/

namespace A043525.P13862511233655037856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A043525.P13862511233655037856

namespace A043525

/-- `A297109(p?[A008578(n+1)*A102683(n)])` -/
def P13862511233655037856.Spec : Prop :=
  ∀ n, P13862511233655037856.a n = A043525 (n + 1)

end A043525

/-! ## A043525.P10911309142460105384

`A055396(p?[A008578(n+1)*A102683(n)])`
-/

namespace A043525.P10911309142460105384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A043525.P10911309142460105384

namespace A043525

/-- `A055396(p?[A008578(n+1)*A102683(n)])` -/
def P10911309142460105384.Spec : Prop :=
  ∀ n, P10911309142460105384.a n = A043525 (n + 1)

end A043525

/-!
# A043526: Numbers having two 9's in base 10.

The programs for A043526, the canonical program `A043526.P11706733600893900756` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043526 has offset 1).

The definition of A043526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043526.P11706733600893900756

`eq[2, A102683(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043526

/-- `eq[2, A102683(n)]` -/
def P11706733600893900756.Spec : Prop :=
  ∀ n, (P11706733600893900756.a n : ℤ) = A043526 (n + 1)

theorem P11706733600893900756.correct : P11706733600893900756.Spec := by
  intro n
  simp only [A043526, Nat.add_sub_cancel]

end A043526

/-! ## A043526.P858230974783529897

`eq[2, A102681(A004183(n))]`
-/

namespace A043526.P858230974783529897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043526.P858230974783529897

namespace A043526

/-- `eq[2, A102681(A004183(n))]` -/
def P858230974783529897.Spec : Prop :=
  ∀ n, (P858230974783529897.a n : ℤ) = A043526 (n + 1)

end A043526

/-! ## A043526.P13177600594288479137

`eq[2, A102671(A064770(n))]`
-/

namespace A043526.P13177600594288479137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A064770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043526.P13177600594288479137

namespace A043526

/-- `eq[2, A102671(A064770(n))]` -/
def P13177600594288479137.Spec : Prop :=
  ∀ n, (P13177600594288479137.a n : ℤ) = A043526 (n + 1)

end A043526

/-! ## A043526.P5448569978504468099

`eq[2, A102681(A107128(n))]`
-/

namespace A043526.P5448569978504468099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A107128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043526.P5448569978504468099

namespace A043526

/-- `eq[2, A102681(A107128(n))]` -/
def P5448569978504468099.Spec : Prop :=
  ∀ n, (P5448569978504468099.a n : ℤ) = A043526 (n + 1)

end A043526

/-! ## A043526.P5017779320438689070

`eq[2, A102681(A235049(n))]`
-/

namespace A043526.P5017779320438689070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043526.P5017779320438689070

namespace A043526

/-- `eq[2, A102681(A235049(n))]` -/
def P5017779320438689070.Spec : Prop :=
  ∀ n, (P5017779320438689070.a n : ℤ) = A043526 (n + 1)

end A043526

/-! ## A043526.P15928640106128046054

`eq[2, A316864(A222239(n))]`
-/

namespace A043526.P15928640106128046054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043526.P15928640106128046054

namespace A043526

/-- `eq[2, A316864(A222239(n))]` -/
def P15928640106128046054.Spec : Prop :=
  ∀ n, (P15928640106128046054.a n : ℤ) = A043526 (n + 1)

end A043526

/-!
# A043527: Numbers having three 9's in base 10.

The programs for A043527, there is no canonical definition to state claims against.
-/

/-! ## A043527.P13372714761002187431

`A292739(A077168(n)+28)`
-/

namespace A043527.P13372714761002187431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (A077168 n + 28).toNat

end

end A043527.P13372714761002187431

/-!
# A043528: Numbers having four 9's in base 10.

The programs for A043528, there is no canonical definition to state claims against.
-/

/-! ## A043528.P12122082019716120957

`A017377(A043527(n+1))`
-/

namespace A043528.P12122082019716120957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A043527 (n + 1)).toNat

end

end A043528.P12122082019716120957

/-! ## A043528.P305707498753240630

`A190876(A043527(n+1)+9)`
-/

namespace A043528.P305707498753240630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (A043527 (n + 1) + 9).toNat

end

end A043528.P305707498753240630

/-!
# A043529: Number of distinct base-2 digits of n.

The programs for A043529, the canonical program `A043529.P13978693915657788930` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043529 has offset 0).

The definition of A043529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A043529.P13978693915657788930

`2-A036987(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043529

/-- `2-A036987(n)` -/
def P13978693915657788930.Spec : Prop :=
  ∀ n, P13978693915657788930.a n = A043529 n

theorem P13978693915657788930.correct : P13978693915657788930.Spec := by
  intro n
  simp only [A043529]

end A043529

/-! ## A043529.P17481934508128363654

`2-Δ[fp[2^n]]`
-/

namespace A043529.P17481934508128363654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A043529.P17481934508128363654

namespace A043529

/-- `2-Δ[fp[2^n]]` -/
def P17481934508128363654.Spec : Prop :=
  ∀ n, P17481934508128363654.a n = A043529 n

end A043529

/-! ## A043529.P1212187325397596738

`2-char[2^n-1]`
-/

namespace A043529.P1212187325397596738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A043529.P1212187325397596738

namespace A043529

/-- `2-char[2^n-1]` -/
def P1212187325397596738.Spec : Prop :=
  ∀ n, P1212187325397596738.a n = A043529 n

end A043529

/-! ## A043529.P13911047107818919437

`(2%∏{p}[1+n, #])!`
-/

namespace A043529.P13911047107818919437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A043529.P13911047107818919437

namespace A043529

/-- `(2%∏{p}[1+n, #])!` -/
def P13911047107818919437.Spec : Prop :=
  ∀ n, (P13911047107818919437.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P5194949442144617759

`gcd(2, Δ[ceil(log2(n+1))])`
-/

namespace A043529.P5194949442144617759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A043529.P5194949442144617759

namespace A043529

/-- `gcd(2, Δ[ceil(log2(n+1))])` -/
def P5194949442144617759.Spec : Prop :=
  ∀ n, (P5194949442144617759.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P15290392283760115852

`ceil(atan(and(n, n+1)))!`
-/

namespace A043529.P15290392283760115852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈Real.arctan (Nat.land n (n + 1) : ℝ)⌉.toNat

end

end A043529.P15290392283760115852

namespace A043529

/-- `ceil(atan(and(n, n+1)))!` -/
def P15290392283760115852.Spec : Prop :=
  ∀ n, (P15290392283760115852.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P8743470803124804623

`ceil(atan(∏{p}[n+1, sqrt(#)]))`
-/

namespace A043529.P8743470803124804623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (p : ℝ))⌉

end

end A043529.P8743470803124804623

namespace A043529

/-- `ceil(atan(∏{p}[n+1, sqrt(#)]))` -/
def P8743470803124804623.Spec : Prop :=
  ∀ n, P8743470803124804623.a n = A043529 n

end A043529

/-! ## A043529.P6338516533824702261

`round(atan(∏{p}[n+1, #])²)`
-/

namespace A043529.P6338516533824702261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ 2)

end

end A043529.P6338516533824702261

namespace A043529

/-- `round(atan(∏{p}[n+1, #])²)` -/
def P6338516533824702261.Spec : Prop :=
  ∀ n, P6338516533824702261.a n = A043529 n

end A043529

/-! ## A043529.P16327843076467094457

`ceil(cosh(sin(and(n, n+1))))`
-/

namespace A043529.P16327843076467094457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (Nat.land n (n + 1) : ℝ))⌉

end

end A043529.P16327843076467094457

namespace A043529

/-- `ceil(cosh(sin(and(n, n+1))))` -/
def P16327843076467094457.Spec : Prop :=
  ∀ n, P16327843076467094457.a n = A043529 n

end A043529

/-! ## A043529.P9078866973318011441

`ceil(acot(Δ[ceil(log2(n+1))]))`
-/

namespace A043529.P9078866973318011441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A043529.P9078866973318011441

namespace A043529

/-- `ceil(acot(Δ[ceil(log2(n+1))]))` -/
def P9078866973318011441.Spec : Prop :=
  ∀ n, P9078866973318011441.a n = A043529 n

end A043529

/-! ## A043529.P5451589241179099460

`round(sinh(atan(∏{p}[n+1, #])))`
-/

namespace A043529.P5451589241179099460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)))

end

end A043529.P5451589241179099460

namespace A043529

/-- `round(sinh(atan(∏{p}[n+1, #])))` -/
def P5451589241179099460.Spec : Prop :=
  ∀ n, P5451589241179099460.a n = A043529 n

end A043529

/-! ## A043529.P17214743741156476614

`∏{p}[and(n, n+1), #]%4`
-/

namespace A043529.P17214743741156476614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) % 4

end

end A043529.P17214743741156476614

namespace A043529

/-- `∏{p}[and(n, n+1), #]%4` -/
def P17214743741156476614.Spec : Prop :=
  ∀ n, (P17214743741156476614.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P1477880686689002757

`and(3, ∏{p}[and(n, n+1), #])`
-/

namespace A043529.P1477880686689002757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A043529.P1477880686689002757

namespace A043529

/-- `and(3, ∏{p}[and(n, n+1), #])` -/
def P1477880686689002757.Spec : Prop :=
  ∀ n, (P1477880686689002757.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P13077034647645702548

`(2-∏{p}[n+1, val(#, 2)])!`
-/

namespace A043529.P13077034647645702548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)).toNat

end

end A043529.P13077034647645702548

namespace A043529

/-- `(2-∏{p}[n+1, val(#, 2)])!` -/
def P13077034647645702548.Spec : Prop :=
  ∀ n, (P13077034647645702548.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P13530355186585530311

`(2-C(2, ∑{p}[n+1, #]))!`
-/

namespace A043529.P13530355186585530311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p) : ℤ)).toNat

end

end A043529.P13530355186585530311

namespace A043529

/-- `(2-C(2, ∑{p}[n+1, #]))!` -/
def P13530355186585530311.Spec : Prop :=
  ∀ n, (P13530355186585530311.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P11650880447690301726

`(2-C(2, ∏{p}[n+1, #]))!`
-/

namespace A043529.P11650880447690301726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)).toNat

end

end A043529.P11650880447690301726

namespace A043529

/-- `(2-C(2, ∏{p}[n+1, #]))!` -/
def P11650880447690301726.Spec : Prop :=
  ∀ n, (P11650880447690301726.a n : ℤ) = A043529 n

end A043529

/-! ## A043529.P6993748324671995435

`floor(3^(n/or(n, n+1)))`
-/

namespace A043529.P6993748324671995435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ ((n : ℚ) / (Nat.lor n (n + 1) : ℚ) : ℝ)⌋

end

end A043529.P6993748324671995435

namespace A043529

/-- `floor(3^(n/or(n, n+1)))` -/
def P6993748324671995435.Spec : Prop :=
  ∀ n, P6993748324671995435.a n = A043529 n

end A043529

/-! ## A043529.P2276996545042310717

`round(2^(n/or(n, n+1)))`
-/

namespace A043529.P2276996545042310717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / (Nat.lor n (n + 1) : ℚ) : ℝ))

end

end A043529.P2276996545042310717

namespace A043529

/-- `round(2^(n/or(n, n+1)))` -/
def P2276996545042310717.Spec : Prop :=
  ∀ n, P2276996545042310717.a n = A043529 n

end A043529

/-! ## A043529.P11272659075804696461

`round(acot(Δ[floor(log2(2*n+1))]))`
-/

namespace A043529.P11272659075804696461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))

end

end A043529.P11272659075804696461

namespace A043529

/-- `round(acot(Δ[floor(log2(2*n+1))]))` -/
def P11272659075804696461.Spec : Prop :=
  ∀ n, P11272659075804696461.a n = A043529 n

end A043529

/-! ## A043529.P3322439177939867245

`ceil(ϕ-∏{p}[n+1, ϕ/#])`
-/

namespace A043529.P3322439177939867245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio - ∏ p ∈ Nat.primeFactors (f1 n), Real.goldenRatio / (p : ℝ)⌉

end

end A043529.P3322439177939867245

namespace A043529

/-- `ceil(ϕ-∏{p}[n+1, ϕ/#])` -/
def P3322439177939867245.Spec : Prop :=
  ∀ n, P3322439177939867245.a n = A043529 n

end A043529

/-!
# A043530: Number of distinct base-3 digits of n.

The programs for A043530, there is no canonical definition to state claims against.
-/

/-! ## A043530.P1317281229012801441

`A043555(A319651(n+1))`
-/

namespace A043530.P1317281229012801441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (A319651 (n + 1)).toNat

end

end A043530.P1317281229012801441

/-! ## A043530.P10959522006433754541

`A043531(A023717(n+1))`
-/

namespace A043530.P10959522006433754541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A023717 (n + 1)).toNat

end

end A043530.P10959522006433754541

/-! ## A043530.P3669091103630490502

`A043532(A037453(n+1))`
-/

namespace A043530.P3669091103630490502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A037453 (n + 1)).toNat

end

end A043530.P3669091103630490502

/-! ## A043530.P16458319236208397873

`A043533(A037454(n+1))`
-/

namespace A043530.P16458319236208397873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A037454 (n + 1)).toNat

end

end A043530.P16458319236208397873

/-! ## A043530.P8414059886235449996

`A043536(A037314(n+1))`
-/

namespace A043530.P8414059886235449996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A037314 (n + 1)).toNat

end

end A043530.P8414059886235449996

/-! ## A043530.P1730942629438543087

`A043534(A037455(n+1))`
-/

namespace A043530.P1730942629438543087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A037455 (n + 1)).toNat

end

end A043530.P1730942629438543087

/-! ## A043530.P12719712055905569803

`A043535(A037456(n+1))`
-/

namespace A043530.P12719712055905569803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A037456 (n + 1)).toNat

end

end A043530.P12719712055905569803

/-! ## A043530.P288023771883949875

`A043537(A007089(n+1))`
-/

namespace A043530.P288023771883949875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A007089 (n + 1)).toNat

end

end A043530.P288023771883949875

/-!
# A043531: Number of distinct base-4 digits of n.

The programs for A043531, there is no canonical definition to state claims against.
-/

/-! ## A043531.P7184096612499359540

`A043556(A319720(n+1))`
-/

namespace A043531.P7184096612499359540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A319720 (n + 1)).toNat

end

end A043531.P7184096612499359540

/-! ## A043531.P2692644153169156660

`A043532(A037459(1+n))`
-/

namespace A043531.P2692644153169156660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A037459 (1 + n)).toNat

end

end A043531.P2692644153169156660

/-! ## A043531.P2880352434829378436

`A043533(A037460(n+1))`
-/

namespace A043531.P2880352434829378436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A037460 (n + 1)).toNat

end

end A043531.P2880352434829378436

/-! ## A043531.P8481186737747505760

`A043536(A037463(n+1))`
-/

namespace A043531.P8481186737747505760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A037463 (n + 1)).toNat

end

end A043531.P8481186737747505760

/-! ## A043531.P12485359675786047073

`A043534(A037461(n+1))`
-/

namespace A043531.P12485359675786047073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A037461 (n + 1)).toNat

end

end A043531.P12485359675786047073

/-! ## A043531.P9414637827510617302

`A043535(A037462(n+1))`
-/

namespace A043531.P9414637827510617302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A037462 (n + 1)).toNat

end

end A043531.P9414637827510617302

/-! ## A043531.P2322886427637377594

`A043537(A007090(n+1))`
-/

namespace A043531.P2322886427637377594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A007090 (n + 1)).toNat

end

end A043531.P2322886427637377594

/-! ## A043531.P6327014719607956110

`A043543(A000695(n+1))`
-/

namespace A043531.P6327014719607956110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043543 (A000695 (n + 1)).toNat

end

end A043531.P6327014719607956110

/-!
# A043532: Number of distinct base-5 digits of n.

The programs for A043532, the canonical program `A043532.P4674233066012776385` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043532 has offset 1).

The definition of A043532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043532.P1815237811242593955

`A043533(A037465(1+n))`
-/

namespace A043532.P1815237811242593955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A037465 (1 + n)).toNat

end

end A043532.P1815237811242593955

namespace A043532

/-- `A043533(A037465(1+n))` -/
def P1815237811242593955.Spec : Prop :=
  ∀ n, P1815237811242593955.a n = A043532 (n + 1)

end A043532

/-! ## A043532.P4674233066012776385

`A043536(A037468(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043532

/-- `A043536(A037468(1+n))` -/
def P4674233066012776385.Spec : Prop :=
  ∀ n, P4674233066012776385.a n = A043532 (n + 1)

theorem P4674233066012776385.correct : P4674233066012776385.Spec := by
  intro n
  simp only [A043532, Nat.add_sub_cancel]

end A043532

/-! ## A043532.P6359965009845026721

`A043557(A319722(n+1))`
-/

namespace A043532.P6359965009845026721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A319722 (n + 1)).toNat

end

end A043532.P6359965009845026721

namespace A043532

/-- `A043557(A319722(n+1))` -/
def P6359965009845026721.Spec : Prop :=
  ∀ n, P6359965009845026721.a n = A043532 (n + 1)

end A043532

/-! ## A043532.P11582919454227858315

`A043534(A037466(n+1))`
-/

namespace A043532.P11582919454227858315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A037466 (n + 1)).toNat

end

end A043532.P11582919454227858315

namespace A043532

/-- `A043534(A037466(n+1))` -/
def P11582919454227858315.Spec : Prop :=
  ∀ n, P11582919454227858315.a n = A043532 (n + 1)

end A043532

/-! ## A043532.P2651772380624442325

`A043535(A037467(n+1))`
-/

namespace A043532.P2651772380624442325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A037467 (n + 1)).toNat

end

end A043532.P2651772380624442325

namespace A043532

/-- `A043535(A037467(n+1))` -/
def P2651772380624442325.Spec : Prop :=
  ∀ n, P2651772380624442325.a n = A043532 (n + 1)

end A043532

/-! ## A043532.P16866775970292233936

`A043537(A007091(n+1))`
-/

namespace A043532.P16866775970292233936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A007091 (n + 1)).toNat

end

end A043532.P16866775970292233936

namespace A043532

/-- `A043537(A007091(n+1))` -/
def P16866775970292233936.Spec : Prop :=
  ∀ n, P16866775970292233936.a n = A043532 (n + 1)

end A043532

/-!
# A043533: Number of distinct base-6 digits of n.

The programs for A043533, the canonical program `A043533.P1309831522264777739` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043533 has offset 1).

The definition of A043533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043533.P1309831522264777739

`A043536(A037472(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043533

/-- `A043536(A037472(1+n))` -/
def P1309831522264777739.Spec : Prop :=
  ∀ n, P1309831522264777739.a n = A043533 (n + 1)

theorem P1309831522264777739.correct : P1309831522264777739.Spec := by
  intro n
  simp only [A043533, Nat.add_sub_cancel]

end A043533

/-! ## A043533.P5745403916044671119

`A043558(A319723(n+1))`
-/

namespace A043533.P5745403916044671119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A319723 (n + 1)).toNat

end

end A043533.P5745403916044671119

namespace A043533

/-- `A043558(A319723(n+1))` -/
def P5745403916044671119.Spec : Prop :=
  ∀ n, P5745403916044671119.a n = A043533 (n + 1)

end A043533

/-! ## A043533.P13187929250559118301

`A043534(A020657(n+2))`
-/

namespace A043533.P13187929250559118301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A020657 (n + 2)).toNat

end

end A043533.P13187929250559118301

namespace A043533

/-- `A043534(A020657(n+2))` -/
def P13187929250559118301.Spec : Prop :=
  ∀ n, P13187929250559118301.a n = A043533 (n + 1)

end A043533

/-! ## A043533.P10097812374509831765

`A043535(A037471(n+1))`
-/

namespace A043533.P10097812374509831765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A037471 (n + 1)).toNat

end

end A043533.P10097812374509831765

namespace A043533

/-- `A043535(A037471(n+1))` -/
def P10097812374509831765.Spec : Prop :=
  ∀ n, P10097812374509831765.a n = A043533 (n + 1)

end A043533

/-! ## A043533.P16096220167717543495

`A043537(A007092(n+1))`
-/

namespace A043533.P16096220167717543495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A007092 (n + 1)).toNat

end

end A043533.P16096220167717543495

namespace A043533

/-- `A043537(A007092(n+1))` -/
def P16096220167717543495.Spec : Prop :=
  ∀ n, P16096220167717543495.a n = A043533 (n + 1)

end A043533

/-! ## A043533.P16408675008039053508

`A043538(A212495(n+2)/2)`
-/

namespace A043533.P16408675008039053508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043538 (SequenceMachineLib.roundAway ((A212495 (n + 2) : ℚ) / 2)).toNat

end

end A043533.P16408675008039053508

namespace A043533

/-- `A043538(A212495(n+2)/2)` -/
def P16408675008039053508.Spec : Prop :=
  ∀ n, P16408675008039053508.a n = A043533 (n + 1)

end A043533

/-! ## A043533.P6981214828943049123

`A043538(A212495(n+2))`
-/

namespace A043533.P6981214828943049123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043538 (A212495 (n + 2)).toNat

end

end A043533.P6981214828943049123

namespace A043533

/-- `A043538(A212495(n+2))` -/
def P6981214828943049123.Spec : Prop :=
  ∀ n, P6981214828943049123.a n = A043533 (n + 1)

end A043533

/-!
# A043534: Number of distinct base-7 digits of n.

The programs for A043534, the canonical program `A043534.P10168842383270517268` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043534 has offset 1).

The definition of A043534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043534.P10168842383270517268

`A043537(A007093(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A043534

/-- `A043537(A007093(n+1))` -/
def P10168842383270517268.Spec : Prop :=
  ∀ n, P10168842383270517268.a n = A043534 (n + 1)

theorem P10168842383270517268.correct : P10168842383270517268.Spec := by
  intro n
  simp only [A043534, Nat.add_sub_cancel]

end A043534

/-! ## A043534.P6962115742378082533

`A164886(A164994((n+1)*A165071(n+1)))`
-/

namespace A043534.P6962115742378082533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A164994 ((n + 1 : ℤ) * A165071 (n + 1)).toNat).toNat

end

end A043534.P6962115742378082533

namespace A043534

/-- `A164886(A164994((n+1)*A165071(n+1)))` -/
def P6962115742378082533.Spec : Prop :=
  ∀ n, P6962115742378082533.a n = A043534 (n + 1)

end A043534

/-! ## A043534.P15587368803357574471

`A164886(A165071(n+1)²)`
-/

namespace A043534.P15587368803357574471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A165071 (n + 1) ^ 2).toNat

end

end A043534.P15587368803357574471

namespace A043534

/-- `A164886(A165071(n+1)²)` -/
def P15587368803357574471.Spec : Prop :=
  ∀ n, P15587368803357574471.a n = A043534 (n + 1)

end A043534

/-! ## A043534.P15095729926847340042

`gcd(A044929(n+1), A260329(n+2))`
-/

namespace A043534.P15095729926847340042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044929 (n + 1)) (A260329 (n + 2))

end

end A043534.P15095729926847340042

namespace A043534

/-- `gcd(A044929(n+1), A260329(n+2))` -/
def P15095729926847340042.Spec : Prop :=
  ∀ n, (P15095729926847340042.a n : ℤ) = A043534 (n + 1)

end A043534

/-!
# A043535: Number of distinct base-8 digits of n.

The programs for A043535, the canonical program `A043535.P3120290031313776565` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043535 has offset 1).

The definition of A043535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043535.P3120290031313776565

`A043536(A037477(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043535

/-- `A043536(A037477(n+1))` -/
def P3120290031313776565.Spec : Prop :=
  ∀ n, P3120290031313776565.a n = A043535 (n + 1)

theorem P3120290031313776565.correct : P3120290031313776565.Spec := by
  intro n
  simp only [A043535, Nat.add_sub_cancel]

end A043535

/-! ## A043535.P3453711612050627568

`A043537(A007094(n+1))`
-/

namespace A043535.P3453711612050627568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A007094 (n + 1)).toNat

end

end A043535.P3453711612050627568

namespace A043535

/-- `A043537(A007094(n+1))` -/
def P3453711612050627568.Spec : Prop :=
  ∀ n, P3453711612050627568.a n = A043535 (n + 1)

end A043535

/-!
# A043536: Number of distinct base-9 digits of n.

The programs for A043536, the canonical program `A043536.P7775098042189212776` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043536 has offset 1).

The definition of A043536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043536.P7775098042189212776

`A043537(A007095(1+n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A043536

/-- `A043537(A007095(1+n))` -/
def P7775098042189212776.Spec : Prop :=
  ∀ n, P7775098042189212776.a n = A043536 (n + 1)

theorem P7775098042189212776.correct : P7775098042189212776.Spec := by
  intro n
  simp only [A043536, Nat.add_sub_cancel]

end A043536

/-! ## A043536.P978687884659190933

`A098378((n+1)*A160094(n+2))`
-/

namespace A043536.P978687884659190933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 ((n + 1 : ℤ) * A160094 (n + 2)).toNat

end

end A043536.P978687884659190933

namespace A043536

/-- `A098378((n+1)*A160094(n+2))` -/
def P978687884659190933.Spec : Prop :=
  ∀ n, P978687884659190933.a n = A043536 (n + 1)

end A043536

/-! ## A043536.P16417773882172248294

`A043561(A160755(n+2))`
-/

namespace A043536.P16417773882172248294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A160755 (n + 2)).toNat

end

end A043536.P16417773882172248294

namespace A043536

/-- `A043561(A160755(n+2))` -/
def P16417773882172248294.Spec : Prop :=
  ∀ n, P16417773882172248294.a n = A043536 (n + 1)

end A043536

/-! ## A043536.P26238101510619962

`A071292(A242459(n+1))`
-/

namespace A043536.P26238101510619962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071292 (A242459 (n + 1)).toNat

end

end A043536.P26238101510619962

namespace A043536

/-- `A071292(A242459(n+1))` -/
def P26238101510619962.Spec : Prop :=
  ∀ n, P26238101510619962.a n = A043536 (n + 1)

end A043536

/-!
# A043537: Number of distinct base-10 digits of n.

The programs for A043537, the canonical program `A043537.P5563663715344268017` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043537 has offset 1).

The definition of A043537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043537.P5563663715344268017

`∑{digits}[∑{digits}[n+1, 10^#], A318442(#+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043537

/-- `∑{digits}[∑{digits}[n+1, 10^#], A318442(#+1)]` -/
def P5563663715344268017.Spec : Prop :=
  ∀ n, P5563663715344268017.a n = A043537 (n + 1)

theorem P5563663715344268017.correct : P5563663715344268017.Spec := by
  intro n
  simp only [A043537, Nat.add_sub_cancel]

end A043537

/-! ## A043537.P15971359905679781960

`A043562(A004186(n+1))`
-/

namespace A043537.P15971359905679781960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A004186 (n + 1)).toNat

end

end A043537.P15971359905679781960

namespace A043537

/-- `A043562(A004186(n+1))` -/
def P15971359905679781960.Spec : Prop :=
  ∀ n, P15971359905679781960.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P12639626164695931497

`A000120(A086066(1+n))`
-/

namespace A043537.P12639626164695931497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086066 (1 + n)).toNat

end

end A043537.P12639626164695931497

namespace A043537

/-- `A000120(A086066(1+n))` -/
def P12639626164695931497.Spec : Prop :=
  ∀ n, P12639626164695931497.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P17814173726745322235

`A055642(A137564(n+1))`
-/

namespace A043537.P17814173726745322235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A137564 (n + 1)).toNat

end

end A043537.P17814173726745322235

namespace A043537

/-- `A055642(A137564(n+1))` -/
def P17814173726745322235.Spec : Prop :=
  ∀ n, P17814173726745322235.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P14094445274017333763

`∑{e}[∏{digits}[n+1, A000040(#+1)], A331970(#+1)]`
-/

namespace A043537.P14094445274017333763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A000040 (x + 1)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331970 (Nat.factorization (f1 n).natAbs p + 1)

end

end A043537.P14094445274017333763

namespace A043537

/-- `∑{e}[∏{digits}[n+1, A000040(#+1)], A331970(#+1)]` -/
def P14094445274017333763.Spec : Prop :=
  ∀ n, P14094445274017333763.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P16370707059330805119

`dr(A086067(n+1))`
-/

namespace A043537.P16370707059330805119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086067 (n + 1))

end

end A043537.P16370707059330805119

namespace A043537

/-- `dr(A086067(n+1))` -/
def P16370707059330805119.Spec : Prop :=
  ∀ n, (P16370707059330805119.a n : ℤ) = A043537 (n + 1)

end A043537

/-! ## A043537.P837374481832240171

`A001221(∏{digits}[n+1, A000040(#+1)])`
-/

namespace A043537.P837374481832240171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000040 (x + 1)).prod.toNat

end

end A043537.P837374481832240171

namespace A043537

/-- `A001221(∏{digits}[n+1, A000040(#+1)])` -/
def P837374481832240171.Spec : Prop :=
  ∀ n, P837374481832240171.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P11960453773536103005

`A076489(10*(1+n))`
-/

namespace A043537.P11960453773536103005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (10 * (1 + n))

end

end A043537.P11960453773536103005

namespace A043537

/-- `A076489(10*(1+n))` -/
def P11960453773536103005.Spec : Prop :=
  ∀ n, P11960453773536103005.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P12080854135962540579

`A101598(∑[n+1]+1)`
-/

namespace A043537.P12080854135962540579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101598 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A043537.P12080854135962540579

namespace A043537

/-- `A101598(∑[n+1]+1)` -/
def P12080854135962540579.Spec : Prop :=
  ∀ n, P12080854135962540579.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P6967243238959884610

`A211665(A196222(n+1)²)`
-/

namespace A043537.P6967243238959884610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211665 (A196222 (n + 1) ^ 2).toNat

end

end A043537.P6967243238959884610

namespace A043537

/-- `A211665(A196222(n+1)²)` -/
def P6967243238959884610.Spec : Prop :=
  ∀ n, P6967243238959884610.a n = A043537 (n + 1)

end A043537

/-! ## A043537.P8757255271598636110

`A032548(A045918(n+1))`
-/

namespace A043537.P8757255271598636110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A045918 (n + 1)).toNat

end

end A043537.P8757255271598636110

namespace A043537

/-- `A032548(A045918(n+1))` -/
def P8757255271598636110.Spec : Prop :=
  ∀ n, P8757255271598636110.a n = A043537 (n + 1)

end A043537

/-!
# A043545: (Maximal base-2 digit of n) - (minimal base-2 digit of n).

The programs for A043545, the canonical program `A043545.P6199121594405564387` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043545 has offset 0).

The definition of A043545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A043545.P6199121594405564387

`1-A036987(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043545

/-- `1-A036987(n)` -/
def P6199121594405564387.Spec : Prop :=
  ∀ n, P6199121594405564387.a n = A043545 n

theorem P6199121594405564387.correct : P6199121594405564387.Spec := by
  intro n
  simp only [A043545]

end A043545

/-! ## A043545.P15506625673563595742

`(1+(-1)^C(n, floor(n/2)))/2`
-/

namespace A043545.P15506625673563595742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 2

end

end A043545.P15506625673563595742

namespace A043545

/-- `(1+(-1)^C(n, floor(n/2)))/2` -/
def P15506625673563595742.Spec : Prop :=
  ∀ n, P15506625673563595742.a n = (A043545 n : ℚ)

end A043545

/-! ## A043545.P13725076330773255228

`Δ[fp[comp[2^n]]]`
-/

namespace A043545.P13725076330773255228
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A043545.P13725076330773255228

namespace A043545

/-- `Δ[fp[comp[2^n]]]` -/
def P13725076330773255228.Spec : Prop :=
  ∀ n, P13725076330773255228.a n = A043545 n

end A043545

/-! ## A043545.P16034920292734755796

`char[comp[2^n-1]]`
-/

namespace A043545.P16034920292734755796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A043545.P16034920292734755796

namespace A043545

/-- `char[comp[2^n-1]]` -/
def P16034920292734755796.Spec : Prop :=
  ∀ n, (P16034920292734755796.a n : ℤ) = A043545 n

end A043545

/-! ## A043545.P17286736881781975261

`1-Δ[fp[2^n]]`
-/

namespace A043545.P17286736881781975261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A043545.P17286736881781975261

namespace A043545

/-- `1-Δ[fp[2^n]]` -/
def P17286736881781975261.Spec : Prop :=
  ∀ n, P17286736881781975261.a n = A043545 n

end A043545

/-! ## A043545.P18062493605616785497

`floor(atan(and(n, n+1)))`
-/

namespace A043545.P18062493605616785497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Nat.land n (n + 1) : ℝ)⌋

end

end A043545.P18062493605616785497

namespace A043545

/-- `floor(atan(and(n, n+1)))` -/
def P18062493605616785497.Spec : Prop :=
  ∀ n, P18062493605616785497.a n = A043545 n

end A043545

/-! ## A043545.P496277075884959954

`xor(1, char[2^n-1])`
-/

namespace A043545.P496277075884959954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A043545.P496277075884959954

namespace A043545

/-- `xor(1, char[2^n-1])` -/
def P496277075884959954.Spec : Prop :=
  ∀ n, (P496277075884959954.a n : ℤ) = A043545 n

end A043545

/-! ## A043545.P4694911048621847267

`round(n/or(n, n+1))`
-/

namespace A043545.P4694911048621847267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Nat.lor n (n + 1) : ℚ))

end

end A043545.P4694911048621847267

namespace A043545

/-- `round(n/or(n, n+1))` -/
def P4694911048621847267.Spec : Prop :=
  ∀ n, P4694911048621847267.a n = A043545 n

end A043545

/-! ## A043545.P2557223076129871441

`ceil(abs(sin(and(n, n+1))))`
-/

namespace A043545.P2557223076129871441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (Nat.land n (n + 1) : ℝ)|⌉

end

end A043545.P2557223076129871441

namespace A043545

/-- `ceil(abs(sin(and(n, n+1))))` -/
def P2557223076129871441.Spec : Prop :=
  ∀ n, P2557223076129871441.a n = A043545 n

end A043545

/-! ## A043545.P4994300791157304301

`ceil(sin(and(n, n+1))²)`
-/

namespace A043545.P4994300791157304301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Nat.land n (n + 1) : ℝ) ^ 2⌉

end

end A043545.P4994300791157304301

namespace A043545

/-- `ceil(sin(and(n, n+1))²)` -/
def P4994300791157304301.Spec : Prop :=
  ∀ n, P4994300791157304301.a n = A043545 n

end A043545

/-! ## A043545.P8359926662189465539

`ceil(tanh(sqrt(and(n, n+1))))`
-/

namespace A043545.P8359926662189465539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (Real.sqrt (Nat.land n (n + 1) : ℝ))⌉

end

end A043545.P8359926662189465539

namespace A043545

/-- `ceil(tanh(sqrt(and(n, n+1))))` -/
def P8359926662189465539.Spec : Prop :=
  ∀ n, P8359926662189465539.a n = A043545 n

end A043545

/-! ## A043545.P275007433334235425

`round(tanh(sqrt(and(n, n+1))))`
-/

namespace A043545.P275007433334235425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (Real.sqrt (Nat.land n (n + 1) : ℝ)))

end

end A043545.P275007433334235425

namespace A043545

/-- `round(tanh(sqrt(and(n, n+1))))` -/
def P275007433334235425.Spec : Prop :=
  ∀ n, P275007433334235425.a n = A043545 n

end A043545

/-! ## A043545.P13405385812169186944

`round(atan(dr(and(n, n+1))))`
-/

namespace A043545.P13405385812169186944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (SequenceMachineLib.digitalRoot (Nat.land n (n + 1) : ℤ) : ℝ))

end

end A043545.P13405385812169186944

namespace A043545

/-- `round(atan(dr(and(n, n+1))))` -/
def P13405385812169186944.Spec : Prop :=
  ∀ n, P13405385812169186944.a n = A043545 n

end A043545

/-! ## A043545.P2041586609784610202

`ceil(tanh(dr(and(n, n+1))))`
-/

namespace A043545.P2041586609784610202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (SequenceMachineLib.digitalRoot (Nat.land n (n + 1) : ℤ) : ℝ)⌉

end

end A043545.P2041586609784610202

namespace A043545

/-- `ceil(tanh(dr(and(n, n+1))))` -/
def P2041586609784610202.Spec : Prop :=
  ∀ n, P2041586609784610202.a n = A043545 n

end A043545

/-! ## A043545.P15889087119782353308

`round(tanh(dr(and(n, n+1))))`
-/

namespace A043545.P15889087119782353308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (SequenceMachineLib.digitalRoot (Nat.land n (n + 1) : ℤ) : ℝ))

end

end A043545.P15889087119782353308

namespace A043545

/-- `round(tanh(dr(and(n, n+1))))` -/
def P15889087119782353308.Spec : Prop :=
  ∀ n, P15889087119782353308.a n = A043545 n

end A043545

/-! ## A043545.P16504239387056636273

`1-∏{p}[n+1, val(#, 2)]`
-/

namespace A043545.P16504239387056636273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A043545.P16504239387056636273

namespace A043545

/-- `1-∏{p}[n+1, val(#, 2)]` -/
def P16504239387056636273.Spec : Prop :=
  ∀ n, P16504239387056636273.a n = A043545 n

end A043545

/-! ## A043545.P13112182456878700183

`2%∏{p}[n+1, #]/2`
-/

namespace A043545.P13112182456878700183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 % (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / 2

end

end A043545.P13112182456878700183

namespace A043545

/-- `2%∏{p}[n+1, #]/2` -/
def P13112182456878700183.Spec : Prop :=
  ∀ n, P13112182456878700183.a n = (A043545 n : ℚ)

end A043545

/-! ## A043545.P7263206283167121947

`1-C(2, ∑{p}[n+1, #])`
-/

namespace A043545.P7263206283167121947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A043545.P7263206283167121947

namespace A043545

/-- `1-C(2, ∑{p}[n+1, #])` -/
def P7263206283167121947.Spec : Prop :=
  ∀ n, P7263206283167121947.a n = A043545 n

end A043545

/-! ## A043545.P2425720361100119047

`1-∏{p}[n+1, C(2, #)]`
-/

namespace A043545.P2425720361100119047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p : ℕ) : ℤ)

end

end A043545.P2425720361100119047

namespace A043545

/-- `1-∏{p}[n+1, C(2, #)]` -/
def P2425720361100119047.Spec : Prop :=
  ∀ n, P2425720361100119047.a n = A043545 n

end A043545

/-! ## A043545.P12955747022571744353

`ceil(and(n, n+1)/(n+1))`
-/

namespace A043545.P12955747022571744353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land n (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A043545.P12955747022571744353

namespace A043545

/-- `ceil(and(n, n+1)/(n+1))` -/
def P12955747022571744353.Spec : Prop :=
  ∀ n, P12955747022571744353.a n = A043545 n

end A043545

/-!
# A043546: Coefficients of asymptotic expansion of return probability for random walk in d-dimensional cubic lattice as a function of d.

The programs for A043546, there is no canonical definition to state claims against.
-/

/-! ## A043546.P13288394410847342258

`A189663(floor(sqrt(A361054(n))))`
-/

namespace A043546.P13288394410847342258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (Int.sqrt (A361054 n)).toNat

end

end A043546.P13288394410847342258

/-! ## A043546.P6263027578823388105

`A002264(A008981(n)+A008930(n))`
-/

namespace A043546.P6263027578823388105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008981 n + A008930 n).toNat

end

end A043546.P6263027578823388105

/-!
# A043547: Odd numbers interspersed with double the previous odd number.

The programs for A043547, the canonical program `A043547.P15018840364979935028` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043547 has offset 1).

The definition of A043547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A043547.P5535578733799335471

`ogf((1+2x+x^2+2x^3)/(1-2x^2+x^4))`
-/

namespace A043547.P5535578733799335471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 2] [1, 0, -2, 0, 1] n

end

end A043547.P5535578733799335471

namespace A043547

/-- `ogf((1+2x+x^2+2x^3)/(1-2x^2+x^4))` -/
def P5535578733799335471.Spec : Prop :=
  ∀ n, P5535578733799335471.a n = A043547 (n + 1)

end A043547

/-! ## A043547.P15018840364979935028

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A043547

/-- `2*a(n-2)-a(n-4)` -/
def P15018840364979935028.Spec : Prop :=
  ∀ n, P15018840364979935028.a n = A043547 (n + 1)

theorem P15018840364979935028.correct : P15018840364979935028.Spec := by
  intro n
  simp only [A043547, Nat.add_sub_cancel]

end A043547

/-! ## A043547.P14414379181667335093

`(2-(n+1))*(n+1-floor((n+1)/2)*2)+2*n`
-/

namespace A043547.P14414379181667335093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n + 1 : ℤ)) * ((n + 1 : ℤ) - ⌊(n + 1 : ℚ) / 2⌋ * 2) + (2 * n : ℤ)

end

end A043547.P14414379181667335093

namespace A043547

/-- `(2-(n+1))*(n+1-floor((n+1)/2)*2)+2*n` -/
def P14414379181667335093.Spec : Prop :=
  ∀ n, P14414379181667335093.a n = A043547 (n + 1)

end A043547

/-! ## A043547.P7572955164079913148

`n^(n%2)+n`
-/

namespace A043547.P7572955164079913148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) + n

end

end A043547.P7572955164079913148

namespace A043547

/-- `n^(n%2)+n` -/
def P7572955164079913148.Spec : Prop :=
  ∀ n, (P7572955164079913148.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P12846650710112223354

`n^and(1, n)+n`
-/

namespace A043547.P12846650710112223354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n + n

end

end A043547.P12846650710112223354

namespace A043547

/-- `n^and(1, n)+n` -/
def P12846650710112223354.Spec : Prop :=
  ∀ n, (P12846650710112223354.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P1823241839351133584

`gcd(n, or(1, n))+n`
-/

namespace A043547.P1823241839351133584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 1 n) + n

end

end A043547.P1823241839351133584

namespace A043547

/-- `gcd(n, or(1, n))+n` -/
def P1823241839351133584.Spec : Prop :=
  ∀ n, (P1823241839351133584.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P12725132630664290249

`C(n, and(1, n))+n`
-/

namespace A043547.P12725132630664290249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n) + n

end

end A043547.P12725132630664290249

namespace A043547

/-- `C(n, and(1, n))+n` -/
def P12725132630664290249.Spec : Prop :=
  ∀ n, (P12725132630664290249.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P4469796005154491687

`char[2*n]+lcm(2, n)`
-/

namespace A043547.P4469796005154491687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.lcm 2 n

end

end A043547.P4469796005154491687

namespace A043547

/-- `char[2*n]+lcm(2, n)` -/
def P4469796005154491687.Spec : Prop :=
  ∀ n, (P4469796005154491687.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P11407583369234173474

`gcd(2, n-1)*or(1, n)`
-/

namespace A043547.P11407583369234173474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ((n : ℤ) - 1) * Nat.lor 1 n

end

end A043547.P11407583369234173474

namespace A043547

/-- `gcd(2, n-1)*or(1, n)` -/
def P11407583369234173474.Spec : Prop :=
  ∀ n, (P11407583369234173474.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P12687921831601955402

`(and(1, n)+1)*or(1, n)`
-/

namespace A043547.P12687921831601955402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * Nat.lor 1 n

end

end A043547.P12687921831601955402

namespace A043547

/-- `(and(1, n)+1)*or(1, n)` -/
def P12687921831601955402.Spec : Prop :=
  ∀ n, (P12687921831601955402.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P6055638296047400509

`C(n, (n+2)%2)+n`
-/

namespace A043547.P6055638296047400509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n + 2) % 2) + n

end

end A043547.P6055638296047400509

namespace A043547

/-- `C(n, (n+2)%2)+n` -/
def P6055638296047400509.Spec : Prop :=
  ∀ n, (P6055638296047400509.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P3830074751502100423

`C(n, Δ[floor(n/2)])+n`
-/

namespace A043547.P3830074751502100423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (f1 (n + 1) - f1 n).toNat + n

end

end A043547.P3830074751502100423

namespace A043547

/-- `C(n, Δ[floor(n/2)])+n` -/
def P3830074751502100423.Spec : Prop :=
  ∀ n, (P3830074751502100423.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P4158327509221643698

`xor(1, a(n-2))+3` with `a(0)=1, a(1)=2`
-/

namespace A043547.P4158327509221643698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (a (n - 2)) + 3

end

end A043547.P4158327509221643698

namespace A043547

/-- `xor(1, a(n-2))+3` -/
def P4158327509221643698.Spec : Prop :=
  ∀ n, (P4158327509221643698.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P6874327680346861690

`(2*and(1, n))!*or(1, n)`
-/

namespace A043547.P6874327680346861690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * Nat.land 1 n) * Nat.lor 1 n

end

end A043547.P6874327680346861690

namespace A043547

/-- `(2*and(1, n))!*or(1, n)` -/
def P6874327680346861690.Spec : Prop :=
  ∀ n, (P6874327680346861690.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P4996774953606439168

`2-xor(-2, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A043547.P4996774953606439168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - Int.xor (-2) (a (n - 2))

end

end A043547.P4996774953606439168

namespace A043547

/-- `2-xor(-2, a(n-2))` -/
def P4996774953606439168.Spec : Prop :=
  ∀ n, P4996774953606439168.a n = A043547 (n + 1)

end A043547

/-! ## A043547.P3390375051078651264

`(and(1, n)+1)*(n-1)+2`
-/

namespace A043547.P3390375051078651264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℤ) * ((n : ℤ) - 1) + 2

end

end A043547.P3390375051078651264

namespace A043547

/-- `(and(1, n)+1)*(n-1)+2` -/
def P3390375051078651264.Spec : Prop :=
  ∀ n, P3390375051078651264.a n = A043547 (n + 1)

end A043547

/-! ## A043547.P2004652413885097488

`3*n-or(1, a(n-1))` with `a(0)=1`
-/

namespace A043547.P2004652413885097488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) - Int.lor 1 (a (n - 1))

end

end A043547.P2004652413885097488

namespace A043547

/-- `3*n-or(1, a(n-1))` -/
def P2004652413885097488.Spec : Prop :=
  ∀ n, P2004652413885097488.a n = A043547 (n + 1)

end A043547

/-! ## A043547.P13409409019360392576

`xor(1, n)%(n+1)+n+1`
-/

namespace A043547.P13409409019360392576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % (n + 1) + (n + 1)

end

end A043547.P13409409019360392576

namespace A043547

/-- `xor(1, n)%(n+1)+n+1` -/
def P13409409019360392576.Spec : Prop :=
  ∀ n, (P13409409019360392576.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P3498636400973760352

`lcm(n-1, and(1, n))+n+1`
-/

namespace A043547.P3498636400973760352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ) + (n + 1)

end

end A043547.P3498636400973760352

namespace A043547

/-- `lcm(n-1, and(1, n))+n+1` -/
def P3498636400973760352.Spec : Prop :=
  ∀ n, (P3498636400973760352.a n : ℤ) = A043547 (n + 1)

end A043547

/-! ## A043547.P8570980832579470916

`Δ[n²]-C(n, and(1, n-1))`
-/

namespace A043547.P8570980832579470916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.choose n (Int.land 1 ((n : ℤ) - 1)).toNat : ℤ)

end

end A043547.P8570980832579470916

namespace A043547

/-- `Δ[n²]-C(n, and(1, n-1))` -/
def P8570980832579470916.Spec : Prop :=
  ∀ n, P8570980832579470916.a n = A043547 (n + 1)

end A043547

/-!
# A043548: Least separator of first n Egyptian fractions; i.e., least k for which the integers floor(k/m) for m=1,2,...,n are distinct.

The programs for A043548, the canonical program `A043548.P6626003684055450292` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043548 has offset 1).

The definition of A043548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043548.P12425314218949243097

`A076921(A123663(1+n)+1)`
-/

namespace A043548.P12425314218949243097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A123663 (1 + n) + 1).toNat

end

end A043548.P12425314218949243097

namespace A043548

/-- `A076921(A123663(1+n)+1)` -/
def P12425314218949243097.Spec : Prop :=
  ∀ n, P12425314218949243097.a n = A043548 (n + 1)

end A043548

/-! ## A043548.P9276928816635206563

`A033638(A083479(n+1)+n)-round(n/(n+1))`
-/

namespace A043548.P9276928816635206563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 (n + 1) + (n : ℤ)).toNat - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

end

end A043548.P9276928816635206563

namespace A043548

/-- `A033638(A083479(n+1)+n)-round(n/(n+1))` -/
def P9276928816635206563.Spec : Prop :=
  ∀ n, P9276928816635206563.a n = A043548 (n + 1)

end A043548

/-! ## A043548.P6626003684055450292

`A087811(A004277(n)-A055086(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043548

/-- `A087811(A004277(n)-A055086(n))` -/
def P6626003684055450292.Spec : Prop :=
  ∀ n, P6626003684055450292.a n = A043548 (n + 1)

theorem P6626003684055450292.correct : P6626003684055450292.Spec := by
  intro n
  simp only [A043548, Nat.add_sub_cancel]

end A043548

/-! ## A043548.P3864871672670759397

`A002620(A051755(n+2)-A000267(n))`
-/

namespace A043548.P3864871672670759397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A051755 (n + 2) - A000267 n).toNat

end

end A043548.P3864871672670759397

namespace A043548

/-- `A002620(A051755(n+2)-A000267(n))` -/
def P3864871672670759397.Spec : Prop :=
  ∀ n, P3864871672670759397.a n = A043548 (n + 1)

end A043548

/-! ## A043548.P12036810937895002490

`A083479(A001000(n+2)-2)`
-/

namespace A043548.P12036810937895002490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A001000 (n + 2) - 2).toNat

end

end A043548.P12036810937895002490

namespace A043548

/-- `A083479(A001000(n+2)-2)` -/
def P12036810937895002490.Spec : Prop :=
  ∀ n, P12036810937895002490.a n = A043548 (n + 1)

end A043548

/-!
# A043553: Row sums of convolution triangle A030524.

The programs for A043553, the canonical program `A043553.P12103225567729860309` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043553 has offset 1).

The definition of A043553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A043553.P12103225567729860309

`ogf((1-3x+3x^2)/(1-10x+30x^2-30x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A043553

/-- `ogf((1-3x+3x^2)/(1-10x+30x^2-30x^3))` -/
def P12103225567729860309.Spec : Prop :=
  ∀ n, P12103225567729860309.a n = A043553 (n + 1)

theorem P12103225567729860309.correct : P12103225567729860309.Spec := by
  intro n
  simp only [A043553, Nat.add_sub_cancel]

end A043553

/-!
# A043555: Number of runs in base-3 representation of n.

The programs for A043555, the canonical program `A043555.P11372978209662436476` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043555 has offset 0).

The definition of A043555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043555.P5835050658590206278

`A001511(A060585(A055661(A001316(A060585(n)))))`
-/

namespace A043555.P5835050658590206278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A060585 (A055661 (A001316 (A060585 n).toNat).toNat).toNat).toNat

end

end A043555.P5835050658590206278

namespace A043555

/-- `A001511(A060585(A055661(A001316(A060585(n)))))` -/
def P5835050658590206278.Spec : Prop :=
  ∀ n, P5835050658590206278.a n = A043555 n

end A043555

/-! ## A043555.P11372978209662436476

`A043556(A023717(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043555

/-- `A043556(A023717(n))` -/
def P11372978209662436476.Spec : Prop :=
  ∀ n, P11372978209662436476.a n = A043555 n

theorem P11372978209662436476.correct : P11372978209662436476.Spec := by
  intro n
  simp only [A043555]

end A043555

/-! ## A043555.P9508094095604245933

`A043556(A006288(n))`
-/

namespace A043555.P9508094095604245933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A006288 n).toNat

end

end A043555.P9508094095604245933

namespace A043555

/-- `A043556(A006288(n))` -/
def P9508094095604245933.Spec : Prop :=
  ∀ n, P9508094095604245933.a n = A043555 n

end A043555

/-! ## A043555.P10878288187134932971

`A043558(A037454(n))`
-/

namespace A043555.P10878288187134932971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037454 n).toNat

end

end A043555.P10878288187134932971

namespace A043555

/-- `A043558(A037454(n))` -/
def P10878288187134932971.Spec : Prop :=
  ∀ n, P10878288187134932971.a n = A043555 n

end A043555

/-! ## A043555.P5614110991850262942

`A043559(A037455(n))`
-/

namespace A043555.P5614110991850262942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A037455 n).toNat

end

end A043555.P5614110991850262942

namespace A043555

/-- `A043559(A037455(n))` -/
def P5614110991850262942.Spec : Prop :=
  ∀ n, P5614110991850262942.a n = A043555 n

end A043555

/-! ## A043555.P18302172337486871210

`A043560(A037456(n))`
-/

namespace A043555.P18302172337486871210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037456 n).toNat

end

end A043555.P18302172337486871210

namespace A043555

/-- `A043560(A037456(n))` -/
def P18302172337486871210.Spec : Prop :=
  ∀ n, P18302172337486871210.a n = A043555 n

end A043555

/-! ## A043555.P9804206187532675158

`A043561(A037314(n))`
-/

namespace A043555.P9804206187532675158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037314 n).toNat

end

end A043555.P9804206187532675158

namespace A043555

/-- `A043561(A037314(n))` -/
def P9804206187532675158.Spec : Prop :=
  ∀ n, P9804206187532675158.a n = A043555 n

end A043555

/-! ## A043555.P11621956278666898144

`A043562(A007089(n))`
-/

namespace A043555.P11621956278666898144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007089 n).toNat

end

end A043555.P11621956278666898144

namespace A043555

/-- `A043562(A007089(n))` -/
def P11621956278666898144.Spec : Prop :=
  ∀ n, P11621956278666898144.a n = A043555 n

end A043555

/-!
# A043556: Number of runs in base-4 representation of n.

The programs for A043556, the canonical program `A043556.P9155403054735313195` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043556 has offset 0).

The definition of A043556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043556.P9155403054735313195

`A160385(A064706(A000007(n)+n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043556

/-- `A160385(A064706(A000007(n)+n))` -/
def P9155403054735313195.Spec : Prop :=
  ∀ n, P9155403054735313195.a n = A043556 n

theorem P9155403054735313195.correct : P9155403054735313195.Spec := by
  intro n
  simp only [A043556]

end A043556

/-! ## A043556.P6713669909954978502

`A043557(A020654(n+1))`
-/

namespace A043556.P6713669909954978502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A020654 (n + 1)).toNat

end

end A043556.P6713669909954978502

namespace A043556

/-- `A043557(A020654(n+1))` -/
def P6713669909954978502.Spec : Prop :=
  ∀ n, P6713669909954978502.a n = A043556 n

end A043556

/-! ## A043556.P12876361328683135163

`A043558(A037460(n))`
-/

namespace A043556.P12876361328683135163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037460 n).toNat

end

end A043556.P12876361328683135163

namespace A043556

/-- `A043558(A037460(n))` -/
def P12876361328683135163.Spec : Prop :=
  ∀ n, P12876361328683135163.a n = A043556 n

end A043556

/-! ## A043556.P1332006475550896801

`A043560(A037462(n))`
-/

namespace A043556.P1332006475550896801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037462 n).toNat

end

end A043556.P1332006475550896801

namespace A043556

/-- `A043560(A037462(n))` -/
def P1332006475550896801.Spec : Prop :=
  ∀ n, P1332006475550896801.a n = A043556 n

end A043556

/-! ## A043556.P4791244067958489247

`A043561(A037463(n))`
-/

namespace A043556.P4791244067958489247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037463 n).toNat

end

end A043556.P4791244067958489247

namespace A043556

/-- `A043561(A037463(n))` -/
def P4791244067958489247.Spec : Prop :=
  ∀ n, P4791244067958489247.a n = A043556 n

end A043556

/-! ## A043556.P16344146571368418925

`A043562(A007090(n))`
-/

namespace A043556.P16344146571368418925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007090 n).toNat

end

end A043556.P16344146571368418925

namespace A043556

/-- `A043562(A007090(n))` -/
def P16344146571368418925.Spec : Prop :=
  ∀ n, P16344146571368418925.a n = A043556 n

end A043556

/-! ## A043556.P10294901261517600768

`A043568(A000695(n))`
-/

namespace A043556.P10294901261517600768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A000695 n).toNat

end

end A043556.P10294901261517600768

namespace A043556

/-- `A043568(A000695(n))` -/
def P10294901261517600768.Spec : Prop :=
  ∀ n, P10294901261517600768.a n = A043556 n

end A043556

/-!
# A043557: Number of runs in base-5 representation of n.

The programs for A043557, the canonical program `A043557.P6778954948649520193` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043557 has offset 0).

The definition of A043557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043557.P434667927801848599

`A043558(A037465(n))`
-/

namespace A043557.P434667927801848599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037465 n).toNat

end

end A043557.P434667927801848599

namespace A043557

/-- `A043558(A037465(n))` -/
def P434667927801848599.Spec : Prop :=
  ∀ n, P434667927801848599.a n = A043557 n

end A043557

/-! ## A043557.P6778954948649520193

`A043559(A037466(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043557

/-- `A043559(A037466(n))` -/
def P6778954948649520193.Spec : Prop :=
  ∀ n, P6778954948649520193.a n = A043557 n

theorem P6778954948649520193.correct : P6778954948649520193.Spec := by
  intro n
  simp only [A043557]

end A043557

/-! ## A043557.P4529479178851887033

`A043560(A037467(n))`
-/

namespace A043557.P4529479178851887033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037467 n).toNat

end

end A043557.P4529479178851887033

namespace A043557

/-- `A043560(A037467(n))` -/
def P4529479178851887033.Spec : Prop :=
  ∀ n, P4529479178851887033.a n = A043557 n

end A043557

/-! ## A043557.P4668537564092751202

`A043561(A037468(n))`
-/

namespace A043557.P4668537564092751202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037468 n).toNat

end

end A043557.P4668537564092751202

namespace A043557

/-- `A043561(A037468(n))` -/
def P4668537564092751202.Spec : Prop :=
  ∀ n, P4668537564092751202.a n = A043557 n

end A043557

/-! ## A043557.P742723469788536878

`A043562(A007091(n))`
-/

namespace A043557.P742723469788536878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007091 n).toNat

end

end A043557.P742723469788536878

namespace A043557

/-- `A043562(A007091(n))` -/
def P742723469788536878.Spec : Prop :=
  ∀ n, P742723469788536878.a n = A043557 n

end A043557

/-!
# A043558: Number of runs in base-6 representation of n.

The programs for A043558, the canonical program `A043558.P10959563384235875433` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043558 has offset 0).

The definition of A043558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043558.P10959563384235875433

`A043559(A020657(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043558

/-- `A043559(A020657(n+1))` -/
def P10959563384235875433.Spec : Prop :=
  ∀ n, P10959563384235875433.a n = A043558 n

theorem P10959563384235875433.correct : P10959563384235875433.Spec := by
  intro n
  simp only [A043558]

end A043558

/-! ## A043558.P8848633375999632665

`A043560(A037471(n))`
-/

namespace A043558.P8848633375999632665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037471 n).toNat

end

end A043558.P8848633375999632665

namespace A043558

/-- `A043560(A037471(n))` -/
def P8848633375999632665.Spec : Prop :=
  ∀ n, P8848633375999632665.a n = A043558 n

end A043558

/-! ## A043558.P9348929434068418559

`A043561(A037472(n))`
-/

namespace A043558.P9348929434068418559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A037472 n).toNat

end

end A043558.P9348929434068418559

namespace A043558

/-- `A043561(A037472(n))` -/
def P9348929434068418559.Spec : Prop :=
  ∀ n, P9348929434068418559.a n = A043558 n

end A043558

/-! ## A043558.P7978371440756123442

`A043562(A007092(n))`
-/

namespace A043558.P7978371440756123442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007092 n).toNat

end

end A043558.P7978371440756123442

namespace A043558

/-- `A043562(A007092(n))` -/
def P7978371440756123442.Spec : Prop :=
  ∀ n, P7978371440756123442.a n = A043558 n

end A043558

/-! ## A043558.P3291793890757021841

`A043563(A212495(n+1)/2)`
-/

namespace A043558.P3291793890757021841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 (SequenceMachineLib.roundAway ((A212495 (n + 1) : ℚ) / 2)).toNat

end

end A043558.P3291793890757021841

namespace A043558

/-- `A043563(A212495(n+1)/2)` -/
def P3291793890757021841.Spec : Prop :=
  ∀ n, P3291793890757021841.a n = A043558 n

end A043558

/-! ## A043558.P6092836629921020819

`A043563(A212495(n+1))`
-/

namespace A043558.P6092836629921020819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 (A212495 (n + 1)).toNat

end

end A043558.P6092836629921020819

namespace A043558

/-- `A043563(A212495(n+1))` -/
def P6092836629921020819.Spec : Prop :=
  ∀ n, P6092836629921020819.a n = A043558 n

end A043558

/-!
# A043559: Number of runs in base-7 representation of n.

The programs for A043559, the canonical program `A043559.P13591226261995022152` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043559 has offset 0).

The definition of A043559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043559.P2191300198349920516

`A043560(A037474(n))`
-/

namespace A043559.P2191300198349920516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A037474 n).toNat

end

end A043559.P2191300198349920516

namespace A043559

/-- `A043560(A037474(n))` -/
def P2191300198349920516.Spec : Prop :=
  ∀ n, P2191300198349920516.a n = A043559 n

end A043559

/-! ## A043559.P13591226261995022152

`A043561(A037475(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A043559

/-- `A043561(A037475(n))` -/
def P13591226261995022152.Spec : Prop :=
  ∀ n, P13591226261995022152.a n = A043559 n

theorem P13591226261995022152.correct : P13591226261995022152.Spec := by
  intro n
  simp only [A043559]

end A043559

/-! ## A043559.P11925886340385772325

`A043562(A007093(n))`
-/

namespace A043559.P11925886340385772325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007093 n).toNat

end

end A043559.P11925886340385772325

namespace A043559

/-- `A043562(A007093(n))` -/
def P11925886340385772325.Spec : Prop :=
  ∀ n, P11925886340385772325.a n = A043559 n

end A043559

/-! ## A043559.P7821032223060265276

`A261675(A171596(n))`
-/

namespace A043559.P7821032223060265276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A171596 n).toNat

end

end A043559.P7821032223060265276

namespace A043559

/-- `A261675(A171596(n))` -/
def P7821032223060265276.Spec : Prop :=
  ∀ n, P7821032223060265276.a n = A043559 n

end A043559

/-! ## A043559.P440032722842534356

`A164886(A164994(n*A165071(n)))`
-/

namespace A043559.P440032722842534356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A164994 ((n : ℤ) * A165071 n).toNat).toNat

end

end A043559.P440032722842534356

namespace A043559

/-- `A164886(A164994(n*A165071(n)))` -/
def P440032722842534356.Spec : Prop :=
  ∀ n, P440032722842534356.a n = A043559 n

end A043559

/-!
# A043560: Number of runs in base-8 representation of n.

The programs for A043560, the canonical program `A043560.P7170564704863856979` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043560 has offset 0).

The definition of A043560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043560.P7170564704863856979

`A043561(A037477(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A043560

/-- `A043561(A037477(n))` -/
def P7170564704863856979.Spec : Prop :=
  ∀ n, P7170564704863856979.a n = A043560 n

theorem P7170564704863856979.correct : P7170564704863856979.Spec := by
  intro n
  simp only [A043560]

end A043560

/-! ## A043560.P1595496305645036997

`A043562(A007094(n))`
-/

namespace A043560.P1595496305645036997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007094 n).toNat

end

end A043560.P1595496305645036997

namespace A043560

/-- `A043562(A007094(n))` -/
def P1595496305645036997.Spec : Prop :=
  ∀ n, P1595496305645036997.a n = A043560 n

end A043560

/-! ## A043560.P2894389330385210070

`A164886(A165033(A165090(n)²))`
-/

namespace A043560.P2894389330385210070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A165033 (A165090 n ^ 2).toNat).toNat

end

end A043560.P2894389330385210070

namespace A043560

/-- `A164886(A165033(A165090(n)²))` -/
def P2894389330385210070.Spec : Prop :=
  ∀ n, P2894389330385210070.a n = A043560 n

end A043560

/-! ## A043560.P13905072088853380967

`A261675(A171644(n))`
-/

namespace A043560.P13905072088853380967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A171644 n).toNat

end

end A043560.P13905072088853380967

namespace A043560

/-- `A261675(A171644(n))` -/
def P13905072088853380967.Spec : Prop :=
  ∀ n, P13905072088853380967.a n = A043560 n

end A043560

/-! ## A043560.P5466181192320555735

`A164886((n+2)*A165090(n))`
-/

namespace A043560.P5466181192320555735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 ((n + 2 : ℤ) * A165090 n).toNat

end

end A043560.P5466181192320555735

namespace A043560

/-- `A164886((n+2)*A165090(n))` -/
def P5466181192320555735.Spec : Prop :=
  ∀ n, P5466181192320555735.a n = A043560 n

end A043560

/-!
# A043561: Number of runs in base-9 representation of n.

The programs for A043561, the canonical program `A043561.P16806154389373124873` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043561 has offset 0).

The definition of A043561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043561.P16806154389373124873

`A043562(A007095(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043561

/-- `A043562(A007095(n))` -/
def P16806154389373124873.Spec : Prop :=
  ∀ n, P16806154389373124873.a n = A043561 n

theorem P16806154389373124873.correct : P16806154389373124873.Spec := by
  intro n
  simp only [A043561]

end A043561

/-! ## A043561.P15842728327767112395

`A043568(A023717(n))`
-/

namespace A043561.P15842728327767112395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A023717 n).toNat

end

end A043561.P15842728327767112395

namespace A043561

/-- `A043568(A023717(n))` -/
def P15842728327767112395.Spec : Prop :=
  ∀ n, P15842728327767112395.a n = A043561 n

end A043561

/-! ## A043561.P13139386702124339760

`A043538(A380573(n+2))`
-/

namespace A043561.P13139386702124339760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043538 (A380573 (n + 2)).toNat

end

end A043561.P13139386702124339760

namespace A043561

/-- `A043538(A380573(n+2))` -/
def P13139386702124339760.Spec : Prop :=
  ∀ n, P13139386702124339760.a n = A043561 n

end A043561

/-! ## A043561.P7991631434861815728

`gcd(A035616(n), A390767(n))`
-/

namespace A043561.P7991631434861815728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035616 n) (A390767 n)

end

end A043561.P7991631434861815728

namespace A043561

/-- `gcd(A035616(n), A390767(n))` -/
def P7991631434861815728.Spec : Prop :=
  ∀ n, (P7991631434861815728.a n : ℤ) = A043561 n

end A043561

/-! ## A043561.P10541894415698043523

`A043541(A181708(n+2))`
-/

namespace A043561.P10541894415698043523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043541 (A181708 (n + 2)).toNat

end

end A043561.P10541894415698043523

namespace A043561

/-- `A043541(A181708(n+2))` -/
def P10541894415698043523.Spec : Prop :=
  ∀ n, P10541894415698043523.a n = A043561 n

end A043561

/-!
# A043562: Number of runs in base-10 representation of n.

The programs for A043562, the canonical program `A043562.P14669916925160096721` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043562 has offset 0).

The definition of A043562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043562.P14250659240598320977

`floor(sqrt(log(A045918(n))))`
-/

namespace A043562.P14250659240598320977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.log (A045918 n : ℝ))⌋

end

end A043562.P14250659240598320977

namespace A043562

/-- `floor(sqrt(log(A045918(n))))` -/
def P14250659240598320977.Spec : Prop :=
  ∀ n, P14250659240598320977.a n = A043562 n

end A043562

/-! ## A043562.P6138062522000953680

`A055642(A337864(n))`
-/

namespace A043562.P6138062522000953680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A337864 n).toNat

end

end A043562.P6138062522000953680

namespace A043562

/-- `A055642(A337864(n))` -/
def P6138062522000953680.Spec : Prop :=
  ∀ n, P6138062522000953680.a n = A043562 n

end A043562

/-! ## A043562.P14669916925160096721

`A055640(A040115(n))+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043562

/-- `A055640(A040115(n))+1` -/
def P14669916925160096721.Spec : Prop :=
  ∀ n, P14669916925160096721.a n = A043562 n

theorem P14669916925160096721.correct : P14669916925160096721.Spec := by
  intro n
  simp only [A043562]

end A043562

/-! ## A043562.P13787544855785376446

`A045917(ceil(log(A045918(n))))`
-/

namespace A043562.P13787544855785376446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 ⌈Real.log (A045918 n : ℝ)⌉.toNat

end

end A043562.P13787544855785376446

namespace A043562

/-- `A045917(ceil(log(A045918(n))))` -/
def P13787544855785376446.Spec : Prop :=
  ∀ n, P13787544855785376446.a n = A043562 n

end A043562

/-! ## A043562.P7194447102124535557

`A259361(floor(log2(A045918(n))))`
-/

namespace A043562.P7194447102124535557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Nat.log 2 (A045918 n).toNat)

end

end A043562.P7194447102124535557

namespace A043562

/-- `A259361(floor(log2(A045918(n))))` -/
def P7194447102124535557.Spec : Prop :=
  ∀ n, P7194447102124535557.a n = A043562 n

end A043562

/-! ## A043562.P3049415073124772944

`A008615(ceil(log2(A045918(n))))`
-/

namespace A043562.P3049415073124772944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ⌈Real.logb 2 (A045918 n : ℝ)⌉.toNat

end

end A043562.P3049415073124772944

namespace A043562

/-- `A008615(ceil(log2(A045918(n))))` -/
def P3049415073124772944.Spec : Prop :=
  ∀ n, P3049415073124772944.a n = A043562 n

end A043562

/-! ## A043562.P5516362812676503280

`A043568(A102489(n))`
-/

namespace A043562.P5516362812676503280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A102489 n).toNat

end

end A043562.P5516362812676503280

namespace A043562

/-- `A043568(A102489(n))` -/
def P5516362812676503280.Spec : Prop :=
  ∀ n, P5516362812676503280.a n = A043562 n

end A043562

/-! ## A043562.P12976170900485831751

`A317954(A061901(n)^5)`
-/

namespace A043562.P12976170900485831751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (A061901 n ^ 5).toNat

end

end A043562.P12976170900485831751

namespace A043562

/-- `A317954(A061901(n)^5)` -/
def P12976170900485831751.Spec : Prop :=
  ∀ n, P12976170900485831751.a n = A043562 n

end A043562

/-! ## A043562.P15620161956411238046

`A032548(A045918(n))`
-/

namespace A043562.P15620161956411238046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A045918 n).toNat

end

end A043562.P15620161956411238046

namespace A043562

/-- `A032548(A045918(n))` -/
def P15620161956411238046.Spec : Prop :=
  ∀ n, P15620161956411238046.a n = A043562 n

end A043562

/-! ## A043562.P16026593865102689831

`A000032(C(A321485(n), A047842(n)))`
-/

namespace A043562.P16026593865102689831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (A321485 n).toNat (A047842 n).toNat)

end

end A043562.P16026593865102689831

namespace A043562

/-- `A000032(C(A321485(n), A047842(n)))` -/
def P16026593865102689831.Spec : Prop :=
  ∀ n, P16026593865102689831.a n = A043562 n

end A043562

/-! ## A043562.P16522404737279411777

`A196229(A196222(n)+1)`
-/

namespace A043562.P16522404737279411777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196229 (A196222 n + 1).toNat

end

end A043562.P16522404737279411777

namespace A043562

/-- `A196229(A196222(n)+1)` -/
def P16522404737279411777.Spec : Prop :=
  ∀ n, P16522404737279411777.a n = A043562 n

end A043562

/-!
# A043563: Number of runs in base-11 representation of n.

The programs for A043563, there is no canonical definition to state claims against.
-/

/-! ## A043563.P17406608222400485019

`A000122(A055961(n)²)`
-/

namespace A043563.P17406608222400485019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A055961 n ^ 2).toNat

end

end A043563.P17406608222400485019

/-! ## A043563.P1961864021280729473

`A002448(A055961(n)²)`
-/

namespace A043563.P1961864021280729473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A055961 n ^ 2).toNat

end

end A043563.P1961864021280729473

/-! ## A043563.P12261235695270035588

`A138811(A055961(n)²)`
-/

namespace A043563.P12261235695270035588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 (A055961 n ^ 2).toNat

end

end A043563.P12261235695270035588

/-! ## A043563.P6994426685086552099

`A318984(A055961(n)²)`
-/

namespace A043563.P6994426685086552099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 (A055961 n ^ 2).toNat

end

end A043563.P6994426685086552099

/-! ## A043563.P16032550301039626707

`A318985(A055961(n)²)`
-/

namespace A043563.P16032550301039626707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 (A055961 n ^ 2).toNat

end

end A043563.P16032550301039626707

/-! ## A043563.P3597225470658927923

`A297779(n^A178334(n))`
-/

namespace A043563.P3597225470658927923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297779 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A043563.P3597225470658927923

/-! ## A043563.P15588013129388542140

`A086134(A055961(n)²)!`
-/

namespace A043563.P15588013129388542140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086134 (A055961 n ^ 2).toNat).toNat

end

end A043563.P15588013129388542140

/-! ## A043563.P16064430457647745864

`2-A264442(A055961(n)²)`
-/

namespace A043563.P16064430457647745864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A264442 (A055961 n ^ 2).toNat

end

end A043563.P16064430457647745864

/-! ## A043563.P2075234421130987596

`gcd(2, A010006(A055961(n)²))`
-/

namespace A043563.P2075234421130987596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A010006 (A055961 n ^ 2).toNat)

end

end A043563.P2075234421130987596

/-! ## A043563.P5832011071653139683

`A040000(lcm(A033619(n+1), A055961(n)))`
-/

namespace A043563.P5832011071653139683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (Int.lcm (A033619 (n + 1)) (A055961 n))

end

end A043563.P5832011071653139683

/-! ## A043563.P1080850350848095641

`A092368(abs(A055961(n)))!`
-/

namespace A043563.P1080850350848095641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A092368 |A055961 n|.toNat).toNat

end

end A043563.P1080850350848095641

/-! ## A043563.P14678469290866259651

`1-A057428(A055961(n)²)`
-/

namespace A043563.P14678469290866259651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 (A055961 n ^ 2).toNat

end

end A043563.P14678469290866259651

/-! ## A043563.P13730817027679455130

`A175723(A055961(n)²+2)`
-/

namespace A043563.P13730817027679455130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175723 (A055961 n ^ 2 + 2).toNat

end

end A043563.P13730817027679455130

/-! ## A043563.P9830684681224004539

`2-A000007(A055961(n)²)`
-/

namespace A043563.P9830684681224004539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 (A055961 n ^ 2).toNat

end

end A043563.P9830684681224004539

/-! ## A043563.P12058371428287679978

`2-A014856(A055961(n)²)`
-/

namespace A043563.P12058371428287679978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014856 (A055961 n ^ 2).toNat

end

end A043563.P12058371428287679978

/-!
# A043564: Number of runs in base-12 representation of n.

The programs for A043564, there is no canonical definition to state claims against.
-/

/-! ## A043564.P16727300109940134843

`A040000(A055963(n)²)`
-/

namespace A043564.P16727300109940134843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A055963 n ^ 2).toNat

end

end A043564.P16727300109940134843

/-! ## A043564.P1657483723258370498

`A043529(A055963(n)²)`
-/

namespace A043564.P1657483723258370498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A055963 n ^ 2).toNat

end

end A043564.P1657483723258370498

/-! ## A043564.P9192605723807727217

`A105220(A055963(n)²)`
-/

namespace A043564.P9192605723807727217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (A055963 n ^ 2).toNat

end

end A043564.P9192605723807727217

/-! ## A043564.P11582814174896759734

`A164886(lcm(8, A055963(n)))`
-/

namespace A043564.P11582814174896759734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (Int.lcm 8 (A055963 n))

end

end A043564.P11582814174896759734

/-! ## A043564.P11644396760773864546

`A002828(A055963(n)²+1)`
-/

namespace A043564.P11644396760773864546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A055963 n ^ 2 + 1).toNat

end

end A043564.P11644396760773864546

/-! ## A043564.P12304032372560479345

`A006530(∏{p}[A055963(n), A011782(#)])`
-/

namespace A043564.P12304032372560479345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 p).toNat

end

end A043564.P12304032372560479345

/-! ## A043564.P15974481961402133420

`A002217(gcd(A055963(n), A235625(n+1)))`
-/

namespace A043564.P15974481961402133420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (Int.gcd (A055963 n) (A235625 (n + 1)))

end

end A043564.P15974481961402133420

/-! ## A043564.P17280819321320598443

`A297780(A137735(n²))`
-/

namespace A043564.P17280819321320598443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297780 (A137735 (n ^ 2)).toNat

end

end A043564.P17280819321320598443

/-! ## A043564.P5400595677790871479

`A043539(n+2-A000122(n²))`
-/

namespace A043564.P5400595677790871479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043539 ((n + 2 : ℤ) - A000122 (n ^ 2)).toNat

end

end A043564.P5400595677790871479

/-!
# A043565: Number of runs in base-13 representation of n.

The programs for A043565, there is no canonical definition to state claims against.
-/

/-! ## A043565.P15208218734109165203

`A043539(A106744(n+2))`
-/

namespace A043565.P15208218734109165203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043539 (A106744 (n + 2)).toNat

end

end A043565.P15208218734109165203

/-!
# A043566: Number of runs in base-14 representation of n.

The programs for A043566, there is no canonical definition to state claims against.
-/

/-! ## A043566.P7037867982778939104

`A297782(C(A033665(n*n%2), n)+n)`
-/

namespace A043566.P7037867982778939104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297782 (Nat.choose (A033665 (n * (n % 2))).toNat n + n)

end

end A043566.P7037867982778939104

/-! ## A043566.P9174082128210409933

`A297782(C(A033665(n), n)+n)`
-/

namespace A043566.P9174082128210409933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297782 (Nat.choose (A033665 n).toNat n + n)

end

end A043566.P9174082128210409933

/-! ## A043566.P887946692776352402

`a(val(A000108(n), 2))*A297782(n)` with `a(0)=1`
-/

namespace A043566.P887946692776352402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.valuation (A000108 n).toNat 2) * A297782 n

end

end A043566.P887946692776352402

/-! ## A043566.P8230751700507387809

`A043541(A004736(∑[abs(1-n)]))`
-/

namespace A043566.P8230751700507387809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043541 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A043566.P8230751700507387809

/-! ## A043566.P6222587988429185640

`A043541(A134478(∑[n]))`
-/

namespace A043566.P6222587988429185640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043541 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A043566.P6222587988429185640

/-!
# A043567: Number of runs in base-15 representation of n.

The programs for A043567, the canonical program `A043567.P10585350026588919122` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043567 has offset 0).

The definition of A043567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043567.P10585350026588919122

`A043568(lt[A217558(n), A106618(n)²]-16)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A043567

/-- `A043568(lt[A217558(n), A106618(n)²]-16)` -/
def P10585350026588919122.Spec : Prop :=
  ∀ n, P10585350026588919122.a n = A043567 n

theorem P10585350026588919122.correct : P10585350026588919122.Spec := by
  intro n
  simp only [A043567]

end A043567

/-! ## A043567.P257930928707922087

`gcd(2, A202170(n+1)+char[A048312(n)])`
-/

namespace A043567.P257930928707922087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A202170 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A043567.P257930928707922087

namespace A043567

/-- `gcd(2, A202170(n+1)+char[A048312(n)])` -/
def P257930928707922087.Spec : Prop :=
  ∀ n, (P257930928707922087.a n : ℤ) = A043567 n

end A043567

/-! ## A043567.P12452262283011702978

`A043541(A274933(n+1))`
-/

namespace A043567.P12452262283011702978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043541 (A274933 (n + 1)).toNat

end

end A043567.P12452262283011702978

namespace A043567

/-- `A043541(A274933(n+1))` -/
def P12452262283011702978.Spec : Prop :=
  ∀ n, P12452262283011702978.a n = A043567 n

end A043567

/-! ## A043567.P8127583884656894545

`A043564(A084618(n+2))`
-/

namespace A043567.P8127583884656894545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 (A084618 (n + 2)).toNat

end

end A043567.P8127583884656894545

namespace A043567

/-- `A043564(A084618(n+2))` -/
def P8127583884656894545.Spec : Prop :=
  ∀ n, P8127583884656894545.a n = A043567 n

end A043567

/-! ## A043567.P11730810349296581455

`A043542(A160755(n+1))`
-/

namespace A043567.P11730810349296581455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043542 (A160755 (n + 1)).toNat

end

end A043567.P11730810349296581455

namespace A043567

/-- `A043542(A160755(n+1))` -/
def P11730810349296581455.Spec : Prop :=
  ∀ n, P11730810349296581455.a n = A043567 n

end A043567

/-!
# A043568: Number of runs in base-16 representation of n.

The programs for A043568, the canonical program `A043568.P3323446372025203777` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043568 has offset 0).

The definition of A043568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043568.P3323446372025203777

`A040000(A217558(n)%A028310(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043568

/-- `A040000(A217558(n)%A028310(n))` -/
def P3323446372025203777.Spec : Prop :=
  ∀ n, P3323446372025203777.a n = A043568 n

theorem P3323446372025203777.correct : P3323446372025203777.Spec := by
  intro n
  simp only [A043568]

end A043568

/-! ## A043568.P2947996037228247383

`A297784(A088917(n²)+n)`
-/

namespace A043568.P2947996037228247383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297784 (A088917 (n ^ 2) + (n : ℤ)).toNat

end

end A043568.P2947996037228247383

namespace A043568

/-- `A297784(A088917(n²)+n)` -/
def P2947996037228247383.Spec : Prop :=
  ∀ n, P2947996037228247383.a n = A043568 n

end A043568

/-! ## A043568.P9168284376195057787

`A043563(A000196(∑[n]))`
-/

namespace A043568.P9168284376195057787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A043568.P9168284376195057787

namespace A043568

/-- `A043563(A000196(∑[n]))` -/
def P9168284376195057787.Spec : Prop :=
  ∀ n, P9168284376195057787.a n = A043568 n

end A043568

/-! ## A043568.P3071901329814180648

`A043542(A274933(n+1))`
-/

namespace A043568.P3071901329814180648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043542 (A274933 (n + 1)).toNat

end

end A043568.P3071901329814180648

namespace A043568

/-- `A043542(A274933(n+1))` -/
def P3071901329814180648.Spec : Prop :=
  ∀ n, P3071901329814180648.a n = A043568 n

end A043568

/-! ## A043568.P2294367145485492300

`A043543(A028310(n²)/A028310(n))`
-/

namespace A043568.P2294367145485492300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043543 (SequenceMachineLib.roundAway ((A028310 (n ^ 2) : ℚ) / (A028310 n : ℚ))).toNat

end

end A043568.P2294367145485492300

namespace A043568

/-- `A043543(A028310(n²)/A028310(n))` -/
def P2294367145485492300.Spec : Prop :=
  ∀ n, P2294367145485492300.a n = A043568 n

end A043568

/-! ## A043568.P12829438830389829638

`A043566(A101788(n+1))`
-/

namespace A043568.P12829438830389829638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 (A101788 (n + 1)).toNat

end

end A043568.P12829438830389829638

namespace A043568

/-- `A043566(A101788(n+1))` -/
def P12829438830389829638.Spec : Prop :=
  ∀ n, P12829438830389829638.a n = A043568 n

end A043568

/-! ## A043568.P12102735935525522900

`A297784(A160755(n+1))`
-/

namespace A043568.P12102735935525522900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297784 (A160755 (n + 1)).toNat

end

end A043568.P12102735935525522900

namespace A043568

/-- `A297784(A160755(n+1))` -/
def P12102735935525522900.Spec : Prop :=
  ∀ n, P12102735935525522900.a n = A043568 n

end A043568

/-!
# A043569: Numbers whose base-2 representation has exactly 2 runs.

The programs for A043569, the canonical program `A043569.P15388862397033280106` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043569 has offset 1).

The definition of A043569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043569.P11901190579324028189

`or(gcd(2*T(n-1,k), T(n-1,k-1)), T(n,k-1))` with `a(0)=2`
-/

namespace A043569.P11901190579324028189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor (Nat.gcd (2 * SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)) (SequenceMachineLib.triLeft a n)

end

end A043569.P11901190579324028189

namespace A043569

/-- `or(gcd(2*T(n-1,k), T(n-1,k-1)), T(n,k-1))` -/
def P11901190579324028189.Spec : Prop :=
  ∀ n, (P11901190579324028189.a n : ℤ) = A043569 (n + 1)

end A043569

/-! ## A043569.P3613441982551447758

`xor(∏[char[∑[n]]+1], T(n-1,k-1))` with `a(0)=2`
-/

namespace A043569.P3613441982551447758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor (∏ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.triUpLeft a n)

end

end A043569.P3613441982551447758

namespace A043569

/-- `xor(∏[char[∑[n]]+1], T(n-1,k-1))` -/
def P3613441982551447758.Spec : Prop :=
  ∀ n, (P3613441982551447758.a n : ℤ) = A043569 (n + 1)

end A043569

/-! ## A043569.P12408582230780029638

`2^(row(n)+1)+T(n-1,k-1)` with `a(0)=2`
-/

namespace A043569.P12408582230780029638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ (SequenceMachineLib.triRow n + 1) + SequenceMachineLib.triUpLeft a n

end

end A043569.P12408582230780029638

namespace A043569

/-- `2^(row(n)+1)+T(n-1,k-1)` -/
def P12408582230780029638.Spec : Prop :=
  ∀ n, (P12408582230780029638.a n : ℤ) = A043569 (n + 1)

end A043569

/-! ## A043569.P1330170228450174514

`∑[Δ[abs(T(n-1,k))]+2*T(n-1,k)]` with `a(0)=2`
-/

namespace A043569.P1330170228450174514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  SequenceMachineLib.triUp f2 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043569.P1330170228450174514

namespace A043569

/-- `∑[Δ[abs(T(n-1,k))]+2*T(n-1,k)]` -/
def P1330170228450174514.Spec : Prop :=
  ∀ n, P1330170228450174514.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P12117812262630405479

`or(2*T(n-1,k)+2*T(n-1,k-1)-4*T(n-2,k-1), T(n-1,k-1))` with `a(0)=2`
-/

namespace A043569.P12117812262630405479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (2 * SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n - 4 * SequenceMachineLib.triUp2Left a n) (SequenceMachineLib.triUpLeft a n)

end

end A043569.P12117812262630405479

namespace A043569

/-- `or(2*T(n-1,k)+2*T(n-1,k-1)-4*T(n-2,k-1), T(n-1,k-1))` -/
def P12117812262630405479.Spec : Prop :=
  ∀ n, P12117812262630405479.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P17401779963519118381

`T(row(n)-1, row(n)-1)+T(n-1,k-1)+2` with `a(0)=2`
-/

namespace A043569.P17401779963519118381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triRow n : ℤ) - 1) + SequenceMachineLib.triUpLeft a n + 2

end

end A043569.P17401779963519118381

namespace A043569

/-- `T(row(n)-1, row(n)-1)+T(n-1,k-1)+2` -/
def P17401779963519118381.Spec : Prop :=
  ∀ n, (P17401779963519118381.a n : ℤ) = A043569 (n + 1)

end A043569

/-! ## A043569.P6730684731561861621

`2^(row(n)+2)-2^(row(n)+1-col(n))`
-/

namespace A043569.P6730684731561861621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triRow n + 2) : ℚ) - (2 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A043569.P6730684731561861621

namespace A043569

/-- `2^(row(n)+2)-2^(row(n)+1-col(n))` -/
def P6730684731561861621.Spec : Prop :=
  ∀ n, P6730684731561861621.a n = (A043569 (n + 1) : ℚ)

end A043569

/-! ## A043569.P571848911900792409

`∑[2^A193592(n)]`
-/

namespace A043569.P571848911900792409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A193592 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043569.P571848911900792409

namespace A043569

/-- `∑[2^A193592(n)]` -/
def P571848911900792409.Spec : Prop :=
  ∀ n, P571848911900792409.a n = (A043569 (n + 1) : ℚ)

end A043569

/-! ## A043569.P15388862397033280106

`1+A081118(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043569

/-- `1+A081118(n+1)` -/
def P15388862397033280106.Spec : Prop :=
  ∀ n, P15388862397033280106.a n = A043569 (n + 1)

theorem P15388862397033280106.correct : P15388862397033280106.Spec := by
  intro n
  simp only [A043569, Nat.add_sub_cancel]

end A043569

/-! ## A043569.P16928519104603851324

`A224195(n+1)-1`
-/

namespace A043569.P16928519104603851324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1) - 1

end

end A043569.P16928519104603851324

namespace A043569

/-- `A224195(n+1)-1` -/
def P16928519104603851324.Spec : Prop :=
  ∀ n, P16928519104603851324.a n = A043569 (n + 1)

theorem P16928519104603851324.correct : P16928519104603851324.Spec := by
  intro n
  simp only [A043569, Nat.add_sub_cancel, A043569.P16928519104603851324.a, A043569.P15388862397033280106.a, A081118, A081118.P6487108056144640916.a, A224195, A224195.P2968674169476824705.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A043569

/-! ## A043569.P11525927911982585511

`2*(1+A089633(n))`
-/

namespace A043569.P11525927911982585511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A089633 n)

end

end A043569.P11525927911982585511

namespace A043569

/-- `2*(1+A089633(n))` -/
def P11525927911982585511.Spec : Prop :=
  ∀ n, P11525927911982585511.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P6113110042178675588

`∑[2*A057728(n+1)]`
-/

namespace A043569.P6113110042178675588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043569.P6113110042178675588

namespace A043569

/-- `∑[2*A057728(n+1)]` -/
def P6113110042178675588.Spec : Prop :=
  ∀ n, P6113110042178675588.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P769271258101118442

`(A224380(n+1)-3)/4`
-/

namespace A043569.P769271258101118442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224380 (n + 1) - 3 : ℚ) / 4

end

end A043569.P769271258101118442

namespace A043569

/-- `(A224380(n+1)-3)/4` -/
def P769271258101118442.Spec : Prop :=
  ∀ n, P769271258101118442.a n = (A043569 (n + 1) : ℚ)

end A043569

/-! ## A043569.P16710143300809406885

`or(1, A030130(n+1))+1`
-/

namespace A043569.P16710143300809406885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030130 (n + 1)) + 1

end

end A043569.P16710143300809406885

namespace A043569

/-- `or(1, A030130(n+1))+1` -/
def P16710143300809406885.Spec : Prop :=
  ∀ n, P16710143300809406885.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P12873259314909361415

`or(1, A207063(n+1))+1`
-/

namespace A043569.P12873259314909361415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207063 (n + 1)) + 1

end

end A043569.P12873259314909361415

namespace A043569

/-- `or(1, A207063(n+1))+1` -/
def P12873259314909361415.Spec : Prop :=
  ∀ n, P12873259314909361415.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P15096565517760785114

`a(n-1)+2*A155038(n)` with `a(0)=2`
-/

namespace A043569.P15096565517760785114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A155038 n

end

end A043569.P15096565517760785114

namespace A043569

/-- `a(n-1)+2*A155038(n)` -/
def P15096565517760785114.Spec : Prop :=
  ∀ n, P15096565517760785114.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P5006038748613324823

`∑[2*A059268(A056943(n))]`
-/

namespace A043569.P5006038748613324823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059268 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A043569.P5006038748613324823

namespace A043569

/-- `∑[2*A059268(A056943(n))]` -/
def P5006038748613324823.Spec : Prop :=
  ∀ n, P5006038748613324823.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P1161807053148562001

`A035214(n)+A030130(n+1)`
-/

namespace A043569.P1161807053148562001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + A030130 (n + 1)

end

end A043569.P1161807053148562001

namespace A043569

/-- `A035214(n)+A030130(n+1)` -/
def P1161807053148562001.Spec : Prop :=
  ∀ n, P1161807053148562001.a n = A043569 (n + 1)

end A043569

/-! ## A043569.P8441259333399430065

`A175332(n+1)-A130321(n)`
-/

namespace A043569.P8441259333399430065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1) - A130321 n

end

end A043569.P8441259333399430065

namespace A043569

/-- `A175332(n+1)-A130321(n)` -/
def P8441259333399430065.Spec : Prop :=
  ∀ n, P8441259333399430065.a n = A043569 (n + 1)

theorem P8441259333399430065.correct : P8441259333399430065.Spec := by
  intro n
  simp only [A043569, Nat.add_sub_cancel, A043569.P8441259333399430065.a, A043569.P15388862397033280106.a, A081118, A081118.P6487108056144640916.a, A130321, A130321.P54397649261359622.a, A175332, A175332.P10633603557300615745.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A043569

/-! ## A043569.P2805870470830456132

`2*(A140513(n)-A130321(n))`
-/

namespace A043569.P2805870470830456132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140513 n - A130321 n)

end

end A043569.P2805870470830456132

namespace A043569

/-- `2*(A140513(n)-A130321(n))` -/
def P2805870470830456132.Spec : Prop :=
  ∀ n, P2805870470830456132.a n = A043569 (n + 1)

end A043569

/-!
# A043570: Numbers whose base-2 representation has exactly 3 runs.

The programs for A043570, there is no canonical definition to state claims against.
-/

/-! ## A043570.P16313586053184200991

`1+2*A087118(n+2)`
-/

namespace A043570.P16313586053184200991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A087118 (n + 2)

end

end A043570.P16313586053184200991

/-! ## A043570.P8116674984174260189

`1+2*A043687(1+n)`
-/

namespace A043570.P8116674984174260189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A043687 (1 + n)

end

end A043570.P8116674984174260189

/-! ## A043570.P18061861837367773949

`2*A238246(1+n)-1`
-/

namespace A043570.P18061861837367773949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238246 (1 + n) - 1

end

end A043570.P18061861837367773949

/-! ## A043570.P9924995305865800478

`A238246(n+1)+A043687(n+1)`
-/

namespace A043570.P9924995305865800478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1) + A043687 (n + 1)

end

end A043570.P9924995305865800478

/-! ## A043570.P2495527402958723427

`A238246(n+1)+A087118(n+2)`
-/

namespace A043570.P2495527402958723427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1) + A087118 (n + 2)

end

end A043570.P2495527402958723427

/-! ## A043570.P2765593966249218478

`∩[2*n+1, A043682(n+1)]`
-/

namespace A043570.P2765593966249218478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P2765593966249218478

/-! ## A043570.P3118936525802273791

`eq[3, a(n-1-and(n, 2*n))+1]` with `a(0)=0`
-/

namespace A043570.P3118936525802273791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043570.P3118936525802273791

/-! ## A043570.P1699570856661289212

`eq[8, 2*a(n-1-and(n, 2*n))]` with `a(0)=1`
-/

namespace A043570.P1699570856661289212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043570.P1699570856661289212

/-! ## A043570.P5626922777011961947

`eq[4, a(n-A006257(n))+1]` with `a(0)=1`
-/

namespace A043570.P5626922777011961947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ((n : ℤ) - A006257 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043570.P5626922777011961947

/-! ## A043570.P9884099837483004730

`2*eq[A087734(n), A135534(n+1)]+1`
-/

namespace A043570.P9884099837483004730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A043570.P9884099837483004730

/-! ## A043570.P10384233165944230267

`A130773(A043687(n+1))`
-/

namespace A043570.P10384233165944230267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A043687 (n + 1)).toNat

end

end A043570.P10384233165944230267

/-! ## A043570.P8207092860549583135

`A004273(A238246(n+1))`
-/

namespace A043570.P8207092860549583135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A238246 (n + 1)).toNat

end

end A043570.P8207092860549583135

/-! ## A043570.P14813398562105794042

`∩[A043682(n+1), A004273(n)]`
-/

namespace A043570.P14813398562105794042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P14813398562105794042

/-! ## A043570.P757200931035742088

`∩[A043682(n+1), A004274(n)]`
-/

namespace A043570.P757200931035742088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P757200931035742088

/-! ## A043570.P3088890301151695751

`∩[A043682(n+1), A004276(n)]`
-/

namespace A043570.P3088890301151695751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P3088890301151695751

/-! ## A043570.P16521031389937296584

`∩[A004273(n), A043687(n+1)]`
-/

namespace A043570.P16521031389937296584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P16521031389937296584

/-! ## A043570.P7834268781307597204

`∩[A043682(n+1), A004281(n)]`
-/

namespace A043570.P7834268781307597204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P7834268781307597204

/-! ## A043570.P16161156456032951714

`∩[A043682(n+1), A060747(n)]`
-/

namespace A043570.P16161156456032951714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P16161156456032951714

/-! ## A043570.P5671451922987937656

`∩[A087118(n+1), A060747(n)]`
-/

namespace A043570.P5671451922987937656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043570.P5671451922987937656

/-! ## A043570.P14240124120298873786

`eq[4, A088748(n)]`
-/

namespace A043570.P14240124120298873786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043570.P14240124120298873786

/-!
# A043571: Numbers whose base-2 representation has exactly 4 runs.

The programs for A043571, there is no canonical definition to state claims against.
-/

/-! ## A043571.P3393412341013653483

`2*A043682(1+n)`
-/

namespace A043571.P3393412341013653483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043682 (1 + n)

end

end A043571.P3393412341013653483

/-! ## A043571.P3859978873556852635

`A043682(n+1)+A043682(n+1)`
-/

namespace A043571.P3859978873556852635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1) + A043682 (n + 1)

end

end A043571.P3859978873556852635

/-! ## A043571.P11697874994747593740

`∩[2*n, A043688(n+1)]`
-/

namespace A043571.P11697874994747593740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P11697874994747593740

/-! ## A043571.P5542222700703851492

`∩[2*n, A043758(n+1)]`
-/

namespace A043571.P5542222700703851492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P5542222700703851492

/-! ## A043571.P12039820595311769226

`∩[2*n, A043743(n+1)]`
-/

namespace A043571.P12039820595311769226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P12039820595311769226

/-! ## A043571.P17481531825259332953

`eq[4, a(n-1-and(n, 2*n))+1]` with `a(0)=0`
-/

namespace A043571.P17481531825259332953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043571.P17481531825259332953

/-! ## A043571.P11256511690261654178

`eq[4, a(n-A006257(n))+1]` with `a(0)=0`
-/

namespace A043571.P11256511690261654178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ((n : ℤ) - A006257 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043571.P11256511690261654178

/-! ## A043571.P65724504815678281

`2*eq[2, A069010(n)]`
-/

namespace A043571.P65724504815678281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043571.P65724504815678281

/-! ## A043571.P1247137452757651096

`∩[A043724(n+1), A043722(n+1)]`
-/

namespace A043571.P1247137452757651096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P1247137452757651096

/-! ## A043571.P10220166152755603645

`2*eq[1, A037800(n)]`
-/

namespace A043571.P10220166152755603645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043571.P10220166152755603645

/-! ## A043571.P7524654465669222213

`2*eq[4, A277561(n)]`
-/

namespace A043571.P7524654465669222213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043571.P7524654465669222213

/-! ## A043571.P14230493281018809239

`A004277(A043682(n+1))`
-/

namespace A043571.P14230493281018809239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043682 (n + 1)).toNat

end

end A043571.P14230493281018809239

/-! ## A043571.P4746825009824714938

`∩[A043682(n+1), A004271(n)]`
-/

namespace A043571.P4746825009824714938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P4746825009824714938

/-! ## A043571.P17903416026238743536

`∩[A043682(n+1), A004275(n)]`
-/

namespace A043571.P17903416026238743536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P17903416026238743536

/-! ## A043571.P13758078048818647499

`∩[A043688(n+1), A004271(n)]`
-/

namespace A043571.P13758078048818647499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P13758078048818647499

/-! ## A043571.P4892854201232439841

`∩[A043688(n+1), A004272(n)]`
-/

namespace A043571.P4892854201232439841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P4892854201232439841

/-! ## A043571.P11859584508853040823

`∩[A043688(n+1), A004275(n)]`
-/

namespace A043571.P11859584508853040823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P11859584508853040823

/-! ## A043571.P12552667571742059235

`∩[A043688(n+1), A004277(n)]`
-/

namespace A043571.P12552667571742059235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P12552667571742059235

/-! ## A043571.P2985698397005515370

`∩[A005843(n), A043682(n+1)]`
-/

namespace A043571.P2985698397005515370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P2985698397005515370

/-! ## A043571.P2094122647145576672

`∩[A020739(n), A043682(n+1)]`
-/

namespace A043571.P2094122647145576672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043571.P2094122647145576672

/-!
# A043572: Numbers whose base-2 representation has exactly 5 runs.

The programs for A043572, there is no canonical definition to state claims against.
-/

/-! ## A043572.P5941925377389929617

`2*A043688(1+n)+1`
-/

namespace A043572.P5941925377389929617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043688 (1 + n) + 1

end

end A043572.P5941925377389929617

/-! ## A043572.P6323848468519445656

`2*A238247(n+1)-1`
-/

namespace A043572.P6323848468519445656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238247 (n + 1) - 1

end

end A043572.P6323848468519445656

/-! ## A043572.P7297330345552495904

`A238247(n+1)+A043688(n+1)`
-/

namespace A043572.P7297330345552495904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238247 (n + 1) + A043688 (n + 1)

end

end A043572.P7297330345552495904

/-! ## A043572.P15694656570203801870

`∩[2*n+1, A043683(n+1)]`
-/

namespace A043572.P15694656570203801870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P15694656570203801870

/-! ## A043572.P8518298196431286442

`eq[5, a(n-1-and(n, 2*n))+1]` with `a(0)=0`
-/

namespace A043572.P8518298196431286442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043572.P8518298196431286442

/-! ## A043572.P16859179361745757751

`eq[4, a(n-A006257(n))-1]` with `a(0)=9`
-/

namespace A043572.P16859179361745757751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f2 =>
  f2 ((n : ℤ) - A006257 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043572.P16859179361745757751

/-! ## A043572.P15841282422326208464

`A130773(A043688(n+1))`
-/

namespace A043572.P15841282422326208464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A043688 (n + 1)).toNat

end

end A043572.P15841282422326208464

/-! ## A043572.P8395634487337587751

`A004273(A238247(n+1))`
-/

namespace A043572.P8395634487337587751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A238247 (n + 1)).toNat

end

end A043572.P8395634487337587751

/-! ## A043572.P10615577638654722894

`A005818(A043688(n+1)-1)`
-/

namespace A043572.P10615577638654722894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A043688 (n + 1) - 1).toNat

end

end A043572.P10615577638654722894

/-! ## A043572.P7420478620778065709

`A062545(A043688(n+1)-1)`
-/

namespace A043572.P7420478620778065709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A043688 (n + 1) - 1).toNat

end

end A043572.P7420478620778065709

/-! ## A043572.P937090696967171154

`∩[A004273(n), A043688(n+1)]`
-/

namespace A043572.P937090696967171154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P937090696967171154

/-! ## A043572.P4036156190097798476

`∩[A043683(n+1), A020742(n)]`
-/

namespace A043572.P4036156190097798476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P4036156190097798476

/-! ## A043572.P6244459263939093643

`∩[A043688(n+1), A020742(n)]`
-/

namespace A043572.P6244459263939093643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P6244459263939093643

/-! ## A043572.P4334221597316532206

`∩[A043688(n+1), A062545(n)]`
-/

namespace A043572.P4334221597316532206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P4334221597316532206

/-! ## A043572.P1696331711556116456

`∩[A326494(n), A043688(n+1)]`
-/

namespace A043572.P1696331711556116456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P1696331711556116456

/-! ## A043572.P10350515155830138255

`∩[A005818(n+1), A043688(n+1)]`
-/

namespace A043572.P10350515155830138255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P10350515155830138255

/-! ## A043572.P8976011801878226936

`∩[A144396(n+1), A043688(n+1)]`
-/

namespace A043572.P8976011801878226936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043572.P8976011801878226936

/-! ## A043572.P13081167904169412234

`A060747(A043688(n+1)+1)`
-/

namespace A043572.P13081167904169412234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A043688 (n + 1) + 1).toNat

end

end A043572.P13081167904169412234

/-! ## A043572.P2885831032781074655

`A004274(A043688(n+1)+2)`
-/

namespace A043572.P2885831032781074655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A043688 (n + 1) + 2).toNat

end

end A043572.P2885831032781074655

/-! ## A043572.P875654302996083575

`A004281(A043688(n+1)+2)`
-/

namespace A043572.P875654302996083575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A043688 (n + 1) + 2).toNat

end

end A043572.P875654302996083575

/-!
# A043573: Numbers whose base-2 representation has exactly 6 runs.

The programs for A043573, the canonical program `A043573.P18133658972280267536` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043573 has offset 1).

The definition of A043573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043573.P11566902141712209096

`2*A043683(1+n)`
-/

namespace A043573.P11566902141712209096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043683 (1 + n)

end

end A043573.P11566902141712209096

namespace A043573

/-- `2*A043683(1+n)` -/
def P11566902141712209096.Spec : Prop :=
  ∀ n, P11566902141712209096.a n = A043573 (n + 1)

end A043573

/-! ## A043573.P15329872387799847784

`A043683(n+1)+A043683(n+1)`
-/

namespace A043573.P15329872387799847784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1) + A043683 (n + 1)

end

end A043573.P15329872387799847784

namespace A043573

/-- `A043683(n+1)+A043683(n+1)` -/
def P15329872387799847784.Spec : Prop :=
  ∀ n, P15329872387799847784.a n = A043573 (n + 1)

end A043573

/-! ## A043573.P18133658972280267536

`eq[8, a(n-A006257(n))+1]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043573

/-- `eq[8, a(n-A006257(n))+1]` -/
def P18133658972280267536.Spec : Prop :=
  ∀ n, (P18133658972280267536.a n : ℤ) = A043573 (n + 1)

theorem P18133658972280267536.correct : P18133658972280267536.Spec := by
  intro n
  simp only [A043573, Nat.add_sub_cancel]

end A043573

/-! ## A043573.P16238882071421484139

`2*eq[3, A069010(n)]`
-/

namespace A043573.P16238882071421484139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043573.P16238882071421484139

namespace A043573

/-- `2*eq[3, A069010(n)]` -/
def P16238882071421484139.Spec : Prop :=
  ∀ n, (P16238882071421484139.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P226063927081763052

`∩[2*n, A043689(n+1)]`
-/

namespace A043573.P226063927081763052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P226063927081763052

namespace A043573

/-- `∩[2*n, A043689(n+1)]` -/
def P226063927081763052.Spec : Prop :=
  ∀ n, (P226063927081763052.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P13606490662874190166

`2*eq[2, A037800(n)]`
-/

namespace A043573.P13606490662874190166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043573.P13606490662874190166

namespace A043573

/-- `2*eq[2, A037800(n)]` -/
def P13606490662874190166.Spec : Prop :=
  ∀ n, (P13606490662874190166.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P6356079421359067434

`A004277(A043683(n+1))`
-/

namespace A043573.P6356079421359067434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043683 (n + 1)).toNat

end

end A043573.P6356079421359067434

namespace A043573

/-- `A004277(A043683(n+1))` -/
def P6356079421359067434.Spec : Prop :=
  ∀ n, P6356079421359067434.a n = A043573 (n + 1)

end A043573

/-! ## A043573.P4928680929680965959

`∩[A043689(n+1), A004277(n)]`
-/

namespace A043573.P4928680929680965959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P4928680929680965959

namespace A043573

/-- `∩[A043689(n+1), A004277(n)]` -/
def P4928680929680965959.Spec : Prop :=
  ∀ n, (P4928680929680965959.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P14557066742325732379

`∩[A043683(n+1), A005843(n)]`
-/

namespace A043573.P14557066742325732379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P14557066742325732379

namespace A043573

/-- `∩[A043683(n+1), A005843(n)]` -/
def P14557066742325732379.Spec : Prop :=
  ∀ n, (P14557066742325732379.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P7428104254300525876

`∩[A043689(n+1), A005843(n)]`
-/

namespace A043573.P7428104254300525876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P7428104254300525876

namespace A043573

/-- `∩[A043689(n+1), A005843(n)]` -/
def P7428104254300525876.Spec : Prop :=
  ∀ n, (P7428104254300525876.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P11089555053171369830

`∩[A043683(n+1), A020739(n)]`
-/

namespace A043573.P11089555053171369830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P11089555053171369830

namespace A043573

/-- `∩[A043683(n+1), A020739(n)]` -/
def P11089555053171369830.Spec : Prop :=
  ∀ n, (P11089555053171369830.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P12338218756579285708

`∩[A043683(n+1), A020744(n)]`
-/

namespace A043573.P12338218756579285708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P12338218756579285708

namespace A043573

/-- `∩[A043683(n+1), A020744(n)]` -/
def P12338218756579285708.Spec : Prop :=
  ∀ n, (P12338218756579285708.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P9694903868848425518

`∩[A043689(n+1), A020744(n)]`
-/

namespace A043573.P9694903868848425518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P9694903868848425518

namespace A043573

/-- `∩[A043689(n+1), A020744(n)]` -/
def P9694903868848425518.Spec : Prop :=
  ∀ n, (P9694903868848425518.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P9863025738891920064

`∩[A103517(n), A043683(n+1)]`
-/

namespace A043573.P9863025738891920064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P9863025738891920064

namespace A043573

/-- `∩[A103517(n), A043683(n+1)]` -/
def P9863025738891920064.Spec : Prop :=
  ∀ n, (P9863025738891920064.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P12429515908633248800

`∩[A004275(n), A043683(n+1)]`
-/

namespace A043573.P12429515908633248800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P12429515908633248800

namespace A043573

/-- `∩[A004275(n), A043683(n+1)]` -/
def P12429515908633248800.Spec : Prop :=
  ∀ n, (P12429515908633248800.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P5404890541382111127

`∩[A004271(n), A043683(n+1)]`
-/

namespace A043573.P5404890541382111127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P5404890541382111127

namespace A043573

/-- `∩[A004271(n), A043683(n+1)]` -/
def P5404890541382111127.Spec : Prop :=
  ∀ n, (P5404890541382111127.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P9180356385305471120

`∩[A004272(n), A043683(n+1)]`
-/

namespace A043573.P9180356385305471120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P9180356385305471120

namespace A043573

/-- `∩[A004272(n), A043683(n+1)]` -/
def P9180356385305471120.Spec : Prop :=
  ∀ n, (P9180356385305471120.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P11345421096033726045

`∩[A004279(n), A043683(n+1)]`
-/

namespace A043573.P11345421096033726045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043573.P11345421096033726045

namespace A043573

/-- `∩[A004279(n), A043683(n+1)]` -/
def P11345421096033726045.Spec : Prop :=
  ∀ n, (P11345421096033726045.a n : ℤ) = A043573 (n + 1)

end A043573

/-! ## A043573.P12078307975024832077

`eq[7, A088748(n)]`
-/

namespace A043573.P12078307975024832077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043573.P12078307975024832077

namespace A043573

/-- `eq[7, A088748(n)]` -/
def P12078307975024832077.Spec : Prop :=
  ∀ n, (P12078307975024832077.a n : ℤ) = A043573 (n + 1)

end A043573

/-!
# A043574: Numbers whose base-2 representation has exactly 7 runs.

The programs for A043574, the canonical program `A043574.P2106870287993236805` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043574 has offset 1).

The definition of A043574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8643 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043574.P14043419965931500082

`1+2*A043689(n+1)`
-/

namespace A043574.P14043419965931500082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A043689 (n + 1)

end

end A043574.P14043419965931500082

namespace A043574

/-- `1+2*A043689(n+1)` -/
def P14043419965931500082.Spec : Prop :=
  ∀ n, P14043419965931500082.a n = A043574 (n + 1)

end A043574

/-! ## A043574.P2984097575052772611

`2*A238248(1+n)-1`
-/

namespace A043574.P2984097575052772611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238248 (1 + n) - 1

end

end A043574.P2984097575052772611

namespace A043574

/-- `2*A238248(1+n)-1` -/
def P2984097575052772611.Spec : Prop :=
  ∀ n, P2984097575052772611.a n = A043574 (n + 1)

end A043574

/-! ## A043574.P4234002737332019133

`A238248(n+1)+A043689(n+1)`
-/

namespace A043574.P4234002737332019133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238248 (n + 1) + A043689 (n + 1)

end

end A043574.P4234002737332019133

namespace A043574

/-- `A238248(n+1)+A043689(n+1)` -/
def P4234002737332019133.Spec : Prop :=
  ∀ n, P4234002737332019133.a n = A043574 (n + 1)

end A043574

/-! ## A043574.P13883815055578492361

`A238248(n+1)+∪[A043573(n+1), A043761(n+1)]`
-/

namespace A043574.P13883815055578492361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043761 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238248 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A043574.P13883815055578492361

namespace A043574

/-- `A238248(n+1)+∪[A043573(n+1), A043761(n+1)]` -/
def P13883815055578492361.Spec : Prop :=
  ∀ n, P13883815055578492361.a n = A043574 (n + 1)

end A043574

/-! ## A043574.P1116742956480985896

`∪[A043573(n+1), A043761(n+1)]+A043689(n+1)+1`
-/

namespace A043574.P1116742956480985896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043761 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) + (A043689 (n + 1) + 1)

end

end A043574.P1116742956480985896

namespace A043574

/-- `∪[A043573(n+1), A043761(n+1)]+A043689(n+1)+1` -/
def P1116742956480985896.Spec : Prop :=
  ∀ n, P1116742956480985896.a n = A043574 (n + 1)

end A043574

/-! ## A043574.P5557998035556528311

`∩[2*n+1, A043761(n+1)]`
-/

namespace A043574.P5557998035556528311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P5557998035556528311

namespace A043574

/-- `∩[2*n+1, A043761(n+1)]` -/
def P5557998035556528311.Spec : Prop :=
  ∀ n, (P5557998035556528311.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P296549824412814188

`filter[A043761(n+1), A035263(#)]`
-/

namespace A043574.P296549824412814188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A043574.P296549824412814188

namespace A043574

/-- `filter[A043761(n+1), A035263(#)]` -/
def P296549824412814188.Spec : Prop :=
  ∀ n, P296549824412814188.a n = A043574 (n + 1)

end A043574

/-! ## A043574.P7838622637050726138

`filter[A043761(n+1), A093719(#)]`
-/

namespace A043574.P7838622637050726138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A043574.P7838622637050726138

namespace A043574

/-- `filter[A043761(n+1), A093719(#)]` -/
def P7838622637050726138.Spec : Prop :=
  ∀ n, P7838622637050726138.a n = A043574 (n + 1)

end A043574

/-! ## A043574.P1073867764969947713

`∩[2*n+1, A043739(n+1)]`
-/

namespace A043574.P1073867764969947713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P1073867764969947713

namespace A043574

/-- `∩[2*n+1, A043739(n+1)]` -/
def P1073867764969947713.Spec : Prop :=
  ∀ n, (P1073867764969947713.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P2106870287993236805

`eq[7, a(and(n, -(2*n+1))-1)+1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A043574

/-- `eq[7, a(and(n, -(2*n+1))-1)+1]` -/
def P2106870287993236805.Spec : Prop :=
  ∀ n, (P2106870287993236805.a n : ℤ) = A043574 (n + 1)

theorem P2106870287993236805.correct : P2106870287993236805.Spec := by
  intro n
  simp only [A043574, Nat.add_sub_cancel]

end A043574

/-! ## A043574.P7617203378569904859

`∩[2*n+1, A043730(n+1)]`
-/

namespace A043574.P7617203378569904859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P7617203378569904859

namespace A043574

/-- `∩[2*n+1, A043730(n+1)]` -/
def P7617203378569904859.Spec : Prop :=
  ∀ n, (P7617203378569904859.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P17837191273450921728

`∩[A043730(n+1), A043734(n+1)]`
-/

namespace A043574.P17837191273450921728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P17837191273450921728

namespace A043574

/-- `∩[A043730(n+1), A043734(n+1)]` -/
def P17837191273450921728.Spec : Prop :=
  ∀ n, (P17837191273450921728.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P6131124493654616794

`∩[A043727(n+1), A043734(n+1)]`
-/

namespace A043574.P6131124493654616794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P6131124493654616794

namespace A043574

/-- `∩[A043727(n+1), A043734(n+1)]` -/
def P6131124493654616794.Spec : Prop :=
  ∀ n, (P6131124493654616794.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P4973939590172566267

`∩[A043722(n+1), A043727(n+1)]`
-/

namespace A043574.P4973939590172566267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P4973939590172566267

namespace A043574

/-- `∩[A043722(n+1), A043727(n+1)]` -/
def P4973939590172566267.Spec : Prop :=
  ∀ n, (P4973939590172566267.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P12512601421072348035

`∩[A043689(n+1), A043722(n+1)]`
-/

namespace A043574.P12512601421072348035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P12512601421072348035

namespace A043574

/-- `∩[A043689(n+1), A043722(n+1)]` -/
def P12512601421072348035.Spec : Prop :=
  ∀ n, (P12512601421072348035.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P8626917893339554165

`∩[A043689(n+1), A043727(n+1)]`
-/

namespace A043574.P8626917893339554165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P8626917893339554165

namespace A043574

/-- `∩[A043689(n+1), A043727(n+1)]` -/
def P8626917893339554165.Spec : Prop :=
  ∀ n, (P8626917893339554165.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P14607855519859427498

`∩[A043689(n+1), A043734(n+1)]`
-/

namespace A043574.P14607855519859427498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P14607855519859427498

namespace A043574

/-- `∩[A043689(n+1), A043734(n+1)]` -/
def P14607855519859427498.Spec : Prop :=
  ∀ n, (P14607855519859427498.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P9198526438571506861

`∩[A043689(n+1), A280998(n+1)]`
-/

namespace A043574.P9198526438571506861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P9198526438571506861

namespace A043574

/-- `∩[A043689(n+1), A280998(n+1)]` -/
def P9198526438571506861.Spec : Prop :=
  ∀ n, (P9198526438571506861.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P4683228664211055829

`∩[2*n+1, A043684(n+1)]`
-/

namespace A043574.P4683228664211055829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P4683228664211055829

namespace A043574

/-- `∩[2*n+1, A043684(n+1)]` -/
def P4683228664211055829.Spec : Prop :=
  ∀ n, (P4683228664211055829.a n : ℤ) = A043574 (n + 1)

end A043574

/-! ## A043574.P1300454635777982004

`∩[A043684(n+1), A043689(n+1)]`
-/

namespace A043574.P1300454635777982004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043574.P1300454635777982004

namespace A043574

/-- `∩[A043684(n+1), A043689(n+1)]` -/
def P1300454635777982004.Spec : Prop :=
  ∀ n, (P1300454635777982004.a n : ℤ) = A043574 (n + 1)

end A043574

/-!
# A043575: Numbers whose base-2 representation has exactly 8 runs.

The programs for A043575, the canonical program `A043575.P18156973941041410115` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043575 has offset 1).

The definition of A043575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043575.P9045336264970625232

`2*A043684(1+n)`
-/

namespace A043575.P9045336264970625232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043684 (1 + n)

end

end A043575.P9045336264970625232

namespace A043575

/-- `2*A043684(1+n)` -/
def P9045336264970625232.Spec : Prop :=
  ∀ n, P9045336264970625232.a n = A043575 (n + 1)

end A043575

/-! ## A043575.P9628340157413572763

`A043684(n+1)+A043684(n+1)`
-/

namespace A043575.P9628340157413572763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043684 (n + 1) + A043684 (n + 1)

end

end A043575.P9628340157413572763

namespace A043575

/-- `A043684(n+1)+A043684(n+1)` -/
def P9628340157413572763.Spec : Prop :=
  ∀ n, P9628340157413572763.a n = A043575 (n + 1)

end A043575

/-! ## A043575.P5902735337987271562

`∩[2*n, A043740(n+1)]`
-/

namespace A043575.P5902735337987271562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P5902735337987271562

namespace A043575

/-- `∩[2*n, A043740(n+1)]` -/
def P5902735337987271562.Spec : Prop :=
  ∀ n, (P5902735337987271562.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P18156973941041410115

`filter[A043740(n+2), A354034(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043575

/-- `filter[A043740(n+2), A354034(#)]` -/
def P18156973941041410115.Spec : Prop :=
  ∀ n, P18156973941041410115.a n = A043575 (n + 1)

theorem P18156973941041410115.correct : P18156973941041410115.Spec := by
  intro n
  simp only [A043575, Nat.add_sub_cancel]

end A043575

/-! ## A043575.P11354688799976343341

`∩[2*n, A043731(n+1)]`
-/

namespace A043575.P11354688799976343341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P11354688799976343341

namespace A043575

/-- `∩[2*n, A043731(n+1)]` -/
def P11354688799976343341.Spec : Prop :=
  ∀ n, (P11354688799976343341.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P18296371377108127864

`∩[A043731(n+1), A043735(n+1)]`
-/

namespace A043575.P18296371377108127864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P18296371377108127864

namespace A043575

/-- `∩[A043731(n+1), A043735(n+1)]` -/
def P18296371377108127864.Spec : Prop :=
  ∀ n, (P18296371377108127864.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P3132880448594085281

`∩[A043724(n+1), A043735(n+1)]`
-/

namespace A043575.P3132880448594085281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P3132880448594085281

namespace A043575

/-- `∩[A043724(n+1), A043735(n+1)]` -/
def P3132880448594085281.Spec : Prop :=
  ∀ n, (P3132880448594085281.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P9892001212967569943

`2*eq[4, A069010(n)]`
-/

namespace A043575.P9892001212967569943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043575.P9892001212967569943

namespace A043575

/-- `2*eq[4, A069010(n)]` -/
def P9892001212967569943.Spec : Prop :=
  ∀ n, (P9892001212967569943.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P528761866652884068

`∩[A043723(n+1), A043724(n+1)]`
-/

namespace A043575.P528761866652884068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P528761866652884068

namespace A043575

/-- `∩[A043723(n+1), A043724(n+1)]` -/
def P528761866652884068.Spec : Prop :=
  ∀ n, (P528761866652884068.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P9899328122128221197

`∩[2*n, A043690(n+1)]`
-/

namespace A043575.P9899328122128221197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P9899328122128221197

namespace A043575

/-- `∩[2*n, A043690(n+1)]` -/
def P9899328122128221197.Spec : Prop :=
  ∀ n, (P9899328122128221197.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P3737941239214702756

`∩[A043690(n+1), A043723(n+1)]`
-/

namespace A043575.P3737941239214702756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P3737941239214702756

namespace A043575

/-- `∩[A043690(n+1), A043723(n+1)]` -/
def P3737941239214702756.Spec : Prop :=
  ∀ n, (P3737941239214702756.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P4291082100881070481

`∩[A043690(n+1), A043724(n+1)]`
-/

namespace A043575.P4291082100881070481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P4291082100881070481

namespace A043575

/-- `∩[A043690(n+1), A043724(n+1)]` -/
def P4291082100881070481.Spec : Prop :=
  ∀ n, (P4291082100881070481.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P13846262671232182939

`∩[A043690(n+1), A043735(n+1)]`
-/

namespace A043575.P13846262671232182939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P13846262671232182939

namespace A043575

/-- `∩[A043690(n+1), A043735(n+1)]` -/
def P13846262671232182939.Spec : Prop :=
  ∀ n, (P13846262671232182939.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P11277612234378276242

`∩[A043690(n+1), A266214(n+1)]`
-/

namespace A043575.P11277612234378276242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P11277612234378276242

namespace A043575

/-- `∩[A043690(n+1), A266214(n+1)]` -/
def P11277612234378276242.Spec : Prop :=
  ∀ n, (P11277612234378276242.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P14588334375259854638

`∩[A043731(n+1), A266214(n+1)]`
-/

namespace A043575.P14588334375259854638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P14588334375259854638

namespace A043575

/-- `∩[A043731(n+1), A266214(n+1)]` -/
def P14588334375259854638.Spec : Prop :=
  ∀ n, (P14588334375259854638.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P12803209779837928203

`∩[A043740(n+1), A266214(n+1)]`
-/

namespace A043575.P12803209779837928203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P12803209779837928203

namespace A043575

/-- `∩[A043740(n+1), A266214(n+1)]` -/
def P12803209779837928203.Spec : Prop :=
  ∀ n, (P12803209779837928203.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P17295241229380041232

`∩[A043684(n+1), A076772(n)]`
-/

namespace A043575.P17295241229380041232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P17295241229380041232

namespace A043575

/-- `∩[A043684(n+1), A076772(n)]` -/
def P17295241229380041232.Spec : Prop :=
  ∀ n, (P17295241229380041232.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P8593609907513328858

`∩[A043690(n+1), A076772(n)]`
-/

namespace A043575.P8593609907513328858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P8593609907513328858

namespace A043575

/-- `∩[A043690(n+1), A076772(n)]` -/
def P8593609907513328858.Spec : Prop :=
  ∀ n, (P8593609907513328858.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P14008296876532115537

`∩[A043731(n+1), A076772(n)]`
-/

namespace A043575.P14008296876532115537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P14008296876532115537

namespace A043575

/-- `∩[A043731(n+1), A076772(n)]` -/
def P14008296876532115537.Spec : Prop :=
  ∀ n, (P14008296876532115537.a n : ℤ) = A043575 (n + 1)

end A043575

/-! ## A043575.P9177778199122895508

`∩[A043740(n+1), A076772(n)]`
-/

namespace A043575.P9177778199122895508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043575.P9177778199122895508

namespace A043575

/-- `∩[A043740(n+1), A076772(n)]` -/
def P9177778199122895508.Spec : Prop :=
  ∀ n, (P9177778199122895508.a n : ℤ) = A043575 (n + 1)

end A043575

/-!
# A043576: Numbers whose base-2 representation has exactly 9 runs.

The programs for A043576, the canonical program `A043576.P9157064947003419788` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043576 has offset 1).

The definition of A043576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043576.P13137220947961703998

`2*A043690(1+n)+1`
-/

namespace A043576.P13137220947961703998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043690 (1 + n) + 1

end

end A043576.P13137220947961703998

namespace A043576

/-- `2*A043690(1+n)+1` -/
def P13137220947961703998.Spec : Prop :=
  ∀ n, P13137220947961703998.a n = A043576 (n + 1)

end A043576

/-! ## A043576.P2250830333475736653

`∩[A043741(n+1), A043747(n+1)]`
-/

namespace A043576.P2250830333475736653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P2250830333475736653

namespace A043576

/-- `∩[A043741(n+1), A043747(n+1)]` -/
def P2250830333475736653.Spec : Prop :=
  ∀ n, (P2250830333475736653.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P9157064947003419788

`∩[A043736(n+1), A043741(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A043576

/-- `∩[A043736(n+1), A043741(n+1)]` -/
def P9157064947003419788.Spec : Prop :=
  ∀ n, (P9157064947003419788.a n : ℤ) = A043576 (n + 1)

theorem P9157064947003419788.correct : P9157064947003419788.Spec := by
  intro n
  simp only [A043576, Nat.add_sub_cancel]

end A043576

/-! ## A043576.P16006576237320593632

`∩[A043736(n+1), A043747(n+1)]`
-/

namespace A043576.P16006576237320593632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P16006576237320593632

namespace A043576

/-- `∩[A043736(n+1), A043747(n+1)]` -/
def P16006576237320593632.Spec : Prop :=
  ∀ n, (P16006576237320593632.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P2460704412862911881

`filter[A043732(n+1), #%2]`
-/

namespace A043576.P2460704412862911881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A043576.P2460704412862911881

namespace A043576

/-- `filter[A043732(n+1), #%2]` -/
def P2460704412862911881.Spec : Prop :=
  ∀ n, P2460704412862911881.a n = A043576 (n + 1)

end A043576

/-! ## A043576.P10125529495490102868

`∩[A043732(n+1), A043736(n+1)]`
-/

namespace A043576.P10125529495490102868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P10125529495490102868

namespace A043576

/-- `∩[A043732(n+1), A043736(n+1)]` -/
def P10125529495490102868.Spec : Prop :=
  ∀ n, (P10125529495490102868.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P3437031162618535284

`∩[A043732(n+1), A043741(n+1)]`
-/

namespace A043576.P3437031162618535284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P3437031162618535284

namespace A043576

/-- `∩[A043732(n+1), A043741(n+1)]` -/
def P3437031162618535284.Spec : Prop :=
  ∀ n, (P3437031162618535284.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P462583686578643863

`∩[A043732(n+1), A043747(n+1)]`
-/

namespace A043576.P462583686578643863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P462583686578643863

namespace A043576

/-- `∩[A043732(n+1), A043747(n+1)]` -/
def P462583686578643863.Spec : Prop :=
  ∀ n, (P462583686578643863.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P18060665577191825897

`∩[A043725(n+1), A043732(n+1)]`
-/

namespace A043576.P18060665577191825897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P18060665577191825897

namespace A043576

/-- `∩[A043725(n+1), A043732(n+1)]` -/
def P18060665577191825897.Spec : Prop :=
  ∀ n, (P18060665577191825897.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P6077263108899950632

`∩[A043725(n+1), A043736(n+1)]`
-/

namespace A043576.P6077263108899950632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P6077263108899950632

namespace A043576

/-- `∩[A043725(n+1), A043736(n+1)]` -/
def P6077263108899950632.Spec : Prop :=
  ∀ n, (P6077263108899950632.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P15475192222061421890

`∩[A043725(n+1), A043741(n+1)]`
-/

namespace A043576.P15475192222061421890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P15475192222061421890

namespace A043576

/-- `∩[A043725(n+1), A043741(n+1)]` -/
def P15475192222061421890.Spec : Prop :=
  ∀ n, (P15475192222061421890.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P4090457107715062002

`record[A000265(A043685(n+1))]`
-/

namespace A043576.P4090457107715062002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043685 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043576.P4090457107715062002

namespace A043576

/-- `record[A000265(A043685(n+1))]` -/
def P4090457107715062002.Spec : Prop :=
  ∀ n, P4090457107715062002.a n = A043576 (n + 1)

end A043576

/-! ## A043576.P15790025141226590534

`∩[A043685(n+1), A043725(n+1)]`
-/

namespace A043576.P15790025141226590534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P15790025141226590534

namespace A043576

/-- `∩[A043685(n+1), A043725(n+1)]` -/
def P15790025141226590534.Spec : Prop :=
  ∀ n, (P15790025141226590534.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P8156165814445893079

`∩[A043685(n+1), A043732(n+1)]`
-/

namespace A043576.P8156165814445893079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P8156165814445893079

namespace A043576

/-- `∩[A043685(n+1), A043732(n+1)]` -/
def P8156165814445893079.Spec : Prop :=
  ∀ n, (P8156165814445893079.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P9545722722324167989

`∩[A043685(n+1), A043736(n+1)]`
-/

namespace A043576.P9545722722324167989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P9545722722324167989

namespace A043576

/-- `∩[A043685(n+1), A043736(n+1)]` -/
def P9545722722324167989.Spec : Prop :=
  ∀ n, (P9545722722324167989.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P6006503138113356072

`∩[A043685(n+1), A043741(n+1)]`
-/

namespace A043576.P6006503138113356072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P6006503138113356072

namespace A043576

/-- `∩[A043685(n+1), A043741(n+1)]` -/
def P6006503138113356072.Spec : Prop :=
  ∀ n, (P6006503138113356072.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P6455235987853864646

`∩[A043685(n+1), A043747(n+1)]`
-/

namespace A043576.P6455235987853864646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P6455235987853864646

namespace A043576

/-- `∩[A043685(n+1), A043747(n+1)]` -/
def P6455235987853864646.Spec : Prop :=
  ∀ n, (P6455235987853864646.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P8727342071320777067

`∩[A043685(n+1), A043721(n+1)]`
-/

namespace A043576.P8727342071320777067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P8727342071320777067

namespace A043576

/-- `∩[A043685(n+1), A043721(n+1)]` -/
def P8727342071320777067.Spec : Prop :=
  ∀ n, (P8727342071320777067.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P10366970831382831713

`∩[A043721(n+1), A043725(n+1)]`
-/

namespace A043576.P10366970831382831713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P10366970831382831713

namespace A043576

/-- `∩[A043721(n+1), A043725(n+1)]` -/
def P10366970831382831713.Spec : Prop :=
  ∀ n, (P10366970831382831713.a n : ℤ) = A043576 (n + 1)

end A043576

/-! ## A043576.P3594921423115243220

`∩[A043721(n+1), A043732(n+1)]`
-/

namespace A043576.P3594921423115243220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P3594921423115243220

namespace A043576

/-- `∩[A043721(n+1), A043732(n+1)]` -/
def P3594921423115243220.Spec : Prop :=
  ∀ n, (P3594921423115243220.a n : ℤ) = A043576 (n + 1)

end A043576

/-!
# A043577: Numbers whose base-2 representation has exactly 10 runs.

The programs for A043577, the canonical program `A043577.P7864183051118579385` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043577 has offset 1).

The definition of A043577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043577.P11934122365561912762

`2*A043685(1+n)`
-/

namespace A043577.P11934122365561912762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043685 (1 + n)

end

end A043577.P11934122365561912762

namespace A043577

/-- `2*A043685(1+n)` -/
def P11934122365561912762.Spec : Prop :=
  ∀ n, P11934122365561912762.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P10545167262776208311

`A043685(n+1)+A043685(n+1)`
-/

namespace A043577.P10545167262776208311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1) + A043685 (n + 1)

end

end A043577.P10545167262776208311

namespace A043577

/-- `A043685(n+1)+A043685(n+1)` -/
def P10545167262776208311.Spec : Prop :=
  ∀ n, P10545167262776208311.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P2187220910087982803

`∩[A043748(n+1), A043755(n+1)]`
-/

namespace A043577.P2187220910087982803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P2187220910087982803

namespace A043577

/-- `∩[A043748(n+1), A043755(n+1)]` -/
def P2187220910087982803.Spec : Prop :=
  ∀ n, (P2187220910087982803.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P11172728930465898566

`∩[A043742(n+1), A043748(n+1)]`
-/

namespace A043577.P11172728930465898566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P11172728930465898566

namespace A043577

/-- `∩[A043742(n+1), A043748(n+1)]` -/
def P11172728930465898566.Spec : Prop :=
  ∀ n, (P11172728930465898566.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P17854574750017818812

`∩[A043742(n+1), A043755(n+1)]`
-/

namespace A043577.P17854574750017818812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P17854574750017818812

namespace A043577

/-- `∩[A043742(n+1), A043755(n+1)]` -/
def P17854574750017818812.Spec : Prop :=
  ∀ n, (P17854574750017818812.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P7864183051118579385

`∩[A043737(n+1), A043742(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043577

/-- `∩[A043737(n+1), A043742(n+1)]` -/
def P7864183051118579385.Spec : Prop :=
  ∀ n, (P7864183051118579385.a n : ℤ) = A043577 (n + 1)

theorem P7864183051118579385.correct : P7864183051118579385.Spec := by
  intro n
  simp only [A043577, Nat.add_sub_cancel]

end A043577

/-! ## A043577.P15097281055269492329

`∩[A043737(n+1), A043748(n+1)]`
-/

namespace A043577.P15097281055269492329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P15097281055269492329

namespace A043577

/-- `∩[A043737(n+1), A043748(n+1)]` -/
def P15097281055269492329.Spec : Prop :=
  ∀ n, (P15097281055269492329.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P13583162609867230080

`∩[A043737(n+1), A043755(n+1)]`
-/

namespace A043577.P13583162609867230080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P13583162609867230080

namespace A043577

/-- `∩[A043737(n+1), A043755(n+1)]` -/
def P13583162609867230080.Spec : Prop :=
  ∀ n, (P13583162609867230080.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P12108158384753873136

`filter[A043755(n+1), A178226(#)]`
-/

namespace A043577.P12108158384753873136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A043577.P12108158384753873136

namespace A043577

/-- `filter[A043755(n+1), A178226(#)]` -/
def P12108158384753873136.Spec : Prop :=
  ∀ n, P12108158384753873136.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P11304154799423855237

`filter[A043755(n+2), A354034(#)]`
-/

namespace A043577.P11304154799423855237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A043577.P11304154799423855237

namespace A043577

/-- `filter[A043755(n+2), A354034(#)]` -/
def P11304154799423855237.Spec : Prop :=
  ∀ n, P11304154799423855237.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P18019686842744412124

`∩[A043691(n+1), A043737(n+1)]`
-/

namespace A043577.P18019686842744412124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P18019686842744412124

namespace A043577

/-- `∩[A043691(n+1), A043737(n+1)]` -/
def P18019686842744412124.Spec : Prop :=
  ∀ n, (P18019686842744412124.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P3705704243512631280

`∩[A043691(n+1), A043742(n+1)]`
-/

namespace A043577.P3705704243512631280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P3705704243512631280

namespace A043577

/-- `∩[A043691(n+1), A043742(n+1)]` -/
def P3705704243512631280.Spec : Prop :=
  ∀ n, (P3705704243512631280.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P17292554886873917981

`∩[A043691(n+1), A043748(n+1)]`
-/

namespace A043577.P17292554886873917981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P17292554886873917981

namespace A043577

/-- `∩[A043691(n+1), A043748(n+1)]` -/
def P17292554886873917981.Spec : Prop :=
  ∀ n, (P17292554886873917981.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P9547083443976321379

`∩[A043691(n+1), A043755(n+1)]`
-/

namespace A043577.P9547083443976321379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043577.P9547083443976321379

namespace A043577

/-- `∩[A043691(n+1), A043755(n+1)]` -/
def P9547083443976321379.Spec : Prop :=
  ∀ n, (P9547083443976321379.a n : ℤ) = A043577 (n + 1)

end A043577

/-! ## A043577.P13346506075890126670

`A004277(A043685(n+1))`
-/

namespace A043577.P13346506075890126670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043685 (n + 1)).toNat

end

end A043577.P13346506075890126670

namespace A043577

/-- `A004277(A043685(n+1))` -/
def P13346506075890126670.Spec : Prop :=
  ∀ n, P13346506075890126670.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P7229216154950849421

`A004275(A043685(n+1)+1)`
-/

namespace A043577.P7229216154950849421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A043685 (n + 1) + 1).toNat

end

end A043577.P7229216154950849421

namespace A043577

/-- `A004275(A043685(n+1)+1)` -/
def P7229216154950849421.Spec : Prop :=
  ∀ n, P7229216154950849421.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P16753071294267310941

`filter[A043755(n+1), A043545(#)]`
-/

namespace A043577.P16753071294267310941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A043577.P16753071294267310941

namespace A043577

/-- `filter[A043755(n+1), A043545(#)]` -/
def P16753071294267310941.Spec : Prop :=
  ∀ n, P16753071294267310941.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P12882204538593742210

`filter[A043685(n+1), A059841(#)]`
-/

namespace A043577.P12882204538593742210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A043577.P12882204538593742210

namespace A043577

/-- `filter[A043685(n+1), A059841(#)]` -/
def P12882204538593742210.Spec : Prop :=
  ∀ n, P12882204538593742210.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P11715952146405894991

`filter[A043691(n+1), A059841(#)]`
-/

namespace A043577.P11715952146405894991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A043577.P11715952146405894991

namespace A043577

/-- `filter[A043691(n+1), A059841(#)]` -/
def P11715952146405894991.Spec : Prop :=
  ∀ n, P11715952146405894991.a n = A043577 (n + 1)

end A043577

/-! ## A043577.P9789589348363456884

`filter[A043728(n+1), A059841(#)]`
-/

namespace A043577.P9789589348363456884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A043577.P9789589348363456884

namespace A043577

/-- `filter[A043728(n+1), A059841(#)]` -/
def P9789589348363456884.Spec : Prop :=
  ∀ n, P9789589348363456884.a n = A043577 (n + 1)

end A043577

/-!
# A043578: Numbers whose base-2 representation has exactly 11 runs.

The programs for A043578, there is no canonical definition to state claims against.
-/

/-! ## A043578.P6019122738949626762

`2*A043691(1+n)+1`
-/

namespace A043578.P6019122738949626762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043691 (1 + n) + 1

end

end A043578.P6019122738949626762

/-! ## A043578.P12952910647870256752

`∩[A043756(n+1), A043764(n+1)]`
-/

namespace A043578.P12952910647870256752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P12952910647870256752

/-! ## A043578.P3783984088290112226

`∩[A043749(n+1), A043756(n+1)]`
-/

namespace A043578.P3783984088290112226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P3783984088290112226

/-! ## A043578.P18440722431111233021

`∩[A043749(n+1), A043764(n+1)]`
-/

namespace A043578.P18440722431111233021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P18440722431111233021

/-! ## A043578.P3671710649658129852

`record[A000265(A043686(n+1))]`
-/

namespace A043578.P3671710649658129852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043578.P3671710649658129852

/-! ## A043578.P930325615992024124

`∩[A043686(n+1), A043749(n+1)]`
-/

namespace A043578.P930325615992024124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P930325615992024124

/-! ## A043578.P271441033162233068

`∩[A043686(n+1), A043756(n+1)]`
-/

namespace A043578.P271441033162233068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P271441033162233068

/-! ## A043578.P6736195931763846573

`∩[A043686(n+1), A043764(n+1)]`
-/

namespace A043578.P6736195931763846573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P6736195931763846573

/-! ## A043578.P19511363593709631

`∩[A043686(n+1), A043691(n+1)]`
-/

namespace A043578.P19511363593709631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P19511363593709631

/-! ## A043578.P4293257617544166964

`∩[A043691(n+1), A043749(n+1)]`
-/

namespace A043578.P4293257617544166964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P4293257617544166964

/-! ## A043578.P5840935181641165964

`∩[A043691(n+1), A043756(n+1)]`
-/

namespace A043578.P5840935181641165964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P5840935181641165964

/-! ## A043578.P6612322187802995439

`∩[A043691(n+1), A043764(n+1)]`
-/

namespace A043578.P6612322187802995439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043578.P6612322187802995439

/-! ## A043578.P10681585584184331686

`record[A000265(A043579(n+1))]`
-/

namespace A043578.P10681585584184331686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043578.P10681585584184331686

/-! ## A043578.P12867144602926732251

`A005408(A043691(n+1))`
-/

namespace A043578.P12867144602926732251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A043691 (n + 1)).toNat

end

end A043578.P12867144602926732251

/-! ## A043578.P836664882290415739

`A004273(A043691(n+1)+1)`
-/

namespace A043578.P836664882290415739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A043691 (n + 1) + 1).toNat

end

end A043578.P836664882290415739

/-! ## A043578.P5858705316191127220

`A005843(A043691(n+1)+1)-1`
-/

namespace A043578.P5858705316191127220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043691 (n + 1) + 1).toNat - 1

end

end A043578.P5858705316191127220

/-! ## A043578.P16958512918772585585

`A130773(A043691(n+1)+1)-2`
-/

namespace A043578.P16958512918772585585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A043691 (n + 1) + 1).toNat - 2

end

end A043578.P16958512918772585585

/-! ## A043578.P8659493426549384256

`filter[A043686(n+1), A053867(#)]`
-/

namespace A043578.P8659493426549384256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A043578.P8659493426549384256

/-! ## A043578.P12926527653447759630

`A004442(2*A043691(n+1))`
-/

namespace A043578.P12926527653447759630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A043691 (n + 1)).toNat

end

end A043578.P12926527653447759630

/-! ## A043578.P6130421866327375669

`filter[A043686(n+1), A000035(#)]`
-/

namespace A043578.P6130421866327375669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A043578.P6130421866327375669

/-!
# A043579: Numbers whose base-2 representation has exactly 12 runs.

The programs for A043579, there is no canonical definition to state claims against.
-/

/-! ## A043579.P1580670627970682297

`2*A043686(1+n)`
-/

namespace A043579.P1580670627970682297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043686 (1 + n)

end

end A043579.P1580670627970682297

/-! ## A043579.P14333637302907733073

`A043686(n+1)+A043686(n+1)`
-/

namespace A043579.P14333637302907733073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043686 (n + 1) + A043686 (n + 1)

end

end A043579.P14333637302907733073

/-! ## A043579.P4629652737894573644

`∩[A043757(n+1), A043765(n+1)]`
-/

namespace A043579.P4629652737894573644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043579.P4629652737894573644

/-! ## A043579.P14926357455410127247

`A004277(A043686(n+1))`
-/

namespace A043579.P14926357455410127247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A043686 (n + 1)).toNat

end

end A043579.P14926357455410127247

/-! ## A043579.P2192132857457373524

`A004275(A043686(n+1)+1)`
-/

namespace A043579.P2192132857457373524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A043686 (n + 1) + 1).toNat

end

end A043579.P2192132857457373524

/-! ## A043579.P6930924410892221923

`A316571(A043686(n+1)+1)`
-/

namespace A043579.P6930924410892221923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A043686 (n + 1) + 1).toNat

end

end A043579.P6930924410892221923

/-! ## A043579.P8869336529524459758

`A103517(A043686(n+1)-1)`
-/

namespace A043579.P8869336529524459758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A043686 (n + 1) - 1).toNat

end

end A043579.P8869336529524459758

/-! ## A043579.P15606081531223048811

`A005843(A043686(2*n-(n-1)))`
-/

namespace A043579.P15606081531223048811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A043686 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A043579.P15606081531223048811

/-!
# A043580: Numbers whose base-2 representation has exactly 13 runs.

The programs for A043580, the canonical program `A043580.P10929565331147656012` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043580 has offset 1).

The definition of A043580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043580.P10929565331147656012

`∩[A043758(n+1), A043766(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043580

/-- `∩[A043758(n+1), A043766(n+1)]` -/
def P10929565331147656012.Spec : Prop :=
  ∀ n, (P10929565331147656012.a n : ℤ) = A043580 (n + 1)

theorem P10929565331147656012.correct : P10929565331147656012.Spec := by
  intro n
  simp only [A043580, Nat.add_sub_cancel]

end A043580

/-! ## A043580.P14500110088152065973

`∩[A043751(n+1), A043758(n+1)]`
-/

namespace A043580.P14500110088152065973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043580.P14500110088152065973

namespace A043580

/-- `∩[A043751(n+1), A043758(n+1)]` -/
def P14500110088152065973.Spec : Prop :=
  ∀ n, (P14500110088152065973.a n : ℤ) = A043580 (n + 1)

end A043580

/-! ## A043580.P15132507771385231651

`∩[A043751(n+1), A043766(n+1)]`
-/

namespace A043580.P15132507771385231651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043580.P15132507771385231651

namespace A043580

/-- `∩[A043751(n+1), A043766(n+1)]` -/
def P15132507771385231651.Spec : Prop :=
  ∀ n, (P15132507771385231651.a n : ℤ) = A043580 (n + 1)

end A043580

/-! ## A043580.P1209415323407671249

`record[A000265(A043581(n+1)/2)]`
-/

namespace A043580.P1209415323407671249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A043581 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043580.P1209415323407671249

namespace A043580

/-- `record[A000265(A043581(n+1)/2)]` -/
def P1209415323407671249.Spec : Prop :=
  ∀ n, P1209415323407671249.a n = A043580 (n + 1)

end A043580

/-! ## A043580.P7559509271478023393

`record[A000265(A043581(n+1))]`
-/

namespace A043580.P7559509271478023393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043580.P7559509271478023393

namespace A043580

/-- `record[A000265(A043581(n+1))]` -/
def P7559509271478023393.Spec : Prop :=
  ∀ n, P7559509271478023393.a n = A043580 (n + 1)

end A043580

/-!
# A043581: Numbers whose base-2 representation has exactly 14 runs.

The programs for A043581, there is no canonical definition to state claims against.
-/

/-! ## A043581.P10080957258051119696

`A040048(A000670(n))*A043580(n+1)`
-/

namespace A043581.P10080957258051119696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040048 (A000670 n).toNat * A043580 (n + 1)

end

end A043581.P10080957258051119696

/-! ## A043581.P16786270081795986015

`A020639(A057391(n))*A043580(n+1)`
-/

namespace A043581.P16786270081795986015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057391 n).toNat * A043580 (n + 1)

end

end A043581.P16786270081795986015

/-! ## A043581.P13474693859059204933

`A040000(A330515(n))*A043580(n+1)`
-/

namespace A043581.P13474693859059204933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A330515 n).toNat * A043580 (n + 1)

end

end A043581.P13474693859059204933

/-!
# A043582: Numbers whose base-3 representation has exactly 2 runs.

The programs for A043582, the canonical program `A043582.P17897593173383821788` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043582 has offset 1).

The definition of A043582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043582.P8042893596881837624

`∩[A043775(n+1), A043778(n+1)]`
-/

namespace A043582.P8042893596881837624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043582.P8042893596881837624

namespace A043582

/-- `∩[A043775(n+1), A043778(n+1)]` -/
def P8042893596881837624.Spec : Prop :=
  ∀ n, (P8042893596881837624.a n : ℤ) = A043582 (n + 1)

end A043582

/-! ## A043582.P17897593173383821788

`eq[2, A043555(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043582

/-- `eq[2, A043555(n)]` -/
def P17897593173383821788.Spec : Prop :=
  ∀ n, (P17897593173383821788.a n : ℤ) = A043582 (n + 1)

theorem P17897593173383821788.correct : P17897593173383821788.Spec := by
  intro n
  simp only [A043582, Nat.add_sub_cancel]

end A043582

/-!
# A043583: Numbers whose base-3 representation has exactly 3 runs.

The programs for A043583, the canonical program `A043583.P1368657139384558028` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043583 has offset 1).

The definition of A043583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043583.P1368657139384558028

`eq[3, A043555(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043583

/-- `eq[3, A043555(n)]` -/
def P1368657139384558028.Spec : Prop :=
  ∀ n, (P1368657139384558028.a n : ℤ) = A043583 (n + 1)

theorem P1368657139384558028.correct : P1368657139384558028.Spec := by
  intro n
  simp only [A043583, Nat.add_sub_cancel]

end A043583

/-!
# A043584: Numbers whose base-3 representation has exactly 4 runs.

The programs for A043584, the canonical program `A043584.P4459574865835496303` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043584 has offset 1).

The definition of A043584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2057 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043584.P4459574865835496303

`∩[A043692(n+1), A043774(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043584

/-- `∩[A043692(n+1), A043774(n+1)]` -/
def P4459574865835496303.Spec : Prop :=
  ∀ n, (P4459574865835496303.a n : ℤ) = A043584 (n + 1)

theorem P4459574865835496303.correct : P4459574865835496303.Spec := by
  intro n
  simp only [A043584, Nat.add_sub_cancel]

end A043584

/-! ## A043584.P1843306043179732897

`eq[4, A043555(n)]`
-/

namespace A043584.P1843306043179732897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043584.P1843306043179732897

namespace A043584

/-- `eq[4, A043555(n)]` -/
def P1843306043179732897.Spec : Prop :=
  ∀ n, (P1843306043179732897.a n : ℤ) = A043584 (n + 1)

end A043584

/-! ## A043584.P9299398053670674834

`eq[4, A043556(A023713(n+1))]`
-/

namespace A043584.P9299398053670674834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A023713 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043584.P9299398053670674834

namespace A043584

/-- `eq[4, A043556(A023713(n+1))]` -/
def P9299398053670674834.Spec : Prop :=
  ∀ n, (P9299398053670674834.a n : ℤ) = A043584 (n + 1)

end A043584

/-!
# A043585: Numbers whose base-3 representation has exactly 5 runs.

The programs for A043585, the canonical program `A043585.P4061843327585154574` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043585 has offset 1).

The definition of A043585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043585.P3927555723794631378

`∩[A043775(n+1), A043777(n+1)]`
-/

namespace A043585.P3927555723794631378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043585.P3927555723794631378

namespace A043585

/-- `∩[A043775(n+1), A043777(n+1)]` -/
def P3927555723794631378.Spec : Prop :=
  ∀ n, (P3927555723794631378.a n : ℤ) = A043585 (n + 1)

end A043585

/-! ## A043585.P17669352893905126728

`∩[A043706(n+1), A043775(n+1)]`
-/

namespace A043585.P17669352893905126728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043585.P17669352893905126728

namespace A043585

/-- `∩[A043706(n+1), A043775(n+1)]` -/
def P17669352893905126728.Spec : Prop :=
  ∀ n, (P17669352893905126728.a n : ℤ) = A043585 (n + 1)

end A043585

/-! ## A043585.P4061843327585154574

`eq[5, A043555(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043585

/-- `eq[5, A043555(n)]` -/
def P4061843327585154574.Spec : Prop :=
  ∀ n, (P4061843327585154574.a n : ℤ) = A043585 (n + 1)

theorem P4061843327585154574.correct : P4061843327585154574.Spec := by
  intro n
  simp only [A043585, Nat.add_sub_cancel]

end A043585

/-! ## A043585.P15974944334145851972

`record[A043780(A154958(n))]`
-/

namespace A043585.P15974944334145851972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043780 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043585.P15974944334145851972

namespace A043585

/-- `record[A043780(A154958(n))]` -/
def P15974944334145851972.Spec : Prop :=
  ∀ n, P15974944334145851972.a n = A043585 (n + 1)

end A043585

/-! ## A043585.P9261341002060904413

`record[A043780(A141256(n))]`
-/

namespace A043585.P9261341002060904413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043780 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043585.P9261341002060904413

namespace A043585

/-- `record[A043780(A141256(n))]` -/
def P9261341002060904413.Spec : Prop :=
  ∀ n, P9261341002060904413.a n = A043585 (n + 1)

end A043585

/-!
# A043586: Numbers whose base-3 representation has exactly 6 runs.

The programs for A043586, the canonical program `A043586.P5537003362996281712` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043586 has offset 1).

The definition of A043586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043586.P6894140238102040691

`∩[A043778(n+1), A043781(n+1)]`
-/

namespace A043586.P6894140238102040691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043586.P6894140238102040691

namespace A043586

/-- `∩[A043778(n+1), A043781(n+1)]` -/
def P6894140238102040691.Spec : Prop :=
  ∀ n, (P6894140238102040691.a n : ℤ) = A043586 (n + 1)

end A043586

/-! ## A043586.P6818692421404054476

`∩[A043773(n+1), A043778(n+1)]`
-/

namespace A043586.P6818692421404054476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043586.P6818692421404054476

namespace A043586

/-- `∩[A043773(n+1), A043778(n+1)]` -/
def P6818692421404054476.Spec : Prop :=
  ∀ n, (P6818692421404054476.a n : ℤ) = A043586 (n + 1)

end A043586

/-! ## A043586.P16136967630432407602

`∩[A043773(n+1), A043781(n+1)]`
-/

namespace A043586.P16136967630432407602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043586.P16136967630432407602

namespace A043586

/-- `∩[A043773(n+1), A043781(n+1)]` -/
def P16136967630432407602.Spec : Prop :=
  ∀ n, (P16136967630432407602.a n : ℤ) = A043586 (n + 1)

end A043586

/-! ## A043586.P5514193703542647205

`∩[A043692(n+1), A043773(n+1)]`
-/

namespace A043586.P5514193703542647205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043586.P5514193703542647205

namespace A043586

/-- `∩[A043692(n+1), A043773(n+1)]` -/
def P5514193703542647205.Spec : Prop :=
  ∀ n, (P5514193703542647205.a n : ℤ) = A043586 (n + 1)

end A043586

/-! ## A043586.P5629656133072674970

`∩[A043692(n+1), A043781(n+1)]`
-/

namespace A043586.P5629656133072674970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043586.P5629656133072674970

namespace A043586

/-- `∩[A043692(n+1), A043781(n+1)]` -/
def P5629656133072674970.Spec : Prop :=
  ∀ n, (P5629656133072674970.a n : ℤ) = A043586 (n + 1)

end A043586

/-! ## A043586.P5537003362996281712

`eq[6, A043555(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043586

/-- `eq[6, A043555(n)]` -/
def P5537003362996281712.Spec : Prop :=
  ∀ n, (P5537003362996281712.a n : ℤ) = A043586 (n + 1)

theorem P5537003362996281712.correct : P5537003362996281712.Spec := by
  intro n
  simp only [A043586, Nat.add_sub_cancel]

end A043586

/-!
# A043587: Numbers whose base-3 representation has exactly 7 runs.

The programs for A043587, the canonical program `A043587.P7919519446180033535` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043587 has offset 1).

The definition of A043587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043587.P7370167677460544191

`∩[A043782(n+1), A043786(n+1)]`
-/

namespace A043587.P7370167677460544191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043587.P7370167677460544191

namespace A043587

/-- `∩[A043782(n+1), A043786(n+1)]` -/
def P7370167677460544191.Spec : Prop :=
  ∀ n, (P7370167677460544191.a n : ℤ) = A043587 (n + 1)

end A043587

/-! ## A043587.P11618792744640669879

`∩[A043779(n+1), A043782(n+1)]`
-/

namespace A043587.P11618792744640669879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043587.P11618792744640669879

namespace A043587

/-- `∩[A043779(n+1), A043782(n+1)]` -/
def P11618792744640669879.Spec : Prop :=
  ∀ n, (P11618792744640669879.a n : ℤ) = A043587 (n + 1)

end A043587

/-! ## A043587.P3109420230510448012

`∩[A043779(n+1), A043786(n+1)]`
-/

namespace A043587.P3109420230510448012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043587.P3109420230510448012

namespace A043587

/-- `∩[A043779(n+1), A043786(n+1)]` -/
def P3109420230510448012.Spec : Prop :=
  ∀ n, (P3109420230510448012.a n : ℤ) = A043587 (n + 1)

end A043587

/-! ## A043587.P7919519446180033535

`∩[A043774(n+1), A043779(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043587

/-- `∩[A043774(n+1), A043779(n+1)]` -/
def P7919519446180033535.Spec : Prop :=
  ∀ n, (P7919519446180033535.a n : ℤ) = A043587 (n + 1)

theorem P7919519446180033535.correct : P7919519446180033535.Spec := by
  intro n
  simp only [A043587, Nat.add_sub_cancel]

end A043587

/-! ## A043587.P11838607391404101435

`eq[7, A043555(n)]`
-/

namespace A043587.P11838607391404101435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043587.P11838607391404101435

namespace A043587

/-- `eq[7, A043555(n)]` -/
def P11838607391404101435.Spec : Prop :=
  ∀ n, (P11838607391404101435.a n : ℤ) = A043587 (n + 1)

end A043587

/-! ## A043587.P11169266472948476687

`A081134(A043589(n+1))`
-/

namespace A043587.P11169266472948476687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A043589 (n + 1)).toNat

end

end A043587.P11169266472948476687

namespace A043587

/-- `A081134(A043589(n+1))` -/
def P11169266472948476687.Spec : Prop :=
  ∀ n, P11169266472948476687.a n = A043587 (n + 1)

end A043587

/-!
# A043588: Numbers whose base-3 representation has exactly 8 runs.

The programs for A043588, there is no canonical definition to state claims against.
-/

/-! ## A043588.P7600088184685154007

`∩[A043787(1+n), A043792(n+1)]`
-/

namespace A043588.P7600088184685154007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043787 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043588.P7600088184685154007

/-! ## A043588.P6128993998720959555

`∩[A043775(n+1), A043776(n+1)]`
-/

namespace A043588.P6128993998720959555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043588.P6128993998720959555

/-! ## A043588.P4080460852646272200

`A002264(A043589(2*n+1))`
-/

namespace A043588.P4080460852646272200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A043589 (2 * n + 1)).toNat

end

end A043588.P4080460852646272200

/-! ## A043588.P10948239193110604759

`∩[A031941(A045860(n+1)+2), A045860(n+1)]`
-/

namespace A043588.P10948239193110604759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (A045860 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043588.P10948239193110604759

/-!
# A043589: Numbers whose base-3 representation has exactly 9 runs.

The programs for A043589, there is no canonical definition to state claims against.
-/

/-! ## A043589.P14043750534788373211

`∩[A043793(n+1), A043799(n+1)]`
-/

namespace A043589.P14043750534788373211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043589.P14043750534788373211

/-! ## A043589.P15157969052789455052

`filter[A043799(3+n), A060584(#)]`
-/

namespace A043589.P15157969052789455052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043799 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A043589.P15157969052789455052

/-!
# A043590: Numbers whose base-3 representation has exactly 10 runs.

The programs for A043590, there is no canonical definition to state claims against.
-/

/-! ## A043590.P5476598263454830548

`∩[A043800(n+1), A043807(n+1)]`
-/

namespace A043590.P5476598263454830548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043590.P5476598263454830548

/-! ## A043590.P6217269103325610345

`A028430((A028430(n+1)-n)*A043588(n+1))`
-/

namespace A043590.P6217269103325610345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028430 ((A028430 (n + 1) - (n : ℤ)) * A043588 (n + 1)).toNat

end

end A043590.P6217269103325610345

/-! ## A043590.P3650015336529299784

`A031941(C(A031969(n+1), A285116(n)))`
-/

namespace A043590.P3650015336529299784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (Nat.choose (A031969 (n + 1)).toNat (A285116 n).toNat)

end

end A043590.P3650015336529299784

/-!
# A043591: Numbers whose base-3 representation has exactly 11 runs.

The programs for A043591, there is no canonical definition to state claims against.
-/

/-! ## A043591.P7024759279813802170

`∩[A043808(n+1), A043816(n+1)]`
-/

namespace A043591.P7024759279813802170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043591.P7024759279813802170

/-! ## A043591.P1024429658346576740

`A043816(A077168(n)+20)`
-/

namespace A043591.P1024429658346576740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043816 (A077168 n + 20).toNat

end

end A043591.P1024429658346576740

/-!
# A043596: Numbers whose base-4 representation has exactly 5 runs.

The programs for A043596, the canonical program `A043596.P12586235919778848023` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043596 has offset 1).

The definition of A043596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5576 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043596.P4464013613707613108

`∩[A043827(n+1), A043829(n+1)]`
-/

namespace A043596.P4464013613707613108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043596.P4464013613707613108

namespace A043596

/-- `∩[A043827(n+1), A043829(n+1)]` -/
def P4464013613707613108.Spec : Prop :=
  ∀ n, (P4464013613707613108.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P12586235919778848023

`∩[A043707(n+1), A043827(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043596

/-- `∩[A043707(n+1), A043827(n+1)]` -/
def P12586235919778848023.Spec : Prop :=
  ∀ n, (P12586235919778848023.a n : ℤ) = A043596 (n + 1)

theorem P12586235919778848023.correct : P12586235919778848023.Spec := by
  intro n
  simp only [A043596, Nat.add_sub_cancel]

end A043596

/-! ## A043596.P4454043405241800447

`eq[5, A043556(n)]`
-/

namespace A043596.P4454043405241800447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043596.P4454043405241800447

namespace A043596

/-- `eq[5, A043556(n)]` -/
def P4454043405241800447.Spec : Prop :=
  ∀ n, (P4454043405241800447.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P66202510712858779

`eq[5, A160385(A064706(n))]`
-/

namespace A043596.P66202510712858779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A064706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043596.P66202510712858779

namespace A043596

/-- `eq[5, A160385(A064706(n))]` -/
def P66202510712858779.Spec : Prop :=
  ∀ n, (P66202510712858779.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P7873804580184471719

`eq[5, A043557(A020654(n+1))]`
-/

namespace A043596.P7873804580184471719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A020654 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043596.P7873804580184471719

namespace A043596

/-- `eq[5, A043557(A020654(n+1))]` -/
def P7873804580184471719.Spec : Prop :=
  ∀ n, (P7873804580184471719.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P12368130068686480185

`eq[5, A043557(A023733(n+1))]`
-/

namespace A043596.P12368130068686480185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023733 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043596.P12368130068686480185

namespace A043596

/-- `eq[5, A043557(A023733(n+1))]` -/
def P12368130068686480185.Spec : Prop :=
  ∀ n, (P12368130068686480185.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P18073758636967503205

`eq[5, A043557(A023725(n+1))]`
-/

namespace A043596.P18073758636967503205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043596.P18073758636967503205

namespace A043596

/-- `eq[5, A043557(A023725(n+1))]` -/
def P18073758636967503205.Spec : Prop :=
  ∀ n, (P18073758636967503205.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P16954884138786562573

`eq[5, A043557(A023729(n+1))]`
-/

namespace A043596.P16954884138786562573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023729 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043596.P16954884138786562573

namespace A043596

/-- `eq[5, A043557(A023729(n+1))]` -/
def P16954884138786562573.Spec : Prop :=
  ∀ n, (P16954884138786562573.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P7939440826834602

`eq[5, A043558(A037460(n))]`
-/

namespace A043596.P7939440826834602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A037460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043596.P7939440826834602

namespace A043596

/-- `eq[5, A043558(A037460(n))]` -/
def P7939440826834602.Spec : Prop :=
  ∀ n, (P7939440826834602.a n : ℤ) = A043596 (n + 1)

end A043596

/-! ## A043596.P10789212067590178919

`lt[4, A043556(A233583(n+1))]`
-/

namespace A043596.P10789212067590178919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043596.P10789212067590178919

namespace A043596

/-- `lt[4, A043556(A233583(n+1))]` -/
def P10789212067590178919.Spec : Prop :=
  ∀ n, (P10789212067590178919.a n : ℤ) = A043596 (n + 1)

end A043596

/-!
# A043597: Numbers whose base-4 representation has exactly 6 runs.

The programs for A043597, there is no canonical definition to state claims against.
-/

/-! ## A043597.P15385074270688929442

`∩[A043830(n+1), A043833(n+1)]`
-/

namespace A043597.P15385074270688929442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043597.P15385074270688929442

/-! ## A043597.P12726793371679114364

`eq[6, A043556(n)]`
-/

namespace A043597.P12726793371679114364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043597.P12726793371679114364

/-! ## A043597.P9204866610859884292

`eq[6, A044944(A028310(n))]`
-/

namespace A043597.P9204866610859884292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043597.P9204866610859884292

/-! ## A043597.P15846769198928129265

`eq[6, A043557(A020654(n+1))]`
-/

namespace A043597.P15846769198928129265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A020654 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043597.P15846769198928129265

/-! ## A043597.P17702020921964494306

`eq[6, A043557(A023733(n+1))]`
-/

namespace A043597.P17702020921964494306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023733 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043597.P17702020921964494306

/-! ## A043597.P4363992430273353813

`eq[6, A043557(A023725(n+1))]`
-/

namespace A043597.P4363992430273353813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043597.P4363992430273353813

/-! ## A043597.P13303985946455990464

`eq[6, A043557(A023729(n+1))]`
-/

namespace A043597.P13303985946455990464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A023729 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043597.P13303985946455990464

/-!
# A043598: Numbers whose base-4 representation has exactly 7 runs.

The programs for A043598, there is no canonical definition to state claims against.
-/

/-! ## A043598.P10085366086516473615

`∩[A043834(1+n), A043838(n+1)]`
-/

namespace A043598.P10085366086516473615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043834 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043598.P10085366086516473615

/-! ## A043598.P15177310880363499084

`∩[A043831(n+1), A043834(n+1)]`
-/

namespace A043598.P15177310880363499084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043598.P15177310880363499084

/-! ## A043598.P8400916560785521537

`∩[A043831(n+1), A043838(n+1)]`
-/

namespace A043598.P8400916560785521537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043598.P8400916560785521537

/-! ## A043598.P9089718376677295892

`∩[A043826(n+1), A043831(n+1)]`
-/

namespace A043598.P9089718376677295892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043598.P9089718376677295892

/-! ## A043598.P7972032067624077781

`∩[A043826(n+1), A043834(n+1)]`
-/

namespace A043598.P7972032067624077781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043598.P7972032067624077781

/-!
# A043599: Numbers whose base-4 representation has exactly 8 runs.

The programs for A043599, there is no canonical definition to state claims against.
-/

/-! ## A043599.P8375038753225679847

`∩[A043839(1+n), A043844(n+1)]`
-/

namespace A043599.P8375038753225679847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043839 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043599.P8375038753225679847

/-! ## A043599.P8047576398220131786

`∩[A043835(n+1), A043839(n+1)]`
-/

namespace A043599.P8047576398220131786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043599.P8047576398220131786

/-! ## A043599.P11357371350509703407

`∩[A043835(n+1), A043844(n+1)]`
-/

namespace A043599.P11357371350509703407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043599.P11357371350509703407

/-! ## A043599.P18058455231794820597

`round(A043600(2*(n+1)+n-1)/4)`
-/

namespace A043599.P18058455231794820597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043600 ((2 * (n + 1) : ℤ) + ((n : ℤ) - 1)).toNat : ℚ) / 4)

end

end A043599.P18058455231794820597

/-! ## A043599.P11360525749401091114

`A043844(A032559(n+1)+21)`
-/

namespace A043599.P11360525749401091114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043844 (A032559 (n + 1) + 21).toNat

end

end A043599.P11360525749401091114

