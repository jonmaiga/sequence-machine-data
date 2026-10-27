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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C008
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A039700: Numbers k such that the largest power of 3 dividing k equals 3^omega(k).

The programs for A039700, the canonical program `A039700.P14322332737517484424` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039700 has offset 1).

The definition of A039700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039700.P14322332737517484424

`eq[val(n+1, 3), A001221(n+1)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039700

/-- `eq[val(n+1, 3), A001221(n+1)]+1` -/
def P14322332737517484424.Spec : Prop :=
  ∀ n, (P14322332737517484424.a n : ℤ) = A039700 (n + 1)

theorem P14322332737517484424.correct : P14322332737517484424.Spec := by
  intro n
  simp only [A039700, Nat.add_sub_cancel]

end A039700

/-! ## A039700.P8371256525445052469

`eq[log2(A318666(n+1)), A001221(n+1)]+1`
-/

namespace A039700.P8371256525445052469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318666 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A039700.P8371256525445052469

namespace A039700

/-- `eq[log2(A318666(n+1)), A001221(n+1)]+1` -/
def P8371256525445052469.Spec : Prop :=
  ∀ n, (P8371256525445052469.a n : ℤ) = A039700 (n + 1)

end A039700

/-! ## A039700.P1643347149639243144

`eq[A051064(n+1), A083399(n+1)]+1`
-/

namespace A039700.P1643347149639243144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039700.P1643347149639243144

namespace A039700

/-- `eq[A051064(n+1), A083399(n+1)]+1` -/
def P1643347149639243144.Spec : Prop :=
  ∀ n, (P1643347149639243144.a n : ℤ) = A039700 (n + 1)

end A039700

/-! ## A039700.P2138823594605691096

`eq[val(n+1, 3), A001222(A073184(n+1))]+1`
-/

namespace A039700.P2138823594605691096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073184 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039700.P2138823594605691096

namespace A039700

/-- `eq[val(n+1, 3), A001222(A073184(n+1))]+1` -/
def P2138823594605691096.Spec : Prop :=
  ∀ n, (P2138823594605691096.a n : ℤ) = A039700 (n + 1)

end A039700

/-! ## A039700.P6483973406153119916

`eq[A001222(A007947(n+1)), A007949(n+1)]+1`
-/

namespace A039700.P6483973406153119916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039700.P6483973406153119916

namespace A039700

/-- `eq[A001222(A007947(n+1)), A007949(n+1)]+1` -/
def P6483973406153119916.Spec : Prop :=
  ∀ n, (P6483973406153119916.a n : ℤ) = A039700 (n + 1)

end A039700

/-!
# A039701: a(n) = n-th prime modulo 3.

The programs for A039701, the canonical program `A039701.P15201722471215268317` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039701 has offset 1).

The definition of A039701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039701.P15201722471215268317

`A000040(n+1)%3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039701

/-- `A000040(n+1)%3` -/
def P15201722471215268317.Spec : Prop :=
  ∀ n, P15201722471215268317.a n = A039701 (n + 1)

theorem P15201722471215268317.correct : P15201722471215268317.Spec := by
  intro n
  simp only [A039701, Nat.add_sub_cancel]

end A039701

/-! ## A039701.P2378111728106302907

`Δ[A007504(n)]%3`
-/

namespace A039701.P2378111728106302907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A039701.P2378111728106302907

namespace A039701

/-- `Δ[A007504(n)]%3` -/
def P2378111728106302907.Spec : Prop :=
  ∀ n, P2378111728106302907.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P9003772330620690746

`A001749(n+1)%3`
-/

namespace A039701.P9003772330620690746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001749 (n + 1)) 3

end

end A039701.P9003772330620690746

namespace A039701

/-- `A001749(n+1)%3` -/
def P9003772330620690746.Spec : Prop :=
  ∀ n, P9003772330620690746.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P5258906753657208123

`A004087(n+1)%3`
-/

namespace A039701.P5258906753657208123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004087 (n + 1)) 3

end

end A039701.P5258906753657208123

namespace A039701

/-- `A004087(n+1)%3` -/
def P5258906753657208123.Spec : Prop :=
  ∀ n, P5258906753657208123.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P2590085928872104589

`A004678(n+1)%3`
-/

namespace A039701.P2590085928872104589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004678 (n + 1)) 3

end

end A039701.P2590085928872104589

namespace A039701

/-- `A004678(n+1)%3` -/
def P2590085928872104589.Spec : Prop :=
  ∀ n, P2590085928872104589.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P15962831618127905795

`A004681(n+1)%3`
-/

namespace A039701.P15962831618127905795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004681 (n + 1)) 3

end

end A039701.P15962831618127905795

namespace A039701

/-- `A004681(n+1)%3` -/
def P15962831618127905795.Spec : Prop :=
  ∀ n, P15962831618127905795.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P15817343380878881628

`A007605(n+1)%3`
-/

namespace A039701.P15817343380878881628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007605 (n + 1)) 3

end

end A039701.P15817343380878881628

namespace A039701

/-- `A007605(n+1)%3` -/
def P15817343380878881628.Spec : Prop :=
  ∀ n, P15817343380878881628.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P8392197182650845776

`A028905(n+1)%3`
-/

namespace A039701.P8392197182650845776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028905 (n + 1)) 3

end

end A039701.P8392197182650845776

namespace A039701

/-- `A028905(n+1)%3` -/
def P8392197182650845776.Spec : Prop :=
  ∀ n, P8392197182650845776.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P13986848820069066323

`A028906(n+1)%3`
-/

namespace A039701.P13986848820069066323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028906 (n + 1)) 3

end

end A039701.P13986848820069066323

namespace A039701

/-- `A028906(n+1)%3` -/
def P13986848820069066323.Spec : Prop :=
  ∀ n, P13986848820069066323.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P5709180548262599169

`A030078(n+1)%3`
-/

namespace A039701.P5709180548262599169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) 3

end

end A039701.P5709180548262599169

namespace A039701

/-- `A030078(n+1)%3` -/
def P5709180548262599169.Spec : Prop :=
  ∀ n, P5709180548262599169.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P11499014095363200194

`A031345(n+1)%3`
-/

namespace A039701.P11499014095363200194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031345 (n + 1)) 3

end

end A039701.P11499014095363200194

namespace A039701

/-- `A031345(n+1)%3` -/
def P11499014095363200194.Spec : Prop :=
  ∀ n, P11499014095363200194.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P9783985532279945085

`A038194(n+1)%3`
-/

namespace A039701.P9783985532279945085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038194 (n + 1)) 3

end

end A039701.P9783985532279945085

namespace A039701

/-- `A038194(n+1)%3` -/
def P9783985532279945085.Spec : Prop :=
  ∀ n, P9783985532279945085.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P8321666498500055093

`A039704(n+1)%3`
-/

namespace A039701.P8321666498500055093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039704 (n + 1)) 3

end

end A039701.P8321666498500055093

namespace A039701

/-- `A039704(n+1)%3` -/
def P8321666498500055093.Spec : Prop :=
  ∀ n, P8321666498500055093.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P14651007779561951839

`A039710(n+1)%3`
-/

namespace A039701.P14651007779561951839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039710 (n + 1)) 3

end

end A039701.P14651007779561951839

namespace A039701

/-- `A039710(n+1)%3` -/
def P14651007779561951839.Spec : Prop :=
  ∀ n, P14651007779561951839.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P2447922509652934144

`A039713(n+1)%3`
-/

namespace A039701.P2447922509652934144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039713 (n + 1)) 3

end

end A039701.P2447922509652934144

namespace A039701

/-- `A039713(n+1)%3` -/
def P2447922509652934144.Spec : Prop :=
  ∀ n, P2447922509652934144.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P4669051468600427140

`A050997(n+1)%3`
-/

namespace A039701.P4669051468600427140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) 3

end

end A039701.P4669051468600427140

namespace A039701

/-- `A050997(n+1)%3` -/
def P4669051468600427140.Spec : Prop :=
  ∀ n, P4669051468600427140.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P6565882951760093833

`A066886(n+1)%3`
-/

namespace A039701.P6565882951760093833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066886 (n + 1)) 3

end

end A039701.P6565882951760093833

namespace A039701

/-- `A066886(n+1)%3` -/
def P6565882951760093833.Spec : Prop :=
  ∀ n, P6565882951760093833.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P11912246640886896173

`A072900(n+1)%3`
-/

namespace A039701.P11912246640886896173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072900 (n + 1)) 3

end

end A039701.P11912246640886896173

namespace A039701

/-- `A072900(n+1)%3` -/
def P11912246640886896173.Spec : Prop :=
  ∀ n, P11912246640886896173.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P15961845488264373274

`A073637(n+1)%3`
-/

namespace A039701.P15961845488264373274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073637 (n + 1)) 3

end

end A039701.P15961845488264373274

namespace A039701

/-- `A073637(n+1)%3` -/
def P15961845488264373274.Spec : Prop :=
  ∀ n, P15961845488264373274.a n = A039701 (n + 1)

end A039701

/-! ## A039701.P15788083406935602788

`A092759(n+1)%3`
-/

namespace A039701.P15788083406935602788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) 3

end

end A039701.P15788083406935602788

namespace A039701

/-- `A092759(n+1)%3` -/
def P15788083406935602788.Spec : Prop :=
  ∀ n, P15788083406935602788.a n = A039701 (n + 1)

end A039701

/-!
# A039702: a(n) = n-th prime modulo 4.

The programs for A039702, the canonical program `A039702.P9525350324369181383` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039702 has offset 1).

The definition of A039702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039702.P9525350324369181383

`A000040(n+1)%4`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039702

/-- `A000040(n+1)%4` -/
def P9525350324369181383.Spec : Prop :=
  ∀ n, P9525350324369181383.a n = A039702 (n + 1)

theorem P9525350324369181383.correct : P9525350324369181383.Spec := by
  intro n
  simp only [A039702, Nat.add_sub_cancel]

end A039702

/-! ## A039702.P17756051069385707328

`Δ[A007504(n)]%4`
-/

namespace A039702.P17756051069385707328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A039702.P17756051069385707328

namespace A039702

/-- `Δ[A007504(n)]%4` -/
def P17756051069385707328.Spec : Prop :=
  ∀ n, P17756051069385707328.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P18232158682807265928

`2-A070750(n+1)`
-/

namespace A039702.P18232158682807265928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A070750 (n + 1)

end

end A039702.P18232158682807265928

namespace A039702

/-- `2-A070750(n+1)` -/
def P18232158682807265928.Spec : Prop :=
  ∀ n, P18232158682807265928.a n = A039702 (n + 1)

theorem P18232158682807265928.correct : P18232158682807265928.Spec := by
  intro n
  simp only [A039702, Nat.add_sub_cancel, A039702.P18232158682807265928.a, A039702.P9525350324369181383.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039702

/-! ## A039702.P14453713343146955915

`A001750(n+1)%4`
-/

namespace A039702.P14453713343146955915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001750 (n + 1)) 4

end

end A039702.P14453713343146955915

namespace A039702

/-- `A001750(n+1)%4` -/
def P14453713343146955915.Spec : Prop :=
  ∀ n, P14453713343146955915.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P8810391494214575806

`A004676(n+1)%4`
-/

namespace A039702.P8810391494214575806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004676 (n + 1)) 4

end

end A039702.P8810391494214575806

namespace A039702

/-- `A004676(n+1)%4` -/
def P8810391494214575806.Spec : Prop :=
  ∀ n, P8810391494214575806.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P2296199875441622521

`A004680(n+1)%4`
-/

namespace A039702.P2296199875441622521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004680 (n + 1)) 4

end

end A039702.P2296199875441622521

namespace A039702

/-- `A004680(n+1)%4` -/
def P2296199875441622521.Spec : Prop :=
  ∀ n, P2296199875441622521.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P4212629874816045283

`A039706(n+1)%4`
-/

namespace A039702.P4212629874816045283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039706 (n + 1)) 4

end

end A039702.P4212629874816045283

namespace A039702

/-- `A039706(n+1)%4` -/
def P4212629874816045283.Spec : Prop :=
  ∀ n, P4212629874816045283.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P6984683702240183700

`A039710(n+1)%4`
-/

namespace A039702.P6984683702240183700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039710 (n + 1)) 4

end

end A039702.P6984683702240183700

namespace A039702

/-- `A039710(n+1)%4` -/
def P6984683702240183700.Spec : Prop :=
  ∀ n, P6984683702240183700.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P5247714060912931472

`A039714(n+1)%4`
-/

namespace A039702.P5247714060912931472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039714 (n + 1)) 4

end

end A039702.P5247714060912931472

namespace A039702

/-- `A039714(n+1)%4` -/
def P5247714060912931472.Spec : Prop :=
  ∀ n, P5247714060912931472.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P7598703105907122845

`A075520(n+1)%4`
-/

namespace A039702.P7598703105907122845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075520 (n + 1)) 4

end

end A039702.P7598703105907122845

namespace A039702

/-- `A075520(n+1)%4` -/
def P7598703105907122845.Spec : Prop :=
  ∀ n, P7598703105907122845.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P13838716120748754716

`A075523(n+1)%4`
-/

namespace A039702.P13838716120748754716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075523 (n + 1)) 4

end

end A039702.P13838716120748754716

namespace A039702

/-- `A075523(n+1)%4` -/
def P13838716120748754716.Spec : Prop :=
  ∀ n, P13838716120748754716.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P16435021761582125654

`A110923(n+1)%4`
-/

namespace A039702.P16435021761582125654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110923 (n + 1)) 4

end

end A039702.P16435021761582125654

namespace A039702

/-- `A110923(n+1)%4` -/
def P16435021761582125654.Spec : Prop :=
  ∀ n, P16435021761582125654.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P16009326255746170183

`A117961(n+1)%4`
-/

namespace A039702.P16009326255746170183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117961 (n + 1)) 4

end

end A039702.P16009326255746170183

namespace A039702

/-- `A117961(n+1)%4` -/
def P16009326255746170183.Spec : Prop :=
  ∀ n, P16009326255746170183.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P11662721251802582456

`A161847(n+1)%4`
-/

namespace A039702.P11662721251802582456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1)) 4

end

end A039702.P11662721251802582456

namespace A039702

/-- `A161847(n+1)%4` -/
def P11662721251802582456.Spec : Prop :=
  ∀ n, P11662721251802582456.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P12393989780620200330

`A171019(n+1)%4`
-/

namespace A039702.P12393989780620200330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171019 (n + 1)) 4

end

end A039702.P12393989780620200330

namespace A039702

/-- `A171019(n+1)%4` -/
def P12393989780620200330.Spec : Prop :=
  ∀ n, P12393989780620200330.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P6058038798882950529

`A171024(n+1)%4`
-/

namespace A039702.P6058038798882950529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171024 (n + 1)) 4

end

end A039702.P6058038798882950529

namespace A039702

/-- `A171024(n+1)%4` -/
def P6058038798882950529.Spec : Prop :=
  ∀ n, P6058038798882950529.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P16501376618170635107

`A171028(n+1)%4`
-/

namespace A039702.P16501376618170635107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171028 (n + 1)) 4

end

end A039702.P16501376618170635107

namespace A039702

/-- `A171028(n+1)%4` -/
def P16501376618170635107.Spec : Prop :=
  ∀ n, P16501376618170635107.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P5088273931871715485

`A171030(n+1)%4`
-/

namespace A039702.P5088273931871715485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171030 (n + 1)) 4

end

end A039702.P5088273931871715485

namespace A039702

/-- `A171030(n+1)%4` -/
def P5088273931871715485.Spec : Prop :=
  ∀ n, P5088273931871715485.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P14482525360123561515

`A171032(n+1)%4`
-/

namespace A039702.P14482525360123561515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171032 (n + 1)) 4

end

end A039702.P14482525360123561515

namespace A039702

/-- `A171032(n+1)%4` -/
def P14482525360123561515.Spec : Prop :=
  ∀ n, P14482525360123561515.a n = A039702 (n + 1)

end A039702

/-! ## A039702.P9569394662545926231

`and(3, A000040(C(n+1, n)))`
-/

namespace A039702.P9569394662545926231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000040 (Nat.choose (n + 1) n))

end

end A039702.P9569394662545926231

namespace A039702

/-- `and(3, A000040(C(n+1, n)))` -/
def P9569394662545926231.Spec : Prop :=
  ∀ n, P9569394662545926231.a n = A039702 (n + 1)

end A039702

/-!
# A039703: a(n) = n-th prime modulo 5.

The programs for A039703, the canonical program `A039703.P6639847096577266655` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039703 has offset 1).

The definition of A039703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039703.P6639847096577266655

`A000040(n+1)%5`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039703

/-- `A000040(n+1)%5` -/
def P6639847096577266655.Spec : Prop :=
  ∀ n, P6639847096577266655.a n = A039703 (n + 1)

theorem P6639847096577266655.correct : P6639847096577266655.Spec := by
  intro n
  simp only [A039703, Nat.add_sub_cancel]

end A039703

/-! ## A039703.P15151464689866099912

`Δ[A007504(n)]%5`
-/

namespace A039703.P15151464689866099912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 5

end

end A039703.P15151464689866099912

namespace A039703

/-- `Δ[A007504(n)]%5` -/
def P15151464689866099912.Spec : Prop :=
  ∀ n, P15151464689866099912.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P17312594609961900606

`A004679(n+1)%5`
-/

namespace A039703.P17312594609961900606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004679 (n + 1)) 5

end

end A039703.P17312594609961900606

namespace A039703

/-- `A004679(n+1)%5` -/
def P17312594609961900606.Spec : Prop :=
  ∀ n, P17312594609961900606.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P18036722209643961448

`A007652(n+1)%5`
-/

namespace A039703.P18036722209643961448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007652 (n + 1)) 5

end

end A039703.P18036722209643961448

namespace A039703

/-- `A007652(n+1)%5` -/
def P18036722209643961448.Spec : Prop :=
  ∀ n, P18036722209643961448.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P10546319079536017269

`A032604(n+1)%5`
-/

namespace A039703.P10546319079536017269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032604 (n + 1)) 5

end

end A039703.P10546319079536017269

namespace A039703

/-- `A032604(n+1)%5` -/
def P10546319079536017269.Spec : Prop :=
  ∀ n, P10546319079536017269.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P6197908472685946933

`A039713(n+1)%5`
-/

namespace A039703.P6197908472685946933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039713 (n + 1)) 5

end

end A039703.P6197908472685946933

namespace A039703

/-- `A039713(n+1)%5` -/
def P6197908472685946933.Spec : Prop :=
  ∀ n, P6197908472685946933.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P16412316197202548913

`A039790(n+1)%5`
-/

namespace A039703.P16412316197202548913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039790 (n + 1)) 5

end

end A039703.P16412316197202548913

namespace A039703

/-- `A039790(n+1)%5` -/
def P16412316197202548913.Spec : Prop :=
  ∀ n, P16412316197202548913.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P6621486592035961217

`A045532(n+1)%5`
-/

namespace A039703.P6621486592035961217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045532 (n + 1)) 5

end

end A039703.P6621486592035961217

namespace A039703

/-- `A045532(n+1)%5` -/
def P6621486592035961217.Spec : Prop :=
  ∀ n, P6621486592035961217.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P9099276669155076745

`A050997(n+1)%5`
-/

namespace A039703.P9099276669155076745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) 5

end

end A039703.P9099276669155076745

namespace A039703

/-- `A050997(n+1)%5` -/
def P9099276669155076745.Spec : Prop :=
  ∀ n, P9099276669155076745.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P1470019847892203871

`A080437(n+1)%5`
-/

namespace A039703.P1470019847892203871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080437 (n + 1)) 5

end

end A039703.P1470019847892203871

namespace A039703

/-- `A080437(n+1)%5` -/
def P1470019847892203871.Spec : Prop :=
  ∀ n, P1470019847892203871.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P8384678611739292931

`A089778(n+1)%5`
-/

namespace A039703.P8384678611739292931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089778 (n + 1)) 5

end

end A039703.P8384678611739292931

namespace A039703

/-- `A089778(n+1)%5` -/
def P8384678611739292931.Spec : Prop :=
  ∀ n, P8384678611739292931.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P9646229631305782428

`A095959(n+1)%5`
-/

namespace A039703.P9646229631305782428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095959 (n + 1)) 5

end

end A039703.P9646229631305782428

namespace A039703

/-- `A095959(n+1)%5` -/
def P9646229631305782428.Spec : Prop :=
  ∀ n, P9646229631305782428.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P15225442580014426080

`A110923(n+1)%5`
-/

namespace A039703.P15225442580014426080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110923 (n + 1)) 5

end

end A039703.P15225442580014426080

namespace A039703

/-- `A110923(n+1)%5` -/
def P15225442580014426080.Spec : Prop :=
  ∀ n, P15225442580014426080.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P15815525710972610301

`A137589(n+1)%5`
-/

namespace A039703.P15815525710972610301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137589 (n + 1)) 5

end

end A039703.P15815525710972610301

namespace A039703

/-- `A137589(n+1)%5` -/
def P15815525710972610301.Spec : Prop :=
  ∀ n, P15815525710972610301.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P16527386547743143850

`A138636(n+1)%5`
-/

namespace A039703.P16527386547743143850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138636 (n + 1)) 5

end

end A039703.P16527386547743143850

namespace A039703

/-- `A138636(n+1)%5` -/
def P16527386547743143850.Spec : Prop :=
  ∀ n, P16527386547743143850.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P764453478253398540

`A171019(n+1)%5`
-/

namespace A039703.P764453478253398540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171019 (n + 1)) 5

end

end A039703.P764453478253398540

namespace A039703

/-- `A171019(n+1)%5` -/
def P764453478253398540.Spec : Prop :=
  ∀ n, P764453478253398540.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P15627531268476945564

`A171023(n+1)%5`
-/

namespace A039703.P15627531268476945564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171023 (n + 1)) 5

end

end A039703.P15627531268476945564

namespace A039703

/-- `A171023(n+1)%5` -/
def P15627531268476945564.Spec : Prop :=
  ∀ n, P15627531268476945564.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P12147028112991405797

`A179665(n+1)%5`
-/

namespace A039703.P12147028112991405797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179665 (n + 1)) 5

end

end A039703.P12147028112991405797

namespace A039703

/-- `A179665(n+1)%5` -/
def P12147028112991405797.Spec : Prop :=
  ∀ n, P12147028112991405797.a n = A039703 (n + 1)

end A039703

/-! ## A039703.P16016083974707002884

`dr(A000040(2*n-(n-1))%5)`
-/

namespace A039703.P16016083974707002884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 5)

end

end A039703.P16016083974707002884

namespace A039703

/-- `dr(A000040(2*n-(n-1))%5)` -/
def P16016083974707002884.Spec : Prop :=
  ∀ n, (P16016083974707002884.a n : ℤ) = A039703 (n + 1)

end A039703

/-! ## A039703.P5441466908990547536

`A010874(A039713(n+1))`
-/

namespace A039703.P5441466908990547536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A039713 (n + 1)).toNat

end

end A039703.P5441466908990547536

namespace A039703

/-- `A010874(A039713(n+1))` -/
def P5441466908990547536.Spec : Prop :=
  ∀ n, P5441466908990547536.a n = A039703 (n + 1)

end A039703

/-!
# A039704: a(n) = n-th prime modulo 6.

The programs for A039704, the canonical program `A039704.P2354761967844562150` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039704 has offset 1).

The definition of A039704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039704.P2354761967844562150

`A000040(n+1)%6`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039704

/-- `A000040(n+1)%6` -/
def P2354761967844562150.Spec : Prop :=
  ∀ n, P2354761967844562150.a n = A039704 (n + 1)

theorem P2354761967844562150.correct : P2354761967844562150.Spec := by
  intro n
  simp only [A039704, Nat.add_sub_cancel]

end A039704

/-! ## A039704.P10661604357772051003

`Δ[A007504(n)]%6`
-/

namespace A039704.P10661604357772051003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A039704.P10661604357772051003

namespace A039704

/-- `Δ[A007504(n)]%6` -/
def P10661604357772051003.Spec : Prop :=
  ∀ n, P10661604357772051003.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P11141324418611633403

`A004678(n+1)%6`
-/

namespace A039704.P11141324418611633403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004678 (n + 1)) 6

end

end A039704.P11141324418611633403

namespace A039704

/-- `A004678(n+1)%6` -/
def P11141324418611633403.Spec : Prop :=
  ∀ n, P11141324418611633403.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P6959575359781023271

`A030078(n+1)%6`
-/

namespace A039704.P6959575359781023271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) 6

end

end A039704.P6959575359781023271

namespace A039704

/-- `A030078(n+1)%6` -/
def P6959575359781023271.Spec : Prop :=
  ∀ n, P6959575359781023271.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P15065940928143345519

`A039710(n+1)%6`
-/

namespace A039704.P15065940928143345519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039710 (n + 1)) 6

end

end A039704.P15065940928143345519

namespace A039704

/-- `A039710(n+1)%6` -/
def P15065940928143345519.Spec : Prop :=
  ∀ n, P15065940928143345519.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P16201228668626630516

`A050997(n+1)%6`
-/

namespace A039704.P16201228668626630516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) 6

end

end A039704.P16201228668626630516

namespace A039704

/-- `A050997(n+1)%6` -/
def P16201228668626630516.Spec : Prop :=
  ∀ n, P16201228668626630516.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P11335502188959522035

`A092759(n+1)%6`
-/

namespace A039704.P11335502188959522035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) 6

end

end A039704.P11335502188959522035

namespace A039704

/-- `A092759(n+1)%6` -/
def P11335502188959522035.Spec : Prop :=
  ∀ n, P11335502188959522035.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P16968214955564890301

`A095959(n+1)%6`
-/

namespace A039704.P16968214955564890301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095959 (n + 1)) 6

end

end A039704.P16968214955564890301

namespace A039704

/-- `A095959(n+1)%6` -/
def P16968214955564890301.Spec : Prop :=
  ∀ n, P16968214955564890301.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P10103793927883911794

`A139049(n+1)%6`
-/

namespace A039704.P10103793927883911794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139049 (n + 1)) 6

end

end A039704.P10103793927883911794

namespace A039704

/-- `A139049(n+1)%6` -/
def P10103793927883911794.Spec : Prop :=
  ∀ n, P10103793927883911794.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P9608757990173469168

`A171028(n+1)%6`
-/

namespace A039704.P9608757990173469168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171028 (n + 1)) 6

end

end A039704.P9608757990173469168

namespace A039704

/-- `A171028(n+1)%6` -/
def P9608757990173469168.Spec : Prop :=
  ∀ n, P9608757990173469168.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P6715839700988352594

`A171035(n+1)%6`
-/

namespace A039704.P6715839700988352594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171035 (n + 1)) 6

end

end A039704.P6715839700988352594

namespace A039704

/-- `A171035(n+1)%6` -/
def P6715839700988352594.Spec : Prop :=
  ∀ n, P6715839700988352594.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P1042361602560744818

`A171043(n+1)%6`
-/

namespace A039704.P1042361602560744818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171043 (n + 1)) 6

end

end A039704.P1042361602560744818

namespace A039704

/-- `A171043(n+1)%6` -/
def P1042361602560744818.Spec : Prop :=
  ∀ n, P1042361602560744818.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P10793557725961698283

`A171052(n+1)%6`
-/

namespace A039704.P10793557725961698283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171052 (n + 1)) 6

end

end A039704.P10793557725961698283

namespace A039704

/-- `A171052(n+1)%6` -/
def P10793557725961698283.Spec : Prop :=
  ∀ n, P10793557725961698283.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P5300182812144503235

`A179665(n+1)%6`
-/

namespace A039704.P5300182812144503235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179665 (n + 1)) 6

end

end A039704.P5300182812144503235

namespace A039704

/-- `A179665(n+1)%6` -/
def P5300182812144503235.Spec : Prop :=
  ∀ n, P5300182812144503235.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P2871626756853242602

`A229738(n+1)%6`
-/

namespace A039704.P2871626756853242602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229738 (n + 1)) 6

end

end A039704.P2871626756853242602

namespace A039704

/-- `A229738(n+1)%6` -/
def P2871626756853242602.Spec : Prop :=
  ∀ n, P2871626756853242602.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P15129846927312033292

`A242119(n+1)%6`
-/

namespace A039704.P15129846927312033292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242119 (n + 1)) 6

end

end A039704.P15129846927312033292

namespace A039704

/-- `A242119(n+1)%6` -/
def P15129846927312033292.Spec : Prop :=
  ∀ n, P15129846927312033292.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P12956895371791273198

`A301378(n+1)%6`
-/

namespace A039704.P12956895371791273198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301378 (n + 1)) 6

end

end A039704.P12956895371791273198

namespace A039704

/-- `A301378(n+1)%6` -/
def P12956895371791273198.Spec : Prop :=
  ∀ n, P12956895371791273198.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P9914138571412351261

`dr(A000040(2*n-(n-1))%6)`
-/

namespace A039704.P9914138571412351261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 6)

end

end A039704.P9914138571412351261

namespace A039704

/-- `dr(A000040(2*n-(n-1))%6)` -/
def P9914138571412351261.Spec : Prop :=
  ∀ n, (P9914138571412351261.a n : ℤ) = A039704 (n + 1)

end A039704

/-! ## A039704.P6337261103488101681

`A010875(A039710(n+1))`
-/

namespace A039704.P6337261103488101681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A039710 (n + 1)).toNat

end

end A039704.P6337261103488101681

namespace A039704

/-- `A010875(A039710(n+1))` -/
def P6337261103488101681.Spec : Prop :=
  ∀ n, P6337261103488101681.a n = A039704 (n + 1)

end A039704

/-! ## A039704.P18365460912425877570

`A010875(A095959(n+1))`
-/

namespace A039704.P18365460912425877570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A095959 (n + 1)).toNat

end

end A039704.P18365460912425877570

namespace A039704

/-- `A010875(A095959(n+1))` -/
def P18365460912425877570.Spec : Prop :=
  ∀ n, P18365460912425877570.a n = A039704 (n + 1)

end A039704

/-!
# A039705: a(n) = n-th prime modulo 7.

The programs for A039705, the canonical program `A039705.P13278229591068607269` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039705 has offset 1).

The definition of A039705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039705.P13278229591068607269

`A000040(n+1)%7`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039705

/-- `A000040(n+1)%7` -/
def P13278229591068607269.Spec : Prop :=
  ∀ n, P13278229591068607269.a n = A039705 (n + 1)

theorem P13278229591068607269.correct : P13278229591068607269.Spec := by
  intro n
  simp only [A039705, Nat.add_sub_cancel]

end A039705

/-! ## A039705.P1606574894132522330

`Δ[A007504(n)]%7`
-/

namespace A039705.P1606574894132522330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 7

end

end A039705.P1606574894132522330

namespace A039705

/-- `Δ[A007504(n)]%7` -/
def P1606574894132522330.Spec : Prop :=
  ∀ n, P1606574894132522330.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P1733928869068113762

`A001363(n+1)%7`
-/

namespace A039705.P1733928869068113762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001363 (n + 1)) 7

end

end A039705.P1733928869068113762

namespace A039705

/-- `A001363(n+1)%7` -/
def P1733928869068113762.Spec : Prop :=
  ∀ n, P1733928869068113762.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P628011783096954680

`A039712(n+1)%7`
-/

namespace A039705.P628011783096954680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039712 (n + 1)) 7

end

end A039705.P628011783096954680

namespace A039705

/-- `A039712(n+1)%7` -/
def P628011783096954680.Spec : Prop :=
  ∀ n, P628011783096954680.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P15904659673397858795

`A092759(n+1)%7`
-/

namespace A039705.P15904659673397858795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) 7

end

end A039705.P15904659673397858795

namespace A039705

/-- `A092759(n+1)%7` -/
def P15904659673397858795.Spec : Prop :=
  ∀ n, P15904659673397858795.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P8068484709020347994

`A138031(n+1)%7`
-/

namespace A039705.P8068484709020347994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138031 (n + 1)) 7

end

end A039705.P8068484709020347994

namespace A039705

/-- `A138031(n+1)%7` -/
def P8068484709020347994.Spec : Prop :=
  ∀ n, P8068484709020347994.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P9036599946968402891

`A171034(n+1)%7`
-/

namespace A039705.P9036599946968402891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171034 (n + 1)) 7

end

end A039705.P9036599946968402891

namespace A039705

/-- `A171034(n+1)%7` -/
def P9036599946968402891.Spec : Prop :=
  ∀ n, P9036599946968402891.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P10284709406089298993

`A171042(n+1)%7`
-/

namespace A039705.P10284709406089298993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171042 (n + 1)) 7

end

end A039705.P10284709406089298993

namespace A039705

/-- `A171042(n+1)%7` -/
def P10284709406089298993.Spec : Prop :=
  ∀ n, P10284709406089298993.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P18140265789606188626

`A171051(n+1)%7`
-/

namespace A039705.P18140265789606188626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171051 (n + 1)) 7

end

end A039705.P18140265789606188626

namespace A039705

/-- `A171051(n+1)%7` -/
def P18140265789606188626.Spec : Prop :=
  ∀ n, P18140265789606188626.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P17724695240580361013

`A175223(n+1)%7`
-/

namespace A039705.P17724695240580361013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175223 (n + 1)) 7

end

end A039705.P17724695240580361013

namespace A039705

/-- `A175223(n+1)%7` -/
def P17724695240580361013.Spec : Prop :=
  ∀ n, P17724695240580361013.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P15019571035385226667

`A239694(n+1)%7`
-/

namespace A039705.P15019571035385226667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239694 (n + 1)) 7

end

end A039705.P15019571035385226667

namespace A039705

/-- `A239694(n+1)%7` -/
def P15019571035385226667.Spec : Prop :=
  ∀ n, P15019571035385226667.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P4699446252395820574

`A242121(n+1)%7`
-/

namespace A039705.P4699446252395820574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242121 (n + 1)) 7

end

end A039705.P4699446252395820574

namespace A039705

/-- `A242121(n+1)%7` -/
def P4699446252395820574.Spec : Prop :=
  ∀ n, P4699446252395820574.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P11499698612393288173

`A242126(n+1)%7`
-/

namespace A039705.P11499698612393288173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242126 (n + 1)) 7

end

end A039705.P11499698612393288173

namespace A039705

/-- `A242126(n+1)%7` -/
def P11499698612393288173.Spec : Prop :=
  ∀ n, P11499698612393288173.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P6111752611763452928

`p?[A247665(n+1)]%7`
-/

namespace A039705.P6111752611763452928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 7

end

end A039705.P6111752611763452928

namespace A039705

/-- `p?[A247665(n+1)]%7` -/
def P6111752611763452928.Spec : Prop :=
  ∀ n, P6111752611763452928.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P16426353571838486153

`dr(A000040(2*n-(n-1))%7)`
-/

namespace A039705.P16426353571838486153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 7)

end

end A039705.P16426353571838486153

namespace A039705

