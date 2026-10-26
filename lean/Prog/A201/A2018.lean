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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A201800: Number of zero-sum nX5 -2..2 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201800, there is no canonical definition to state claims against.
-/

/-! ## A201800.P10031694355573782061

`A201803(∑[n+4]+11)`
-/

namespace A201800.P10031694355573782061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A201800.P10031694355573782061

/-!
# A201801: Number of zero-sum nX6 -2..2 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201801, there is no canonical definition to state claims against.
-/

/-! ## A201801.P2396385070085632888

`A201803(A374007(n+1))`
-/

namespace A201801.P2396385070085632888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (A374007 (n + 1)).toNat

end

end A201801.P2396385070085632888

/-!
# A201802: Number of zero-sum nX7 -2..2 arrays with every element unequal to at most two horizontal and vertical neighbors.

The programs for A201802, there is no canonical definition to state claims against.
-/

/-! ## A201802.P3442404601819258142

`A201803(A055999(n+4))`
-/

namespace A201802.P3442404601819258142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201803 (A055999 (n + 4)).toNat

end

end A201802.P3442404601819258142

/-!
# A201804: Numbers k such that 90*k + 11 is prime.

The programs for A201804, the canonical program `A201804.P10857497428624378326` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201804 has offset 1).

The definition of A201804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201804.P10857497428624378326

`floor(A142317(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201804

/-- `floor(A142317(n+1)/90)` -/
def P10857497428624378326.Spec : Prop :=
  ∀ n, P10857497428624378326.a n = A201804 (n + 1)

theorem P10857497428624378326.correct : P10857497428624378326.Spec := by
  intro n
  simp only [A201804, Nat.add_sub_cancel]

end A201804

/-! ## A201804.P7542855281599825074

`eq[1, A068695(9*n+1)]`
-/

namespace A201804.P7542855281599825074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (9 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P7542855281599825074

namespace A201804

/-- `eq[1, A068695(9*n+1)]` -/
def P7542855281599825074.Spec : Prop :=
  ∀ n, (P7542855281599825074.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P7217265764561221725

`eq[1, A091088(A017197(n)-2)]`
-/

namespace A201804.P7217265764561221725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A017197 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P7217265764561221725

namespace A201804

/-- `eq[1, A091088(A017197(n)-2)]` -/
def P7217265764561221725.Spec : Prop :=
  ∀ n, (P7217265764561221725.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P430563556973378048

`eq[1, A001221(A139280(n+1)+2)]`
-/

namespace A201804.P430563556973378048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A139280 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P430563556973378048

namespace A201804

/-- `eq[1, A001221(A139280(n+1)+2)]` -/
def P430563556973378048.Spec : Prop :=
  ∀ n, (P430563556973378048.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P2892046219280311744

`eq[1, A001222(A139280(n+1)+2)]`
-/

namespace A201804.P2892046219280311744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A139280 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P2892046219280311744

namespace A201804

/-- `eq[1, A001222(A139280(n+1)+2)]` -/
def P2892046219280311744.Spec : Prop :=
  ∀ n, (P2892046219280311744.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P14170635080167244799

`eq[2, A000005(A139280(n+1)+2)]`
-/

namespace A201804.P14170635080167244799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139280 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P14170635080167244799

namespace A201804

/-- `eq[2, A000005(A139280(n+1)+2)]` -/
def P14170635080167244799.Spec : Prop :=
  ∀ n, (P14170635080167244799.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P2781027374349408210

`eq[1, A001222(A017281(A017281(n)-n))]`
-/

namespace A201804.P2781027374349408210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017281 (A017281 n - (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P2781027374349408210

namespace A201804

/-- `eq[1, A001222(A017281(A017281(n)-n))]` -/
def P2781027374349408210.Spec : Prop :=
  ∀ n, (P2781027374349408210.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P17236519218575286822

`eq[1, A316436(A139280(n+1)+2)]`
-/

namespace A201804.P17236519218575286822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (A139280 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P17236519218575286822

namespace A201804

/-- `eq[1, A316436(A139280(n+1)+2)]` -/
def P17236519218575286822.Spec : Prop :=
  ∀ n, (P17236519218575286822.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P383694516674164298

`eq[1, A167020(15*n+2)]`
-/

namespace A201804.P383694516674164298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (15 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201804.P383694516674164298

namespace A201804

/-- `eq[1, A167020(15*n+2)]` -/
def P383694516674164298.Spec : Prop :=
  ∀ n, (P383694516674164298.a n : ℤ) = A201804 (n + 1)

end A201804

/-! ## A201804.P4896047505869589522

`lt[3, A014963(10*(9*n+1)+1)]`
-/

namespace A201804.P4896047505869589522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (9 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201804.P4896047505869589522

namespace A201804

/-- `lt[3, A014963(10*(9*n+1)+1)]` -/
def P4896047505869589522.Spec : Prop :=
  ∀ n, (P4896047505869589522.a n : ℤ) = A201804 (n + 1)

end A201804

/-!
# A201805: Number of arrays of n integers in -2..2 with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201805, there is no canonical definition to state claims against.
-/

/-! ## A201805.P11351146024901063647

`A328718(∑[n+2]+3)`
-/

namespace A201805.P11351146024901063647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A201805.P11351146024901063647

/-! ## A201805.P4823152477423272525

`A201811(A212342(n+1))`
-/

namespace A201805.P4823152477423272525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A212342 (n + 1)).toNat

end

end A201805.P4823152477423272525

/-! ## A201805.P5751377091192047829

`A201811(A347553(n+3))`
-/

namespace A201805.P5751377091192047829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A347553 (n + 3)).toNat

end

end A201805.P5751377091192047829

/-! ## A201805.P14728016865222475676

`A201811(A027379(n)-n)`
-/

namespace A201805.P14728016865222475676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A027379 n - (n : ℤ)).toNat

end

end A201805.P14728016865222475676

/-! ## A201805.P11742761866602946929

`A201811(A000217(n)+round(sqrt(n²+1)))`
-/

namespace A201805.P11742761866602946929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000217 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A201805.P11742761866602946929

/-! ## A201805.P7453983113987083940

`A201811(A000096(n)+A000038(n))`
-/

namespace A201805.P7453983113987083940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000096 n + A000038 n).toNat

end

end A201805.P7453983113987083940

/-! ## A201805.P9133174202788365157

`A201811(or(A000038(n), A000096(n)))`
-/

namespace A201805.P9133174202788365157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (Int.lor (A000038 n) (A000096 n)).toNat

end

end A201805.P9133174202788365157

/-!
# A201806: Number of arrays of n integers in -3..3 with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201806, there is no canonical definition to state claims against.
-/

/-! ## A201806.P11213369624352856753

`A201811(∑[n+3]+1)`
-/

namespace A201806.P11213369624352856753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201806.P11213369624352856753

/-! ## A201806.P12188111049249807746

`or(1, A201811(A052905(n)+3))`
-/

namespace A201806.P12188111049249807746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201811 (A052905 n + 3).toNat)

end

end A201806.P12188111049249807746

/-! ## A201806.P2599752485681493660

`record[gcd(A159834(n), A201811(n+1))]`
-/

namespace A201806.P2599752485681493660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159834 n) (A201811 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201806.P2599752485681493660

/-! ## A201806.P13115279220731672332

`gcd(A000038(n), A201811(A034856(n+2)))`
-/

namespace A201806.P13115279220731672332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A201811 (A034856 (n + 2)).toNat)

end

end A201806.P13115279220731672332

/-! ## A201806.P14431886841462418313

`A020985(n)²*A201811(A034856(n+2))`
-/

namespace A201806.P14431886841462418313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A201811 (A034856 (n + 2)).toNat

end

end A201806.P14431886841462418313

/-! ## A201806.P11700796055716598263

`A201811(A034856(n+2))%Δ[A289959(n)]`
-/

namespace A201806.P11700796055716598263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201811 (A034856 (n + 2)).toNat) (f1 (n + 1) - f1 n)

end

end A201806.P11700796055716598263

/-! ## A201806.P15709042872283787575

`A007318(C(3, n))*A201811(A034856(n+2))`
-/

namespace A201806.P15709042872283787575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A201811 (A034856 (n + 2)).toNat

end

end A201806.P15709042872283787575

/-! ## A201806.P13938656459871849695

`A201811(A034856(n+2))+A036987(2*(n+1))`
-/

namespace A201806.P13938656459871849695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A034856 (n + 2)).toNat + A036987 (2 * (n + 1))

end

end A201806.P13938656459871849695

/-! ## A201806.P2541156940384922844

`A201811(A034856(n+2))+A008683(4*(n+1))`
-/

namespace A201806.P2541156940384922844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A034856 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A201806.P2541156940384922844

/-! ## A201806.P1781568554625510553

`A014963(6*(n+1))*A201811(A034856(n+2))`
-/

namespace A201806.P1781568554625510553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A201811 (A034856 (n + 2)).toNat

end

end A201806.P1781568554625510553

/-!
# A201807: Number of arrays of n integers in -4..4 with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201807, there is no canonical definition to state claims against.
-/

/-! ## A201807.P6602376519679655291

`A201811(A027379(n+2))`
-/

namespace A201807.P6602376519679655291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A027379 (n + 2)).toNat

end

end A201807.P6602376519679655291

/-! ## A201807.P10637003155604868903

`A201811(A055998(n+2))`
-/

namespace A201807.P10637003155604868903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A055998 (n + 2)).toNat

end

end A201807.P10637003155604868903

/-! ## A201807.P10120100641839539967

`A201811(Δ[A006503(n+1)])`
-/

namespace A201807.P10120100641839539967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (f1 (n + 1) - f1 n).toNat

end

end A201807.P10120100641839539967

/-! ## A201807.P4499298388096498151

`A201811(Δ[A034857(n+1)])`
-/

namespace A201807.P4499298388096498151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (f1 (n + 1) - f1 n).toNat

end

end A201807.P4499298388096498151

/-! ## A201807.P8127287450799535753

`A201811(A052905(n+1)+2)`
-/

namespace A201807.P8127287450799535753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A052905 (n + 1) + 2).toNat

end

end A201807.P8127287450799535753

/-! ## A201807.P4305285868404709218

`record[A201811(n+7)/A201811(n+11)]`
-/

namespace A201807.P4305285868404709218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201811 (n + 7) : ℚ) / (A201811 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201807.P4305285868404709218

/-! ## A201807.P7345912226202029337

`A201811(A167614(n+1)+A005408(n))`
-/

namespace A201807.P7345912226202029337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A167614 (n + 1) + A005408 n).toNat

end

end A201807.P7345912226202029337

/-! ## A201807.P1170124788694789335

`A201811(A005408(n)+A167499(n)+n)`
-/

namespace A201807.P1170124788694789335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A005408 n + (A167499 n + (n : ℤ))).toNat

end

end A201807.P1170124788694789335

/-!
# A201808: Number of arrays of n integers in -5..5 with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201808, there is no canonical definition to state claims against.
-/

/-! ## A201808.P3846648033073787413

`A201811(A046691(n+3))`
-/

namespace A201808.P3846648033073787413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A046691 (n + 3)).toNat

end

end A201808.P3846648033073787413

/-! ## A201808.P11614787411315720199

`A201811(A056115(n)+11)`
-/

namespace A201808.P11614787411315720199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A056115 n + 11).toNat

end

end A201808.P11614787411315720199

/-! ## A201808.P8424931317950315225

`A201811(Δ[A023545(n+1)])`
-/

namespace A201808.P8424931317950315225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (f1 (n + 1) - f1 n).toNat

end

end A201808.P8424931317950315225

/-! ## A201808.P15515529511503634716

`A201811(Δ[A034857(n+2)]-1)`
-/

namespace A201808.P15515529511503634716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (f1 (n + 1) - f1 n - 1).toNat

end

end A201808.P15515529511503634716

/-! ## A201808.P9454631943164022670

`A201811(A005408(n)+Δ[A006503(n)]+7)`
-/

namespace A201808.P9454631943164022670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A005408 n + (f1 (n + 1) - f1 n + 7)).toNat

end

end A201808.P9454631943164022670

/-!
# A201809: Number of arrays of n integers in -6..6 with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201809, there is no canonical definition to state claims against.
-/

/-! ## A201809.P6716015287659678535

`A201811(A052905(n+3))`
-/

namespace A201809.P6716015287659678535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A052905 (n + 3)).toNat

end

end A201809.P6716015287659678535

/-! ## A201809.P10745752948461784224

`A201811(eq[3, A219347(n)])`
-/

namespace A201809.P10745752948461784224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201809.P10745752948461784224

/-! ## A201809.P4299793403810663945

`A201811(A055999(n+3)+1)`
-/

namespace A201809.P4299793403810663945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A055999 (n + 3) + 1).toNat

end

end A201809.P4299793403810663945

/-! ## A201809.P10908067196840282806

`A201811(A046691(n+4)-1)`
-/

namespace A201809.P10908067196840282806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A046691 (n + 4) - 1).toNat

end

end A201809.P10908067196840282806

/-! ## A201809.P6546034800457748436

`A201811(A055998(n+4)-2)`
-/

namespace A201809.P6546034800457748436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A055998 (n + 4) - 2).toNat

end

end A201809.P6546034800457748436

/-! ## A201809.P8230234563718938164

`A201811(A000124(n+6)-6)`
-/

namespace A201809.P8230234563718938164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000124 (n + 6) - 6).toNat

end

end A201809.P8230234563718938164

/-! ## A201809.P9143226696272286363

`A201811(eq[8, A243070(n+1)])`
-/

namespace A201809.P9143226696272286363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201809.P9143226696272286363

/-! ## A201809.P12763369897994518873

`A201811(Δ[A023545(n+2)]-1)`
-/

namespace A201809.P12763369897994518873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (f1 (n + 1) - f1 n - 1).toNat

end

end A201809.P12763369897994518873

/-! ## A201809.P2578954027217953310

`A201811(A005843(3*n+8)+A000217(n))`
-/

namespace A201809.P2578954027217953310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A005843 (3 * n + 8) + A000217 n).toNat

end

end A201809.P2578954027217953310

/-!
# A201810: Number of arrays of n integers in -7..7 with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201810, there is no canonical definition to state claims against.
-/

/-! ## A201810.P10270072984243610546

`A201811(A055999(n+4))`
-/

namespace A201810.P10270072984243610546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A055999 (n + 4)).toNat

end

end A201810.P10270072984243610546

/-! ## A201810.P17446066870547249679

`A201811(eq[4, A219347(n)])`
-/

namespace A201810.P17446066870547249679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201810.P17446066870547249679

/-! ## A201810.P16870694245030167237

`A201811(A000124(n+7)-7)`
-/

namespace A201810.P16870694245030167237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000124 (n + 7) - 7).toNat

end

end A201810.P16870694245030167237

/-! ## A201810.P5358037611346159159

`A201811(A167499(n+6)-11)`
-/

namespace A201810.P5358037611346159159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A167499 (n + 6) - 11).toNat

end

end A201810.P5358037611346159159

/-! ## A201810.P12083514670761566413

`A201811(A000217(n+6)+n+1)`
-/

namespace A201810.P12083514670761566413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A201810.P12083514670761566413

/-! ## A201810.P6804659586206734849

`A201811(A166136(n+4)+2*n+1)`
-/

namespace A201810.P6804659586206734849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A201810.P6804659586206734849

/-! ## A201810.P758369664523081533

`A201811(A005408(n)+A167499(n+4)+1)`
-/

namespace A201810.P758369664523081533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A005408 n + (A167499 (n + 4) + 1)).toNat

end

end A201810.P758369664523081533

/-!
# A201811: T(n,k)=Number of arrays of n integers in -k..k with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201811, there is no canonical definition to state claims against.
-/

/-! ## A201811.P4021959086719817951

`2*A221671(A187115(n+2))-1`
-/

namespace A201811.P4021959086719817951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221671 (A187115 (n + 2)).toNat - 1

end

end A201811.P4021959086719817951

/-! ## A201811.P1650089431851042652

`A135385(A078925(n+1))+A078925(n+1)`
-/

namespace A201811.P1650089431851042652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135385 (A078925 (n + 1)).toNat + A078925 (n + 1)

end

end A201811.P1650089431851042652

/-! ## A201811.P1997422496284645849

`A004273(A078925(n+1)%A180972(n+1))`
-/

namespace A201811.P1997422496284645849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A078925 (n + 1)) (A180972 (n + 1))).toNat

end

end A201811.P1997422496284645849

/-! ## A201811.P1179278595586392452

`A056943(A037126(n+1))+A354220(A098473(n))%27`
-/

namespace A201811.P1179278595586392452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A037126 (n + 1)).toNat + Int.tmod (A354220 (A098473 n).toNat) 27

end

end A201811.P1179278595586392452

/-!
# A201812: Number of arrays of 4 integers in -n..n with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201812, the canonical program `A201812.P12929549800970349614` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201812 has offset 1).

The definition of A201812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201812.P12929549800970349614

`∑[3*((2*n+1)²+5)]+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201812

/-- `∑[3*((2*n+1)²+5)]+1` -/
def P12929549800970349614.Spec : Prop :=
  ∀ n, (P12929549800970349614.a n : ℤ) = A201812 (n + 1)

theorem P12929549800970349614.correct : P12929549800970349614.Spec := by
  intro n
  simp only [A201812, Nat.add_sub_cancel]

end A201812

/-! ## A201812.P7499015052828543286

`(A192793(n+1)+6)/6`
-/

namespace A201812.P7499015052828543286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192793 (n + 1) + 6 : ℚ) / 6

end

end A201812.P7499015052828543286

namespace A201812

/-- `(A192793(n+1)+6)/6` -/
def P7499015052828543286.Spec : Prop :=
  ∀ n, P7499015052828543286.a n = (A201812 (n + 1) : ℚ)

end A201812

/-! ## A201812.P13521283107348379237

`or(1, 6*A047667(n+1))`
-/

