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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A213800: T(n,k)=Number of n X n 0..k symmetric arrays with every row summing to floor(n*k/2).

The programs for A213800, there is no canonical definition to state claims against.
-/

/-! ## A213800.P3813927610017689927

`A206551(A063804(n+3))`
-/

namespace A213800.P3813927610017689927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A063804 (n + 3)).toNat

end

end A213800.P3813927610017689927

/-! ## A213800.P6480445533855312622

`A102800(or(A025875(n), A063804(n+3)))`
-/

namespace A213800.P6480445533855312622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (Int.lor (A025875 n) (A063804 (n + 3))).toNat

end

end A213800.P6480445533855312622

/-! ## A213800.P3371238094246657589

`A072649(n^A324362(n))`
-/

namespace A213800.P3371238094246657589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A324362 n : ℤ))).toNat

end

end A213800.P3371238094246657589

/-!
# A213801: Number of 3 X 3 0..n symmetric arrays with all rows summing to floor(n*3/2).

The programs for A213801, the canonical program `A213801.P10196525806075667594` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213801 has offset 1).

The definition of A213801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064412, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213801.P10196525806075667594

`A064412(n+2)-A077043((2*(n+1)+1-(-1)^(n+1))/4)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A213801

/-- `A064412(n+2)-A077043((2*(n+1)+1-(-1)^(n+1))/4)` -/
def P10196525806075667594.Spec : Prop :=
  ∀ n, P10196525806075667594.a n = A213801 (n + 1)

theorem P10196525806075667594.correct : P10196525806075667594.Spec := by
  intro n
  simp only [A213801, Nat.add_sub_cancel]

end A213801

/-! ## A213801.P3862981791407017782

`∑[A008264(n+1)-a(n-1)]+1` with `a(0)=3`
-/

namespace A213801.P3862981791407017782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A008264 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A213801.P3862981791407017782

namespace A213801

/-- `∑[A008264(n+1)-a(n-1)]+1` -/
def P3862981791407017782.Spec : Prop :=
  ∀ n, P3862981791407017782.a n = A213801 (n + 1)

end A213801

/-! ## A213801.P10091792077466596309

`A256524(n+1)+A019298(n+1)`
-/

namespace A213801.P10091792077466596309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 (n + 1) + A019298 (n + 1)

end

end A213801.P10091792077466596309

namespace A213801

/-- `A256524(n+1)+A019298(n+1)` -/
def P10091792077466596309.Spec : Prop :=
  ∀ n, P10091792077466596309.a n = A213801 (n + 1)

end A213801

/-! ## A213801.P15585610570432912538

`A256524(n+1)+∑[A077043(n+1)]`
-/

namespace A213801.P15585610570432912538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213801.P15585610570432912538

namespace A213801

/-- `A256524(n+1)+∑[A077043(n+1)]` -/
def P15585610570432912538.Spec : Prop :=
  ∀ n, P15585610570432912538.a n = A213801 (n + 1)

end A213801

/-! ## A213801.P4252767198623163978

`A064412(n+3)-A005448(n+3)`
-/

namespace A213801.P4252767198623163978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 3) - A005448 (n + 3)

end

end A213801.P4252767198623163978

namespace A213801

/-- `A064412(n+3)-A005448(n+3)` -/
def P4252767198623163978.Spec : Prop :=
  ∀ n, P4252767198623163978.a n = A213801 (n + 1)

end A213801

/-! ## A213801.P15345918944481938455

`Δ[A275112(n+2)-A006003(n+2)]`
-/

namespace A213801.P15345918944481938455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275112 (n + 2) - A006003 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213801.P15345918944481938455

namespace A213801

/-- `Δ[A275112(n+2)-A006003(n+2)]` -/
def P15345918944481938455.Spec : Prop :=
  ∀ n, P15345918944481938455.a n = A213801 (n + 1)

end A213801

/-! ## A213801.P8460468358606672391

`A064412(n+3)-Δ[A006003(n+2)]`
-/

namespace A213801.P8460468358606672391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 3) - (f1 (n + 1) - f1 n)

end

end A213801.P8460468358606672391

namespace A213801

/-- `A064412(n+3)-Δ[A006003(n+2)]` -/
def P8460468358606672391.Spec : Prop :=
  ∀ n, P8460468358606672391.a n = A213801 (n + 1)

end A213801

/-!
# A213802: Number of 4X4 0..n symmetric arrays with all rows summing to 2*n.

The programs for A213802, there is no canonical definition to state claims against.
-/

/-! ## A213802.P8765591592972851030

`A213800(∑[n+3]+7)`
-/

namespace A213802.P8765591592972851030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A213802.P8765591592972851030

/-!
# A213803: Number of 5 X 5 0..n symmetric arrays with all rows summing to floor(n*5/2).

The programs for A213803, there is no canonical definition to state claims against.
-/

/-! ## A213803.P2388502064326042397

`A213800(A167499(n+3))`
-/

namespace A213803.P2388502064326042397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A167499 (n + 3)).toNat

end

end A213803.P2388502064326042397

/-! ## A213803.P682500858457070501

`A213800(A155212(n)+13)`
-/

namespace A213803.P682500858457070501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A155212 n + 13).toNat

end

end A213803.P682500858457070501

/-! ## A213803.P3521063878929129782

`A213800(eq[7, A066657(n)])`
-/

namespace A213803.P3521063878929129782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213803.P3521063878929129782

/-!
# A213804: Number of 6 X 6 0..n symmetric arrays with all rows summing to 3*n.

The programs for A213804, there is no canonical definition to state claims against.
-/

/-! ## A213804.P789279099990121694

`A213800(A166136(n+3))`
-/

namespace A213804.P789279099990121694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A166136 (n + 3)).toNat

end

end A213804.P789279099990121694

/-! ## A213804.P501550990837947683

`A213800(A155212(n)+14)`
-/

namespace A213804.P501550990837947683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A155212 n + 14).toNat

end

end A213804.P501550990837947683

/-! ## A213804.P14272120062297417480

`A213800(A056000(n)+16)`
-/

namespace A213804.P14272120062297417480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A056000 n + 16).toNat

end

end A213804.P14272120062297417480

/-!
# A213805: Number of 7 X 7 0..n symmetric arrays with all rows summing to floor(n*7/2).

The programs for A213805, there is no canonical definition to state claims against.
-/

/-! ## A213805.P16030281235116876218

`A213800(A166136(n+4)+1)`
-/

namespace A213805.P16030281235116876218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A166136 (n + 4) + 1).toNat

end

end A213805.P16030281235116876218

/-! ## A213805.P10205648135800936261

`A213800(A167499(n+4)+2)`
-/

namespace A213805.P10205648135800936261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (A167499 (n + 4) + 2).toNat

end

end A213805.P10205648135800936261

/-!
# A213807: a(n) = Sum_{0<=i<j<k<=n} L(i)*L(j)*L(k), where L(m) is the m-th Lucas number A000032(m).

The programs for A213807, there is no canonical definition to state claims against.
-/

/-! ## A213807.P16986295779384887221

`A137722(A214951(n))`
-/

namespace A213807.P16986295779384887221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137722 (A214951 n).toNat

end

end A213807.P16986295779384887221

/-!
# A213811: Numbers k such that k and k^3 are sums of two twin primes.

The programs for A213811, there is no canonical definition to state claims against.
-/

/-! ## A213811.P1678433682704581095

`2*∩[A014574(n+1), A172494(n+1)]`
-/

namespace A213811.P1678433682704581095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213811.P1678433682704581095

/-! ## A213811.P15532740052630488606

`A004277(∩[A014574(n+1), A172494(n+1)])`
-/

namespace A213811.P15532740052630488606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A213811.P15532740052630488606

/-! ## A213811.P4923983603983450544

`A005843(∩[A014574(n+1), A172494(n+1)])`
-/

namespace A213811.P4923983603983450544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A213811.P4923983603983450544

/-!
# A213812: a(n) = smallest m for which the n-th Carmichael number A002997(n) can be written as p^2*(m+1) - p*m.

The programs for A213812, there is no canonical definition to state claims against.
-/

/-! ## A213812.P8981746533597791474

`A324975(n+1)/2-2`
-/

namespace A213812.P8981746533597791474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324975 (n + 1) : ℚ) / 2 - 2

end

end A213812.P8981746533597791474

/-! ## A213812.P13669851019141347118

`A273943(A324975(n+1))-2`
-/

namespace A213812.P13669851019141347118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A324975 (n + 1)).toNat - 2

end

end A213812.P13669851019141347118

/-! ## A213812.P6815669930292544873

`A014682(A324975(n+1)-4)`
-/

namespace A213812.P6815669930292544873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A324975 (n + 1) - 4).toNat

end

end A213812.P6815669930292544873

/-! ## A213812.P9991513614392574494

`A038572(A324975(n+1)-4)`
-/

namespace A213812.P9991513614392574494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A324975 (n + 1) - 4).toNat

end

end A213812.P9991513614392574494

/-! ## A213812.P6837051548173402354

`A175126(A324975(n+1)-4)`
-/

namespace A213812.P6837051548173402354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A324975 (n + 1) - 4).toNat

end

end A213812.P6837051548173402354

/-! ## A213812.P10380267206195928469

`A063277(A324975(n+1))`
-/

namespace A213812.P10380267206195928469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (A324975 (n + 1)).toNat

end

end A213812.P10380267206195928469

/-! ## A213812.P4030054329565964169

`A004524(A324975(n+1)-3)`
-/

namespace A213812.P4030054329565964169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A324975 (n + 1) - 3).toNat

end

end A213812.P4030054329565964169

/-! ## A213812.P11740204569673580081

`A004525(A324975(n+1)-4)`
-/

namespace A213812.P11740204569673580081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A324975 (n + 1) - 4).toNat

end

end A213812.P11740204569673580081

/-! ## A213812.P8079770840624891986

`A025480(A324975(n+1)-4)`
-/

namespace A213812.P8079770840624891986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A324975 (n + 1) - 4).toNat

end

end A213812.P8079770840624891986

/-! ## A213812.P6080428527069897613

`A026741(A324975(n+1)-4)`
-/

namespace A213812.P6080428527069897613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A324975 (n + 1) - 4).toNat

end

end A213812.P6080428527069897613

/-! ## A213812.P7613360406856040268

`A000463(A324975(n+1)-5)`
-/

namespace A213812.P7613360406856040268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A324975 (n + 1) - 5).toNat

end

end A213812.P7613360406856040268

/-! ## A213812.P9173764870542976542

`A003602(A324975(n+1)-5)`
-/

namespace A213812.P9173764870542976542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A324975 (n + 1) - 5).toNat

end

end A213812.P9173764870542976542

/-! ## A213812.P8050201079696186588

`A008619(A324975(n+1)-5)`
-/

namespace A213812.P8050201079696186588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A324975 (n + 1) - 5).toNat

end

end A213812.P8050201079696186588

/-!
# A213814: Primes that are sums of three, five and seven consecutive primes.

The programs for A213814, there is no canonical definition to state claims against.
-/

/-! ## A213814.P10361424706221834845

`∩[A082246(n+1), A211170(n+1)]`
-/

namespace A213814.P10361424706221834845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213814.P10361424706221834845

/-!
# A213815: Arithmetic mean of next a(n) successive nonnegative integers is prime.

The programs for A213815, the canonical program `A213815.P11762082547027423412` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213815 has offset 1).

The definition of A213815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213815.P17631174130873142471

`A214362(n+1)-Δ[A004442(n)]+1`
-/

namespace A213815.P17631174130873142471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214362 (n + 1) - (f1 (n + 1) - f1 n) + 1

end

end A213815.P17631174130873142471

namespace A213815

/-- `A214362(n+1)-Δ[A004442(n)]+1` -/
def P17631174130873142471.Spec : Prop :=
  ∀ n, P17631174130873142471.a n = A213815 (n + 1)

end A213815

/-! ## A213815.P16814571326503139764

`xor(A074723(a(n-1)), A214362(n+1))` with `a(0)=5`
-/

namespace A213815.P16814571326503139764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor (A074723 (a (n - 1)).toNat) (A214362 (n + 1))

end

end A213815.P16814571326503139764

namespace A213815

/-- `xor(A074723(a(n-1)), A214362(n+1))` -/
def P16814571326503139764.Spec : Prop :=
  ∀ n, P16814571326503139764.a n = A213815 (n + 1)

end A213815

/-! ## A213815.P12107173887755087575

`A004442(A214362(n+1)-Δ[A004442(n)])`
-/

namespace A213815.P12107173887755087575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A214362 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A213815.P12107173887755087575

namespace A213815

/-- `A004442(A214362(n+1)-Δ[A004442(n)])` -/
def P12107173887755087575.Spec : Prop :=
  ∀ n, P12107173887755087575.a n = A213815 (n + 1)

end A213815

/-! ## A213815.P11762082547027423412

`Δ[A000034(n)+2*A107817(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A213815

/-- `Δ[A000034(n)+2*A107817(n)]` -/
def P11762082547027423412.Spec : Prop :=
  ∀ n, P11762082547027423412.a n = A213815 (n + 1)

theorem P11762082547027423412.correct : P11762082547027423412.Spec := by
  intro n
  simp only [A213815, Nat.add_sub_cancel]

end A213815

/-! ## A213815.P15555764691553097697

`A033999(n)+Δ[2*A107817(n)]`
-/

namespace A213815.P15555764691553097697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (f1 (n + 1) - f1 n)

end

end A213815.P15555764691553097697

namespace A213815

/-- `A033999(n)+Δ[2*A107817(n)]` -/
def P15555764691553097697.Spec : Prop :=
  ∀ n, P15555764691553097697.a n = A213815 (n + 1)

end A213815

/-! ## A213815.P17905226289683118298

`A010673(n+1)+A214362(n+1)-A010673(n)`
-/

namespace A213815.P17905226289683118298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) + (A214362 (n + 1) - A010673 n)

end

end A213815.P17905226289683118298

namespace A213815

/-- `A010673(n+1)+A214362(n+1)-A010673(n)` -/
def P17905226289683118298.Spec : Prop :=
  ∀ n, P17905226289683118298.a n = A213815 (n + 1)

end A213815

/-! ## A213815.P9873968458158068377

`A280560(n+2)+A214362(n+1)`
-/

namespace A213815.P9873968458158068377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (n + 2) + A214362 (n + 1)

end

end A213815.P9873968458158068377

namespace A213815

/-- `A280560(n+2)+A214362(n+1)` -/
def P9873968458158068377.Spec : Prop :=
  ∀ n, P9873968458158068377.a n = A213815 (n + 1)

end A213815

/-! ## A213815.P8382771975272197856

`A004442(A214362(n+1)+A004442(n))-n`
-/

namespace A213815.P8382771975272197856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A214362 (n + 1) + A004442 n).toNat - (n : ℤ)

end

end A213815.P8382771975272197856

namespace A213815

/-- `A004442(A214362(n+1)+A004442(n))-n` -/
def P8382771975272197856.Spec : Prop :=
  ∀ n, P8382771975272197856.a n = A213815 (n + 1)

end A213815

/-! ## A213815.P14775816324378492698

`A214362(n+1)+A057079(3*n+1)`
-/

namespace A213815.P14775816324378492698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214362 (n + 1) + A057079 (3 * n + 1)

end

end A213815.P14775816324378492698

namespace A213815

/-- `A214362(n+1)+A057079(3*n+1)` -/
def P14775816324378492698.Spec : Prop :=
  ∀ n, P14775816324378492698.a n = A213815 (n + 1)

end A213815

/-!
# A213816: Tribonacci sequences A000073 and A001590 interleaved.

The programs for A213816, the canonical program `A213816.P2608015547155929940` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213816 has offset 1).

The definition of A213816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213816.P2608015547155929940

`a(n-gcd(2, n))+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213816

/-- `a(n-gcd(2, n))+a(n-3)` -/
def P2608015547155929940.Spec : Prop :=
  ∀ n, (P2608015547155929940.a n : ℤ) = A213816 (n + 1)

theorem P2608015547155929940.correct : P2608015547155929940.Spec := by
  intro n
  simp only [A213816, Nat.add_sub_cancel]

end A213816

/-! ## A213816.P8755789884653596445

`a(and(n-1, -2))+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A213816.P8755789884653596445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-2)).toNat + a (n - 3)

end

end A213816.P8755789884653596445

namespace A213816

/-- `a(and(n-1, -2))+a(n-3)` -/
def P8755789884653596445.Spec : Prop :=
  ∀ n, (P8755789884653596445.a n : ℤ) = A213816 (n + 1)

end A213816

/-! ## A213816.P3655947827396882375

`a(xor(1, n-(n+1)%2))+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A213816.P3655947827396882375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (Int.xor 1 ((n : ℤ) - (((n + 1) % 2 : ℕ) : ℤ))).toNat + a (n - 3)

end

end A213816.P3655947827396882375

namespace A213816

/-- `a(xor(1, n-(n+1)%2))+a(n-3)` -/
def P3655947827396882375.Spec : Prop :=
  ∀ n, (P3655947827396882375.a n : ℤ) = A213816 (n + 1)

end A213816

/-! ## A213816.P7178364265294298661

`a(n-A000034(n+1))+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A213816.P7178364265294298661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a ((n : ℤ) - A000034 (n + 1)).toNat + a (n - 3)

end

end A213816.P7178364265294298661

namespace A213816

/-- `a(n-A000034(n+1))+a(n-3)` -/
def P7178364265294298661.Spec : Prop :=
  ∀ n, (P7178364265294298661.a n : ℤ) = A213816 (n + 1)

end A213816

/-! ## A213816.P15141904887836263170

`A308189(n+5)+A308189(n+5)-A308189(n+7)`
-/

namespace A213816.P15141904887836263170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (n + 5) + (A308189 (n + 5) - A308189 (n + 7))

end

end A213816.P15141904887836263170

namespace A213816

/-- `A308189(n+5)+A308189(n+5)-A308189(n+7)` -/
def P15141904887836263170.Spec : Prop :=
  ∀ n, P15141904887836263170.a n = A213816 (n + 1)

end A213816

/-!
# A213817: Numbers n with the property that cyclically right-shifting by 2 positions divides n by 9 (leading 0's omitted).

The programs for A213817, the canonical program `A213817.P17993172992210890025` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213817 has offset 1).

The definition of A213817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213817.P17993172992210890025

`9/91*(2+n%9)*(10^(6*floor((n+9)/9))-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213817

/-- `9/91*(2+n%9)*(10^(6*floor((n+9)/9))-1)` -/
def P17993172992210890025.Spec : Prop :=
  ∀ n, P17993172992210890025.a n = (A213817 (n + 1) : ℚ)

end A213817

/-!
# A213818: Antidiagonal sums of the convolution array A213773.

The programs for A213818, the canonical program `A213818.P2159520274598490436` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213818 has offset 1).

The definition of A213818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213818.P15017622879973053243

`(2*(n+1)-(n+1)²+3*(n+1)^4)/4`
-/

namespace A213818.P15017622879973053243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - ((n + 1) ^ 2 : ℤ) + (3 * (n + 1) ^ 4 : ℤ) : ℚ) / 4

end

end A213818.P15017622879973053243

namespace A213818

/-- `(2*(n+1)-(n+1)²+3*(n+1)^4)/4` -/
def P15017622879973053243.Spec : Prop :=
  ∀ n, P15017622879973053243.a n = (A213818 (n + 1) : ℚ)

theorem P15017622879973053243.correct : P15017622879973053243.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213818, Nat.add_sub_cancel, A213818.P15017622879973053243.a, A213818.P2159520274598490436.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213818, Nat.add_sub_cancel, A213818.P15017622879973053243.a, A213818.P2159520274598490436.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213818

/-! ## A213818.P2159520274598490436

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=12, a(2)=60, a(3)=190, a(4)=465`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213818

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2159520274598490436.Spec : Prop :=
  ∀ n, P2159520274598490436.a n = A213818 (n + 1)

theorem P2159520274598490436.correct : P2159520274598490436.Spec := by
  intro n
  simp only [A213818, Nat.add_sub_cancel]

end A213818

/-! ## A213818.P15114953375194204158

`A000217(n+1)*A005448(n+1)`
-/

namespace A213818.P15114953375194204158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A005448 (n + 1)

end

end A213818.P15114953375194204158

namespace A213818

/-- `A000217(n+1)*A005448(n+1)` -/
def P15114953375194204158.Spec : Prop :=
  ∀ n, P15114953375194204158.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P223092607863330133

`(∑[3*n]+1)*C(n+2, 2)`
-/

namespace A213818.P223092607863330133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.choose (n + 2) 2

end

end A213818.P223092607863330133

namespace A213818

/-- `(∑[3*n]+1)*C(n+2, 2)` -/
def P223092607863330133.Spec : Prop :=
  ∀ n, (P223092607863330133.a n : ℤ) = A213818 (n + 1)

end A213818

/-! ## A213818.P271926366594756885

`∑[n+1]*∑[a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A213818.P271926366594756885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213818.P271926366594756885

namespace A213818

/-- `∑[n+1]*∑[a(n-1)+3]` -/
def P271926366594756885.Spec : Prop :=
  ∀ n, (P271926366594756885.a n : ℤ) = A213818 (n + 1)

end A213818

/-! ## A213818.P10298617835540639992

`ceil(or(1, ∑[6*n])/2)*∑[n+1]`
-/

namespace A213818.P10298617835540639992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉ * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213818.P10298617835540639992

namespace A213818

/-- `ceil(or(1, ∑[6*n])/2)*∑[n+1]` -/
def P10298617835540639992.Spec : Prop :=
  ∀ n, P10298617835540639992.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P9196799446609182962

`round(or(1, ∑[6*n])/2)*∑[n+1]`
-/

namespace A213818.P9196799446609182962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213818.P9196799446609182962

namespace A213818

/-- `round(or(1, ∑[6*n])/2)*∑[n+1]` -/
def P9196799446609182962.Spec : Prop :=
  ∀ n, P9196799446609182962.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P14558960144674077799

`round(xor(1, ∑[6*n])/2)*∑[n+1]`
-/

namespace A213818.P14558960144674077799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213818.P14558960144674077799

namespace A213818

/-- `round(xor(1, ∑[6*n])/2)*∑[n+1]` -/
def P14558960144674077799.Spec : Prop :=
  ∀ n, P14558960144674077799.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P17666446425825583232

`(lcm(n, 2*n+1)-∑[n-1])*∑[n+1]`
-/

namespace A213818.P17666446425825583232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm n (2 * n + 1) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213818.P17666446425825583232

namespace A213818

/-- `(lcm(n, 2*n+1)-∑[n-1])*∑[n+1]` -/
def P17666446425825583232.Spec : Prop :=
  ∀ n, P17666446425825583232.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P16897319221222338455

`∑[∑[A247792(n)]]`
-/

namespace A213818.P16897319221222338455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213818.P16897319221222338455

namespace A213818

/-- `∑[∑[A247792(n)]]` -/
def P16897319221222338455.Spec : Prop :=
  ∀ n, P16897319221222338455.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P6456689021081193291

`∑[A220443(n)+n+1]`
-/

namespace A213818.P6456689021081193291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213818.P6456689021081193291

namespace A213818

/-- `∑[A220443(n)+n+1]` -/
def P6456689021081193291.Spec : Prop :=
  ∀ n, P6456689021081193291.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P14916787595301165663

`∑[A063491(n+1)-n]`
-/

namespace A213818.P14916787595301165663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213818.P14916787595301165663

namespace A213818

/-- `∑[A063491(n+1)-n]` -/
def P14916787595301165663.Spec : Prop :=
  ∀ n, P14916787595301165663.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P15187388314277637364

`∑[n+1]*∑[A008486(n)]`
-/

namespace A213818.P15187388314277637364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213818.P15187388314277637364

namespace A213818

/-- `∑[n+1]*∑[A008486(n)]` -/
def P15187388314277637364.Spec : Prop :=
  ∀ n, P15187388314277637364.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P11853020382514818608

`A213840(n+1)+∑[∑[n²]]`
-/

namespace A213818.P11853020382514818608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213818.P11853020382514818608

namespace A213818

/-- `A213840(n+1)+∑[∑[n²]]` -/
def P11853020382514818608.Spec : Prop :=
  ∀ n, P11853020382514818608.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P14332660900636546020

`(n+2)/2*A100175(n+1)`
-/

namespace A213818.P14332660900636546020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A100175 (n + 1) : ℚ)

end

end A213818.P14332660900636546020

namespace A213818

/-- `(n+2)/2*A100175(n+1)` -/
def P14332660900636546020.Spec : Prop :=
  ∀ n, P14332660900636546020.a n = (A213818 (n + 1) : ℚ)

end A213818

/-! ## A213818.P5328110001114593376

`∑[A004277(n)+n]*∑[n+1]`
-/

namespace A213818.P5328110001114593376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213818.P5328110001114593376

namespace A213818

/-- `∑[A004277(n)+n]*∑[n+1]` -/
def P5328110001114593376.Spec : Prop :=
  ∀ n, P5328110001114593376.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P5664288186148202860

`A126274(n)-A027480(n)`
-/

namespace A213818.P5664288186148202860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n - A027480 n

end

end A213818.P5664288186148202860

namespace A213818

/-- `A126274(n)-A027480(n)` -/
def P5664288186148202860.Spec : Prop :=
  ∀ n, P5664288186148202860.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P16395002791337354704

`A222408(n)-A171129(n)`
-/

namespace A213818.P16395002791337354704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222408 n - A171129 n

end

end A213818.P16395002791337354704

namespace A213818

/-- `A222408(n)-A171129(n)` -/
def P16395002791337354704.Spec : Prop :=
  ∀ n, P16395002791337354704.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P17373880312883787622

`A297662(n+1)+A005920(n)`
-/

namespace A213818.P17373880312883787622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) + A005920 n

end

end A213818.P17373880312883787622

namespace A213818

/-- `A297662(n+1)+A005920(n)` -/
def P17373880312883787622.Spec : Prop :=
  ∀ n, P17373880312883787622.a n = A213818 (n + 1)

end A213818

/-! ## A213818.P15970028765712300164

`A005920(n)+3*A000217(n)²`
-/

namespace A213818.P15970028765712300164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n + 3 * A000217 n ^ 2

end

end A213818.P15970028765712300164

namespace A213818

/-- `A005920(n)+3*A000217(n)²` -/
def P15970028765712300164.Spec : Prop :=
  ∀ n, P15970028765712300164.a n = A213818 (n + 1)

end A213818

/-!
# A213819: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

The programs for A213819, the canonical program `A213819.P7092098208098070007` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213819 has offset 1).

The definition of A213819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213819.P7092098208098070007

`A213761(n+1)+abs(A122432(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A213819

/-- `A213761(n+1)+abs(A122432(n))` -/
def P7092098208098070007.Spec : Prop :=
  ∀ n, P7092098208098070007.a n = A213819 (n + 1)

theorem P7092098208098070007.correct : P7092098208098070007.Spec := by
  intro n
  simp only [A213819, Nat.add_sub_cancel]

end A213819

/-! ## A213819.P11685657682255237459

`A213750(n+1)+A213500(n+1)`
-/

namespace A213819.P11685657682255237459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + A213500 (n + 1)

end

end A213819.P11685657682255237459

namespace A213819

/-- `A213750(n+1)+A213500(n+1)` -/
def P11685657682255237459.Spec : Prop :=
  ∀ n, P11685657682255237459.a n = A213819 (n + 1)

theorem P11685657682255237459.correct : P11685657682255237459.Spec := by
  intro n
  simp only [A213819, Nat.add_sub_cancel, A213819.P11685657682255237459.a, A213819.P7092098208098070007.a, A122432, A122432.P16515211422386222308.a, A213500, A213500.P10415559373979276509.a, A213750, A213750.P11543633709042919296.a, A213761, A213761.P7356628059179805218.a, A000292, A000292.P18322089543142633594.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P16112744757063613497.a, A089594, A089594.P11384896157500879908.a, A104633, A104633.P310418357099449208.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213819

/-! ## A213819.P12739937462126531740

`(A213822(n+1)+A096037(n+1))/3`
-/

namespace A213819.P12739937462126531740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213822 (n + 1) + A096037 (n + 1) : ℚ) / 3

end

end A213819.P12739937462126531740

namespace A213819

/-- `(A213822(n+1)+A096037(n+1))/3` -/
def P12739937462126531740.Spec : Prop :=
  ∀ n, P12739937462126531740.a n = (A213819 (n + 1) : ℚ)

end A213819

/-! ## A213819.P2846150500188155235

`A213761(n+1)+A000217(A004736(n+1))`
-/

namespace A213819.P2846150500188155235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A000217 (A004736 (n + 1)).toNat

end

end A213819.P2846150500188155235

namespace A213819

/-- `A213761(n+1)+A000217(A004736(n+1))` -/
def P2846150500188155235.Spec : Prop :=
  ∀ n, P2846150500188155235.a n = A213819 (n + 1)

end A213819

/-! ## A213819.P13099605523453534132

`A008486(A213500(n+1))-abs(A122432(n))`
-/

namespace A213819.P13099605523453534132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213500 (n + 1)).toNat - |A122432 n|

end

end A213819.P13099605523453534132

namespace A213819

/-- `A008486(A213500(n+1))-abs(A122432(n))` -/
def P13099605523453534132.Spec : Prop :=
  ∀ n, P13099605523453534132.a n = A213819 (n + 1)

end A213819

/-! ## A213819.P17758824977175090048

`A008486(A213500(n+1))-A000217(A004736(n+1))`
-/

namespace A213819.P17758824977175090048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213500 (n + 1)).toNat - A000217 (A004736 (n + 1)).toNat

end

end A213819.P17758824977175090048

namespace A213819

/-- `A008486(A213500(n+1))-A000217(A004736(n+1))` -/
def P17758824977175090048.Spec : Prop :=
  ∀ n, P17758824977175090048.a n = A213819 (n + 1)

end A213819

/-! ## A213819.P13220621400046266505

`A008486(A213750(n+1))-A213761(n+1)`
-/

namespace A213819.P13220621400046266505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213750 (n + 1)).toNat - A213761 (n + 1)

end

end A213819.P13220621400046266505

namespace A213819

/-- `A008486(A213750(n+1))-A213761(n+1)` -/
def P13220621400046266505.Spec : Prop :=
  ∀ n, P13220621400046266505.a n = A213819 (n + 1)

end A213819

/-! ## A213819.P10771306928929287338

`A213500(n+1)+A029578(A213761(n+1)+A213500(n+1))`
-/

namespace A213819.P10771306928929287338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A029578 (A213761 (n + 1) + A213500 (n + 1)).toNat

end

end A213819.P10771306928929287338

namespace A213819

/-- `A213500(n+1)+A029578(A213761(n+1)+A213500(n+1))` -/
def P10771306928929287338.Spec : Prop :=
  ∀ n, P10771306928929287338.a n = A213819 (n + 1)

end A213819

/-! ## A213819.P15526786869966221594

`A008611(A213822(n+1)+A096038(n+1))`
-/

namespace A213819.P15526786869966221594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A213822 (n + 1) + A096038 (n + 1)).toNat

end

end A213819.P15526786869966221594

namespace A213819

/-- `A008611(A213822(n+1)+A096038(n+1))` -/
def P15526786869966221594.Spec : Prop :=
  ∀ n, P15526786869966221594.a n = A213819 (n + 1)

end A213819

/-! ## A213819.P4492484447217413687

`A140765(A061579(n))+2*A213500(n+1)`
-/

namespace A213819.P4492484447217413687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140765 (A061579 n).toNat + 2 * A213500 (n + 1)

end

end A213819.P4492484447217413687

namespace A213819

/-- `A140765(A061579(n))+2*A213500(n+1)` -/
def P4492484447217413687.Spec : Prop :=
  ∀ n, P4492484447217413687.a n = A213819 (n + 1)

end A213819

/-!
# A213820: Principal diagonal of the convolution array A213819.

The programs for A213820, the canonical program `A213820.P17130310643522109018` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213820 has offset 1).

The definition of A213820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213820.P17130310643522109018