/-- `dr(A000040(2*n-(n-1))%7)` -/
def P16426353571838486153.Spec : Prop :=
  ∀ n, (P16426353571838486153.a n : ℤ) = A039705 (n + 1)

end A039705

/-! ## A039705.P12654767028088466754

`A010876(A039712(n+1))`
-/

namespace A039705.P12654767028088466754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A039712 (n + 1)).toNat

end

end A039705.P12654767028088466754

namespace A039705

/-- `A010876(A039712(n+1))` -/
def P12654767028088466754.Spec : Prop :=
  ∀ n, P12654767028088466754.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P6698220463492526860

`A010876(A239694(n+1))`
-/

namespace A039705.P6698220463492526860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A239694 (n + 1)).toNat

end

end A039705.P6698220463492526860

namespace A039705

/-- `A010876(A239694(n+1))` -/
def P6698220463492526860.Spec : Prop :=
  ∀ n, P6698220463492526860.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P2711570180568446336

`A010876(A242121(n+1))`
-/

namespace A039705.P2711570180568446336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A242121 (n + 1)).toNat

end

end A039705.P2711570180568446336

namespace A039705

/-- `A010876(A242121(n+1))` -/
def P2711570180568446336.Spec : Prop :=
  ∀ n, P2711570180568446336.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P13278541560755576377

`A010876(A242126(n+1))`
-/

namespace A039705.P13278541560755576377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A242126 (n + 1)).toNat

end

end A039705.P13278541560755576377

namespace A039705

/-- `A010876(A242126(n+1))` -/
def P13278541560755576377.Spec : Prop :=
  ∀ n, P13278541560755576377.a n = A039705 (n + 1)

end A039705

/-! ## A039705.P7669772353250763389

`A004681(n+1)%A040020(n)`
-/

namespace A039705.P7669772353250763389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004681 (n + 1)) (A040020 n)

end

end A039705.P7669772353250763389

namespace A039705

/-- `A004681(n+1)%A040020(n)` -/
def P7669772353250763389.Spec : Prop :=
  ∀ n, P7669772353250763389.a n = A039705 (n + 1)

end A039705

/-!
# A039706: a(n) = n-th prime modulo 8.

The programs for A039706, the canonical program `A039706.P6170132247782451877` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039706 has offset 1).

The definition of A039706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039706.P6170132247782451877

`A000040(n+1)%8`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039706

/-- `A000040(n+1)%8` -/
def P6170132247782451877.Spec : Prop :=
  ∀ n, P6170132247782451877.a n = A039706 (n + 1)

theorem P6170132247782451877.correct : P6170132247782451877.Spec := by
  intro n
  simp only [A039706, Nat.add_sub_cancel]

end A039706

/-! ## A039706.P16405246591941988904

`Δ[A007504(n)]%8`
-/

namespace A039706.P16405246591941988904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 8

end

end A039706.P16405246591941988904

namespace A039706

/-- `Δ[A007504(n)]%8` -/
def P16405246591941988904.Spec : Prop :=
  ∀ n, P16405246591941988904.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P17122885595535967402

`A004676(n+1)%8`
-/

namespace A039706.P17122885595535967402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004676 (n + 1)) 8

end

end A039706.P17122885595535967402

namespace A039706

/-- `A004676(n+1)%8` -/
def P17122885595535967402.Spec : Prop :=
  ∀ n, P17122885595535967402.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P11568436887919698949

`A039714(n+1)%8`
-/

namespace A039706.P11568436887919698949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039714 (n + 1)) 8

end

end A039706.P11568436887919698949

namespace A039706

/-- `A039714(n+1)%8` -/
def P11568436887919698949.Spec : Prop :=
  ∀ n, P11568436887919698949.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P2034953677709061307

`A171019(n+1)%8`
-/

namespace A039706.P2034953677709061307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171019 (n + 1)) 8

end

end A039706.P2034953677709061307

namespace A039706

/-- `A171019(n+1)%8` -/
def P2034953677709061307.Spec : Prop :=
  ∀ n, P2034953677709061307.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P10135463374214303520

`A171041(n+1)%8`
-/

namespace A039706.P10135463374214303520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171041 (n + 1)) 8

end

end A039706.P10135463374214303520

namespace A039706

/-- `A171041(n+1)%8` -/
def P10135463374214303520.Spec : Prop :=
  ∀ n, P10135463374214303520.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P5987161245032390166

`A171045(n+1)%8`
-/

namespace A039706.P5987161245032390166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171045 (n + 1)) 8

end

end A039706.P5987161245032390166

namespace A039706

/-- `A171045(n+1)%8` -/
def P5987161245032390166.Spec : Prop :=
  ∀ n, P5987161245032390166.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P12388575124081704839

`A171050(n+1)%8`
-/

namespace A039706.P12388575124081704839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171050 (n + 1)) 8

end

end A039706.P12388575124081704839

namespace A039706

/-- `A171050(n+1)%8` -/
def P12388575124081704839.Spec : Prop :=
  ∀ n, P12388575124081704839.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P12984532214308159048

`A175224(n+1)%8`
-/

namespace A039706.P12984532214308159048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175224 (n + 1)) 8

end

end A039706.P12984532214308159048

namespace A039706

/-- `A175224(n+1)%8` -/
def P12984532214308159048.Spec : Prop :=
  ∀ n, P12984532214308159048.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P6066354717631397488

`A229787(n+1)%8`
-/

namespace A039706.P6066354717631397488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229787 (n + 1)) 8

end

end A039706.P6066354717631397488

namespace A039706

/-- `A229787(n+1)%8` -/
def P6066354717631397488.Spec : Prop :=
  ∀ n, P6066354717631397488.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P8032820327487217871

`A239695(n+1)%8`
-/

namespace A039706.P8032820327487217871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239695 (n + 1)) 8

end

end A039706.P8032820327487217871

namespace A039706

/-- `A239695(n+1)%8` -/
def P8032820327487217871.Spec : Prop :=
  ∀ n, P8032820327487217871.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P13481959067617502088

`A267217(n+1)%8`
-/

namespace A039706.P13481959067617502088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267217 (n + 1)) 8

end

end A039706.P13481959067617502088

namespace A039706

/-- `A267217(n+1)%8` -/
def P13481959067617502088.Spec : Prop :=
  ∀ n, P13481959067617502088.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P722831289364624378

`and(7, A000040(C(n+1, n)))`
-/

namespace A039706.P722831289364624378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000040 (Nat.choose (n + 1) n))

end

end A039706.P722831289364624378

namespace A039706

/-- `and(7, A000040(C(n+1, n)))` -/
def P722831289364624378.Spec : Prop :=
  ∀ n, P722831289364624378.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P6736951894629489582

`and(7, A000040(2*n+1-n))`
-/

namespace A039706.P6736951894629489582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000040 (2 * n + 1 - n))

end

end A039706.P6736951894629489582

namespace A039706

/-- `and(7, A000040(2*n+1-n))` -/
def P6736951894629489582.Spec : Prop :=
  ∀ n, P6736951894629489582.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P10787118925180597988

`dr(A000040(2*n-(n-1))%8)`
-/

namespace A039706.P10787118925180597988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 8)

end

end A039706.P10787118925180597988

namespace A039706

/-- `dr(A000040(2*n-(n-1))%8)` -/
def P10787118925180597988.Spec : Prop :=
  ∀ n, (P10787118925180597988.a n : ℤ) = A039706 (n + 1)

end A039706

/-! ## A039706.P18112480532701084010

`A010877(A039714(n+1))`
-/

namespace A039706.P18112480532701084010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A039714 (n + 1)).toNat

end

end A039706.P18112480532701084010

namespace A039706

/-- `A010877(A039714(n+1))` -/
def P18112480532701084010.Spec : Prop :=
  ∀ n, P18112480532701084010.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P17980636931906108701

`A010877(A229787(n+1))`
-/

namespace A039706.P17980636931906108701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A229787 (n + 1)).toNat

end

end A039706.P17980636931906108701

namespace A039706

/-- `A010877(A229787(n+1))` -/
def P17980636931906108701.Spec : Prop :=
  ∀ n, P17980636931906108701.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P16556636783857723091

`A004682(n+1)%A040020(n)`
-/

namespace A039706.P16556636783857723091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004682 (n + 1)) (A040020 n)

end

end A039706.P16556636783857723091

namespace A039706

/-- `A004682(n+1)%A040020(n)` -/
def P16556636783857723091.Spec : Prop :=
  ∀ n, P16556636783857723091.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P5711799394995202372

`A171030(n+1)%A040012(n)`
-/

namespace A039706.P5711799394995202372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171030 (n + 1)) (A040012 n)

end

end A039706.P5711799394995202372

namespace A039706

/-- `A171030(n+1)%A040012(n)` -/
def P5711799394995202372.Spec : Prop :=
  ∀ n, P5711799394995202372.a n = A039706 (n + 1)

end A039706

/-! ## A039706.P17262710507507731966

`and(A001533(n), A039714(n+1))`
-/

namespace A039706.P17262710507507731966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001533 n) (A039714 (n + 1))

end

end A039706.P17262710507507731966

namespace A039706

/-- `and(A001533(n), A039714(n+1))` -/
def P17262710507507731966.Spec : Prop :=
  ∀ n, P17262710507507731966.a n = A039706 (n + 1)

end A039706

/-!
# A039708: a(n) = min{m: Sum_{x=0..m} binomial(n,x) >= 0.95*2^n}.

The programs for A039708, the canonical program `A039708.P11360430142285474761` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039708 has offset 0).

The definition of A039708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039708.P11360430142285474761