namespace A201812.P13521283107348379237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A047667 (n + 1))

end

end A201812.P13521283107348379237

namespace A201812

/-- `or(1, 6*A047667(n+1))` -/
def P13521283107348379237.Spec : Prop :=
  ∀ n, P13521283107348379237.a n = A201812 (n + 1)

end A201812

/-! ## A201812.P15036295859207589549

`Δ[A027689(n)²-n²]`
-/

namespace A201812.P15036295859207589549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n ^ 2 - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201812.P15036295859207589549

namespace A201812

/-- `Δ[A027689(n)²-n²]` -/
def P15036295859207589549.Spec : Prop :=
  ∀ n, P15036295859207589549.a n = A201812 (n + 1)

end A201812

/-! ## A201812.P9552823317215536617

`Δ[A270868(n)-A034262(n)]`
-/

namespace A201812.P9552823317215536617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270868 n - A034262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201812.P9552823317215536617

namespace A201812

/-- `Δ[A270868(n)-A034262(n)]` -/
def P9552823317215536617.Spec : Prop :=
  ∀ n, P9552823317215536617.a n = A201812 (n + 1)

end A201812

/-! ## A201812.P17664497781495272075

`Δ[A047673(n+1)+A000567(n+1)]`
-/

namespace A201812.P17664497781495272075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047673 (n + 1) + A000567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201812.P17664497781495272075

namespace A201812

/-- `Δ[A047673(n+1)+A000567(n+1)]` -/
def P17664497781495272075.Spec : Prop :=
  ∀ n, P17664497781495272075.a n = A201812 (n + 1)

end A201812

/-! ## A201812.P2777474056430137736

`Δ[A028552(n²+2+n)+n]`
-/

namespace A201812.P2777474056430137736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n ^ 2 + 2 + n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201812.P2777474056430137736

namespace A201812

/-- `Δ[A028552(n²+2+n)+n]` -/
def P2777474056430137736.Spec : Prop :=
  ∀ n, P2777474056430137736.a n = A201812 (n + 1)

end A201812

/-! ## A201812.P12897662524422416481

`xor(1, Δ[A002378(A027688(n))])`
-/

namespace A201812.P12897662524422416481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A027688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A201812.P12897662524422416481

namespace A201812

/-- `xor(1, Δ[A002378(A027688(n))])` -/
def P12897662524422416481.Spec : Prop :=
  ∀ n, P12897662524422416481.a n = A201812 (n + 1)

end A201812

/-! ## A201812.P17953911843098371488

`Δ[A014209(A014206(n))+n]`
-/

namespace A201812.P17953911843098371488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (A014206 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201812.P17953911843098371488

namespace A201812

/-- `Δ[A014209(A014206(n))+n]` -/
def P17953911843098371488.Spec : Prop :=
  ∀ n, P17953911843098371488.a n = A201812 (n + 1)

end A201812

/-!
# A201813: Number of arrays of 5 integers in -n..n with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201813, the canonical program `A201813.P2794979695643565960` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201813 has offset 1).

The definition of A201813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201813.P2794979695643565960

`20*(n+1)^3+30*(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201813

/-- `20*(n+1)^3+30*(n+1)+1` -/
def P2794979695643565960.Spec : Prop :=
  ∀ n, (P2794979695643565960.a n : ℤ) = A201813 (n + 1)

theorem P2794979695643565960.correct : P2794979695643565960.Spec := by
  intro n
  simp only [A201813, Nat.add_sub_cancel]

end A201813

/-! ## A201813.P2405836520739717721

`or(A033999(n)², Δ[5*A072025(n)])`
-/

namespace A201813.P2405836520739717721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A072025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 n ^ 2) (f1 (n + 1) - f1 n)

end

end A201813.P2405836520739717721

namespace A201813

/-- `or(A033999(n)², Δ[5*A072025(n)])` -/
def P2405836520739717721.Spec : Prop :=
  ∀ n, P2405836520739717721.a n = A201813 (n + 1)

end A201813

/-! ## A201813.P9033166069922013887

`Δ[A115565(n+1)+n]`
-/

namespace A201813.P9033166069922013887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115565 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201813.P9033166069922013887

namespace A201813

/-- `Δ[A115565(n+1)+n]` -/
def P9033166069922013887.Spec : Prop :=
  ∀ n, P9033166069922013887.a n = A201813 (n + 1)

theorem P9033166069922013887.correct : P9033166069922013887.Spec := by
  intro n
  simp only [A201813, Nat.add_sub_cancel, A201813.P9033166069922013887.f1, A201813.P9033166069922013887.a, A201813.P2794979695643565960.a, A115565, A115565.P18422294588862453476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A201813

/-! ## A201813.P7036722332148181430

`Δ[∑[5*A008532(n)]+n]`
-/

namespace A201813.P7036722332148181430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A008532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201813.P7036722332148181430

namespace A201813

/-- `Δ[∑[5*A008532(n)]+n]` -/
def P7036722332148181430.Spec : Prop :=
  ∀ n, P7036722332148181430.a n = A201813 (n + 1)

end A201813

/-! ## A201813.P9312949572385103000

`or(1, Δ[5*A028552(n²+n)])`
-/

namespace A201813.P9312949572385103000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A028552 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A201813.P9312949572385103000

namespace A201813

/-- `or(1, Δ[5*A028552(n²+n)])` -/
def P9312949572385103000.Spec : Prop :=
  ∀ n, P9312949572385103000.a n = A201813 (n + 1)

end A201813

/-! ## A201813.P1288227476456473593

`Δ[10*A000096(n²+n)+n]`
-/

namespace A201813.P1288227476456473593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000096 (n ^ 2 + n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201813.P1288227476456473593

namespace A201813

/-- `Δ[10*A000096(n²+n)+n]` -/
def P1288227476456473593.Spec : Prop :=
  ∀ n, P1288227476456473593.a n = A201813 (n + 1)

theorem P1288227476456473593.correct : P1288227476456473593.Spec := by
  intro n
  simp only [A201813, Nat.add_sub_cancel, A201813.P1288227476456473593.f1, A201813.P1288227476456473593.a, A201813.P2794979695643565960.a, A000096, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A201813

/-! ## A201813.P5980541075005629076

`A201811(A000124(n+5)-(n+1))`
-/

namespace A201813.P5980541075005629076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A201813.P5980541075005629076

namespace A201813

/-- `A201811(A000124(n+5)-(n+1))` -/
def P5980541075005629076.Spec : Prop :=
  ∀ n, P5980541075005629076.a n = A201813 (n + 1)

end A201813

/-!
# A201814: Number of arrays of 6 integers in -n..n with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201814, the canonical program `A201814.P3170261649480747895` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201814 has offset 1).

The definition of A201814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201814.P3170261649480747895

`11*(n+1)^5+65*(n+1)^3+64*(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201814

/-- `11*(n+1)^5+65*(n+1)^3+64*(n+1)+1` -/
def P3170261649480747895.Spec : Prop :=
  ∀ n, (P3170261649480747895.a n : ℤ) = A201814 (n + 1)

theorem P3170261649480747895.correct : P3170261649480747895.Spec := by
  intro n
  simp only [A201814, Nat.add_sub_cancel]

end A201814

/-! ## A201814.P2611881415685388588

`A201811(A167499(n+4)+1)`
-/

namespace A201814.P2611881415685388588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A167499 (n + 4) + 1).toNat

end

end A201814.P2611881415685388588

namespace A201814

/-- `A201811(A167499(n+4)+1)` -/
def P2611881415685388588.Spec : Prop :=
  ∀ n, P2611881415685388588.a n = A201814 (n + 1)

end A201814

/-! ## A201814.P263667286737407084

`A201811(A133263(n+5)+4)`
-/

namespace A201814.P263667286737407084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A133263 (n + 5) + 4).toNat

end

end A201814.P263667286737407084

namespace A201814

/-- `A201811(A133263(n+5)+4)` -/
def P263667286737407084.Spec : Prop :=
  ∀ n, P263667286737407084.a n = A201814 (n + 1)

end A201814

/-! ## A201814.P11229397032875941442

`A201811(A000217(n+5)+6)`
-/

namespace A201814.P11229397032875941442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000217 (n + 5) + 6).toNat

end

end A201814.P11229397032875941442

namespace A201814

/-- `A201811(A000217(n+5)+6)` -/
def P11229397032875941442.Spec : Prop :=
  ∀ n, P11229397032875941442.a n = A201814 (n + 1)

end A201814

/-! ## A201814.P9451133571580417875

`A201811(A027379(n+3)+9)`
-/

namespace A201814.P9451133571580417875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A027379 (n + 3) + 9).toNat

end

end A201814.P9451133571580417875

namespace A201814

/-- `A201811(A027379(n+3)+9)` -/
def P9451133571580417875.Spec : Prop :=
  ∀ n, P9451133571580417875.a n = A201814 (n + 1)

end A201814

/-! ## A201814.P6094720283064746613

`A201811(A161680(n+6)+6)`
-/

namespace A201814.P6094720283064746613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A161680 (n + 6) + 6).toNat

end

end A201814.P6094720283064746613

namespace A201814

/-- `A201811(A161680(n+6)+6)` -/
def P6094720283064746613.Spec : Prop :=
  ∀ n, P6094720283064746613.a n = A201814 (n + 1)

end A201814

/-! ## A201814.P868079741955450049

`A201811(A000124(n+6)-(n+1))`
-/

namespace A201814.P868079741955450049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A201814.P868079741955450049

namespace A201814

/-- `A201811(A000124(n+6)-(n+1))` -/
def P868079741955450049.Spec : Prop :=
  ∀ n, P868079741955450049.a n = A201814 (n + 1)

end A201814

/-!
# A201815: Number of arrays of 7 integers in -n..n with sum zero and equal numbers of elements greater than zero and less than zero.

The programs for A201815, the canonical program `A201815.P11071781894913851608` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201815 has offset 1).

The definition of A201815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201815.P11071781894913851608

`77*(n+1)^5+175*(n+1)^3+140*(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201815

/-- `77*(n+1)^5+175*(n+1)^3+140*(n+1)+1` -/
def P11071781894913851608.Spec : Prop :=
  ∀ n, (P11071781894913851608.a n : ℤ) = A201815 (n + 1)

theorem P11071781894913851608.correct : P11071781894913851608.Spec := by
  intro n
  simp only [A201815, Nat.add_sub_cancel]

end A201815

/-! ## A201815.P17842082381017236777

`A201811(A056119(n)+28)`
-/

namespace A201815.P17842082381017236777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A056119 n + 28).toNat

end

end A201815.P17842082381017236777

namespace A201815

/-- `A201811(A056119(n)+28)` -/
def P17842082381017236777.Spec : Prop :=
  ∀ n, P17842082381017236777.a n = A201815 (n + 1)

end A201815

/-! ## A201815.P16584550216659677726

`A201811(A000124(n+6)+6)`
-/

namespace A201815.P16584550216659677726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000124 (n + 6) + 6).toNat

end

end A201815.P16584550216659677726

namespace A201815

/-- `A201811(A000124(n+6)+6)` -/
def P16584550216659677726.Spec : Prop :=
  ∀ n, P16584550216659677726.a n = A201815 (n + 1)

end A201815

/-! ## A201815.P4848717595241027322

`A201811(A000096(n+5)+8)`
-/

namespace A201815.P4848717595241027322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000096 (n + 5) + 8).toNat

end

end A201815.P4848717595241027322

namespace A201815

/-- `A201811(A000096(n+5)+8)` -/
def P4848717595241027322.Spec : Prop :=
  ∀ n, P4848717595241027322.a n = A201815 (n + 1)

end A201815

/-! ## A201815.P2242864455891295461

`A201811(A000217(n+6)+7)`
-/

namespace A201815.P2242864455891295461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A000217 (n + 6) + 7).toNat

end

end A201815.P2242864455891295461

namespace A201815

/-- `A201811(A000217(n+6)+7)` -/
def P2242864455891295461.Spec : Prop :=
  ∀ n, P2242864455891295461.a n = A201815 (n + 1)

end A201815

/-! ## A201815.P16426269040334013874

`A201811(A161680(n+7)+7)`
-/

namespace A201815.P16426269040334013874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (A161680 (n + 7) + 7).toNat

end

end A201815.P16426269040334013874

namespace A201815

/-- `A201811(A161680(n+7)+7)` -/
def P16426269040334013874.Spec : Prop :=
  ∀ n, P16426269040334013874.a n = A201815 (n + 1)

end A201815

/-! ## A201815.P14436540906273441906

`A201811(eq[7, A025581(n)]-2*n)`
-/

namespace A201815.P14436540906273441906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A201815.P14436540906273441906

namespace A201815

/-- `A201811(eq[7, A025581(n)]-2*n)` -/
def P14436540906273441906.Spec : Prop :=
  ∀ n, P14436540906273441906.a n = A201815 (n + 1)

end A201815

/-!
# A201816: Numbers k such that 90*k + 13 is prime.

The programs for A201816, the canonical program `A201816.P5067483426122242254` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201816 has offset 1).

The definition of A201816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201816.P5067483426122242254

`lt[A001221(A082369(3*n+1)), 2]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A201816

/-- `lt[A001221(A082369(3*n+1)), 2]` -/
def P5067483426122242254.Spec : Prop :=
  ∀ n, (P5067483426122242254.a n : ℤ) = A201816 (n + 1)

theorem P5067483426122242254.correct : P5067483426122242254.Spec := by
  intro n
  simp only [A201816, Nat.add_sub_cancel]

end A201816

/-! ## A201816.P11543394012244305312

`lt[A016969(n), A020639(A082369(3*n+1))]`
-/

namespace A201816.P11543394012244305312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201816.P11543394012244305312

namespace A201816

/-- `lt[A016969(n), A020639(A082369(3*n+1))]` -/
def P11543394012244305312.Spec : Prop :=
  ∀ n, (P11543394012244305312.a n : ℤ) = A201816 (n + 1)

end A201816

/-! ## A201816.P12783080475465070214

`lt[A039956(n+1), A020639(A082369(3*n+1))]`
-/

namespace A201816.P12783080475465070214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201816.P12783080475465070214

namespace A201816

/-- `lt[A039956(n+1), A020639(A082369(3*n+1))]` -/
def P12783080475465070214.Spec : Prop :=
  ∀ n, (P12783080475465070214.a n : ℤ) = A201816 (n + 1)

end A201816

/-! ## A201816.P13882325326964395327

`lt[A058972(n+1), A020639(A082369(3*n+1))]`
-/

namespace A201816.P13882325326964395327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201816.P13882325326964395327

namespace A201816

/-- `lt[A058972(n+1), A020639(A082369(3*n+1))]` -/
def P13882325326964395327.Spec : Prop :=
  ∀ n, (P13882325326964395327.a n : ℤ) = A201816 (n + 1)

end A201816

/-! ## A201816.P8693909626009870025

`lt[A211266(n+1), A020639(A082369(3*n+1))]`
-/

namespace A201816.P8693909626009870025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201816.P8693909626009870025

namespace A201816

/-- `lt[A211266(n+1), A020639(A082369(3*n+1))]` -/
def P8693909626009870025.Spec : Prop :=
  ∀ n, (P8693909626009870025.a n : ℤ) = A201816 (n + 1)

end A201816

/-!
# A201817: Numbers k such that 90*k + 67 is prime.

The programs for A201817, the canonical program `A201817.P18228911640526075353` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201817 has offset 1).

The definition of A201817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201817.P18228911640526075353