`2*(n+1)^3+(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213820

/-- `2*(n+1)^3+(n+1)²-(n+1)` -/
def P17130310643522109018.Spec : Prop :=
  ∀ n, P17130310643522109018.a n = A213820 (n + 1)

theorem P17130310643522109018.correct : P17130310643522109018.Spec := by
  intro n
  simp only [A213820, Nat.add_sub_cancel]

end A213820

/-! ## A213820.P13678637298922713325

`∑[∑[ogf((2+10x)/(1-2x+x^2))]]`
-/

namespace A213820.P13678637298922713325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P13678637298922713325

namespace A213820

/-- `∑[∑[ogf((2+10x)/(1-2x+x^2))]]` -/
def P13678637298922713325.Spec : Prop :=
  ∀ n, P13678637298922713325.a n = A213820 (n + 1)

end A213820

/-! ## A213820.P15742706541522079535

`ogf((2+10x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A213820.P15742706541522079535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10] [1, -4, 6, -4, 1] n

end

end A213820.P15742706541522079535

namespace A213820

/-- `ogf((2+10x)/(1-4x+6x^2-4x^3+x^4))` -/
def P15742706541522079535.Spec : Prop :=
  ∀ n, P15742706541522079535.a n = A213820 (n + 1)

end A213820

/-! ## A213820.P8579975304525170690

`abs(∑[∑[a(n-1)+12]])` with `a(0)=2`
-/

namespace A213820.P8579975304525170690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P8579975304525170690

namespace A213820

/-- `abs(∑[∑[a(n-1)+12]])` -/
def P8579975304525170690.Spec : Prop :=
  ∀ n, (P8579975304525170690.a n : ℤ) = A213820 (n + 1)

end A213820

/-! ## A213820.P1019014276055061110

`floor(∑[∑[a(n-1)+12]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A213820.P1019014276055061110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P1019014276055061110

namespace A213820

/-- `floor(∑[∑[a(n-1)+12]])` -/
def P1019014276055061110.Spec : Prop :=
  ∀ n, (P1019014276055061110.a n : ℤ) = A213820 (n + 1)

end A213820

/-! ## A213820.P6826535972660833318

`ceil(∑[∑[a(n-1)+12]])` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A213820.P6826535972660833318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P6826535972660833318

namespace A213820

/-- `ceil(∑[∑[a(n-1)+12]])` -/
def P6826535972660833318.Spec : Prop :=
  ∀ n, (P6826535972660833318.a n : ℤ) = A213820 (n + 1)

end A213820

/-! ## A213820.P14265926471575714640

`round(∑[∑[a(n-1)+12]])` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A213820.P14265926471575714640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P14265926471575714640

namespace A213820

/-- `round(∑[∑[a(n-1)+12]])` -/
def P14265926471575714640.Spec : Prop :=
  ∀ n, (P14265926471575714640.a n : ℤ) = A213820 (n + 1)

end A213820

/-! ## A213820.P3716255710128239058

`(n+2)*C(2*(n+1), 2)`
-/

namespace A213820.P3716255710128239058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (2 * (n + 1)) 2

end

end A213820.P3716255710128239058

namespace A213820

/-- `(n+2)*C(2*(n+1), 2)` -/
def P3716255710128239058.Spec : Prop :=
  ∀ n, (P3716255710128239058.a n : ℤ) = A213820 (n + 1)

theorem P3716255710128239058.correct : P3716255710128239058.Spec := by
  intro n
  simp only [A213820, Nat.add_sub_cancel, A213820.P3716255710128239058.a, A213820.P17130310643522109018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213820

/-! ## A213820.P12893616751911056694

`lcm(n+1, (n+2)*Δ[n²])`
-/

namespace A213820.P12893616751911056694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A213820.P12893616751911056694

namespace A213820

/-- `lcm(n+1, (n+2)*Δ[n²])` -/
def P12893616751911056694.Spec : Prop :=
  ∀ n, (P12893616751911056694.a n : ℤ) = A213820 (n + 1)

end A213820

/-! ## A213820.P7673250474617470286

`(n+2)*(n+1)*or(1, 2*n)`
-/

namespace A213820.P7673250474617470286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 1) * Nat.lor 1 (2 * n))

end

end A213820.P7673250474617470286

namespace A213820

/-- `(n+2)*(n+1)*or(1, 2*n)` -/
def P7673250474617470286.Spec : Prop :=
  ∀ n, (P7673250474617470286.a n : ℤ) = A213820 (n + 1)

end A213820

/-! ## A213820.P7413195430723497267

`∑[(n+1)*xor(1, 3*(2*n+1))]`
-/

namespace A213820.P7413195430723497267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 (3 * (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P7413195430723497267

namespace A213820

/-- `∑[(n+1)*xor(1, 3*(2*n+1))]` -/
def P7413195430723497267.Spec : Prop :=
  ∀ n, (P7413195430723497267.a n : ℤ) = A213820 (n + 1)

end A213820

/-! ## A213820.P11187138721075778038

`(2*n+1)*record[(n-1)*(n-2)]`
-/

namespace A213820.P11187138721075778038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213820.P11187138721075778038

namespace A213820

/-- `(2*n+1)*record[(n-1)*(n-2)]` -/
def P11187138721075778038.Spec : Prop :=
  ∀ n, P11187138721075778038.a n = A213820 (n + 1)

end A213820

/-! ## A213820.P12308273421759727047

`floor((2*n+1)/acot((n+1)*(n+2)))`
-/

namespace A213820.P12308273421759727047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot ((n + 1) * (n + 2) : ℝ)⌋

end

end A213820.P12308273421759727047

namespace A213820

/-- `floor((2*n+1)/acot((n+1)*(n+2)))` -/
def P12308273421759727047.Spec : Prop :=
  ∀ n, P12308273421759727047.a n = A213820 (n + 1)

end A213820

/-! ## A213820.P7520699254002003134

`round((2*n+1)/acot((n+1)*(n+2)))`
-/

namespace A213820.P7520699254002003134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / SequenceMachineLib.acot ((n + 1) * (n + 2) : ℝ))

end

end A213820.P7520699254002003134

namespace A213820

/-- `round((2*n+1)/acot((n+1)*(n+2)))` -/
def P7520699254002003134.Spec : Prop :=
  ∀ n, P7520699254002003134.a n = A213820 (n + 1)

end A213820

/-! ## A213820.P17634563647906908670

`(2*n+1)/tan(acot((n+1)*(n+2)))`
-/

namespace A213820.P17634563647906908670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 1) * (n + 2) : ℝ))

end

end A213820.P17634563647906908670

namespace A213820

/-- `(2*n+1)/tan(acot((n+1)*(n+2)))` -/
def P17634563647906908670.Spec : Prop :=
  ∀ n, P17634563647906908670.a n = (A213820 (n + 1) : ℝ)

end A213820

/-! ## A213820.P1683539198695462705

`(2*n+1)*(n+1)/cot(atan(n+2))`
-/

namespace A213820.P1683539198695462705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℝ) / Real.cot (Real.arctan (n + 2 : ℝ))

end

end A213820.P1683539198695462705

namespace A213820

/-- `(2*n+1)*(n+1)/cot(atan(n+2))` -/
def P1683539198695462705.Spec : Prop :=
  ∀ n, P1683539198695462705.a n = (A213820 (n + 1) : ℝ)

end A213820

/-! ## A213820.P12924037208478417306

`and((2*n+1)*(n+1)*(n+2), -2)`
-/

namespace A213820.P12924037208478417306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 1) * ((n + 1) * (n + 2)) : ℤ) (-2)

end

end A213820.P12924037208478417306

namespace A213820

/-- `and((2*n+1)*(n+1)*(n+2), -2)` -/
def P12924037208478417306.Spec : Prop :=
  ∀ n, P12924037208478417306.a n = A213820 (n + 1)

end A213820

/-! ## A213820.P8827948696122517828

`(2*n+1)*(n+1)*(n+2)/gcd(n, n+1)`
-/

namespace A213820.P8827948696122517828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * ((n + 1) * (n + 2)) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A213820.P8827948696122517828

namespace A213820

/-- `(2*n+1)*(n+1)*(n+2)/gcd(n, n+1)` -/
def P8827948696122517828.Spec : Prop :=
  ∀ n, P8827948696122517828.a n = (A213820 (n + 1) : ℚ)

theorem P8827948696122517828.correct : P8827948696122517828.Spec := by
  intro n
  simp only [A213820, Nat.add_sub_cancel, A213820.P8827948696122517828.a, A213820.P17130310643522109018.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A213820

/-! ## A213820.P13038978745753424688

`∑[∑[A017545(n)]]`
-/

namespace A213820.P13038978745753424688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P13038978745753424688

namespace A213820

/-- `∑[∑[A017545(n)]]` -/
def P13038978745753424688.Spec : Prop :=
  ∀ n, P13038978745753424688.a n = A213820 (n + 1)

end A213820

/-! ## A213820.P14588668743262295790

`∑[A239325(n)+1]`
-/

namespace A213820.P14588668743262295790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213820.P14588668743262295790

namespace A213820

/-- `∑[A239325(n)+1]` -/
def P14588668743262295790.Spec : Prop :=
  ∀ n, P14588668743262295790.a n = A213820 (n + 1)

end A213820

/-!
# A213821: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213821, the canonical program `A213821.P9578737112397043331` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213821 has offset 1).

The definition of A213821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213821.P9578737112397043331

`A213771(n+1)+A049777(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213821

/-- `A213771(n+1)+A049777(n+1)` -/
def P9578737112397043331.Spec : Prop :=
  ∀ n, P9578737112397043331.a n = A213821 (n + 1)

theorem P9578737112397043331.correct : P9578737112397043331.Spec := by
  intro n
  simp only [A213821, Nat.add_sub_cancel]

end A213821

/-! ## A213821.P970149154284341334

`A213751(n+1)+A213500(n+1)`
-/

namespace A213821.P970149154284341334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + A213500 (n + 1)

end

end A213821.P970149154284341334

namespace A213821

/-- `A213751(n+1)+A213500(n+1)` -/
def P970149154284341334.Spec : Prop :=
  ∀ n, P970149154284341334.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P8186746727994997966

`3*A213500(n+1)-A049777(n+1)`
-/

namespace A213821.P8186746727994997966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213500 (n + 1) - A049777 (n + 1)

end

end A213821.P8186746727994997966

namespace A213821

/-- `3*A213500(n+1)-A049777(n+1)` -/
def P8186746727994997966.Spec : Prop :=
  ∀ n, P8186746727994997966.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P16739507704070098838

`3*A213751(n+1)-A213771(n+1)`
-/

namespace A213821.P16739507704070098838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213751 (n + 1) - A213771 (n + 1)

end

end A213821.P16739507704070098838

namespace A213821

/-- `3*A213751(n+1)-A213771(n+1)` -/
def P16739507704070098838.Spec : Prop :=
  ∀ n, P16739507704070098838.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P7334244283176608573

`A213751(n+1)+A213819(n+1)-A213750(n+1)`
-/

namespace A213821.P7334244283176608573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + (A213819 (n + 1) - A213750 (n + 1))

end

end A213821.P7334244283176608573

namespace A213821

/-- `A213751(n+1)+A213819(n+1)-A213750(n+1)` -/
def P7334244283176608573.Spec : Prop :=
  ∀ n, P7334244283176608573.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P3447558582880133037

`A213819(n+1)-A004247(A007401(n+1))`
-/

namespace A213821.P3447558582880133037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213819 (n + 1) - A004247 (A007401 (n + 1)).toNat

end

end A213821.P3447558582880133037

namespace A213821

/-- `A213819(n+1)-A004247(A007401(n+1))` -/
def P3447558582880133037.Spec : Prop :=
  ∀ n, P3447558582880133037.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P9394582283943327339

`A213849(A185868(n+1))+A213500(n+1)`
-/

namespace A213821.P9394582283943327339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213849 (A185868 (n + 1)).toNat + A213500 (n + 1)

end

end A213821.P9394582283943327339

namespace A213821

/-- `A213849(A185868(n+1))+A213500(n+1)` -/
def P9394582283943327339.Spec : Prop :=
  ∀ n, P9394582283943327339.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P16349128302252998144

`A008486(A213500(n+1))-A049777(n+1)`
-/

namespace A213821.P16349128302252998144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213500 (n + 1)).toNat - A049777 (n + 1)

end

end A213821.P16349128302252998144

namespace A213821

/-- `A008486(A213500(n+1))-A049777(n+1)` -/
def P16349128302252998144.Spec : Prop :=
  ∀ n, P16349128302252998144.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P11246345126050027200

`A008486(A213751(n+1))-A213771(n+1)`
-/

namespace A213821.P11246345126050027200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213751 (n + 1)).toNat - A213771 (n + 1)

end

end A213821.P11246345126050027200

namespace A213821

/-- `A008486(A213751(n+1))-A213771(n+1)` -/
def P11246345126050027200.Spec : Prop :=
  ∀ n, P11246345126050027200.a n = A213821 (n + 1)

end A213821

/-! ## A213821.P2651865587613932971

`A213751(n+1)+A029578(A213751(n+1)+A049777(n+1))`
-/

namespace A213821.P2651865587613932971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + A029578 (A213751 (n + 1) + A049777 (n + 1)).toNat

end

end A213821.P2651865587613932971

namespace A213821

/-- `A213751(n+1)+A029578(A213751(n+1)+A049777(n+1))` -/
def P2651865587613932971.Spec : Prop :=
  ∀ n, P2651865587613932971.a n = A213821 (n + 1)

end A213821

/-!
# A213822: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

The programs for A213822, the canonical program `A213822.P7065334176716146466` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213822 has offset 1).

The definition of A213822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213822.P15781561921683131218

`A213828(n+1)+A096037(n+1)`
-/

namespace A213822.P15781561921683131218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) + A096037 (n + 1)

end

end A213822.P15781561921683131218

namespace A213822

/-- `A213828(n+1)+A096037(n+1)` -/
def P15781561921683131218.Spec : Prop :=
  ∀ n, P15781561921683131218.a n = A213822 (n + 1)

end A213822

/-! ## A213822.P17649346401696101685

`A096038(n+1)+A213828(n+1)+1`
-/

namespace A213822.P17649346401696101685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) + (A213828 (n + 1) + 1)

end

end A213822.P17649346401696101685

namespace A213822

/-- `A096038(n+1)+A213828(n+1)+1` -/
def P17649346401696101685.Spec : Prop :=
  ∀ n, P17649346401696101685.a n = A213822 (n + 1)

end A213822

/-! ## A213822.P8525406436552635223

`A213825(n+1)+A005449(A004736(n+1))`
-/

namespace A213822.P8525406436552635223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213825 (n + 1) + A005449 (A004736 (n + 1)).toNat

end

end A213822.P8525406436552635223

namespace A213822

/-- `A213825(n+1)+A005449(A004736(n+1))` -/
def P8525406436552635223.Spec : Prop :=
  ∀ n, P8525406436552635223.a n = A213822 (n + 1)

end A213822

/-! ## A213822.P9219071968427397717

`A213825(n+1)+A001318(A212012(n+1))`
-/

namespace A213822.P9219071968427397717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213825 (n + 1) + A001318 (A212012 (n + 1)).toNat

end

end A213822.P9219071968427397717

namespace A213822

/-- `A213825(n+1)+A001318(A212012(n+1))` -/
def P9219071968427397717.Spec : Prop :=
  ∀ n, P9219071968427397717.a n = A213822 (n + 1)

end A213822

/-! ## A213822.P9671240369475393158

`A096037(n+1)+A213773(n+1)+A104572(n+1)`
-/

namespace A213822.P9671240369475393158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + (A213773 (n + 1) + A104572 (n + 1))

end

end A213822.P9671240369475393158

namespace A213822

/-- `A096037(n+1)+A213773(n+1)+A104572(n+1)` -/
def P9671240369475393158.Spec : Prop :=
  ∀ n, P9671240369475393158.a n = A213822 (n + 1)

end A213822

/-! ## A213822.P1853955916064530431

`A096037(n+1)+A213833(n+1)+A213771(n+1)`
-/

namespace A213822.P1853955916064530431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + (A213833 (n + 1) + A213771 (n + 1))

end

end A213822.P1853955916064530431

namespace A213822

/-- `A096037(n+1)+A213833(n+1)+A213771(n+1)` -/
def P1853955916064530431.Spec : Prop :=
  ∀ n, P1853955916064530431.a n = A213822 (n + 1)

end A213822

/-! ## A213822.P7065334176716146466

`A213750(n+1)+A213821(n+1)+A213752(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213822

/-- `A213750(n+1)+A213821(n+1)+A213752(n+1)` -/
def P7065334176716146466.Spec : Prop :=
  ∀ n, P7065334176716146466.a n = A213822 (n + 1)

theorem P7065334176716146466.correct : P7065334176716146466.Spec := by
  intro n
  simp only [A213822, Nat.add_sub_cancel]

end A213822

/-! ## A213822.P1820955278453055508

`A008486(A213819(n+1))-A096037(n+1)`
-/

namespace A213822.P1820955278453055508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213819 (n + 1)).toNat - A096037 (n + 1)

end

end A213822.P1820955278453055508

namespace A213822

/-- `A008486(A213819(n+1))-A096037(n+1)` -/
def P1820955278453055508.Spec : Prop :=
  ∀ n, P1820955278453055508.a n = A213822 (n + 1)

end A213822

/-!
# A213823: Principal diagonal of the convolution array A213822.

The programs for A213823, the canonical program `A213823.P6952519143968034220` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213823 has offset 1).

The definition of A213823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213823.P6952519143968034220

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=41, a(2)=147, a(3)=358`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213823

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6952519143968034220.Spec : Prop :=
  ∀ n, P6952519143968034220.a n = A213823 (n + 1)

theorem P6952519143968034220.correct : P6952519143968034220.Spec := by
  intro n
  simp only [A213823, Nat.add_sub_cancel]

end A213823

/-! ## A213823.P16459189544090200227

`∑[C(6*n+3, 2)+1]`
-/

namespace A213823.P16459189544090200227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n + 3) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213823.P16459189544090200227

namespace A213823

/-- `∑[C(6*n+3, 2)+1]` -/
def P16459189544090200227.Spec : Prop :=
  ∀ n, (P16459189544090200227.a n : ℤ) = A213823 (n + 1)

end A213823

/-! ## A213823.P15777647648728624011

`3*A135712(n)+n+1`
-/

namespace A213823.P15777647648728624011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A135712 n + (n + 1 : ℤ)

end

end A213823.P15777647648728624011

namespace A213823

/-- `3*A135712(n)+n+1` -/
def P15777647648728624011.Spec : Prop :=
  ∀ n, P15777647648728624011.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P5256420712760590178

`Δ[(n+1)²*A000326(n)]`
-/

namespace A213823.P5256420712760590178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213823.P5256420712760590178

namespace A213823

/-- `Δ[(n+1)²*A000326(n)]` -/
def P5256420712760590178.Spec : Prop :=
  ∀ n, P5256420712760590178.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P5972945233097981979

`∑[n]+(n+1)²*A016957(n)`
-/

namespace A213823.P5972945233097981979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n + 1) ^ 2 : ℤ) * A016957 n

end

end A213823.P5972945233097981979

namespace A213823

/-- `∑[n]+(n+1)²*A016957(n)` -/
def P5972945233097981979.Spec : Prop :=
  ∀ n, P5972945233097981979.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P15941817633607462192

`(n+1)²*A016969(n)-∑[n+1]`
-/

namespace A213823.P15941817633607462192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A016969 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213823.P15941817633607462192

namespace A213823

/-- `(n+1)²*A016969(n)-∑[n+1]` -/
def P15941817633607462192.Spec : Prop :=
  ∀ n, P15941817633607462192.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P12137180192668023583

`(6*n+5)*(n+1)²-A000217(n+1)`
-/

namespace A213823.P12137180192668023583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 5) * (n + 1) ^ 2 : ℤ) - A000217 (n + 1)

end

end A213823.P12137180192668023583

namespace A213823

/-- `(6*n+5)*(n+1)²-A000217(n+1)` -/
def P12137180192668023583.Spec : Prop :=
  ∀ n, P12137180192668023583.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P9289434465158934062

`A269342(n)+A220084(n)`
-/

namespace A213823.P9289434465158934062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269342 n + A220084 n

end

end A213823.P9289434465158934062

namespace A213823

/-- `A269342(n)+A220084(n)` -/
def P9289434465158934062.Spec : Prop :=
  ∀ n, P9289434465158934062.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P4951065882227467277

`A059986(n)+A024394(n+1)`
-/

namespace A213823.P4951065882227467277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n + A024394 (n + 1)

end

end A213823.P4951065882227467277

namespace A213823

/-- `A059986(n)+A024394(n+1)` -/
def P4951065882227467277.Spec : Prop :=
  ∀ n, P4951065882227467277.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P15697745473205411386

`A199833(n+1)+A002412(n)`
-/

namespace A213823.P15697745473205411386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199833 (n + 1) + A002412 n

end

end A213823.P15697745473205411386

namespace A213823

/-- `A199833(n+1)+A002412(n)` -/
def P15697745473205411386.Spec : Prop :=
  ∀ n, P15697745473205411386.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P7261285806491970714

`A139757(n)+A126335(n+1)`
-/

namespace A213823.P7261285806491970714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + A126335 (n + 1)

end

end A213823.P7261285806491970714

namespace A213823

/-- `A139757(n)+A126335(n+1)` -/
def P7261285806491970714.Spec : Prop :=
  ∀ n, P7261285806491970714.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P2131071177029661439

`A192418(n+1)-A051895(n)`
-/

namespace A213823.P2131071177029661439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192418 (n + 1) - A051895 n

end

end A213823.P2131071177029661439

namespace A213823

/-- `A192418(n+1)-A051895(n)` -/
def P2131071177029661439.Spec : Prop :=
  ∀ n, P2131071177029661439.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P9491570930644984400

`2*A269232(n)-A027468(n)`
-/

namespace A213823.P9491570930644984400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269232 n - A027468 n

end

end A213823.P9491570930644984400

namespace A213823

/-- `2*A269232(n)-A027468(n)` -/
def P9491570930644984400.Spec : Prop :=
  ∀ n, P9491570930644984400.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P15157835010058044424

`A213848(n+1)+A174723(n+1)`
-/

namespace A213823.P15157835010058044424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213848 (n + 1) + A174723 (n + 1)

end

end A213823.P15157835010058044424

namespace A213823

/-- `A213848(n+1)+A174723(n+1)` -/
def P15157835010058044424.Spec : Prop :=
  ∀ n, P15157835010058044424.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P14341976815368564255

`Δ[C(n+1, 2)*A270710(n)]`
-/

namespace A213823.P14341976815368564255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) * A270710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213823.P14341976815368564255

namespace A213823

/-- `Δ[C(n+1, 2)*A270710(n)]` -/
def P14341976815368564255.Spec : Prop :=
  ∀ n, P14341976815368564255.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P13140890421701303873

`Δ[∑[6*n-1]*A000217(n)]`
-/

namespace A213823.P13140890421701303873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213823.P13140890421701303873

namespace A213823

/-- `Δ[∑[6*n-1]*A000217(n)]` -/
def P13140890421701303873.Spec : Prop :=
  ∀ n, P13140890421701303873.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P1685236170036241487

`Δ[A000217(n)*A270710(n)]`
-/

namespace A213823.P1685236170036241487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A270710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213823.P1685236170036241487

namespace A213823

/-- `Δ[A000217(n)*A270710(n)]` -/
def P1685236170036241487.Spec : Prop :=
  ∀ n, P1685236170036241487.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P13873242592166164121

`A022266(n+1)+2*A059986(n)`
-/

namespace A213823.P13873242592166164121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 (n + 1) + 2 * A059986 n

end

end A213823.P13873242592166164121

namespace A213823

/-- `A022266(n+1)+2*A059986(n)` -/
def P13873242592166164121.Spec : Prop :=
  ∀ n, P13873242592166164121.a n = A213823 (n + 1)

end A213823

/-! ## A213823.P3149363306633715197

`2*A117642(n+1)-A005449(n+1)`
-/

namespace A213823.P3149363306633715197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117642 (n + 1) - A005449 (n + 1)

end

end A213823.P3149363306633715197

namespace A213823

/-- `2*A117642(n+1)-A005449(n+1)` -/
def P3149363306633715197.Spec : Prop :=
  ∀ n, P3149363306633715197.a n = A213823 (n + 1)

end A213823

/-!
# A213824: Antidiagonal sums of the convolution array A213822.

The programs for A213824, the canonical program `A213824.P15185507288960574268` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213824 has offset 1).

The definition of A213824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213824.P2754018119027268455

`(n+1)*(1+n+1)*(2+3*(n+1)+3*(n+1)²)/4`
-/

namespace A213824.P2754018119027268455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (1 + (n + 1)) * (2 + 3 * (n + 1) + 3 * (n + 1) ^ 2) : ℚ) / 4

end

end A213824.P2754018119027268455

namespace A213824

/-- `(n+1)*(1+n+1)*(2+3*(n+1)+3*(n+1)²)/4` -/
def P2754018119027268455.Spec : Prop :=
  ∀ n, P2754018119027268455.a n = (A213824 (n + 1) : ℚ)

theorem P2754018119027268455.correct : P2754018119027268455.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213824, Nat.add_sub_cancel, A213824.P2754018119027268455.a, A213824.P15185507288960574268.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213824, Nat.add_sub_cancel, A213824.P2754018119027268455.a, A213824.P15185507288960574268.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213824

/-! ## A213824.P15185507288960574268

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=30, a(2)=114, a(3)=310, a(4)=690`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213824

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15185507288960574268.Spec : Prop :=
  ∀ n, P15185507288960574268.a n = A213824 (n + 1)

theorem P15185507288960574268.correct : P15185507288960574268.Spec := by
  intro n
  simp only [A213824, Nat.add_sub_cancel]

end A213824

/-! ## A213824.P15033005466156559463

`lcm(∑[n]+(n+2)², ∑[n+1])`
-/

namespace A213824.P15033005466156559463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213824.P15033005466156559463

namespace A213824

/-- `lcm(∑[n]+(n+2)², ∑[n+1])` -/
def P15033005466156559463.Spec : Prop :=
  ∀ n, (P15033005466156559463.a n : ℤ) = A213824 (n + 1)

end A213824

/-! ## A213824.P13277597787911273434

`(∑[n]+(n+2)²)*C(n+2, 2)`
-/

namespace A213824.P13277597787911273434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ 2) * Nat.choose (n + 2) 2

end

end A213824.P13277597787911273434

namespace A213824

/-- `(∑[n]+(n+2)²)*C(n+2, 2)` -/
def P13277597787911273434.Spec : Prop :=
  ∀ n, (P13277597787911273434.a n : ℤ) = A213824 (n + 1)

end A213824

/-! ## A213824.P6609043093401502692

`∑[n+1]*∑[a(n-1)+3]` with `a(0)=4, a(1)=6`
-/

namespace A213824.P6609043093401502692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f2 =>
  f2 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213824.P6609043093401502692

namespace A213824

/-- `∑[n+1]*∑[a(n-1)+3]` -/
def P6609043093401502692.Spec : Prop :=
  ∀ n, (P6609043093401502692.a n : ℤ) = A213824 (n + 1)

end A213824

/-! ## A213824.P13232124155577165515

`3*(n+1)^3+a(n-1)+n+1` with `a(0)=4`
-/

namespace A213824.P13232124155577165515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  3 * (n + 1) ^ 3 + (a (n - 1) + (n + 1))

end

end A213824.P13232124155577165515

namespace A213824

/-- `3*(n+1)^3+a(n-1)+n+1` -/
def P13232124155577165515.Spec : Prop :=
  ∀ n, (P13232124155577165515.a n : ℤ) = A213824 (n + 1)

end A213824

/-! ## A213824.P18443552575519017816

`(∑[2*n+1]+C(n+3, 2))*∑[n+1]`
-/

namespace A213824.P18443552575519017816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3) 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213824.P18443552575519017816

namespace A213824

/-- `(∑[2*n+1]+C(n+3, 2))*∑[n+1]` -/
def P18443552575519017816.Spec : Prop :=
  ∀ n, (P18443552575519017816.a n : ℤ) = A213824 (n + 1)

end A213824

/-! ## A213824.P8105818583663048836

`∑[A117642(n+1)+n+1]`
-/

namespace A213824.P8105818583663048836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213824.P8105818583663048836

namespace A213824

/-- `∑[A117642(n+1)+n+1]` -/
def P8105818583663048836.Spec : Prop :=
  ∀ n, P8105818583663048836.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P10754368627879875449

`A219086(n+1)-∑[n+1]²`
-/

namespace A213824.P10754368627879875449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A213824.P10754368627879875449

namespace A213824

/-- `A219086(n+1)-∑[n+1]²` -/
def P10754368627879875449.Spec : Prop :=
  ∀ n, P10754368627879875449.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P4735302632220177619

`A127407(n+2)+A053134(n)`
-/

namespace A213824.P4735302632220177619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127407 (n + 2) + A053134 n

end

end A213824.P4735302632220177619

namespace A213824

/-- `A127407(n+2)+A053134(n)` -/
def P4735302632220177619.Spec : Prop :=
  ∀ n, P4735302632220177619.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P13858705370903625114

`A213818(n+1)+A085789(n+1)`
-/

namespace A213824.P13858705370903625114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213818 (n + 1) + A085789 (n + 1)

end

end A213824.P13858705370903625114

namespace A213824

/-- `A213818(n+1)+A085789(n+1)` -/
def P13858705370903625114.Spec : Prop :=
  ∀ n, P13858705370903625114.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P8036833978706850559

`2*(A133252(n)+A002419(n+1))`
-/

namespace A213824.P8036833978706850559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133252 n + A002419 (n + 1))

end

end A213824.P8036833978706850559

namespace A213824

/-- `2*(A133252(n)+A002419(n+1))` -/
def P8036833978706850559.Spec : Prop :=
  ∀ n, P8036833978706850559.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P1368796978027031819

`(3*A000217(n+1)+1)*A000217(n+1)`
-/

namespace A213824.P1368796978027031819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A000217 (n + 1) + 1) * A000217 (n + 1)

end

end A213824.P1368796978027031819

namespace A213824

/-- `(3*A000217(n+1)+1)*A000217(n+1)` -/
def P1368796978027031819.Spec : Prop :=
  ∀ n, P1368796978027031819.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P37387686716627728

`A297662(n+2)+∑[n+1]`
-/

namespace A213824.P37387686716627728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213824.P37387686716627728

namespace A213824

/-- `A297662(n+2)+∑[n+1]` -/
def P37387686716627728.Spec : Prop :=
  ∀ n, P37387686716627728.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P12005471252245082527

`∑[(n+1)*A056107(n+1)]`
-/

namespace A213824.P12005471252245082527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213824.P12005471252245082527

namespace A213824

/-- `∑[(n+1)*A056107(n+1)]` -/
def P12005471252245082527.Spec : Prop :=
  ∀ n, P12005471252245082527.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P11160925706649943982

`A110450(n+1)+∑[n+1]²`
-/

namespace A213824.P11160925706649943982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A213824.P11160925706649943982

namespace A213824

/-- `A110450(n+1)+∑[n+1]²` -/
def P11160925706649943982.Spec : Prop :=
  ∀ n, P11160925706649943982.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P16441177485673621553

`∑[A345701(n+1)]+∑[n+2]`
-/

namespace A213824.P16441177485673621553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345701 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213824.P16441177485673621553

namespace A213824

/-- `∑[A345701(n+1)]+∑[n+2]` -/
def P16441177485673621553.Spec : Prop :=
  ∀ n, P16441177485673621553.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P467329236409716216

`A126274(n)+A059270(n+1)`
-/

namespace A213824.P467329236409716216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n + A059270 (n + 1)

end

end A213824.P467329236409716216

namespace A213824

/-- `A126274(n)+A059270(n+1)` -/
def P467329236409716216.Spec : Prop :=
  ∀ n, P467329236409716216.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P5591964103649198252

`A002378(n+1)²-A033487(n)`
-/

namespace A213824.P5591964103649198252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) ^ 2 - A033487 n

end

end A213824.P5591964103649198252

namespace A213824

/-- `A002378(n+1)²-A033487(n)` -/
def P5591964103649198252.Spec : Prop :=
  ∀ n, P5591964103649198252.a n = A213824 (n + 1)

end A213824

/-! ## A213824.P17617640942803497509

`A000217(n+1)*A005448(n+2)`
-/

namespace A213824.P17617640942803497509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A005448 (n + 2)

end

end A213824.P17617640942803497509

namespace A213824

/-- `A000217(n+1)*A005448(n+2)` -/
def P17617640942803497509.Spec : Prop :=
  ∀ n, P17617640942803497509.a n = A213824 (n + 1)

end A213824

/-!
# A213825: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

The programs for A213825, the canonical program `A213825.P10893518524547997828` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213825 has offset 1).

The definition of A213825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213825.P4658829425930732393

`A213773(n+1)+A095871(n+1)`
-/

namespace A213825.P4658829425930732393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213773 (n + 1) + A095871 (n + 1)

end

end A213825.P4658829425930732393

namespace A213825

/-- `A213773(n+1)+A095871(n+1)` -/
def P4658829425930732393.Spec : Prop :=
  ∀ n, P4658829425930732393.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P6210019216451423731

`A213831(n+1)+A213761(n+1)`
-/

namespace A213825.P6210019216451423731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213831 (n + 1) + A213761 (n + 1)

end

end A213825.P6210019216451423731

namespace A213825

/-- `A213831(n+1)+A213761(n+1)` -/
def P6210019216451423731.Spec : Prop :=
  ∀ n, P6210019216451423731.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P10893518524547997828

`A213822(n+1)-A005449(A004736(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A213825

/-- `A213822(n+1)-A005449(A004736(n+1))` -/
def P10893518524547997828.Spec : Prop :=
  ∀ n, P10893518524547997828.a n = A213825 (n + 1)

theorem P10893518524547997828.correct : P10893518524547997828.Spec := by
  intro n
  simp only [A213825, Nat.add_sub_cancel]

end A213825

/-! ## A213825.P10084241998636233119

`A213822(n+1)-A001318(A212012(n+1))`
-/

namespace A213825.P10084241998636233119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - A001318 (A212012 (n + 1)).toNat

end

end A213825.P10084241998636233119

namespace A213825

/-- `A213822(n+1)-A001318(A212012(n+1))` -/
def P10084241998636233119.Spec : Prop :=
  ∀ n, P10084241998636233119.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P15088079975384463509

`A096037(n+1)+A213773(n+1)-A004736(n+1)`
-/

namespace A213825.P15088079975384463509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + (A213773 (n + 1) - A004736 (n + 1))

end

end A213825.P15088079975384463509

namespace A213825

/-- `A096037(n+1)+A213773(n+1)-A004736(n+1)` -/
def P15088079975384463509.Spec : Prop :=
  ∀ n, P15088079975384463509.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P6623581719188491955

`A213822(n+1)-(A104572(n+1)+A004736(n+1))`
-/

namespace A213825.P6623581719188491955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - (A104572 (n + 1) + A004736 (n + 1))

end

end A213825.P6623581719188491955

namespace A213825

/-- `A213822(n+1)-(A104572(n+1)+A004736(n+1))` -/
def P6623581719188491955.Spec : Prop :=
  ∀ n, P6623581719188491955.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P7309569912479184230

`A213828(n+1)+A213835(n+1)-A213836(n+1)`
-/

namespace A213825.P7309569912479184230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) + (A213835 (n + 1) - A213836 (n + 1))

end

end A213825.P7309569912479184230

namespace A213825

/-- `A213828(n+1)+A213835(n+1)-A213836(n+1)` -/
def P7309569912479184230.Spec : Prop :=
  ∀ n, P7309569912479184230.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P15775474406430891594

`A213761(n+1)+A014682(A213773(n+1)+A213761(n+1))`
-/

namespace A213825.P15775474406430891594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A014682 (A213773 (n + 1) + A213761 (n + 1)).toNat

end

end A213825.P15775474406430891594

namespace A213825

/-- `A213761(n+1)+A014682(A213773(n+1)+A213761(n+1))` -/
def P15775474406430891594.Spec : Prop :=
  ∀ n, P15775474406430891594.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P12415673673558282965

`A008486(A213831(n+1))-A213773(n+1)`
-/

namespace A213825.P12415673673558282965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213831 (n + 1)).toNat - A213773 (n + 1)

end

end A213825.P12415673673558282965

namespace A213825

/-- `A008486(A213831(n+1))-A213773(n+1)` -/
def P12415673673558282965.Spec : Prop :=
  ∀ n, P12415673673558282965.a n = A213825 (n + 1)

end A213825

/-! ## A213825.P14308913543582769769

`A213761(n+1)+A004525(A213773(n+1)+A213761(n+1))`
-/

namespace A213825.P14308913543582769769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A004525 (A213773 (n + 1) + A213761 (n + 1)).toNat

end

end A213825.P14308913543582769769

namespace A213825

/-- `A213761(n+1)+A004525(A213773(n+1)+A213761(n+1))` -/
def P14308913543582769769.Spec : Prop :=
  ∀ n, P14308913543582769769.a n = A213825 (n + 1)

end A213825

/-!
# A213826: Principal diagonal of the convolution array A213825.

The programs for A213826, the canonical program `A213826.P11685760472531328806` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213826 has offset 1).

The definition of A213826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213826.P11685760472531328806

`6*(n+1)^3-3*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213826

/-- `6*(n+1)^3-3*(n+1)²-(n+1)` -/
def P11685760472531328806.Spec : Prop :=
  ∀ n, P11685760472531328806.a n = A213826 (n + 1)

theorem P11685760472531328806.correct : P11685760472531328806.Spec := by
  intro n
  simp only [A213826, Nat.add_sub_cancel]

end A213826

/-! ## A213826.P11468143561944244295

`2*A024215(n+1)`
-/

namespace A213826.P11468143561944244295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024215 (n + 1)

end

end A213826.P11468143561944244295

namespace A213826

/-- `2*A024215(n+1)` -/
def P11468143561944244295.Spec : Prop :=
  ∀ n, P11468143561944244295.a n = A213826 (n + 1)

end A213826

/-! ## A213826.P6112278125559456868

`lcm(2, ∑[2*(2*n+n+1)²])`
-/

namespace A213826.P6112278125559456868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213826.P6112278125559456868

namespace A213826

/-- `lcm(2, ∑[2*(2*n+n+1)²])` -/
def P6112278125559456868.Spec : Prop :=
  ∀ n, (P6112278125559456868.a n : ℤ) = A213826 (n + 1)

end A213826

/-! ## A213826.P15399978171896851809

`gcd(2, 2*n)*∑[(2*n+1+n)²]`
-/

namespace A213826.P15399978171896851809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213826.P15399978171896851809

namespace A213826

/-- `gcd(2, 2*n)*∑[(2*n+1+n)²]` -/
def P15399978171896851809.Spec : Prop :=
  ∀ n, (P15399978171896851809.a n : ℤ) = A213826 (n + 1)

end A213826

/-! ## A213826.P5804192897090644729

`2*∑[(C(2*n+1, 2*n)+n)²]`
-/

namespace A213826.P5804192897090644729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (2 * n) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213826.P5804192897090644729

namespace A213826

/-- `2*∑[(C(2*n+1, 2*n)+n)²]` -/
def P5804192897090644729.Spec : Prop :=
  ∀ n, (P5804192897090644729.a n : ℤ) = A213826 (n + 1)

end A213826

/-! ## A213826.P6073763324758884228

`2*∑[(2*n+1+n)^(2%(n+2))]`
-/

namespace A213826.P6073763324758884228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) ^ (2 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213826.P6073763324758884228

namespace A213826

/-- `2*∑[(2*n+1+n)^(2%(n+2))]` -/
def P6073763324758884228.Spec : Prop :=
  ∀ n, (P6073763324758884228.a n : ℤ) = A213826 (n + 1)

end A213826

/-! ## A213826.P6079264029369284276

`((6*n+9)*n%(n+1)+2)*(n+1)`
-/

namespace A213826.P6079264029369284276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((6 * n + 9) * (n % (n + 1)) + 2) * (n + 1)

end

end A213826.P6079264029369284276

namespace A213826

/-- `((6*n+9)*n%(n+1)+2)*(n+1)` -/
def P6079264029369284276.Spec : Prop :=
  ∀ n, (P6079264029369284276.a n : ℤ) = A213826 (n + 1)

theorem P6079264029369284276.correct : P6079264029369284276.Spec := by
  intro n
  simp only [A213826, Nat.add_sub_cancel, A213826.P6079264029369284276.a, A213826.P11685760472531328806.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A213826

/-! ## A213826.P6902408442205404197

`2*∑[(and(2*n+1, 2*n)+n+1)²]`
-/

namespace A213826.P6902408442205404197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (2 * n) + (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213826.P6902408442205404197

namespace A213826

/-- `2*∑[(and(2*n+1, 2*n)+n+1)²]` -/
def P6902408442205404197.Spec : Prop :=
  ∀ n, (P6902408442205404197.a n : ℤ) = A213826 (n + 1)

end A213826

/-! ## A213826.P13996262117669957098

`∑[A081275(n)+1]`
-/

namespace A213826.P13996262117669957098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213826.P13996262117669957098

namespace A213826

/-- `∑[A081275(n)+1]` -/
def P13996262117669957098.Spec : Prop :=
  ∀ n, P13996262117669957098.a n = A213826 (n + 1)

end A213826

/-! ## A213826.P2922968226069433608

`∑[2*A016778(n)]`
-/

namespace A213826.P2922968226069433608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213826.P2922968226069433608

namespace A213826

/-- `∑[2*A016778(n)]` -/
def P2922968226069433608.Spec : Prop :=
  ∀ n, P2922968226069433608.a n = A213826 (n + 1)

end A213826

/-! ## A213826.P6723517671146170646

`∑[A016934(n)/2]`
-/

namespace A213826.P6723517671146170646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016934 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213826.P6723517671146170646

namespace A213826

/-- `∑[A016934(n)/2]` -/
def P6723517671146170646.Spec : Prop :=
  ∀ n, P6723517671146170646.a n = (A213826 (n + 1) : ℚ)

end A213826

/-! ## A213826.P12471317480530367133

`∑[2*A016777(n)²]`
-/

namespace A213826.P12471317480530367133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016777 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213826.P12471317480530367133

namespace A213826

/-- `∑[2*A016777(n)²]` -/
def P12471317480530367133.Spec : Prop :=
  ∀ n, P12471317480530367133.a n = A213826 (n + 1)

end A213826

/-! ## A213826.P5689111661621034060

`∑[A016933(n)²/2]`
-/

namespace A213826.P5689111661621034060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016933 n ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213826.P5689111661621034060

namespace A213826

/-- `∑[A016933(n)²/2]` -/
def P5689111661621034060.Spec : Prop :=
  ∀ n, P5689111661621034060.a n = (A213826 (n + 1) : ℚ)

end A213826

/-! ## A213826.P11686835791056637713

`∑[A033573(n)+n+1]`
-/

namespace A213826.P11686835791056637713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033573 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213826.P11686835791056637713

namespace A213826

/-- `∑[A033573(n)+n+1]` -/
def P11686835791056637713.Spec : Prop :=
  ∀ n, P11686835791056637713.a n = A213826 (n + 1)

end A213826

/-! ## A213826.P3038572822469355200

`2*(A100176(n+1)+∑[n])`
-/

namespace A213826.P3038572822469355200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100176 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A213826.P3038572822469355200

namespace A213826

/-- `2*(A100176(n+1)+∑[n])` -/
def P3038572822469355200.Spec : Prop :=
  ∀ n, P3038572822469355200.a n = A213826 (n + 1)

end A213826

/-! ## A213826.P8373192761420477105

`(n+1)*(A239325(n)+1+n)`
-/

namespace A213826.P8373192761420477105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A239325 n + 1 + (n : ℤ))

end

end A213826.P8373192761420477105

namespace A213826

/-- `(n+1)*(A239325(n)+1+n)` -/
def P8373192761420477105.Spec : Prop :=
  ∀ n, P8373192761420477105.a n = A213826 (n + 1)

theorem P8373192761420477105.correct : P8373192761420477105.Spec := by
  intro n
  simp only [A213826, Nat.add_sub_cancel, A213826.P8373192761420477105.a, A213826.P11685760472531328806.a, A239325, A239325.P6773887657320007265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213826

/-! ## A213826.P18428783736478716680

`(n+1)*(A201279(n)-(n+3))`
-/

namespace A213826.P18428783736478716680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A201279 n - (n + 3 : ℤ))

end

end A213826.P18428783736478716680

namespace A213826

/-- `(n+1)*(A201279(n)-(n+3))` -/
def P18428783736478716680.Spec : Prop :=
  ∀ n, P18428783736478716680.a n = A213826 (n + 1)

theorem P18428783736478716680.correct : P18428783736478716680.Spec := by
  intro n
  simp only [A213826, Nat.add_sub_cancel, A213826.P18428783736478716680.a, A213826.P11685760472531328806.a, A201279, A201279.P16312239377750251695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213826

/-! ## A213826.P18061054422114049512

`(n+1)*(A126587(n+1)+n-1)`
-/

namespace A213826.P18061054422114049512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A126587 (n + 1) + ((n : ℤ) - 1))

end

end A213826.P18061054422114049512

namespace A213826

/-- `(n+1)*(A126587(n+1)+n-1)` -/
def P18061054422114049512.Spec : Prop :=
  ∀ n, P18061054422114049512.a n = A213826 (n + 1)

theorem P18061054422114049512.correct : P18061054422114049512.Spec := by
  intro n
  simp only [A213826, Nat.add_sub_cancel, A213826.P18061054422114049512.a, A213826.P11685760472531328806.a, A126587, A126587.P3273504862915625129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213826

/-! ## A213826.P4057816501778866564

`2*(A045943(n)+A005915(n))`
-/

namespace A213826.P4057816501778866564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045943 n + A005915 n)

end

end A213826.P4057816501778866564

namespace A213826

/-- `2*(A045943(n)+A005915(n))` -/
def P4057816501778866564.Spec : Prop :=
  ∀ n, P4057816501778866564.a n = A213826 (n + 1)

end A213826

/-! ## A213826.P5080400488004341348

`2*(A080860(n)+A005945(n))`
-/

namespace A213826.P5080400488004341348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080860 n + A005945 n)

end

end A213826.P5080400488004341348

namespace A213826

/-- `2*(A080860(n)+A005945(n))` -/
def P5080400488004341348.Spec : Prop :=
  ∀ n, P5080400488004341348.a n = A213826 (n + 1)

end A213826

/-!
# A213827: a(n) = n^2*(n+1)*(3*n+1)/4.

The programs for A213827, the canonical program `A213827.P14983845105146377065` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213827 has offset 0).

The definition of A213827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)*(3*n+1)/4` (program `A213827.P6088580356071326361`, by `A213827.P6088580356071326361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213827.P16148281381287399015

`(n+1)*(3*n+1)*n²/4`
-/

namespace A213827.P16148281381287399015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (3 * n + 1) * n ^ 2 : ℚ) / 4

end

end A213827.P16148281381287399015

namespace A213827

/-- `(n+1)*(3*n+1)*n²/4` -/
def P16148281381287399015.Spec : Prop :=
  ∀ n, P16148281381287399015.a n = (A213827 n : ℚ)

theorem P16148281381287399015.correct : P16148281381287399015.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213827, Nat.add_sub_cancel, A213827.P16148281381287399015.a, A213827.P14983845105146377065.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213827, Nat.add_sub_cancel, A213827.P16148281381287399015.a, A213827.P14983845105146377065.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213827

/-! ## A213827.P6088580356071326361

`n²*(n+1)*(3*n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213827.P6088580356071326361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) * (3 * n + 1) : ℚ) / 4

