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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A341000: Number of partitions of n into 9 distinct nonzero squares.

The programs for A341000, there is no canonical definition to state claims against.
-/

/-! ## A341000.P12947899528805014248

`floor(atan(A023931(n)*A043299(n+2)))`
-/

namespace A341000.P12947899528805014248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A023931 n * A043299 (n + 2) : ℝ)⌋

end

end A341000.P12947899528805014248

/-! ## A341000.P17275271515907180728

`floor(atan(A023931(n)*A043300(n+2)+1))`
-/

namespace A341000.P17275271515907180728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A023931 n * A043300 (n + 2) + 1 : ℝ)⌋

end

end A341000.P17275271515907180728

/-! ## A341000.P2047207791713287639

`ceil(A023931(n)/A023186(n+1))`
-/

namespace A341000.P2047207791713287639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023931 n : ℚ) / (A023186 (n + 1) : ℚ)⌉

end

end A341000.P2047207791713287639

/-! ## A341000.P12499321254824374666

`floor(atan(A023931(n)*A055355(n+9)))`
-/

namespace A341000.P12499321254824374666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A023931 n * A055355 (n + 9) : ℝ)⌋

end

end A341000.P12499321254824374666

/-! ## A341000.P9339231972255856519

`A336356(A345910(n+1)+A263328(2*(n+2)))`
-/

namespace A341000.P9339231972255856519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336356 (A345910 (n + 1) + A263328 (2 * (n + 2))).toNat

end

end A341000.P9339231972255856519

/-! ## A341000.P13302656756156371024

`A347870(gcd(A262509(n), A317051(n+3)))`
-/

namespace A341000.P13302656756156371024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (Int.gcd (A262509 n) (A317051 (n + 3)))

end

end A341000.P13302656756156371024

/-! ## A341000.P9792803333083483182

`1-A023922(A023931(n))`
-/

namespace A341000.P9792803333083483182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023922 (A023931 n).toNat

end

end A341000.P9792803333083483182

/-! ## A341000.P7325345597017949318

`A196564(9*A023931(n))`
-/

namespace A341000.P7325345597017949318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (9 * A023931 n).toNat

end

end A341000.P7325345597017949318

/-! ## A341000.P1589075071132220211

`and(A000045(A023931(n)), A080764(n+8))`
-/

namespace A341000.P1589075071132220211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A023931 n).toNat) (A080764 (n + 8))

end

end A341000.P1589075071132220211

/-! ## A341000.P7467837102531610508

`floor(atan(A023931(n)*A094028(n)+1))`
-/

namespace A341000.P7467837102531610508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A023931 n * A094028 n + 1 : ℝ)⌋

end

end A341000.P7467837102531610508

/-!
# A341001: Number of partitions of n into 10 distinct nonzero squares.

The programs for A341001, there is no canonical definition to state claims against.
-/

/-! ## A341001.P1126069695809424073

`ceil(A023933(n)/A107812(n+1)²)`
-/

namespace A341001.P1126069695809424073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023933 n : ℚ) / (A107812 (n + 1) ^ 2 : ℚ)⌉

end

end A341001.P1126069695809424073

/-! ## A341001.P16790489992630708738

`A112526(gcd(A023933(n), A107812(n+1)))`
-/

namespace A341001.P16790489992630708738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (Int.gcd (A023933 n) (A107812 (n + 1)))

end

end A341001.P16790489992630708738

/-! ## A341001.P9264035771954503332

`A018252(2*n+5)%A131713(A029470(n+1))`
-/

namespace A341001.P9264035771954503332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (2 * n + 5)) (A131713 (A029470 (n + 1)).toNat)

end

end A341001.P9264035771954503332

/-! ## A341001.P18180153515285698613

`A237270(A237270(n+1))%A131713(A029470(n+1))`
-/

namespace A341001.P18180153515285698613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237270 (A237270 (n + 1)).toNat) (A131713 (A029470 (n + 1)).toNat)

end

end A341001.P18180153515285698613

/-! ## A341001.P10218990802355087178

`A256914(A023933(n))`
-/

namespace A341001.P10218990802355087178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A023933 n).toNat

end

end A341001.P10218990802355087178

/-! ## A341001.P856450399050232937

`A057427(4*A023933(n))`
-/

namespace A341001.P856450399050232937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (4 * A023933 n).toNat

end

end A341001.P856450399050232937

/-! ## A341001.P17744841521007837678

`A023532(7*A023933(n))`
-/

namespace A341001.P17744841521007837678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (7 * A023933 n).toNat

end

end A341001.P17744841521007837678

/-! ## A341001.P3653172496254506514

`1-A178780(n)^A023933(n)`
-/

namespace A341001.P3653172496254506514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A178780 n : ℚ) ^ (A023933 n : ℤ)

end

end A341001.P3653172496254506514

/-! ## A341001.P5670162136376638013

`1-A023933(2*n+3)^A023933(n)`
-/

namespace A341001.P5670162136376638013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A023933 (2 * n + 3) : ℚ) ^ (A023933 n : ℤ)

end

end A341001.P5670162136376638013

/-! ## A341001.P4075982835493857471

`A023933(A178780(n)^A023933(n))`
-/

namespace A341001.P4075982835493857471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023933 (SequenceMachineLib.roundAway ((A178780 n : ℚ) ^ (A023933 n : ℤ))).toNat

end

end A341001.P4075982835493857471

/-!
# A341002: Numbers whose sum of even digits and sum of odd digits differ by 1.

The programs for A341002, the canonical program `A341002.P16832887161860960795` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341002 has offset 1).

The definition of A341002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341002.P16832887161860960795

`eq[1, abs(A071650(n+1))]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341002

/-- `eq[1, abs(A071650(n+1))]+1` -/
def P16832887161860960795.Spec : Prop :=
  ∀ n, (P16832887161860960795.a n : ℤ) = A341002 (n + 1)

theorem P16832887161860960795.correct : P16832887161860960795.Spec := by
  intro n
  simp only [A341002, Nat.add_sub_cancel]

end A341002

/-! ## A341002.P15712077206316522983

`eq[A071650(A028310(n))², A000038(n)!]`
-/

namespace A341002.P15712077206316522983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A341002.P15712077206316522983

namespace A341002

/-- `eq[A071650(A028310(n))², A000038(n)!]` -/
def P15712077206316522983.Spec : Prop :=
  ∀ n, (P15712077206316522983.a n : ℤ) = A341002 (n + 1)

end A341002

/-! ## A341002.P13038112879740047920

`eq[A071650(A028310(n))², A057427(n)]`
-/

namespace A341002.P13038112879740047920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341002.P13038112879740047920

namespace A341002

/-- `eq[A071650(A028310(n))², A057427(n)]` -/
def P13038112879740047920.Spec : Prop :=
  ∀ n, (P13038112879740047920.a n : ℤ) = A341002 (n + 1)

end A341002

/-! ## A341002.P9155036570456180728

`eq[A071650(A008486(n)-2*n)², A057427(n)]`
-/

namespace A341002.P9155036570456180728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A008486 n - (2 * n : ℤ)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341002.P9155036570456180728

namespace A341002

/-- `eq[A071650(A008486(n)-2*n)², A057427(n)]` -/
def P9155036570456180728.Spec : Prop :=
  ∀ n, (P9155036570456180728.a n : ℤ) = A341002 (n + 1)

end A341002

/-! ## A341002.P14703411842906174121

`eq[A071650(A008486(n)-2*n)², A057428(n)²]`
-/

namespace A341002.P14703411842906174121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A008486 n - (2 * n : ℤ)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341002.P14703411842906174121

namespace A341002

/-- `eq[A071650(A008486(n)-2*n)², A057428(n)²]` -/
def P14703411842906174121.Spec : Prop :=
  ∀ n, (P14703411842906174121.a n : ℤ) = A341002 (n + 1)

end A341002

/-! ## A341002.P12974373670979720411

`eq[A071650(A008486(n)-n-n)², A057428(n)²]`
-/

namespace A341002.P12974373670979720411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341002.P12974373670979720411

namespace A341002

/-- `eq[A071650(A008486(n)-n-n)², A057428(n)²]` -/
def P12974373670979720411.Spec : Prop :=
  ∀ n, (P12974373670979720411.a n : ℤ) = A341002 (n + 1)

end A341002

/-! ## A341002.P3317696096212943530

`eq[2-A057427(n), A071650(A008486(n)-n-n)²]`
-/

namespace A341002.P3317696096212943530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341002.P3317696096212943530

namespace A341002

/-- `eq[2-A057427(n), A071650(A008486(n)-n-n)²]` -/
def P3317696096212943530.Spec : Prop :=
  ∀ n, (P3317696096212943530.a n : ℤ) = A341002 (n + 1)

end A341002

/-!
# A341003: Numbers whose sum of even digits and sum of odd digits differ by 2.

The programs for A341003, the canonical program `A341003.P14604439664991033148` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341003 has offset 1).

The definition of A341003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341003.P14604439664991033148

`eq[2, abs(A071650(n+1))]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341003

/-- `eq[2, abs(A071650(n+1))]+1` -/
def P14604439664991033148.Spec : Prop :=
  ∀ n, (P14604439664991033148.a n : ℤ) = A341003 (n + 1)

theorem P14604439664991033148.correct : P14604439664991033148.Spec := by
  intro n
  simp only [A341003, Nat.add_sub_cancel]

end A341003

/-! ## A341003.P5809826364700272371

`eq[2, abs(A071650(A028310(n)))]`
-/

namespace A341003.P5809826364700272371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341003.P5809826364700272371

namespace A341003

/-- `eq[2, abs(A071650(A028310(n)))]` -/
def P5809826364700272371.Spec : Prop :=
  ∀ n, (P5809826364700272371.a n : ℤ) = A341003 (n + 1)

end A341003

/-! ## A341003.P10827152320668845832

`eq[2, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341003.P10827152320668845832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341003.P10827152320668845832

namespace A341003

/-- `eq[2, abs(A071650(A008486(n)-2*n))]` -/
def P10827152320668845832.Spec : Prop :=
  ∀ n, (P10827152320668845832.a n : ℤ) = A341003 (n + 1)

end A341003

/-! ## A341003.P1721755910318528886

`eq[2, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341003.P1721755910318528886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341003.P1721755910318528886

namespace A341003

/-- `eq[2, abs(A071650(A008486(n)-n-n))]` -/
def P1721755910318528886.Spec : Prop :=
  ∀ n, (P1721755910318528886.a n : ℤ) = A341003 (n + 1)

end A341003

/-! ## A341003.P6813374860455525602

`eq[A020639(2*(n+1))², A071650(A008486(n)-n-n)²]`
-/

namespace A341003.P6813374860455525602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341003.P6813374860455525602

namespace A341003

/-- `eq[A020639(2*(n+1))², A071650(A008486(n)-n-n)²]` -/
def P6813374860455525602.Spec : Prop :=
  ∀ n, (P6813374860455525602.a n : ℤ) = A341003 (n + 1)

end A341003

/-!
# A341004: Numbers whose sum of even digits and sum of odd digits differ by 3.

The programs for A341004, the canonical program `A341004.P484656656138415432` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341004 has offset 1).

The definition of A341004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341004.P484656656138415432