`A095861(∑[A056847(n)+A000934(n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039708

/-- `A095861(∑[A056847(n)+A000934(n)])` -/
def P11360430142285474761.Spec : Prop :=
  ∀ n, P11360430142285474761.a n = A039708 n

theorem P11360430142285474761.correct : P11360430142285474761.Spec := by
  intro n
  simp only [A039708]

end A039708

/-! ## A039708.P10739130766853209487

`A261101(A080078(n))`
-/

namespace A039708.P10739130766853209487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261101 (A080078 n).toNat

end

end A039708.P10739130766853209487

namespace A039708

/-- `A261101(A080078(n))` -/
def P10739130766853209487.Spec : Prop :=
  ∀ n, P10739130766853209487.a n = A039708 n

end A039708

/-! ## A039708.P12105768440498889641

`A371672(A155167(n+1))`
-/

namespace A039708.P12105768440498889641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371672 (A155167 (n + 1)).toNat

end

end A039708.P12105768440498889641

namespace A039708

/-- `A371672(A155167(n+1))` -/
def P12105768440498889641.Spec : Prop :=
  ∀ n, P12105768440498889641.a n = A039708 n

end A039708

/-! ## A039708.P8605376387171632649

`A004526(A238598(3*n)+n)`
-/

namespace A039708.P8605376387171632649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238598 (3 * n) + (n : ℤ)).toNat

end

end A039708.P8605376387171632649

namespace A039708

/-- `A004526(A238598(3*n)+n)` -/
def P8605376387171632649.Spec : Prop :=
  ∀ n, P8605376387171632649.a n = A039708 n

end A039708

/-! ## A039708.P15404744838771218440

`A002266(A327041(3*n+1)+3*(n+1))`
-/

namespace A039708.P15404744838771218440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A327041 (3 * n + 1) + (3 * (n + 1) : ℤ)).toNat

end

end A039708.P15404744838771218440

namespace A039708

/-- `A002266(A327041(3*n+1)+3*(n+1))` -/
def P15404744838771218440.Spec : Prop :=
  ∀ n, P15404744838771218440.a n = A039708 n

end A039708

/-!
# A039709: a(n) = n-th prime modulo 11.

The programs for A039709, the canonical program `A039709.P16745182626192459782` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039709 has offset 1).

The definition of A039709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039709.P16745182626192459782

`A000040(n+1)%11`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039709

/-- `A000040(n+1)%11` -/
def P16745182626192459782.Spec : Prop :=
  ∀ n, P16745182626192459782.a n = A039709 (n + 1)

theorem P16745182626192459782.correct : P16745182626192459782.Spec := by
  intro n
  simp only [A039709, Nat.add_sub_cancel]

end A039709

/-! ## A039709.P14943057158994103641

`Δ[A007504(n)]%11`
-/

namespace A039709.P14943057158994103641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 11

end

end A039709.P14943057158994103641

namespace A039709

/-- `Δ[A007504(n)]%11` -/
def P14943057158994103641.Spec : Prop :=
  ∀ n, P14943057158994103641.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P16112874455118890260

`abs(Δ[A008348(n)]%11)`
-/

namespace A039709.P16112874455118890260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 11|

end

end A039709.P16112874455118890260

namespace A039709

/-- `abs(Δ[A008348(n)]%11)` -/
def P16112874455118890260.Spec : Prop :=
  ∀ n, P16112874455118890260.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P12051728661067016691

`abs(Δ[A022837(n)]%11)`
-/

namespace A039709.P12051728661067016691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 11|

end

end A039709.P12051728661067016691

namespace A039709

/-- `abs(Δ[A022837(n)]%11)` -/
def P12051728661067016691.Spec : Prop :=
  ∀ n, P12051728661067016691.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P5904535739031697103

`abs(A273960(n+1))%11`
-/

namespace A039709.P5904535739031697103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A273960 (n + 1)| 11

end

end A039709.P5904535739031697103

namespace A039709

/-- `abs(A273960(n+1))%11` -/
def P5904535739031697103.Spec : Prop :=
  ∀ n, P5904535739031697103.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P16233267591359120161

`sqrt(A001248(n+1))%11`
-/

namespace A039709.P16233267591359120161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 11

end

end A039709.P16233267591359120161

namespace A039709

/-- `sqrt(A001248(n+1))%11` -/
def P16233267591359120161.Spec : Prop :=
  ∀ n, P16233267591359120161.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P9837240750240934651

`∑[A054541(n+1)]%11`
-/

namespace A039709.P9837240750240934651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 11

end

end A039709.P9837240750240934651

namespace A039709

/-- `∑[A054541(n+1)]%11` -/
def P9837240750240934651.Spec : Prop :=
  ∀ n, P9837240750240934651.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P1162464340881028752

`p?[A247665(n+1)]%11`
-/

namespace A039709.P1162464340881028752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 11

end

end A039709.P1162464340881028752

namespace A039709

/-- `p?[A247665(n+1)]%11` -/
def P1162464340881028752.Spec : Prop :=
  ∀ n, P1162464340881028752.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P1600294520632763358

`record[A259153(n+2)]%11`
-/

namespace A039709.P1600294520632763358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 11

end

end A039709.P1600294520632763358

namespace A039709

/-- `record[A259153(n+2)]%11` -/
def P1600294520632763358.Spec : Prop :=
  ∀ n, P1600294520632763358.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P13921371986791156614

`(A006093(n+1)+1)%11`
-/

namespace A039709.P13921371986791156614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 11

end

end A039709.P13921371986791156614

namespace A039709

/-- `(A006093(n+1)+1)%11` -/
def P13921371986791156614.Spec : Prop :=
  ∀ n, P13921371986791156614.a n = A039709 (n + 1)

theorem P13921371986791156614.correct : P13921371986791156614.Spec := by
  intro n
  simp only [A039709, Nat.add_sub_cancel, A039709.P13921371986791156614.a, A039709.P16745182626192459782.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039709

/-! ## A039709.P4203134806902817927

`(A040976(n+1)+2)%11`
-/

namespace A039709.P4203134806902817927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) 11

end

end A039709.P4203134806902817927

namespace A039709

/-- `(A040976(n+1)+2)%11` -/
def P4203134806902817927.Spec : Prop :=
  ∀ n, P4203134806902817927.a n = A039709 (n + 1)

theorem P4203134806902817927.correct : P4203134806902817927.Spec := by
  intro n
  simp only [A039709, Nat.add_sub_cancel, A039709.P4203134806902817927.a, A039709.P16745182626192459782.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039709

/-! ## A039709.P10020306474310067283

`(A086801(n+1)+3)%11`
-/

namespace A039709.P10020306474310067283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086801 (n + 1) + 3) 11

end

end A039709.P10020306474310067283

namespace A039709

/-- `(A086801(n+1)+3)%11` -/
def P10020306474310067283.Spec : Prop :=
  ∀ n, P10020306474310067283.a n = A039709 (n + 1)

theorem P10020306474310067283.correct : P10020306474310067283.Spec := by
  intro n
  simp only [A039709, Nat.add_sub_cancel, A039709.P10020306474310067283.a, A039709.P16745182626192459782.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039709

/-! ## A039709.P15485642072235281148

`(A113935(n+1)-3)%11`
-/

namespace A039709.P15485642072235281148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113935 (n + 1) - 3) 11

end

end A039709.P15485642072235281148

namespace A039709

/-- `(A113935(n+1)-3)%11` -/
def P15485642072235281148.Spec : Prop :=
  ∀ n, P15485642072235281148.a n = A039709 (n + 1)

theorem P15485642072235281148.correct : P15485642072235281148.Spec := by
  intro n
  simp only [A039709, Nat.add_sub_cancel, A039709.P15485642072235281148.a, A039709.P16745182626192459782.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039709

/-! ## A039709.P18190514055460446743

`(A175222(n+1)-5)%11`
-/

namespace A039709.P18190514055460446743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175222 (n + 1) - 5) 11

end

end A039709.P18190514055460446743

namespace A039709

/-- `(A175222(n+1)-5)%11` -/
def P18190514055460446743.Spec : Prop :=
  ∀ n, P18190514055460446743.a n = A039709 (n + 1)

theorem P18190514055460446743.correct : P18190514055460446743.Spec := by
  intro n
  simp only [A039709, Nat.add_sub_cancel, A039709.P18190514055460446743.a, A039709.P16745182626192459782.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039709

/-! ## A039709.P12885815375268886983

`A010880(A242122(n+1))`
-/

namespace A039709.P12885815375268886983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A242122 (n + 1)).toNat

end

end A039709.P12885815375268886983

namespace A039709

/-- `A010880(A242122(n+1))` -/
def P12885815375268886983.Spec : Prop :=
  ∀ n, P12885815375268886983.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P7670400666157914371

`(A014692(n+1)+n)%A287535(A340675(3*n+5))`
-/

namespace A039709.P7670400666157914371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 1) + (n : ℤ)) (A287535 (A340675 (3 * n + 5)).toNat)

end

end A039709.P7670400666157914371

namespace A039709

/-- `(A014692(n+1)+n)%A287535(A340675(3*n+5))` -/
def P7670400666157914371.Spec : Prop :=
  ∀ n, P7670400666157914371.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P14540736487200120061

`A008578(n+2)%11`
-/

namespace A039709.P14540736487200120061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 11

end

end A039709.P14540736487200120061

namespace A039709

/-- `A008578(n+2)%11` -/
def P14540736487200120061.Spec : Prop :=
  ∀ n, P14540736487200120061.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P7026151000231788536

`p?[A000430(n+1)]%11`
-/

namespace A039709.P7026151000231788536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 11

end

end A039709.P7026151000231788536

namespace A039709

/-- `p?[A000430(n+1)]%11` -/
def P7026151000231788536.Spec : Prop :=
  ∀ n, P7026151000231788536.a n = A039709 (n + 1)

end A039709

/-! ## A039709.P18147148054935933477

`record[A006530(n+2)]%11`
-/

namespace A039709.P18147148054935933477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 11

end

end A039709.P18147148054935933477

namespace A039709

/-- `record[A006530(n+2)]%11` -/
def P18147148054935933477.Spec : Prop :=
  ∀ n, P18147148054935933477.a n = A039709 (n + 1)

end A039709

/-!
# A039710: a(n) = n-th prime modulo 12.

The programs for A039710, the canonical program `A039710.P12643465325383279561` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039710 has offset 1).

The definition of A039710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039710.P12643465325383279561

`A000040(n+1)%12`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039710

/-- `A000040(n+1)%12` -/
def P12643465325383279561.Spec : Prop :=
  ∀ n, P12643465325383279561.a n = A039710 (n + 1)

theorem P12643465325383279561.correct : P12643465325383279561.Spec := by
  intro n
  simp only [A039710, Nat.add_sub_cancel]

end A039710

/-! ## A039710.P7927463731031192442

`Δ[A007504(n)]%12`
-/

namespace A039710.P7927463731031192442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 12

end

end A039710.P7927463731031192442

namespace A039710

/-- `Δ[A007504(n)]%12` -/
def P7927463731031192442.Spec : Prop :=
  ∀ n, P7927463731031192442.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P8820758836314441012

`abs(Δ[A022837(n)]%12)`
-/

namespace A039710.P8820758836314441012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 12|

end

end A039710.P8820758836314441012

namespace A039710

/-- `abs(Δ[A022837(n)]%12)` -/
def P8820758836314441012.Spec : Prop :=
  ∀ n, P8820758836314441012.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P4845814031830263007

`sqrt(A001248(n+1))%12`
-/

namespace A039710.P4845814031830263007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 12

end

end A039710.P4845814031830263007

namespace A039710

/-- `sqrt(A001248(n+1))%12` -/
def P4845814031830263007.Spec : Prop :=
  ∀ n, P4845814031830263007.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P6496411342339122981

`(A006093(n+1)+1)%12`
-/

namespace A039710.P6496411342339122981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 12

end

end A039710.P6496411342339122981

namespace A039710

/-- `(A006093(n+1)+1)%12` -/
def P6496411342339122981.Spec : Prop :=
  ∀ n, P6496411342339122981.a n = A039710 (n + 1)

theorem P6496411342339122981.correct : P6496411342339122981.Spec := by
  intro n
  simp only [A039710, Nat.add_sub_cancel, A039710.P6496411342339122981.a, A039710.P12643465325383279561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039710

/-! ## A039710.P15584550698775004137

`A010881(A229787(n+1))`
-/

namespace A039710.P15584550698775004137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (A229787 (n + 1)).toNat

end

end A039710.P15584550698775004137

namespace A039710

/-- `A010881(A229787(n+1))` -/
def P15584550698775004137.Spec : Prop :=
  ∀ n, P15584550698775004137.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P5565279881650944624

`A030078(n+1)%A040030(n)`
-/

namespace A039710.P5565279881650944624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) (A040030 n)

end

end A039710.P5565279881650944624

namespace A039710

/-- `A030078(n+1)%A040030(n)` -/
def P5565279881650944624.Spec : Prop :=
  ∀ n, P5565279881650944624.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P18425560619506162022

`A050997(n+1)%A040030(n)`
-/

namespace A039710.P18425560619506162022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) (A040030 n)

end

end A039710.P18425560619506162022

namespace A039710

/-- `A050997(n+1)%A040030(n)` -/
def P18425560619506162022.Spec : Prop :=
  ∀ n, P18425560619506162022.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P16291956463478813435

`A092759(n+1)%A040030(n)`
-/

namespace A039710.P16291956463478813435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) (A040030 n)

end

end A039710.P16291956463478813435

namespace A039710

/-- `A092759(n+1)%A040030(n)` -/
def P16291956463478813435.Spec : Prop :=
  ∀ n, P16291956463478813435.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P13311577234070751177

`A171028(n+1)%A040030(n)`
-/

namespace A039710.P13311577234070751177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171028 (n + 1)) (A040030 n)

end

end A039710.P13311577234070751177

namespace A039710

/-- `A171028(n+1)%A040030(n)` -/
def P13311577234070751177.Spec : Prop :=
  ∀ n, P13311577234070751177.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P18227296697159248140

`A171043(n+1)%A040030(n)`
-/

namespace A039710.P18227296697159248140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171043 (n + 1)) (A040030 n)

end

end A039710.P18227296697159248140

namespace A039710

/-- `A171043(n+1)%A040030(n)` -/
def P18227296697159248140.Spec : Prop :=
  ∀ n, P18227296697159248140.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P11598357843333900576

`A229738(n+1)%A040030(n)`
-/

namespace A039710.P11598357843333900576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229738 (n + 1)) (A040030 n)

end

end A039710.P11598357843333900576

namespace A039710

/-- `A229738(n+1)%A040030(n)` -/
def P11598357843333900576.Spec : Prop :=
  ∀ n, P11598357843333900576.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P16792887095280101157

`A229787(n+1)%A040030(n)`
-/

namespace A039710.P16792887095280101157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229787 (n + 1)) (A040030 n)

end

end A039710.P16792887095280101157

namespace A039710

/-- `A229787(n+1)%A040030(n)` -/
def P16792887095280101157.Spec : Prop :=
  ∀ n, P16792887095280101157.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P16901768475264863882

`A008578(n+2)%12`
-/

namespace A039710.P16901768475264863882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 12

end

end A039710.P16901768475264863882

namespace A039710

/-- `A008578(n+2)%12` -/
def P16901768475264863882.Spec : Prop :=
  ∀ n, P16901768475264863882.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P4551537414769013702

`p?[A000430(n+1)]%12`
-/

namespace A039710.P4551537414769013702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 12

end

end A039710.P4551537414769013702

namespace A039710

/-- `p?[A000430(n+1)]%12` -/
def P4551537414769013702.Spec : Prop :=
  ∀ n, P4551537414769013702.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P15138791601277531869

`record[A006530(n+2)]%12`
-/

namespace A039710.P15138791601277531869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 12

end

end A039710.P15138791601277531869

namespace A039710

/-- `record[A006530(n+2)]%12` -/
def P15138791601277531869.Spec : Prop :=
  ∀ n, P15138791601277531869.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P6211195840940792300

`record[A020639(n+2)]%12`
-/

namespace A039710.P6211195840940792300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 12

end

end A039710.P6211195840940792300

namespace A039710

/-- `record[A020639(n+2)]%12` -/
def P6211195840940792300.Spec : Prop :=
  ∀ n, P6211195840940792300.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P10821023797111281703

`A006530(lt[n, A006530(n+2)]+2)%12`
-/

namespace A039710.P10821023797111281703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)) 12

end

end A039710.P10821023797111281703

namespace A039710

/-- `A006530(lt[n, A006530(n+2)]+2)%12` -/
def P10821023797111281703.Spec : Prop :=
  ∀ n, P10821023797111281703.a n = A039710 (n + 1)

end A039710

/-! ## A039710.P18077022872010178123

`(lt[A000010(n+1), A020639(n+1)]+1)%12`
-/

namespace A039710.P18077022872010178123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) % 12

end

end A039710.P18077022872010178123

namespace A039710

/-- `(lt[A000010(n+1), A020639(n+1)]+1)%12` -/
def P18077022872010178123.Spec : Prop :=
  ∀ n, (P18077022872010178123.a n : ℤ) = A039710 (n + 1)

end A039710

/-! ## A039710.P6940488006060504169

`A010881(A000040(n+1))`
-/

namespace A039710.P6940488006060504169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (A000040 (n + 1)).toNat

end

end A039710.P6940488006060504169

namespace A039710

/-- `A010881(A000040(n+1))` -/
def P6940488006060504169.Spec : Prop :=
  ∀ n, P6940488006060504169.a n = A039710 (n + 1)

end A039710

/-!
# A039711: a(n) = n-th prime modulo 13.

The programs for A039711, the canonical program `A039711.P11355264584091863481` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039711 has offset 1).

The definition of A039711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039711.P11355264584091863481

`A000040(n+1)%13`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039711

/-- `A000040(n+1)%13` -/
def P11355264584091863481.Spec : Prop :=
  ∀ n, P11355264584091863481.a n = A039711 (n + 1)

theorem P11355264584091863481.correct : P11355264584091863481.Spec := by
  intro n
  simp only [A039711, Nat.add_sub_cancel]

end A039711

/-! ## A039711.P10886563808706321820

`Δ[A007504(n)]%13`
-/

namespace A039711.P10886563808706321820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 13

end

end A039711.P10886563808706321820

namespace A039711

/-- `Δ[A007504(n)]%13` -/
def P10886563808706321820.Spec : Prop :=
  ∀ n, P10886563808706321820.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P14475210109907068721

`sqrt(A001248(n+1))%13`
-/

namespace A039711.P14475210109907068721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 13

end

end A039711.P14475210109907068721

namespace A039711

/-- `sqrt(A001248(n+1))%13` -/
def P14475210109907068721.Spec : Prop :=
  ∀ n, P14475210109907068721.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P1028866479546843843

`p?[A247665(n+1)]%13`
-/

namespace A039711.P1028866479546843843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 13

end

end A039711.P1028866479546843843

namespace A039711

/-- `p?[A247665(n+1)]%13` -/
def P1028866479546843843.Spec : Prop :=
  ∀ n, P1028866479546843843.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P8844992635888165452

`(A006093(n+1)+1)%13`
-/

namespace A039711.P8844992635888165452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 13

end

end A039711.P8844992635888165452

namespace A039711

/-- `(A006093(n+1)+1)%13` -/
def P8844992635888165452.Spec : Prop :=
  ∀ n, P8844992635888165452.a n = A039711 (n + 1)

theorem P8844992635888165452.correct : P8844992635888165452.Spec := by
  intro n
  simp only [A039711, Nat.add_sub_cancel, A039711.P8844992635888165452.a, A039711.P11355264584091863481.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039711

/-! ## A039711.P15781821661341809143

`(A001748(n+1)/3)%13`
-/

namespace A039711.P15781821661341809143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) 13

end

end A039711.P15781821661341809143

namespace A039711

/-- `(A001748(n+1)/3)%13` -/
def P15781821661341809143.Spec : Prop :=
  ∀ n, P15781821661341809143.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P1565318396836956040

`(A175222(n+1)-5)%13`
-/

namespace A039711.P1565318396836956040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175222 (n + 1) - 5) 13

end

end A039711.P1565318396836956040

namespace A039711

/-- `(A175222(n+1)-5)%13` -/
def P1565318396836956040.Spec : Prop :=
  ∀ n, P1565318396836956040.a n = A039711 (n + 1)

theorem P1565318396836956040.correct : P1565318396836956040.Spec := by
  intro n
  simp only [A039711, Nat.add_sub_cancel, A039711.P1565318396836956040.a, A039711.P11355264584091863481.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039711

/-! ## A039711.P8766559490785180870

`A008578(n+2)%13`
-/

namespace A039711.P8766559490785180870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 13

end

end A039711.P8766559490785180870

namespace A039711

/-- `A008578(n+2)%13` -/
def P8766559490785180870.Spec : Prop :=
  ∀ n, P8766559490785180870.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P5723623036155742098

`p?[A050376(n+1)]%13`
-/

namespace A039711.P5723623036155742098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 13

end

end A039711.P5723623036155742098

namespace A039711

/-- `p?[A050376(n+1)]%13` -/
def P5723623036155742098.Spec : Prop :=
  ∀ n, P5723623036155742098.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P9564571453522531752

`p?[A000961(n+1)]%13`
-/

namespace A039711.P9564571453522531752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 13

end

end A039711.P9564571453522531752

namespace A039711

/-- `p?[A000961(n+1)]%13` -/
def P9564571453522531752.Spec : Prop :=
  ∀ n, P9564571453522531752.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P12352173233594279369

`record[A006530(n+2)]%13`
-/

namespace A039711.P12352173233594279369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 13

end

end A039711.P12352173233594279369

namespace A039711

/-- `record[A006530(n+2)]%13` -/
def P12352173233594279369.Spec : Prop :=
  ∀ n, P12352173233594279369.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P8073744089695269049

`record[A020639(n+2)]%13`
-/

namespace A039711.P8073744089695269049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 13

end

end A039711.P8073744089695269049

namespace A039711

/-- `record[A020639(n+2)]%13` -/
def P8073744089695269049.Spec : Prop :=
  ∀ n, P8073744089695269049.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P11159687628590926340

`A006530(A074845(n+2))%13`
-/

namespace A039711.P11159687628590926340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A074845 (n + 2)).toNat) 13

end

end A039711.P11159687628590926340

namespace A039711

/-- `A006530(A074845(n+2))%13` -/
def P11159687628590926340.Spec : Prop :=
  ∀ n, P11159687628590926340.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P6808180923379851191

`record[A058977(n+1)]%13`
-/

namespace A039711.P6808180923379851191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 13

end

end A039711.P6808180923379851191

namespace A039711

/-- `record[A058977(n+1)]%13` -/
def P6808180923379851191.Spec : Prop :=
  ∀ n, P6808180923379851191.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P13729511984235021178

`record[A093074(n+1)]%13`
-/

namespace A039711.P13729511984235021178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 13

end

end A039711.P13729511984235021178

namespace A039711

/-- `record[A093074(n+1)]%13` -/
def P13729511984235021178.Spec : Prop :=
  ∀ n, P13729511984235021178.a n = A039711 (n + 1)

end A039711

/-! ## A039711.P9881289467672507329

`record[A014963(n+2)]%13`
-/

namespace A039711.P9881289467672507329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 13

end

end A039711.P9881289467672507329

namespace A039711

/-- `record[A014963(n+2)]%13` -/
def P9881289467672507329.Spec : Prop :=
  ∀ n, P9881289467672507329.a n = A039711 (n + 1)

end A039711

/-!
# A039712: a(n) = n-th prime modulo 14.

The programs for A039712, the canonical program `A039712.P4777749648613116212` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039712 has offset 1).

The definition of A039712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039712.P4777749648613116212

`A000040(n+1)%14`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039712

/-- `A000040(n+1)%14` -/
def P4777749648613116212.Spec : Prop :=
  ∀ n, P4777749648613116212.a n = A039712 (n + 1)

theorem P4777749648613116212.correct : P4777749648613116212.Spec := by
  intro n
  simp only [A039712, Nat.add_sub_cancel]

end A039712

/-! ## A039712.P2392000297643280834

`Δ[A007504(n)]%14`
-/

namespace A039712.P2392000297643280834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 14

end

end A039712.P2392000297643280834

namespace A039712

/-- `Δ[A007504(n)]%14` -/
def P2392000297643280834.Spec : Prop :=
  ∀ n, P2392000297643280834.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P11196942383921482546

`sqrt(A001248(n+1))%14`
-/

namespace A039712.P11196942383921482546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 14

end

end A039712.P11196942383921482546

namespace A039712

/-- `sqrt(A001248(n+1))%14` -/
def P11196942383921482546.Spec : Prop :=
  ∀ n, P11196942383921482546.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P8205080634317482640

`(A006093(n+1)+1)%14`
-/

namespace A039712.P8205080634317482640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 14

end

end A039712.P8205080634317482640

namespace A039712

/-- `(A006093(n+1)+1)%14` -/
def P8205080634317482640.Spec : Prop :=
  ∀ n, P8205080634317482640.a n = A039712 (n + 1)

theorem P8205080634317482640.correct : P8205080634317482640.Spec := by
  intro n
  simp only [A039712, Nat.add_sub_cancel, A039712.P8205080634317482640.a, A039712.P4777749648613116212.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039712

/-! ## A039712.P4295721406113403944

`(A008864(n+1)-1)%14`
-/

namespace A039712.P4295721406113403944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) 14

end

end A039712.P4295721406113403944

namespace A039712

/-- `(A008864(n+1)-1)%14` -/
def P4295721406113403944.Spec : Prop :=
  ∀ n, P4295721406113403944.a n = A039712 (n + 1)

theorem P4295721406113403944.correct : P4295721406113403944.Spec := by
  intro n
  simp only [A039712, Nat.add_sub_cancel, A039712.P4295721406113403944.a, A039712.P4777749648613116212.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039712

/-! ## A039712.P8133669128200702339

`(A086801(n+1)+3)%14`
-/

namespace A039712.P8133669128200702339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086801 (n + 1) + 3) 14

end

end A039712.P8133669128200702339

namespace A039712

/-- `(A086801(n+1)+3)%14` -/
def P8133669128200702339.Spec : Prop :=
  ∀ n, P8133669128200702339.a n = A039712 (n + 1)

theorem P8133669128200702339.correct : P8133669128200702339.Spec := by
  intro n
  simp only [A039712, Nat.add_sub_cancel, A039712.P8133669128200702339.a, A039712.P4777749648613116212.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039712

/-! ## A039712.P16917894967492144768

`(A175222(n+1)-5)%14`
-/

namespace A039712.P16917894967492144768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175222 (n + 1) - 5) 14

end

end A039712.P16917894967492144768

namespace A039712

/-- `(A175222(n+1)-5)%14` -/
def P16917894967492144768.Spec : Prop :=
  ∀ n, P16917894967492144768.a n = A039712 (n + 1)

theorem P16917894967492144768.correct : P16917894967492144768.Spec := by
  intro n
  simp only [A039712, Nat.add_sub_cancel, A039712.P16917894967492144768.a, A039712.P4777749648613116212.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039712

/-! ## A039712.P9466833055814811604

`A053835(A242126(n+1))`
-/

namespace A039712.P9466833055814811604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A242126 (n + 1)).toNat

end

end A039712.P9466833055814811604

namespace A039712

/-- `A053835(A242126(n+1))` -/
def P9466833055814811604.Spec : Prop :=
  ∀ n, P9466833055814811604.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P12935652564936549696

`A092759(n+1)%A040042(n)`
-/

namespace A039712.P12935652564936549696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092759 (n + 1)) (A040042 n)

end

end A039712.P12935652564936549696

namespace A039712

/-- `A092759(n+1)%A040042(n)` -/
def P12935652564936549696.Spec : Prop :=
  ∀ n, P12935652564936549696.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P1861994037697526490

`A242126(n+1)%A040042(n)`
-/

namespace A039712.P1861994037697526490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242126 (n + 1)) (A040042 n)

end

end A039712.P1861994037697526490

namespace A039712

/-- `A242126(n+1)%A040042(n)` -/
def P1861994037697526490.Spec : Prop :=
  ∀ n, P1861994037697526490.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P16068356464032118843

`p?[A000961(n+1)]%14`
-/

namespace A039712.P16068356464032118843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 14

end

end A039712.P16068356464032118843

namespace A039712

/-- `p?[A000961(n+1)]%14` -/
def P16068356464032118843.Spec : Prop :=
  ∀ n, P16068356464032118843.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P9227626818130132451

`record[A006530(n+2)]%14`
-/

namespace A039712.P9227626818130132451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 14

end

end A039712.P9227626818130132451

namespace A039712

/-- `record[A006530(n+2)]%14` -/
def P9227626818130132451.Spec : Prop :=
  ∀ n, P9227626818130132451.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P2715828011606485446

`record[A020639(n+2)]%14`
-/

namespace A039712.P2715828011606485446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 14

end

end A039712.P2715828011606485446

namespace A039712

/-- `record[A020639(n+2)]%14` -/
def P2715828011606485446.Spec : Prop :=
  ∀ n, P2715828011606485446.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P5738368160998312240

`A070696(p?[comp[n²]])`
-/

namespace A039712.P5738368160998312240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039712.P5738368160998312240

namespace A039712

/-- `A070696(p?[comp[n²]])` -/
def P5738368160998312240.Spec : Prop :=
  ∀ n, P5738368160998312240.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P1820281176482283515

`record[A093074(n+1)]%14`
-/

namespace A039712.P1820281176482283515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 14

end

end A039712.P1820281176482283515

namespace A039712

/-- `record[A093074(n+1)]%14` -/
def P1820281176482283515.Spec : Prop :=
  ∀ n, P1820281176482283515.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P6695961997333916417

`record[A014963(n+2)]%14`
-/

namespace A039712.P6695961997333916417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 14

end

end A039712.P6695961997333916417

namespace A039712

/-- `record[A014963(n+2)]%14` -/
def P6695961997333916417.Spec : Prop :=
  ∀ n, P6695961997333916417.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P11662246273294377289

`A070696(A000040(n+1))`
-/

namespace A039712.P11662246273294377289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A000040 (n + 1)).toNat

end

end A039712.P11662246273294377289

namespace A039712

/-- `A070696(A000040(n+1))` -/
def P11662246273294377289.Spec : Prop :=
  ∀ n, P11662246273294377289.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P1834650636157263084

`A070696(A008578(n+2))`
-/

namespace A039712.P1834650636157263084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A008578 (n + 2)).toNat

end

end A039712.P1834650636157263084

namespace A039712

/-- `A070696(A008578(n+2))` -/
def P1834650636157263084.Spec : Prop :=
  ∀ n, P1834650636157263084.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P15057320900016669118

`A070696(A182986(n+2))`
-/

namespace A039712.P15057320900016669118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A182986 (n + 2)).toNat

end

end A039712.P15057320900016669118

namespace A039712

/-- `A070696(A182986(n+2))` -/
def P15057320900016669118.Spec : Prop :=
  ∀ n, P15057320900016669118.a n = A039712 (n + 1)

end A039712

/-! ## A039712.P10769772742680307346

`A070696(record[A006530(n+2)])`
-/

namespace A039712.P10769772742680307346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039712.P10769772742680307346

namespace A039712

/-- `A070696(record[A006530(n+2)])` -/
def P10769772742680307346.Spec : Prop :=
  ∀ n, P10769772742680307346.a n = A039712 (n + 1)

end A039712

/-!
# A039713: a(n) = n-th prime modulo 15.

The programs for A039713, the canonical program `A039713.P13535640931066760422` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039713 has offset 1).

The definition of A039713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039713.P13535640931066760422

`A000040(n+1)%15`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039713

/-- `A000040(n+1)%15` -/
def P13535640931066760422.Spec : Prop :=
  ∀ n, P13535640931066760422.a n = A039713 (n + 1)

theorem P13535640931066760422.correct : P13535640931066760422.Spec := by
  intro n
  simp only [A039713, Nat.add_sub_cancel]

end A039713

/-! ## A039713.P11701049406417541648

`Δ[A007504(n)]%15`
-/

namespace A039713.P11701049406417541648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 15

end

end A039713.P11701049406417541648

namespace A039713

/-- `Δ[A007504(n)]%15` -/
def P11701049406417541648.Spec : Prop :=
  ∀ n, P11701049406417541648.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P11450843850420990051

`(A006093(n+1)+1)%15`
-/

namespace A039713.P11450843850420990051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 15

end

end A039713.P11450843850420990051

namespace A039713

/-- `(A006093(n+1)+1)%15` -/
def P11450843850420990051.Spec : Prop :=
  ∀ n, P11450843850420990051.a n = A039713 (n + 1)

theorem P11450843850420990051.correct : P11450843850420990051.Spec := by
  intro n
  simp only [A039713, Nat.add_sub_cancel, A039713.P11450843850420990051.a, A039713.P13535640931066760422.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039713

/-! ## A039713.P5750714998271912426

`(A008864(n+1)-1)%15`
-/

namespace A039713.P5750714998271912426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) 15

end

end A039713.P5750714998271912426

namespace A039713

/-- `(A008864(n+1)-1)%15` -/
def P5750714998271912426.Spec : Prop :=
  ∀ n, P5750714998271912426.a n = A039713 (n + 1)

theorem P5750714998271912426.correct : P5750714998271912426.Spec := by
  intro n
  simp only [A039713, Nat.add_sub_cancel, A039713.P5750714998271912426.a, A039713.P13535640931066760422.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039713

/-! ## A039713.P5652200199455924085

`(A086801(n+1)+3)%15`
-/

namespace A039713.P5652200199455924085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086801 (n + 1) + 3) 15

end

end A039713.P5652200199455924085

namespace A039713

/-- `(A086801(n+1)+3)%15` -/
def P5652200199455924085.Spec : Prop :=
  ∀ n, P5652200199455924085.a n = A039713 (n + 1)

theorem P5652200199455924085.correct : P5652200199455924085.Spec := by
  intro n
  simp only [A039713, Nat.add_sub_cancel, A039713.P5652200199455924085.a, A039713.P13535640931066760422.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039713

/-! ## A039713.P4695160794300447440

`A002377(A095959(n+1))`
-/

namespace A039713.P4695160794300447440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A095959 (n + 1)).toNat

end

end A039713.P4695160794300447440

namespace A039713

/-- `A002377(A095959(n+1))` -/
def P4695160794300447440.Spec : Prop :=
  ∀ n, P4695160794300447440.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P11518545901501853892

`A167463(A301378(n+1))`
-/

namespace A039713.P11518545901501853892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167463 (A301378 (n + 1)).toNat

end

end A039713.P11518545901501853892

namespace A039713

/-- `A167463(A301378(n+1))` -/
def P11518545901501853892.Spec : Prop :=
  ∀ n, P11518545901501853892.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P9123598209866179921

`A095959(n+1)%A154031(n+4)`
-/

namespace A039713.P9123598209866179921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095959 (n + 1)) (A154031 (n + 4))

end

end A039713.P9123598209866179921

namespace A039713

/-- `A095959(n+1)%A154031(n+4)` -/
def P9123598209866179921.Spec : Prop :=
  ∀ n, P9123598209866179921.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P11623929956739196800

`A171028(n+1)%A154031(n+4)`
-/

namespace A039713.P11623929956739196800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171028 (n + 1)) (A154031 (n + 4))

end

end A039713.P11623929956739196800

namespace A039713

/-- `A171028(n+1)%A154031(n+4)` -/
def P11623929956739196800.Spec : Prop :=
  ∀ n, P11623929956739196800.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P12138475905296819031

`A301378(n+1)%A154031(n+4)`
-/

namespace A039713.P12138475905296819031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301378 (n + 1)) (A154031 (n + 4))

end

end A039713.P12138475905296819031

namespace A039713

/-- `A301378(n+1)%A154031(n+4)` -/
def P12138475905296819031.Spec : Prop :=
  ∀ n, P12138475905296819031.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P12832696156230432497

`A391840(n+1)%A154031(n+4)`
-/

namespace A039713.P12832696156230432497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391840 (n + 1)) (A154031 (n + 4))

end

end A039713.P12832696156230432497

namespace A039713

/-- `A391840(n+1)%A154031(n+4)` -/
def P12832696156230432497.Spec : Prop :=
  ∀ n, P12832696156230432497.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P8709614199026070471

`p?[A246655(n+1)]%15`
-/

namespace A039713.P8709614199026070471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 15

end

end A039713.P8709614199026070471

namespace A039713

/-- `p?[A246655(n+1)]%15` -/
def P8709614199026070471.Spec : Prop :=
  ∀ n, P8709614199026070471.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P10714136481205478056

`p?[A225657(n+1)]%15`
-/

namespace A039713.P10714136481205478056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 15

end

end A039713.P10714136481205478056

namespace A039713

/-- `p?[A225657(n+1)]%15` -/
def P10714136481205478056.Spec : Prop :=
  ∀ n, P10714136481205478056.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P14175057105901091499

`record[A006530(n+2)]%15`
-/

namespace A039713.P14175057105901091499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 15

end

end A039713.P14175057105901091499

namespace A039713

/-- `record[A006530(n+2)]%15` -/
def P14175057105901091499.Spec : Prop :=
  ∀ n, P14175057105901091499.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P3983835542943502193

`record[A020639(n+2)]%15`
-/

namespace A039713.P3983835542943502193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 15

end

end A039713.P3983835542943502193

namespace A039713

/-- `record[A020639(n+2)]%15` -/
def P3983835542943502193.Spec : Prop :=
  ∀ n, P3983835542943502193.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P13642423520317546570

`(eq[1, A001222(n+1)]+1)%15`
-/

namespace A039713.P13642423520317546570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 15

end

end A039713.P13642423520317546570

namespace A039713

/-- `(eq[1, A001222(n+1)]+1)%15` -/
def P13642423520317546570.Spec : Prop :=
  ∀ n, (P13642423520317546570.a n : ℤ) = A039713 (n + 1)

end A039713

/-! ## A039713.P9296055656770976228

`(eq[n+2, A000203(n+1)]+1)%15`
-/

namespace A039713.P9296055656770976228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 15

end

end A039713.P9296055656770976228

namespace A039713

/-- `(eq[n+2, A000203(n+1)]+1)%15` -/
def P9296055656770976228.Spec : Prop :=
  ∀ n, (P9296055656770976228.a n : ℤ) = A039713 (n + 1)

end A039713

/-! ## A039713.P11828832956476496552

`record[A093074(n+1)]%15`
-/

namespace A039713.P11828832956476496552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 15

end

end A039713.P11828832956476496552

namespace A039713

/-- `record[A093074(n+1)]%15` -/
def P11828832956476496552.Spec : Prop :=
  ∀ n, P11828832956476496552.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P8640815044886063662

`record[A014963(n+2)]%15`
-/

namespace A039713.P8640815044886063662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 15

end

end A039713.P8640815044886063662

namespace A039713

/-- `record[A014963(n+2)]%15` -/
def P8640815044886063662.Spec : Prop :=
  ∀ n, P8640815044886063662.a n = A039713 (n + 1)

end A039713

/-! ## A039713.P1065891429808917603

`A167463(A000040(n+1))`
-/

namespace A039713.P1065891429808917603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167463 (A000040 (n + 1)).toNat

end

end A039713.P1065891429808917603

namespace A039713

/-- `A167463(A000040(n+1))` -/
def P1065891429808917603.Spec : Prop :=
  ∀ n, P1065891429808917603.a n = A039713 (n + 1)

end A039713

/-!
# A039714: a(n) = n-th prime modulo 16.

The programs for A039714, the canonical program `A039714.P8834272531705381848` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039714 has offset 1).

The definition of A039714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039714.P8834272531705381848

`A000040(n+1)%16`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039714

/-- `A000040(n+1)%16` -/
def P8834272531705381848.Spec : Prop :=
  ∀ n, P8834272531705381848.a n = A039714 (n + 1)

theorem P8834272531705381848.correct : P8834272531705381848.Spec := by
  intro n
  simp only [A039714, Nat.add_sub_cancel]

end A039714

/-! ## A039714.P2029236707099627406

`Δ[A007504(n)]%16`
-/

namespace A039714.P2029236707099627406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 16

end

end A039714.P2029236707099627406

namespace A039714

/-- `Δ[A007504(n)]%16` -/
def P2029236707099627406.Spec : Prop :=
  ∀ n, P2029236707099627406.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P7809172962943505493

`abs(Δ[A022837(n)]%16)`
-/

namespace A039714.P7809172962943505493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) 16|

end

end A039714.P7809172962943505493

namespace A039714

/-- `abs(Δ[A022837(n)]%16)` -/
def P7809172962943505493.Spec : Prop :=
  ∀ n, P7809172962943505493.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P5173134656505815302

`and(15, sqrt(A001248(n+1)))`
-/

namespace A039714.P5173134656505815302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A039714.P5173134656505815302

namespace A039714

/-- `and(15, sqrt(A001248(n+1)))` -/
def P5173134656505815302.Spec : Prop :=
  ∀ n, P5173134656505815302.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P6115063495627655505

`∑[A054541(n+1)]%16`
-/

namespace A039714.P6115063495627655505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 16

end

end A039714.P6115063495627655505

namespace A039714

/-- `∑[A054541(n+1)]%16` -/
def P6115063495627655505.Spec : Prop :=
  ∀ n, P6115063495627655505.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P13538711435482059251

`(A008864(n+1)-1)%16`
-/

namespace A039714.P13538711435482059251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) 16

end

end A039714.P13538711435482059251

namespace A039714

/-- `(A008864(n+1)-1)%16` -/
def P13538711435482059251.Spec : Prop :=
  ∀ n, P13538711435482059251.a n = A039714 (n + 1)

theorem P13538711435482059251.correct : P13538711435482059251.Spec := by
  intro n
  simp only [A039714, Nat.add_sub_cancel, A039714.P13538711435482059251.a, A039714.P8834272531705381848.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039714

/-! ## A039714.P8338455616907313796

`(A001748(n+1)/3)%16`
-/

namespace A039714.P8338455616907313796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) 16

end

end A039714.P8338455616907313796

namespace A039714

/-- `(A001748(n+1)/3)%16` -/
def P8338455616907313796.Spec : Prop :=
  ∀ n, P8338455616907313796.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P12045078806865246162

`and(15, A000040(C(n+1, n)))`
-/

namespace A039714.P12045078806865246162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A000040 (Nat.choose (n + 1) n))

end

end A039714.P12045078806865246162

namespace A039714

/-- `and(15, A000040(C(n+1, n)))` -/
def P12045078806865246162.Spec : Prop :=
  ∀ n, P12045078806865246162.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P5951682292205293864

`and(15, A000040(A000027(n+1)))`
-/

namespace A039714.P5951682292205293864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A000040 (A000027 (n + 1)).toNat)

end

end A039714.P5951682292205293864

namespace A039714

/-- `and(15, A000040(A000027(n+1)))` -/
def P5951682292205293864.Spec : Prop :=
  ∀ n, P5951682292205293864.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P10949614194069129639

`A171041(n+1)%A040056(n)`
-/

namespace A039714.P10949614194069129639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171041 (n + 1)) (A040056 n)

end

end A039714.P10949614194069129639

namespace A039714

/-- `A171041(n+1)%A040056(n)` -/
def P10949614194069129639.Spec : Prop :=
  ∀ n, P10949614194069129639.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P5254021116438007226

`(A174008(n+1)-A163300(n+1))%16`
-/

namespace A039714.P5254021116438007226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174008 (n + 1) - A163300 (n + 1)) 16

end

end A039714.P5254021116438007226

namespace A039714

/-- `(A174008(n+1)-A163300(n+1))%16` -/
def P5254021116438007226.Spec : Prop :=
  ∀ n, P5254021116438007226.a n = A039714 (n + 1)

theorem P5254021116438007226.correct : P5254021116438007226.Spec := by
  intro n
  simp only [A039714, Nat.add_sub_cancel, A039714.P5254021116438007226.a, A039714.P8834272531705381848.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A163300, A163300.P6939037721526909123.a, A174008, A174008.P6709864670116437209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039714

/-! ## A039714.P15321956144946756748

`and(A000041(2*n+1-2*(n-3)), A000040(n+1))`
-/

namespace A039714.P15321956144946756748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 ((2 * n + 1 : ℤ) - 2 * ((n : ℤ) - 3)).toNat) (A000040 (n + 1))

end

end A039714.P15321956144946756748

namespace A039714

/-- `and(A000041(2*n+1-2*(n-3)), A000040(n+1))` -/
def P15321956144946756748.Spec : Prop :=
  ∀ n, P15321956144946756748.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P14739927548609704039

`and(A000040(n+1), A077518(A020639(2*(n+1))))`
-/

namespace A039714.P14739927548609704039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A077518 (A020639 (2 * (n + 1))).toNat)

end

end A039714.P14739927548609704039

namespace A039714

/-- `and(A000040(n+1), A077518(A020639(2*(n+1))))` -/
def P14739927548609704039.Spec : Prop :=
  ∀ n, P14739927548609704039.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P2899100262001017109

`record[A006530(n+2)]%16`
-/

namespace A039714.P2899100262001017109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 16

end

end A039714.P2899100262001017109

namespace A039714

/-- `record[A006530(n+2)]%16` -/
def P2899100262001017109.Spec : Prop :=
  ∀ n, P2899100262001017109.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P152195763723368561

`record[A020639(n+2)]%16`
-/

namespace A039714.P152195763723368561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 16

end

end A039714.P152195763723368561

namespace A039714

/-- `record[A020639(n+2)]%16` -/
def P152195763723368561.Spec : Prop :=
  ∀ n, P152195763723368561.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P17279924123957305203

`record[A014963(n+2)]%16`
-/

namespace A039714.P17279924123957305203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 16

end

end A039714.P17279924123957305203

namespace A039714

/-- `record[A014963(n+2)]%16` -/
def P17279924123957305203.Spec : Prop :=
  ∀ n, P17279924123957305203.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P15228697299385508383

`and(15, record[A093074(n+1)])`
-/

namespace A039714.P15228697299385508383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A039714.P15228697299385508383

namespace A039714

/-- `and(15, record[A093074(n+1)])` -/
def P15228697299385508383.Spec : Prop :=
  ∀ n, P15228697299385508383.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P4026734461397623952

`A130909(A000040(n+1))`
-/

namespace A039714.P4026734461397623952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A000040 (n + 1)).toNat

end

end A039714.P4026734461397623952

namespace A039714

/-- `A130909(A000040(n+1))` -/
def P4026734461397623952.Spec : Prop :=
  ∀ n, P4026734461397623952.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P7889184375804819138

`A130909(A171041(n+1))`
-/

namespace A039714.P7889184375804819138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A171041 (n + 1)).toNat

end

end A039714.P7889184375804819138

namespace A039714

/-- `A130909(A171041(n+1))` -/
def P7889184375804819138.Spec : Prop :=
  ∀ n, P7889184375804819138.a n = A039714 (n + 1)

end A039714

/-! ## A039714.P14834405013161620222

`A130909(A008578(n+2))`
-/

namespace A039714.P14834405013161620222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A008578 (n + 2)).toNat

end

end A039714.P14834405013161620222

namespace A039714

/-- `A130909(A008578(n+2))` -/
def P14834405013161620222.Spec : Prop :=
  ∀ n, P14834405013161620222.a n = A039714 (n + 1)

end A039714

/-!
# A039715: Primes modulo 17.

The programs for A039715, the canonical program `A039715.P16783252219005444344` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039715 has offset 1).

The definition of A039715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039715.P16783252219005444344

`A000040(n+1)%17`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039715

/-- `A000040(n+1)%17` -/
def P16783252219005444344.Spec : Prop :=
  ∀ n, P16783252219005444344.a n = A039715 (n + 1)

theorem P16783252219005444344.correct : P16783252219005444344.Spec := by
  intro n
  simp only [A039715, Nat.add_sub_cancel]

end A039715

/-! ## A039715.P17805275504759662914

`Δ[A007504(n)]%17`
-/

namespace A039715.P17805275504759662914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 17

end

end A039715.P17805275504759662914

namespace A039715

/-- `Δ[A007504(n)]%17` -/
def P17805275504759662914.Spec : Prop :=
  ∀ n, P17805275504759662914.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P346719771606429807

`sqrt(A001248(n+1))%17`
-/

namespace A039715.P346719771606429807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 17

end

end A039715.P346719771606429807

namespace A039715

/-- `sqrt(A001248(n+1))%17` -/
def P346719771606429807.Spec : Prop :=
  ∀ n, P346719771606429807.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P11980477986275176268

`(A006093(n+1)+1)%17`
-/

namespace A039715.P11980477986275176268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 17

end

end A039715.P11980477986275176268

namespace A039715

/-- `(A006093(n+1)+1)%17` -/
def P11980477986275176268.Spec : Prop :=
  ∀ n, P11980477986275176268.a n = A039715 (n + 1)

theorem P11980477986275176268.correct : P11980477986275176268.Spec := by
  intro n
  simp only [A039715, Nat.add_sub_cancel, A039715.P11980477986275176268.a, A039715.P16783252219005444344.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039715

/-! ## A039715.P17955910345719090483

`A008578(n+2)%17`
-/

namespace A039715.P17955910345719090483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 17

end

end A039715.P17955910345719090483

namespace A039715

/-- `A008578(n+2)%17` -/
def P17955910345719090483.Spec : Prop :=
  ∀ n, P17955910345719090483.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P3151648850181811225

`Δ[A014284(n+1)]%17`
-/

namespace A039715.P3151648850181811225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 17

end

end A039715.P3151648850181811225

namespace A039715

/-- `Δ[A014284(n+1)]%17` -/
def P3151648850181811225.Spec : Prop :=
  ∀ n, P3151648850181811225.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P4005242915105093593

`p?[A326155(n+1)]%17`
-/

namespace A039715.P4005242915105093593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 17

end

end A039715.P4005242915105093593

namespace A039715

/-- `p?[A326155(n+1)]%17` -/
def P4005242915105093593.Spec : Prop :=
  ∀ n, P4005242915105093593.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P14325569820491048300

`p?[A050376(n+1)]%17`
-/

namespace A039715.P14325569820491048300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 17

end

end A039715.P14325569820491048300

namespace A039715

/-- `p?[A050376(n+1)]%17` -/
def P14325569820491048300.Spec : Prop :=
  ∀ n, P14325569820491048300.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P9514936693955167100

`p?[A123091(n+1)]%17`
-/

namespace A039715.P9514936693955167100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 17

end

end A039715.P9514936693955167100

namespace A039715

/-- `p?[A123091(n+1)]%17` -/
def P9514936693955167100.Spec : Prop :=
  ∀ n, P9514936693955167100.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P8729520460473381753

`p?[A000961(n+1)]%17`
-/

namespace A039715.P8729520460473381753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 17

end

end A039715.P8729520460473381753

namespace A039715

/-- `p?[A000961(n+1)]%17` -/
def P8729520460473381753.Spec : Prop :=
  ∀ n, P8729520460473381753.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P1088965324623605527

`record[A006530(n+2)]%17`
-/

namespace A039715.P1088965324623605527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 17

end

end A039715.P1088965324623605527

namespace A039715

/-- `record[A006530(n+2)]%17` -/
def P1088965324623605527.Spec : Prop :=
  ∀ n, P1088965324623605527.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P11485848748394921201

`record[A020639(n+2)]%17`
-/

namespace A039715.P11485848748394921201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 17

end

end A039715.P11485848748394921201

namespace A039715

/-- `record[A020639(n+2)]%17` -/
def P11485848748394921201.Spec : Prop :=
  ∀ n, P11485848748394921201.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P18081691913563380732

`record[A039649(n+1)]%17`
-/

namespace A039715.P18081691913563380732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 17

end

end A039715.P18081691913563380732

namespace A039715

/-- `record[A039649(n+1)]%17` -/
def P18081691913563380732.Spec : Prop :=
  ∀ n, P18081691913563380732.a n = A039715 (n + 1)

end A039715

/-! ## A039715.P13753918806169721162

`record[A014963(n+2)]%17`
-/

namespace A039715.P13753918806169721162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 17

end

end A039715.P13753918806169721162

namespace A039715

/-- `record[A014963(n+2)]%17` -/
def P13753918806169721162.Spec : Prop :=
  ∀ n, P13753918806169721162.a n = A039715 (n + 1)

end A039715

/-!
# A039716: a(n) = prime(n)!.

The programs for A039716, the canonical program `A039716.P11033590145453247559` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039716 has offset 1).

The definition of A039716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)!` (program `A039716.P11033590145453247559`, by `A039716.P11033590145453247559.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A039716.P11033590145453247559

`A000040(n+1)!`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039716

/-- `A000040(n+1)!` -/
def P11033590145453247559.Spec : Prop :=
  ∀ n, (P11033590145453247559.a n : ℤ) = A039716 (n + 1)

theorem P11033590145453247559.correct : P11033590145453247559.Spec := by
  intro n
  simp only [A039716, Nat.add_sub_cancel]

end A039716

/-! ## A039716.P8932043757428797801

`A177946(n+1)*A000142(n+1)`
-/

namespace A039716.P8932043757428797801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177946 (n + 1) * A000142 (n + 1)

end

end A039716.P8932043757428797801

namespace A039716

/-- `A177946(n+1)*A000142(n+1)` -/
def P8932043757428797801.Spec : Prop :=
  ∀ n, P8932043757428797801.a n = A039716 (n + 1)

end A039716

/-! ## A039716.P1817968001198699498

`p?[comp[n²]]!`
-/

namespace A039716.P1817968001198699498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039716.P1817968001198699498

namespace A039716

/-- `p?[comp[n²]]!` -/
def P1817968001198699498.Spec : Prop :=
  ∀ n, (P1817968001198699498.a n : ℤ) = A039716 (n + 1)

end A039716

/-! ## A039716.P2167687066854321601

`eq[1, ∑{e}[n, #]]!`
-/

namespace A039716.P2167687066854321601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039716.P2167687066854321601

namespace A039716

/-- `eq[1, ∑{e}[n, #]]!` -/
def P2167687066854321601.Spec : Prop :=
  ∀ n, (P2167687066854321601.a n : ℤ) = A039716 (n + 1)

end A039716

/-! ## A039716.P3804086969604558700

`record[p?[∑{p}[n, #]]!]`
-/

namespace A039716.P3804086969604558700
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039716.P3804086969604558700

namespace A039716

/-- `record[p?[∑{p}[n, #]]!]` -/
def P3804086969604558700.Spec : Prop :=
  ∀ n, (P3804086969604558700.a n : ℤ) = A039716 (n + 1)

end A039716

/-!
# A039717: Row sums of convolution triangle A030523.

The programs for A039717, the canonical program `A039717.P17407296395431737761` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039717 has offset 1).

The definition of A039717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039717.P17407296395431737761

`5*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039717

/-- `5*a(n-1)-5*a(n-2)` -/
def P17407296395431737761.Spec : Prop :=
  ∀ n, P17407296395431737761.a n = A039717 (n + 1)

theorem P17407296395431737761.correct : P17407296395431737761.Spec := by
  intro n
  simp only [A039717, Nat.add_sub_cancel]

end A039717

/-! ## A039717.P11685557986654137720

`a(n-1)*3+A081567(n-1)` with `a(0)=1`
-/

namespace A039717.P11685557986654137720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * 3 + A081567 (n - 1)

end

end A039717.P11685557986654137720

namespace A039717

/-- `a(n-1)*3+A081567(n-1)` -/
def P11685557986654137720.Spec : Prop :=
  ∀ n, P11685557986654137720.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P4793782875614010538

`ogf((1-x)/(1-5x+5x^2))`
-/

namespace A039717.P4793782875614010538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, 5] n

end

end A039717.P4793782875614010538

namespace A039717

/-- `ogf((1-x)/(1-5x+5x^2))` -/
def P4793782875614010538.Spec : Prop :=
  ∀ n, P4793782875614010538.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P1751207142427665432

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A039717.P1751207142427665432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A039717.P1751207142427665432

namespace A039717

/-- `5*(a(n-1)-a(n-2))` -/
def P1751207142427665432.Spec : Prop :=
  ∀ n, P1751207142427665432.a n = A039717 (n + 1)

theorem P1751207142427665432.correct : P1751207142427665432.Spec := by
  intro n
  simp only [A039717, Nat.add_sub_cancel, A039717.P1751207142427665432.a, A039717.P17407296395431737761.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A039717

/-! ## A039717.P16644004719710202489

`Δ[A093131(n)]`
-/

namespace A039717.P16644004719710202489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039717.P16644004719710202489

namespace A039717

/-- `Δ[A093131(n)]` -/
def P16644004719710202489.Spec : Prop :=
  ∀ n, P16644004719710202489.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P3806082823497528519

`Δ[A112091(n)]`
-/

namespace A039717.P3806082823497528519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039717.P3806082823497528519

namespace A039717

/-- `Δ[A112091(n)]` -/
def P3806082823497528519.Spec : Prop :=
  ∀ n, P3806082823497528519.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P2004525347559435362

`A217777(2*n)`
-/

namespace A039717.P2004525347559435362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n)

end

end A039717.P2004525347559435362

namespace A039717

/-- `A217777(2*n)` -/
def P2004525347559435362.Spec : Prop :=
  ∀ n, P2004525347559435362.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P6511952464391849213

`∑[A136775(n+1)]`
-/

namespace A039717.P6511952464391849213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039717.P6511952464391849213

namespace A039717

/-- `∑[A136775(n+1)]` -/
def P6511952464391849213.Spec : Prop :=
  ∀ n, P6511952464391849213.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P4673565990718998972

`A216212(Δ[n²])/2`
-/

namespace A039717.P4673565990718998972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216212 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A039717.P4673565990718998972

namespace A039717

/-- `A216212(Δ[n²])/2` -/
def P4673565990718998972.Spec : Prop :=
  ∀ n, P4673565990718998972.a n = (A039717 (n + 1) : ℚ)

end A039717

/-! ## A039717.P17236147320301097749

`A217777(Δ[n²])/2`
-/

namespace A039717.P17236147320301097749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217777 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A039717.P17236147320301097749

namespace A039717

/-- `A217777(Δ[n²])/2` -/
def P17236147320301097749.Spec : Prop :=
  ∀ n, P17236147320301097749.a n = (A039717 (n + 1) : ℚ)

end A039717

/-! ## A039717.P9073253746223697703

`A052936(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A039717.P9073253746223697703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052936 n + 2 * a (n - 1)

end

end A039717.P9073253746223697703

namespace A039717

/-- `A052936(n)+2*a(n-1)` -/
def P9073253746223697703.Spec : Prop :=
  ∀ n, P9073253746223697703.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P17650577298851992423

`A093131(n)+A081567(n)`
-/

namespace A039717.P17650577298851992423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n + A081567 n

end

end A039717.P17650577298851992423

namespace A039717

/-- `A093131(n)+A081567(n)` -/
def P17650577298851992423.Spec : Prop :=
  ∀ n, P17650577298851992423.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P9253019610633103239

`A030191(n)-A093131(n)`
-/

namespace A039717.P9253019610633103239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 n - A093131 n

end

end A039717.P9253019610633103239

namespace A039717

/-- `A030191(n)-A093131(n)` -/
def P9253019610633103239.Spec : Prop :=
  ∀ n, P9253019610633103239.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P4197312513568324007

`A217779(n)-A094865(n)`
-/

namespace A039717.P4197312513568324007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217779 n - A094865 n

end

end A039717.P4197312513568324007

namespace A039717

/-- `A217779(n)-A094865(n)` -/
def P4197312513568324007.Spec : Prop :=
  ∀ n, P4197312513568324007.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P17597537648979161644

`A052936(n+1)-A081567(n)`
-/

namespace A039717.P17597537648979161644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 (n + 1) - A081567 n

end

end A039717.P17597537648979161644

namespace A039717

/-- `A052936(n+1)-A081567(n)` -/
def P17597537648979161644.Spec : Prop :=
  ∀ n, P17597537648979161644.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P17999622042008619745

`A093131(n+1)-A093131(n)`
-/

namespace A039717.P17999622042008619745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 (n + 1) - A093131 n

end

end A039717.P17999622042008619745

namespace A039717

/-- `A093131(n+1)-A093131(n)` -/
def P17999622042008619745.Spec : Prop :=
  ∀ n, P17999622042008619745.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P7547492362143107883

`A081567(n)+A112091(n)-1`
-/

namespace A039717.P7547492362143107883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n + (A112091 n - 1)

end

end A039717.P7547492362143107883

namespace A039717

/-- `A081567(n)+A112091(n)-1` -/
def P7547492362143107883.Spec : Prop :=
  ∀ n, P7547492362143107883.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P5011698118897673372

`A112091(n+1)-A112091(n)`
-/

namespace A039717.P5011698118897673372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 (n + 1) - A112091 n

end

end A039717.P5011698118897673372

namespace A039717

/-- `A112091(n+1)-A112091(n)` -/
def P5011698118897673372.Spec : Prop :=
  ∀ n, P5011698118897673372.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P5741904267359723400

`A093129(n)+2*A093131(n)`
-/

namespace A039717.P5741904267359723400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n + 2 * A093131 n

end

end A039717.P5741904267359723400

namespace A039717

/-- `A093129(n)+2*A093131(n)` -/
def P5741904267359723400.Spec : Prop :=
  ∀ n, P5741904267359723400.a n = A039717 (n + 1)

end A039717

/-! ## A039717.P16855081949125068201

`(A081567(n)+A030191(n))/2`
-/

namespace A039717.P16855081949125068201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081567 n + A030191 n : ℚ) / 2

end

end A039717.P16855081949125068201

namespace A039717

/-- `(A081567(n)+A030191(n))/2` -/
def P16855081949125068201.Spec : Prop :=
  ∀ n, P16855081949125068201.a n = (A039717 (n + 1) : ℚ)

end A039717

/-!
# A039718: Two-dimensional simplicial complexes on n labeled nodes.

The programs for A039718, there is no canonical definition to state claims against.
-/

/-! ## A039718.P17448619544774976799

`A007095(A102895(n))+C(n, 2)`
-/

namespace A039718.P17448619544774976799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A102895 n).toNat + (Nat.choose n 2 : ℤ)

end

end A039718.P17448619544774976799

/-!
# A039719: Number of two-dimensional simplicial complexes on n unlabeled nodes.

The programs for A039719, there is no canonical definition to state claims against.
-/

/-! ## A039719.P13576295005997744092

`round(4*(n^n+1+n+n)/7)`
-/

namespace A039719.P13576295005997744092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n ^ n + 1 + n + n : ℚ) / 7))