end

end A213827.P6088580356071326361

namespace A213827

/-- `n²*(n+1)*(3*n+1)/4` -/
def P6088580356071326361.Spec : Prop :=
  ∀ n, P6088580356071326361.a n = (A213827 n : ℚ)

theorem P6088580356071326361.correct : P6088580356071326361.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213827, Nat.add_sub_cancel, A213827.P6088580356071326361.a, A213827.P14983845105146377065.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213827, Nat.add_sub_cancel, A213827.P6088580356071326361.a, A213827.P14983845105146377065.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213827

/-! ## A213827.P14983845105146377065

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=21, a(3)=90, a(4)=260`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213827

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14983845105146377065.Spec : Prop :=
  ∀ n, P14983845105146377065.a n = A213827 n

theorem P14983845105146377065.correct : P14983845105146377065.Spec := by
  intro n
  simp only [A213827]

end A213827

/-! ## A213827.P2480252083372603309

`∑[a(n-1)+3]*∑[n]` with `a(0)=0, a(1)=2`
-/

namespace A213827.P2480252083372603309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213827.P2480252083372603309

namespace A213827

/-- `∑[a(n-1)+3]*∑[n]` -/
def P2480252083372603309.Spec : Prop :=
  ∀ n, (P2480252083372603309.a n : ℤ) = A213827 n

end A213827

/-! ## A213827.P7261223083452652641

`∑[n]*A005449(n)`
-/

namespace A213827.P7261223083452652641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005449 n

end

end A213827.P7261223083452652641

namespace A213827

/-- `∑[n]*A005449(n)` -/
def P7261223083452652641.Spec : Prop :=
  ∀ n, P7261223083452652641.a n = A213827 n

end A213827

/-! ## A213827.P2803180826738511803

`n/4*A027903(n)`
-/

namespace A213827.P2803180826738511803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A027903 n : ℚ)

end

end A213827.P2803180826738511803

namespace A213827

/-- `n/4*A027903(n)` -/
def P2803180826738511803.Spec : Prop :=
  ∀ n, P2803180826738511803.a n = (A213827 n : ℚ)

theorem P2803180826738511803.correct : P2803180826738511803.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213827, Nat.add_sub_cancel, A213827.P2803180826738511803.a, A213827.P14983845105146377065.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213827, Nat.add_sub_cancel, A213827.P2803180826738511803.a, A213827.P14983845105146377065.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A213827

/-! ## A213827.P8451094827553995444

`∑[A005945(n)+n²]`
-/

namespace A213827.P8451094827553995444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213827.P8451094827553995444

namespace A213827

/-- `∑[A005945(n)+n²]` -/
def P8451094827553995444.Spec : Prop :=
  ∀ n, P8451094827553995444.a n = A213827 n

end A213827

/-! ## A213827.P9455332623661135879

`A172045(n)+∑[∑[n]]`
-/

namespace A213827.P9455332623661135879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172045 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213827.P9455332623661135879

namespace A213827

/-- `A172045(n)+∑[∑[n]]` -/
def P9455332623661135879.Spec : Prop :=
  ∀ n, P9455332623661135879.a n = A213827 n

end A213827

/-! ## A213827.P5790791146836103689

`A367117(n)/3-(n+1)`
-/

namespace A213827.P5790791146836103689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367117 n : ℚ) / 3 - (n + 1 : ℚ)

end

end A213827.P5790791146836103689

namespace A213827

/-- `A367117(n)/3-(n+1)` -/
def P5790791146836103689.Spec : Prop :=
  ∀ n, P5790791146836103689.a n = (A213827 n : ℚ)

end A213827

/-! ## A213827.P1427986727101440357

`A297662(n+1)-n*∑[n]`
-/

namespace A213827.P1427986727101440357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A213827.P1427986727101440357

namespace A213827

/-- `A297662(n+1)-n*∑[n]` -/
def P1427986727101440357.Spec : Prop :=
  ∀ n, P1427986727101440357.a n = A213827 n

end A213827

/-! ## A213827.P15904587504012627981

`A062392(n)+A006528(n)`
-/

namespace A213827.P15904587504012627981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A006528 n

end

end A213827.P15904587504012627981

namespace A213827

/-- `A062392(n)+A006528(n)` -/
def P15904587504012627981.Spec : Prop :=
  ∀ n, P15904587504012627981.a n = A213827 n

end A213827

/-! ## A213827.P6208754377415712206

`A163102(n)+A006011(n)`
-/

namespace A213827.P6208754377415712206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + A006011 n

end

end A213827.P6208754377415712206

namespace A213827

/-- `A163102(n)+A006011(n)` -/
def P6208754377415712206.Spec : Prop :=
  ∀ n, P6208754377415712206.a n = A213827 n

end A213827

/-! ## A213827.P3084485299330276898

`A264850(n)+A006484(n)`
-/

namespace A213827.P3084485299330276898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264850 n + A006484 n

end

end A213827.P3084485299330276898

namespace A213827

/-- `A264850(n)+A006484(n)` -/
def P3084485299330276898.Spec : Prop :=
  ∀ n, P3084485299330276898.a n = A213827 n

end A213827

/-! ## A213827.P4838088096646389031

`A176060(n)+A036464(n+1)`
-/

namespace A213827.P4838088096646389031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n + A036464 (n + 1)

end

end A213827.P4838088096646389031

namespace A213827

/-- `A176060(n)+A036464(n+1)` -/
def P4838088096646389031.Spec : Prop :=
  ∀ n, P4838088096646389031.a n = A213827 n

end A213827

/-! ## A213827.P8822107377993614568

`A185355(n+1)+A071238(n)`
-/

namespace A213827.P8822107377993614568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 1) + A071238 n

end

end A213827.P8822107377993614568

namespace A213827

/-- `A185355(n+1)+A071238(n)` -/
def P8822107377993614568.Spec : Prop :=
  ∀ n, P8822107377993614568.a n = A213827 n

end A213827

/-! ## A213827.P14216210985649536427

`A011195(n)-A153978(n+1)`
-/

namespace A213827.P14216210985649536427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011195 n - A153978 (n + 1)

end

end A213827.P14216210985649536427

namespace A213827

/-- `A011195(n)-A153978(n+1)` -/
def P14216210985649536427.Spec : Prop :=
  ∀ n, P14216210985649536427.a n = A213827 n

end A213827

/-! ## A213827.P2132490199022311824

`A027445(n)-A352405(n+1)`
-/

namespace A213827.P2132490199022311824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n - A352405 (n + 1)

end

end A213827.P2132490199022311824

namespace A213827

/-- `A027445(n)-A352405(n+1)` -/
def P2132490199022311824.Spec : Prop :=
  ∀ n, P2132490199022311824.a n = A213827 n

end A213827

/-! ## A213827.P10834540096264768047

`A005449(n)*A161680(n+1)`
-/

namespace A213827.P10834540096264768047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n * A161680 (n + 1)

end

end A213827.P10834540096264768047

namespace A213827

/-- `A005449(n)*A161680(n+1)` -/
def P10834540096264768047.Spec : Prop :=
  ∀ n, P10834540096264768047.a n = A213827 n

end A213827

/-! ## A213827.P7429064854508502937

`A005449(n)*A179865(n+1)`
-/

namespace A213827.P7429064854508502937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n * A179865 (n + 1)

end

end A213827.P7429064854508502937

namespace A213827

/-- `A005449(n)*A179865(n+1)` -/
def P7429064854508502937.Spec : Prop :=
  ∀ n, P7429064854508502937.a n = A213827 n

end A213827

/-! ## A213827.P16424276489398886168

`A006011(n)+2*A000537(n)`
-/

namespace A213827.P16424276489398886168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + 2 * A000537 n

end

end A213827.P16424276489398886168

namespace A213827

/-- `A006011(n)+2*A000537(n)` -/
def P16424276489398886168.Spec : Prop :=
  ∀ n, P16424276489398886168.a n = A213827 n

end A213827

/-!
# A213828: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

The programs for A213828, the canonical program `A213828.P12143672118156655501` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213828 has offset 1).

The definition of A213828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213828.P14176643315951487233

`A213773(n+1)+A104572(n+1)`
-/

namespace A213828.P14176643315951487233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213773 (n + 1) + A104572 (n + 1)

end

end A213828.P14176643315951487233

namespace A213828

/-- `A213773(n+1)+A104572(n+1)` -/
def P14176643315951487233.Spec : Prop :=
  ∀ n, P14176643315951487233.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P10975001422233940287

`A213833(n+1)+A213771(n+1)`
-/

namespace A213828.P10975001422233940287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A213771 (n + 1)

end

end A213828.P10975001422233940287

namespace A213828

/-- `A213833(n+1)+A213771(n+1)` -/
def P10975001422233940287.Spec : Prop :=
  ∀ n, P10975001422233940287.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P12143672118156655501

`A213822(n+1)-A096037(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A213828

/-- `A213822(n+1)-A096037(n+1)` -/
def P12143672118156655501.Spec : Prop :=
  ∀ n, P12143672118156655501.a n = A213828 (n + 1)

theorem P12143672118156655501.correct : P12143672118156655501.Spec := by
  intro n
  simp only [A213828, Nat.add_sub_cancel]

end A213828

/-! ## A213828.P11377053143547424505

`A213822(n+1)-(A096038(n+1)+1)`
-/

namespace A213828.P11377053143547424505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - (A096038 (n + 1) + 1)

end

end A213828.P11377053143547424505

namespace A213828

/-- `A213822(n+1)-(A096038(n+1)+1)` -/
def P11377053143547424505.Spec : Prop :=
  ∀ n, P11377053143547424505.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P13746974216251783429

`A213773(n+1)+A001318(A099375(n))`
-/

namespace A213828.P13746974216251783429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213773 (n + 1) + A001318 (A099375 n).toNat

end

end A213828.P13746974216251783429

namespace A213828

/-- `A213773(n+1)+A001318(A099375(n))` -/
def P13746974216251783429.Spec : Prop :=
  ∀ n, P13746974216251783429.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P4671139254067509133

`A213773(n+1)+A000326(A004736(n+1))`
-/

namespace A213828.P4671139254067509133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213773 (n + 1) + A000326 (A004736 (n + 1)).toNat

end

end A213828.P4671139254067509133

namespace A213828

/-- `A213773(n+1)+A000326(A004736(n+1))` -/
def P4671139254067509133.Spec : Prop :=
  ∀ n, P4671139254067509133.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P3510930272276264152

`A213771(n+1)+A014682(A213773(n+1)+A213771(n+1))`
-/

namespace A213828.P3510930272276264152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A014682 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213828.P3510930272276264152

namespace A213828

/-- `A213771(n+1)+A014682(A213773(n+1)+A213771(n+1))` -/
def P3510930272276264152.Spec : Prop :=
  ∀ n, P3510930272276264152.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P5416473353397424197

`A008486(A213771(n+1))-A104572(n+1)`
-/

namespace A213828.P5416473353397424197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213771 (n + 1)).toNat - A104572 (n + 1)

end

end A213828.P5416473353397424197

namespace A213828

/-- `A008486(A213771(n+1))-A104572(n+1)` -/
def P5416473353397424197.Spec : Prop :=
  ∀ n, P5416473353397424197.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P2836784642746794578

`A008486(A213819(n+1))-2*A096037(n+1)`
-/

namespace A213828.P2836784642746794578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213819 (n + 1)).toNat - 2 * A096037 (n + 1)

end

end A213828.P2836784642746794578

namespace A213828

/-- `A008486(A213819(n+1))-2*A096037(n+1)` -/
def P2836784642746794578.Spec : Prop :=
  ∀ n, P2836784642746794578.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P6975936755325449727

`A008486(A213771(n+1))-A001318(A099375(n))`
-/

namespace A213828.P6975936755325449727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213771 (n + 1)).toNat - A001318 (A099375 n).toNat

end

end A213828.P6975936755325449727

namespace A213828

/-- `A008486(A213771(n+1))-A001318(A099375(n))` -/
def P6975936755325449727.Spec : Prop :=
  ∀ n, P6975936755325449727.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P1819250067554685168

`A008486(A213771(n+1))-A000326(A004736(n+1))`
-/

namespace A213828.P1819250067554685168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213771 (n + 1)).toNat - A000326 (A004736 (n + 1)).toNat

end

end A213828.P1819250067554685168

namespace A213828

/-- `A008486(A213771(n+1))-A000326(A004736(n+1))` -/
def P1819250067554685168.Spec : Prop :=
  ∀ n, P1819250067554685168.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P13405904629991623419

`A008486(A213833(n+1))-A213773(n+1)`
-/

namespace A213828.P13405904629991623419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213833 (n + 1)).toNat - A213773 (n + 1)

end

end A213828.P13405904629991623419

namespace A213828

/-- `A008486(A213833(n+1))-A213773(n+1)` -/
def P13405904629991623419.Spec : Prop :=
  ∀ n, P13405904629991623419.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P863476259819199607

`A213833(n+1)+A004525(A213833(n+1)+A104572(n+1))`
-/

namespace A213828.P863476259819199607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A004525 (A213833 (n + 1) + A104572 (n + 1)).toNat

end

end A213828.P863476259819199607

namespace A213828

/-- `A213833(n+1)+A004525(A213833(n+1)+A104572(n+1))` -/
def P863476259819199607.Spec : Prop :=
  ∀ n, P863476259819199607.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P8415607189388247597

`A213833(n+1)+A029578(A213833(n+1)+A104572(n+1))`
-/

namespace A213828.P8415607189388247597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A029578 (A213833 (n + 1) + A104572 (n + 1)).toNat

end

end A213828.P8415607189388247597

namespace A213828

/-- `A213833(n+1)+A029578(A213833(n+1)+A104572(n+1))` -/
def P8415607189388247597.Spec : Prop :=
  ∀ n, P8415607189388247597.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P14488016064680708018

`A213833(n+1)+A110654(A213833(n+1)+A104572(n+1))`
-/

namespace A213828.P14488016064680708018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A110654 (A213833 (n + 1) + A104572 (n + 1)).toNat

end

end A213828.P14488016064680708018

namespace A213828

/-- `A213833(n+1)+A110654(A213833(n+1)+A104572(n+1))` -/
def P14488016064680708018.Spec : Prop :=
  ∀ n, P14488016064680708018.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P485885794566656280

`A213771(n+1)+A004525(A213773(n+1)+A213771(n+1))`
-/

namespace A213828.P485885794566656280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A004525 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213828.P485885794566656280

namespace A213828

/-- `A213771(n+1)+A004525(A213773(n+1)+A213771(n+1))` -/
def P485885794566656280.Spec : Prop :=
  ∀ n, P485885794566656280.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P5004486785733820548

`A213771(n+1)+A026741(A213773(n+1)+A213771(n+1))`
-/

namespace A213828.P5004486785733820548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A026741 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213828.P5004486785733820548

namespace A213828

/-- `A213771(n+1)+A026741(A213773(n+1)+A213771(n+1))` -/
def P5004486785733820548.Spec : Prop :=
  ∀ n, P5004486785733820548.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P17861710030102706462

`A213771(n+1)+A029578(A213773(n+1)+A213771(n+1))`
-/

namespace A213828.P17861710030102706462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A029578 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213828.P17861710030102706462

namespace A213828

/-- `A213771(n+1)+A029578(A213773(n+1)+A213771(n+1))` -/
def P17861710030102706462.Spec : Prop :=
  ∀ n, P17861710030102706462.a n = A213828 (n + 1)

end A213828

/-! ## A213828.P653786304136140606

`A213771(n+1)+A110654(A213773(n+1)+A213771(n+1))`
-/

namespace A213828.P653786304136140606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A110654 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213828.P653786304136140606

namespace A213828

/-- `A213771(n+1)+A110654(A213773(n+1)+A213771(n+1))` -/
def P653786304136140606.Spec : Prop :=
  ∀ n, P653786304136140606.a n = A213828 (n + 1)

end A213828

/-!
# A213829: Principal diagonal of the convolution array A213828.

The programs for A213829, the canonical program `A213829.P6978316186331925681` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213829 has offset 1).

The definition of A213829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213829.P16847458731951488575

`2*(n+1-3*(n+1)²+3*(n+1)^3)`
-/

namespace A213829.P16847458731951488575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (3 * (n + 1) ^ 3 : ℤ))

end

end A213829.P16847458731951488575

namespace A213829

/-- `2*(n+1-3*(n+1)²+3*(n+1)^3)` -/
def P16847458731951488575.Spec : Prop :=
  ∀ n, P16847458731951488575.a n = A213829 (n + 1)

theorem P16847458731951488575.correct : P16847458731951488575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213829, Nat.add_sub_cancel, A213829.P16847458731951488575.a, A213829.P6978316186331925681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213829, Nat.add_sub_cancel, A213829.P16847458731951488575.a, A213829.P6978316186331925681.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213829

/-! ## A213829.P6978316186331925681

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=28, a(2)=114, a(3)=296`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213829

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6978316186331925681.Spec : Prop :=
  ∀ n, P6978316186331925681.a n = A213829 (n + 1)

theorem P6978316186331925681.correct : P6978316186331925681.Spec := by
  intro n
  simp only [A213829, Nat.add_sub_cancel]

end A213829

/-! ## A213829.P14249039806469272374

`∑[∑[a(n-1)+36]]` with `a(0)=2, a(1)=24`
-/

namespace A213829.P14249039806469272374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 24] fun n f2 =>
  f2 (n - 1) + 36

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P14249039806469272374

namespace A213829

/-- `∑[∑[a(n-1)+36]]` -/
def P14249039806469272374.Spec : Prop :=
  ∀ n, (P14249039806469272374.a n : ℤ) = A213829 (n + 1)

end A213829

/-! ## A213829.P16126028864717276683

`∑[xor(2, n*(18*n+6))]`
-/

namespace A213829.P16126028864717276683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n * (18 * n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P16126028864717276683

namespace A213829

/-- `∑[xor(2, n*(18*n+6))]` -/
def P16126028864717276683.Spec : Prop :=
  ∀ n, (P16126028864717276683.a n : ℤ) = A213829 (n + 1)

end A213829

/-! ## A213829.P1308849600154887033

`lcm(n+2+n, Δ[n^3])`
-/

namespace A213829.P1308849600154887033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 + n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A213829.P1308849600154887033

namespace A213829

/-- `lcm(n+2+n, Δ[n^3])` -/
def P1308849600154887033.Spec : Prop :=
  ∀ n, (P1308849600154887033.a n : ℤ) = A213829 (n + 1)

end A213829

/-! ## A213829.P2208929740139869273

`∑[A081272(n)+1]`
-/

namespace A213829.P2208929740139869273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P2208929740139869273

namespace A213829

/-- `∑[A081272(n)+1]` -/
def P2208929740139869273.Spec : Prop :=
  ∀ n, P2208929740139869273.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P4524096493251924198

`∑[A045946(n)+2]`
-/

namespace A213829.P4524096493251924198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045946 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P4524096493251924198

namespace A213829

/-- `∑[A045946(n)+2]` -/
def P4524096493251924198.Spec : Prop :=
  ∀ n, P4524096493251924198.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P4421749183082021998

`∑[2*A082040(n)]`
-/

namespace A213829.P4421749183082021998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P4421749183082021998

namespace A213829

/-- `∑[2*A082040(n)]` -/
def P4421749183082021998.Spec : Prop :=
  ∀ n, P4421749183082021998.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P12574746185131175035

`∑[∑[2*A019557(n)]]`
-/

namespace A213829.P12574746185131175035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P12574746185131175035

namespace A213829

/-- `∑[∑[2*A019557(n)]]` -/
def P12574746185131175035.Spec : Prop :=
  ∀ n, P12574746185131175035.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P7698697301189829193

`∑[2*(A045945(n)+1)]`
-/

namespace A213829.P7698697301189829193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045945 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P7698697301189829193

namespace A213829

/-- `∑[2*(A045945(n)+1)]` -/
def P7698697301189829193.Spec : Prop :=
  ∀ n, P7698697301189829193.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P15530522112210080741

`∑[A298037(2*n)+1]`
-/

namespace A213829.P15530522112210080741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P15530522112210080741

namespace A213829

/-- `∑[A298037(2*n)+1]` -/
def P15530522112210080741.Spec : Prop :=
  ∀ n, P15530522112210080741.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P7106742243098516168

`A011199(n)+(n+1)²`
-/

namespace A213829.P7106742243098516168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 n + ((n + 1) ^ 2 : ℤ)

end

end A213829.P7106742243098516168

namespace A213829

/-- `A011199(n)+(n+1)²` -/
def P7106742243098516168.Spec : Prop :=
  ∀ n, P7106742243098516168.a n = A213829 (n + 1)

theorem P7106742243098516168.correct : P7106742243098516168.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213829, Nat.add_sub_cancel, A213829.P7106742243098516168.a, A213829.P6978316186331925681.a, A011199, A011199.P5039899721906082050.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213829, Nat.add_sub_cancel, A213829.P7106742243098516168.a, A213829.P6978316186331925681.a, A011199, A011199.P5039899721906082050.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A213829

/-! ## A213829.P8670059791998119299

`n*A005897(n+1)+2`
-/

namespace A213829.P8670059791998119299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005897 (n + 1) + 2

end

end A213829.P8670059791998119299

namespace A213829

/-- `n*A005897(n+1)+2` -/
def P8670059791998119299.Spec : Prop :=
  ∀ n, P8670059791998119299.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P6919381615188858300

`(n+1)*A164016(n)/3`
-/

namespace A213829.P6919381615188858300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A164016 n : ℚ) / 3

end

end A213829.P6919381615188858300

namespace A213829

/-- `(n+1)*A164016(n)/3` -/
def P6919381615188858300.Spec : Prop :=
  ∀ n, P6919381615188858300.a n = (A213829 (n + 1) : ℚ)

theorem P6919381615188858300.correct : P6919381615188858300.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213829, Nat.add_sub_cancel, A213829.P6919381615188858300.a, A213829.P6978316186331925681.a, A164016, A164016.P9958735219434589405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213829, Nat.add_sub_cancel, A213829.P6919381615188858300.a, A213829.P6978316186331925681.a, A164016, A164016.P9958735219434589405.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A213829

/-! ## A213829.P4255124878443570332

`A027849(n)+(n+1)^3`
-/

namespace A213829.P4255124878443570332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n + ((n + 1) ^ 3 : ℤ)

end

end A213829.P4255124878443570332

namespace A213829

/-- `A027849(n)+(n+1)^3` -/
def P4255124878443570332.Spec : Prop :=
  ∀ n, P4255124878443570332.a n = A213829 (n + 1)

theorem P4255124878443570332.correct : P4255124878443570332.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213829, Nat.add_sub_cancel, A213829.P4255124878443570332.a, A213829.P6978316186331925681.a, A027849, A027849.P11589793859807254720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213829, Nat.add_sub_cancel, A213829.P4255124878443570332.a, A213829.P6978316186331925681.a, A027849, A027849.P11589793859807254720.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A213829

/-! ## A213829.P864250913189990787

`∑[n*A063136(n+1)+2]`
-/

namespace A213829.P864250913189990787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063136 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P864250913189990787

namespace A213829

/-- `∑[n*A063136(n+1)+2]` -/
def P864250913189990787.Spec : Prop :=
  ∀ n, P864250913189990787.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P4015296897141237675

`A187163(n+1)+2*(n+1)`
-/

namespace A213829.P4015296897141237675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187163 (n + 1) + (2 * (n + 1) : ℤ)

end

end A213829.P4015296897141237675

namespace A213829

/-- `A187163(n+1)+2*(n+1)` -/
def P4015296897141237675.Spec : Prop :=
  ∀ n, P4015296897141237675.a n = A213829 (n + 1)

theorem P4015296897141237675.correct : P4015296897141237675.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213829, Nat.add_sub_cancel, A213829.P4015296897141237675.a, A213829.P6978316186331925681.a, A187163, A187163.P15872126836893441574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213829, Nat.add_sub_cancel, A213829.P4015296897141237675.a, A213829.P6978316186331925681.a, A187163, A187163.P15872126836893441574.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A213829

/-! ## A213829.P11185796027073077529

`∑[A247792(n)+A016778(n)]`
-/

namespace A213829.P11185796027073077529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n + A016778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213829.P11185796027073077529

namespace A213829

/-- `∑[A247792(n)+A016778(n)]` -/
def P11185796027073077529.Spec : Prop :=
  ∀ n, P11185796027073077529.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P10249108973947573296

`A100183(n+1)+A005906(n)`
-/

namespace A213829.P10249108973947573296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100183 (n + 1) + A005906 n

end

end A213829.P10249108973947573296

namespace A213829

/-- `A100183(n+1)+A005906(n)` -/
def P10249108973947573296.Spec : Prop :=
  ∀ n, P10249108973947573296.a n = A213829 (n + 1)

end A213829

/-! ## A213829.P13735289202393445975

`A100187(n+1)+A096000(n)`
-/

namespace A213829.P13735289202393445975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100187 (n + 1) + A096000 n

end

end A213829.P13735289202393445975

namespace A213829

/-- `A100187(n+1)+A096000(n)` -/
def P13735289202393445975.Spec : Prop :=
  ∀ n, P13735289202393445975.a n = A213829 (n + 1)

end A213829

/-!
# A213830: Antidiagonal sums of the convolution array A213828.

The programs for A213830, the canonical program `A213830.P4444991448867391941` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213830 has offset 1).

The definition of A213830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213830.P12586555943400898631

`(2*(n+1)+(n+1)²+2*(n+1)^3+3*(n+1)^4)/4`
-/

namespace A213830.P12586555943400898631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + (n + 1) ^ 2 + 2 * (n + 1) ^ 3 + 3 * (n + 1) ^ 4 : ℚ) / 4

end

end A213830.P12586555943400898631

namespace A213830

/-- `(2*(n+1)+(n+1)²+2*(n+1)^3+3*(n+1)^4)/4` -/
def P12586555943400898631.Spec : Prop :=
  ∀ n, P12586555943400898631.a n = (A213830 (n + 1) : ℚ)

theorem P12586555943400898631.correct : P12586555943400898631.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213830, Nat.add_sub_cancel, A213830.P12586555943400898631.a, A213830.P4444991448867391941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213830, Nat.add_sub_cancel, A213830.P12586555943400898631.a, A213830.P4444991448867391941.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213830

/-! ## A213830.P4444991448867391941

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=18, a(2)=78, a(3)=230, a(4)=540`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213830

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4444991448867391941.Spec : Prop :=
  ∀ n, P4444991448867391941.a n = A213830 (n + 1)

theorem P4444991448867391941.correct : P4444991448867391941.Spec := by
  intro n
  simp only [A213830, Nat.add_sub_cancel]

end A213830

/-! ## A213830.P2254488842190025907

`2*∑[∑[∑[ogf((1+4x+4x^2)/(1-2x+x^2))]]]`
-/

namespace A213830.P2254488842190025907
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213830.P2254488842190025907

namespace A213830

/-- `2*∑[∑[∑[ogf((1+4x+4x^2)/(1-2x+x^2))]]]` -/
def P2254488842190025907.Spec : Prop :=
  ∀ n, P2254488842190025907.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P174520587234262852

`∑[2*A100175(n+1)]`
-/

namespace A213830.P174520587234262852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213830.P174520587234262852

namespace A213830

/-- `∑[2*A100175(n+1)]` -/
def P174520587234262852.Spec : Prop :=
  ∀ n, P174520587234262852.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P4625544476173294164

`∑[A005915(n)+n+1]`
-/

namespace A213830.P4625544476173294164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213830.P4625544476173294164

namespace A213830

/-- `∑[A005915(n)+n+1]` -/
def P4625544476173294164.Spec : Prop :=
  ∀ n, P4625544476173294164.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P4063871426985546859

`A126274(n)+∑[n+1]`
-/

namespace A213830.P4063871426985546859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213830.P4063871426985546859

namespace A213830

/-- `A126274(n)+∑[n+1]` -/
def P4063871426985546859.Spec : Prop :=
  ∀ n, P4063871426985546859.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P6597879488457988405

`∑[n+1]*A143689(n+1)`
-/

namespace A213830.P6597879488457988405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A143689 (n + 1)

end

end A213830.P6597879488457988405

namespace A213830

/-- `∑[n+1]*A143689(n+1)` -/
def P6597879488457988405.Spec : Prop :=
  ∀ n, P6597879488457988405.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P14442994162212350753

`2*∑[∑[A000217(3*n)+1]]`
-/

namespace A213830.P14442994162212350753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213830.P14442994162212350753

namespace A213830

/-- `2*∑[∑[A000217(3*n)+1]]` -/
def P14442994162212350753.Spec : Prop :=
  ∀ n, P14442994162212350753.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P14086952536776053868

`A027441(n+1)+∑[n+1]²`
-/

namespace A213830.P14086952536776053868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A213830.P14086952536776053868

namespace A213830

/-- `A027441(n+1)+∑[n+1]²` -/
def P14086952536776053868.Spec : Prop :=
  ∀ n, P14086952536776053868.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P14113096642508310153

`(∑[A016777(n)]+1)*∑[n+1]`
-/

namespace A213830.P14113096642508310153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213830.P14113096642508310153

namespace A213830

/-- `(∑[A016777(n)]+1)*∑[n+1]` -/
def P14113096642508310153.Spec : Prop :=
  ∀ n, P14113096642508310153.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P1391314995792785527

`A134393(n+1)+A053134(n)`
-/

namespace A213830.P1391314995792785527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134393 (n + 1) + A053134 n

end

end A213830.P1391314995792785527

namespace A213830

/-- `A134393(n+1)+A053134(n)` -/
def P1391314995792785527.Spec : Prop :=
  ∀ n, P1391314995792785527.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P1350746235703034168

`A302560(n+1)+A133252(n)`
-/

namespace A213830.P1350746235703034168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1) + A133252 n

end

end A213830.P1350746235703034168

namespace A213830

/-- `A302560(n+1)+A133252(n)` -/
def P1350746235703034168.Spec : Prop :=
  ∀ n, P1350746235703034168.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P5147919838647281554

`A179824(n+2)-A033487(n)`
-/

namespace A213830.P5147919838647281554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2) - A033487 n

end

end A213830.P5147919838647281554

namespace A213830

/-- `A179824(n+2)-A033487(n)` -/
def P5147919838647281554.Spec : Prop :=
  ∀ n, P5147919838647281554.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P2347596165731781007

`A213834(n+1)+A132117(n+1)`
-/

namespace A213830.P2347596165731781007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213834 (n + 1) + A132117 (n + 1)

end

end A213830.P2347596165731781007

namespace A213830

/-- `A213834(n+1)+A132117(n+1)` -/
def P2347596165731781007.Spec : Prop :=
  ∀ n, P2347596165731781007.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P1908520090645152817

`2*(A002418(n)+A002417(n+1))`
-/

namespace A213830.P1908520090645152817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002418 n + A002417 (n + 1))

end

end A213830.P1908520090645152817

namespace A213830

/-- `2*(A002418(n)+A002417(n+1))` -/
def P1908520090645152817.Spec : Prop :=
  ∀ n, P1908520090645152817.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P17348723997404501623

`2*(A133252(n)+A052149(n+1))`
-/

namespace A213830.P17348723997404501623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133252 n + A052149 (n + 1))

end

end A213830.P17348723997404501623

namespace A213830

/-- `2*(A133252(n)+A052149(n+1))` -/
def P17348723997404501623.Spec : Prop :=
  ∀ n, P17348723997404501623.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P15100892431120493416

`A153978(n+1)+2*A132117(n+1)`
-/

namespace A213830.P15100892431120493416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153978 (n + 1) + 2 * A132117 (n + 1)

end

end A213830.P15100892431120493416

namespace A213830

/-- `A153978(n+1)+2*A132117(n+1)` -/
def P15100892431120493416.Spec : Prop :=
  ∀ n, P15100892431120493416.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P11090733582731902545

`2*A213834(n+1)-A153978(n+1)`
-/

namespace A213830.P11090733582731902545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213834 (n + 1) - A153978 (n + 1)

end

end A213830.P11090733582731902545

namespace A213830

/-- `2*A213834(n+1)-A153978(n+1)` -/
def P11090733582731902545.Spec : Prop :=
  ∀ n, P11090733582731902545.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P17472894097583771590

`(n²+A000096(n+1))*A000217(n+1)`
-/

namespace A213830.P17472894097583771590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + A000096 (n + 1)) * A000217 (n + 1)

end

end A213830.P17472894097583771590

namespace A213830

/-- `(n²+A000096(n+1))*A000217(n+1)` -/
def P17472894097583771590.Spec : Prop :=
  ∀ n, P17472894097583771590.a n = A213830 (n + 1)

end A213830

/-! ## A213830.P11645475111080366746

`((n+1)²+A000124(n))*A000217(n+1)`
-/

namespace A213830.P11645475111080366746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) + A000124 n) * A000217 (n + 1)

end

end A213830.P11645475111080366746

namespace A213830

/-- `((n+1)²+A000124(n))*A000217(n+1)` -/
def P11645475111080366746.Spec : Prop :=
  ∀ n, P11645475111080366746.a n = A213830 (n + 1)

end A213830

/-!
# A213831: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 3*n-5+3*h, n>=1, h>=1, and ** = convolution.

The programs for A213831, the canonical program `A213831.P8395432424309219939` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213831 has offset 1).

The definition of A213831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213831.P8395432424309219939

