import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A071000: Numbers m such that the denominator of Sum_{k=1..m} 1/gcd(m,k) equals m.

The programs for A071000, the canonical program `A071000.P4044688624235870522` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071000 has offset 1).

The definition of A071000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071000.P4044688624235870522

`comp[A070999(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071000

/-- `comp[A070999(n+1)-1]+1` -/
def P4044688624235870522.Spec : Prop :=
  ∀ n, (P4044688624235870522.a n : ℤ) = A071000 (n + 1)

theorem P4044688624235870522.correct : P4044688624235870522.Spec := by
  intro n
  simp only [A071000, Nat.add_sub_cancel]

end A071000

/-! ## A071000.P6924981322750252601

`record[A333696(n+1)]`
-/

namespace A071000.P6924981322750252601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071000.P6924981322750252601

namespace A071000

/-- `record[A333696(n+1)]` -/
def P6924981322750252601.Spec : Prop :=
  ∀ n, P6924981322750252601.a n = A071000 (n + 1)

end A071000

/-! ## A071000.P7050210751576339125

`eq[1, gcd(n, A057660(abs(1-n)+1))]`
-/

namespace A071000.P7050210751576339125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A057660 (|1 - (n : ℤ)| + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071000.P7050210751576339125

namespace A071000

/-- `eq[1, gcd(n, A057660(abs(1-n)+1))]` -/
def P7050210751576339125.Spec : Prop :=
  ∀ n, (P7050210751576339125.a n : ℤ) = A071000 (n + 1)

end A071000

/-! ## A071000.P7606345892442087512

`eq[1, gcd(n+1, A057660(n+1))]+1`
-/

namespace A071000.P7606345892442087512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071000.P7606345892442087512

namespace A071000

/-- `eq[1, gcd(n+1, A057660(n+1))]+1` -/
def P7606345892442087512.Spec : Prop :=
  ∀ n, (P7606345892442087512.a n : ℤ) = A071000 (n + 1)

end A071000

/-! ## A071000.P14289938674694838878

`record[(n+1)/gcd(A061019(n+1), A086148(n+1))]`
-/

namespace A071000.P14289938674694838878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A061019 (n + 1)) (A086148 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071000.P14289938674694838878

namespace A071000

/-- `record[(n+1)/gcd(A061019(n+1), A086148(n+1))]` -/
def P14289938674694838878.Spec : Prop :=
  ∀ n, P14289938674694838878.a n = (A071000 (n + 1) : ℚ)

end A071000

/-! ## A071000.P4040441160666382893

`record[sqrt(A294650((n+1)²))]`
-/

namespace A071000.P4040441160666382893
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A294650 ((n + 1) ^ 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071000.P4040441160666382893

namespace A071000

/-- `record[sqrt(A294650((n+1)²))]` -/
def P4040441160666382893.Spec : Prop :=
  ∀ n, P4040441160666382893.a n = (A071000 (n + 1) : ℝ)

end A071000

/-! ## A071000.P14545037437170818129

`sqrt(record[A294650(n^ceil(atan(n)))])`
-/

namespace A071000.P14545037437170818129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A071000.P14545037437170818129

namespace A071000

/-- `sqrt(record[A294650(n^ceil(atan(n)))])` -/
def P14545037437170818129.Spec : Prop :=
  ∀ n, P14545037437170818129.a n = (A071000 (n + 1) : ℝ)

end A071000

/-! ## A071000.P549811911688079435

`A000188(record[A294650((n+1)²)])`
-/

namespace A071000.P549811911688079435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071000.P549811911688079435

namespace A071000

/-- `A000188(record[A294650((n+1)²)])` -/
def P549811911688079435.Spec : Prop :=
  ∀ n, P549811911688079435.a n = A071000 (n + 1)

end A071000

/-! ## A071000.P15221083337676084809

`A000196(record[A294650((n+1)²)])`
-/

namespace A071000.P15221083337676084809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071000.P15221083337676084809

namespace A071000

/-- `A000196(record[A294650((n+1)²)])` -/
def P15221083337676084809.Spec : Prop :=
  ∀ n, P15221083337676084809.a n = A071000 (n + 1)

end A071000

/-! ## A071000.P3864546044028914708

`record[A294650((n+1)²)-A002378(n)]`
-/

namespace A071000.P3864546044028914708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 ((n + 1) ^ 2) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071000.P3864546044028914708

namespace A071000

/-- `record[A294650((n+1)²)-A002378(n)]` -/
def P3864546044028914708.Spec : Prop :=
  ∀ n, P3864546044028914708.a n = A071000 (n + 1)

end A071000

/-!
# A071001: Binary expansion of Gamma(3/4).

The programs for A071001, there is no canonical definition to state claims against.
-/

/-! ## A071001.P9660804329018762683

`A000045(and(2, n-A146999(n+3)))`
-/

namespace A071001.P9660804329018762683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 ((n : ℤ) - A146999 (n + 3))).toNat

end

end A071001.P9660804329018762683

/-! ## A071001.P6648017072564133728

`A000194(and(2, n-A146999(n+3)))`
-/

namespace A071001.P6648017072564133728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.land 2 ((n : ℤ) - A146999 (n + 3))).toNat

end

end A071001.P6648017072564133728

/-! ## A071001.P17299053621099158331

`A057427(and(2, n-A146999(n+3)))`
-/

namespace A071001.P17299053621099158331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.land 2 ((n : ℤ) - A146999 (n + 3))).toNat

end

end A071001.P17299053621099158331

/-! ## A071001.P16835296749347911712

`A067142(and(2, n-A146999(n+3)))`
-/

namespace A071001.P16835296749347911712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067142 (Int.land 2 ((n : ℤ) - A146999 (n + 3))).toNat

end

end A071001.P16835296749347911712

/-! ## A071001.P7524040578270373050

`A010060(A183407(n+1)+A007088(n))`
-/

namespace A071001.P7524040578270373050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A183407 (n + 1) + A007088 n).toNat

end

end A071001.P7524040578270373050

/-!
# A071002: Binary expansion of Gamma(1/4).

The programs for A071002, there is no canonical definition to state claims against.
-/

/-! ## A071002.P4057689592323129120

`A055088(A016012(n+1)*A053277(n))`
-/

namespace A071002.P4057689592323129120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055088 (A016012 (n + 1) * A053277 n).toNat

end

end A071002.P4057689592323129120

/-!
# A071004: Binary expansion of AGM(1,sqrt(2)) where AGM(x,y) denote the arithmetic-geometric mean of (x,y).

The programs for A071004, there is no canonical definition to state claims against.
-/

/-! ## A071004.P962262943530994779

`A284391(A112798(2*(n+2))^A286364(n+1))`
-/

namespace A071004.P962262943530994779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (SequenceMachineLib.roundAway ((A112798 (2 * (n + 2)) : ℚ) ^ (A286364 (n + 1) : ℤ))).toNat

end

end A071004.P962262943530994779

/-! ## A071004.P6968401006198320637

`A071028(A286350(n)%∑[A153037(n)])`
-/

namespace A071004.P6968401006198320637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (Int.tmod (A286350 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A071004.P6968401006198320637

/-! ## A071004.P15697410423293293250

`A010060(or(A004912(n+1), A103032(n+1)))`
-/

namespace A071004.P15697410423293293250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lor (A004912 (n + 1)) (A103032 (n + 1))).toNat

end

end A071004.P15697410423293293250

/-! ## A071004.P4834344846777781761

`and(A001222(2*n+5), A109571(A000040(n+1)))`
-/

namespace A071004.P4834344846777781761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (2 * n + 5)) (A109571 (A000040 (n + 1)).toNat)

end

end A071004.P4834344846777781761

/-! ## A071004.P18320524322265821573

`A380417(A067291(n+1)*A217916(n+1))`
-/

namespace A071004.P18320524322265821573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380417 (A067291 (n + 1) * A217916 (n + 1)).toNat

end

end A071004.P18320524322265821573

/-!
# A071005: Binary expansion of Pi/3 (A019670).

The programs for A071005, there is no canonical definition to state claims against.
-/

/-! ## A071005.P10623341299673597579

`and(char[A378865(3*n+4)], A304714(2*n+5))`
-/

namespace A071005.P10623341299673597579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A304714 (2 * n + 5))

end

end A071005.P10623341299673597579

/-! ## A071005.P1813945106407261118

`A340988(and(A325678(3*n+2), A325683(3*(n+1))))`
-/

namespace A071005.P1813945106407261118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((Int.land (A325678 (3 * n + 2)) (A325683 (3 * (n + 1)))).toNat + 91)

end

end A071005.P1813945106407261118

/-! ## A071005.P14978045845401001798

`A151933(A129576(A079965(n)))^n`
-/

namespace A071005.P14978045845401001798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A129576 (A079965 n).toNat).toNat ^ n

end

end A071005.P14978045845401001798

/-! ## A071005.P16094255632389186310

`(A088432(A122180(n+1)!!)^n)^A129576(A079965(n))`
-/

namespace A071005.P16094255632389186310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088432 (Nat.factorial (Nat.factorial (A122180 (n + 1)).toNat)) ^ n : ℚ) ^ (A129576 (A079965 n).toNat : ℤ)

end

end A071005.P16094255632389186310

/-!
# A071006: Number of positive solutions to the Diophantine equation x^2+y^3=n^2 with y <= x.

The programs for A071006, there is no canonical definition to state claims against.
-/

/-! ## A071006.P5434265063885563141

`A372692(A372665(2*n+1))%A372644(n+1)`
-/

namespace A071006.P5434265063885563141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372692 (A372665 (2 * n + 1)).toNat) (A372644 (n + 1))

end

end A071006.P5434265063885563141

/-! ## A071006.P15561103410265691115

`A340428(n)%A372644(n+1)`
-/

namespace A071006.P15561103410265691115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340428 n) (A372644 (n + 1))

end

end A071006.P15561103410265691115

/-! ## A071006.P18096108360842293802

`A275220(n+1)%A372644(n+1)`
-/

namespace A071006.P18096108360842293802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275220 (n + 1)) (A372644 (n + 1))

end

end A071006.P18096108360842293802

/-! ## A071006.P17188730828457979241

`A055641(A047550(n+1)*A123223(n))`
-/

namespace A071006.P17188730828457979241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A047550 (n + 1) * A123223 n).toNat

end

end A071006.P17188730828457979241

/-! ## A071006.P14580104728625350142

`A157686(A373954(3*n+1)+A215366(2*n+3))`
-/

namespace A071006.P14580104728625350142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (A373954 (3 * n + 1) + A215366 (2 * n + 3)).toNat

end

end A071006.P14580104728625350142

/-!
# A071007: Number of permutations in the symmetric group S_n such that the maximal cycle has length exactly 3.

The programs for A071007, the canonical program `A071007.P3643576512482097279` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071007 has offset 0).

The definition of A071007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071007.P3643576512482097279

`A057693(n)-A000085(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071007

/-- `A057693(n)-A000085(n)` -/
def P3643576512482097279.Spec : Prop :=
  ∀ n, P3643576512482097279.a n = A071007 n

theorem P3643576512482097279.correct : P3643576512482097279.Spec := by
  intro n
  simp only [A071007]

end A071007

/-! ## A071007.P8782321650958121216

`A057693(n)-A099020(∑[n])`
-/

namespace A071007.P8782321650958121216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057693 n - A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071007.P8782321650958121216

namespace A071007

/-- `A057693(n)-A099020(∑[n])` -/
def P8782321650958121216.Spec : Prop :=
  ∀ n, P8782321650958121216.a n = A071007 n

end A071007

/-! ## A071007.P8283419874140326933

`A126074(A152949(n+1))%A000266(n)`
-/

namespace A071007.P8283419874140326933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126074 (A152949 (n + 1)).toNat) (A000266 n)

end

end A071007.P8283419874140326933

namespace A071007

/-- `A126074(A152949(n+1))%A000266(n)` -/
def P8283419874140326933.Spec : Prop :=
  ∀ n, P8283419874140326933.a n = A071007 n

end A071007

/-! ## A071007.P13251163829757944201

`A000142(n)-(A202364(n)+A000085(n))`
-/

namespace A071007.P13251163829757944201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A202364 n + A000085 n)

end

end A071007.P13251163829757944201

namespace A071007

/-- `A000142(n)-(A202364(n)+A000085(n))` -/
def P13251163829757944201.Spec : Prop :=
  ∀ n, P13251163829757944201.a n = A071007 n

end A071007

/-! ## A071007.P305880802703360771

`A057693(n)-A182222(∑[n])`
-/

namespace A071007.P305880802703360771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057693 n - A182222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071007.P305880802703360771

namespace A071007

/-- `A057693(n)-A182222(∑[n])` -/
def P305880802703360771.Spec : Prop :=
  ∀ n, P305880802703360771.a n = A071007 n

end A071007

/-!
# A071008: Numbers n such that uphi(uphi(n)) = n/2.

The programs for A071008, there is no canonical definition to state claims against.
-/

/-! ## A071008.P9944500809958146376

`A139251(A020565(n)+1)`
-/

namespace A071008.P9944500809958146376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A020565 n + 1).toNat

end

end A071008.P9944500809958146376

/-!
# A071009: Number of solutions (x,y,z,u,v,w) to x+y+z = u+v+w, 0<=x,y,z,u,v,w<=n-1, x>=y>=z, u>=v>=w.

The programs for A071009, there is no canonical definition to state claims against.
-/

/-! ## A071009.P12863411525661533855

`A203293(n+1)-(∑[∑[or(1, n)]+1]+1)`
-/

namespace A071009.P12863411525661533855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A071009.P12863411525661533855

/-! ## A071009.P9645308765610341181

`A203293(n+1)-A203292(n+1)`
-/

namespace A071009.P9645308765610341181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - A203292 (n + 1)

end

end A071009.P9645308765610341181

/-! ## A071009.P15231600555444698783

`A203293(n+1)-(∑[A000982(n+1)+2]-n)`
-/

namespace A071009.P15231600555444698783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A071009.P15231600555444698783

/-! ## A071009.P12765503712125143325

`A203293(n+1)-∑[A061925(A028310(n)+1)]`
-/

namespace A071009.P12765503712125143325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071009.P12765503712125143325

/-! ## A071009.P3806294296986218419

`A203293(n+1)-∑[A000982(A028310(n)+1)+1]`
-/

namespace A071009.P3806294296986218419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A028310 n + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071009.P3806294296986218419

/-! ## A071009.P8375550887856192419

`A203293(n+1)-∑[A080036(A008619(n²))]`
-/

namespace A071009.P8375550887856192419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A008619 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071009.P8375550887856192419

/-! ## A071009.P10990532595565572259

`A203293(n+1)-∑[A123108(n²)+n+2]`
-/

namespace A071009.P10990532595565572259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n ^ 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071009.P10990532595565572259

/-! ## A071009.P1696607260394283501

`A203293(n+1)-A203291(∑[n+1]+2)`
-/

namespace A071009.P1696607260394283501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203293 (n + 1) - A203291 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A071009.P1696607260394283501

/-! ## A071009.P6245502163779270321

`A203291(A167614(n+1))-A203292(n+1)`
-/

namespace A071009.P6245502163779270321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203291 (A167614 (n + 1)).toNat - A203292 (n + 1)

end

end A071009.P6245502163779270321

/-!
# A071010: Sigma(k)/4 when k is not a sum of 2 squares.

The programs for A071010, the canonical program `A071010.P14669995141802898287` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071010 has offset 1).

The definition of A071010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071010.P7392240940090879695

`A000203(comp[A163547(n)])/4`
-/

namespace A071010.P7392240940090879695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 4

end

end A071010.P7392240940090879695

namespace A071010

/-- `A000203(comp[A163547(n)])/4` -/
def P7392240940090879695.Spec : Prop :=
  ∀ n, P7392240940090879695.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P2654454229242897100

`A000203(A022544(n+1))/4`
-/

namespace A071010.P2654454229242897100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A022544 (n + 1)).toNat : ℚ) / 4

end

end A071010.P2654454229242897100

namespace A071010

/-- `A000203(A022544(n+1))/4` -/
def P2654454229242897100.Spec : Prop :=
  ∀ n, P2654454229242897100.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P7039916638375913509

`A000203(eq[0, A229062(n)])/4`
-/

namespace A071010.P7039916638375913509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4

end

end A071010.P7039916638375913509

namespace A071010

/-- `A000203(eq[0, A229062(n)])/4` -/
def P7039916638375913509.Spec : Prop :=
  ∀ n, P7039916638375913509.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P14427805984084687258

`A000203(comp[A163531(n)])/4`
-/

namespace A071010.P14427805984084687258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 4

end

end A071010.P14427805984084687258

namespace A071010

/-- `A000203(comp[A163531(n)])/4` -/
def P14427805984084687258.Spec : Prop :=
  ∀ n, P14427805984084687258.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P14669995141802898287

`A000203(comp[A069011(n)])/4`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071010

/-- `A000203(comp[A069011(n)])/4` -/
def P14669995141802898287.Spec : Prop :=
  ∀ n, P14669995141802898287.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P3426225403610390694

`A000203(eq[0, A000161(n)])/4`
-/

namespace A071010.P3426225403610390694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4

end

end A071010.P3426225403610390694

namespace A071010

/-- `A000203(eq[0, A000161(n)])/4` -/
def P3426225403610390694.Spec : Prop :=
  ∀ n, P3426225403610390694.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P14208748012487493832

`A000203(eq[0, A000925(n)])/4`
-/

namespace A071010.P14208748012487493832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4

end

end A071010.P14208748012487493832

namespace A071010

/-- `A000203(eq[0, A000925(n)])/4` -/
def P14208748012487493832.Spec : Prop :=
  ∀ n, P14208748012487493832.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P7594583475908036406

`A000203(eq[0, A004018(n)])/4`
-/

namespace A071010.P7594583475908036406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4

end

end A071010.P7594583475908036406

namespace A071010

/-- `A000203(eq[0, A004018(n)])/4` -/
def P7594583475908036406.Spec : Prop :=
  ∀ n, P7594583475908036406.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P9516155497855719380

`A000203(eq[0, A104794(n)])/4`
-/

namespace A071010.P9516155497855719380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4

end

end A071010.P9516155497855719380

namespace A071010

/-- `A000203(eq[0, A104794(n)])/4` -/
def P9516155497855719380.Spec : Prop :=
  ∀ n, P9516155497855719380.a n = (A071010 (n + 1) : ℚ)

end A071010

/-! ## A071010.P13956170628884913697

`A000203(eq[0, A330574(n)])/4`
-/

namespace A071010.P13956170628884913697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4

end

end A071010.P13956170628884913697

namespace A071010

/-- `A000203(eq[0, A330574(n)])/4` -/
def P13956170628884913697.Spec : Prop :=
  ∀ n, P13956170628884913697.a n = (A071010 (n + 1) : ℚ)

end A071010

/-!
# A071011: Numbers n such that n is a sum of 2 squares (i.e., n is in A001481(k)) and sigma(n) == 0 (mod 4).

The programs for A071011, the canonical program `A071011.P15902829894463259350` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071011 has offset 1).

The definition of A071011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071011.P5905849117418725754

`∩[A000404(n+1), A248150(n+1)]`
-/

namespace A071011.P5905849117418725754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P5905849117418725754

namespace A071011

/-- `∩[A000404(n+1), A248150(n+1)]` -/
def P5905849117418725754.Spec : Prop :=
  ∀ n, (P5905849117418725754.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P9159475658722731234

`∩[A000415(n+1), A248150(n+1)]`
-/

namespace A071011.P9159475658722731234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P9159475658722731234

namespace A071011

/-- `∩[A000415(n+1), A248150(n+1)]` -/
def P9159475658722731234.Spec : Prop :=
  ∀ n, (P9159475658722731234.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P15902829894463259350

`∩[A001481(n+1), A248150(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071011

/-- `∩[A001481(n+1), A248150(n+1)]` -/
def P15902829894463259350.Spec : Prop :=
  ∀ n, (P15902829894463259350.a n : ℤ) = A071011 (n + 1)

theorem P15902829894463259350.correct : P15902829894463259350.Spec := by
  intro n
  simp only [A071011, Nat.add_sub_cancel]

end A071011

/-! ## A071011.P12898591387013391983

`∩[A001983(n+1), A248150(n+1)]`
-/

namespace A071011.P12898591387013391983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P12898591387013391983

namespace A071011

/-- `∩[A001983(n+1), A248150(n+1)]` -/
def P12898591387013391983.Spec : Prop :=
  ∀ n, (P12898591387013391983.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P17602157353570854000

`∩[A004431(n+1), A248150(n+1)]`
-/

namespace A071011.P17602157353570854000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P17602157353570854000

namespace A071011

/-- `∩[A004431(n+1), A248150(n+1)]` -/
def P17602157353570854000.Spec : Prop :=
  ∀ n, (P17602157353570854000.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P7157518909934381073

`∩[A007692(n+1), A248150(n+1)]`
-/

namespace A071011.P7157518909934381073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P7157518909934381073

namespace A071011

/-- `∩[A007692(n+1), A248150(n+1)]` -/
def P7157518909934381073.Spec : Prop :=
  ∀ n, (P7157518909934381073.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P10455656243374659170

`∩[A024508(n+1), A248150(n+1)]`
-/

namespace A071011.P10455656243374659170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P10455656243374659170

namespace A071011

/-- `∩[A024508(n+1), A248150(n+1)]` -/
def P10455656243374659170.Spec : Prop :=
  ∀ n, (P10455656243374659170.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P2835448470631658367

`∩[A085989(n+1), A248150(n+1)]`
-/

namespace A071011.P2835448470631658367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P2835448470631658367

namespace A071011

/-- `∩[A085989(n+1), A248150(n+1)]` -/
def P2835448470631658367.Spec : Prop :=
  ∀ n, (P2835448470631658367.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P7463453314567891024

`∩[A118882(n+1), A248150(n+1)]`
-/

namespace A071011.P7463453314567891024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P7463453314567891024

namespace A071011

/-- `∩[A118882(n+1), A248150(n+1)]` -/
def P7463453314567891024.Spec : Prop :=
  ∀ n, (P7463453314567891024.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P15987316403927438437

`eq[2, A160380(A004018(n))]`
-/

namespace A071011.P15987316403927438437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071011.P15987316403927438437

namespace A071011

/-- `eq[2, A160380(A004018(n))]` -/
def P15987316403927438437.Spec : Prop :=
  ∀ n, (P15987316403927438437.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P12241266979980123935

`eq[A157928(n), A330167(A004018(n))]`
-/

namespace A071011.P12241266979980123935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071011.P12241266979980123935

namespace A071011

/-- `eq[A157928(n), A330167(A004018(n))]` -/
def P12241266979980123935.Spec : Prop :=
  ∀ n, (P12241266979980123935.a n : ℤ) = A071011 (n + 1)

end A071011

/-! ## A071011.P143863085803070125

`eq[0, A225245(A342154(n))]`
-/

namespace A071011.P143863085803070125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 (A342154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071011.P143863085803070125

namespace A071011

/-- `eq[0, A225245(A342154(n))]` -/
def P143863085803070125.Spec : Prop :=
  ∀ n, (P143863085803070125.a n : ℤ) = A071011 (n + 1)

end A071011

/-!
# A071012: a(1)=1, a(n) is the smallest number >= a(n-1) such that the simple continued fraction for S(n) = 1/a(1) + 1/a(2) + ... + 1/a(n) contains exactly n elements.

The programs for A071012, there is no canonical definition to state claims against.
-/

/-! ## A071012.P16100831170482296130

`A354742(A132033(n+1))`
-/

namespace A071012.P16100831170482296130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354742 (A132033 (n + 1)).toNat

end

end A071012.P16100831170482296130

/-! ## A071012.P10963431928774603674

`A354742(A023771(n+2))`
-/

namespace A071012.P10963431928774603674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354742 (A023771 (n + 2)).toNat

end

end A071012.P10963431928774603674

/-! ## A071012.P7900290111757041772

`A354742(A370132(n+2))`
-/

namespace A071012.P7900290111757041772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354742 (A370132 (n + 2)).toNat

end

end A071012.P7900290111757041772

/-! ## A071012.P17452126228365574226

`A354742(A000005(2^n))`
-/

namespace A071012.P17452126228365574226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354742 (A000005 (2 ^ n)).toNat

end

end A071012.P17452126228365574226

/-! ## A071012.P7930905304163320336

`record[A354742(A355366(n+5))]`
-/

namespace A071012.P7930905304163320336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354742 (A355366 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071012.P7930905304163320336

/-!
# A071013: a(0)=1, a(n) is the smallest number > a(n-1) such that the simple continued fraction for S(n)=1/a(0)+1/a(1)+...+1/a(n) contains exactly 2n elements.

The programs for A071013, there is no canonical definition to state claims against.
-/

/-! ## A071013.P8382686788256874471

`A126571(A134055(n)+A046746(n))`
-/

namespace A071013.P8382686788256874471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A134055 n + A046746 n).toNat

end

end A071013.P8382686788256874471

/-! ## A071013.P8425308154172261479

`xor(A128716(n+1), A253092(A000142(n)))`
-/

namespace A071013.P8425308154172261479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A128716 (n + 1)) (A253092 (A000142 n).toNat)

end

end A071013.P8425308154172261479

/-!
# A071014: Binomial transform of A002487.

The programs for A071014, there is no canonical definition to state claims against.
-/

/-! ## A071014.P12518387441899820431

`A000006(or(n², A121654(n+1)))`
-/

namespace A071014.P12518387441899820431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.lor (n ^ 2 : ℤ) (A121654 (n + 1))).toNat

end

end A071014.P12518387441899820431

/-! ## A071014.P6326395677320549816

`∑[∑[A003056(A111160(n+2))-n]]`
-/

namespace A071014.P6326395677320549816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A111160 (n + 2)).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071014.P6326395677320549816

/-! ## A071014.P542978648806160097

`∑[A324769(or(a(n-1)+1, n-1))]` with `a(0)=1`
-/

namespace A071014.P542978648806160097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A324769 (Int.lor (f1 (n - 1) + 1) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071014.P542978648806160097

/-!
# A071016: Stirling_2 transform of A002487.

The programs for A071016, there is no canonical definition to state claims against.
-/

/-! ## A071016.P4034870031548812501

`A390395(A391985(n))`
-/

namespace A071016.P4034870031548812501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A391985 n).toNat

end

end A071016.P4034870031548812501

/-!
# A071017: Moebius transform of A002487.

The programs for A071017, the canonical program `A071017.P7489268746479520871` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071017 has offset 0).

The definition of A071017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071017.P7489268746479520871

`∑{d}[n+1, A007427(#)*A071018((n+1)/#-1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071017

/-- `∑{d}[n+1, A007427(#)*A071018((n+1)/#-1)]` -/
def P7489268746479520871.Spec : Prop :=
  ∀ n, P7489268746479520871.a n = A071017 n

theorem P7489268746479520871.correct : P7489268746479520871.Spec := by
  intro n
  simp only [A071017]

end A071017

/-!
# A071018: Inverse Moebius transform of A002487.

The programs for A071018, the canonical program `A071018.P12734946586284091472` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071018 has offset 0).

The definition of A071018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071018.P12734946586284091472

`∑{d}[n+1, A007306(A025480(#)+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A071018

/-- `∑{d}[n+1, A007306(A025480(#)+1)]` -/
def P12734946586284091472.Spec : Prop :=
  ∀ n, P12734946586284091472.a n = A071018 n

theorem P12734946586284091472.correct : P12734946586284091472.Spec := by
  intro n
  simp only [A071018]

end A071018

/-! ## A071018.P14927651573673502870

`∑{d}[n+1, A000005(#)*A071017((n+1)/#-1)]`
-/

namespace A071018.P14927651573673502870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A071017 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A071018.P14927651573673502870

namespace A071018

/-- `∑{d}[n+1, A000005(#)*A071017((n+1)/#-1)]` -/
def P14927651573673502870.Spec : Prop :=
  ∀ n, P14927651573673502870.a n = A071018 n

end A071018

/-! ## A071018.P12742557906876949363

`∑{d}[n+1, A002487(#+1)]`
-/

namespace A071018.P12742557906876949363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002487 (d + 1)

end

end A071018.P12742557906876949363

namespace A071018

/-- `∑{d}[n+1, A002487(#+1)]` -/
def P12742557906876949363.Spec : Prop :=
  ∀ n, P12742557906876949363.a n = A071018 n

end A071018

/-! ## A071018.P15501369236617680910

`∑{d}[n+1, A007306(A003602(#+1))]`
-/

namespace A071018.P15501369236617680910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007306 (A003602 (d + 1)).toNat

end

end A071018.P15501369236617680910

namespace A071018

/-- `∑{d}[n+1, A007306(A003602(#+1))]` -/
def P15501369236617680910.Spec : Prop :=
  ∀ n, P15501369236617680910.a n = A071018 n

end A071018

/-! ## A071018.P13311288937286676031

`∑{d}[n+1, A020650(A231550(#))]`
-/

namespace A071018.P13311288937286676031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020650 (A231550 d).toNat

end

end A071018.P13311288937286676031

namespace A071018

/-- `∑{d}[n+1, A020650(A231550(#))]` -/
def P13311288937286676031.Spec : Prop :=
  ∀ n, P13311288937286676031.a n = A071018 n

end A071018

/-! ## A071018.P8884373958846280867

`∑{d}[n+1, A020651(A153153(#))]`
-/

namespace A071018.P8884373958846280867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020651 (A153153 d).toNat

end

end A071018.P8884373958846280867

namespace A071018

/-- `∑{d}[n+1, A020651(A153153(#))]` -/
def P8884373958846280867.Spec : Prop :=
  ∀ n, P8884373958846280867.a n = A071018 n

end A071018

/-! ## A071018.P18271407795865313266

`∑{d}[n+1, A277872(A000695(#))]`
-/

namespace A071018.P18271407795865313266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A277872 (A000695 d).toNat

end

end A071018.P18271407795865313266

namespace A071018

/-- `∑{d}[n+1, A277872(A000695(#))]` -/
def P18271407795865313266.Spec : Prop :=
  ∀ n, P18271407795865313266.a n = A071018 n

end A071018

/-!
# A071019: Euler transform of A002487.

The programs for A071019, there is no canonical definition to state claims against.
-/

/-! ## A071019.P12997472165026828580

`A151991(A209405(n))-A237113(n+2)`
-/

namespace A071019.P12997472165026828580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (A209405 n).toNat - A237113 (n + 2)

end

end A071019.P12997472165026828580

/-!
# A071020: Square array T(i,j) = Bernoulli(2i)*Bernoulli(2j) read by antidiagonals: numerators.

The programs for A071020, there is no canonical definition to state claims against.
-/

/-! ## A071020.P13103343269105351139

`∑{digits}[A064989(A160708(n+1)), A290099(#)]`
-/

namespace A071020.P13103343269105351139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A160708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A290099 x).sum

end

end A071020.P13103343269105351139

/-! ## A071020.P220188140390290147

`or(A062378(n+1), A162511(A036565(n)))`
-/

namespace A071020.P220188140390290147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062378 (n + 1)) (A162511 (A036565 n).toNat)

end

end A071020.P220188140390290147

/-! ## A071020.P7131879686040118282

`or(A098841(n+1), A162511(A036565(n)))`
-/

namespace A071020.P7131879686040118282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098841 (n + 1)) (A162511 (A036565 n).toNat)

end

end A071020.P7131879686040118282

/-! ## A071020.P2712337206476663950

`A257098(A164454(n+4)-A078477(n+3))`
-/

namespace A071020.P2712337206476663950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A164454 (n + 4) - A078477 (n + 3)).toNat

end

end A071020.P2712337206476663950

/-! ## A071020.P16205248626228275181

`A011631(A030038(n))`
-/

namespace A071020.P16205248626228275181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011631 (A030038 n).toNat

end

end A071020.P16205248626228275181

/-!
# A071021: Square array T(i,j) = Bernoulli(2i)*Bernoulli(2j) read by antidiagonals: denominators.

The programs for A071021, there is no canonical definition to state claims against.
-/

/-! ## A071021.P5224305267669928561

`∏{e}[A108090(n+1), A002445(#)]`
-/

namespace A071021.P5224305267669928561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002445 (Nat.factorization (f1 n).natAbs p)

end

end A071021.P5224305267669928561

/-!
# A071023: Triangle read by rows giving successive states of cellular automaton generated by "Rule 78".

The programs for A071023, the canonical program `A071023.P6119485440541145974` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071023 has offset 0).

The definition of A071023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071023.P6433244261083010426

`A084097(n)%2`
-/

namespace A071023.P6433244261083010426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084097 n) 2