`floor(A142323(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201817

/-- `floor(A142323(n+1)/90)` -/
def P18228911640526075353.Spec : Prop :=
  ∀ n, P18228911640526075353.a n = A201817 (n + 1)

theorem P18228911640526075353.correct : P18228911640526075353.Spec := by
  intro n
  simp only [A201817, Nat.add_sub_cancel]

end A201817

/-! ## A201817.P2582688764366697706

`eq[7, A096915(A017233(n))]`
-/

namespace A201817.P2582688764366697706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A017233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P2582688764366697706

namespace A201817

/-- `eq[7, A096915(A017233(n))]` -/
def P2582688764366697706.Spec : Prop :=
  ∀ n, (P2582688764366697706.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P16306557097880418762

`eq[1, A075743(A128473(n+1)-1)]`
-/

namespace A201817.P16306557097880418762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128473 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P16306557097880418762

namespace A201817

/-- `eq[1, A075743(A128473(n+1)-1)]` -/
def P16306557097880418762.Spec : Prop :=
  ∀ n, (P16306557097880418762.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P4765539439490342001

`eq[1, A001222(9*A017353(n)+4)]`
-/

namespace A201817.P4765539439490342001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * A017353 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P4765539439490342001

namespace A201817

/-- `eq[1, A001222(9*A017353(n)+4)]` -/
def P4765539439490342001.Spec : Prop :=
  ∀ n, (P4765539439490342001.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P18054852114601497055

`eq[2, A000005(9*A017353(n)+4)]`
-/

namespace A201817.P18054852114601497055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * A017353 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P18054852114601497055

namespace A201817

/-- `eq[2, A000005(9*A017353(n)+4)]` -/
def P18054852114601497055.Spec : Prop :=
  ∀ n, (P18054852114601497055.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P384580170679644828

`eq[9*A017353(n)+4, A006530(9*A017353(n)+4)]`
-/

namespace A201817.P384580170679644828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A017353 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * A017353 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201817.P384580170679644828

namespace A201817

/-- `eq[9*A017353(n)+4, A006530(9*A017353(n)+4)]` -/
def P384580170679644828.Spec : Prop :=
  ∀ n, (P384580170679644828.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P7642397382709292440

`eq[9*A017353(n)+4, A020639(9*A017353(n)+4)]`
-/

namespace A201817.P7642397382709292440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A017353 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * A017353 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201817.P7642397382709292440

namespace A201817

/-- `eq[9*A017353(n)+4, A020639(9*A017353(n)+4)]` -/
def P7642397382709292440.Spec : Prop :=
  ∀ n, (P7642397382709292440.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P2319561720868031719

`eq[2, A000005(A017209(A017353(n)))]`
-/

namespace A201817.P2319561720868031719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017209 (A017353 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P2319561720868031719

namespace A201817

/-- `eq[2, A000005(A017209(A017353(n)))]` -/
def P2319561720868031719.Spec : Prop :=
  ∀ n, (P2319561720868031719.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P13222468937549674479

`eq[2, A001222(A066164(n+3)-46)]`
-/

namespace A201817.P13222468937549674479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066164 (n + 3) - 46).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P13222468937549674479

namespace A201817

/-- `eq[2, A001222(A066164(n+3)-46)]` -/
def P13222468937549674479.Spec : Prop :=
  ∀ n, (P13222468937549674479.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P17051763137401622386

`eq[4, A000005(A066164(n+3)-46)]`
-/

namespace A201817.P17051763137401622386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066164 (n + 3) - 46).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P17051763137401622386

namespace A201817

/-- `eq[4, A000005(A066164(n+3)-46)]` -/
def P17051763137401622386.Spec : Prop :=
  ∀ n, (P17051763137401622386.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P11832761560573067905

`eq[4, A000005(A257645(A017617(n)))]`
-/

namespace A201817.P11832761560573067905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A257645 (A017617 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P11832761560573067905

namespace A201817

/-- `eq[4, A000005(A257645(A017617(n)))]` -/
def P11832761560573067905.Spec : Prop :=
  ∀ n, (P11832761560573067905.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P3689995183124235942

`eq[2, A116933(A156376(n)+2)]`
-/

namespace A201817.P3689995183124235942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A156376 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P3689995183124235942

namespace A201817

/-- `eq[2, A116933(A156376(n)+2)]` -/
def P3689995183124235942.Spec : Prop :=
  ∀ n, (P3689995183124235942.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P17657237388593903216

`eq[2, A116933(A128473(n+1)-2)]`
-/

namespace A201817.P17657237388593903216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A128473 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P17657237388593903216

namespace A201817

/-- `eq[2, A116933(A128473(n+1)-2)]` -/
def P17657237388593903216.Spec : Prop :=
  ∀ n, (P17657237388593903216.a n : ℤ) = A201817 (n + 1)

end A201817

/-! ## A201817.P481785741472320130

`eq[1, A339913(A007310(A128473(n+1)))]`
-/

namespace A201817.P481785741472320130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A007310 (A128473 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201817.P481785741472320130

namespace A201817

/-- `eq[1, A339913(A007310(A128473(n+1)))]` -/
def P481785741472320130.Spec : Prop :=
  ∀ n, (P481785741472320130.a n : ℤ) = A201817 (n + 1)

end A201817

/-!
# A201818: Numbers k such that 90*k + 49 is prime.

The programs for A201818, the canonical program `A201818.P17452297210576869253` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201818 has offset 1).

The definition of A201818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201818.P17452297210576869253

`floor(A142314(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201818

/-- `floor(A142314(n+1)/90)` -/
def P17452297210576869253.Spec : Prop :=
  ∀ n, P17452297210576869253.a n = A201818 (n + 1)

theorem P17452297210576869253.correct : P17452297210576869253.Spec := by
  intro n
  simp only [A201818, Nat.add_sub_cancel]

end A201818

/-! ## A201818.P13171568757640278667

`eq[1, A075743(A128468(n)-1)]`
-/

namespace A201818.P13171568757640278667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128468 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P13171568757640278667

namespace A201818

/-- `eq[1, A075743(A128468(n)-1)]` -/
def P13171568757640278667.Spec : Prop :=
  ∀ n, (P13171568757640278667.a n : ℤ) = A201818 (n + 1)

end A201818

/-! ## A201818.P3153522842534967228

`eq[2, A000005(A156376(3*n+1))]`
-/

namespace A201818.P3153522842534967228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156376 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P3153522842534967228

namespace A201818

/-- `eq[2, A000005(A156376(3*n+1))]` -/
def P3153522842534967228.Spec : Prop :=
  ∀ n, (P3153522842534967228.a n : ℤ) = A201818 (n + 1)

end A201818

/-! ## A201818.P16325522876136731076

`eq[1, A001222(A156376(A016777(n)))]`
-/

namespace A201818.P16325522876136731076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156376 (A016777 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P16325522876136731076

namespace A201818

/-- `eq[1, A001222(A156376(A016777(n)))]` -/
def P16325522876136731076.Spec : Prop :=
  ∀ n, (P16325522876136731076.a n : ℤ) = A201818 (n + 1)

end A201818

/-! ## A201818.P14168225901282398566

`eq[2, A000005(A143988(A017341(n)))]`
-/

namespace A201818.P14168225901282398566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A143988 (A017341 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P14168225901282398566

namespace A201818

/-- `eq[2, A000005(A143988(A017341(n)))]` -/
def P14168225901282398566.Spec : Prop :=
  ∀ n, (P14168225901282398566.a n : ℤ) = A201818 (n + 1)

end A201818

/-! ## A201818.P12904159684823374128

`eq[3, A051686(A164284(n+1))]`
-/

namespace A201818.P12904159684823374128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A164284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P12904159684823374128

namespace A201818

/-- `eq[3, A051686(A164284(n+1))]` -/
def P12904159684823374128.Spec : Prop :=
  ∀ n, (P12904159684823374128.a n : ℤ) = A201818 (n + 1)

end A201818

/-! ## A201818.P1652217754429486957

`eq[4, A000005(A154266(A017329(n)))]`
-/

namespace A201818.P1652217754429486957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A154266 (A017329 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P1652217754429486957

namespace A201818

/-- `eq[4, A000005(A154266(A017329(n)))]` -/
def P1652217754429486957.Spec : Prop :=
  ∀ n, (P1652217754429486957.a n : ℤ) = A201818 (n + 1)

end A201818

/-! ## A201818.P14035030416342009541

`eq[2, A116933(A082369(n+1)+2)]`
-/

namespace A201818.P14035030416342009541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A082369 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P14035030416342009541

namespace A201818

/-- `eq[2, A116933(A082369(n+1)+2)]` -/
def P14035030416342009541.Spec : Prop :=
  ∀ n, (P14035030416342009541.a n : ℤ) = A201818 (n + 1)

end A201818

/-! ## A201818.P15637093826989531719

`eq[1, A001222(A067745(A128468(n)))]`
-/

namespace A201818.P15637093826989531719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067745 (A128468 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201818.P15637093826989531719

namespace A201818

/-- `eq[1, A001222(A067745(A128468(n)))]` -/
def P15637093826989531719.Spec : Prop :=
  ∀ n, (P15637093826989531719.a n : ℤ) = A201818 (n + 1)

end A201818

/-!
# A201819: Numbers n such that 90*n + 31 is prime.

The programs for A201819, the canonical program `A201819.P477483135611943729` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201819 has offset 1).

The definition of A201819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201819.P477483135611943729

`floor(A142328(n+1)/90)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201819

/-- `floor(A142328(n+1)/90)` -/
def P477483135611943729.Spec : Prop :=
  ∀ n, P477483135611943729.a n = A201819 (n + 1)

theorem P477483135611943729.correct : P477483135611943729.Spec := by
  intro n
  simp only [A201819, Nat.add_sub_cancel]

end A201819

/-! ## A201819.P5526860105139589344

`lt[A000005(15*(6*n+2)+1), 3]`
-/

namespace A201819.P5526860105139589344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (15 * (6 * n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201819.P5526860105139589344

namespace A201819

/-- `lt[A000005(15*(6*n+2)+1), 3]` -/
def P5526860105139589344.Spec : Prop :=
  ∀ n, (P5526860105139589344.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P10586844114066630323

`eq[1, A068695(A017197(n))]`
-/

namespace A201819.P10586844114066630323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017197 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P10586844114066630323

namespace A201819

/-- `eq[1, A068695(A017197(n))]` -/
def P10586844114066630323.Spec : Prop :=
  ∀ n, (P10586844114066630323.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P5301725262275686311

`eq[1, A068695(A017185(n)+1)]`
-/

namespace A201819.P5301725262275686311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017185 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P5301725262275686311

namespace A201819

/-- `eq[1, A068695(A017185(n)+1)]` -/
def P5301725262275686311.Spec : Prop :=
  ∀ n, (P5301725262275686311.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P4303187738659585809

`eq[1, A068695(A017209(n)-1)]`
-/

namespace A201819.P4303187738659585809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017209 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P4303187738659585809

namespace A201819

/-- `eq[1, A068695(A017209(n)-1)]` -/
def P4303187738659585809.Spec : Prop :=
  ∀ n, (P4303187738659585809.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P17498294348755284601

`eq[1, A068695(A017221(n)-2)]`
-/

namespace A201819.P17498294348755284601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017221 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P17498294348755284601

namespace A201819

/-- `eq[1, A068695(A017221(n)-2)]` -/
def P17498294348755284601.Spec : Prop :=
  ∀ n, (P17498294348755284601.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P15807863295268197377

`eq[1, A091088(A017221(n)-2)]`
-/

namespace A201819.P15807863295268197377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A017221 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P15807863295268197377

namespace A201819

/-- `eq[1, A091088(A017221(n)-2)]` -/
def P15807863295268197377.Spec : Prop :=
  ∀ n, (P15807863295268197377.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P4759339491066217365

`eq[1, A001222(30*A016777(n)+1)]`
-/

namespace A201819.P4759339491066217365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * A016777 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P4759339491066217365

namespace A201819

/-- `eq[1, A001222(30*A016777(n)+1)]` -/
def P4759339491066217365.Spec : Prop :=
  ∀ n, (P4759339491066217365.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P6599280114847299967

`eq[2, A000005(30*A016777(n)+1)]`
-/

namespace A201819.P6599280114847299967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * A016777 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P6599280114847299967

namespace A201819

/-- `eq[2, A000005(30*A016777(n)+1)]` -/
def P6599280114847299967.Spec : Prop :=
  ∀ n, (P6599280114847299967.a n : ℤ) = A201819 (n + 1)

end A201819

/-! ## A201819.P11604021774064324612

`eq[1, A002033(30*A016777(n))]`
-/

namespace A201819.P11604021774064324612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (30 * A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201819.P11604021774064324612

namespace A201819

/-- `eq[1, A002033(30*A016777(n))]` -/
def P11604021774064324612.Spec : Prop :=
  ∀ n, (P11604021774064324612.a n : ℤ) = A201819 (n + 1)

end A201819

/-!
# A201820: Numbers k such that 90*k + 23 is prime.

The programs for A201820, the canonical program `A201820.P18179661777038436501` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201820 has offset 1).

The definition of A201820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A201820.P18179661777038436501

`(A142324(n+1)-23)/90`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201820

/-- `(A142324(n+1)-23)/90` -/
def P18179661777038436501.Spec : Prop :=
  ∀ n, P18179661777038436501.a n = (A201820 (n + 1) : ℚ)

end A201820

/-! ## A201820.P16180398234281894382

`floor(A142324(n+1)/90)`
-/

namespace A201820.P16180398234281894382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142324 (n + 1) : ℚ) / 90⌋

end

end A201820.P16180398234281894382

namespace A201820

/-- `floor(A142324(n+1)/90)` -/
def P16180398234281894382.Spec : Prop :=
  ∀ n, P16180398234281894382.a n = A201820 (n + 1)

end A201820

/-! ## A201820.P13746316653167252677

`round(A142324(n+1)/90)%A008706(n)`
-/

namespace A201820.P13746316653167252677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A142324 (n + 1) : ℚ) / 90)) (A008706 n)

end

end A201820.P13746316653167252677

namespace A201820

/-- `round(A142324(n+1)/90)%A008706(n)` -/
def P13746316653167252677.Spec : Prop :=
  ∀ n, P13746316653167252677.a n = A201820 (n + 1)

end A201820

/-! ## A201820.P11966862570019463655

`eq[3, A068695(A017185(n))]`
-/

namespace A201820.P11966862570019463655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A017185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201820.P11966862570019463655

namespace A201820

/-- `eq[3, A068695(A017185(n))]` -/
def P11966862570019463655.Spec : Prop :=
  ∀ n, (P11966862570019463655.a n : ℤ) = A201820 (n + 1)

end A201820

/-! ## A201820.P8757189975075549371

`eq[1, A075743(A139249(n+1)+1)]`
-/

namespace A201820.P8757189975075549371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A139249 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201820.P8757189975075549371

namespace A201820

/-- `eq[1, A075743(A139249(n+1)+1)]` -/
def P8757189975075549371.Spec : Prop :=
  ∀ n, (P8757189975075549371.a n : ℤ) = A201820 (n + 1)

end A201820

/-! ## A201820.P2604486918919857989

`eq[1, A001222(A017305(9*n+2))]`
-/

namespace A201820.P2604486918919857989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017305 (9 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201820.P2604486918919857989

namespace A201820

/-- `eq[1, A001222(A017305(9*n+2))]` -/
def P2604486918919857989.Spec : Prop :=
  ∀ n, (P2604486918919857989.a n : ℤ) = A201820 (n + 1)

end A201820

/-! ## A201820.P8285773964093198431

`lt[A001222(A008605(4*n+1)-n-n), 2]`
-/

namespace A201820.P8285773964093198431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008605 (4 * n + 1) - (n : ℤ) - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201820.P8285773964093198431

namespace A201820

/-- `lt[A001222(A008605(4*n+1)-n-n), 2]` -/
def P8285773964093198431.Spec : Prop :=
  ∀ n, (P8285773964093198431.a n : ℤ) = A201820 (n + 1)

end A201820

/-! ## A201820.P2892528224466023471

`eq[1, A001222(A128473(A016777(n)))]`
-/

namespace A201820.P2892528224466023471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A128473 (A016777 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201820.P2892528224466023471

namespace A201820

/-- `eq[1, A001222(A128473(A016777(n)))]` -/
def P2892528224466023471.Spec : Prop :=
  ∀ n, (P2892528224466023471.a n : ℤ) = A201820 (n + 1)

end A201820

/-! ## A201820.P15003820585789747974

`record[A008585(n)/A068695(A017185(n))]`
-/

namespace A201820.P15003820585789747974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 n : ℚ) / (A068695 (A017185 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201820.P15003820585789747974

namespace A201820

/-- `record[A008585(n)/A068695(A017185(n))]` -/
def P15003820585789747974.Spec : Prop :=
  ∀ n, P15003820585789747974.a n = (A201820 (n + 1) : ℚ)

end A201820

/-! ## A201820.P4713328384110347775

`eq[2, A278223(A139610(n)+2)]`
-/

namespace A201820.P4713328384110347775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A139610 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201820.P4713328384110347775

namespace A201820

/-- `eq[2, A278223(A139610(n)+2)]` -/
def P4713328384110347775.Spec : Prop :=
  ∀ n, (P4713328384110347775.a n : ℤ) = A201820 (n + 1)

end A201820

/-! ## A201820.P929879373077163073

`eq[1, A167020(15*n+4)]`
-/

namespace A201820.P929879373077163073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (15 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201820.P929879373077163073

namespace A201820

/-- `eq[1, A167020(15*n+4)]` -/
def P929879373077163073.Spec : Prop :=
  ∀ n, (P929879373077163073.a n : ℤ) = A201820 (n + 1)

end A201820

/-!
# A201821: Automorphic numbers: n^2 ends with n in base 6 (written in base 6).

The programs for A201821, there is no canonical definition to state claims against.
-/

/-! ## A201821.P18267731620009190490

`A007092(A237583(n+1))`
-/

namespace A201821.P18267731620009190490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A237583 (n + 1)).toNat

end

end A201821.P18267731620009190490

/-! ## A201821.P7262244643072014757

`A007092(sqrt(A308248(n+1)))`
-/

namespace A201821.P7262244643072014757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.roundAway (Real.sqrt (A308248 (n + 1) : ℝ))).toNat

end

end A201821.P7262244643072014757

/-! ## A201821.P2765234129816087310

`A007092(A308248(n+1)^(1/2))`
-/

namespace A201821.P2765234129816087310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.roundAway ((A308248 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A201821.P2765234129816087310

/-!
# A201822: Numbers k such that 90*k + 77 is prime.

The programs for A201822, the canonical program `A201822.P3004927883000444934` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201822 has offset 1).

The definition of A201822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142329, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A201822.P3004927883000444934

`(A142329(n+1)-77)/90`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201822

/-- `(A142329(n+1)-77)/90` -/
def P3004927883000444934.Spec : Prop :=
  ∀ n, P3004927883000444934.a n = (A201822 (n + 1) : ℚ)

end A201822

/-! ## A201822.P10726541057080304768

`floor(A142329(n+1)/90)`
-/

namespace A201822.P10726541057080304768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142329 (n + 1) : ℚ) / 90⌋

end

end A201822.P10726541057080304768

namespace A201822

/-- `floor(A142329(n+1)/90)` -/
def P10726541057080304768.Spec : Prop :=
  ∀ n, P10726541057080304768.a n = A201822 (n + 1)

end A201822

/-! ## A201822.P1476373945165710151

`eq[1, A075743(A128473(n+1)+2)]`
-/

namespace A201822.P1476373945165710151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A128473 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201822.P1476373945165710151

namespace A201822

/-- `eq[1, A075743(A128473(n+1)+2)]` -/
def P1476373945165710151.Spec : Prop :=
  ∀ n, (P1476373945165710151.a n : ℤ) = A201822 (n + 1)

end A201822

/-! ## A201822.P6616813588840552871

`eq[1, A001221(A128468(3*n+2))]`
-/

namespace A201822.P6616813588840552871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A128468 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201822.P6616813588840552871

namespace A201822

/-- `eq[1, A001221(A128468(3*n+2))]` -/
def P6616813588840552871.Spec : Prop :=
  ∀ n, (P6616813588840552871.a n : ℤ) = A201822 (n + 1)

end A201822

/-! ## A201822.P11811615359661197295

`lt[A000005(18*A016897(n)+5), 3]`
-/

namespace A201822.P11811615359661197295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (18 * A016897 n + 5).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201822.P11811615359661197295

namespace A201822

/-- `lt[A000005(18*A016897(n)+5), 3]` -/
def P11811615359661197295.Spec : Prop :=
  ∀ n, (P11811615359661197295.a n : ℤ) = A201822 (n + 1)

end A201822

/-! ## A201822.P999112260417489495

`eq[1, A167020(15*(n+1)-2)]`
-/

namespace A201822.P999112260417489495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (15 * (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201822.P999112260417489495

namespace A201822

/-- `eq[1, A167020(15*(n+1)-2)]` -/
def P999112260417489495.Spec : Prop :=
  ∀ n, (P999112260417489495.a n : ℤ) = A201822 (n + 1)

end A201822

/-!
# A201823: 

The programs for A201823, there is no canonical definition to state claims against.
-/

/-! ## A201823.P16317264635526649810

`A047749(3^n-1)`
-/

namespace A201823.P16317264635526649810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (3 ^ n - 1)

end

end A201823.P16317264635526649810

/-!
# A201824: G.f.: Sum_{n>=0} log( 1/sqrt(1-2^n*x) )^n / n!.

The programs for A201824, there is no canonical definition to state claims against.
-/

/-! ## A201824.P7895868740474659716

`C(2^abs(1-n)+n-1, n)`
-/

namespace A201824.P7895868740474659716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) + ((n : ℤ) - 1 : ℚ))).toNat n

end

end A201824.P7895868740474659716

/-! ## A201824.P7344542615599483880

`A137153(2*n²-floor(atan(n+1)))`
-/

namespace A201824.P7344542615599483880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 ((2 * n ^ 2 : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

end

end A201824.P7344542615599483880

/-! ## A201824.P4656773353690811374

`A137153(2*n²-round(log2(n+1)/3))`
-/

namespace A201824.P4656773353690811374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 ((2 * n ^ 2 : ℤ) - SequenceMachineLib.roundAway (Real.logb 2 (n + 1 : ℝ) / 3)).toNat

end

end A201824.P4656773353690811374

/-! ## A201824.P11516921466128155700

`A357812(A011782(n)-1+n)`
-/

namespace A201824.P11516921466128155700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357812 (A011782 n - 1 + (n : ℤ)).toNat

end

end A201824.P11516921466128155700

/-! ## A201824.P14307054393677282793

`A007318(C(A011782(n)+n, 2)+n)`
-/

namespace A201824.P14307054393677282793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A011782 n + (n : ℤ)).toNat 2 + n)

end

end A201824.P14307054393677282793

/-!
# A201826: Central coefficients in Product_{k=1..n} (1 + k*y + y^2).

The programs for A201826, there is no canonical definition to state claims against.
-/

/-! ## A201826.P12436029782607415582

`n*a(n-1)+A201950(n)` with `a(0)=1`
-/

namespace A201826.P12436029782607415582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A201950 n

end

end A201826.P12436029782607415582

/-! ## A201826.P10643293574504883873

`A249790(∑[2*n])`
-/

namespace A201826.P10643293574504883873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201826.P10643293574504883873

/-! ## A201826.P3857468848156841371

`gcd(A000038(n), A249790(n²+n))`
-/

namespace A201826.P3857468848156841371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A249790 (n ^ 2 + n))

end

end A201826.P3857468848156841371

/-! ## A201826.P5497286290272136098

`A001222(A000230(n))*A249790(n²+n)`
-/

namespace A201826.P5497286290272136098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000230 n).toNat * A249790 (n ^ 2 + n)

end

end A201826.P5497286290272136098

/-! ## A201826.P2842271897139192586

`A249790(A002378(n))+A035363(2*n+1)`
-/

namespace A201826.P2842271897139192586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249790 (A002378 n).toNat + A035363 (2 * n + 1)

end

end A201826.P2842271897139192586

/-!
# A201827: E.g.f. satisfies: A(log(1+x)) = x*exp(A(x)).

The programs for A201827, there is no canonical definition to state claims against.
-/

/-! ## A201827.P4046099493873522337

`or(n, A060431(A105795(2*(n+1))))`
-/

namespace A201827.P4046099493873522337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A060431 (A105795 (2 * (n + 1))).toNat)

end

end A201827.P4046099493873522337

/-!
# A201828: The smallest A(m) such that the interval (A(m)*n, A(m+1)*n) contains exactly one element of A, where A is the sequence of primes p for which p-2 is not prime.

The programs for A201828, there is no canonical definition to state claims against.
-/

/-! ## A201828.P15699605888789184278

`p?[A322366(A036378(n)+38)]`
-/

namespace A201828.P15699605888789184278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 (A036378 n + 38).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201828.P15699605888789184278

/-!
# A201829: Number of n X n 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201829, there is no canonical definition to state claims against.
-/

/-! ## A201829.P17577696320224763451

`A201836(∑[4*n]+1)`
-/

namespace A201829.P17577696320224763451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201829.P17577696320224763451

/-! ## A201829.P10757729165843344304

`record[A201836(A152271(n²))]`
-/

namespace A201829.P10757729165843344304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201829.P10757729165843344304

/-! ## A201829.P15367025448308063701

`record[A201836(record[A326657(n)])]`
-/

namespace A201829.P15367025448308063701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201829.P15367025448308063701

/-!
# A201830: Number of nX2 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201830, there is no canonical definition to state claims against.
-/

/-! ## A201830.P6236887159750945161

`A201210(n+1)-A202162(n+1)`
-/

namespace A201830.P6236887159750945161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201210 (n + 1) - A202162 (n + 1)

end

end A201830.P6236887159750945161

/-! ## A201830.P11669269637162152614

`A201836(∑[n+1]+2)`
-/

namespace A201830.P11669269637162152614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201830.P11669269637162152614

/-! ## A201830.P17714993203044728011

`record[A201836(n+3)/A008275(n+1)]`
-/

namespace A201830.P17714993203044728011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201836 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201830.P17714993203044728011

/-! ## A201830.P1818992882084557693

`record[root(A201836(n+2), A208825(n+1))]`
-/

namespace A201830.P1818992882084557693
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201836 (n + 2) : ℝ) ^ (1 / (A208825 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201830.P1818992882084557693

/-! ## A201830.P9978253830932098003

`record[gcd(A135313(n+1), A201836(n+3))]`
-/

namespace A201830.P9978253830932098003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135313 (n + 1)) (A201836 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201830.P9978253830932098003

/-!
# A201831: Number of nX3 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201831, there is no canonical definition to state claims against.
-/

/-! ## A201831.P11938245487077190828

`A201211(n+1)-A202163(n+1)`
-/

namespace A201831.P11938245487077190828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201211 (n + 1) - A202163 (n + 1)

end

end A201831.P11938245487077190828

/-! ## A201831.P18385012380671033307

`A201836(∑[n+2]+4)`
-/

namespace A201831.P18385012380671033307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201831.P18385012380671033307

/-! ## A201831.P10001461317297905934

`lcm((-1)^n, A201836(A167614(n+1)))`
-/

namespace A201831.P10001461317297905934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A201836 (A167614 (n + 1)).toNat)

end

end A201831.P10001461317297905934

/-! ## A201831.P18295270579653290666

`A201211(n+1)-A202168(∑[n+2]+4)`
-/

namespace A201831.P18295270579653290666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201211 (n + 1) - A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201831.P18295270579653290666

/-! ## A201831.P18055627673851582452

`A201216(∑[n+2]+4)-A202163(n+1)`
-/

namespace A201831.P18055627673851582452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 4) - A202163 (n + 1)

end

end A201831.P18055627673851582452

/-!
# A201832: Number of nX4 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201832, there is no canonical definition to state claims against.
-/

/-! ## A201832.P7189147102308596126

`A201212(n+1)-A202164(n+1)`
-/

namespace A201832.P7189147102308596126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201212 (n + 1) - A202164 (n + 1)

end

end A201832.P7189147102308596126

/-! ## A201832.P16187961910259623811

`A201836(∑[n+3]+7)`
-/

namespace A201832.P16187961910259623811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201832.P16187961910259623811

/-! ## A201832.P18278094266792641718

`and(-1, A201836(A167614(n+2)+1))`
-/

namespace A201832.P18278094266792641718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201836 (A167614 (n + 2) + 1).toNat)

end

end A201832.P18278094266792641718

/-! ## A201832.P15593633839560872069

`A201216(∑[n+3]+7)-A202164(n+1)`
-/

namespace A201832.P15593633839560872069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 7) - A202164 (n + 1)

end

end A201832.P15593633839560872069

/-! ## A201832.P14082846811803355906

`A201836(A167614(n+2)+1)-A326679(n)`
-/

namespace A201832.P14082846811803355906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A167614 (n + 2) + 1).toNat - A326679 n

end

end A201832.P14082846811803355906

/-!
# A201833: Number of nX5 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201833, there is no canonical definition to state claims against.
-/

/-! ## A201833.P16271787492667371294

`A201213(n+1)-A202165(n+1)`
-/

namespace A201833.P16271787492667371294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201213 (n + 1) - A202165 (n + 1)

end

end A201833.P16271787492667371294

/-! ## A201833.P2165493351200234572

`A201836(A374005(n+1))`
-/

namespace A201833.P2165493351200234572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A374005 (n + 1)).toNat

end

end A201833.P2165493351200234572

/-! ## A201833.P2655907128849345709

`A201836(A167499(n+3))`
-/

namespace A201833.P2655907128849345709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A167499 (n + 3)).toNat

end

end A201833.P2655907128849345709

/-! ## A201833.P1841351113498921353

`A201836(A155212(n)+13)`
-/

namespace A201833.P1841351113498921353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A155212 n + 13).toNat

end

end A201833.P1841351113498921353

/-! ## A201833.P8891452447196399097

`A201836(A056000(n)+15)`
-/

namespace A201833.P8891452447196399097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A056000 n + 15).toNat

end

end A201833.P8891452447196399097

/-!
# A201834: Number of nX6 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201834, there is no canonical definition to state claims against.
-/

/-! ## A201834.P1467509134103635723

`A201836(A374007(n+1))`
-/

namespace A201834.P1467509134103635723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A374007 (n + 1)).toNat

end

end A201834.P1467509134103635723

/-! ## A201834.P10378298295079527097

`A201836(A166136(n+4))`
-/

namespace A201834.P10378298295079527097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A166136 (n + 4)).toNat

end

end A201834.P10378298295079527097

/-! ## A201834.P14692686375193489893

`A201836(A056115(n)+21)`
-/

namespace A201834.P14692686375193489893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A056115 n + 21).toNat

end

end A201834.P14692686375193489893

/-! ## A201834.P11262470549167455531

`A201836(A046691(n+3)+10)`
-/

namespace A201834.P11262470549167455531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A046691 (n + 3) + 10).toNat

end

end A201834.P11262470549167455531

/-! ## A201834.P682891487884291978

`A201836(eq[7, A131818(n+1)])`
-/

namespace A201834.P682891487884291978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201834.P682891487884291978

/-!
# A201835: Number of nX7 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201835, there is no canonical definition to state claims against.
-/

/-! ## A201835.P6355156801457403416

`A201836(C(n+7, 2)+n+1)`
-/

namespace A201835.P6355156801457403416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (Nat.choose (n + 7) 2 + (n + 1))

end

end A201835.P6355156801457403416

/-! ## A201835.P16086601084161701867

`A201836(A374008(n+1))`
-/

namespace A201835.P16086601084161701867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A374008 (n + 1)).toNat

end

end A201835.P16086601084161701867

/-! ## A201835.P4410873162445439322

`A201836(A055999(n+4))`
-/

namespace A201835.P4410873162445439322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A055999 (n + 4)).toNat

end

end A201835.P4410873162445439322

/-! ## A201835.P11426416289134598449

`A201836(A056121(n)+22)`
-/

namespace A201835.P11426416289134598449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (A056121 n + 22).toNat

end

end A201835.P11426416289134598449

/-!
# A201836: T(n,k)=Number of nXk 0..3 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201836, there is no canonical definition to state claims against.
-/

/-! ## A201836.P10041624113368044876

`A201216(n+1)-A202168(n+1)`
-/

namespace A201836.P10041624113368044876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (n + 1) - A202168 (n + 1)

end

end A201836.P10041624113368044876

/-! ## A201836.P2163938062713590876

`A201216(n+1)+A024000(A202168(n+1)+1)`
-/

namespace A201836.P2163938062713590876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (n + 1) + A024000 (A202168 (n + 1) + 1).toNat

end

end A201836.P2163938062713590876

/-! ## A201836.P2605879794638261545

`A201216(n+1)-A097073(A144074(n)!)`
-/

namespace A201836.P2605879794638261545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (n + 1) - A097073 (Nat.factorial (A144074 n).toNat)

end

end A201836.P2605879794638261545

/-! ## A201836.P983551680401122104

`A201216(n+1)-A245492(A174036(n)+3)`
-/

namespace A201836.P983551680401122104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (n + 1) - A245492 (A174036 n + 3).toNat

end

end A201836.P983551680401122104

/-! ## A201836.P12103490100803155880

`A201216(n+1)-4*A195827(A157147(n))`
-/

namespace A201836.P12103490100803155880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (n + 1) - 4 * A195827 (A157147 n).toNat

end

end A201836.P12103490100803155880

/-!
# A201837: G.f.: real part of 1/(1 - i*x - i*x^2) where i=sqrt(-1).

The programs for A201837, the canonical program `A201837.P3514668347834619730` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201837 has offset 0).

The definition of A201837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201837.P3514668347834619730

`ogf(1/(1+x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201837

/-- `ogf(1/(1+x^2+2x^3+x^4))` -/
def P3514668347834619730.Spec : Prop :=
  ∀ n, P3514668347834619730.a n = A201837 n

theorem P3514668347834619730.correct : P3514668347834619730.Spec := by
  intro n
  simp only [A201837]

end A201837

/-! ## A201837.P4099742735115398748

`A201838(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A201837.P4099742735115398748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A201838 (n + 1) - a (n - 1)

end

end A201837.P4099742735115398748

namespace A201837

/-- `A201838(n+1)-a(n-1)` -/
def P4099742735115398748.Spec : Prop :=
  ∀ n, P4099742735115398748.a n = A201837 n

end A201837

/-!
# A201838: G.f.: imaginary part of 1/(1 - i*x - i*x^2) where i=sqrt(-1).

The programs for A201838, the canonical program `A201838.P804579328221733001` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201838 has offset 0).

The definition of A201838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201838.P804579328221733001

`ogf((x+x^2)/(1+x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201838

/-- `ogf((x+x^2)/(1+x^2+2x^3+x^4))` -/
def P804579328221733001.Spec : Prop :=
  ∀ n, P804579328221733001.a n = A201838 n

theorem P804579328221733001.correct : P804579328221733001.Spec := by
  intro n
  simp only [A201838]

end A201838

/-! ## A201838.P11523580407539902106

`Δ[a(n-2)-A201837(n)]` with `a(0)=1, a(1)=1`
-/

namespace A201838.P11523580407539902106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - A201837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201838.P11523580407539902106

namespace A201838

/-- `Δ[a(n-2)-A201837(n)]` -/
def P11523580407539902106.Spec : Prop :=
  ∀ n, P11523580407539902106.a n = A201838 n

end A201838

/-!
# A201839: Number of zero-sum n X n -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201839, there is no canonical definition to state claims against.
-/

/-! ## A201839.P6520664400514587610

`A201847(∑[4*n]+1)`
-/

namespace A201839.P6520664400514587610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201839.P6520664400514587610

/-!
# A201840: Number of zero-sum nX1 -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201840, there is no canonical definition to state claims against.
-/

/-! ## A201840.P5749002236844822613

`A201847(∑[n]+1)`
-/

namespace A201840.P5749002236844822613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201840.P5749002236844822613

/-! ## A201840.P6226882565103443128

`and(-1, A201847(A000124(n)))`
-/

namespace A201840.P6226882565103443128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201847 (A000124 n).toNat)

end

end A201840.P6226882565103443128

/-! ## A201840.P973049103701033633

`A201847(A000124(n))+A067157(n)`
-/

namespace A201840.P973049103701033633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A000124 n).toNat + A067157 (n + 10)

end

end A201840.P973049103701033633

/-! ## A201840.P11141787649477743807

`A201847(A000124(n))+A105517(n)`
-/

namespace A201840.P11141787649477743807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A000124 n).toNat + A105517 n

end

end A201840.P11141787649477743807

/-! ## A201840.P1965217430600902469

`A308980(n)+A201847(A000124(n))`
-/

namespace A201840.P1965217430600902469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308980 n + A201847 (A000124 n).toNat

end

end A201840.P1965217430600902469

/-!
# A201841: Number of zero-sum nX2 -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201841, there is no canonical definition to state claims against.
-/

/-! ## A201841.P12229390412302679864

`A201847(∑[n+1]+2)`
-/

namespace A201841.P12229390412302679864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201841.P12229390412302679864

/-! ## A201841.P3046122528773862269

`record[A010054(n)*A201847(n+2)]`
-/

namespace A201841.P3046122528773862269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201847 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201841.P3046122528773862269

/-! ## A201841.P11549255143220455906

`record[A201847(n+3)/A130850(n)]`
-/

namespace A201841.P11549255143220455906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201847 (n + 3) : ℚ) / (A130850 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201841.P11549255143220455906

/-! ## A201841.P12808231503344152842

`record[root(A201847(n+2), A039755(n))]`
-/

namespace A201841.P12808231503344152842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201847 (n + 2) : ℝ) ^ (1 / (A039755 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201841.P12808231503344152842

/-! ## A201841.P3840589772872411786

`record[root(A201847(n+2), A039758(n))]`
-/

namespace A201841.P3840589772872411786
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201847 (n + 2) : ℝ) ^ (1 / (A039758 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201841.P3840589772872411786

/-!
# A201842: Number of zero-sum nX3 -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201842, there is no canonical definition to state claims against.
-/

/-! ## A201842.P8111141338361075086

`A201847(∑[n+2]+4)`
-/

namespace A201842.P8111141338361075086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201842.P8111141338361075086

/-! ## A201842.P14886207030319773665

`or(1, A201847(A167614(n+1)))`
-/

namespace A201842.P14886207030319773665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201847 (A167614 (n + 1)).toNat)

end

end A201842.P14886207030319773665

/-! ## A201842.P4502888842076831177

`record[A010054(n)*A201847(n+3)]`
-/

namespace A201842.P4502888842076831177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201847 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201842.P4502888842076831177

/-! ## A201842.P17169011517430392873

`record[gcd(A201847(n+5), A207383(n+1))]`
-/

namespace A201842.P17169011517430392873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201847 (n + 5)) (A207383 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201842.P17169011517430392873

/-! ## A201842.P6560475017079078344

`A201847(A167614(n+1))+A025466(n)`
-/

namespace A201842.P6560475017079078344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A167614 (n + 1)).toNat + A025466 n

end

end A201842.P6560475017079078344

/-!
# A201843: Number of zero-sum n X 4 -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201843, there is no canonical definition to state claims against.
-/

/-! ## A201843.P267336648893253976

`A201847(A374004(n+1))`
-/

namespace A201843.P267336648893253976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A374004 (n + 1)).toNat

end

end A201843.P267336648893253976

/-! ## A201843.P14717269275361588668

`A201847(A141214(n)+7)`
-/

namespace A201843.P14717269275361588668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A141214 n + 7).toNat

end

end A201843.P14717269275361588668

/-! ## A201843.P16819952996523634187

`A201847(A052905(n)+9)`
-/

namespace A201843.P16819952996523634187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A052905 n + 9).toNat

end

end A201843.P16819952996523634187

/-! ## A201843.P17839488273539848373

`A201847(A055999(n)+10)`
-/

namespace A201843.P17839488273539848373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A055999 n + 10).toNat

end

end A201843.P17839488273539848373

/-! ## A201843.P14143834109012340577

`A201847(eq[5, A066657(n)])`
-/

namespace A201843.P14143834109012340577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201843.P14143834109012340577

/-!
# A201844: Number of zero-sum nX5 -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201844, there is no canonical definition to state claims against.
-/

/-! ## A201844.P8201625594760447683

`A201847(A374005(n+1))`
-/

namespace A201844.P8201625594760447683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A374005 (n + 1)).toNat

end

end A201844.P8201625594760447683

/-! ## A201844.P13086802785242572219

`A201847(A167499(n+3))`
-/

namespace A201844.P13086802785242572219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A167499 (n + 3)).toNat