`eq[3, abs(A071650(n+1))]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341004

/-- `eq[3, abs(A071650(n+1))]+1` -/
def P484656656138415432.Spec : Prop :=
  ∀ n, (P484656656138415432.a n : ℤ) = A341004 (n + 1)

theorem P484656656138415432.correct : P484656656138415432.Spec := by
  intro n
  simp only [A341004, Nat.add_sub_cancel]

end A341004

/-! ## A341004.P11620263617412748744

`eq[9, A071650(A028310(n))²]`
-/

namespace A341004.P11620263617412748744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341004.P11620263617412748744

namespace A341004

/-- `eq[9, A071650(A028310(n))²]` -/
def P11620263617412748744.Spec : Prop :=
  ∀ n, (P11620263617412748744.a n : ℤ) = A341004 (n + 1)

end A341004

/-! ## A341004.P9971963452349985669

`eq[3, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341004.P9971963452349985669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341004.P9971963452349985669

namespace A341004

/-- `eq[3, abs(A071650(A008486(n)-2*n))]` -/
def P9971963452349985669.Spec : Prop :=
  ∀ n, (P9971963452349985669.a n : ℤ) = A341004 (n + 1)

end A341004

/-! ## A341004.P15639509957726202967

`eq[3, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341004.P15639509957726202967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341004.P15639509957726202967

namespace A341004

/-- `eq[3, abs(A071650(A008486(n)-n-n))]` -/
def P15639509957726202967.Spec : Prop :=
  ∀ n, (P15639509957726202967.a n : ℤ) = A341004 (n + 1)

end A341004

/-! ## A341004.P17500703812641323377

`eq[3, abs(A071650(A233583(n+1)))]`
-/

namespace A341004.P17500703812641323377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A233583 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341004.P17500703812641323377

namespace A341004

/-- `eq[3, abs(A071650(A233583(n+1)))]` -/
def P17500703812641323377.Spec : Prop :=
  ∀ n, (P17500703812641323377.a n : ℤ) = A341004 (n + 1)

end A341004

/-!
# A341005: Numbers whose sum of even digits and sum of odd digits differ by 4.

The programs for A341005, the canonical program `A341005.P1029475103496540761` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341005 has offset 1).

The definition of A341005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341005.P1029475103496540761

`eq[4, abs(A071650(A028310(n)))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341005

/-- `eq[4, abs(A071650(A028310(n)))]` -/
def P1029475103496540761.Spec : Prop :=
  ∀ n, (P1029475103496540761.a n : ℤ) = A341005 (n + 1)

theorem P1029475103496540761.correct : P1029475103496540761.Spec := by
  intro n
  simp only [A341005, Nat.add_sub_cancel]

end A341005

/-! ## A341005.P12902275964781374750

`eq[4, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341005.P12902275964781374750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341005.P12902275964781374750

namespace A341005

/-- `eq[4, abs(A071650(A008486(n)-2*n))]` -/
def P12902275964781374750.Spec : Prop :=
  ∀ n, (P12902275964781374750.a n : ℤ) = A341005 (n + 1)

end A341005

/-! ## A341005.P2379499598521063392

`eq[4, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341005.P2379499598521063392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341005.P2379499598521063392

namespace A341005

/-- `eq[4, abs(A071650(A008486(n)-n-n))]` -/
def P2379499598521063392.Spec : Prop :=
  ∀ n, (P2379499598521063392.a n : ℤ) = A341005 (n + 1)

end A341005

/-! ## A341005.P14243568767896315757

`eq[4, abs(A071650(A060000(n+1)))]`
-/

namespace A341005.P14243568767896315757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A060000 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341005.P14243568767896315757

namespace A341005

/-- `eq[4, abs(A071650(A060000(n+1)))]` -/
def P14243568767896315757.Spec : Prop :=
  ∀ n, (P14243568767896315757.a n : ℤ) = A341005 (n + 1)

end A341005

/-! ## A341005.P4505142367448911815

`eq[4, abs(A071650(A233583(n+1)))]`
-/

namespace A341005.P4505142367448911815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A233583 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341005.P4505142367448911815

namespace A341005

/-- `eq[4, abs(A071650(A233583(n+1)))]` -/
def P4505142367448911815.Spec : Prop :=
  ∀ n, (P4505142367448911815.a n : ℤ) = A341005 (n + 1)

end A341005

/-!
# A341006: Numbers whose sum of even digits and sum of odd digits differ by 5.

The programs for A341006, the canonical program `A341006.P8486897643190546407` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341006 has offset 1).

The definition of A341006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341006.P8486897643190546407

`eq[5, abs(A071650(n+1))]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341006

/-- `eq[5, abs(A071650(n+1))]+1` -/
def P8486897643190546407.Spec : Prop :=
  ∀ n, (P8486897643190546407.a n : ℤ) = A341006 (n + 1)

theorem P8486897643190546407.correct : P8486897643190546407.Spec := by
  intro n
  simp only [A341006, Nat.add_sub_cancel]

end A341006

/-! ## A341006.P10624742393831457151

`eq[5, abs(A071650(A028310(n)))]`
-/

namespace A341006.P10624742393831457151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341006.P10624742393831457151

namespace A341006

/-- `eq[5, abs(A071650(A028310(n)))]` -/
def P10624742393831457151.Spec : Prop :=
  ∀ n, (P10624742393831457151.a n : ℤ) = A341006 (n + 1)

end A341006

/-! ## A341006.P17864415373471021829

`eq[5, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341006.P17864415373471021829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341006.P17864415373471021829

namespace A341006

/-- `eq[5, abs(A071650(A008486(n)-2*n))]` -/
def P17864415373471021829.Spec : Prop :=
  ∀ n, (P17864415373471021829.a n : ℤ) = A341006 (n + 1)

end A341006

/-! ## A341006.P1836982317428067491

`eq[5, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341006.P1836982317428067491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341006.P1836982317428067491

namespace A341006

/-- `eq[5, abs(A071650(A008486(n)-n-n))]` -/
def P1836982317428067491.Spec : Prop :=
  ∀ n, (P1836982317428067491.a n : ℤ) = A341006 (n + 1)

end A341006

/-! ## A341006.P11184692805525233976

`eq[5, abs(A071650(A233583(n+1)))]`
-/

namespace A341006.P11184692805525233976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A233583 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341006.P11184692805525233976

namespace A341006

/-- `eq[5, abs(A071650(A233583(n+1)))]` -/
def P11184692805525233976.Spec : Prop :=
  ∀ n, (P11184692805525233976.a n : ℤ) = A341006 (n + 1)

end A341006

/-!
# A341007: Numbers whose sum of even digits and sum of odd digits differ by 6.

The programs for A341007, the canonical program `A341007.P4711020374910811574` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341007 has offset 1).

The definition of A341007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341007.P4711020374910811574

`eq[36, A071650(A028310(n))²]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341007

/-- `eq[36, A071650(A028310(n))²]` -/
def P4711020374910811574.Spec : Prop :=
  ∀ n, (P4711020374910811574.a n : ℤ) = A341007 (n + 1)

theorem P4711020374910811574.correct : P4711020374910811574.Spec := by
  intro n
  simp only [A341007, Nat.add_sub_cancel]

end A341007

/-! ## A341007.P17405929045278307960

`eq[A071650(n+1)², A040306(n)]+1`
-/

namespace A341007.P17405929045278307960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A341007.P17405929045278307960

namespace A341007

/-- `eq[A071650(n+1)², A040306(n)]+1` -/
def P17405929045278307960.Spec : Prop :=
  ∀ n, (P17405929045278307960.a n : ℤ) = A341007 (n + 1)

end A341007

/-! ## A341007.P11664656102178496128

`eq[6, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341007.P11664656102178496128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341007.P11664656102178496128

namespace A341007

/-- `eq[6, abs(A071650(A008486(n)-2*n))]` -/
def P11664656102178496128.Spec : Prop :=
  ∀ n, (P11664656102178496128.a n : ℤ) = A341007 (n + 1)

end A341007

/-! ## A341007.P9098463191316358277

`eq[6, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341007.P9098463191316358277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341007.P9098463191316358277

namespace A341007

/-- `eq[6, abs(A071650(A008486(n)-n-n))]` -/
def P9098463191316358277.Spec : Prop :=
  ∀ n, (P9098463191316358277.a n : ℤ) = A341007 (n + 1)

end A341007

/-! ## A341007.P12044661119974022075

`eq[6, abs(A071650(A233583(n+1)))]`
-/

namespace A341007.P12044661119974022075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A233583 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341007.P12044661119974022075

namespace A341007

/-- `eq[6, abs(A071650(A233583(n+1)))]` -/
def P12044661119974022075.Spec : Prop :=
  ∀ n, (P12044661119974022075.a n : ℤ) = A341007 (n + 1)

end A341007

/-! ## A341007.P14493649607429248006

`eq[A071650(A233583(n+1))², A040306(n)]`
-/

namespace A341007.P14493649607429248006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341007.P14493649607429248006

namespace A341007

/-- `eq[A071650(A233583(n+1))², A040306(n)]` -/
def P14493649607429248006.Spec : Prop :=
  ∀ n, (P14493649607429248006.a n : ℤ) = A341007 (n + 1)

end A341007

/-!
# A341008: Numbers whose sum of even digits and sum of odd digits differ by 7.

The programs for A341008, the canonical program `A341008.P8270698989946765103` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341008 has offset 1).

The definition of A341008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341008.P8270698989946765103

`eq[7, abs(A071650(A028310(n)))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341008

/-- `eq[7, abs(A071650(A028310(n)))]` -/
def P8270698989946765103.Spec : Prop :=
  ∀ n, (P8270698989946765103.a n : ℤ) = A341008 (n + 1)

theorem P8270698989946765103.correct : P8270698989946765103.Spec := by
  intro n
  simp only [A341008, Nat.add_sub_cancel]

end A341008

/-! ## A341008.P7490515488744817843

`eq[7, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341008.P7490515488744817843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341008.P7490515488744817843

namespace A341008

/-- `eq[7, abs(A071650(A008486(n)-2*n))]` -/
def P7490515488744817843.Spec : Prop :=
  ∀ n, (P7490515488744817843.a n : ℤ) = A341008 (n + 1)

end A341008

/-! ## A341008.P17780707233818477620

`eq[7, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341008.P17780707233818477620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341008.P17780707233818477620

namespace A341008

/-- `eq[7, abs(A071650(A008486(n)-n-n))]` -/
def P17780707233818477620.Spec : Prop :=
  ∀ n, (P17780707233818477620.a n : ℤ) = A341008 (n + 1)

end A341008

/-! ## A341008.P6146176347954415555

`eq[7, abs(A071650(A060000(n+1)))]`
-/

namespace A341008.P6146176347954415555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A060000 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341008.P6146176347954415555

namespace A341008

/-- `eq[7, abs(A071650(A060000(n+1)))]` -/
def P6146176347954415555.Spec : Prop :=
  ∀ n, (P6146176347954415555.a n : ℤ) = A341008 (n + 1)

end A341008

/-! ## A341008.P2565014360451548912

`eq[7, abs(A071650(A233583(n+1)))]`
-/

namespace A341008.P2565014360451548912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A233583 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341008.P2565014360451548912

namespace A341008

/-- `eq[7, abs(A071650(A233583(n+1)))]` -/
def P2565014360451548912.Spec : Prop :=
  ∀ n, (P2565014360451548912.a n : ℤ) = A341008 (n + 1)

end A341008

/-!
# A341009: Numbers whose sum of even digits and sum of odd digits differ by 8.

The programs for A341009, the canonical program `A341009.P6779292514282715490` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341009 has offset 1).

The definition of A341009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341009.P6779292514282715490

`eq[8, abs(A071650(A028310(n)))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341009

/-- `eq[8, abs(A071650(A028310(n)))]` -/
def P6779292514282715490.Spec : Prop :=
  ∀ n, (P6779292514282715490.a n : ℤ) = A341009 (n + 1)

theorem P6779292514282715490.correct : P6779292514282715490.Spec := by
  intro n
  simp only [A341009, Nat.add_sub_cancel]

end A341009

/-! ## A341009.P5534589653893925558

`eq[8, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341009.P5534589653893925558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341009.P5534589653893925558

namespace A341009

/-- `eq[8, abs(A071650(A008486(n)-2*n))]` -/
def P5534589653893925558.Spec : Prop :=
  ∀ n, (P5534589653893925558.a n : ℤ) = A341009 (n + 1)

end A341009

/-! ## A341009.P16417275397937868924

`eq[8, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341009.P16417275397937868924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341009.P16417275397937868924

namespace A341009

/-- `eq[8, abs(A071650(A008486(n)-n-n))]` -/
def P16417275397937868924.Spec : Prop :=
  ∀ n, (P16417275397937868924.a n : ℤ) = A341009 (n + 1)

end A341009

/-! ## A341009.P14448944588424225307

`eq[8, abs(A071650(A060000(n+1)))]`
-/

namespace A341009.P14448944588424225307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A060000 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341009.P14448944588424225307

namespace A341009

/-- `eq[8, abs(A071650(A060000(n+1)))]` -/
def P14448944588424225307.Spec : Prop :=
  ∀ n, (P14448944588424225307.a n : ℤ) = A341009 (n + 1)

end A341009

/-! ## A341009.P12973878862384704337

`eq[8, abs(A071650(A233583(n+1)))]`
-/

namespace A341009.P12973878862384704337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A233583 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341009.P12973878862384704337

namespace A341009

/-- `eq[8, abs(A071650(A233583(n+1)))]` -/
def P12973878862384704337.Spec : Prop :=
  ∀ n, (P12973878862384704337.a n : ℤ) = A341009 (n + 1)

end A341009

/-!
# A341010: Numbers whose sum of even digits and sum of odd digits differ by 9.

The programs for A341010, the canonical program `A341010.P431178045612450557` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341010 has offset 1).

The definition of A341010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 644 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341010.P431178045612450557

`eq[9, abs(A071650(A028310(n)))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341010

/-- `eq[9, abs(A071650(A028310(n)))]` -/
def P431178045612450557.Spec : Prop :=
  ∀ n, (P431178045612450557.a n : ℤ) = A341010 (n + 1)

theorem P431178045612450557.correct : P431178045612450557.Spec := by
  intro n
  simp only [A341010, Nat.add_sub_cancel]

end A341010

/-! ## A341010.P16766153906581780917

`eq[9, abs(A071650(A008486(n)-2*n))]`
-/

namespace A341010.P16766153906581780917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (2 * n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341010.P16766153906581780917

namespace A341010

/-- `eq[9, abs(A071650(A008486(n)-2*n))]` -/
def P16766153906581780917.Spec : Prop :=
  ∀ n, (P16766153906581780917.a n : ℤ) = A341010 (n + 1)

end A341010

/-! ## A341010.P8814327273231423215

`eq[9, abs(A071650(A008486(n)-n-n))]`
-/

namespace A341010.P8814327273231423215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A008486 n - (n : ℤ) - (n : ℤ)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341010.P8814327273231423215

namespace A341010

/-- `eq[9, abs(A071650(A008486(n)-n-n))]` -/
def P8814327273231423215.Spec : Prop :=
  ∀ n, (P8814327273231423215.a n : ℤ) = A341010 (n + 1)

end A341010

/-! ## A341010.P15198132953727916959

`eq[A000007(n)+9, abs(A071650(n+1))]+1`
-/

namespace A341010.P15198132953727916959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A341010.P15198132953727916959

namespace A341010

/-- `eq[A000007(n)+9, abs(A071650(n+1))]+1` -/
def P15198132953727916959.Spec : Prop :=
  ∀ n, (P15198132953727916959.a n : ℤ) = A341010 (n + 1)

end A341010

/-! ## A341010.P10760554907238011397

`eq[9, abs(A071650(A233583(n+1)))]`
-/

namespace A341010.P10760554907238011397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A233583 (n + 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341010.P10760554907238011397

namespace A341010

/-- `eq[9, abs(A071650(A233583(n+1)))]` -/
def P10760554907238011397.Spec : Prop :=
  ∀ n, (P10760554907238011397.a n : ℤ) = A341010 (n + 1)

end A341010

/-!
# A341014: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} k^j * j! * binomial(n,j)^2.

The programs for A341014, there is no canonical definition to state claims against.
-/

/-! ## A341014.P12534206240653461024

`A325367(A111528(n+1))`
-/

namespace A341014.P12534206240653461024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (A111528 (n + 1)).toNat

end

end A341014.P12534206240653461024

/-! ## A341014.P18234595470626068461

`A117174(A144512(n))%A000040(n+1)`
-/

namespace A341014.P18234595470626068461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117174 (A144512 n).toNat) (A000040 (n + 1))

end

end A341014.P18234595470626068461

/-! ## A341014.P13847036711282520188

`A107686(A111528(A187829(n+1)))`
-/

namespace A341014.P13847036711282520188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A111528 (A187829 (n + 1)).toNat).toNat

end

end A341014.P13847036711282520188

/-!
# A341015: Numbers k such that A124446(k) = 1.

The programs for A341015, there is no canonical definition to state claims against.
-/

/-! ## A341015.P15416721593460318794

`∩[A033948(n+1), A258023(n+1)]`
-/

namespace A341015.P15416721593460318794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341015.P15416721593460318794

/-! ## A341015.P10388097911264905002

`eq[1, A124446(n+1)]+1`
-/

namespace A341015.P10388097911264905002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341015.P10388097911264905002

/-! ## A341015.P5540469592541246163

`A000027(record[(n+1)/A124446(n+1)])`
-/

namespace A341015.P5540469592541246163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A124446 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A341015.P5540469592541246163

/-! ## A341015.P2448913878427572600

`record[A004719(n+1)/A124446(n+1)]`
-/

namespace A341015.P2448913878427572600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004719 (n + 1) : ℚ) / (A124446 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341015.P2448913878427572600

/-! ## A341015.P17848528224410118603

`record[root(A000027(n+1), A124446(n+1))]`
-/

namespace A341015.P17848528224410118603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A124446 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341015.P17848528224410118603

/-!
# A341016: Numbers k such that A124440(k) is a multiple of A066840(k).

The programs for A341016, the canonical program `A341016.P15767692979643003200` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341016 has offset 1).

The definition of A341016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341016.P15767692979643003200

`A004271(A004272(n)+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341016

/-- `A004271(A004272(n)+2)` -/
def P15767692979643003200.Spec : Prop :=
  ∀ n, P15767692979643003200.a n = A341016 (n + 1)

theorem P15767692979643003200.correct : P15767692979643003200.Spec := by
  intro n
  simp only [A341016, Nat.add_sub_cancel]

end A341016

/-!
# A341017: Primes p such that placing digit i at both ends of p produces another prime for at least two of i = [1,3,7,9].

The programs for A341017, there is no canonical definition to state claims against.
-/

/-! ## A341017.P16126003900116967597

`p?[A053169(n+5)%A283511(n+2)]`
-/

namespace A341017.P16126003900116967597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053169 (n + 5)) (A283511 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341017.P16126003900116967597

/-! ## A341017.P10114537445505440742

`∩[A199799(n+1), A337649(n+1)]`
-/

namespace A341017.P10114537445505440742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341017.P10114537445505440742

/-! ## A341017.P4540332567476744880

`p?[A143053(2*n+1)+A043561(n+1)]`
-/

namespace A341017.P4540332567476744880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143053 (2 * n + 1) + A043561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341017.P4540332567476744880

/-! ## A341017.P7435980230256119729

`p?[A067460(n+1)*A102510(n+1)]`
-/

namespace A341017.P7435980230256119729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067460 (n + 1) * A102510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341017.P7435980230256119729

/-! ## A341017.P16046703897799813085

`A040028(n+3)%A174091(A000252(n+1))`
-/

namespace A341017.P16046703897799813085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040028 (n + 3)) (A174091 (A000252 (n + 1)).toNat)

end

end A341017.P16046703897799813085

/-!
# A341018: a(n) is the X-coordinate of the n-th point of the space filling curve M defined in Comments section; A341019 gives Y-coordinates.

The programs for A341018, there is no canonical definition to state claims against.
-/

/-! ## A341018.P6717385723898913086

`A341120(2*n)`
-/

namespace A341018.P6717385723898913086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 (2 * n)

end

end A341018.P6717385723898913086

/-! ## A341018.P1460738772197790525

`A059252(A062880(A341120(n+n)))`
-/

namespace A341018.P1460738772197790525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A062880 (A341120 (n + n)).toNat).toNat

end

end A341018.P1460738772197790525

/-! ## A341018.P847204039554001008

`A341120(A004277(n))%A004277(n)`
-/

namespace A341018.P847204039554001008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341120 (A004277 n).toNat) (A004277 n)

end

end A341018.P847204039554001008

/-! ## A341018.P17636878130779119367

`A059252(2*n)+A341121(2*n)-A059253(2*n)`
-/

namespace A341018.P17636878130779119367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (2 * n) + (A341121 (2 * n) - A059253 (2 * n))

end

end A341018.P17636878130779119367

/-! ## A341018.P16794403204845385041

`A341019(n)-A059285(2*n)`
-/

namespace A341018.P16794403204845385041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341019 n - A059285 (2 * n)

end

end A341018.P16794403204845385041

/-! ## A341018.P17972110975704566572

`A341121(2*n)-A059285(2*n)`
-/

namespace A341018.P17972110975704566572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 (2 * n) - A059285 (2 * n)

end

end A341018.P17972110975704566572

/-! ## A341018.P16836827438833007779

`A341120(record[A097062(n)-1])%(n+1)`
-/

namespace A341018.P16836827438833007779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A341018.P16836827438833007779

/-! ## A341018.P3996466530039707855

`A341120(record[n%A097062(n)])%(n+1)`
-/

namespace A341018.P3996466530039707855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A097062 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A341018.P3996466530039707855

/-! ## A341018.P8136945962295446772

`A283316(2*n+1)+A059252(2*n)`
-/

namespace A341018.P8136945962295446772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (2 * n + 1) + A059252 (2 * n)

end

end A341018.P8136945962295446772

/-! ## A341018.P7987368992712365794

`A283316(2*n+1)+A059253(2*n)-A059285(2*n)`
-/

namespace A341018.P7987368992712365794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (2 * n + 1) + (A059253 (2 * n) - A059285 (2 * n))

end

end A341018.P7987368992712365794

/-! ## A341018.P16581587355317978435

`A341019(4*n)/2`
-/

namespace A341018.P16581587355317978435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341019 (4 * n) : ℚ) / 2

end

end A341018.P16581587355317978435

/-! ## A341018.P3047137737606310845

`A001281(A341019(4*n))`
-/

namespace A341018.P3047137737606310845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A341019 (4 * n)).toNat

end

end A341018.P3047137737606310845

/-! ## A341018.P4096402081685579821

`A341120(n+n)+A063377(A027691(n))`
-/

namespace A341018.P4096402081685579821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 (n + n) + A063377 (A027691 n).toNat

end

end A341018.P4096402081685579821

/-!
# A341019: a(n) is the Y-coordinate of the n-th point of the space filling curve M defined in Comments section; A341018 gives X-coordinates.

The programs for A341019, there is no canonical definition to state claims against.
-/

/-! ## A341019.P11240401957435869925

`A341121(2*n)`
-/

namespace A341019.P11240401957435869925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 (2 * n)

end

end A341019.P11240401957435869925

/-! ## A341019.P14869483840940605353

`A059252(A062880(A341121(n+n)))`
-/

namespace A341019.P14869483840940605353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A062880 (A341121 (n + n)).toNat).toNat