end

end A071023.P6433244261083010426

namespace A071023

/-- `A084097(n)%2` -/
def P6433244261083010426.Spec : Prop :=
  ∀ n, P6433244261083010426.a n = A071023 n

end A071023

/-! ## A071023.P14952311816702452783

`C(2, 2*A122960(n))`
-/

namespace A071023.P14952311816702452783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A122960 n).toNat

end

end A071023.P14952311816702452783

namespace A071023

/-- `C(2, 2*A122960(n))` -/
def P14952311816702452783.Spec : Prop :=
  ∀ n, (P14952311816702452783.a n : ℤ) = A071023 n

end A071023

/-! ## A071023.P14670922545304301782

`A113749(comp[∑[n-1]])%2`
-/

namespace A071023.P14670922545304301782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 2

end

end A071023.P14670922545304301782

namespace A071023

/-- `A113749(comp[∑[n-1]])%2` -/
def P14670922545304301782.Spec : Prop :=
  ∀ n, P14670922545304301782.a n = A071023 n

end A071023

/-! ## A071023.P6119485440541145974

`A070909(A056943(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071023

/-- `A070909(A056943(n))` -/
def P6119485440541145974.Spec : Prop :=
  ∀ n, P6119485440541145974.a n = A071023 n

theorem P6119485440541145974.correct : P6119485440541145974.Spec := by
  intro n
  simp only [A071023]

end A071023

/-! ## A071023.P533348932939892245

`A000045(C(2, A122960(n)))`
-/

namespace A071023.P533348932939892245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A122960 n).toNat)

end

end A071023.P533348932939892245

namespace A071023

/-- `A000045(C(2, A122960(n)))` -/
def P533348932939892245.Spec : Prop :=
  ∀ n, P533348932939892245.a n = A071023 n

end A071023

/-! ## A071023.P11097684623968715399

`and(A010684(n), A084097(n))`
-/

namespace A071023.P11097684623968715399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A084097 n)

end

end A071023.P11097684623968715399

namespace A071023

/-- `and(A010684(n), A084097(n))` -/
def P11097684623968715399.Spec : Prop :=
  ∀ n, P11097684623968715399.a n = A071023 n

end A071023

/-! ## A071023.P10154629124564189399

`C(A122935(n), A122960(n)²)`
-/

namespace A071023.P10154629124564189399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122935 n).toNat (A122960 n ^ 2).toNat

end

end A071023.P10154629124564189399

namespace A071023

/-- `C(A122935(n), A122960(n)²)` -/
def P10154629124564189399.Spec : Prop :=
  ∀ n, (P10154629124564189399.a n : ℤ) = A071023 n

end A071023

/-! ## A071023.P9258948917565728330

`gcd(A059778(n), A158948(n+1))`
-/

namespace A071023.P9258948917565728330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059778 n) (A158948 (n + 1))

end

end A071023.P9258948917565728330

namespace A071023

/-- `gcd(A059778(n), A158948(n+1))` -/
def P9258948917565728330.Spec : Prop :=
  ∀ n, (P9258948917565728330.a n : ℤ) = A071023 n

end A071023

/-! ## A071023.P12732432120993901229

`(comp[∑[4*n]]%2)^A046800(A002262(n))`
-/

namespace A071023.P12732432120993901229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℚ) ^ (A046800 (A002262 n).toNat : ℤ)

end

end A071023.P12732432120993901229

namespace A071023

/-- `(comp[∑[4*n]]%2)^A046800(A002262(n))` -/
def P12732432120993901229.Spec : Prop :=
  ∀ n, P12732432120993901229.a n = (A071023 n : ℚ)

end A071023

/-! ## A071023.P15354610446640763940

`(((-1)^∑[∪[2*n+1, n²]]+1)/2)^A049820(A002260(n+1))`
-/

namespace A071023.P15354610446640763940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2) ^ (A049820 (A002260 (n + 1)).toNat : ℤ)

end

end A071023.P15354610446640763940

namespace A071023

/-- `(((-1)^∑[∪[2*n+1, n²]]+1)/2)^A049820(A002260(n+1))` -/
def P15354610446640763940.Spec : Prop :=
  ∀ n, P15354610446640763940.a n = (A071023 n : ℚ)

end A071023

/-! ## A071023.P13145431109448120441

`(A101447(n)%2)^A049820(A002260(n+1))`
-/

namespace A071023.P13145431109448120441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A101447 n) 2 : ℚ) ^ (A049820 (A002260 (n + 1)).toNat : ℤ)

end

end A071023.P13145431109448120441

namespace A071023

/-- `(A101447(n)%2)^A049820(A002260(n+1))` -/
def P13145431109448120441.Spec : Prop :=
  ∀ n, P13145431109448120441.a n = (A071023 n : ℚ)

end A071023

/-! ## A071023.P1809658752002977045

`(A103219(n)%2)^A049820(A002260(n+1))`
-/

namespace A071023.P1809658752002977045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A103219 n) 2 : ℚ) ^ (A049820 (A002260 (n + 1)).toNat : ℤ)

end

end A071023.P1809658752002977045

namespace A071023

/-- `(A103219(n)%2)^A049820(A002260(n+1))` -/
def P1809658752002977045.Spec : Prop :=
  ∀ n, P1809658752002977045.a n = (A071023 n : ℚ)

end A071023

/-! ## A071023.P13691603624890591015

`(A064801(n+1)%2)²^A049820(A002260(n+1))`
-/

namespace A071023.P13691603624890591015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A064801 (n + 1)) 2 ^ 2 : ℚ) ^ (A049820 (A002260 (n + 1)).toNat : ℤ)

end

end A071023.P13691603624890591015

namespace A071023

/-- `(A064801(n+1)%2)²^A049820(A002260(n+1))` -/
def P13691603624890591015.Spec : Prop :=
  ∀ n, P13691603624890591015.a n = (A071023 n : ℚ)

end A071023

/-! ## A071023.P3189127035710625827

`A071024(A061579(n))`
-/

namespace A071023.P3189127035710625827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071024 (A061579 n).toNat

end

end A071023.P3189127035710625827

namespace A071023

/-- `A071024(A061579(n))` -/
def P3189127035710625827.Spec : Prop :=
  ∀ n, P3189127035710625827.a n = A071023 n

end A071023

/-! ## A071023.P13669058769461836627

`A128174(lt[A128174(n+1), A008284(n+2)])`
-/

namespace A071023.P13669058769461836627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071023.P13669058769461836627

namespace A071023

/-- `A128174(lt[A128174(n+1), A008284(n+2)])` -/
def P13669058769461836627.Spec : Prop :=
  ∀ n, P13669058769461836627.a n = A071023 n

end A071023

/-! ## A071023.P1080227795361133857

`A240025(A207260(n))`
-/

namespace A071023.P1080227795361133857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 (A207260 n).toNat

end

end A071023.P1080227795361133857

namespace A071023

/-- `A240025(A207260(n))` -/
def P1080227795361133857.Spec : Prop :=
  ∀ n, P1080227795361133857.a n = A071023 n

end A071023

/-! ## A071023.P5998222020638167267

`A266974(A063656(n))`
-/

namespace A071023.P5998222020638167267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (A063656 n).toNat

end

end A071023.P5998222020638167267

namespace A071023

/-- `A266974(A063656(n))` -/
def P5998222020638167267.Spec : Prop :=
  ∀ n, P5998222020638167267.a n = A071023 n

end A071023

/-! ## A071023.P6008730516523986176

`A250119(n+1)%2`
-/

namespace A071023.P6008730516523986176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250119 (n + 1)) 2

end

end A071023.P6008730516523986176

namespace A071023

/-- `A250119(n+1)%2` -/
def P6008730516523986176.Spec : Prop :=
  ∀ n, P6008730516523986176.a n = A071023 n

end A071023

/-! ## A071023.P9287008512252173145

`A118102(A064801(n+1))`
-/

namespace A071023.P9287008512252173145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A064801 (n + 1)).toNat

end

end A071023.P9287008512252173145

namespace A071023

/-- `A118102(A064801(n+1))` -/
def P9287008512252173145.Spec : Prop :=
  ∀ n, P9287008512252173145.a n = A071023 n

end A071023

/-! ## A071023.P3265326875576716936

`and(1, A362277(n))`
-/

namespace A071023.P3265326875576716936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A362277 n)

end

end A071023.P3265326875576716936

namespace A071023

/-- `and(1, A362277(n))` -/
def P3265326875576716936.Spec : Prop :=
  ∀ n, P3265326875576716936.a n = A071023 n

end A071023

/-!
# A071024: Triangle read by rows giving successive states of cellular automaton generated by "Rule 92".

The programs for A071024, the canonical program `A071024.P6899209022238862614` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071024 has offset 0).

The definition of A071024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071024.P13007969724849546043

`A141679(n^a(n-1))²` with `a(0)=1`
-/

namespace A071024.P13007969724849546043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141679 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat ^ 2

end

end A071024.P13007969724849546043

namespace A071024

/-- `A141679(n^a(n-1))²` -/
def P13007969724849546043.Spec : Prop :=
  ∀ n, P13007969724849546043.a n = A071024 n

end A071024

/-! ## A071024.P12132510075145655241

`C(10, 10^A177991(n))^(n-1)`
-/

namespace A071024.P12132510075145655241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 10 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A177991 n : ℤ))).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A071024.P12132510075145655241

namespace A071024

/-- `C(10, 10^A177991(n))^(n-1)` -/
def P12132510075145655241.Spec : Prop :=
  ∀ n, P12132510075145655241.a n = (A071024 n : ℚ)

end A071024

/-! ## A071024.P6899209022238862614

`A070909(A083920(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071024

/-- `A070909(A083920(n))` -/
def P6899209022238862614.Spec : Prop :=
  ∀ n, P6899209022238862614.a n = A071024 n

theorem P6899209022238862614.correct : P6899209022238862614.Spec := by
  intro n
  simp only [A071024]

end A071024

/-! ## A071024.P5628102520497146426

`A070909(A271439(n))`
-/

namespace A071024.P5628102520497146426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A271439 n).toNat

end

end A071024.P5628102520497146426

namespace A071024

/-- `A070909(A271439(n))` -/
def P5628102520497146426.Spec : Prop :=
  ∀ n, P5628102520497146426.a n = A071024 n

end A071024

/-! ## A071024.P10660286066531149656

`A238887(C(10, 10^A177991(n))²)`
-/

namespace A071024.P10660286066531149656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238887 (Nat.choose 10 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A177991 n : ℤ))).toNat ^ 2)

end

end A071024.P10660286066531149656

namespace A071024

/-- `A238887(C(10, 10^A177991(n))²)` -/
def P10660286066531149656.Spec : Prop :=
  ∀ n, P10660286066531149656.a n = A071024 n

end A071024

/-! ## A071024.P7917153457134168498

`A360481(C(10, 10^A177991(n))²)`
-/

namespace A071024.P7917153457134168498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360481 (Nat.choose 10 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A177991 n : ℤ))).toNat ^ 2)

end

end A071024.P7917153457134168498

namespace A071024

/-- `A360481(C(10, 10^A177991(n))²)` -/
def P7917153457134168498.Spec : Prop :=
  ∀ n, P7917153457134168498.a n = A071024 n

end A071024

/-! ## A071024.P9279743713782461597

`A177990(n+2)+A070909(n)*A177990(n+1)`
-/

namespace A071024.P9279743713782461597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177990 (n + 2) + A070909 n * A177990 (n + 1)

end

end A071024.P9279743713782461597

namespace A071024

/-- `A177990(n+2)+A070909(n)*A177990(n+1)` -/
def P9279743713782461597.Spec : Prop :=
  ∀ n, P9279743713782461597.a n = A071024 n

end A071024

/-! ## A071024.P10402513191403857962

`A071023(A056011(n+2))`
-/

namespace A071024.P10402513191403857962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071023 (A056011 (n + 2)).toNat

end

end A071024.P10402513191403857962

namespace A071024

/-- `A071023(A056011(n+2))` -/
def P10402513191403857962.Spec : Prop :=
  ∀ n, P10402513191403857962.a n = A071024 n

end A071024

/-! ## A071024.P2306864746477327782

`A070909(A197870(n+2)+n)`
-/

namespace A071024.P2306864746477327782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A197870 (n + 2) + (n : ℤ)).toNat

end

end A071024.P2306864746477327782

namespace A071024

/-- `A070909(A197870(n+2)+n)` -/
def P2306864746477327782.Spec : Prop :=
  ∀ n, P2306864746477327782.a n = A071024 n

end A071024

/-! ## A071024.P8969739737100847018

`A071023(A061579(n))`
-/

namespace A071024.P8969739737100847018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071023 (A061579 n).toNat

end

end A071024.P8969739737100847018

namespace A071024

/-- `A071023(A061579(n))` -/
def P8969739737100847018.Spec : Prop :=
  ∀ n, P8969739737100847018.a n = A071024 n

end A071024

/-! ## A071024.P677828138889387003

`A070909(A080036(n+1))`
-/

namespace A071024.P677828138889387003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A080036 (n + 1)).toNat

end

end A071024.P677828138889387003

namespace A071024

/-- `A070909(A080036(n+1))` -/
def P677828138889387003.Spec : Prop :=
  ∀ n, P677828138889387003.a n = A071024 n

end A071024

/-! ## A071024.P17404651261130421589

`A354057(n+1)%2`
-/

namespace A071024.P17404651261130421589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354057 (n + 1)) 2

end

end A071024.P17404651261130421589

namespace A071024

/-- `A354057(n+1)%2` -/
def P17404651261130421589.Spec : Prop :=
  ∀ n, P17404651261130421589.a n = A071024 n

end A071024

/-! ## A071024.P14746102812502907757

`A267050(A061885(n))`
-/

namespace A071024.P14746102812502907757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 (A061885 n).toNat

end

end A071024.P14746102812502907757

namespace A071024

/-- `A267050(A061885(n))` -/
def P14746102812502907757.Spec : Prop :=
  ∀ n, P14746102812502907757.a n = A071024 n

end A071024

/-! ## A071024.P6389963332980147774

`A158198(n+2)%2`
-/

namespace A071024.P6389963332980147774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158198 (n + 2)) 2

end

end A071024.P6389963332980147774

namespace A071024

/-- `A158198(n+2)%2` -/
def P6389963332980147774.Spec : Prop :=
  ∀ n, P6389963332980147774.a n = A071024 n

end A071024

/-! ## A071024.P14205368715211360809

`A332700(n)%2`
-/

namespace A071024.P14205368715211360809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332700 n) 2

end

end A071024.P14205368715211360809

namespace A071024

/-- `A332700(n)%2` -/
def P14205368715211360809.Spec : Prop :=
  ∀ n, P14205368715211360809.a n = A071024 n

end A071024

/-! ## A071024.P17900762606460304359

`A068063(C(n, n^A177991(n)))`
-/

namespace A071024.P17900762606460304359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) ^ (A177991 n : ℤ))).toNat)

end

end A071024.P17900762606460304359

namespace A071024

/-- `A068063(C(n, n^A177991(n)))` -/
def P17900762606460304359.Spec : Prop :=
  ∀ n, P17900762606460304359.a n = A071024 n

end A071024

/-! ## A071024.P2173700067756152230

`A075687(C(n, n^A177991(n)))`
-/

namespace A071024.P2173700067756152230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075687 (Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) ^ (A177991 n : ℤ))).toNat)

end

end A071024.P2173700067756152230

namespace A071024

/-- `A075687(C(n, n^A177991(n)))` -/
def P2173700067756152230.Spec : Prop :=
  ∀ n, P2173700067756152230.a n = A071024 n

end A071024

/-! ## A071024.P17076596755872164215

`A084329(C(n, n^A177991(n)))`
-/

namespace A071024.P17076596755872164215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084329 (Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) ^ (A177991 n : ℤ))).toNat)

end

end A071024.P17076596755872164215

namespace A071024

/-- `A084329(C(n, n^A177991(n)))` -/
def P17076596755872164215.Spec : Prop :=
  ∀ n, P17076596755872164215.a n = A071024 n

end A071024

/-! ## A071024.P4142587504494664235

`A067402(n)%2`
-/

namespace A071024.P4142587504494664235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067402 n) 2

end

end A071024.P4142587504494664235

namespace A071024

/-- `A067402(n)%2` -/
def P4142587504494664235.Spec : Prop :=
  ∀ n, P4142587504494664235.a n = A071024 n

end A071024

/-! ## A071024.P12663844539037864433

`and(A067402(n), A109007(n))`
-/

namespace A071024.P12663844539037864433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067402 n) (A109007 n)

end

end A071024.P12663844539037864433

namespace A071024

/-- `and(A067402(n), A109007(n))` -/
def P12663844539037864433.Spec : Prop :=
  ∀ n, P12663844539037864433.a n = A071024 n

end A071024

/-!
# A071025: Triangle read by rows giving successive states of cellular automaton generated by "Rule 124".

The programs for A071025, there is no canonical definition to state claims against.
-/

/-! ## A071025.P16945631663936807452

`A070887(A038722(n+1))`
-/

namespace A071025.P16945631663936807452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (A038722 (n + 1)).toNat

end

end A071025.P16945631663936807452

/-! ## A071025.P13998794158628648225

`A267355(A061885(n))`
-/

namespace A071025.P13998794158628648225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267355 (A061885 n).toNat

end

end A071025.P13998794158628648225

/-! ## A071025.P1948296341036721389

`A070887(A349294(n+2))`
-/

namespace A071025.P1948296341036721389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (A349294 (n + 2)).toNat

end

end A071025.P1948296341036721389

/-! ## A071025.P7636298062069245147

`A359832(A193728(n))`
-/

namespace A071025.P7636298062069245147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (A193728 n).toNat

end

end A071025.P7636298062069245147

/-! ## A071025.P14511498813730477192

`A245837(A124560(n+1))`
-/

namespace A071025.P14511498813730477192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245837 (A124560 (n + 1)).toNat

end

end A071025.P14511498813730477192

/-!
# A071026: Triangle read by rows giving successive states of cellular automaton generated by "Rule 188".

The programs for A071026, the canonical program `A071026.P2916990353363770740` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071026 has offset 0).

The definition of A071026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071026.P2916990353363770740

`A071027(A061579(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A071026

/-- `A071027(A061579(n))` -/
def P2916990353363770740.Spec : Prop :=
  ∀ n, P2916990353363770740.a n = A071026 n

theorem P2916990353363770740.correct : P2916990353363770740.Spec := by
  intro n
  simp only [A071026]

end A071026

/-! ## A071026.P3404373841299402081

`A071027(A038722(n+2))`
-/

namespace A071026.P3404373841299402081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071027 (A038722 (n + 2)).toNat

end

end A071026.P3404373841299402081

namespace A071026

/-- `A071027(A038722(n+2))` -/
def P3404373841299402081.Spec : Prop :=
  ∀ n, P3404373841299402081.a n = A071026 n

end A071026

/-! ## A071026.P6480073182945479339

`A071027(A378200(n+2))`
-/

namespace A071026.P6480073182945479339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071027 (A378200 (n + 2)).toNat

end

end A071026.P6480073182945479339

namespace A071026

/-- `A071027(A378200(n+2))` -/
def P6480073182945479339.Spec : Prop :=
  ∀ n, P6480073182945479339.a n = A071026 n

end A071026

/-! ## A071026.P17076129779638433560

`A071027(A278818(n+1))`
-/

namespace A071026.P17076129779638433560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071027 (A278818 (n + 1)).toNat

end

end A071026.P17076129779638433560

namespace A071026

/-- `A071027(A278818(n+1))` -/
def P17076129779638433560.Spec : Prop :=
  ∀ n, P17076129779638433560.a n = A071026 n

end A071026

/-! ## A071026.P2553331464445649348

`A118174(A061885(n))`
-/

namespace A071026.P2553331464445649348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118174 (A061885 n).toNat

end

end A071026.P2553331464445649348

namespace A071026

/-- `A118174(A061885(n))` -/
def P2553331464445649348.Spec : Prop :=
  ∀ n, P2553331464445649348.a n = A071026 n

end A071026

/-!
# A071027: Triangle read by rows giving successive states of cellular automaton generated by "Rule 230".

The programs for A071027, the canonical program `A071027.P14267633991690043163` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071027 has offset 0).

The definition of A071027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071027.P14267633991690043163

`char[(∏{p}[A139600(n+1), #]-1)%2+n]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071027

/-- `char[(∏{p}[A139600(n+1), #]-1)%2+n]` -/
def P14267633991690043163.Spec : Prop :=
  ∀ n, (P14267633991690043163.a n : ℤ) = A071027 n

theorem P14267633991690043163.correct : P14267633991690043163.Spec := by
  intro n
  simp only [A071027]

end A071027

/-! ## A071027.P13433613688915822638

`A001222(and(7, Δ[A213838(n+1)]))`
-/

namespace A071027.P13433613688915822638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land 7 (f1 (n + 1) - f1 n)).toNat

end

end A071027.P13433613688915822638

namespace A071027

/-- `A001222(and(7, Δ[A213838(n+1)]))` -/
def P13433613688915822638.Spec : Prop :=
  ∀ n, P13433613688915822638.a n = A071027 n

end A071027

/-! ## A071027.P249060525142709380

`A000035(or(A002260(n+1), A057059(n+2)))`
-/

namespace A071027.P249060525142709380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lor (A002260 (n + 1)) (A057059 (n + 2))).toNat

end

end A071027.P249060525142709380

namespace A071027

/-- `A000035(or(A002260(n+1), A057059(n+2)))` -/
def P249060525142709380.Spec : Prop :=
  ∀ n, P249060525142709380.a n = A071027 n

end A071027

/-! ## A071027.P4457415754758995926

`A071026(A061579(n))`
-/

namespace A071027.P4457415754758995926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071026 (A061579 n).toNat

end

end A071027.P4457415754758995926

namespace A071027

/-- `A071026(A061579(n))` -/
def P4457415754758995926.Spec : Prop :=
  ∀ n, P4457415754758995926.a n = A071027 n

end A071027

/-! ## A071027.P14617116174000278500

`A106465(A083362(n+1))`
-/

namespace A071027.P14617116174000278500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 (A083362 (n + 1)).toNat

end

end A071027.P14617116174000278500

namespace A071027

/-- `A106465(A083362(n+1))` -/
def P14617116174000278500.Spec : Prop :=
  ∀ n, P14617116174000278500.a n = A071027 n

end A071027

/-! ## A071027.P9549963573992353448

`A071026(A038722(n+2))`
-/

namespace A071027.P9549963573992353448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071026 (A038722 (n + 2)).toNat

end

end A071027.P9549963573992353448

namespace A071027

/-- `A071026(A038722(n+2))` -/
def P9549963573992353448.Spec : Prop :=
  ∀ n, P9549963573992353448.a n = A071027 n

end A071027

/-! ## A071027.P8516603374225113685

`A071026(A378705(n+2))`
-/

namespace A071027.P8516603374225113685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071026 (A378705 (n + 2)).toNat

end

end A071027.P8516603374225113685

namespace A071027

/-- `A071026(A378705(n+2))` -/
def P8516603374225113685.Spec : Prop :=
  ∀ n, P8516603374225113685.a n = A071027 n

end A071027

/-! ## A071027.P6727959363070291493

`A267853(A063656(n))`
-/

namespace A071027.P6727959363070291493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267853 (A063656 n).toNat

end

end A071027.P6727959363070291493

namespace A071027

/-- `A267853(A063656(n))` -/
def P6727959363070291493.Spec : Prop :=
  ∀ n, P6727959363070291493.a n = A071027 n

end A071027

/-! ## A071027.P6085937378653447162

`A267853(eq[1, A267708(n)])`
-/

namespace A071027.P6085937378653447162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071027.P6085937378653447162

namespace A071027

/-- `A267853(eq[1, A267708(n)])` -/
def P6085937378653447162.Spec : Prop :=
  ∀ n, P6085937378653447162.a n = A071027 n

end A071027

/-! ## A071027.P17940380460724631859

`A267853(record[n*A267708(n)])`
-/

namespace A071027.P17940380460724631859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071027.P17940380460724631859

namespace A071027

/-- `A267853(record[n*A267708(n)])` -/
def P17940380460724631859.Spec : Prop :=
  ∀ n, P17940380460724631859.a n = A071027 n

end A071027

/-! ## A071027.P10049914048550539516

`A071041(A063656(n+1)-1)`
-/

namespace A071027.P10049914048550539516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 (A063656 (n + 1) - 1).toNat

end

end A071027.P10049914048550539516

namespace A071027

/-- `A071041(A063656(n+1)-1)` -/
def P10049914048550539516.Spec : Prop :=
  ∀ n, P10049914048550539516.a n = A071027 n

end A071027

/-! ## A071027.P12871065757227508737

`A267853(record[n%A020703(n+1)])`
-/

namespace A071027.P12871065757227508737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A020703 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071027.P12871065757227508737

namespace A071027

/-- `A267853(record[n%A020703(n+1)])` -/
def P12871065757227508737.Spec : Prop :=
  ∀ n, P12871065757227508737.a n = A071027 n

end A071027

/-! ## A071027.P4415784368301290494

`A071041(eq[1, A267708(n+1)])`
-/

namespace A071027.P4415784368301290494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071027.P4415784368301290494

namespace A071027

/-- `A071041(eq[1, A267708(n+1)])` -/
def P4415784368301290494.Spec : Prop :=
  ∀ n, P4415784368301290494.a n = A071027 n

end A071027

/-! ## A071027.P2421568034981234056

`A230135((n+1)*A060510(n))`
-/

namespace A071027.P2421568034981234056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230135 ((n + 1 : ℤ) * A060510 n).toNat

end

end A071027.P2421568034981234056

namespace A071027

/-- `A230135((n+1)*A060510(n))` -/
def P2421568034981234056.Spec : Prop :=
  ∀ n, P2421568034981234056.a n = A071027 n

end A071027

/-! ## A071027.P18201041542536131001

`A376583(A230135(n+1)+n+1)`
-/

namespace A071027.P18201041542536131001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A230135 (n + 1) + (n + 1 : ℤ)).toNat

end

end A071027.P18201041542536131001

namespace A071027

/-- `A376583(A230135(n+1)+n+1)` -/
def P18201041542536131001.Spec : Prop :=
  ∀ n, P18201041542536131001.a n = A071027 n

end A071027

/-! ## A071027.P348110399631507858

`A230135((n+1)*A000035(A002262(n)))`
-/

namespace A071027.P348110399631507858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230135 ((n + 1 : ℤ) * A000035 (A002262 n).toNat).toNat

end

end A071027.P348110399631507858

namespace A071027

/-- `A230135((n+1)*A000035(A002262(n)))` -/
def P348110399631507858.Spec : Prop :=
  ∀ n, P348110399631507858.a n = A071027 n

end A071027

/-! ## A071027.P1590168898375500575

`A230135((n+1)*A000035(A060511(n)))`
-/

namespace A071027.P1590168898375500575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230135 ((n + 1 : ℤ) * A000035 (A060511 n).toNat).toNat

end

end A071027.P1590168898375500575

namespace A071027

/-- `A230135((n+1)*A000035(A060511(n)))` -/
def P1590168898375500575.Spec : Prop :=
  ∀ n, P1590168898375500575.a n = A071027 n

end A071027

/-!
# A071028: Triangle read by rows giving successive states of cellular automaton generated by "Rule 50".

The programs for A071028, the canonical program `A071028.P9767808195763007383` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071028 has offset 0).

The definition of A071028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071028.P9767808195763007383