end

end A201844.P13086802785242572219

/-! ## A201844.P7560403280218704384

`A201847(A155212(n)+13)`
-/

namespace A201844.P7560403280218704384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A155212 n + 13).toNat

end

end A201844.P7560403280218704384

/-! ## A201844.P6730974806028915175

`A201847(A056000(n)+15)`
-/

namespace A201844.P6730974806028915175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A056000 n + 15).toNat

end

end A201844.P6730974806028915175

/-! ## A201844.P2120685912670442711

`A201847(eq[7, A066657(n)])`
-/

namespace A201844.P2120685912670442711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201844.P2120685912670442711

/-!
# A201845: Number of zero-sum nX6 -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201845, there is no canonical definition to state claims against.
-/

/-! ## A201845.P7557212495403699253

`A201847(∑[n+5]+16)`
-/

namespace A201845.P7557212495403699253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A201845.P7557212495403699253

/-!
# A201846: Number of zero-sum nX7 -1..1 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201846, there is no canonical definition to state claims against.
-/

/-! ## A201846.P8860405983516835403

`A201847(A374008(n+1))`
-/

namespace A201846.P8860405983516835403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201847 (A374008 (n + 1)).toNat

end

end A201846.P8860405983516835403

/-!
# A201848: Primes of the form 7n^2 - 2.