end

end A341019.P14869483840940605353

/-! ## A341019.P1975001833110075627

`A341121(n+n)+A064722(A014963(n+1))`
-/

namespace A341019.P1975001833110075627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 (n + n) + A064722 (A014963 (n + 1)).toNat

end

end A341019.P1975001833110075627

/-! ## A341019.P10911675869939757718

`A059253(2*n)+A341120(2*n)-A059252(2*n)`
-/

namespace A341019.P10911675869939757718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (2 * n) + (A341120 (2 * n) - A059252 (2 * n))

end

end A341019.P10911675869939757718

/-! ## A341019.P14508476918713794990

`A341018(n)+A059285(2*n)`
-/

namespace A341019.P14508476918713794990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341018 n + A059285 (2 * n)

end

end A341019.P14508476918713794990

/-! ## A341019.P11581626348205415496

`A341120(2*n)+A059285(2*n)`
-/

namespace A341019.P11581626348205415496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 (2 * n) + A059285 (2 * n)

end

end A341019.P11581626348205415496

/-! ## A341019.P18181811095509174208

`A283316(2*n+1)+A059253(2*n)`
-/

namespace A341019.P18181811095509174208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (2 * n + 1) + A059253 (2 * n)

end

end A341019.P18181811095509174208

/-! ## A341019.P17812126495226848979

`A341121(n+n)+A064722(A262365(n+1))`
-/

namespace A341019.P17812126495226848979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 (n + n) + A064722 (A262365 (n + 1)).toNat

end

end A341019.P17812126495226848979

/-! ## A341019.P11581729767374440172

`A341018(4*n)/2`
-/

namespace A341019.P11581729767374440172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341018 (4 * n) : ℚ) / 2

end

end A341019.P11581729767374440172

/-! ## A341019.P7679974243940345889

`A341120(8*n)/2`
-/

namespace A341019.P7679974243940345889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341120 (8 * n) : ℚ) / 2

end

end A341019.P7679974243940345889

/-!
# A341020: INVERT transform of the binary weight.

The programs for A341020, there is no canonical definition to state claims against.
-/

/-! ## A341020.P16272000767243923752

`A083380(n+1)-A267810(A131385(n))`
-/

namespace A341020.P16272000767243923752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083380 (n + 1) - A267810 (A131385 n).toNat

end

end A341020.P16272000767243923752

/-! ## A341020.P8157081627551800118

`round(log(A070550(ceil(10^(n/3)))))`
-/

namespace A341020.P8157081627551800118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A070550 ⌈(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉.toNat : ℝ))

end

end A341020.P8157081627551800118

/-! ## A341020.P927824524543622098

`A026819(A071747(n)+1)`
-/

namespace A341020.P927824524543622098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A071747 n + 1).toNat

end

end A341020.P927824524543622098

/-! ## A341020.P8160680828657498521

`A046155(A071747(n)+1)`
-/

namespace A341020.P8160680828657498521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A071747 n + 1).toNat

end

end A341020.P8160680828657498521

/-! ## A341020.P8264674280283186982

`A001462(A289611(n+1))`
-/

namespace A341020.P8264674280283186982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A289611 (n + 1)).toNat

end

end A341020.P8264674280283186982

/-!
# A341021: Number of partitions of n into 4 distinct nonzero triangular numbers.

The programs for A341021, there is no canonical definition to state claims against.
-/

/-! ## A341021.P13900098838284301592

`A260999(A036958(n+1))%((2*n)%3-3)`
-/

namespace A341021.P13900098838284301592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260999 (A036958 (n + 1)).toNat) (((2 * n % 3 : ℕ) : ℤ) - 3)

end

end A341021.P13900098838284301592

/-! ## A341021.P8358878342193499771

`A025435(A196939(A196939(n+1)))`
-/

namespace A341021.P8358878342193499771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A196939 (A196939 (n + 1)).toNat).toNat

end

end A341021.P8358878342193499771

/-! ## A341021.P5183290891709916146

`and(A001529(A234016(n)), A328346(n))`
-/

namespace A341021.P5183290891709916146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001529 (A234016 n).toNat) (A328346 n)

end

end A341021.P5183290891709916146

/-! ## A341021.P4505204910133330969

`A288634(n+1)%A059832(A059174(n))`
-/

namespace A341021.P4505204910133330969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288634 (n + 1)) (A059832 (A059174 n).toNat)

end

end A341021.P4505204910133330969

/-! ## A341021.P16623555415784446934

`and(A108076(n), A227998(A253412(n+1)))`
-/

namespace A341021.P16623555415784446934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108076 n) (A227998 (A253412 (n + 1)).toNat)

end

end A341021.P16623555415784446934

/-!
# A341022: Number of partitions of n into 5 distinct nonzero triangular numbers.

The programs for A341022, there is no canonical definition to state claims against.
-/

/-! ## A341022.P8493778361086047773

`A086074(A159285(n)-3*a(n-1))` with `a(0)=1`
-/

namespace A341022.P8493778361086047773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086074 (A159285 n - 3 * a (n - 1)).toNat

end

end A341022.P8493778361086047773

/-! ## A341022.P6628656808165061712

`A118682(A305015(n+1)%A270103(3*n+2)+2)`
-/

namespace A341022.P6628656808165061712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118682 (Int.tmod (A305015 (n + 1)) (A270103 (3 * n + 2)) + 2).toNat

end

end A341022.P6628656808165061712

/-! ## A341022.P17906212123833384304

`A305234(A369329(n+1))`
-/

namespace A341022.P17906212123833384304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305234 (A369329 (n + 1)).toNat

end

end A341022.P17906212123833384304

/-! ## A341022.P7866593678657428474

`A085974(A206582(2*n)+23)`
-/

namespace A341022.P7866593678657428474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (A206582 (2 * n) + 23).toNat

end

end A341022.P7866593678657428474

/-! ## A341022.P1164687953352015939

`A037913(∑[A271012(n+2)+3]+7)`
-/

namespace A341022.P1164687953352015939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271012 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A341022.P1164687953352015939

/-!
# A341023: Number of partitions of n into 6 distinct nonzero triangular numbers.

The programs for A341023, there is no canonical definition to state claims against.
-/

/-! ## A341023.P7300902706069210955

`abs(A073097(record[A263050(n)]))`
-/

namespace A341023.P7300902706069210955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073097 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A341023.P7300902706069210955

/-! ## A341023.P11264368708734111488

`abs(A166698(record[A263050(n)]))`
-/

namespace A341023.P11264368708734111488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A341023.P11264368708734111488

/-! ## A341023.P10802467536007121256

`A008683(A123726(A137569(6*n)))`
-/

namespace A341023.P10802467536007121256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123726 (A137569 (6 * n)).toNat).toNat

end

end A341023.P10802467536007121256

/-! ## A341023.P10270325553863014203

`(A073097(record[A263050(n)])^A000108(n))²`
-/

namespace A341023.P10270325553863014203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263050 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A073097 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A000108 n : ℤ)) ^ 2

end

end A341023.P10270325553863014203

/-! ## A341023.P9848072851877526217

`(A073097(record[A263050(n)])^A007318(n))²`
-/

namespace A341023.P9848072851877526217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263050 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A073097 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A341023.P9848072851877526217

/-!
# A341024: Number of partitions of n into 7 distinct nonzero triangular numbers.

The programs for A341024, there is no canonical definition to state claims against.
-/

/-! ## A341024.P11815820735734573966

`A016412(A278251(record[A038558(n)]))`
-/

namespace A341024.P11815820735734573966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 (A278251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A341024.P11815820735734573966

/-! ## A341024.P6671906240301800799

`A000161(A096690(n+1)%A096660(n+4))`
-/

namespace A341024.P6671906240301800799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (Int.tmod (A096690 (n + 1)) (A096660 (n + 4))).toNat

end

end A341024.P6671906240301800799

/-! ## A341024.P4483853236149441117

`A359430(((2*n+1)*gcd(n, C(2, n²))+n-1)*2*(n+1))`
-/

namespace A341024.P4483853236149441117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 ((((2 * n + 1) * Nat.gcd n (Nat.choose 2 (n ^ 2)) : ℤ) + ((n : ℤ) - 1)) * (2 * (n + 1) : ℤ)).toNat

end

end A341024.P4483853236149441117

/-! ## A341024.P13797113485032950193

`A088573(A088580(n+1))%A022303(2*(n+2))`
-/

namespace A341024.P13797113485032950193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088573 (A088580 (n + 1)).toNat) (A022303 (2 * (n + 2)))

end

end A341024.P13797113485032950193

/-! ## A341024.P14659596487019173554

`A154103(A138153(A286256(n+1)-A323244(n+1)))`
-/

namespace A341024.P14659596487019173554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154103 (A138153 (A286256 (n + 1) - A323244 (n + 1)).toNat).toNat

end

end A341024.P14659596487019173554

/-!
# A341025: Number of partitions of n into 8 distinct nonzero triangular numbers.

The programs for A341025, there is no canonical definition to state claims against.
-/

/-! ## A341025.P1403939715437058133

`and(A275508(n+1), A291904(n))`
-/