`(1+(-1)^A028392(n))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071028

/-- `(1+(-1)^A028392(n))/2` -/
def P9767808195763007383.Spec : Prop :=
  ∀ n, P9767808195763007383.a n = (A071028 n : ℚ)

end A071028

/-! ## A071028.P1625022034588871128

`comp[∑[2*n]]%2`
-/

namespace A071028.P1625022034588871128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A071028.P1625022034588871128

namespace A071028

/-- `comp[∑[2*n]]%2` -/
def P1625022034588871128.Spec : Prop :=
  ∀ n, (P1625022034588871128.a n : ℤ) = A071028 n

end A071028

/-! ## A071028.P3291822981633141741

`and(1, comp[∑[2*n]])`
-/

namespace A071028.P3291822981633141741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A071028.P3291822981633141741

namespace A071028

/-- `and(1, comp[∑[2*n]])` -/
def P3291822981633141741.Spec : Prop :=
  ∀ n, (P3291822981633141741.a n : ℤ) = A071028 n

end A071028

/-! ## A071028.P48743174728999619

`char[comp[comp[∑[n]]+n]]`
-/

namespace A071028.P48743174728999619
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A071028.P48743174728999619

namespace A071028

/-- `char[comp[comp[∑[n]]+n]]` -/
def P48743174728999619.Spec : Prop :=
  ∀ n, (P48743174728999619.a n : ℤ) = A071028 n

end A071028

/-! ## A071028.P413407594968862617

`log2(gcd(2, n-floor(sqrt(n))))`
-/

namespace A071028.P413407594968862617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ((n : ℤ) - (Nat.sqrt n : ℤ)) : ℝ)

end

end A071028.P413407594968862617

namespace A071028

/-- `log2(gcd(2, n-floor(sqrt(n))))` -/
def P413407594968862617.Spec : Prop :=
  ∀ n, P413407594968862617.a n = (A071028 n : ℝ)

end A071028

/-! ## A071028.P10420633649407850979

`(comp[n²+n]%2)²`
-/

namespace A071028.P10420633649407850979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) ^ 2

end

end A071028.P10420633649407850979

namespace A071028

/-- `(comp[n²+n]%2)²` -/
def P10420633649407850979.Spec : Prop :=
  ∀ n, (P10420633649407850979.a n : ℤ) = A071028 n

end A071028

/-! ## A071028.P12749878871041417715

`and(1, comp[n²+n])²`
-/

namespace A071028.P12749878871041417715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A071028.P12749878871041417715

namespace A071028

/-- `and(1, comp[n²+n])²` -/
def P12749878871041417715.Spec : Prop :=
  ∀ n, (P12749878871041417715.a n : ℤ) = A071028 n

end A071028

/-! ## A071028.P1300014883054386256

`(comp[n*(n+1)]%2)^3`
-/

namespace A071028.P1300014883054386256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) ^ 3

end

end A071028.P1300014883054386256

namespace A071028

/-- `(comp[n*(n+1)]%2)^3` -/
def P1300014883054386256.Spec : Prop :=
  ∀ n, (P1300014883054386256.a n : ℤ) = A071028 n

end A071028

/-! ## A071028.P5711482086488594590

`and(1, comp[n*(n+1)])^3`
-/

namespace A071028.P5711482086488594590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 3

end

end A071028.P5711482086488594590

namespace A071028

/-- `and(1, comp[n*(n+1)])^3` -/
def P5711482086488594590.Spec : Prop :=
  ∀ n, (P5711482086488594590.a n : ℤ) = A071028 n

end A071028

/-! ## A071028.P6150948040937696370

`char[n²]+1-a(n-1)` with `a(0)=1`
-/

namespace A071028.P6150948040937696370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (1 - a (n - 1))

end

end A071028.P6150948040937696370

namespace A071028

/-- `char[n²]+1-a(n-1)` -/
def P6150948040937696370.Spec : Prop :=
  ∀ n, P6150948040937696370.a n = A071028 n

end A071028

/-! ## A071028.P3125017010518220260

`1-(a(n-1)-char[n²])` with `a(0)=1`
-/

namespace A071028.P3125017010518220260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A071028.P3125017010518220260

namespace A071028

/-- `1-(a(n-1)-char[n²])` -/
def P3125017010518220260.Spec : Prop :=
  ∀ n, P3125017010518220260.a n = A071028 n

end A071028

/-! ## A071028.P1762016253032452872

`1-∑[A397085(n)]`
-/

namespace A071028.P1762016253032452872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071028.P1762016253032452872

namespace A071028

/-- `1-∑[A397085(n)]` -/
def P1762016253032452872.Spec : Prop :=
  ∀ n, P1762016253032452872.a n = A071028 n

end A071028

/-! ## A071028.P15370080686596674010

`1-char[A195437(n)]`
-/

namespace A071028.P15370080686596674010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071028.P15370080686596674010

namespace A071028

/-- `1-char[A195437(n)]` -/
def P15370080686596674010.Spec : Prop :=
  ∀ n, P15370080686596674010.a n = A071028 n

end A071028

/-! ## A071028.P2012099329867854994

`gcd(2, A028391(n))-1`
-/

namespace A071028.P2012099329867854994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A028391 n) : ℤ) - 1

end

end A071028.P2012099329867854994

namespace A071028

/-- `gcd(2, A028391(n))-1` -/
def P2012099329867854994.Spec : Prop :=
  ∀ n, P2012099329867854994.a n = A071028 n

end A071028

/-! ## A071028.P12885106038490625941

`A010052(n*a(n-1))` with `a(0)=1`
-/

namespace A071028.P12885106038490625941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010052 ((n : ℤ) * a (n - 1)).toNat

end

end A071028.P12885106038490625941

namespace A071028

/-- `A010052(n*a(n-1))` -/
def P12885106038490625941.Spec : Prop :=
  ∀ n, P12885106038490625941.a n = A071028 n

end A071028

/-! ## A071028.P15473730416080822411

`A070886(n*a(n-1))` with `a(0)=1`
-/

namespace A071028.P15473730416080822411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070886 ((n : ℤ) * a (n - 1)).toNat

end

end A071028.P15473730416080822411

namespace A071028

/-- `A070886(n*a(n-1))` -/
def P15473730416080822411.Spec : Prop :=
  ∀ n, P15473730416080822411.a n = A071028 n

end A071028

/-! ## A071028.P4467262696873078497

`A010052(n^a(n-1))` with `a(0)=1`
-/

namespace A071028.P4467262696873078497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010052 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A071028.P4467262696873078497

namespace A071028

/-- `A010052(n^a(n-1))` -/
def P4467262696873078497.Spec : Prop :=
  ∀ n, P4467262696873078497.a n = A071028 n

end A071028

/-! ## A071028.P17937758231081405673

`A070886(n^a(n-1))` with `a(0)=1`
-/

namespace A071028.P17937758231081405673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070886 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A071028.P17937758231081405673

namespace A071028

/-- `A070886(n^a(n-1))` -/
def P17937758231081405673.Spec : Prop :=
  ∀ n, P17937758231081405673.a n = A071028 n

end A071028

/-! ## A071028.P669178003132960923

`(a(n-1)-A049240(n))²` with `a(0)=1`
-/

namespace A071028.P669178003132960923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A049240 n) ^ 2

end

end A071028.P669178003132960923

namespace A071028

/-- `(a(n-1)-A049240(n))²` -/
def P669178003132960923.Spec : Prop :=
  ∀ n, P669178003132960923.a n = A071028 n

end A071028

/-! ## A071028.P9560923317087360014

`floor(acot(A333275(n+1)²²²))`
-/

namespace A071028.P9560923317087360014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (((A333275 (n + 1) ^ 2) ^ 2) ^ 2 : ℝ)⌋

end

end A071028.P9560923317087360014

namespace A071028

/-- `floor(acot(A333275(n+1)²²²))` -/
def P9560923317087360014.Spec : Prop :=
  ∀ n, P9560923317087360014.a n = A071028 n

end A071028

/-!
# A071029: Triangle read by rows giving successive states of cellular automaton generated by "Rule 22".

The programs for A071029, the canonical program `A071029.P18335059563736865083` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071029 has offset 0).

The definition of A071029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071029.P3808172449820098227

`A071030(n)*A071035(n)`
-/

namespace A071029.P3808172449820098227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 n * A071035 n

end

end A071029.P3808172449820098227

namespace A071029

/-- `A071030(n)*A071035(n)` -/
def P3808172449820098227.Spec : Prop :=
  ∀ n, P3808172449820098227.a n = A071029 n

end A071029

/-! ## A071029.P14438345840107649048

`A071030(n)*A249133(n)`
-/

namespace A071029.P14438345840107649048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 n * A249133 n

end

end A071029.P14438345840107649048

namespace A071029

/-- `A071030(n)*A249133(n)` -/
def P14438345840107649048.Spec : Prop :=
  ∀ n, P14438345840107649048.a n = A071029 n

end A071029

/-! ## A071029.P18335059563736865083

`A070886(or(n, A021913(n)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A071029

/-- `A070886(or(n, A021913(n)))` -/
def P18335059563736865083.Spec : Prop :=
  ∀ n, P18335059563736865083.a n = A071029 n

theorem P18335059563736865083.correct : P18335059563736865083.Spec := by
  intro n
  simp only [A071029]

end A071029

/-! ## A071029.P4090572680751933230

`A070886(and(∑[n], A070886(n+1))+n)`
-/

namespace A071029.P4090572680751933230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A070886 (n + 1)) + (n : ℤ)).toNat

end

end A071029.P4090572680751933230

namespace A071029

/-- `A070886(and(∑[n], A070886(n+1))+n)` -/
def P4090572680751933230.Spec : Prop :=
  ∀ n, P4090572680751933230.a n = A071029 n

end A071029

/-! ## A071029.P14560366948470718015

`A211226(A161983(n))%2`
-/

namespace A071029.P14560366948470718015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211226 (A161983 n).toNat) 2

end

end A071029.P14560366948470718015

namespace A071029

/-- `A211226(A161983(n))%2` -/
def P14560366948470718015.Spec : Prop :=
  ∀ n, P14560366948470718015.a n = A071029 n

end A071029

/-! ## A071029.P1522244874699538124

`and(A058294(A071035(n)+n), A071035(n))`
-/

namespace A071029.P1522244874699538124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058294 (A071035 n + (n : ℤ)).toNat) (A071035 n)

end

end A071029.P1522244874699538124

namespace A071029

/-- `and(A058294(A071035(n)+n), A071035(n))` -/
def P1522244874699538124.Spec : Prop :=
  ∀ n, P1522244874699538124.a n = A071029 n

end A071029

/-! ## A071029.P17863185048682932018

`and(A058294(n+1), A071035(n))`
-/

namespace A071029.P17863185048682932018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058294 (n + 1)) (A071035 n)

end

end A071029.P17863185048682932018

namespace A071029

/-- `and(A058294(n+1), A071035(n))` -/
def P17863185048682932018.Spec : Prop :=
  ∀ n, P17863185048682932018.a n = A071029 n

end A071029

/-! ## A071029.P1867085213765530507

`and(A071030(n), A140751(n))`
-/

namespace A071029.P1867085213765530507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071030 n) (A140751 n)

end

end A071029.P1867085213765530507

namespace A071029

/-- `and(A071030(n), A140751(n))` -/
def P1867085213765530507.Spec : Prop :=
  ∀ n, P1867085213765530507.a n = A071029 n

end A071029

/-! ## A071029.P12674410931214658349

`and(A071041(n), A140751(n))`
-/

namespace A071029.P12674410931214658349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071041 n) (A140751 n)

end

end A071029.P12674410931214658349

namespace A071029

/-- `and(A071041(n), A140751(n))` -/
def P12674410931214658349.Spec : Prop :=
  ∀ n, P12674410931214658349.a n = A071029 n

end A071029

/-! ## A071029.P12518893421422378365

`A162246(n)%2`
-/

namespace A071029.P12518893421422378365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162246 n) 2

end

end A071029.P12518893421422378365

namespace A071029

/-- `A162246(n)%2` -/
def P12518893421422378365.Spec : Prop :=
  ∀ n, P12518893421422378365.a n = A071029 n

end A071029

/-!
# A071030: Triangle read by rows giving successive states of cellular automaton generated by "Rule 54".

The programs for A071030, the canonical program `A071030.P11714086120576198242` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071030 has offset 0).

The definition of A071030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071030.P11714086120576198242

`(A000196(n)+∑[∑[n+1]])%2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071030

/-- `(A000196(n)+∑[∑[n+1]])%2` -/
def P11714086120576198242.Spec : Prop :=
  ∀ n, P11714086120576198242.a n = A071030 n

theorem P11714086120576198242.correct : P11714086120576198242.Spec := by
  intro n
  simp only [A071030]

end A071030

/-! ## A071030.P16426935674276997004

`∑[A258998(n)+∑[n+1]]%2`
-/

namespace A071030.P16426935674276997004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A071030.P16426935674276997004

namespace A071030

/-- `∑[A258998(n)+∑[n+1]]%2` -/
def P16426935674276997004.Spec : Prop :=
  ∀ n, P16426935674276997004.a n = A071030 n

end A071030

/-! ## A071030.P2810766981103053463

`and(1, A006218(n)+∑[∑[n+1]])`
-/

namespace A071030.P2810766981103053463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006218 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A071030.P2810766981103053463

namespace A071030

/-- `and(1, A006218(n)+∑[∑[n+1]])` -/
def P2810766981103053463.Spec : Prop :=
  ∀ n, P2810766981103053463.a n = A071030 n

end A071030

/-! ## A071030.P18093775022659791383

`and(1, ∑[∑[A267520(n+1)+n]])`
-/

namespace A071030.P18093775022659791383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071030.P18093775022659791383

namespace A071030

/-- `and(1, ∑[∑[A267520(n+1)+n]])` -/
def P18093775022659791383.Spec : Prop :=
  ∀ n, P18093775022659791383.a n = A071030 n

end A071030

/-! ## A071030.P2274255470491616369

`A000035(floor(sqrt(n))+∑[n+1]%(n+2))`
-/

namespace A071030.P2274255470491616369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.sqrt n + (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2))

end

end A071030.P2274255470491616369

namespace A071030

/-- `A000035(floor(sqrt(n))+∑[n+1]%(n+2))` -/
def P2274255470491616369.Spec : Prop :=
  ∀ n, P2274255470491616369.a n = A071030 n

end A071030

/-! ## A071030.P18012166794797507058

`(A176895(n)+A006218(n))%2`
-/

namespace A071030.P18012166794797507058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176895 n + A006218 n) 2

end

end A071030.P18012166794797507058

namespace A071030

/-- `(A176895(n)+A006218(n))%2` -/
def P18012166794797507058.Spec : Prop :=
  ∀ n, P18012166794797507058.a n = A071030 n

end A071030

/-! ## A071030.P6525309054702459568

`char[eq[A166486(n), A267034(n+1)]]`
-/

namespace A071030.P6525309054702459568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A071030.P6525309054702459568

namespace A071030

/-- `char[eq[A166486(n), A267034(n+1)]]` -/
def P6525309054702459568.Spec : Prop :=
  ∀ n, (P6525309054702459568.a n : ℤ) = A071030 n

end A071030

/-! ## A071030.P4055986408311804620

`(A006218(n)-A166486(n)+1)%2`
-/

namespace A071030.P4055986408311804620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 n - A166486 n + 1) 2

end

end A071030.P4055986408311804620

namespace A071030

/-- `(A006218(n)-A166486(n)+1)%2` -/
def P4055986408311804620.Spec : Prop :=
  ∀ n, P4055986408311804620.a n = A071030 n

end A071030

/-! ## A071030.P681718265692386671

`A000035(A053186(n)+gcd(n, A000125(n)))`
-/

namespace A071030.P681718265692386671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A053186 n + (Int.gcd (n : ℤ) (A000125 n) : ℤ)).toNat

end

end A071030.P681718265692386671

namespace A071030

/-- `A000035(A053186(n)+gcd(n, A000125(n)))` -/
def P681718265692386671.Spec : Prop :=
  ∀ n, P681718265692386671.a n = A071030 n

end A071030

/-! ## A071030.P4034058050107299745

`A071037(A290562(n+1))`
-/

namespace A071030.P4034058050107299745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (A290562 (n + 1)).toNat

end

end A071030.P4034058050107299745

namespace A071030

/-- `A071037(A290562(n+1))` -/
def P4034058050107299745.Spec : Prop :=
  ∀ n, P4034058050107299745.a n = A071030 n

end A071030

/-! ## A071030.P4077533707248501988

`(A006218(n)+Δ[A095667(n)])%2`
-/

namespace A071030.P4077533707248501988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 n + (f1 (n + 1) - f1 n)) 2

end

end A071030.P4077533707248501988

namespace A071030

/-- `(A006218(n)+Δ[A095667(n)])%2` -/
def P4077533707248501988.Spec : Prop :=
  ∀ n, P4077533707248501988.a n = A071030 n

end A071030

/-! ## A071030.P3809662300780993343

`A118111(A000034(n)+n)*A118111(n)`
-/

namespace A071030.P3809662300780993343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (A000034 n + (n : ℤ)).toNat * A118111 n

end

end A071030.P3809662300780993343

namespace A071030

/-- `A118111(A000034(n)+n)*A118111(n)` -/
def P3809662300780993343.Spec : Prop :=
  ∀ n, P3809662300780993343.a n = A071030 n

end A071030

/-! ## A071030.P4363407894186531257

`and(Δ[(n+1)*A118111(n+1)], A118111(n))`
-/

namespace A071030.P4363407894186531257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A118111 n)

end

end A071030.P4363407894186531257

namespace A071030

/-- `and(Δ[(n+1)*A118111(n+1)], A118111(n))` -/
def P4363407894186531257.Spec : Prop :=
  ∀ n, P4363407894186531257.a n = A071030 n

end A071030

/-! ## A071030.P17661838215961869304

`A204175(A047487(n+1))`
-/

namespace A071030.P17661838215961869304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204175 (A047487 (n + 1)).toNat

end

end A071030.P17661838215961869304

namespace A071030

/-- `A204175(A047487(n+1))` -/
def P17661838215961869304.Spec : Prop :=
  ∀ n, P17661838215961869304.a n = A071030 n

end A071030

/-! ## A071030.P2726422700645132674

`A204171(A047409(n+2))`
-/

namespace A071030.P2726422700645132674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204171 (A047409 (n + 2)).toNat

end

end A071030.P2726422700645132674

namespace A071030

/-- `A204171(A047409(n+2))` -/
def P2726422700645132674.Spec : Prop :=
  ∀ n, P2726422700645132674.a n = A071030 n

end A071030

/-! ## A071030.P4110028654354046811

`A000035(xor(A006218(n), A176895(n)))`
-/

namespace A071030.P4110028654354046811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor (A006218 n) (A176895 n)).toNat

end

end A071030.P4110028654354046811

namespace A071030

/-- `A000035(xor(A006218(n), A176895(n)))` -/
def P4110028654354046811.Spec : Prop :=
  ∀ n, P4110028654354046811.a n = A071030 n

end A071030

/-! ## A071030.P5629257854395116163

`A000035(A176895(n)+A006218(n))`
-/

namespace A071030.P5629257854395116163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A176895 n + A006218 n).toNat

end

end A071030.P5629257854395116163

namespace A071030

/-- `A000035(A176895(n)+A006218(n))` -/
def P5629257854395116163.Spec : Prop :=
  ∀ n, P5629257854395116163.a n = A071030 n

end A071030

/-!
# A071031: Triangle read by rows giving successive states of cellular automaton generated by "Rule 62".

The programs for A071031, there is no canonical definition to state claims against.
-/

/-! ## A071031.P8325791285755101125

`A071034(A020703(n+1)-1)`
-/

namespace A071031.P8325791285755101125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071034 (A020703 (n + 1) - 1).toNat

end

end A071031.P8325791285755101125

/-! ## A071031.P4667175227912692426

`A071034(A020703(n+2))`
-/

namespace A071031.P4667175227912692426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071034 (A020703 (n + 2)).toNat

end

end A071031.P4667175227912692426

/-! ## A071031.P17583229949002542571

`A266982(A256055(A027960(n)+2))`
-/

namespace A071031.P17583229949002542571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (A256055 (A027960 n + 2).toNat).toNat

end

end A071031.P17583229949002542571

/-! ## A071031.P13574875897760478305

`A083634(A027960(n))%2`
-/

namespace A071031.P13574875897760478305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083634 (A027960 n).toNat) 2

end

end A071031.P13574875897760478305

/-! ## A071031.P14613852669063976265

`A265695(A281873(n+1)-A265695(n))`
-/

namespace A071031.P14613852669063976265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265695 (A281873 (n + 1) - A265695 n).toNat

end

end A071031.P14613852669063976265

/-!
# A071032: Triangle read by rows giving successive states of cellular automaton generated by "Rule 86".

The programs for A071032, there is no canonical definition to state claims against.
-/

/-! ## A071032.P5999933163876373752

`1-A226464(n)`
-/

namespace A071032.P5999933163876373752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226464 n

end

end A071032.P5999933163876373752

/-! ## A071032.P2541685127305097972

`A070950(A020703(n+2))`
-/

namespace A071032.P2541685127305097972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (A020703 (n + 2)).toNat

end

end A071032.P2541685127305097972

/-! ## A071032.P371397069238971336

`A000007(n*A226464(n))`
-/

namespace A071032.P371397069238971336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A226464 n).toNat

end

end A071032.P371397069238971336

/-! ## A071032.P5225804179731795095

`A000122(n*A226464(n))`
-/

namespace A071032.P5225804179731795095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n : ℤ) * A226464 n).toNat

end

end A071032.P5225804179731795095

/-! ## A071032.P3699260061269408555

`A057428(n*A226464(n))+1`
-/

namespace A071032.P3699260061269408555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((n : ℤ) * A226464 n).toNat + 1

end

end A071032.P3699260061269408555

/-! ## A071032.P9159955444091382613

`A000045(C(2, n*A226464(n)))`
-/

namespace A071032.P9159955444091382613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 ((n : ℤ) * A226464 n).toNat)

end

end A071032.P9159955444091382613

/-! ## A071032.P10897632195271342015

`A000045(C(n, A226464(n)+n))`
-/

namespace A071032.P10897632195271342015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (A226464 n + (n : ℤ)).toNat)

end

end A071032.P10897632195271342015

/-! ## A071032.P14437063396369620873

`A051023(A226464(n)*A327985(n+1))`
-/

namespace A071032.P14437063396369620873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (A226464 n * A327985 (n + 1)).toNat

end

end A071032.P14437063396369620873

/-! ## A071032.P3470494246098876648

`A000010(A070952(n*A226464(n)))%2`
-/

namespace A071032.P3470494246098876648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A070952 ((n : ℤ) * A226464 n).toNat).toNat) 2

end

end A071032.P3470494246098876648

/-! ## A071032.P8053447864949760501

`A051023(eq[0, A051023(n)]*A226464(n))`
-/

namespace A071032.P8053447864949760501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A226464 n).toNat

end

end A071032.P8053447864949760501

/-! ## A071032.P4373594601015023948

`C(A007318(n), A226464(n)+A007318(n))`
-/

namespace A071032.P4373594601015023948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n).toNat (A226464 n + A007318 n).toNat

end

end A071032.P4373594601015023948

/-! ## A071032.P16573787428211102393

`(A226464(n)+A057428(n+1))²`
-/

namespace A071032.P16573787428211102393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226464 n + A057428 (n + 1)) ^ 2

end

end A071032.P16573787428211102393

/-! ## A071032.P5295735695151720146

`C(2, A000041(n)*A226464(n))`
-/

namespace A071032.P5295735695151720146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000041 n * A226464 n).toNat

end

end A071032.P5295735695151720146

/-! ## A071032.P13634379403610462625

`A000035(A226464(n)+Δ[n²])`
-/

namespace A071032.P13634379403610462625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A226464 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A071032.P13634379403610462625

/-! ## A071032.P5888839957817294048

`(A226464(n)+A008683(A030433(n+1)))²`
-/

namespace A071032.P5888839957817294048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226464 n + A008683 (A030433 (n + 1)).toNat) ^ 2

end

end A071032.P5888839957817294048

/-! ## A071032.P5030033647759426439

`A027656(A000040(n+1)*A226464(n))`
-/

namespace A071032.P5030033647759426439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A000040 (n + 1) * A226464 n).toNat

end

end A071032.P5030033647759426439

/-! ## A071032.P12995320125796237070

`A136521(A006005(n+1)*A226464(n))`
-/

namespace A071032.P12995320125796237070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136521 (A006005 (n + 1) * A226464 n).toNat

end

end A071032.P12995320125796237070

/-! ## A071032.P6794413984099287435

`(A226464(n)+A008683(A174441(n+1)))²`
-/

namespace A071032.P6794413984099287435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226464 n + A008683 (A174441 (n + 1)).toNat) ^ 2

end

end A071032.P6794413984099287435

/-! ## A071032.P8856300180230233268

`C(2, A000108(n)*A226464(n))`
-/

namespace A071032.P8856300180230233268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000108 n * A226464 n).toNat

end

end A071032.P8856300180230233268

/-! ## A071032.P3363314265637128034

`C(A000108(n), A000108(A226464(n)+n))`
-/

namespace A071032.P3363314265637128034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 n).toNat (A000108 (A226464 n + (n : ℤ)).toNat).toNat

end

end A071032.P3363314265637128034

/-!
# A071033: a(n) = n-th state of cellular automaton generated by "Rule 94" when started with a single ON cell.

The programs for A071033, there is no canonical definition to state claims against.
-/

/-! ## A071033.P4050723064848015158

`A342040(A277954(n))`
-/

namespace A071033.P4050723064848015158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342040 (A277954 n).toNat

end

end A071033.P4050723064848015158

/-! ## A071033.P2662871031881118144

`A007088(A118101(n))`
-/

namespace A071033.P2662871031881118144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A118101 n).toNat

end

end A071033.P2662871031881118144

/-!
# A071034: Triangle read by rows giving successive states of cellular automaton generated by "Rule 118".

The programs for A071034, there is no canonical definition to state claims against.
-/

/-! ## A071034.P8545449507594152744

`A071031(A020703(n+1)-1)`
-/

namespace A071034.P8545449507594152744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071031 (A020703 (n + 1) - 1).toNat

end

end A071034.P8545449507594152744

/-! ## A071034.P259463578010818619

`A071031(A020703(n+2))`
-/

namespace A071034.P259463578010818619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071031 (A020703 (n + 2)).toNat

end

end A071034.P259463578010818619

/-! ## A071034.P415919919520739502

`A071031(A082375(n)+1+n)`
-/

namespace A071034.P415919919520739502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071031 (A082375 n + 1 + (n : ℤ)).toNat

end

end A071034.P415919919520739502

/-! ## A071034.P13287036085698807306

`A071031(A122196(n+1)+n)`
-/

namespace A071034.P13287036085698807306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071031 (A122196 (n + 1) + (n : ℤ)).toNat

end

end A071034.P13287036085698807306

/-! ## A071034.P6789480132310988636

`A296213(A245712(3*(n+1)))+A071032(n)`
-/

namespace A071034.P6789480132310988636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296213 (A245712 (3 * (n + 1))).toNat + A071032 n

end

end A071034.P6789480132310988636

/-!
# A071035: Triangle read by rows giving successive states of cellular automaton generated by "Rule 126".

The programs for A071035, there is no canonical definition to state claims against.
-/

/-! ## A071035.P7032916734317892230

`(1-A267417(n))^n`
-/

namespace A071035.P7032916734317892230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A267417 n) ^ n

end

end A071035.P7032916734317892230

/-! ## A071035.P612266551617829715

`1-A267417(A028310(n))`
-/

namespace A071035.P612266551617829715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267417 (A028310 n).toNat

end

end A071035.P612266551617829715

/-! ## A071035.P2522438774650309392

`A054977(n)-A267417(n)`
-/

namespace A071035.P2522438774650309392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A267417 n

end

end A071035.P2522438774650309392

/-! ## A071035.P6880132560739385425

`A002448(n*A267417(n))`
-/

namespace A071035.P6880132560739385425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 ((n : ℤ) * A267417 n).toNat

end

end A071035.P6880132560739385425

/-! ## A071035.P14253471010660012689

`A010052(n*A267417(n))`
-/

namespace A071035.P14253471010660012689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) * A267417 n).toNat

end

end A071035.P14253471010660012689

/-! ## A071035.P1141705766784440161

`xor(A057427(n), A267417(n))`
-/

namespace A071035.P1141705766784440161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A267417 n)

end

end A071035.P1141705766784440161

/-! ## A071035.P1174201877984642749

`1-A267417(A004277(n)-n)`
-/

namespace A071035.P1174201877984642749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267417 (A004277 n - (n : ℤ)).toNat

end

end A071035.P1174201877984642749

/-! ## A071035.P13746013731385976012

`1-A057427(n*A267417(n))`
-/

namespace A071035.P13746013731385976012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A267417 n).toNat

end

end A071035.P13746013731385976012

/-! ## A071035.P192322053056273951

`A036987(2*n*A267417(n))`
-/

namespace A071035.P192322053056273951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * ((n : ℤ) * A267417 n)).toNat

end

end A071035.P192322053056273951

/-! ## A071035.P14209347510224675601

`A267417(n%(n-A267417(n)))`
-/

namespace A071035.P14209347510224675601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (Int.tmod (n : ℤ) ((n : ℤ) - A267417 n)).toNat

end

end A071035.P14209347510224675601

/-! ## A071035.P17720983077441965853

`A036987(A001316(n*A267417(n)))`
-/

namespace A071035.P17720983077441965853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001316 ((n : ℤ) * A267417 n).toNat).toNat

end

end A071035.P17720983077441965853

/-! ## A071035.P1450063148793145228

`A036987(n)+A267442(n)-A267417(n)`
-/

namespace A071035.P1450063148793145228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n + (A267442 n - A267417 n)

end

end A071035.P1450063148793145228

/-! ## A071035.P17654388372024242632

`A209229(n+1)+A267442(n)-A267417(n)`
-/

namespace A071035.P17654388372024242632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1) + (A267442 n - A267417 n)

end

end A071035.P17654388372024242632

/-! ## A071035.P15303675133062670475

`A035263(A267417(n)+A194755(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A071035.P15303675133062670475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035263 (A267417 n + A194755 (a (n - 1) + 1).toNat + 1).toNat

end

end A071035.P15303675133062670475

/-! ## A071035.P3458818721112314976

`A002034(A194755(a(n-1)+1)+1)-A267417(n)` with `a(0)=1`
-/

namespace A071035.P3458818721112314976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002034 (A194755 (a (n - 1) + 1).toNat + 1).toNat - A267417 n

end

end A071035.P3458818721112314976

/-! ## A071035.P11865008178146471972

`A267417(A001222(n+1)*A267417(n)*A001222(n+1))`
-/

namespace A071035.P11865008178146471972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A001222 (n + 1) * A267417 n * A001222 (n + 1)).toNat

end

end A071035.P11865008178146471972

/-! ## A071035.P17822473554505948586

`A036987(A169699(n*A267417(n)))`
-/

namespace A071035.P17822473554505948586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A169699 ((n : ℤ) * A267417 n).toNat).toNat

end

end A071035.P17822473554505948586

/-! ## A071035.P11916616475104623479

`A036987((n*A267417(n))²)`
-/

namespace A071035.P11916616475104623479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (((n : ℤ) * A267417 n) ^ 2).toNat

end

end A071035.P11916616475104623479

/-! ## A071035.P4519093792804474761

`A267417((n*A267417(n))²)`
-/

namespace A071035.P4519093792804474761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (((n : ℤ) * A267417 n) ^ 2).toNat

end

end A071035.P4519093792804474761

/-! ## A071035.P5744708357716263928

`A267417(n*n*A267417(n))`
-/

namespace A071035.P5744708357716263928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 ((n : ℤ) * ((n : ℤ) * A267417 n)).toNat

end

end A071035.P5744708357716263928

/-!
# A071036: Triangle read by rows giving successive states of cellular automaton generated by "Rule 150" when started with a single ON cell.

The programs for A071036, there is no canonical definition to state claims against.
-/