The programs for A201848, there is no canonical definition to state claims against.
-/

/-! ## A201848.P9667885481199856461

`p?[7*n²-2]`
-/

namespace A201848.P9667885481199856461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201848.P9667885481199856461

/-! ## A201848.P1711300875928025223

`record[p?[a(n-2)+28*n]]` with `a(0)=5, a(1)=2`
-/

namespace A201848.P1711300875928025223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  f2 (n - 2) + 28 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201848.P1711300875928025223

/-!
# A201849: Primes of the form 7n^2 - 3.

The programs for A201849, there is no canonical definition to state claims against.
-/

/-! ## A201849.P3160183870724425605

`p?[7*n²-3]`
-/

namespace A201849.P3160183870724425605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201849.P3160183870724425605

/-! ## A201849.P4317222854474310025

`or(1, p?[A158556(n)-4])`
-/

namespace A201849.P4317222854474310025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158556 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201849.P4317222854474310025

/-! ## A201849.P9398743077221889243

`or(1, p?[A158554(n+1)-2])`
-/

namespace A201849.P9398743077221889243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158554 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201849.P9398743077221889243

/-! ## A201849.P3496208619528565842

`A007318(∑[n])*p?[A158556(n)-4]`
-/

namespace A201849.P3496208619528565842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158556 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201849.P3496208619528565842

/-!
# A201850: Primes of the form 7n^2 - 4.

The programs for A201850, there is no canonical definition to state claims against.
-/

/-! ## A201850.P17926332012907296857

`p?[7*n²-4]`
-/

namespace A201850.P17926332012907296857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201850.P17926332012907296857

/-! ## A201850.P5251874766800643308

`or(2, p?[xor(4, 7*n²)])`
-/

namespace A201850.P5251874766800643308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (7 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201850.P5251874766800643308

/-! ## A201850.P17088112559236502935

`record[p?[a(n-2)+28*n]]` with `a(0)=3, a(1)=2`
-/

namespace A201850.P17088112559236502935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  f2 (n - 2) + 28 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201850.P17088112559236502935

/-!
# A201851: Primes of the form 7n^2 - 5.

The programs for A201851, there is no canonical definition to state claims against.
-/

/-! ## A201851.P17548996714388700899

`p?[7*n²-5]`
-/

namespace A201851.P17548996714388700899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201851.P17548996714388700899

/-! ## A201851.P18022181713297851792

`or(2, p?[A033582(n)-5])`
-/

namespace A201851.P18022181713297851792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201851.P18022181713297851792

/-!
# A201852: Primes of the form 7n^2 - 6.

The programs for A201852, there is no canonical definition to state claims against.
-/

/-! ## A201852.P1804468171186249212

`∩[A142641(n+1), A131878(n)]`
-/

namespace A201852.P1804468171186249212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201852.P1804468171186249212

/-! ## A201852.P6743956155513426843

`∩[A139506(n+1), A131878(n)]`
-/

namespace A201852.P6743956155513426843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201852.P6743956155513426843

/-! ## A201852.P12348574903257404102

`∩[A093359(n+1), A131878(n)]`
-/

namespace A201852.P12348574903257404102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201852.P12348574903257404102

/-! ## A201852.P5330208237457906821

`∩[A124826(n+1), A131878(n)]`
-/

namespace A201852.P5330208237457906821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201852.P5330208237457906821

/-! ## A201852.P6174319846593104839

`p?[7*n²-6]`
-/

namespace A201852.P6174319846593104839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201852.P6174319846593104839

/-!
# A201853: Primes of the form 7n^2 - 8.

The programs for A201853, there is no canonical definition to state claims against.
-/

/-! ## A201853.P5725396090145945425

`p?[7*n²-8]`
-/

namespace A201853.P5725396090145945425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201853.P5725396090145945425

/-! ## A201853.P17548834384024933569

`or(7, p?[(n+1)*28*n-1])`
-/

namespace A201853.P17548834384024933569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (28 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201853.P17548834384024933569

/-! ## A201853.P13698479806060871298

`gcd(11, A007318(n))*p?[A005919(n)-10]`
-/

namespace A201853.P13698479806060871298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201853.P13698479806060871298

/-!
# A201854: Primes of the form 7n^2 - 9.

The programs for A201854, there is no canonical definition to state claims against.
-/

/-! ## A201854.P852074998053353137

`p?[7*n²-9]`
-/

namespace A201854.P852074998053353137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201854.P852074998053353137

/-! ## A201854.P787648980965877845

`or(2, p?[7*n*(n-2)-2])`
-/

namespace A201854.P787648980965877845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) * ((n : ℤ) - 2)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201854.P787648980965877845

/-! ## A201854.P9022349353155064223

`C(A028310(n), n)*p?[A005919(n)-11]`
-/

namespace A201854.P9022349353155064223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A028310 n).toNat n : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201854.P9022349353155064223

/-! ## A201854.P13357295239964133068

`A007318(∑[n])*p?[A067727(n+1)-2]`
-/

namespace A201854.P13357295239964133068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067727 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201854.P13357295239964133068

/-! ## A201854.P9288559949302413468

`A000041(and(1, -n))*p?[A067727(n+1)-2]`
-/

namespace A201854.P9288559949302413468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067727 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201854.P9288559949302413468

/-! ## A201854.P10812577441527629054

`p?[A067727(n+1)-2]/A007318(C(n, n²))`
-/

namespace A201854.P10812577441527629054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067727 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A201854.P10812577441527629054

/-! ## A201854.P15579148199017234774

`A000041(C(2, n+2))*p?[A067727(n+1)-2]`
-/

namespace A201854.P15579148199017234774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067727 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201854.P15579148199017234774

/-! ## A201854.P1440955957481396813

`A020639(2*(n+1))/2*p?[A005919(n+1)-11]`
-/

namespace A201854.P1440955957481396813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 (n + 1) - 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A201854.P1440955957481396813

/-!
# A201855: Primes of the form 7n^2 - 10.

The programs for A201855, there is no canonical definition to state claims against.
-/

/-! ## A201855.P5083852812242838014

`p?[7*n²-10]`
-/

namespace A201855.P5083852812242838014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201855.P5083852812242838014

/-! ## A201855.P7940592389801292708

`or(1, p?[A033582(n)-10])`
-/

namespace A201855.P7940592389801292708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201855.P7940592389801292708

/-! ## A201855.P6372930014593265961

`or(1, p?[A067727(n+1)-3])`
-/

namespace A201855.P6372930014593265961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067727 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201855.P6372930014593265961

/-! ## A201855.P3427800254609344150

`A007318(∑[n])*p?[A033582(n)-10]`
-/

namespace A201855.P3427800254609344150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201855.P3427800254609344150

/-! ## A201855.P11882786324253782029

`p?[A033582(n)-10]/A007318(C(2, n))`
-/

namespace A201855.P11882786324253782029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n - 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201855.P11882786324253782029

/-!
# A201856: Primes of the form 8n^2 - 3.

The programs for A201856, the canonical program `A201856.P17992878745208772629` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201856 has offset 1).

The definition of A201856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201856.P17992878745208772629

`record[A201712(n+1)%xor(2, A201712(n+1))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201856

/-- `record[A201712(n+1)%xor(2, A201712(n+1))]` -/
def P17992878745208772629.Spec : Prop :=
  ∀ n, P17992878745208772629.a n = A201856 (n + 1)

theorem P17992878745208772629.correct : P17992878745208772629.Spec := by
  intro n
  simp only [A201856, Nat.add_sub_cancel]

end A201856

/-! ## A201856.P5995008499863374792

`∩[A108928(n+1), A201712(n+1)]`
-/

namespace A201856.P5995008499863374792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201856.P5995008499863374792

namespace A201856

/-- `∩[A108928(n+1), A201712(n+1)]` -/
def P5995008499863374792.Spec : Prop :=
  ∀ n, (P5995008499863374792.a n : ℤ) = A201856 (n + 1)

end A201856

/-! ## A201856.P12158032095163987750

`p?[8*n²-3]`
-/

namespace A201856.P12158032095163987750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201856.P12158032095163987750

namespace A201856

/-- `p?[8*n²-3]` -/
def P12158032095163987750.Spec : Prop :=
  ∀ n, P12158032095163987750.a n = A201856 (n + 1)

end A201856

/-! ## A201856.P3545130731777468021

`or(4, p?[(n+2)*8*n+5])`
-/

namespace A201856.P3545130731777468021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (8 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201856.P3545130731777468021

namespace A201856

/-- `or(4, p?[(n+2)*8*n+5])` -/
def P3545130731777468021.Spec : Prop :=
  ∀ n, (P3545130731777468021.a n : ℤ) = A201856 (n + 1)

end A201856

/-! ## A201856.P2968542980469835171

`∑{d}[p?[n*8*n-3], #]-1`
-/

namespace A201856.P2968542980469835171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (8 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A201856.P2968542980469835171

namespace A201856

/-- `∑{d}[p?[n*8*n-3], #]-1` -/
def P2968542980469835171.Spec : Prop :=
  ∀ n, P2968542980469835171.a n = A201856 (n + 1)

end A201856

/-! ## A201856.P10255979077547450057

`2*2*p?[n*8*n-3]/4`
-/

namespace A201856.P10255979077547450057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (8 * n) : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4))

end

end A201856.P10255979077547450057

namespace A201856

/-- `2*2*p?[n*8*n-3]/4` -/
def P10255979077547450057.Spec : Prop :=
  ∀ n, P10255979077547450057.a n = (A201856 (n + 1) : ℚ)

end A201856

/-! ## A201856.P9372175653218879735

`∩[A107003(n+1), A268581(n)]`
-/

namespace A201856.P9372175653218879735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201856.P9372175653218879735

namespace A201856

/-- `∩[A107003(n+1), A268581(n)]` -/
def P9372175653218879735.Spec : Prop :=
  ∀ n, (P9372175653218879735.a n : ℤ) = A201856 (n + 1)

end A201856

/-! ## A201856.P16881619219113914487

`∩[A107003(n+1), A108928(n+1)]`
-/

namespace A201856.P16881619219113914487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201856.P16881619219113914487

namespace A201856

/-- `∩[A107003(n+1), A108928(n+1)]` -/
def P16881619219113914487.Spec : Prop :=
  ∀ n, (P16881619219113914487.a n : ℤ) = A201856 (n + 1)

end A201856

/-! ## A201856.P9270608249436179439

`∩[A107003(n+1), A179207(n+1)]`
-/

namespace A201856.P9270608249436179439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201856.P9270608249436179439

namespace A201856

/-- `∩[A107003(n+1), A179207(n+1)]` -/
def P9270608249436179439.Spec : Prop :=
  ∀ n, (P9270608249436179439.a n : ℤ) = A201856 (n + 1)

end A201856

/-! ## A201856.P1934002450191411524

`∩[A107003(n+1), A201712(n+1)]`
-/

namespace A201856.P1934002450191411524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201856.P1934002450191411524

namespace A201856

/-- `∩[A107003(n+1), A201712(n+1)]` -/
def P1934002450191411524.Spec : Prop :=
  ∀ n, (P1934002450191411524.a n : ℤ) = A201856 (n + 1)

end A201856

/-!
# A201857: Primes of the form 8n^2 - 5.

The programs for A201857, there is no canonical definition to state claims against.
-/

/-! ## A201857.P10156300170375036931

`A201713(eq[2, and(2, A201713(n+1))]+1)`
-/

namespace A201857.P10156300170375036931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A201713 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201713 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A201857.P10156300170375036931

/-! ## A201857.P11227237185856746789

`A201713(lt[and(4, A201713(n+1)), 1]+1)`
-/

namespace A201857.P11227237185856746789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A201713 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201713 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A201857.P11227237185856746789

/-! ## A201857.P13943568760736543185

`∩[A201713(n+1), A258717(n+2)]`
-/

namespace A201857.P13943568760736543185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258717 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201857.P13943568760736543185

/-! ## A201857.P6620106453694622946

`∩[A139854(n+1), A201713(n+1)]`
-/

namespace A201857.P6620106453694622946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201857.P6620106453694622946

/-! ## A201857.P9814295275455543928

`∩[A139854(n+1), A271625(n+1)]`
-/

namespace A201857.P9814295275455543928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201857.P9814295275455543928

/-! ## A201857.P7840073285837082283

`∩[A139854(n+1), A258717(n+2)]`
-/

namespace A201857.P7840073285837082283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258717 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201857.P7840073285837082283

/-!
# A201858: Primes of the form 8n^2 - 7.

The programs for A201858, there is no canonical definition to state claims against.
-/

/-! ## A201858.P3256491582496567800

`∩[A139645(n+1), A161532(n)]`
-/

namespace A201858.P3256491582496567800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201858.P3256491582496567800

/-! ## A201858.P2373685364889680353

`∩[A139645(n+1), A201714(n+1)]`
-/

namespace A201858.P2373685364889680353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201858.P2373685364889680353

/-! ## A201858.P549611017057549236

`p?[8*n²-7]`
-/

namespace A201858.P549611017057549236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201858.P549611017057549236

/-! ## A201858.P12597906614710996585

`or(1, p?[n*8*n-7])`
-/