end

end A039719.P13576295005997744092

/-!
# A039720: Period of n-countdown club-passing juggling pattern.

The programs for A039720, the canonical program `A039720.P10897226497482615980` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039720 has offset 2).

The definition of A039720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039720.P1679707658861062932

`lcm(2*(n+2)+2, 2*(n+2)-2)`
-/

namespace A039720.P1679707658861062932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * (n + 2) + 2 : ℤ) ((2 * (n + 2) : ℤ) - 2)

end

end A039720.P1679707658861062932

namespace A039720

/-- `lcm(2*(n+2)+2, 2*(n+2)-2)` -/
def P1679707658861062932.Spec : Prop :=
  ∀ n, (P1679707658861062932.a n : ℤ) = A039720 (n + 2)

end A039720

/-! ## A039720.P6865789439693985040

`(n+3)*(n+1)*(1+(n+3)%2)`
-/

namespace A039720.P6865789439693985040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (n + 1) * (1 + (n + 3) % 2)

end

end A039720.P6865789439693985040

namespace A039720

/-- `(n+3)*(n+1)*(1+(n+3)%2)` -/
def P6865789439693985040.Spec : Prop :=
  ∀ n, (P6865789439693985040.a n : ℤ) = A039720 (n + 2)

end A039720

/-! ## A039720.P1434678255718813871

`(3+(-1)^(n+2))*((n+2)²-1)/2`
-/

namespace A039720.P1434678255718813871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + (-1) ^ (n + 2)) * (((n + 2) ^ 2 : ℤ) - 1) : ℚ) / 2

end

end A039720.P1434678255718813871

namespace A039720

/-- `(3+(-1)^(n+2))*((n+2)²-1)/2` -/
def P1434678255718813871.Spec : Prop :=
  ∀ n, P1434678255718813871.a n = (A039720 (n + 2) : ℚ)

theorem P1434678255718813871.correct : P1434678255718813871.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A039720, Nat.add_sub_cancel, A039720.P1434678255718813871.a, A039720.P10897226497482615980.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A039720, Nat.add_sub_cancel, A039720.P1434678255718813871.a, A039720.P10897226497482615980.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A039720

/-! ## A039720.P10897226497482615980

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=6, a(1)=8, a(2)=30, a(3)=24, a(4)=70, a(5)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039720

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P10897226497482615980.Spec : Prop :=
  ∀ n, P10897226497482615980.a n = A039720 (n + 2)

theorem P10897226497482615980.correct : P10897226497482615980.Spec := by
  intro n
  simp only [A039720, Nat.add_sub_cancel]

end A039720

/-! ## A039720.P13083827902680875652

`A005563(n+1)*A000034(n+1)`
-/

namespace A039720.P13083827902680875652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) * A000034 (n + 1)

end

end A039720.P13083827902680875652

namespace A039720

/-- `A005563(n+1)*A000034(n+1)` -/
def P13083827902680875652.Spec : Prop :=
  ∀ n, P13083827902680875652.a n = A039720 (n + 2)

end A039720

/-! ## A039720.P17728917822312397606

`2*lcm(n+1, n+3)`
-/

namespace A039720.P17728917822312397606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm (n + 1) (n + 3)

end

end A039720.P17728917822312397606

namespace A039720

/-- `2*lcm(n+1, n+3)` -/
def P17728917822312397606.Spec : Prop :=
  ∀ n, (P17728917822312397606.a n : ℤ) = A039720 (n + 2)

end A039720

/-! ## A039720.P2959931666300418628

`((n+2)²-1)*gcd(2, n)`
-/

namespace A039720.P2959931666300418628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1) * (Nat.gcd 2 n : ℤ)

end

end A039720.P2959931666300418628

namespace A039720

/-- `((n+2)²-1)*gcd(2, n)` -/
def P2959931666300418628.Spec : Prop :=
  ∀ n, P2959931666300418628.a n = A039720 (n + 2)

end A039720

/-! ## A039720.P551254845864926986

`2*(n+3)*gcd(n+1, ∑[n])`
-/

namespace A039720.P551254845864926986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3) * Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A039720.P551254845864926986

namespace A039720

/-- `2*(n+3)*gcd(n+1, ∑[n])` -/
def P551254845864926986.Spec : Prop :=
  ∀ n, (P551254845864926986.a n : ℤ) = A039720 (n + 2)

end A039720

/-! ## A039720.P5190309597667168207

`(2-and(1, n))*(n+1)*(n+3)`
-/

namespace A039720.P5190309597667168207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * ((n + 1) * (n + 3) : ℤ)

end

end A039720.P5190309597667168207

namespace A039720

/-- `(2-and(1, n))*(n+1)*(n+3)` -/
def P5190309597667168207.Spec : Prop :=
  ∀ n, P5190309597667168207.a n = A039720 (n + 2)

end A039720

/-! ## A039720.P11597105715158157427

`(gcd(n+2, and(1, n))+n)*(n+3)`
-/

namespace A039720.P11597105715158157427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 2) (Nat.land 1 n) + n) * (n + 3)

end

end A039720.P11597105715158157427

namespace A039720

/-- `(gcd(n+2, and(1, n))+n)*(n+3)` -/
def P11597105715158157427.Spec : Prop :=
  ∀ n, (P11597105715158157427.a n : ℤ) = A039720 (n + 2)

end A039720

/-! ## A039720.P5045657778738054617

`(n+3)/(n-1)*a(n-2)` with `a(0)=6, a(1)=8`
-/

namespace A039720.P5045657778738054617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6, 8] fun n a =>
  (n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 2)

end

end A039720.P5045657778738054617

namespace A039720

/-- `(n+3)/(n-1)*a(n-2)` -/
def P5045657778738054617.Spec : Prop :=
  ∀ n, P5045657778738054617.a n = (A039720 (n + 2) : ℚ)

end A039720

/-! ## A039720.P4564093346504906817

`(and(1, n+1)+1)*(n+1)*(n+3)`
-/

namespace A039720.P4564093346504906817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * ((n + 1) * (n + 3))

end

end A039720.P4564093346504906817

namespace A039720

/-- `(and(1, n+1)+1)*(n+1)*(n+3)` -/
def P4564093346504906817.Spec : Prop :=
  ∀ n, (P4564093346504906817.a n : ℤ) = A039720 (n + 2)

end A039720

/-! ## A039720.P14538494584412918656

`2*(n+1)*(n+3)/gcd(n-1, 2*n)`
-/

namespace A039720.P14538494584412918656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) * ((n + 3 : ℚ) / (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ)))

end

end A039720.P14538494584412918656

namespace A039720

/-- `2*(n+1)*(n+3)/gcd(n-1, 2*n)` -/
def P14538494584412918656.Spec : Prop :=
  ∀ n, P14538494584412918656.a n = (A039720 (n + 2) : ℚ)

end A039720

/-! ## A039720.P17402960284817552057

`gcd(A317637(n), A331433(n))`
-/

namespace A039720.P17402960284817552057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317637 n) (A331433 n)

end

end A039720.P17402960284817552057

namespace A039720

/-- `gcd(A317637(n), A331433(n))` -/
def P17402960284817552057.Spec : Prop :=
  ∀ n, (P17402960284817552057.a n : ℤ) = A039720 (n + 2)

end A039720

/-! ## A039720.P727853759206596652

`A010694(n)*A070260(n+1)`
-/

namespace A039720.P727853759206596652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n * A070260 (n + 1)

end

end A039720.P727853759206596652

namespace A039720

/-- `A010694(n)*A070260(n+1)` -/
def P727853759206596652.Spec : Prop :=
  ∀ n, P727853759206596652.a n = A039720 (n + 2)

end A039720

/-! ## A039720.P3103946587491808411

`A109043(n+1)+A137933(n+1)+A109043(n+1)`
-/

namespace A039720.P3103946587491808411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (n + 1) + (A137933 (n + 1) + A109043 (n + 1))

end

end A039720.P3103946587491808411

namespace A039720

/-- `A109043(n+1)+A137933(n+1)+A109043(n+1)` -/
def P3103946587491808411.Spec : Prop :=
  ∀ n, P3103946587491808411.a n = A039720 (n + 2)

end A039720

/-! ## A039720.P440308695613740407

`2*A066830(n+2)`
-/

namespace A039720.P440308695613740407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066830 (n + 2)

end

end A039720.P440308695613740407

namespace A039720

/-- `2*A066830(n+2)` -/
def P440308695613740407.Spec : Prop :=
  ∀ n, P440308695613740407.a n = A039720 (n + 2)

end A039720

/-! ## A039720.P8838168450986327484

`2*sqrt(A171522(n+1))`
-/

namespace A039720.P8838168450986327484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A171522 (n + 1) : ℝ)

end

end A039720.P8838168450986327484

namespace A039720

/-- `2*sqrt(A171522(n+1))` -/
def P8838168450986327484.Spec : Prop :=
  ∀ n, P8838168450986327484.a n = (A039720 (n + 2) : ℝ)

end A039720

/-! ## A039720.P15424447664976460071

`(n+1)*(A066104(n+1)+2)`
-/

namespace A039720.P15424447664976460071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A066104 (n + 1) + 2)

end

end A039720.P15424447664976460071

namespace A039720

/-- `(n+1)*(A066104(n+1)+2)` -/
def P15424447664976460071.Spec : Prop :=
  ∀ n, P15424447664976460071.a n = A039720 (n + 2)

end A039720

/-! ## A039720.P11742926157912694653

`A005563(n+1)*A040001(n+2)`
-/

namespace A039720.P11742926157912694653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) * A040001 (n + 2)

end

end A039720.P11742926157912694653

namespace A039720

/-- `A005563(n+1)*A040001(n+2)` -/
def P11742926157912694653.Spec : Prop :=
  ∀ n, P11742926157912694653.a n = A039720 (n + 2)

end A039720

/-!
# A039721: a(1) = 1, a(m+1) = 2*Sum_{k=1..floor((m+1)/2)} a(m+1-k).

The programs for A039721, there is no canonical definition to state claims against.
-/

/-! ## A039721.P6862424606385745082

`∏{e}[floor(3*2^(n-1)), A129772(#)]`
-/

namespace A039721.P6862424606385745082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A129772 (Nat.factorization (f1 n).natAbs p)

end

end A039721.P6862424606385745082

/-! ## A039721.P17809706360035330967

`A325763(A018175(n))`
-/

namespace A039721.P17809706360035330967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A018175 n).toNat

end

end A039721.P17809706360035330967

/-! ## A039721.P1870705170153491253

`A387881(A367222(n))`
-/

namespace A039721.P1870705170153491253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387881 (A367222 n).toNat

end

end A039721.P1870705170153491253

/-!
# A039722: a(1) = 1, a(m+1) = 2*Sum_{k=1..floor((m+1)/2)} a(k).

The programs for A039722, the canonical program `A039722.P9616311279110399096` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039722 has offset 1).

The definition of A039722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039722.P9616311279110399096

`Δ[a(n-1)+2*a(floor(n/2))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039722

/-- `Δ[a(n-1)+2*a(floor(n/2))]` -/
def P9616311279110399096.Spec : Prop :=
  ∀ n, P9616311279110399096.a n = A039722 (n + 1)

theorem P9616311279110399096.correct : P9616311279110399096.Spec := by
  intro n
  simp only [A039722, Nat.add_sub_cancel]

end A039722

/-! ## A039722.P15820308556444446112

`a(n-2)+2*a(A004524(n))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A039722.P15820308556444446112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) + 2 * a (A004524 n).toNat

end

end A039722.P15820308556444446112

namespace A039722

/-- `a(n-2)+2*a(A004524(n))` -/
def P15820308556444446112.Spec : Prop :=
  ∀ n, (P15820308556444446112.a n : ℤ) = A039722 (n + 1)

end A039722

/-! ## A039722.P15610870897317620237

`Δ[round(A058039(n)/3)]`
-/

namespace A039722.P15610870897317620237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058039 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039722.P15610870897317620237

namespace A039722

/-- `Δ[round(A058039(n)/3)]` -/
def P15610870897317620237.Spec : Prop :=
  ∀ n, P15610870897317620237.a n = A039722 (n + 1)

end A039722

/-! ## A039722.P15184226300896339260

`Δ[A058039(n)]/(A057427(n)+2)`
-/

namespace A039722.P15184226300896339260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058039 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057427 n + 2 : ℚ)

end

end A039722.P15184226300896339260

namespace A039722

/-- `Δ[A058039(n)]/(A057427(n)+2)` -/
def P15184226300896339260.Spec : Prop :=
  ∀ n, P15184226300896339260.a n = (A039722 (n + 1) : ℚ)

end A039722

/-! ## A039722.P8068190953552832643

`Δ[A058039(n)]/p?[A020639(n+1)+1]`
-/

namespace A039722.P8068190953552832643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058039 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ)

end

end A039722.P8068190953552832643

namespace A039722

/-- `Δ[A058039(n)]/p?[A020639(n+1)+1]` -/
def P8068190953552832643.Spec : Prop :=
  ∀ n, P8068190953552832643.a n = (A039722 (n + 1) : ℚ)

end A039722

/-! ## A039722.P16088177731264734190

`A000122(n²)*A347027(A065033(n))`
-/

namespace A039722.P16088177731264734190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A347027 (A065033 n).toNat

end

end A039722.P16088177731264734190

namespace A039722

/-- `A000122(n²)*A347027(A065033(n))` -/
def P16088177731264734190.Spec : Prop :=
  ∀ n, P16088177731264734190.a n = A039722 (n + 1)

end A039722

/-! ## A039722.P16587293553556818380

`A004737(A010000(n))*A347027(A065033(n))`
-/

namespace A039722.P16587293553556818380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A010000 n).toNat * A347027 (A065033 n).toNat

end

end A039722.P16587293553556818380

namespace A039722

/-- `A004737(A010000(n))*A347027(A065033(n))` -/
def P16587293553556818380.Spec : Prop :=
  ∀ n, P16587293553556818380.a n = A039722 (n + 1)

end A039722

/-! ## A039722.P17472441931372970545

`A004396(A058039(∑[A000035(n)]))`
-/

namespace A039722.P17472441931372970545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A058039 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A039722.P17472441931372970545

namespace A039722

/-- `A004396(A058039(∑[A000035(n)]))` -/
def P17472441931372970545.Spec : Prop :=
  ∀ n, P17472441931372970545.a n = A039722 (n + 1)

end A039722

/-!
# A039723: Numbers in base -10.

The programs for A039723, there is no canonical definition to state claims against.
-/

/-! ## A039723.P3175693104612730182

`A319778(n-∑{digits}[n, #])+n-1`
-/

namespace A039723.P3175693104612730182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319778 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + ((n : ℤ) - 1)

end

end A039723.P3175693104612730182

/-! ## A039723.P13111895040456824137

`A072655(n-∑{digits}[n, #])+n-3*floor(n/10)`
-/

namespace A039723.P13111895040456824137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072655 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + ((n : ℤ) - 3 * ⌊(n : ℚ) / 10⌋)

end

end A039723.P13111895040456824137

/-! ## A039723.P5604875975627587854

`A127993(A070565(n))+n`
-/

namespace A039723.P5604875975627587854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127993 (A070565 n).toNat + (n : ℤ)

end

end A039723.P5604875975627587854

/-! ## A039723.P15843389111983621119

`A127993(A169932(n))+n`
-/

namespace A039723.P15843389111983621119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127993 (A169932 n).toNat + (n : ℤ)

end

end A039723.P15843389111983621119

/-!
# A039724: a(n) is the negabinary expansion of n, that is, the expansion of n in base -2.

The programs for A039724, the canonical program `A039724.P5845673454398674636` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039724 has offset 0).

The definition of A039724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039724.P5845673454398674636

`A007088(A005351(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039724

/-- `A007088(A005351(n))` -/
def P5845673454398674636.Spec : Prop :=
  ∀ n, P5845673454398674636.a n = A039724 n

theorem P5845673454398674636.correct : P5845673454398674636.Spec := by
  intro n
  simp only [A039724]

end A039724

/-! ## A039724.P1803884406060334376

`A079112(A338248(n))`
-/

namespace A039724.P1803884406060334376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079112 (A338248 n).toNat

end

end A039724.P1803884406060334376

namespace A039724

/-- `A079112(A338248(n))` -/
def P1803884406060334376.Spec : Prop :=
  ∀ n, P1803884406060334376.a n = A039724 n

end A039724

/-! ## A039724.P2600504581136527759

`A185544(2*A005351(n))`
-/

namespace A039724.P2600504581136527759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A005351 n).toNat

end

end A039724.P2600504581136527759

namespace A039724

/-- `A185544(2*A005351(n))` -/
def P2600504581136527759.Spec : Prop :=
  ∀ n, P2600504581136527759.a n = A039724 n

end A039724

/-! ## A039724.P11209157647615270908

`A185544(A005351(n)+A005351(n))`
-/

namespace A039724.P11209157647615270908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A005351 n + A005351 n).toNat

end

end A039724.P11209157647615270908

namespace A039724

/-- `A185544(A005351(n)+A005351(n))` -/
def P11209157647615270908.Spec : Prop :=
  ∀ n, P11209157647615270908.a n = A039724 n

end A039724

/-! ## A039724.P11759067043582750888

`A007088(xor(A080610(n)-n, A080610(n)))`
-/

namespace A039724.P11759067043582750888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A080610 n - (n : ℤ)) (A080610 n)).toNat

end

end A039724.P11759067043582750888

namespace A039724

/-- `A007088(xor(A080610(n)-n, A080610(n)))` -/
def P11759067043582750888.Spec : Prop :=
  ∀ n, P11759067043582750888.a n = A039724 n

end A039724

/-! ## A039724.P9821539128885437407

`A007088(xor(A263053(n+1)+n, A263053(n+1)))`
-/

namespace A039724.P9821539128885437407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A263053 (n + 1) + (n : ℤ)) (A263053 (n + 1))).toNat

end

end A039724.P9821539128885437407

namespace A039724

/-- `A007088(xor(A263053(n+1)+n, A263053(n+1)))` -/
def P9821539128885437407.Spec : Prop :=
  ∀ n, P9821539128885437407.a n = A039724 n

end A039724

/-! ## A039724.P6523579699374047388

`A007088(xor(A078052(2*n+1)+n, A078052(2*n+1)))`
-/

namespace A039724.P6523579699374047388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A078052 (2 * n + 1) + (n : ℤ)) (A078052 (2 * n + 1))).toNat

end

end A039724.P6523579699374047388

namespace A039724

/-- `A007088(xor(A078052(2*n+1)+n, A078052(2*n+1)))` -/
def P6523579699374047388.Spec : Prop :=
  ∀ n, P6523579699374047388.a n = A039724 n

end A039724

/-!
# A039725: Even abundant numbers divided by 2.

The programs for A039725, the canonical program `A039725.P5064549758558634164` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039725 has offset 1).

The definition of A039725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039725.P6388617549698911120

`eq[0, A294935(2*(n+1))]+1`
-/

namespace A039725.P6388617549698911120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039725.P6388617549698911120

namespace A039725

/-- `eq[0, A294935(2*(n+1))]+1` -/
def P6388617549698911120.Spec : Prop :=
  ∀ n, (P6388617549698911120.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P7154457782984940893

`eq[1, A060862(2*(n+1))]+1`
-/

namespace A039725.P7154457782984940893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039725.P7154457782984940893

namespace A039725

/-- `eq[1, A060862(2*(n+1))]+1` -/
def P7154457782984940893.Spec : Prop :=
  ∀ n, (P7154457782984940893.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P5064549758558634164

`eq[1, A082551(2*(n+1))]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039725

/-- `eq[1, A082551(2*(n+1))]+1` -/
def P5064549758558634164.Spec : Prop :=
  ∀ n, (P5064549758558634164.a n : ℤ) = A039725 (n + 1)

theorem P5064549758558634164.correct : P5064549758558634164.Spec := by
  intro n
  simp only [A039725, Nat.add_sub_cancel]

end A039725

/-! ## A039725.P4053132208119315713

`lt[1, A318679(2*(n+1))]+1`
-/

namespace A039725.P4053132208119315713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039725.P4053132208119315713

namespace A039725