/-! ## A071036.P11876364306411512199

`A027907(n)%2`
-/

namespace A071036.P11876364306411512199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 n) 2

end

end A071036.P11876364306411512199

/-! ## A071036.P465137750754765964

`A059780(n)%2`
-/

namespace A071036.P465137750754765964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059780 n) 2

end

end A071036.P465137750754765964

/-! ## A071036.P8723852380096757567

`A084602(n)%2`
-/

namespace A071036.P8723852380096757567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084602 n) 2

end

end A071036.P8723852380096757567

/-! ## A071036.P3521664063646674501

`A272866(n)%2`
-/

namespace A071036.P3521664063646674501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272866 n) 2

end

end A071036.P3521664063646674501

/-! ## A071036.P5572660689723916108

`and(1, A084610(n))`
-/

namespace A071036.P5572660689723916108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A084610 n)

end

end A071036.P5572660689723916108

/-! ## A071036.P12862306710094516774

`and(1, A084614(n))`
-/

namespace A071036.P12862306710094516774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A084614 n)

end

end A071036.P12862306710094516774

/-! ## A071036.P18382475611293754040

`A000007(A059781(n))`
-/

namespace A071036.P18382475611293754040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A059781 n).toNat

end

end A071036.P18382475611293754040

/-! ## A071036.P2553480417078386520

`A240465(A059781(n)²)`
-/

namespace A071036.P2553480417078386520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A059781 n ^ 2).toNat

end

end A071036.P2553480417078386520

/-! ## A071036.P16095463354793444417

`A240465(A059781(n)+2)`
-/

namespace A071036.P16095463354793444417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A059781 n + 2).toNat

end

end A071036.P16095463354793444417

/-! ## A071036.P14683377113387945399

`and(1, A027907(A028310(n)))`
-/

namespace A071036.P14683377113387945399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027907 (A028310 n).toNat)

end

end A071036.P14683377113387945399

/-! ## A071036.P17071892192979435601

`and(1, A027907(n)+A024701(n+1))`
-/

namespace A071036.P17071892192979435601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027907 n + A024701 (n + 1))

end

end A071036.P17071892192979435601

/-! ## A071036.P730508730407410924

`A299398(lcm(2, A027907(n))/A027907(n))`
-/

namespace A071036.P730508730407410924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (SequenceMachineLib.roundAway ((Int.lcm 2 (A027907 n) : ℚ) / (A027907 n : ℚ))).toNat

end

end A071036.P730508730407410924

/-! ## A071036.P11790580819566094018

`A026374(A007606(n+1)-1)%2`
-/

namespace A071036.P11790580819566094018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026374 (A007606 (n + 1) - 1).toNat) 2

end

end A071036.P11790580819566094018

/-! ## A071036.P908231442594712247

`A182153(2*n)%2`
-/

namespace A071036.P908231442594712247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182153 (2 * n)) 2

end

end A071036.P908231442594712247

/-! ## A071036.P13716154925025861666

`and(A000035(2*n+1), A027907(n))`
-/

namespace A071036.P13716154925025861666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 (2 * n + 1)) (A027907 n)

end

end A071036.P13716154925025861666

/-! ## A071036.P12359330350545464607

`and(A001511(2*n+1), A027907(n))`
-/

namespace A071036.P12359330350545464607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (2 * n + 1)) (A027907 n)

end

end A071036.P12359330350545464607

/-! ## A071036.P6365782307823531954

`and(1, A156918(n))`
-/

namespace A071036.P6365782307823531954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A156918 n)

end

end A071036.P6365782307823531954

/-! ## A071036.P13968400432074268098

`and(1, A156890(n+1))`
-/

namespace A071036.P13968400432074268098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A156890 (n + 1))

end

end A071036.P13968400432074268098

/-! ## A071036.P12571257355102670112

`A291845(n)%2`
-/

namespace A071036.P12571257355102670112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291845 n) 2

end

end A071036.P12571257355102670112

/-! ## A071036.P3906868879385496904

`A000007(or(1, A291845(n))-A291845(n))`
-/

namespace A071036.P3906868879385496904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lor 1 (A291845 n) - A291845 n).toNat

end

end A071036.P3906868879385496904

/-!
# A071037: Triangle read by rows giving successive states of cellular automaton generated by "Rule 158".

The programs for A071037, the canonical program `A071037.P9726721186916925675` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071037 has offset 0).

The definition of A071037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071037.P4793969078325812405

`A118111(xor(n, A071030(n)))`
-/

namespace A071037.P4793969078325812405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (Int.xor (n : ℤ) (A071030 n)).toNat

end

end A071037.P4793969078325812405

namespace A071037

/-- `A118111(xor(n, A071030(n)))` -/
def P4793969078325812405.Spec : Prop :=
  ∀ n, P4793969078325812405.a n = A071037 n

end A071037

/-! ## A071037.P11189881926868990568

`A071040(A020703(n+1)-1)`
-/

namespace A071037.P11189881926868990568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 (A020703 (n + 1) - 1).toNat

end

end A071037.P11189881926868990568

namespace A071037

/-- `A071040(A020703(n+1)-1)` -/
def P11189881926868990568.Spec : Prop :=
  ∀ n, P11189881926868990568.a n = A071037 n

end A071037

/-! ## A071037.P9726721186916925675

`A071030(A052928(n*A071030(n+1)))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071037

/-- `A071030(A052928(n*A071030(n+1)))` -/
def P9726721186916925675.Spec : Prop :=
  ∀ n, P9726721186916925675.a n = A071037 n

theorem P9726721186916925675.correct : P9726721186916925675.Spec := by
  intro n
  simp only [A071037]

end A071037

/-! ## A071037.P428486886521140285

`A118111(n-A000035(n*A118111(n)))`
-/

namespace A071037.P428486886521140285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 ((n : ℤ) - A000035 ((n : ℤ) * A118111 n).toNat).toNat

end

end A071037.P428486886521140285

namespace A071037

/-- `A118111(n-A000035(n*A118111(n)))` -/
def P428486886521140285.Spec : Prop :=
  ∀ n, P428486886521140285.a n = A071037 n

end A071037

/-! ## A071037.P13708648933704031378

`A071030(xor(n*A071030(n+1), A071030(n)))`
-/

namespace A071037.P13708648933704031378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (Int.xor ((n : ℤ) * A071030 (n + 1)) (A071030 n)).toNat

end

end A071037.P13708648933704031378

namespace A071037

/-- `A071030(xor(n*A071030(n+1), A071030(n)))` -/
def P13708648933704031378.Spec : Prop :=
  ∀ n, P13708648933704031378.a n = A071037 n

end A071037

/-! ## A071037.P4329466924816963447

`A071040(A020703(n+2))`
-/

namespace A071037.P4329466924816963447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 (A020703 (n + 2)).toNat

end

end A071037.P4329466924816963447

namespace A071037

/-- `A071040(A020703(n+2))` -/
def P4329466924816963447.Spec : Prop :=
  ∀ n, P4329466924816963447.a n = A071037 n

end A071037

/-! ## A071037.P17373513289262304508

`A118111(n-A000035(A032766(n)))`
-/

namespace A071037.P17373513289262304508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 ((n : ℤ) - A000035 (A032766 n).toNat).toNat

end

end A071037.P17373513289262304508

namespace A071037

/-- `A118111(n-A000035(A032766(n)))` -/
def P17373513289262304508.Spec : Prop :=
  ∀ n, P17373513289262304508.a n = A071037 n

end A071037

/-! ## A071037.P3363860242993074545

`A118111(1-A000034(A032766(n))+n)`
-/

namespace A071037.P3363860242993074545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (1 - A000034 (A032766 n).toNat + (n : ℤ)).toNat

end

end A071037.P3363860242993074545

namespace A071037

/-- `A118111(1-A000034(A032766(n))+n)` -/
def P3363860242993074545.Spec : Prop :=
  ∀ n, P3363860242993074545.a n = A071037 n

end A071037

/-! ## A071037.P15364705196752068112

`A118111(n+1-A000034(A000217(n)))`
-/

namespace A071037.P15364705196752068112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 ((n + 1 : ℤ) - A000034 (A000217 n).toNat).toNat

end

end A071037.P15364705196752068112

namespace A071037

/-- `A118111(n+1-A000034(A000217(n)))` -/
def P15364705196752068112.Spec : Prop :=
  ∀ n, P15364705196752068112.a n = A071037 n

end A071037

/-!
# A071038: Triangle read by rows giving successive states of cellular automaton generated by "Rule 182".

The programs for A071038, the canonical program `A071038.P13125423546124706682` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071038 has offset 0).

The definition of A071038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071038.P13125423546124706682

`A057427(and(A071797(n+1), A080883(n)))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071038

/-- `A057427(and(A071797(n+1), A080883(n)))` -/
def P13125423546124706682.Spec : Prop :=
  ∀ n, P13125423546124706682.a n = A071038 n

theorem P13125423546124706682.correct : P13125423546124706682.Spec := by
  intro n
  simp only [A071038]

end A071038

/-! ## A071038.P15929276063608361462

`A266754(∑[A000122(n)+1])`
-/

namespace A071038.P15929276063608361462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266754 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071038.P15929276063608361462

namespace A071038

/-- `A266754(∑[A000122(n)+1])` -/
def P15929276063608361462.Spec : Prop :=
  ∀ n, P15929276063608361462.a n = A071038 n

end A071038

/-! ## A071038.P6962658835629996761

`A266754(eq[A000122(n+1), A000122(n)])`
-/

namespace A071038.P6962658835629996761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266754 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071038.P6962658835629996761

namespace A071038

/-- `A266754(eq[A000122(n+1), A000122(n)])` -/
def P6962658835629996761.Spec : Prop :=
  ∀ n, P6962658835629996761.a n = A071038 n

end A071038

/-! ## A071038.P8241895994652342973

`A266754(eq[A258998(n+1), A258998(n)])`
-/

namespace A071038.P8241895994652342973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266754 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071038.P8241895994652342973

namespace A071038

/-- `A266754(eq[A258998(n+1), A258998(n)])` -/
def P8241895994652342973.Spec : Prop :=
  ∀ n, P8241895994652342973.a n = A071038 n

end A071038

/-! ## A071038.P4613323632317724426

`1-A070886(eq[A258998(n+1), A258998(n)])`
-/

namespace A071038.P4613323632317724426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070886 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071038.P4613323632317724426

namespace A071038

/-- `1-A070886(eq[A258998(n+1), A258998(n)])` -/
def P4613323632317724426.Spec : Prop :=
  ∀ n, P4613323632317724426.a n = A071038 n

end A071038

/-! ## A071038.P15543257805882801795

`log2(gcd(2, Δ[A247642(n)]))`
-/

namespace A071038.P15543257805882801795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247642 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (f1 (n + 1) - f1 n) : ℝ)

end

end A071038.P15543257805882801795

namespace A071038

/-- `log2(gcd(2, Δ[A247642(n)]))` -/
def P15543257805882801795.Spec : Prop :=
  ∀ n, P15543257805882801795.a n = (A071038 n : ℝ)

end A071038

/-! ## A071038.P18158622137127778588

`A004442(and(1, Δ[A247642(n)]))`
-/

namespace A071038.P18158622137127778588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.land 1 (f1 (n + 1) - f1 n)).toNat

end

end A071038.P18158622137127778588

namespace A071038

/-- `A004442(and(1, Δ[A247642(n)]))` -/
def P18158622137127778588.Spec : Prop :=
  ∀ n, P18158622137127778588.a n = A071038 n

end A071038

/-! ## A071038.P16304322566312610577

`A228304(and(1, Δ[A247642(n)]))`
-/

namespace A071038.P16304322566312610577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228304 (Int.land 1 (f1 (n + 1) - f1 n)).toNat

end

end A071038.P16304322566312610577

namespace A071038

/-- `A228304(and(1, Δ[A247642(n)]))` -/
def P16304322566312610577.Spec : Prop :=
  ∀ n, P16304322566312610577.a n = A071038 n

end A071038

/-! ## A071038.P10320515817070322096

`Δ[A000035(A247642(n)+n)]²`
-/

namespace A071038.P10320515817070322096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A247642 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A071038.P10320515817070322096

namespace A071038

/-- `Δ[A000035(A247642(n)+n)]²` -/
def P10320515817070322096.Spec : Prop :=
  ∀ n, P10320515817070322096.a n = A071038 n

end A071038

/-! ## A071038.P5843089507500324252

`A000035(Δ[A000035(A247642(n))]+1)`
-/

namespace A071038.P5843089507500324252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A247642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n + 1).toNat

end

end A071038.P5843089507500324252

namespace A071038

/-- `A000035(Δ[A000035(A247642(n))]+1)` -/
def P5843089507500324252.Spec : Prop :=
  ∀ n, P5843089507500324252.a n = A071038 n

end A071038

/-!
# A071040: Triangle read by rows giving successive states of cellular automaton generated by "Rule 214".

The programs for A071040, the canonical program `A071040.P15735918044442240438` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071040 has offset 0).

The definition of A071040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071040.P12725424497412849082

`A071041(A140201(n))`
-/

namespace A071040.P12725424497412849082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 (A140201 n).toNat

end

end A071040.P12725424497412849082

namespace A071040

/-- `A071041(A140201(n))` -/
def P12725424497412849082.Spec : Prop :=
  ∀ n, P12725424497412849082.a n = A071040 n

end A071040

/-! ## A071040.P15735918044442240438

`A071037(A020703(n+1)-1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A071040

/-- `A071037(A020703(n+1)-1)` -/
def P15735918044442240438.Spec : Prop :=
  ∀ n, P15735918044442240438.a n = A071040 n

theorem P15735918044442240438.correct : P15735918044442240438.Spec := by
  intro n
  simp only [A071040]

end A071040

/-! ## A071040.P8483157332080809806

`A071041(and(n, A071041(n))+n)`
-/

namespace A071040.P8483157332080809806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 (Int.land (n : ℤ) (A071041 n) + (n : ℤ)).toNat

end

end A071040.P8483157332080809806

namespace A071040

/-- `A071041(and(n, A071041(n))+n)` -/
def P8483157332080809806.Spec : Prop :=
  ∀ n, P8483157332080809806.a n = A071040 n

end A071040

/-! ## A071040.P7342565286185913398

`A071037(xor(1, n+1))`
-/

namespace A071040.P7342565286185913398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (Nat.xor 1 (n + 1))

end

end A071040.P7342565286185913398

namespace A071040

/-- `A071037(xor(1, n+1))` -/
def P7342565286185913398.Spec : Prop :=
  ∀ n, P7342565286185913398.a n = A071040 n

end A071040

/-! ## A071040.P7502255745925102733

`A071037(A116966(n))`
-/

namespace A071040.P7502255745925102733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (A116966 n).toNat

end

end A071040.P7502255745925102733

namespace A071040

/-- `A071037(A116966(n))` -/
def P7502255745925102733.Spec : Prop :=
  ∀ n, P7502255745925102733.a n = A071040 n

end A071040

/-! ## A071040.P6679952987789908713

`A071037(A004442(n+1))`
-/

namespace A071040.P6679952987789908713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (A004442 (n + 1)).toNat

end

end A071040.P6679952987789908713

namespace A071040

/-- `A071037(A004442(n+1))` -/
def P6679952987789908713.Spec : Prop :=
  ∀ n, P6679952987789908713.a n = A071040 n

end A071040

/-! ## A071040.P3876549541389898887

`A071037(A065190(n+1))`
-/

namespace A071040.P3876549541389898887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (A065190 (n + 1)).toNat

end

end A071040.P3876549541389898887

namespace A071040

/-- `A071037(A065190(n+1))` -/
def P3876549541389898887.Spec : Prop :=
  ∀ n, P3876549541389898887.a n = A071040 n

end A071040

/-! ## A071040.P13393446288608899355

`A071037(abs(Δ[A071045(n)]))`
-/

namespace A071040.P13393446288608899355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 |f1 (n + 1) - f1 n|.toNat

end

end A071040.P13393446288608899355

namespace A071040

/-- `A071037(abs(Δ[A071045(n)]))` -/
def P13393446288608899355.Spec : Prop :=
  ∀ n, P13393446288608899355.a n = A071040 n

end A071040

/-! ## A071040.P5384058301162256073

`A071037(A020703(n+2))`
-/

namespace A071040.P5384058301162256073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (A020703 (n + 2)).toNat

end

end A071040.P5384058301162256073

namespace A071040

/-- `A071037(A020703(n+2))` -/
def P5384058301162256073.Spec : Prop :=
  ∀ n, P5384058301162256073.a n = A071040 n

end A071040

/-! ## A071040.P5273602626322683714

`A071037(n+1-A009531(2*n+1))`
-/

namespace A071040.P5273602626322683714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 ((n + 1 : ℤ) - A009531 (2 * n + 1)).toNat

end

end A071040.P5273602626322683714

namespace A071040

/-- `A071037(n+1-A009531(2*n+1))` -/
def P5273602626322683714.Spec : Prop :=
  ∀ n, P5273602626322683714.a n = A071040 n

end A071040

/-! ## A071040.P3878127217748498009

`A071037(A004442(2*n)-A004442(n))`
-/

namespace A071040.P3878127217748498009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (A004442 (2 * n) - A004442 n).toNat

end

end A071040.P3878127217748498009

namespace A071040

/-- `A071037(A004442(2*n)-A004442(n))` -/
def P3878127217748498009.Spec : Prop :=
  ∀ n, P3878127217748498009.a n = A071040 n

end A071040

/-!
# A071041: Triangle read by rows giving successive states of cellular automaton generated by "Rule 246".

The programs for A071041, the canonical program `A071041.P15932926825950590640` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071041 has offset 0).

The definition of A071041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071041.P3500897521883867825

`char[comp[A079896(2*n+1)]]`
-/

namespace A071041.P3500897521883867825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A071041.P3500897521883867825

namespace A071041

/-- `char[comp[A079896(2*n+1)]]` -/
def P3500897521883867825.Spec : Prop :=
  ∀ n, (P3500897521883867825.a n : ℤ) = A071041 n

end A071041

/-! ## A071041.P13381586462747224982

`A201053(and(3, ∑[char[n²]]²-n))`
-/

namespace A071041.P13381586462747224982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (Int.land 3 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A071041.P13381586462747224982

namespace A071041

/-- `A201053(and(3, ∑[char[n²]]²-n))` -/
def P13381586462747224982.Spec : Prop :=
  ∀ n, P13381586462747224982.a n = A071041 n

end A071041

/-! ## A071041.P12924252002665939320

`and(1, gcd(comp[n²+n], A134227(n+1)))`
-/

namespace A071041.P12924252002665939320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A134227 (n + 1)))

end

end A071041.P12924252002665939320

namespace A071041

/-- `and(1, gcd(comp[n²+n], A134227(n+1)))` -/
def P12924252002665939320.Spec : Prop :=
  ∀ n, (P12924252002665939320.a n : ℤ) = A071041 n

end A071041

/-! ## A071041.P13760682100799508542

`char[n+1-∑[A258998(n)+∑[n+1]]%2]`
-/

namespace A071041.P13760682100799508542
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 n + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A071041.P13760682100799508542

namespace A071041

/-- `char[n+1-∑[A258998(n)+∑[n+1]]%2]` -/
def P13760682100799508542.Spec : Prop :=
  ∀ n, (P13760682100799508542.a n : ℤ) = A071041 n

end A071041

/-! ## A071041.P15781672066888675508

`A118111(A159966(n))`
-/

namespace A071041.P15781672066888675508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (A159966 n).toNat

end

end A071041.P15781672066888675508

namespace A071041

/-- `A118111(A159966(n))` -/
def P15781672066888675508.Spec : Prop :=
  ∀ n, P15781672066888675508.a n = A071041 n

end A071041

/-! ## A071041.P15932926825950590640

`A071040(A351782(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071041

/-- `A071040(A351782(n+1))` -/
def P15932926825950590640.Spec : Prop :=
  ∀ n, P15932926825950590640.a n = A071041 n

theorem P15932926825950590640.correct : P15932926825950590640.Spec := by
  intro n
  simp only [A071041]

end A071041

/-! ## A071041.P11425343139816124671

`A071030(n*A133872(n))`
-/

namespace A071041.P11425343139816124671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 ((n : ℤ) * A133872 n).toNat

end

end A071041.P11425343139816124671

namespace A071041

/-- `A071030(n*A133872(n))` -/
def P11425343139816124671.Spec : Prop :=
  ∀ n, P11425343139816124671.a n = A071041 n

end A071041

/-! ## A071041.P13824192366733652576

`or(A071028(n), A071040(n))`
-/

namespace A071041.P13824192366733652576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071028 n) (A071040 n)

end

end A071041.P13824192366733652576

namespace A071041

/-- `or(A071028(n), A071040(n))` -/
def P13824192366733652576.Spec : Prop :=
  ∀ n, P13824192366733652576.a n = A071041 n

end A071041

/-! ## A071041.P16676903319592849144

`A071017(Δ[A071040(n)]+1)`
-/

namespace A071041.P16676903319592849144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071017 (f1 (n + 1) - f1 n + 1).toNat

end

end A071041.P16676903319592849144

namespace A071041

/-- `A071017(Δ[A071040(n)]+1)` -/
def P16676903319592849144.Spec : Prop :=
  ∀ n, P16676903319592849144.a n = A071041 n

end A071041

/-! ## A071041.P4254111543591427741

`A071028(Δ[A071040(n)]+1)`
-/

namespace A071041.P4254111543591427741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (f1 (n + 1) - f1 n + 1).toNat

end

end A071041.P4254111543591427741

namespace A071041

/-- `A071028(Δ[A071040(n)]+1)` -/
def P4254111543591427741.Spec : Prop :=
  ∀ n, P4254111543591427741.a n = A071041 n

end A071041

/-! ## A071041.P2352998810094319804

`A118111(A020703(n+1)-1)`
-/

namespace A071041.P2352998810094319804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (A020703 (n + 1) - 1).toNat

end

end A071041.P2352998810094319804

namespace A071041

/-- `A118111(A020703(n+1)-1)` -/
def P2352998810094319804.Spec : Prop :=
  ∀ n, P2352998810094319804.a n = A071041 n

end A071041

/-! ## A071041.P11557547531459161772

`A071040(n*A071040(n+1))`
-/

namespace A071041.P11557547531459161772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 ((n : ℤ) * A071040 (n + 1)).toNat

end

end A071041.P11557547531459161772

namespace A071041

/-- `A071040(n*A071040(n+1))` -/
def P11557547531459161772.Spec : Prop :=
  ∀ n, P11557547531459161772.a n = A071041 n

end A071041

/-! ## A071041.P13921006982498176027

`A071028(n*(1-A021913(n)))`
-/

namespace A071041.P13921006982498176027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 ((n : ℤ) * (1 - A021913 n)).toNat

end

end A071041.P13921006982498176027

namespace A071041

/-- `A071028(n*(1-A021913(n)))` -/
def P13921006982498176027.Spec : Prop :=
  ∀ n, P13921006982498176027.a n = A071041 n

end A071041

/-! ## A071041.P9170691400259126774

`A071040(n*(1-A071028(n)))`
-/

namespace A071041.P9170691400259126774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 ((n : ℤ) * (1 - A071028 n)).toNat

end

end A071041.P9170691400259126774

namespace A071041

/-- `A071040(n*(1-A071028(n)))` -/
def P9170691400259126774.Spec : Prop :=
  ∀ n, P9170691400259126774.a n = A071041 n

end A071041

/-! ## A071041.P337722503427030095

`A071040(n*Δ[A071040(n)]²)`
-/

namespace A071041.P337722503427030095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 ((n : ℤ) * (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A071041.P337722503427030095

namespace A071041

/-- `A071040(n*Δ[A071040(n)]²)` -/
def P337722503427030095.Spec : Prop :=
  ∀ n, P337722503427030095.a n = A071041 n

end A071041

/-! ## A071041.P2017118468304073061

`A071040(A071040(n+1)+n-1)`
-/

namespace A071041.P2017118468304073061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071040 (A071040 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A071041.P2017118468304073061

namespace A071041

/-- `A071040(A071040(n+1)+n-1)` -/
def P2017118468304073061.Spec : Prop :=
  ∀ n, P2017118468304073061.a n = A071041 n

end A071041

/-! ## A071041.P16042827936729604714

`A166486(A071028(n)+n-A166486(n))`
-/

namespace A071041.P16042827936729604714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A071028 n + ((n : ℤ) - A166486 n)).toNat

end

end A071041.P16042827936729604714

namespace A071041

/-- `A166486(A071028(n)+n-A166486(n))` -/
def P16042827936729604714.Spec : Prop :=
  ∀ n, P16042827936729604714.a n = A071041 n

end A071041

/-! ## A071041.P68580214718030910

`A166486(n-(A166486(n)-A071028(n)))`
-/

namespace A071041.P68580214718030910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 ((n : ℤ) - (A166486 n - A071028 n)).toNat

end

end A071041.P68580214718030910

namespace A071041

/-- `A166486(n-(A166486(n)-A071028(n)))` -/
def P68580214718030910.Spec : Prop :=
  ∀ n, P68580214718030910.a n = A071041 n

end A071041

/-! ## A071041.P16056598210555545093

`A133872((n-A316355(n))*A133872(n))`
-/

namespace A071041.P16056598210555545093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (((n : ℤ) - A316355 n) * A133872 n).toNat

end

end A071041.P16056598210555545093

namespace A071041

/-- `A133872((n-A316355(n))*A133872(n))` -/
def P16056598210555545093.Spec : Prop :=
  ∀ n, P16056598210555545093.a n = A071041 n

end A071041

/-! ## A071041.P11487262879771151172

`A118111(xor(1, n+1))`
-/

namespace A071041.P11487262879771151172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (Nat.xor 1 (n + 1))

end

end A071041.P11487262879771151172

namespace A071041

/-- `A118111(xor(1, n+1))` -/
def P11487262879771151172.Spec : Prop :=
  ∀ n, P11487262879771151172.a n = A071041 n

end A071041

/-!
# A071042: Number of 0's in n-th row of triangle in A070886.

The programs for A071042, the canonical program `A071042.P13851763813653764625` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071042 has offset 0).

The definition of A071042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071042.P13851763813653764625

`n+A048967(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071042

/-- `n+A048967(n)` -/
def P13851763813653764625.Spec : Prop :=
  ∀ n, P13851763813653764625.a n = A071042 n

theorem P13851763813653764625.correct : P13851763813653764625.Spec := by
  intro n
  simp only [A071042]

end A071042

/-! ## A071042.P7878263453328580596

`2*n+1-A001316(n)`
-/

namespace A071042.P7878263453328580596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A001316 n

end

end A071042.P7878263453328580596

namespace A071042

/-- `2*n+1-A001316(n)` -/
def P7878263453328580596.Spec : Prop :=
  ∀ n, P7878263453328580596.a n = A071042 n

end A071042

/-! ## A071042.P7160162904531807056

`Δ[n²]-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A071042.P7160162904531807056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ)

end

end A071042.P7160162904531807056

namespace A071042

/-- `Δ[n²]-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P7160162904531807056.Spec : Prop :=
  ∀ n, P7160162904531807056.a n = (A071042 n : ℚ)

end A071042

/-! ## A071042.P6729917204698765525

`1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n+n`
-/

namespace A071042.P6729917204698765525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ) + (n : ℚ) + (n : ℚ)

end

end A071042.P6729917204698765525

namespace A071042

/-- `1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n+n` -/
def P6729917204698765525.Spec : Prop :=
  ∀ n, P6729917204698765525.a n = (A071042 n : ℚ)

end A071042

/-! ## A071042.P9988570321267933843

`2*n-A038573(n)`
-/

namespace A071042.P9988570321267933843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A038573 n

end

end A071042.P9988570321267933843

namespace A071042

/-- `2*n-A038573(n)` -/
def P9988570321267933843.Spec : Prop :=
  ∀ n, P9988570321267933843.a n = A071042 n

end A071042

/-! ## A071042.P17864610676186352543

`Δ[n²-A006046(n)]`
-/

namespace A071042.P17864610676186352543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071042.P17864610676186352543

namespace A071042

/-- `Δ[n²-A006046(n)]` -/
def P17864610676186352543.Spec : Prop :=
  ∀ n, P17864610676186352543.a n = A071042 n

end A071042

/-! ## A071042.P14348865109310562365

`Δ[n²]-sqrt(A102376(n))`
-/

namespace A071042.P14348865109310562365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.sqrt (A102376 n : ℝ)

end

end A071042.P14348865109310562365

namespace A071042

/-- `Δ[n²]-sqrt(A102376(n))` -/
def P14348865109310562365.Spec : Prop :=
  ∀ n, P14348865109310562365.a n = (A071042 n : ℝ)

end A071042

/-! ## A071042.P1698465794074242256

`A261366(n+1)-1+n`
-/

namespace A071042.P1698465794074242256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (n + 1) - 1 + (n : ℤ)

end

end A071042.P1698465794074242256

namespace A071042

/-- `A261366(n+1)-1+n` -/
def P1698465794074242256.Spec : Prop :=
  ∀ n, P1698465794074242256.a n = A071042 n

end A071042

/-! ## A071042.P16679945469239162902

`Δ[n²]-A060632(2*n)`
-/

namespace A071042.P16679945469239162902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A060632 (2 * n)

end

end A071042.P16679945469239162902

namespace A071042

/-- `Δ[n²]-A060632(2*n)` -/
def P16679945469239162902.Spec : Prop :=
  ∀ n, P16679945469239162902.a n = A071042 n

end A071042

/-! ## A071042.P4874394507324959455

`2*n+1-2^A000120(n)`
-/

namespace A071042.P4874394507324959455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (2 : ℚ) ^ (A000120 n : ℤ)

end

end A071042.P4874394507324959455

namespace A071042

/-- `2*n+1-2^A000120(n)` -/
def P4874394507324959455.Spec : Prop :=
  ∀ n, P4874394507324959455.a n = (A071042 n : ℚ)

end A071042

/-! ## A071042.P18062860812383381685

`comp[2*n]-2^(2*n-A005187(n))`
-/

namespace A071042.P18062860812383381685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) - (2 : ℚ) ^ ((2 * n : ℤ) - A005187 n : ℤ)

end

end A071042.P18062860812383381685

namespace A071042

/-- `comp[2*n]-2^(2*n-A005187(n))` -/
def P18062860812383381685.Spec : Prop :=
  ∀ n, P18062860812383381685.a n = (A071042 n : ℚ)

end A071042

/-! ## A071042.P2417078414964201522

`A048967(n)-A001489(n)`
-/

namespace A071042.P2417078414964201522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n - A001489 n

end

end A071042.P2417078414964201522

namespace A071042

/-- `A048967(n)-A001489(n)` -/
def P2417078414964201522.Spec : Prop :=
  ∀ n, P2417078414964201522.a n = A071042 n

end A071042

/-! ## A071042.P8228721248225363700

`2*n-A000225(A000120(n))`
-/

namespace A071042.P8228721248225363700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000225 (A000120 n).toNat

end

end A071042.P8228721248225363700

namespace A071042

/-- `2*n-A000225(A000120(n))` -/
def P8228721248225363700.Spec : Prop :=
  ∀ n, P8228721248225363700.a n = A071042 n

end A071042

/-! ## A071042.P17067628664680944267

`2*n-A006257(A073137(n))`
-/

namespace A071042.P17067628664680944267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A006257 (A073137 n).toNat

end

end A071042.P17067628664680944267

namespace A071042

/-- `2*n-A006257(A073137(n))` -/
def P17067628664680944267.Spec : Prop :=
  ∀ n, P17067628664680944267.a n = A071042 n

end A071042

/-! ## A071042.P8412213279118453956

`2*n-A331856(A073138(n))`
-/

namespace A071042.P8412213279118453956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A331856 (A073138 n).toNat

end

end A071042.P8412213279118453956

namespace A071042

/-- `2*n-A331856(A073138(n))` -/
def P8412213279118453956.Spec : Prop :=
  ∀ n, P8412213279118453956.a n = A071042 n

end A071042

/-! ## A071042.P18425337452177670342

`A001316(n)+A064405(n)+n`
-/

namespace A071042.P18425337452177670342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A064405 n + (n : ℤ))

end

end A071042.P18425337452177670342

namespace A071042

/-- `A001316(n)+A064405(n)+n` -/
def P18425337452177670342.Spec : Prop :=
  ∀ n, P18425337452177670342.a n = A071042 n

end A071042

/-! ## A071042.P10442982750232619360

`A016777(n)-(A001316(n)+n)`
-/

namespace A071042.P10442982750232619360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A001316 n + (n : ℤ))

end

end A071042.P10442982750232619360

namespace A071042

/-- `A016777(n)-(A001316(n)+n)` -/
def P10442982750232619360.Spec : Prop :=
  ∀ n, P10442982750232619360.a n = A071042 n

end A071042

/-! ## A071042.P6623354926888699143

`A006046(n)+n-A267700(n)`
-/

namespace A071042.P6623354926888699143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n + ((n : ℤ) - A267700 n)

end

end A071042.P6623354926888699143

namespace A071042

/-- `A006046(n)+n-A267700(n)` -/
def P6623354926888699143.Spec : Prop :=
  ∀ n, P6623354926888699143.a n = A071042 n

end A071042

/-! ## A071042.P2044558936089498016

`2*n-A004483(A001316(2*n))`
-/

namespace A071042.P2044558936089498016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004483 (A001316 (2 * n)).toNat

end

end A071042.P2044558936089498016

namespace A071042

/-- `2*n-A004483(A001316(2*n))` -/
def P2044558936089498016.Spec : Prop :=
  ∀ n, P2044558936089498016.a n = A071042 n

end A071042

/-! ## A071042.P11767743777744093829

`Δ[A267583(n)]-2`
-/

namespace A071042.P11767743777744093829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A071042.P11767743777744093829

namespace A071042

/-- `Δ[A267583(n)]-2` -/
def P11767743777744093829.Spec : Prop :=
  ∀ n, P11767743777744093829.a n = A071042 n

end A071042

/-!
# A071043: Number of 0's in n-th row of triangle in A071029.

The programs for A071043, the canonical program `A071043.P6466129346200666607` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071043 has offset 0).

The definition of A071043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071043.P11341858980628220702

`Δ[A266384(abs(1-n))]`
-/

namespace A071043.P11341858980628220702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266384 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071043.P11341858980628220702

namespace A071043

/-- `Δ[A266384(abs(1-n))]` -/
def P11341858980628220702.Spec : Prop :=
  ∀ n, P11341858980628220702.a n = A071043 n

end A071043

/-! ## A071043.P4958146797183388223

`Δ[n²]-A071044(n)`
-/

namespace A071043.P4958146797183388223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071044 n

end

end A071043.P4958146797183388223

namespace A071043

/-- `Δ[n²]-A071044(n)` -/
def P4958146797183388223.Spec : Prop :=
  ∀ n, P4958146797183388223.a n = A071043 n

end A071043

/-! ## A071043.P10061278720265135316

`n+1-A071044(n%(n+1))+n`
-/

namespace A071043.P10061278720265135316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A071044 (n % (n + 1)) + (n : ℤ)

end

end A071043.P10061278720265135316

namespace A071043

/-- `n+1-A071044(n%(n+1))+n` -/
def P10061278720265135316.Spec : Prop :=
  ∀ n, P10061278720265135316.a n = A071043 n

end A071043

/-! ## A071043.P18093305207251743793

`abs(A005408(n)-A071044(n))`
-/

namespace A071043.P18093305207251743793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A071044 n|

end

end A071043.P18093305207251743793

namespace A071043

/-- `abs(A005408(n)-A071044(n))` -/
def P18093305207251743793.Spec : Prop :=
  ∀ n, P18093305207251743793.a n = A071043 n

end A071043

/-! ## A071043.P2411007562066765695

`A005843(n)+1-A071044(n)`
-/

namespace A071043.P2411007562066765695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A071044 n)

end

end A071043.P2411007562066765695

namespace A071043

/-- `A005843(n)+1-A071044(n)` -/
def P2411007562066765695.Spec : Prop :=
  ∀ n, P2411007562066765695.a n = A071043 n

end A071043

/-! ## A071043.P6466129346200666607

`A060632(n)+A064405(n)+n`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071043

/-- `A060632(n)+A064405(n)+n` -/
def P6466129346200666607.Spec : Prop :=
  ∀ n, P6466129346200666607.a n = A071043 n

theorem P6466129346200666607.correct : P6466129346200666607.Spec := by
  intro n
  simp only [A071043]

end A071043

/-! ## A071043.P428447320935503653

`A048967(A060632(n))+2*A048967(n)`
-/

namespace A071043.P428447320935503653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A060632 n).toNat + 2 * A048967 n

end

end A071043.P428447320935503653

namespace A071043

/-- `A048967(A060632(n))+2*A048967(n)` -/
def P428447320935503653.Spec : Prop :=
  ∀ n, P428447320935503653.a n = A071043 n

end A071043

/-! ## A071043.P12369569074229748585

`A266384(n)-A266384(A004273(n)-n)`
-/

namespace A071043.P12369569074229748585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266384 n - A266384 (A004273 n - (n : ℤ)).toNat

end

end A071043.P12369569074229748585

namespace A071043

/-- `A266384(n)-A266384(A004273(n)-n)` -/
def P12369569074229748585.Spec : Prop :=
  ∀ n, P12369569074229748585.a n = A071043 n

end A071043

/-! ## A071043.P15728892793724171901

`A000290(n+1)-(A071044(n)+A000290(n))`
-/

namespace A071043.P15728892793724171901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A071044 n + A000290 n)

end

end A071043.P15728892793724171901

namespace A071043

/-- `A000290(n+1)-(A071044(n)+A000290(n))` -/
def P15728892793724171901.Spec : Prop :=
  ∀ n, P15728892793724171901.a n = A071043 n

end A071043

/-! ## A071043.P11004930371557379243

`abs(A109613(2*n)-A071044(n))`
-/

namespace A071043.P11004930371557379243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109613 (2 * n) - A071044 n|

end

end A071043.P11004930371557379243

namespace A071043

/-- `abs(A109613(2*n)-A071044(n))` -/
def P11004930371557379243.Spec : Prop :=
  ∀ n, P11004930371557379243.a n = A071043 n

end A071043

/-! ## A071043.P5309424927498585911

`abs(A057174(2*n)-A071044(n))`
-/

namespace A071043.P5309424927498585911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057174 (2 * n) - A071044 n|

end

end A071043.P5309424927498585911

namespace A071043

/-- `abs(A057174(2*n)-A071044(n))` -/
def P5309424927498585911.Spec : Prop :=
  ∀ n, P5309424927498585911.a n = A071043 n

end A071043

/-! ## A071043.P3619735126865287819

`A249732(2*n)+A163000(n)`
-/

namespace A071043.P3619735126865287819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249732 (2 * n) + A163000 n

end

end A071043.P3619735126865287819

namespace A071043

/-- `A249732(2*n)+A163000(n)` -/
def P3619735126865287819.Spec : Prop :=
  ∀ n, P3619735126865287819.a n = A071043 n

end A071043

/-! ## A071043.P9868676416544078249

`(A005408(n)-A071044(n))*A040648(A000040(n+1)+4)`
-/

namespace A071043.P9868676416544078249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - A071044 n) * A040648 (A000040 (n + 1) + 4).toNat

end

end A071043.P9868676416544078249

namespace A071043

/-- `(A005408(n)-A071044(n))*A040648(A000040(n+1)+4)` -/
def P9868676416544078249.Spec : Prop :=
  ∀ n, P9868676416544078249.a n = A071043 n

end A071043

/-! ## A071043.P11644773456218850221

`A061898(A061898(n+1))+n-A071044(n)`
-/

namespace A071043.P11644773456218850221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A061898 (n + 1)).toNat + ((n : ℤ) - A071044 n)

end

end A071043.P11644773456218850221

namespace A071043

/-- `A061898(A061898(n+1))+n-A071044(n)` -/
def P11644773456218850221.Spec : Prop :=
  ∀ n, P11644773456218850221.a n = A071043 n

end A071043

/-!
# A071044: Number of ON cells at generation n of 1-D CA defined by Rule 22, starting with a single ON cell.

The programs for A071044, the canonical program `A071044.P5636021489979215778` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071044 has offset 0).

The definition of A071044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071044.P5636021489979215778

`2*a(and(n, n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071044

/-- `2*a(and(n, n-2))` -/
def P5636021489979215778.Spec : Prop :=
  ∀ n, (P5636021489979215778.a n : ℤ) = A071044 n

theorem P5636021489979215778.correct : P5636021489979215778.Spec := by
  intro n
  simp only [A071044]

end A071044

/-! ## A071044.P6255384815207178671

`2*a(n-2^floor(log2(n)))` with `a(0)=1, a(1)=3`
-/

namespace A071044.P6255384815207178671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 2 ^ Nat.log 2 n)

end

end A071044.P6255384815207178671

namespace A071044

/-- `2*a(n-2^floor(log2(n)))` -/
def P6255384815207178671.Spec : Prop :=
  ∀ n, (P6255384815207178671.a n : ℤ) = A071044 n

end A071044

/-! ## A071044.P8645059874385201334

`sqrt(A164032(n+1))`
-/

namespace A071044.P8645059874385201334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164032 (n + 1) : ℝ)

end

end A071044.P8645059874385201334

namespace A071044

/-- `sqrt(A164032(n+1))` -/
def P8645059874385201334.Spec : Prop :=
  ∀ n, P8645059874385201334.a n = (A071044 n : ℝ)

end A071044

/-! ## A071044.P12037542849103910331

`Δ[n²]-A071043(n)`
-/

namespace A071044.P12037542849103910331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071043 n

end

end A071044.P12037542849103910331

namespace A071044

/-- `Δ[n²]-A071043(n)` -/
def P12037542849103910331.Spec : Prop :=
  ∀ n, P12037542849103910331.a n = A071044 n

end A071044

/-! ## A071044.P5203703852092610695

`3^(n%2)*A060632(n)`
-/

namespace A071044.P5203703852092610695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A060632 n

end

end A071044.P5203703852092610695

namespace A071044

/-- `3^(n%2)*A060632(n)` -/
def P5203703852092610695.Spec : Prop :=
  ∀ n, P5203703852092610695.a n = A071044 n

end A071044

/-! ## A071044.P18210264433022729071

`A333219(A361145(n+1))`
-/

namespace A071044.P18210264433022729071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A361145 (n + 1)).toNat