`A213825(n+1)-A213761(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A213831

/-- `A213825(n+1)-A213761(n+1)` -/
def P8395432424309219939.Spec : Prop :=
  ∀ n, P8395432424309219939.a n = A213831 (n + 1)

theorem P8395432424309219939.correct : P8395432424309219939.Spec := by
  intro n
  simp only [A213831, Nat.add_sub_cancel]

end A213831

/-! ## A213831.P1997666342346346709

`2*A213752(n+1)-A213751(n+1)`
-/

namespace A213831.P1997666342346346709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213752 (n + 1) - A213751 (n + 1)

end

end A213831.P1997666342346346709

namespace A213831

/-- `2*A213752(n+1)-A213751(n+1)` -/
def P1997666342346346709.Spec : Prop :=
  ∀ n, P1997666342346346709.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P11089682268798083431

`(A213773(n+1)+A213761(n+1))/2`
-/

namespace A213831.P11089682268798083431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213773 (n + 1) + A213761 (n + 1) : ℚ) / 2

end

end A213831.P11089682268798083431

namespace A213831

/-- `(A213773(n+1)+A213761(n+1))/2` -/
def P11089682268798083431.Spec : Prop :=
  ∀ n, P11089682268798083431.a n = (A213831 (n + 1) : ℚ)

end A213831

/-! ## A213831.P13306605573309922217

`(A213841(n+1)+A213752(n+1))/2`
-/

namespace A213831.P13306605573309922217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213841 (n + 1) + A213752 (n + 1) : ℚ) / 2

end

end A213831.P13306605573309922217

namespace A213831

/-- `(A213841(n+1)+A213752(n+1))/2` -/
def P13306605573309922217.Spec : Prop :=
  ∀ n, P13306605573309922217.a n = (A213831 (n + 1) : ℚ)

end A213831

/-! ## A213831.P11601672884161739818

`A213833(n+1)+A004247(A007401(n+1))`
-/

namespace A213831.P11601672884161739818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 1) + A004247 (A007401 (n + 1)).toNat

end

end A213831.P11601672884161739818

namespace A213831

/-- `A213833(n+1)+A004247(A007401(n+1))` -/
def P11601672884161739818.Spec : Prop :=
  ∀ n, P11601672884161739818.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P6518995597561453733

`A213752(n+1)+A014682(A213841(n+1)-A213752(n+1))`
-/

namespace A213831.P6518995597561453733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A014682 (A213841 (n + 1) - A213752 (n + 1)).toNat

end

end A213831.P6518995597561453733

namespace A213831

/-- `A213752(n+1)+A014682(A213841(n+1)-A213752(n+1))` -/
def P6518995597561453733.Spec : Prop :=
  ∀ n, P6518995597561453733.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P13862064920636941857

`A213761(n+1)+A014682(A213773(n+1)-A213761(n+1))`
-/

namespace A213831.P13862064920636941857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A014682 (A213773 (n + 1) - A213761 (n + 1)).toNat

end

end A213831.P13862064920636941857

namespace A213831

/-- `A213761(n+1)+A014682(A213773(n+1)-A213761(n+1))` -/
def P13862064920636941857.Spec : Prop :=
  ∀ n, P13862064920636941857.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P11115415962870566297

`A014682(A213773(n+1)+A213761(n+1))`
-/

namespace A213831.P11115415962870566297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213773 (n + 1) + A213761 (n + 1)).toNat

end

end A213831.P11115415962870566297

namespace A213831

/-- `A014682(A213773(n+1)+A213761(n+1))` -/
def P11115415962870566297.Spec : Prop :=
  ∀ n, P11115415962870566297.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P1682538869815731509

`A014682(A213841(n+1)+A213752(n+1))`
-/

namespace A213831.P1682538869815731509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213841 (n + 1) + A213752 (n + 1)).toNat

end

end A213831.P1682538869815731509

namespace A213831

/-- `A014682(A213841(n+1)+A213752(n+1))` -/
def P1682538869815731509.Spec : Prop :=
  ∀ n, P1682538869815731509.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P5938970043848842839

`A213751(n+1)+A005843(A213751(n+1)-A055461(n+1))`
-/

namespace A213831.P5938970043848842839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + A005843 (A213751 (n + 1) - A055461 (n + 1)).toNat

end

end A213831.P5938970043848842839

namespace A213831

/-- `A213751(n+1)+A005843(A213751(n+1)-A055461(n+1))` -/
def P5938970043848842839.Spec : Prop :=
  ∀ n, P5938970043848842839.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P576266863689165400

`A213752(n+1)+A004525(A213841(n+1)-A213752(n+1))`
-/

namespace A213831.P576266863689165400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A004525 (A213841 (n + 1) - A213752 (n + 1)).toNat

end

end A213831.P576266863689165400

namespace A213831

/-- `A213752(n+1)+A004525(A213841(n+1)-A213752(n+1))` -/
def P576266863689165400.Spec : Prop :=
  ∀ n, P576266863689165400.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P17140709236546813132

`A213752(n+1)+A026741(A213841(n+1)-A213752(n+1))`
-/

namespace A213831.P17140709236546813132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A026741 (A213841 (n + 1) - A213752 (n + 1)).toNat

end

end A213831.P17140709236546813132

namespace A213831

/-- `A213752(n+1)+A026741(A213841(n+1)-A213752(n+1))` -/
def P17140709236546813132.Spec : Prop :=
  ∀ n, P17140709236546813132.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P51100272115068579

`A005843(A213752(n+1))-A213751(n+1)`
-/

namespace A213831.P51100272115068579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213752 (n + 1)).toNat - A213751 (n + 1)

end

end A213831.P51100272115068579

namespace A213831

/-- `A005843(A213752(n+1))-A213751(n+1)` -/
def P51100272115068579.Spec : Prop :=
  ∀ n, P51100272115068579.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P17350169609535866752

`A213761(n+1)+A004525(A213773(n+1)-A213761(n+1))`
-/

namespace A213831.P17350169609535866752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A004525 (A213773 (n + 1) - A213761 (n + 1)).toNat

end

end A213831.P17350169609535866752

namespace A213831

/-- `A213761(n+1)+A004525(A213773(n+1)-A213761(n+1))` -/
def P17350169609535866752.Spec : Prop :=
  ∀ n, P17350169609535866752.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P11708484464310482863

`A004525(A213773(n+1)+A213761(n+1))`
-/

namespace A213831.P11708484464310482863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213773 (n + 1) + A213761 (n + 1)).toNat

end

end A213831.P11708484464310482863

namespace A213831

/-- `A004525(A213773(n+1)+A213761(n+1))` -/
def P11708484464310482863.Spec : Prop :=
  ∀ n, P11708484464310482863.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P693340037860299913

`A004525(A213841(n+1)+A213752(n+1))`
-/

namespace A213831.P693340037860299913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213841 (n + 1) + A213752 (n + 1)).toNat

end

end A213831.P693340037860299913

namespace A213831

/-- `A004525(A213841(n+1)+A213752(n+1))` -/
def P693340037860299913.Spec : Prop :=
  ∀ n, P693340037860299913.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P5736872608623648014

`A026741(A213841(n+1)+A213752(n+1))`
-/

namespace A213831.P5736872608623648014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213841 (n + 1) + A213752 (n + 1)).toNat

end

end A213831.P5736872608623648014

namespace A213831

/-- `A026741(A213841(n+1)+A213752(n+1))` -/
def P5736872608623648014.Spec : Prop :=
  ∀ n, P5736872608623648014.a n = A213831 (n + 1)

end A213831

/-! ## A213831.P14008969501704640818

`A002264(A213825(n+1)+A213773(n+1))`
-/

namespace A213831.P14008969501704640818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A213825 (n + 1) + A213773 (n + 1)).toNat

end

end A213831.P14008969501704640818

namespace A213831

/-- `A002264(A213825(n+1)+A213773(n+1))` -/
def P14008969501704640818.Spec : Prop :=
  ∀ n, P14008969501704640818.a n = A213831 (n + 1)

end A213831

/-!
# A213832: Principal diagonal of the convolution array A213831.

The programs for A213832, the canonical program `A213832.P13969125488232463204` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213832 has offset 1).

The definition of A213832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213832.P17711982831975914374

`(n+1-7*(n+1)²+8*(n+1)^3)/2`
-/

namespace A213832.P17711982831975914374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (7 * (n + 1) ^ 2 : ℤ) + (8 * (n + 1) ^ 3 : ℤ) : ℚ) / 2

end

end A213832.P17711982831975914374

namespace A213832

/-- `(n+1-7*(n+1)²+8*(n+1)^3)/2` -/
def P17711982831975914374.Spec : Prop :=
  ∀ n, P17711982831975914374.a n = (A213832 (n + 1) : ℚ)

theorem P17711982831975914374.correct : P17711982831975914374.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213832, Nat.add_sub_cancel, A213832.P17711982831975914374.a, A213832.P13969125488232463204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213832, Nat.add_sub_cancel, A213832.P17711982831975914374.a, A213832.P13969125488232463204.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213832

/-! ## A213832.P13969125488232463204

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=19, a(2)=78, a(3)=202`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213832

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13969125488232463204.Spec : Prop :=
  ∀ n, P13969125488232463204.a n = A213832 (n + 1)

theorem P13969125488232463204.correct : P13969125488232463204.Spec := by
  intro n
  simp only [A213832, Nat.add_sub_cancel]

end A213832

/-! ## A213832.P17614748428031025995

`∑[∑[a(n-1)+24]]` with `a(0)=1, a(1)=17`
-/

namespace A213832.P17614748428031025995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213832.P17614748428031025995

namespace A213832

/-- `∑[∑[a(n-1)+24]]` -/
def P17614748428031025995.Spec : Prop :=
  ∀ n, (P17614748428031025995.a n : ℤ) = A213832 (n + 1)

end A213832

/-! ## A213832.P12680000867168988790

`∑[3*lcm(2*n+1, 2*n)-(n-1)]`
-/

namespace A213832.P12680000867168988790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lcm (2 * n + 1) (2 * n) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213832.P12680000867168988790

namespace A213832

/-- `∑[3*lcm(2*n+1, 2*n)-(n-1)]` -/
def P12680000867168988790.Spec : Prop :=
  ∀ n, P12680000867168988790.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P17040172805380041674

`∑[A244806(n+1)]`
-/

namespace A213832.P17040172805380041674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213832.P17040172805380041674

namespace A213832

/-- `∑[A244806(n+1)]` -/
def P17040172805380041674.Spec : Prop :=
  ∀ n, P17040172805380041674.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P16181493510218671695

`∑[A396290(n)+1]`
-/

namespace A213832.P16181493510218671695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396290 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213832.P16181493510218671695

namespace A213832

/-- `∑[A396290(n)+1]` -/
def P16181493510218671695.Spec : Prop :=
  ∀ n, P16181493510218671695.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P4339210332291637610

`A139757(n)+∑[n]`
-/

namespace A213832.P4339210332291637610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213832.P4339210332291637610

namespace A213832

/-- `A139757(n)+∑[n]` -/
def P4339210332291637610.Spec : Prop :=
  ∀ n, P4339210332291637610.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P15745128874640365893

`∑[A381390(n)+n]`
-/

namespace A213832.P15745128874640365893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213832.P15745128874640365893

namespace A213832

/-- `∑[A381390(n)+n]` -/
def P15745128874640365893.Spec : Prop :=
  ∀ n, P15745128874640365893.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P11107198323979728199

`A103532(n)-∑[n]`
-/

namespace A213832.P11107198323979728199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213832.P11107198323979728199

namespace A213832

/-- `A103532(n)-∑[n]` -/
def P11107198323979728199.Spec : Prop :=
  ∀ n, P11107198323979728199.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P5800546292958789765

`A147875(n)+Δ[n²²]`
-/

namespace A213832.P5800546292958789765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A213832.P5800546292958789765

namespace A213832

/-- `A147875(n)+Δ[n²²]` -/
def P5800546292958789765.Spec : Prop :=
  ∀ n, P5800546292958789765.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P3687101142500006657

`∑[A063436(n)]+(n+1)²`
-/

namespace A213832.P3687101142500006657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A213832.P3687101142500006657

namespace A213832

/-- `∑[A063436(n)]+(n+1)²` -/
def P3687101142500006657.Spec : Prop :=
  ∀ n, P3687101142500006657.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P13374318056913692653

`(n+1)/2*A125201(n+1)`
-/

namespace A213832.P13374318056913692653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A125201 (n + 1) : ℚ)

end

end A213832.P13374318056913692653

namespace A213832

/-- `(n+1)/2*A125201(n+1)` -/
def P13374318056913692653.Spec : Prop :=
  ∀ n, P13374318056913692653.a n = (A213832 (n + 1) : ℚ)

theorem P13374318056913692653.correct : P13374318056913692653.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213832, Nat.add_sub_cancel, A213832.P13374318056913692653.a, A213832.P13969125488232463204.a, A125201, A125201.P9072291273738928373.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213832, Nat.add_sub_cancel, A213832.P13374318056913692653.a, A213832.P13969125488232463204.a, A125201, A125201.P9072291273738928373.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A213832

/-! ## A213832.P10829899360466742242

`A006503(n)+A005906(n)`
-/

namespace A213832.P10829899360466742242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + A005906 n

end

end A213832.P10829899360466742242

namespace A213832

/-- `A006503(n)+A005906(n)` -/
def P10829899360466742242.Spec : Prop :=
  ∀ n, P10829899360466742242.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P399956126367553487

`A081438(n)+A027903(n)`
-/

namespace A213832.P399956126367553487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n + A027903 n

end

end A213832.P399956126367553487

namespace A213832

/-- `A081438(n)+A027903(n)` -/
def P399956126367553487.Spec : Prop :=
  ∀ n, P399956126367553487.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P17159367412192723319

`A081436(n)+A059986(n)`
-/

namespace A213832.P17159367412192723319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + A059986 n

end

end A213832.P17159367412192723319

namespace A213832

/-- `A081436(n)+A059986(n)` -/
def P17159367412192723319.Spec : Prop :=
  ∀ n, P17159367412192723319.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P11429077798051639956

`A135712(n)+A055112(n)`
-/

namespace A213832.P11429077798051639956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135712 n + A055112 n

end

end A213832.P11429077798051639956

namespace A213832

/-- `A135712(n)+A055112(n)` -/
def P11429077798051639956.Spec : Prop :=
  ∀ n, P11429077798051639956.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P2479714211684752598

`A204674(n)+A024966(n)`
-/

namespace A213832.P2479714211684752598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204674 n + A024966 n

end

end A213832.P2479714211684752598

namespace A213832

/-- `A204674(n)+A024966(n)` -/
def P2479714211684752598.Spec : Prop :=
  ∀ n, P2479714211684752598.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P11403436553476627723

`A220443(n)+A081437(n)`
-/

namespace A213832.P11403436553476627723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A081437 n

end

end A213832.P11403436553476627723

namespace A213832

/-- `A220443(n)+A081437(n)` -/
def P11403436553476627723.Spec : Prop :=
  ∀ n, P11403436553476627723.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P11504498658810197517

`A302302(n)+A016754(n)`
-/

namespace A213832.P11504498658810197517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302302 n + A016754 n

end

end A213832.P11504498658810197517

namespace A213832

/-- `A302302(n)+A016754(n)` -/
def P11504498658810197517.Spec : Prop :=
  ∀ n, P11504498658810197517.a n = A213832 (n + 1)

end A213832

/-! ## A213832.P13732266367462708275

`A220084(n)+A210440(n)`
-/

namespace A213832.P13732266367462708275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + A210440 n

end

end A213832.P13732266367462708275

namespace A213832

/-- `A220084(n)+A210440(n)` -/
def P13732266367462708275.Spec : Prop :=
  ∀ n, P13732266367462708275.a n = A213832 (n + 1)

end A213832

/-!
# A213833: Rectangular array: (row n) = b**c, where b(h) = 3*h-2, c(h) = 2*n-3+2*h, n>=1, h>=1, and ** = convolution.

The programs for A213833, the canonical program `A213833.P1513649883133815613` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213833 has offset 1).

The definition of A213833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213833.P1513649883133815613

`A213828(n+1)-A213771(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A213833

/-- `A213828(n+1)-A213771(n+1)` -/
def P1513649883133815613.Spec : Prop :=
  ∀ n, P1513649883133815613.a n = A213833 (n + 1)

theorem P1513649883133815613.correct : P1513649883133815613.Spec := by
  intro n
  simp only [A213833, Nat.add_sub_cancel]

end A213833

/-! ## A213833.P13276113094719258073

`2*A213771(n+1)-A104572(n+1)`
-/

namespace A213833.P13276113094719258073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213771 (n + 1) - A104572 (n + 1)

end

end A213833.P13276113094719258073

namespace A213833

/-- `2*A213771(n+1)-A104572(n+1)` -/
def P13276113094719258073.Spec : Prop :=
  ∀ n, P13276113094719258073.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P17461386261305303444

`2*A213752(n+1)-A213750(n+1)`
-/

namespace A213833.P17461386261305303444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213752 (n + 1) - A213750 (n + 1)

end

end A213833.P17461386261305303444

namespace A213833

/-- `2*A213752(n+1)-A213750(n+1)` -/
def P17461386261305303444.Spec : Prop :=
  ∀ n, P17461386261305303444.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P18128033780003758045

`(A213773(n+1)+A213771(n+1))/2`
-/

namespace A213833.P18128033780003758045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213773 (n + 1) + A213771 (n + 1) : ℚ) / 2

end

end A213833.P18128033780003758045

namespace A213833

/-- `(A213773(n+1)+A213771(n+1))/2` -/
def P18128033780003758045.Spec : Prop :=
  ∀ n, P18128033780003758045.a n = (A213833 (n + 1) : ℚ)

end A213833

/-! ## A213833.P9521527578029119194

`(A213838(n+1)+A213752(n+1))/2`
-/

namespace A213833.P9521527578029119194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213838 (n + 1) + A213752 (n + 1) : ℚ) / 2

end

end A213833.P9521527578029119194

namespace A213833

/-- `(A213838(n+1)+A213752(n+1))/2` -/
def P9521527578029119194.Spec : Prop :=
  ∀ n, P9521527578029119194.a n = (A213833 (n + 1) : ℚ)

end A213833

/-! ## A213833.P360163806873837048

`2*A213771(n+1)-A001318(A099375(n))`
-/

namespace A213833.P360163806873837048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213771 (n + 1) - A001318 (A099375 n).toNat

end

end A213833.P360163806873837048

namespace A213833

/-- `2*A213771(n+1)-A001318(A099375(n))` -/
def P360163806873837048.Spec : Prop :=
  ∀ n, P360163806873837048.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P15993236087682800049

`2*A213771(n+1)-A000326(A004736(n+1))`
-/

namespace A213833.P15993236087682800049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213771 (n + 1) - A000326 (A004736 (n + 1)).toNat

end

end A213833.P15993236087682800049

namespace A213833

/-- `2*A213771(n+1)-A000326(A004736(n+1))` -/
def P15993236087682800049.Spec : Prop :=
  ∀ n, P15993236087682800049.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P18383379441273855892

`A213771(n+1)+A014682(A213773(n+1)-A213771(n+1))`
-/

namespace A213833.P18383379441273855892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A014682 (A213773 (n + 1) - A213771 (n + 1)).toNat

end

end A213833.P18383379441273855892

namespace A213833

/-- `A213771(n+1)+A014682(A213773(n+1)-A213771(n+1))` -/
def P18383379441273855892.Spec : Prop :=
  ∀ n, P18383379441273855892.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P2143009917460712982

`A014682(A213773(n+1)+A213771(n+1))`
-/

namespace A213833.P2143009917460712982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213833.P2143009917460712982

namespace A213833

/-- `A014682(A213773(n+1)+A213771(n+1))` -/
def P2143009917460712982.Spec : Prop :=
  ∀ n, P2143009917460712982.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P15802892482857293080

`A104572(n+1)+A005843(A213771(n+1)-A104572(n+1))`
-/

namespace A213833.P15802892482857293080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104572 (n + 1) + A005843 (A213771 (n + 1) - A104572 (n + 1)).toNat

end

end A213833.P15802892482857293080

namespace A213833

/-- `A104572(n+1)+A005843(A213771(n+1)-A104572(n+1))` -/
def P15802892482857293080.Spec : Prop :=
  ∀ n, P15802892482857293080.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P11869218435242821266

`A005843(A213771(n+1))-A104572(n+1)`
-/

namespace A213833.P11869218435242821266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213771 (n + 1)).toNat - A104572 (n + 1)

end

end A213833.P11869218435242821266

namespace A213833

/-- `A005843(A213771(n+1))-A104572(n+1)` -/
def P11869218435242821266.Spec : Prop :=
  ∀ n, P11869218435242821266.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P1354168460885119932

`A005843(A213771(n+1))-A001318(A099375(n))`
-/

namespace A213833.P1354168460885119932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213771 (n + 1)).toNat - A001318 (A099375 n).toNat

end

end A213833.P1354168460885119932

namespace A213833

/-- `A005843(A213771(n+1))-A001318(A099375(n))` -/
def P1354168460885119932.Spec : Prop :=
  ∀ n, P1354168460885119932.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P3582388589815500752

`A005843(A213771(n+1))-A000326(A004736(n+1))`
-/

namespace A213833.P3582388589815500752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213771 (n + 1)).toNat - A000326 (A004736 (n + 1)).toNat

end

end A213833.P3582388589815500752

namespace A213833

/-- `A005843(A213771(n+1))-A000326(A004736(n+1))` -/
def P3582388589815500752.Spec : Prop :=
  ∀ n, P3582388589815500752.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P12111770143497748573

`A005843(A213752(n+1))-A213750(n+1)`
-/

namespace A213833.P12111770143497748573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213752 (n + 1)).toNat - A213750 (n + 1)

end

end A213833.P12111770143497748573

namespace A213833

/-- `A005843(A213752(n+1))-A213750(n+1)` -/
def P12111770143497748573.Spec : Prop :=
  ∀ n, P12111770143497748573.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P6655072461431505629

`A213771(n+1)+A004525(A213773(n+1)-A213771(n+1))`
-/

namespace A213833.P6655072461431505629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A004525 (A213773 (n + 1) - A213771 (n + 1)).toNat

end

end A213833.P6655072461431505629

namespace A213833

/-- `A213771(n+1)+A004525(A213773(n+1)-A213771(n+1))` -/
def P6655072461431505629.Spec : Prop :=
  ∀ n, P6655072461431505629.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P11676702765181871103

`A213771(n+1)+A026741(A213773(n+1)-A213771(n+1))`
-/

namespace A213833.P11676702765181871103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A026741 (A213773 (n + 1) - A213771 (n + 1)).toNat

end

end A213833.P11676702765181871103

namespace A213833

/-- `A213771(n+1)+A026741(A213773(n+1)-A213771(n+1))` -/
def P11676702765181871103.Spec : Prop :=
  ∀ n, P11676702765181871103.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P8986906277680465758

`A213771(n+1)+A029578(A213773(n+1)-A213771(n+1))`
-/

namespace A213833.P8986906277680465758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A029578 (A213773 (n + 1) - A213771 (n + 1)).toNat

end

end A213833.P8986906277680465758

namespace A213833

/-- `A213771(n+1)+A029578(A213773(n+1)-A213771(n+1))` -/
def P8986906277680465758.Spec : Prop :=
  ∀ n, P8986906277680465758.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P8028722516607957163

`A213828(n+1)-A002264(A213828(n+1)+A104572(n+1))`
-/

namespace A213833.P8028722516607957163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) - A002264 (A213828 (n + 1) + A104572 (n + 1)).toNat

end

end A213833.P8028722516607957163

namespace A213833

/-- `A213828(n+1)-A002264(A213828(n+1)+A104572(n+1))` -/
def P8028722516607957163.Spec : Prop :=
  ∀ n, P8028722516607957163.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P10444439125339996166

`A004525(A213773(n+1)+A213771(n+1))`
-/

namespace A213833.P10444439125339996166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213833.P10444439125339996166

namespace A213833

/-- `A004525(A213773(n+1)+A213771(n+1))` -/
def P10444439125339996166.Spec : Prop :=
  ∀ n, P10444439125339996166.a n = A213833 (n + 1)

end A213833

/-! ## A213833.P13385311649873460517

`A026741(A213773(n+1)+A213771(n+1))`
-/

namespace A213833.P13385311649873460517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213773 (n + 1) + A213771 (n + 1)).toNat

end

end A213833.P13385311649873460517

namespace A213833

/-- `A026741(A213773(n+1)+A213771(n+1))` -/
def P13385311649873460517.Spec : Prop :=
  ∀ n, P13385311649873460517.a n = A213833 (n + 1)

end A213833

/-!
# A213834: Antidiagonal sums of the convolution array A213833.

The programs for A213834, the canonical program `A213834.P9699274444990897720` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213834 has offset 1).

The definition of A213834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213834.P11440361362829724830

`(n+1)*(n+2)*(3*(n+1)²-2*(n+1)+2)/6`
-/

namespace A213834.P11440361362829724830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * ((3 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 2) : ℚ) / 6

end

end A213834.P11440361362829724830

namespace A213834

/-- `(n+1)*(n+2)*(3*(n+1)²-2*(n+1)+2)/6` -/
def P11440361362829724830.Spec : Prop :=
  ∀ n, P11440361362829724830.a n = (A213834 (n + 1) : ℚ)

theorem P11440361362829724830.correct : P11440361362829724830.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213834, Nat.add_sub_cancel, A213834.P11440361362829724830.a, A213834.P9699274444990897720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213834, Nat.add_sub_cancel, A213834.P11440361362829724830.a, A213834.P9699274444990897720.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213834

/-! ## A213834.P9699274444990897720

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=10, a(2)=46, a(3)=140, a(4)=335`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213834

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9699274444990897720.Spec : Prop :=
  ∀ n, P9699274444990897720.a n = A213834 (n + 1)

theorem P9699274444990897720.correct : P9699274444990897720.Spec := by
  intro n
  simp only [A213834, Nat.add_sub_cancel]

end A213834

/-! ## A213834.P17075790791854115445

`C((n+1)², 2)+C(n+3, 3)`
-/

namespace A213834.P17075790791854115445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2 + Nat.choose (n + 3) 3

end

end A213834.P17075790791854115445

namespace A213834

/-- `C((n+1)², 2)+C(n+3, 3)` -/
def P17075790791854115445.Spec : Prop :=
  ∀ n, (P17075790791854115445.a n : ℤ) = A213834 (n + 1)

end A213834

/-! ## A213834.P3149344063124056595

`∑[∑[n+1]]+C(∑[2*n+1], 2)`
-/

namespace A213834.P3149344063124056595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2

end

end A213834.P3149344063124056595

namespace A213834

/-- `∑[∑[n+1]]+C(∑[2*n+1], 2)` -/
def P3149344063124056595.Spec : Prop :=
  ∀ n, (P3149344063124056595.a n : ℤ) = A213834 (n + 1)

end A213834

/-! ## A213834.P2030897330341388615

`∑[A051895(n)+n+1]`
-/

namespace A213834.P2030897330341388615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213834.P2030897330341388615

namespace A213834

/-- `∑[A051895(n)+n+1]` -/
def P2030897330341388615.Spec : Prop :=
  ∀ n, P2030897330341388615.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P2374770249020838999

`∑[A135713(n)+(n+1)²]`
-/

namespace A213834.P2374770249020838999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213834.P2374770249020838999

namespace A213834

/-- `∑[A135713(n)+(n+1)²]` -/
def P2374770249020838999.Spec : Prop :=
  ∀ n, P2374770249020838999.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P7164636941645229863

`∑[A212133(n+1)]+∑[∑[n]]`
-/

namespace A213834.P7164636941645229863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213834.P7164636941645229863

namespace A213834

/-- `∑[A212133(n+1)]+∑[∑[n]]` -/
def P7164636941645229863.Spec : Prop :=
  ∀ n, P7164636941645229863.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P7517742909130759174

`A391092(n+1)+(n+1)^3`
-/

namespace A213834.P7517742909130759174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A213834.P7517742909130759174

namespace A213834

/-- `A391092(n+1)+(n+1)^3` -/
def P7517742909130759174.Spec : Prop :=
  ∀ n, P7517742909130759174.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P13108977911055973391

`A058310(n)+A005581(n)`
-/

namespace A213834.P13108977911055973391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058310 n + A005581 n

end

end A213834.P13108977911055973391

namespace A213834

/-- `A058310(n)+A005581(n)` -/
def P13108977911055973391.Spec : Prop :=
  ∀ n, P13108977911055973391.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P9737604946370077733

`A103220(n)+A005920(n)`
-/

namespace A213834.P9737604946370077733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n + A005920 n

end

end A213834.P9737604946370077733

namespace A213834

/-- `A103220(n)+A005920(n)` -/
def P9737604946370077733.Spec : Prop :=
  ∀ n, P9737604946370077733.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P893773570438067476

`A171129(n)+A057813(n)`
-/

namespace A213834.P893773570438067476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A057813 n

end

end A213834.P893773570438067476

namespace A213834

/-- `A171129(n)+A057813(n)` -/
def P893773570438067476.Spec : Prop :=
  ∀ n, P893773570438067476.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P1303948542413378630

`A191903(n)+A084570(n)`
-/

namespace A213834.P1303948542413378630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191903 n + A084570 n

end

end A213834.P1303948542413378630

namespace A213834

/-- `A191903(n)+A084570(n)` -/
def P1303948542413378630.Spec : Prop :=
  ∀ n, P1303948542413378630.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P16083958537973109606

`A383834(n)+A101165(n)`
-/

namespace A213834.P16083958537973109606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383834 n + A101165 n

end

end A213834.P16083958537973109606

namespace A213834

/-- `A383834(n)+A101165(n)` -/
def P16083958537973109606.Spec : Prop :=
  ∀ n, P16083958537973109606.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P4821193767765047974

`A092365(n+1)+A006331(n)`
-/

namespace A213834.P4821193767765047974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092365 (n + 1) + A006331 n

end

end A213834.P4821193767765047974

namespace A213834

/-- `A092365(n+1)+A006331(n)` -/
def P4821193767765047974.Spec : Prop :=
  ∀ n, P4821193767765047974.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P16241218437412418928

`A220212(n)+A002414(n+1)`
-/

namespace A213834.P16241218437412418928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220212 n + A002414 (n + 1)

end

end A213834.P16241218437412418928

namespace A213834

/-- `A220212(n)+A002414(n+1)` -/
def P16241218437412418928.Spec : Prop :=
  ∀ n, P16241218437412418928.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P7885843399297256557

`A187673(n)+A050534(n+1)`
-/

namespace A213834.P7885843399297256557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n + A050534 (n + 1)

end

end A213834.P7885843399297256557

namespace A213834

/-- `A187673(n)+A050534(n+1)` -/
def P7885843399297256557.Spec : Prop :=
  ∀ n, P7885843399297256557.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P3557076947451521327

`A163102(n)+A100182(n+1)`
-/

namespace A213834.P3557076947451521327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + A100182 (n + 1)

end

end A213834.P3557076947451521327

namespace A213834

/-- `A163102(n)+A100182(n+1)` -/
def P3557076947451521327.Spec : Prop :=
  ∀ n, P3557076947451521327.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P10080961330209679456

`A185787(n+1)+A110450(n)`
-/

namespace A213834.P10080961330209679456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185787 (n + 1) + A110450 n

end

end A213834.P10080961330209679456

namespace A213834

/-- `A185787(n+1)+A110450(n)` -/
def P10080961330209679456.Spec : Prop :=
  ∀ n, P10080961330209679456.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P18128433520081608059

`A332697(n)+A100188(n+1)`
-/

namespace A213834.P18128433520081608059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332697 n + A100188 (n + 1)

end

end A213834.P18128433520081608059

namespace A213834

/-- `A332697(n)+A100188(n+1)` -/
def P18128433520081608059.Spec : Prop :=
  ∀ n, P18128433520081608059.a n = A213834 (n + 1)

end A213834

/-! ## A213834.P7370537505490447877

`A185505(n+1)-A006007(n)`
-/

namespace A213834.P7370537505490447877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1) - A006007 n

end

end A213834.P7370537505490447877

namespace A213834

/-- `A185505(n+1)-A006007(n)` -/
def P7370537505490447877.Spec : Prop :=
  ∀ n, P7370537505490447877.a n = A213834 (n + 1)

end A213834

/-!
# A213835: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

The programs for A213835, the canonical program `A213835.P6060374703208332894` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213835 has offset 1).

The definition of A213835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213835.P6060374703208332894

`2*A213750(n+1)-abs(A122432(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213835

/-- `2*A213750(n+1)-abs(A122432(n))` -/
def P6060374703208332894.Spec : Prop :=
  ∀ n, P6060374703208332894.a n = A213835 (n + 1)

theorem P6060374703208332894.correct : P6060374703208332894.Spec := by
  intro n
  simp only [A213835, Nat.add_sub_cancel]

end A213835

/-! ## A213835.P11818764188177927951

`2*A213761(n+1)-A213750(n+1)`
-/

namespace A213835.P11818764188177927951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213761 (n + 1) - A213750 (n + 1)

end

end A213835.P11818764188177927951

namespace A213835

/-- `2*A213761(n+1)-A213750(n+1)` -/
def P11818764188177927951.Spec : Prop :=
  ∀ n, P11818764188177927951.a n = A213835 (n + 1)

theorem P11818764188177927951.correct : P11818764188177927951.Spec := by
  intro n
  simp only [A213835, Nat.add_sub_cancel, A213835.P11818764188177927951.a, A213835.P6060374703208332894.a, A122432, A122432.P16515211422386222308.a, A213750, A213750.P11543633709042919296.a, A213761, A213761.P7356628059179805218.a, A004736, A004736.P10337537277358081527.a, A089594, A089594.P11384896157500879908.a, A213500, A213500.P10415559373979276509.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, A002024, A002024.P11700297927830783882.a, A025581, A025581.P16112744757063613497.a, A104633, A104633.P310418357099449208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213835

/-! ## A213835.P11907530573144396080

`2*A213750(n+1)-A000217(A004736(n+1))`
-/

namespace A213835.P11907530573144396080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - A000217 (A004736 (n + 1)).toNat

end

end A213835.P11907530573144396080

namespace A213835

/-- `2*A213750(n+1)-A000217(A004736(n+1))` -/
def P11907530573144396080.Spec : Prop :=
  ∀ n, P11907530573144396080.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P18409009783190115207

`A213750(n+1)+A213761(n+1)-A213500(n+1)`
-/

namespace A213835.P18409009783190115207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + (A213761 (n + 1) - A213500 (n + 1))

end

end A213835.P18409009783190115207

namespace A213835

/-- `A213750(n+1)+A213761(n+1)-A213500(n+1)` -/
def P18409009783190115207.Spec : Prop :=
  ∀ n, P18409009783190115207.a n = A213835 (n + 1)

theorem P18409009783190115207.correct : P18409009783190115207.Spec := by
  intro n
  simp only [A213835, Nat.add_sub_cancel, A213835.P18409009783190115207.a, A213835.P6060374703208332894.a, A122432, A122432.P16515211422386222308.a, A213500, A213500.P10415559373979276509.a, A213750, A213750.P11543633709042919296.a, A213761, A213761.P7356628059179805218.a, A000292, A000292.P18322089543142633594.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P16112744757063613497.a, A089594, A089594.P11384896157500879908.a, A104633, A104633.P310418357099449208.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213835

/-! ## A213835.P7902831691143383758

`A213825(n+1)+A213836(n+1)-A213828(n+1)`
-/

namespace A213835.P7902831691143383758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213825 (n + 1) + (A213836 (n + 1) - A213828 (n + 1))

end

end A213835.P7902831691143383758

namespace A213835

/-- `A213825(n+1)+A213836(n+1)-A213828(n+1)` -/
def P7902831691143383758.Spec : Prop :=
  ∀ n, P7902831691143383758.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P11294825480904711878

`A213761(n+1)+A213819(n+1)%A213500(n+1)`
-/

namespace A213835.P11294825480904711878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + Int.tmod (A213819 (n + 1)) (A213500 (n + 1))

end

end A213835.P11294825480904711878

namespace A213835

/-- `A213761(n+1)+A213819(n+1)%A213500(n+1)` -/
def P11294825480904711878.Spec : Prop :=
  ∀ n, P11294825480904711878.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P12374612961329458512

`A213750(n+1)+A005843(A213750(n+1)-A213500(n+1))`
-/

namespace A213835.P12374612961329458512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + A005843 (A213750 (n + 1) - A213500 (n + 1)).toNat

end

end A213835.P12374612961329458512

namespace A213835

/-- `A213750(n+1)+A005843(A213750(n+1)-A213500(n+1))` -/
def P12374612961329458512.Spec : Prop :=
  ∀ n, P12374612961329458512.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P1138412724436460176

`A213750(n+1)+A005843(A213761(n+1)-A213750(n+1))`
-/

namespace A213835.P1138412724436460176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + A005843 (A213761 (n + 1) - A213750 (n + 1)).toNat

end

end A213835.P1138412724436460176

namespace A213835

/-- `A213750(n+1)+A005843(A213761(n+1)-A213750(n+1))` -/
def P1138412724436460176.Spec : Prop :=
  ∀ n, P1138412724436460176.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P556484632110366893

`A213761(n+1)+A029578(A213761(n+1)-A213500(n+1))`
-/

namespace A213835.P556484632110366893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A029578 (A213761 (n + 1) - A213500 (n + 1)).toNat

end

end A213835.P556484632110366893

namespace A213835

/-- `A213761(n+1)+A029578(A213761(n+1)-A213500(n+1))` -/
def P556484632110366893.Spec : Prop :=
  ∀ n, P556484632110366893.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P9843544799091342773

`A005843(A213750(n+1))-abs(A122432(n))`
-/

namespace A213835.P9843544799091342773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213750 (n + 1)).toNat - |A122432 n|

end

end A213835.P9843544799091342773

namespace A213835

/-- `A005843(A213750(n+1))-abs(A122432(n))` -/
def P9843544799091342773.Spec : Prop :=
  ∀ n, P9843544799091342773.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P12582057526788047448

`A008486(A213750(n+1))-2*A213500(n+1)`
-/

namespace A213835.P12582057526788047448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213750 (n + 1)).toNat - 2 * A213500 (n + 1)

end

end A213835.P12582057526788047448

namespace A213835

/-- `A008486(A213750(n+1))-2*A213500(n+1)` -/
def P12582057526788047448.Spec : Prop :=
  ∀ n, P12582057526788047448.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P7320703734831260560

`A005843(A213750(n+1))-A000217(A004736(n+1))`
-/

namespace A213835.P7320703734831260560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213750 (n + 1)).toNat - A000217 (A004736 (n + 1)).toNat

end

end A213835.P7320703734831260560

namespace A213835

/-- `A005843(A213750(n+1))-A000217(A004736(n+1))` -/
def P7320703734831260560.Spec : Prop :=
  ∀ n, P7320703734831260560.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P13189348529944335369

`A008486(A213750(n+1))-A005843(A213500(n+1))`
-/

namespace A213835.P13189348529944335369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A213750 (n + 1)).toNat - A005843 (A213500 (n + 1)).toNat

end

end A213835.P13189348529944335369

namespace A213835

/-- `A008486(A213750(n+1))-A005843(A213500(n+1))` -/
def P13189348529944335369.Spec : Prop :=
  ∀ n, P13189348529944335369.a n = A213835 (n + 1)

end A213835

/-! ## A213835.P4459663018636484891

`A005843(A213761(n+1))-A213750(n+1)`
-/

namespace A213835.P4459663018636484891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213761 (n + 1)).toNat - A213750 (n + 1)

end

end A213835.P4459663018636484891

namespace A213835

/-- `A005843(A213761(n+1))-A213750(n+1)` -/
def P4459663018636484891.Spec : Prop :=
  ∀ n, P4459663018636484891.a n = A213835 (n + 1)

end A213835

/-!
# A213836: Rectangular array: (row n) = b**c, where b(h) = 4*h-3, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213836, the canonical program `A213836.P1472070259988033542` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213836 has offset 1).

The definition of A213836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213836.P14415952246488316144

`(A213838(n+1)+A103217(n))/2`
-/

namespace A213836.P14415952246488316144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213838 (n + 1) + A103217 n : ℚ) / 2

end

end A213836.P14415952246488316144

namespace A213836

/-- `(A213838(n+1)+A103217(n))/2` -/
def P14415952246488316144.Spec : Prop :=
  ∀ n, P14415952246488316144.a n = (A213836 (n + 1) : ℚ)

end A213836

/-! ## A213836.P1472070259988033542

`2*A213751(n+1)-A049777(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A213836

/-- `2*A213751(n+1)-A049777(n+1)` -/
def P1472070259988033542.Spec : Prop :=
  ∀ n, P1472070259988033542.a n = A213836 (n + 1)

theorem P1472070259988033542.correct : P1472070259988033542.Spec := by
  intro n
  simp only [A213836, Nat.add_sub_cancel]

end A213836

/-! ## A213836.P17690350041910928510

`2*A213771(n+1)-A213751(n+1)`
-/

namespace A213836.P17690350041910928510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213771 (n + 1) - A213751 (n + 1)

end

end A213836.P17690350041910928510

namespace A213836

/-- `2*A213771(n+1)-A213751(n+1)` -/
def P17690350041910928510.Spec : Prop :=
  ∀ n, P17690350041910928510.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P4223015006671352642

`A213500(n+1)+A213771(n+1)-A049777(n+1)`
-/

namespace A213836.P4223015006671352642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + (A213771 (n + 1) - A049777 (n + 1))

end

end A213836.P4223015006671352642

namespace A213836

/-- `A213500(n+1)+A213771(n+1)-A049777(n+1)` -/
def P4223015006671352642.Spec : Prop :=
  ∀ n, P4223015006671352642.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P8270267974297654959

`A213828(n+1)+A213835(n+1)-A213825(n+1)`
-/

namespace A213836.P8270267974297654959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213828 (n + 1) + (A213835 (n + 1) - A213825 (n + 1))

end

end A213836.P8270267974297654959

namespace A213836

/-- `A213828(n+1)+A213835(n+1)-A213825(n+1)` -/
def P8270267974297654959.Spec : Prop :=
  ∀ n, P8270267974297654959.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P12758174645924995306

`A103217(n)+A014682(A213838(n+1)-A103217(n))`
-/

namespace A213836.P12758174645924995306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n + A014682 (A213838 (n + 1) - A103217 n).toNat

end

end A213836.P12758174645924995306

namespace A213836

/-- `A103217(n)+A014682(A213838(n+1)-A103217(n))` -/
def P12758174645924995306.Spec : Prop :=
  ∀ n, P12758174645924995306.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P18271097794993393073

`A014682(A213838(n+1)+A103217(n))`
-/

namespace A213836.P18271097794993393073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213838 (n + 1) + A103217 n).toNat