/-- `lt[1, A318679(2*(n+1))]+1` -/
def P4053132208119315713.Spec : Prop :=
  ∀ n, (P4053132208119315713.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P6900795251737891102

`lt[4*(n+1), A000203(2*(n+1))]+1`
-/

namespace A039725.P6900795251737891102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039725.P6900795251737891102

namespace A039725

/-- `lt[4*(n+1), A000203(2*(n+1))]+1` -/
def P6900795251737891102.Spec : Prop :=
  ∀ n, (P6900795251737891102.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P7204513808235833742

`eq[A341621(n+1)², A341621(n+1)]+1`
-/

namespace A039725.P7204513808235833742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039725.P7204513808235833742

namespace A039725

/-- `eq[A341621(n+1)², A341621(n+1)]+1` -/
def P7204513808235833742.Spec : Prop :=
  ∀ n, (P7204513808235833742.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P4080408710302610984

`lt[A033879(2*(n+1)), A008683(2*n+1)]+1`
-/

namespace A039725.P4080408710302610984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A039725.P4080408710302610984

namespace A039725

/-- `lt[A033879(2*(n+1)), A008683(2*n+1)]+1` -/
def P4080408710302610984.Spec : Prop :=
  ∀ n, (P4080408710302610984.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P2710080281741859007

`lt[n, A318505(A004277(n))]`
-/

namespace A039725.P2710080281741859007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039725.P2710080281741859007

namespace A039725

/-- `lt[n, A318505(A004277(n))]` -/
def P2710080281741859007.Spec : Prop :=
  ∀ n, (P2710080281741859007.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P17147744878748731941

`lt[2, ∑{d}[2*n, 1/#]]`
-/

namespace A039725.P17147744878748731941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 1 / (d : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A039725.P17147744878748731941

namespace A039725

/-- `lt[2, ∑{d}[2*n, 1/#]]` -/
def P17147744878748731941.Spec : Prop :=
  ∀ n, (P17147744878748731941.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P596757919920502287

`lt[(2*n)², n*∑{d}[2*n, #]]`
-/

namespace A039725.P596757919920502287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039725.P596757919920502287

namespace A039725

/-- `lt[(2*n)², n*∑{d}[2*n, #]]` -/
def P596757919920502287.Spec : Prop :=
  ∀ n, (P596757919920502287.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P3944346874625538038

`lt[2*n, ∑{d}[2*n, #]-2*n]`
-/

namespace A039725.P3944346874625538038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039725.P3944346874625538038

namespace A039725

/-- `lt[2*n, ∑{d}[2*n, #]-2*n]` -/
def P3944346874625538038.Spec : Prop :=
  ∀ n, (P3944346874625538038.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P9131665610935088131

`lt[A008574(n), A000203(A004277(n))]`
-/

namespace A039725.P9131665610935088131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039725.P9131665610935088131

namespace A039725

/-- `lt[A008574(n), A000203(A004277(n))]` -/
def P9131665610935088131.Spec : Prop :=
  ∀ n, (P9131665610935088131.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P16451865136823697294

`eq[1, A294937(2*(n+1))]+1`
-/

namespace A039725.P16451865136823697294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039725.P16451865136823697294

namespace A039725

/-- `eq[1, A294937(2*(n+1))]+1` -/
def P16451865136823697294.Spec : Prop :=
  ∀ n, (P16451865136823697294.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P3543279325309199643

`lt[0, A080224(2*(n+1))]+1`
-/

namespace A039725.P3543279325309199643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039725.P3543279325309199643

namespace A039725

/-- `lt[0, A080224(2*(n+1))]+1` -/
def P3543279325309199643.Spec : Prop :=
  ∀ n, (P3543279325309199643.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P9588507435729787999

`lt[1, A033880(2*(n+1))]+1`
-/

namespace A039725.P9588507435729787999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039725.P9588507435729787999

namespace A039725

/-- `lt[1, A033880(2*(n+1))]+1` -/
def P9588507435729787999.Spec : Prop :=
  ∀ n, (P9588507435729787999.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P7132477856055628374

`lt[1, A187795(2*(n+1))]+1`
-/

namespace A039725.P7132477856055628374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039725.P7132477856055628374

namespace A039725

/-- `lt[1, A187795(2*(n+1))]+1` -/
def P7132477856055628374.Spec : Prop :=
  ∀ n, (P7132477856055628374.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P13188363766448518358

`lt[1, A237588(2*(n+1))]+1`
-/

namespace A039725.P13188363766448518358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039725.P13188363766448518358

namespace A039725

/-- `lt[1, A237588(2*(n+1))]+1` -/
def P13188363766448518358.Spec : Prop :=
  ∀ n, (P13188363766448518358.a n : ℤ) = A039725 (n + 1)

end A039725

/-! ## A039725.P14229145340239955217

`eq[1, A060862(A028310(2*n))]`
-/

namespace A039725.P14229145340239955217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039725.P14229145340239955217

namespace A039725

/-- `eq[1, A060862(A028310(2*n))]` -/
def P14229145340239955217.Spec : Prop :=
  ∀ n, (P14229145340239955217.a n : ℤ) = A039725 (n + 1)

end A039725

/-!
# A039726: Recursive prime generating sequence.

The programs for A039726, there is no canonical definition to state claims against.
-/

/-! ## A039726.P17538247550187953319

`p?[∑[A067032(A117401(n))]]`
-/

namespace A039726.P17538247550187953319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 (A117401 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039726.P17538247550187953319

/-! ## A039726.P2234839574317620045

`A042988(lt[A086557(n+2), 46])`
-/

namespace A039726.P2234839574317620045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086557 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A039726.P2234839574317620045

/-! ## A039726.P14015219726020781086

`p?[abs(C(n, A195185(n+1))-n)]`
-/

namespace A039726.P14015219726020781086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n (A195185 (n + 1)).toNat : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039726.P14015219726020781086

/-! ## A039726.P10647701713526310343

`A000040(record[A227481(n)])`
-/

namespace A039726.P10647701713526310343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039726.P10647701713526310343

/-! ## A039726.P8236633752099182462

`p?[∑[A034968(A059110(n))]]`
-/

namespace A039726.P8236633752099182462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A059110 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039726.P8236633752099182462

/-!
# A039727: [ Even numbers in the sequence generated by b(n)=|b(n-1)+2b(n-2)-n| ], divided by 2.

The programs for A039727, the canonical program `A039727.P15659781134038850177` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039727 has offset 1).

The definition of A039727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039727.P10108793698324201895

`A050821(A028310(n))/2`
-/

namespace A039727.P10108793698324201895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050821 (A028310 n).toNat : ℚ) / 2

end

end A039727.P10108793698324201895

namespace A039727

/-- `A050821(A028310(n))/2` -/
def P10108793698324201895.Spec : Prop :=
  ∀ n, P10108793698324201895.a n = (A039727 (n + 1) : ℚ)

end A039727

/-! ## A039727.P15659781134038850177

`((n+1)*A050821(A028310(n)))%A005408(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039727

/-- `((n+1)*A050821(A028310(n)))%A005408(n)` -/
def P15659781134038850177.Spec : Prop :=
  ∀ n, P15659781134038850177.a n = A039727 (n + 1)

theorem P15659781134038850177.correct : P15659781134038850177.Spec := by
  intro n
  simp only [A039727, Nat.add_sub_cancel]

end A039727

/-! ## A039727.P12220245419661128688

`(A017329(n)+(n+1)*A050821(A028310(n)))%(2*n+1)`
-/

namespace A039727.P12220245419661128688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017329 n + (n + 1 : ℤ) * A050821 (A028310 n).toNat) (2 * n + 1 : ℤ)

end

end A039727.P12220245419661128688

namespace A039727

/-- `(A017329(n)+(n+1)*A050821(A028310(n)))%(2*n+1)` -/
def P12220245419661128688.Spec : Prop :=
  ∀ n, P12220245419661128688.a n = A039727 (n + 1)

end A039727

/-! ## A039727.P5188082873726038014

`(A322860(A000040(n+1))+(n+1)*A050821(A028310(n)))%(2*n+1)`
-/

namespace A039727.P5188082873726038014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322860 (A000040 (n + 1)).toNat + (n + 1 : ℤ) * A050821 (A028310 n).toNat) (2 * n + 1 : ℤ)

end

end A039727.P5188082873726038014

namespace A039727

/-- `(A322860(A000040(n+1))+(n+1)*A050821(A028310(n)))%(2*n+1)` -/
def P5188082873726038014.Spec : Prop :=
  ∀ n, P5188082873726038014.a n = A039727 (n + 1)

end A039727

/-! ## A039727.P8408474553978739351

`A050821(A065033(2*n))/2`
-/

namespace A039727.P8408474553978739351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050821 (A065033 (2 * n)).toNat : ℚ) / 2

end

end A039727.P8408474553978739351

namespace A039727

/-- `A050821(A065033(2*n))/2` -/
def P8408474553978739351.Spec : Prop :=
  ∀ n, P8408474553978739351.a n = (A039727 (n + 1) : ℚ)

end A039727

/-! ## A039727.P9835073372923622237

`A050821(A134478(∑[n]))/2`
-/

namespace A039727.P9835073372923622237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050821 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / 2

end

end A039727.P9835073372923622237

namespace A039727

/-- `A050821(A134478(∑[n]))/2` -/
def P9835073372923622237.Spec : Prop :=
  ∀ n, P9835073372923622237.a n = (A039727 (n + 1) : ℚ)

end A039727

/-! ## A039727.P1503595211609776683

`A050821(A137734(n²))/2`
-/

namespace A039727.P1503595211609776683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050821 (A137734 (n ^ 2)).toNat : ℚ) / 2

end

end A039727.P1503595211609776683

namespace A039727

/-- `A050821(A137734(n²))/2` -/
def P1503595211609776683.Spec : Prop :=
  ∀ n, P1503595211609776683.a n = (A039727 (n + 1) : ℚ)

end A039727

/-! ## A039727.P16850972485544383559

`A050821(A137735(n²))/2`
-/

namespace A039727.P16850972485544383559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050821 (A137735 (n ^ 2)).toNat : ℚ) / 2

end

end A039727.P16850972485544383559

namespace A039727

/-- `A050821(A137735(n²))/2` -/
def P16850972485544383559.Spec : Prop :=
  ∀ n, P16850972485544383559.a n = (A039727 (n + 1) : ℚ)

end A039727

/-!
# A039728: (Even numbers in Hofstadter Q-sequence)/2.

The programs for A039728, the canonical program `A039728.P3387211495281761254` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039728 has offset 1).

The definition of A039728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039728.P3387211495281761254

`A050823(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039728

/-- `A050823(n+1)/2` -/
def P3387211495281761254.Spec : Prop :=
  ∀ n, P3387211495281761254.a n = (A039728 (n + 1) : ℚ)

end A039728

/-! ## A039728.P6868975854704222244

`A001281(A050823(n+1))`
-/

namespace A039728.P6868975854704222244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A050823 (n + 1)).toNat

end

end A039728.P6868975854704222244

namespace A039728

/-- `A001281(A050823(n+1))` -/
def P6868975854704222244.Spec : Prop :=
  ∀ n, P6868975854704222244.a n = A039728 (n + 1)

end A039728

/-! ## A039728.P2433678718853604870

`A000720(p?[A207790(A005185(n+1))])`
-/

namespace A039728.P2433678718853604870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039728.P2433678718853604870

namespace A039728

/-- `A000720(p?[A207790(A005185(n+1))])` -/
def P2433678718853604870.Spec : Prop :=
  ∀ n, P2433678718853604870.a n = A039728 (n + 1)

end A039728

/-! ## A039728.P10873856343378807657

`A055396(p?[A073846(A005185(n+1))])`
-/

namespace A039728.P10873856343378807657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039728.P10873856343378807657

namespace A039728

/-- `A055396(p?[A073846(A005185(n+1))])` -/
def P10873856343378807657.Spec : Prop :=
  ∀ n, P10873856343378807657.a n = A039728 (n + 1)

end A039728

/-! ## A039728.P3425988550342458727

`A075167(p?[A073846(A005185(n+1))])`
-/

namespace A039728.P3425988550342458727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039728.P3425988550342458727

namespace A039728

/-- `A075167(p?[A073846(A005185(n+1))])` -/
def P3425988550342458727.Spec : Prop :=
  ∀ n, P3425988550342458727.a n = A039728 (n + 1)

end A039728

/-! ## A039728.P16437678336241308949

`A055396(p?[A129131(A005185(n+1))])`
-/

namespace A039728.P16437678336241308949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039728.P16437678336241308949

namespace A039728

/-- `A055396(p?[A129131(A005185(n+1))])` -/
def P16437678336241308949.Spec : Prop :=
  ∀ n, P16437678336241308949.a n = A039728 (n + 1)

end A039728

/-! ## A039728.P8487479983268526048

`A075167(p?[A129131(A005185(n+1))])`
-/

namespace A039728.P8487479983268526048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039728.P8487479983268526048

namespace A039728

/-- `A075167(p?[A129131(A005185(n+1))])` -/
def P8487479983268526048.Spec : Prop :=
  ∀ n, P8487479983268526048.a n = A039728 (n + 1)

end A039728

/-! ## A039728.P252777850799312920

`A252464(p?[A073846(A005185(n+1))])`
-/

namespace A039728.P252777850799312920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A005185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039728.P252777850799312920

namespace A039728

/-- `A252464(p?[A073846(A005185(n+1))])` -/
def P252777850799312920.Spec : Prop :=
  ∀ n, P252777850799312920.a n = A039728 (n + 1)

end A039728

/-!
# A039729: [ Even numbers in the sequence generated by a(n)=a(a(n-2))+a(n-a(n-2)) ], divided by 2.

The programs for A039729, the canonical program `A039729.P6700865526674361114` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039729 has offset 1).

The definition of A039729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039729.P6700865526674361114

`A050827(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039729

/-- `A050827(n+1)/2` -/
def P6700865526674361114.Spec : Prop :=
  ∀ n, P6700865526674361114.a n = (A039729 (n + 1) : ℚ)

end A039729

/-! ## A039729.P14020362426849428331

`A026741(A050827(n+1))`
-/

namespace A039729.P14020362426849428331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A050827 (n + 1)).toNat

end

end A039729.P14020362426849428331

namespace A039729

/-- `A026741(A050827(n+1))` -/
def P14020362426849428331.Spec : Prop :=
  ∀ n, P14020362426849428331.a n = A039729 (n + 1)

end A039729

/-! ## A039729.P3621518774055714036

`A000720(p?[A073846(A005229(n+1))])`
-/

namespace A039729.P3621518774055714036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A005229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039729.P3621518774055714036

namespace A039729

/-- `A000720(p?[A073846(A005229(n+1))])` -/
def P3621518774055714036.Spec : Prop :=
  ∀ n, P3621518774055714036.a n = A039729 (n + 1)

end A039729

/-! ## A039729.P17325739082859420041

`A061395(p?[A073846(A005229(n+1))])`
-/

namespace A039729.P17325739082859420041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A005229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039729.P17325739082859420041

namespace A039729

/-- `A061395(p?[A073846(A005229(n+1))])` -/
def P17325739082859420041.Spec : Prop :=
  ∀ n, P17325739082859420041.a n = A039729 (n + 1)

end A039729

/-! ## A039729.P18232351608196994704

`A003963(p?[A073846(A005229(n+1))])`
-/

namespace A039729.P18232351608196994704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A005229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039729.P18232351608196994704

namespace A039729

/-- `A003963(p?[A073846(A005229(n+1))])` -/
def P18232351608196994704.Spec : Prop :=
  ∀ n, P18232351608196994704.a n = A039729 (n + 1)

end A039729

/-! ## A039729.P17154049705636581367

`A056239(p?[A073846(A005229(n+1))])`
-/

namespace A039729.P17154049705636581367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A005229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039729.P17154049705636581367

namespace A039729

/-- `A056239(p?[A073846(A005229(n+1))])` -/
def P17154049705636581367.Spec : Prop :=
  ∀ n, P17154049705636581367.a n = A039729 (n + 1)

end A039729

/-! ## A039729.P7879440749218766240

`A324861(p?[A207790(A005229(n+1))])`
-/

namespace A039729.P7879440749218766240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A005229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324861 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039729.P7879440749218766240

namespace A039729

/-- `A324861(p?[A207790(A005229(n+1))])` -/
def P7879440749218766240.Spec : Prop :=
  ∀ n, P7879440749218766240.a n = A039729 (n + 1)

end A039729

/-!
# A039730: A050829 divided by 2.

The programs for A039730, there is no canonical definition to state claims against.
-/

/-! ## A039730.P16030851997623952325

`A050829(n+1)/2`
-/

namespace A039730.P16030851997623952325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050829 (n + 1) : ℚ) / 2

end

end A039730.P16030851997623952325

/-! ## A039730.P3778043964910108484

`A008619(A050829(n+1)-2)`
-/

namespace A039730.P3778043964910108484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A050829 (n + 1) - 2).toNat

end

end A039730.P3778043964910108484

/-! ## A039730.P7342034859960902590

`A004525(A050829(n+1)-2)+1`
-/

namespace A039730.P7342034859960902590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A050829 (n + 1) - 2).toNat + 1

end

end A039730.P7342034859960902590

/-! ## A039730.P9077655657349690665

`A110654(A050829(n+1))`
-/

namespace A039730.P9077655657349690665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A050829 (n + 1)).toNat

end

end A039730.P9077655657349690665

/-! ## A039730.P7549421651891928087

`A004526(A050829(n+1)-1)+1`
-/

namespace A039730.P7549421651891928087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050829 (n + 1) - 1).toNat + 1

end

end A039730.P7549421651891928087

/-! ## A039730.P13338053201509032005

`A004525(A050829(n+1)%(2*n+3))`
-/

namespace A039730.P13338053201509032005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A050829 (n + 1)) (2 * n + 3 : ℤ)).toNat

end

end A039730.P13338053201509032005

/-! ## A039730.P11076224151834290115

`A004526(A050829(n+1)+1)`
-/

namespace A039730.P11076224151834290115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050829 (n + 1) + 1).toNat

end

end A039730.P11076224151834290115

/-! ## A039730.P7572341026643468986

`A001281(A050829(n+1)+2)-1`
-/

namespace A039730.P7572341026643468986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A050829 (n + 1) + 2).toNat - 1

end

end A039730.P7572341026643468986

/-!
# A039731: a(n) = max{prime(n) mod q, where prime q < prime(n) = n-th prime}.

The programs for A039731, the canonical program `A039731.P13748971199648184030` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039731 has offset 2).

The definition of A039731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039731.P13748971199648184030

`A065091(n+1)-A039734(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039731

/-- `A065091(n+1)-A039734(n+2)` -/
def P13748971199648184030.Spec : Prop :=
  ∀ n, P13748971199648184030.a n = A039731 (n + 2)

theorem P13748971199648184030.correct : P13748971199648184030.Spec := by
  intro n
  simp only [A039731, Nat.add_sub_cancel]

end A039731

/-! ## A039731.P16326514810736125731

`A039734(n+2)-A039739(n+2)`
-/

namespace A039731.P16326514810736125731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (n + 2) - A039739 (n + 2)

end

end A039731.P16326514810736125731

namespace A039731

/-- `A039734(n+2)-A039739(n+2)` -/
def P16326514810736125731.Spec : Prop :=
  ∀ n, P16326514810736125731.a n = A039731 (n + 2)

theorem P16326514810736125731.correct : P16326514810736125731.Spec := by
  intro n
  simp only [A039731, Nat.add_sub_cancel, A039731.P16326514810736125731.a, A039731.P13748971199648184030.a, A039734, A039734.P6650041505053879589.a, A039739, A039739.P9876725710224219756.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039731

/-! ## A039731.P1001684408321908482

`A140475(n+1)%A039734(n+2)`
-/

namespace A039731.P1001684408321908482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140475 (n + 1)) (A039734 (n + 2))

end

end A039731.P1001684408321908482

namespace A039731

/-- `A140475(n+1)%A039734(n+2)` -/
def P1001684408321908482.Spec : Prop :=
  ∀ n, P1001684408321908482.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P9756142850389639362

`A065091(n+1)-A151800(A005097(n+1))`
-/

namespace A039731.P9756142850389639362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A151800 (A005097 (n + 1)).toNat

end

end A039731.P9756142850389639362

namespace A039731

/-- `A065091(n+1)-A151800(A005097(n+1))` -/
def P9756142850389639362.Spec : Prop :=
  ∀ n, P9756142850389639362.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P14201637737522621755

`A065091(n+1)-A000040(A039733(n+2))`
-/

namespace A039731.P14201637737522621755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A000040 (A039733 (n + 2)).toNat

end

end A039731.P14201637737522621755

namespace A039731

/-- `A065091(n+1)-A000040(A039733(n+2))` -/
def P14201637737522621755.Spec : Prop :=
  ∀ n, P14201637737522621755.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P14831693325751766331

`A000040(n+2)-A039734(n+2)`
-/

namespace A039731.P14831693325751766331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A039734 (n + 2)

end

end A039731.P14831693325751766331

namespace A039731

/-- `A000040(n+2)-A039734(n+2)` -/
def P14831693325751766331.Spec : Prop :=
  ∀ n, P14831693325751766331.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P8475036921665054208

`A000040(n+2)-A079953(n+2)`
-/

namespace A039731.P8475036921665054208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A079953 (n + 2)

end

end A039731.P8475036921665054208

namespace A039731

/-- `A000040(n+2)-A079953(n+2)` -/
def P8475036921665054208.Spec : Prop :=
  ∀ n, P8475036921665054208.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P9204688426440124731

`A079953(n+2)-A039739(n+2)`
-/

namespace A039731.P9204688426440124731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079953 (n + 2) - A039739 (n + 2)

end

end A039731.P9204688426440124731

namespace A039731

/-- `A079953(n+2)-A039739(n+2)` -/
def P9204688426440124731.Spec : Prop :=
  ∀ n, P9204688426440124731.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P9278375424262230902

`A000040(n+2)-A000040(A039733(n+2))`
-/

namespace A039731.P9278375424262230902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (A039733 (n + 2)).toNat

end

end A039731.P9278375424262230902

namespace A039731

/-- `A000040(n+2)-A000040(A039733(n+2))` -/
def P9278375424262230902.Spec : Prop :=
  ∀ n, P9278375424262230902.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P13635646067457476671

`p?[A004273(n)]-A039734(n+2)`
-/

namespace A039731.P13635646067457476671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A039734 (n + 2)

end

end A039731.P13635646067457476671

namespace A039731

/-- `p?[A004273(n)]-A039734(n+2)` -/
def P13635646067457476671.Spec : Prop :=
  ∀ n, P13635646067457476671.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P2284410173795661233

`p?[A005408(n)]-A039734(n+2)`
-/

namespace A039731.P2284410173795661233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A039734 (n + 2)

end

end A039731.P2284410173795661233

namespace A039731

/-- `p?[A005408(n)]-A039734(n+2)` -/
def P2284410173795661233.Spec : Prop :=
  ∀ n, P2284410173795661233.a n = A039731 (n + 2)

end A039731

/-! ## A039731.P11077526654239039241

`p?[A022998(n)]-A039734(n+2)`
-/

namespace A039731.P11077526654239039241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A039734 (n + 2)

end

end A039731.P11077526654239039241

namespace A039731

/-- `p?[A022998(n)]-A039734(n+2)` -/
def P11077526654239039241.Spec : Prop :=
  ∀ n, P11077526654239039241.a n = A039731 (n + 2)

end A039731

/-!
# A039732: a(n) = s(n+1)/2, s=A039731.

The programs for A039732, the canonical program `A039732.P11246992434539566219` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039732 has offset 1).

The definition of A039732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039732.P11246992434539566219

`A039731(n+3)/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A039732

/-- `A039731(n+3)/2` -/
def P11246992434539566219.Spec : Prop :=
  ∀ n, P11246992434539566219.a n = (A039732 (n + 1) : ℚ)

end A039732

/-! ## A039732.P4313873676891575961

`(A065091(n+2)-A039734(n+3))/2`
-/

namespace A039732.P4313873676891575961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 2) - A039734 (n + 3) : ℚ) / 2

end

end A039732.P4313873676891575961

namespace A039732

/-- `(A065091(n+2)-A039734(n+3))/2` -/
def P4313873676891575961.Spec : Prop :=
  ∀ n, P4313873676891575961.a n = (A039732 (n + 1) : ℚ)

end A039732

/-! ## A039732.P7151051583131870068

`(A039734(n+3)-A039739(n+3))/2`
-/

namespace A039732.P7151051583131870068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039734 (n + 3) - A039739 (n + 3) : ℚ) / 2

end

end A039732.P7151051583131870068

namespace A039732

/-- `(A039734(n+3)-A039739(n+3))/2` -/
def P7151051583131870068.Spec : Prop :=
  ∀ n, P7151051583131870068.a n = (A039732 (n + 1) : ℚ)

end A039732

/-! ## A039732.P11750241226000374932

`A001281(A039731(n+3))`
-/

namespace A039732.P11750241226000374932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A039731 (n + 3)).toNat

end

end A039732.P11750241226000374932

namespace A039732

/-- `A001281(A039731(n+3))` -/
def P11750241226000374932.Spec : Prop :=
  ∀ n, P11750241226000374932.a n = A039732 (n + 1)

end A039732

/-! ## A039732.P16499022727207811663

`A004526(A039731(n+3)+1)`
-/

namespace A039732.P16499022727207811663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A039731 (n + 3) + 1).toNat

end

end A039732.P16499022727207811663

namespace A039732

/-- `A004526(A039731(n+3)+1)` -/
def P16499022727207811663.Spec : Prop :=
  ∀ n, P16499022727207811663.a n = A039732 (n + 1)

end A039732

/-! ## A039732.P1716581233389021311

`A110514(A039731(n+3)-2)`
-/

namespace A039732.P1716581233389021311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A039731 (n + 3) - 2).toNat

end

end A039732.P1716581233389021311

namespace A039732

/-- `A110514(A039731(n+3)-2)` -/
def P1716581233389021311.Spec : Prop :=
  ∀ n, P1716581233389021311.a n = A039732 (n + 1)

end A039732

/-! ## A039732.P12336384224680609809

`A004525(A039731(n+3)+char[1])`
-/

namespace A039732.P12336384224680609809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A039731 (n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A039732.P12336384224680609809

namespace A039732

/-- `A004525(A039731(n+3)+char[1])` -/
def P12336384224680609809.Spec : Prop :=
  ∀ n, P12336384224680609809.a n = A039732 (n + 1)

end A039732

/-!
# A039733: a(n)=k such that prime(k) is the prime q<prime(n) for which (prime(n) mod q) is maximal.

The programs for A039733, the canonical program `A039733.P7472038918648065283` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039733 has offset 2).

The definition of A039733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039733.P7472038918648065283

`∑[A217564(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A039733

/-- `∑[A217564(n+1)]+1` -/
def P7472038918648065283.Spec : Prop :=
  ∀ n, P7472038918648065283.a n = A039733 (n + 2)

theorem P7472038918648065283.correct : P7472038918648065283.Spec := by
  intro n
  simp only [A039733, Nat.add_sub_cancel]

end A039733

/-! ## A039733.P18123821482786240518

`A000720(A039734(n+2))`
-/

namespace A039733.P18123821482786240518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A039734 (n + 2)).toNat

end

end A039733.P18123821482786240518

namespace A039733

/-- `A000720(A039734(n+2))` -/
def P18123821482786240518.Spec : Prop :=
  ∀ n, P18123821482786240518.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P585505239104478563

`A000720(A005097(n+1))+1`
-/

namespace A039733.P585505239104478563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005097 (n + 1)).toNat + 1

end

end A039733.P585505239104478563

namespace A039733

/-- `A000720(A005097(n+1))+1` -/
def P585505239104478563.Spec : Prop :=
  ∀ n, P585505239104478563.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P18187854267267935452

`A000720(A067076(n+1)+1)+1`
-/

namespace A039733.P18187854267267935452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067076 (n + 1) + 1).toNat + 1

end

end A039733.P18187854267267935452

namespace A039733

/-- `A000720(A067076(n+1)+1)+1` -/
def P18187854267267935452.Spec : Prop :=
  ∀ n, P18187854267267935452.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P18424223016343845321

`A000720(A006254(n+1)-1)+1`
-/

namespace A039733.P18424223016343845321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006254 (n + 1) - 1).toNat + 1

end

end A039733.P18424223016343845321

namespace A039733

/-- `A000720(A006254(n+1)-1)+1` -/
def P18424223016343845321.Spec : Prop :=
  ∀ n, P18424223016343845321.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P6097390824401251556

`A298861(n+2)-(n+1)`
-/

namespace A039733.P6097390824401251556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298861 (n + 2) - (n + 1 : ℤ)

end

end A039733.P6097390824401251556

namespace A039733

/-- `A298861(n+2)-(n+1)` -/
def P6097390824401251556.Spec : Prop :=
  ∀ n, P6097390824401251556.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P11698124492340848179

`2-A107347(n+2)+n`
-/

namespace A039733.P11698124492340848179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A107347 (n + 2) + (n : ℤ)

end

end A039733.P11698124492340848179

namespace A039733

/-- `2-A107347(n+2)+n` -/
def P11698124492340848179.Spec : Prop :=
  ∀ n, P11698124492340848179.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P944264653993899261

`A000720(A079953(n+2))`
-/

namespace A039733.P944264653993899261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079953 (n + 2)).toNat

end

end A039733.P944264653993899261

namespace A039733

/-- `A000720(A079953(n+2))` -/
def P944264653993899261.Spec : Prop :=
  ∀ n, P944264653993899261.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P16870776321137890617

`A000720(A102781(n+2))+1`
-/

namespace A039733.P16870776321137890617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A102781 (n + 2)).toNat + 1

end

end A039733.P16870776321137890617

namespace A039733

/-- `A000720(A102781(n+2))+1` -/
def P16870776321137890617.Spec : Prop :=
  ∀ n, P16870776321137890617.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P15712879546425810470

`A000720(A130290(n+2))+1`
-/

namespace A039733.P15712879546425810470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A130290 (n + 2)).toNat + 1

end

end A039733.P15712879546425810470

namespace A039733

/-- `A000720(A130290(n+2))+1` -/
def P15712879546425810470.Spec : Prop :=
  ∀ n, P15712879546425810470.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P3221787562291334408

`A014692(n+2)-A369610(n+2)`
-/

namespace A039733.P3221787562291334408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 2) - A369610 (n + 2)

end

end A039733.P3221787562291334408

namespace A039733

/-- `A014692(n+2)-A369610(n+2)` -/
def P3221787562291334408.Spec : Prop :=
  ∀ n, P3221787562291334408.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P14784357844581328874

`A036234(A005097(n+1))`
-/

namespace A039733.P14784357844581328874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A005097 (n + 1)).toNat

end

end A039733.P14784357844581328874

namespace A039733

/-- `A036234(A005097(n+1))` -/
def P14784357844581328874.Spec : Prop :=
  ∀ n, P14784357844581328874.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P15822967694226881450

`A036234(A102781(n+2))`
-/

namespace A039733.P15822967694226881450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A102781 (n + 2)).toNat

end

end A039733.P15822967694226881450

namespace A039733

/-- `A036234(A102781(n+2))` -/
def P15822967694226881450.Spec : Prop :=
  ∀ n, P15822967694226881450.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P542099546189081308

`A036234(A130290(n+2))`
-/

namespace A039733.P542099546189081308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A130290 (n + 2)).toNat

end

end A039733.P542099546189081308

namespace A039733

/-- `A036234(A130290(n+2))` -/
def P542099546189081308.Spec : Prop :=
  ∀ n, P542099546189081308.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P13282301123784009282

`A036234(A006093(n+2)/2)`
-/

namespace A039733.P13282301123784009282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A039733.P13282301123784009282

namespace A039733

/-- `A036234(A006093(n+2)/2)` -/
def P13282301123784009282.Spec : Prop :=
  ∀ n, P13282301123784009282.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P2245153213418514377

`A036234(floor(A000040(n+2)/2))`
-/

namespace A039733.P2245153213418514377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ⌊(A000040 (n + 2) : ℚ) / 2⌋.toNat

end

end A039733.P2245153213418514377

namespace A039733

/-- `A036234(floor(A000040(n+2)/2))` -/
def P2245153213418514377.Spec : Prop :=
  ∀ n, P2245153213418514377.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P8351035159913318550

`A036234(eq[1, A001222(2*n+1)])`
-/

namespace A039733.P8351035159913318550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039733.P8351035159913318550

namespace A039733

/-- `A036234(eq[1, A001222(2*n+1)])` -/
def P8351035159913318550.Spec : Prop :=
  ∀ n, P8351035159913318550.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P17403780987486922214

`A036234(eq[1, A054024(2*n+1)])`
-/

namespace A039733.P17403780987486922214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039733.P17403780987486922214

namespace A039733

/-- `A036234(eq[1, A054024(2*n+1)])` -/
def P17403780987486922214.Spec : Prop :=
  ∀ n, P17403780987486922214.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P6178444904787641427

`A036234(eq[2, A000005(2*n+1)])`
-/

namespace A039733.P6178444904787641427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039733.P6178444904787641427

namespace A039733

/-- `A036234(eq[2, A000005(2*n+1)])` -/
def P6178444904787641427.Spec : Prop :=
  ∀ n, P6178444904787641427.a n = A039733 (n + 2)

end A039733

/-! ## A039733.P13669926427512564999

`A036234(record[A000010(2*n+1)-n])`
-/

namespace A039733.P13669926427512564999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039733.P13669926427512564999

namespace A039733

/-- `A036234(record[A000010(2*n+1)-n])` -/
def P13669926427512564999.Spec : Prop :=
  ∀ n, P13669926427512564999.a n = A039733 (n + 2)

end A039733

/-!
# A039734: a(n)=the prime q<prime(n) for which (prime(n) mod q) is maximal.

The programs for A039734, the canonical program `A039734.P6650041505053879589` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039734 has offset 2).

The definition of A039734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039734.P4610202696470931323

`A151800(A005097(n+1))`
-/

namespace A039734.P4610202696470931323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A005097 (n + 1)).toNat

end

end A039734.P4610202696470931323

namespace A039734

/-- `A151800(A005097(n+1))` -/
def P4610202696470931323.Spec : Prop :=
  ∀ n, P4610202696470931323.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P6650041505053879589

`A000040(A039733(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039734

/-- `A000040(A039733(n+2))` -/
def P6650041505053879589.Spec : Prop :=
  ∀ n, P6650041505053879589.a n = A039734 (n + 2)

theorem P6650041505053879589.correct : P6650041505053879589.Spec := by
  intro n
  simp only [A039734, Nat.add_sub_cancel]

end A039734

/-! ## A039734.P6051948751466260271

`A151800(A067076(n+1)+1)`
-/

namespace A039734.P6051948751466260271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A067076 (n + 1) + 1).toNat

end

end A039734.P6051948751466260271

namespace A039734

/-- `A151800(A067076(n+1)+1)` -/
def P6051948751466260271.Spec : Prop :=
  ∀ n, P6051948751466260271.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P17454753074147549239

`A008578(A039733(n+2)+1)`
-/

namespace A039734.P17454753074147549239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A039733 (n + 2) + 1).toNat

end

end A039734.P17454753074147549239

namespace A039734

/-- `A008578(A039733(n+2)+1)` -/
def P17454753074147549239.Spec : Prop :=
  ∀ n, P17454753074147549239.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P578376548964979831

`A151800(A006254(n+1)-1)`
-/

namespace A039734.P578376548964979831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006254 (n + 1) - 1).toNat

end

end A039734.P578376548964979831

namespace A039734

/-- `A151800(A006254(n+1)-1)` -/
def P578376548964979831.Spec : Prop :=
  ∀ n, P578376548964979831.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P6274116790085855849

`A000040(∑[A217564(n+1)]+1)`
-/

namespace A039734.P6274116790085855849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A039734.P6274116790085855849

namespace A039734

/-- `A000040(∑[A217564(n+1)]+1)` -/
def P6274116790085855849.Spec : Prop :=
  ∀ n, P6274116790085855849.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P11128372060520243472

`A039739(n+2)+A039731(n+2)`
-/

namespace A039734.P11128372060520243472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039739 (n + 2) + A039731 (n + 2)

end

end A039734.P11128372060520243472

namespace A039734

/-- `A039739(n+2)+A039731(n+2)` -/
def P11128372060520243472.Spec : Prop :=
  ∀ n, P11128372060520243472.a n = A039734 (n + 2)

theorem P11128372060520243472.correct : P11128372060520243472.Spec := by
  intro n
  simp only [A039734, Nat.add_sub_cancel, A039734.P11128372060520243472.a, A039734.P6650041505053879589.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039731, A039731.P13748971199648184030.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A039739, A039739.P9876725710224219756.a, A065091, A065091.P6971844946592549357.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, A055679, A055679.P10795285082955514772.f2, A055679.P10795285082955514772.f1, A055679.P10795285082955514772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039734

/-! ## A039734.P8448065845548279411

`A065091(n+1)-A039731(n+2)`
-/

namespace A039734.P8448065845548279411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A039731 (n + 2)

end

end A039734.P8448065845548279411

namespace A039734

/-- `A065091(n+1)-A039731(n+2)` -/
def P8448065845548279411.Spec : Prop :=
  ∀ n, P8448065845548279411.a n = A039734 (n + 2)

theorem P8448065845548279411.correct : P8448065845548279411.Spec := by
  intro n
  simp only [A039734, Nat.add_sub_cancel, A039734.P8448065845548279411.a, A039734.P6650041505053879589.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039731, A039731.P13748971199648184030.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A065091, A065091.P6971844946592549357.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, A055679, A055679.P10795285082955514772.f2, A055679.P10795285082955514772.f1, A055679.P10795285082955514772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039734

/-! ## A039734.P9479104549153023310

`A079953(n+2)`
-/

namespace A039734.P9479104549153023310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079953 (n + 2)

end

end A039734.P9479104549153023310

namespace A039734

/-- `A079953(n+2)` -/
def P9479104549153023310.Spec : Prop :=
  ∀ n, P9479104549153023310.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P788738308046237525

`A151800(A102781(n+2))`
-/

namespace A039734.P788738308046237525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A102781 (n + 2)).toNat

end

end A039734.P788738308046237525

namespace A039734

/-- `A151800(A102781(n+2))` -/
def P788738308046237525.Spec : Prop :=
  ∀ n, P788738308046237525.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P13425846647989927568

`A151800(A130290(n+2))`
-/

namespace A039734.P13425846647989927568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A130290 (n + 2)).toNat

end

end A039734.P13425846647989927568

namespace A039734

/-- `A151800(A130290(n+2))` -/
def P13425846647989927568.Spec : Prop :=
  ∀ n, P13425846647989927568.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P5705330608227637341

`A151800(A006093(n+2)/2)`
-/

namespace A039734.P5705330608227637341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A039734.P5705330608227637341

namespace A039734

/-- `A151800(A006093(n+2)/2)` -/
def P5705330608227637341.Spec : Prop :=
  ∀ n, P5705330608227637341.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P4188321314096641867

`A000040(A298861(n+2)-(n+1))`
-/

namespace A039734.P4188321314096641867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298861 (n + 2) - (n + 1 : ℤ)).toNat

end

end A039734.P4188321314096641867

namespace A039734

/-- `A000040(A298861(n+2)-(n+1))` -/
def P4188321314096641867.Spec : Prop :=
  ∀ n, P4188321314096641867.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P9940883517341691950

`A000040(n+2)-A039731(n+2)`
-/

namespace A039734.P9940883517341691950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A039731 (n + 2)

end

end A039734.P9940883517341691950

namespace A039734

/-- `A000040(n+2)-A039731(n+2)` -/
def P9940883517341691950.Spec : Prop :=
  ∀ n, P9940883517341691950.a n = A039734 (n + 2)

theorem P9940883517341691950.correct : P9940883517341691950.Spec := by
  intro n
  simp only [A039734, Nat.add_sub_cancel, A039734.P9940883517341691950.a, A039734.P6650041505053879589.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039731, A039731.P13748971199648184030.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A065091, A065091.P6971844946592549357.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, A055679, A055679.P10795285082955514772.f2, A055679.P10795285082955514772.f1, A055679.P10795285082955514772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039734

/-! ## A039734.P7038270905097886931

`A000040(n+2-A107347(n+2))`
-/

namespace A039734.P7038270905097886931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 2 : ℤ) - A107347 (n + 2)).toNat

end

end A039734.P7038270905097886931

namespace A039734

/-- `A000040(n+2-A107347(n+2))` -/
def P7038270905097886931.Spec : Prop :=
  ∀ n, P7038270905097886931.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P8977146923168466331

`A001751(A298861(A298861(n+2)-(n+1)))`
-/

namespace A039734.P8977146923168466331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A298861 (A298861 (n + 2) - (n + 1 : ℤ)).toNat).toNat

end

end A039734.P8977146923168466331

namespace A039734

/-- `A001751(A298861(A298861(n+2)-(n+1)))` -/
def P8977146923168466331.Spec : Prop :=
  ∀ n, P8977146923168466331.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P7063871546226750829

`A283312(A338361(n+2-A107347(n+2)))`
-/

namespace A039734.P7063871546226750829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (A338361 ((n + 2 : ℤ) - A107347 (n + 2)).toNat).toNat

end

end A039734.P7063871546226750829

namespace A039734

/-- `A283312(A338361(n+2-A107347(n+2)))` -/
def P7063871546226750829.Spec : Prop :=
  ∀ n, P7063871546226750829.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P8478913991663435057

`A280864(A280742(n+2-A107347(n+2)))`
-/

namespace A039734.P8478913991663435057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280742 ((n + 2 : ℤ) - A107347 (n + 2)).toNat).toNat

end

end A039734.P8478913991663435057

namespace A039734

/-- `A280864(A280742(n+2-A107347(n+2)))` -/
def P8478913991663435057.Spec : Prop :=
  ∀ n, P8478913991663435057.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P13314396950080162695

`A151800(eq[1, A001222(2*n+1)])`
-/

namespace A039734.P13314396950080162695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039734.P13314396950080162695

namespace A039734

/-- `A151800(eq[1, A001222(2*n+1)])` -/
def P13314396950080162695.Spec : Prop :=
  ∀ n, P13314396950080162695.a n = A039734 (n + 2)

end A039734

/-! ## A039734.P17740686221060013723

`A151800(eq[1, A010051(2*n+1)])`
-/

namespace A039734.P17740686221060013723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039734.P17740686221060013723

namespace A039734

/-- `A151800(eq[1, A010051(2*n+1)])` -/
def P17740686221060013723.Spec : Prop :=
  ∀ n, P17740686221060013723.a n = A039734 (n + 2)

end A039734

/-!
# A039735: Triangle read by rows: T(n,k) = number of nonisomorphic unlabeled planar graphs with n >= 1 nodes and 0 <= k <= 3n-6 edges.

The programs for A039735, there is no canonical definition to state claims against.
-/

/-! ## A039735.P17049861574490912327

`A008406(A348553(n))*A009001(A013611(n))`
-/

namespace A039735.P17049861574490912327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (A348553 n).toNat * A009001 (A013611 n).toNat

end

end A039735.P17049861574490912327

/-! ## A039735.P11882815525282581251

`A000265(A034583(n))*A008406(A348553(n))`
-/

namespace A039735.P11882815525282581251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034583 n).toNat * A008406 (A348553 n).toNat

end

end A039735.P11882815525282581251

/-! ## A039735.P11433527864844093213

`A008406(∑[A358194(3*n+1)!])`
-/

namespace A039735.P11433527864844093213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A358194 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039735.P11433527864844093213

/-! ## A039735.P2855082065648429150

`A008406(lt[A370073(n+1), A139250(n)])`
-/

namespace A039735.P2855082065648429150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A039735.P2855082065648429150

/-! ## A039735.P122002984343571932

`A008406(lt[A370073(n+1), A382193(n+1)])`
-/

namespace A039735.P122002984343571932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A039735.P122002984343571932

/-!
# A039736: a(n) = number of primes q<p having (p mod q) = 2, where p = n-th prime.

The programs for A039736, the canonical program `A039736.P7194080173085563073` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039736 has offset 1).

The definition of A039736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039736.P13739820758063182787

`∑{e}[2-A000040(n+1), A214949(#)]`
-/

namespace A039736.P13739820758063182787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A214949 (Nat.factorization (f1 n).natAbs p)

end

end A039736.P13739820758063182787

namespace A039736

/-- `∑{e}[2-A000040(n+1), A214949(#)]` -/
def P13739820758063182787.Spec : Prop :=
  ∀ n, P13739820758063182787.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P15507614116773367657

`∑{p}[A040976(n+1), A001222(#)]`
-/

namespace A039736.P15507614116773367657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A039736.P15507614116773367657

namespace A039736

/-- `∑{p}[A040976(n+1), A001222(#)]` -/
def P15507614116773367657.Spec : Prop :=
  ∀ n, P15507614116773367657.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P7194080173085563073

`∑{p}[A040976(n+1), A010051(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039736

/-- `∑{p}[A040976(n+1), A010051(#)]` -/
def P7194080173085563073.Spec : Prop :=
  ∀ n, P7194080173085563073.a n = A039736 (n + 1)

theorem P7194080173085563073.correct : P7194080173085563073.Spec := by
  intro n
  simp only [A039736, Nat.add_sub_cancel]

end A039736

/-! ## A039736.P1636826308708959000

`∑{p}[2-A000040(n+1), A001221(#)]`
-/

namespace A039736.P1636826308708959000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A039736.P1636826308708959000

namespace A039736

/-- `∑{p}[2-A000040(n+1), A001221(#)]` -/
def P1636826308708959000.Spec : Prop :=
  ∀ n, P1636826308708959000.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P5096660919250211654

`∑{p}[2-A000040(n+1), A001222(#)]`
-/

namespace A039736.P5096660919250211654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A039736.P5096660919250211654

namespace A039736

/-- `∑{p}[2-A000040(n+1), A001222(#)]` -/
def P5096660919250211654.Spec : Prop :=
  ∀ n, P5096660919250211654.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P6054174782514134657

`A001221(A175216(n+1)-3)`
-/

namespace A039736.P6054174782514134657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A175216 (n + 1) - 3).toNat

end

end A039736.P6054174782514134657

namespace A039736

/-- `A001221(A175216(n+1)-3)` -/
def P6054174782514134657.Spec : Prop :=
  ∀ n, P6054174782514134657.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P10782038524754617271

`A001221(or(1, A040976(n+1)))`
-/

namespace A039736.P10782038524754617271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A040976 (n + 1))).toNat

end

end A039736.P10782038524754617271

namespace A039736

/-- `A001221(or(1, A040976(n+1)))` -/
def P10782038524754617271.Spec : Prop :=
  ∀ n, P10782038524754617271.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P17984086134889507889

`A001222(∏{p}[A040976(n+1), #])`
-/

namespace A039736.P17984086134889507889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A039736.P17984086134889507889

namespace A039736

/-- `A001222(∏{p}[A040976(n+1), #])` -/
def P17984086134889507889.Spec : Prop :=
  ∀ n, P17984086134889507889.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P13203104797961299683

`A001221(2*A130290(n+1)-1)`
-/

namespace A039736.P13203104797961299683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A130290 (n + 1) - 1).toNat

end

end A039736.P13203104797961299683

namespace A039736

/-- `A001221(2*A130290(n+1)-1)` -/
def P13203104797961299683.Spec : Prop :=
  ∀ n, P13203104797961299683.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P9218609160623705942

`A001221(or(1, A000040(n+1)-2))`
-/

namespace A039736.P9218609160623705942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A000040 (n + 1) - 2)).toNat