end

end A071044.P18210264433022729071

namespace A071044

/-- `A333219(A361145(n+1))` -/
def P18210264433022729071.Spec : Prop :=
  ∀ n, P18210264433022729071.a n = A071044 n

end A071044

/-! ## A071044.P8122949207458695982

`A117973(n)-A060632(n)`
-/

namespace A071044.P8122949207458695982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n - A060632 n

end

end A071044.P8122949207458695982

namespace A071044

/-- `A117973(n)-A060632(n)` -/
def P8122949207458695982.Spec : Prop :=
  ∀ n, P8122949207458695982.a n = A071044 n

end A071044

/-! ## A071044.P14279666698855524588

`A309255(n)-A064405(n)`
-/

namespace A071044.P14279666698855524588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309255 n - A064405 n

end

end A071044.P14279666698855524588

namespace A071044

/-- `A309255(n)-A064405(n)` -/
def P14279666698855524588.Spec : Prop :=
  ∀ n, P14279666698855524588.a n = A071044 n

end A071044

/-! ## A071044.P14052644245618116503

`A010684(n)*A060632(n)`
-/

namespace A071044.P14052644245618116503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A060632 n

end

end A071044.P14052644245618116503

namespace A071044

/-- `A010684(n)*A060632(n)` -/
def P14052644245618116503.Spec : Prop :=
  ∀ n, P14052644245618116503.a n = A071044 n

end A071044

/-! ## A071044.P14310646787970117102

`A160713(n)/A176059(n)`
-/

namespace A071044.P14310646787970117102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160713 n : ℚ) / (A176059 n : ℚ)

end

end A071044.P14310646787970117102

namespace A071044

/-- `A160713(n)/A176059(n)` -/
def P14310646787970117102.Spec : Prop :=
  ∀ n, P14310646787970117102.a n = (A071044 n : ℚ)

end A071044

/-! ## A071044.P11650208621420255375

`A256257(n)/A226294(n)`
-/

namespace A071044.P11650208621420255375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / (A226294 n : ℚ)

end

end A071044.P11650208621420255375

namespace A071044

/-- `A256257(n)/A226294(n)` -/
def P11650208621420255375.Spec : Prop :=
  ∀ n, P11650208621420255375.a n = (A071044 n : ℚ)

end A071044

/-! ## A071044.P15682771744947599353

`or(A001316(n), A060632(n))`
-/

namespace A071044.P15682771744947599353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001316 n) (A060632 n)

end

end A071044.P15682771744947599353

namespace A071044

/-- `or(A001316(n), A060632(n))` -/
def P15682771744947599353.Spec : Prop :=
  ∀ n, P15682771744947599353.a n = A071044 n

end A071044

/-! ## A071044.P3337293541688228155

`A160745(n+1)/A176040(n)`
-/

namespace A071044.P3337293541688228155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160745 (n + 1) : ℚ) / (A176040 n : ℚ)

end

end A071044.P3337293541688228155

namespace A071044

/-- `A160745(n+1)/A176040(n)` -/
def P3337293541688228155.Spec : Prop :=
  ∀ n, P3337293541688228155.a n = (A071044 n : ℚ)

end A071044

/-! ## A071044.P265146736407712993

`(2-A033999(n))*A060632(n)`
-/

namespace A071044.P265146736407712993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A060632 n

end

end A071044.P265146736407712993

namespace A071044

/-- `(2-A033999(n))*A060632(n)` -/
def P265146736407712993.Spec : Prop :=
  ∀ n, P265146736407712993.a n = A071044 n

end A071044

/-! ## A071044.P1808209436110294655

`A001316(n)/2*A010693(n)`
-/

namespace A071044.P1808209436110294655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / 2 * (A010693 n : ℚ)

end

end A071044.P1808209436110294655

namespace A071044

/-- `A001316(n)/2*A010693(n)` -/
def P1808209436110294655.Spec : Prop :=
  ∀ n, P1808209436110294655.a n = (A071044 n : ℚ)

end A071044

/-! ## A071044.P5259078299605998542

`A160745(n+1)%A117973(n)`
-/

namespace A071044.P5259078299605998542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160745 (n + 1)) (A117973 n)

end

end A071044.P5259078299605998542

namespace A071044

/-- `A160745(n+1)%A117973(n)` -/
def P5259078299605998542.Spec : Prop :=
  ∀ n, P5259078299605998542.a n = A071044 n

end A071044

/-! ## A071044.P14529322998050188335

`or(A060632(2*n), A060632(n))`
-/

namespace A071044.P14529322998050188335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060632 (2 * n)) (A060632 n)

end

end A071044.P14529322998050188335

namespace A071044

/-- `or(A060632(2*n), A060632(n))` -/
def P14529322998050188335.Spec : Prop :=
  ∀ n, P14529322998050188335.a n = A071044 n

end A071044

/-! ## A071044.P15901761533747391218

`A001316(Δ[n²])-A060632(n)`
-/

namespace A071044.P15901761533747391218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A060632 n

end

end A071044.P15901761533747391218

namespace A071044

/-- `A001316(Δ[n²])-A060632(n)` -/
def P15901761533747391218.Spec : Prop :=
  ∀ n, P15901761533747391218.a n = A071044 n

end A071044

/-! ## A071044.P13055297803290956261

`and(A151787(n+1), A160745(n+1))`
-/

namespace A071044.P13055297803290956261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151787 (n + 1)) (A160745 (n + 1))

end

end A071044.P13055297803290956261

namespace A071044

/-- `and(A151787(n+1), A160745(n+1))` -/
def P13055297803290956261.Spec : Prop :=
  ∀ n, P13055297803290956261.a n = A071044 n

end A071044

/-! ## A071044.P10085644759480160989

`and(A151787(n+1), A361145(n+1))`
-/

namespace A071044.P10085644759480160989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151787 (n + 1)) (A361145 (n + 1))

end

end A071044.P10085644759480160989

namespace A071044

/-- `and(A151787(n+1), A361145(n+1))` -/
def P10085644759480160989.Spec : Prop :=
  ∀ n, P10085644759480160989.a n = A071044 n

end A071044

/-!
# A071045: Number of 0's in n-th row of triangle in A071030.

The programs for A071045, the canonical program `A071045.P5706604392575141894` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071045 has offset 0).

The definition of A071045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071045.P5706604392575141894

`(n²-1)%(2*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071045

/-- `(n²-1)%(2*n+1)` -/
def P5706604392575141894.Spec : Prop :=
  ∀ n, P5706604392575141894.a n = A071045 n

theorem P5706604392575141894.correct : P5706604392575141894.Spec := by
  intro n
  simp only [A071045]

end A071045

/-! ## A071045.P2585116150802157283

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1`
-/

namespace A071045.P2585116150802157283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 1] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A071045.P2585116150802157283

namespace A071045

/-- `2*a(n-2)-a(n-4)` -/
def P2585116150802157283.Spec : Prop :=
  ∀ n, P2585116150802157283.a n = A071045 n

end A071045

/-! ## A071045.P14571918498759082342

`n+((-1)^n*(2*n+1)-1)/4`
-/

namespace A071045.P14571918498759082342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + ((-1) ^ n * (2 * n + 1 : ℤ) - 1 : ℚ) / 4

end

end A071045.P14571918498759082342

namespace A071045

/-- `n+((-1)^n*(2*n+1)-1)/4` -/
def P14571918498759082342.Spec : Prop :=
  ∀ n, P14571918498759082342.a n = (A071045 n : ℚ)

end A071045

/-! ## A071045.P4196325271003985663

`floor(n*(gcd(2, n)-1/2))`
-/

namespace A071045.P4196325271003985663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.gcd 2 n : ℚ) - (1 : ℚ) / 2)⌋

end

end A071045.P4196325271003985663

namespace A071045

/-- `floor(n*(gcd(2, n)-1/2))` -/
def P4196325271003985663.Spec : Prop :=
  ∀ n, P4196325271003985663.a n = A071045 n

end A071045

/-! ## A071045.P8129563899443163917

`floor(n*(3/2-n%2))`
-/

namespace A071045.P8129563899443163917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((3 : ℚ) / 2 - ((n % 2 : ℕ) : ℚ))⌋

end

end A071045.P8129563899443163917

namespace A071045

/-- `floor(n*(3/2-n%2))` -/
def P8129563899443163917.Spec : Prop :=
  ∀ n, P8129563899443163917.a n = A071045 n

end A071045

/-! ## A071045.P13917415234383772335

`xor(-Δ[n*ceil(n/2)], -1)`
-/

namespace A071045.P13917415234383772335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(f1 (n + 1) - f1 n)) (-1)

end

end A071045.P13917415234383772335

namespace A071045

/-- `xor(-Δ[n*ceil(n/2)], -1)` -/
def P13917415234383772335.Spec : Prop :=
  ∀ n, P13917415234383772335.a n = A071045 n

end A071045

/-! ## A071045.P10236676769604135313

`∑[xor(1, 2-a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A071045.P10236676769604135313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Int.xor 1 (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071045.P10236676769604135313

namespace A071045

/-- `∑[xor(1, 2-a(n-1))]` -/
def P10236676769604135313.Spec : Prop :=
  ∀ n, P10236676769604135313.a n = A071045 n

end A071045

/-! ## A071045.P17037680596510512586

`ogf((3x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A071045.P17037680596510512586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 1] [1, 0, -2, 0, 1] n

end

end A071045.P17037680596510512586

namespace A071045

/-- `ogf((3x^2+x^3)/(1-2x^2+x^4))` -/
def P17037680596510512586.Spec : Prop :=
  ∀ n, P17037680596510512586.a n = A071045 n

end A071045

/-! ## A071045.P4286084757852597485

`-(-(n*(n+2))%(2*n+1))`
-/

namespace A071045.P4286084757852597485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(n * (n + 2) : ℤ)) (2 * n + 1 : ℤ)

end

end A071045.P4286084757852597485

namespace A071045

/-- `-(-(n*(n+2))%(2*n+1))` -/
def P4286084757852597485.Spec : Prop :=
  ∀ n, P4286084757852597485.a n = A071045 n

end A071045

/-! ## A071045.P18446568933162978660

`floor(a(n-2)+(-1)^n+2)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A071045.P18446568933162978660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + ((-1) ^ n + 2)

end

end A071045.P18446568933162978660

namespace A071045

/-- `floor(a(n-2)+(-1)^n+2)` -/
def P18446568933162978660.Spec : Prop :=
  ∀ n, P18446568933162978660.a n = A071045 n

end A071045

/-! ## A071045.P18155163161566102330

`∑[(-1)^n+2-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A071045.P18155163161566102330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (-1) ^ n + (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071045.P18155163161566102330

namespace A071045

/-- `∑[(-1)^n+2-a(n-1)]` -/
def P18155163161566102330.Spec : Prop :=
  ∀ n, P18155163161566102330.a n = A071045 n

end A071045

/-! ## A071045.P17560057936099364716

`∑[2-(a(n-1)-(-1)^n)]` with `a(0)=0, a(1)=0`
-/

namespace A071045.P17560057936099364716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 - (f1 (n - 1) - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071045.P17560057936099364716

namespace A071045

/-- `∑[2-(a(n-1)-(-1)^n)]` -/
def P17560057936099364716.Spec : Prop :=
  ∀ n, P17560057936099364716.a n = A071045 n

end A071045

/-! ## A071045.P10795148750692105120

`floor((lcm(n+1, 2*n)-∑[n])/(n+1))`
-/

namespace A071045.P10795148750692105120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm (n + 1) (2 * n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A071045.P10795148750692105120

namespace A071045

/-- `floor((lcm(n+1, 2*n)-∑[n])/(n+1))` -/
def P10795148750692105120.Spec : Prop :=
  ∀ n, P10795148750692105120.a n = A071045 n

end A071045

/-! ## A071045.P1293408779611339722

`floor(∑[4-a(n-1)]-a(n-1))` with `a(0)=0, a(1)=0, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A071045.P1293408779611339722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A071045.P1293408779611339722

namespace A071045

/-- `floor(∑[4-a(n-1)]-a(n-1))` -/
def P1293408779611339722.Spec : Prop :=
  ∀ n, P1293408779611339722.a n = A071045 n

end A071045

/-! ## A071045.P3247199454833537563

`((2*n+1)*and(1, n+1)+n-1)/2`
-/

namespace A071045.P3247199454833537563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * Nat.land 1 (n + 1) : ℤ) + ((n : ℤ) - 1) : ℚ) / 2

end

end A071045.P3247199454833537563

namespace A071045

/-- `((2*n+1)*and(1, n+1)+n-1)/2` -/
def P3247199454833537563.Spec : Prop :=
  ∀ n, P3247199454833537563.a n = (A071045 n : ℚ)

end A071045

/-! ## A071045.P11609277099647996075

`∑[a(n-2)+a(n-3)-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=-2`
-/

namespace A071045.P11609277099647996075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, -2] fun n f1 =>
  f1 (n - 2) + f1 (n - 3) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071045.P11609277099647996075

namespace A071045

/-- `∑[a(n-2)+a(n-3)-a(n-1)]` -/
def P11609277099647996075.Spec : Prop :=
  ∀ n, P11609277099647996075.a n = A071045 n

end A071045

/-! ## A071045.P10357942654066929152

`A324245(2*n)`
-/

namespace A071045.P10357942654066929152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (2 * n)

end

end A071045.P10357942654066929152

namespace A071045

/-- `A324245(2*n)` -/
def P10357942654066929152.Spec : Prop :=
  ∀ n, P10357942654066929152.a n = A071045 n

end A071045

/-! ## A071045.P6417876168335192403

`A168237(n)/A010684(n)`
-/

namespace A071045.P6417876168335192403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168237 n : ℚ) / (A010684 n : ℚ)

end

end A071045.P6417876168335192403

namespace A071045

/-- `A168237(n)/A010684(n)` -/
def P6417876168335192403.Spec : Prop :=
  ∀ n, P6417876168335192403.a n = (A071045 n : ℚ)

end A071045

/-! ## A071045.P1801642255736024449

`Δ[n*(∑[and(1, n)]-1)]`
-/

namespace A071045.P1801642255736024449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071045.P1801642255736024449

namespace A071045

/-- `Δ[n*(∑[and(1, n)]-1)]` -/
def P1801642255736024449.Spec : Prop :=
  ∀ n, P1801642255736024449.a n = A071045 n

end A071045

/-! ## A071045.P5904141573512015249

`Δ[A050187(n)]`
-/

namespace A071045.P5904141573512015249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071045.P5904141573512015249

namespace A071045

/-- `Δ[A050187(n)]` -/
def P5904141573512015249.Spec : Prop :=
  ∀ n, P5904141573512015249.a n = A071045 n

end A071045

/-!
# A071046: Number of 0's in n-th row of triangle in A071031, cellular automaton "rule 62".

The programs for A071046, the canonical program `A071046.P14189912899326059712` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071046 has offset 0).

The definition of A071046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071047, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071046.P14189912899326059712

`A005408(n)-A071047(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071046

/-- `A005408(n)-A071047(n)` -/
def P14189912899326059712.Spec : Prop :=
  ∀ n, P14189912899326059712.a n = A071046 n

theorem P14189912899326059712.correct : P14189912899326059712.Spec := by
  intro n
  simp only [A071046]

end A071046

/-! ## A071046.P10610159258529121014

`Δ[A266813(abs(1-n))]`
-/

namespace A071046.P10610159258529121014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266813 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071046.P10610159258529121014

namespace A071046

/-- `Δ[A266813(abs(1-n))]` -/
def P10610159258529121014.Spec : Prop :=
  ∀ n, P10610159258529121014.a n = A071046 n

end A071046

/-! ## A071046.P10046016618039546828

`A000027(2*n+1)%A071047(n)`
-/

namespace A071046.P10046016618039546828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (2 * n + 1)) (A071047 n)

end

end A071046.P10046016618039546828

namespace A071046

/-- `A000027(2*n+1)%A071047(n)` -/
def P10046016618039546828.Spec : Prop :=
  ∀ n, P10046016618039546828.a n = A071046 n

end A071046

/-! ## A071046.P6930441651136851614

`A000027(n+1)+n-A071047(n)`
-/

namespace A071046.P6930441651136851614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A071047 n)

end

end A071046.P6930441651136851614

namespace A071046

/-- `A000027(n+1)+n-A071047(n)` -/
def P6930441651136851614.Spec : Prop :=
  ∀ n, P6930441651136851614.a n = A071046 n

end A071046

/-! ## A071046.P14885903178984242917

`A235451(n)-A080513(A004526(n+1))`
-/

namespace A071046.P14885903178984242917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235451 n - A080513 (A004526 (n + 1)).toNat

end

end A071046.P14885903178984242917

namespace A071046

/-- `A235451(n)-A080513(A004526(n+1))` -/
def P14885903178984242917.Spec : Prop :=
  ∀ n, P14885903178984242917.a n = A071046 n

end A071046

/-! ## A071046.P2599994442919624915

`A267451(n+2)-2`
-/

namespace A071046.P2599994442919624915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267451 (n + 2) - 2

end

end A071046.P2599994442919624915

namespace A071046

/-- `A267451(n+2)-2` -/
def P2599994442919624915.Spec : Prop :=
  ∀ n, P2599994442919624915.a n = A071046 n

end A071046

/-! ## A071046.P15420259096676482913

`Δ[A267452(n+1)]-2`
-/

namespace A071046.P15420259096676482913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A071046.P15420259096676482913

namespace A071046

/-- `Δ[A267452(n+1)]-2` -/
def P15420259096676482913.Spec : Prop :=
  ∀ n, P15420259096676482913.a n = A071046 n

end A071046

/-! ## A071046.P458452297549395549

`n+3-A267453(n+2)+n`
-/

namespace A071046.P458452297549395549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A267453 (n + 2) + (n : ℤ)

end

end A071046.P458452297549395549

namespace A071046

/-- `n+3-A267453(n+2)+n` -/
def P458452297549395549.Spec : Prop :=
  ∀ n, P458452297549395549.a n = A071046 n

end A071046

/-! ## A071046.P204601931925491407

`Δ[(n+1)²-A267454(n+1)]`
-/

namespace A071046.P204601931925491407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071046.P204601931925491407

namespace A071046

/-- `Δ[(n+1)²-A267454(n+1)]` -/
def P204601931925491407.Spec : Prop :=
  ∀ n, P204601931925491407.a n = A071046 n

end A071046

/-! ## A071046.P11244675487858659156

`A008647(A091574(2*n))-A008647(n+3)`
-/

namespace A071046.P11244675487858659156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A091574 (2 * n)).toNat - A008647 (n + 3)

end

end A071046.P11244675487858659156

namespace A071046

/-- `A008647(A091574(2*n))-A008647(n+3)` -/
def P11244675487858659156.Spec : Prop :=
  ∀ n, P11244675487858659156.a n = A071046 n

end A071046

/-!
# A071047: Number of 1's in n-th row of triangle in A071031, cellular automaton "rule 62".

The programs for A071047, the canonical program `A071047.P5402524198042241896` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071047 has offset 0).

The definition of A071047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071047.P8562155599971371129

`Δ[n²]-A071046(n)`
-/

namespace A071047.P8562155599971371129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071046 n

end

end A071047.P8562155599971371129

namespace A071047

/-- `Δ[n²]-A071046(n)` -/
def P8562155599971371129.Spec : Prop :=
  ∀ n, P8562155599971371129.a n = A071047 n

end A071047

/-! ## A071047.P9966194194123707907

`A004773(n+1)+A004396(n)-A071046(n)`
-/

namespace A071047.P9966194194123707907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1) + (A004396 n - A071046 n)

end

end A071047.P9966194194123707907

namespace A071047

/-- `A004773(n+1)+A004396(n)-A071046(n)` -/
def P9966194194123707907.Spec : Prop :=
  ∀ n, P9966194194123707907.a n = A071047 n

end A071047

/-! ## A071047.P5402524198042241896

`A267453(n+2)-2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071047

/-- `A267453(n+2)-2` -/
def P5402524198042241896.Spec : Prop :=
  ∀ n, P5402524198042241896.a n = A071047 n

theorem P5402524198042241896.correct : P5402524198042241896.Spec := by
  intro n
  simp only [A071047]

end A071047

/-! ## A071047.P10148217821388693792

`Δ[A267454(n+1)]-2`
-/

namespace A071047.P10148217821388693792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A071047.P10148217821388693792

namespace A071047

/-- `Δ[A267454(n+1)]-2` -/
def P10148217821388693792.Spec : Prop :=
  ∀ n, P10148217821388693792.a n = A071047 n

end A071047

/-! ## A071047.P10270121589391341729

`∑[2-Δ[A267451(n+1)]]`
-/

namespace A071047.P10270121589391341729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071047.P10270121589391341729

namespace A071047

/-- `∑[2-Δ[A267451(n+1)]]` -/
def P10270121589391341729.Spec : Prop :=
  ∀ n, P10270121589391341729.a n = A071047 n

end A071047

/-! ## A071047.P10361509851478196605

`n+3-A267451(n+2)+n`
-/

namespace A071047.P10361509851478196605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A267451 (n + 2) + (n : ℤ)

end

end A071047.P10361509851478196605

namespace A071047

/-- `n+3-A267451(n+2)+n` -/
def P10361509851478196605.Spec : Prop :=
  ∀ n, P10361509851478196605.a n = A071047 n

end A071047

/-! ## A071047.P8235896538073061582

`Δ[(n+1)²-A267452(n+1)]`
-/

namespace A071047.P8235896538073061582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071047.P8235896538073061582

namespace A071047

/-- `Δ[(n+1)²-A267452(n+1)]` -/
def P8235896538073061582.Spec : Prop :=
  ∀ n, P8235896538073061582.a n = A071047 n

end A071047

/-! ## A071047.P15341109546872059042

`A267454(n+2)-(A267454(n+1)+2)`
-/

namespace A071047.P15341109546872059042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267454 (n + 2) - (A267454 (n + 1) + 2)

end

end A071047.P15341109546872059042

namespace A071047

/-- `A267454(n+2)-(A267454(n+1)+2)` -/
def P15341109546872059042.Spec : Prop :=
  ∀ n, P15341109546872059042.a n = A071047 n

end A071047

/-! ## A071047.P8898869966244932356

`A004526(gcd(3, n)+5*A004526(n+1))`
-/

namespace A071047.P8898869966244932356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((Nat.gcd 3 n : ℤ) + 5 * A004526 (n + 1)).toNat

end

end A071047.P8898869966244932356

namespace A071047

/-- `A004526(gcd(3, n)+5*A004526(n+1))` -/
def P8898869966244932356.Spec : Prop :=
  ∀ n, P8898869966244932356.a n = A071047 n

end A071047

/-!
# A071048: Number of 0's in n-th row of triangle in A070887.

The programs for A071048, there is no canonical definition to state claims against.
-/

/-! ## A071048.P10306008476813112154

`A246027(n)+1`
-/

namespace A071048.P10306008476813112154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246027 n + 1

end

end A071048.P10306008476813112154

/-! ## A071048.P15418314661745580539

`A265322(n)-n`
-/

namespace A071048.P15418314661745580539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265322 n - (n : ℤ)

end

end A071048.P15418314661745580539

/-! ## A071048.P15699254111898327111

`∑[1-A151931(n)]`
-/

namespace A071048.P15699254111898327111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071048.P15699254111898327111

/-! ## A071048.P462423164678439986

`1-A071049(n)+n`
-/

namespace A071048.P462423164678439986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071049 n + (n : ℤ)

end

end A071048.P462423164678439986

/-! ## A071048.P9656026435847205127

`(A265322(n%(n+1))+1)%(n+1)`
-/

namespace A071048.P9656026435847205127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265322 (n % (n + 1)) + 1) (n + 1 : ℤ)

end

end A071048.P9656026435847205127

/-! ## A071048.P4624232464733851320

`n-A023443(A071049(n))`
-/

namespace A071048.P4624232464733851320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A071049 n).toNat

end

end A071048.P4624232464733851320

/-! ## A071048.P14461841897787605373

`A265322(n)%A028310(n)`
-/

namespace A071048.P14461841897787605373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265322 n) (A028310 n)

end

end A071048.P14461841897787605373

/-! ## A071048.P4715499230981159223

`A001478(n+1)+A265322(n)+1`
-/

namespace A071048.P4715499230981159223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A265322 n + 1)

end

end A071048.P4715499230981159223

/-! ## A071048.P6039241533291973338

`∑{digits}[A267356(n), 1-#]`
-/

namespace A071048.P6039241533291973338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A071048.P6039241533291973338

/-!
# A071049: Number of 1's in n-th generation of 1-D CA using Rule 110, started with a single 1.

The programs for A071049, there is no canonical definition to state claims against.
-/

/-! ## A071049.P14297363967229217174

`∑[A151931(n)]`
-/

namespace A071049.P14297363967229217174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071049.P14297363967229217174

/-! ## A071049.P11867572170152463922

`n-A246027(n)`
-/

namespace A071049.P11867572170152463922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246027 n

end

end A071049.P11867572170152463922

/-! ## A071049.P7346760196055361977

`1-A071048(n)+n`
-/

namespace A071049.P7346760196055361977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071048 n + (n : ℤ)

end

end A071049.P7346760196055361977

/-! ## A071049.P5719327396898872896

`Δ[n²]-A265322(n)`
-/

namespace A071049.P5719327396898872896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A265322 n

end

end A071049.P5719327396898872896

/-! ## A071049.P7986977906441657167

`n+1-A265322(n%(n+1))+n`
-/

namespace A071049.P7986977906441657167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265322 (n % (n + 1)) + (n : ℤ)

end

end A071049.P7986977906441657167

/-! ## A071049.P1232594044315224497

`n-A023443(A071048(n))`
-/

namespace A071049.P1232594044315224497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A071048 n).toNat

end

end A071049.P1232594044315224497

/-! ## A071049.P5755809725131121217

`n-A023443(A265322(n)-n)`
-/

namespace A071049.P5755809725131121217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A265322 n - (n : ℤ)).toNat