end

end A213836.P18271097794993393073

namespace A213836

/-- `A014682(A213838(n+1)+A103217(n))` -/
def P18271097794993393073.Spec : Prop :=
  ∀ n, P18271097794993393073.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P17616817800417035426

`A004277(A213751(n+1))-A049777(n+1)`
-/

namespace A213836.P17616817800417035426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213751 (n + 1)).toNat - A049777 (n + 1)

end

end A213836.P17616817800417035426

namespace A213836

/-- `A004277(A213751(n+1))-A049777(n+1)` -/
def P17616817800417035426.Spec : Prop :=
  ∀ n, P17616817800417035426.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P10758179900388538678

`A004277(A213771(n+1))-A213751(n+1)`
-/

namespace A213836.P10758179900388538678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213771 (n + 1)).toNat - A213751 (n + 1)

end

end A213836.P10758179900388538678

namespace A213836

/-- `A004277(A213771(n+1))-A213751(n+1)` -/
def P10758179900388538678.Spec : Prop :=
  ∀ n, P10758179900388538678.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P9463237343452912584

`A103217(n)+A004525(A213838(n+1)-A103217(n))`
-/

namespace A213836.P9463237343452912584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n + A004525 (A213838 (n + 1) - A103217 n).toNat

end

end A213836.P9463237343452912584

namespace A213836

/-- `A103217(n)+A004525(A213838(n+1)-A103217(n))` -/
def P9463237343452912584.Spec : Prop :=
  ∀ n, P9463237343452912584.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P13390712905137450957

`A103217(n)+A029578(A213838(n+1)-A103217(n))`
-/

namespace A213836.P13390712905137450957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n + A029578 (A213838 (n + 1) - A103217 n).toNat

end

end A213836.P13390712905137450957

namespace A213836

/-- `A103217(n)+A029578(A213838(n+1)-A103217(n))` -/
def P13390712905137450957.Spec : Prop :=
  ∀ n, P13390712905137450957.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P12076593473563338996

`A103217(n)+A078898(A213838(n+1)-A103217(n))`
-/

namespace A213836.P12076593473563338996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n + A078898 (A213838 (n + 1) - A103217 n).toNat

end

end A213836.P12076593473563338996

namespace A213836

/-- `A103217(n)+A078898(A213838(n+1)-A103217(n))` -/
def P12076593473563338996.Spec : Prop :=
  ∀ n, P12076593473563338996.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P9225271832757154010

`A174221(A213838(n+1)-A103217(n))+A103217(n)`
-/

namespace A213836.P9225271832757154010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A213838 (n + 1) - A103217 n).toNat + A103217 n

end

end A213836.P9225271832757154010

namespace A213836

/-- `A174221(A213838(n+1)-A103217(n))+A103217(n)` -/
def P9225271832757154010.Spec : Prop :=
  ∀ n, P9225271832757154010.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P11763997854912266060

`A004525(A213838(n+1)+A103217(n))`
-/

namespace A213836.P11763997854912266060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213838 (n + 1) + A103217 n).toNat

end

end A213836.P11763997854912266060

namespace A213836

/-- `A004525(A213838(n+1)+A103217(n))` -/
def P11763997854912266060.Spec : Prop :=
  ∀ n, P11763997854912266060.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P17429693363852775590

`A029578(A213838(n+1)+A103217(n))`
-/

namespace A213836.P17429693363852775590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A213838 (n + 1) + A103217 n).toNat

end

end A213836.P17429693363852775590

namespace A213836

/-- `A029578(A213838(n+1)+A103217(n))` -/
def P17429693363852775590.Spec : Prop :=
  ∀ n, P17429693363852775590.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P8694121557856499733

`A078898(A213838(n+1)+A103217(n))`
-/

namespace A213836.P8694121557856499733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A213838 (n + 1) + A103217 n).toNat

end

end A213836.P8694121557856499733

namespace A213836

/-- `A078898(A213838(n+1)+A103217(n))` -/
def P8694121557856499733.Spec : Prop :=
  ∀ n, P8694121557856499733.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P3401393374574420881

`A174221(A213838(n+1)+A103217(n))`
-/

namespace A213836.P3401393374574420881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A213838 (n + 1) + A103217 n).toNat

end

end A213836.P3401393374574420881

namespace A213836

/-- `A174221(A213838(n+1)+A103217(n))` -/
def P3401393374574420881.Spec : Prop :=
  ∀ n, P3401393374574420881.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P9114367476344529642

`A000463(A213838(n+1)+A103217(n)-1)`
-/

namespace A213836.P9114367476344529642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A213838 (n + 1) + (A103217 n - 1)).toNat

end

end A213836.P9114367476344529642

namespace A213836

/-- `A000463(A213838(n+1)+A103217(n)-1)` -/
def P9114367476344529642.Spec : Prop :=
  ∀ n, P9114367476344529642.a n = A213836 (n + 1)

end A213836

/-! ## A213836.P5213807342785565878

`A280497(A213838(n+1)+A103217(n))`
-/

namespace A213836.P5213807342785565878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (A213838 (n + 1) + A103217 n).toNat

end

end A213836.P5213807342785565878

namespace A213836

/-- `A280497(A213838(n+1)+A103217(n))` -/
def P5213807342785565878.Spec : Prop :=
  ∀ n, P5213807342785565878.a n = A213836 (n + 1)

end A213836

/-!
# A213837: Principal diagonal of the convolution array A213836.

The programs for A213837, the canonical program `A213837.P8851184986804540038` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213837 has offset 1).

The definition of A213837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213837.P288705462155410694

`(n+1)*(5-15*(n+1)+16*(n+1)²)/6`
-/

namespace A213837.P288705462155410694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (5 - (15 * (n + 1) : ℤ) + (16 * (n + 1) ^ 2 : ℤ)) : ℚ) / 6

end

end A213837.P288705462155410694

namespace A213837

/-- `(n+1)*(5-15*(n+1)+16*(n+1)²)/6` -/
def P288705462155410694.Spec : Prop :=
  ∀ n, P288705462155410694.a n = (A213837 (n + 1) : ℚ)

theorem P288705462155410694.correct : P288705462155410694.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213837, Nat.add_sub_cancel, A213837.P288705462155410694.a, A213837.P8851184986804540038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213837, Nat.add_sub_cancel, A213837.P288705462155410694.a, A213837.P8851184986804540038.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213837

/-! ## A213837.P8851184986804540038

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=13, a(2)=52, a(3)=134`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213837

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8851184986804540038.Spec : Prop :=
  ∀ n, P8851184986804540038.a n = A213837 (n + 1)

theorem P8851184986804540038.correct : P8851184986804540038.Spec := by
  intro n
  simp only [A213837, Nat.add_sub_cancel]

end A213837

/-! ## A213837.P9635687325877775532

`(n+1)*A002412(n+1)-n*A002412(n)`
-/

namespace A213837.P9635687325877775532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002412 (n + 1) - (n : ℤ) * A002412 n

end

end A213837.P9635687325877775532

namespace A213837

/-- `(n+1)*A002412(n+1)-n*A002412(n)` -/
def P9635687325877775532.Spec : Prop :=
  ∀ n, P9635687325877775532.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P1888567837578491157

`∑[∑[a(n-1)+16]]` with `a(0)=1, a(1)=11`
-/

namespace A213837.P1888567837578491157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P1888567837578491157

namespace A213837

/-- `∑[∑[a(n-1)+16]]` -/
def P1888567837578491157.Spec : Prop :=
  ∀ n, (P1888567837578491157.a n : ℤ) = A213837 (n + 1)

end A213837

/-! ## A213837.P3726848748419649784

`∑[C(4*n, 2)+1]+∑[5*n]`
-/

namespace A213837.P3726848748419649784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213837.P3726848748419649784

namespace A213837

/-- `∑[C(4*n, 2)+1]+∑[5*n]` -/
def P3726848748419649784.Spec : Prop :=
  ∀ n, (P3726848748419649784.a n : ℤ) = A213837 (n + 1)

end A213837

/-! ## A213837.P14636725363730333710

`∑[2*lcm(2*n+1, 2*n)]-∑[n-1]`
-/

namespace A213837.P14636725363730333710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm (2 * n + 1) (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213837.P14636725363730333710

namespace A213837

/-- `∑[2*lcm(2*n+1, 2*n)]-∑[n-1]` -/
def P14636725363730333710.Spec : Prop :=
  ∀ n, P14636725363730333710.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P6354622610967725056

`∑[A236267(n)]`
-/

namespace A213837.P6354622610967725056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P6354622610967725056

namespace A213837

/-- `∑[A236267(n)]` -/
def P6354622610967725056.Spec : Prop :=
  ∀ n, P6354622610967725056.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P6096116736869078624

`∑[A139276(n)+1]`
-/

namespace A213837.P6096116736869078624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P6096116736869078624

namespace A213837

/-- `∑[A139276(n)+1]` -/
def P6096116736869078624.Spec : Prop :=
  ∀ n, P6096116736869078624.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P6268815020828732412

`∑[A188135(n)+n]`
-/

namespace A213837.P6268815020828732412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P6268815020828732412

namespace A213837

/-- `∑[A188135(n)+n]` -/
def P6268815020828732412.Spec : Prop :=
  ∀ n, P6268815020828732412.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P8893229296900801752

`∑[A102083(n)-n]`
-/

namespace A213837.P8893229296900801752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P8893229296900801752

namespace A213837

/-- `∑[A102083(n)-n]` -/
def P8893229296900801752.Spec : Prop :=
  ∀ n, P8893229296900801752.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P2212627550034537562

`Δ[n*A002412(n)]`
-/

namespace A213837.P2212627550034537562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213837.P2212627550034537562

namespace A213837

/-- `Δ[n*A002412(n)]` -/
def P2212627550034537562.Spec : Prop :=
  ∀ n, P2212627550034537562.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P17601000534131129790

`A005915(n)-∑[n²]`
-/

namespace A213837.P17601000534131129790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213837.P17601000534131129790

namespace A213837

/-- `A005915(n)-∑[n²]` -/
def P17601000534131129790.Spec : Prop :=
  ∀ n, P17601000534131129790.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P860858526825443848

`∑[A082040(n)-n²]`
-/

namespace A213837.P860858526825443848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P860858526825443848

namespace A213837

/-- `∑[A082040(n)-n²]` -/
def P860858526825443848.Spec : Prop :=
  ∀ n, P860858526825443848.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P9951262499263853132

`∑[A033585(n)+n+1]`
-/

namespace A213837.P9951262499263853132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P9951262499263853132

namespace A213837

/-- `∑[A033585(n)+n+1]` -/
def P9951262499263853132.Spec : Prop :=
  ∀ n, P9951262499263853132.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P1137779725668833369

`A100157(n+1)-∑[n]`
-/

namespace A213837.P1137779725668833369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213837.P1137779725668833369

namespace A213837

/-- `A100157(n+1)-∑[n]` -/
def P1137779725668833369.Spec : Prop :=
  ∀ n, P1137779725668833369.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P16984915527813131146

`A063492(n+1)-n^3`
-/

namespace A213837.P16984915527813131146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063492 (n + 1) - (n ^ 3 : ℤ)

end

end A213837.P16984915527813131146

namespace A213837

/-- `A063492(n+1)-n^3` -/
def P16984915527813131146.Spec : Prop :=
  ∀ n, P16984915527813131146.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P18105525292905013304

`∑[A092277(n)+(n+1)²]`
-/

namespace A213837.P18105525292905013304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092277 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213837.P18105525292905013304

namespace A213837

/-- `∑[A092277(n)+(n+1)²]` -/
def P18105525292905013304.Spec : Prop :=
  ∀ n, P18105525292905013304.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P5424505173722389030

`∑[A139275(n)]+(n+1)²`
-/

namespace A213837.P5424505173722389030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A213837.P5424505173722389030

namespace A213837

/-- `∑[A139275(n)]+(n+1)²` -/
def P5424505173722389030.Spec : Prop :=
  ∀ n, P5424505173722389030.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P12314806061557731507

`A006564(n+1)+∑[∑[n]]`
-/

namespace A213837.P12314806061557731507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213837.P12314806061557731507

namespace A213837

/-- `A006564(n+1)+∑[∑[n]]` -/
def P12314806061557731507.Spec : Prop :=
  ∀ n, P12314806061557731507.a n = A213837 (n + 1)

end A213837

/-! ## A213837.P9354282678889899959

`A100183(n+1)+n*∑[n]`
-/

namespace A213837.P9354282678889899959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100183 (n + 1) + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A213837.P9354282678889899959

namespace A213837

/-- `A100183(n+1)+n*∑[n]` -/
def P9354282678889899959.Spec : Prop :=
  ∀ n, P9354282678889899959.a n = A213837 (n + 1)

end A213837

/-!
# A213838: Rectangular array: (row n) = b**c, where b(h) = 4*h-3, c(h) = 2*n-3+2*h, n>=1, h>=1, and ** = convolution.

The programs for A213838, the canonical program `A213838.P5056239296157228720` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213838 has offset 1).

The definition of A213838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213838.P5056239296157228720

`2*A213833(n+1)-A213752(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A213838

/-- `2*A213833(n+1)-A213752(n+1)` -/
def P5056239296157228720.Spec : Prop :=
  ∀ n, P5056239296157228720.a n = A213838 (n + 1)

theorem P5056239296157228720.correct : P5056239296157228720.Spec := by
  intro n
  simp only [A213838, Nat.add_sub_cancel]

end A213838

/-! ## A213838.P1154153126151287031

`A055461(n+1)+A213773(n+1)-A213500(n+1)`
-/

namespace A213838.P1154153126151287031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + (A213773 (n + 1) - A213500 (n + 1))

end

end A213838.P1154153126151287031

namespace A213838

/-- `A055461(n+1)+A213773(n+1)-A213500(n+1)` -/
def P1154153126151287031.Spec : Prop :=
  ∀ n, P1154153126151287031.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P15669683098847719045

`A213771(n+1)+A213773(n+1)-A213752(n+1)`
-/

namespace A213838.P15669683098847719045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + (A213773 (n + 1) - A213752 (n + 1))

end

end A213838.P15669683098847719045

namespace A213838

/-- `A213771(n+1)+A213773(n+1)-A213752(n+1)` -/
def P15669683098847719045.Spec : Prop :=
  ∀ n, P15669683098847719045.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P17390623262819309871

`A213752(n+1)+A213833(n+1)-A213750(n+1)`
-/

namespace A213838.P17390623262819309871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + (A213833 (n + 1) - A213750 (n + 1))

end

end A213838.P17390623262819309871

namespace A213838

/-- `A213752(n+1)+A213833(n+1)-A213750(n+1)` -/
def P17390623262819309871.Spec : Prop :=
  ∀ n, P17390623262819309871.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P11132226485182933011

`A213841(n+1)+A213844(n+1)-A213847(n+1)`
-/

namespace A213838.P11132226485182933011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + (A213844 (n + 1) - A213847 (n + 1))

end

end A213838.P11132226485182933011

namespace A213838

/-- `A213841(n+1)+A213844(n+1)-A213847(n+1)` -/
def P11132226485182933011.Spec : Prop :=
  ∀ n, P11132226485182933011.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P11162197163751693106

`A213500(A185868(n+1))-A095832(n+1)`
-/

namespace A213838.P11162197163751693106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A185868 (n + 1)).toNat - A095832 (n + 1)

end

end A213838.P11162197163751693106

namespace A213838

/-- `A213500(A185868(n+1))-A095832(n+1)` -/
def P11162197163751693106.Spec : Prop :=
  ∀ n, P11162197163751693106.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P11049005042884006322

`A213752(n+1)+A005843(A213752(n+1)-A213750(n+1))`
-/

namespace A213838.P11049005042884006322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A005843 (A213752 (n + 1) - A213750 (n + 1)).toNat

end

end A213838.P11049005042884006322

namespace A213838

/-- `A213752(n+1)+A005843(A213752(n+1)-A213750(n+1))` -/
def P11049005042884006322.Spec : Prop :=
  ∀ n, P11049005042884006322.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P17021894453033038593

`A213752(n+1)+A005843(A213833(n+1)-A213752(n+1))`
-/

namespace A213838.P17021894453033038593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A005843 (A213833 (n + 1) - A213752 (n + 1)).toNat

end

end A213838.P17021894453033038593

namespace A213838

/-- `A213752(n+1)+A005843(A213833(n+1)-A213752(n+1))` -/
def P17021894453033038593.Spec : Prop :=
  ∀ n, P17021894453033038593.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P16883874596622345950

`A008574(A213752(n+1))-A213847(n+1)`
-/

namespace A213838.P16883874596622345950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A213752 (n + 1)).toNat - A213847 (n + 1)

end

end A213838.P16883874596622345950

namespace A213838

/-- `A008574(A213752(n+1))-A213847(n+1)` -/
def P16883874596622345950.Spec : Prop :=
  ∀ n, P16883874596622345950.a n = A213838 (n + 1)

end A213838

/-! ## A213838.P11721266546733658119

`A005843(A213833(n+1))-A213752(n+1)`
-/

namespace A213838.P11721266546733658119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213833 (n + 1)).toNat - A213752 (n + 1)

end

end A213838.P11721266546733658119

namespace A213838

/-- `A005843(A213833(n+1))-A213752(n+1)` -/
def P11721266546733658119.Spec : Prop :=
  ∀ n, P11721266546733658119.a n = A213838 (n + 1)

end A213838

/-!
# A213839: Principal diagonal of the convolution array A213838.

The programs for A213839, the canonical program `A213839.P5130499873313563642` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213839 has offset 1).

The definition of A213839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213839.P17267783816452156829

`(8*(n+1)-21*(n+1)²+16*(n+1)^3)/3`
-/

namespace A213839.P17267783816452156829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * (n + 1) : ℤ) - (21 * (n + 1) ^ 2 : ℤ) + (16 * (n + 1) ^ 3 : ℤ) : ℚ) / 3

end

end A213839.P17267783816452156829

namespace A213839

/-- `(8*(n+1)-21*(n+1)²+16*(n+1)^3)/3` -/
def P17267783816452156829.Spec : Prop :=
  ∀ n, P17267783816452156829.a n = (A213839 (n + 1) : ℚ)

theorem P17267783816452156829.correct : P17267783816452156829.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213839, Nat.add_sub_cancel, A213839.P17267783816452156829.a, A213839.P5130499873313563642.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213839, Nat.add_sub_cancel, A213839.P17267783816452156829.a, A213839.P5130499873313563642.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213839

/-! ## A213839.P5130499873313563642

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=20, a(2)=89, a(3)=240`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213839

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5130499873313563642.Spec : Prop :=
  ∀ n, P5130499873313563642.a n = A213839 (n + 1)

theorem P5130499873313563642.correct : P5130499873313563642.Spec := by
  intro n
  simp only [A213839, Nat.add_sub_cancel]

end A213839

/-! ## A213839.P15362296356168250686

`∑[20*n²+1]-∑[n*record[lcm(2, n)]]`
-/

namespace A213839.P15362296356168250686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n ^ 2 + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213839.P15362296356168250686

namespace A213839

/-- `∑[20*n²+1]-∑[n*record[lcm(2, n)]]` -/
def P15362296356168250686.Spec : Prop :=
  ∀ n, P15362296356168250686.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P531043751310535529

`(4*n)²+a(n-1)+2*n+1` with `a(0)=1`
-/

namespace A213839.P531043751310535529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n) ^ 2 + (a (n - 1) + (2 * n + 1))

end

end A213839.P531043751310535529

namespace A213839

/-- `(4*n)²+a(n-1)+2*n+1` -/
def P531043751310535529.Spec : Prop :=
  ∀ n, (P531043751310535529.a n : ℤ) = A213839 (n + 1)

end A213839

/-! ## A213839.P17722352392606932859

`∑[A204675(n)]`
-/

namespace A213839.P17722352392606932859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213839.P17722352392606932859

namespace A213839

/-- `∑[A204675(n)]` -/
def P17722352392606932859.Spec : Prop :=
  ∀ n, P17722352392606932859.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P6379874723028267471

`∑[A010006(n)]+n²`
-/

namespace A213839.P6379874723028267471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A213839.P6379874723028267471

namespace A213839

/-- `∑[A010006(n)]+n²` -/
def P6379874723028267471.Spec : Prop :=
  ∀ n, P6379874723028267471.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P16012227326465578128

`A063496(n+1)+n²`
-/

namespace A213839.P16012227326465578128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) + (n ^ 2 : ℤ)

end

end A213839.P16012227326465578128

namespace A213839

/-- `A063496(n+1)+n²` -/
def P16012227326465578128.Spec : Prop :=
  ∀ n, P16012227326465578128.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P12908670078430123009

`∑[A143859(n+1)+n]`
-/

namespace A213839.P12908670078430123009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213839.P12908670078430123009

namespace A213839

/-- `∑[A143859(n+1)+n]` -/
def P12908670078430123009.Spec : Prop :=
  ∀ n, P12908670078430123009.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P16594492078644247680

`∑[A143854(n+1)-n]`
-/

namespace A213839.P16594492078644247680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143854 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213839.P16594492078644247680

namespace A213839

/-- `∑[A143854(n+1)-n]` -/
def P16594492078644247680.Spec : Prop :=
  ∀ n, P16594492078644247680.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P18243832520558880828

`∑[A016802(n)]+(n+1)²`
-/

namespace A213839.P18243832520558880828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A213839.P18243832520558880828

namespace A213839

/-- `∑[A016802(n)]+(n+1)²` -/
def P18243832520558880828.Spec : Prop :=
  ∀ n, P18243832520558880828.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P12856130211196369421

`∑[A064761(n)+(n+1)²]`
-/

namespace A213839.P12856130211196369421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213839.P12856130211196369421

namespace A213839

/-- `∑[A064761(n)+(n+1)²]` -/
def P12856130211196369421.Spec : Prop :=
  ∀ n, P12856130211196369421.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P14455374726479101226

`A200431(n+1)+1-n²`
-/

namespace A213839.P14455374726479101226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) + (1 - (n ^ 2 : ℤ))

end

end A213839.P14455374726479101226

namespace A213839

/-- `A200431(n+1)+1-n²` -/
def P14455374726479101226.Spec : Prop :=
  ∀ n, P14455374726479101226.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P11974319933442805860

`A213842(n+1)-∑[4*n]`
-/

namespace A213839.P11974319933442805860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213842 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213839.P11974319933442805860

namespace A213839

/-- `A213842(n+1)-∑[4*n]` -/
def P11974319933442805860.Spec : Prop :=
  ∀ n, P11974319933442805860.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P177243303567524026

`Δ[(2*n-1)*A002412(n)]`
-/

namespace A213839.P177243303567524026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * A002412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213839.P177243303567524026

namespace A213839

/-- `Δ[(2*n-1)*A002412(n)]` -/
def P177243303567524026.Spec : Prop :=
  ∀ n, P177243303567524026.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P2199288799405235156

`A002378(n)+∑[(4*n)²+1]`
-/

namespace A213839.P2199288799405235156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213839.P2199288799405235156

namespace A213839

/-- `A002378(n)+∑[(4*n)²+1]` -/
def P2199288799405235156.Spec : Prop :=
  ∀ n, P2199288799405235156.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P12846208730069523326

`∑[(8*n+1)*A004277(n)]+n`
-/

namespace A213839.P12846208730069523326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A213839.P12846208730069523326

namespace A213839

/-- `∑[(8*n+1)*A004277(n)]+n` -/
def P12846208730069523326.Spec : Prop :=
  ∀ n, P12846208730069523326.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P10430370672475602734

`A085474(n)+A033429(n)`
-/

namespace A213839.P10430370672475602734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085474 n + A033429 n

end

end A213839.P10430370672475602734

namespace A213839

/-- `A085474(n)+A033429(n)` -/
def P10430370672475602734.Spec : Prop :=
  ∀ n, P10430370672475602734.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P18300362931141996212

`A220084(n)+A135713(n)`
-/

namespace A213839.P18300362931141996212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + A135713 n

end

end A213839.P18300362931141996212

namespace A213839

/-- `A220084(n)+A135713(n)` -/
def P18300362931141996212.Spec : Prop :=
  ∀ n, P18300362931141996212.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P3525930372427544061

`A268684(n)+A139757(n)`
-/

namespace A213839.P3525930372427544061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A139757 n

end

end A213839.P3525930372427544061

namespace A213839

/-- `A268684(n)+A139757(n)` -/
def P3525930372427544061.Spec : Prop :=
  ∀ n, P3525930372427544061.a n = A213839 (n + 1)

end A213839

/-! ## A213839.P14916154509377235147

`A011199(n)-A210440(n)`
-/

namespace A213839.P14916154509377235147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 n - A210440 n

end

end A213839.P14916154509377235147

namespace A213839

/-- `A011199(n)-A210440(n)` -/
def P14916154509377235147.Spec : Prop :=
  ∀ n, P14916154509377235147.a n = A213839 (n + 1)

end A213839

/-!
# A213840: a(n) = n*(1 + n)*(3 - 4*n + 4*n^2)/6.

The programs for A213840, the canonical program `A213840.P12447783385752840740` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213840 has offset 1).

The definition of A213840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(1+n+1)*(3-4*(n+1)+4*(n+1)²)/6` (program `A213840.P15930731396877076935`, by `A213840.P15930731396877076935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213840.P15930731396877076935

`(n+1)*(1+n+1)*(3-4*(n+1)+4*(n+1)²)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213840.P15930731396877076935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (1 + (n + 1)) : ℤ) * (3 - (4 * (n + 1) : ℤ) + (4 * (n + 1) ^ 2 : ℤ)) : ℚ) / 6

end

end A213840.P15930731396877076935

namespace A213840

/-- `(n+1)*(1+n+1)*(3-4*(n+1)+4*(n+1)²)/6` -/
def P15930731396877076935.Spec : Prop :=
  ∀ n, P15930731396877076935.a n = (A213840 (n + 1) : ℚ)

theorem P15930731396877076935.correct : P15930731396877076935.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213840, Nat.add_sub_cancel, A213840.P15930731396877076935.a, A213840.P12447783385752840740.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213840, Nat.add_sub_cancel, A213840.P15930731396877076935.a, A213840.P12447783385752840740.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213840

/-! ## A213840.P12447783385752840740

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=11, a(2)=54, a(3)=170, a(4)=415`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213840

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12447783385752840740.Spec : Prop :=
  ∀ n, P12447783385752840740.a n = A213840 (n + 1)

theorem P12447783385752840740.correct : P12447783385752840740.Spec := by
  intro n
  simp only [A213840, Nat.add_sub_cancel]

end A213840

/-! ## A213840.P4259933601646887280

`A000332(n+4)+6*A000332(n+3)+9*A000332(n+2)`
-/

namespace A213840.P4259933601646887280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) + 6 * A000332 (n + 3) + 9 * A000332 (n + 2)

end

end A213840.P4259933601646887280

namespace A213840

/-- `A000332(n+4)+6*A000332(n+3)+9*A000332(n+2)` -/
def P4259933601646887280.Spec : Prop :=
  ∀ n, P4259933601646887280.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P13784118059915973823

`C(2*(n+2), 4)-∑[∑[4*n]]`
-/

namespace A213840.P13784118059915973823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213840.P13784118059915973823

namespace A213840

/-- `C(2*(n+2), 4)-∑[∑[4*n]]` -/
def P13784118059915973823.Spec : Prop :=
  ∀ n, P13784118059915973823.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P13567789102839711511

`∑[∑[4*n]+1]+C(2*n+3, 4)`
-/

namespace A213840.P13567789102839711511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 3) 4

end

end A213840.P13567789102839711511

namespace A213840

/-- `∑[∑[4*n]+1]+C(2*n+3, 4)` -/
def P13567789102839711511.Spec : Prop :=
  ∀ n, (P13567789102839711511.a n : ℤ) = A213840 (n + 1)

end A213840

/-! ## A213840.P4202005195352776638

`∑[∑[A081585(n)]]`
-/

namespace A213840.P4202005195352776638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213840.P4202005195352776638

namespace A213840

/-- `∑[∑[A081585(n)]]` -/
def P4202005195352776638.Spec : Prop :=
  ∀ n, P4202005195352776638.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P9835392870053785443

`∑[A336288(n+1)]`
-/

namespace A213840.P9835392870053785443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213840.P9835392870053785443

namespace A213840

/-- `∑[A336288(n+1)]` -/
def P9835392870053785443.Spec : Prop :=
  ∀ n, P9835392870053785443.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P4910289670678021233

`∑[A057813(n)-n]`
-/

namespace A213840.P4910289670678021233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213840.P4910289670678021233

namespace A213840

/-- `∑[A057813(n)-n]` -/
def P4910289670678021233.Spec : Prop :=
  ∀ n, P4910289670678021233.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P2518189446389544650

`A330805(n)+1+n`
-/

namespace A213840.P2518189446389544650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330805 n + 1 + (n : ℤ)

end

end A213840.P2518189446389544650

namespace A213840

/-- `A330805(n)+1+n` -/
def P2518189446389544650.Spec : Prop :=
  ∀ n, P2518189446389544650.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P13391776805016291467

`∑[∑[A275543(2*n)]]`
-/

namespace A213840.P13391776805016291467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213840.P13391776805016291467

namespace A213840

/-- `∑[∑[A275543(2*n)]]` -/
def P13391776805016291467.Spec : Prop :=
  ∀ n, P13391776805016291467.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P14153721903903791156

`∑[A359096(n+1)]-n²`
-/

namespace A213840.P14153721903903791156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A213840.P14153721903903791156

namespace A213840

/-- `∑[A359096(n+1)]-n²` -/
def P14153721903903791156.Spec : Prop :=
  ∀ n, P14153721903903791156.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P11261351149191682884

`A072819(n+1)+∑[n+1]`
-/

namespace A213840.P11261351149191682884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213840.P11261351149191682884

namespace A213840

/-- `A072819(n+1)+∑[n+1]` -/
def P11261351149191682884.Spec : Prop :=
  ∀ n, P11261351149191682884.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P15062312435034000865

`A053134(n)-A210440(n)`
-/

namespace A213840.P15062312435034000865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - A210440 n

end

end A213840.P15062312435034000865

namespace A213840

/-- `A053134(n)-A210440(n)` -/
def P15062312435034000865.Spec : Prop :=
  ∀ n, P15062312435034000865.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P16110498583738707713

`A135713(n)+A100189(n+1)`
-/

namespace A213840.P16110498583738707713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n + A100189 (n + 1)

end

end A213840.P16110498583738707713

namespace A213840

/-- `A135713(n)+A100189(n+1)` -/
def P16110498583738707713.Spec : Prop :=
  ∀ n, P16110498583738707713.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P12782612955259987294

`A180324(n)+A100178(n+1)`
-/

namespace A213840.P12782612955259987294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n + A100178 (n + 1)

end

end A213840.P12782612955259987294

namespace A213840

/-- `A180324(n)+A100178(n+1)` -/
def P12782612955259987294.Spec : Prop :=
  ∀ n, P12782612955259987294.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P7960715863652876907

`A289643(n)+A066804(n+1)`
-/

namespace A213840.P7960715863652876907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A066804 (n + 1)

end

end A213840.P7960715863652876907

namespace A213840

/-- `A289643(n)+A066804(n+1)` -/
def P7960715863652876907.Spec : Prop :=
  ∀ n, P7960715863652876907.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P11026996301715861749

`A213436(n+1)-A033487(n)`
-/

namespace A213840.P11026996301715861749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213436 (n + 1) - A033487 n

end

end A213840.P11026996301715861749

namespace A213840

/-- `A213436(n+1)-A033487(n)` -/
def P11026996301715861749.Spec : Prop :=
  ∀ n, P11026996301715861749.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P4104035014937944429

`A027441(n+1)+A008911(n+1)`
-/

namespace A213840.P4104035014937944429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 (n + 1) + A008911 (n + 1)

end

end A213840.P4104035014937944429

namespace A213840

/-- `A027441(n+1)+A008911(n+1)` -/
def P4104035014937944429.Spec : Prop :=
  ∀ n, P4104035014937944429.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P15514051196871285336

`A098077(n+1)-A002414(n+1)`
-/

namespace A213840.P15514051196871285336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) - A002414 (n + 1)

end

end A213840.P15514051196871285336

namespace A213840

/-- `A098077(n+1)-A002414(n+1)` -/
def P15514051196871285336.Spec : Prop :=
  ∀ n, P15514051196871285336.a n = A213840 (n + 1)

end A213840

/-! ## A213840.P8538243349444423202

`A024386(n+1)-A213820(n+1)`
-/

namespace A213840.P8538243349444423202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024386 (n + 1) - A213820 (n + 1)

end

end A213840.P8538243349444423202

namespace A213840

/-- `A024386(n+1)-A213820(n+1)` -/
def P8538243349444423202.Spec : Prop :=
  ∀ n, P8538243349444423202.a n = A213840 (n + 1)

end A213840

/-!
# A213841: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

The programs for A213841, the canonical program `A213841.P5709133087758580350` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213841 has offset 1).

The definition of A213841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213841.P5709133087758580350

`2*A213752(n+1)-A055461(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213841

/-- `2*A213752(n+1)-A055461(n+1)` -/
def P5709133087758580350.Spec : Prop :=
  ∀ n, P5709133087758580350.a n = A213841 (n + 1)

theorem P5709133087758580350.correct : P5709133087758580350.Spec := by
  intro n
  simp only [A213841, Nat.add_sub_cancel]

end A213841

/-! ## A213841.P11068207143046011395

`A213844(n+1)-2*A055461(n+1)`
-/

namespace A213841.P11068207143046011395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - 2 * A055461 (n + 1)

end

end A213841.P11068207143046011395

namespace A213841

/-- `A213844(n+1)-2*A055461(n+1)` -/
def P11068207143046011395.Spec : Prop :=
  ∀ n, P11068207143046011395.a n = A213841 (n + 1)

theorem P11068207143046011395.correct : P11068207143046011395.Spec := by
  intro n
  simp only [A213841, Nat.add_sub_cancel, A213841.P11068207143046011395.a, A213841.P5709133087758580350.a, A055461, A055461.P13333228572909301680.a, A213752, A213752.P6712457032791748921.a, A213844, A213844.P11503971655518464143.a, A213751, A213751.P3389573996948061720.a, A062707, A062707.P16581809348093358218.a, A104634, A104634.P15724108096827104955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213841

/-! ## A213841.P1256455941522756127

`A213844(n+1)-2*A004736(n+1)²`
-/

namespace A213841.P1256455941522756127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - 2 * A004736 (n + 1) ^ 2

end

end A213841.P1256455941522756127

namespace A213841

/-- `A213844(n+1)-2*A004736(n+1)²` -/
def P1256455941522756127.Spec : Prop :=
  ∀ n, P1256455941522756127.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P24551680568282619

`A103218(n)+A103219(n)-A103217(n)`
-/

namespace A213841.P24551680568282619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103218 n + (A103219 n - A103217 n)

end

end A213841.P24551680568282619

namespace A213841

/-- `A103218(n)+A103219(n)-A103217(n)` -/
def P24551680568282619.Spec : Prop :=
  ∀ n, P24551680568282619.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P7524131296778968939

`A213844(n+1)-A001105(A004736(n+1))`
-/

namespace A213841.P7524131296778968939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - A001105 (A004736 (n + 1)).toNat

end

end A213841.P7524131296778968939

namespace A213841

/-- `A213844(n+1)-A001105(A004736(n+1))` -/
def P7524131296778968939.Spec : Prop :=
  ∀ n, P7524131296778968939.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P13919615861745800654

`A213844(n+1)-(A103217(n)+A004736(n+1))`
-/

namespace A213841.P13919615861745800654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - (A103217 n + A004736 (n + 1))

end

end A213841.P13919615861745800654

namespace A213841

/-- `A213844(n+1)-(A103217(n)+A004736(n+1))` -/
def P13919615861745800654.Spec : Prop :=
  ∀ n, P13919615861745800654.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P18083768527700645091

`A213761(n+1)+A213773(n+1)-A213752(n+1)`
-/

namespace A213841.P18083768527700645091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + (A213773 (n + 1) - A213752 (n + 1))

end

end A213841.P18083768527700645091

namespace A213841

/-- `A213761(n+1)+A213773(n+1)-A213752(n+1)` -/
def P18083768527700645091.Spec : Prop :=
  ∀ n, P18083768527700645091.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P8355183402263702733

`A213838(n+1)+A213847(n+1)-A213844(n+1)`
-/

namespace A213841.P8355183402263702733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213838 (n + 1) + (A213847 (n + 1) - A213844 (n + 1))

end

end A213841.P8355183402263702733

namespace A213841

/-- `A213838(n+1)+A213847(n+1)-A213844(n+1)` -/
def P8355183402263702733.Spec : Prop :=
  ∀ n, P8355183402263702733.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P13480706150248999532

`A213844(n+1)-A005843(A055461(n+1))`
-/

namespace A213841.P13480706150248999532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - A005843 (A055461 (n + 1)).toNat

end

end A213841.P13480706150248999532

namespace A213841

/-- `A213844(n+1)-A005843(A055461(n+1))` -/
def P13480706150248999532.Spec : Prop :=
  ∀ n, P13480706150248999532.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P2195665239441626352

`A213844(n+1)-A005843(A004736(n+1)²)`
-/

namespace A213841.P2195665239441626352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - A005843 (A004736 (n + 1) ^ 2).toNat

end

end A213841.P2195665239441626352

namespace A213841

/-- `A213844(n+1)-A005843(A004736(n+1)²)` -/
def P2195665239441626352.Spec : Prop :=
  ∀ n, P2195665239441626352.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P2449059389521726325

`A213752(n+1)+A005843(A213752(n+1)-A213751(n+1))`
-/

namespace A213841.P2449059389521726325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A005843 (A213752 (n + 1) - A213751 (n + 1)).toNat

end

end A213841.P2449059389521726325

namespace A213841

/-- `A213752(n+1)+A005843(A213752(n+1)-A213751(n+1))` -/
def P2449059389521726325.Spec : Prop :=
  ∀ n, P2449059389521726325.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P5456271129872877732

`A055461(n+1)+A005843(A213752(n+1)-A055461(n+1))`
-/

namespace A213841.P5456271129872877732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A005843 (A213752 (n + 1) - A055461 (n + 1)).toNat

end

end A213841.P5456271129872877732

namespace A213841

/-- `A055461(n+1)+A005843(A213752(n+1)-A055461(n+1))` -/
def P5456271129872877732.Spec : Prop :=
  ∀ n, P5456271129872877732.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P3026476236326474631

`A005843(A213752(n+1))-A055461(n+1)`
-/

namespace A213841.P3026476236326474631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213752 (n + 1)).toNat - A055461 (n + 1)

end

end A213841.P3026476236326474631

namespace A213841

/-- `A005843(A213752(n+1))-A055461(n+1)` -/
def P3026476236326474631.Spec : Prop :=
  ∀ n, P3026476236326474631.a n = A213841 (n + 1)

end A213841

/-! ## A213841.P9947174239341358259

`A008574(A213752(n+1))-A213844(n+1)`
-/

namespace A213841.P9947174239341358259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A213752 (n + 1)).toNat - A213844 (n + 1)