namespace A341025.P1403939715437058133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A275508 (n + 1)) (A291904 n)

end

end A341025.P1403939715437058133

/-! ## A341025.P1118806060024557553

`A341026(lt[A341024(3*(n+1)), (n+1)/3^val(n+1, 3)])`
-/

namespace A341025.P1118806060024557553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 (3 * (n + 1) + 84)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 165)

end

end A341025.P1118806060024557553

/-! ## A341025.P7458252590847704885

`A341026(lt[A341022(3*n+2), (n+1)/3^val(n+1, 3)])`
-/

namespace A341025.P7458252590847704885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341022 (3 * n + 2 + 35)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 165)

end

end A341025.P7458252590847704885

/-! ## A341025.P9557615528131963293

`A324917(A324934(n+1)+A309168(n))`
-/

namespace A341025.P9557615528131963293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324917 (A324934 (n + 1) + A309168 n).toNat

end

end A341025.P9557615528131963293

/-! ## A341025.P18377746519486101277

`A277007(A029631(n+1))`
-/

namespace A341025.P18377746519486101277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (A029631 (n + 1)).toNat

end

end A341025.P18377746519486101277

/-!
# A341026: Number of partitions of n into 9 distinct nonzero triangular numbers.

The programs for A341026, there is no canonical definition to state claims against.
-/

/-! ## A341026.P9073708082451306192

`A341027(A052419(n+1)%A124132(n+4))`
-/

namespace A341026.P9073708082451306192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((Int.tmod (A052419 (n + 1)) (A124132 (n + 4))).toNat + 220)

end

end A341026.P9073708082451306192

/-! ## A341026.P6134427310857950702

`A238470(gcd(A166310(2*(n+1)), A239827(n+1)))`
-/

namespace A341026.P6134427310857950702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 (Int.gcd (A166310 (2 * (n + 1))) (A239827 (n + 1)))

end

end A341026.P6134427310857950702

/-! ## A341026.P2843287914824602933

`A341000(2*n-A005136(n))`
-/

namespace A341026.P2843287914824602933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (((2 * n : ℤ) - A005136 n).toNat + 285)

end

end A341026.P2843287914824602933

/-! ## A341026.P4410729473369152091

`A341000(n-A005136(n)+n)`
-/

namespace A341026.P4410729473369152091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (((n : ℤ) - A005136 n + (n : ℤ)).toNat + 285)

end

end A341026.P4410729473369152091

/-! ## A341026.P10159223313051347384

`A341000(n-(A005136(n)-n))`
-/

namespace A341026.P10159223313051347384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (((n : ℤ) - (A005136 n - (n : ℤ))).toNat + 285)

end

end A341026.P10159223313051347384

/-!
# A341027: Number of partitions of n into 10 distinct nonzero triangular numbers.

The programs for A341027, there is no canonical definition to state claims against.
-/

/-! ## A341027.P16112177115118625639

`A307102(n+1)%A000034(A329316(2*(n+1)))`
-/

namespace A341027.P16112177115118625639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307102 (n + 1)) (A000034 (A329316 (2 * (n + 1))).toNat)

end

end A341027.P16112177115118625639

/-! ## A341027.P15176715429369477376

`A312479(n)%A181715(A322105(n+1))`
-/

namespace A341027.P15176715429369477376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312479 n) (A181715 (A322105 (n + 1)).toNat)

end

end A341027.P15176715429369477376

/-! ## A341027.P9216511327721653963

`and(A010060(A275390(n+1)), A259895(n))`
-/

namespace A341027.P9216511327721653963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A275390 (n + 1)).toNat) (A259895 n)

end

end A341027.P9216511327721653963

/-! ## A341027.P6740105656368508613

`A252488(or(A067076(n+1), A252502(n+1)))`
-/

namespace A341027.P6740105656368508613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252488 (Int.lor (A067076 (n + 1)) (A252502 (n + 1))).toNat

end

end A341027.P6740105656368508613

/-! ## A341027.P7138513399305035035

`A143064(xor(A029578(n), A085516(n+1)))`
-/

namespace A341027.P7138513399305035035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 (Int.xor (A029578 n) (A085516 (n + 1))).toNat

end

end A341027.P7138513399305035035

/-!
# A341029: Twice the area of the convex hull around dragon curve expansion level n.

The programs for A341029, there is no canonical definition to state claims against.
-/

/-! ## A341029.P5829092306281766545

`∑[A086430(Δ[A089405(n)])]`
-/

namespace A341029.P5829092306281766545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086430 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341029.P5829092306281766545

/-! ## A341029.P3161796822194440109

`∑[A127286(Δ[A089405(n)])]`
-/

namespace A341029.P3161796822194440109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127286 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341029.P3161796822194440109

/-! ## A341029.P8480774613384860088

`∑[A127286(Δ[A095980(n)])]`
-/

namespace A341029.P8480774613384860088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127286 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341029.P8480774613384860088

/-!
# A341032: Numbers k such that A124440(k) is a square.

The programs for A341032, there is no canonical definition to state claims against.
-/

/-! ## A341032.P11067902180403217125

`∑[A323901(A228509(n))]`
-/

namespace A341032.P11067902180403217125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 (A228509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341032.P11067902180403217125

/-!
# A341033: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x/(1-k*x)).

The programs for A341033, there is no canonical definition to state claims against.
-/

/-! ## A341033.P11906920283982051734

`A291442(A293012(n))`
-/

namespace A341033.P11906920283982051734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (A293012 n).toNat

end

end A341033.P11906920283982051734

/-! ## A341033.P465584160376668417

`A107315(A251660(n+1))`
-/

namespace A341033.P465584160376668417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (A251660 (n + 1)).toNat

end

end A341033.P465584160376668417

/-! ## A341033.P9494316983529642735

`A257565(A061579(A151838(n)+n))`
-/

namespace A341033.P9494316983529642735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257565 (A061579 (A151838 n + (n : ℤ)).toNat).toNat

end

end A341033.P9494316983529642735

/-! ## A341033.P2106224331958446823

`A257565(or(A061579(n), A151838(n)))`
-/

namespace A341033.P2106224331958446823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257565 (Int.lor (A061579 n) (A151838 n)).toNat

end

end A341033.P2106224331958446823

/-! ## A341033.P16229501342871512751

`A257565(xor(A061579(n), A151838(n)))`
-/

namespace A341033.P16229501342871512751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257565 (Int.xor (A061579 n) (A151838 n)).toNat

end

end A341033.P16229501342871512751

/-!
# A341035: a(n) is the smallest positive integer such that n+a(n) contains the string n-a(n), in both forward and reverse directions, as a substring. If no such number exists then a(n) = -1.

The programs for A341035, there is no canonical definition to state claims against.
-/

/-! ## A341035.P7934962737835099148

`A341034(A243835(n)+n+1)`
-/

namespace A341035.P7934962737835099148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341034 (A243835 n + (n : ℤ) + 1).toNat

end

end A341035.P7934962737835099148

/-! ## A341035.P2920498429938906149

`A341034(n+1)%A007088(A055235(n))`
-/

namespace A341035.P2920498429938906149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341034 (n + 1)) (A007088 (A055235 n).toNat)

end

end A341035.P2920498429938906149

/-! ## A341035.P908683779933858808

`A341034(n+1)+A000122(A013658(n+1))`
-/

namespace A341035.P908683779933858808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341034 (n + 1) + A000122 (A013658 (n + 1)).toNat

end

end A341035.P908683779933858808

/-! ## A341035.P15429889209813765789

`A341034(n+1)+A174903(A045536(n+1))`
-/

namespace A341035.P15429889209813765789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341034 (n + 1) + A174903 (A045536 (n + 1)).toNat

end

end A341035.P15429889209813765789

/-! ## A341035.P2817609503404658867

`A010051(A039950(3*n+4))*A341034(n+1)`
-/

namespace A341035.P2817609503404658867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A039950 (3 * n + 4)).toNat * A341034 (n + 1)

end

end A341035.P2817609503404658867

/-! ## A341035.P16783278491661406474

`A341034(n+1)+A000007(A345924(n+1))`
-/

namespace A341035.P16783278491661406474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341034 (n + 1) + A000007 (A345924 (n + 1)).toNat

end

end A341035.P16783278491661406474

/-! ## A341035.P12269571032795984955

`A341034(n+1)+A010874(A350233(n+1))`
-/

namespace A341035.P12269571032795984955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341034 (n + 1) + A010874 (A350233 (n + 1)).toNat

end

end A341035.P12269571032795984955

/-! ## A341035.P9654695608661586142

`A341034(n+1)+A000007(A368532(n+4))`
-/

namespace A341035.P9654695608661586142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341034 (n + 1) + A000007 (A368532 (n + 4)).toNat

end

end A341035.P9654695608661586142

/-! ## A341035.P10415957533194394291

`A057427(A341050(3*n+5))*A341034(n+1)`
-/

namespace A341035.P10415957533194394291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A341050 (3 * n + 5)).toNat * A341034 (n + 1)

end

end A341035.P10415957533194394291

/-! ## A341035.P4761148749880602147

`A341034(n%A048422(n+1)+1)`
-/

namespace A341035.P4761148749880602147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341034 (Int.tmod (n : ℤ) (A048422 (n + 1)) + 1).toNat

end

end A341035.P4761148749880602147

/-!
# A341036: a(n) = Sum_{k=1..n} gcd(k,n)^(k-2).

The programs for A341036, there is no canonical definition to state claims against.
-/

/-! ## A341036.P3383993066541136473

`xor(A341040(A160607(n)), A342435(n+1))`
-/

namespace A341036.P3383993066541136473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A341040 (A160607 n).toNat) (A342435 (n + 1))

end

end A341036.P3383993066541136473

/-! ## A341036.P17416586294571183570

`A342435(n+1)+A078771(A037546(n+1))`
-/

namespace A341036.P17416586294571183570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342435 (n + 1) + A078771 (A037546 (n + 1)).toNat

end

end A341036.P17416586294571183570

/-! ## A341036.P10347850969438934828

`A342435(n+1)+A341027(A028269(n+1))`
-/

namespace A341036.P10347850969438934828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342435 (n + 1) + A341027 ((A028269 (n + 1)).toNat + 220)

end

end A341036.P10347850969438934828

/-!
# A341038: a(n) = Sum_{i+j<=m+1} d_i * d_j, where d_1 < ... < d_m are the divisors of n.

The programs for A341038, there is no canonical definition to state claims against.
-/

/-! ## A341038.P10862846333262862233

`or(A260438(A007716(n)), A318491(n+1))`
-/

namespace A341038.P10862846333262862233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A260438 (A007716 n).toNat) (A318491 (n + 1))

end

end A341038.P10862846333262862233

/-! ## A341038.P7628060774378934518

`or(A064944(n+1), A323023((n+1)*∏{p}[n+1, #]))`
-/

namespace A341038.P7628060774378934518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064944 (n + 1)) (A323023 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)))

end

end A341038.P7628060774378934518

/-! ## A341038.P6664481330548620552

`A064944(n+1)+A003849(A064780(n))`
-/

namespace A341038.P6664481330548620552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) + A003849 (A064780 n).toNat

end

end A341038.P6664481330548620552

/-! ## A341038.P17107733737537955841

`A275947(A001096(n))+A064944(n+1)`
-/

namespace A341038.P17107733737537955841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A001096 n).toNat + A064944 (n + 1)

end

end A341038.P17107733737537955841

/-! ## A341038.P17908059629535536926

`A275947(n)+A064944(A032555(n+1))`
-/

namespace A341038.P17908059629535536926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n + A064944 (A032555 (n + 1)).toNat

end

end A341038.P17908059629535536926

/-!
# A341039: Numbers k such that k divides A341038(k).

The programs for A341039, there is no canonical definition to state claims against.
-/

/-! ## A341039.P9957455377341097589

`xor(∑[∑{e}[n+1, #]+1], A066011(n+8))+1`
-/

namespace A341039.P9957455377341097589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A066011 (n + 8)) + 1

end

end A341039.P9957455377341097589

/-!
# A341040: Number T(n,k) of partitions of n into k distinct nonzero squares; triangle T(n,k), n>=0, 0<=k<=A248509(n), read by rows.

The programs for A341040, there is no canonical definition to state claims against.
-/

/-! ## A341040.P15707620414283635184

`A189661(A352825(3*n+5)+A066779(n+2))`
-/

namespace A341040.P15707620414283635184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A352825 (3 * n + 5) + A066779 (n + 2)).toNat

end

end A341040.P15707620414283635184

/-! ## A341040.P14968526946139323794

`A266070(∑[n]*A273662(n+3))`
-/

namespace A341040.P14968526946139323794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A273662 (n + 3)).toNat

end

end A341040.P14968526946139323794

/-! ## A341040.P10888814149311816962

`A124749(gcd(A011782(n+2), A346705(n+4)))`
-/

namespace A341040.P10888814149311816962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124749 (Int.gcd (A011782 (n + 2)) (A346705 (n + 4)))

end

end A341040.P10888814149311816962

/-! ## A341040.P2193871243939858554

`A295134(n)%A078929(A299276(n))`
-/

namespace A341040.P2193871243939858554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295134 n) (A078929 (A299276 n).toNat)

end

end A341040.P2193871243939858554

/-! ## A341040.P18398599938113187543

`A079978(A359574(n+4)+A079099(3*n+1))`
-/

namespace A341040.P18398599938113187543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A359574 (n + 4) + A079099 (3 * n + 1)).toNat

end

end A341040.P18398599938113187543

/-!
# A341041: If n = Product (p_j^k_j) then a(n) = 1 + Product (a(pi(p_j))), where pi = A000720, with a(1) = 1.

The programs for A341041, there is no canonical definition to state claims against.
-/

/-! ## A341041.P14526434508444855718

`A318046(A007947(n+1))+A000007(A015128(n))`
-/

namespace A341041.P14526434508444855718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318046 (A007947 (n + 1)).toNat + A000007 (A015128 n).toNat

end

end A341041.P14526434508444855718

/-! ## A341041.P10954294586642117696

`A318046(A007947(n+1))+A000007(A000043(n+1))`
-/

namespace A341041.P10954294586642117696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318046 (A007947 (n + 1)).toNat + A000007 (A000043 (n + 1)).toNat

end

end A341041.P10954294586642117696

/-! ## A341041.P14029741869225408203

`A358552(n+1)+A332671(A014410(2*n+3))`
-/

namespace A341041.P14029741869225408203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) + A332671 (A014410 (2 * n + 3)).toNat

end

end A341041.P14029741869225408203

/-!
# A341042: Multiplicative projection of odd part of n.