end

end A071049.P5755809725131121217

/-! ## A071049.P14613981547159588125

`n-(A265322(n)+A001478(n+1))`
-/

namespace A071049.P14613981547159588125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A265322 n + A001478 (n + 1))

end

end A071049.P14613981547159588125

/-! ## A071049.P17465197350932202952

`A151931(n)+a(n-1)%A004277(n)` with `a(0)=1`
-/

namespace A071049.P17465197350932202952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151931 n + Int.tmod (a (n - 1)) (A004277 n)

end

end A071049.P17465197350932202952

/-! ## A071049.P4785250099730779584

`-A246027(n)%A224374(n+1)+n`
-/

namespace A071049.P4785250099730779584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A246027 n) (A224374 (n + 1)) + (n : ℤ)

end

end A071049.P4785250099730779584

/-! ## A071049.P18003825330113833560

`∑{digits}[A267356(n), #]`
-/

namespace A071049.P18003825330113833560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A071049.P18003825330113833560

/-!
# A071050: Number of 0's in n-th row of triangle in A071035.

The programs for A071050, the canonical program `A071050.P979392285191769002` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071050 has offset 0).

The definition of A071050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071050.P979392285191769002

`Δ[A267369(abs(1-n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A071050

/-- `Δ[A267369(abs(1-n))]` -/
def P979392285191769002.Spec : Prop :=
  ∀ n, P979392285191769002.a n = A071050 n

theorem P979392285191769002.correct : P979392285191769002.Spec := by
  intro n
  simp only [A071050]

end A071050

/-! ## A071050.P14131998366880262023

`Δ[A267446(abs(1-n))]`
-/

namespace A071050.P14131998366880262023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267446 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071050.P14131998366880262023

namespace A071050

/-- `Δ[A267446(abs(1-n))]` -/
def P14131998366880262023.Spec : Prop :=
  ∀ n, P14131998366880262023.a n = A071050 n

end A071050

/-! ## A071050.P8373863825910727645

`Δ[n²]-A071051(n)`
-/

namespace A071050.P8373863825910727645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071051 n

end

end A071050.P8373863825910727645

namespace A071050

/-- `Δ[n²]-A071051(n)` -/
def P8373863825910727645.Spec : Prop :=
  ∀ n, P8373863825910727645.a n = A071050 n

end A071050

/-! ## A071050.P6106397169941209553

`A267445(n)%(2*n+1)`
-/

namespace A071050.P6106397169941209553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267445 n) (2 * n + 1 : ℤ)

end

end A071050.P6106397169941209553

namespace A071050

/-- `A267445(n)%(2*n+1)` -/
def P6106397169941209553.Spec : Prop :=
  ∀ n, P6106397169941209553.a n = A071050 n

end A071050

/-! ## A071050.P8617802749414863844

`A004273(A048967(n))`
-/

namespace A071050.P8617802749414863844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A048967 n).toNat

end

end A071050.P8617802749414863844

namespace A071050

/-- `A004273(A048967(n))` -/
def P8617802749414863844.Spec : Prop :=
  ∀ n, P8617802749414863844.a n = A071050 n

end A071050

/-! ## A071050.P16798336810834192591

`A267445(A028310(n))`
-/

namespace A071050.P16798336810834192591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 (A028310 n).toNat

end

end A071050.P16798336810834192591

namespace A071050

/-- `A267445(A028310(n))` -/
def P16798336810834192591.Spec : Prop :=
  ∀ n, P16798336810834192591.a n = A071050 n

end A071050

/-! ## A071050.P6943730644144447301

`A267445(A000007(n)+n)`
-/

namespace A071050.P6943730644144447301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 (A000007 n + (n : ℤ)).toNat

end

end A071050.P6943730644144447301

namespace A071050

/-- `A267445(A000007(n)+n)` -/
def P6943730644144447301.Spec : Prop :=
  ∀ n, P6943730644144447301.a n = A071050 n

end A071050

/-! ## A071050.P3657990729108453131

`A004273(n-A038573(n))`
-/

namespace A071050.P3657990729108453131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ((n : ℤ) - A038573 n).toNat

end

end A071050.P3657990729108453131

namespace A071050

/-- `A004273(n-A038573(n))` -/
def P3657990729108453131.Spec : Prop :=
  ∀ n, P3657990729108453131.a n = A071050 n

end A071050

/-! ## A071050.P2109099167537835620

`A267445(n)-A000007(n)`
-/

namespace A071050.P2109099167537835620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 n - A000007 n

end

end A071050.P2109099167537835620

namespace A071050

/-- `A267445(n)-A000007(n)` -/
def P2109099167537835620.Spec : Prop :=
  ∀ n, P2109099167537835620.a n = A071050 n

end A071050

/-! ## A071050.P5962438396328768215

`A043545(n)*A267445(n)`
-/

namespace A071050.P5962438396328768215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A267445 n

end

end A071050.P5962438396328768215

namespace A071050

/-- `A043545(n)*A267445(n)` -/
def P5962438396328768215.Spec : Prop :=
  ∀ n, P5962438396328768215.a n = A071050 n

end A071050

/-! ## A071050.P619048905719493604

`A057427(n)*A267445(n)`
-/

namespace A071050.P619048905719493604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A267445 n

end

end A071050.P619048905719493604

namespace A071050

/-- `A057427(n)*A267445(n)` -/
def P619048905719493604.Spec : Prop :=
  ∀ n, P619048905719493604.a n = A071050 n

end A071050

/-! ## A071050.P4951796382504393363

`A157928(n)*A267445(n)`
-/

namespace A071050.P4951796382504393363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A267445 n

end

end A071050.P4951796382504393363

namespace A071050

/-- `A157928(n)*A267445(n)` -/
def P4951796382504393363.Spec : Prop :=
  ∀ n, P4951796382504393363.a n = A071050 n

end A071050

/-! ## A071050.P5374980648368446263

`and(A057428(n), A267445(n))`
-/

namespace A071050.P5374980648368446263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A267445 n)

end

end A071050.P5374980648368446263

namespace A071050

/-- `and(A057428(n), A267445(n))` -/
def P5374980648368446263.Spec : Prop :=
  ∀ n, P5374980648368446263.a n = A071050 n

end A071050

/-! ## A071050.P10129507539567353256

`and(A134824(n), A267445(n))`
-/

namespace A071050.P10129507539567353256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A267445 n)

end

end A071050.P10129507539567353256

namespace A071050

/-- `and(A134824(n), A267445(n))` -/
def P10129507539567353256.Spec : Prop :=
  ∀ n, P10129507539567353256.a n = A071050 n

end A071050

/-! ## A071050.P7524288062474109291

`A267445(A057428(n)+1+n)`
-/

namespace A071050.P7524288062474109291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 (A057428 n + 1 + (n : ℤ)).toNat

end

end A071050.P7524288062474109291

namespace A071050

/-- `A267445(A057428(n)+1+n)` -/
def P7524288062474109291.Spec : Prop :=
  ∀ n, P7524288062474109291.a n = A071050 n

end A071050

/-! ## A071050.P5109749337124901914

`A267445(A134824(n)+1+n)`
-/

namespace A071050.P5109749337124901914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 (A134824 n + 1 + (n : ℤ)).toNat

end

end A071050.P5109749337124901914

namespace A071050

/-- `A267445(A134824(n)+1+n)` -/
def P5109749337124901914.Spec : Prop :=
  ∀ n, P5109749337124901914.a n = A071050 n

end A071050

/-! ## A071050.P2550895253260164037

`A004273(1-A001316(n)+n)`
-/

namespace A071050.P2550895253260164037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - A001316 n + (n : ℤ)).toNat

end

end A071050.P2550895253260164037

namespace A071050

/-- `A004273(1-A001316(n)+n)` -/
def P2550895253260164037.Spec : Prop :=
  ∀ n, P2550895253260164037.a n = A071050 n

end A071050

/-! ## A071050.P6987937889968829668

`A005843(n)+1-A071051(n)`
-/

namespace A071050.P6987937889968829668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A071051 n)

end

end A071050.P6987937889968829668

namespace A071050

/-- `A005843(n)+1-A071051(n)` -/
def P6987937889968829668.Spec : Prop :=
  ∀ n, P6987937889968829668.a n = A071050 n

end A071050

/-! ## A071050.P8924803579828116963

`A267445(1-A057427(n)+n)`
-/

namespace A071050.P8924803579828116963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 (1 - A057427 n + (n : ℤ)).toNat

end

end A071050.P8924803579828116963

namespace A071050

/-- `A267445(1-A057427(n)+n)` -/
def P8924803579828116963.Spec : Prop :=
  ∀ n, P8924803579828116963.a n = A071050 n

end A071050

/-! ## A071050.P6966003072950670318

`A004273(1-(A001316(n)-n))`
-/

namespace A071050.P6966003072950670318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - (A001316 n - (n : ℤ))).toNat

end

end A071050.P6966003072950670318

namespace A071050

/-- `A004273(1-(A001316(n)-n))` -/
def P6966003072950670318.Spec : Prop :=
  ∀ n, P6966003072950670318.a n = A071050 n

end A071050

/-!
# A071051: Number of 1's in n-th row of triangle in A071035.

The programs for A071051, the canonical program `A071051.P15402444930345305541` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071051 has offset 0).

The definition of A071051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071051.P10000009916595978047

`Δ[n²]-A071050(n)`
-/

namespace A071051.P10000009916595978047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071050 n

end

end A071051.P10000009916595978047

namespace A071051

/-- `Δ[n²]-A071050(n)` -/
def P10000009916595978047.Spec : Prop :=
  ∀ n, P10000009916595978047.a n = A071051 n

end A071051

/-! ## A071051.P17079586699083523941

`A267447(n)+A000007(n)`
-/

namespace A071051.P17079586699083523941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n + A000007 n

end

end A071051.P17079586699083523941

namespace A071051

/-- `A267447(n)+A000007(n)` -/
def P17079586699083523941.Spec : Prop :=
  ∀ n, P17079586699083523941.a n = A071051 n

end A071051

/-! ## A071051.P15402444930345305541

`A117973(n)-A036987(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071051

/-- `A117973(n)-A036987(n)` -/
def P15402444930345305541.Spec : Prop :=
  ∀ n, P15402444930345305541.a n = A071051 n

theorem P15402444930345305541.correct : P15402444930345305541.Spec := by
  intro n
  simp only [A071051]

end A071051

/-! ## A071051.P12323157982267847709

`or(A036987(n), A267447(n))`
-/

namespace A071051.P12323157982267847709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A267447 n)

end

end A071051.P12323157982267847709

namespace A071051

/-- `or(A036987(n), A267447(n))` -/
def P12323157982267847709.Spec : Prop :=
  ∀ n, P12323157982267847709.a n = A071051 n

end A071051

/-! ## A071051.P14446622134731283267

`A267447(n)+A036987(2*n)`
-/

namespace A071051.P14446622134731283267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n + A036987 (2 * n)

end

end A071051.P14446622134731283267

namespace A071051

/-- `A267447(n)+A036987(2*n)` -/
def P14446622134731283267.Spec : Prop :=
  ∀ n, P14446622134731283267.a n = A071051 n

end A071051

/-! ## A071051.P4235663959818161289

`2*A001316(n)-A036987(n)`
-/

namespace A071051.P4235663959818161289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n - A036987 n

end

end A071051.P4235663959818161289

namespace A071051

/-- `2*A001316(n)-A036987(n)` -/
def P4235663959818161289.Spec : Prop :=
  ∀ n, P4235663959818161289.a n = A071051 n

end A071051

/-! ## A071051.P3480713278898643679

`A028310(n)+A267447(n)-n`
-/

namespace A071051.P3480713278898643679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A267447 n - (n : ℤ))

end

end A071051.P3480713278898643679

namespace A071051

/-- `A028310(n)+A267447(n)-n` -/
def P3480713278898643679.Spec : Prop :=
  ∀ n, P3480713278898643679.a n = A071051 n

end A071051

/-! ## A071051.P10950112805424200095

`2*A001316(n)+A043545(n)-1`
-/

namespace A071051.P10950112805424200095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n + (A043545 n - 1)

end

end A071051.P10950112805424200095

namespace A071051

/-- `2*A001316(n)+A043545(n)-1` -/
def P10950112805424200095.Spec : Prop :=
  ∀ n, P10950112805424200095.a n = A071051 n

end A071051

/-! ## A071051.P17179823308732487873

`2*A001316(n)-A209229(n+1)`
-/

namespace A071051.P17179823308732487873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n - A209229 (n + 1)

end

end A071051.P17179823308732487873

namespace A071051

/-- `2*A001316(n)-A209229(n+1)` -/
def P17179823308732487873.Spec : Prop :=
  ∀ n, P17179823308732487873.a n = A071051 n

end A071051

/-! ## A071051.P12290503930031720657

`2*A001316(n)-A255738(n+2)`
-/

namespace A071051.P12290503930031720657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n - A255738 (n + 2)

end

end A071051.P12290503930031720657

namespace A071051

/-- `2*A001316(n)-A255738(n+2)` -/
def P12290503930031720657.Spec : Prop :=
  ∀ n, P12290503930031720657.a n = A071051 n

end A071051

/-! ## A071051.P18108862950152267526

`A000069(A001316(n)+1)-A036987(n)`
-/

namespace A071051.P18108862950152267526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A001316 n + 1).toNat - A036987 n

end

end A071051.P18108862950152267526

namespace A071051

/-- `A000069(A001316(n)+1)-A036987(n)` -/
def P18108862950152267526.Spec : Prop :=
  ∀ n, P18108862950152267526.a n = A071051 n

end A071051

/-! ## A071051.P15888496493011542989

`A004273(n+1)-A004273(A048967(n))`
-/

namespace A071051.P15888496493011542989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - A004273 (A048967 n).toNat

end

end A071051.P15888496493011542989

namespace A071051

/-- `A004273(n+1)-A004273(A048967(n))` -/
def P15888496493011542989.Spec : Prop :=
  ∀ n, P15888496493011542989.a n = A071051 n

end A071051

/-! ## A071051.P1461831794491481772

`A048896(A048896(n))+2*A038573(n)`
-/

namespace A071051.P1461831794491481772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A048896 n).toNat + 2 * A038573 n

end

end A071051.P1461831794491481772

namespace A071051

/-- `A048896(A048896(n))+2*A038573(n)` -/
def P1461831794491481772.Spec : Prop :=
  ∀ n, P1461831794491481772.a n = A071051 n

end A071051

/-! ## A071051.P14583920020915823430

`A267447(n)^A001222(A129759(n+1))`
-/

namespace A071051.P14583920020915823430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267447 n : ℚ) ^ (A001222 (A129759 (n + 1)).toNat : ℤ)

end

end A071051.P14583920020915823430

namespace A071051

/-- `A267447(n)^A001222(A129759(n+1))` -/
def P14583920020915823430.Spec : Prop :=
  ∀ n, P14583920020915823430.a n = (A071051 n : ℚ)

end A071051

/-! ## A071051.P12129765555803315665

`A267447(n)+A071035(n)*A267417(n)`
-/

namespace A071051.P12129765555803315665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n + A071035 n * A267417 n

end

end A071051.P12129765555803315665

namespace A071051

/-- `A267447(n)+A071035(n)*A267417(n)` -/
def P12129765555803315665.Spec : Prop :=
  ∀ n, P12129765555803315665.a n = A071051 n

end A071051

/-! ## A071051.P16284276925771272905

`A001316(∑{d}[A001316(n), #])-A036987(n)`
-/

namespace A071051.P16284276925771272905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - A036987 n

end

end A071051.P16284276925771272905

namespace A071051

/-- `A001316(∑{d}[A001316(n), #])-A036987(n)` -/
def P16284276925771272905.Spec : Prop :=
  ∀ n, P16284276925771272905.a n = A071051 n

end A071051

/-! ## A071051.P17549503066205777957

`2*A001316(n)+A008683(A001316(n+1))`
-/

namespace A071051.P17549503066205777957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n + A008683 (A001316 (n + 1)).toNat

end

end A071051.P17549503066205777957

namespace A071051

/-- `2*A001316(n)+A008683(A001316(n+1))` -/
def P17549503066205777957.Spec : Prop :=
  ∀ n, P17549503066205777957.a n = A071051 n

end A071051

/-! ## A071051.P8403870014591681490

`2*A001316(n)-A173677(A006530(2*(n+1)))`
-/

namespace A071051.P8403870014591681490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n - A173677 (A006530 (2 * (n + 1))).toNat

end

end A071051.P8403870014591681490

namespace A071051

/-- `2*A001316(n)-A173677(A006530(2*(n+1)))` -/
def P8403870014591681490.Spec : Prop :=
  ∀ n, P8403870014591681490.a n = A071051 n

end A071051

/-! ## A071051.P15461776509509414067

`2*A001316(n)-A048298(n+1)/A001316(n)`
-/

namespace A071051.P15461776509509414067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001316 n : ℚ) - (A048298 (n + 1) : ℚ) / (A001316 n : ℚ)

end

end A071051.P15461776509509414067

namespace A071051

/-- `2*A001316(n)-A048298(n+1)/A001316(n)` -/
def P15461776509509414067.Spec : Prop :=
  ∀ n, P15461776509509414067.a n = (A071051 n : ℚ)

end A071051

/-! ## A071051.P3390107472431448045

`A029837(n+1)+A131136(n+1)-A029837(n+2)`
-/

namespace A071051.P3390107472431448045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A131136 (n + 1) - A029837 (n + 2))

end

end A071051.P3390107472431448045

namespace A071051

/-- `A029837(n+1)+A131136(n+1)-A029837(n+2)` -/
def P3390107472431448045.Spec : Prop :=
  ∀ n, P3390107472431448045.a n = A071051 n

end A071051

/-!
# A071052: Number of 0's in n-th row of triangle in A071036 (cellular automaton "Rule 150").

The programs for A071052, there is no canonical definition to state claims against.
-/

/-! ## A071052.P7026194905636175736

`Δ[A265223(abs(1-n))]`
-/

namespace A071052.P7026194905636175736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265223 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071052.P7026194905636175736

/-! ## A071052.P10939927109485387492

`Δ[n²]-A071053(n)`
-/

namespace A071052.P10939927109485387492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071053 n

end

end A071052.P10939927109485387492

/-! ## A071052.P6095067843915038000

`Δ[n²]-sqrt(A246035(n))`
-/

namespace A071052.P6095067843915038000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.sqrt (A246035 n : ℝ)

end

end A071052.P6095067843915038000

/-! ## A071052.P18244299893188542854

`abs(A005408(n)-A071053(n))`
-/

namespace A071052.P18244299893188542854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - A071053 n|

end

end A071052.P18244299893188542854

/-! ## A071052.P16220333487114845015

`A005843(n)+1-A071053(n)`
-/

namespace A071052.P16220333487114845015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A071053 n)

end

end A071052.P16220333487114845015

/-! ## A071052.P2130447299277756882

`A004277(n+1)-(A071053(n)+1)`
-/

namespace A071052.P2130447299277756882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) - (A071053 n + 1)

end

end A071052.P2130447299277756882

/-! ## A071052.P13041860676753017005

`A005408(n+1)-(A071053(n)+2)`
-/

namespace A071052.P13041860676753017005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) - (A071053 n + 2)

end

end A071052.P13041860676753017005

/-! ## A071052.P17480409764577270220

`A000290(n+1)-(A071053(n)+A000290(n))`
-/

namespace A071052.P17480409764577270220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A071053 n + A000290 n)

end

end A071052.P17480409764577270220

/-! ## A071052.P9195397106907961481

`A008619(2*n)-A071053(2*n)+n`
-/

namespace A071052.P9195397106907961481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A071053 (2 * n) + (n : ℤ)

end

end A071052.P9195397106907961481

/-! ## A071052.P5785518952549923836

`A267150(2*n)-2*n`
-/

namespace A071052.P5785518952549923836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267150 (2 * n) - (2 * n : ℤ)

end

end A071052.P5785518952549923836

/-! ## A071052.P17253544914738950812

`Δ[n²]-A267148(2*n)`
-/

namespace A071052.P17253544914738950812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267148 (2 * n)

end

end A071052.P17253544914738950812

/-! ## A071052.P6277287938658001086

`2*n+1-A118911(2*n)`
-/

namespace A071052.P6277287938658001086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A118911 (2 * n)

end

end A071052.P6277287938658001086

/-! ## A071052.P14332652436236130163

`A029578(2*n+1)+1-A071053(n)`
-/

namespace A071052.P14332652436236130163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * n + 1) + (1 - A071053 n)

end

end A071052.P14332652436236130163

/-! ## A071052.P4342494209429447772

`A005843(n+1)-(A267148(2*n)+1)`
-/

namespace A071052.P4342494209429447772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - (A267148 (2 * n) + 1)

end

end A071052.P4342494209429447772

/-! ## A071052.P3890750370257532600

`A052928(2*n)+1-A267148(2*n)`
-/

namespace A071052.P3890750370257532600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (2 * n) + (1 - A267148 (2 * n))

end

end A071052.P3890750370257532600

/-! ## A071052.P17874819834806056940

`A109043(2*n)+1-A267148(2*n)`
-/

namespace A071052.P17874819834806056940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (2 * n) + (1 - A267148 (2 * n))

end

end A071052.P17874819834806056940

/-! ## A071052.P13020443471341318034

`A026741(2*n+1)-A026741(A071053(n))`
-/

namespace A071052.P13020443471341318034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * n + 1) - A026741 (A071053 n).toNat

end

end A071052.P13020443471341318034

/-! ## A071052.P13513326849390918333

`A029578(2*n+1)-A029578(A071053(n))`
-/

namespace A071052.P13513326849390918333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * n + 1) - A029578 (A071053 n).toNat

end

end A071052.P13513326849390918333

/-! ## A071052.P17323873933264462436

`A052928(2*n)-A052928(A071053(2*n))`
-/

namespace A071052.P17323873933264462436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (2 * n) - A052928 (A071053 (2 * n)).toNat

end

end A071052.P17323873933264462436

/-! ## A071052.P1112451992914600963

`A052928(2*n)-A052928(A267148(2*n))`
-/

namespace A071052.P1112451992914600963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (2 * n) - A052928 (A267148 (2 * n)).toNat

end

end A071052.P1112451992914600963

/-!
# A071053: Number of ON cells at n-th generation of 1-D CA defined by Rule 150, starting with a single ON cell at generation 0.

The programs for A071053, there is no canonical definition to state claims against.
-/

/-! ## A071053.P6795940152194861717

`sqrt(A246035(n))`
-/

namespace A071053.P6795940152194861717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246035 n : ℝ)

end

end A071053.P6795940152194861717

/-! ## A071053.P937828770160058547

`A253102(n)^(1/3)`
-/

namespace A071053.P937828770160058547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253102 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A071053.P937828770160058547

/-! ## A071053.P7466836205759084270

`Δ[n²]-A071052(n)`
-/

namespace A071053.P7466836205759084270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071052 n

end

end A071053.P7466836205759084270

/-! ## A071053.P18103270429833234941

`A246037(n)/A001316(n)`
-/

namespace A071053.P18103270429833234941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246037 n : ℚ) / (A001316 n : ℚ)

end

end A071053.P18103270429833234941

/-! ## A071053.P759001300261437472

`A253102(n)/A246035(n)`
-/

namespace A071053.P759001300261437472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253102 n : ℚ) / (A246035 n : ℚ)

end

end A071053.P759001300261437472

/-! ## A071053.P2254238650545167931

`gcd(A246035(n), A246037(n))`
-/

namespace A071053.P2254238650545167931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246035 n) (A246037 n)

end

end A071053.P2254238650545167931

/-! ## A071053.P4249681070510587194

`A267148(lcm(2, n))`
-/

namespace A071053.P4249681070510587194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (Nat.lcm 2 n)

end

end A071053.P4249681070510587194

/-! ## A071053.P16544015851068500590