namespace A201858.P12597906614710996585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (8 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201858.P12597906614710996585

/-! ## A201858.P15360352415190022952

`abs(1-p?[n*8*n-7])+1`
-/

namespace A201858.P15360352415190022952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (8 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A201858.P15360352415190022952

/-! ## A201858.P14034503977150523268

`or(p?[A008527(n)-9], char[1])`
-/

namespace A201858.P14034503977150523268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201858.P14034503977150523268

/-!
# A201859: Primes of the form 8n^2 - 9.

The programs for A201859, the canonical program `A201859.P14595472453482322595` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201859 has offset 1).

The definition of A201859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201859.P14595472453482322595

`∩[A153037(2*n), A155702(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201859

/-- `∩[A153037(2*n), A155702(n+1)]` -/
def P14595472453482322595.Spec : Prop :=
  ∀ n, (P14595472453482322595.a n : ℤ) = A201859 (n + 1)

theorem P14595472453482322595.correct : P14595472453482322595.Spec := by
  intro n
  simp only [A201859, Nat.add_sub_cancel]

end A201859

/-! ## A201859.P124346230203287214

`∩[A134517(n+1), A153037(n)]`
-/

namespace A201859.P124346230203287214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201859.P124346230203287214

namespace A201859

/-- `∩[A134517(n+1), A153037(n)]` -/
def P124346230203287214.Spec : Prop :=
  ∀ n, (P124346230203287214.a n : ℤ) = A201859 (n + 1)

end A201859

/-! ## A201859.P6374841752964650662

`∩[A134517(n+1), A155702(n+1)]`
-/

namespace A201859.P6374841752964650662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201859.P6374841752964650662

namespace A201859

/-- `∩[A134517(n+1), A155702(n+1)]` -/
def P6374841752964650662.Spec : Prop :=
  ∀ n, (P6374841752964650662.a n : ℤ) = A201859 (n + 1)

end A201859

/-! ## A201859.P11101136126751491937

`p?[8*n²-9]`
-/

namespace A201859.P11101136126751491937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201859.P11101136126751491937

namespace A201859

/-- `p?[8*n²-9]` -/
def P11101136126751491937.Spec : Prop :=
  ∀ n, P11101136126751491937.a n = A201859 (n + 1)

end A201859

/-! ## A201859.P7366174052581122046

`abs(2-p?[(n+2)*8*n-1])+2`
-/

namespace A201859.P7366174052581122046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (8 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A201859.P7366174052581122046

namespace A201859

/-- `abs(2-p?[(n+2)*8*n-1])+2` -/
def P7366174052581122046.Spec : Prop :=
  ∀ n, P7366174052581122046.a n = A201859 (n + 1)

end A201859

/-! ## A201859.P12825956682114046414

`or(1, p?[A153037(2*n)])`
-/

namespace A201859.P12825956682114046414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201859.P12825956682114046414

namespace A201859

/-- `or(1, p?[A153037(2*n)])` -/
def P12825956682114046414.Spec : Prop :=
  ∀ n, P12825956682114046414.a n = A201859 (n + 1)

end A201859

/-! ## A201859.P11858373611031154094

`p?[A153037(2*n)]+A008683(8*n+4)`
-/

namespace A201859.P11858373611031154094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * n + 4)

end

end A201859.P11858373611031154094

namespace A201859

/-- `p?[A153037(2*n)]+A008683(8*n+4)` -/
def P11858373611031154094.Spec : Prop :=
  ∀ n, P11858373611031154094.a n = A201859 (n + 1)

end A201859

/-! ## A201859.P13834597170448906361

`gcd(2, A000040(n+2))*p?[A153037(2*n)]`
-/

namespace A201859.P13834597170448906361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201859.P13834597170448906361

namespace A201859

/-- `gcd(2, A000040(n+2))*p?[A153037(2*n)]` -/
def P13834597170448906361.Spec : Prop :=
  ∀ n, P13834597170448906361.a n = A201859 (n + 1)

end A201859

/-! ## A201859.P11975566652035361056

`A000045(gcd(n, n+1))*p?[A153037(2*n)]`
-/

namespace A201859.P11975566652035361056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201859.P11975566652035361056

namespace A201859

/-- `A000045(gcd(n, n+1))*p?[A153037(2*n)]` -/
def P11975566652035361056.Spec : Prop :=
  ∀ n, P11975566652035361056.a n = A201859 (n + 1)

end A201859

/-!
# A201860: Primes of the form 9n^2 - 2.

The programs for A201860, there is no canonical definition to state claims against.
-/

/-! ## A201860.P3379897426047740991

`∩[(3*n)²-2, A179273(n+2)]`
-/

namespace A201860.P3379897426047740991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P3379897426047740991

/-! ## A201860.P13541200290862278964

`∩[A028871(n+1), A259055(n)]`
-/

namespace A201860.P13541200290862278964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P13541200290862278964

/-! ## A201860.P3958015872278648238

`∩[A099228(n+1), A259055(n)]`
-/

namespace A201860.P3958015872278648238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P3958015872278648238

/-! ## A201860.P5911377777249130356

`∩[A179273(n+1), A259055(n)]`
-/

namespace A201860.P5911377777249130356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P5911377777249130356

/-! ## A201860.P17616518341895044308

`∩[A344990(n+1), A259055(n)]`
-/

namespace A201860.P17616518341895044308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P17616518341895044308

/-! ## A201860.P9424805016303674079

`∩[A179273(n+1), A195042(n)-2]`
-/

namespace A201860.P9424805016303674079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P9424805016303674079

/-! ## A201860.P16802977656164119443

`record[A059772(3*(2*n+1))]`
-/

namespace A201860.P16802977656164119443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (3 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201860.P16802977656164119443

/-! ## A201860.P9912645927525418055

`record[A164314(3*(2*n+1))]`
-/

namespace A201860.P9912645927525418055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (3 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201860.P9912645927525418055

/-! ## A201860.P15577501652603155292

`∩[A113425(n+1), A259055(n)]`
-/

namespace A201860.P15577501652603155292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P15577501652603155292

/-! ## A201860.P14770770721818698861

`∩[A053001(n+2), A259055(n)]`
-/

namespace A201860.P14770770721818698861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P14770770721818698861

/-! ## A201860.P1480572493094433834

`∩[A094786(n+1), A259055(n)]`
-/

namespace A201860.P1480572493094433834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P1480572493094433834

/-! ## A201860.P3594033424493716023

`∩[A179273(n+1), A194273(n)-2]`
-/

namespace A201860.P3594033424493716023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194273 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201860.P3594033424493716023

/-!
# A201862: Number of ways to place k nonattacking bishops on an n X n board, sum over all k>=0.

The programs for A201862, there is no canonical definition to state claims against.
-/

/-! ## A201862.P6286195593311079260

`A216078(n+1)*A216332(n+1)`
-/

namespace A201862.P6286195593311079260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 (n + 1) * A216332 (n + 1)

end

end A201862.P6286195593311079260

/-! ## A201862.P2146924135046101059

`A011972(floor(n²/2))*A011972(ceil(n²/2))`
-/

namespace A201862.P2146924135046101059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 ⌊(n ^ 2 : ℚ) / 2⌋.toNat * A011972 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

end

end A201862.P2146924135046101059

/-! ## A201862.P15827794984566543205

`A011971(∑[n%2+n])*A011972(floor(n²/2))`
-/

namespace A201862.P15827794984566543205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) * A011972 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A201862.P15827794984566543205

/-! ## A201862.P16603935474914791262

`(A363453(n)+A000110(n))*A216332(n+1)`
-/

namespace A201862.P16603935474914791262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A363453 n + A000110 n) * A216332 (n + 1)

end

end A201862.P16603935474914791262

/-! ## A201862.P7211688471732792665

`A011972(floor(n²/2))*A106436(A110654((n+2)²))`
-/

namespace A201862.P7211688471732792665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 ⌊(n ^ 2 : ℚ) / 2⌋.toNat * A106436 (A110654 ((n + 2) ^ 2)).toNat

end

end A201862.P7211688471732792665

/-! ## A201862.P4636275947490700753

`(A363453(n)+A000110(n))*A011971(∑[n%2+n])`
-/

namespace A201862.P4636275947490700753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A363453 n + A000110 n) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201862.P4636275947490700753

/-! ## A201862.P17875679744419128628

`(A363453(n)+A000110(n))*A106436(A110654((n+2)²))`
-/

namespace A201862.P17875679744419128628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A363453 n + A000110 n) * A106436 (A110654 ((n + 2) ^ 2)).toNat

end

end A201862.P17875679744419128628

/-!
# A201864: a(n) = ((F(n-1)+F(n-2))-1)/2 if F(n) is odd, otherwise a(n) = ((F(n-1)+F(n-2))-2)/2, where F(n) = A000045(n) is the n-th Fibonacci number.

The programs for A201864, the canonical program `A201864.P17315140707414157825` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201864 has offset 1).

The definition of A201864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201864.P17315140707414157825

`1/2*(A000045(n+1)-A131534(n+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A201864

/-- `1/2*(A000045(n+1)-A131534(n+2))` -/
def P17315140707414157825.Spec : Prop :=
  ∀ n, P17315140707414157825.a n = (A201864 (n + 1) : ℚ)

end A201864

/-! ## A201864.P10908504359504875811

`(n+1)²%3+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A201864.P10908504359504875811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n + 1) ^ 2 % 3 + (a (n - 1) + a (n - 2))

end

end A201864.P10908504359504875811

namespace A201864

/-- `(n+1)²%3+a(n-1)+a(n-2)` -/
def P10908504359504875811.Spec : Prop :=
  ∀ n, (P10908504359504875811.a n : ℤ) = A201864 (n + 1)

end A201864

/-! ## A201864.P8240995541900994504

`A173173(n+1)-1`
-/

namespace A201864.P8240995541900994504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (n + 1) - 1

end

end A201864.P8240995541900994504

namespace A201864

/-- `A173173(n+1)-1` -/
def P8240995541900994504.Spec : Prop :=
  ∀ n, P8240995541900994504.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P11774426386028941941

`A173673(2*n+3)-1`
-/

namespace A201864.P11774426386028941941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n + 3) - 1

end

end A201864.P11774426386028941941

namespace A201864

/-- `A173673(2*n+3)-1` -/
def P11774426386028941941.Spec : Prop :=
  ∀ n, P11774426386028941941.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P10730359653824544369

`floor(∑[A000045(n)/(2*ϕ)])`
-/

namespace A201864.P10730359653824544369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℝ) / (2 * Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A201864.P10730359653824544369

namespace A201864

/-- `floor(∑[A000045(n)/(2*ϕ)])` -/
def P10730359653824544369.Spec : Prop :=
  ∀ n, P10730359653824544369.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P5366119119767583634

`A212804(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A201864.P5366119119767583634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A212804 n + a (n - 3)

end

end A201864.P5366119119767583634

namespace A201864

/-- `A212804(n)+a(n-3)` -/
def P5366119119767583634.Spec : Prop :=
  ∀ n, P5366119119767583634.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P6696596575004021230

`A000045(n-1)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A201864.P6696596575004021230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000045 (n - 1) + a (n - 3)

end

end A201864.P6696596575004021230

namespace A201864

/-- `A000045(n-1)+a(n-3)` -/
def P6696596575004021230.Spec : Prop :=
  ∀ n, P6696596575004021230.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P827506900348268492

`A094686(n)-A204418(n)`
-/

namespace A201864.P827506900348268492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A204418 n

end

end A201864.P827506900348268492

namespace A201864

/-- `A094686(n)-A204418(n)` -/
def P827506900348268492.Spec : Prop :=
  ∀ n, P827506900348268492.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P9098691521129171481

`A094686(n)-A057078(n)²`
-/

namespace A201864.P9098691521129171481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A057078 n ^ 2

end

end A201864.P9098691521129171481

namespace A201864

/-- `A094686(n)-A057078(n)²` -/
def P9098691521129171481.Spec : Prop :=
  ∀ n, P9098691521129171481.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P1095737702496950690

`A079962(n)-(A004697(n)+1)`
-/

namespace A201864.P1095737702496950690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 n - (A004697 n + 1)

end

end A201864.P1095737702496950690

namespace A201864

/-- `A079962(n)-(A004697(n)+1)` -/
def P1095737702496950690.Spec : Prop :=
  ∀ n, P1095737702496950690.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P17550355903760426550

`A293553(n+3)-A293552(n)`
-/

namespace A201864.P17550355903760426550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (n + 3) - A293552 n

end

end A201864.P17550355903760426550

namespace A201864

/-- `A293553(n+3)-A293552(n)` -/
def P17550355903760426550.Spec : Prop :=
  ∀ n, P17550355903760426550.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P16326347001844174450

`floor(∑[A212804(A028310(n))/2])`
-/

namespace A201864.P16326347001844174450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A201864.P16326347001844174450

namespace A201864

/-- `floor(∑[A212804(A028310(n))/2])` -/
def P16326347001844174450.Spec : Prop :=
  ∀ n, P16326347001844174450.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P8852427609686814776

`A094686(n)-A010892(n+1)²`
-/

namespace A201864.P8852427609686814776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A010892 (n + 1) ^ 2

end

end A201864.P8852427609686814776

namespace A201864

/-- `A094686(n)-A010892(n+1)²` -/
def P8852427609686814776.Spec : Prop :=
  ∀ n, P8852427609686814776.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P509774938674451967

`A094686(n)-A049347(n+1)²`
-/

namespace A201864.P509774938674451967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A049347 (n + 1) ^ 2

end

end A201864.P509774938674451967

namespace A201864

/-- `A094686(n)-A049347(n+1)²` -/
def P509774938674451967.Spec : Prop :=
  ∀ n, P509774938674451967.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P2170486257760448748

`A004695(n+1)-A079978(n+1)`
-/

namespace A201864.P2170486257760448748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) - A079978 (n + 1)

end

end A201864.P2170486257760448748

namespace A201864

/-- `A004695(n+1)-A079978(n+1)` -/
def P2170486257760448748.Spec : Prop :=
  ∀ n, P2170486257760448748.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P17833916667123058917

`A094686(n)-A128834(2*n+1)²`
-/

namespace A201864.P17833916667123058917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A128834 (2 * n + 1) ^ 2

end

end A201864.P17833916667123058917

namespace A201864

/-- `A094686(n)-A128834(2*n+1)²` -/
def P17833916667123058917.Spec : Prop :=
  ∀ n, P17833916667123058917.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P11055461208270984192

`A173433(n+1)-A173432(n+1)!`
-/

namespace A201864.P11055461208270984192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (n + 1) - (Nat.factorial (A173432 (n + 1)).toNat : ℤ)

end

end A201864.P11055461208270984192

namespace A201864

/-- `A173433(n+1)-A173432(n+1)!` -/
def P11055461208270984192.Spec : Prop :=
  ∀ n, P11055461208270984192.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P14113292737154154874

`A004695(n+1)+A011655(n+1)-1`
-/

namespace A201864.P14113292737154154874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A011655 (n + 1) - 1)

end

end A201864.P14113292737154154874

namespace A201864

/-- `A004695(n+1)+A011655(n+1)-1` -/
def P14113292737154154874.Spec : Prop :=
  ∀ n, P14113292737154154874.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P5681861983035436884

`A147997(n+1)-(A079978(n+1)+1)`
-/

namespace A201864.P5681861983035436884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (n + 1) - (A079978 (n + 1) + 1)

end

end A201864.P5681861983035436884

namespace A201864

/-- `A147997(n+1)-(A079978(n+1)+1)` -/
def P5681861983035436884.Spec : Prop :=
  ∀ n, P5681861983035436884.a n = A201864 (n + 1)

end A201864

/-! ## A201864.P9220134918821190414

`A004695(n+1)+A267208(n+1)-1`
-/

namespace A201864.P9220134918821190414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + (A267208 (n + 1) - 1)

end

end A201864.P9220134918821190414

namespace A201864

/-- `A004695(n+1)+A267208(n+1)-1` -/
def P9220134918821190414.Spec : Prop :=
  ∀ n, P9220134918821190414.a n = A201864 (n + 1)

end A201864

/-!
# A201865: Expansion of 1/((1-3*x)*(1+7*x)).

The programs for A201865, the canonical program `A201865.P16448246508659881829` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201865 has offset 0).

The definition of A201865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+4x-21x^2))` (program `A201865.P16448246508659881829`, by `A201865.P16448246508659881829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201865.P16448246508659881829

`ogf(1/(1+4x-21x^2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201865

/-- `ogf(1/(1+4x-21x^2))` -/
def P16448246508659881829.Spec : Prop :=
  ∀ n, P16448246508659881829.a n = A201865 n

theorem P16448246508659881829.correct : P16448246508659881829.Spec := by
  intro n
  simp only [A201865]

end A201865

/-! ## A201865.P6441272473170889147

`(3^(n+1)+7*(-7)^n)/10`
-/

namespace A201865.P6441272473170889147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) + 7 * (-7) ^ n : ℚ) / 10

end

end A201865.P6441272473170889147

namespace A201865

/-- `(3^(n+1)+7*(-7)^n)/10` -/
def P6441272473170889147.Spec : Prop :=
  ∀ n, P6441272473170889147.a n = (A201865 n : ℚ)

end A201865

/-! ## A201865.P10563455882723423528

`3^n-7*a(n-1)` with `a(0)=1`
-/

namespace A201865.P10563455882723423528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - 7 * a (n - 1)

end

end A201865.P10563455882723423528

namespace A201865

/-- `3^n-7*a(n-1)` -/
def P10563455882723423528.Spec : Prop :=
  ∀ n, P10563455882723423528.a n = A201865 n

end A201865

/-! ## A201865.P17052623762293184323

`∑[A033999(n)*A083300(n)]`
-/

namespace A201865.P17052623762293184323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A083300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201865.P17052623762293184323

namespace A201865

/-- `∑[A033999(n)*A083300(n)]` -/
def P17052623762293184323.Spec : Prop :=
  ∀ n, P17052623762293184323.a n = A201865 n

end A201865

/-! ## A201865.P10310681275739641316

`∑[A083300(n)*A121238(2*n+1)]`
-/

namespace A201865.P10310681275739641316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083300 n * A121238 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201865.P10310681275739641316

namespace A201865

/-- `∑[A083300(n)*A121238(2*n+1)]` -/
def P10310681275739641316.Spec : Prop :=
  ∀ n, P10310681275739641316.a n = A201865 n

end A201865

/-!
# A201866: Number of zero-sum -1..1 arrays of n elements with first and second differences also in -1..1.

The programs for A201866, there is no canonical definition to state claims against.
-/

/-! ## A201866.P12162384718235417678

`A201873(∑[n+1])`
-/

namespace A201866.P12162384718235417678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201866.P12162384718235417678

/-! ## A201866.P16377634605695427696

`or(1, A201873(A000217(n+1)))`
-/

namespace A201866.P16377634605695427696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201873 (A000217 (n + 1)).toNat)

end

end A201866.P16377634605695427696

/-! ## A201866.P14415806447531619980

`A201873(A000217(n+1))-A347323(val(n+1, 10))`
-/

namespace A201866.P14415806447531619980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000217 (n + 1)).toNat - A347323 (SequenceMachineLib.valuation (n + 1) 10)

end

end A201866.P14415806447531619980

/-! ## A201866.P17339816936440143286

`A000111(val(n+1, 10))*A201873(A000217(n+1))`
-/

namespace A201866.P17339816936440143286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (SequenceMachineLib.valuation (n + 1) 10) * A201873 (A000217 (n + 1)).toNat

end

end A201866.P17339816936440143286

/-! ## A201866.P3504159228751024876

`((-1)^A007318(n))²*A201873(A000217(n+1))`
-/

namespace A201866.P3504159228751024876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A201873 (A000217 (n + 1)).toNat : ℚ)

end

end A201866.P3504159228751024876

/-! ## A201866.P11073584473421810380

`A123519(A057944(n))*A201873(A000217(n+1))`
-/

namespace A201866.P11073584473421810380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123519 (A057944 n).toNat * A201873 (A000217 (n + 1)).toNat

end

end A201866.P11073584473421810380

/-! ## A201866.P14949024188442630015

`A201873(A000217(n+1))^A275730(A000124(n))`
-/

namespace A201866.P14949024188442630015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201873 (A000217 (n + 1)).toNat : ℚ) ^ (A275730 (A000124 n).toNat : ℤ)

end

end A201866.P14949024188442630015

/-! ## A201866.P728351552294028778

`A123519(A000217(2*n))*A201873(A000217(n+1))`
-/

namespace A201866.P728351552294028778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123519 (A000217 (2 * n)).toNat * A201873 (A000217 (n + 1)).toNat

end

end A201866.P728351552294028778

/-! ## A201866.P25321211952971832

`A201873(A000217(n+1))^(A004956(n)/A026351(n))`
-/

namespace A201866.P25321211952971832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201873 (A000217 (n + 1)).toNat : ℝ) ^ ((A004956 n : ℚ) / (A026351 n : ℚ) : ℝ)