The programs for A341042, the canonical program `A341042.P18512117435657618` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341042 has offset 1).

The definition of A341042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000026, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341042.P18512117435657618

`A000026(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A341042

/-- `A000026(A000265(n+1))` -/
def P18512117435657618.Spec : Prop :=
  ∀ n, P18512117435657618.a n = A341042 (n + 1)

theorem P18512117435657618.correct : P18512117435657618.Spec := by
  intro n
  simp only [A341042, Nat.add_sub_cancel]

end A341042

/-! ## A341042.P16294357165593668343

`A000026((n+1)/2^val(n+1, 2))`
-/

namespace A341042.P16294357165593668343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A341042.P16294357165593668343

namespace A341042

/-- `A000026((n+1)/2^val(n+1, 2))` -/
def P16294357165593668343.Spec : Prop :=
  ∀ n, P16294357165593668343.a n = A341042 (n + 1)

end A341042

/-! ## A341042.P2844124140902824596

`A000026((n+1)*2^-val(n+1, 2))`
-/

namespace A341042.P2844124140902824596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A341042.P2844124140902824596

namespace A341042

/-- `A000026((n+1)*2^-val(n+1, 2))` -/
def P2844124140902824596.Spec : Prop :=
  ∀ n, P2844124140902824596.a n = A341042 (n + 1)

end A341042

/-! ## A341042.P9328071876316227127

`A000026(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A341042.P9328071876316227127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A341042.P9328071876316227127

namespace A341042

/-- `A000026(2^(log2(n+1)-val(n+1, 2)))` -/
def P9328071876316227127.Spec : Prop :=
  ∀ n, P9328071876316227127.a n = A341042 (n + 1)

end A341042

/-! ## A341042.P289163389320029628

`A000026((n+1)/and(n+1, -(n+1)))`
-/

namespace A341042.P289163389320029628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A341042.P289163389320029628

namespace A341042

/-- `A000026((n+1)/and(n+1, -(n+1)))` -/
def P289163389320029628.Spec : Prop :=
  ∀ n, P289163389320029628.a n = A341042 (n + 1)

end A341042

/-! ## A341042.P2712778687680085822

`A000026(-floor((2*n+1)/xor(n, -(n+2))))`
-/

namespace A341042.P2712778687680085822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (-⌊(2 * n + 1 : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌋).toNat

end

end A341042.P2712778687680085822

namespace A341042

/-- `A000026(-floor((2*n+1)/xor(n, -(n+2))))` -/
def P2712778687680085822.Spec : Prop :=
  ∀ n, P2712778687680085822.a n = A341042 (n + 1)

end A341042

/-! ## A341042.P16520850623905686050

`∏{p}[n+1, #*val(n+1, #)]/A004277(val(n+1, 2))`
-/

namespace A341042.P16520850623905686050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) / (A004277 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A341042.P16520850623905686050

namespace A341042

/-- `∏{p}[n+1, #*val(n+1, #)]/A004277(val(n+1, 2))` -/
def P16520850623905686050.Spec : Prop :=
  ∀ n, P16520850623905686050.a n = (A341042 (n + 1) : ℚ)

end A341042

/-! ## A341042.P6189061128840042884

`∏{p}[n+1, #*val(n+1, #)]/A105360(val(n+1, 2)+1)`
-/

namespace A341042.P6189061128840042884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) / (A105360 (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℚ)

end

end A341042.P6189061128840042884

namespace A341042

/-- `∏{p}[n+1, #*val(n+1, #)]/A105360(val(n+1, 2)+1)` -/
def P6189061128840042884.Spec : Prop :=
  ∀ n, P6189061128840042884.a n = (A341042 (n + 1) : ℚ)

end A341042

/-! ## A341042.P16359793866481476416

`A000026((n+1)/A006519(n+1))`
-/

namespace A341042.P16359793866481476416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A341042.P16359793866481476416

namespace A341042

/-- `A000026((n+1)/A006519(n+1))` -/
def P16359793866481476416.Spec : Prop :=
  ∀ n, P16359793866481476416.a n = A341042 (n + 1)

end A341042

/-! ## A341042.P18139007764685515257

`A000026(A306546(2*(n+1)))`
-/

namespace A341042.P18139007764685515257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A306546 (2 * (n + 1))).toNat

end

end A341042.P18139007764685515257

namespace A341042

/-- `A000026(A306546(2*(n+1)))` -/
def P18139007764685515257.Spec : Prop :=
  ∀ n, P18139007764685515257.a n = A341042 (n + 1)

end A341042

/-!
# A341043: a(n) = 16*n^3 - 36*n^2 + 30*n - 9.

The programs for A341043, the canonical program `A341043.P13276608249437996011` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341043 has offset 1).

The definition of A341043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)^3-36*(n+1)²+30*(n+1)-9` (program `A341043.P13276608249437996011`, by `A341043.P13276608249437996011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341043.P13276608249437996011