`A118911(A059029(n))`
-/

namespace A071053.P16544015851068500590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (A059029 n).toNat

end

end A071053.P16544015851068500590

/-! ## A071053.P4835264574797762529

`A118911(A109043(n))`
-/

namespace A071053.P4835264574797762529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (A109043 n).toNat

end

end A071053.P4835264574797762529

/-! ## A071053.P8899401960294168248

`A118911(2*n)`
-/

namespace A071053.P8899401960294168248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (2 * n)

end

end A071053.P8899401960294168248

/-! ## A071053.P2391811087171401092

`A267148(2*n)`
-/

namespace A071053.P2391811087171401092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (2 * n)

end

end A071053.P2391811087171401092

/-! ## A071053.P7027835056127413314

`4*n+1-A267150(2*n)`
-/

namespace A071053.P7027835056127413314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (1 - A267150 (2 * n))

end

end A071053.P7027835056127413314

/-! ## A071053.P3972463211654041239

`A246037(n)/A071044(2*n)`
-/

namespace A071053.P3972463211654041239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246037 n : ℚ) / (A071044 (2 * n) : ℚ)

end

end A071053.P3972463211654041239

/-! ## A071053.P6737208596376809395

`filter[A267148(n), A000035(#)]`
-/

namespace A071053.P6737208596376809395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A071053.P6737208596376809395

/-! ## A071053.P11631445635138149815

`A024000(A267150(2*n))+4*n`
-/

namespace A071053.P11631445635138149815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A267150 (2 * n)).toNat + (4 * n : ℤ)

end

end A071053.P11631445635138149815

/-! ## A071053.P15956071207291075779

`A237120(2*n)+1`
-/

namespace A071053.P15956071207291075779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237120 (2 * n) + 1

end

end A071053.P15956071207291075779

/-! ## A071053.P4019187634986227434

`A004442(A237120(2*n))`
-/

namespace A071053.P4019187634986227434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A237120 (2 * n)).toNat

end

end A071053.P4019187634986227434

/-! ## A071053.P11000599684218850242

`A000265(A246037(n))`
-/

namespace A071053.P11000599684218850242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A246037 n).toNat

end

end A071053.P11000599684218850242

/-! ## A071053.P13391809449317189424

`A246037(n)/A000005(A019565(n))`
-/

namespace A071053.P13391809449317189424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246037 n : ℚ) / (A000005 (A019565 n).toNat : ℚ)

end

end A071053.P13391809449317189424

/-!
# A071054: a(2n)=3n+1, a(2n+1)=2n+2.

The programs for A071054, the canonical program `A071054.P14282252005453825790` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071054 has offset 0).

The definition of A071054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071054.P14282252005453825790

`5/4*n+3/2+(n/4-1/2)*(-1)^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071054

/-- `5/4*n+3/2+(n/4-1/2)*(-1)^n` -/
def P14282252005453825790.Spec : Prop :=
  ∀ n, P14282252005453825790.a n = (A071054 n : ℚ)

end A071054

/-! ## A071054.P515666351455219736

`ogf((1+3x+2x^2-x^3)/(1-2x^2+x^4))`
-/

namespace A071054.P515666351455219736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, -1] [1, 0, -2, 0, 1] n

end

end A071054.P515666351455219736

namespace A071054

/-- `ogf((1+3x+2x^2-x^3)/(1-2x^2+x^4))` -/
def P515666351455219736.Spec : Prop :=
  ∀ n, P515666351455219736.a n = A071054 n

end A071054

/-! ## A071054.P8447628440076198943

`abs((n-2)/gcd(2, n)-2*n)`
-/

namespace A071054.P8447628440076198943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ) - (2 * n : ℚ)|

end

end A071054.P8447628440076198943

namespace A071054

/-- `abs((n-2)/gcd(2, n)-2*n)` -/
def P8447628440076198943.Spec : Prop :=
  ∀ n, P8447628440076198943.a n = (A071054 n : ℚ)

end A071054

/-! ## A071054.P77147916050416110

`∑[a(n-2)+(-1)^n]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A071054.P77147916050416110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 2) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071054.P77147916050416110

namespace A071054

/-- `∑[a(n-2)+(-1)^n]` -/
def P77147916050416110.Spec : Prop :=
  ∀ n, P77147916050416110.a n = A071054 n

end A071054

/-! ## A071054.P6264834188290644780

`floor((∑[n]+(n+1)²)/a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A071054.P6264834188290644780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A071054.P6264834188290644780

namespace A071054

/-- `floor((∑[n]+(n+1)²)/a(n-1))` -/
def P6264834188290644780.Spec : Prop :=
  ∀ n, P6264834188290644780.a n = A071054 n

end A071054

/-! ## A071054.P13226803925181403880

`floor(n/(a(n-1)+1-n)+1+n)` with `a(0)=1`
-/

namespace A071054.P13226803925181403880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / (a (n - 1) + (1 - (n : ℤ)) : ℚ) + 1 + (n : ℚ)⌋

end

end A071054.P13226803925181403880

namespace A071054

/-- `floor(n/(a(n-1)+1-n)+1+n)` -/
def P13226803925181403880.Spec : Prop :=
  ∀ n, P13226803925181403880.a n = A071054 n

end A071054

/-! ## A071054.P1426217709199634564

`floor(n-(n/(n-1-a(n-1))-1))` with `a(0)=1`
-/

namespace A071054.P1426217709199634564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) - ((n : ℚ) / ((n : ℤ) - 1 - a (n - 1) : ℚ) - 1)⌋

end

end A071054.P1426217709199634564

namespace A071054

/-- `floor(n-(n/(n-1-a(n-1))-1))` -/
def P1426217709199634564.Spec : Prop :=
  ∀ n, P1426217709199634564.a n = A071054 n

end A071054

/-! ## A071054.P8469671726533165162

`∑[a(n-2)+a(n-3)-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A071054.P8469671726533165162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 3) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071054.P8469671726533165162

namespace A071054

/-- `∑[a(n-2)+a(n-3)-a(n-1)]` -/
def P8469671726533165162.Spec : Prop :=
  ∀ n, P8469671726533165162.a n = A071054 n

end A071054

/-! ## A071054.P16849967510795226916

`abs(Δ[n²]-A029578(n))`
-/

namespace A071054.P16849967510795226916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - A029578 n|

end

end A071054.P16849967510795226916

namespace A071054

/-- `abs(Δ[n²]-A029578(n))` -/
def P16849967510795226916.Spec : Prop :=
  ∀ n, P16849967510795226916.a n = A071054 n

end A071054

/-! ## A071054.P5495195982803593768

`A081352(n)%A154708(n+1)`
-/

namespace A071054.P5495195982803593768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081352 n) (A154708 (n + 1))

end

end A071054.P5495195982803593768

namespace A071054

/-- `A081352(n)%A154708(n+1)` -/
def P5495195982803593768.Spec : Prop :=
  ∀ n, P5495195982803593768.a n = A071054 n

end A071054

/-! ## A071054.P1664103378831614592

`A135370(n+1)%A168199(n+1)`
-/

namespace A071054.P1664103378831614592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135370 (n + 1)) (A168199 (n + 1))

end

end A071054.P1664103378831614592

namespace A071054

/-- `A135370(n+1)%A168199(n+1)` -/
def P1664103378831614592.Spec : Prop :=
  ∀ n, P1664103378831614592.a n = A071054 n

end A071054

/-! ## A071054.P7631230015714145709

`A269584(n+1)%A195019(n+1)`
-/

namespace A071054.P7631230015714145709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269584 (n + 1)) (A195019 (n + 1))

end

end A071054.P7631230015714145709

namespace A071054

/-- `A269584(n+1)%A195019(n+1)` -/
def P7631230015714145709.Spec : Prop :=
  ∀ n, P7631230015714145709.a n = A071054 n

end A071054

/-! ## A071054.P4390442793558099723

`∑[A134187(A020639(n+1))-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A071054.P4390442793558099723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A134187 (A020639 (n + 1)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071054.P4390442793558099723

namespace A071054

/-- `∑[A134187(A020639(n+1))-a(n-1)]` -/
def P4390442793558099723.Spec : Prop :=
  ∀ n, P4390442793558099723.a n = A071054 n

end A071054

/-! ## A071054.P5571681426399563912

`(2*n+1-A029578(n))%A006094(n+1)`
-/

namespace A071054.P5571681426399563912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) + (1 - A029578 n)) (A006094 (n + 1))

end

end A071054.P5571681426399563912

namespace A071054

/-- `(2*n+1-A029578(n))%A006094(n+1)` -/
def P5571681426399563912.Spec : Prop :=
  ∀ n, P5571681426399563912.a n = A071054 n

end A071054

/-! ## A071054.P13794998805174941091

`Δ[n²-A211538(n+1)]`
-/

namespace A071054.P13794998805174941091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A211538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071054.P13794998805174941091

namespace A071054

/-- `Δ[n²-A211538(n+1)]` -/
def P13794998805174941091.Spec : Prop :=
  ∀ n, P13794998805174941091.a n = A071054 n

end A071054

/-! ## A071054.P4401302302815678452

`A123684(A066070(n+1))`
-/

namespace A071054.P4401302302815678452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A066070 (n + 1)).toNat

end

end A071054.P4401302302815678452

namespace A071054

/-- `A123684(A066070(n+1))` -/
def P4401302302815678452.Spec : Prop :=
  ∀ n, P4401302302815678452.a n = A071054 n

end A071054

/-! ## A071054.P14033154290619364412

`A266285(A022998(n+1))`
-/

namespace A071054.P14033154290619364412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (A022998 (n + 1)).toNat

end

end A071054.P14033154290619364412

namespace A071054

/-- `A266285(A022998(n+1))` -/
def P14033154290619364412.Spec : Prop :=
  ∀ n, P14033154290619364412.a n = A071054 n

end A071054

/-! ## A071054.P16492611117910356001

`A266285(A257088(n+1))`
-/

namespace A071054.P16492611117910356001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (A257088 (n + 1)).toNat

end

end A071054.P16492611117910356001

namespace A071054

/-- `A266285(A257088(n+1))` -/
def P16492611117910356001.Spec : Prop :=
  ∀ n, P16492611117910356001.a n = A071054 n

end A071054

/-! ## A071054.P10440723591727989603

`A226107(A154708(n+2))`
-/

namespace A071054.P10440723591727989603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (A154708 (n + 2)).toNat

end

end A071054.P10440723591727989603

namespace A071054

/-- `A226107(A154708(n+2))` -/
def P10440723591727989603.Spec : Prop :=
  ∀ n, P10440723591727989603.a n = A071054 n

end A071054

/-! ## A071054.P12323998918185289217

`A028242(A106833(n+1))`
-/

namespace A071054.P12323998918185289217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A106833 (n + 1)).toNat

end

end A071054.P12323998918185289217

namespace A071054

/-- `A028242(A106833(n+1))` -/
def P12323998918185289217.Spec : Prop :=
  ∀ n, P12323998918185289217.a n = A071054 n

end A071054

/-!
# A071055: Number of 0's in n-th row of triangle in A071038.

The programs for A071055, the canonical program `A071055.P7877732468100545475` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071055 has offset 0).

The definition of A071055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071055.P9287818334305264855

`2*(2^(n-∑[val(n+1, 2)])-1)`
-/

namespace A071055.P9287818334305264855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) - 1)

end

end A071055.P9287818334305264855

namespace A071055

/-- `2*(2^(n-∑[val(n+1, 2)])-1)` -/
def P9287818334305264855.Spec : Prop :=
  ∀ n, P9287818334305264855.a n = (A071055 n : ℚ)

end A071055

/-! ## A071055.P7877732468100545475

`(-1)^n+gcd(2, n)*a(floor((n+1)/2)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071055

/-- `(-1)^n+gcd(2, n)*a(floor((n+1)/2)-1)+1` -/
def P7877732468100545475.Spec : Prop :=
  ∀ n, P7877732468100545475.a n = A071055 n

theorem P7877732468100545475.correct : P7877732468100545475.Spec := by
  intro n
  simp only [A071055]

end A071055

/-! ## A071055.P5267257989747720658

`∑[A151930(n)]-1`
-/

namespace A071055.P5267257989747720658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A071055.P5267257989747720658

namespace A071055

/-- `∑[A151930(n)]-1` -/
def P5267257989747720658.Spec : Prop :=
  ∀ n, P5267257989747720658.a n = A071055 n

end A071055

/-! ## A071055.P14999078632530995987

`A001316(n+1)-2`
-/

namespace A071055.P14999078632530995987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1) - 2

end

end A071055.P14999078632530995987

namespace A071055

/-- `A001316(n+1)-2` -/
def P14999078632530995987.Spec : Prop :=
  ∀ n, P14999078632530995987.a n = A071055 n

end A071055

/-! ## A071055.P7164340280311916605

`2*(A048896(n)-1)`
-/

namespace A071055.P7164340280311916605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048896 n - 1)

end

end A071055.P7164340280311916605

namespace A071055

/-- `2*(A048896(n)-1)` -/
def P7164340280311916605.Spec : Prop :=
  ∀ n, P7164340280311916605.a n = A071055 n

end A071055

/-! ## A071055.P2070293096065663539

`n-A048967(n+1)`
-/

namespace A071055.P2070293096065663539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048967 (n + 1)

end

end A071055.P2070293096065663539

namespace A071055

/-- `n-A048967(n+1)` -/
def P2070293096065663539.Spec : Prop :=
  ∀ n, P2070293096065663539.a n = A071055 n

end A071055

/-! ## A071055.P2821287656599397467

`Δ[A267610(abs(1-n))]`
-/

namespace A071055.P2821287656599397467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267610 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071055.P2821287656599397467

namespace A071055

/-- `Δ[A267610(abs(1-n))]` -/
def P2821287656599397467.Spec : Prop :=
  ∀ n, P2821287656599397467.a n = A071055 n

end A071055

/-! ## A071055.P8838045071261493381

`Δ[n²-A171378(n)]`
-/

namespace A071055.P8838045071261493381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A171378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071055.P8838045071261493381

namespace A071055

/-- `Δ[n²-A171378(n)]` -/
def P8838045071261493381.Spec : Prop :=
  ∀ n, P8838045071261493381.a n = A071055 n

end A071055

/-! ## A071055.P13104321613672939316

`sqrt(A102376(n+1))-2`
-/

namespace A071055.P13104321613672939316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 (n + 1) : ℝ) - 2

end

end A071055.P13104321613672939316

namespace A071055

/-- `sqrt(A102376(n+1))-2` -/
def P13104321613672939316.Spec : Prop :=
  ∀ n, P13104321613672939316.a n = (A071055 n : ℝ)

end A071055

/-! ## A071055.P1066038885474980155

`Δ[A006046(n+1)]-2`
-/

namespace A071055.P1066038885474980155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A071055.P1066038885474980155

namespace A071055

/-- `Δ[A006046(n+1)]-2` -/
def P1066038885474980155.Spec : Prop :=
  ∀ n, P1066038885474980155.a n = A071055 n

end A071055

/-! ## A071055.P8003925793233330919

`2*(Δ[A193494(n)]-1)`
-/

namespace A071055.P8003925793233330919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A071055.P8003925793233330919

namespace A071055

/-- `2*(Δ[A193494(n)]-1)` -/
def P8003925793233330919.Spec : Prop :=
  ∀ n, P8003925793233330919.a n = A071055 n

end A071055

/-! ## A071055.P14888316935737434929

`A060632(2*(n+1))-2`
-/

namespace A071055.P14888316935737434929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * (n + 1)) - 2

end

end A071055.P14888316935737434929

namespace A071055

/-- `A060632(2*(n+1))-2` -/
def P14888316935737434929.Spec : Prop :=
  ∀ n, P14888316935737434929.a n = A071055 n

end A071055

/-! ## A071055.P1423666435675053892

`2^A000120(n+1)-2`
-/

namespace A071055.P1423666435675053892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (n + 1) : ℤ) - 2

end

end A071055.P1423666435675053892

namespace A071055

/-- `2^A000120(n+1)-2` -/
def P1423666435675053892.Spec : Prop :=
  ∀ n, P1423666435675053892.a n = (A071055 n : ℚ)

end A071055

/-! ## A071055.P14992060877795887379

`∏[2/A006519(n+1)]-2`
-/

namespace A071055.P14992060877795887379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A071055.P14992060877795887379

namespace A071055

/-- `∏[2/A006519(n+1)]-2` -/
def P14992060877795887379.Spec : Prop :=
  ∀ n, P14992060877795887379.a n = (A071055 n : ℚ)

end A071055

/-! ## A071055.P8036836706873030209

`A000203(2^(n-∑[val(n+1, 2)]))-1`
-/

namespace A071055.P8036836706873030209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat - 1

end

end A071055.P8036836706873030209

namespace A071055

/-- `A000203(2^(n-∑[val(n+1, 2)]))-1` -/
def P8036836706873030209.Spec : Prop :=
  ∀ n, P8036836706873030209.a n = A071055 n

end A071055

/-! ## A071055.P4959752293830719254

`Δ[A000203(lcm(n, a(n-1)+1)/n)]+a(n-1)` with `a(0)=0`
-/

namespace A071055.P4959752293830719254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000203 (SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) (f1 (n - 1) + 1) : ℚ) / (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A071055.P4959752293830719254

namespace A071055

/-- `Δ[A000203(lcm(n, a(n-1)+1)/n)]+a(n-1)` -/
def P4959752293830719254.Spec : Prop :=
  ∀ n, P4959752293830719254.a n = A071055 n

end A071055

/-! ## A071055.P11255519793067894936

`A023889(A048896(n))`
-/

namespace A071055.P11255519793067894936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (A048896 n).toNat

end

end A071055.P11255519793067894936

namespace A071055

/-- `A023889(A048896(n))` -/
def P11255519793067894936.Spec : Prop :=
  ∀ n, P11255519793067894936.a n = A071055 n

end A071055

/-! ## A071055.P12164552226567691737

`A000918(A000120(n+1))`
-/

namespace A071055.P12164552226567691737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A000120 (n + 1)).toNat

end

end A071055.P12164552226567691737

namespace A071055

/-- `A000918(A000120(n+1))` -/
def P12164552226567691737.Spec : Prop :=
  ∀ n, P12164552226567691737.a n = A071055 n

end A071055

/-! ## A071055.P7734076459379588455

`A023444(A001316(n+1))`
-/

namespace A071055.P7734076459379588455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A001316 (n + 1)).toNat

end

end A071055.P7734076459379588455

namespace A071055

/-- `A023444(A001316(n+1))` -/
def P7734076459379588455.Spec : Prop :=
  ∀ n, P7734076459379588455.a n = A071055 n

end A071055

/-! ## A071055.P16813574607245796999

`A000918(A048881(n)+1)`
-/

namespace A071055.P16813574607245796999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A048881 n + 1).toNat

end

end A071055.P16813574607245796999

namespace A071055

/-- `A000918(A048881(n)+1)` -/
def P16813574607245796999.Spec : Prop :=
  ∀ n, P16813574607245796999.a n = A071055 n

end A071055

/-!
# A071057: Smallest number m such that m = prime(i+1) mod prime(i) for 1<=i<=n.

The programs for A071057, there is no canonical definition to state claims against.
-/

/-! ## A071057.P16564487791422731206

`∑[A266228(∑[A269565(n+1)])]`
-/

namespace A071057.P16564487791422731206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071057.P16564487791422731206

/-! ## A071057.P8051461723831766374

`∑[A002110(n)*A072048(A002110(n))]`
-/

namespace A071057.P8051461723831766374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A072048 (A002110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071057.P8051461723831766374

/-!
# A071058: Number of ways of pairing odd numbers in the range 1 to n with even numbers in the range n+1 to 2n such that each pair sums to a prime.

The programs for A071058, there is no canonical definition to state claims against.
-/

/-! ## A071058.P15081098133809449623

`A070897(n+1)/A071059(n+1)`
-/

namespace A071058.P15081098133809449623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070897 (n + 1) : ℚ) / (A071059 (n + 1) : ℚ)

end

end A071058.P15081098133809449623

/-!
# A071059: Number of ways of pairing even numbers in the range 1 to n with odd numbers in the range n+1 to 2n such that each pair sums to a prime.

The programs for A071059, there is no canonical definition to state claims against.
-/

/-! ## A071059.P11864035359920548948

`A070897(n+1)/A071058(n+1)`
-/

namespace A071059.P11864035359920548948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070897 (n + 1) : ℚ) / (A071058 (n + 1) : ℚ)

end

end A071059.P11864035359920548948

/-!
# A071060: Largest n-digit prime with only prime digits.

The programs for A071060, there is no canonical definition to state claims against.
-/

/-! ## A071060.P1529237889407569696

`A151800(A099667(n+1)-n)`
-/

namespace A071060.P1529237889407569696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A099667 (n + 1) - (n : ℤ)).toNat

end

end A071060.P1529237889407569696

/-!
# A071061: Abjad values of the Arabic letters in the traditional order for abjad calculations.

The programs for A071061, there is no canonical definition to state claims against.
-/

/-! ## A071061.P2815938235858731662

`∑[10^(comp[n*a(n-1)]-n)]` with `a(0)=10`
-/

namespace A071061.P2815938235858731662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f2 =>
  n * f2 (n - 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071061.P2815938235858731662

/-! ## A071061.P17125936631091259664

`∑[10^(comp[10*∏{p}[n+1, #]]-n)]`
-/

namespace A071061.P17125936631091259664
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (∏ p ∈ Nat.primeFactors (f3 n), p)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071061.P17125936631091259664

/-! ## A071061.P16765891463753373043

`(a(n-1)+a(n-dr(n)))%∑[4*n]` with `a(0)=1`
-/

namespace A071061.P16765891463753373043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ))) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071061.P16765891463753373043

/-! ## A071061.P11259381760342935328

`(a(n-1)+a(n-dr(n)))*ceil(n/63)` with `a(0)=1`
-/

namespace A071061.P11259381760342935328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ))) * ⌈(n : ℚ) / 63⌉

end

end A071061.P11259381760342935328

/-! ## A071061.P9678432123936432764

`(a(n-1)+10^floor((n-1)/9))%(n*839)` with `a(0)=1`
-/

namespace A071061.P9678432123936432764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ))) (n * 839 : ℤ)

end

end A071061.P9678432123936432764

/-!
# A071062: Minimal set of prime-strings in base 10.

The programs for A071062, there is no canonical definition to state claims against.
-/

/-! ## A071062.P2771672793846199745

`p?[(A006093(n+1)+1)*A039994(n+1)]`
-/

namespace A071062.P2771672793846199745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A039994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071062.P2771672793846199745

/-! ## A071062.P12604292439037196494

`p?[(A008864(n+1)-1)*A039994(n+1)]`
-/

namespace A071062.P12604292439037196494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A039994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071062.P12604292439037196494

/-! ## A071062.P5107762211808907670

`p?[(A014692(n+1)+n)*A039994(n+1)]`
-/

namespace A071062.P5107762211808907670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A039994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071062.P5107762211808907670

/-! ## A071062.P15082103054610833271

`p?[(A014688(n+1)-(n+1))*A039994(n+1)]`
-/

namespace A071062.P15082103054610833271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014688 (n + 1) - (n + 1 : ℤ)) * A039994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071062.P15082103054610833271

/-!
# A071068: Number of ways to write n as a sum of two unordered squarefree numbers.

The programs for A071068, there is no canonical definition to state claims against.
-/

/-! ## A071068.P16071091946175131181

`(A262991(n+1)-A294101(n+1))/2`
-/

namespace A071068.P16071091946175131181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262991 (n + 1) - A294101 (n + 1) : ℚ) / 2

end

end A071068.P16071091946175131181

/-! ## A071068.P7015190701333200123

`ceil(A098235(n+1)/2)`
-/

namespace A071068.P7015190701333200123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098235 (n + 1) : ℚ) / 2⌉

end

end A071068.P7015190701333200123

/-! ## A071068.P11035053843048368720

`A262351(n+1)/(n+1)`
-/

namespace A071068.P11035053843048368720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262351 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A071068.P11035053843048368720

/-! ## A071068.P21889750826489025

`A110654(A098235(n+1))`
-/

namespace A071068.P21889750826489025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A098235 (n + 1)).toNat

end

end A071068.P21889750826489025

/-! ## A071068.P15563190634992871068

`A004526(A098235(n+1)+1)`
-/

namespace A071068.P15563190634992871068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098235 (n + 1) + 1).toNat

end

end A071068.P15563190634992871068

/-! ## A071068.P7900463182854455179

`A123108(A098235(n+1)+1)`
-/

namespace A071068.P7900463182854455179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A098235 (n + 1) + 1).toNat

end

end A071068.P7900463182854455179

/-! ## A071068.P10288914091058606228

`A008619(A098235(n+1)+1)-1`
-/

namespace A071068.P10288914091058606228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A098235 (n + 1) + 1).toNat - 1

end

end A071068.P10288914091058606228

/-! ## A071068.P17270865719698043565

`A004524(or(1, A098235(n+1)+1))`
-/

namespace A071068.P17270865719698043565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A098235 (n + 1) + 1)).toNat

end

end A071068.P17270865719698043565

/-! ## A071068.P7649491393858705880

`A028242(or(1, A098235(n+1)+1))`
-/

namespace A071068.P7649491393858705880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A098235 (n + 1) + 1)).toNat

end

end A071068.P7649491393858705880

/-! ## A071068.P7116105977391736994

`A262868(n+1)-A294233(n+1)`
-/

namespace A071068.P7116105977391736994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) - A294233 (n + 1)

end

end A071068.P7116105977391736994

/-! ## A071068.P13159850652843654603

`A262869(n+1)-A294232(n+1)`
-/

namespace A071068.P13159850652843654603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n + 1) - A294232 (n + 1)

end

end A071068.P13159850652843654603

/-! ## A071068.P6658909046531635598

`A294100(n+1)-A282380(n+1)`
-/

namespace A071068.P6658909046531635598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294100 (n + 1) - A282380 (n + 1)

end

end A071068.P6658909046531635598

/-! ## A071068.P3113212735379357775

`A262991(n+1)-A351833(n+1)`
-/

namespace A071068.P3113212735379357775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - A351833 (n + 1)

end

end A071068.P3113212735379357775

/-! ## A071068.P16060459472227890801

`A351833(n+1)-A294101(n+1)`
-/

namespace A071068.P16060459472227890801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (n + 1) - A294101 (n + 1)

end

end A071068.P16060459472227890801

/-! ## A071068.P1136387227020431476

`floor(A004275(A098235(n+1)+2)/4)`
-/

namespace A071068.P1136387227020431476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004275 (A098235 (n + 1) + 2).toNat : ℚ) / 4⌋

end

end A071068.P1136387227020431476

/-! ## A071068.P7172578014167518726

`(2*A262351(n+1))%record[A093178(n)]`
-/

namespace A071068.P7172578014167518726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A262351 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A071068.P7172578014167518726

/-! ## A071068.P16519228342453147201

`A098235(n+1)-A140106(A098235(n+1)+2)`
-/

namespace A071068.P16519228342453147201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (n + 1) - A140106 (A098235 (n + 1) + 2).toNat

end

end A071068.P16519228342453147201

/-! ## A071068.P9753685476184708259

`A262991(n+1)-(A294232(n+1)+A262868(n+1))`
-/

namespace A071068.P9753685476184708259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262991 (n + 1) - (A294232 (n + 1) + A262868 (n + 1))

end

end A071068.P9753685476184708259

/-! ## A071068.P16003758540307055875

`A262868(n+1)+A294232(n+1)-A294101(n+1)`
-/

namespace A071068.P16003758540307055875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) + (A294232 (n + 1) - A294101 (n + 1))

end

end A071068.P16003758540307055875

/-! ## A071068.P14866787560738422563

`A013928(n+1)-A351834(n+1)`
-/

namespace A071068.P14866787560738422563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A351834 (n + 1)

end

end A071068.P14866787560738422563

/-!
# A071072: Minimal "multiples of 4" set in base 10.

The programs for A071072, there is no canonical definition to state claims against.
-/

/-! ## A071072.P2957216730434425060

`4*comp[∑[gcd(3, n)]+2]`
-/

namespace A071072.P2957216730434425060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A071072.P2957216730434425060

/-! ## A071072.P8760063932516409567

`∑[16%∏{e}[n+1, 6*#]]`
-/

namespace A071072.P8760063932516409567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 % (∏ p ∈ Nat.primeFactors (f2 n), 6 * Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071072.P8760063932516409567

/-! ## A071072.P4183944943304035069

`∑[and(20, ∏{e}[n+1, 6*#+1])]`
-/

namespace A071072.P4183944943304035069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 20 (∏ p ∈ Nat.primeFactors (f2 n), (6 * Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071072.P4183944943304035069

/-! ## A071072.P7948128319766603911

`4*comp[∑[floor(a(n-3))]]` with `a(0)=5, a(1)=1, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A071072.P7948128319766603911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 1, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A071072.P7948128319766603911

/-! ## A071072.P16674390291789713382

`∑[∑{e}[∏{e}[n+1, C(#+5, 5)], #]²]`
-/

namespace A071072.P16674390291789713382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.choose (Nat.factorization (f3 n) p + 5) 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071072.P16674390291789713382

/-!
# A071073: Minimal "multiples of 3" set in base 10.

The programs for A071073, there is no canonical definition to state claims against.
-/

/-! ## A071073.P12690593196649364495

`eq[A100063(A070565(n)), A138189(n)]`
-/

namespace A071073.P12690593196649364495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071073.P12690593196649364495

/-! ## A071073.P5721551860080917333

`A118759(A323422(n+1))`
-/

namespace A071073.P5721551860080917333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A323422 (n + 1)).toNat

end

end A071073.P5721551860080917333

/-! ## A071073.P11303463203547670067

`A000194(A323422(n+1)²)`
-/

namespace A071073.P11303463203547670067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A323422 (n + 1) ^ 2).toNat

end

end A071073.P11303463203547670067

/-! ## A071073.P4424292313265597690

`A000196(A323422(n+1)²)`
-/

namespace A071073.P4424292313265597690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A323422 (n + 1) ^ 2).toNat

end

end A071073.P4424292313265597690

/-! ## A071073.P5107192572070675421

`filter[A323422(n+1), A317961(#)]`
-/

namespace A071073.P5107192572070675421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A317961 (f1 j).toNat = 1) n)

end

end A071073.P5107192572070675421

/-!
# A071074: Sprague-Grundy values for the game of Double Kayles (octal game .7777).

The programs for A071074, there is no canonical definition to state claims against.
-/

/-! ## A071074.P8058180179025091802

`A274618(2*n)`
-/

namespace A071074.P8058180179025091802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274618 (2 * n)

end

end A071074.P8058180179025091802

/-!
# A071075: Number of permutations that avoid the generalized pattern 132-4.

The programs for A071075, there is no canonical definition to state claims against.
-/

/-! ## A071075.P14335242048124464295

`A006370(A177542(n)+A109153(n))`
-/

namespace A071075.P14335242048124464295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A177542 n + A109153 n).toNat

end

end A071075.P14335242048124464295

/-! ## A071075.P11282754288765038514

`A063677(A113226(n)+1)`
-/

namespace A071075.P11282754288765038514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A113226 n + 1).toNat