end

end A201866.P25321211952971832

/-!
# A201867: Number of zero-sum -2..2 arrays of n elements with first and second differences also in -2..2.

The programs for A201867, there is no canonical definition to state claims against.
-/

/-! ## A201867.P8713225653039230341

`A201873(∑[n+2])`
-/

namespace A201867.P8713225653039230341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201867.P8713225653039230341

/-! ## A201867.P17115844304452811530

`record[A201873(A000096(A002260(n+1)))]`
-/

namespace A201867.P17115844304452811530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201867.P17115844304452811530

/-! ## A201867.P9365506227197544274

`record[A201873(A000096(A027750(n+1)))]`
-/

namespace A201867.P9365506227197544274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000096 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201867.P9365506227197544274

/-! ## A201867.P5538981795286378527

`record[A201873(A000096(A097285(n+1)))]`
-/

namespace A201867.P5538981795286378527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000096 (A097285 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201867.P5538981795286378527

/-! ## A201867.P17611003158494735301

`record[A201873(A000096(A278539(n+1)))]`
-/

namespace A201867.P17611003158494735301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000096 (A278539 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201867.P17611003158494735301

/-!
# A201868: Number of zero-sum -3..3 arrays of n elements with first and second differences also in -3..3.

The programs for A201868, there is no canonical definition to state claims against.
-/

/-! ## A201868.P2569405218145139121

`A201873(∑[n+3]+1)`
-/

namespace A201868.P2569405218145139121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201868.P2569405218145139121

/-! ## A201868.P2917307544358814787

`or(1, A201873(A034856(n+2)))`
-/

namespace A201868.P2917307544358814787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201873 (A034856 (n + 2)).toNat)

end

end A201868.P2917307544358814787

/-! ## A201868.P2419658811099992438

`or(1, A201873(A055999(n)+4))`
-/

namespace A201868.P2419658811099992438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201873 (A055999 n + 4).toNat)

end

end A201868.P2419658811099992438

/-! ## A201868.P16633034852392799497

`A201873(A055999(n)+4)%A042032(n)`
-/

namespace A201868.P16633034852392799497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201873 (A055999 n + 4).toNat) (A042032 n)

end

end A201868.P16633034852392799497

/-! ## A201868.P11994987255812605130

`gcd(A000038(n), A201873(A055999(n)+4))`
-/

namespace A201868.P11994987255812605130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A201873 (A055999 n + 4).toNat)

end

end A201868.P11994987255812605130

/-!
# A201869: Number of zero-sum -4..4 arrays of n elements with first and second differences also in -4..4.

The programs for A201869, there is no canonical definition to state claims against.
-/

/-! ## A201869.P9612267038874863257

`A201873(A027379(n+2))`
-/

namespace A201869.P9612267038874863257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A027379 (n + 2)).toNat

end

end A201869.P9612267038874863257

/-! ## A201869.P17352088504798811130

`A201873(A055998(n+2))`
-/

namespace A201869.P17352088504798811130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A055998 (n + 2)).toNat

end

end A201869.P17352088504798811130

/-! ## A201869.P7420081103741986844

`A201873(A155212(n)+5)`
-/

namespace A201869.P7420081103741986844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A155212 n + 5).toNat

end

end A201869.P7420081103741986844

/-! ## A201869.P16055016510683353304

`A201873(A056000(n)+7)`
-/

namespace A201869.P16055016510683353304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A056000 n + 7).toNat

end

end A201869.P16055016510683353304

/-! ## A201869.P16997935043658516632

`A201873(Δ[A006503(n+1)])`
-/

namespace A201869.P16997935043658516632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n).toNat

end

end A201869.P16997935043658516632

/-! ## A201869.P18199194129240209380

`A201873(Δ[A006416(n+2)])`
-/

namespace A201869.P18199194129240209380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n).toNat

end

end A201869.P18199194129240209380

/-! ## A201869.P17674348577668929162

`A201873(A052905(n+1)+2)`
-/

namespace A201869.P17674348577668929162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A052905 (n + 1) + 2).toNat

end

end A201869.P17674348577668929162

/-! ## A201869.P18069442937560338412

`record[A201873(A027379(A008611(n)))]`
-/

namespace A201869.P18069442937560338412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201869.P18069442937560338412

/-! ## A201869.P17121445742076382351

`record[A201873(A027379(A008612(n)))]`
-/

namespace A201869.P17121445742076382351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A027379 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201869.P17121445742076382351

/-! ## A201869.P3380586368111648016

`record[A201873(A027379(A057979(n)))]`
-/

namespace A201869.P3380586368111648016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A027379 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201869.P3380586368111648016

/-!
# A201870: Number of zero-sum -5..5 arrays of n elements with first and second differences also in -5..5.

The programs for A201870, there is no canonical definition to state claims against.
-/

/-! ## A201870.P8522144763766706440

`A201873(A046691(n+3))`
-/

namespace A201870.P8522144763766706440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A046691 (n + 3)).toNat

end

end A201870.P8522144763766706440

/-! ## A201870.P6731330106027410347

`A201873(Δ[A023545(n+1)])`
-/

namespace A201870.P6731330106027410347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n).toNat

end

end A201870.P6731330106027410347

/-! ## A201870.P17495950051446054804

`A201873(A000096(n+4)-3)`
-/

namespace A201870.P17495950051446054804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000096 (n + 4) - 3).toNat

end

end A201870.P17495950051446054804

/-! ## A201870.P11896248834878711631

`A201873(eq[4, A141675(n+1)])`
-/

namespace A201870.P11896248834878711631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201870.P11896248834878711631

/-! ## A201870.P12498688710457197776

`A201873(eq[6, A225084(n+1)])`
-/

namespace A201870.P12498688710457197776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201870.P12498688710457197776

/-! ## A201870.P14436254112835390494

`A201873(Δ[A006416(n+3)]-1)`
-/

namespace A201870.P14436254112835390494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n - 1).toNat

end

end A201870.P14436254112835390494

/-! ## A201870.P10449627709540834705

`A201873(A000217(n+4)+n+1)`
-/

namespace A201870.P10449627709540834705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A201870.P10449627709540834705

/-! ## A201870.P4628557015309121940

`record[A201873(A038722(A167499(n)))]`
-/

namespace A201870.P4628557015309121940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201870.P4628557015309121940

/-!
# A201871: Number of zero-sum -6..6 arrays of n elements with first and second differences also in -6..6.

The programs for A201871, there is no canonical definition to state claims against.
-/

/-! ## A201871.P5120216203499181264

`A201873(A052905(n+3))`
-/

namespace A201871.P5120216203499181264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A052905 (n + 3)).toNat

end

end A201871.P5120216203499181264

/-! ## A201871.P2828266557571113956

`A201873(A055999(n+3)+1)`
-/

namespace A201871.P2828266557571113956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A055999 (n + 3) + 1).toNat

end

end A201871.P2828266557571113956

/-! ## A201871.P12920479181867575532

`A201873(A000124(n+6)-6)`
-/

namespace A201871.P12920479181867575532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000124 (n + 6) - 6).toNat

end

end A201871.P12920479181867575532

/-! ## A201871.P12038945891685919864

`A201873(A022856(n+10)-7)`
-/

namespace A201871.P12038945891685919864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A022856 (n + 10) - 7).toNat

end

end A201871.P12038945891685919864

/-! ## A201871.P8766935062658062538

`A201873(Δ[Δ[A006504(n+1)]])`
-/

namespace A201871.P8766935062658062538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n).toNat

end

end A201871.P8766935062658062538

/-! ## A201871.P12060659977960599494

`A201873(Δ[A023545(n+2)]-1)`
-/

namespace A201871.P12060659977960599494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n - 1).toNat

end

end A201871.P12060659977960599494

/-! ## A201871.P12227747190178357244

`A201873(A000217(n+5)+n+1)`
-/

namespace A201871.P12227747190178357244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A201871.P12227747190178357244

/-! ## A201871.P3011314924143412354

`A201873(xor(1, 2*n)+A155212(n)+13)`
-/

namespace A201871.P3011314924143412354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 ((Nat.xor 1 (2 * n) : ℤ) + (A155212 n + 13)).toNat

end

end A201871.P3011314924143412354

/-!
# A201872: Number of zero-sum -7..7 arrays of n elements with first and second differences also in -7..7.

The programs for A201872, there is no canonical definition to state claims against.
-/

/-! ## A201872.P17588394685655673060

`A201873(A055999(n+4))`
-/

namespace A201872.P17588394685655673060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A055999 (n + 4)).toNat

end

end A201872.P17588394685655673060

/-! ## A201872.P11067285639589931635

`A201873(Δ[A096957(n)]+9)`
-/

namespace A201872.P11067285639589931635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n + 9).toNat

end

end A201872.P11067285639589931635

/-! ## A201872.P9130793861138338541

`A201873(A046691(n+5)-2)`
-/

namespace A201872.P9130793861138338541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A046691 (n + 5) - 2).toNat

end

end A201872.P9130793861138338541

/-! ## A201872.P3453653398801450282

`A201873(A000124(n+7)-7)`
-/

namespace A201872.P3453653398801450282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000124 (n + 7) - 7).toNat

end

end A201872.P3453653398801450282

/-! ## A201872.P13762246199175037778

`A201873(A008706(n+4)+A000096(n+1))`
-/

namespace A201872.P13762246199175037778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A008706 (n + 4) + A000096 (n + 1)).toNat

end

end A201872.P13762246199175037778

/-! ## A201872.P13690988546108599199

`A201873(A008585(n+4)+A000217(n+4))`
-/

namespace A201872.P13690988546108599199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A008585 (n + 4) + A000217 (n + 4)).toNat

end

end A201872.P13690988546108599199

/-!
# A201873: T(n,k)=Number of zero-sum -k..k arrays of n elements with first and second differences also in -k..k.

The programs for A201873, there is no canonical definition to state claims against.
-/

/-! ## A201873.P8793906142523750554

`A000194(A024654(A184703(n+1))^3)`
-/

namespace A201873.P8793906142523750554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A024654 (A184703 (n + 1)).toNat ^ 3).toNat

end

end A201873.P8793906142523750554

/-! ## A201873.P16336384189434554507

`A006046(A184703(n+1)%A079018(n+1))`
-/

namespace A201873.P16336384189434554507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (Int.tmod (A184703 (n + 1)) (A079018 (n + 1))).toNat

end

end A201873.P16336384189434554507

/-! ## A201873.P6668219062299154868

`A006046(A184703(n+1))%A247666(3*n+2)`
-/

namespace A201873.P6668219062299154868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006046 (A184703 (n + 1)).toNat) (A247666 (3 * n + 2))

end

end A201873.P6668219062299154868

/-! ## A201873.P3434557732430331472

`A006046(A184703(n+1))^A007318(A001497(n))`
-/

namespace A201873.P3434557732430331472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006046 (A184703 (n + 1)).toNat : ℚ) ^ (A007318 (A001497 n).toNat : ℤ)

end

end A201873.P3434557732430331472

/-! ## A201873.P12471685320970928696

`A000041(A015161(n)²)*A006046(A184703(n+1))`
-/

namespace A201873.P12471685320970928696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A015161 n ^ 2).toNat * A006046 (A184703 (n + 1)).toNat

end

end A201873.P12471685320970928696

/-!
# A201874: Number of zero-sum -n..n arrays of 3 elements with first and second differences also in -n..n.

The programs for A201874, the canonical program `A201874.P4390422078047873358` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201874 has offset 1).

The definition of A201874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201874.P4390422078047873358

`Δ[(n+1)*ceil((n+1)²/3)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201874

/-- `Δ[(n+1)*ceil((n+1)²/3)]` -/
def P4390422078047873358.Spec : Prop :=
  ∀ n, P4390422078047873358.a n = A201874 (n + 1)

theorem P4390422078047873358.correct : P4390422078047873358.Spec := by
  intro n
  simp only [A201874, Nat.add_sub_cancel]

end A201874

/-! ## A201874.P9134283233989716686

`Δ[lcm(3, n+1)/3]+∑[2*(n+1)]`
-/

namespace A201874.P9134283233989716686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A201874.P9134283233989716686

namespace A201874

/-- `Δ[lcm(3, n+1)/3]+∑[2*(n+1)]` -/
def P9134283233989716686.Spec : Prop :=
  ∀ n, P9134283233989716686.a n = (A201874 (n + 1) : ℚ)

end A201874

/-! ## A201874.P16677588269497099098

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=3, a(1)=5, a(2)=15, a(3)=21, a(4)=27, a(5)=47, a(6)=57`
-/

namespace A201874.P16677588269497099098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 15, 21, 27, 47, 57] fun n a =>
  a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6) + a (n - 7)

end

end A201874.P16677588269497099098

namespace A201874

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P16677588269497099098.Spec : Prop :=
  ∀ n, P16677588269497099098.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P10676874825541657304

`∑[2*A195140(A004396(n+1))]+1`
-/