end

end A213841.P9947174239341358259

namespace A213841

/-- `A008574(A213752(n+1))-A213844(n+1)` -/
def P9947174239341358259.Spec : Prop :=
  ∀ n, P9947174239341358259.a n = A213841 (n + 1)

end A213841

/-!
# A213842: Principal diagonal of the convolution array A213841.

The programs for A213842, the canonical program `A213842.P1431943185690252387` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213842 has offset 1).

The definition of A213842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213842.P6592540855915485394

`(2*(n+1)-15*(n+1)²+16*(n+1)^3)/3`
-/

namespace A213842.P6592540855915485394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - (15 * (n + 1) ^ 2 : ℤ) + (16 * (n + 1) ^ 3 : ℤ) : ℚ) / 3

end

end A213842.P6592540855915485394

namespace A213842

/-- `(2*(n+1)-15*(n+1)²+16*(n+1)^3)/3` -/
def P6592540855915485394.Spec : Prop :=
  ∀ n, P6592540855915485394.a n = (A213842 (n + 1) : ℚ)

theorem P6592540855915485394.correct : P6592540855915485394.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213842, Nat.add_sub_cancel, A213842.P6592540855915485394.a, A213842.P1431943185690252387.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213842, Nat.add_sub_cancel, A213842.P6592540855915485394.a, A213842.P1431943185690252387.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213842

/-! ## A213842.P1431943185690252387

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=24, a(2)=101, a(3)=264`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213842

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1431943185690252387.Spec : Prop :=
  ∀ n, P1431943185690252387.a n = A213842 (n + 1)

theorem P1431943185690252387.correct : P1431943185690252387.Spec := by
  intro n
  simp only [A213842, Nat.add_sub_cancel]

end A213842

/-! ## A213842.P4794346781781825573

`∑[Δ[C(2*n, 2)]²-2*n]`
-/

namespace A213842.P4794346781781825573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213842.P4794346781781825573

namespace A213842

/-- `∑[Δ[C(2*n, 2)]²-2*n]` -/
def P4794346781781825573.Spec : Prop :=
  ∀ n, P4794346781781825573.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P15040723834589359402

`∑[∑[a(n-1)+20]]+(4*n-3)*∑[n]` with `a(0)=1`
-/

namespace A213842.P15040723834589359402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((4 * n : ℤ) - 3) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A213842.P15040723834589359402

namespace A213842

/-- `∑[∑[a(n-1)+20]]+(4*n-3)*∑[n]` -/
def P15040723834589359402.Spec : Prop :=
  ∀ n, P15040723834589359402.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P16558256641564181503

`(2*n+2*n+1)²+a(n-1)-2*n` with `a(0)=1`
-/

namespace A213842.P16558256641564181503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + (2 * n + 1)) ^ 2 : ℤ) + (a (n - 1) - (2 * n : ℤ))

end

end A213842.P16558256641564181503

namespace A213842

/-- `(2*n+2*n+1)²+a(n-1)-2*n` -/
def P16558256641564181503.Spec : Prop :=
  ∀ n, P16558256641564181503.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P8225391540834174406

`∑[lcm(2*n+1, 2*n)]+(n+1)*(2*n+1)²`
-/

namespace A213842.P8225391540834174406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * (2 * n + 1) ^ 2

end

end A213842.P8225391540834174406

namespace A213842

/-- `∑[lcm(2*n+1, 2*n)]+(n+1)*(2*n+1)²` -/
def P8225391540834174406.Spec : Prop :=
  ∀ n, (P8225391540834174406.a n : ℤ) = A213842 (n + 1)

end A213842

/-! ## A213842.P6591717149652059076

`∑[A080861(n)+n²]`
-/

namespace A213842.P6591717149652059076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080861 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213842.P6591717149652059076

namespace A213842

/-- `∑[A080861(n)+n²]` -/
def P6591717149652059076.Spec : Prop :=
  ∀ n, P6591717149652059076.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P11906074779004213757

`∑[A143838(n+1)+n]`
-/

namespace A213842.P11906074779004213757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143838 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213842.P11906074779004213757

namespace A213842

/-- `∑[A143838(n+1)+n]` -/
def P11906074779004213757.Spec : Prop :=
  ∀ n, P11906074779004213757.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P389603586522800949

`∑[A143839(n+1)-n]`
-/

namespace A213842.P389603586522800949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143839 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213842.P389603586522800949

namespace A213842

/-- `∑[A143839(n+1)-n]` -/
def P389603586522800949.Spec : Prop :=
  ∀ n, P389603586522800949.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P9703950597563556958

`A114254(n)+n*(n-2)`
-/

namespace A213842.P9703950597563556958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n + (n : ℤ) * ((n : ℤ) - 2)

end

end A213842.P9703950597563556958

namespace A213842

/-- `A114254(n)+n*(n-2)` -/
def P9703950597563556958.Spec : Prop :=
  ∀ n, P9703950597563556958.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P7270072343010794935

`A200431(n+1)+(n+1)²`
-/

namespace A213842.P7270072343010794935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A213842.P7270072343010794935

namespace A213842

/-- `A200431(n+1)+(n+1)²` -/
def P7270072343010794935.Spec : Prop :=
  ∀ n, P7270072343010794935.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P14958451157202813333

`A024381(n+1)-∑[2*n]`
-/

namespace A213842.P14958451157202813333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024381 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213842.P14958451157202813333

namespace A213842

/-- `A024381(n+1)-∑[2*n]` -/
def P14958451157202813333.Spec : Prop :=
  ∀ n, P14958451157202813333.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P15334472950150055449

`2*A213837(n+1)-(n+1)`
-/

namespace A213842.P15334472950150055449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213837 (n + 1) - (n + 1 : ℤ)

end

end A213842.P15334472950150055449

namespace A213842

/-- `2*A213837(n+1)-(n+1)` -/
def P15334472950150055449.Spec : Prop :=
  ∀ n, P15334472950150055449.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P14710808185760225216

`A103532(n)+A002492(n)`
-/

namespace A213842.P14710808185760225216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n + A002492 n

end

end A213842.P14710808185760225216

namespace A213842

/-- `A103532(n)+A002492(n)` -/
def P14710808185760225216.Spec : Prop :=
  ∀ n, P14710808185760225216.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P16469290377357149908

`A281381(n)+A220084(n)`
-/

namespace A213842.P16469290377357149908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281381 n + A220084 n

end

end A213842.P16469290377357149908

namespace A213842

/-- `A281381(n)+A220084(n)` -/
def P16469290377357149908.Spec : Prop :=
  ∀ n, P16469290377357149908.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P3449414041145971430

`A139757(n)+∑[A002943(n)]`
-/

namespace A213842.P3449414041145971430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213842.P3449414041145971430

namespace A213842

/-- `A139757(n)+∑[A002943(n)]` -/
def P3449414041145971430.Spec : Prop :=
  ∀ n, P3449414041145971430.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P9379993611718920470

`A063496(n+1)+A045944(n)`
-/

namespace A213842.P9379993611718920470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) + A045944 n

end

end A213842.P9379993611718920470

namespace A213842

/-- `A063496(n+1)+A045944(n)` -/
def P9379993611718920470.Spec : Prop :=
  ∀ n, P9379993611718920470.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P5902210822340366610

`A169607(n)+A024215(n+1)`
-/

namespace A213842.P5902210822340366610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n + A024215 (n + 1)

end

end A213842.P5902210822340366610

namespace A213842

/-- `A169607(n)+A024215(n+1)` -/
def P5902210822340366610.Spec : Prop :=
  ∀ n, P5902210822340366610.a n = A213842 (n + 1)

end A213842

/-! ## A213842.P13631982959095153376

`A213839(n+1)+A046092(n)`
-/

namespace A213842.P13631982959095153376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213839 (n + 1) + A046092 n

end

end A213842.P13631982959095153376

namespace A213842

/-- `A213839(n+1)+A046092(n)` -/
def P13631982959095153376.Spec : Prop :=
  ∀ n, P13631982959095153376.a n = A213842 (n + 1)

end A213842

/-!
# A213843: Antidiagonal sums of the convolution array A213841.

The programs for A213843, the canonical program `A213843.P9569495103844873481` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213843 has offset 1).

The definition of A213843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213843.P10028855220977252530

`(n+1)*(1+n+1)*(1-2*(n+1)+4*(n+1)²)/6`
-/

namespace A213843.P10028855220977252530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (1 + (n + 1)) : ℤ) * (1 - (2 * (n + 1) : ℤ) + (4 * (n + 1) ^ 2 : ℤ)) : ℚ) / 6

end

end A213843.P10028855220977252530

namespace A213843

/-- `(n+1)*(1+n+1)*(1-2*(n+1)+4*(n+1)²)/6` -/
def P10028855220977252530.Spec : Prop :=
  ∀ n, P10028855220977252530.a n = (A213843 (n + 1) : ℚ)

theorem P10028855220977252530.correct : P10028855220977252530.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213843, Nat.add_sub_cancel, A213843.P10028855220977252530.a, A213843.P9569495103844873481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213843, Nat.add_sub_cancel, A213843.P10028855220977252530.a, A213843.P9569495103844873481.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213843

/-! ## A213843.P9569495103844873481

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=62, a(3)=190, a(4)=455`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213843

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9569495103844873481.Spec : Prop :=
  ∀ n, P9569495103844873481.a n = A213843 (n + 1)

theorem P9569495103844873481.correct : P9569495103844873481.Spec := by
  intro n
  simp only [A213843, Nat.add_sub_cancel]

end A213843

/-! ## A213843.P17666390829155965848

`C(n+2, 2)+2*n*∑[(n+1)²]`
-/

namespace A213843.P17666390829155965848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + 2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213843.P17666390829155965848

namespace A213843

/-- `C(n+2, 2)+2*n*∑[(n+1)²]` -/
def P17666390829155965848.Spec : Prop :=
  ∀ n, (P17666390829155965848.a n : ℤ) = A213843 (n + 1)

end A213843

/-! ## A213843.P16948923724540128612

`∑[∑[A188135(n)]]`
-/

namespace A213843.P16948923724540128612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213843.P16948923724540128612

namespace A213843

/-- `∑[∑[A188135(n)]]` -/
def P16948923724540128612.Spec : Prop :=
  ∀ n, P16948923724540128612.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P17455891012089911103

`∑[A057813(n)+n²]`
-/

namespace A213843.P17455891012089911103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213843.P17455891012089911103

namespace A213843

/-- `∑[A057813(n)+n²]` -/
def P17455891012089911103.Spec : Prop :=
  ∀ n, P17455891012089911103.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P12445322093859500131

`A072819(n+1)+∑[(n+1)²]`
-/

namespace A213843.P12445322093859500131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213843.P12445322093859500131

namespace A213843

/-- `A072819(n+1)+∑[(n+1)²]` -/
def P12445322093859500131.Spec : Prop :=
  ∀ n, P12445322093859500131.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P15318278739956592970

`A180324(n)+A096000(n)`
-/

namespace A213843.P15318278739956592970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n + A096000 n

end

end A213843.P15318278739956592970

namespace A213843

/-- `A180324(n)+A096000(n)` -/
def P15318278739956592970.Spec : Prop :=
  ∀ n, P15318278739956592970.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P10675120463634066109

`A289643(n)+A108678(n)`
-/

namespace A213843.P10675120463634066109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A108678 n

end

end A213843.P10675120463634066109

namespace A213843

/-- `A289643(n)+A108678(n)` -/
def P10675120463634066109.Spec : Prop :=
  ∀ n, P10675120463634066109.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P9350834147891370478

`A330805(n)+A167875(n)`
-/

namespace A213843.P9350834147891370478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330805 n + A167875 n

end

end A213843.P9350834147891370478

namespace A213843

/-- `A330805(n)+A167875(n)` -/
def P9350834147891370478.Spec : Prop :=
  ∀ n, P9350834147891370478.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P7367334246564029490

`A051797(n)+∑[A007585(n)]`
-/

namespace A213843.P7367334246564029490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213843.P7367334246564029490

namespace A213843

/-- `A051797(n)+∑[A007585(n)]` -/
def P7367334246564029490.Spec : Prop :=
  ∀ n, P7367334246564029490.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P8817312492327108992

`A071270(n)+A063491(n+1)`
-/

namespace A213843.P8817312492327108992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n + A063491 (n + 1)

end

end A213843.P8817312492327108992

namespace A213843

/-- `A071270(n)+A063491(n+1)` -/
def P8817312492327108992.Spec : Prop :=
  ∀ n, P8817312492327108992.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P11494524458671144782

`A213549(n+1)+A002418(n)`
-/

namespace A213843.P11494524458671144782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (n + 1) + A002418 n

end

end A213843.P11494524458671144782

namespace A213843

/-- `A213549(n+1)+A002418(n)` -/
def P11494524458671144782.Spec : Prop :=
  ∀ n, P11494524458671144782.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P7009692194836612891

`A213834(n+1)+A004320(n)`
-/

namespace A213843.P7009692194836612891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213834 (n + 1) + A004320 n

end

end A213843.P7009692194836612891

namespace A213843

/-- `A213834(n+1)+A004320(n)` -/
def P7009692194836612891.Spec : Prop :=
  ∀ n, P7009692194836612891.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P17468258449600624931

`A169607(n)+A100189(n+1)`
-/

namespace A213843.P17468258449600624931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n + A100189 (n + 1)

end

end A213843.P17468258449600624931

namespace A213843

/-- `A169607(n)+A100189(n+1)` -/
def P17468258449600624931.Spec : Prop :=
  ∀ n, P17468258449600624931.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P2503075020952593353

`A076454(n+1)-A162668(n)`
-/

namespace A213843.P2503075020952593353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) - A162668 n

end

end A213843.P2503075020952593353

namespace A213843

/-- `A076454(n+1)-A162668(n)` -/
def P2503075020952593353.Spec : Prop :=
  ∀ n, P2503075020952593353.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P14768901329106893532

`A053134(n)-A210440(n)/2`
-/

namespace A213843.P14768901329106893532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053134 n : ℚ) - (A210440 n : ℚ) / 2

end

end A213843.P14768901329106893532

namespace A213843

/-- `A053134(n)-A210440(n)/2` -/
def P14768901329106893532.Spec : Prop :=
  ∀ n, P14768901329106893532.a n = (A213843 (n + 1) : ℚ)

end A213843

/-! ## A213843.P4314793474752908748

`A153978(n+1)+A117066(n+1)`
-/

namespace A213843.P4314793474752908748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153978 (n + 1) + A117066 (n + 1)

end

end A213843.P4314793474752908748

namespace A213843

/-- `A153978(n+1)+A117066(n+1)` -/
def P4314793474752908748.Spec : Prop :=
  ∀ n, P4314793474752908748.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P1085285991502342311

`A213436(n+1)-A052149(n+1)`
-/

namespace A213843.P1085285991502342311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213436 (n + 1) - A052149 (n + 1)

end

end A213843.P1085285991502342311

namespace A213843

/-- `A213436(n+1)-A052149(n+1)` -/
def P1085285991502342311.Spec : Prop :=
  ∀ n, P1085285991502342311.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P15014281928568291717

`A179824(n+2)-A006324(n+1)`
-/

namespace A213843.P15014281928568291717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2) - A006324 (n + 1)

end

end A213843.P15014281928568291717

namespace A213843

/-- `A179824(n+2)-A006324(n+1)` -/
def P15014281928568291717.Spec : Prop :=
  ∀ n, P15014281928568291717.a n = A213843 (n + 1)

end A213843

/-! ## A213843.P17764610445488244573

`A117066(n+1)+2*A001296(n)`
-/

namespace A213843.P17764610445488244573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) + 2 * A001296 n

end

end A213843.P17764610445488244573

namespace A213843

/-- `A117066(n+1)+2*A001296(n)` -/
def P17764610445488244573.Spec : Prop :=
  ∀ n, P17764610445488244573.a n = A213843 (n + 1)

end A213843

/-!
# A213844: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-5+4*h, n>=1, h>=1, and ** = convolution.

The programs for A213844, the canonical program `A213844.P11503971655518464143` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213844 has offset 1).

The definition of A213844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213844.P11503971655518464143

`A055461(n+1)+2*A213752(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213844

/-- `A055461(n+1)+2*A213752(n+1)` -/
def P11503971655518464143.Spec : Prop :=
  ∀ n, P11503971655518464143.a n = A213844 (n + 1)

theorem P11503971655518464143.correct : P11503971655518464143.Spec := by
  intro n
  simp only [A213844, Nat.add_sub_cancel]

end A213844

/-! ## A213844.P15180166552026638693

`A213841(n+1)+2*A055461(n+1)`
-/

namespace A213844.P15180166552026638693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + 2 * A055461 (n + 1)

end

end A213844.P15180166552026638693

namespace A213844

/-- `A213841(n+1)+2*A055461(n+1)` -/
def P15180166552026638693.Spec : Prop :=
  ∀ n, P15180166552026638693.a n = A213844 (n + 1)

theorem P15180166552026638693.correct : P15180166552026638693.Spec := by
  intro n
  simp only [A213844, Nat.add_sub_cancel, A213844.P15180166552026638693.a, A213844.P11503971655518464143.a, A055461, A055461.P13333228572909301680.a, A213752, A213752.P6712457032791748921.a, A213841, A213841.P5709133087758580350.a, A213751, A213751.P3389573996948061720.a, A062707, A062707.P16581809348093358218.a, A104634, A104634.P15724108096827104955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213844

/-! ## A213844.P843752227712912801

`A213752(n+1)+2*A213751(n+1)`
-/

namespace A213844.P843752227712912801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + 2 * A213751 (n + 1)

end

end A213844.P843752227712912801

namespace A213844

/-- `A213752(n+1)+2*A213751(n+1)` -/
def P843752227712912801.Spec : Prop :=
  ∀ n, P843752227712912801.a n = A213844 (n + 1)

theorem P843752227712912801.correct : P843752227712912801.Spec := by
  intro n
  simp only [A213844, Nat.add_sub_cancel, A213844.P843752227712912801.a, A213844.P11503971655518464143.a, A055461, A055461.P13333228572909301680.a, A213751, A213751.P3389573996948061720.a, A213752, A213752.P6712457032791748921.a, A062707, A062707.P16581809348093358218.a, A104634, A104634.P15724108096827104955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213844

/-! ## A213844.P8473436639804655568

`A213841(n+1)+2*A004736(n+1)²`
-/

namespace A213844.P8473436639804655568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + 2 * A004736 (n + 1) ^ 2

end

end A213844.P8473436639804655568

namespace A213844

/-- `A213841(n+1)+2*A004736(n+1)²` -/
def P8473436639804655568.Spec : Prop :=
  ∀ n, P8473436639804655568.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P15562060274757235043

`A213841(n+1)+A001105(A004736(n+1))`
-/

namespace A213844.P15562060274757235043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + A001105 (A004736 (n + 1)).toNat

end

end A213844.P15562060274757235043

namespace A213844

/-- `A213841(n+1)+A001105(A004736(n+1))` -/
def P15562060274757235043.Spec : Prop :=
  ∀ n, P15562060274757235043.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P17630718078146205220

`A213838(n+1)+A103217(n)+A101447(n)`
-/

namespace A213844.P17630718078146205220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213838 (n + 1) + (A103217 n + A101447 n)

end

end A213844.P17630718078146205220

namespace A213844

/-- `A213838(n+1)+A103217(n)+A101447(n)` -/
def P17630718078146205220.Spec : Prop :=
  ∀ n, P17630718078146205220.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P1045116468800087808

`A004736(n+1)+A213841(n+1)+A103217(n)`
-/

namespace A213844.P1045116468800087808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A213841 (n + 1) + A103217 n)

end

end A213844.P1045116468800087808

namespace A213844

/-- `A004736(n+1)+A213841(n+1)+A103217(n)` -/
def P1045116468800087808.Spec : Prop :=
  ∀ n, P1045116468800087808.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P3709195496234890771

`A213751(n+1)+A213822(n+1)-A213819(n+1)`
-/

namespace A213844.P3709195496234890771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) + (A213822 (n + 1) - A213819 (n + 1))

end

end A213844.P3709195496234890771

namespace A213844

/-- `A213751(n+1)+A213822(n+1)-A213819(n+1)` -/
def P3709195496234890771.Spec : Prop :=
  ∀ n, P3709195496234890771.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P3019698730003555514

`A213838(n+1)+A213847(n+1)-A213841(n+1)`
-/

namespace A213844.P3019698730003555514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213838 (n + 1) + (A213847 (n + 1) - A213841 (n + 1))

end

end A213844.P3019698730003555514

namespace A213844

/-- `A213838(n+1)+A213847(n+1)-A213841(n+1)` -/
def P3019698730003555514.Spec : Prop :=
  ∀ n, P3019698730003555514.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P18040293490094807635

`A213841(n+1)+A005843(A055461(n+1))`
-/

namespace A213844.P18040293490094807635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + A005843 (A055461 (n + 1)).toNat

end

end A213844.P18040293490094807635

namespace A213844

/-- `A213841(n+1)+A005843(A055461(n+1))` -/
def P18040293490094807635.Spec : Prop :=
  ∀ n, P18040293490094807635.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P15436702711003816018

`A213841(n+1)+A005843(A004736(n+1)²)`
-/

namespace A213844.P15436702711003816018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + A005843 (A004736 (n + 1) ^ 2).toNat

end

end A213844.P15436702711003816018

namespace A213844

/-- `A213841(n+1)+A005843(A004736(n+1)²)` -/
def P15436702711003816018.Spec : Prop :=
  ∀ n, P15436702711003816018.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P16229015039354721204

`A213841(n+1)+A103218(A103217(n))/2`
-/

namespace A213844.P16229015039354721204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213841 (n + 1) : ℚ) + (A103218 (A103217 n).toNat : ℚ) / 2

end

end A213844.P16229015039354721204

namespace A213844

/-- `A213841(n+1)+A103218(A103217(n))/2` -/
def P16229015039354721204.Spec : Prop :=
  ∀ n, P16229015039354721204.a n = (A213844 (n + 1) : ℚ)

end A213844

/-! ## A213844.P91024629641858542

`A213752(n+1)+A005843(A213751(n+1))`
-/

namespace A213844.P91024629641858542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A005843 (A213751 (n + 1)).toNat

end

end A213844.P91024629641858542

namespace A213844

/-- `A213752(n+1)+A005843(A213751(n+1))` -/
def P91024629641858542.Spec : Prop :=
  ∀ n, P91024629641858542.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P10299380119750033276

`A008574(A213751(n+1))-A055461(n+1)`
-/

namespace A213844.P10299380119750033276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A213751 (n + 1)).toNat - A055461 (n + 1)

end

end A213844.P10299380119750033276

namespace A213844

/-- `A008574(A213751(n+1))-A055461(n+1)` -/
def P10299380119750033276.Spec : Prop :=
  ∀ n, P10299380119750033276.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P11865937122455945118

`A008574(A213751(n+1))-A004736(n+1)²`
-/

namespace A213844.P11865937122455945118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A213751 (n + 1)).toNat - A004736 (n + 1) ^ 2

end

end A213844.P11865937122455945118

namespace A213844

/-- `A008574(A213751(n+1))-A004736(n+1)²` -/
def P11865937122455945118.Spec : Prop :=
  ∀ n, P11865937122455945118.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P1090851678325075050

`A055461(n+1)+A005843(A213752(n+1))`
-/

namespace A213844.P1090851678325075050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A005843 (A213752 (n + 1)).toNat

end

end A213844.P1090851678325075050

namespace A213844

/-- `A055461(n+1)+A005843(A213752(n+1))` -/
def P1090851678325075050.Spec : Prop :=
  ∀ n, P1090851678325075050.a n = A213844 (n + 1)

end A213844

/-! ## A213844.P5226927485867391324

`A005843(2*A213751(n+1))-A055461(n+1)`
-/

namespace A213844.P5226927485867391324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * A213751 (n + 1)).toNat - A055461 (n + 1)

end

end A213844.P5226927485867391324

namespace A213844

/-- `A005843(2*A213751(n+1))-A055461(n+1)` -/
def P5226927485867391324.Spec : Prop :=
  ∀ n, P5226927485867391324.a n = A213844 (n + 1)

end A213844

/-!
# A213845: Principal diagonal of the convolution array A213844.

The programs for A213845, the canonical program `A213845.P16390580833394365037` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213845 has offset 1).

The definition of A213845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213845.P5656613864954177869

`(2*(n+1)-9*(n+1)²+16*(n+1)^3)/3`
-/

namespace A213845.P5656613864954177869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - (9 * (n + 1) ^ 2 : ℤ) + (16 * (n + 1) ^ 3 : ℤ) : ℚ) / 3

end

end A213845.P5656613864954177869

namespace A213845

/-- `(2*(n+1)-9*(n+1)²+16*(n+1)^3)/3` -/
def P5656613864954177869.Spec : Prop :=
  ∀ n, P5656613864954177869.a n = (A213845 (n + 1) : ℚ)

theorem P5656613864954177869.correct : P5656613864954177869.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A213845, Nat.add_sub_cancel, A213845.P5656613864954177869.a, A213845.P16390580833394365037.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A213845, Nat.add_sub_cancel, A213845.P5656613864954177869.a, A213845.P16390580833394365037.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213845

/-! ## A213845.P16390580833394365037

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=32, a(2)=119, a(3)=296`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213845

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16390580833394365037.Spec : Prop :=
  ∀ n, P16390580833394365037.a n = A213845 (n + 1)

theorem P16390580833394365037.correct : P16390580833394365037.Spec := by
  intro n
  simp only [A213845, Nat.add_sub_cancel]

end A213845

/-! ## A213845.P18094451682964382368

`∑[A028993(n)+2]`
-/

namespace A213845.P18094451682964382368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213845.P18094451682964382368

namespace A213845

/-- `∑[A028993(n)+2]` -/
def P18094451682964382368.Spec : Prop :=
  ∀ n, P18094451682964382368.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P12712405947106774623

`A213848(n+1)-∑[4*n]`
-/

namespace A213845.P12712405947106774623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213848 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213845.P12712405947106774623

namespace A213845

/-- `A213848(n+1)-∑[4*n]` -/
def P12712405947106774623.Spec : Prop :=
  ∀ n, P12712405947106774623.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P14579118149660331107

`A024381(n+1)+(n+1)*(n+2)`
-/

namespace A213845.P14579118149660331107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024381 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A213845.P14579118149660331107

namespace A213845

/-- `A024381(n+1)+(n+1)*(n+2)` -/
def P14579118149660331107.Spec : Prop :=
  ∀ n, P14579118149660331107.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P335094978242086703

`A152110(n)-A056109(n)`
-/

namespace A213845.P335094978242086703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152110 n - A056109 n

end

end A213845.P335094978242086703

namespace A213845

/-- `A152110(n)-A056109(n)` -/
def P335094978242086703.Spec : Prop :=
  ∀ n, P335094978242086703.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P11014760461156634012

`A141631(n+1)+A114254(n)`
-/

namespace A213845.P11014760461156634012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141631 (n + 1) + A114254 n

end

end A213845.P11014760461156634012

namespace A213845

/-- `A141631(n+1)+A114254(n)` -/
def P11014760461156634012.Spec : Prop :=
  ∀ n, P11014760461156634012.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P9852449226417818733

`A220084(n)+A125200(n+1)`
-/

namespace A213845.P9852449226417818733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + A125200 (n + 1)

end

end A213845.P9852449226417818733

namespace A213845

/-- `A220084(n)+A125200(n+1)` -/
def P9852449226417818733.Spec : Prop :=
  ∀ n, P9852449226417818733.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P15774126043640264849

`A273316(n)+A131464(n+1)`
-/

namespace A213845.P15774126043640264849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n + A131464 (n + 1)

end

end A213845.P15774126043640264849

namespace A213845

/-- `A273316(n)+A131464(n+1)` -/
def P15774126043640264849.Spec : Prop :=
  ∀ n, P15774126043640264849.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P4774295660391663674

`A213820(n+1)+A100174(n+1)`
-/

namespace A213845.P4774295660391663674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213820 (n + 1) + A100174 (n + 1)

end

end A213845.P4774295660391663674

namespace A213845

/-- `A213820(n+1)+A100174(n+1)` -/
def P4774295660391663674.Spec : Prop :=
  ∀ n, P4774295660391663674.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P15866051125548490175

`A219054(n+1)+A213832(n+1)`
-/

namespace A213845.P15866051125548490175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (n + 1) + A213832 (n + 1)

end

end A213845.P15866051125548490175

namespace A213845

/-- `A219054(n+1)+A213832(n+1)` -/
def P15866051125548490175.Spec : Prop :=
  ∀ n, P15866051125548490175.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P5502162200574707673

`A221464(n+1)-A035291(n+1)`
-/

namespace A213845.P5502162200574707673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221464 (n + 1) - A035291 (n + 1)

end

end A213845.P5502162200574707673

namespace A213845

/-- `A221464(n+1)-A035291(n+1)` -/
def P5502162200574707673.Spec : Prop :=
  ∀ n, P5502162200574707673.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P1713423985619020892

`A100174(n+1)+2*A002414(n+1)`
-/

namespace A213845.P1713423985619020892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) + 2 * A002414 (n + 1)

end

end A213845.P1713423985619020892

namespace A213845

/-- `A100174(n+1)+2*A002414(n+1)` -/
def P1713423985619020892.Spec : Prop :=
  ∀ n, P1713423985619020892.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P16455282427147739119

`(n+1)²+A100157(n+1)+A100157(n+1)`
-/

namespace A213845.P16455282427147739119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A100157 (n + 1) + A100157 (n + 1))

end

end A213845.P16455282427147739119

namespace A213845

/-- `(n+1)²+A100157(n+1)+A100157(n+1)` -/
def P16455282427147739119.Spec : Prop :=
  ∀ n, P16455282427147739119.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P12730648896298636766

`A213837(n+1)+A213837(n+1)+A000384(n+1)`
-/

namespace A213845.P12730648896298636766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213837 (n + 1) + (A213837 (n + 1) + A000384 (n + 1))

end

end A213845.P12730648896298636766

namespace A213845

/-- `A213837(n+1)+A213837(n+1)+A000384(n+1)` -/
def P12730648896298636766.Spec : Prop :=
  ∀ n, P12730648896298636766.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P11788736289176550636

`Δ[(2*n+1)*∑[C(2*n, 2)]]`
-/

namespace A213845.P11788736289176550636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213845.P11788736289176550636

namespace A213845

/-- `Δ[(2*n+1)*∑[C(2*n, 2)]]` -/
def P11788736289176550636.Spec : Prop :=
  ∀ n, P11788736289176550636.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P9835407698487455994

`Δ[(2*n+1)*∑[lcm(n, 1-2*n)]]`
-/