end

end A071075.P11282754288765038514

/-! ## A071075.P7066842744800735752

`filter[A113226(n), A070887(#)]`
-/

namespace A071075.P7066842744800735752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070887 (f1 j).toNat = 1) n)

end

end A071075.P7066842744800735752

/-!
# A071076: Number of permutations that avoid the generalized pattern 123-4.

The programs for A071076, there is no canonical definition to state claims against.
-/

/-! ## A071076.P2679734845279099836

`A172264(A328234(n!))`
-/

namespace A071076.P2679734845279099836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A328234 (Nat.factorial n)).toNat

end

end A071076.P2679734845279099836

/-! ## A071076.P1123483487467153183

`or(A131842(n), A350029(2^n))`
-/

namespace A071076.P1123483487467153183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131842 n) (A350029 (2 ^ n))

end

end A071076.P1123483487467153183

/-! ## A071076.P9103719275306251007

`n!-A059995(A285002(n+1)²)`
-/

namespace A071076.P9103719275306251007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A059995 (A285002 (n + 1) ^ 2).toNat

end

end A071076.P9103719275306251007

/-!
# A071077: Number of permutations that avoid the generalized pattern 1234-5.

The programs for A071077, there is no canonical definition to state claims against.
-/

/-! ## A071077.P13984620103054799920

`A214701(n!)`
-/

namespace A071077.P13984620103054799920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (Nat.factorial n)

end

end A071077.P13984620103054799920

/-! ## A071077.P12651383029027079290

`A214701(∏[round(1/acot(n))])`
-/

namespace A071077.P12651383029027079290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071077.P12651383029027079290

/-! ## A071077.P10999801691712972586

`n!-A383511(n²+1)`
-/

namespace A071077.P10999801691712972586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A383511 (n ^ 2 + 1)

end

end A071077.P10999801691712972586

/-!
# A071079: Determinant of the n X n matrix whose element (i,j) equals the |i-j|-th prime or if i=j, 0.

The programs for A071079, there is no canonical definition to state claims against.
-/

/-! ## A071079.P14625974609398150133

`A136590(A144653(n)+A094040(n+1))`
-/

namespace A071079.P14625974609398150133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136590 (A144653 n + A094040 (n + 1)).toNat

end

end A071079.P14625974609398150133

/-!
# A071086: Number of integers of the form (nk)^2/(n^2+k^2), k>=1.

The programs for A071086, there is no canonical definition to state claims against.
-/

/-! ## A071086.P9454267680474306934

`A070304(n+1)-1`
-/

namespace A071086.P9454267680474306934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070304 (n + 1) - 1

end

end A071086.P9454267680474306934

/-! ## A071086.P11204618344730614782

`abs(1-A070304(-xor(n, -1)))`
-/

namespace A071086.P11204618344730614782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A070304 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A071086.P11204618344730614782

/-! ## A071086.P13445859838506466863

`(A070304(n+1)+A028310(n))%(n+1)`
-/

namespace A071086.P13445859838506466863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070304 (n + 1) + A028310 n) (n + 1 : ℤ)

end

end A071086.P13445859838506466863

/-! ## A071086.P2224836728338017622

`xor(-A070304(n+1), or(-1, A000041(n)))`
-/

namespace A071086.P2224836728338017622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A070304 (n + 1)) (Int.lor (-1) (A000041 n))

end

end A071086.P2224836728338017622

/-! ## A071086.P7149216746661371597

`floor(A070304(n+1)/ratio[A107994(n+1)])`
-/

namespace A071086.P7149216746661371597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070304 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A071086.P7149216746661371597

/-! ## A071086.P13796846897210679241

`xor(-A070304(n+1), or(-1, A000005(n+1)))`
-/

namespace A071086.P13796846897210679241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A070304 (n + 1)) (Int.lor (-1) (A000005 (n + 1)))

end

end A071086.P13796846897210679241

/-! ## A071086.P16026175196380140746

`xor(-A070304(n+1), or(-1, A006530(n+2)))`
-/

namespace A071086.P16026175196380140746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A070304 (n + 1)) (Int.lor (-1) (A006530 (n + 2)))

end

end A071086.P16026175196380140746

/-! ## A071086.P3598569312061162963

`xor(-A070304(n+1), A008683(A002144(n+3)))`
-/

namespace A071086.P3598569312061162963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A070304 (n + 1)) (A008683 (A002144 (n + 3)).toNat)

end

end A071086.P3598569312061162963

/-! ## A071086.P13351027678351109510

`floor(A070304(n+1)/ratio[A107998(n+1)])`
-/

namespace A071086.P13351027678351109510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070304 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A071086.P13351027678351109510

/-! ## A071086.P8121777726505735442

`A117010(n+1)%A070304(n+1)`
-/

namespace A071086.P8121777726505735442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A070304 (n + 1))

end

end A071086.P8121777726505735442

/-! ## A071086.P7137909516209039090

`A083800(n+1)%A070304(n+1)`
-/

namespace A071086.P7137909516209039090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A070304 (n + 1))

end

end A071086.P7137909516209039090

/-! ## A071086.P17678790687390584957

`A070198(n)%A070304(n+1)`
-/

namespace A071086.P17678790687390584957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A070304 (n + 1))

end

end A071086.P17678790687390584957

/-! ## A071086.P18202200571472821625

`A079782(n+1)%A070304(n+1)`
-/

namespace A071086.P18202200571472821625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A070304 (n + 1))

end

end A071086.P18202200571472821625

/-! ## A071086.P10669806398544799886

`A083685(n+1)%A070304(n+1)`
-/

namespace A071086.P10669806398544799886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A070304 (n + 1))

end

end A071086.P10669806398544799886

/-! ## A071086.P5278166412167812214

`A121934(n+1)%A070304(n+1)`
-/

namespace A071086.P5278166412167812214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A070304 (n + 1))

end

end A071086.P5278166412167812214

/-! ## A071086.P12418632442133908708

`A002262(A070304(n+1)+∑[n+2])`
-/

namespace A071086.P12418632442133908708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A070304 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A071086.P12418632442133908708

/-! ## A071086.P14440539466278611619

`A030494(n+1)%A070304(n+1)`
-/

namespace A071086.P14440539466278611619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A070304 (n + 1))

end

end A071086.P14440539466278611619

/-! ## A071086.P7676890649457086181

`A072828(n+1)%A070304(n+1)`
-/

namespace A071086.P7676890649457086181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A070304 (n + 1))

end

end A071086.P7676890649457086181

/-! ## A071086.P13547328478196670069

`A198277(n)%A070304(n+1)`
-/

namespace A071086.P13547328478196670069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A070304 (n + 1))

end

end A071086.P13547328478196670069

/-!
# A071087: w values for A071352.

The programs for A071087, there is no canonical definition to state claims against.
-/

/-! ## A071087.P13874428256095797783

`A129258(n*(C(n, 2)+1)+1+n)`
-/

namespace A071087.P13874428256095797783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129258 (n * (Nat.choose n 2 + 1) + 1 + n)

end

end A071087.P13874428256095797783

/-! ## A071087.P14458836337128226613

`A129258(A084631(n))`
-/

namespace A071087.P14458836337128226613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129258 (A084631 n).toNat

end

end A071087.P14458836337128226613

/-!
# A071088: Number of permutations that avoid the generalized pattern 12345-6.

The programs for A071088, there is no canonical definition to state claims against.
-/

/-! ## A071088.P17958635418683596086

`A028310(n!-A255376(n))`
-/

namespace A071088.P17958635418683596086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((Nat.factorial n : ℤ) - A255376 n).toNat

end

end A071088.P17958635418683596086

/-! ## A071088.P16407627353985649742

`A073789(n)!-A255376(n)`
-/

namespace A071088.P16407627353985649742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A073789 n).toNat : ℤ) - A255376 n

end

end A071088.P16407627353985649742

/-! ## A071088.P295812753757580459

`A255407(n!)-A255376(n)`
-/

namespace A071088.P295812753757580459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (Nat.factorial n) - A255376 n

end

end A071088.P295812753757580459

/-! ## A071088.P629702507474187441

`A000142(n)-A198317(C(n, 3))`
-/

namespace A071088.P629702507474187441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A198317 (Nat.choose n 3)

end

end A071088.P629702507474187441

/-!
# A071089: Remainder when sum of first n primes is divided by n-th prime.

The programs for A071089, the canonical program `A071089.P10721152534759414151` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071089 has offset 1).

The definition of A071089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071089.P12776438982635372584

`A007504(n)%Δ[A007504(n)]`
-/

namespace A071089.P12776438982635372584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) (f1 (n + 1) - f1 n)

end

end A071089.P12776438982635372584

namespace A071089

/-- `A007504(n)%Δ[A007504(n)]` -/
def P12776438982635372584.Spec : Prop :=
  ∀ n, P12776438982635372584.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P2446088803354387900

`A007504(n+1)%A000040(n+1)`
-/

namespace A071089.P2446088803354387900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1)) (A000040 (n + 1))

end

end A071089.P2446088803354387900

namespace A071089

/-- `A007504(n+1)%A000040(n+1)` -/
def P2446088803354387900.Spec : Prop :=
  ∀ n, P2446088803354387900.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P10721152534759414151

`∑[A000040(n+1)]%A006005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071089

/-- `∑[A000040(n+1)]%A006005(n+1)` -/
def P10721152534759414151.Spec : Prop :=
  ∀ n, P10721152534759414151.a n = A071089 (n + 1)

theorem P10721152534759414151.correct : P10721152534759414151.Spec := by
  intro n
  simp only [A071089, Nat.add_sub_cancel]

end A071089

/-! ## A071089.P13189715015661017493

`∑[A182986(n+1)]%A000040(n+1)`
-/

namespace A071089.P13189715015661017493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A071089.P13189715015661017493

namespace A071089

/-- `∑[A182986(n+1)]%A000040(n+1)` -/
def P13189715015661017493.Spec : Prop :=
  ∀ n, P13189715015661017493.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P9041342466899689433

`∑[abs(A273960(n+1))]%A000040(n+1)`
-/

namespace A071089.P9041342466899689433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A071089.P9041342466899689433

namespace A071089

/-- `∑[abs(A273960(n+1))]%A000040(n+1)` -/
def P9041342466899689433.Spec : Prop :=
  ∀ n, P9041342466899689433.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P15947398800179055592

`∑[sqrt(A001248(n+1))]%A000040(n+1)`
-/

namespace A071089.P15947398800179055592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A000040 (n + 1))

end

end A071089.P15947398800179055592

namespace A071089

/-- `∑[sqrt(A001248(n+1))]%A000040(n+1)` -/
def P15947398800179055592.Spec : Prop :=
  ∀ n, P15947398800179055592.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P3836078439358185528

`∑[∑[A054541(n+1)]]%A006005(n+1)`
-/

namespace A071089.P3836078439358185528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006005 (n + 1))

end

end A071089.P3836078439358185528

namespace A071089

/-- `∑[∑[A054541(n+1)]]%A006005(n+1)` -/
def P3836078439358185528.Spec : Prop :=
  ∀ n, P3836078439358185528.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P17290628998820157292

`∑[A014692(n+1)+n]%A006005(n+1)`
-/

namespace A071089.P17290628998820157292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006005 (n + 1))

end

end A071089.P17290628998820157292

namespace A071089

/-- `∑[A014692(n+1)+n]%A006005(n+1)` -/
def P17290628998820157292.Spec : Prop :=
  ∀ n, P17290628998820157292.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P903380535191467682

`∑[A001749(n+1)/4]%sqrt(A001248(n+1))`
-/

namespace A071089.P903380535191467682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A071089.P903380535191467682

namespace A071089

/-- `∑[A001749(n+1)/4]%sqrt(A001248(n+1))` -/
def P903380535191467682.Spec : Prop :=
  ∀ n, P903380535191467682.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P11347533250410750829

`∑[A033286(n+1)/(n+1)]%sqrt(A001248(n+1))`
-/

namespace A071089.P11347533250410750829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033286 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A071089.P11347533250410750829

namespace A071089

/-- `∑[A033286(n+1)/(n+1)]%sqrt(A001248(n+1))` -/
def P11347533250410750829.Spec : Prop :=
  ∀ n, P11347533250410750829.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P2308852693680722420

`∑[record[A006530(n+2)]]%(A040976(n+1)+2)`
-/

namespace A071089.P2308852693680722420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A040976 (n + 1) + 2)

end

end A071089.P2308852693680722420

namespace A071089

/-- `∑[record[A006530(n+2)]]%(A040976(n+1)+2)` -/
def P2308852693680722420.Spec : Prop :=
  ∀ n, P2308852693680722420.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P16997854852443749242

`∑[record[A020639(n+2)]]%(A040976(n+1)+2)`
-/

namespace A071089.P16997854852443749242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A040976 (n + 1) + 2)

end

end A071089.P16997854852443749242

namespace A071089

/-- `∑[record[A020639(n+2)]]%(A040976(n+1)+2)` -/
def P16997854852443749242.Spec : Prop :=
  ∀ n, P16997854852443749242.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P18410214992611637916

`A066913(A000040(n+1))`
-/

namespace A071089.P18410214992611637916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066913 (A000040 (n + 1)).toNat

end

end A071089.P18410214992611637916

namespace A071089

/-- `A066913(A000040(n+1))` -/
def P18410214992611637916.Spec : Prop :=
  ∀ n, P18410214992611637916.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P15955431961596770095

`A066913(A006005(n+1))`
-/

namespace A071089.P15955431961596770095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066913 (A006005 (n + 1)).toNat

end

end A071089.P15955431961596770095

namespace A071089

/-- `A066913(A006005(n+1))` -/
def P15955431961596770095.Spec : Prop :=
  ∀ n, P15955431961596770095.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P14482265132778949192

`A066913(A161847(n+1))`
-/

namespace A071089.P14482265132778949192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066913 (A161847 (n + 1)).toNat

end

end A071089.P14482265132778949192

namespace A071089

/-- `A066913(A161847(n+1))` -/
def P14482265132778949192.Spec : Prop :=
  ∀ n, P14482265132778949192.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P8584387452384493500

`A066913(A008578(n+2))`
-/

namespace A071089.P8584387452384493500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066913 (A008578 (n + 2)).toNat

end

end A071089.P8584387452384493500

namespace A071089

/-- `A066913(A008578(n+2))` -/
def P8584387452384493500.Spec : Prop :=
  ∀ n, P8584387452384493500.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P7772900698418459427

`A066913(A075643(n+2))`
-/

namespace A071089.P7772900698418459427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066913 (A075643 (n + 2)).toNat

end

end A071089.P7772900698418459427

namespace A071089

/-- `A066913(A075643(n+2))` -/
def P7772900698418459427.Spec : Prop :=
  ∀ n, P7772900698418459427.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P10793946732289842161

`A066913(A182986(n+2))`
-/

namespace A071089.P10793946732289842161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066913 (A182986 (n + 2)).toNat

end

end A071089.P10793946732289842161

namespace A071089

/-- `A066913(A182986(n+2))` -/
def P10793946732289842161.Spec : Prop :=
  ∀ n, P10793946732289842161.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P12657164756274832189

`A334122(record[A006530(n+2)])`
-/

namespace A071089.P12657164756274832189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334122 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071089.P12657164756274832189

namespace A071089

/-- `A334122(record[A006530(n+2)])` -/
def P12657164756274832189.Spec : Prop :=
  ∀ n, P12657164756274832189.a n = A071089 (n + 1)

end A071089

/-! ## A071089.P1562230568558606466

`A334122(record[A014963(n+2)])`
-/

namespace A071089.P1562230568558606466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334122 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071089.P1562230568558606466

namespace A071089

/-- `A334122(record[A014963(n+2)])` -/
def P1562230568558606466.Spec : Prop :=
  ∀ n, P1562230568558606466.a n = A071089 (n + 1)

end A071089

/-!
# A071090: Sum of middle divisors of n.

The programs for A071090, there is no canonical definition to state claims against.
-/

/-! ## A071090.P9351030610506261216

`A000203(n+1)-A302433(n+1)`
-/

namespace A071090.P9351030610506261216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A302433 (n + 1)

end

end A071090.P9351030610506261216

/-! ## A071090.P17819976481668728783

`Δ[A160664(n)]-A302433(n+1)`
-/

namespace A071090.P17819976481668728783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A302433 (n + 1)

end

end A071090.P17819976481668728783

/-! ## A071090.P1961470806591785206

`A361879(n+1)+A361824(n+1)`
-/

namespace A071090.P1961470806591785206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361879 (n + 1) + A361824 (n + 1)

end

end A071090.P1961470806591785206

/-! ## A071090.P2413485541474898328

`abs(Δ[A330725(n)])-A302433(n+1)`
-/

namespace A071090.P2413485541474898328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A302433 (n + 1)

end

end A071090.P2413485541474898328

/-! ## A071090.P11877299985633638347

`abs(A143348(n+1))-A302433(n+1)`
-/

namespace A071090.P11877299985633638347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A302433 (n + 1)

end

end A071090.P11877299985633638347

/-! ## A071090.P1776805417631977151

`sqrt(A072861(n+1))-A302433(n+1)`
-/

namespace A071090.P1776805417631977151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A302433 (n + 1) : ℝ)

end

end A071090.P1776805417631977151

/-! ## A071090.P7368335767890274569

`A245092(2*n+1)-A302433(n+1)`
-/

namespace A071090.P7368335767890274569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A302433 (n + 1)

end

end A071090.P7368335767890274569

/-! ## A071090.P10598699967447040065

`A074400(n+1)/2-A302433(n+1)`
-/

namespace A071090.P10598699967447040065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A302433 (n + 1) : ℚ)

end

end A071090.P10598699967447040065

/-! ## A071090.P14602653347558630912

`A127057(A000124(n))-A302433(n+1)`
-/

namespace A071090.P14602653347558630912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n).toNat - A302433 (n + 1)

end

end A071090.P14602653347558630912

/-!
# A071092: Moments of inertia of a certain configuration of hexagons.

The programs for A071092, there is no canonical definition to state claims against.
-/

/-! ## A071092.P2985712495725694685

`A159958(∑[∑[14*n²+1]+n])`
-/

namespace A071092.P2985712495725694685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159958 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071092.P2985712495725694685

/-!
# A071093: Number of perfect matchings in triangle graph with n nodes per side as n runs through numbers congruent to 0 or 3 mod 4.

The programs for A071093, there is no canonical definition to state claims against.
-/

/-! ## A071093.P10822972159884917819

`record[A039907(n)]`
-/

namespace A071093.P10822972159884917819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071093.P10822972159884917819

/-! ## A071093.P5039834239688236929

`A039907(lt[0, A039907(n)])`
-/

namespace A071093.P5039834239688236929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071093.P5039834239688236929

/-! ## A071093.P2072241657686333684

`A039907(eq[0, A039907(n+2)])`
-/

namespace A071093.P2072241657686333684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039907 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071093.P2072241657686333684

/-! ## A071093.P12269117349582932968

`A178446(A000035(n)+2*n)`
-/

namespace A071093.P12269117349582932968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178446 (A000035 n + (2 * n : ℤ)).toNat

end

end A071093.P12269117349582932968

/-! ## A071093.P959003008546854341

`A178446(A000035(n)+n+n)`
-/

namespace A071093.P959003008546854341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178446 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A071093.P959003008546854341

/-!
# A071094: Number of ways to tile hexagon of edges n, n, n+1, n, n, n+1 with diamonds of side 1.

The programs for A071094, there is no canonical definition to state claims against.
-/

/-! ## A071094.P11989147175978350904

`A133815(A081268(n))`
-/

namespace A071094.P11989147175978350904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133815 (A081268 n).toNat

end

end A071094.P11989147175978350904

/-! ## A071094.P6612143628045239070

`A005130(n)*A005158(2*n+1)`
-/

namespace A071094.P6612143628045239070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n * A005158 (2 * n + 1)

end

end A071094.P6612143628045239070

/-! ## A071094.P16607619324785906232

`sqrt(A049503(n))*A005158(2*n+1)`
-/

namespace A071094.P16607619324785906232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ) * (A005158 (2 * n + 1) : ℝ)

end

end A071094.P16607619324785906232

/-! ## A071094.P8606429245580253723

`A005809(n)/A000984(n)*A008793(n)`
-/

namespace A071094.P8606429245580253723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (A000984 n : ℚ) * (A008793 n : ℚ)

end

end A071094.P8606429245580253723

/-! ## A071094.P17463361880189584335

`A120258(2*(n+1)²)`
-/

namespace A071094.P17463361880189584335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (2 * (n + 1) ^ 2)

end

end A071094.P17463361880189584335

/-!
# A071095: Number of ways to tile hexagon of edges n, n+1, n+1, n, n+1, n+1 with diamonds of side 1.

The programs for A071095, there is no canonical definition to state claims against.
-/

/-! ## A071095.P10599019992979009115

`A133815(A022267(n+1))`
-/

namespace A071095.P10599019992979009115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133815 (A022267 (n + 1)).toNat

end

end A071095.P10599019992979009115

/-! ## A071095.P15382066526733649650

`A005130(n+1)*A005158(2*n+1)`
-/

namespace A071095.P15382066526733649650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 (n + 1) * A005158 (2 * n + 1)

end

end A071095.P15382066526733649650

/-! ## A071095.P12347562926851523051

`sqrt(A049503(n+1))*A005158(2*n+1)`
-/

namespace A071095.P12347562926851523051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 (n + 1) : ℝ) * (A005158 (2 * n + 1) : ℝ)

end

end A071095.P12347562926851523051

/-! ## A071095.P1344149937971102498

`A120258(A056220(n+1))`
-/

namespace A071095.P1344149937971102498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (A056220 (n + 1)).toNat

end

end A071095.P1344149937971102498

/-! ## A071095.P14437953113983548751

`A120258(A004273((n+1)²))`
-/

namespace A071095.P14437953113983548751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (A004273 ((n + 1) ^ 2)).toNat

end

end A071095.P14437953113983548751

/-!
# A071096: Number of ways to tile hexagon of edges n, n+1, n+2, n, n+1, n+2 with diamonds of side 1.

The programs for A071096, there is no canonical definition to state claims against.
-/

/-! ## A071096.P6990884933418755997

`A008793(n+1)/2`
-/

namespace A071096.P6990884933418755997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008793 (n + 1) : ℚ) / 2

end

end A071096.P6990884933418755997

/-! ## A071096.P10034586220955100556

`A059476(n+1)/(2*A005130(n+1))`
-/

namespace A071096.P10034586220955100556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059476 (n + 1) : ℚ) / (2 * A005130 (n + 1) : ℚ)

end

end A071096.P10034586220955100556

/-!
# A071099: a(n) = (n-1)*(n+3) - 2^n + 4.

The programs for A071099, the canonical program `A071099.P12525717258937568944` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071099 has offset 0).

The definition of A071099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(n+3)-2^n+4` (program `A071099.P12525717258937568944`, by `A071099.P12525717258937568944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071099.P12525717258937568944

`(n-1)*(n+3)-2^n+4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071099

/-- `(n-1)*(n+3)-2^n+4` -/
def P12525717258937568944.Spec : Prop :=
  ∀ n, P12525717258937568944.a n = A071099 n

theorem P12525717258937568944.correct : P12525717258937568944.Spec := by
  intro n
  simp only [A071099]

end A071099

/-! ## A071099.P1946427148167670414

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A071099.P1946427148167670414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071099.P1946427148167670414

namespace A071099

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P1946427148167670414.Spec : Prop :=
  ∀ n, P1946427148167670414.a n = A071099 n

end A071099

/-! ## A071099.P14756330107120600820

`floor(∑[a(n-1)+2]-2^n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A071099.P14756330107120600820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A071099.P14756330107120600820

namespace A071099

/-- `floor(∑[a(n-1)+2]-2^n)` -/
def P14756330107120600820.Spec : Prop :=
  ∀ n, P14756330107120600820.a n = A071099 n

end A071099

/-! ## A071099.P6193575408652134239

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A071099.P6193575408652134239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071099.P6193575408652134239

namespace A071099

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P6193575408652134239.Spec : Prop :=
  ∀ n, P6193575408652134239.a n = A071099 n

end A071099

/-! ## A071099.P7670260264049022981

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A071099.P7670260264049022981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071099.P7670260264049022981

namespace A071099

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P7670260264049022981.Spec : Prop :=
  ∀ n, P7670260264049022981.a n = A071099 n

end A071099

/-! ## A071099.P12680681780411686704

`∑[Δ[n²]-A011782(n)]`
-/

namespace A071099.P12680681780411686704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071099.P12680681780411686704

namespace A071099

/-- `∑[Δ[n²]-A011782(n)]` -/
def P12680681780411686704.Spec : Prop :=
  ∀ n, P12680681780411686704.a n = A071099 n

end A071099

/-! ## A071099.P4899114626341433602

`∑[2*n+1-A166444(n+1)]`
-/

namespace A071099.P4899114626341433602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A166444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071099.P4899114626341433602

namespace A071099

/-- `∑[2*n+1-A166444(n+1)]` -/
def P4899114626341433602.Spec : Prop :=
  ∀ n, P4899114626341433602.a n = A071099 n

end A071099

/-! ## A071099.P13484869800635609861

`∑[A005408(n)-∑[A034008(n)]]`
-/

namespace A071099.P13484869800635609861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071099.P13484869800635609861

namespace A071099

/-- `∑[A005408(n)-∑[A034008(n)]]` -/
def P13484869800635609861.Spec : Prop :=
  ∀ n, P13484869800635609861.a n = A071099 n

end A071099

/-! ## A071099.P11167481868132269278

`∑[A004277(n)-abs(1-A131577(n))]`
-/

namespace A071099.P11167481868132269278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - |1 - A131577 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071099.P11167481868132269278

namespace A071099

/-- `∑[A004277(n)-abs(1-A131577(n))]` -/
def P11167481868132269278.Spec : Prop :=
  ∀ n, P11167481868132269278.a n = A071099 n

end A071099

/-! ## A071099.P681002841263854279

`floor((n+1)²-Δ[2*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A071099.P681002841263854279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A071099.P681002841263854279

namespace A071099

/-- `floor((n+1)²-Δ[2*a(n-1)])` -/
def P681002841263854279.Spec : Prop :=
  ∀ n, P681002841263854279.a n = A071099 n

end A071099

/-! ## A071099.P5600349313437036558

`Δ[∑[n²]-A000051(n)]`
-/

namespace A071099.P5600349313437036558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071099.P5600349313437036558

namespace A071099

/-- `Δ[∑[n²]-A000051(n)]` -/
def P5600349313437036558.Spec : Prop :=
  ∀ n, P5600349313437036558.a n = A071099 n

end A071099

/-! ## A071099.P1250574215654345954

`Δ[∑[n²]-A000079(n)]`
-/

namespace A071099.P1250574215654345954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071099.P1250574215654345954

namespace A071099

/-- `Δ[∑[n²]-A000079(n)]` -/
def P1250574215654345954.Spec : Prop :=
  ∀ n, P1250574215654345954.a n = A071099 n

end A071099

/-! ## A071099.P6386524050341123328

`Δ[∑[n²]-A000225(n)]`
-/

namespace A071099.P6386524050341123328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071099.P6386524050341123328

namespace A071099

/-- `Δ[∑[n²]-A000225(n)]` -/
def P6386524050341123328.Spec : Prop :=
  ∀ n, P6386524050341123328.a n = A071099 n

end A071099

/-! ## A071099.P1049704096672525917

`Δ[∑[n²]-A000918(n)]`
-/

namespace A071099.P1049704096672525917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071099.P1049704096672525917

namespace A071099

/-- `Δ[∑[n²]-A000918(n)]` -/
def P1049704096672525917.Spec : Prop :=
  ∀ n, P1049704096672525917.a n = A071099 n

end A071099

/-! ## A071099.P17089696431362163769

`Δ[∑[n²]-A036563(n)]`
-/

namespace A071099.P17089696431362163769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A036563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071099.P17089696431362163769

namespace A071099

/-- `Δ[∑[n²]-A036563(n)]` -/
def P17089696431362163769.Spec : Prop :=
  ∀ n, P17089696431362163769.a n = A071099 n

end A071099

/-! ## A071099.P14200876117669256178

`Δ[∑[n²]-A168415(n)]`
-/

namespace A071099.P14200876117669256178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A168415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071099.P14200876117669256178

namespace A071099

/-- `Δ[∑[n²]-A168415(n)]` -/
def P14200876117669256178.Spec : Prop :=
  ∀ n, P14200876117669256178.a n = A071099 n

end A071099

/-! ## A071099.P12662402101463898250

`Δ[∑[n²]-A168616(n)]`
-/

namespace A071099.P12662402101463898250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A168616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071099.P12662402101463898250

namespace A071099

/-- `Δ[∑[n²]-A168616(n)]` -/
def P12662402101463898250.Spec : Prop :=
  ∀ n, P12662402101463898250.a n = A071099 n

end A071099

/-! ## A071099.P13795471550854775880

`(A001105(n+1)-A000079(n+1))/2`
-/

namespace A071099.P13795471550854775880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 (n + 1) - A000079 (n + 1) : ℚ) / 2

end

end A071099.P13795471550854775880

namespace A071099

/-- `(A001105(n+1)-A000079(n+1))/2` -/
def P13795471550854775880.Spec : Prop :=
  ∀ n, P13795471550854775880.a n = (A071099 n : ℚ)

end A071099

/-! ## A071099.P15630925572675920257

`(A056220(n+1)-A000225(n+1))/2`
-/

namespace A071099.P15630925572675920257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (n + 1) - A000225 (n + 1) : ℚ) / 2

end

end A071099.P15630925572675920257

namespace A071099

/-- `(A056220(n+1)-A000225(n+1))/2` -/
def P15630925572675920257.Spec : Prop :=
  ∀ n, P15630925572675920257.a n = (A071099 n : ℚ)

end A071099

/-! ## A071099.P14209597741194474190

`(A000096(2*n)-A000295(n+1))/2`
-/

namespace A071099.P14209597741194474190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (2 * n) - A000295 (n + 1) : ℚ) / 2

end

end A071099.P14209597741194474190

namespace A071099

/-- `(A000096(2*n)-A000295(n+1))/2` -/
def P14209597741194474190.Spec : Prop :=
  ∀ n, P14209597741194474190.a n = (A071099 n : ℚ)

end A071099