end

end A039736.P9218609160623705942

namespace A039736

/-- `A001221(or(1, A000040(n+1)-2))` -/
def P9218609160623705942.Spec : Prop :=
  ∀ n, P9218609160623705942.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P10371661966524266998

`A001221(∏{p}[A086801(n+1)+1, #])`
-/

namespace A039736.P10371661966524266998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A039736.P10371661966524266998

namespace A039736

/-- `A001221(∏{p}[A086801(n+1)+1, #])` -/
def P10371661966524266998.Spec : Prop :=
  ∀ n, P10371661966524266998.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P9681503604648346773

`A001222(∏{p}[A086801(n+1)+1, #])`
-/

namespace A039736.P9681503604648346773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A039736.P9681503604648346773

namespace A039736

/-- `A001222(∏{p}[A086801(n+1)+1, #])` -/
def P9681503604648346773.Spec : Prop :=
  ∀ n, P9681503604648346773.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P11040296187705321463

`A001221(∏{p}[2-A000040(n+1), #])`
-/

namespace A039736.P11040296187705321463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A039736.P11040296187705321463

namespace A039736

/-- `A001221(∏{p}[2-A000040(n+1), #])` -/
def P11040296187705321463.Spec : Prop :=
  ∀ n, P11040296187705321463.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P6279760195275825881

`A001222(∏{p}[2-A000040(n+1), #])`
-/

namespace A039736.P6279760195275825881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A039736.P6279760195275825881

namespace A039736

/-- `A001222(∏{p}[2-A000040(n+1), #])` -/
def P6279760195275825881.Spec : Prop :=
  ∀ n, P6279760195275825881.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P192393620808612719

`A001221(A000040(n+1)+A000007(n)-2)`
-/

namespace A039736.P192393620808612719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) + (A000007 n - 2)).toNat

end

end A039736.P192393620808612719

namespace A039736

/-- `A001221(A000040(n+1)+A000007(n)-2)` -/
def P192393620808612719.Spec : Prop :=
  ∀ n, P192393620808612719.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P9973905637436421909

`A001221(A000040(n+1)-A157532(n+1)+1)`
-/

namespace A039736.P9973905637436421909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) - A157532 (n + 1) + 1).toNat

end

end A039736.P9973905637436421909

namespace A039736

/-- `A001221(A000040(n+1)-A157532(n+1)+1)` -/
def P9973905637436421909.Spec : Prop :=
  ∀ n, P9973905637436421909.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P2635925688403579427

`A001221(A130290(n+1)+A130290(n+1)-1)`
-/

namespace A039736.P2635925688403579427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130290 (n + 1) + (A130290 (n + 1) - 1)).toNat

end

end A039736.P2635925688403579427

namespace A039736

/-- `A001221(A130290(n+1)+A130290(n+1)-1)` -/
def P2635925688403579427.Spec : Prop :=
  ∀ n, P2635925688403579427.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P456590257344764678

`A001221(A040976(n+1)+A035590(a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A039736.P456590257344764678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A001221 (A040976 (n + 1) + A035590 (a (n - 2)).toNat).toNat

end

end A039736.P456590257344764678

namespace A039736

/-- `A001221(A040976(n+1)+A035590(a(n-2)))` -/
def P456590257344764678.Spec : Prop :=
  ∀ n, P456590257344764678.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P158836485866217345

`A001221(A000010(2*A000040(n+1))-1)`
-/

namespace A039736.P158836485866217345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (2 * A000040 (n + 1)).toNat - 1).toNat

end

end A039736.P158836485866217345

namespace A039736

/-- `A001221(A000010(2*A000040(n+1))-1)` -/
def P158836485866217345.Spec : Prop :=
  ∀ n, P158836485866217345.a n = A039736 (n + 1)

end A039736

/-! ## A039736.P15289029829058881667

`A092523(A130290(n+1))`
-/

namespace A039736.P15289029829058881667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (A130290 (n + 1)).toNat

end

end A039736.P15289029829058881667

namespace A039736

/-- `A092523(A130290(n+1))` -/
def P15289029829058881667.Spec : Prop :=
  ∀ n, P15289029829058881667.a n = A039736 (n + 1)

end A039736

/-!
# A039737: a(n)=number of primes q<p having (p mod q)=3, where p=n-th prime.

The programs for A039737, the canonical program `A039737.P11833136952608093` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039737 has offset 1).

The definition of A039737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039737.P11833136952608093

`∑{p}[3-A000040(n+1), #%2]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039737

/-- `∑{p}[3-A000040(n+1), #%2]` -/
def P11833136952608093.Spec : Prop :=
  ∀ n, (P11833136952608093.a n : ℤ) = A039737 (n + 1)

theorem P11833136952608093.correct : P11833136952608093.Spec := by
  intro n
  simp only [A039737, Nat.add_sub_cancel]

end A039737

/-! ## A039737.P16334613777177547487

`A023568(n+1)-A157928(n)`
-/

namespace A039737.P16334613777177547487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023568 (n + 1) - A157928 n

end

end A039737.P16334613777177547487

namespace A039737

/-- `A023568(n+1)-A157928(n)` -/
def P16334613777177547487.Spec : Prop :=
  ∀ n, P16334613777177547487.a n = A039737 (n + 1)

theorem P16334613777177547487.correct : P16334613777177547487.Spec := by
  intro n
  simp only [A039737, Nat.add_sub_cancel, A039737.P16334613777177547487.a, A039737.P11833136952608093.f1, A039737.P11833136952608093.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023568, A023568.P14714875499586096405.a, A157928, A157928.P11639971120062672373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039737

/-! ## A039737.P12709947423242790443

`A023568(n+1)-A057427(A056847(n))`
-/

namespace A039737.P12709947423242790443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023568 (n + 1) - A057427 (A056847 n).toNat

end

end A039737.P12709947423242790443

namespace A039737

/-- `A023568(n+1)-A057427(A056847(n))` -/
def P12709947423242790443.Spec : Prop :=
  ∀ n, P12709947423242790443.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P17294581804551698172

`A023568(n+1)-A057427(n-A057427(n))`
-/

namespace A039737.P17294581804551698172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023568 (n + 1) - A057427 ((n : ℤ) - A057427 n).toNat

end

end A039737.P17294581804551698172

namespace A039737

/-- `A023568(n+1)-A057427(n-A057427(n))` -/
def P17294581804551698172.Spec : Prop :=
  ∀ n, P17294581804551698172.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P4787028168613251480

`A001221(A000040(n+1)-3%(n+1))-1`
-/

namespace A039737.P4787028168613251480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) - ((3 % (n + 1) : ℕ) : ℤ)).toNat - 1

end

end A039737.P4787028168613251480

namespace A039737

/-- `A001221(A000040(n+1)-3%(n+1))-1` -/
def P4787028168613251480.Spec : Prop :=
  ∀ n, P4787028168613251480.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P16838479036719171130

`∑{p}[2-A006093(n+1), A000035(#)]`
-/

namespace A039737.P16838479036719171130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A039737.P16838479036719171130

namespace A039737

/-- `∑{p}[2-A006093(n+1), A000035(#)]` -/
def P16838479036719171130.Spec : Prop :=
  ∀ n, P16838479036719171130.a n = A039737 (n + 1)

theorem P16838479036719171130.correct : P16838479036719171130.Spec := by
  intro n
  simp only [A039737, Nat.add_sub_cancel, A039737.P16838479036719171130.f1, A039737.P16838479036719171130.a, A039737.P11833136952608093.f1, A039737.P11833136952608093.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039737

/-! ## A039737.P2923048623012412465

`∑{p}[2-A006093(n+1), A322811(#)]`
-/

namespace A039737.P2923048623012412465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A322811 p

end

end A039737.P2923048623012412465

namespace A039737

/-- `∑{p}[2-A006093(n+1), A322811(#)]` -/
def P2923048623012412465.Spec : Prop :=
  ∀ n, P2923048623012412465.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P1854691540494913350

`A023568(n+1)+A008683(A138636(n+1))`
-/

namespace A039737.P1854691540494913350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023568 (n + 1) + A008683 (A138636 (n + 1)).toNat

end

end A039737.P1854691540494913350

namespace A039737

/-- `A023568(n+1)+A008683(A138636(n+1))` -/
def P1854691540494913350.Spec : Prop :=
  ∀ n, P1854691540494913350.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P7823662341131390498

`A001221(eq[1, A092953(n+1)])-1`
-/

namespace A039737.P7823662341131390498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A039737.P7823662341131390498

namespace A039737

/-- `A001221(eq[1, A092953(n+1)])-1` -/
def P7823662341131390498.Spec : Prop :=
  ∀ n, P7823662341131390498.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P16863549607209110979

`∑{p}[A004278(A006093(n+1)), A000035(#)]`
-/

namespace A039737.P16863549607209110979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A039737.P16863549607209110979

namespace A039737

/-- `∑{p}[A004278(A006093(n+1)), A000035(#)]` -/
def P16863549607209110979.Spec : Prop :=
  ∀ n, P16863549607209110979.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P16898612748376282780

`∑{p}[A004278(A006093(n+1)), A322811(#)]`
-/

namespace A039737.P16898612748376282780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A322811 p

end

end A039737.P16898612748376282780

namespace A039737

/-- `∑{p}[A004278(A006093(n+1)), A322811(#)]` -/
def P16898612748376282780.Spec : Prop :=
  ∀ n, P16898612748376282780.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P9794032169252189676

`A023568(n+1)-A000035(A019432(n))`
-/

namespace A039737.P9794032169252189676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023568 (n + 1) - A000035 (A019432 n).toNat

end

end A039737.P9794032169252189676

namespace A039737

/-- `A023568(n+1)-A000035(A019432(n))` -/
def P9794032169252189676.Spec : Prop :=
  ∀ n, P9794032169252189676.a n = A039737 (n + 1)

end A039737

/-! ## A039737.P3426250457595755162

`∑{e}[A226040(record[A214962(n+2)]), #]`
-/

namespace A039737.P3426250457595755162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214962 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A039737.P3426250457595755162

namespace A039737

/-- `∑{e}[A226040(record[A214962(n+2)]), #]` -/
def P3426250457595755162.Spec : Prop :=
  ∀ n, (P3426250457595755162.a n : ℤ) = A039737 (n + 1)

end A039737

/-!
# A039738: a(n)=number of primes q<p having (p mod q)=4, where p=n-th prime.

The programs for A039738, the canonical program `A039738.P12802691868891967207` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039738 has offset 1).

The definition of A039738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039738.P6757150103080153211

`∑{p}[4-A000040(n+1), A338732(#)]`
-/

namespace A039738.P6757150103080153211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A338732 p

end

end A039738.P6757150103080153211

namespace A039738

/-- `∑{p}[4-A000040(n+1), A338732(#)]` -/
def P6757150103080153211.Spec : Prop :=
  ∀ n, P6757150103080153211.a n = A039738 (n + 1)

end A039738

/-! ## A039738.P12802691868891967207

`A171157(A001750(n+1)%A008864(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039738

/-- `A171157(A001750(n+1)%A008864(n+1))` -/
def P12802691868891967207.Spec : Prop :=
  ∀ n, P12802691868891967207.a n = A039738 (n + 1)

theorem P12802691868891967207.correct : P12802691868891967207.Spec := by
  intro n
  simp only [A039738, Nat.add_sub_cancel]

end A039738

/-! ## A039738.P14374146053273083148

`A124148(A130321(n))%A054242(n)`
-/

namespace A039738.P14374146053273083148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124148 (A130321 n).toNat) (A054242 n)

end

end A039738.P14374146053273083148

namespace A039738

/-- `A124148(A130321(n))%A054242(n)` -/
def P14374146053273083148.Spec : Prop :=
  ∀ n, P14374146053273083148.a n = A039738 (n + 1)

end A039738

/-! ## A039738.P9130537760136251989

`A008578(n+1)%A325169(A005236(n+1))`
-/

namespace A039738.P9130537760136251989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) (A325169 (A005236 (n + 1)).toNat)

end

end A039738.P9130537760136251989

namespace A039738

/-- `A008578(n+1)%A325169(A005236(n+1))` -/
def P9130537760136251989.Spec : Prop :=
  ∀ n, P9130537760136251989.a n = A039738 (n + 1)

end A039738

/-! ## A039738.P13102266987086750913

`A382420(n+1)%A383459(n+1)`
-/

namespace A039738.P13102266987086750913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382420 (n + 1)) (A383459 (n + 1))

end

end A039738.P13102266987086750913

namespace A039738

/-- `A382420(n+1)%A383459(n+1)` -/
def P13102266987086750913.Spec : Prop :=
  ∀ n, P13102266987086750913.a n = A039738 (n + 1)

end A039738

/-!
# A039739: a(n) = 2*q-prime(n), where q is the prime < prime(n) for which (prime(n) mod q) is maximal.

The programs for A039739, the canonical program `A039739.P9876725710224219756` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039739 has offset 2).

The definition of A039739 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039734, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A039739.P9876725710224219756

`2*A039734(n+2)-A000040(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039739

/-- `2*A039734(n+2)-A000040(n+2)` -/
def P9876725710224219756.Spec : Prop :=
  ∀ n, P9876725710224219756.a n = A039739 (n + 2)

theorem P9876725710224219756.correct : P9876725710224219756.Spec := by
  intro n
  simp only [A039739, Nat.add_sub_cancel]

end A039739

/-! ## A039739.P11879138672939937883

`A039734(n+2)-A039731(n+2)`
-/

namespace A039739.P11879138672939937883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (n + 2) - A039731 (n + 2)

end

end A039739.P11879138672939937883

namespace A039739

/-- `A039734(n+2)-A039731(n+2)` -/
def P11879138672939937883.Spec : Prop :=
  ∀ n, P11879138672939937883.a n = A039739 (n + 2)

theorem P11879138672939937883.correct : P11879138672939937883.Spec := by
  intro n
  simp only [A039739, Nat.add_sub_cancel, A039739.P11879138672939937883.a, A039739.P9876725710224219756.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039731, A039731.P13748971199648184030.a, A039734, A039734.P6650041505053879589.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A065091, A065091.P6971844946592549357.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039739

/-! ## A039739.P6830857110340226127

`2*A039734(n+2)-A065091(n+1)`
-/

namespace A039739.P6830857110340226127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039734 (n + 2) - A065091 (n + 1)

end

end A039739.P6830857110340226127

namespace A039739

/-- `2*A039734(n+2)-A065091(n+1)` -/
def P6830857110340226127.Spec : Prop :=
  ∀ n, P6830857110340226127.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P10165588375827701931

`A065091(n+1)-2*A039731(n+2)`
-/

namespace A039739.P10165588375827701931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 2 * A039731 (n + 2)

end

end A039739.P10165588375827701931

namespace A039739

/-- `A065091(n+1)-2*A039731(n+2)` -/
def P10165588375827701931.Spec : Prop :=
  ∀ n, P10165588375827701931.a n = A039739 (n + 2)

theorem P10165588375827701931.correct : P10165588375827701931.Spec := by
  intro n
  simp only [A039739, Nat.add_sub_cancel, A039739.P10165588375827701931.a, A039739.P9876725710224219756.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039731, A039731.P13748971199648184030.a, A039734, A039734.P6650041505053879589.a, A065091, A065091.P6971844946592549357.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039739

/-! ## A039739.P13673181815524268570

`A000040(A039733(n+2))-A039731(n+2)`
-/

namespace A039739.P13673181815524268570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A039733 (n + 2)).toNat - A039731 (n + 2)

end

end A039739.P13673181815524268570

namespace A039739

/-- `A000040(A039733(n+2))-A039731(n+2)` -/
def P13673181815524268570.Spec : Prop :=
  ∀ n, P13673181815524268570.a n = A039739 (n + 2)

theorem P13673181815524268570.correct : P13673181815524268570.Spec := by
  intro n
  simp only [A039739, Nat.add_sub_cancel, A039739.P13673181815524268570.a, A039739.P9876725710224219756.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039731, A039731.P13748971199648184030.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A039734, A039734.P6650041505053879589.a, A065091, A065091.P6971844946592549357.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, A055679, A055679.P10795285082955514772.f2, A055679.P10795285082955514772.f1, A055679.P10795285082955514772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039739

/-! ## A039739.P12375084828480448124

`2*A000040(A039733(n+2))-A065091(n+1)`
-/

namespace A039739.P12375084828480448124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (A039733 (n + 2)).toNat - A065091 (n + 1)

end

end A039739.P12375084828480448124

namespace A039739

/-- `2*A000040(A039733(n+2))-A065091(n+1)` -/
def P12375084828480448124.Spec : Prop :=
  ∀ n, P12375084828480448124.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P7708450900603332924

`A079953(n+2)-A039731(n+2)`
-/

namespace A039739.P7708450900603332924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079953 (n + 2) - A039731 (n + 2)

end

end A039739.P7708450900603332924

namespace A039739

/-- `A079953(n+2)-A039731(n+2)` -/
def P7708450900603332924.Spec : Prop :=
  ∀ n, P7708450900603332924.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P12269878706196502231

`2*A079953(n+2)-A000040(n+2)`
-/

namespace A039739.P12269878706196502231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079953 (n + 2) - A000040 (n + 2)

end

end A039739.P12269878706196502231

namespace A039739

/-- `2*A079953(n+2)-A000040(n+2)` -/
def P12269878706196502231.Spec : Prop :=
  ∀ n, P12269878706196502231.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P5239615465182028926

`A000040(n+2)-A039731(n+2)-A039731(n+2)`
-/

namespace A039739.P5239615465182028926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A039731 (n + 2) - A039731 (n + 2)

end

end A039739.P5239615465182028926

namespace A039739

/-- `A000040(n+2)-A039731(n+2)-A039731(n+2)` -/
def P5239615465182028926.Spec : Prop :=
  ∀ n, P5239615465182028926.a n = A039739 (n + 2)

theorem P5239615465182028926.correct : P5239615465182028926.Spec := by
  intro n
  simp only [A039739, Nat.add_sub_cancel, A039739.P5239615465182028926.a, A039739.P9876725710224219756.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039731, A039731.P13748971199648184030.a, A039734, A039734.P6650041505053879589.a, A039733, A039733.P7472038918648065283.f1, A039733.P7472038918648065283.a, A065091, A065091.P6971844946592549357.a, A217564, A217564.P832865562934600438.a, A079952, A079952.P4380485692026145180.f1, A079952.P4380485692026145180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039739

/-! ## A039739.P13325022351255628161

`2*A039734(n+2)-p?[A004273(n)]`
-/

namespace A039739.P13325022351255628161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039734 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039739.P13325022351255628161

namespace A039739

/-- `2*A039734(n+2)-p?[A004273(n)]` -/
def P13325022351255628161.Spec : Prop :=
  ∀ n, P13325022351255628161.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P12801209922113906450

`2*A039734(n+2)-p?[A005408(n)]`
-/

namespace A039739.P12801209922113906450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039734 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039739.P12801209922113906450

namespace A039739

/-- `2*A039734(n+2)-p?[A005408(n)]` -/
def P12801209922113906450.Spec : Prop :=
  ∀ n, P12801209922113906450.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P11828702134354789492

`A007918(A006254(n+1))-A039731(n+2)`
-/

namespace A039739.P11828702134354789492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A006254 (n + 1)).toNat - A039731 (n + 2)

end

end A039739.P11828702134354789492

namespace A039739

/-- `A007918(A006254(n+1))-A039731(n+2)` -/
def P11828702134354789492.Spec : Prop :=
  ∀ n, P11828702134354789492.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P7856605885930943272

`2*A039734(n+2)-p?[A022998(n)]`
-/

namespace A039739.P7856605885930943272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039734 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039739.P7856605885930943272

namespace A039739

/-- `2*A039734(n+2)-p?[A022998(n)]` -/
def P7856605885930943272.Spec : Prop :=
  ∀ n, P7856605885930943272.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P12011672205651912452

`A100802(p?[2*n+1])`
-/

namespace A039739.P12011672205651912452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039739.P12011672205651912452

namespace A039739

/-- `A100802(p?[2*n+1])` -/
def P12011672205651912452.Spec : Prop :=
  ∀ n, P12011672205651912452.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P17559784120977612376

`A100802(A065091(n+1))`
-/

namespace A039739.P17559784120977612376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A065091 (n + 1)).toNat

end

end A039739.P17559784120977612376

namespace A039739

/-- `A100802(A065091(n+1))` -/
def P17559784120977612376.Spec : Prop :=
  ∀ n, P17559784120977612376.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P8827332434856697241

`A100802(A000040(n+2))`
-/

namespace A039739.P8827332434856697241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A000040 (n + 2)).toNat

end

end A039739.P8827332434856697241

namespace A039739

/-- `A100802(A000040(n+2))` -/
def P8827332434856697241.Spec : Prop :=
  ∀ n, P8827332434856697241.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P3078906501598039839

`A100802(A006005(n+2))`
-/

namespace A039739.P3078906501598039839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A006005 (n + 2)).toNat

end

end A039739.P3078906501598039839

namespace A039739

/-- `A100802(A006005(n+2))` -/
def P3078906501598039839.Spec : Prop :=
  ∀ n, P3078906501598039839.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P4037112923779498797

`A100802(record[A006530(n+3)])`
-/

namespace A039739.P4037112923779498797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039739.P4037112923779498797

namespace A039739

/-- `A100802(record[A006530(n+3)])` -/
def P4037112923779498797.Spec : Prop :=
  ∀ n, P4037112923779498797.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P16965619132464301320

`A100802(record[A014963(n+3)])`
-/

namespace A039739.P16965619132464301320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039739.P16965619132464301320

namespace A039739

/-- `A100802(record[A014963(n+3)])` -/
def P16965619132464301320.Spec : Prop :=
  ∀ n, P16965619132464301320.a n = A039739 (n + 2)

end A039739

/-! ## A039739.P5027424412359191401

`A100802(record[A020639(n+3)])`
-/

namespace A039739.P5027424412359191401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039739.P5027424412359191401

namespace A039739

/-- `A100802(record[A020639(n+3)])` -/
def P5027424412359191401.Spec : Prop :=
  ∀ n, P5027424412359191401.a n = A039739 (n + 2)

end A039739

/-!
# A039740: Lattice animals in the cubic diamond lattice (4 nearest neighbors), even-vertex-connected cubes.

The programs for A039740, there is no canonical definition to state claims against.
-/

/-! ## A039740.P3441888541683350172

`A008616(6*A124464(n))`
-/

namespace A039740.P3441888541683350172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (6 * A124464 n).toNat

end

end A039740.P3441888541683350172

/-!
# A039741: Number of fixed n-celled lattice animals in the b.c.c. lattice (8 nearest neighbors), or connected truncated octahedra, or vertex-connected cubes.

The programs for A039741, there is no canonical definition to state claims against.
-/

/-! ## A039741.P1976052720296686051

`floor(A051518(9^n+1)/9)`
-/

namespace A039741.P1976052720296686051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051518 (9 ^ n + 1) : ℚ) / 9⌋

end

end A039741.P1976052720296686051

/-!
# A039742: Number of fixed n-celled lattice animals in the f.c.c. lattice (12 nearest neighbors), or connected rhombic dodecahedra, or edge-connected cubes.

The programs for A039742, there is no canonical definition to state claims against.
-/

/-! ## A039742.P15020184040808349048

`xor(A000720(A265278(3*n+1)), A355638(n+6))`
-/

namespace A039742.P15020184040808349048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000720 (A265278 (3 * n + 1)).toNat) (A355638 (n + 6))

end

end A039742.P15020184040808349048

/-!
# A039743: Number k such that gcd(phi(k), k-1) = number of distinct prime factors of k.

The programs for A039743, the canonical program `A039743.P5829878164581489431` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039743 has offset 1).

The definition of A039743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039743.P5829878164581489431

`eq[gcd(n, A000010(n+1)), A001221(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039743

/-- `eq[gcd(n, A000010(n+1)), A001221(n+1)]+1` -/
def P5829878164581489431.Spec : Prop :=
  ∀ n, (P5829878164581489431.a n : ℤ) = A039743 (n + 1)

theorem P5829878164581489431.correct : P5829878164581489431.Spec := by
  intro n
  simp only [A039743, Nat.add_sub_cancel]

end A039743

/-! ## A039743.P2240512482289538056

`eq[A001221(n+1), A049559(n+1)]+1`
-/

namespace A039743.P2240512482289538056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039743.P2240512482289538056

namespace A039743

/-- `eq[A001221(n+1), A049559(n+1)]+1` -/
def P2240512482289538056.Spec : Prop :=
  ∀ n, (P2240512482289538056.a n : ℤ) = A039743 (n + 1)

end A039743

/-! ## A039743.P17542236496912106789

`A020725(eq[A001221(n+1), A049559(n+1)])`
-/

namespace A039743.P17542236496912106789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039743.P17542236496912106789

namespace A039743

/-- `A020725(eq[A001221(n+1), A049559(n+1)])` -/
def P17542236496912106789.Spec : Prop :=
  ∀ n, P17542236496912106789.a n = A039743 (n + 1)

end A039743

/-! ## A039743.P2041096319577730483

`eq[A001222(A007947(n+1)), A049559(n+1)]+1`
-/

namespace A039743.P2041096319577730483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039743.P2041096319577730483

namespace A039743

/-- `eq[A001222(A007947(n+1)), A049559(n+1)]+1` -/
def P2041096319577730483.Spec : Prop :=
  ∀ n, (P2041096319577730483.a n : ℤ) = A039743 (n + 1)

end A039743

/-! ## A039743.P4565168068092252288

`eq[A001222(A328915(n+1)), A049559(n+1)]+1`
-/

namespace A039743.P4565168068092252288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328915 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039743.P4565168068092252288

namespace A039743

/-- `eq[A001222(A328915(n+1)), A049559(n+1)]+1` -/
def P4565168068092252288.Spec : Prop :=
  ∀ n, (P4565168068092252288.a n : ℤ) = A039743 (n + 1)

end A039743

/-!
# A039744: Number of ways n*(n-1) can be partitioned into the sum of 2*(n-1) integers in the range 0..n.

The programs for A039744, there is no canonical definition to state claims against.
-/

/-! ## A039744.P8847571187677159305

`A188211(A028310(∑[n]))`
-/

namespace A039744.P8847571187677159305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039744.P8847571187677159305

/-! ## A039744.P572227675508467519

`A188211(A179865(n+1))`
-/

namespace A039744.P572227675508467519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A179865 (n + 1)).toNat

end

end A039744.P572227675508467519

/-! ## A039744.P3065589649454108642

`A188211(A212342(n)+1)`
-/

namespace A039744.P3065589649454108642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A212342 n + 1).toNat

end

end A039744.P3065589649454108642

/-! ## A039744.P17147645462261507183

`A188211(A049323(∑[n]+1))`
-/

namespace A039744.P17147645462261507183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A049323 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A039744.P17147645462261507183

/-! ## A039744.P6857497595097905679

`A188211(A027379(n)-2*n)`
-/

namespace A039744.P6857497595097905679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A027379 n - (2 * n : ℤ)).toNat

end

end A039744.P6857497595097905679

/-!
# A039745: Diameter of symmetric group S_n when generated by (1,2) and (1,2,3,...,n).

The programs for A039745, there is no canonical definition to state claims against.
-/

/-! ## A039745.P4469216024962129181

`floor(log(A001655(ceil(n²/2))))`
-/

namespace A039745.P4469216024962129181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A001655 ⌈(n ^ 2 : ℚ) / 2⌉.toNat : ℝ)⌋

end

end A039745.P4469216024962129181

/-! ## A039745.P15724337420202790503

`A292640(∑[xor(1, n)])-xor(1, n)`
-/

namespace A039745.P15724337420202790503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292640 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.xor 1 n : ℤ)

end

end A039745.P15724337420202790503

/-! ## A039745.P890650692720272685

`∑[A186513(n+1)-gcd(2, ∏{p}[n, #])]`
-/

namespace A039745.P890650692720272685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186513 (n + 1) - (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039745.P890650692720272685

/-! ## A039745.P474455709813166775

`A122250(n)-A373141(n+1)`
-/

namespace A039745.P474455709813166775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122250 n - A373141 (n + 1)

end

end A039745.P474455709813166775

/-! ## A039745.P14230622607589699003

`∑[A065033(3*n)-A001221(3*n+4)]`
-/

namespace A039745.P14230622607589699003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * n) - A001221 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039745.P14230622607589699003

/-!
# A039751: Number of n-node graphs containing a 4-cycle.

The programs for A039751, there is no canonical definition to state claims against.
-/

/-! ## A039751.P4013468005112292621

`A000088(n)-A006786(A028310(n))`
-/

namespace A039751.P4013468005112292621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A006786 (A028310 n).toNat

end

end A039751.P4013468005112292621

/-! ## A039751.P10660701309391149721

`∑[A002494(n)]-A006786(A028310(n))`
-/

namespace A039751.P10660701309391149721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006786 (A028310 n).toNat

end

end A039751.P10660701309391149721

/-! ## A039751.P15716927032229295722

`A361404(∑[n])-A006786(A028310(n))`
-/

namespace A039751.P15716927032229295722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j) - A006786 (A028310 n).toNat

end

end A039751.P15716927032229295722

/-! ## A039751.P8866638341365731415

`A000719(n)+A001349(n)-A006786(A028310(n))`
-/

namespace A039751.P8866638341365731415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n + (A001349 n - A006786 (A028310 n).toNat)

end

end A039751.P8866638341365731415

/-! ## A039751.P12299166723533894699

`A157015(n)+A157016(n)-A006786(A028310(n))`
-/

namespace A039751.P12299166723533894699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157015 n + (A157016 n - A006786 (A028310 n).toNat)

end

end A039751.P12299166723533894699

/-!
# A039752: Ruth-Aaron numbers (2): sum of prime divisors of n = sum of prime divisors of n+1 (both taken with multiplicity).

The programs for A039752, there is no canonical definition to state claims against.
-/

/-! ## A039752.P1619231299103956137

`A129316(eq[1, A129320(n+1)]+1)`
-/

namespace A039752.P1619231299103956137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039752.P1619231299103956137

/-! ## A039752.P15678093975020056710

`A129316(record[(n+1)/A129320(n+1)])`
-/

namespace A039752.P15678093975020056710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A129320 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129316 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A039752.P15678093975020056710

/-! ## A039752.P71839763464439800

`record[root(A129316(n+1), A129320(n+1))]`
-/

namespace A039752.P71839763464439800
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129316 (n + 1) : ℝ) ^ (1 / (A129320 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039752.P71839763464439800

/-! ## A039752.P9685414377755348259

`record[root(A129317(n+1)-1, A129320(n+1))]`
-/

namespace A039752.P9685414377755348259
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129317 (n + 1) - 1 : ℝ) ^ (1 / (A129320 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039752.P9685414377755348259

/-! ## A039752.P3874437652271486823

`A129316(eq[A129318(n+1), A129319(n+1)]+1)`
-/

namespace A039752.P3874437652271486823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129316 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A039752.P3874437652271486823

/-!
# A039753: Numbers common to A006145 and A039752.

The programs for A039753, there is no canonical definition to state claims against.
-/

/-! ## A039753.P6050568404018800047

`∩[A006145(n+1), A039752(n+1)]`
-/

namespace A039753.P6050568404018800047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039753.P6050568404018800047

/-! ## A039753.P10874732002671300769

`∩[A006145(n+1), A129316(n+1)]`
-/

namespace A039753.P10874732002671300769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039753.P10874732002671300769

/-! ## A039753.P17974766585687529096

`∩[A006145(n+1), A129317(n+1)-1]`
-/

namespace A039753.P17974766585687529096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129317 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039753.P17974766585687529096

/-! ## A039753.P8821414080075493156

`∩[A006145(n+1), A134824(n+2)+A129317(n+1)]`
-/

namespace A039753.P8821414080075493156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A129317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039753.P8821414080075493156

/-!
# A039755: Triangle of B-analogs of Stirling numbers of the second kind.

The programs for A039755, the canonical program `A039755.P16581922840097524061` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039755 has offset 0).

The definition of A039755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039755.P16581922840097524061

`T(n-1,k-1)+(2*col(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039755

/-- `T(n-1,k-1)+(2*col(n)+1)*T(n-1,k)` -/
def P16581922840097524061.Spec : Prop :=
  ∀ n, (P16581922840097524061.a n : ℤ) = A039755 n

theorem P16581922840097524061.correct : P16581922840097524061.Spec := by
  intro n
  simp only [A039755]

end A039755

/-! ## A039755.P11998552131090834722

`A039756(A061579(n))`
-/

namespace A039755.P11998552131090834722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A061579 n).toNat

end

end A039755.P11998552131090834722

namespace A039755

/-- `A039756(A061579(n))` -/
def P11998552131090834722.Spec : Prop :=
  ∀ n, P11998552131090834722.a n = A039755 n

end A039755

/-! ## A039755.P12624531769860568422

`A039756(A038722(n+1)-1)`
-/

namespace A039755.P12624531769860568422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A038722 (n + 1) - 1).toNat

end

end A039755.P12624531769860568422

namespace A039755

/-- `A039756(A038722(n+1)-1)` -/
def P12624531769860568422.Spec : Prop :=
  ∀ n, P12624531769860568422.a n = A039755 n

end A039755

/-! ## A039755.P13357382869020144657

`A039756(A057944(n)+A025581(n))`
-/

namespace A039755.P13357382869020144657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A057944 n + A025581 n).toNat

end

end A039755.P13357382869020144657

namespace A039755

/-- `A039756(A057944(n)+A025581(n))` -/
def P13357382869020144657.Spec : Prop :=
  ∀ n, P13357382869020144657.a n = A039755 n

end A039755

/-! ## A039755.P13491561520519199753

`A039756(A038722(n+2))`
-/

namespace A039755.P13491561520519199753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A038722 (n + 2)).toNat

end

end A039755.P13491561520519199753

namespace A039755

/-- `A039756(A038722(n+2))` -/
def P13491561520519199753.Spec : Prop :=
  ∀ n, P13491561520519199753.a n = A039755 n

end A039755

/-! ## A039755.P6967099474860162327

`A039756(A008867(n+3)+n+1-A008867(n+2))`
-/

namespace A039755.P6967099474860162327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A008867 (n + 3) + ((n + 1 : ℤ) - A008867 (n + 2))).toNat

end

end A039755.P6967099474860162327

namespace A039755

/-- `A039756(A008867(n+3)+n+1-A008867(n+2))` -/
def P6967099474860162327.Spec : Prop :=
  ∀ n, P6967099474860162327.a n = A039755 n

end A039755

/-! ## A039755.P12722744168840883854

`A154537(n)/A059268(n)`
-/

namespace A039755.P12722744168840883854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154537 n : ℚ) / (A059268 n : ℚ)

end

end A039755.P12722744168840883854

namespace A039755

/-- `A154537(n)/A059268(n)` -/
def P12722744168840883854.Spec : Prop :=
  ∀ n, P12722744168840883854.a n = (A039755 n : ℚ)

end A039755

/-! ## A039755.P11791944965347501870

`A225476(n)/A233543(n)`
-/

namespace A039755.P11791944965347501870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225476 n : ℚ) / (A233543 n : ℚ)

end

end A039755.P11791944965347501870

namespace A039755

/-- `A225476(n)/A233543(n)` -/
def P11791944965347501870.Spec : Prop :=
  ∀ n, P11791944965347501870.a n = (A039755 n : ℚ)

end A039755

/-! ## A039755.P11356530981553446446

`gcd(A154537(n), A186695(n+1))`
-/

namespace A039755.P11356530981553446446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154537 n) (A186695 (n + 1))

end

end A039755.P11356530981553446446

namespace A039755

/-- `gcd(A154537(n), A186695(n+1))` -/
def P11356530981553446446.Spec : Prop :=
  ∀ n, (P11356530981553446446.a n : ℤ) = A039755 n

end A039755

/-! ## A039755.P2935486820876938382

`A075497(n+1)/A187075(n+1)*A186695(n+1)`
-/

namespace A039755.P2935486820876938382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A187075 (n + 1) : ℚ) * (A186695 (n + 1) : ℚ)

end

end A039755.P2935486820876938382

namespace A039755

/-- `A075497(n+1)/A187075(n+1)*A186695(n+1)` -/
def P2935486820876938382.Spec : Prop :=
  ∀ n, P2935486820876938382.a n = (A039755 n : ℚ)

end A039755

/-!
# A039756: Triangle of B-analogs of Stirling numbers of 2nd kind.

The programs for A039756, the canonical program `A039756.P14482925758501845169` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039756 has offset 0).

The definition of A039756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039756.P14482925758501845169

`T(n-1,k)+(2*(row(n)-col(n))+1)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039756

/-- `T(n-1,k)+(2*(row(n)-col(n))+1)*T(n-1,k-1)` -/
def P14482925758501845169.Spec : Prop :=
  ∀ n, P14482925758501845169.a n = A039756 n

theorem P14482925758501845169.correct : P14482925758501845169.Spec := by
  intro n
  simp only [A039756]

end A039756

/-! ## A039756.P14268108138008014206

`A039755(A061579(n))`
-/

namespace A039756.P14268108138008014206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A061579 n).toNat

end

end A039756.P14268108138008014206

namespace A039756

/-- `A039755(A061579(n))` -/
def P14268108138008014206.Spec : Prop :=
  ∀ n, P14268108138008014206.a n = A039756 n

end A039756

/-! ## A039756.P6342400565530714282

`A039755(A114327(n)+n)`
-/

namespace A039756.P6342400565530714282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A114327 n + (n : ℤ)).toNat

end

end A039756.P6342400565530714282

namespace A039756

/-- `A039755(A114327(n)+n)` -/
def P6342400565530714282.Spec : Prop :=
  ∀ n, P6342400565530714282.a n = A039756 n

end A039756

/-! ## A039756.P15089171291807863708

`A039755(A038722(n+1)-1)`
-/

namespace A039756.P15089171291807863708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A038722 (n + 1) - 1).toNat