namespace A201874.P10676874825541657304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195140 (A004396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201874.P10676874825541657304

namespace A201874

/-- `∑[2*A195140(A004396(n+1))]+1` -/
def P10676874825541657304.Spec : Prop :=
  ∀ n, P10676874825541657304.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P12104762403655131243

`∑[A203648(n+1)+A008611(n)]+1`
-/

namespace A201874.P12104762403655131243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (n + 1) + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201874.P12104762403655131243

namespace A201874

/-- `∑[A203648(n+1)+A008611(n)]+1` -/
def P12104762403655131243.Spec : Prop :=
  ∀ n, P12104762403655131243.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P18039391317058065912

`A211440(n+1)-A002378(A002264(n+1))`
-/

namespace A201874.P18039391317058065912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 (n + 1) - A002378 (A002264 (n + 1)).toNat

end

end A201874.P18039391317058065912

namespace A201874

/-- `A211440(n+1)-A002378(A002264(n+1))` -/
def P18039391317058065912.Spec : Prop :=
  ∀ n, P18039391317058065912.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P17490502472898174496

`A211440(n+1)-A110660(A004396(n+1))`
-/

namespace A201874.P17490502472898174496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 (n + 1) - A110660 (A004396 (n + 1)).toNat

end

end A201874.P17490502472898174496

namespace A201874

/-- `A211440(n+1)-A110660(A004396(n+1))` -/
def P17490502472898174496.Spec : Prop :=
  ∀ n, P17490502472898174496.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P10525859194171981604

`Δ[(n+1)*A032765(n)]+1`
-/

namespace A201874.P10525859194171981604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A201874.P10525859194171981604

namespace A201874

/-- `Δ[(n+1)*A032765(n)]+1` -/
def P10525859194171981604.Spec : Prop :=
  ∀ n, P10525859194171981604.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P14198528378083087116

`abs(Δ[(n+1)*A008810(n+1)])`
-/

namespace A201874.P14198528378083087116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A201874.P14198528378083087116

namespace A201874

/-- `abs(Δ[(n+1)*A008810(n+1)])` -/
def P14198528378083087116.Spec : Prop :=
  ∀ n, P14198528378083087116.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P16434926782220182526

`Δ[(n+1)*floor(A005563(n)/3)]+1`
-/

namespace A201874.P16434926782220182526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A005563 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A201874.P16434926782220182526

namespace A201874

/-- `Δ[(n+1)*floor(A005563(n)/3)]+1` -/
def P16434926782220182526.Spec : Prop :=
  ∀ n, P16434926782220182526.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P9950742011742892370

`A002378(n+1)+Δ[gcd(n+1, A000292(n+1))]`
-/

namespace A201874.P9950742011742892370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000292 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A201874.P9950742011742892370

namespace A201874

/-- `A002378(n+1)+Δ[gcd(n+1, A000292(n+1))]` -/
def P9950742011742892370.Spec : Prop :=
  ∀ n, P9950742011742892370.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P4166488769325176242

`Δ[A051176(n+1)]+∑[2*(n+1)]`
-/

namespace A201874.P4166488769325176242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A201874.P4166488769325176242

namespace A201874

/-- `Δ[A051176(n+1)]+∑[2*(n+1)]` -/
def P4166488769325176242.Spec : Prop :=
  ∀ n, P4166488769325176242.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P2924944326510376860

`A002378(n+1)+Δ[A051176(n+1)]`
-/

namespace A201874.P2924944326510376860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + (f1 (n + 1) - f1 n)

end

end A201874.P2924944326510376860

namespace A201874

/-- `A002378(n+1)+Δ[A051176(n+1)]` -/
def P2924944326510376860.Spec : Prop :=
  ∀ n, P2924944326510376860.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P352853043916064200

`Δ[A167875(n)+A051176(n+1)]-1`
-/

namespace A201874.P352853043916064200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A051176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A201874.P352853043916064200

namespace A201874

/-- `Δ[A167875(n)+A051176(n+1)]-1` -/
def P352853043916064200.Spec : Prop :=
  ∀ n, P352853043916064200.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P13445341682096720771

`A211440(n+1)-∑[A142150(A042965(n+2))]`
-/

namespace A201874.P13445341682096720771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A042965 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211440 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201874.P13445341682096720771

namespace A201874

/-- `A211440(n+1)-∑[A142150(A042965(n+2))]` -/
def P13445341682096720771.Spec : Prop :=
  ∀ n, P13445341682096720771.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P4439892571064978308

`Δ[A060789(2*(n+1))]+∑[2*(n+1)]`
-/

namespace A201874.P4439892571064978308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A201874.P4439892571064978308

namespace A201874

/-- `Δ[A060789(2*(n+1))]+∑[2*(n+1)]` -/
def P4439892571064978308.Spec : Prop :=
  ∀ n, P4439892571064978308.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P1158608405810778433

`Δ[A215573(2*(n+1))]+∑[2*(n+1)]`
-/

namespace A201874.P1158608405810778433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215573 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A201874.P1158608405810778433

namespace A201874

/-- `Δ[A215573(2*(n+1))]+∑[2*(n+1)]` -/
def P1158608405810778433.Spec : Prop :=
  ∀ n, P1158608405810778433.a n = A201874 (n + 1)

end A201874

/-! ## A201874.P3562867705753793675

`∑[A254667(A203648(n+1))+A008611(n)]`
-/

namespace A201874.P3562867705753793675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A203648 (n + 1)).toNat + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201874.P3562867705753793675

namespace A201874

/-- `∑[A254667(A203648(n+1))+A008611(n)]` -/
def P3562867705753793675.Spec : Prop :=
  ∀ n, P3562867705753793675.a n = A201874 (n + 1)

end A201874

/-!
# A201875: Number of zero-sum -n..n arrays of 4 elements with first and second differences also in -n..n.

The programs for A201875, there is no canonical definition to state claims against.
-/

/-! ## A201875.P6568543983036540076

`A201873(A055999(n)+10)`
-/

namespace A201875.P6568543983036540076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A055999 n + 10).toNat

end

end A201875.P6568543983036540076

/-! ## A201875.P13617394684606647076

`record[A201873(A167499(n)-1)]`
-/

namespace A201875.P13617394684606647076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201875.P13617394684606647076

/-! ## A201875.P12146837099078416277

`A201873(A167614(n+2)+1)`
-/

namespace A201875.P12146837099078416277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167614 (n + 2) + 1).toNat

end

end A201875.P12146837099078416277

/-! ## A201875.P8702560099468519316

`A201873(A166136(n+2)-2)`
-/

namespace A201875.P8702560099468519316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A166136 (n + 2) - 2).toNat

end

end A201875.P8702560099468519316

/-! ## A201875.P10903012844165666406

`A201873(A167487(n+2)-3)`
-/

namespace A201875.P10903012844165666406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167487 (n + 2) - 3).toNat

end

end A201875.P10903012844165666406

/-! ## A201875.P8469363901005843569

`record[A201873(A013322(n+1)+4)]`
-/

namespace A201875.P8469363901005843569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A013322 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201875.P8469363901005843569

/-! ## A201875.P17899362631147093292

`A201873(A166136(n+1)+1+n)`
-/

namespace A201875.P17899362631147093292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A201875.P17899362631147093292

/-! ## A201875.P14946528748212804381

`A201873(Δ[A023545(n+1)-n²])`
-/

namespace A201875.P14946528748212804381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (f1 (n + 1) - f1 n).toNat

end

end A201875.P14946528748212804381

/-! ## A201875.P1266384066688146674

`A201873(A080036(A167614(n+1)))`
-/

namespace A201875.P1266384066688146674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A201875.P1266384066688146674

/-!
# A201876: Number of zero-sum -n..n arrays of 5 elements with first and second differences also in -n..n.

The programs for A201876, there is no canonical definition to state claims against.
-/

/-! ## A201876.P8612796064318645376

`A201873(A167499(n+3))`
-/

namespace A201876.P8612796064318645376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167499 (n + 3)).toNat

end

end A201876.P8612796064318645376

/-! ## A201876.P15774193574335197245

`A201873(A166136(n+3)-1)`
-/

namespace A201876.P15774193574335197245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A166136 (n + 3) - 1).toNat

end

end A201876.P15774193574335197245

/-! ## A201876.P3784928209342108708

`A201873(A167487(n+3)-2)`
-/

namespace A201876.P3784928209342108708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167487 (n + 3) - 2).toNat

end

end A201876.P3784928209342108708

/-! ## A201876.P567815902569415320

`record[root(A201873(n+15), A201873(n+11))]`
-/

namespace A201876.P567815902569415320
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201873 (n + 15) : ℝ) ^ (1 / (A201873 (n + 11) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201876.P567815902569415320

/-! ## A201876.P9852690280705073638

`A201873(A038722(Δ[A023545(n+1)]))`
-/

namespace A201876.P9852690280705073638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A201876.P9852690280705073638

/-!
# A201877: Number of zero-sum -n..n arrays of 6 elements with first and second differences also in -n..n.

The programs for A201877, there is no canonical definition to state claims against.
-/

/-! ## A201877.P11191743601867549692

`A201873(A166136(n+4))`
-/

namespace A201877.P11191743601867549692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A166136 (n + 4)).toNat

end

end A201877.P11191743601867549692

/-! ## A201877.P2243368252445342466

`A201873(A167487(n+4)-1)`
-/

namespace A201877.P2243368252445342466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167487 (n + 4) - 1).toNat

end

end A201877.P2243368252445342466

/-! ## A201877.P9214291209116947865

`A201873(A167614(n+4)+3)`
-/

namespace A201877.P9214291209116947865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167614 (n + 4) + 3).toNat

end

end A201877.P9214291209116947865

/-! ## A201877.P2562120575910991046

`A201873(A000124(n+5)+5)`
-/

namespace A201877.P2562120575910991046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000124 (n + 5) + 5).toNat

end

end A201877.P2562120575910991046

/-! ## A201877.P17035195341043311808

`A201873(A046691(n+3)+10)`
-/

namespace A201877.P17035195341043311808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A046691 (n + 3) + 10).toNat

end

end A201877.P17035195341043311808

/-!
# A201878: Number of zero-sum -n..n arrays of 7 elements with first and second differences also in -n..n.

The programs for A201878, there is no canonical definition to state claims against.
-/

/-! ## A201878.P13057945751589525998

`A201873(A167487(n+5))`
-/

namespace A201878.P13057945751589525998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167487 (n + 5)).toNat

end

end A201878.P13057945751589525998

/-! ## A201878.P9694255994588334867

`A201873(A166136(n+5)+1)`
-/

namespace A201878.P9694255994588334867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A166136 (n + 5) + 1).toNat

end

end A201878.P9694255994588334867

/-! ## A201878.P5588066563537492375

`A201873(A167499(n+5)+2)`
-/

namespace A201878.P5588066563537492375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A167499 (n + 5) + 2).toNat

end

end A201878.P5588066563537492375

/-! ## A201878.P11828002311961591039

`A201873(A000217(n+6)+7)`
-/

namespace A201878.P11828002311961591039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A000217 (n + 6) + 7).toNat

end

end A201878.P11828002311961591039

/-! ## A201878.P16079647162315317073

`A201873(A161680(n+7)+7)`
-/

namespace A201878.P16079647162315317073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A161680 (n + 7) + 7).toNat

end

end A201878.P16079647162315317073

/-! ## A201878.P18148269412986342673

`A201873(A052905(n+3)+12)`
-/

namespace A201878.P18148269412986342673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201873 (A052905 (n + 3) + 12).toNat

end

end A201878.P18148269412986342673

/-!
# A201879: Numbers n such that sigma_2(n) - n^2 is a square.

The programs for A201879, there is no canonical definition to state claims against.
-/

/-! ## A201879.P3432909861998257734

`eq[A074206(n), A193960(A056191(n+2))]`
-/

namespace A201879.P3432909861998257734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193960 (A056191 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201879.P3432909861998257734

/-! ## A201879.P9914192080345800737

`record[gcd(A072501(n+1), A225481(n))]`
-/

namespace A201879.P9914192080345800737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072501 (n + 1)) (A225481 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201879.P9914192080345800737

/-! ## A201879.P13315572947964149390

`filter[A342525(n+1), A190938(#)]`
-/

namespace A201879.P13315572947964149390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A201879.P13315572947964149390

/-! ## A201879.P524409473167570821

`∩[A211485(n+1), A342525(n+1)]`
-/

namespace A201879.P524409473167570821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201879.P524409473167570821

/-! ## A201879.P1879660004730838461

`∩[A319239(n+1), A342525(n+1)]`
-/

namespace A201879.P1879660004730838461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201879.P1879660004730838461

/-!
# A201883: The number of simple labeled graphs on n nodes such that i) all connected components have exactly one cycle, ii) all vertices have degree at most 3, iii) vertices of degree 3 are on a cycle.

The programs for A201883, there is no canonical definition to state claims against.
-/

/-! ## A201883.P5443043487116625079

`A230980(ceil((6*n+1)*a(n-1)*n/2))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A201883.P5443043487116625079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A230980 ⌈((6 * n + 1 : ℤ) * a (n - 1) : ℚ) * ((n : ℚ) / 2)⌉.toNat

end

end A201883.P5443043487116625079

/-! ## A201883.P18426623067477811392

`A300586(A045883(n))`
-/

namespace A201883.P18426623067477811392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300586 (A045883 n).toNat

end

end A201883.P18426623067477811392

/-!
# A201884: Number of zero-sum nX1 -2..2 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201884, there is no canonical definition to state claims against.
-/

/-! ## A201884.P15342600631021598564

`A201888(∑[n]+1)`
-/

namespace A201884.P15342600631021598564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201888 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201884.P15342600631021598564

/-! ## A201884.P6555310821942887480

`A201888(A000124(n))+char[10]`
-/

namespace A201884.P6555310821942887480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201888 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201884.P6555310821942887480

/-! ## A201884.P6961435515430843302

`A050782(n)*A201888(A000124(n))`
-/

namespace A201884.P6961435515430843302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n * A201888 (A000124 n).toNat

end

end A201884.P6961435515430843302

/-! ## A201884.P48173868226432127

`A055642(n)*A201888(A000124(n))`
-/

namespace A201884.P48173868226432127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A201888 (A000124 n).toNat

end

end A201884.P48173868226432127

/-! ## A201884.P14736632749232970338

`A201888(A000124(n))%A000051(n)`
-/

namespace A201884.P14736632749232970338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201888 (A000124 n).toNat) (A000051 n)

end

end A201884.P14736632749232970338

/-!
# A201885: Number of zero-sum nX2 -2..2 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201885, there is no canonical definition to state claims against.
-/

/-! ## A201885.P13502093861742593181

`A201888(∑[n+1]+2)`
-/

namespace A201885.P13502093861742593181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201888 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201885.P13502093861742593181

/-! ## A201885.P11955427251907030717

`record[gcd(A201888(n+1), A259776(n))]`
-/

namespace A201885.P11955427251907030717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201888 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201885.P11955427251907030717

/-! ## A201885.P17977753530046935035

`record[gcd(A201888(n+2), A247505(n))]`
-/

namespace A201885.P17977753530046935035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201888 (n + 2)) (A247505 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201885.P17977753530046935035

/-! ## A201885.P4372705733248725359

`record[root(A201888(n+2), A201873(n+1))]`
-/

namespace A201885.P4372705733248725359
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201888 (n + 2) : ℝ) ^ (1 / (A201873 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201885.P4372705733248725359

/-!
# A201886: Number of zero-sum nX3 -2..2 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201886, there is no canonical definition to state claims against.
-/

/-! ## A201886.P3715062116645051390

`A201888(∑[n+2]+4)`
-/

namespace A201886.P3715062116645051390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201888 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201886.P3715062116645051390

/-! ## A201886.P11792027928830879400

`record[A201888(Δ[A293403(n)])]`
-/

namespace A201886.P11792027928830879400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201888 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201886.P11792027928830879400

/-! ## A201886.P18248014773714452928

`or(1, A201888(A167614(n+1)))`
-/

namespace A201886.P18248014773714452928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201888 (A167614 (n + 1)).toNat)

end

end A201886.P18248014773714452928

/-!
# A201887: Number of zero-sum n X 4 -2..2 arrays with every element equal to at least one horizontal or vertical neighbor.

The programs for A201887, there is no canonical definition to state claims against.
-/

/-! ## A201887.P16976428582839666046

`A201888(A020752(n+1))`
-/

namespace A201887.P16976428582839666046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201888 (A020752 (n + 1)).toNat

end

end A201887.P16976428582839666046

/-! ## A201887.P547947006893195979

`A201888(A145018(n+4))`
-/

namespace A201887.P547947006893195979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201888 (A145018 (n + 4)).toNat

end

end A201887.P547947006893195979

/-!
# A201890: Decimal expansion of the nonzero number x satisfying x^2+2x+1=e^x.

The programs for A201890, there is no canonical definition to state claims against.
-/

/-! ## A201890.P8864223540342066407

`A226278(n)-A000007(n)`
-/

namespace A201890.P8864223540342066407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226278 (n + 1) - A000007 n

end

end A201890.P8864223540342066407

/-! ## A201890.P14121110119083334256

`A226278(n)-A000038(n)/2`
-/

namespace A201890.P14121110119083334256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226278 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A201890.P14121110119083334256

/-! ## A201890.P4761095051696262937

`and(A133489(n+1), A226278(n))`
-/

namespace A201890.P4761095051696262937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133489 (n + 1)) (A226278 (n + 1))

end

end A201890.P4761095051696262937

/-! ## A201890.P4707177366486341087

`and(A153893(n), A226278(n))`
-/

namespace A201890.P4707177366486341087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A226278 (n + 1))

end

end A201890.P4707177366486341087

/-! ## A201890.P725327764253853759

`and(A086224(n), A226278(n))`
-/

namespace A201890.P725327764253853759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A226278 (n + 1))

end

end A201890.P725327764253853759

/-! ## A201890.P12199364423345445209

`and(A086225(n), A226278(n))`
-/

namespace A201890.P12199364423345445209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A226278 (n + 1))

end

end A201890.P12199364423345445209

/-! ## A201890.P14936684559751889042

`and(A196305(n), A226278(n))`
-/

namespace A201890.P14936684559751889042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196305 n) (A226278 (n + 1))

end

end A201890.P14936684559751889042

/-! ## A201890.P6515672433312478330

`and(A198276(n), A226278(n))`
-/

namespace A201890.P6515672433312478330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A226278 (n + 1))

end

end A201890.P6515672433312478330

/-! ## A201890.P3948804955603470241

`and(A226278(n), A291557(n))`
-/

namespace A201890.P3948804955603470241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226278 (n + 1)) (A291557 n)

end

end A201890.P3948804955603470241

/-! ## A201890.P323974895541486333

`and(A201914(n), A226278(n))`
-/

namespace A201890.P323974895541486333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201914 n) (A226278 (n + 1))

end

end A201890.P323974895541486333

/-! ## A201890.P2374835134056003823

`and(A226278(n), A304615(n))`
-/

namespace A201890.P2374835134056003823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226278 (n + 1)) (A304615 n)

end

end A201890.P2374835134056003823

/-! ## A201890.P10677204999794945717

`and(A226278(n), A278131(n))`
-/

namespace A201890.P10677204999794945717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226278 (n + 1)) (A278131 n)

end

end A201890.P10677204999794945717

/-! ## A201890.P921804773269132713

`and(A130567(n+1), A226278(n))`
-/

namespace A201890.P921804773269132713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130567 (n + 1)) (A226278 (n + 1))

end

end A201890.P921804773269132713

/-! ## A201890.P7640103196558591093

`and(A187560(n), A226278(n))`
-/

namespace A201890.P7640103196558591093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187560 n) (A226278 (n + 1))

end

end A201890.P7640103196558591093

/-! ## A201890.P13294049914764809914

`and(A165133(n), A226278(n))`
-/

namespace A201890.P13294049914764809914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165133 n) (A226278 (n + 1))

end

end A201890.P13294049914764809914

/-! ## A201890.P8490879468812672360

`and(A188530(n+1), A226278(n))`
-/

namespace A201890.P8490879468812672360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188530 (n + 1)) (A226278 (n + 1))

end

end A201890.P8490879468812672360

/-! ## A201890.P12262712514636901109

`xor(A000007(n²), A226278(n))`
-/

namespace A201890.P12262712514636901109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n ^ 2)) (A226278 (n + 1))

end

end A201890.P12262712514636901109