namespace A213845.P9835407698487455994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (2 * n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213845.P9835407698487455994

namespace A213845

/-- `Δ[(2*n+1)*∑[lcm(n, 1-2*n)]]` -/
def P9835407698487455994.Spec : Prop :=
  ∀ n, P9835407698487455994.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P18387953503599245018

`Δ[Δ[n²]*A002412(n)]`
-/

namespace A213845.P18387953503599245018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A002412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213845.P18387953503599245018

namespace A213845

/-- `Δ[Δ[n²]*A002412(n)]` -/
def P18387953503599245018.Spec : Prop :=
  ∀ n, P18387953503599245018.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P4885337186276298649

`A268684(n+1)+A139757(n)`
-/

namespace A213845.P4885337186276298649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 (n + 1) + A139757 n

end

end A213845.P4885337186276298649

namespace A213845

/-- `A268684(n+1)+A139757(n)` -/
def P4885337186276298649.Spec : Prop :=
  ∀ n, P4885337186276298649.a n = A213845 (n + 1)

end A213845

/-! ## A213845.P15299344276580723676

`A051673(n+1)+2*A050509(n)`
-/

namespace A213845.P15299344276580723676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 (n + 1) + 2 * A050509 n

end

end A213845.P15299344276580723676

namespace A213845

/-- `A051673(n+1)+2*A050509(n)` -/
def P15299344276580723676.Spec : Prop :=
  ∀ n, P15299344276580723676.a n = A213845 (n + 1)

end A213845

/-!
# A213846: Antidiagonal sums of the convolution array A213844.

The programs for A213846, the canonical program `A213846.P16757106676128437598` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213846 has offset 1).

The definition of A213846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213846.P16757106676128437598

`(n+1)*(n+2)*(4*(n+1)²+2*(n+1)+3)/6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213846

/-- `(n+1)*(n+2)*(4*(n+1)²+2*(n+1)+3)/6` -/
def P16757106676128437598.Spec : Prop :=
  ∀ n, P16757106676128437598.a n = (A213846 (n + 1) : ℚ)

end A213846

/-! ## A213846.P2303188544659123903

`∑[∑[C(4*n+2, 2)+2]]`
-/

namespace A213846.P2303188544659123903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 2) 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213846.P2303188544659123903

namespace A213846

/-- `∑[∑[C(4*n+2, 2)+2]]` -/
def P2303188544659123903.Spec : Prop :=
  ∀ n, (P2303188544659123903.a n : ℤ) = A213846 (n + 1)

end A213846

/-! ## A213846.P9041814214144909153

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=23, a(2)=90, a(3)=250, a(4)=565`
-/

namespace A213846.P9041814214144909153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 23, 90, 250, 565] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A213846.P9041814214144909153

namespace A213846

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9041814214144909153.Spec : Prop :=
  ∀ n, P9041814214144909153.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P114425317115354842

`A098077(n+1)+∑[n+1]`
-/

namespace A213846.P114425317115354842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213846.P114425317115354842

namespace A213846

/-- `A098077(n+1)+∑[n+1]` -/
def P114425317115354842.Spec : Prop :=
  ∀ n, P114425317115354842.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P628985202129095065

`(n+1)/2*A208598(n+1)`
-/

namespace A213846.P628985202129095065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A208598 (n + 1) : ℚ)

end

end A213846.P628985202129095065

namespace A213846

/-- `(n+1)/2*A208598(n+1)` -/
def P628985202129095065.Spec : Prop :=
  ∀ n, P628985202129095065.a n = (A213846 (n + 1) : ℚ)

end A213846

/-! ## A213846.P2708501152397796182

`∑[C(A016777(n)+1+n, 2)+2]+a(n-1)` with `a(0)=3`
-/

namespace A213846.P2708501152397796182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016777 n + 1 + (n : ℤ)).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A213846.P2708501152397796182

namespace A213846

/-- `∑[C(A016777(n)+1+n, 2)+2]+a(n-1)` -/
def P2708501152397796182.Spec : Prop :=
  ∀ n, (P2708501152397796182.a n : ℤ) = A213846 (n + 1)

end A213846

/-! ## A213846.P4438515282018568765

`A100431(n)-A076455(n+1)`
-/

namespace A213846.P4438515282018568765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100431 n - A076455 (n + 1)

end

end A213846.P4438515282018568765

namespace A213846

/-- `A100431(n)-A076455(n+1)` -/
def P4438515282018568765.Spec : Prop :=
  ∀ n, P4438515282018568765.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P2145488297855559582

`A081436(n)+2*A014820(n)`
-/

namespace A213846.P2145488297855559582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + 2 * A014820 n

end

end A213846.P2145488297855559582

namespace A213846

/-- `A081436(n)+2*A014820(n)` -/
def P2145488297855559582.Spec : Prop :=
  ∀ n, P2145488297855559582.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P15977700115541509140

`A108678(n)+A108678(n)+A000217(n+1)`
-/

namespace A213846.P15977700115541509140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n + (A108678 n + A000217 (n + 1))

end

end A213846.P15977700115541509140

namespace A213846

/-- `A108678(n)+A108678(n)+A000217(n+1)` -/
def P15977700115541509140.Spec : Prop :=
  ∀ n, P15977700115541509140.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P8167930948559762994

`A289643(n+1)+A289643(n)`
-/

namespace A213846.P8167930948559762994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 (n + 1) + A289643 n

end

end A213846.P8167930948559762994

namespace A213846

/-- `A289643(n+1)+A289643(n)` -/
def P8167930948559762994.Spec : Prop :=
  ∀ n, P8167930948559762994.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P1433542094869779789

`A000330(n+1)+2*A071238(n+1)`
-/

namespace A213846.P1433542094869779789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + 2 * A071238 (n + 1)

end

end A213846.P1433542094869779789

namespace A213846

/-- `A000330(n+1)+2*A071238(n+1)` -/
def P1433542094869779789.Spec : Prop :=
  ∀ n, P1433542094869779789.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P9060181661470810320

`A016061(n+1)+n*A006331(n+1)`
-/

namespace A213846.P9060181661470810320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 (n + 1) + (n : ℤ) * A006331 (n + 1)

end

end A213846.P9060181661470810320

namespace A213846

/-- `A016061(n+1)+n*A006331(n+1)` -/
def P9060181661470810320.Spec : Prop :=
  ∀ n, P9060181661470810320.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P1431752846614377172

`A000583(n+1)+A001105(n+1)-A071238(n)`
-/

namespace A213846.P1431752846614377172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + (A001105 (n + 1) - A071238 n)

end

end A213846.P1431752846614377172

namespace A213846

/-- `A000583(n+1)+A001105(n+1)-A071238(n)` -/
def P1431752846614377172.Spec : Prop :=
  ∀ n, P1431752846614377172.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P5424013128994092878

`A071239(n+1)+A071239(n+1)+A006324(n+1)`
-/

namespace A213846.P5424013128994092878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 (n + 1) + (A071239 (n + 1) + A006324 (n + 1))

end

end A213846.P5424013128994092878

namespace A213846

/-- `A071239(n+1)+A071239(n+1)+A006324(n+1)` -/
def P5424013128994092878.Spec : Prop :=
  ∀ n, P5424013128994092878.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P2814211184608878051

`A006002(n+1)+A098077(n+1)-A002411(n+1)`
-/

namespace A213846.P2814211184608878051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1) + (A098077 (n + 1) - A002411 (n + 1))

end

end A213846.P2814211184608878051

namespace A213846

/-- `A006002(n+1)+A098077(n+1)-A002411(n+1)` -/
def P2814211184608878051.Spec : Prop :=
  ∀ n, P2814211184608878051.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P16218692387813944868

`A000217(n+1)/A016813(n+1)*A085474(n+1)`
-/

namespace A213846.P16218692387813944868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A016813 (n + 1) : ℚ) * (A085474 (n + 1) : ℚ)

end

end A213846.P16218692387813944868

namespace A213846

/-- `A000217(n+1)/A016813(n+1)*A085474(n+1)` -/
def P16218692387813944868.Spec : Prop :=
  ∀ n, P16218692387813944868.a n = (A213846 (n + 1) : ℚ)

end A213846

/-! ## A213846.P12672419638312578517

`∑[∑[A033816(2*n)]]`
-/

namespace A213846.P12672419638312578517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213846.P12672419638312578517

namespace A213846

/-- `∑[∑[A033816(2*n)]]` -/
def P12672419638312578517.Spec : Prop :=
  ∀ n, P12672419638312578517.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P2580733126041043232

`∑[∑[A235088(2*n+1)]]`
-/

namespace A213846.P2580733126041043232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235088 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213846.P2580733126041043232

namespace A213846

/-- `∑[∑[A235088(2*n+1)]]` -/
def P2580733126041043232.Spec : Prop :=
  ∀ n, P2580733126041043232.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P18441855766998925065

`A002417(2*(n+1))-A076455(n+1)`
-/

namespace A213846.P18441855766998925065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (2 * (n + 1)) - A076455 (n + 1)

end

end A213846.P18441855766998925065

namespace A213846

/-- `A002417(2*(n+1))-A076455(n+1)` -/
def P18441855766998925065.Spec : Prop :=
  ∀ n, P18441855766998925065.a n = A213846 (n + 1)

end A213846

/-! ## A213846.P1852011439597725621

`A006918(2*n+1)+2*A005994(2*n)`
-/

namespace A213846.P1852011439597725621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (2 * n + 1) + 2 * A005994 (2 * n)

end

end A213846.P1852011439597725621

namespace A213846

/-- `A006918(2*n+1)+2*A005994(2*n)` -/
def P1852011439597725621.Spec : Prop :=
  ∀ n, P1852011439597725621.a n = A213846 (n + 1)

end A213846

/-!
# A213847: Rectangular array: (row n) = b**c, where b(h) = 4*h-1, c(h) = 2*n-3+2*h, n>=1, h>=1, and ** = convolution.

The programs for A213847, the canonical program `A213847.P13086117806875613018` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213847 has offset 1).

The definition of A213847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213847.P13086117806875613018

`A213752(n+1)+2*A213750(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213847

/-- `A213752(n+1)+2*A213750(n+1)` -/
def P13086117806875613018.Spec : Prop :=
  ∀ n, P13086117806875613018.a n = A213847 (n + 1)

theorem P13086117806875613018.correct : P13086117806875613018.Spec := by
  intro n
  simp only [A213847, Nat.add_sub_cancel]

end A213847

/-! ## A213847.P8125671917394522979

`A213750(n+1)+A213822(n+1)-A213821(n+1)`
-/

namespace A213847.P8125671917394522979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + (A213822 (n + 1) - A213821 (n + 1))

end

end A213847.P8125671917394522979

namespace A213847

/-- `A213750(n+1)+A213822(n+1)-A213821(n+1)` -/
def P8125671917394522979.Spec : Prop :=
  ∀ n, P8125671917394522979.a n = A213847 (n + 1)

end A213847

/-! ## A213847.P15879994549344055426

`A213841(n+1)+A213844(n+1)-A213838(n+1)`
-/

namespace A213847.P15879994549344055426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + (A213844 (n + 1) - A213838 (n + 1))

end

end A213847.P15879994549344055426

namespace A213847

/-- `A213841(n+1)+A213844(n+1)-A213838(n+1)` -/
def P15879994549344055426.Spec : Prop :=
  ∀ n, P15879994549344055426.a n = A213847 (n + 1)

end A213847

/-! ## A213847.P2010685939459035416

`A213500(A185869(n+1))-A055461(n+1)`
-/

namespace A213847.P2010685939459035416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A185869 (n + 1)).toNat - A055461 (n + 1)

end

end A213847.P2010685939459035416

namespace A213847

/-- `A213500(A185869(n+1))-A055461(n+1)` -/
def P2010685939459035416.Spec : Prop :=
  ∀ n, P2010685939459035416.a n = A213847 (n + 1)

end A213847

/-! ## A213847.P6464126715049106907

`A213500(A185869(n+1))-A004736(n+1)²`
-/

namespace A213847.P6464126715049106907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A185869 (n + 1)).toNat - A004736 (n + 1) ^ 2

end

end A213847.P6464126715049106907

namespace A213847

/-- `A213500(A185869(n+1))-A004736(n+1)²` -/
def P6464126715049106907.Spec : Prop :=
  ∀ n, P6464126715049106907.a n = A213847 (n + 1)

end A213847

/-! ## A213847.P15154756715600160836

`A213752(n+1)+A005843(A213750(n+1))`
-/

namespace A213847.P15154756715600160836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A005843 (A213750 (n + 1)).toNat

end

end A213847.P15154756715600160836

namespace A213847

/-- `A213752(n+1)+A005843(A213750(n+1))` -/
def P15154756715600160836.Spec : Prop :=
  ∀ n, P15154756715600160836.a n = A213847 (n + 1)

end A213847

/-! ## A213847.P1314882644373968882

`A008574(A213752(n+1))-A213838(n+1)`
-/

namespace A213847.P1314882644373968882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A213752 (n + 1)).toNat - A213838 (n + 1)

end

end A213847.P1314882644373968882

namespace A213847

/-- `A008574(A213752(n+1))-A213838(n+1)` -/
def P1314882644373968882.Spec : Prop :=
  ∀ n, P1314882644373968882.a n = A213847 (n + 1)

end A213847

/-!
# A213848: Principal diagonal of the convolution array A213847.

The programs for A213848, the canonical program `A213848.P16017443286761450478` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213848 has offset 1).

The definition of A213848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213848.P16017443286761450478

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=36, a(2)=131, a(3)=320`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213848

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16017443286761450478.Spec : Prop :=
  ∀ n, P16017443286761450478.a n = A213848 (n + 1)

theorem P16017443286761450478.correct : P16017443286761450478.Spec := by
  intro n
  simp only [A213848, Nat.add_sub_cancel]

end A213848

/-! ## A213848.P1740431565350654209

`∑[C(8*n+4, 2)/2]`
-/

namespace A213848.P1740431565350654209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (8 * n + 4) 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213848.P1740431565350654209

namespace A213848

/-- `∑[C(8*n+4, 2)/2]` -/
def P1740431565350654209.Spec : Prop :=
  ∀ n, P1740431565350654209.a n = (A213848 (n + 1) : ℚ)

end A213848

/-! ## A213848.P10567187258616531984

`∑[C(Δ[(2*n)²], 2)]/2`
-/

namespace A213848.P10567187258616531984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A213848.P10567187258616531984

namespace A213848

/-- `∑[C(Δ[(2*n)²], 2)]/2` -/
def P10567187258616531984.Spec : Prop :=
  ∀ n, P10567187258616531984.a n = (A213848 (n + 1) : ℚ)

end A213848

/-! ## A213848.P14247434050397754594

`∑[(8*n+3)*Δ[n²]]`
-/

namespace A213848.P14247434050397754594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 3 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213848.P14247434050397754594

namespace A213848

/-- `∑[(8*n+3)*Δ[n²]]` -/
def P14247434050397754594.Spec : Prop :=
  ∀ n, P14247434050397754594.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P6644123584639592364

`∑[lcm(2, 2*n+1)²]-(n+1)²`
-/

namespace A213848.P6644123584639592364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A213848.P6644123584639592364

namespace A213848

/-- `∑[lcm(2, 2*n+1)²]-(n+1)²` -/
def P6644123584639592364.Spec : Prop :=
  ∀ n, P6644123584639592364.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P3476207523929706733

`∑[6*n²+n]+∑[∑[a(n-1)+20]]` with `a(0)=3`
-/

namespace A213848.P3476207523929706733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2 + n

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 20

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213848.P3476207523929706733

namespace A213848

/-- `∑[6*n²+n]+∑[∑[a(n-1)+20]]` -/
def P3476207523929706733.Spec : Prop :=
  ∀ n, (P3476207523929706733.a n : ℤ) = A213848 (n + 1)

end A213848

/-! ## A213848.P13455467809924827138

`A152110(n)-(n²+1)`
-/

namespace A213848.P13455467809924827138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152110 n - (n ^ 2 + 1 : ℤ)

end

end A213848.P13455467809924827138

namespace A213848

/-- `A152110(n)-(n²+1)` -/
def P13455467809924827138.Spec : Prop :=
  ∀ n, P13455467809924827138.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P4971871395871965572

`∑[A157870(n)]+(n+1)²`
-/

namespace A213848.P4971871395871965572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A213848.P4971871395871965572

namespace A213848

/-- `∑[A157870(n)]+(n+1)²` -/
def P4971871395871965572.Spec : Prop :=
  ∀ n, P4971871395871965572.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P3970317147763271047

`∑[A016826(n)]-(n+1)²`
-/

namespace A213848.P3970317147763271047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A213848.P3970317147763271047

namespace A213848

/-- `∑[A016826(n)]-(n+1)²` -/
def P3970317147763271047.Spec : Prop :=
  ∀ n, P3970317147763271047.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P1835351798160660672

`A199833(n+1)-(n+1)²`
-/

namespace A213848.P1835351798160660672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199833 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A213848.P1835351798160660672

namespace A213848

/-- `A199833(n+1)-(n+1)²` -/
def P1835351798160660672.Spec : Prop :=
  ∀ n, P1835351798160660672.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P13074665589142437046

`A387659(n)+A137931(n)`
-/

namespace A213848.P13074665589142437046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387659 n + A137931 n

end

end A213848.P13074665589142437046

namespace A213848

/-- `A387659(n)+A137931(n)` -/
def P13074665589142437046.Spec : Prop :=
  ∀ n, P13074665589142437046.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P8087987322270298993

`A213845(n+1)+A046092(n)`
-/

namespace A213848.P8087987322270298993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213845 (n + 1) + A046092 n

end

end A213848.P8087987322270298993

namespace A213848

/-- `A213845(n+1)+A046092(n)` -/
def P8087987322270298993.Spec : Prop :=
  ∀ n, P8087987322270298993.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P1903007307290604878

`A213823(n+1)-A174723(n+1)`
-/

namespace A213848.P1903007307290604878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213823 (n + 1) - A174723 (n + 1)

end

end A213848.P1903007307290604878

namespace A213848

/-- `A213823(n+1)-A174723(n+1)` -/
def P1903007307290604878.Spec : Prop :=
  ∀ n, P1903007307290604878.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P15662332615168110371

`Δ[(2*n-1)*∑[C(2*n+1, 2)]]`
-/

namespace A213848.P15662332615168110371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213848.P15662332615168110371

namespace A213848

/-- `Δ[(2*n-1)*∑[C(2*n+1, 2)]]` -/
def P15662332615168110371.Spec : Prop :=
  ∀ n, P15662332615168110371.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P8103618456693228467

`A015237(n+1)+2*A004466(n+1)`
-/

namespace A213848.P8103618456693228467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 (n + 1) + 2 * A004466 (n + 1)

end

end A213848.P8103618456693228467

namespace A213848

/-- `A015237(n+1)+2*A004466(n+1)` -/
def P8103618456693228467.Spec : Prop :=
  ∀ n, P8103618456693228467.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P138776616675022775

`A000447(n+1)+A035328(n+1)-(n+1)²`
-/

namespace A213848.P138776616675022775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) + (A035328 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A213848.P138776616675022775

namespace A213848

/-- `A000447(n+1)+A035328(n+1)-(n+1)²` -/
def P138776616675022775.Spec : Prop :=
  ∀ n, P138776616675022775.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P1358857881296222338

`A226488(n+1)+A237617(n)+A237616(n+1)`
-/

namespace A213848.P1358857881296222338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 (n + 1) + (A237617 n + A237616 (n + 1))

end

end A213848.P1358857881296222338

namespace A213848

/-- `A226488(n+1)+A237617(n)+A237616(n+1)` -/
def P1358857881296222338.Spec : Prop :=
  ∀ n, P1358857881296222338.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P13911885282329714850

`A063522(n+1)+A116731(n+1)+A063522(n+1)`
-/

namespace A213848.P13911885282329714850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (n + 1) + (A116731 (n + 1) + A063522 (n + 1))

end

end A213848.P13911885282329714850

namespace A213848

/-- `A063522(n+1)+A116731(n+1)+A063522(n+1)` -/
def P13911885282329714850.Spec : Prop :=
  ∀ n, P13911885282329714850.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P14653164524155366334

`A063496(n+2)-A016777(n+1)*A016777(n+1)`
-/

namespace A213848.P14653164524155366334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 2) - A016777 (n + 1) * A016777 (n + 1)

end

end A213848.P14653164524155366334

namespace A213848

/-- `A063496(n+2)-A016777(n+1)*A016777(n+1)` -/
def P14653164524155366334.Spec : Prop :=
  ∀ n, P14653164524155366334.a n = A213848 (n + 1)

end A213848

/-! ## A213848.P2169391541489020921

`A143941(2*n+1)-n²`
-/

namespace A213848.P2169391541489020921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (2 * n + 1) - (n ^ 2 : ℤ)

end

end A213848.P2169391541489020921

namespace A213848

/-- `A143941(2*n+1)-n²` -/
def P2169391541489020921.Spec : Prop :=
  ∀ n, P2169391541489020921.a n = A213848 (n + 1)

end A213848

/-!
# A213850: Antidiagonal sums of the convolution array A213849.

The programs for A213850, the canonical program `A213850.P5417209032900644609` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213850 has offset 1).

The definition of A213850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213850.P5417209032900644609

`(n+2)*(n+3)*(3-3*(-1)^(n+1)+8*(n+1)+2*(n+1)²)/96`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213850

/-- `(n+2)*(n+3)*(3-3*(-1)^(n+1)+8*(n+1)+2*(n+1)²)/96` -/
def P5417209032900644609.Spec : Prop :=
  ∀ n, P5417209032900644609.a n = (A213850 (n + 1) : ℚ)

end A213850

/-! ## A213850.P6628843684967932364

`∑[a(n-2)+(n+1)*∑[(n+1)%2]]` with `a(0)=1, a(1)=2`
-/

namespace A213850.P6628843684967932364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P6628843684967932364

namespace A213850

/-- `∑[a(n-2)+(n+1)*∑[(n+1)%2]]` -/
def P6628843684967932364.Spec : Prop :=
  ∀ n, (P6628843684967932364.a n : ℤ) = A213850 (n + 1)

end A213850

/-! ## A213850.P12809877360467821344

`∑[∑[(n+1)*∑[1-a(n-1)]-a(n-1)]]` with `a(0)=1`
-/

namespace A213850.P12809877360467821344
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P12809877360467821344

namespace A213850

/-- `∑[∑[(n+1)*∑[1-a(n-1)]-a(n-1)]]` -/
def P12809877360467821344.Spec : Prop :=
  ∀ n, P12809877360467821344.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P13944586980342492126

`∑[A023855(n+1)]`
-/

namespace A213850.P13944586980342492126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P13944586980342492126

namespace A213850

/-- `∑[A023855(n+1)]` -/
def P13944586980342492126.Spec : Prop :=
  ∀ n, P13944586980342492126.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P15712064387565072319

`A206806(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A213850.P15712064387565072319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206806 (n + 2) - a (n - 1)

end

end A213850.P15712064387565072319

namespace A213850

/-- `A206806(n+2)-a(n-1)` -/
def P15712064387565072319.Spec : Prop :=
  ∀ n, P15712064387565072319.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P8229876741935165575

`∑[A049778(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A213850.P8229876741935165575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A049778 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P8229876741935165575

namespace A213850

/-- `∑[A049778(n+1)-a(n-1)]` -/
def P8229876741935165575.Spec : Prop :=
  ∀ n, P8229876741935165575.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P11163520860401641001

`A336529(n)-A038376(n)`
-/

namespace A213850.P11163520860401641001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336529 n - A038376 n

end

end A213850.P11163520860401641001

namespace A213850

/-- `A336529(n)-A038376(n)` -/
def P11163520860401641001.Spec : Prop :=
  ∀ n, P11163520860401641001.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P18137332954056697921

`∑[A006918(n)+∑[A027656(n)²]]`
-/

namespace A213850.P18137332954056697921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P18137332954056697921

namespace A213850

/-- `∑[A006918(n)+∑[A027656(n)²]]` -/
def P18137332954056697921.Spec : Prop :=
  ∀ n, P18137332954056697921.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P1735119040058743679

`∑[A093005(n+1)+∑[A245288(n)]]`
-/

namespace A213850.P1735119040058743679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P1735119040058743679

namespace A213850

/-- `∑[A093005(n+1)+∑[A245288(n)]]` -/
def P1735119040058743679.Spec : Prop :=
  ∀ n, P1735119040058743679.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P10633123895196256520

`∑[A023856(n+1)-∑[A027656(n)]]`
-/

namespace A213850.P10633123895196256520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P10633123895196256520

namespace A213850

/-- `∑[A023856(n+1)-∑[A027656(n)]]` -/
def P10633123895196256520.Spec : Prop :=
  ∀ n, P10633123895196256520.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P8133224689955146624

`∑[A023867(n+1)-A023866(n+1)]`
-/

namespace A213850.P8133224689955146624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023867 (n + 1) - A023866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P8133224689955146624

namespace A213850

/-- `∑[A023867(n+1)-A023866(n+1)]` -/
def P8133224689955146624.Spec : Prop :=
  ∀ n, P8133224689955146624.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P18149196497966900611

`∑[∑[A245288(n+2)]]`
-/

namespace A213850.P18149196497966900611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P18149196497966900611

namespace A213850

/-- `∑[∑[A245288(n+2)]]` -/
def P18149196497966900611.Spec : Prop :=
  ∀ n, P18149196497966900611.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P3931670318278897693

`A038376(n+3)+A006918(n+1)`
-/

namespace A213850.P3931670318278897693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 (n + 3) + A006918 (n + 1)

end

end A213850.P3931670318278897693

namespace A213850

/-- `A038376(n+3)+A006918(n+1)` -/
def P3931670318278897693.Spec : Prop :=
  ∀ n, P3931670318278897693.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P17213943336314794049

`∑[A144678(A042948(n))]`
-/

namespace A213850.P17213943336314794049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P17213943336314794049

namespace A213850

/-- `∑[A144678(A042948(n))]` -/
def P17213943336314794049.Spec : Prop :=
  ∀ n, P17213943336314794049.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P7232959208661403097

`∑[A133610(A092530(n+1))]`
-/

namespace A213850.P7232959208661403097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133610 (A092530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P7232959208661403097

namespace A213850

/-- `∑[A133610(A092530(n+1))]` -/
def P7232959208661403097.Spec : Prop :=
  ∀ n, P7232959208661403097.a n = A213850 (n + 1)

end A213850

/-! ## A213850.P6964503869044533075

`∑[A213500(A008619((n+1)²))]`
-/

namespace A213850.P6964503869044533075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A008619 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P6964503869044533075

namespace A213850

/-- `∑[A213500(A008619((n+1)²))]` -/
def P6964503869044533075.Spec : Prop :=
  ∀ n, P6964503869044533075.a n = A213850 (n + 1)

end A213850

/-!
# A213851: Least m such that m!*2^m >= n!

The programs for A213851, there is no canonical definition to state claims against.
-/

/-! ## A213851.P1712875127689733376

`ceil(A114571(n+1)/2)`
-/

namespace A213851.P1712875127689733376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114571 (n + 1) : ℚ) / 2⌉

end

end A213851.P1712875127689733376

/-! ## A213851.P4057012617349593634

`round(A114571(C(n+1, n))/2)`
-/

namespace A213851.P4057012617349593634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114571 (Nat.choose (n + 1) n) : ℚ) / 2)

end

end A213851.P4057012617349593634

/-! ## A213851.P295945887966456652

`round(A114571(1-char[1]+n)/2)`
-/

namespace A213851.P295945887966456652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114571 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat : ℚ) / 2)

end

end A213851.P295945887966456652

/-! ## A213851.P10978917751154689516

`A065033(A114571(n+1))`
-/

namespace A213851.P10978917751154689516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A114571 (n + 1)).toNat

end

end A213851.P10978917751154689516

/-! ## A213851.P4402857370270722838

`A123108(A114571(n+1)+1)`
-/

namespace A213851.P4402857370270722838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A114571 (n + 1) + 1).toNat

end

end A213851.P4402857370270722838

/-! ## A213851.P18308619007945835446

`A110654(A114571(1-char[1]+n))`
-/

namespace A213851.P18308619007945835446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A114571 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat

end

end A213851.P18308619007945835446

/-! ## A213851.P2981890354450748282

`round(A114571(n+1)/2)%∑[A000032(n)]`
-/

namespace A213851.P2981890354450748282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A114571 (n + 1) : ℚ) / 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213851.P2981890354450748282

/-! ## A213851.P295909934102526815

`(A000041(n)%2)!*round(A114571(n+1)/2)`
-/

namespace A213851.P295909934102526815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * SequenceMachineLib.roundAway ((A114571 (n + 1) : ℚ) / 2)

end

end A213851.P295909934102526815

/-! ## A213851.P16005598966188358481

`round(A114571(n+1)/2)^A014963(∑[n+1])`
-/

namespace A213851.P16005598966188358481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A114571 (n + 1) : ℚ) / 2) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A213851.P16005598966188358481

/-!
# A213852: Least m>0 such that n+1+m and n-m are relatively prime.

The programs for A213852, there is no canonical definition to state claims against.
-/

/-! ## A213852.P1264393432224871576

`ceil(ratio[1-A284721(n)])`
-/

namespace A213852.P1264393432224871576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A213852.P1264393432224871576

/-! ## A213852.P16108445339386745945

`floor(A284721(n+1)/2)`
-/

namespace A213852.P16108445339386745945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284721 (n + 1) : ℚ) / 2⌋

end

end A213852.P16108445339386745945

/-! ## A213852.P13316054912300437876

`A071222(A004766(n+1))/2`
-/

namespace A213852.P13316054912300437876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071222 (A004766 (n + 1)).toNat : ℚ) / 2

end

end A213852.P13316054912300437876

/-! ## A213852.P18019918226985944031

`A002265(A096014(4*n+6))`
-/

namespace A213852.P18019918226985944031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A096014 (4 * n + 6)).toNat

end

end A213852.P18019918226985944031

/-! ## A213852.P13661456318068856319

`A071222(A017101(n+1))/2`
-/

namespace A213852.P13661456318068856319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071222 (A017101 (n + 1)).toNat : ℚ) / 2

end

end A213852.P13661456318068856319

/-! ## A213852.P3551370705185414443

`A250470(p?[A329900(n+1)%A086550(n)])`
-/

namespace A213852.P3551370705185414443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329900 (n + 1)) (A086550 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A213852.P3551370705185414443

/-! ## A213852.P2828691220037632402

`A004526(A053670(∑[n+1]+1))`
-/

namespace A213852.P2828691220037632402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053670 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A213852.P2828691220037632402

/-! ## A213852.P9097587208817744513

`A006370(A053670(∑[n+1]+1)-1)`
-/

namespace A213852.P9097587208817744513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A053670 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A213852.P9097587208817744513

/-! ## A213852.P6490357176901963531

`A025480(A053670(∑[n+1]+1)-1)`
-/

namespace A213852.P6490357176901963531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053670 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A213852.P6490357176901963531

/-! ## A213852.P1491844156681724461

`A001222(2*A053670(∑[n+1]+1)²+1)`
-/

namespace A213852.P1491844156681724461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A053670 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 + 1).toNat

end

end A213852.P1491844156681724461

/-!
# A213854: Least m>0 such that m!*3^m >= n!.

The programs for A213854, there is no canonical definition to state claims against.
-/

/-! ## A213854.P12854300918590852552

`round(∑[atan(A168578(n+2))²/3])`
-/

namespace A213854.P12854300918590852552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A168578 (n + 2) : ℝ) ^ 2 / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213854.P12854300918590852552

/-! ## A213854.P15873792153429283115

`A227568(∑[A092982(A166517(n))])`
-/

namespace A213854.P15873792153429283115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213854.P15873792153429283115

/-! ## A213854.P3133136675181434025

`A000267(∑[A002264(A160755(n+1))])`
-/

namespace A213854.P3133136675181434025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A160755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213854.P3133136675181434025

/-! ## A213854.P17006257512789254197

`A227568(A133144(2*n+1)+A077169(n))`
-/

namespace A213854.P17006257512789254197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A133144 (2 * n + 1) + A077169 n).toNat

end

end A213854.P17006257512789254197

/-! ## A213854.P8702914346525058877

`A048766(∑[A342524(n+1)²])`
-/

namespace A213854.P8702914346525058877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213854.P8702914346525058877

/-!
# A213855: Least m > 0 such that m! * 4^m >= n!.

The programs for A213855, there is no canonical definition to state claims against.
-/

/-! ## A213855.P8909746895834056436

`A065033(A248559(n+1))%A080200(n+4)`
-/

namespace A213855.P8909746895834056436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A248559 (n + 1)).toNat) (A080200 (n + 4))

end

end A213855.P8909746895834056436

/-! ## A213855.P5786400016621863551

`A110654(A248559(n+1))%A165158(n+4)`
-/

namespace A213855.P5786400016621863551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A248559 (n + 1)).toNat) (A165158 (n + 4))

end

end A213855.P5786400016621863551

/-! ## A213855.P16219255380483326939

`A065033(A248559(n+1))%A080188(A000124(n))`
-/

namespace A213855.P16219255380483326939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A248559 (n + 1)).toNat) (A080188 (A000124 n).toNat)

end

end A213855.P16219255380483326939

/-! ## A213855.P14083374284643555356

`A065033(A248559(n+1))+A000007(A000124(3*n+1))`
-/

namespace A213855.P14083374284643555356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A248559 (n + 1)).toNat + A000007 (A000124 (3 * n + 1)).toNat

end

end A213855.P14083374284643555356

/-! ## A213855.P7395368003420273560

`n+1-A135663(A340856(2*n+3))`
-/

namespace A213855.P7395368003420273560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A135663 (A340856 (2 * n + 3)).toNat

end

end A213855.P7395368003420273560

/-!
# A213856: Least m such that m!*5^m >= n!.

The programs for A213856, there is no canonical definition to state claims against.
-/

/-! ## A213856.P2859831566117355757

`floor(log2(A250253(n+1)+1))`
-/

namespace A213856.P2859831566117355757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A250253 (n + 1) + 1).toNat

end

end A213856.P2859831566117355757

/-! ## A213856.P10070072153318058706

`A226764(A189833(n)-A070101(n+1))`
-/

namespace A213856.P10070072153318058706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A189833 n - A070101 (n + 1)).toNat

end

end A213856.P10070072153318058706

/-! ## A213856.P17799426914474040326

`A048766(∑[∑[A127312(n+1)]])`
-/

namespace A213856.P17799426914474040326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213856.P17799426914474040326

/-! ## A213856.P15269071419163712711

`A048766(∑[∑[A331088(n+1)]])`
-/

namespace A213856.P15269071419163712711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331088 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213856.P15269071419163712711

/-! ## A213856.P5009885665502966385

`A048766(∑[∑[A350190(n+1)]])`
-/

namespace A213856.P5009885665502966385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350190 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213856.P5009885665502966385

/-!
# A213857: Least m such that n! <= 3^m.

The programs for A213857, the canonical program `A213857.P4230550549322947092` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213857 has offset 1).

The definition of A213857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213857.P4230550549322947092

`floor(∑[log(n+1)/log(3)])+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213857

/-- `floor(∑[log(n+1)/log(3)])+1` -/
def P4230550549322947092.Spec : Prop :=
  ∀ n, P4230550549322947092.a n = A213857 (n + 1)

theorem P4230550549322947092.correct : P4230550549322947092.Spec := by
  intro n
  simp only [A213857, Nat.add_sub_cancel]

end A213857

/-! ## A213857.P14804772128905001356

`or(A010052(A007331(n)), A047894(n+1))`
-/

namespace A213857.P14804772128905001356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A007331 n).toNat) (A047894 (n + 1))

end

end A213857.P14804772128905001356

namespace A213857

/-- `or(A010052(A007331(n)), A047894(n+1))` -/
def P14804772128905001356.Spec : Prop :=
  ∀ n, P14804772128905001356.a n = A213857 (n + 1)

end A213857

/-! ## A213857.P17697509195690009268

`or(A047894(n+1), A253903(A075169(n)))`
-/

namespace A213857.P17697509195690009268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047894 (n + 1)) (A253903 (A075169 n).toNat)

end

end A213857.P17697509195690009268

namespace A213857

/-- `or(A047894(n+1), A253903(A075169(n)))` -/
def P17697509195690009268.Spec : Prop :=
  ∀ n, P17697509195690009268.a n = A213857 (n + 1)

end A213857

/-! ## A213857.P8345454904107362913

`xor(A047894(n+1), A051731(A125618(2*(n+4))))`
-/

namespace A213857.P8345454904107362913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047894 (n + 1)) (A051731 (A125618 (2 * (n + 4))).toNat)

end

end A213857.P8345454904107362913

namespace A213857

/-- `xor(A047894(n+1), A051731(A125618(2*(n+4))))` -/
def P8345454904107362913.Spec : Prop :=
  ∀ n, P8345454904107362913.a n = A213857 (n + 1)

end A213857

/-! ## A213857.P9981855514451356323

`A373811(A267682(n))`
-/

namespace A213857.P9981855514451356323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A267682 n).toNat

end

end A213857.P9981855514451356323

namespace A213857

/-- `A373811(A267682(n))` -/
def P9981855514451356323.Spec : Prop :=
  ∀ n, P9981855514451356323.a n = A213857 (n + 1)

end A213857

/-!
# A213858: Least m such that n! <= 4^m.

The programs for A213858, the canonical program `A213858.P16633964101751836744` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213858 has offset 1).

The definition of A213858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213858.P16633964101751836744

`ceil(∑[log2(sqrt(n+1))])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213858

/-- `ceil(∑[log2(sqrt(n+1))])` -/
def P16633964101751836744.Spec : Prop :=
  ∀ n, P16633964101751836744.a n = A213858 (n + 1)

theorem P16633964101751836744.correct : P16633964101751836744.Spec := by
  intro n
  simp only [A213858, Nat.add_sub_cancel]

end A213858

/-! ## A213858.P2543347078881943295

`A110654(A003070(n+1))`
-/

namespace A213858.P2543347078881943295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003070 (n + 1)).toNat

end

end A213858.P2543347078881943295

namespace A213858

/-- `A110654(A003070(n+1))` -/
def P2543347078881943295.Spec : Prop :=
  ∀ n, P2543347078881943295.a n = A213858 (n + 1)

end A213858