end

end A039756.P15089171291807863708

namespace A039756

/-- `A039755(A038722(n+1)-1)` -/
def P15089171291807863708.Spec : Prop :=
  ∀ n, P15089171291807863708.a n = A039756 n

end A039756

/-! ## A039756.P17596148511251663906

`A039755(A002378(n)%A014132(n+1))`
-/

namespace A039756.P17596148511251663906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A039756.P17596148511251663906

namespace A039756

/-- `A039755(A002378(n)%A014132(n+1))` -/
def P17596148511251663906.Spec : Prop :=
  ∀ n, P17596148511251663906.a n = A039756 n

end A039756

/-! ## A039756.P4538055200869266147

`A039755(A038722(n+2))`
-/

namespace A039756.P4538055200869266147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A038722 (n + 2)).toNat

end

end A039756.P4538055200869266147

namespace A039756

/-- `A039755(A038722(n+2))` -/
def P4538055200869266147.Spec : Prop :=
  ∀ n, P4538055200869266147.a n = A039756 n

end A039756

/-!
# A039757: Triangle of coefficients in expansion of (x-1)*(x-3)*(x-5)*...*(x-(2*n-1)).

The programs for A039757, the canonical program `A039757.P2765024542085717894` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039757 has offset 0).

The definition of A039757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039757.P2765024542085717894

`T(n-1,k-1)-(2*row(n)-1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039757

/-- `T(n-1,k-1)-(2*row(n)-1)*T(n-1,k)` -/
def P2765024542085717894.Spec : Prop :=
  ∀ n, P2765024542085717894.a n = A039757 n

theorem P2765024542085717894.correct : P2765024542085717894.Spec := by
  intro n
  simp only [A039757]

end A039757

/-! ## A039757.P13112519482574185500

`A039758(A061579(n))`
-/

namespace A039757.P13112519482574185500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039758 (A061579 n).toNat

end

end A039757.P13112519482574185500

namespace A039757

/-- `A039758(A061579(n))` -/
def P13112519482574185500.Spec : Prop :=
  ∀ n, P13112519482574185500.a n = A039757 n

end A039757

/-! ## A039757.P1622894761406075607

`A028338(n)*A097807(n)`
-/

namespace A039757.P1622894761406075607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A097807 n

end

end A039757.P1622894761406075607

namespace A039757

/-- `A028338(n)*A097807(n)` -/
def P1622894761406075607.Spec : Prop :=
  ∀ n, P1622894761406075607.a n = A039757 n

end A039757

/-! ## A039757.P17825790418232493130

`A039758(A038722(n+1)-1)`
-/

namespace A039757.P17825790418232493130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039758 (A038722 (n + 1) - 1).toNat

end

end A039757.P17825790418232493130

namespace A039757

/-- `A039758(A038722(n+1)-1)` -/
def P17825790418232493130.Spec : Prop :=
  ∀ n, P17825790418232493130.a n = A039757 n

end A039757

/-! ## A039757.P12486361011068637095

`A028338(n)*A033999(A025581(n))`
-/

namespace A039757.P12486361011068637095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A033999 (A025581 n).toNat

end

end A039757.P12486361011068637095

namespace A039757

/-- `A028338(n)*A033999(A025581(n))` -/
def P12486361011068637095.Spec : Prop :=
  ∀ n, P12486361011068637095.a n = A039757 n

end A039757

/-! ## A039757.P8309582860079042043

`A028338(n)*A033999(A051162(n))`
-/

namespace A039757.P8309582860079042043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A033999 (A051162 n).toNat

end

end A039757.P8309582860079042043

namespace A039757

/-- `A028338(n)*A033999(A051162(n))` -/
def P8309582860079042043.Spec : Prop :=
  ∀ n, P8309582860079042043.a n = A039757 n

end A039757

/-! ## A039757.P6445171903273183728

`A028338(n)*A034947(A099375(n))`
-/

namespace A039757.P6445171903273183728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A034947 (A099375 n).toNat

end

end A039757.P6445171903273183728

namespace A039757

/-- `A028338(n)*A034947(A099375(n))` -/
def P6445171903273183728.Spec : Prop :=
  ∀ n, P6445171903273183728.a n = A039757 n

end A039757

/-! ## A039757.P10525079755258866362

`A028338(n)*A062157(A004736(n+1))`
-/

namespace A039757.P10525079755258866362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A062157 (A004736 (n + 1)).toNat

end

end A039757.P10525079755258866362

namespace A039757

/-- `A028338(n)*A062157(A004736(n+1))` -/
def P10525079755258866362.Spec : Prop :=
  ∀ n, P10525079755258866362.a n = A039757 n

end A039757

/-! ## A039757.P5716862958717689125

`A028338(n)*A033999(A108872(n+1))`
-/

namespace A039757.P5716862958717689125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A033999 (A108872 (n + 1)).toNat

end

end A039757.P5716862958717689125

namespace A039757

/-- `A028338(n)*A033999(A108872(n+1))` -/
def P5716862958717689125.Spec : Prop :=
  ∀ n, P5716862958717689125.a n = A039757 n

end A039757

/-! ## A039757.P601937082472140423

`A028338(A254667(n))/A062157(A004736(n+1))`
-/

namespace A039757.P601937082472140423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028338 (A254667 n).toNat : ℚ) / (A062157 (A004736 (n + 1)).toNat : ℚ)

end

end A039757.P601937082472140423

namespace A039757

/-- `A028338(A254667(n))/A062157(A004736(n+1))` -/
def P601937082472140423.Spec : Prop :=
  ∀ n, P601937082472140423.a n = (A039757 n : ℚ)

end A039757

/-! ## A039757.P14533031945382280791

`A039758(A038722(n+2))`
-/

namespace A039757.P14533031945382280791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039758 (A038722 (n + 2)).toNat

end

end A039757.P14533031945382280791

namespace A039757

/-- `A039758(A038722(n+2))` -/
def P14533031945382280791.Spec : Prop :=
  ∀ n, P14533031945382280791.a n = A039757 n

end A039757

/-! ## A039757.P16093115543642297907

`A008836(A130321(n))*A028338(n)`
-/

namespace A039757.P16093115543642297907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A028338 n

end

end A039757.P16093115543642297907

namespace A039757

/-- `A008836(A130321(n))*A028338(n)` -/
def P16093115543642297907.Spec : Prop :=
  ∀ n, P16093115543642297907.a n = A039757 n

end A039757

/-! ## A039757.P11630064800269973543

`A028338(n)*A034947(A135764(n+1))`
-/

namespace A039757.P11630064800269973543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 n * A034947 (A135764 (n + 1)).toNat

end

end A039757.P11630064800269973543

namespace A039757

/-- `A028338(n)*A034947(A135764(n+1))` -/
def P11630064800269973543.Spec : Prop :=
  ∀ n, P11630064800269973543.a n = A039757 n

end A039757

/-!
# A039758: Triangle of B-analogs of Stirling numbers of first kind.

The programs for A039758, the canonical program `A039758.P11705740882340078740` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039758 has offset 0).

The definition of A039758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1946 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039758.P11705740882340078740

`A033999(A002262(n))*A109692(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039758

/-- `A033999(A002262(n))*A109692(n)` -/
def P11705740882340078740.Spec : Prop :=
  ∀ n, P11705740882340078740.a n = A039758 n

theorem P11705740882340078740.correct : P11705740882340078740.Spec := by
  intro n
  simp only [A039758]

end A039758

/-! ## A039758.P1691825531897707867

`A039757(A002378(n)%A080036(n))`
-/

namespace A039758.P1691825531897707867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A039758.P1691825531897707867

namespace A039758

/-- `A039757(A002378(n)%A080036(n))` -/
def P1691825531897707867.Spec : Prop :=
  ∀ n, P1691825531897707867.a n = A039758 n

end A039758

/-! ## A039758.P14058300738882362469

`A039757(A061579(n))`
-/

namespace A039758.P14058300738882362469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A061579 n).toNat

end

end A039758.P14058300738882362469

namespace A039758

/-- `A039757(A061579(n))` -/
def P14058300738882362469.Spec : Prop :=
  ∀ n, P14058300738882362469.a n = A039758 n

end A039758

/-! ## A039758.P7522169313622097380

`A039757(A114327(n)+n)`
-/

namespace A039758.P7522169313622097380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A114327 n + (n : ℤ)).toNat

end

end A039758.P7522169313622097380

namespace A039758

/-- `A039757(A114327(n)+n)` -/
def P7522169313622097380.Spec : Prop :=
  ∀ n, P7522169313622097380.a n = A039758 n

end A039758

/-! ## A039758.P12537773390733257136

`A039757(∑[A198954(n)-1])`
-/

namespace A039758.P12537773390733257136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039758.P12537773390733257136

namespace A039758

/-- `A039757(∑[A198954(n)-1])` -/
def P12537773390733257136.Spec : Prop :=
  ∀ n, P12537773390733257136.a n = A039758 n

end A039758

/-! ## A039758.P7588825478460848874

`A039757(A038722(n+1)-1)`
-/

namespace A039758.P7588825478460848874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A038722 (n + 1) - 1).toNat

end

end A039758.P7588825478460848874

namespace A039758

/-- `A039757(A038722(n+1)-1)` -/
def P7588825478460848874.Spec : Prop :=
  ∀ n, P7588825478460848874.a n = A039758 n

end A039758

/-! ## A039758.P1659711273788036989

`A039757(A002024(n+1)²-(n+1))`
-/

namespace A039758.P1659711273788036989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A039758.P1659711273788036989

namespace A039758

/-- `A039757(A002024(n+1)²-(n+1))` -/
def P1659711273788036989.Spec : Prop :=
  ∀ n, P1659711273788036989.a n = A039758 n

end A039758

/-! ## A039758.P3464248052898911176

`A039757(A023443(A038722(n+1)))`
-/

namespace A039758.P3464248052898911176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A039758.P3464248052898911176

namespace A039758

/-- `A039757(A023443(A038722(n+1)))` -/
def P3464248052898911176.Spec : Prop :=
  ∀ n, P3464248052898911176.a n = A039758 n

end A039758

/-! ## A039758.P3074915424097646303

`A039757(A057944(n)+A025581(n))`
-/

namespace A039758.P3074915424097646303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A057944 n + A025581 n).toNat

end

end A039758.P3074915424097646303

namespace A039758

/-- `A039757(A057944(n)+A025581(n))` -/
def P3074915424097646303.Spec : Prop :=
  ∀ n, P3074915424097646303.a n = A039758 n

end A039758

/-!
# A039759: Number of edges in the Hasse diagrams for the B-analogs of the partition lattices.

The programs for A039759, there is no canonical definition to state claims against.
-/

/-! ## A039759.P1217287420290271654

`and(-69, A126733(2*n+1))`
-/

namespace A039759.P1217287420290271654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-69) (A126733 (2 * n + 1))

end

end A039759.P1217287420290271654

/-!
# A039760: Triangle of D-analogs of Stirling numbers of the 2nd kind.

The programs for A039760, there is no canonical definition to state claims against.
-/

/-! ## A039760.P15174147421872940836

`A039761(A061579(n))`
-/

namespace A039760.P15174147421872940836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039761 (A061579 n).toNat

end

end A039760.P15174147421872940836

/-! ## A039760.P8958504865978097512

`A039761(A114327(n)+n)`
-/

namespace A039760.P8958504865978097512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039761 (A114327 n + (n : ℤ)).toNat

end

end A039760.P8958504865978097512

/-! ## A039760.P2656465351059217843

`A039761(A038722(n+1)-1)`
-/

namespace A039760.P2656465351059217843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039761 (A038722 (n + 1) - 1).toNat

end

end A039760.P2656465351059217843

/-! ## A039760.P841885424286865850

`A039761(A002024(n+1)²-(n+1))`
-/

namespace A039760.P841885424286865850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039761 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A039760.P841885424286865850

/-! ## A039760.P9285376022623823796

`A039761(A057944(n)+A025581(n))`
-/

namespace A039760.P9285376022623823796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039761 (A057944 n + A025581 n).toNat

end

end A039760.P9285376022623823796

/-! ## A039760.P5385959398062173530

`A039761(A038722(n+2))`
-/

namespace A039760.P5385959398062173530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039761 (A038722 (n + 2)).toNat

end

end A039760.P5385959398062173530

/-!
# A039761: Triangle of D-analogs of Stirling numbers of the 2nd kind.

The programs for A039761, there is no canonical definition to state claims against.
-/

/-! ## A039761.P9911025242523653997

`A039760(A002378(n)%A080036(n))`
-/

namespace A039761.P9911025242523653997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039760 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A039761.P9911025242523653997

/-! ## A039761.P6168251445966507892

`A039760(A061579(n))`
-/

namespace A039761.P6168251445966507892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039760 (A061579 n).toNat

end

end A039761.P6168251445966507892

/-! ## A039761.P10445038221803677549

`A039760(A114327(n)+n)`
-/

namespace A039761.P10445038221803677549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039760 (A114327 n + (n : ℤ)).toNat

end

end A039761.P10445038221803677549

/-! ## A039761.P12490452634461952239

`A039760(A038722(n+1)-1)`
-/

namespace A039761.P12490452634461952239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039760 (A038722 (n + 1) - 1).toNat

end

end A039761.P12490452634461952239

/-! ## A039761.P8187122538981480251

`A039760(A002024(n+1)²-(n+1))`
-/

namespace A039761.P8187122538981480251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039760 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A039761.P8187122538981480251

/-! ## A039761.P14183217533347206341

`A039760(A057944(n)+A025581(n))`
-/

namespace A039761.P14183217533347206341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039760 (A057944 n + A025581 n).toNat

end

end A039761.P14183217533347206341

/-!
# A039762: Triangle of D-analogs of Stirling numbers of first kind.

The programs for A039762, there is no canonical definition to state claims against.
-/

/-! ## A039762.P12726504927907551324

`A039763(A061579(n))`
-/

namespace A039762.P12726504927907551324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (A061579 n).toNat

end

end A039762.P12726504927907551324

/-! ## A039762.P11089288328896653676

`A039763(A114327(n)+n)`
-/

namespace A039762.P11089288328896653676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (A114327 n + (n : ℤ)).toNat

end

end A039762.P11089288328896653676

/-! ## A039762.P18423621630951682433

`A039763(A038722(n+1)-1)`
-/

namespace A039762.P18423621630951682433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (A038722 (n + 1) - 1).toNat

end

end A039762.P18423621630951682433

/-! ## A039762.P9132794054275940879

`A039763(A002024(n+1)²-(n+1))`
-/

namespace A039762.P9132794054275940879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A039762.P9132794054275940879

/-! ## A039762.P7122138774381387760

`A039763(A057944(n)+A025581(n))`
-/

namespace A039762.P7122138774381387760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (A057944 n + A025581 n).toNat

end

end A039762.P7122138774381387760

/-! ## A039762.P4165113605931065923

`A039763(A057428(n)+A038722(n+1))`
-/

namespace A039762.P4165113605931065923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (A057428 n + A038722 (n + 1)).toNat

end

end A039762.P4165113605931065923

/-! ## A039762.P10043370711397360734

`A039763(A002378(n)%A014132(n+1))`
-/

namespace A039762.P10043370711397360734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A039762.P10043370711397360734

/-! ## A039762.P5945136744597902935

`A039763(A038722(n+2))`
-/

namespace A039762.P5945136744597902935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039763 (A038722 (n + 2)).toNat

end

end A039762.P5945136744597902935

/-!
# A039763: Triangle of D-analogs of Stirling numbers of first kind, rows reversed.

The programs for A039763, there is no canonical definition to state claims against.
-/

/-! ## A039763.P11104341636450657252

`A039762(A002378(n)%A080036(n))`
-/

namespace A039763.P11104341636450657252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A039763.P11104341636450657252

/-! ## A039763.P16634945142412879498

`A039762((n²+n)%comp[∑[n]])`
-/