`16*(n+1)^3-36*(n+1)²+30*(n+1)-9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A341043

/-- `16*(n+1)^3-36*(n+1)²+30*(n+1)-9` -/
def P13276608249437996011.Spec : Prop :=
  ∀ n, P13276608249437996011.a n = A341043 (n + 1)

theorem P13276608249437996011.correct : P13276608249437996011.Spec := by
  intro n
  simp only [A341043, Nat.add_sub_cancel]

end A341043

/-! ## A341043.P3174363666850922348

`Δ[C(2*n, 2)²]`
-/

namespace A341043.P3174363666850922348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341043.P3174363666850922348

namespace A341043

/-- `Δ[C(2*n, 2)²]` -/
def P3174363666850922348.Spec : Prop :=
  ∀ n, P3174363666850922348.a n = A341043 (n + 1)

end A341043

/-! ## A341043.P10851973375605992832

`Δ[C(2*n, 2)^2]`
-/

namespace A341043.P10851973375605992832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341043.P10851973375605992832

namespace A341043

/-- `Δ[C(2*n, 2)^2]` -/
def P10851973375605992832.Spec : Prop :=
  ∀ n, P10851973375605992832.a n = A341043 (n + 1)

end A341043

/-! ## A341043.P5842813226996710164

`(lcm(2*n+1, 2*n)+1)*(2*n+2*n+1)`
-/

namespace A341043.P5842813226996710164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (2 * n) + 1) * (2 * n + (2 * n + 1))

end

end A341043.P5842813226996710164

namespace A341043

/-- `(lcm(2*n+1, 2*n)+1)*(2*n+2*n+1)` -/
def P5842813226996710164.Spec : Prop :=
  ∀ n, (P5842813226996710164.a n : ℤ) = A341043 (n + 1)

end A341043

/-! ## A341043.P16418992214198061096

`(A393192(n+1)+1)/2`
-/

namespace A341043.P16418992214198061096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393192 (n + 1) + 1 : ℚ) / 2

end

end A341043.P16418992214198061096

namespace A341043

/-- `(A393192(n+1)+1)/2` -/
def P16418992214198061096.Spec : Prop :=
  ∀ n, P16418992214198061096.a n = (A341043 (n + 1) : ℚ)

end A341043

/-! ## A341043.P14825859073460190802

`((2*n)²+n+1+n)*(A004767(n)-2)`
-/

namespace A341043.P14825859073460190802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + n + 1 + n : ℤ) * (A004767 n - 2)

end

end A341043.P14825859073460190802

namespace A341043

/-- `((2*n)²+n+1+n)*(A004767(n)-2)` -/
def P14825859073460190802.Spec : Prop :=
  ∀ n, P14825859073460190802.a n = A341043 (n + 1)

end A341043

/-! ## A341043.P14438156350851192562

`A016813(n)*A054569(n+1)`
-/

namespace A341043.P14438156350851192562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A054569 (n + 1)

end

end A341043.P14438156350851192562

namespace A341043

/-- `A016813(n)*A054569(n+1)` -/
def P14438156350851192562.Spec : Prop :=
  ∀ n, P14438156350851192562.a n = A341043 (n + 1)

end A341043

/-! ## A341043.P1893242655947821238

`(A033951(n)-n)*A016813(n)`
-/

namespace A341043.P1893242655947821238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033951 n - (n : ℤ)) * A016813 n

end

end A341043.P1893242655947821238

namespace A341043

/-- `(A033951(n)-n)*A016813(n)` -/
def P1893242655947821238.Spec : Prop :=
  ∀ n, P1893242655947821238.a n = A341043 (n + 1)

end A341043

/-!
# A341044: Numbers k such that A318996(k) is prime.

The programs for A341044, there is no canonical definition to state claims against.
-/

/-! ## A341044.P1136172234528274543

`A033755(C(ceil(3*n/2), n))+A001358(n+2)`
-/

namespace A341044.P1136172234528274543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat n) + A001358 (n + 2)

end

end A341044.P1136172234528274543

/-! ## A341044.P18235119230042438066

`A001358(n+2)%A100466(round(ϕ*a(n-1)))` with `a(0)=8`
-/

namespace A341044.P18235119230042438066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.tmod (A001358 (n + 2)) (A100466 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat)

end

end A341044.P18235119230042438066

/-! ## A341044.P8900021981330402079

`A001358(n+2)+A000038(A000583(n))`
-/

namespace A341044.P8900021981330402079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2) + A000038 (A000583 n).toNat

end

end A341044.P8900021981330402079

/-! ## A341044.P5316189166024840255

`A001358(n+2)+A000038(A001787(n))`
-/

namespace A341044.P5316189166024840255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2) + A000038 (A001787 n).toNat

end

end A341044.P5316189166024840255

/-! ## A341044.P7762502210466996605

`A001358(n+2)+A000038(A001906(n))`
-/

namespace A341044.P7762502210466996605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2) + A000038 (A001906 n).toNat

end

end A341044.P7762502210466996605

/-!
# A341045: Numbers k such that k divides A318996(k).

The programs for A341045, there is no canonical definition to state claims against.
-/

/-! ## A341045.P3134879802873533571

`A000194(A113441(n))*A223541(n)`
-/

namespace A341045.P3134879802873533571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A113441 n).toNat * A223541 n

end

end A341045.P3134879802873533571

/-! ## A341045.P11517279555638955940

`A225419(A036493(n))`
-/

namespace A341045.P11517279555638955940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225419 (A036493 n).toNat

end

end A341045.P11517279555638955940

/-!
# A341046: a(n) is the smallest k such that the fractional part of the decimal expansion of k*Pi begins with n zeros.

The programs for A341046, there is no canonical definition to state claims against.
-/

/-! ## A341046.P13088470659068906823

`ceil(A341047(n)/π)`
-/

namespace A341046.P13088470659068906823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341047 n : ℝ) / Real.pi⌉

end

end A341046.P13088470659068906823

/-! ## A341046.P5011771390556721779

`floor(2^A008683(A006450(n+1))+A341047(n)/π)`
-/

namespace A341046.P5011771390556721779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) : ℝ) + (A341047 n : ℝ) / Real.pi⌋

end

end A341046.P5011771390556721779

/-!
# A341047: a(n) is the integer part of the smallest multiple of Pi whose fractional part begins with n 0's after the decimal point.

The programs for A341047, there is no canonical definition to state claims against.
-/

/-! ## A341047.P11358231583079764443

`floor(π*A341046(n))`
-/

namespace A341047.P11358231583079764443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A341046 n : ℝ)⌋

end

end A341047.P11358231583079764443

/-! ## A341047.P9177860764609489190

`or(round(π*A341046(n)), A000007(n))`
-/

namespace A341047.P9177860764609489190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.pi * (A341046 n : ℝ))) (A000007 n)

end

end A341047.P9177860764609489190

/-! ## A341047.P180228786940432596

`A057077(2*n)^2*round(π*A341046(n))`
-/

namespace A341047.P180228786940432596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) ^ 2 * SequenceMachineLib.roundAway (Real.pi * (A341046 n : ℝ))

end

end A341047.P180228786940432596

/-! ## A341047.P14581007106244752022

`log2(1/2)^A001105(n)*round(π*A341046(n))`
-/

namespace A341047.P14581007106244752022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) ^ (A001105 n : ℤ) * (SequenceMachineLib.roundAway (Real.pi * (A341046 n : ℝ)) : ℝ)

end

end A341047.P14581007106244752022

/-! ## A341047.P14334052847131514994

`log2(1/2)^A010673(n)*round(π*A341046(n))`
-/

namespace A341047.P14334052847131514994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) ^ (A010673 n : ℤ) * (SequenceMachineLib.roundAway (Real.pi * (A341046 n : ℝ)) : ℝ)

end

end A341047.P14334052847131514994

/-!
# A341049: Irregular triangle read by rows T(n,k) in which row n lists the terms of n-th row of A336811 in nondecreasing order.

The programs for A341049, there is no canonical definition to state claims against.
-/

/-! ## A341049.P2582635279527453785

`val(A334436(n), 2)+1`
-/

namespace A341049.P2582635279527453785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334436 n).toNat 2 + 1

end

end A341049.P2582635279527453785

/-! ## A341049.P11738478677122858388

`A000005(2^val(A334436(n), 2))`
-/

namespace A341049.P11738478677122858388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ SequenceMachineLib.valuation (A334436 n).toNat 2)

end

end A341049.P11738478677122858388

/-! ## A341049.P5752141148010038414

`A001222(2*2^val(A334436(n), 2))`
-/

namespace A341049.P5752141148010038414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * 2 ^ SequenceMachineLib.valuation (A334436 n).toNat 2)

end

end A341049.P5752141148010038414

/-! ## A341049.P15664996233601326728

`A001222(lcm(3, 2^val(A334436(n), 2)))`
-/

namespace A341049.P15664996233601326728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lcm 3 (2 ^ SequenceMachineLib.valuation (A334436 n).toNat 2))

end

end A341049.P15664996233601326728

/-! ## A341049.P9428007760774868728

`A001511(A334436(n))`
-/

namespace A341049.P9428007760774868728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A334436 n).toNat

end

end A341049.P9428007760774868728

/-! ## A341049.P3001463157151562998

`A007814(2*A334436(n))`
-/

namespace A341049.P3001463157151562998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A334436 n).toNat

end

end A341049.P3001463157151562998

/-! ## A341049.P923816673702978508

`A067029(2*A334436(n))`
-/

namespace A341049.P923816673702978508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A334436 n).toNat

end

end A341049.P923816673702978508

/-! ## A341049.P16384668117274715461

`A136480(2*A334436(n))`
-/

namespace A341049.P16384668117274715461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * A334436 n).toNat

end

end A341049.P16384668117274715461

/-!
# A341050: Cube array read by upward antidiagonals ignoring zero and empty terms: T(n, k, r) is the number of n-ary strings of length k, containing r consecutive 0's.

The programs for A341050, there is no canonical definition to state claims against.
-/

/-! ## A341050.P15909155031346620932

`gcd(A000290(A006876(n+1)), A004254(n))`
-/

namespace A341050.P15909155031346620932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A006876 (n + 1)).toNat) (A004254 n)

end

end A341050.P15909155031346620932

/-! ## A341050.P641550540788023548

`gcd(A082459(n), A082495(A082492(n+1)))`
-/

namespace A341050.P641550540788023548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082459 n) (A082495 (A082492 (n + 1)).toNat)

end

end A341050.P641550540788023548

/-! ## A341050.P13640776330815754436

`gcd(A089940(2*n), A351981(A270613(n+1)))`
-/

namespace A341050.P13640776330815754436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089940 (2 * n)) (A351981 (A270613 (n + 1)).toNat)

end

end A341050.P13640776330815754436

/-!
# A341052: a(n) is the number of distinct ratios > 1 for which there exist A341051(n) n-digit integers (the maximum possible) that are in geometric progression.

The programs for A341052, there is no canonical definition to state claims against.
-/

/-! ## A341052.P472219180053899590

`A350255(n+1)+1-A350254(n+1)`
-/

namespace A341052.P472219180053899590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350255 (n + 1) + (1 - A350254 (n + 1))

end

end A341052.P472219180053899590

/-! ## A341052.P7472345737970510296

`A350255(n+1)+A024000(A350254(n+1))`
-/

namespace A341052.P7472345737970510296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350255 (n + 1) + A024000 (A350254 (n + 1)).toNat

end

end A341052.P7472345737970510296

/-! ## A341052.P15148974221654187166

`A005555(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P15148974221654187166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P15148974221654187166

/-! ## A341052.P9080909656072293551

`A010883(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P9080909656072293551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P9080909656072293551

/-! ## A341052.P8672070248931222287

`A013620(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P8672070248931222287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P8672070248931222287

/-! ## A341052.P1966158232424888201

`A036561(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P1966158232424888201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P1966158232424888201

/-! ## A341052.P4420106843997845170

`A088468(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P4420106843997845170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P4420106843997845170

/-! ## A341052.P16750264922875642841

`A099627(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P16750264922875642841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P16750264922875642841

/-! ## A341052.P12884512673385074512

`A185974(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P12884512673385074512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P12884512673385074512

/-! ## A341052.P15808015013511763092

`A203814(A350255(n+1)-A350254(n+1))`
-/

namespace A341052.P15808015013511763092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203814 (A350255 (n + 1) - A350254 (n + 1)).toNat

end

end A341052.P15808015013511763092

/-!
# A341053: Irregular triangle read by rows: T(n, k) is the k-th largest numerator of the A341052(n) ratios for which there exist A341051(n) n-digit integers (the maximum possible) that are in geometric progression.

The programs for A341053, there is no canonical definition to state claims against.
-/

/-! ## A341053.P2526652506420779805

`A163352(2*n+1)+A010060(A074029(n+2))`
-/

namespace A341053.P2526652506420779805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (2 * n + 1) + A010060 (A074029 (n + 2)).toNat

end

end A341053.P2526652506420779805

/-! ## A341053.P10766123538974265935

`A348444(n+1)+A002024(A020753(n+1))`
-/

namespace A341053.P10766123538974265935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348444 (n + 1) + A002024 (A020753 (n + 1)).toNat

end

end A341053.P10766123538974265935

/-! ## A341053.P2283080105759743312

`A132090(3*(n+1))+A115721(A324000(3*n+1))`
-/

namespace A341053.P2283080105759743312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (3 * (n + 1)) + A115721 (A324000 (3 * n + 1)).toNat

end

end A341053.P2283080105759743312

/-! ## A341053.P7065692296269270778

`A080237(A062763(n+1))+∑[A010054(n)]`
-/

namespace A341053.P7065692296269270778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A062763 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341053.P7065692296269270778

/-! ## A341053.P16249813166608050294

`A080237(A062763(n+1))+A002024(n+1)`
-/

namespace A341053.P16249813166608050294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A062763 (n + 1)).toNat + A002024 (n + 1)

end

end A341053.P16249813166608050294

/-!
# A341054: For any number n with balanced ternary expansion (d_1, ..., d_k), the balanced ternary expansion of a(n), say (t_1, ..., t_k), satisfies t_m = d_1 + ... + d_m mod 3 for m = 1..k.

The programs for A341054, there is no canonical definition to state claims against.
-/

/-! ## A341054.P3174946418956339986

`A341055(A341055(n))+A340998(A341130(n+1))`
-/

namespace A341054.P3174946418956339986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341055 (A341055 n).toNat + A340998 ((A341130 (n + 1)).toNat + 140)

end

end A341054.P3174946418956339986

/-! ## A341054.P11486419765082186344

`A341055(A341055(n)^A340365(n+1))`
-/

namespace A341054.P11486419765082186344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341055 (SequenceMachineLib.roundAway ((A341055 n : ℚ) ^ (A340365 (n + 1) : ℤ))).toNat

end

end A341054.P11486419765082186344

/-! ## A341054.P11070383693417137644

`A341055(A341055(n))%A104102(n+1)`
-/

namespace A341054.P11070383693417137644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341055 (A341055 n).toNat) (A104102 (n + 1))

end

end A341054.P11070383693417137644

/-! ## A341054.P10845867220626918737

`A341055(A341055(n)%A246495(n+1))`
-/

namespace A341054.P10845867220626918737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341055 (Int.tmod (A341055 n) (A246495 (n + 1))).toNat

end

end A341054.P10845867220626918737

/-! ## A341054.P18350488126400357778

`A341055(A340365(n+1)²²*A341055(n))`
-/

namespace A341054.P18350488126400357778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341055 ((A340365 (n + 1) ^ 2) ^ 2 * A341055 n).toNat

end

end A341054.P18350488126400357778

/-!
# A341055: Inverse permutation to A341054.

The programs for A341055, there is no canonical definition to state claims against.
-/

/-! ## A341055.P842101496188730084

`A341054(A341054(n)^A340365(n+1))`
-/

namespace A341055.P842101496188730084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341054 (SequenceMachineLib.roundAway ((A341054 n : ℚ) ^ (A340365 (n + 1) : ℤ))).toNat

end

end A341055.P842101496188730084

/-! ## A341055.P15597484111453646572

`A341054(A341054(n)%A036975(n+1))`
-/

namespace A341055.P15597484111453646572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341054 (Int.tmod (A341054 n) (A036975 (n + 1))).toNat

end

end A341055.P15597484111453646572

/-! ## A341055.P8018624169362337895

`A341054(A341054(n))%A083156(n+1)`
-/

namespace A341055.P8018624169362337895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341054 (A341054 n).toNat) (A083156 (n + 1))

end

end A341055.P8018624169362337895

/-! ## A341055.P12353116653395019212

`A341054(A340365(n+1)²²*A341054(n))`
-/

namespace A341055.P12353116653395019212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341054 ((A340365 (n + 1) ^ 2) ^ 2 * A341054 n).toNat

end

end A341055.P12353116653395019212

/-! ## A341055.P11607849344901715382

`A281392(A000079(n))*A341054(A341054(n))`
-/

namespace A341055.P11607849344901715382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (A000079 n).toNat * A341054 (A341054 n).toNat

end

end A341055.P11607849344901715382

/-!
# A341056: a(n) = n! * [x^n] exp(x/(1 - n*x)) / (1 - x).

The programs for A341056, there is no canonical definition to state claims against.
-/

/-! ## A341056.P15549046398707488723

`∑[A076203(n!²)]`
-/

namespace A341056.P15549046398707488723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076203 (Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341056.P15549046398707488723

/-!
# A341057: Numbers without Brazilian divisors.

The programs for A341057, there is no canonical definition to state claims against.
-/

/-! ## A341057.P11871371327016010255

`eq[0, A340795(n+1)]+1`
-/

namespace A341057.P11871371327016010255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341057.P11871371327016010255

/-! ## A341057.P17120850626499242180

`lt[n*A340795(A028310(n)), n]`
-/

namespace A341057.P17120850626499242180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A340795 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A341057.P17120850626499242180

/-! ## A341057.P9836445258198912050

`record[n-A063304(A340795(n+1)+2)]`
-/

namespace A341057.P9836445258198912050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A063304 (A340795 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P9836445258198912050

/-! ## A341057.P6392133093694623620

`record[gcd(A000027(n+1), A340795(n+1))]`
-/

namespace A341057.P6392133093694623620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A340795 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P6392133093694623620

/-! ## A341057.P16328242485559657774

`record[gcd(A340795(n+1)², A110514(2*n))]`
-/

namespace A341057.P16328242485559657774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340795 (n + 1) ^ 2) (A110514 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P16328242485559657774

/-! ## A341057.P17798536019209899463

`record[(n+1)/A006093(A340795(n+1)+1)]`
-/

namespace A341057.P17798536019209899463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006093 (A340795 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P17798536019209899463

/-! ## A341057.P5476121385010702500

`record[A005843(n+1)/(A340795(n+1)+2)]`
-/

namespace A341057.P5476121385010702500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A340795 (n + 1) + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P5476121385010702500

/-! ## A341057.P16969369286769490932

`record[(n+1)/A033441(A340795(n+1)+2)]`
-/

namespace A341057.P16969369286769490932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033441 (A340795 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P16969369286769490932

/-! ## A341057.P840720648570053278

`record[n+1-A000096(8*A340795(n+1))]`
-/

namespace A341057.P840720648570053278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000096 (8 * A340795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P840720648570053278

/-! ## A341057.P1263439076972149995

`record[n+1-A033441(8*A340795(n+1))]`
-/

namespace A341057.P1263439076972149995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033441 (8 * A340795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341057.P1263439076972149995

/-!
# A341058: Numbers that have only one divisor that is Brazilian.

The programs for A341058, there is no canonical definition to state claims against.
-/

/-! ## A341058.P4676180173326177850

`eq[1, A340795(n+1)]+1`
-/

namespace A341058.P4676180173326177850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341058.P4676180173326177850

/-! ## A341058.P16376889446884760951

`eq[1, A340795(gcd(n, C(2, n)))]`
-/

namespace A341058.P16376889446884760951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P16376889446884760951

/-! ## A341058.P17277970149576298234

`eq[1, A340795(n^ceil(sin(n)²))]`
-/

namespace A341058.P17277970149576298234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P17277970149576298234

/-! ## A341058.P778193444476119508

`eq[1, A340795(n-a(2%n))]` with `a(0)=0`
-/

namespace A341058.P778193444476119508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A340795 ((n : ℤ) - f2 (2 % n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P778193444476119508

/-! ## A341058.P15961294799515852887

`eq[1, A340795(A028310(n))]`
-/

namespace A341058.P15961294799515852887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P15961294799515852887

/-! ## A341058.P2801929910739927714

`eq[1, A340795(A257143(n))]`
-/

namespace A341058.P2801929910739927714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P2801929910739927714

/-! ## A341058.P6848601267722118386

`A020725(eq[1, A340795(n+1)])`
-/

namespace A341058.P6848601267722118386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341058.P6848601267722118386

/-! ## A341058.P1795068489364565843

`eq[1, A340795(A233583(n+1))]`
-/

namespace A341058.P1795068489364565843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P1795068489364565843

/-! ## A341058.P7533247511979539161

`eq[1, A340795(A000007(n)+n)]`
-/

namespace A341058.P7533247511979539161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P7533247511979539161

/-! ## A341058.P10258756627149723021

`eq[1, A340795(A000038(n)+n)]`
-/

namespace A341058.P10258756627149723021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341058.P10258756627149723021

/-!
# A341062: Sequence whose partial sums give A000005.

The programs for A341062, the canonical program `A341062.P3183873538758159850` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341062 has offset 1).

The definition of A341062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341062.P371080361290626739

`A384195(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A341062.P371080361290626739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A384195 n - a (n - 1)

end

end A341062.P371080361290626739

namespace A341062

/-- `A384195(n)-a(n-1)` -/
def P371080361290626739.Spec : Prop :=
  ∀ n, P371080361290626739.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P3183873538758159850

`Δ[(A032741(n)+1)%(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341062

/-- `Δ[(A032741(n)+1)%(n+1)]` -/
def P3183873538758159850.Spec : Prop :=
  ∀ n, P3183873538758159850.a n = A341062 (n + 1)

theorem P3183873538758159850.correct : P3183873538758159850.Spec := by
  intro n
  simp only [A341062, Nat.add_sub_cancel]

end A341062

/-! ## A341062.P11512740618551825772

`A051951(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A341062.P11512740618551825772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051951 (n - 1) + a (n - 1)

end

end A341062.P11512740618551825772

namespace A341062

/-- `A051951(n-1)+a(n-1)` -/
def P11512740618551825772.Spec : Prop :=
  ∀ n, P11512740618551825772.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P15770472202322590787

`A051950(A028310(n)+1)`
-/

namespace A341062.P15770472202322590787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A028310 n + 1).toNat

end

end A341062.P15770472202322590787

namespace A341062

/-- `A051950(A028310(n)+1)` -/
def P15770472202322590787.Spec : Prop :=
  ∀ n, P15770472202322590787.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P251689125394599586

`A325765(n)-A032741(n)`
-/

namespace A341062.P251689125394599586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - A032741 n

end

end A341062.P251689125394599586

namespace A341062

/-- `A325765(n)-A032741(n)` -/
def P251689125394599586.Spec : Prop :=
  ∀ n, P251689125394599586.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P941086182807107537

`A000007(n)+Δ[A032741(n)]`
-/

namespace A341062.P941086182807107537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A341062.P941086182807107537

namespace A341062

/-- `A000007(n)+Δ[A032741(n)]` -/
def P941086182807107537.Spec : Prop :=
  ∀ n, P941086182807107537.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P17524843594609119394

`or(Δ[A032741(n)], A010052(n))`
-/

namespace A341062.P17524843594609119394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A010052 n)

end

end A341062.P17524843594609119394

namespace A341062

/-- `or(Δ[A032741(n)], A010052(n))` -/
def P17524843594609119394.Spec : Prop :=
  ∀ n, P17524843594609119394.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P2544971583073549145

`A051950(A000007(n)+1+n)`
-/

namespace A341062.P2544971583073549145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A000007 n + 1 + (n : ℤ)).toNat

end

end A341062.P2544971583073549145

namespace A341062

/-- `A051950(A000007(n)+1+n)` -/
def P2544971583073549145.Spec : Prop :=
  ∀ n, P2544971583073549145.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P17825021408772592758

`A051950(n+2)-A051951(n)`
-/

namespace A341062.P17825021408772592758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2) - A051951 n

end

end A341062.P17825021408772592758

namespace A341062

/-- `A051950(n+2)-A051951(n)` -/
def P17825021408772592758.Spec : Prop :=
  ∀ n, P17825021408772592758.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P10201274985186396741

`A070824(n+1)+1-A032741(n)`
-/

namespace A341062.P10201274985186396741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + (1 - A032741 n)

end

end A341062.P10201274985186396741

namespace A341062

/-- `A070824(n+1)+1-A032741(n)` -/
def P10201274985186396741.Spec : Prop :=
  ∀ n, P10201274985186396741.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P10892468520633281078

`A000005(n+1)-∑{d}[n, A054977(#)]`
-/

namespace A341062.P10892468520633281078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A054977 d

end

end A341062.P10892468520633281078

namespace A341062

/-- `A000005(n+1)-∑{d}[n, A054977(#)]` -/
def P10892468520633281078.Spec : Prop :=
  ∀ n, P10892468520633281078.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P13680074188697242956

`A028310(A032741(n+1))-∑{d}[n, (n+1)%#]`
-/

namespace A341062.P13680074188697242956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032741 (n + 1)).toNat - ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℤ)

end

end A341062.P13680074188697242956

namespace A341062

/-- `A028310(A032741(n+1))-∑{d}[n, (n+1)%#]` -/
def P13680074188697242956.Spec : Prop :=
  ∀ n, P13680074188697242956.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P7615001090696749046

`A000005(n+1)-(A000005(n-1)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A341062.P7615001090696749046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000005 (n + 1) - (A000005 (n - 1) + a (n - 1))

end

end A341062.P7615001090696749046

namespace A341062

/-- `A000005(n+1)-(A000005(n-1)+a(n-1))` -/
def P7615001090696749046.Spec : Prop :=
  ∀ n, P7615001090696749046.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P11189673878789032952

`A028310(A032741(n+1))-A032741(n)`
-/

namespace A341062.P11189673878789032952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032741 (n + 1)).toNat - A032741 n

end

end A341062.P11189673878789032952

namespace A341062

/-- `A028310(A032741(n+1))-A032741(n)` -/
def P11189673878789032952.Spec : Prop :=
  ∀ n, P11189673878789032952.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P12029836327082419893

`A070824(n+1)-A023443(A032741(n))`
-/

namespace A341062.P12029836327082419893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A023443 (A032741 n).toNat

end

end A341062.P12029836327082419893

namespace A341062

/-- `A070824(n+1)-A023443(A032741(n))` -/
def P12029836327082419893.Spec : Prop :=
  ∀ n, P12029836327082419893.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P9537773141519519404

`A032741(A054977(n)+n)-A032741(n)`
-/

namespace A341062.P9537773141519519404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A054977 n + (n : ℤ)).toNat - A032741 n

end

end A341062.P9537773141519519404

namespace A341062

/-- `A032741(A054977(n)+n)-A032741(n)` -/
def P9537773141519519404.Spec : Prop :=
  ∀ n, P9537773141519519404.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P13226885455672241609

`A032741(A141044(n)+n)-A032741(n)`
-/

namespace A341062.P13226885455672241609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A141044 n + (n : ℤ)).toNat - A032741 n

end

end A341062.P13226885455672241609

namespace A341062

/-- `A032741(A141044(n)+n)-A032741(n)` -/
def P13226885455672241609.Spec : Prop :=
  ∀ n, P13226885455672241609.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P17842728358728414271

`A049820(A028310(n))+1-A049820(n+1)`
-/

namespace A341062.P17842728358728414271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A028310 n).toNat + (1 - A049820 (n + 1))

end

end A341062.P17842728358728414271

namespace A341062

/-- `A049820(A028310(n))+1-A049820(n+1)` -/
def P17842728358728414271.Spec : Prop :=
  ∀ n, P17842728358728414271.a n = A341062 (n + 1)

end A341062

/-! ## A341062.P5020907992436332472

`A289207(A000005(n+1))+1-A032741(n)`
-/

namespace A341062.P5020907992436332472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000005 (n + 1)).toNat + (1 - A032741 n)

end

end A341062.P5020907992436332472

namespace A341062

/-- `A289207(A000005(n+1))+1-A032741(n)` -/
def P5020907992436332472.Spec : Prop :=
  ∀ n, P5020907992436332472.a n = A341062 (n + 1)

end A341062

/-!
# A341063: a(n) = Sum_{i+j<=m+1} t_i * t_j, where t_1 < ... < t_m are the totatives of n.

The programs for A341063, there is no canonical definition to state claims against.
-/

/-! ## A341063.P9355979763054543402

`C(A079578(n+1), A056924(A343792(n)))`
-/

namespace A341063.P9355979763054543402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079578 (n + 1)).toNat (A056924 (A343792 n).toNat).toNat

end

end A341063.P9355979763054543402

/-! ## A341063.P9480806796737980746

`C(A007814(A036289(n+3)), A003415(n))`
-/

namespace A341063.P9480806796737980746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (A036289 (n + 3)).toNat).toNat (A003415 n).toNat

end

end A341063.P9480806796737980746

/-!
# A341064: Number of ways to write n as an ordered sum of 4 squarefree numbers.

The programs for A341064, there is no canonical definition to state claims against.
-/

/-! ## A341064.P12119011689804136228

`A347779(n+4)-A347778(n+4)`
-/

namespace A341064.P12119011689804136228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347779 (n + 4) - A347778 (n + 4)

end

end A341064.P12119011689804136228

/-!
# A341065: Number of ways to write n as an ordered sum of 5 squarefree numbers.

The programs for A341065, there is no canonical definition to state claims against.
-/

/-! ## A341065.P407332157365070013

`A347780(n+5)-A347779(n+5)`
-/

namespace A341065.P407332157365070013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347780 (n + 5) - A347779 (n + 5)

end

end A341065.P407332157365070013

/-! ## A341065.P15674281700961361711

`A332111(∑[∑[A165109(n+3)]])`
-/

namespace A341065.P15674281700961361711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165109 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341065.P15674281700961361711

/-!
# A341066: Number of ways to write n as an ordered sum of 6 squarefree numbers.

The programs for A341066, there is no canonical definition to state claims against.
-/

/-! ## A341066.P6097468501285170820

`A347783(n+6)-A347780(n+6)`
-/

namespace A341066.P6097468501285170820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347783 (n + 6) - A347780 (n + 6)

end

end A341066.P6097468501285170820

/-!
# A341067: Number of ways to write n as an ordered sum of 7 squarefree numbers.

The programs for A341067, there is no canonical definition to state claims against.
-/

/-! ## A341067.P16843239300632266686

`A233583(A222261(2*n+1)+A054410(n))/2`
-/

namespace A341067.P16843239300632266686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (A222261 (2 * n + 1) + A054410 n).toNat : ℚ) / 2

end

end A341067.P16843239300632266686

/-!
# A341068: Number of ways to write n as an ordered sum of 8 squarefree numbers.

The programs for A341068, there is no canonical definition to state claims against.
-/

/-! ## A341068.P8612814634759748046

`A007417(∑[∑[(2*n)²]+1]^A034254(n+2))`
-/

namespace A341068.P8612814634759748046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A034254 (n + 2) : ℤ))).toNat

end

end A341068.P8612814634759748046

/-! ## A341068.P10442741502636786957

`A007417(∑[∑[(2*n)²]+1]%A219903(2*(n+2)))`
-/

namespace A341068.P10442741502636786957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A219903 (2 * (n + 2)))).toNat

end

end A341068.P10442741502636786957

/-!
# A341069: Number of ways to write n as an ordered sum of 9 squarefree numbers.

The programs for A341069, there is no canonical definition to state claims against.
-/

/-! ## A341069.P16758505949786889276

`A341988(n+9)+A184964((1-n)²)`
-/

namespace A341069.P16758505949786889276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341988 (n + 9) + A184964 ((1 - (n : ℤ)) ^ 2).toNat

end

end A341069.P16758505949786889276

/-!
# A341070: Number of ways to write n as an ordered sum of 10 squarefree numbers.

The programs for A341070, there is no canonical definition to state claims against.
-/

/-! ## A341070.P17410285116459761565

`A341989(n)+A210714(A002851(n))`
-/

namespace A341070.P17410285116459761565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341989 (n + 10) + A210714 (A002851 n).toNat

end

end A341070.P17410285116459761565

/-! ## A341070.P9534332488951407325

`A341989(n)+A341975(A262012(n))`
-/

namespace A341070.P9534332488951407325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341989 (n + 10) + A341975 ((A262012 n).toNat + 11)

end

end A341070.P9534332488951407325

/-!
# A341071: Number of compositions of 2n into n squarefree parts.

The programs for A341071, there is no canonical definition to state claims against.
-/

/-! ## A341071.P995248092686576582

`A023193(A150485(n))`
-/

namespace A341071.P995248092686576582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150485 n).toNat

end

end A341071.P995248092686576582

/-! ## A341071.P1888458629377412682

`A247971(A148857(n))`
-/

namespace A341071.P1888458629377412682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A148857 n).toNat

end

end A341071.P1888458629377412682

/-! ## A341071.P7080249315295016913

`A247908(A359721(n))`
-/

namespace A341071.P7080249315295016913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A359721 n).toNat

end

end A341071.P7080249315295016913

/-!
# A341072: Number of compositions of 2n into n Fibonacci parts.

The programs for A341072, there is no canonical definition to state claims against.
-/

/-! ## A341072.P12815636615660671347

`A121548(A004277(n²))`
-/

namespace A341072.P12815636615660671347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A004277 (n ^ 2)).toNat

end

end A341072.P12815636615660671347

/-! ## A341072.P8920120315694997634

`A121548(2*A253909(n))`
-/

namespace A341072.P8920120315694997634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (2 * A253909 n).toNat

end

end A341072.P8920120315694997634

/-! ## A341072.P3152138937387292866

`A121548(2*A028310(n²))`
-/

namespace A341072.P3152138937387292866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (2 * A028310 (n ^ 2)).toNat

end

end A341072.P3152138937387292866

/-! ## A341072.P9101310754067449012

`A121548(A253909(n)+n²)`
-/

namespace A341072.P9101310754067449012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A341072.P9101310754067449012

/-! ## A341072.P17554759865491226293

`A121548(A000007(n)+2*n²)`
-/

namespace A341072.P17554759865491226293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A000007 n + (2 * n ^ 2 : ℤ)).toNat

end

end A341072.P17554759865491226293

/-! ## A341072.P7738961842837981195

`A121548(xor(2*n², A000007(n)))`
-/

namespace A341072.P7738961842837981195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (Int.xor (2 * n ^ 2 : ℤ) (A000007 n)).toNat

end

end A341072.P7738961842837981195

/-! ## A341072.P17058509768753383190

`A121548(A001105(round(sqrt(n²+1))))`
-/

namespace A341072.P17058509768753383190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A001105 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A341072.P17058509768753383190

/-!
# A341077: Value of prime number D for incrementally largest values of minimal y satisfying the equation x^2 - D*y^2 = -3.

The programs for A341077, there is no canonical definition to state claims against.
-/

/-! ## A341077.P14497685778283289472

`A336801(A151798(n)+n)`
-/

namespace A341077.P14497685778283289472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336801 (A151798 n + (n : ℤ)).toNat

end

end A341077.P14497685778283289472

/-! ## A341077.P914424535168026941

`record[A336801(n+1)%A336819(A001399(n))]`
-/

namespace A341077.P914424535168026941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336801 (n + 1)) (A336819 (A001399 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341077.P914424535168026941

/-! ## A341077.P13068785491477819599

`filter[A336801(n+1), A039984(#)]`
-/

namespace A341077.P13068785491477819599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039984 (f1 j).toNat = 1) n)

end

end A341077.P13068785491477819599

/-! ## A341077.P295061100673471566

`filter[A336801(n+1), A283437(#)]`
-/

namespace A341077.P295061100673471566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283437 (f1 j).toNat = 1) n)

end

end A341077.P295061100673471566

/-!
# A341079: Value of prime number D for incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = 5.

The programs for A341079, there is no canonical definition to state claims against.
-/

/-! ## A341079.P12618569751145818260

`∪[A145281(A019337(n+2)), A341081(n+3)]`
-/

namespace A341079.P12618569751145818260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145281 (A019337 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341081 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341079.P12618569751145818260

/-! ## A341079.P15848809123720863443

`A145281(A019337(n+2))`
-/

namespace A341079.P15848809123720863443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145281 (A019337 (n + 2)).toNat

end

end A341079.P15848809123720863443

/-!
# A341081: Value of prime number D for incrementally largest values of minimal y satisfying the equation x^2-D*y^2=5.

The programs for A341081, there is no canonical definition to state claims against.
-/

/-! ## A341081.P14298214088416622930

`A341079(3%comp[∑[n]]+n+1)`
-/

namespace A341081.P14298214088416622930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341079 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + 1)

end

end A341081.P14298214088416622930

/-! ## A341081.P13045431582593411999

`A341079(A382445(n+2))`
-/

namespace A341081.P13045431582593411999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341079 (A382445 (n + 2)).toNat

end

end A341081.P13045431582593411999

/-! ## A341081.P11511082342294073945

`A341079(A040002(n)+n)`
-/

namespace A341081.P11511082342294073945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341079 (A040002 n + (n : ℤ)).toNat

end

end A341081.P11511082342294073945

/-! ## A341081.P6095527225265014859

`A341079(comp[A341110(n)]+2)`
-/

namespace A341081.P6095527225265014859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341110 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A341081.P6095527225265014859

/-! ## A341081.P2934248290667535686

`A341079(A114637(n+1)+2)`
-/

namespace A341081.P2934248290667535686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341079 (A114637 (n + 1) + 2).toNat

end

end A341081.P2934248290667535686

/-!
# A341083: Value of prime number D for incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = -5.

The programs for A341083, there is no canonical definition to state claims against.
-/

/-! ## A341083.P14830225052844302419

`∪[A161379(A225596(n+1)), A341085(n+2)]`
-/

namespace A341083.P14830225052844302419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161379 (A225596 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341085 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341083.P14830225052844302419

/-! ## A341083.P18324808477363738184

`A161379(A225596(n+1))`
-/

namespace A341083.P18324808477363738184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161379 (A225596 (n + 1)).toNat

end

end A341083.P18324808477363738184

/-!
# A341085: Value of prime number D for incrementally largest values of minimal y satisfying the equation x^2 - D*y^2 = -5.

The programs for A341085, there is no canonical definition to state claims against.
-/

/-! ## A341085.P7320717919308405546

`p?[A341083(n+1)+char[5]]`
-/

namespace A341085.P7320717919308405546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341083 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341085.P7320717919308405546

/-! ## A341085.P11329194617495618865

`A341083(lt[1, (n+1)/7^val(n+1, 7)])`
-/

namespace A341085.P11329194617495618865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341083 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A341085.P11329194617495618865

/-! ## A341085.P11418365615074500254

`A341083(comp[∑[A074444(n+1)]])`
-/

namespace A341085.P11418365615074500254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074444 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341083 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A341085.P11418365615074500254

/-! ## A341085.P5686295043124245588

`A341083(comp[A334710(2*n+1)])`
-/

namespace A341085.P5686295043124245588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334710 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341083 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A341085.P5686295043124245588

/-! ## A341085.P7765083175163907043

`record[A006530(A341083(n+1)+char[5])]`
-/

namespace A341085.P7765083175163907043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341083 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341085.P7765083175163907043

/-!
# A341087: Value of prime number D for incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = 6.

The programs for A341087, there is no canonical definition to state claims against.
-/

/-! ## A341087.P13710867591381392885

`A336792(∑[A336809(C(n, 6))])`
-/

namespace A341087.P13710867591381392885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336809 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341087.P13710867591381392885

/-! ## A341087.P13581030467143503426

`A141373(or(n+1, A184993(n)))`
-/

namespace A341087.P13581030467143503426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (Int.lor (n + 1 : ℤ) (A184993 n)).toNat

end

end A341087.P13581030467143503426

/-! ## A341087.P799042296583722748

`∩[A278699(n+1), A336792(n+1)]`
-/

namespace A341087.P799042296583722748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341087.P799042296583722748

/-!
# A341088: a(n) is the least prime p such that there is a set of n primes <= p such that every concatenation of two distinct members of the set is prime.

The programs for A341088, there is no canonical definition to state claims against.
-/

/-! ## A341088.P3557390104577172451

`Δ[A334670(n)+A032302(n)]`
-/

namespace A341088.P3557390104577172451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334670 n + A032302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341088.P3557390104577172451

/-!
# A341089: Powers of primes whose reversal in base 10 is also a power of prime.

The programs for A341089, there is no canonical definition to state claims against.
-/

/-! ## A341089.P13058940058493164297

`record[A034699(A115661(n+1))]`
-/

namespace A341089.P13058940058493164297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A115661 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341089.P13058940058493164297

/-! ## A341089.P5437573291251071427

`filter[A115661(n+1), A010055(#)]`
-/

namespace A341089.P5437573291251071427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A341089.P5437573291251071427

/-! ## A341089.P11861402389837335448

`∩[A000961(n+1), A115661(n+1)]`
-/

namespace A341089.P11861402389837335448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341089.P11861402389837335448

/-! ## A341089.P9923330495590900215

`∩[A115661(n+1), A298538(n+1)]`
-/

namespace A341089.P9923330495590900215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341089.P9923330495590900215

/-!
# A341091: Triangle read by rows: Coefficients for calculation of the sum of all the finite differences from order zero to order k. Sum_{n=0..k} T(n, k)*b(n) = b(0) + b(1) + ... + b(k) + (b(1) - b(0)) + ... + (b(k) - b(k-1)) + ((b(2) - b(1)) - (b(1) - b(0))) + ... .

The programs for A341091, there is no canonical definition to state claims against.
-/

/-! ## A341091.P5103579723400944871

`Δ[A220074(A038722(n+1))]+1`
-/

namespace A341091.P5103579723400944871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A341091.P5103579723400944871

/-! ## A341091.P2226204223993810104

`1-A239473(comp[∑[n-1]])`
-/

namespace A341091.P2226204223993810104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A239473 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A341091.P2226204223993810104

/-! ## A341091.P14627910808537380948

`Δ[A112468(comp[∑[n+1]])+n]`
-/

namespace A341091.P14627910808537380948
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112468 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341091.P14627910808537380948

/-! ## A341091.P6336609558984631223

`1-A112468(eq[0, A103452(n)])`
-/

namespace A341091.P6336609558984631223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341091.P6336609558984631223

/-! ## A341091.P9588071721124788741

`1-A112468(lt[1, A007318(n)])`
-/

namespace A341091.P9588071721124788741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341091.P9588071721124788741

/-! ## A341091.P36501783877964036

`1-A112468(lt[1, A108558(n)])`
-/

namespace A341091.P36501783877964036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341091.P36501783877964036

/-! ## A341091.P2675730902071082810

`1-A112468(lt[1, A001263(n+1)])`
-/

namespace A341091.P2675730902071082810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341091.P2675730902071082810

/-! ## A341091.P13708675869096761700

`1-A112468(lt[1, A009998(n)])`
-/

namespace A341091.P13708675869096761700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341091.P13708675869096761700

/-! ## A341091.P11617922313903060364

`1-A112468(lt[A112468(n), A084938(n)])`
-/

namespace A341091.P11617922313903060364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341091.P11617922313903060364

/-! ## A341091.P4025278705783108381

`1-A112468(lt[1, A008292(n+1)])`
-/

namespace A341091.P4025278705783108381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341091.P4025278705783108381

/-!
# A341092: Rows of Pascal's triangle which contain a 3-term arithmetic progression of a certain form: a(n) = (2*n^2 + 22*n + 37 + (2*n + 3)*(-1)^n)/8.

The programs for A341092, the canonical program `A341092.P1081990643394499702` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341092 has offset 1).

The definition of A341092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)²+22*(n+1)+37+(2*(n+1)+3)*(-1)^(n+1))/8` (program `A341092.P11843402878665044636`, by `A341092.P11843402878665044636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341092.P11843402878665044636

`(2*(n+1)²+22*(n+1)+37+(2*(n+1)+3)*(-1)^(n+1))/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341092.P11843402878665044636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 2 + 22 * (n + 1) : ℤ) + (37 + (2 * (n + 1) + 3 : ℤ) * (-1) ^ (n + 1)) : ℚ) / 8

end

end A341092.P11843402878665044636

namespace A341092

/-- `(2*(n+1)²+22*(n+1)+37+(2*(n+1)+3)*(-1)^(n+1))/8` -/
def P11843402878665044636.Spec : Prop :=
  ∀ n, P11843402878665044636.a n = (A341092 (n + 1) : ℚ)

theorem P11843402878665044636.correct : P11843402878665044636.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A341092, Nat.add_sub_cancel, A341092.P11843402878665044636.a, A341092.P1081990643394499702.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A341092, Nat.add_sub_cancel, A341092.P11843402878665044636.a, A341092.P1081990643394499702.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A341092

/-! ## A341092.P1081990643394499702

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=12, a(2)=14, a(3)=21, a(4)=23`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A341092

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1081990643394499702.Spec : Prop :=
  ∀ n, P1081990643394499702.a n = A341092 (n + 1)

theorem P1081990643394499702.correct : P1081990643394499702.Spec := by
  intro n
  simp only [A341092, Nat.add_sub_cancel]

end A341092

/-! ## A341092.P18344414823034344558

`∑[lcm(2, n+2)-n]+5`
-/

namespace A341092.P18344414823034344558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A341092.P18344414823034344558

namespace A341092

/-- `∑[lcm(2, n+2)-n]+5` -/
def P18344414823034344558.Spec : Prop :=
  ∀ n, P18344414823034344558.a n = A341092 (n + 1)

end A341092

/-! ## A341092.P10574396907205435945

`∑[(n+2)*n%2+2]+5`
-/

namespace A341092.P10574396907205435945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n % 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A341092.P10574396907205435945

namespace A341092

/-- `∑[(n+2)*n%2+2]+5` -/
def P10574396907205435945.Spec : Prop :=
  ∀ n, (P10574396907205435945.a n : ℤ) = A341092 (n + 1)

end A341092

/-! ## A341092.P2490060864360113317

`∑[(n+2)*and(1, n)+2]+5`
-/

namespace A341092.P2490060864360113317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A341092.P2490060864360113317

namespace A341092

/-- `∑[(n+2)*and(1, n)+2]+5` -/
def P2490060864360113317.Spec : Prop :=
  ∀ n, (P2490060864360113317.a n : ℤ) = A341092 (n + 1)

end A341092

/-! ## A341092.P704826558845339499

`∑[(n+3)^and(1, n)+1]+5`
-/

namespace A341092.P704826558845339499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A341092.P704826558845339499

namespace A341092

/-- `∑[(n+3)^and(1, n)+1]+5` -/
def P704826558845339499.Spec : Prop :=
  ∀ n, (P704826558845339499.a n : ℤ) = A341092 (n + 1)

end A341092

/-! ## A341092.P11071367657391501527

`record[a(n-2)+or(1, n)]` with `a(0)=7, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A341092.P11071367657391501527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 0, 0, 2] fun n f1 =>
  f1 (n - 2) + Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341092.P11071367657391501527

namespace A341092

/-- `record[a(n-2)+or(1, n)]` -/
def P11071367657391501527.Spec : Prop :=
  ∀ n, (P11071367657391501527.a n : ℤ) = A341092 (n + 1)

end A341092

/-! ## A341092.P8706496136718490885

`Δ[A109622(n)+(n+3)²]`
-/

namespace A341092.P8706496136718490885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109622 n + ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341092.P8706496136718490885

namespace A341092

/-- `Δ[A109622(n)+(n+3)²]` -/
def P8706496136718490885.Spec : Prop :=
  ∀ n, P8706496136718490885.a n = A341092 (n + 1)

end A341092

/-! ## A341092.P11041587135088080800

`A195437(A101881(n+1))`
-/

namespace A341092.P11041587135088080800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (A101881 (n + 1)).toNat

end

end A341092.P11041587135088080800

namespace A341092

/-- `A195437(A101881(n+1))` -/
def P11041587135088080800.Spec : Prop :=
  ∀ n, P11041587135088080800.a n = A341092 (n + 1)

end A341092

/-! ## A341092.P1778479958411099266

`(∑[A141310(n+3)]+5)*A007318(∑[n])`
-/

namespace A341092.P1778479958411099266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 5) * A007318 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A341092.P1778479958411099266

namespace A341092

/-- `(∑[A141310(n+3)]+5)*A007318(∑[n])` -/
def P1778479958411099266.Spec : Prop :=
  ∀ n, P1778479958411099266.a n = A341092 (n + 1)

end A341092

/-!
# A341094: a(1) = 0. Thereafter, if a(n) has appeared before, most recently at a(m), then a(n+1) = n-m-1, the number of terms between a(m) and a(n). Otherwise a(n+1)=1.

The programs for A341094, there is no canonical definition to state claims against.
-/

/-! ## A341094.P18382457583037849245

`A309363(n+4)-1`
-/

namespace A341094.P18382457583037849245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309363 (n + 4) - 1

end

end A341094.P18382457583037849245

/-! ## A341094.P10589125497726165550

`A023443(A309363(n+4))`
-/

namespace A341094.P10589125497726165550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A309363 (n + 4)).toNat

end

end A341094.P10589125497726165550

/-! ## A341094.P5899859158095003890

`A317939(A001358(n+1))+A309363(n+4)`
-/

namespace A341094.P5899859158095003890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (A001358 (n + 1)).toNat + A309363 (n + 4)

end

end A341094.P5899859158095003890

/-! ## A341094.P2867879770930416335

`A349920(A045319(n+1))+A309363(n+4)`
-/

namespace A341094.P2867879770930416335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A045319 (n + 1)).toNat + A309363 (n + 4)

end

end A341094.P2867879770930416335

/-! ## A341094.P682696649018191921

`A349920(A002476(n+1))+A309363(n+4)`
-/

namespace A341094.P682696649018191921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A002476 (n + 1)).toNat + A309363 (n + 4)

end

end A341094.P682696649018191921

/-! ## A341094.P17346445547442191446

`A349920(A002146(n))+A309363(n+4)`
-/

namespace A341094.P17346445547442191446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A002146 n).toNat + A309363 (n + 4)

end

end A341094.P17346445547442191446

/-!
# A341099: Numbers divisible by at least three terms of A008864.

The programs for A341099, the canonical program `A341099.P7728834317984338606` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341099 has offset 1).

The definition of A341099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341099.P7728834317984338606

`lt[2, A072627(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341099

/-- `lt[2, A072627(n+1)]+1` -/
def P7728834317984338606.Spec : Prop :=
  ∀ n, (P7728834317984338606.a n : ℤ) = A341099 (n + 1)

theorem P7728834317984338606.correct : P7728834317984338606.Spec := by
  intro n
  simp only [A341099, Nat.add_sub_cancel]

end A341099

/-! ## A341099.P14620594564900571353

`lt[2, A072627(A028310(n))]`
-/

namespace A341099.P14620594564900571353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341099.P14620594564900571353

namespace A341099

/-- `lt[2, A072627(A028310(n))]` -/
def P14620594564900571353.Spec : Prop :=
  ∀ n, (P14620594564900571353.a n : ℤ) = A341099 (n + 1)

end A341099

/-! ## A341099.P10981627898283769071

`A014681(lt[2, A072627(n+1)])`
-/

namespace A341099.P10981627898283769071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341099.P10981627898283769071

namespace A341099

/-- `A014681(lt[2, A072627(n+1)])` -/
def P10981627898283769071.Spec : Prop :=
  ∀ n, P10981627898283769071.a n = A341099 (n + 1)

end A341099

/-! ## A341099.P15185619857609369208

`A020725(lt[2, A072627(n+1)])`
-/

namespace A341099.P15185619857609369208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A341099.P15185619857609369208

namespace A341099

/-- `A020725(lt[2, A072627(n+1)])` -/
def P15185619857609369208.Spec : Prop :=
  ∀ n, P15185619857609369208.a n = A341099 (n + 1)

end A341099

/-! ## A341099.P16871992599168280032

`lt[2, A072627(A123882(n+1))]`
-/

namespace A341099.P16871992599168280032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A123882 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341099.P16871992599168280032

namespace A341099

/-- `lt[2, A072627(A123882(n+1))]` -/
def P16871992599168280032.Spec : Prop :=
  ∀ n, (P16871992599168280032.a n : ℤ) = A341099 (n + 1)

end A341099

/-! ## A341099.P5944474284842309917

`lt[2, A072627(A233583(n+1))]`
-/

namespace A341099.P5944474284842309917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341099.P5944474284842309917

namespace A341099

/-- `lt[2, A072627(A233583(n+1))]` -/
def P5944474284842309917.Spec : Prop :=
  ∀ n, (P5944474284842309917.a n : ℤ) = A341099 (n + 1)

end A341099