/-! ## A213858.P11808861410425107147

`floor(floor(A005843(A003070(n+1)+1)/2)/2)`
-/

namespace A213858.P11808861410425107147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A005843 (A003070 (n + 1) + 1).toNat : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A213858.P11808861410425107147

namespace A213858

/-- `floor(floor(A005843(A003070(n+1)+1)/2)/2)` -/
def P11808861410425107147.Spec : Prop :=
  ∀ n, P11808861410425107147.a n = A213858 (n + 1)

end A213858

/-! ## A213858.P1754582770479475487

`A123108(A067850(n+1)+A036453(n+1))`
-/

namespace A213858.P1754582770479475487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A067850 (n + 1) + A036453 (n + 1)).toNat

end

end A213858.P1754582770479475487

namespace A213858

/-- `A123108(A067850(n+1)+A036453(n+1))` -/
def P1754582770479475487.Spec : Prop :=
  ∀ n, P1754582770479475487.a n = A213858 (n + 1)

end A213858

/-! ## A213858.P7952343260782109327

`floor(log2(A078160(n+1)))`
-/

namespace A213858.P7952343260782109327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A078160 (n + 1)).toNat

end

end A213858.P7952343260782109327

namespace A213858

/-- `floor(log2(A078160(n+1)))` -/
def P7952343260782109327.Spec : Prop :=
  ∀ n, (P7952343260782109327.a n : ℤ) = A213858 (n + 1)

end A213858

/-! ## A213858.P10626771462192048196

`round(log2(A129960(n+1)))`
-/

namespace A213858.P10626771462192048196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A129960 (n + 1) : ℝ))

end

end A213858.P10626771462192048196

namespace A213858

/-- `round(log2(A129960(n+1)))` -/
def P10626771462192048196.Spec : Prop :=
  ∀ n, P10626771462192048196.a n = A213858 (n + 1)

end A213858

/-!
# A213859: a(n) = 2^n mod (n+2).

The programs for A213859, the canonical program `A213859.P10868150667943549730` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213859 has offset 0).

The definition of A213859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%(n+2)` (program `A213859.P10868150667943549730`, by `A213859.P10868150667943549730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213859.P10868150667943549730

`(2^n)%(n+2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213859

/-- `(2^n)%(n+2)` -/
def P10868150667943549730.Spec : Prop :=
  ∀ n, (P10868150667943549730.a n : ℤ) = A213859 n

theorem P10868150667943549730.correct : P10868150667943549730.Spec := by
  intro n
  simp only [A213859]

end A213859

/-! ## A213859.P7364148607905178705

`abs(A122803(n)%(n+2))`
-/

namespace A213859.P7364148607905178705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 n) (n + 2 : ℤ)|

end

end A213859.P7364148607905178705

namespace A213859

/-- `abs(A122803(n)%(n+2))` -/
def P7364148607905178705.Spec : Prop :=
  ∀ n, P7364148607905178705.a n = A213859 n

end A213859

/-! ## A213859.P10855446292218493057

`abs(A000079(n)%-(n+2))`
-/

namespace A213859.P10855446292218493057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000079 n) (-(n + 2 : ℤ))|

end

end A213859.P10855446292218493057

namespace A213859

/-- `abs(A000079(n)%-(n+2))` -/
def P10855446292218493057.Spec : Prop :=
  ∀ n, P10855446292218493057.a n = A213859 n

end A213859

/-! ## A213859.P17107644410272506545

`abs(A157823(n+1)%(n+2))`
-/

namespace A213859.P17107644410272506545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A157823 (n + 1)) (n + 2 : ℤ)|

end

end A213859.P17107644410272506545

namespace A213859

/-- `abs(A157823(n+1)%(n+2))` -/
def P17107644410272506545.Spec : Prop :=
  ∀ n, P17107644410272506545.a n = A213859 n

end A213859

/-! ## A213859.P4163100985386259139

`abs((1-A000051(n))%(n+2))`
-/

namespace A213859.P4163100985386259139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - A000051 n) (n + 2 : ℤ)|

end

end A213859.P4163100985386259139

namespace A213859

/-- `abs((1-A000051(n))%(n+2))` -/
def P4163100985386259139.Spec : Prop :=
  ∀ n, P4163100985386259139.a n = A213859 n

end A213859

/-! ## A213859.P6513730697517398386

`abs((A000918(n)+2)%(n+2))`
-/

namespace A213859.P6513730697517398386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000918 n + 2) (n + 2 : ℤ)|

end

end A213859.P6513730697517398386

namespace A213859

/-- `abs((A000918(n)+2)%(n+2))` -/
def P6513730697517398386.Spec : Prop :=
  ∀ n, P6513730697517398386.a n = A213859 n

end A213859

/-! ## A213859.P5848056095103738663

`Δ[A131577(n)%(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A213859.P5848056095103738663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A213859.P5848056095103738663

namespace A213859

/-- `Δ[A131577(n)%(n+1)]+a(n-1)` -/
def P5848056095103738663.Spec : Prop :=
  ∀ n, P5848056095103738663.a n = A213859 n

end A213859

/-! ## A213859.P4776340862929014762

`abs(Δ[A000051(n)]%(n+2))`
-/

namespace A213859.P4776340862929014762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)|

end

end A213859.P4776340862929014762

namespace A213859

/-- `abs(Δ[A000051(n)]%(n+2))` -/
def P4776340862929014762.Spec : Prop :=
  ∀ n, P4776340862929014762.a n = A213859 n

end A213859

/-! ## A213859.P2332488539215282521

`abs(Δ[A000225(n)]%(n+2))`
-/

namespace A213859.P2332488539215282521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)|

end

end A213859.P2332488539215282521

namespace A213859

/-- `abs(Δ[A000225(n)]%(n+2))` -/
def P2332488539215282521.Spec : Prop :=
  ∀ n, P2332488539215282521.a n = A213859 n

end A213859

/-! ## A213859.P2387567422506313350

`abs(Δ[A000918(n)]%(n+2))`
-/

namespace A213859.P2387567422506313350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)|

end

end A213859.P2387567422506313350

namespace A213859

/-- `abs(Δ[A000918(n)]%(n+2))` -/
def P2387567422506313350.Spec : Prop :=
  ∀ n, P2387567422506313350.a n = A213859 n

end A213859

/-! ## A213859.P6182020687638055030

`abs(Δ[A185346(n)]%(n+2))`
-/

namespace A213859.P6182020687638055030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)|

end

end A213859.P6182020687638055030

namespace A213859

/-- `abs(Δ[A185346(n)]%(n+2))` -/
def P6182020687638055030.Spec : Prop :=
  ∀ n, P6182020687638055030.a n = A213859 n

end A213859

/-! ## A213859.P3252470702244892828

`A064680(A000079(n+1)%(2*(n+2)))`
-/

namespace A213859.P3252470702244892828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Int.tmod (A000079 (n + 1)) (2 * (n + 2) : ℤ)).toNat

end

end A213859.P3252470702244892828

namespace A213859

/-- `A064680(A000079(n+1)%(2*(n+2)))` -/
def P3252470702244892828.Spec : Prop :=
  ∀ n, P3252470702244892828.a n = A213859 n

end A213859

/-! ## A213859.P1636884309212060301

`-((A000225(n)-A000225(n+1))%(n+2))`
-/

namespace A213859.P1636884309212060301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A000225 n - A000225 (n + 1)) (n + 2 : ℤ)

end

end A213859.P1636884309212060301

namespace A213859

/-- `-((A000225(n)-A000225(n+1))%(n+2))` -/
def P1636884309212060301.Spec : Prop :=
  ∀ n, P1636884309212060301.a n = A213859 n

end A213859

/-! ## A213859.P7439224795460968700

`A177207(∑[n+1]+2)`
-/

namespace A213859.P7439224795460968700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177207 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213859.P7439224795460968700

namespace A213859

/-- `A177207(∑[n+1]+2)` -/
def P7439224795460968700.Spec : Prop :=
  ∀ n, P7439224795460968700.a n = A213859 n

end A213859

/-!
# A213860: Number of free poly-IH22-tiles (holes allowed) with n cells.

The programs for A213860, there is no canonical definition to state claims against.
-/

/-! ## A213860.P7269920728666771868

`A004001(A130321(n)+A077828(n))`
-/

namespace A213860.P7269920728666771868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A130321 n + A077828 n).toNat

end

end A213860.P7269920728666771868

/-! ## A213860.P14534642479715184151

`A028242(A197158(n+1)+A132731(2*(n+1)))`
-/

namespace A213860.P14534642479715184151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A197158 (n + 1) + A132731 (2 * (n + 1))).toNat

end

end A213860.P14534642479715184151

/-!
# A213861: First occurrence of n in A213859.

The programs for A213861, there is no canonical definition to state claims against.
-/

/-! ## A213861.P6362534301628822616

`A291796((a(n-1)+a(n-3)-a(n-4))²)` with `a(0)=2, a(1)=0, a(2)=1, a(3)=3, a(4)=4`
-/

namespace A213861.P6362534301628822616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, 3, 4] fun n a =>
  A291796 ((a (n - 1) + a (n - 3) - a (n - 4)) ^ 2).toNat

end

end A213861.P6362534301628822616

/-!
# A213862: Number of words w where each letter of the n-ary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213862, there is no canonical definition to state claims against.
-/

/-! ## A213862.P9114036348334038902

`A213275(∑[4*n])`
-/

namespace A213862.P9114036348334038902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213862.P9114036348334038902

/-!
# A213863: Number of words w where each letter of the n-ary alphabet occurs 3 times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213863, there is no canonical definition to state claims against.
-/

/-! ## A213863.P9644659171959615445

`A213275(A167614(n+2))`
-/

namespace A213863.P9644659171959615445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A167614 (n + 2)).toNat

end

end A213863.P9644659171959615445

/-! ## A213863.P7903382097738845478

`A213275(A141214(n)+6)`
-/

namespace A213863.P7903382097738845478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A141214 n + 6).toNat

end

end A213863.P7903382097738845478

/-! ## A213863.P7590950772366625094

`A213275(A052905(n)+8)`
-/

namespace A213863.P7590950772366625094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A052905 n + 8).toNat

end

end A213863.P7590950772366625094

/-! ## A213863.P7431841271438674211

`A213275(A055999(n)+9)`
-/

namespace A213863.P7431841271438674211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A055999 n + 9).toNat

end

end A213863.P7431841271438674211

/-! ## A213863.P17450678190339852216

`A213275(eq[3, A002262(n)])`
-/

namespace A213863.P17450678190339852216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213863.P17450678190339852216

/-!
# A213864: Number of words w where each letter of the n-ary alphabet occurs 4 times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213864, there is no canonical definition to state claims against.
-/

/-! ## A213864.P1420490708215873435

`A213275(∑[n+4]+10)`
-/

namespace A213864.P1420490708215873435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A213864.P1420490708215873435

/-! ## A213864.P1749965717910605386

`A213275(eq[4, A002262(n)])+A105523(2*(n+1))`
-/

namespace A213864.P1749965717910605386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A105523 (2 * (n + 1))

end

end A213864.P1749965717910605386

/-!
# A213865: Number of words w where each letter of the n-ary alphabet occurs 5 times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213865, there is no canonical definition to state claims against.
-/

/-! ## A213865.P14631673576633065891

`A213275(A167499(n+4))`
-/

namespace A213865.P14631673576633065891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A167499 (n + 4)).toNat

end

end A213865.P14631673576633065891

/-! ## A213865.P5406716602489726703

`A213275(eq[5, A002262(n)])`
-/

namespace A213865.P5406716602489726703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213865.P5406716602489726703

/-! ## A213865.P4481872156625939566

`A213275(eq[5, A144328(n+1)])`
-/

namespace A213865.P4481872156625939566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213865.P4481872156625939566

/-! ## A213865.P10559013912269365397

`A213275(eq[6, A002260(n+1)])`
-/

namespace A213865.P10559013912269365397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213865.P10559013912269365397

/-! ## A213865.P13102443667100001233

`A213275(eq[8, A104763(n+1)])`
-/

namespace A213865.P13102443667100001233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213865.P13102443667100001233

/-!
# A213866: Number of words w where each letter of the n-ary alphabet occurs 6 times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213866, there is no canonical definition to state claims against.
-/

/-! ## A213866.P16848075196801400417

`A213275(eq[6, A002262(n)])`
-/

namespace A213866.P16848075196801400417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213866.P16848075196801400417

/-! ## A213866.P7435474622390852246

`A213275(A134869(n+6)+5)`
-/

namespace A213866.P7435474622390852246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A134869 (n + 6) + 5).toNat

end

end A213866.P7435474622390852246

/-! ## A213866.P4212181870880285749

`A213275(eq[6, A144328(n+1)])`
-/

namespace A213866.P4212181870880285749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213866.P4212181870880285749

/-! ## A213866.P13950393947332605752

`A213275(eq[7, A002260(n+1)])`
-/

namespace A213866.P13950393947332605752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213866.P13950393947332605752

/-!
# A213867: Number of words w where each letter of the n-ary alphabet occurs 7 times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213867, there is no canonical definition to state claims against.
-/

/-! ## A213867.P14105019747377222525

`A213275(A167487(n+6))`
-/

namespace A213867.P14105019747377222525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A167487 (n + 6)).toNat

end

end A213867.P14105019747377222525

/-! ## A213867.P4603601138499170700

`A213275(eq[7, A002262(n)])`
-/

namespace A213867.P4603601138499170700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213867.P4603601138499170700

/-! ## A213867.P6561688965369235579

`A213275(eq[7, A144328(n+1)])`
-/

namespace A213867.P6561688965369235579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213867.P6561688965369235579

/-!
# A213869: Number of words w where each letter of the n-ary alphabet occurs 9 times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213869, there is no canonical definition to state claims against.
-/

/-! ## A213869.P5397579500837263545

`A213275(eq[9, A002262(n)])`
-/

namespace A213869.P5397579500837263545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213869.P5397579500837263545

/-!
# A213870: 

The programs for A213870, there is no canonical definition to state claims against.
-/

/-! ## A213870.P16452717185910058872

`A213275(eq[10, A002262(n)])`
-/

namespace A213870.P16452717185910058872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213870.P16452717185910058872

/-! ## A213870.P6282406785462863176

`A213275(A000124(n+10)+9)`
-/

namespace A213870.P6282406785462863176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A000124 (n + 10) + 9).toNat

end

end A213870.P6282406785462863176

/-!
# A213871: 

The programs for A213871, there is no canonical definition to state claims against.
-/

/-! ## A213871.P4338520376686509985

`A213275(A052905(n+7)-5)`
-/

namespace A213871.P4338520376686509985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A052905 (n + 7) - 5).toNat

end

end A213871.P4338520376686509985

/-! ## A213871.P63917667436582031

`A213275(A034856(n+9)-8)`
-/

namespace A213871.P63917667436582031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A034856 (n + 9) - 8).toNat

end

end A213871.P63917667436582031

/-!
# A213872: 

The programs for A213872, there is no canonical definition to state claims against.
-/

/-! ## A213872.P10326361873034247385

`A213275(eq[10, A025581(n)])`
-/

namespace A213872.P10326361873034247385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213872.P10326361873034247385

/-! ## A213872.P11603582885801933156

`A213275(A000124(n+10)+n-1)`
-/

namespace A213872.P11603582885801933156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A213872.P11603582885801933156

/-!
# A213873: Number of words w where each letter of the ternary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213873, there is no canonical definition to state claims against.
-/

/-! ## A213873.P6520918921430881574

`A213275(∑[n+4]+2)`
-/

namespace A213873.P6520918921430881574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213873.P6520918921430881574

/-! ## A213873.P9668181705974900080

`record[gcd(A182172(n+3), A213275(n))]`
-/

namespace A213873.P9668181705974900080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182172 (n + 3)) (A213275 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213873.P9668181705974900080

/-! ## A213873.P10078601534541563142

`record[gcd(A213275(n+1), A213276(n+4))]`
-/

namespace A213873.P10078601534541563142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213275 (n + 1)) (A213276 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213873.P10078601534541563142

/-! ## A213873.P14397667319605528494

`A213275(A046691(n+2))+A185284(n)`
-/

namespace A213873.P14397667319605528494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A046691 (n + 2)).toNat + A185284 n

end

end A213873.P14397667319605528494

/-! ## A213873.P15001481923185433263

`A213275(A046691(n+2))+A016389(A125781(n))`
-/

namespace A213873.P15001481923185433263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A046691 (n + 2)).toNat + A016389 (A125781 n).toNat

end

end A213873.P15001481923185433263

/-!
# A213874: Number of words w where each letter of the 4-ary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213874, there is no canonical definition to state claims against.
-/

/-! ## A213874.P8579204623293711040

`A213275(A052905(n+2))`
-/

namespace A213874.P8579204623293711040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A052905 (n + 2)).toNat

end

end A213874.P8579204623293711040

/-! ## A213874.P3312951915045285437

`A213275(eq[4, A025581(n)])`
-/

namespace A213874.P3312951915045285437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213874.P3312951915045285437

/-! ## A213874.P11881987956423098074

`A213275(eq[9, A099375(n)])`
-/

namespace A213874.P11881987956423098074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213874.P11881987956423098074

/-! ## A213874.P18089400775255347207

`A213275(eq[5, A004736(n+1)])`
-/

namespace A213874.P18089400775255347207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213874.P18089400775255347207

/-! ## A213874.P4062424011693302765

`A213275(Δ[Δ[A022815(n+1)]])`
-/

namespace A213874.P4062424011693302765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (f1 (n + 1) - f1 n).toNat

end

end A213874.P4062424011693302765

/-!
# A213875: Number of words w where each letter of the 5-ary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213875, there is no canonical definition to state claims against.
-/

/-! ## A213875.P17556524560923971691

`A213275(A055999(n+3))`
-/

namespace A213875.P17556524560923971691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A055999 (n + 3)).toNat

end

end A213875.P17556524560923971691

/-! ## A213875.P17495315231950166806

`A213275(eq[5, A025581(n)])`
-/

namespace A213875.P17495315231950166806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213875.P17495315231950166806

/-! ## A213875.P17410532433489991255

`A213275(eq[6, A193739(n)])`
-/

namespace A213875.P17410532433489991255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213875.P17410532433489991255

/-! ## A213875.P16364319094099399897

`A213275(eq[11, A099375(n)])`
-/

namespace A213875.P16364319094099399897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213875.P16364319094099399897

/-! ## A213875.P9715776730804117844

`A213275(Δ[A023551(n+1)])`
-/

namespace A213875.P9715776730804117844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (f1 (n + 1) - f1 n).toNat

end

end A213875.P9715776730804117844

/-!
# A213876: Number of words w where each letter of the 6-ary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213876, there is no canonical definition to state claims against.
-/

/-! ## A213876.P13996246697704226343

`A213275(eq[13, A099375(n)])`
-/

namespace A213876.P13996246697704226343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213876.P13996246697704226343

/-! ## A213876.P4567848240588240676

`A213275(eq[7, A004736(n+1)])`
-/

namespace A213876.P4567848240588240676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213876.P4567848240588240676

/-! ## A213876.P5483142631780076192

`A213275(A000217(n+6)+n)`
-/

namespace A213876.P5483142631780076192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (A000217 (n + 6) + (n : ℤ)).toNat

end

end A213876.P5483142631780076192

/-! ## A213876.P3897991803860539393

`A213275(Δ[A023551(n+2)]-1)`
-/

namespace A213876.P3897991803860539393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (f1 (n + 1) - f1 n - 1).toNat

end

end A213876.P3897991803860539393

/-!
# A213877: Number of words w where each letter of the 7-ary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213877, there is no canonical definition to state claims against.
-/

/-! ## A213877.P11113503706897391607

`A213275(eq[7, A025581(n)])`
-/

namespace A213877.P11113503706897391607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213877.P11113503706897391607

/-! ## A213877.P8434563930796621621

`A213275(eq[8, A004736(n+1)])`
-/

namespace A213877.P8434563930796621621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213877.P8434563930796621621

/-!
# A213878: Number of words w where each letter of the 8-ary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213878, there is no canonical definition to state claims against.
-/

/-! ## A213878.P5547114331322006452

`A213275(eq[9, A004736(n+1)])`
-/

namespace A213878.P5547114331322006452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213878.P5547114331322006452

/-!
# A213879: Positive palindromes that are not the sum of two positive palindromes.

The programs for A213879, there is no canonical definition to state claims against.
-/

/-! ## A213879.P7460383186509871846

`∩[A029950(n+1), A319477(n+1)]`
-/

namespace A213879.P7460383186509871846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213879.P7460383186509871846

/-! ## A213879.P4593966257808504297

`∩[A043036(n+1), A319477(n+1)]`
-/

namespace A213879.P4593966257808504297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213879.P4593966257808504297

/-! ## A213879.P17922570924807341678

`∩[A098897(n+1), A319477(n+1)]`
-/

namespace A213879.P17922570924807341678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213879.P17922570924807341678

/-! ## A213879.P6677275205435088069

`∩[A092361(n+1), A319477(n+1)]`
-/

namespace A213879.P6677275205435088069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213879.P6677275205435088069

/-! ## A213879.P15186451135410646688

`∩[A110751(n+1), A319477(n+1)]`
-/

namespace A213879.P15186451135410646688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213879.P15186451135410646688

/-!
# A213880: a(n) = sum of n-digit numbers with distinct nonzero digits.

The programs for A213880, there is no canonical definition to state claims against.
-/

/-! ## A213880.P10253191739118992254

`A002279(n+1)*A319892(n+1)`
-/

namespace A213880.P10253191739118992254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) * A319892 (n + 1)

end

end A213880.P10253191739118992254

/-! ## A213880.P5063087839968211639

`A002279(A291766(n))*A319873(n+1)`
-/

namespace A213880.P5063087839968211639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (A291766 n).toNat * A319873 (n + 1)

end

end A213880.P5063087839968211639

/-!
# A213884: For the smallest k >= 1, the smallest single-digit j such that (10^k-j)*10^n-1 is prime.

The programs for A213884, there is no canonical definition to state claims against.
-/

/-! ## A213884.P747146635436389235

`gcd(A287220(n)+4, A307180(n))`
-/

namespace A213884.P747146635436389235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287220 n + 4) (A307180 n)

end

end A213884.P747146635436389235

/-! ## A213884.P17376631825629731992

`gcd(A057087(n), A194162(A239727(n+1)))`
-/

namespace A213884.P17376631825629731992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057087 n) (A194162 (A239727 (n + 1)).toNat)

end

end A213884.P17376631825629731992

/-! ## A213884.P16098443379082509206

`A073802(A032007(n+2)+A001567(n+1))`
-/

namespace A213884.P16098443379082509206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (A032007 (n + 2) + A001567 (n + 1)).toNat

end

end A213884.P16098443379082509206

/-! ## A213884.P617072169191288055

`A339256(A339295(n+1)+A338015(3*n+1))`
-/

namespace A213884.P617072169191288055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A339295 (n + 1) + A338015 (3 * n + 1)).toNat

end

end A213884.P617072169191288055

/-! ## A213884.P18117701932034952673

`A001511(A223083(2*(n+2))*A323410(3*(n+1)))`
-/

namespace A213884.P18117701932034952673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A223083 (2 * (n + 2)) * A323410 (3 * (n + 1))).toNat

end

end A213884.P18117701932034952673

/-!
# A213887: Triangle of coefficients of representations of columns of A213743 in binomial basis.

The programs for A213887, there is no canonical definition to state claims against.
-/

/-! ## A213887.P6275143401264491114

`A283431(A116089(n))`
-/

namespace A213887.P6275143401264491114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A116089 n).toNat

end

end A213887.P6275143401264491114

/-! ## A213887.P4932353077395446175

`and(A097805(n), A369692(A026670(n)))`
-/

namespace A213887.P4932353077395446175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097805 n) (A369692 (A026670 n).toNat)

end

end A213887.P4932353077395446175

/-! ## A213887.P8130141443146293478

`and(A097805(n), A299288(A157208(n)))`
-/

namespace A213887.P8130141443146293478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097805 n) (A299288 (A157208 n).toNat)

end

end A213887.P8130141443146293478

/-! ## A213887.P16075528216746219288

`lcm(A051168(A096577(n+1)), A097805(n))`
-/

namespace A213887.P16075528216746219288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051168 (A096577 (n + 1)).toNat) (A097805 n)

end

end A213887.P16075528216746219288

/-!
# A213888: Triangle of coefficients of representations of columns of A213744 in binomial basis.

The programs for A213888, there is no canonical definition to state claims against.
-/

/-! ## A213888.P12711979865009982867

`floor(A097805(n)/A304118(3*n+4))`
-/

namespace A213888.P12711979865009982867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097805 n : ℚ) / (A304118 (3 * n + 4) : ℚ)⌋

end

end A213888.P12711979865009982867

/-! ## A213888.P5953090964193217318

`A049240(A164869(n+3))*A097805(n)`
-/

namespace A213888.P5953090964193217318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A164869 (n + 3)).toNat * A097805 n

end

end A213888.P5953090964193217318

/-! ## A213888.P16404885469954611450

`A097805(n)-A010052(A390745(2*(n+1)))`
-/

namespace A213888.P16404885469954611450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - A010052 (A390745 (2 * (n + 1))).toNat

end

end A213888.P16404885469954611450

/-! ## A213888.P11504882783292274874

`A097805(n)*A359832(A142458(n+1))`
-/

namespace A213888.P11504882783292274874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A359832 (A142458 (n + 1)).toNat

end

end A213888.P11504882783292274874

/-! ## A213888.P12612692280529265647

`A097805(n%A137755(2*n+1))`
-/

namespace A213888.P12612692280529265647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Int.tmod (n : ℤ) (A137755 (2 * n + 1))).toNat

end

end A213888.P12612692280529265647

/-!
# A213889: Triangle of coefficients of representations of columns of A213745 in binomial basis.

The programs for A213889, there is no canonical definition to state claims against.
-/

/-! ## A213889.P260008604894717201

`C(A097805(n), A008835(A256268(n)))`
-/

namespace A213889.P260008604894717201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097805 n).toNat (A008835 (A256268 n).toNat).toNat

end

end A213889.P260008604894717201

/-! ## A213889.P328669946434751950

`C(A097805(n), A063435(A007318(n+11)))`
-/

namespace A213889.P328669946434751950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097805 n).toNat (A063435 (A007318 (n + 11)).toNat).toNat

end

end A213889.P328669946434751950

/-! ## A213889.P5219959173152292640

`A097805(n-A025469(A153058(n)))`
-/

namespace A213889.P5219959173152292640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 ((n : ℤ) - A025469 (A153058 n).toNat).toNat

end

end A213889.P5219959173152292640

/-! ## A213889.P8634092749321937810

`C(A097805(n), A354741(A244657(n+3)))`
-/

namespace A213889.P8634092749321937810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097805 n).toNat (A354741 (A244657 (n + 3)).toNat).toNat

end

end A213889.P8634092749321937810

/-! ## A213889.P11680061641492995962

`A123110(n)*A177767(n)*A242718(A239830(n+1))`
-/

namespace A213889.P11680061641492995962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A177767 n * A242718 (A239830 (n + 1)).toNat

end

end A213889.P11680061641492995962

/-!
# A213890: For any n >= 0, write all permutations of {0,1,...,n} in reverse lexicographic order. The last elements of the permutations will be the initial terms of this sequence.

The programs for A213890, there is no canonical definition to state claims against.
-/

/-! ## A213890.P13824533571839576055

`A215940(n+1)%10`
-/

namespace A213890.P13824533571839576055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215940 (n + 1)) 10

end

end A213890.P13824533571839576055

/-! ## A213890.P10214938840670261507

`8-dr(A049360(n+1))`
-/

namespace A213890.P10214938840670261507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (SequenceMachineLib.digitalRoot (A049360 (n + 1)) : ℤ)

end

end A213890.P10214938840670261507

/-! ## A213890.P14995708678998651262

`(A191819(n+1)+6)%10`
-/

namespace A213890.P14995708678998651262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191819 (n + 1) + 6) 10

end

end A213890.P14995708678998651262

/-! ## A213890.P16709958327906904787

`9-A050278(n+1)%10`
-/

namespace A213890.P16709958327906904787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.tmod (A050278 (n + 1)) 10

end

end A213890.P16709958327906904787

/-! ## A213890.P5456078367266285249

`(A050289(n+1)/9-1)%10`
-/

namespace A213890.P5456078367266285249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A050289 (n + 1) : ℚ) / 9 - 1)) 10

end

end A213890.P5456078367266285249

/-! ## A213890.P362033262314268010

`A084558(n)+1-A217626(A231720(n))`
-/

namespace A213890.P362033262314268010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (1 - A217626 (A231720 n).toNat)

end

end A213890.P362033262314268010

/-! ## A213890.P17507644510339334012

`A055089(A220657(n))-1`
-/

namespace A213890.P17507644510339334012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A220657 n).toNat - 1

end

end A213890.P17507644510339334012

/-! ## A213890.P11127091525038367345

`A084558(A231720(n))-A217626(A231720(n))`
-/

namespace A213890.P11127091525038367345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A231720 n).toNat - A217626 (A231720 n).toNat

end

end A213890.P11127091525038367345

/-! ## A213890.P3979863728358840312

`A033569(A023744(n+1))%6`
-/

namespace A213890.P3979863728358840312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033569 (A023744 (n + 1)).toNat) 6

end

end A213890.P3979863728358840312

/-! ## A213890.P3758421272155446595

`A195664(∑[n]+n)`
-/

namespace A213890.P3758421272155446595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A213890.P3758421272155446595

/-! ## A213890.P11409795732616257752

`(4*A178475(n+1))%5`
-/

namespace A213890.P11409795732616257752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A178475 (n + 1)) 5

end

end A213890.P11409795732616257752

/-! ## A213890.P4799312151524225445

`A010874(A215940(n+1))`
-/

namespace A213890.P4799312151524225445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A215940 (n + 1)).toNat

end

end A213890.P4799312151524225445

/-! ## A213890.P10138874709251400170

`A195663(A000096(n))-1`
-/

namespace A213890.P10138874709251400170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 (A000096 n).toNat - 1

end

end A213890.P10138874709251400170

/-! ## A213890.P824488427220239852

`A195663(Δ[A005581(n)])-1`
-/

namespace A213890.P824488427220239852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 (f1 (n + 1) - f1 n).toNat - 1

end

end A213890.P824488427220239852

/-! ## A213890.P10274679486601461943

`A262065(A195663(∑[n]+n))`
-/

namespace A213890.P10274679486601461943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (A195663 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A213890.P10274679486601461943

/-! ## A213890.P15192627088291236953

`9-A116695(n+1)`
-/

namespace A213890.P15192627088291236953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A116695 (n + 1)

end

end A213890.P15192627088291236953

/-! ## A213890.P5439006530299389275

`A180599(n)%A116695(n+1)`
-/

namespace A213890.P5439006530299389275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180599 n) (A116695 (n + 1))

end

end A213890.P5439006530299389275

/-!
# A213891: Fixed points of the sequence A262212 defined by the minimum number of 2's in the relation n*[n,2,2,...,2,n] = [x,...,x] between simple continued fractions.

The programs for A213891, there is no canonical definition to state claims against.
-/

/-! ## A213891.P9979801851964174458

`p?[A270474(n+2)]`
-/

namespace A213891.P9979801851964174458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213891.P9979801851964174458

/-! ## A213891.P15931301978336774009

`A270474(2*(n+1))`
-/

namespace A213891.P15931301978336774009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270474 (2 * (n + 1))

end

end A213891.P15931301978336774009

/-! ## A213891.P16894662893279675166

`A270474(Δ[n²])+1`
-/

namespace A213891.P16894662893279675166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270474 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A213891.P16894662893279675166

/-! ## A213891.P4889563366833173933

`record[xor(1, A270474(n+1))]`
-/

namespace A213891.P4889563366833173933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A270474 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213891.P4889563366833173933

/-! ## A213891.P9954583906854049587

`record[A004442(A270474(n+1))]`
-/

namespace A213891.P9954583906854049587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A270474 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213891.P9954583906854049587

/-!
# A213892: Fixed points of a sequence h(n) defined by the minimum number of 3's in the relation n*[n,3,3,...,3,n] = [x,...,x] between simple continued fractions.

The programs for A213892, there is no canonical definition to state claims against.
-/

/-! ## A213892.P16838264376877515626

`p?[record[(n+1)%A322907(n+1)]]`
-/

namespace A213892.P16838264376877515626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A322907 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213892.P16838264376877515626

/-! ## A213892.P10642639929231639431

`A020725(eq[n+2, A322907(n+1)])`
-/

namespace A213892.P10642639929231639431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213892.P10642639929231639431

/-! ## A213892.P6139948201325375632

`record[A020639(n+2)%A322907(n+2)]`
-/

namespace A213892.P6139948201325375632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 2)) (A322907 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213892.P6139948201325375632

/-! ## A213892.P17714495669792202418

`record[A051698(n)%A322907(A051698(n))]`
-/

namespace A213892.P17714495669792202418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051698 n) (A322907 (A051698 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213892.P17714495669792202418

/-! ## A213892.P4122528115688147821

`record[A000040(n+1)%A322907(A000040(n+1))]`
-/

namespace A213892.P4122528115688147821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A322907 (A000040 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213892.P4122528115688147821

/-!
# A213893: Fixed points of a sequence h(n) defined by the minimum number of 4's in the relation n*[n,4,4,...,4,n] = [x,...,x] between simple continued fractions.

The programs for A213893, there is no canonical definition to state claims against.
-/

/-! ## A213893.P6673481755559309943

`∩[A106952(n+1), A214029(n+1)]`
-/

namespace A213893.P6673481755559309943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213893.P6673481755559309943

/-! ## A213893.P8183063997844127403

`∩[A141304(n+1), A214029(n+1)]`
-/

namespace A213893.P8183063997844127403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213893.P8183063997844127403

/-! ## A213893.P6405471099317100485

`∩[A214029(n+1), A298360(n+1)]`
-/

namespace A213893.P6405471099317100485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213893.P6405471099317100485

/-! ## A213893.P11413374131818807509

`∩[A000057(n+1), A156210(n+1)]`
-/

namespace A213893.P11413374131818807509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213893.P11413374131818807509

/-! ## A213893.P8518731341994447364

`∩[A064414(n+1), A156210(n+1)]`
-/

namespace A213893.P8518731341994447364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213893.P8518731341994447364

/-!
# A213895: Fixed points of a sequence h(n) defined by the minimum number of 6's in the relation n*[n,6,6,...,6,n] = [x,...,x] between simple continued fractions.

The programs for A213895, there is no canonical definition to state claims against.
-/

/-! ## A213895.P1855183927701079901

`A116959(A201700(n+1)+n²)`
-/

namespace A213895.P1855183927701079901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116959 (A201700 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A213895.P1855183927701079901

/-! ## A213895.P7188426759358918117

`A129759(lcm(15, A150693(n)))`
-/

namespace A213895.P7188426759358918117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (Int.lcm 15 (A150693 n))

end

end A213895.P7188426759358918117

/-!
# A213896: Fixed points of a sequence h(n) defined by the minimum number of 7's in the relation n*[n,7,7,...,7,n] = [x,...,x] between simple continued fractions.

The programs for A213896, there is no canonical definition to state claims against.
-/

/-! ## A213896.P3931939429402546493

`filter[A142955(n+1), A189141(#)]`
-/

namespace A213896.P3931939429402546493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189141 (f1 j).toNat = 1) n)

end

end A213896.P3931939429402546493

/-! ## A213896.P9732279528457077314

`∩[A142955(n+1), A189143(n+1)]`
-/

namespace A213896.P9732279528457077314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213896.P9732279528457077314

/-! ## A213896.P5981561645911837307

`∩[A142955(n+1), A256212(n+1)]`
-/

namespace A213896.P5981561645911837307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213896.P5981561645911837307

/-!
# A213897: Fixed points of a sequence h(n) defined by the minimum number of 8's in the relation n*[n,8,8,...,8,n] = [x,...,x] between simple continued fractions.

The programs for A213897, there is no canonical definition to state claims against.
-/

/-! ## A213897.P5740611827705554293

`filter[A106935(n+1), A357298(#)]`
-/

namespace A213897.P5740611827705554293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357298 (f1 j).toNat = 1) n)

end

end A213897.P5740611827705554293

/-! ## A213897.P4450480757814851627

`A130006(A117311(n+1))`
-/

namespace A213897.P4450480757814851627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130006 (A117311 (n + 1)).toNat

end

end A213897.P4450480757814851627

/-!
# A213898: Fixed points of a sequence h(n) defined by the minimum number of 9's in the relation n*[n,9,9,...,9,n] = [x,...,x] between simple continued fractions.

The programs for A213898, there is no canonical definition to state claims against.
-/

/-! ## A213898.P9023168712165284671

`p?[xor((-1)^val(n+1, 2), A340682(2*(n+1)))]`
-/

namespace A213898.P9023168712165284671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A340682 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213898.P9023168712165284671

/-!
# A213899: Fixed points of a sequence h(n) defined by the minimum number of 10's in the relation n*[n,10,10,...,10,n] = [x,...,x] between simple continued fractions.

The programs for A213899, there is no canonical definition to state claims against.
-/

/-! ## A213899.P17991606296096444240

`p?[ceil(abs(1-8*n)/3)-A120449(n+3)]`
-/

namespace A213899.P17991606296096444240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ - A120449 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213899.P17991606296096444240

/-! ## A213899.P1828131855912147821

`∩[A038900(n+1), A141451(n+1)]`
-/

namespace A213899.P1828131855912147821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213899.P1828131855912147821

/-! ## A213899.P4956992579519292791

`∩[A038900(n+1), A177732(n+1)]`
-/

namespace A213899.P4956992579519292791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213899.P4956992579519292791