namespace A039763.P16634945142412879498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 ((n ^ 2 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A039763.P16634945142412879498

/-! ## A039763.P18208006254214043066

`A039762(A061579(n))`
-/

namespace A039763.P18208006254214043066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (A061579 n).toNat

end

end A039763.P18208006254214043066

/-! ## A039763.P8267738754107459472

`A039762(A114327(n)+n)`
-/

namespace A039763.P8267738754107459472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (A114327 n + (n : ℤ)).toNat

end

end A039763.P8267738754107459472

/-! ## A039763.P17886173677139135512

`A039762(A038722(n+1)-1)`
-/

namespace A039763.P17886173677139135512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (A038722 (n + 1) - 1).toNat

end

end A039763.P17886173677139135512

/-! ## A039763.P12575578998089379873

`A039762(A002024(n+1)²-(n+1))`
-/

namespace A039763.P12575578998089379873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A039763.P12575578998089379873

/-! ## A039763.P1638817666435035933

`A039762(A057944(n)+A025581(n))`
-/

namespace A039763.P1638817666435035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (A057944 n + A025581 n).toNat

end

end A039763.P1638817666435035933

/-! ## A039763.P4450229154100130662

`A039762(A185869(n+1)-A016789(n))`
-/

namespace A039763.P4450229154100130662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (A185869 (n + 1) - A016789 n).toNat

end

end A039763.P4450229154100130662

/-! ## A039763.P15441386495519883718

`A039762(A127739(n+1)-A002260(n+1))`
-/

namespace A039763.P15441386495519883718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039762 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A039763.P15441386495519883718

/-!
# A039764: D-analogs of Bell numbers.

The programs for A039764, there is no canonical definition to state claims against.
-/

/-! ## A039764.P11660197657515230171

`A047581(A073591(n))-A000225(n)`
-/

namespace A039764.P11660197657515230171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047581 (A073591 n).toNat - A000225 n

end

end A039764.P11660197657515230171

/-! ## A039764.P12849198705342698568

`∑{d}[A052952(A210108(n)), #]`
-/

namespace A039764.P12849198705342698568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (A210108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A039764.P12849198705342698568

/-!
# A039765: Number of edges in the Hasse diagrams for the D-analogs of the partition lattices.

The programs for A039765, there is no canonical definition to state claims against.
-/

/-! ## A039765.P447911709217797915

`Δ[A174436(abs(1-n))]`
-/

namespace A039765.P447911709217797915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174436 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039765.P447911709217797915

/-! ## A039765.P14291745079800919900

`A174436(n)-A174436(abs(1-n))`
-/

namespace A039765.P14291745079800919900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174436 n - A174436 |1 - (n : ℤ)|.toNat

end

end A039765.P14291745079800919900

/-! ## A039765.P17212686010107162439

`-Δ[-A174436(n-A057427(n))]`
-/

namespace A039765.P17212686010107162439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174436 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A039765.P17212686010107162439

/-!
# A039766: Numbers k such that gcd(phi(k), k-1) = number of divisors of k.

The programs for A039766, the canonical program `A039766.P771001418354876832` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039766 has offset 1).

The definition of A039766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039766.P771001418354876832

`eq[A000005(n+1), A049559(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A039766

/-- `eq[A000005(n+1), A049559(n+1)]+1` -/
def P771001418354876832.Spec : Prop :=
  ∀ n, (P771001418354876832.a n : ℤ) = A039766 (n + 1)

theorem P771001418354876832.correct : P771001418354876832.Spec := by
  intro n
  simp only [A039766, Nat.add_sub_cancel]

end A039766

/-! ## A039766.P8381236900140810135

`eq[A048272(n+1), A049559(n+1)]+1`
-/

namespace A039766.P8381236900140810135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039766.P8381236900140810135

namespace A039766

/-- `eq[A048272(n+1), A049559(n+1)]+1` -/
def P8381236900140810135.Spec : Prop :=
  ∀ n, (P8381236900140810135.a n : ℤ) = A039766 (n + 1)

end A039766

/-! ## A039766.P17389794039638033471

`A004442(eq[A000005(n+1), A049559(n+1)])`
-/

namespace A039766.P17389794039638033471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039766.P17389794039638033471

namespace A039766

/-- `A004442(eq[A000005(n+1), A049559(n+1)])` -/
def P17389794039638033471.Spec : Prop :=
  ∀ n, P17389794039638033471.a n = A039766 (n + 1)

end A039766

/-! ## A039766.P12382252290134830824

`A141310(eq[A000005(n+1), A049559(n+1)])`
-/

namespace A039766.P12382252290134830824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039766.P12382252290134830824

namespace A039766

/-- `A141310(eq[A000005(n+1), A049559(n+1)])` -/
def P12382252290134830824.Spec : Prop :=
  ∀ n, P12382252290134830824.a n = A039766 (n + 1)

end A039766

/-! ## A039766.P12596541995480614547

`A165998(eq[A000005(n+1), A049559(n+1)])`
-/

namespace A039766.P12596541995480614547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039766.P12596541995480614547

namespace A039766

/-- `A165998(eq[A000005(n+1), A049559(n+1)])` -/
def P12596541995480614547.Spec : Prop :=
  ∀ n, P12596541995480614547.a n = A039766 (n + 1)

end A039766

/-!
# A039767: Numbers k such that gcd(phi(k), k-1) = number of distinct prime factors of (k-1).

The programs for A039767, the canonical program `A039767.P8796970690706761177` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039767 has offset 1).

The definition of A039767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039767.P8796970690706761177

`eq[A001221(n+1), A049559(n+2)]+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A039767

/-- `eq[A001221(n+1), A049559(n+2)]+2` -/
def P8796970690706761177.Spec : Prop :=
  ∀ n, (P8796970690706761177.a n : ℤ) = A039767 (n + 1)

theorem P8796970690706761177.correct : P8796970690706761177.Spec := by
  intro n
  simp only [A039767, Nat.add_sub_cancel]

end A039767

/-! ## A039767.P61721845036259186

`A287003(n+2)-A287002(A000285(n))`
-/

namespace A039767.P61721845036259186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287003 (n + 2) - A287002 (A000285 n).toNat

end

end A039767.P61721845036259186

namespace A039767

/-- `A287003(n+2)-A287002(A000285(n))` -/
def P61721845036259186.Spec : Prop :=
  ∀ n, P61721845036259186.a n = A039767 (n + 1)

end A039767

/-! ## A039767.P2162120202908763431

`lt[A078898(A008925(n)), A074206(n)]`
-/

namespace A039767.P2162120202908763431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A008925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039767.P2162120202908763431

namespace A039767

/-- `lt[A078898(A008925(n)), A074206(n)]` -/
def P2162120202908763431.Spec : Prop :=
  ∀ n, (P2162120202908763431.a n : ℤ) = A039767 (n + 1)

end A039767

/-! ## A039767.P6130752118013512239

`lt[A078898(A008925(n)), A078898(n)]`
-/

namespace A039767.P6130752118013512239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A008925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039767.P6130752118013512239

namespace A039767

/-- `lt[A078898(A008925(n)), A078898(n)]` -/
def P6130752118013512239.Spec : Prop :=
  ∀ n, (P6130752118013512239.a n : ℤ) = A039767 (n + 1)

end A039767

/-!
# A039768: Numbers k such that gcd(phi(k), k-1) = number of divisors of (k-1).

The programs for A039768, the canonical program `A039768.P18004626891334739463` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039768 has offset 1).

The definition of A039768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039768.P18004626891334739463

`eq[A000005(abs(1-n)+1), A049559(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A039768

/-- `eq[A000005(abs(1-n)+1), A049559(n+1)]+1` -/
def P18004626891334739463.Spec : Prop :=
  ∀ n, (P18004626891334739463.a n : ℤ) = A039768 (n + 1)

theorem P18004626891334739463.correct : P18004626891334739463.Spec := by
  intro n
  simp only [A039768, Nat.add_sub_cancel]

end A039768

/-! ## A039768.P9954777779648265866

`eq[A000005(n+1)%(n+2), A049559(n+2)]+2`
-/

namespace A039768.P9954777779648265866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A039768.P9954777779648265866

namespace A039768

/-- `eq[A000005(n+1)%(n+2), A049559(n+2)]+2` -/
def P9954777779648265866.Spec : Prop :=
  ∀ n, (P9954777779648265866.a n : ℤ) = A039768 (n + 1)

end A039768

/-!
# A039769: Composite integers k such that gcd(phi(k), k - 1) > 1.

The programs for A039769, the canonical program `A039769.P9411596185916552793` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039769 has offset 1).

The definition of A039769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039769.P9411596185916552793

`lt[1, A318828(n+2)%(n+1)]+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039769

/-- `lt[1, A318828(n+2)%(n+1)]+2` -/
def P9411596185916552793.Spec : Prop :=
  ∀ n, (P9411596185916552793.a n : ℤ) = A039769 (n + 1)

theorem P9411596185916552793.correct : P9411596185916552793.Spec := by
  intro n
  simp only [A039769, Nat.add_sub_cancel]

end A039769

/-! ## A039769.P2037044805038642418

`∪[A039772(n+1), A071904(n+1)]`
-/

namespace A039769.P2037044805038642418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P2037044805038642418

namespace A039769

/-- `∪[A039772(n+1), A071904(n+1)]` -/
def P2037044805038642418.Spec : Prop :=
  ∀ n, (P2037044805038642418.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P10382465322511402969

`∪[A036303(n+1), A181780(n+1)]`
-/

namespace A039769.P10382465322511402969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P10382465322511402969

namespace A039769

/-- `∪[A036303(n+1), A181780(n+1)]` -/
def P10382465322511402969.Spec : Prop :=
  ∀ n, (P10382465322511402969.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P3737347613450782720

`∪[A036314(n+1), A181780(n+1)]`
-/

namespace A039769.P3737347613450782720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P3737347613450782720

namespace A039769

/-- `∪[A036314(n+1), A181780(n+1)]` -/
def P3737347613450782720.Spec : Prop :=
  ∀ n, (P3737347613450782720.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P8615271812163923608

`∪[A036315(n+1), A181780(n+1)]`
-/

namespace A039769.P8615271812163923608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P8615271812163923608

namespace A039769

/-- `∪[A036315(n+1), A181780(n+1)]` -/
def P8615271812163923608.Spec : Prop :=
  ∀ n, (P8615271812163923608.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P15975513981207481664

`∪[A036316(n+1), A181780(n+1)]`
-/

namespace A039769.P15975513981207481664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P15975513981207481664

namespace A039769

/-- `∪[A036316(n+1), A181780(n+1)]` -/
def P15975513981207481664.Spec : Prop :=
  ∀ n, (P15975513981207481664.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P14827400842714063617

`∪[A036317(n+1), A181780(n+1)]`
-/

namespace A039769.P14827400842714063617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P14827400842714063617

namespace A039769

/-- `∪[A036317(n+1), A181780(n+1)]` -/
def P14827400842714063617.Spec : Prop :=
  ∀ n, (P14827400842714063617.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P5560596435733160252

`∪[A046350(n+1), A181780(n+1)]`
-/

namespace A039769.P5560596435733160252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P5560596435733160252

namespace A039769

/-- `∪[A046350(n+1), A181780(n+1)]` -/
def P5560596435733160252.Spec : Prop :=
  ∀ n, (P5560596435733160252.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P7906195067500908042

`∪[A053795(n+1), A181780(n+1)]`
-/

namespace A039769.P7906195067500908042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P7906195067500908042

namespace A039769

/-- `∪[A053795(n+1), A181780(n+1)]` -/
def P7906195067500908042.Spec : Prop :=
  ∀ n, (P7906195067500908042.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P8422807952803816062

`∪[A053850(n+1), A181780(n+1)]`
-/

namespace A039769.P8422807952803816062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P8422807952803816062

namespace A039769

/-- `∪[A053850(n+1), A181780(n+1)]` -/
def P8422807952803816062.Spec : Prop :=
  ∀ n, (P8422807952803816062.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P12801792525907737920

`∪[A063139(n+1), A181780(n+1)]`
-/

namespace A039769.P12801792525907737920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P12801792525907737920

namespace A039769

/-- `∪[A063139(n+1), A181780(n+1)]` -/
def P12801792525907737920.Spec : Prop :=
  ∀ n, (P12801792525907737920.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P4033081520143463654

`∪[A071904(n+1), A181780(n+1)]`
-/

namespace A039769.P4033081520143463654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P4033081520143463654

namespace A039769

/-- `∪[A071904(n+1), A181780(n+1)]` -/
def P4033081520143463654.Spec : Prop :=
  ∀ n, (P4033081520143463654.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P17649633003666669499

`∪[A079290(n+1), A181780(n+1)]`
-/

namespace A039769.P17649633003666669499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P17649633003666669499

namespace A039769

/-- `∪[A079290(n+1), A181780(n+1)]` -/
def P17649633003666669499.Spec : Prop :=
  ∀ n, (P17649633003666669499.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P7504305490698639484

`∪[A139392(n+1), A181780(n+1)]`
-/

namespace A039769.P7504305490698639484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P7504305490698639484

namespace A039769

/-- `∪[A139392(n+1), A181780(n+1)]` -/
def P7504305490698639484.Spec : Prop :=
  ∀ n, (P7504305490698639484.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P5970815966635829370

`∪[A275196(n+1), A181780(n+1)]`
-/

namespace A039769.P5970815966635829370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039769.P5970815966635829370

namespace A039769

/-- `∪[A275196(n+1), A181780(n+1)]` -/
def P5970815966635829370.Spec : Prop :=
  ∀ n, (P5970815966635829370.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P16446524484655960830

`lt[A014973(n+1), A063994(n+1)]+1`
-/

namespace A039769.P16446524484655960830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A039769.P16446524484655960830

namespace A039769

/-- `lt[A014973(n+1), A063994(n+1)]+1` -/
def P16446524484655960830.Spec : Prop :=
  ∀ n, (P16446524484655960830.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P4726929035252517759

`lt[A089026(n+1), A063994(n+1)]+1`
-/

namespace A039769.P4726929035252517759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A039769.P4726929035252517759

namespace A039769

/-- `lt[A089026(n+1), A063994(n+1)]+1` -/
def P4726929035252517759.Spec : Prop :=
  ∀ n, (P4726929035252517759.a n : ℤ) = A039769 (n + 1)

end A039769

/-! ## A039769.P2218702033974098233

`A020725(lt[A014973(n+1), A063994(n+1)])`
-/

namespace A039769.P2218702033974098233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A039769.P2218702033974098233

namespace A039769

/-- `A020725(lt[A014973(n+1), A063994(n+1)])` -/
def P2218702033974098233.Spec : Prop :=
  ∀ n, P2218702033974098233.a n = A039769 (n + 1)

end A039769

/-! ## A039769.P11653688038162403135

`A020725(lt[A089026(n+1), A063994(n+1)])`
-/

namespace A039769.P11653688038162403135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A039769.P11653688038162403135

namespace A039769

/-- `A020725(lt[A089026(n+1), A063994(n+1)])` -/
def P11653688038162403135.Spec : Prop :=
  ∀ n, P11653688038162403135.a n = A039769 (n + 1)

end A039769

/-! ## A039769.P13485440882095674604

`A079696(lt[A242742(n+1), A079696(n+1)])`
-/

namespace A039769.P13485440882095674604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A039769.P13485440882095674604

namespace A039769

/-- `A079696(lt[A242742(n+1), A079696(n+1)])` -/
def P13485440882095674604.Spec : Prop :=
  ∀ n, P13485440882095674604.a n = A039769 (n + 1)

end A039769

/-!
# A039770: Numbers k such that phi(k) is a perfect square.

The programs for A039770, the canonical program `A039770.P5490955356181166614` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039770 has offset 1).

The definition of A039770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039770.P5490955356181166614

`record[(n+1)/A007913(A000010(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039770

/-- `record[(n+1)/A007913(A000010(n+1))]` -/
def P5490955356181166614.Spec : Prop :=
  ∀ n, P5490955356181166614.a n = (A039770 (n + 1) : ℚ)

end A039770

/-! ## A039770.P3492281733691038542

`eq[1, A007913(A000010(n+1))]+1`
-/

namespace A039770.P3492281733691038542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039770.P3492281733691038542

namespace A039770

/-- `eq[1, A007913(A000010(n+1))]+1` -/
def P3492281733691038542.Spec : Prop :=
  ∀ n, (P3492281733691038542.a n : ℤ) = A039770 (n + 1)

end A039770

/-! ## A039770.P17692506482075059569

`eq[1, A280988(n+1)]+1`
-/

namespace A039770.P17692506482075059569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039770.P17692506482075059569

namespace A039770

/-- `eq[1, A280988(n+1)]+1` -/
def P17692506482075059569.Spec : Prop :=
  ∀ n, (P17692506482075059569.a n : ℤ) = A039770 (n + 1)

end A039770

/-! ## A039770.P18104727878140714685

`eq[A060576(n), A237203(n+1)]`
-/

namespace A039770.P18104727878140714685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039770.P18104727878140714685

namespace A039770

/-- `eq[A060576(n), A237203(n+1)]` -/
def P18104727878140714685.Spec : Prop :=
  ∀ n, (P18104727878140714685.a n : ℤ) = A039770 (n + 1)

end A039770

/-! ## A039770.P1277954405163886737

`lt[A152204(A109606(n+1)), 2]+1`
-/

namespace A039770.P1277954405163886737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (A109606 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A039770.P1277954405163886737

namespace A039770

/-- `lt[A152204(A109606(n+1)), 2]+1` -/
def P1277954405163886737.Spec : Prop :=
  ∀ n, (P1277954405163886737.a n : ℤ) = A039770 (n + 1)

end A039770

/-! ## A039770.P15389103920982056505

`record[(n+1)*A010052(A039649(n+1)-1)]`
-/

namespace A039770.P15389103920982056505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039770.P15389103920982056505

namespace A039770

/-- `record[(n+1)*A010052(A039649(n+1)-1)]` -/
def P15389103920982056505.Spec : Prop :=
  ∀ n, P15389103920982056505.a n = A039770 (n + 1)

end A039770

/-! ## A039770.P2535809719650217272

`record[(n+1)/A249307(A109606(n+1)+1)]`
-/

namespace A039770.P2535809719650217272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A249307 (A109606 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039770.P2535809719650217272

namespace A039770

/-- `record[(n+1)/A249307(A109606(n+1)+1)]` -/
def P2535809719650217272.Spec : Prop :=
  ∀ n, P2535809719650217272.a n = (A039770 (n + 1) : ℚ)

end A039770

/-! ## A039770.P12642345769596606346

`record[(n+1)/A273717(A000010(n+1)+1)]`
-/

namespace A039770.P12642345769596606346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A273717 (A000010 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039770.P12642345769596606346

namespace A039770

/-- `record[(n+1)/A273717(A000010(n+1)+1)]` -/
def P12642345769596606346.Spec : Prop :=
  ∀ n, P12642345769596606346.a n = (A039770 (n + 1) : ℚ)

end A039770

/-! ## A039770.P5630969662996050456

`record[(n+1)*A010052(4*A000010(n+1))]`
-/

namespace A039770.P5630969662996050456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (4 * A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039770.P5630969662996050456

namespace A039770

/-- `record[(n+1)*A010052(4*A000010(n+1))]` -/
def P5630969662996050456.Spec : Prop :=
  ∀ n, P5630969662996050456.a n = A039770 (n + 1)

end A039770

/-!
# A039771: Numbers k such that phi(k) is a perfect cube.

The programs for A039771, the canonical program `A039771.P6000712686625976623` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039771 has offset 1).

The definition of A039771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039771.P6000712686625976623

`eq[1, A010057(A000010(n+1))]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039771

/-- `eq[1, A010057(A000010(n+1))]+1` -/
def P6000712686625976623.Spec : Prop :=
  ∀ n, (P6000712686625976623.a n : ℤ) = A039771 (n + 1)

theorem P6000712686625976623.correct : P6000712686625976623.Spec := by
  intro n
  simp only [A039771, Nat.add_sub_cancel]

end A039771

/-! ## A039771.P15420434856960983274

`eq[1, A334337(n+1)]+1`
-/

namespace A039771.P15420434856960983274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039771.P15420434856960983274

namespace A039771

/-- `eq[1, A334337(n+1)]+1` -/
def P15420434856960983274.Spec : Prop :=
  ∀ n, (P15420434856960983274.a n : ℤ) = A039771 (n + 1)

end A039771

/-! ## A039771.P9319351289866209751

`eq[A057427(n), A334337(A028310(n))]`
-/

namespace A039771.P9319351289866209751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334337 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039771.P9319351289866209751

namespace A039771

/-- `eq[A057427(n), A334337(A028310(n))]` -/
def P9319351289866209751.Spec : Prop :=
  ∀ n, (P9319351289866209751.a n : ℤ) = A039771 (n + 1)

end A039771

/-! ## A039771.P9918365821661835299

`eq[A000038(n)!, A334337(A028310(n))]`
-/

namespace A039771.P9918365821661835299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334337 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039771.P9918365821661835299

namespace A039771

/-- `eq[A000038(n)!, A334337(A028310(n))]` -/
def P9918365821661835299.Spec : Prop :=
  ∀ n, (P9918365821661835299.a n : ℤ) = A039771 (n + 1)

end A039771

/-! ## A039771.P15551908066548102301

`eq[A010057(n), A055400(A225530(n))]`
-/

namespace A039771.P15551908066548102301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039771.P15551908066548102301

namespace A039771

/-- `eq[A010057(n), A055400(A225530(n))]` -/
def P15551908066548102301.Spec : Prop :=
  ∀ n, (P15551908066548102301.a n : ℤ) = A039771 (n + 1)

end A039771

/-!
# A039772: Even numbers k such that phi(k) and k-1 are distinct and have a common factor > 1.

The programs for A039772, there is no canonical definition to state claims against.
-/

/-! ## A039772.P3505098939971499107

`A330279(n+1)+1`
-/

namespace A039772.P3505098939971499107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330279 (n + 1) + 1

end

end A039772.P3505098939971499107

/-! ## A039772.P7085315787467729523

`∩[2*n, A280199(n+1)]`
-/

namespace A039772.P7085315787467729523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P7085315787467729523

/-! ## A039772.P15320242412309085091

`∩[A280199(n+1), A282671(n+1)]`
-/

namespace A039772.P15320242412309085091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P15320242412309085091

/-! ## A039772.P742231976479529332

`∩[2*n, A181780(n+1)]`
-/

namespace A039772.P742231976479529332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P742231976479529332

/-! ## A039772.P5654297487025551717

`∩[A181780(n+1), A004271(n)]`
-/

namespace A039772.P5654297487025551717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P5654297487025551717

/-! ## A039772.P4280394260695118796

`∩[A181780(n+1), A004272(n)]`
-/

namespace A039772.P4280394260695118796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P4280394260695118796

/-! ## A039772.P17343718260350099222

`∩[A181780(n+1), A004275(n)]`
-/

namespace A039772.P17343718260350099222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P17343718260350099222

/-! ## A039772.P1320716811379320600

`∩[A181780(n+1), A004277(n)]`
-/

namespace A039772.P1320716811379320600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P1320716811379320600

/-! ## A039772.P4160609559487500584

`∩[A181780(n+1), A004279(n)]`
-/

namespace A039772.P4160609559487500584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P4160609559487500584

/-! ## A039772.P15421572955517752507

`∩[A181780(n+1), A005843(n)]`
-/

namespace A039772.P15421572955517752507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P15421572955517752507

/-! ## A039772.P13608882093475209611

`∩[A181780(n+1), A020739(n)]`
-/

namespace A039772.P13608882093475209611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P13608882093475209611

/-! ## A039772.P1071978110200879885

`∩[A181780(n+1), A020744(n)]`
-/

namespace A039772.P1071978110200879885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P1071978110200879885

/-! ## A039772.P17147101530489751703

`∩[A181780(n+1), A103517(n)]`
-/

namespace A039772.P17147101530489751703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P17147101530489751703

/-! ## A039772.P2464018095218013867

`∩[A181780(n+1), A139270(n+1)]`
-/

namespace A039772.P2464018095218013867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P2464018095218013867

/-! ## A039772.P18397822783350346811

`∩[A181780(n+1), A176100(n+1)]`
-/

namespace A039772.P18397822783350346811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P18397822783350346811

/-! ## A039772.P2759575226360029874

`∩[A181780(n+1), A282671(n+1)]`
-/

namespace A039772.P2759575226360029874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P2759575226360029874

/-! ## A039772.P1931162642277988839

`∩[A181780(n+1), A350694(n+1)]`
-/

namespace A039772.P1931162642277988839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P1931162642277988839

/-! ## A039772.P12479227028353693868

`∩[2*n, A039769(n+1)]`
-/

namespace A039772.P12479227028353693868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P12479227028353693868

/-! ## A039772.P6741672389311915629

`∩[A039769(n+1), A004271(n)]`
-/

namespace A039772.P6741672389311915629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P6741672389311915629

/-! ## A039772.P17342171434733477926

`∩[A039769(n+1), A004272(n)]`
-/

namespace A039772.P17342171434733477926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039772.P17342171434733477926

/-!
# A039775: Number of new fractions m/n, where m is prime, (m,n)=1 and "new" means the value of mn has not occurred before.

The programs for A039775, there is no canonical definition to state claims against.
-/

/-! ## A039775.P18214601653025186856

`A000720(n+1)-A333224(A087207(n+1))`
-/

namespace A039775.P18214601653025186856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A333224 (A087207 (n + 1)).toNat

end

end A039775.P18214601653025186856

/-! ## A039775.P8962520873662585983

`A000720(n+1)-A333627(A331740(n+1))`
-/

namespace A039775.P8962520873662585983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A333627 (A331740 (n + 1)).toNat

end

end A039775.P8962520873662585983

/-! ## A039775.P2915430540773037320

`A001221(A066838(n+1)/A081060(n+1))`
-/

namespace A039775.P2915430540773037320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A066838 (n + 1) : ℚ) / (A081060 (n + 1) : ℚ))).toNat

end

end A039775.P2915430540773037320

/-! ## A039775.P10659952972379476080

`A001222(A066838(n+1)/A081060(n+1))`
-/

namespace A039775.P10659952972379476080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A066838 (n + 1) : ℚ) / (A081060 (n + 1) : ℚ))).toNat

end

end A039775.P10659952972379476080

/-! ## A039775.P10576590031538727561

`A000720(n+1)-A333224(∑{p}[n+1, A048675(#)])`
-/

namespace A039775.P10576590031538727561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A333224 (∑ p ∈ Nat.primeFactors (f1 n), A048675 p).toNat

end

end A039775.P10576590031538727561

/-!
# A039776: Number of new fractions m/n, where m is 1 or composite, (m,n) = 1 and "new" means the value of mn has not occurred before.

The programs for A039776, there is no canonical definition to state claims against.
-/

/-! ## A039776.P1429801108948505748

`A233427(A233427(2*n+1))+A036997(n+1)`
-/

namespace A039776.P1429801108948505748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A233427 (2 * n + 1)).toNat + A036997 (n + 1)

end

end A039776.P1429801108948505748

/-! ## A039776.P17580813859149645766

`A233427(A233427(2*n+1))+A048864(n+1)-1`
-/

namespace A039776.P17580813859149645766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A233427 (2 * n + 1)).toNat + (A048864 (n + 1) - 1)

end

end A039776.P17580813859149645766

/-! ## A039776.P8915265988235394294

`A233427(A233427(2*n+1))+A057859(n+1)-A036234(n+1)`
-/

namespace A039776.P8915265988235394294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A233427 (2 * n + 1)).toNat + (A057859 (n + 1) - A036234 (n + 1))

end

end A039776.P8915265988235394294

/-! ## A039776.P3616179044885486758

`A233427(A233427(2*n+1))+A109606(n+1)-A048865(n+1)`
-/

namespace A039776.P3616179044885486758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A233427 (2 * n + 1)).toNat + (A109606 (n + 1) - A048865 (n + 1))

end

end A039776.P3616179044885486758

/-! ## A039776.P4306503672918097262

`A233427(A233427(2*n+1))+A279436(n+1)-A045763(n+1)`
-/

namespace A039776.P4306503672918097262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A233427 (2 * n + 1)).toNat + (A279436 (n + 1) - A045763 (n + 1))

end

end A039776.P4306503672918097262

/-!
# A039777: Integers m such that phi(m) is equal to the sum of (the product of prime factors) and (the product of exponents) of m-1.

The programs for A039777, there is no canonical definition to state claims against.
-/

/-! ## A039777.P7615229339026370212

`filter[A392283(n+1), A014707(#)]`
-/

namespace A039777.P7615229339026370212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014707 (f1 j).toNat = 1) n)

end

end A039777.P7615229339026370212

/-!
# A039778: phi(n) is equal to the sum of prime factors and exponents of n+1.

The programs for A039778, there is no canonical definition to state claims against.
-/

/-! ## A039778.P12201841742871518904

`A068402(A133896(n))`
-/

namespace A039778.P12201841742871518904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068402 (A133896 n).toNat

end

end A039778.P12201841742871518904

/-!
# A039783: phi(n) is equal to the product of the dual prime-power components of n-1 (i.e., A008477(n-1)).

The programs for A039783, there is no canonical definition to state claims against.
-/

/-! ## A039783.P6065726681443611627

`A302494(A217514(n))`
-/

namespace A039783.P6065726681443611627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (A217514 n).toNat

end

end A039783.P6065726681443611627

/-!
# A039784: phi(n) is equal to the product of the dual prime-power components of n.

The programs for A039784, there is no canonical definition to state claims against.
-/

/-! ## A039784.P11201997527125105920

`A379716(a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A039784.P11201997527125105920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A379716 (a (n - 2) + 1).toNat

end

end A039784.P11201997527125105920

/-!
# A039785: Numbers n such that phi(n) is equal to the multiplicative projection of n.

The programs for A039785, there is no canonical definition to state claims against.
-/

/-! ## A039785.P9934253496720978050

`eq[A000010(n+2), A000026(n+2)]+2`
-/

namespace A039785.P9934253496720978050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A039785.P9934253496720978050

/-!
# A039786: phi(a(n)) is equal to the multiplicative projection of (a(n)-1).

The programs for A039786, there is no canonical definition to state claims against.
-/

/-! ## A039786.P5481774908156870607

`∩[A210845(n+1), A301987(n+1)]`
-/

namespace A039786.P5481774908156870607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039786.P5481774908156870607

/-! ## A039786.P9106932712767781282

`filter[A210845(n+2), A351957(#)]`
-/

namespace A039786.P9106932712767781282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A039786.P9106932712767781282

/-! ## A039786.P12693238273153244671

`eq[A067541(n+1), A287620(n+1)]+2`
-/

namespace A039786.P12693238273153244671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A039786.P12693238273153244671

/-! ## A039786.P18075079531702211709

`eq[A000010(n+2), A000026(n+1)]+2`
-/

namespace A039786.P18075079531702211709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A039786.P18075079531702211709

/-! ## A039786.P8987016938543528145

`eq[A032741(n), A294105(A004524(n))]`
-/

namespace A039786.P8987016938543528145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294105 (A004524 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039786.P8987016938543528145

/-! ## A039786.P9670788805036989065

`eq[A032741(n), A294105(A057979(n))]`
-/

namespace A039786.P9670788805036989065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294105 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039786.P9670788805036989065

/-! ## A039786.P5450372337511617361

`eq[A032741(n), A294105(A028242(n))]`
-/

namespace A039786.P5450372337511617361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294105 (A028242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039786.P5450372337511617361

/-!
# A039787: Primes p such that p-1 is squarefree.

The programs for A039787, the canonical program `A039787.P16450846264916428948` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039787 has offset 1).

The definition of A039787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039787.P5598994283645905007

`A077064(n+1)+1`
-/

namespace A039787.P5598994283645905007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077064 (n + 1) + 1

end

end A039787.P5598994283645905007

namespace A039787

/-- `A077064(n+1)+1` -/
def P5598994283645905007.Spec : Prop :=
  ∀ n, P5598994283645905007.a n = A039787 (n + 1)

theorem P5598994283645905007.correct : P5598994283645905007.Spec := by
  intro n
  simp only [A039787, Nat.add_sub_cancel, A039787.P5598994283645905007.a, A039787.P16450846264916428948.f1, A039787.P16450846264916428948.a, A049196, A049196.P2749344971155733877.f1, A049196.P2749344971155733877.a, A077064, A077064.P16565391587089475239.a, A007913, A007913.P8131970495124731496.a, A049149, A049149.P3106904862429449036.f1, A049149.P3106904862429449036.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039787

/-! ## A039787.P14450858211697166235

`p?[A393860(n+1)]`
-/

namespace A039787.P14450858211697166235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039787.P14450858211697166235

namespace A039787

/-- `p?[A393860(n+1)]` -/
def P14450858211697166235.Spec : Prop :=
  ∀ n, P14450858211697166235.a n = A039787 (n + 1)

end A039787

/-! ## A039787.P9393057210484159757

`∩[A039786(n+1), A045326(n+1)]`
-/

namespace A039787.P9393057210484159757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P9393057210484159757

namespace A039787

/-- `∩[A039786(n+1), A045326(n+1)]` -/
def P9393057210484159757.Spec : Prop :=
  ∀ n, (P9393057210484159757.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P16450846264916428948

`p?[A049196(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039787

/-- `p?[A049196(n+1)]` -/
def P16450846264916428948.Spec : Prop :=
  ∀ n, P16450846264916428948.a n = A039787 (n + 1)

theorem P16450846264916428948.correct : P16450846264916428948.Spec := by
  intro n
  simp only [A039787, Nat.add_sub_cancel]

end A039787

/-! ## A039787.P15981099552806788483

`∩[A039786(n+1), A049196(n+1)]`
-/

namespace A039787.P15981099552806788483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P15981099552806788483

namespace A039787

/-- `∩[A039786(n+1), A049196(n+1)]` -/
def P15981099552806788483.Spec : Prop :=
  ∀ n, (P15981099552806788483.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P14258907012274469889

`p?[A049149(n+1)]`
-/

namespace A039787.P14258907012274469889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039787.P14258907012274469889

namespace A039787

/-- `p?[A049149(n+1)]` -/
def P14258907012274469889.Spec : Prop :=
  ∀ n, P14258907012274469889.a n = A039787 (n + 1)

end A039787

/-! ## A039787.P13134052903418840438

`∩[A045326(n+1), A049149(n+1)]`
-/

namespace A039787.P13134052903418840438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P13134052903418840438

namespace A039787

/-- `∩[A045326(n+1), A049149(n+1)]` -/
def P13134052903418840438.Spec : Prop :=
  ∀ n, (P13134052903418840438.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P4874753609048699568

`p?[A069579(n+1)]`
-/

namespace A039787.P4874753609048699568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039787.P4874753609048699568

namespace A039787

/-- `p?[A069579(n+1)]` -/
def P4874753609048699568.Spec : Prop :=
  ∀ n, P4874753609048699568.a n = A039787 (n + 1)

end A039787

/-! ## A039787.P3525274517776079413

`∩[A039786(n+1), A045323(n+1)]`
-/

namespace A039787.P3525274517776079413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P3525274517776079413

namespace A039787

/-- `∩[A039786(n+1), A045323(n+1)]` -/
def P3525274517776079413.Spec : Prop :=
  ∀ n, (P3525274517776079413.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P13471721594346560464

`∩[A049196(n+1), A045323(n+1)]`
-/

namespace A039787.P13471721594346560464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P13471721594346560464

namespace A039787

/-- `∩[A049196(n+1), A045323(n+1)]` -/
def P13471721594346560464.Spec : Prop :=
  ∀ n, (P13471721594346560464.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P7470191348202188087

`∩[A040116(n+1), A049149(n+1)]`
-/

namespace A039787.P7470191348202188087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P7470191348202188087

namespace A039787

/-- `∩[A040116(n+1), A049149(n+1)]` -/
def P7470191348202188087.Spec : Prop :=
  ∀ n, (P7470191348202188087.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P1446178800555594525

`∩[A040116(n+1), A049196(n+1)]`
-/

namespace A039787.P1446178800555594525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P1446178800555594525

namespace A039787

/-- `∩[A040116(n+1), A049196(n+1)]` -/
def P1446178800555594525.Spec : Prop :=
  ∀ n, (P1446178800555594525.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P7475968743540750700

`∩[A040116(n+1), A069579(n+1)]`
-/

namespace A039787.P7475968743540750700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P7475968743540750700

namespace A039787

/-- `∩[A040116(n+1), A069579(n+1)]` -/
def P7475968743540750700.Spec : Prop :=
  ∀ n, (P7475968743540750700.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P15372046041379922083

`∩[A042987(n+1), A049149(n+1)]`
-/

namespace A039787.P15372046041379922083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P15372046041379922083

namespace A039787

/-- `∩[A042987(n+1), A049149(n+1)]` -/
def P15372046041379922083.Spec : Prop :=
  ∀ n, (P15372046041379922083.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P6501600868879193152

`∩[A042987(n+1), A049196(n+1)]`
-/

namespace A039787.P6501600868879193152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P6501600868879193152

namespace A039787

/-- `∩[A042987(n+1), A049196(n+1)]` -/
def P6501600868879193152.Spec : Prop :=
  ∀ n, (P6501600868879193152.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P14791020048187097370

`∩[A009087(n+1), A049196(n+1)]`
-/

namespace A039787.P14791020048187097370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P14791020048187097370

namespace A039787

/-- `∩[A009087(n+1), A049196(n+1)]` -/
def P14791020048187097370.Spec : Prop :=
  ∀ n, (P14791020048187097370.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P8610916242790658355

`∩[A009087(n+1), A069579(n+1)]`
-/

namespace A039787.P8610916242790658355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039787.P8610916242790658355

namespace A039787

/-- `∩[A009087(n+1), A069579(n+1)]` -/
def P8610916242790658355.Spec : Prop :=
  ∀ n, (P8610916242790658355.a n : ℤ) = A039787 (n + 1)

end A039787

/-! ## A039787.P3404065893194276518

`p?[A226384(n+1)]`
-/

namespace A039787.P3404065893194276518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039787.P3404065893194276518

namespace A039787

/-- `p?[A226384(n+1)]` -/
def P3404065893194276518.Spec : Prop :=
  ∀ n, P3404065893194276518.a n = A039787 (n + 1)

end A039787

/-! ## A039787.P17495184940362744343

`record[A069114(n+1)+1]`
-/

namespace A039787.P17495184940362744343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069114 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039787.P17495184940362744343

namespace A039787

/-- `record[A069114(n+1)+1]` -/
def P17495184940362744343.Spec : Prop :=
  ∀ n, P17495184940362744343.a n = A039787 (n + 1)

end A039787

/-! ## A039787.P3727601448232735643

`record[A077063(n+1)+1]`
-/

namespace A039787.P3727601448232735643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039787.P3727601448232735643

namespace A039787

/-- `record[A077063(n+1)+1]` -/
def P3727601448232735643.Spec : Prop :=
  ∀ n, P3727601448232735643.a n = A039787 (n + 1)

end A039787

/-!
# A039788: Numbers k such that phi(k) is equal to the product of (the sum of prime factors and the sum of exponents) of k.

The programs for A039788, there is no canonical definition to state claims against.
-/

/-! ## A039788.P321725562739850533

`A104326(n)+A010427(A070875(n))`
-/

namespace A039788.P321725562739850533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n + A010427 (A070875 n).toNat

end

end A039788.P321725562739850533

/-!
# A039790: Prime numbers prefixed with a '1'.

The programs for A039790, the canonical program `A039790.P15010338616268529751` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039790 has offset 1).

The definition of A039790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039790.P3585933300415822605

`A037278(A000040(n+1))`
-/

namespace A039790.P3585933300415822605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A000040 (n + 1)).toNat

end

end A039790.P3585933300415822605

namespace A039790

/-- `A037278(A000040(n+1))` -/
def P3585933300415822605.Spec : Prop :=
  ∀ n, P3585933300415822605.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P15010338616268529751

`A160668(n+1)+A100484(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A039790

/-- `A160668(n+1)+A100484(n+1)` -/
def P15010338616268529751.Spec : Prop :=
  ∀ n, P15010338616268529751.a n = A039790 (n + 1)

theorem P15010338616268529751.correct : P15010338616268529751.Spec := by
  intro n
  simp only [A039790, Nat.add_sub_cancel]

end A039790

/-! ## A039790.P13675710055602519318

`A228628(n+1)+A072055(n+1)`
-/

namespace A039790.P13675710055602519318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228628 (n + 1) + A072055 (n + 1)

end

end A039790.P13675710055602519318

namespace A039790

/-- `A228628(n+1)+A072055(n+1)` -/
def P13675710055602519318.Spec : Prop :=
  ∀ n, P13675710055602519318.a n = A039790 (n + 1)

theorem P13675710055602519318.correct : P13675710055602519318.Spec := by
  intro n
  simp only [A039790, Nat.add_sub_cancel, A039790.P13675710055602519318.a, A039790.P15010338616268529751.a, A072055, A072055.P8252801676711237860.a, A100484, A100484.P9678625670825099636.a, A160668, A160668.P17836700384560215862.a, A228628, A228628.P1311672402623493656.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061601, A061601.P11117984480287527776.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039790

/-! ## A039790.P15905296868033761523

`A160668(n+1)+2*A000040(n+1)`
-/

namespace A039790.P15905296868033761523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) + 2 * A000040 (n + 1)

end

end A039790.P15905296868033761523

namespace A039790

/-- `A160668(n+1)+2*A000040(n+1)` -/
def P15905296868033761523.Spec : Prop :=
  ∀ n, P15905296868033761523.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P4250146658616257016

`A347127(A000040(n+1))+A228628(n+1)`
-/

namespace A039790.P4250146658616257016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347127 (A000040 (n + 1)).toNat + A228628 (n + 1)

end

end A039790.P4250146658616257016

namespace A039790

/-- `A347127(A000040(n+1))+A228628(n+1)` -/
def P4250146658616257016.Spec : Prop :=
  ∀ n, P4250146658616257016.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P5127515263111637450

`A123132(A008578(n+2))`
-/

namespace A039790.P5127515263111637450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (A008578 (n + 2)).toNat

end

end A039790.P5127515263111637450

namespace A039790

/-- `A123132(A008578(n+2))` -/
def P5127515263111637450.Spec : Prop :=
  ∀ n, P5127515263111637450.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P2841009852880624794

`A123132(A182986(n+2))`
-/

namespace A039790.P2841009852880624794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (A182986 (n + 2)).toNat

end

end A039790.P2841009852880624794

namespace A039790

/-- `A123132(A182986(n+2))` -/
def P2841009852880624794.Spec : Prop :=
  ∀ n, P2841009852880624794.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P2137681619133004302

`A123132(record[A006530(n+2)])`
-/

namespace A039790.P2137681619133004302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039790.P2137681619133004302

namespace A039790

/-- `A123132(record[A006530(n+2)])` -/
def P2137681619133004302.Spec : Prop :=
  ∀ n, P2137681619133004302.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P8700868932827438561

`A123132(record[A014963(n+2)])`
-/

namespace A039790.P8700868932827438561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039790.P8700868932827438561

namespace A039790

/-- `A123132(record[A014963(n+2)])` -/
def P8700868932827438561.Spec : Prop :=
  ∀ n, P8700868932827438561.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P2185278062815804114

`A123132(record[A020639(n+2)])`
-/

namespace A039790.P2185278062815804114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039790.P2185278062815804114

namespace A039790

/-- `A123132(record[A020639(n+2)])` -/
def P2185278062815804114.Spec : Prop :=
  ∀ n, P2185278062815804114.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P15380636966512354723

`A123132(p?[A109425(n+1)])`
-/

namespace A039790.P15380636966512354723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039790.P15380636966512354723

namespace A039790

/-- `A123132(p?[A109425(n+1)])` -/
def P15380636966512354723.Spec : Prop :=
  ∀ n, P15380636966512354723.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P10921325552087922531

`10^(A004216(A000040(n+1)+1)+1)+A000040(n+1)`
-/

namespace A039790.P10921325552087922531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A004216 (A000040 (n + 1) + 1).toNat + 1 : ℤ) + (A000040 (n + 1) : ℚ)

end

end A039790.P10921325552087922531

namespace A039790

/-- `10^(A004216(A000040(n+1)+1)+1)+A000040(n+1)` -/
def P10921325552087922531.Spec : Prop :=
  ∀ n, P10921325552087922531.a n = (A039790 (n + 1) : ℚ)

end A039790

/-! ## A039790.P6995777860040402959

`A037278(p?[comp[n²]])`
-/

namespace A039790.P6995777860040402959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A039790.P6995777860040402959

namespace A039790

/-- `A037278(p?[comp[n²]])` -/
def P6995777860040402959.Spec : Prop :=
  ∀ n, P6995777860040402959.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P13563729248887383227

`A037278(record[A006530(n+2)])`
-/

namespace A039790.P13563729248887383227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039790.P13563729248887383227

namespace A039790

/-- `A037278(record[A006530(n+2)])` -/
def P13563729248887383227.Spec : Prop :=
  ∀ n, P13563729248887383227.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P1955471020280249840

`A037278(record[A014963(n+2)])`
-/

namespace A039790.P1955471020280249840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039790.P1955471020280249840

namespace A039790

/-- `A037278(record[A014963(n+2)])` -/
def P1955471020280249840.Spec : Prop :=
  ∀ n, P1955471020280249840.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P17558256839344751002

`A037278(record[A020639(n+2)])`
-/

namespace A039790.P17558256839344751002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039790.P17558256839344751002

namespace A039790

/-- `A037278(record[A020639(n+2)])` -/
def P17558256839344751002.Spec : Prop :=
  ∀ n, P17558256839344751002.a n = A039790 (n + 1)

end A039790

/-! ## A039790.P16639843705854073675

`A087712(∏{d}[A000040(n+1), A000040(#)])`
-/

namespace A039790.P16639843705854073675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (∏ d ∈ Nat.divisors (f1 n).natAbs, A000040 d).toNat

end

end A039790.P16639843705854073675

namespace A039790

/-- `A087712(∏{d}[A000040(n+1), A000040(#)])` -/
def P16639843705854073675.Spec : Prop :=
  ∀ n, P16639843705854073675.a n = A039790 (n + 1)

end A039790

/-!
# A039791: Sequence arising in search for Legendre sequences.

The programs for A039791, there is no canonical definition to state claims against.
-/

/-! ## A039791.P13664865328105691092

`A171398(A195605(n+1))`
-/

namespace A039791.P13664865328105691092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171398 (A195605 (n + 1)).toNat

end

end A039791.P13664865328105691092

/-! ## A039791.P12930244434502094750

`A171398(A184636(n+2))`
-/

namespace A039791.P12930244434502094750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171398 (A184636 (n + 2)).toNat

end

end A039791.P12930244434502094750

/-!
# A039797: Triangle of numbers of Dyck paths.

The programs for A039797, there is no canonical definition to state claims against.
-/

/-! ## A039797.P1292360237265235867

`A039798(A061579(n))`
-/

namespace A039797.P1292360237265235867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A061579 n).toNat

end

end A039797.P1292360237265235867

/-! ## A039797.P6543041983536116421

`A039798(A114327(n)+n)`
-/

namespace A039797.P6543041983536116421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A114327 n + (n : ℤ)).toNat

end

end A039797.P6543041983536116421

/-! ## A039797.P17400350692422307

`A039798(∑[A198954(n)-1])`
-/

namespace A039797.P17400350692422307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039797.P17400350692422307

/-! ## A039797.P4053631063630425588

`A039798(A038722(n+1)-1)`
-/

namespace A039797.P4053631063630425588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A038722 (n + 1) - 1).toNat

end

end A039797.P4053631063630425588

/-! ## A039797.P5528253544920495702

`A039798(A093995(n+1)-(n+1))`
-/

namespace A039797.P5528253544920495702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A039797.P5528253544920495702

/-! ## A039797.P11833844582874547066

`A039798(A000194(2*(n+1))²-(n+1))`
-/

namespace A039797.P11833844582874547066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A000194 (2 * (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A039797.P11833844582874547066

/-! ## A039797.P15803184682605747661

`A039798(A057944(n)+A025581(n))`
-/

namespace A039797.P15803184682605747661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A057944 n + A025581 n).toNat

end

end A039797.P15803184682605747661

/-! ## A039797.P17136025427869574115

`A039798(A002378(n)%A014132(n+1))`
-/

namespace A039797.P17136025427869574115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A039797.P17136025427869574115

/-! ## A039797.P9541521036397790920

`A039798(A038722(n+2))`
-/

namespace A039797.P9541521036397790920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A038722 (n + 2)).toNat

end

end A039797.P9541521036397790920

/-!
# A039798: Triangle read by rows: numbers of Dyck paths.

The programs for A039798, there is no canonical definition to state claims against.
-/

/-! ## A039798.P13075369218993008521

`A039797(A061579(n))`
-/

namespace A039798.P13075369218993008521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (A061579 n).toNat

end

end A039798.P13075369218993008521

/-! ## A039798.P8848694550830856532

`A039797(A114327(n)+n)`
-/

namespace A039798.P8848694550830856532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (A114327 n + (n : ℤ)).toNat

end

end A039798.P8848694550830856532

/-! ## A039798.P10245948355198161937

`A039797(∑[A198954(n)-1])`
-/

namespace A039798.P10245948355198161937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039798.P10245948355198161937

/-! ## A039798.P15762179486209964464

`A039797(A038722(n+1)-1)`
-/

namespace A039798.P15762179486209964464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (A038722 (n + 1) - 1).toNat

end

end A039798.P15762179486209964464

/-! ## A039798.P14739218606319478184

`A039797(A093995(n+1)-(n+1))`
-/

namespace A039798.P14739218606319478184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A039798.P14739218606319478184

/-! ## A039798.P13847516402335262147

`A039797(A057944(n)+A025581(n))`
-/

namespace A039798.P13847516402335262147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (A057944 n + A025581 n).toNat

end

end A039798.P13847516402335262147

/-! ## A039798.P18343031309458082322

`A039797(A002378(n)%A014132(n+1))`
-/

namespace A039798.P18343031309458082322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A039798.P18343031309458082322

/-! ## A039798.P7336772235074894253

`A039797(A057918(A038722(n+1)²))`
-/

namespace A039798.P7336772235074894253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (A057918 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A039798.P7336772235074894253

