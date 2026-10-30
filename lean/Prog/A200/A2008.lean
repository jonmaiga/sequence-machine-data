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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A200801: T(n,k) is the number of n X k 0..3 arrays with values 0..3 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A200801, there is no canonical definition to state claims against.
-/

/-! ## A200801.P14705952746835459750

`A241119(n+1)-A018843(A064664(n+1))`
-/

namespace A200801.P14705952746835459750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (n + 1) - A018843 (A064664 (n + 1)).toNat

end

end A200801.P14705952746835459750

/-! ## A200801.P10754441787440899339

`A241119(A084192(∑[n]))`
-/

namespace A200801.P10754441787440899339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A200801.P10754441787440899339

/-! ## A200801.P18160758047760855039

`A241119(A043317(n+1))`
-/

namespace A200801.P18160758047760855039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A043317 (n + 1)).toNat

end

end A200801.P18160758047760855039

/-! ## A200801.P5893462896324046139

`A241119(A044914(n+1))`
-/

namespace A200801.P5893462896324046139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A044914 (n + 1)).toNat

end

end A200801.P5893462896324046139

/-! ## A200801.P9923733894393161997

`A241119(A055648(n+1))`
-/

namespace A200801.P9923733894393161997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241119 (A055648 (n + 1)).toNat

end

end A200801.P9923733894393161997

/-!
# A200802: Number of n X n 0..2 arrays with no average of any element and its diagonal, antidiagonal, horizontal and vertical neighbors equal to one.

The programs for A200802, there is no canonical definition to state claims against.
-/

/-! ## A200802.P17346009476595557351

`A200809(∑[4*n]+1)`
-/

namespace A200802.P17346009476595557351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200802.P17346009476595557351

/-!
# A200803: Number of n X 2 0..2 arrays with no average of any element and its diagonal, antidiagonal, horizontal and vertical neighbors equal to one.

The programs for A200803, there is no canonical definition to state claims against.
-/

/-! ## A200803.P4713419452415584740

`A200809(∑[n+1]+2)`
-/

namespace A200803.P4713419452415584740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200803.P4713419452415584740

/-! ## A200803.P15946629533437267458

`record[A200809(n+3)/A008275(n+1)]`
-/

namespace A200803.P15946629533437267458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200809 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200803.P15946629533437267458

/-! ## A200803.P1427744070633177119

`A200809(A133263(n+1))%A017370(n)`
-/

namespace A200803.P1427744070633177119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200809 (A133263 (n + 1)).toNat) (A017370 n)

end

end A200803.P1427744070633177119

/-! ## A200803.P4037297564646951445

`A000035(A242784(n))*A200809(A133263(n+1))`
-/

namespace A200803.P4037297564646951445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A242784 n).toNat * A200809 (A133263 (n + 1)).toNat

end

end A200803.P4037297564646951445

/-! ## A200803.P5889558413967265384

`A000035(A275543(n))*A200809(A133263(n+1))`
-/

namespace A200803.P5889558413967265384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A275543 n).toNat * A200809 (A133263 (n + 1)).toNat

end

end A200803.P5889558413967265384

/-!
# A200804: Number of nX3 0..2 arrays with no average of any element and its diagonal, antidiagonal, horizontal and vertical neighbors equal to one.

The programs for A200804, there is no canonical definition to state claims against.
-/

/-! ## A200804.P581193853423022026

`A200809(∑[n+2]+4)`
-/

namespace A200804.P581193853423022026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200804.P581193853423022026

/-! ## A200804.P11491307900952501376

`lcm(2, A200809(A167614(n+1)))`
-/

namespace A200804.P11491307900952501376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200809 (A167614 (n + 1)).toNat)

end

end A200804.P11491307900952501376

/-! ## A200804.P3926500969664993960

`A200809(A167614(n+1))+A025437(n)`
-/

namespace A200804.P3926500969664993960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A167614 (n + 1)).toNat + A025437 n

end

end A200804.P3926500969664993960

/-! ## A200804.P691512390540313990

`A200809(A167614(n+1))+A025438(n)`
-/

namespace A200804.P691512390540313990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A167614 (n + 1)).toNat + A025438 n

end

end A200804.P691512390540313990

/-! ## A200804.P13194076269356553633

`A200809(A167614(n+1))+A025442(n)`
-/

namespace A200804.P13194076269356553633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A167614 (n + 1)).toNat + A025442 n

end

end A200804.P13194076269356553633

/-!
# A200805: Number of nX4 0..2 arrays with no average of any element and its diagonal, antidiagonal, horizontal and vertical neighbors equal to one.

The programs for A200805, there is no canonical definition to state claims against.
-/

/-! ## A200805.P11690726185226036553

`A200809(C(n+5, 2)-n)`
-/

namespace A200805.P11690726185226036553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (Nat.choose (n + 5) 2 - n)

end

end A200805.P11690726185226036553

/-! ## A200805.P12639312531206581963

`A200809(A374004(n+1))`
-/

namespace A200805.P12639312531206581963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A374004 (n + 1)).toNat

end

end A200805.P12639312531206581963

/-! ## A200805.P13691986637995441876

`A200809(A141214(n)+7)`
-/

namespace A200805.P13691986637995441876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A141214 n + 7).toNat

end

end A200805.P13691986637995441876

/-! ## A200805.P6548608402760755875

`A200809(A052905(n)+9)`
-/

namespace A200805.P6548608402760755875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A052905 n + 9).toNat

end

end A200805.P6548608402760755875

/-!
# A200806: Number of nX5 0..2 arrays with no average of any element and its diagonal, antidiagonal, horizontal and vertical neighbors equal to one.

The programs for A200806, there is no canonical definition to state claims against.
-/

/-! ## A200806.P15077038578579622496

`A200809(∑[n+4]+11)`
-/

namespace A200806.P15077038578579622496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A200806.P15077038578579622496

/-!
# A200807: Number of nX6 0..2 arrays with no average of any element and its diagonal, antidiagonal, horizontal and vertical neighbors equal to one.

The programs for A200807, there is no canonical definition to state claims against.
-/

/-! ## A200807.P5173311389091294338

`A200809(A374007(n+1))`
-/

namespace A200807.P5173311389091294338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A374007 (n + 1)).toNat

end

end A200807.P5173311389091294338

/-!
# A200808: Number of n X 7 0..2 arrays with no average of any element and its diagonal, antidiagonal, horizontal and vertical neighbors equal to one.

The programs for A200808, there is no canonical definition to state claims against.
-/

/-! ## A200808.P14011453835781068726

`A200809(A055999(n+4))`
-/

namespace A200808.P14011453835781068726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200809 (A055999 (n + 4)).toNat

end

end A200808.P14011453835781068726

/-!
# A200810: Iterate k -> d(k) until an odd prime is reached.

The programs for A200810, the canonical program `A200810.P3059771621700014501` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200810 has offset 3).

The definition of A200810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200810.P15732176987687544580

`p?[a(A032741(n+1))*A089026(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A200810.P15732176987687544580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (A032741 (n + 1)).toNat * A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200810.P15732176987687544580

namespace A200810

/-- `p?[a(A032741(n+1))*A089026(n+1)]` -/
def P15732176987687544580.Spec : Prop :=
  ∀ n, P15732176987687544580.a n = A200810 (n + 3)

end A200810

/-! ## A200810.P3059771621700014501

`p?[a(A032741(n+1))+n*A010051(n+1)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A200810

/-- `p?[a(A032741(n+1))+n*A010051(n+1)]` -/
def P3059771621700014501.Spec : Prop :=
  ∀ n, P3059771621700014501.a n = A200810 (n + 3)

theorem P3059771621700014501.correct : P3059771621700014501.Spec := by
  intro n
  simp only [A200810, Nat.add_sub_cancel]

end A200810

/-! ## A200810.P13095178014659012811

`filter[A375513(n+2), A080545(#)]`
-/

namespace A200810.P13095178014659012811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375513 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A200810.P13095178014659012811

namespace A200810

/-- `filter[A375513(n+2), A080545(#)]` -/
def P13095178014659012811.Spec : Prop :=
  ∀ n, P13095178014659012811.a n = A200810 (n + 3)

end A200810

/-! ## A200810.P9655022109879874565

`gcd(∑[n+1], A196111(A196111(n+3)+2))+2`
-/

namespace A200810.P9655022109879874565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A196111 (A196111 (n + 3) + 2).toNat) + 2

end

end A200810.P9655022109879874565

namespace A200810

/-- `gcd(∑[n+1], A196111(A196111(n+3)+2))+2` -/
def P9655022109879874565.Spec : Prop :=
  ∀ n, (P9655022109879874565.a n : ℤ) = A200810 (n + 3)

end A200810

/-! ## A200810.P1478484955853253402

`p?[or(1, A304464(A064554(n+1)))]`
-/

namespace A200810.P1478484955853253402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304464 (A064554 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200810.P1478484955853253402

namespace A200810

/-- `p?[or(1, A304464(A064554(n+1)))]` -/
def P1478484955853253402.Spec : Prop :=
  ∀ n, P1478484955853253402.a n = A200810 (n + 3)

end A200810

/-!
# A200811: Iterate k -> d(k) until an odd prime is reached, starting from the n-th composite.

The programs for A200811, the canonical program `A200811.P737774431781934220` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200811 has offset 1).

The definition of A200811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200811.P737774431781934220

`A200810(A035004(n+2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A200811

/-- `A200810(A035004(n+2))` -/
def P737774431781934220.Spec : Prop :=
  ∀ n, P737774431781934220.a n = A200811 (n + 1)

theorem P737774431781934220.correct : P737774431781934220.Spec := by
  intro n
  simp only [A200811, Nat.add_sub_cancel]

end A200811

/-! ## A200811.P13854132460211220330

`A200810(A083256(n+2))`
-/

namespace A200811.P13854132460211220330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A083256 (n + 2)).toNat

end

end A200811.P13854132460211220330

namespace A200811

/-- `A200810(A083256(n+2))` -/
def P13854132460211220330.Spec : Prop :=
  ∀ n, P13854132460211220330.a n = A200811 (n + 1)

end A200811

/-! ## A200811.P11472768620497401898

`A200810(A083257(n+2))`
-/

namespace A200811.P11472768620497401898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A083257 (n + 2)).toNat

end

end A200811.P11472768620497401898

namespace A200811

/-- `A200810(A083257(n+2))` -/
def P11472768620497401898.Spec : Prop :=
  ∀ n, P11472768620497401898.a n = A200811 (n + 1)

end A200811

/-! ## A200811.P1936724150039206587

`A200810(A002808(n+1))`
-/

namespace A200811.P1936724150039206587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A002808 (n + 1)).toNat

end

end A200811.P1936724150039206587

namespace A200811

/-- `A200810(A002808(n+1))` -/
def P1936724150039206587.Spec : Prop :=
  ∀ n, P1936724150039206587.a n = A200811 (n + 1)

end A200811

/-! ## A200811.P9450178800273806001

`A200810(A018252(n+2))`
-/

namespace A200811.P9450178800273806001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A018252 (n + 2)).toNat

end

end A200811.P9450178800273806001

namespace A200811

/-- `A200810(A018252(n+2))` -/
def P9450178800273806001.Spec : Prop :=
  ∀ n, P9450178800273806001.a n = A200811 (n + 1)

end A200811

/-! ## A200811.P16351547045881951381

`A200810(A164028(n+1)+3)`
-/

namespace A200811.P16351547045881951381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A164028 (n + 1) + 3).toNat

end

end A200811.P16351547045881951381

namespace A200811

/-- `A200810(A164028(n+1)+3)` -/
def P16351547045881951381.Spec : Prop :=
  ∀ n, P16351547045881951381.a n = A200811 (n + 1)

end A200811

/-! ## A200811.P9567770970449883943

`A200810(A129401(n+1))`
-/

namespace A200811.P9567770970449883943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200810 (A129401 (n + 1)).toNat

end

end A200811.P9567770970449883943

namespace A200811

/-- `A200810(A129401(n+1))` -/
def P9567770970449883943.Spec : Prop :=
  ∀ n, P9567770970449883943.a n = A200811 (n + 1)

end A200811

/-!
# A200812: Primes of the form 5*n^3-6.

The programs for A200812, there is no canonical definition to state claims against.
-/

/-! ## A200812.P5888070936347281252

`p?[5*n^3-6]`
-/

namespace A200812.P5888070936347281252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200812.P5888070936347281252

/-!
# A200813: Primes of the form 5*n^3-8.

The programs for A200813, there is no canonical definition to state claims against.
-/

/-! ## A200813.P10005776638324591153

`p?[5*n^3-8]`
-/

namespace A200813.P10005776638324591153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200813.P10005776638324591153

/-!
# A200814: Primes of the form 6*n^3-1.

The programs for A200814, there is no canonical definition to state claims against.
-/

/-! ## A200814.P4233525580949022261

`p?[6*n^3-1]`
-/

namespace A200814.P4233525580949022261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200814.P4233525580949022261

/-! ## A200814.P8810988431306499657

`round(sqrt(p?[6*n*n²-1]²+1))`
-/

namespace A200814.P8810988431306499657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n * n ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A200814.P8810988431306499657

/-! ## A200814.P18153884122490171517

`p?[A163827(n+1)-2]*A272901(n+1)`
-/

namespace A200814.P18153884122490171517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163827 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A272901 (n + 1)

end

end A200814.P18153884122490171517

/-!
# A200815: Number of iterations of k -> d(k) until n reaches an odd prime.

The programs for A200815, the canonical program `A200815.P14997160360912167660` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200815 has offset 3).

The definition of A200815 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060937, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A200815.P14997160360912167660

`A060937(n+3)-2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A200815

/-- `A060937(n+3)-2` -/
def P14997160360912167660.Spec : Prop :=
  ∀ n, P14997160360912167660.a n = A200815 (n + 3)

theorem P14997160360912167660.correct : P14997160360912167660.Spec := by
  intro n
  simp only [A200815, Nat.add_sub_cancel]

end A200815

/-! ## A200815.P9063862008079664022

`A036459(n+3)-1`
-/

namespace A200815.P9063862008079664022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (n + 3) - 1

end

end A200815.P9063862008079664022

namespace A200815

/-- `A036459(n+3)-1` -/
def P9063862008079664022.Spec : Prop :=
  ∀ n, P9063862008079664022.a n = A200815 (n + 3)

end A200815

/-! ## A200815.P8613830300835132678

`A036459(∏{e}[n+3, #+1])`
-/

namespace A200815.P8613830300835132678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A200815.P8613830300835132678

namespace A200815

/-- `A036459(∏{e}[n+3, #+1])` -/
def P8613830300835132678.Spec : Prop :=
  ∀ n, P8613830300835132678.a n = A200815 (n + 3)

end A200815

/-! ## A200815.P12472949826643492803

`A036459(A000005(n+3))`
-/

namespace A200815.P12472949826643492803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (A000005 (n + 3)).toNat

end

end A200815.P12472949826643492803

namespace A200815

/-- `A036459(A000005(n+3))` -/
def P12472949826643492803.Spec : Prop :=
  ∀ n, P12472949826643492803.a n = A200815 (n + 3)

end A200815

/-! ## A200815.P7085445195884984289

`∑[Δ[A060937(n+2)]%A002034(n+1)]`
-/

namespace A200815.P7085445195884984289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060937 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A002034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200815.P7085445195884984289

namespace A200815

/-- `∑[Δ[A060937(n+2)]%A002034(n+1)]` -/
def P7085445195884984289.Spec : Prop :=
  ∀ n, P7085445195884984289.a n = A200815 (n + 3)

end A200815

/-! ## A200815.P16967481463913779855

`A036459(A083399(n+3)+A055212(n+3))`
-/

namespace A200815.P16967481463913779855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (A083399 (n + 3) + A055212 (n + 3)).toNat

end

end A200815.P16967481463913779855

namespace A200815

/-- `A036459(A083399(n+3)+A055212(n+3))` -/
def P16967481463913779855.Spec : Prop :=
  ∀ n, P16967481463913779855.a n = A200815 (n + 3)

end A200815

/-!
# A200818: Numbers k such that (2^k - k)*2^k - 1 is prime.

The programs for A200818, there is no canonical definition to state claims against.
-/

/-! ## A200818.P8576949707965849943

`lcm(∑{d}[n+1, #]+1, A144221(A000079(n)))`
-/

namespace A200818.P8576949707965849943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) (A144221 (A000079 n).toNat)

end

end A200818.P8576949707965849943

/-! ## A200818.P15624461032999578200

`(∑{d}[n+1, #]+1)*A046074(A279954(n+1))`
-/

namespace A200818.P15624461032999578200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) * A046074 (A279954 (n + 1)).toNat

end

end A200818.P15624461032999578200

/-!
# A200820: Expansion of e.g.f. 1/(1-arctan(1/sqrt(2)*x)^2) (even powers only).

The programs for A200820, there is no canonical definition to state claims against.
-/

/-! ## A200820.P2489192641840125065

`A191700(2*n)/2^n`
-/

namespace A200820.P2489192641840125065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191700 (2 * n) : ℚ) / (2 ^ n : ℚ)

end

end A200820.P2489192641840125065

/-! ## A200820.P2921099063903911179

`floor(A191700(2*n)/A000079(n))`
-/

namespace A200820.P2921099063903911179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191700 (2 * n) : ℚ) / (A000079 n : ℚ)⌋

end

end A200820.P2921099063903911179

/-! ## A200820.P13811841945985386153

`A000079(n+1)*A191700(2*n)/(2*A000079(n)²)`
-/

namespace A200820.P13811841945985386153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A191700 (2 * n) : ℚ) / (2 * A000079 n ^ 2 : ℚ)

end

end A200820.P13811841945985386153

/-! ## A200820.P11056133845748019402

`A000079(n+1)*A191700(2*n)/A000079(2*n+1)`
-/

namespace A200820.P11056133845748019402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A191700 (2 * n) : ℚ) / (A000079 (2 * n + 1) : ℚ)

end

end A200820.P11056133845748019402

/-!
# A200824: Number of n X n 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200824, there is no canonical definition to state claims against.
-/

/-! ## A200824.P4465325830390067660

`A200831(∑[4*n]+1)`
-/

namespace A200824.P4465325830390067660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200824.P4465325830390067660

/-!
# A200825: Number of n X 2 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200825, there is no canonical definition to state claims against.
-/

/-! ## A200825.P16185303708210662270

`A200831(∑[n+1]+2)`
-/

namespace A200825.P16185303708210662270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200825.P16185303708210662270

/-! ## A200825.P189574401969667966

`record[A010054(n)*A200831(n+2)]`
-/

namespace A200825.P189574401969667966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A200831 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200825.P189574401969667966

/-! ## A200825.P14065665861941791358

`A200831(A133263(n+1))%A017370(n)`
-/

namespace A200825.P14065665861941791358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200831 (A133263 (n + 1)).toNat) (A017370 n)

end

end A200825.P14065665861941791358

/-! ## A200825.P5887348253924269405

`A200831(A000096(n+1))%A200826(n+1)`
-/

namespace A200825.P5887348253924269405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200831 (A000096 (n + 1)).toNat) (A200826 (n + 1))

end

end A200825.P5887348253924269405

/-! ## A200825.P13299037541860003345

`A081733(A000096(n))*A200831(A000096(n+1))`
-/

namespace A200825.P13299037541860003345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081733 (A000096 n).toNat * A200831 (A000096 (n + 1)).toNat

end

end A200825.P13299037541860003345

/-!
# A200826: Number of nX3 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200826, there is no canonical definition to state claims against.
-/

/-! ## A200826.P4957428637832150547

`A200831(∑[n+2]+4)`
-/

namespace A200826.P4957428637832150547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200826.P4957428637832150547

/-! ## A200826.P6984053056336751338

`A200831(A167614(n+1))+A011738(n)`
-/

namespace A200826.P6984053056336751338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A167614 (n + 1)).toNat + A011738 n

end

end A200826.P6984053056336751338

/-! ## A200826.P668507323293628362

`A200831(A167614(n+1))+A011741(n)`
-/

namespace A200826.P668507323293628362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A167614 (n + 1)).toNat + A011741 n

end

end A200826.P668507323293628362

/-! ## A200826.P5468422175090955209

`A200831(A167614(n+1))+A036600(n)`
-/

namespace A200826.P5468422175090955209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A167614 (n + 1)).toNat + A036600 n

end

end A200826.P5468422175090955209

/-! ## A200826.P8117498188576131213

`A200831(A167614(n+1))+A053392(n)`
-/

namespace A200826.P8117498188576131213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A167614 (n + 1)).toNat + A053392 n

end

end A200826.P8117498188576131213

/-!
# A200827: Number of nX4 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200827, there is no canonical definition to state claims against.
-/

/-! ## A200827.P2479581141951865378

`A200831(A141214(n)+7)`
-/

namespace A200827.P2479581141951865378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A141214 n + 7).toNat

end

end A200827.P2479581141951865378

/-! ## A200827.P16148253262579286542

`A200831(A052905(n)+9)`
-/

namespace A200827.P16148253262579286542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A052905 n + 9).toNat

end

end A200827.P16148253262579286542

/-! ## A200827.P1338330173394620397

`A200831(A055999(n)+10)`
-/

namespace A200827.P1338330173394620397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A055999 n + 10).toNat

end

end A200827.P1338330173394620397

/-! ## A200827.P15377241523129202291

`A200831(eq[5, A066657(n)])`
-/

namespace A200827.P15377241523129202291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200827.P15377241523129202291

/-! ## A200827.P11529807183545220490

`A200831(A167614(n+2)+1)`
-/

namespace A200827.P11529807183545220490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A167614 (n + 2) + 1).toNat

end

end A200827.P11529807183545220490

/-!
# A200828: Number of nX5 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200828, there is no canonical definition to state claims against.
-/

/-! ## A200828.P9214694703983900035

`A200831(A167499(n+3))`
-/

namespace A200828.P9214694703983900035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A167499 (n + 3)).toNat

end

end A200828.P9214694703983900035

/-! ## A200828.P763934586880161317

`A200831(A155212(n)+13)`
-/

namespace A200828.P763934586880161317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A155212 n + 13).toNat

end

end A200828.P763934586880161317

/-! ## A200828.P6841557823178534564

`A200831(A056000(n)+15)`
-/

namespace A200828.P6841557823178534564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A056000 n + 15).toNat

end

end A200828.P6841557823178534564

/-! ## A200828.P15967910890009558091

`A200831(eq[7, A066657(n)])`
-/

namespace A200828.P15967910890009558091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200828.P15967910890009558091

/-!
# A200829: Number of nX6 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200829, there is no canonical definition to state claims against.
-/

/-! ## A200829.P595921258896155750

`A200831(A374007(n+1))`
-/

namespace A200829.P595921258896155750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (A374007 (n + 1)).toNat

end

end A200829.P595921258896155750

/-!
# A200830: Number of nX7 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200830, there is no canonical definition to state claims against.
-/

/-! ## A200830.P353468401959404908

`A200831(C(n+8, 2)-n)`
-/

namespace A200830.P353468401959404908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200831 (Nat.choose (n + 8) 2 - n)

end

end A200830.P353468401959404908

/-!
# A200831: T(n,k)=Number of nXk 0..5 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200831, there is no canonical definition to state claims against.
-/

/-! ## A200831.P6388828827018773879

`A232431(n+1)+A073093(A006428(2*(n+1)))`
-/

namespace A200831.P6388828827018773879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (n + 1) + A073093 (A006428 (2 * (n + 1))).toNat

end

end A200831.P6388828827018773879

/-!
# A200833: Number of 0..3 arrays x(0..n+1) of n+2 elements without any two consecutive increases or two consecutive decreases.

The programs for A200833, the canonical program `A200833.P13525192815732206839` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200833 has offset 1).

The definition of A200833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200833.P4751956928773341223

`ogf((56-30x+12x^2-16x^3)/(1-4x+2x^2-x^3+x^4))`
-/

namespace A200833.P4751956928773341223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [56, -30, 12, -16] [1, -4, 2, -1, 1] n

end

end A200833.P4751956928773341223

namespace A200833

/-- `ogf((56-30x+12x^2-16x^3)/(1-4x+2x^2-x^3+x^4))` -/
def P4751956928773341223.Spec : Prop :=
  ∀ n, P4751956928773341223.a n = A200833 (n + 1)

end A200833

/-! ## A200833.P9723851281665809012

`2*A318010(n+3)`
-/

namespace A200833.P9723851281665809012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318010 (n + 3)

end

end A200833.P9723851281665809012

namespace A200833

/-- `2*A318010(n+3)` -/
def P9723851281665809012.Spec : Prop :=
  ∀ n, P9723851281665809012.a n = A200833 (n + 1)

end A200833

/-! ## A200833.P13525192815732206839

`2*A049864(2*n+7)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A200833

/-- `2*A049864(2*n+7)` -/
def P13525192815732206839.Spec : Prop :=
  ∀ n, P13525192815732206839.a n = A200833 (n + 1)

theorem P13525192815732206839.correct : P13525192815732206839.Spec := by
  intro n
  simp only [A200833, Nat.add_sub_cancel]

end A200833

/-! ## A200833.P7844810590716087730

`2*Δ[A049856(A020742(n))]`
-/

namespace A200833.P7844810590716087730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A200833.P7844810590716087730

namespace A200833

/-- `2*Δ[A049856(A020742(n))]` -/
def P7844810590716087730.Spec : Prop :=
  ∀ n, P7844810590716087730.a n = A200833 (n + 1)

end A200833

/-! ## A200833.P5730683385092747826

`A200838(∑[n+3]+1)`
-/

namespace A200833.P5730683385092747826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200833.P5730683385092747826

namespace A200833

/-- `A200838(∑[n+3]+1)` -/
def P5730683385092747826.Spec : Prop :=
  ∀ n, P5730683385092747826.a n = A200833 (n + 1)

end A200833

/-! ## A200833.P13149944654582867443

`lcm(2, A200838(Δ[A008778(n)]))`
-/

namespace A200833.P13149944654582867443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200838 (f1 (n + 1) - f1 n).toNat)

end

end A200833.P13149944654582867443

namespace A200833

/-- `lcm(2, A200838(Δ[A008778(n)]))` -/
def P13149944654582867443.Spec : Prop :=
  ∀ n, (P13149944654582867443.a n : ℤ) = A200833 (n + 1)

end A200833

/-! ## A200833.P12979753811452407214

`A200838(A034856(n+2))%A000108(n+6)`
-/

namespace A200833.P12979753811452407214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200838 (A034856 (n + 2)).toNat) (A000108 (n + 6))

end

end A200833.P12979753811452407214

namespace A200833

/-- `A200838(A034856(n+2))%A000108(n+6)` -/
def P12979753811452407214.Spec : Prop :=
  ∀ n, P12979753811452407214.a n = A200833 (n + 1)

end A200833

/-! ## A200833.P7752013995821695097

`A007318(C(n, 2))*A200838(A034856(n+2))`
-/

namespace A200833.P7752013995821695097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A200838 (A034856 (n + 2)).toNat

end

end A200833.P7752013995821695097

namespace A200833

/-- `A007318(C(n, 2))*A200838(A034856(n+2))` -/
def P7752013995821695097.Spec : Prop :=
  ∀ n, P7752013995821695097.a n = A200833 (n + 1)

end A200833

/-! ## A200833.P10562367107459801347

`A001221(A102168(n+1))*A200838(A034856(n+2))`
-/

namespace A200833.P10562367107459801347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102168 (n + 1)).toNat * A200838 (A034856 (n + 2)).toNat

end

end A200833.P10562367107459801347

namespace A200833

/-- `A001221(A102168(n+1))*A200838(A034856(n+2))` -/
def P10562367107459801347.Spec : Prop :=
  ∀ n, P10562367107459801347.a n = A200833 (n + 1)

end A200833

/-!
# A200834: Number of 0..4 arrays x(0..n+1) of n+2 elements without any two consecutive increases or two consecutive decreases.

The programs for A200834, the canonical program `A200834.P10574970559879847077` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200834 has offset 1).

The definition of A200834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200834.P10574970559879847077

`ogf((105-90x+62x^2-73x^3+20x^4-25x^5)/(1-5x+4x^2-3x^3+3x^4-x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200834

/-- `ogf((105-90x+62x^2-73x^3+20x^4-25x^5)/(1-5x+4x^2-3x^3+3x^4-x^5+x^6))` -/
def P10574970559879847077.Spec : Prop :=
  ∀ n, P10574970559879847077.a n = A200834 (n + 1)

theorem P10574970559879847077.correct : P10574970559879847077.Spec := by
  intro n
  simp only [A200834, Nat.add_sub_cancel]

end A200834

/-! ## A200834.P7297195206106059937

`A200838(A055998(n+2))`
-/

namespace A200834.P7297195206106059937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055998 (n + 2)).toNat

end

end A200834.P7297195206106059937

namespace A200834

/-- `A200838(A055998(n+2))` -/
def P7297195206106059937.Spec : Prop :=
  ∀ n, P7297195206106059937.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P12499735839170968241

`A200838(Δ[A006503(n+1)])`
-/

namespace A200834.P12499735839170968241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n).toNat

end

end A200834.P12499735839170968241

namespace A200834

/-- `A200838(Δ[A006503(n+1)])` -/
def P12499735839170968241.Spec : Prop :=
  ∀ n, P12499735839170968241.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P14030212122390952477

`A200838(A052905(n+1)+2)`
-/

namespace A200834.P14030212122390952477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A052905 (n + 1) + 2).toNat

end

end A200834.P14030212122390952477

namespace A200834

/-- `A200838(A052905(n+1)+2)` -/
def P14030212122390952477.Spec : Prop :=
  ∀ n, P14030212122390952477.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P13174221096654999898

`A200838(A000096(n+3)-2)`
-/

namespace A200834.P13174221096654999898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000096 (n + 3) - 2).toNat

end

end A200834.P13174221096654999898

namespace A200834

/-- `A200838(A000096(n+3)-2)` -/
def P13174221096654999898.Spec : Prop :=
  ∀ n, P13174221096654999898.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P10977442715607912286

`A200838(Δ[A008778(n+1)]-1)`
-/

namespace A200834.P10977442715607912286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n - 1).toNat

end

end A200834.P10977442715607912286

namespace A200834

/-- `A200838(Δ[A008778(n+1)]-1)` -/
def P10977442715607912286.Spec : Prop :=
  ∀ n, P10977442715607912286.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P15904097201173128988

`A200838(Δ[A005586(n+1)]-2)`
-/

namespace A200834.P15904097201173128988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n - 2).toNat

end

end A200834.P15904097201173128988

namespace A200834

/-- `A200838(Δ[A005586(n+1)]-2)` -/
def P15904097201173128988.Spec : Prop :=
  ∀ n, P15904097201173128988.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P5861287440399336101

`A200838(A034856(n+2)+n+3)`
-/

namespace A200834.P5861287440399336101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A034856 (n + 2) + (n + 3 : ℤ)).toNat

end

end A200834.P5861287440399336101

namespace A200834

/-- `A200838(A034856(n+2)+n+3)` -/
def P5861287440399336101.Spec : Prop :=
  ∀ n, P5861287440399336101.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P1464713838580486286

`A200838(Δ[A005586(n)+A000096(n)])`
-/

namespace A200834.P1464713838580486286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n).toNat

end

end A200834.P1464713838580486286

namespace A200834

/-- `A200838(Δ[A005586(n)+A000096(n)])` -/
def P1464713838580486286.Spec : Prop :=
  ∀ n, P1464713838580486286.a n = A200834 (n + 1)

end A200834

/-! ## A200834.P8657728037438999165

`A200838(A167614(n+1)+A005408(n))`
-/

namespace A200834.P8657728037438999165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A167614 (n + 1) + A005408 n).toNat

end

end A200834.P8657728037438999165

namespace A200834

/-- `A200838(A167614(n+1)+A005408(n))` -/
def P8657728037438999165.Spec : Prop :=
  ∀ n, P8657728037438999165.a n = A200834 (n + 1)

end A200834

/-!
# A200835: Number of 0..5 arrays x(0..n+1) of n+2 elements without any two consecutive increases or two consecutive decreases.

The programs for A200835, there is no canonical definition to state claims against.
-/

/-! ## A200835.P15913469010145688713

`A200838(Δ[A264443(n)])`
-/

namespace A200835.P15913469010145688713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n).toNat

end

end A200835.P15913469010145688713

/-! ## A200835.P4560975826384032064

`A200838(A046691(n+3))`
-/

namespace A200835.P4560975826384032064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A046691 (n + 3)).toNat

end

end A200835.P4560975826384032064

/-! ## A200835.P15817074362671451273

`A200838(Δ[A023545(n+1)])`
-/

namespace A200835.P15817074362671451273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n).toNat

end

end A200835.P15817074362671451273

/-! ## A200835.P9174976811365620101

`A200838(A055999(n+2)+2)`
-/

namespace A200835.P9174976811365620101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055999 (n + 2) + 2).toNat

end

end A200835.P9174976811365620101

/-! ## A200835.P1320866515501824843

`A200838(A055998(n+3)-1)`
-/

namespace A200835.P1320866515501824843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055998 (n + 3) - 1).toNat

end

end A200835.P1320866515501824843

/-! ## A200835.P9721382367411850875

`A200838(A000217(n+5)-4)`
-/

namespace A200835.P9721382367411850875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000217 (n + 5) - 4).toNat

end

end A200835.P9721382367411850875

/-! ## A200835.P604973181735525772

`A200838(n+1+A000217(n+4))`
-/

namespace A200835.P604973181735525772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 ((n + 1 : ℤ) + A000217 (n + 4)).toNat

end

end A200835.P604973181735525772

/-! ## A200835.P6402094506244705126

`A200838(A264443(n+1)-A264443(n))`
-/

namespace A200835.P6402094506244705126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A264443 (n + 1) - A264443 n).toNat

end

end A200835.P6402094506244705126

/-! ## A200835.P3444176570331148400

`A200838(A167614(n+2)+A005843(n+1))`
-/

namespace A200835.P3444176570331148400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A167614 (n + 2) + A005843 (n + 1)).toNat

end

end A200835.P3444176570331148400

/-!
# A200836: Number of 0..6 arrays x(0..n+1) of n+2 elements without any two consecutive increases or two consecutive decreases.

The programs for A200836, there is no canonical definition to state claims against.
-/

/-! ## A200836.P13660643222590004860

`A200838(A052905(n+3))`
-/

namespace A200836.P13660643222590004860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A052905 (n + 3)).toNat

end

end A200836.P13660643222590004860

/-! ## A200836.P6579843336230076630

`A200838(A055999(n+3)+1)`
-/

namespace A200836.P6579843336230076630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055999 (n + 3) + 1).toNat

end

end A200836.P6579843336230076630

/-! ## A200836.P15631313559373788199

`A200838(A055998(n+4)-2)`
-/

namespace A200836.P15631313559373788199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055998 (n + 4) - 2).toNat

end

end A200836.P15631313559373788199

/-! ## A200836.P9989955251404452390

`A200838(A000217(n+6)-5)`
-/

namespace A200836.P9989955251404452390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000217 (n + 6) - 5).toNat

end

end A200836.P9989955251404452390

/-! ## A200836.P770625976209620943

`A200838(A000124(n+6)-6)`
-/

namespace A200836.P770625976209620943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000124 (n + 6) - 6).toNat

end

end A200836.P770625976209620943

/-! ## A200836.P13996242357245612598

`A200838(Δ[Δ[A006504(n+1)]])`
-/

namespace A200836.P13996242357245612598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n).toNat

end

end A200836.P13996242357245612598

/-! ## A200836.P15716010455229608901

`A200838(Δ[A264443(n+1)]-1)`
-/

namespace A200836.P15716010455229608901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n - 1).toNat

end

end A200836.P15716010455229608901

/-! ## A200836.P1307668985318700435

`A200838(Δ[A023545(n+2)]-1)`
-/

namespace A200836.P1307668985318700435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n - 1).toNat

end

end A200836.P1307668985318700435

/-!
# A200837: Number of 0..7 arrays x(0..n+1) of n+2 elements without any two consecutive increases or two consecutive decreases.

The programs for A200837, there is no canonical definition to state claims against.
-/

/-! ## A200837.P9203696908600891071

`A200838(A055999(n+4))`
-/

namespace A200837.P9203696908600891071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055999 (n + 4)).toNat

end

end A200837.P9203696908600891071

/-! ## A200837.P5457361473442241550

`A200838(A055998(n+5)-3)`
-/

namespace A200837.P5457361473442241550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055998 (n + 5) - 3).toNat

end

end A200837.P5457361473442241550

/-! ## A200837.P2709636576663882425

`A200838(A000217(n+7)-6)`
-/

namespace A200837.P2709636576663882425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000217 (n + 7) - 6).toNat

end

end A200837.P2709636576663882425

/-! ## A200837.P18399186871202280417

`A200838(eq[7, A004736(n+1)]+1)`
-/

namespace A200837.P18399186871202280417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A200837.P18399186871202280417

/-! ## A200837.P6009426208639206298

`A200838(n+1+A000217(n+6))`
-/

namespace A200837.P6009426208639206298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 ((n + 1 : ℤ) + A000217 (n + 6)).toNat

end

end A200837.P6009426208639206298

/-!
# A200839: Number of 0..n arrays x(0..3) of 4 elements without any two consecutive increases or two consecutive decreases.

The programs for A200839, the canonical program `A200839.P3691172402506244838` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200839 has offset 1).

The definition of A200839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200839.P2086924962041593137

`ogf((16-11x+9x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A200839.P2086924962041593137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -11, 9, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A200839.P2086924962041593137

namespace A200839

/-- `ogf((16-11x+9x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2086924962041593137.Spec : Prop :=
  ∀ n, P2086924962041593137.a n = A200839 (n + 1)

end A200839

/-! ## A200839.P3691172402506244838

`∑[∑[∑[10*(n+1)+4]]+1]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200839

/-- `∑[∑[∑[10*(n+1)+4]]+1]+1` -/
def P3691172402506244838.Spec : Prop :=
  ∀ n, (P3691172402506244838.a n : ℤ) = A200839 (n + 1)

theorem P3691172402506244838.correct : P3691172402506244838.Spec := by
  intro n
  simp only [A200839, Nat.add_sub_cancel]

end A200839

/-! ## A200839.P12554271614337426001

`Δ[(A005286(n)+2)*A000096(n)]`
-/

namespace A200839.P12554271614337426001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005286 n + 2) * A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200839.P12554271614337426001

namespace A200839

/-- `Δ[(A005286(n)+2)*A000096(n)]` -/
def P12554271614337426001.Spec : Prop :=
  ∀ n, P12554271614337426001.a n = A200839 (n + 1)

end A200839

/-! ## A200839.P3817410058322467540

`Δ[(A005586(n)+3)*A000096(n)]`
-/

namespace A200839.P3817410058322467540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005586 n + 3) * A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200839.P3817410058322467540

namespace A200839

/-- `Δ[(A005586(n)+3)*A000096(n)]` -/
def P3817410058322467540.Spec : Prop :=
  ∀ n, P3817410058322467540.a n = A200839 (n + 1)

end A200839

/-! ## A200839.P12203884847071698426

`Δ[A000096(n)+n*A005701(n)]`
-/

namespace A200839.P12203884847071698426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (n : ℤ) * A005701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200839.P12203884847071698426

namespace A200839

/-- `Δ[A000096(n)+n*A005701(n)]` -/
def P12203884847071698426.Spec : Prop :=
  ∀ n, P12203884847071698426.a n = A200839 (n + 1)

end A200839

/-! ## A200839.P17662677218772469049

`Δ[A167487(n)+n*A005701(n)]`
-/

namespace A200839.P17662677218772469049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 n + (n : ℤ) * A005701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200839.P17662677218772469049

namespace A200839

/-- `Δ[A167487(n)+n*A005701(n)]` -/
def P17662677218772469049.Spec : Prop :=
  ∀ n, P17662677218772469049.a n = A200839 (n + 1)

end A200839

/-! ## A200839.P15828872018939454498

`Δ[A000096(n)*A105163(n+3)]`
-/

namespace A200839.P15828872018939454498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A105163 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200839.P15828872018939454498

namespace A200839

/-- `Δ[A000096(n)*A105163(n+3)]` -/
def P15828872018939454498.Spec : Prop :=
  ∀ n, P15828872018939454498.a n = A200839 (n + 1)

end A200839

/-! ## A200839.P16533759164298909408

`A200838(∑[n+1]+2)`
-/

namespace A200839.P16533759164298909408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200839.P16533759164298909408

namespace A200839

/-- `A200838(∑[n+1]+2)` -/
def P16533759164298909408.Spec : Prop :=
  ∀ n, P16533759164298909408.a n = A200839 (n + 1)

end A200839

/-!
# A200840: Number of 0..n arrays x(0..4) of 5 elements without any two consecutive increases or two consecutive decreases.

The programs for A200840, the canonical program `A200840.P8022737948947234868` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200840 has offset 1).

The definition of A200840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200840.P8022737948947234868

`ogf((32-x+10x^2-14x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200840

/-- `ogf((32-x+10x^2-14x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P8022737948947234868.Spec : Prop :=
  ∀ n, P8022737948947234868.a n = A200840 (n + 1)

theorem P8022737948947234868.correct : P8022737948947234868.Spec := by
  intro n
  simp only [A200840, Nat.add_sub_cancel]

end A200840

/-! ## A200840.P4707743275178047385

`A200838(∑[n+2]+4)`
-/

namespace A200840.P4707743275178047385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200840.P4707743275178047385

namespace A200840

/-- `A200838(∑[n+2]+4)` -/
def P4707743275178047385.Spec : Prop :=
  ∀ n, P4707743275178047385.a n = A200840 (n + 1)

end A200840

/-! ## A200840.P3688713068321042375

`A200838(A167614(n+1))%A016900(n)`
-/

namespace A200840.P3688713068321042375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200838 (A167614 (n + 1)).toNat) (A016900 n)

end

end A200840.P3688713068321042375

namespace A200840

/-- `A200838(A167614(n+1))%A016900(n)` -/
def P3688713068321042375.Spec : Prop :=
  ∀ n, P3688713068321042375.a n = A200840 (n + 1)

end A200840

/-! ## A200840.P1466380347803873157

`lcm(A033999(n), A200838(A167614(n+1)))`
-/

namespace A200840.P1466380347803873157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A200838 (A167614 (n + 1)).toNat)

end

end A200840.P1466380347803873157

namespace A200840

/-- `lcm(A033999(n), A200838(A167614(n+1)))` -/
def P1466380347803873157.Spec : Prop :=
  ∀ n, (P1466380347803873157.a n : ℤ) = A200840 (n + 1)

end A200840

/-! ## A200840.P6745878113377965723

`or(A000035(n), A200838(A167614(n+1)))`
-/

namespace A200840.P6745878113377965723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A200838 (A167614 (n + 1)).toNat)

end

end A200840.P6745878113377965723

namespace A200840

/-- `or(A000035(n), A200838(A167614(n+1)))` -/
def P6745878113377965723.Spec : Prop :=
  ∀ n, P6745878113377965723.a n = A200840 (n + 1)

end A200840

/-! ## A200840.P3216185884950361480

`A007318(C(2, n))*A200838(A167614(n+1))`
-/

namespace A200840.P3216185884950361480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200838 (A167614 (n + 1)).toNat

end

end A200840.P3216185884950361480

namespace A200840

/-- `A007318(C(2, n))*A200838(A167614(n+1))` -/
def P3216185884950361480.Spec : Prop :=
  ∀ n, P3216185884950361480.a n = A200840 (n + 1)

end A200840

/-! ## A200840.P9185787837156624146

`A200838(A167614(n+1))-A001489(n)-n`
-/

namespace A200840.P9185787837156624146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A167614 (n + 1)).toNat - A001489 n - (n : ℤ)

end

end A200840.P9185787837156624146

namespace A200840

/-- `A200838(A167614(n+1))-A001489(n)-n` -/
def P9185787837156624146.Spec : Prop :=
  ∀ n, P9185787837156624146.a n = A200840 (n + 1)

end A200840

/-! ## A200840.P13944079022576433450

`abs(A033999(n+1)*A200838(A167614(n+1)))`
-/

namespace A200840.P13944079022576433450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 (n + 1) * A200838 (A167614 (n + 1)).toNat|

end

end A200840.P13944079022576433450

namespace A200840

/-- `abs(A033999(n+1)*A200838(A167614(n+1)))` -/
def P13944079022576433450.Spec : Prop :=
  ∀ n, P13944079022576433450.a n = A200840 (n + 1)

end A200840

/-! ## A200840.P5022740012324175008

`A200838(A167614(n+1))+A142150(A005843(n+6)+1)`
-/

namespace A200840.P5022740012324175008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A167614 (n + 1)).toNat + A142150 (A005843 (n + 6) + 1).toNat

end

end A200840.P5022740012324175008

namespace A200840

/-- `A200838(A167614(n+1))+A142150(A005843(n+6)+1)` -/
def P5022740012324175008.Spec : Prop :=
  ∀ n, P5022740012324175008.a n = A200840 (n + 1)

end A200840

/-!
# A200841: Number of 0..n arrays x(0..5) of 6 elements without any two consecutive increases or two consecutive decreases.

The programs for A200841, the canonical program `A200841.P4858335518032166889` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200841 has offset 1).

The definition of A200841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200841.P4858335518032166889

`ogf((64+81x-3x^2-36x^3+22x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200841

/-- `ogf((64+81x-3x^2-36x^3+22x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P4858335518032166889.Spec : Prop :=
  ∀ n, P4858335518032166889.a n = A200841 (n + 1)

theorem P4858335518032166889.correct : P4858335518032166889.Spec := by
  intro n
  simp only [A200841, Nat.add_sub_cancel]

end A200841

/-! ## A200841.P4211666419583382695

`A200838(A052905(n)+9)`
-/

namespace A200841.P4211666419583382695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A052905 n + 9).toNat

end

end A200841.P4211666419583382695

namespace A200841

/-- `A200838(A052905(n)+9)` -/
def P4211666419583382695.Spec : Prop :=
  ∀ n, P4211666419583382695.a n = A200841 (n + 1)

end A200841

/-! ## A200841.P8018173894620176904

`A200838(A055999(n)+10)`
-/

namespace A200841.P8018173894620176904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055999 n + 10).toNat

end

end A200841.P8018173894620176904

namespace A200841

/-- `A200838(A055999(n)+10)` -/
def P8018173894620176904.Spec : Prop :=
  ∀ n, P8018173894620176904.a n = A200841 (n + 1)

end A200841

/-! ## A200841.P6908544886310525035

`A200838(Δ[A005586(n)]+5)`
-/

namespace A200841.P6908544886310525035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n + 5).toNat

end

end A200841.P6908544886310525035

namespace A200841

/-- `A200838(Δ[A005586(n)]+5)` -/
def P6908544886310525035.Spec : Prop :=
  ∀ n, P6908544886310525035.a n = A200841 (n + 1)

end A200841

/-! ## A200841.P1375472639340306684

`A200838(A167614(n+2)+1)`
-/

namespace A200841.P1375472639340306684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A167614 (n + 2) + 1).toNat

end

end A200841.P1375472639340306684

namespace A200841

/-- `A200838(A167614(n+2)+1)` -/
def P1375472639340306684.Spec : Prop :=
  ∀ n, P1375472639340306684.a n = A200841 (n + 1)

end A200841

/-! ## A200841.P232172965715813777

`A200838(A000217(n+3)+4)`
-/

namespace A200841.P232172965715813777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000217 (n + 3) + 4).toNat

end

end A200841.P232172965715813777

namespace A200841

/-- `A200838(A000217(n+3)+4)` -/
def P232172965715813777.Spec : Prop :=
  ∀ n, P232172965715813777.a n = A200841 (n + 1)

end A200841

/-! ## A200841.P1807320822847512334

`A200838(Δ[A264443(n)-n²])`
-/

namespace A200841.P1807320822847512334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n).toNat

end

end A200841.P1807320822847512334

namespace A200841

/-- `A200838(Δ[A264443(n)-n²])` -/
def P1807320822847512334.Spec : Prop :=
  ∀ n, P1807320822847512334.a n = A200841 (n + 1)

end A200841

/-! ## A200841.P10030022842646438407

`A200838(Δ[A023545(n+1)-n²])`
-/

namespace A200841.P10030022842646438407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n).toNat

end

end A200841.P10030022842646438407

namespace A200841

/-- `A200838(Δ[A023545(n+1)-n²])` -/
def P10030022842646438407.Spec : Prop :=
  ∀ n, P10030022842646438407.a n = A200841 (n + 1)

end A200841

/-! ## A200841.P14920222562817568116

`A200838(A038722(A055998(n+2)))`
-/

namespace A200841.P14920222562817568116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A038722 (A055998 (n + 2)).toNat).toNat

end

end A200841.P14920222562817568116

namespace A200841

/-- `A200838(A038722(A055998(n+2)))` -/
def P14920222562817568116.Spec : Prop :=
  ∀ n, P14920222562817568116.a n = A200841 (n + 1)

end A200841

/-!
# A200842: Number of 0..n arrays x(0..6) of 7 elements without any two consecutive increases or two consecutive decreases.

The programs for A200842, there is no canonical definition to state claims against.
-/

/-! ## A200842.P8123635942172914682

`A200838(A167499(n+3))`
-/

namespace A200842.P8123635942172914682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A167499 (n + 3)).toNat

end

end A200842.P8123635942172914682

/-! ## A200842.P15606964798257394108

`A200838(A056000(n)+15)`
-/

namespace A200842.P15606964798257394108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A056000 n + 15).toNat

end

end A200842.P15606964798257394108

/-! ## A200842.P15682531077344978178

`A200838(A000217(n+4)+5)`
-/

namespace A200842.P15682531077344978178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000217 (n + 4) + 5).toNat

end

end A200842.P15682531077344978178

/-! ## A200842.P2589914212789712431

`A200838(A055998(n+2)+8)`
-/

namespace A200842.P2589914212789712431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055998 (n + 2) + 8).toNat

end

end A200842.P2589914212789712431

/-! ## A200842.P17987043992122588356

`A200838(A133263(n+5)-(n+2))`
-/

namespace A200842.P17987043992122588356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A133263 (n + 5) - (n + 2 : ℤ)).toNat

end

end A200842.P17987043992122588356

/-!
# A200843: Number of 0..n arrays x(0..7) of 8 elements without any two consecutive increases or two consecutive decreases.

The programs for A200843, there is no canonical definition to state claims against.
-/

/-! ## A200843.P8639392873765307139

`A200838(∑[n+5]+16)`
-/

namespace A200843.P8639392873765307139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A200843.P8639392873765307139

/-! ## A200843.P150252883946843103

`A057427(n+1)*A200838(A000096(n+4)+7)`
-/

namespace A200843.P150252883946843103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A200838 (A000096 (n + 4) + 7).toNat

end

end A200843.P150252883946843103

/-! ## A200843.P15539851619452970793

`A200838(A000124(n+5)+5)%A248445(n+1)`
-/

namespace A200843.P15539851619452970793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200838 (A000124 (n + 5) + 5).toNat) (A248445 (n + 1))

end

end A200843.P15539851619452970793

/-! ## A200843.P1782980309155448536

`A200838(A000096(n+4)+7)%A200791(n+1)`
-/

namespace A200843.P1782980309155448536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200838 (A000096 (n + 4) + 7).toNat) (A200791 (n + 1))

end

end A200843.P1782980309155448536

/-! ## A200843.P7811551693031791877

`A008683(A006881(n+1))*A200838(A000096(n+4)+7)`
-/

namespace A200843.P7811551693031791877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A200838 (A000096 (n + 4) + 7).toNat

end

end A200843.P7811551693031791877

/-! ## A200843.P7215625291953712916

`A200838(A000096(n+4)+7)-A230626(A230627(n+2))`
-/

namespace A200843.P7215625291953712916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000096 (n + 4) + 7).toNat - A230626 (A230627 (n + 2)).toNat

end

end A200843.P7215625291953712916

/-! ## A200843.P15273051775670106790

`A200838(A000096(n+4)+7)-A230614(A136480(2*n))`
-/

namespace A200843.P15273051775670106790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000096 (n + 4) + 7).toNat - A230614 (A136480 (2 * n)).toNat

end

end A200843.P15273051775670106790

/-!
# A200844: Number of 0..n arrays x(0..8) of 9 elements without any two consecutive increases or two consecutive decreases.

The programs for A200844, there is no canonical definition to state claims against.
-/

/-! ## A200844.P983611203739123617

`A200838(A133263(n+6)+5)`
-/

namespace A200844.P983611203739123617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A133263 (n + 6) + 5).toNat

end

end A200844.P983611203739123617

/-! ## A200844.P2839324718248226112

`A200838(A000124(n+6)+6)`
-/

namespace A200844.P2839324718248226112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000124 (n + 6) + 6).toNat

end

end A200844.P2839324718248226112

/-! ## A200844.P6921639759499909430

`A200838(A000217(n+6)+7)`
-/

namespace A200844.P6921639759499909430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A000217 (n + 6) + 7).toNat

end

end A200844.P6921639759499909430

/-! ## A200844.P38193900969225731

`A200838(A055998(n+4)+10)`
-/

namespace A200844.P38193900969225731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (A055998 (n + 4) + 10).toNat

end

end A200844.P38193900969225731

/-! ## A200844.P6395617474145478371

`A200838(Δ[A000292(n+5)]+7)`
-/

namespace A200844.P6395617474145478371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200838 (f1 (n + 1) - f1 n + 7).toNat

end

end A200844.P6395617474145478371

/-!
# A200845: Primes of the form 6n^3 - 5.

The programs for A200845, there is no canonical definition to state claims against.
-/

/-! ## A200845.P6299036121347563101

`p?[6*n^3-5]`
-/

namespace A200845.P6299036121347563101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 3 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200845.P6299036121347563101

/-! ## A200845.P15782322957139868494

`or(1, p?[A309337(n)-5])`
-/

namespace A200845.P15782322957139868494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200845.P15782322957139868494

/-! ## A200845.P15385412879617129701

`A007318(∑[n])*p?[A309337(n)-5]`
-/

namespace A200845.P15385412879617129701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A200845.P15385412879617129701

/-! ## A200845.P16988712424276572423

`p?[A309337(n)-5]/A007318(C(n, 2))`
-/

namespace A200845.P16988712424276572423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n - 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A200845.P16988712424276572423

/-!
# A200846: Primes of the form 3n^3-1.

The programs for A200846, there is no canonical definition to state claims against.
-/

/-! ## A200846.P9725208559323892656

`A345701(A239787(n+1))`
-/

namespace A200846.P9725208559323892656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345701 (A239787 (n + 1)).toNat

end

end A200846.P9725208559323892656

/-! ## A200846.P10691992704458504278

`p?[3*n^3-1]`
-/

namespace A200846.P10691992704458504278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 3 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200846.P10691992704458504278

/-! ## A200846.P3794818470829695022

`or(2, p?[3*n*n²-1])`
-/

namespace A200846.P3794818470829695022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * n ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200846.P3794818470829695022

/-! ## A200846.P5418340468012752458

`∑{d}[p?[3*n*n²-1], #]-1`
-/

namespace A200846.P5418340468012752458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * n ^ 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A200846.P5418340468012752458

/-! ## A200846.P14757600989987810283

`∩[A001915(n+1), A345701(n)]`
-/

namespace A200846.P14757600989987810283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345701 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200846.P14757600989987810283

/-!
# A200847: Primes of the form 3n^3-2.

The programs for A200847, there is no canonical definition to state claims against.
-/

/-! ## A200847.P1827086431822920932

`p?[3*n^3-2]`
-/

namespace A200847.P1827086431822920932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 3 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200847.P1827086431822920932

/-!
# A200848: Primes of the form 3n^3-4.

The programs for A200848, there is no canonical definition to state claims against.
-/

/-! ## A200848.P13667729100831459168

`p?[3*n^3-4]`
-/

namespace A200848.P13667729100831459168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 3 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200848.P13667729100831459168

/-!
# A200849: Primes of the form 3n^3-5.

The programs for A200849, there is no canonical definition to state claims against.
-/

/-! ## A200849.P9368877212636713724

`p?[3*n^3-5]`
-/

namespace A200849.P9368877212636713724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 3 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200849.P9368877212636713724

/-! ## A200849.P17960125950713257023

`or(3, p?[3*n*n²-5])`
-/

namespace A200849.P17960125950713257023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * n ^ 2) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A200849.P17960125950713257023

/-! ## A200849.P14336162821404301424

`or(p?[A117642(n)-5], A007318(n))`
-/

namespace A200849.P14336162821404301424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A007318 n)

end

end A200849.P14336162821404301424

/-!
# A200850: The number of forests of labeled rooted strictly binary trees (each vertex has exactly two children or none) on n nodes.

The programs for A200850, there is no canonical definition to state claims against.
-/

/-! ## A200850.P428066416011302681

`A345439(A308338(n)+1)`
-/

namespace A200850.P428066416011302681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345439 (A308338 n + 1).toNat

end

end A200850.P428066416011302681

/-! ## A200850.P4742296843298267005

`A110658(A000120(n)*A002898(n))`
-/

namespace A200850.P4742296843298267005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A000120 n * A002898 n).toNat

end

end A200850.P4742296843298267005

/-! ## A200850.P1784704345685555161

`or(A235385(n), A257684(A184877(n)))`
-/

namespace A200850.P1784704345685555161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235385 n) (A257684 (A184877 n).toNat)

end

end A200850.P1784704345685555161

/-!
# A200851: Number of n X n 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200851, there is no canonical definition to state claims against.
-/

/-! ## A200851.P14474956794942040563

`A200858(∑[4*n]+1)`
-/

namespace A200851.P14474956794942040563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200851.P14474956794942040563

/-!
# A200852: Number of nX2 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200852, there is no canonical definition to state claims against.
-/

/-! ## A200852.P15267792702824019813

`A200858(∑[n+1]+2)`
-/

namespace A200852.P15267792702824019813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200852.P15267792702824019813

/-! ## A200852.P10628531650486479259

`record[A010054(n)*A200858(n+2)]`
-/

namespace A200852.P10628531650486479259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A200858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200852.P10628531650486479259

/-! ## A200852.P7158602149950094192

`record[gcd(A002262(n), A200858(n+2))]`
-/

namespace A200852.P7158602149950094192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A200858 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200852.P7158602149950094192

/-! ## A200852.P1104612173123707262

`A200858(A252460(2*(n+2)))*A348039(n+1)`
-/

namespace A200852.P1104612173123707262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A252460 (2 * (n + 2))).toNat * A348039 (n + 1)

end

end A200852.P1104612173123707262

/-! ## A200852.P415713699879291948

`A007318(A000096(n))*A200858(A252460(2*(n+2)))`
-/

namespace A200852.P415713699879291948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A200858 (A252460 (2 * (n + 2))).toNat

end

end A200852.P415713699879291948

/-!
# A200853: Number of nX3 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200853, there is no canonical definition to state claims against.
-/

/-! ## A200853.P11442139866214673400

`A200858(∑[n+2]+4)`
-/

namespace A200853.P11442139866214673400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200853.P11442139866214673400

/-! ## A200853.P1262581840608569950

`A200858(A167614(n+1))+A084904(n)`
-/

namespace A200853.P1262581840608569950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A167614 (n + 1)).toNat + A084904 n

end

end A200853.P1262581840608569950

/-! ## A200853.P7278807014502511056

`A200858(A167614(n+1))+A108782(n)`
-/

namespace A200853.P7278807014502511056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A167614 (n + 1)).toNat + A108782 n

end

end A200853.P7278807014502511056

/-! ## A200853.P16619453987184955999

`A200858(A167614(n+1))+A171765(n)`
-/

namespace A200853.P16619453987184955999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A167614 (n + 1)).toNat + A171765 n

end

end A200853.P16619453987184955999

/-! ## A200853.P14705539310680385076

`A200858(A167614(n+1))+A178798(n)`
-/

namespace A200853.P14705539310680385076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A167614 (n + 1)).toNat + A178798 n

end

end A200853.P14705539310680385076

/-!
# A200854: Number of nX4 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200854, there is no canonical definition to state claims against.
-/

/-! ## A200854.P14988667983716455715

`A200858(∑[n+3]+7)`
-/

namespace A200854.P14988667983716455715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200854.P14988667983716455715

/-! ## A200854.P1507617602085415269

`A373979(n+1)+A200858(A374004(n+1))`
-/

namespace A200854.P1507617602085415269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373979 (n + 1) + A200858 (A374004 (n + 1)).toNat

end

end A200854.P1507617602085415269

/-! ## A200854.P10103944920293451324

`A373975(2*n+5)+A200858(A374004(n+1))`
-/

namespace A200854.P10103944920293451324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373975 (2 * n + 5) + A200858 (A374004 (n + 1)).toNat

end

end A200854.P10103944920293451324

/-! ## A200854.P16513055584089639713

`A373973(3*n+5)+A200858(A374004(n+1))`
-/

namespace A200854.P16513055584089639713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373973 (3 * n + 5) + A200858 (A374004 (n + 1)).toNat

end

end A200854.P16513055584089639713

/-! ## A200854.P16916370356646567210

`A200858(A052905(n)+9)+A179061(A253670(n))`
-/

namespace A200854.P16916370356646567210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A052905 n + 9).toNat + A179061 (A253670 n).toNat

end

end A200854.P16916370356646567210

/-!
# A200855: Number of nX5 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200855, there is no canonical definition to state claims against.
-/

/-! ## A200855.P9472062878117692866

`A200858(A374005(n+1))`
-/

namespace A200855.P9472062878117692866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A374005 (n + 1)).toNat

end

end A200855.P9472062878117692866

/-! ## A200855.P14821765800765836274

`A200858(A167499(n+3))`
-/

namespace A200855.P14821765800765836274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A167499 (n + 3)).toNat

end

end A200855.P14821765800765836274

/-! ## A200855.P11750719458228615

`A200858(A155212(n)+13)`
-/

namespace A200855.P11750719458228615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A155212 n + 13).toNat

end

end A200855.P11750719458228615

/-! ## A200855.P8121085452144843427

`A200858(A056000(n)+15)`
-/

namespace A200855.P8121085452144843427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A056000 n + 15).toNat

end

end A200855.P8121085452144843427

/-! ## A200855.P4113153349136187310

`A200858(eq[7, A066657(n)])`
-/

namespace A200855.P4113153349136187310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200855.P4113153349136187310

/-!
# A200856: Number of nX6 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200856, there is no canonical definition to state claims against.
-/

/-! ## A200856.P11312039252798170280

`A200858(A374007(n+1))`
-/

namespace A200856.P11312039252798170280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A374007 (n + 1)).toNat

end

end A200856.P11312039252798170280

/-! ## A200856.P17230164569315857727

`A200858(A167614(n+4)+3)`
-/

namespace A200856.P17230164569315857727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A167614 (n + 4) + 3).toNat

end

end A200856.P17230164569315857727

/-! ## A200856.P7603552641244479139

`A200858(A000124(n+5)+5)`
-/

namespace A200856.P7603552641244479139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A000124 (n + 5) + 5).toNat

end

end A200856.P7603552641244479139

/-! ## A200856.P10028577151896340146

`A200858(A141214(n+2)+9)`
-/

namespace A200856.P10028577151896340146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (A141214 (n + 2) + 9).toNat

end

end A200856.P10028577151896340146

/-!
# A200857: Number of nX7 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200857, there is no canonical definition to state claims against.
-/

/-! ## A200857.P456686592674803323

`A200858(C(n+7, 2)+7)`
-/

namespace A200857.P456686592674803323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200858 (Nat.choose (n + 7) 2 + 7)

end

end A200857.P456686592674803323

/-!
# A200858: T(n,k) = Number of n X k 0..4 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200858, there is no canonical definition to state claims against.
-/

/-! ## A200858.P561983446491249673

`A304436(a(n-1))+a(n-3)` with `a(0)=5, a(1)=15, a(2)=15`
-/

namespace A200858.P561983446491249673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 15, 15] fun n a =>
  A304436 (a (n - 1)).toNat + a (n - 3)

end

end A200858.P561983446491249673

/-!
# A200859: a(n) = 2*a(n-1)+3*a(n-2)+5^n for n>1, a(0)=-2, a(1)=1.

The programs for A200859, the canonical program `A200859.P13551297979664624071` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200859 has offset 0).

The definition of A200859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)+5^n` (program `A200859.P13551297979664624071`, by `A200859.P13551297979664624071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200859.P686652258646057119

`ogf((-2+15x)/(1-7x+7x^2+15x^3))`
-/

namespace A200859.P686652258646057119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 15] [1, -7, 7, 15] n

end

end A200859.P686652258646057119

namespace A200859

/-- `ogf((-2+15x)/(1-7x+7x^2+15x^3))` -/
def P686652258646057119.Spec : Prop :=
  ∀ n, P686652258646057119.a n = A200859 n

end A200859

/-! ## A200859.P13551297979664624071

`2*a(n-1)+3*a(n-2)+5^n` with `a(0)=-2, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200859

/-- `2*a(n-1)+3*a(n-2)+5^n` -/
def P13551297979664624071.Spec : Prop :=
  ∀ n, P13551297979664624071.a n = A200859 n

theorem P13551297979664624071.correct : P13551297979664624071.Spec := by
  intro n
  simp only [A200859]

end A200859

/-! ## A200859.P1570434012096498410

`(50*5^n-81*3^n-17*(-1)^n)/24`
-/

namespace A200859.P1570434012096498410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((50 * 5 ^ n : ℤ) - (81 * 3 ^ n : ℤ) - 17 * (-1) ^ n : ℚ) / 24

end

end A200859.P1570434012096498410

namespace A200859

/-- `(50*5^n-81*3^n-17*(-1)^n)/24` -/
def P1570434012096498410.Spec : Prop :=
  ∀ n, P1570434012096498410.a n = (A200859 n : ℚ)

theorem P1570434012096498410.correct : P1570434012096498410.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A200859, Nat.add_sub_cancel, A200859.P1570434012096498410.a, A200859.P13551297979664624071.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A200859, Nat.add_sub_cancel, A200859.P1570434012096498410.a, A200859.P13551297979664624071.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A200859

/-! ## A200859.P1223233718920635480

`A200864(n)-A054878(n+2)`
-/

namespace A200859.P1223233718920635480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200864 n - A054878 (n + 2)

end

end A200859.P1223233718920635480

namespace A200859

/-- `A200864(n)-A054878(n+2)` -/
def P1223233718920635480.Spec : Prop :=
  ∀ n, P1223233718920635480.a n = A200859 n

end A200859

/-!
# A200860: Multiples of 682.

The programs for A200860, the canonical program `A200860.P15709864680678516815` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200860 has offset 0).

The definition of A200860 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A200860.anchor (n : ℕ) : A200860 n = 682 * n` in `Proof.A200.A200860`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200860.P15709864680678516815

`682*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200860

/-- `682*n` -/
def P15709864680678516815.Spec : Prop :=
  ∀ n, (P15709864680678516815.a n : ℤ) = A200860 n

theorem P15709864680678516815.correct : P15709864680678516815.Spec := by
  intro n
  simp only [A200860]

end A200860

/-!
# A200861: Prime factors of 10^100 - 1.

The programs for A200861, there is no canonical definition to state claims against.
-/

/-! ## A200861.P15549190352214193123

`p?[∏{p}[A200879(n+1), #]]`
-/

namespace A200861.P15549190352214193123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A200861.P15549190352214193123

/-! ## A200861.P7262879090917266501

`p?[A200879(A000038(n)+n)]`
-/

namespace A200861.P7262879090917266501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200861.P7262879090917266501

/-! ## A200861.P15689660350424303357

`p?[A200879(xor(n, A000038(n)))]`
-/

namespace A200861.P15689660350424303357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200879 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200861.P15689660350424303357

/-! ## A200861.P6705971354621008539

`p?[or(A035214(n), A200879(n+1))]`
-/

namespace A200861.P6705971354621008539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035214 n) (A200879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A200861.P6705971354621008539

/-!
# A200862: G.f.: (1-2*x^2)/(1-2*x-5*x^2+9*x^3).

The programs for A200862, the canonical program `A200862.P13432163804005641005` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200862 has offset 0).

The definition of A200862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200862.P13432163804005641005

`2*a(n-1)+5*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200862

/-- `2*a(n-1)+5*a(n-2)-9*a(n-3)` -/
def P13432163804005641005.Spec : Prop :=
  ∀ n, P13432163804005641005.a n = A200862 n

theorem P13432163804005641005.correct : P13432163804005641005.Spec := by
  intro n
  simp only [A200862]

end A200862

/-! ## A200862.P15520793753679393810

`ogf((1-2x^2)/(1-2x-5x^2+9x^3))`
-/

namespace A200862.P15520793753679393810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -2, -5, 9] n

end

end A200862.P15520793753679393810

namespace A200862

/-- `ogf((1-2x^2)/(1-2x-5x^2+9x^3))` -/
def P15520793753679393810.Spec : Prop :=
  ∀ n, P15520793753679393810.a n = A200862 n

end A200862

/-!
# A200863: List of numbers k without 1's in their decimal expansion such that k is equal to the total number of 1's in the decimal expansion of all positive numbers < k.

The programs for A200863, there is no canonical definition to state claims against.
-/

/-! ## A200863.P13788290568196201656

`A094800(comp[∑[6*n]]+1)`
-/

namespace A200863.P13788290568196201656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094800 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A200863.P13788290568196201656

/-!
# A200864: Expansion of 1/((1+x)*(1-3*x)*(1-5*x)).

The programs for A200864, the canonical program `A200864.P17136842471628114008` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200864 has offset 0).

The definition of A200864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-7x+7x^2+15x^3))` (program `A200864.P17136842471628114008`, by `A200864.P17136842471628114008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200864.P17136842471628114008

`ogf(1/(1-7x+7x^2+15x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200864

/-- `ogf(1/(1-7x+7x^2+15x^3))` -/
def P17136842471628114008.Spec : Prop :=
  ∀ n, P17136842471628114008.a n = A200864 n

theorem P17136842471628114008.correct : P17136842471628114008.Spec := by
  intro n
  simp only [A200864]

end A200864

/-! ## A200864.P2186375841502374672

`2*a(n-1)+3*a(n-2)+5^n` with `a(0)=1, a(1)=7`
-/

namespace A200864.P2186375841502374672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 5 ^ n

end

end A200864.P2186375841502374672

namespace A200864

/-- `2*a(n-1)+3*a(n-2)+5^n` -/
def P2186375841502374672.Spec : Prop :=
  ∀ n, (P2186375841502374672.a n : ℤ) = A200864 n

end A200864

/-! ## A200864.P13676112092478224440

`(50*5^n-27*3^n+(-1)^n)/24`
-/

namespace A200864.P13676112092478224440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((50 * 5 ^ n : ℤ) - (27 * 3 ^ n : ℤ) + (-1) ^ n : ℚ) / 24

end

end A200864.P13676112092478224440

namespace A200864

/-- `(50*5^n-27*3^n+(-1)^n)/24` -/
def P13676112092478224440.Spec : Prop :=
  ∀ n, P13676112092478224440.a n = (A200864 n : ℚ)

end A200864

/-! ## A200864.P5413307104798808991

`abs(∑[(-5)^n])+3*a(n-1)` with `a(0)=1`
-/

namespace A200864.P5413307104798808991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |∑ j ∈ Finset.range (n + 1), f1 j| + 3 * a (n - 1)

end

end A200864.P5413307104798808991

namespace A200864

/-- `abs(∑[(-5)^n])+3*a(n-1)` -/
def P5413307104798808991.Spec : Prop :=
  ∀ n, P5413307104798808991.a n = A200864 n

end A200864

/-! ## A200864.P6059141789091105647

`A081625(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A200864.P6059141789091105647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A081625 n + a (n - 2)

end

end A200864.P6059141789091105647

namespace A200864

/-- `A081625(n)+a(n-2)` -/
def P6059141789091105647.Spec : Prop :=
  ∀ n, P6059141789091105647.a n = A200864 n

end A200864

/-! ## A200864.P8208724124087725840

`A005059(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A200864.P8208724124087725840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) - a (n - 1)

end

end A200864.P8208724124087725840

namespace A200864

/-- `A005059(n+1)-a(n-1)` -/
def P8208724124087725840.Spec : Prop :=
  ∀ n, P8208724124087725840.a n = A200864 n

end A200864

/-! ## A200864.P872031984007777943

`A039302(n+1)-A039300(n+1)`
-/

namespace A200864.P872031984007777943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039302 (n + 1) - A039300 (n + 1)

end

end A200864.P872031984007777943

namespace A200864

/-- `A039302(n+1)-A039300(n+1)` -/
def P872031984007777943.Spec : Prop :=
  ∀ n, P872031984007777943.a n = A200864 n

end A200864

/-! ## A200864.P16385092975174749160

`∑[A231103(n+2)-A015518(n+1)]`
-/

namespace A200864.P16385092975174749160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231103 (n + 2) - A015518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200864.P16385092975174749160

namespace A200864

/-- `∑[A231103(n+2)-A015518(n+1)]` -/
def P16385092975174749160.Spec : Prop :=
  ∀ n, P16385092975174749160.a n = A200864 n

end A200864

/-! ## A200864.P17979667207978828656

`2*A033115(n+1)-A033113(n+1)`
-/

namespace A200864.P17979667207978828656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033115 (n + 1) - A033113 (n + 1)

end

end A200864.P17979667207978828656

namespace A200864

/-- `2*A033115(n+1)-A033113(n+1)` -/
def P17979667207978828656.Spec : Prop :=
  ∀ n, P17979667207978828656.a n = A200864 n

end A200864

/-! ## A200864.P530561525693586733

`A039302(n+1)-A039303(n+1)/A023105(n+1)`
-/

namespace A200864.P530561525693586733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039302 (n + 1) : ℚ) - (A039303 (n + 1) : ℚ) / (A023105 (n + 1) : ℚ)

end

end A200864.P530561525693586733

namespace A200864

/-- `A039302(n+1)-A039303(n+1)/A023105(n+1)` -/
def P530561525693586733.Spec : Prop :=
  ∀ n, P530561525693586733.a n = (A200864 n : ℚ)

end A200864

/-! ## A200864.P35173060198144155

`A000993(n+1)/A023105(n+1)-A039300(n+1)`
-/

namespace A200864.P35173060198144155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000993 (n + 1) : ℚ) / (A023105 (n + 1) : ℚ) - (A039300 (n + 1) : ℚ)

end

end A200864.P35173060198144155

namespace A200864

/-- `A000993(n+1)/A023105(n+1)-A039300(n+1)` -/
def P35173060198144155.Spec : Prop :=
  ∀ n, P35173060198144155.a n = (A200864 n : ℚ)

end A200864

/-!
# A200865: Number of 0..2 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200865, the canonical program `A200865.P6471226229975882820` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200865 has offset 1).

The definition of A200865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200865.P12741868897131124281

`ogf((17+3x+3x^2+9x^3)/(1-2x-x^4))`
-/

namespace A200865.P12741868897131124281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 3, 3, 9] [1, -2, 0, 0, -1] n

end

end A200865.P12741868897131124281

namespace A200865

/-- `ogf((17+3x+3x^2+9x^3)/(1-2x-x^4))` -/
def P12741868897131124281.Spec : Prop :=
  ∀ n, P12741868897131124281.a n = A200865 (n + 1)

end A200865

/-! ## A200865.P6471226229975882820

`2*a(n-1)+a(n-4)` with `a(0)=17, a(1)=37, a(2)=77, a(3)=163`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200865

/-- `2*a(n-1)+a(n-4)` -/
def P6471226229975882820.Spec : Prop :=
  ∀ n, (P6471226229975882820.a n : ℤ) = A200865 (n + 1)

theorem P6471226229975882820.correct : P6471226229975882820.Spec := by
  intro n
  simp only [A200865, Nat.add_sub_cancel]

end A200865

/-! ## A200865.P12041748992975245858

`A217450(4+n)`
-/

namespace A200865.P12041748992975245858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217450 (4 + n)

end

end A200865.P12041748992975245858

namespace A200865

/-- `A217450(4+n)` -/
def P12041748992975245858.Spec : Prop :=
  ∀ n, P12041748992975245858.a n = A200865 (n + 1)

end A200865

/-! ## A200865.P16108122621589071674

`sqrt(A207854(n+3))`
-/

namespace A200865.P16108122621589071674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207854 (n + 3) : ℝ)

end

end A200865.P16108122621589071674

namespace A200865

/-- `sqrt(A207854(n+3))` -/
def P16108122621589071674.Spec : Prop :=
  ∀ n, P16108122621589071674.a n = (A200865 (n + 1) : ℝ)

end A200865

/-! ## A200865.P12910491548112139674

`A200871(∑[n+2])`
-/

namespace A200865.P12910491548112139674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200865.P12910491548112139674

namespace A200865

/-- `A200871(∑[n+2])` -/
def P12910491548112139674.Spec : Prop :=
  ∀ n, P12910491548112139674.a n = A200865 (n + 1)

end A200865

/-! ## A200865.P885288865219287098

`or(1, A200871(A000096(n+1)))`
-/

namespace A200865.P885288865219287098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200871 (A000096 (n + 1)).toNat)

end

end A200865.P885288865219287098

namespace A200865

/-- `or(1, A200871(A000096(n+1)))` -/
def P885288865219287098.Spec : Prop :=
  ∀ n, P885288865219287098.a n = A200865 (n + 1)

end A200865

/-! ## A200865.P14815805433124949536

`A200871(A000096(n+1))+A000007(n+1)`
-/

namespace A200865.P14815805433124949536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A200865.P14815805433124949536

namespace A200865

/-- `A200871(A000096(n+1))+A000007(n+1)` -/
def P14815805433124949536.Spec : Prop :=
  ∀ n, P14815805433124949536.a n = A200865 (n + 1)

end A200865

/-! ## A200865.P11245022978058762648

`A200871(A000096(n+1))+2%A090629(n)`
-/

namespace A200865.P11245022978058762648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 1)).toNat + Int.tmod 2 (A090629 n)

end

end A200865.P11245022978058762648

namespace A200865

/-- `A200871(A000096(n+1))+2%A090629(n)` -/
def P11245022978058762648.Spec : Prop :=
  ∀ n, P11245022978058762648.a n = A200865 (n + 1)

end A200865

/-! ## A200865.P11855776131547700627

`A200871(A000096(n+1))+(n+1)%A055770(n+1)`
-/

namespace A200865.P11855776131547700627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 1)).toNat + Int.tmod (n + 1 : ℤ) (A055770 (n + 1))

end

end A200865.P11855776131547700627

namespace A200865

/-- `A200871(A000096(n+1))+(n+1)%A055770(n+1)` -/
def P11855776131547700627.Spec : Prop :=
  ∀ n, P11855776131547700627.a n = A200865 (n + 1)

end A200865

/-! ## A200865.P3953255180008542332

`A200871(A000096(n+1))+A008683(A008574(n+1))`
-/

namespace A200865.P3953255180008542332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 1)).toNat + A008683 (A008574 (n + 1)).toNat

end

end A200865.P3953255180008542332

namespace A200865

/-- `A200871(A000096(n+1))+A008683(A008574(n+1))` -/
def P3953255180008542332.Spec : Prop :=
  ∀ n, P3953255180008542332.a n = A200865 (n + 1)

end A200865

/-!
# A200866: Number of 0..3 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200866, the canonical program `A200866.P92281322605416657` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200866 has offset 1).

The definition of A200866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200866.P8419385464545744002

`ogf((36+22x+12x^2+36x^3+16x^4)/(1-2x-x^2-2x^4-x^5))`
-/

namespace A200866.P8419385464545744002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [36, 22, 12, 36, 16] [1, -2, -1, 0, -2, -1] n

end

end A200866.P8419385464545744002

namespace A200866

/-- `ogf((36+22x+12x^2+36x^3+16x^4)/(1-2x-x^2-2x^4-x^5))` -/
def P8419385464545744002.Spec : Prop :=
  ∀ n, P8419385464545744002.a n = A200866 (n + 1)

end A200866

/-! ## A200866.P92281322605416657

`A218051(n+4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A200866

/-- `A218051(n+4)` -/
def P92281322605416657.Spec : Prop :=
  ∀ n, P92281322605416657.a n = A200866 (n + 1)

theorem P92281322605416657.correct : P92281322605416657.Spec := by
  intro n
  simp only [A200866, Nat.add_sub_cancel]

end A200866

/-! ## A200866.P11222950062781578888

`A200871(∑[n+3]+1)`
-/

namespace A200866.P11222950062781578888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200866.P11222950062781578888

namespace A200866

/-- `A200871(∑[n+3]+1)` -/
def P11222950062781578888.Spec : Prop :=
  ∀ n, P11222950062781578888.a n = A200866 (n + 1)

end A200866

/-! ## A200866.P11910497174918498641

`lcm(2, A200871(A034856(n+2)))`
-/

namespace A200866.P11910497174918498641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200871 (A034856 (n + 2)).toNat)

end

end A200866.P11910497174918498641

namespace A200866

/-- `lcm(2, A200871(A034856(n+2)))` -/
def P11910497174918498641.Spec : Prop :=
  ∀ n, (P11910497174918498641.a n : ℤ) = A200866 (n + 1)

end A200866

/-! ## A200866.P8077236103309260307

`A200871(A034856(n+2))%A200868(n+1)`
-/

namespace A200866.P8077236103309260307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200871 (A034856 (n + 2)).toNat) (A200868 (n + 1))

end

end A200866.P8077236103309260307

namespace A200866

/-- `A200871(A034856(n+2))%A200868(n+1)` -/
def P8077236103309260307.Spec : Prop :=
  ∀ n, P8077236103309260307.a n = A200866 (n + 1)

end A200866

/-! ## A200866.P16799867497431072834

`sqrt(A207947(n+3))`
-/

namespace A200866.P16799867497431072834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207947 (n + 3) : ℝ)

end

end A200866.P16799867497431072834

namespace A200866

/-- `sqrt(A207947(n+3))` -/
def P16799867497431072834.Spec : Prop :=
  ∀ n, P16799867497431072834.a n = (A200866 (n + 1) : ℝ)

end A200866

/-!
# A200867: Number of 0..4 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200867, the canonical program `A200867.P18143255153193953053` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200867 has offset 1).

The definition of A200867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200867.P18143255153193953053

`ogf((65+47x^2+102x^3+10x^4+30x^5+25x^6)/(1-3x+x^2-x^3-4x^4-x^6-x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200867

/-- `ogf((65+47x^2+102x^3+10x^4+30x^5+25x^6)/(1-3x+x^2-x^3-4x^4-x^6-x^7))` -/
def P18143255153193953053.Spec : Prop :=
  ∀ n, P18143255153193953053.a n = A200867 (n + 1)

theorem P18143255153193953053.correct : P18143255153193953053.Spec := by
  intro n
  simp only [A200867, Nat.add_sub_cancel]

end A200867

/-! ## A200867.P6902769102415894583

`A200871(∑[n+4]+3)`
-/

namespace A200867.P6902769102415894583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200867.P6902769102415894583

namespace A200867

/-- `A200871(∑[n+4]+3)` -/
def P6902769102415894583.Spec : Prop :=
  ∀ n, P6902769102415894583.a n = A200867 (n + 1)

end A200867

/-! ## A200867.P324690843061260081

`or(1, A200871(A055998(n+2)))`
-/

namespace A200867.P324690843061260081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200871 (A055998 (n + 2)).toNat)

end

end A200867.P324690843061260081

namespace A200867

/-- `or(1, A200871(A055998(n+2)))` -/
def P324690843061260081.Spec : Prop :=
  ∀ n, P324690843061260081.a n = A200867 (n + 1)

end A200867

/-! ## A200867.P12622719422266598247

`A200871(A055998(n+2))+A000007(n+1)`
-/

namespace A200867.P12622719422266598247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A055998 (n + 2)).toNat + A000007 (n + 1)

end

end A200867.P12622719422266598247

namespace A200867

/-- `A200871(A055998(n+2))+A000007(n+1)` -/
def P12622719422266598247.Spec : Prop :=
  ∀ n, P12622719422266598247.a n = A200867 (n + 1)

end A200867

/-! ## A200867.P15982365780350458243

`A200871(A055998(n+2))%A200868(n+1)`
-/

namespace A200867.P15982365780350458243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200871 (A055998 (n + 2)).toNat) (A200868 (n + 1))

end

end A200867.P15982365780350458243

namespace A200867

/-- `A200871(A055998(n+2))%A200868(n+1)` -/
def P15982365780350458243.Spec : Prop :=
  ∀ n, P15982365780350458243.a n = A200867 (n + 1)

end A200867

/-! ## A200867.P17518461722166519506

`A007318(A000217(n))*A200871(A055998(n+2))`
-/

namespace A200867.P17518461722166519506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A200871 (A055998 (n + 2)).toNat

end

end A200867.P17518461722166519506

namespace A200867

/-- `A007318(A000217(n))*A200871(A055998(n+2))` -/
def P17518461722166519506.Spec : Prop :=
  ∀ n, P17518461722166519506.a n = A200867 (n + 1)

end A200867

/-!
# A200868: Number of 0..5 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200868, the canonical program `A200868.P5205346976392674708` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200868 has offset 1).

The definition of A200868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200868.P5205346976392674708

`ogf((106+38x+100x^2+276x^3+134x^4+96x^5+114x^6+36x^7)/(1-3x-x^3-7x^4-3x^5-2x^6-3x^7-x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200868

/-- `ogf((106+38x+100x^2+276x^3+134x^4+96x^5+114x^6+36x^7)/(1-3x-x^3-7x^4-3x^5-2x^6-3x^7-x^8))` -/
def P5205346976392674708.Spec : Prop :=
  ∀ n, P5205346976392674708.a n = A200868 (n + 1)

theorem P5205346976392674708.correct : P5205346976392674708.Spec := by
  intro n
  simp only [A200868, Nat.add_sub_cancel]

end A200868

/-! ## A200868.P7305398346719607988

`A200871(∑[n+5]+6)`
-/

namespace A200868.P7305398346719607988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200868.P7305398346719607988

namespace A200868

/-- `A200871(∑[n+5]+6)` -/
def P7305398346719607988.Spec : Prop :=
  ∀ n, P7305398346719607988.a n = A200868 (n + 1)

end A200868

/-! ## A200868.P12795903475937598766

`lcm(2, A200871(A046691(n+3)))`
-/

namespace A200868.P12795903475937598766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200871 (A046691 (n + 3)).toNat)

end

end A200868.P12795903475937598766

namespace A200868

/-- `lcm(2, A200871(A046691(n+3)))` -/
def P12795903475937598766.Spec : Prop :=
  ∀ n, (P12795903475937598766.a n : ℤ) = A200868 (n + 1)

end A200868

/-! ## A200868.P2656200339230629555

`xor(1, A200871(A000124(n+5)-5)+1)`
-/

namespace A200868.P2656200339230629555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A200871 (A000124 (n + 5) - 5).toNat + 1)

end

end A200868.P2656200339230629555

namespace A200868

/-- `xor(1, A200871(A000124(n+5)-5)+1)` -/
def P2656200339230629555.Spec : Prop :=
  ∀ n, P2656200339230629555.a n = A200868 (n + 1)

end A200868

/-! ## A200868.P2114931068750481060

`A033999(n)²*A200871(A046691(n+3))`
-/

namespace A200868.P2114931068750481060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A200871 (A046691 (n + 3)).toNat

end

end A200868.P2114931068750481060

namespace A200868

/-- `A033999(n)²*A200871(A046691(n+3))` -/
def P2114931068750481060.Spec : Prop :=
  ∀ n, P2114931068750481060.a n = A200868 (n + 1)

end A200868

/-! ## A200868.P11534534327775679474

`A200871(A046691(n+3))+C(A055254(n), 64)`
-/

namespace A200868.P11534534327775679474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A046691 (n + 3)).toNat + (Nat.choose (A055254 n).toNat 64 : ℤ)

end

end A200868.P11534534327775679474

namespace A200868

/-- `A200871(A046691(n+3))+C(A055254(n), 64)` -/
def P11534534327775679474.Spec : Prop :=
  ∀ n, P11534534327775679474.a n = A200868 (n + 1)

end A200868

/-! ## A200868.P2956214033521278041

`A200871(A000124(n+5)-5)%A200883(n+1)`
-/

namespace A200868.P2956214033521278041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200871 (A000124 (n + 5) - 5).toNat) (A200883 (n + 1))

end

end A200868.P2956214033521278041

namespace A200868

/-- `A200871(A000124(n+5)-5)%A200883(n+1)` -/
def P2956214033521278041.Spec : Prop :=
  ∀ n, P2956214033521278041.a n = A200868 (n + 1)

end A200868

/-! ## A200868.P11745335867744428996

`(A280193(Δ[n²])+2)*A200871(A000124(n+5)-5)`
-/

namespace A200868.P11745335867744428996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2) * A200871 (A000124 (n + 5) - 5).toNat

end

end A200868.P11745335867744428996

namespace A200868

/-- `(A280193(Δ[n²])+2)*A200871(A000124(n+5)-5)` -/
def P11745335867744428996.Spec : Prop :=
  ∀ n, P11745335867744428996.a n = A200868 (n + 1)

end A200868

/-! ## A200868.P12356043731625485528

`A200871(A000124(n+5)-5)^A000005(n+1)^C(2, n+2)`
-/

namespace A200868.P12356043731625485528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200871 (A000124 (n + 5) - 5).toNat : ℚ) ^ (A000005 (n + 1) ^ Nat.choose 2 (n + 2) : ℤ)

end

end A200868.P12356043731625485528

namespace A200868

/-- `A200871(A000124(n+5)-5)^A000005(n+1)^C(2, n+2)` -/
def P12356043731625485528.Spec : Prop :=
  ∀ n, P12356043731625485528.a n = (A200868 (n + 1) : ℚ)

end A200868

/-! ## A200868.P9886295115997416620

`A200871(A046691(n+3))*A340273(A049437(n+1))`
-/

namespace A200868.P9886295115997416620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A046691 (n + 3)).toNat * A340273 (A049437 (n + 1)).toNat

end

end A200868.P9886295115997416620

namespace A200868

/-- `A200871(A046691(n+3))*A340273(A049437(n+1))` -/
def P9886295115997416620.Spec : Prop :=
  ∀ n, P9886295115997416620.a n = A200868 (n + 1)

end A200868

/-!
# A200869: Number of 0..6 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200869, the canonical program `A200869.P3860383117214996840` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200869 has offset 1).

The definition of A200869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200869.P3860383117214996840

`ogf((161-49x+266x^2+462x^3+93x^4+389x^5+310x^6+70x^7+105x^8+49x^9)/(1-4x+3x^2-4x^3-9x^4-7x^6-6x^7-x^8-2x^9-x^10))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200869

/-- `ogf((161-49x+266x^2+462x^3+93x^4+389x^5+310x^6+70x^7+105x^8+49x^9)/(1-4x+3x^2-4x^3-9x^4-7x^6-6x^7-x^8-2x^9-x^10))` -/
def P3860383117214996840.Spec : Prop :=
  ∀ n, P3860383117214996840.a n = A200869 (n + 1)

theorem P3860383117214996840.correct : P3860383117214996840.Spec := by
  intro n
  simp only [A200869, Nat.add_sub_cancel]

end A200869

/-! ## A200869.P18406845278417916346

`A200871(A052905(n+3))`
-/

namespace A200869.P18406845278417916346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A052905 (n + 3)).toNat

end

end A200869.P18406845278417916346

namespace A200869

/-- `A200871(A052905(n+3))` -/
def P18406845278417916346.Spec : Prop :=
  ∀ n, P18406845278417916346.a n = A200869 (n + 1)

end A200869

/-! ## A200869.P6526626179909633528

`A200871(A027379(n+4)-2)`
-/

namespace A200869.P6526626179909633528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A027379 (n + 4) - 2).toNat

end

end A200869.P6526626179909633528

namespace A200869

/-- `A200871(A027379(n+4)-2)` -/
def P6526626179909633528.Spec : Prop :=
  ∀ n, P6526626179909633528.a n = A200869 (n + 1)

end A200869

/-! ## A200869.P13124484321114558909

`A200871(A000124(n+6)-6)`
-/

namespace A200869.P13124484321114558909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000124 (n + 6) - 6).toNat

end

end A200869.P13124484321114558909

namespace A200869

/-- `A200871(A000124(n+6)-6)` -/
def P13124484321114558909.Spec : Prop :=
  ∀ n, P13124484321114558909.a n = A200869 (n + 1)

end A200869

/-! ## A200869.P5410519969307283203

`A200871(Δ[Δ[A006504(n+1)]])`
-/

namespace A200869.P5410519969307283203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (f1 (n + 1) - f1 n).toNat

end

end A200869.P5410519969307283203

namespace A200869

/-- `A200871(Δ[Δ[A006504(n+1)]])` -/
def P5410519969307283203.Spec : Prop :=
  ∀ n, P5410519969307283203.a n = A200869 (n + 1)

end A200869

/-! ## A200869.P6048838494014437733

`A200871(Δ[A023545(n+2)]-1)`
-/

namespace A200869.P6048838494014437733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (f1 (n + 1) - f1 n - 1).toNat

end

end A200869.P6048838494014437733

namespace A200869

/-- `A200871(Δ[A023545(n+2)]-1)` -/
def P6048838494014437733.Spec : Prop :=
  ∀ n, P6048838494014437733.a n = A200869 (n + 1)

end A200869

/-! ## A200869.P2962263760765004447

`A200871(A034856(n+2)+A008585(n+4))`
-/

namespace A200869.P2962263760765004447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A034856 (n + 2) + A008585 (n + 4)).toNat

end

end A200869.P2962263760765004447

namespace A200869

/-- `A200871(A034856(n+2)+A008585(n+4))` -/
def P2962263760765004447.Spec : Prop :=
  ∀ n, P2962263760765004447.a n = A200869 (n + 1)

end A200869

/-! ## A200869.P12581188691583682040

`A200871(A004280(n+5)+A000096(n+3))`
-/

namespace A200869.P12581188691583682040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A004280 (n + 5) + A000096 (n + 3)).toNat

end

end A200869.P12581188691583682040

namespace A200869

/-- `A200871(A004280(n+5)+A000096(n+3))` -/
def P12581188691583682040.Spec : Prop :=
  ∀ n, P12581188691583682040.a n = A200869 (n + 1)

end A200869

/-! ## A200869.P13506490895270016465

`A200871(A016777(2*n+5)+A000217(n))`
-/

namespace A200869.P13506490895270016465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A016777 (2 * n + 5) + A000217 n).toNat

end

end A200869.P13506490895270016465

namespace A200869

/-- `A200871(A016777(2*n+5)+A000217(n))` -/
def P13506490895270016465.Spec : Prop :=
  ∀ n, P13506490895270016465.a n = A200869 (n + 1)

end A200869

/-!
# A200870: Number of 0..7 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200870, there is no canonical definition to state claims against.
-/

/-! ## A200870.P1305556172853757259

`A200871(A055999(n+4))`
-/

namespace A200870.P1305556172853757259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A055999 (n + 4)).toNat

end

end A200870.P1305556172853757259

/-! ## A200870.P8989691475688376707

`A200871(A052905(n+4)-1)`
-/

namespace A200870.P8989691475688376707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A052905 (n + 4) - 1).toNat

end

end A200870.P8989691475688376707

/-! ## A200870.P73888412227092865

`A200871(A000096(n+6)-5)`
-/

namespace A200870.P73888412227092865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 6) - 5).toNat

end

end A200870.P73888412227092865

/-! ## A200870.P2102523263683642104

`A200871(A000124(n+7)-7)`
-/

namespace A200870.P2102523263683642104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000124 (n + 7) - 7).toNat

end

end A200870.P2102523263683642104

/-! ## A200870.P2269355533367673893

`A200871(xor(1, 2*n)+A000124(n+5)+5)`
-/

namespace A200870.P2269355533367673893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 ((Nat.xor 1 (2 * n) : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A200870.P2269355533367673893

/-! ## A200870.P2394221333761973038

`A200871(A005408(n)+A161680(n+6)+6)`
-/

namespace A200870.P2394221333761973038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A005408 n + (A161680 (n + 6) + 6)).toNat

end

end A200870.P2394221333761973038

/-!
# A200872: Number of 0..n arrays x(0..3) of 4 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200872, the canonical program `A200872.P522243706388585716` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200872 has offset 1).

The definition of A200872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200872.P522243706388585716

`∑[∑[∑[2*(n+4)]]+1]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200872

/-- `∑[∑[∑[2*(n+4)]]+1]+1` -/
def P522243706388585716.Spec : Prop :=
  ∀ n, (P522243706388585716.a n : ℤ) = A200872 (n + 1)

theorem P522243706388585716.correct : P522243706388585716.Spec := by
  intro n
  simp only [A200872, Nat.add_sub_cancel]

end A200872

/-! ## A200872.P14540945761293726988

`ogf((10-13x+9x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A200872.P14540945761293726988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -13, 9, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A200872.P14540945761293726988

namespace A200872

/-- `ogf((10-13x+9x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14540945761293726988.Spec : Prop :=
  ∀ n, P14540945761293726988.a n = A200872 (n + 1)

end A200872

/-! ## A200872.P9181033217271685643

`∑[A054977(n)+∑[∑[2*(n+4)]]]`
-/

namespace A200872.P9181033217271685643
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200872.P9181033217271685643

namespace A200872

/-- `∑[A054977(n)+∑[∑[2*(n+4)]]]` -/
def P9181033217271685643.Spec : Prop :=
  ∀ n, P9181033217271685643.a n = A200872 (n + 1)

end A200872

/-! ## A200872.P7313811750769997975

`A207255(n+2)/10`
-/

namespace A200872.P7313811750769997975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207255 (n + 2) : ℚ) / 10

end

end A200872.P7313811750769997975

namespace A200872

/-- `A207255(n+2)/10` -/
def P7313811750769997975.Spec : Prop :=
  ∀ n, P7313811750769997975.a n = (A200872 (n + 1) : ℚ)

end A200872

/-! ## A200872.P13475449965111615145

`Δ[A130857(n+1)+A006322(n+1)]`
-/

namespace A200872.P13475449965111615145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130857 (n + 1) + A006322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200872.P13475449965111615145

namespace A200872

/-- `Δ[A130857(n+1)+A006322(n+1)]` -/
def P13475449965111615145.Spec : Prop :=
  ∀ n, P13475449965111615145.a n = A200872 (n + 1)

end A200872

/-! ## A200872.P13780340972736455027

`Δ[a(n-1)+A050509(n)+A002415(n)]` with `a(0)=3`
-/

namespace A200872.P13780340972736455027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (A050509 n + A002415 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200872.P13780340972736455027

namespace A200872

/-- `Δ[a(n-1)+A050509(n)+A002415(n)]` -/
def P13780340972736455027.Spec : Prop :=
  ∀ n, P13780340972736455027.a n = A200872 (n + 1)

end A200872

/-! ## A200872.P18266586497347774010

`sqrt(A207950(2*(n+1)))`
-/

namespace A200872.P18266586497347774010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207950 (2 * (n + 1)) : ℝ)

end

end A200872.P18266586497347774010

namespace A200872

/-- `sqrt(A207950(2*(n+1)))` -/
def P18266586497347774010.Spec : Prop :=
  ∀ n, P18266586497347774010.a n = (A200872 (n + 1) : ℝ)

end A200872

/-! ## A200872.P4671709699551923393

`Δ[a(n-1)+A001752(2*n)-A000537(n)]` with `a(0)=3`
-/

namespace A200872.P4671709699551923393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (A001752 (2 * n) - A000537 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200872.P4671709699551923393

namespace A200872

/-- `Δ[a(n-1)+A001752(2*n)-A000537(n)]` -/
def P4671709699551923393.Spec : Prop :=
  ∀ n, P4671709699551923393.a n = A200872 (n + 1)

end A200872

/-! ## A200872.P15348842109377034164

`A200871(∑[n+1]+2)`
-/

namespace A200872.P15348842109377034164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200872.P15348842109377034164

namespace A200872

/-- `A200871(∑[n+1]+2)` -/
def P15348842109377034164.Spec : Prop :=
  ∀ n, P15348842109377034164.a n = A200872 (n + 1)

end A200872

/-!
# A200873: Number of 0..n arrays x(0..4) of 5 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200873, the canonical program `A200873.P4632682688743523769` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200873 has offset 1).

The definition of A200873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200873.P4632682688743523769

`ogf((16-19x+14x^2-14x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200873

/-- `ogf((16-19x+14x^2-14x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4632682688743523769.Spec : Prop :=
  ∀ n, P4632682688743523769.a n = A200873 (n + 1)

theorem P4632682688743523769.correct : P4632682688743523769.Spec := by
  intro n
  simp only [A200873, Nat.add_sub_cancel]

end A200873

/-! ## A200873.P1780275994463178651

`A207256(2+n)/16`
-/

namespace A200873.P1780275994463178651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207256 (2 + n) : ℚ) / 16

end

end A200873.P1780275994463178651

namespace A200873

/-- `A207256(2+n)/16` -/
def P1780275994463178651.Spec : Prop :=
  ∀ n, P1780275994463178651.a n = (A200873 (n + 1) : ℚ)

end A200873

/-! ## A200873.P2422064378650421209

`sqrt(A207951(2*(n+1)))`
-/

namespace A200873.P2422064378650421209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207951 (2 * (n + 1)) : ℝ)

end

end A200873.P2422064378650421209

namespace A200873

/-- `sqrt(A207951(2*(n+1)))` -/
def P2422064378650421209.Spec : Prop :=
  ∀ n, P2422064378650421209.a n = (A200873 (n + 1) : ℝ)

end A200873

/-! ## A200873.P1075785236623853084

`A200871(∑[n+2]+4)`
-/

namespace A200873.P1075785236623853084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200873.P1075785236623853084

namespace A200873

/-- `A200871(∑[n+2]+4)` -/
def P1075785236623853084.Spec : Prop :=
  ∀ n, P1075785236623853084.a n = A200873 (n + 1)

end A200873

/-! ## A200873.P8448559745114402192

`lcm(gcd(2, n), A200871(A167614(n+1)))`
-/

namespace A200873.P8448559745114402192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A200871 (A167614 (n + 1)).toNat)

end

end A200873.P8448559745114402192

namespace A200873

/-- `lcm(gcd(2, n), A200871(A167614(n+1)))` -/
def P8448559745114402192.Spec : Prop :=
  ∀ n, (P8448559745114402192.a n : ℤ) = A200873 (n + 1)

end A200873

/-! ## A200873.P4429061456216620093

`or(A000035(n), A200871(A167614(n+1)))`
-/

namespace A200873.P4429061456216620093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A200871 (A167614 (n + 1)).toNat)

end

end A200873.P4429061456216620093

namespace A200873

/-- `or(A000035(n), A200871(A167614(n+1)))` -/
def P4429061456216620093.Spec : Prop :=
  ∀ n, P4429061456216620093.a n = A200873 (n + 1)

end A200873

/-! ## A200873.P10007477639348694793

`A200871(A167614(n+1))%A200840(n+1)`
-/

namespace A200873.P10007477639348694793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200871 (A167614 (n + 1)).toNat) (A200840 (n + 1))

end

end A200873.P10007477639348694793

namespace A200873

/-- `A200871(A167614(n+1))%A200840(n+1)` -/
def P10007477639348694793.Spec : Prop :=
  ∀ n, P10007477639348694793.a n = A200873 (n + 1)

end A200873

/-!
# A200874: Number of 0..n arrays x(0..5) of 6 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200874, the canonical program `A200874.P16834068092836725484` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200874 has offset 1).

The definition of A200874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200874.P16834068092836725484

`ogf((26-19x+7x^2-28x^3+22x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200874

/-- `ogf((26-19x+7x^2-28x^3+22x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16834068092836725484.Spec : Prop :=
  ∀ n, P16834068092836725484.a n = A200874 (n + 1)

theorem P16834068092836725484.correct : P16834068092836725484.Spec := by
  intro n
  simp only [A200874, Nat.add_sub_cancel]

end A200874

/-! ## A200874.P12561810228348735965

`∏[A207257(n+2)/A207257(n+1)]`
-/

namespace A200874.P12561810228348735965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207257 (n + 2) : ℚ) / (A207257 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200874.P12561810228348735965

namespace A200874

/-- `∏[A207257(n+2)/A207257(n+1)]` -/
def P12561810228348735965.Spec : Prop :=
  ∀ n, P12561810228348735965.a n = (A200874 (n + 1) : ℚ)

end A200874

/-! ## A200874.P10502061315939805014

`sqrt(A207952(2*(n+1)))`
-/

namespace A200874.P10502061315939805014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207952 (2 * (n + 1)) : ℝ)

end

end A200874.P10502061315939805014

namespace A200874

/-- `sqrt(A207952(2*(n+1)))` -/
def P10502061315939805014.Spec : Prop :=
  ∀ n, P10502061315939805014.a n = (A200874 (n + 1) : ℝ)

end A200874

/-! ## A200874.P8144638232121097127

`record[root(A207952(n+1), A020639(n+1))]`
-/

namespace A200874.P8144638232121097127
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207952 (n + 1) : ℝ) ^ (1 / (A020639 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200874.P8144638232121097127

namespace A200874

/-- `record[root(A207952(n+1), A020639(n+1))]` -/
def P8144638232121097127.Spec : Prop :=
  ∀ n, P8144638232121097127.a n = (A200874 (n + 1) : ℝ)

end A200874

/-! ## A200874.P11071897277894314231

`record[root(A207952(n+1), A074473(n+1))]`
-/

namespace A200874.P11071897277894314231
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207952 (n + 1) : ℝ) ^ (1 / (A074473 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200874.P11071897277894314231

namespace A200874

/-- `record[root(A207952(n+1), A074473(n+1))]` -/
def P11071897277894314231.Spec : Prop :=
  ∀ n, P11071897277894314231.a n = (A200874 (n + 1) : ℝ)

end A200874

/-! ## A200874.P10399332322220785540

`root(A207952(2*(n+1)), A020639(2*(n+1)))`
-/

namespace A200874.P10399332322220785540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207952 (2 * (n + 1)) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A200874.P10399332322220785540

namespace A200874

/-- `root(A207952(2*(n+1)), A020639(2*(n+1)))` -/
def P10399332322220785540.Spec : Prop :=
  ∀ n, P10399332322220785540.a n = (A200874 (n + 1) : ℝ)

end A200874

/-! ## A200874.P1864564776742286975

`root(A207952(2*(n+1)), A074473(2*(n+1)))`
-/

namespace A200874.P1864564776742286975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207952 (2 * (n + 1)) : ℝ) ^ (1 / (A074473 (2 * (n + 1)) : ℝ))

end

end A200874.P1864564776742286975

namespace A200874

/-- `root(A207952(2*(n+1)), A074473(2*(n+1)))` -/
def P1864564776742286975.Spec : Prop :=
  ∀ n, P1864564776742286975.a n = (A200874 (n + 1) : ℝ)

end A200874

/-! ## A200874.P1084005671016086017

`A200871(A052905(n)+9)`
-/

namespace A200874.P1084005671016086017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A052905 n + 9).toNat

end

end A200874.P1084005671016086017

namespace A200874

/-- `A200871(A052905(n)+9)` -/
def P1084005671016086017.Spec : Prop :=
  ∀ n, P1084005671016086017.a n = A200874 (n + 1)

end A200874

/-! ## A200874.P10016994425957044448

`A200871(A055999(n)+10)`
-/

namespace A200874.P10016994425957044448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A055999 n + 10).toNat

end

end A200874.P10016994425957044448

namespace A200874

/-- `A200871(A055999(n)+10)` -/
def P10016994425957044448.Spec : Prop :=
  ∀ n, P10016994425957044448.a n = A200874 (n + 1)

end A200874

/-! ## A200874.P12562098016747613728

`A200871(A167614(n+2)+1)`
-/

namespace A200874.P12562098016747613728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A167614 (n + 2) + 1).toNat

end

end A200874.P12562098016747613728

namespace A200874

/-- `A200871(A167614(n+2)+1)` -/
def P12562098016747613728.Spec : Prop :=
  ∀ n, P12562098016747613728.a n = A200874 (n + 1)

end A200874

/-! ## A200874.P9902943286095440805

`A200871(A167499(n+2)-1)`
-/

namespace A200874.P9902943286095440805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A167499 (n + 2) - 1).toNat

end

end A200874.P9902943286095440805

namespace A200874

/-- `A200871(A167499(n+2)-1)` -/
def P9902943286095440805.Spec : Prop :=
  ∀ n, P9902943286095440805.a n = A200874 (n + 1)

end A200874

/-! ## A200874.P13476764527947141008

`A200871(A000096(n+2)+5)`
-/

namespace A200874.P13476764527947141008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 2) + 5).toNat

end

end A200874.P13476764527947141008

namespace A200874

/-- `A200871(A000096(n+2)+5)` -/
def P13476764527947141008.Spec : Prop :=
  ∀ n, P13476764527947141008.a n = A200874 (n + 1)

end A200874

/-! ## A200874.P11961411522692356284

`A200871(Δ[A023545(n+1)-n²])`
-/

namespace A200874.P11961411522692356284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (f1 (n + 1) - f1 n).toNat

end

end A200874.P11961411522692356284

namespace A200874

/-- `A200871(Δ[A023545(n+1)-n²])` -/
def P11961411522692356284.Spec : Prop :=
  ∀ n, P11961411522692356284.a n = A200874 (n + 1)

end A200874

/-!
# A200875: Number of 0..n arrays x(0..6) of 7 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200875, the canonical program `A200875.P5496052879261999711` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200875 has offset 1).

The definition of A200875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200875.P5496052879261999711

`ogf((42+7x-40x^2-55x^3+70x^4-29x^5+8x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200875

/-- `ogf((42+7x-40x^2-55x^3+70x^4-29x^5+8x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P5496052879261999711.Spec : Prop :=
  ∀ n, P5496052879261999711.a n = A200875 (n + 1)

theorem P5496052879261999711.correct : P5496052879261999711.Spec := by
  intro n
  simp only [A200875, Nat.add_sub_cancel]

end A200875

/-! ## A200875.P11506264384883259152

`∏[A207258(n+2)/A207258(n+1)]`
-/

namespace A200875.P11506264384883259152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207258 (n + 2) : ℚ) / (A207258 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A200875.P11506264384883259152

namespace A200875

/-- `∏[A207258(n+2)/A207258(n+1)]` -/
def P11506264384883259152.Spec : Prop :=
  ∀ n, P11506264384883259152.a n = (A200875 (n + 1) : ℚ)

end A200875

/-! ## A200875.P6483996210056569898

`sqrt(A207953(2*(n+1)))`
-/

namespace A200875.P6483996210056569898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207953 (2 * (n + 1)) : ℝ)

end

end A200875.P6483996210056569898

namespace A200875

/-- `sqrt(A207953(2*(n+1)))` -/
def P6483996210056569898.Spec : Prop :=
  ∀ n, P6483996210056569898.a n = (A200875 (n + 1) : ℝ)

end A200875

/-! ## A200875.P13806100273870185686

`A207953(2*n+2)^(1/2)`
-/

namespace A200875.P13806100273870185686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207953 (2 * n + 2) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A200875.P13806100273870185686

namespace A200875

/-- `A207953(2*n+2)^(1/2)` -/
def P13806100273870185686.Spec : Prop :=
  ∀ n, P13806100273870185686.a n = (A200875 (n + 1) : ℝ)

end A200875

/-! ## A200875.P16159303234253275205

`A200871(A167499(n+3))`
-/

namespace A200875.P16159303234253275205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A167499 (n + 3)).toNat

end

end A200875.P16159303234253275205

namespace A200875

/-- `A200871(A167499(n+3))` -/
def P16159303234253275205.Spec : Prop :=
  ∀ n, P16159303234253275205.a n = A200875 (n + 1)

end A200875

/-! ## A200875.P3285411399227090313

`A200871(A056000(n)+15)`
-/

namespace A200875.P3285411399227090313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A056000 n + 15).toNat

end

end A200875.P3285411399227090313

namespace A200875

/-- `A200871(A056000(n)+15)` -/
def P3285411399227090313.Spec : Prop :=
  ∀ n, P3285411399227090313.a n = A200875 (n + 1)

end A200875

/-! ## A200875.P11041614440813112682

`A200871(A052905(n+3)-(2*n+1))`
-/

namespace A200875.P11041614440813112682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A200875.P11041614440813112682

namespace A200875

/-- `A200871(A052905(n+3)-(2*n+1))` -/
def P11041614440813112682.Spec : Prop :=
  ∀ n, P11041614440813112682.a n = A200875 (n + 1)

end A200875

/-! ## A200875.P1845009284745275785

`A200871(A038722(Δ[A023545(n+1)]))`
-/

namespace A200875.P1845009284745275785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A200875.P1845009284745275785

namespace A200875

/-- `A200871(A038722(Δ[A023545(n+1)]))` -/
def P1845009284745275785.Spec : Prop :=
  ∀ n, P1845009284745275785.a n = A200875 (n + 1)

end A200875

/-!
# A200876: Number of 0..n arrays x(0..7) of 8 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200876, there is no canonical definition to state claims against.
-/

/-! ## A200876.P16678842018388037645

`A200871(A167499(n+4)+1)`
-/

namespace A200876.P16678842018388037645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A167499 (n + 4) + 1).toNat

end

end A200876.P16678842018388037645

/-! ## A200876.P13380542104418375581

`A200871(A167614(n+4)+3)`
-/

namespace A200876.P13380542104418375581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A167614 (n + 4) + 3).toNat

end

end A200876.P13380542104418375581

/-! ## A200876.P1858839292776311592

`A200871(A000217(n+5)+6)`
-/

namespace A200876.P1858839292776311592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000217 (n + 5) + 6).toNat

end

end A200876.P1858839292776311592

/-! ## A200876.P13385449767880436142

`A200871(A056000(n+1)+16)`
-/

namespace A200876.P13385449767880436142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A056000 (n + 1) + 16).toNat

end

end A200876.P13385449767880436142

/-! ## A200876.P10943919619389186357

`A200871(A020715(A000217(n+5)))`
-/

namespace A200876.P10943919619389186357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A020715 (A000217 (n + 5)).toNat).toNat

end

end A200876.P10943919619389186357

/-! ## A200876.P1871934364837889666

`A200871(A000096(n+6)-A005843(n+3))`
-/

namespace A200876.P1871934364837889666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A200876.P1871934364837889666

/-! ## A200876.P14419117403550498621

`A200871(A005843(n+8)+A000096(n+2))`
-/

namespace A200876.P14419117403550498621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A200876.P14419117403550498621

/-!
# A200877: Number of 0..n arrays x(0..8) of 9 elements without any interior element greater than both neighbors or less than both neighbors.

The programs for A200877, there is no canonical definition to state claims against.
-/

/-! ## A200877.P12277498826351547749

`A200871(A167499(n+5)+2)`
-/

namespace A200877.P12277498826351547749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A167499 (n + 5) + 2).toNat

end

end A200877.P12277498826351547749

/-! ## A200877.P7352344274753086751

`A200871(A000217(n+6)+7)`
-/

namespace A200877.P7352344274753086751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000217 (n + 6) + 7).toNat

end

end A200877.P7352344274753086751

/-! ## A200877.P6059126315583099285

`A200871(A034856(n+2)+A008585(n+8))`
-/

namespace A200877.P6059126315583099285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A034856 (n + 2) + A008585 (n + 8)).toNat

end

end A200877.P6059126315583099285

/-! ## A200877.P16284236453678624070

`A200871(A000096(n+7)-A004280(n+5))`
-/

namespace A200877.P16284236453678624070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A000096 (n + 7) - A004280 (n + 5)).toNat

end

end A200877.P16284236453678624070

/-! ## A200877.P13295115310022471358

`A200871(A004280(n+11)+A000096(n+3))`
-/

namespace A200877.P13295115310022471358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200871 (A004280 (n + 11) + A000096 (n + 3)).toNat

end

end A200877.P13295115310022471358

/-!
# A200878: Composite numbers whose prime factors have equal numbers of bits.

The programs for A200878, there is no canonical definition to state claims against.
-/

/-! ## A200878.P9479484249818118066

`lt[A000005(A338973(n+1)), A374116(n)]`
-/

namespace A200878.P9479484249818118066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A338973 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200878.P9479484249818118066

/-! ## A200878.P764973650984453607

`A344030(A361043(∑[n]))`
-/

namespace A200878.P764973650984453607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344030 (A361043 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A200878.P764973650984453607

/-! ## A200878.P2682601432907094755

`lt[A196008(2*n+3), A374116(n)²]`
-/

namespace A200878.P2682601432907094755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196008 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374116 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A200878.P2682601432907094755

/-! ## A200878.P3631356525694762187

`lt[sqrt(A129601(2*n+3)), A374116(n)]`
-/

namespace A200878.P3631356525694762187
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A129601 (2 * n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A200878.P3631356525694762187

/-! ## A200878.P88237305270989182

`A344030(n+1)+A231204(A000079(n+3))`
-/

namespace A200878.P88237305270989182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344030 (n + 1) + A231204 (A000079 (n + 3)).toNat

end

end A200878.P88237305270989182

/-!
# A200879: Numbers n such that 10^n - 1 divides 10^(10^100) - 10.

The programs for A200879, there is no canonical definition to state claims against.
-/

/-! ## A200879.P17939758216649903261

`1+eq[A019432(n), A066298(n+1)]`
-/

namespace A200879.P17939758216649903261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200879.P17939758216649903261

/-! ## A200879.P5185456899049933996

`A004442(eq[n, n*A066298(n+1)])`
-/

namespace A200879.P5185456899049933996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200879.P5185456899049933996

/-! ## A200879.P13902200442556086129

`A109613(eq[n, n*A066298(n+1)])`
-/

namespace A200879.P13902200442556086129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200879.P13902200442556086129

/-! ## A200879.P2381990246637152409

`A165998(eq[n, n*A066298(n+1)])`
-/

namespace A200879.P2381990246637152409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200879.P2381990246637152409

/-! ## A200879.P11227819683690898393

`A004442(eq[A019432(n), A066298(n+1)])`
-/

namespace A200879.P11227819683690898393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A200879.P11227819683690898393

/-!
# A200880: Number of 0..2 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors.

The programs for A200880, the canonical program `A200880.P12870936119156674936` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200880 has offset 1).

The definition of A200880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200880.P9853418834142000377

`ogf((22-15x+34x^2-6x^3+9x^4)/(1-3x+3x^2-4x^3+x^4-x^5))`
-/

namespace A200880.P9853418834142000377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, -15, 34, -6, 9] [1, -3, 3, -4, 1, -1] n

end

end A200880.P9853418834142000377

namespace A200880

/-- `ogf((22-15x+34x^2-6x^3+9x^4)/(1-3x+3x^2-4x^3+x^4-x^5))` -/
def P9853418834142000377.Spec : Prop :=
  ∀ n, P9853418834142000377.a n = A200880 (n + 1)

end A200880

/-! ## A200880.P12870936119156674936

`3*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=22, a(1)=51, a(2)=121, a(3)=292, a(4)=704`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200880

/-- `3*a(n-1)-3*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` -/
def P12870936119156674936.Spec : Prop :=
  ∀ n, P12870936119156674936.a n = A200880 (n + 1)

theorem P12870936119156674936.correct : P12870936119156674936.Spec := by
  intro n
  simp only [A200880, Nat.add_sub_cancel]

end A200880

/-! ## A200880.P16004903884963284159

`A202882(n+4)`
-/

namespace A200880.P16004903884963284159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202882 (n + 4)

end

end A200880.P16004903884963284159

namespace A200880

/-- `A202882(n+4)` -/
def P16004903884963284159.Spec : Prop :=
  ∀ n, P16004903884963284159.a n = A200880 (n + 1)

end A200880

/-! ## A200880.P9441510776684127870

`record[A202882(A174571(A008574(n)))]`
-/

namespace A200880.P9441510776684127870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202882 (A174571 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200880.P9441510776684127870

namespace A200880

/-- `record[A202882(A174571(A008574(n)))]` -/
def P9441510776684127870.Spec : Prop :=
  ∀ n, P9441510776684127870.a n = A200880 (n + 1)

end A200880

/-! ## A200880.P4597413854474035110

`record[A202882(A174571(A103517(n)))]`
-/

namespace A200880.P4597413854474035110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202882 (A174571 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200880.P4597413854474035110

namespace A200880

/-- `record[A202882(A174571(A103517(n)))]` -/
def P4597413854474035110.Spec : Prop :=
  ∀ n, P4597413854474035110.a n = A200880 (n + 1)

end A200880

/-! ## A200880.P1962313349920207575

`A200886(∑[n+2])`
-/

namespace A200880.P1962313349920207575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200880.P1962313349920207575

namespace A200880

/-- `A200886(∑[n+2])` -/
def P1962313349920207575.Spec : Prop :=
  ∀ n, P1962313349920207575.a n = A200880 (n + 1)

end A200880

/-!
# A200881: Number of 0..3 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors.

The programs for A200881, the canonical program `A200881.P2548822702853752037` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200881 has offset 1).

The definition of A200881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200881.P2548822702853752037

`ogf((50-56x+146x^2-56x^3+93x^4-12x^5+16x^6)/(1-4x+6x^2-10x^3+5x^4-6x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200881

/-- `ogf((50-56x+146x^2-56x^3+93x^4-12x^5+16x^6)/(1-4x+6x^2-10x^3+5x^4-6x^5+x^6-x^7))` -/
def P2548822702853752037.Spec : Prop :=
  ∀ n, P2548822702853752037.a n = A200881 (n + 1)

theorem P2548822702853752037.correct : P2548822702853752037.Spec := by
  intro n
  simp only [A200881, Nat.add_sub_cancel]

end A200881

/-! ## A200881.P5921677118644057948

`A203094(n+4)`
-/

namespace A200881.P5921677118644057948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203094 (n + 4)

end

end A200881.P5921677118644057948

namespace A200881

/-- `A203094(n+4)` -/
def P5921677118644057948.Spec : Prop :=
  ∀ n, P5921677118644057948.a n = A200881 (n + 1)

end A200881

/-! ## A200881.P14983998378256259549

`A200886(∑[n+3]+1)`
-/

namespace A200881.P14983998378256259549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200881.P14983998378256259549

namespace A200881

/-- `A200886(∑[n+3]+1)` -/
def P14983998378256259549.Spec : Prop :=
  ∀ n, P14983998378256259549.a n = A200881 (n + 1)

end A200881

/-! ## A200881.P1058993713447639377

`abs(2-A200886(A000124(n+3)-3))+2`
-/

namespace A200881.P1058993713447639377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A200886 (A000124 (n + 3) - 3).toNat| + 2

end

end A200881.P1058993713447639377

namespace A200881

/-- `abs(2-A200886(A000124(n+3)-3))+2` -/
def P1058993713447639377.Spec : Prop :=
  ∀ n, P1058993713447639377.a n = A200881 (n + 1)

end A200881

/-! ## A200881.P6950057288308448084

`lcm(A033999(n), A200886(A000124(n+3)-3))`
-/

namespace A200881.P6950057288308448084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A200886 (A000124 (n + 3) - 3).toNat)

end

end A200881.P6950057288308448084

namespace A200881

/-- `lcm(A033999(n), A200886(A000124(n+3)-3))` -/
def P6950057288308448084.Spec : Prop :=
  ∀ n, (P6950057288308448084.a n : ℤ) = A200881 (n + 1)

end A200881

/-! ## A200881.P10977200950403042615

`A200886(A000124(n+3)-3)%A235780(n+1)`
-/

namespace A200881.P10977200950403042615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200886 (A000124 (n + 3) - 3).toNat) (A235780 (n + 1))

end

end A200881.P10977200950403042615

namespace A200881

/-- `A200886(A000124(n+3)-3)%A235780(n+1)` -/
def P10977200950403042615.Spec : Prop :=
  ∀ n, P10977200950403042615.a n = A200881 (n + 1)

end A200881

/-!
# A200882: Number of 0..4 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors.

The programs for A200882, the canonical program `A200882.P17895220406633131912` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200882 has offset 1).

The definition of A200882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200882.P17895220406633131912

`A203184(n+4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A200882

/-- `A203184(n+4)` -/
def P17895220406633131912.Spec : Prop :=
  ∀ n, P17895220406633131912.a n = A200882 (n + 1)

theorem P17895220406633131912.correct : P17895220406633131912.Spec := by
  intro n
  simp only [A200882, Nat.add_sub_cancel]

end A200882

/-! ## A200882.P13015278267700703898

`A200886(A027379(n+2))`
-/

namespace A200882.P13015278267700703898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A027379 (n + 2)).toNat

end

end A200882.P13015278267700703898

namespace A200882

/-- `A200886(A027379(n+2))` -/
def P13015278267700703898.Spec : Prop :=
  ∀ n, P13015278267700703898.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P2148167662513478529

`A200886(A055998(n+2))`
-/

namespace A200882.P2148167662513478529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A055998 (n + 2)).toNat

end

end A200882.P2148167662513478529

namespace A200882

/-- `A200886(A055998(n+2))` -/
def P2148167662513478529.Spec : Prop :=
  ∀ n, P2148167662513478529.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P9467247299471266541

`A200886(A052905(n+1)+2)`
-/

namespace A200882.P9467247299471266541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A052905 (n + 1) + 2).toNat

end

end A200882.P9467247299471266541

namespace A200882

/-- `A200886(A052905(n+1)+2)` -/
def P9467247299471266541.Spec : Prop :=
  ∀ n, P9467247299471266541.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P6187391723587483465

`A200886(A055999(n+1)+3)`
-/

namespace A200882.P6187391723587483465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A055999 (n + 1) + 3).toNat

end

end A200882.P6187391723587483465

namespace A200882

/-- `A200886(A055999(n+1)+3)` -/
def P6187391723587483465.Spec : Prop :=
  ∀ n, P6187391723587483465.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P13237011219938387648

`A200886(A166136(n+3)-9)`
-/

namespace A200882.P13237011219938387648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A166136 (n + 3) - 9).toNat

end

end A200882.P13237011219938387648

namespace A200882

/-- `A200886(A166136(n+3)-9)` -/
def P13237011219938387648.Spec : Prop :=
  ∀ n, P13237011219938387648.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P10709487272602950501

`A200886(A167614(n+1)+A005408(n))`
-/

namespace A200882.P10709487272602950501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A167614 (n + 1) + A005408 n).toNat

end

end A200882.P10709487272602950501

namespace A200882

/-- `A200886(A167614(n+1)+A005408(n))` -/
def P10709487272602950501.Spec : Prop :=
  ∀ n, P10709487272602950501.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P13665318671891281959

`A200886(A016789(n)+A167499(n)-1)`
-/

namespace A200882.P13665318671891281959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A016789 n + (A167499 n - 1)).toNat

end

end A200882.P13665318671891281959

namespace A200882

/-- `A200886(A016789(n)+A167499(n)-1)` -/
def P13665318671891281959.Spec : Prop :=
  ∀ n, P13665318671891281959.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P9095542104780617534

`A200886(A016789(n)-(1-A167499(n)))`
-/

namespace A200882.P9095542104780617534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A016789 n - (1 - A167499 n)).toNat

end

end A200882.P9095542104780617534

namespace A200882

/-- `A200886(A016789(n)-(1-A167499(n)))` -/
def P9095542104780617534.Spec : Prop :=
  ∀ n, P9095542104780617534.a n = A200882 (n + 1)

end A200882

/-! ## A200882.P16940587462992847316

`A200886(A005408(n)+A167499(n)+n)`
-/

namespace A200882.P16940587462992847316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A005408 n + (A167499 n + (n : ℤ))).toNat

end

end A200882.P16940587462992847316

namespace A200882

/-- `A200886(A005408(n)+A167499(n)+n)` -/
def P16940587462992847316.Spec : Prop :=
  ∀ n, P16940587462992847316.a n = A200882 (n + 1)

end A200882

/-!
# A200883: Number of 0..5 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors.

The programs for A200883, there is no canonical definition to state claims against.
-/

/-! ## A200883.P7118691037519026895

`A203050(n+4)`
-/

namespace A200883.P7118691037519026895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203050 (n + 4)

end

end A200883.P7118691037519026895

/-! ## A200883.P16037061584323254906

`A200886(A046691(n+3))`
-/

namespace A200883.P16037061584323254906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A046691 (n + 3)).toNat

end

end A200883.P16037061584323254906

/-! ## A200883.P4093259288395167278

`A200886(Δ[A023545(n+1)])`
-/

namespace A200883.P4093259288395167278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (f1 (n + 1) - f1 n).toNat

end

end A200883.P4093259288395167278

/-! ## A200883.P9177298596831105974

`A200886(A167499(n+4)-9)`
-/

namespace A200883.P9177298596831105974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A167499 (n + 4) - 9).toNat

end

end A200883.P9177298596831105974

/-! ## A200883.P3420410177972737596

`A200886(Δ[A026054(n+3)]-A020705(n))`
-/

namespace A200883.P3420410177972737596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (f1 (n + 1) - f1 n - A020705 n).toNat

end

end A200883.P3420410177972737596

/-! ## A200883.P2073466020858826322

`A200886(A007401(A167499(n)+A016789(n)))`
-/

namespace A200883.P2073466020858826322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A007401 (A167499 n + A016789 n).toNat).toNat

end

end A200883.P2073466020858826322

/-!
# A200884: Number of 0..6 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors.

The programs for A200884, there is no canonical definition to state claims against.
-/

/-! ## A200884.P2753517701772026632

`A203059(n+4)`
-/

namespace A200884.P2753517701772026632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203059 (n + 4)

end

end A200884.P2753517701772026632

/-! ## A200884.P863351858939582242

`A200886(A052905(n+3))`
-/

namespace A200884.P863351858939582242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A052905 (n + 3)).toNat

end

end A200884.P863351858939582242

/-! ## A200884.P11424414552318383530

`A200886(A055999(n+3)+1)`
-/

namespace A200884.P11424414552318383530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A055999 (n + 3) + 1).toNat

end

end A200884.P11424414552318383530

/-! ## A200884.P2926946722835907412

`A200886(A046691(n+4)-1)`
-/

namespace A200884.P2926946722835907412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A046691 (n + 4) - 1).toNat

end

end A200884.P2926946722835907412

/-! ## A200884.P6159473001897328992

`A200886(A055998(n+4)-2)`
-/

namespace A200884.P6159473001897328992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A055998 (n + 4) - 2).toNat

end

end A200884.P6159473001897328992

/-! ## A200884.P13114954143222464777

`A200886(A034856(n+5)-3)`
-/

namespace A200884.P13114954143222464777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A034856 (n + 5) - 3).toNat

end

end A200884.P13114954143222464777

/-! ## A200884.P159675770925620633

`A200886(A000124(n+6)-6)`
-/

namespace A200884.P159675770925620633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000124 (n + 6) - 6).toNat

end

end A200884.P159675770925620633

/-! ## A200884.P1582951624102655521

`A200886(Δ[A023545(n+2)]-1)`
-/

namespace A200884.P1582951624102655521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (f1 (n + 1) - f1 n - 1).toNat

end

end A200884.P1582951624102655521

/-! ## A200884.P16788173491791712514

`A200886(Δ[A026054(n+3)]+1)`
-/

namespace A200884.P16788173491791712514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (f1 (n + 1) - f1 n + 1).toNat

end

end A200884.P16788173491791712514

/-! ## A200884.P6937764499361733740

`A200886(A000384(n+4)-A000326(n+3))`
-/

namespace A200884.P6937764499361733740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000384 (n + 4) - A000326 (n + 3)).toNat

end

end A200884.P6937764499361733740

/-!
# A200885: Number of 0..7 arrays x(0..n+1) of n+2 elements without any interior element greater than both neighbors.

The programs for A200885, there is no canonical definition to state claims against.
-/

/-! ## A200885.P10092665391599914370

`A202909(n+4)`
-/

namespace A200885.P10092665391599914370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202909 (n + 4)

end

end A200885.P10092665391599914370

/-! ## A200885.P17641946780250421097

`A200886(C(n+7, 2)+n+1)`
-/

namespace A200885.P17641946780250421097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (Nat.choose (n + 7) 2 + (n + 1))

end

end A200885.P17641946780250421097

/-! ## A200885.P3958897931866064673

`A200886(A055999(n+4))`
-/

namespace A200885.P3958897931866064673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A055999 (n + 4)).toNat

end

end A200885.P3958897931866064673

/-! ## A200885.P4660050591517454443

`A200886(Δ[A026054(n+4)])`
-/

namespace A200885.P4660050591517454443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (f1 (n + 1) - f1 n).toNat

end

end A200885.P4660050591517454443

/-! ## A200885.P12635068413084503978

`A200886(A000096(n+6)-5)`
-/

namespace A200885.P12635068413084503978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000096 (n + 6) - 5).toNat

end

end A200885.P12635068413084503978

/-! ## A200885.P8304906421275156278

`A200886(A000217(n+6)+n+1)`
-/

namespace A200885.P8304906421275156278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A200885.P8304906421275156278

/-!
# A200887: Number of 0..n arrays x(0..3) of 4 elements without any interior element greater than both neighbors.

The programs for A200887, the canonical program `A200887.P17478003972717848215` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200887 has offset 1).

The definition of A200887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200887.P17478003972717848215

`∑[∑[∑[8*n+10]]+1]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200887

/-- `∑[∑[∑[8*n+10]]+1]+1` -/
def P17478003972717848215.Spec : Prop :=
  ∀ n, (P17478003972717848215.a n : ℤ) = A200887 (n + 1)

theorem P17478003972717848215.correct : P17478003972717848215.Spec := by
  intro n
  simp only [A200887, Nat.add_sub_cancel]

end A200887

/-! ## A200887.P13640124998385719929

`ogf((12-9x+9x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A200887.P13640124998385719929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -9, 9, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A200887.P13640124998385719929

namespace A200887

/-- `ogf((12-9x+9x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13640124998385719929.Spec : Prop :=
  ∀ n, P13640124998385719929.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P16131500139337370600

`(n+2)*(A159920(n+2)+n+2)`
-/

namespace A200887.P16131500139337370600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A159920 (n + 2) + (n + 2 : ℤ))

end

end A200887.P16131500139337370600

namespace A200887

/-- `(n+2)*(A159920(n+2)+n+2)` -/
def P16131500139337370600.Spec : Prop :=
  ∀ n, P16131500139337370600.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P6365508757520338497

`(n+2)*(A077415(n+3)+1)`
-/

namespace A200887.P6365508757520338497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A077415 (n + 3) + 1)

end

end A200887.P6365508757520338497

namespace A200887

/-- `(n+2)*(A077415(n+3)+1)` -/
def P6365508757520338497.Spec : Prop :=
  ∀ n, P6365508757520338497.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P7453527878355494056

`(A180118(n+1)-n)*(n+2)`
-/

namespace A200887.P7453527878355494056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180118 (n + 1) - (n : ℤ)) * (n + 2 : ℤ)

end

end A200887.P7453527878355494056

namespace A200887

/-- `(A180118(n+1)-n)*(n+2)` -/
def P7453527878355494056.Spec : Prop :=
  ∀ n, P7453527878355494056.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P13835874945309960511

`(n+2)*A084990(n+2)`
-/

namespace A200887.P13835874945309960511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A084990 (n + 2)

end

end A200887.P13835874945309960511

namespace A200887

/-- `(n+2)*A084990(n+2)` -/
def P13835874945309960511.Spec : Prop :=
  ∀ n, P13835874945309960511.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P12465757597087607484

`(n+2)*Δ[A014205(n+1)]`
-/

namespace A200887.P12465757597087607484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A200887.P12465757597087607484

namespace A200887

/-- `(n+2)*Δ[A014205(n+1)]` -/
def P12465757597087607484.Spec : Prop :=
  ∀ n, P12465757597087607484.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P16797477353504620568

`(n+2)/3*A064043(n+2)`
-/

namespace A200887.P16797477353504620568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 3 * (A064043 (n + 2) : ℚ)

end

end A200887.P16797477353504620568

namespace A200887

/-- `(n+2)/3*A064043(n+2)` -/
def P16797477353504620568.Spec : Prop :=
  ∀ n, P16797477353504620568.a n = (A200887 (n + 1) : ℚ)

end A200887

/-! ## A200887.P3274665229803908526

`(n+2)*(A108766(n+2)-(n+1))`
-/

namespace A200887.P3274665229803908526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A108766 (n + 2) - (n + 1 : ℤ))

end

end A200887.P3274665229803908526

namespace A200887

/-- `(n+2)*(A108766(n+2)-(n+1))` -/
def P3274665229803908526.Spec : Prop :=
  ∀ n, P3274665229803908526.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P13992946397457430325

`(n+2)*(A064999(n+2)-(n+3))`
-/

namespace A200887.P13992946397457430325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A064999 (n + 2) - (n + 3 : ℤ))

end

end A200887.P13992946397457430325

namespace A200887

/-- `(n+2)*(A064999(n+2)-(n+3))` -/
def P13992946397457430325.Spec : Prop :=
  ∀ n, P13992946397457430325.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P4109750992804025189

`(n+2)*(A270809(n+3)+n)`
-/

namespace A200887.P4109750992804025189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A270809 (n + 3) + (n : ℤ))

end

end A200887.P4109750992804025189

namespace A200887

/-- `(n+2)*(A270809(n+3)+n)` -/
def P4109750992804025189.Spec : Prop :=
  ∀ n, P4109750992804025189.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P17274115345907738450

`(n+2)*A054974(2*(n+2))`
-/

namespace A200887.P17274115345907738450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A054974 (2 * (n + 2))

end

end A200887.P17274115345907738450

namespace A200887

/-- `(n+2)*A054974(2*(n+2))` -/
def P17274115345907738450.Spec : Prop :=
  ∀ n, P17274115345907738450.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P81910733941982362

`A003453(2*n+7)*(n+2)`
-/

namespace A200887.P81910733941982362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (2 * n + 7) * (n + 2 : ℤ)

end

end A200887.P81910733941982362

namespace A200887

/-- `A003453(2*n+7)*(n+2)` -/
def P81910733941982362.Spec : Prop :=
  ∀ n, P81910733941982362.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P15034230842091250903

`(n+2)*A200871(A000124(n))`
-/

namespace A200887.P15034230842091250903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A200871 (A000124 n).toNat

end

end A200887.P15034230842091250903

namespace A200887

/-- `(n+2)*A200871(A000124(n))` -/
def P15034230842091250903.Spec : Prop :=
  ∀ n, P15034230842091250903.a n = A200887 (n + 1)

end A200887

/-! ## A200887.P7665324186458716795

`A200886(∑[n+1]+2)`
-/

namespace A200887.P7665324186458716795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200887.P7665324186458716795

namespace A200887

/-- `A200886(∑[n+1]+2)` -/
def P7665324186458716795.Spec : Prop :=
  ∀ n, P7665324186458716795.a n = A200887 (n + 1)

end A200887

/-!
# A200888: Number of 0..n arrays x(0..4) of 5 elements without any interior element greater than both neighbors.

The programs for A200888, the canonical program `A200888.P1885015922845263124` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200888 has offset 1).

The definition of A200888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200888.P13728703913221842073

`ogf((21-5x+11x^2-16x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A200888.P13728703913221842073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -5, 11, -16, 6, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A200888.P13728703913221842073

namespace A200888

/-- `ogf((21-5x+11x^2-16x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13728703913221842073.Spec : Prop :=
  ∀ n, P13728703913221842073.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P1885015922845263124

`Δ[A002299(n)]+∑[A053134(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A200888

/-- `Δ[A002299(n)]+∑[A053134(n)]` -/
def P1885015922845263124.Spec : Prop :=
  ∀ n, P1885015922845263124.a n = A200888 (n + 1)

theorem P1885015922845263124.correct : P1885015922845263124.Spec := by
  intro n
  simp only [A200888, Nat.add_sub_cancel]

end A200888

/-! ## A200888.P3827141345237166106

`A225007(n+1)+A053126(n+4)`
-/

namespace A200888.P3827141345237166106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 (n + 1) + A053126 (n + 4)

end

end A200888.P3827141345237166106

namespace A200888

/-- `A225007(n+1)+A053126(n+4)` -/
def P3827141345237166106.Spec : Prop :=
  ∀ n, P3827141345237166106.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P13329425797016652376

`∑[A053134(n+1)]+A053126(n+4)+1`
-/

namespace A200888.P13329425797016652376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A053126 (n + 4) + 1)

end

end A200888.P13329425797016652376

namespace A200888

/-- `∑[A053134(n+1)]+A053126(n+4)+1` -/
def P13329425797016652376.Spec : Prop :=
  ∀ n, P13329425797016652376.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P1165587068079309560

`A002299(n+1)+A225007(n)-A002299(n)`
-/

namespace A200888.P1165587068079309560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (n + 1) + (A225007 n - A002299 n)

end

end A200888.P1165587068079309560

namespace A200888

/-- `A002299(n+1)+A225007(n)-A002299(n)` -/
def P1165587068079309560.Spec : Prop :=
  ∀ n, P1165587068079309560.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P2281050129764026748

`A225007(n)+A187756(n+2)`
-/

namespace A200888.P2281050129764026748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n + A187756 (n + 2)

end

end A200888.P2281050129764026748

namespace A200888

/-- `A225007(n)+A187756(n+2)` -/
def P2281050129764026748.Spec : Prop :=
  ∀ n, P2281050129764026748.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P7294377564250495913

`A001753(2*n+1)+(n+2)²²`
-/

namespace A200888.P7294377564250495913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n + 1) + (((n + 2) ^ 2) ^ 2 : ℤ)

end

end A200888.P7294377564250495913

namespace A200888

/-- `A001753(2*n+1)+(n+2)²²` -/
def P7294377564250495913.Spec : Prop :=
  ∀ n, P7294377564250495913.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P16279024885941545608

`A228463(n+1)-A001769(2*n+1)`
-/

namespace A200888.P16279024885941545608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228463 (n + 1) - A001769 (2 * n + 1)

end

end A200888.P16279024885941545608

namespace A200888

/-- `A228463(n+1)-A001769(2*n+1)` -/
def P16279024885941545608.Spec : Prop :=
  ∀ n, P16279024885941545608.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P15390652422050634638

`A000583(n+2)+∑[∑[A000330(2*(n+1))]]`
-/

namespace A200888.P15390652422050634638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200888.P15390652422050634638

namespace A200888

/-- `A000583(n+2)+∑[∑[A000330(2*(n+1))]]` -/
def P15390652422050634638.Spec : Prop :=
  ∀ n, P15390652422050634638.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P13575673060717664145

`A002299(n+1)-∑[A000332(2*n+3)]`
-/

namespace A200888.P13575673060717664145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200888.P13575673060717664145

namespace A200888

/-- `A002299(n+1)-∑[A000332(2*n+3)]` -/
def P13575673060717664145.Spec : Prop :=
  ∀ n, P13575673060717664145.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P9169551627020338863

`A011863(2*(n+2))+A001753(2*n+1)`
-/

namespace A200888.P9169551627020338863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * (n + 2)) + A001753 (2 * n + 1)

end

end A200888.P9169551627020338863

namespace A200888

/-- `A011863(2*(n+2))+A001753(2*n+1)` -/
def P9169551627020338863.Spec : Prop :=
  ∀ n, P9169551627020338863.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P380721834319029967

`A002817(2*n+3)+∑[A000332(2*(n+1))]`
-/

namespace A200888.P380721834319029967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200888.P380721834319029967

namespace A200888

/-- `A002817(2*n+3)+∑[A000332(2*(n+1))]` -/
def P380721834319029967.Spec : Prop :=
  ∀ n, P380721834319029967.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P9114623680211462912

`A000583(n+2)+∑[A000332(2*n+5)]`
-/

namespace A200888.P9114623680211462912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200888.P9114623680211462912

namespace A200888

/-- `A000583(n+2)+∑[A000332(2*n+5)]` -/
def P9114623680211462912.Spec : Prop :=
  ∀ n, P9114623680211462912.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P12565643153003140567

`A002415(2*(n+2))+∑[A000332(2*(n+2))]`
-/

namespace A200888.P12565643153003140567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (2 * (n + 2)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200888.P12565643153003140567

namespace A200888

/-- `A002415(2*(n+2))+∑[A000332(2*(n+2))]` -/
def P12565643153003140567.Spec : Prop :=
  ∀ n, P12565643153003140567.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P3438616821991649120

`A000389(2*n+7)-∑[A000332(2*n+3)]`
-/

namespace A200888.P3438616821991649120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 7) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200888.P3438616821991649120

namespace A200888

/-- `A000389(2*n+7)-∑[A000332(2*n+3)]` -/
def P3438616821991649120.Spec : Prop :=
  ∀ n, P3438616821991649120.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P14278149188440163275

`A005585(2*n+3)-∑[A000217(A000217(2*(n+1)))]`
-/

namespace A200888.P14278149188440163275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (2 * n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200888.P14278149188440163275

namespace A200888

/-- `A005585(2*n+3)-∑[A000217(A000217(2*(n+1)))]` -/
def P14278149188440163275.Spec : Prop :=
  ∀ n, P14278149188440163275.a n = A200888 (n + 1)

end A200888

/-! ## A200888.P12123338009544477225

`A200886(∑[n+2]+4)`
-/

namespace A200888.P12123338009544477225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200888.P12123338009544477225

namespace A200888

/-- `A200886(∑[n+2]+4)` -/
def P12123338009544477225.Spec : Prop :=
  ∀ n, P12123338009544477225.a n = A200888 (n + 1)

end A200888

/-!
# A200889: Number of 0..n arrays x(0..5) of 6 elements without any interior element greater than both neighbors.

The programs for A200889, the canonical program `A200889.P16619668763986426223` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200889 has offset 1).

The definition of A200889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200889.P16619668763986426223

`ogf((37+33x+x^2-54x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200889

/-- `ogf((37+33x+x^2-54x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16619668763986426223.Spec : Prop :=
  ∀ n, P16619668763986426223.a n = A200889 (n + 1)

theorem P16619668763986426223.correct : P16619668763986426223.Spec := by
  intro n
  simp only [A200889, Nat.add_sub_cancel]

end A200889

/-! ## A200889.P13026310166703639705

`A200886(A145018(n+4))`
-/

namespace A200889.P13026310166703639705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A145018 (n + 4)).toNat

end

end A200889.P13026310166703639705

namespace A200889

/-- `A200886(A145018(n+4))` -/
def P13026310166703639705.Spec : Prop :=
  ∀ n, P13026310166703639705.a n = A200889 (n + 1)

end A200889

/-! ## A200889.P15234893320961983736

`A200886(A052905(n)+9)`
-/

namespace A200889.P15234893320961983736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A052905 n + 9).toNat

end

end A200889.P15234893320961983736

namespace A200889

/-- `A200886(A052905(n)+9)` -/
def P15234893320961983736.Spec : Prop :=
  ∀ n, P15234893320961983736.a n = A200889 (n + 1)

end A200889

/-! ## A200889.P15482425142317285607

`A200886(A167614(n+2)+1)`
-/

namespace A200889.P15482425142317285607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A167614 (n + 2) + 1).toNat

end

end A200889.P15482425142317285607

namespace A200889

/-- `A200886(A167614(n+2)+1)` -/
def P15482425142317285607.Spec : Prop :=
  ∀ n, P15482425142317285607.a n = A200889 (n + 1)

end A200889

/-! ## A200889.P18405729948164031176

`A200886(A166136(n+2)-2)`
-/

namespace A200889.P18405729948164031176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A166136 (n + 2) - 2).toNat

end

end A200889.P18405729948164031176

namespace A200889

/-- `A200886(A166136(n+2)-2)` -/
def P18405729948164031176.Spec : Prop :=
  ∀ n, P18405729948164031176.a n = A200889 (n + 1)

end A200889

/-! ## A200889.P12285309298420751598

`A200886(A034856(n+2)+6)`
-/

namespace A200889.P12285309298420751598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A034856 (n + 2) + 6).toNat

end

end A200889.P12285309298420751598

namespace A200889

/-- `A200886(A034856(n+2)+6)` -/
def P12285309298420751598.Spec : Prop :=
  ∀ n, P12285309298420751598.a n = A200889 (n + 1)

end A200889

/-! ## A200889.P1343974953079355711

`A200886(A166136(n+1)+1+n)`
-/

namespace A200889.P1343974953079355711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A200889.P1343974953079355711

namespace A200889

/-- `A200886(A166136(n+1)+1+n)` -/
def P1343974953079355711.Spec : Prop :=
  ∀ n, P1343974953079355711.a n = A200889 (n + 1)

end A200889

/-! ## A200889.P9596455216506608480

`A200886(Δ[A023545(n+1)-n²])`
-/

namespace A200889.P9596455216506608480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (f1 (n + 1) - f1 n).toNat

end

end A200889.P9596455216506608480

namespace A200889

/-- `A200886(Δ[A023545(n+1)-n²])` -/
def P9596455216506608480.Spec : Prop :=
  ∀ n, P9596455216506608480.a n = A200889 (n + 1)

end A200889

/-!
# A200890: Number of 0..n arrays x(0..6) of 7 elements without any interior element greater than both neighbors.

The programs for A200890, there is no canonical definition to state claims against.
-/

/-! ## A200890.P3024158209517111639

`A200886(A167499(n+3))`
-/

namespace A200890.P3024158209517111639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A167499 (n + 3)).toNat

end

end A200890.P3024158209517111639

/-! ## A200890.P330939414637612612

`A200886(A056000(n)+15)`
-/

namespace A200890.P330939414637612612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A056000 n + 15).toNat

end

end A200890.P330939414637612612

/-! ## A200890.P738708498631769834

`A200886(A166136(n+3)-1)`
-/

namespace A200890.P738708498631769834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A166136 (n + 3) - 1).toNat

end

end A200890.P738708498631769834

/-! ## A200890.P8526060342374105704

`A200886(A167614(n+3)+2)`
-/

namespace A200890.P8526060342374105704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A167614 (n + 3) + 2).toNat

end

end A200890.P8526060342374105704

/-! ## A200890.P13136781751142003397

`A200886(A133263(n+4)+3)`
-/

namespace A200890.P13136781751142003397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A133263 (n + 4) + 3).toNat

end

end A200890.P13136781751142003397

/-! ## A200890.P2838758801802084869

`A200886(A000217(n+4)+5)`
-/

namespace A200890.P2838758801802084869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000217 (n + 4) + 5).toNat

end

end A200890.P2838758801802084869

/-! ## A200890.P10938320118653439351

`A200886(A055998(n+2)+8)`
-/

namespace A200890.P10938320118653439351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A055998 (n + 2) + 8).toNat

end

end A200890.P10938320118653439351

/-! ## A200890.P9862689606433929487

`A200886(A161680(n+5)+5)`
-/

namespace A200890.P9862689606433929487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A161680 (n + 5) + 5).toNat

end

end A200890.P9862689606433929487

/-! ## A200890.P10621656250465662443

`A200886(A001489(n+1)+A000124(n+5))`
-/

namespace A200890.P10621656250465662443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A001489 (n + 1) + A000124 (n + 5)).toNat

end

end A200890.P10621656250465662443

/-!
# A200891: Number of 0..n arrays x(0..7) of 8 elements without any interior element greater than both neighbors.

The programs for A200891, there is no canonical definition to state claims against.
-/

/-! ## A200891.P5524627447002936755

`A200886(A166136(n+4))`
-/

namespace A200891.P5524627447002936755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A166136 (n + 4)).toNat

end

end A200891.P5524627447002936755

/-! ## A200891.P15501958307228870420

`A200886(A167614(n+4)+3)`
-/

namespace A200891.P15501958307228870420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A167614 (n + 4) + 3).toNat

end

end A200891.P15501958307228870420

/-! ## A200891.P14784314778156930306

`A200886(A000217(n+5)+6)`
-/

namespace A200891.P14784314778156930306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000217 (n + 5) + 6).toNat

end

end A200891.P14784314778156930306

/-! ## A200891.P11121364045322598825

`A200886(A161680(n+6)+6)`
-/

namespace A200891.P11121364045322598825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A161680 (n + 6) + 6).toNat

end

end A200891.P11121364045322598825

/-! ## A200891.P6888261370545866467

`A200886(A056000(n+1)+16)`
-/

namespace A200891.P6888261370545866467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A056000 (n + 1) + 16).toNat

end

end A200891.P6888261370545866467

/-! ## A200891.P3968791513317798206

`A200886(A000096(n+5)-(n-1))`
-/

namespace A200891.P3968791513317798206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A200891.P3968791513317798206

/-! ## A200891.P13724974390155623554

`A200886(A133263(n+6)-(n+2))`
-/

namespace A200891.P13724974390155623554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A200891.P13724974390155623554

/-! ## A200891.P3199693893978871277

`A200886(A001489(n+1)+A000124(n+6))`
-/

namespace A200891.P3199693893978871277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A001489 (n + 1) + A000124 (n + 6)).toNat

end

end A200891.P3199693893978871277

/-!
# A200892: Number of 0..n arrays x(0..8) of 9 elements without any interior element greater than both neighbors.

The programs for A200892, there is no canonical definition to state claims against.
-/

/-! ## A200892.P144775131696276203

`A200886(A166136(n+5)+1)`
-/

namespace A200892.P144775131696276203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A166136 (n + 5) + 1).toNat

end

end A200892.P144775131696276203

/-! ## A200892.P12594572477297418654

`A200886(A000217(n+6)+7)`
-/

namespace A200892.P12594572477297418654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A000217 (n + 6) + 7).toNat

end

end A200892.P12594572477297418654

/-! ## A200892.P9993446810064353543

`A200886(A161680(n+7)+7)`
-/

namespace A200892.P9993446810064353543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A161680 (n + 7) + 7).toNat

end

end A200892.P9993446810064353543

/-! ## A200892.P3933184741014630153

`A200886(A133263(n+7)-(n+2))`
-/

namespace A200892.P3933184741014630153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A200892.P3933184741014630153

/-! ## A200892.P1689808387362714686

`A200886(A001489(n+1)+A000124(n+7))`
-/

namespace A200892.P1689808387362714686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200886 (A001489 (n + 1) + A000124 (n + 7)).toNat

end

end A200892.P1689808387362714686

/-!
# A200893: Triangle read by rows: number of meanders filling out an n X k grid.

The programs for A200893, there is no canonical definition to state claims against.
-/

/-! ## A200893.P15547391076936385754

`A016366(∑[comp[3*n]])²`
-/

namespace A200893.P15547391076936385754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016366 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A200893.P15547391076936385754

/-! ## A200893.P16911263934291491852

`A030567(A303535(n))`
-/

namespace A200893.P16911263934291491852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A303535 n).toNat

end

end A200893.P16911263934291491852

/-! ## A200893.P11504528109284084623

`A103863(A323128(n))`
-/

namespace A200893.P11504528109284084623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (A323128 n).toNat

end

end A200893.P11504528109284084623

/-! ## A200893.P17631369263037712630

`A228488(A289546(n))`
-/

namespace A200893.P17631369263037712630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228488 (A289546 n).toNat

end

end A200893.P17631369263037712630

/-! ## A200893.P6139293306380419741

`A334377(A187152(n+1))`
-/

namespace A200893.P6139293306380419741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334377 (A187152 (n + 1)).toNat

end

end A200893.P6139293306380419741

/-!
# A200894: Number of n X n 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200894, there is no canonical definition to state claims against.
-/

/-! ## A200894.P18141194618542421027

`A200902(∑[4*n]+1)`
-/

namespace A200894.P18141194618542421027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200894.P18141194618542421027

/-!
# A200895: Number of nX1 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200895, there is no canonical definition to state claims against.
-/

/-! ## A200895.P13926463470237744791

`A200942(∑[n+5]+6)`
-/

namespace A200895.P13926463470237744791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200942 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200895.P13926463470237744791

/-! ## A200895.P2078490723367738845

`or(char[1], A200942(A046691(n+3)))`
-/

namespace A200895.P2078490723367738845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200942 (A046691 (n + 3)).toNat)

end

end A200895.P2078490723367738845

/-! ## A200895.P8831426689643895048

`A007318(C(2, n))*A200942(A046691(n+3))`
-/

namespace A200895.P8831426689643895048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200942 (A046691 (n + 3)).toNat

end

end A200895.P8831426689643895048

/-! ## A200895.P5959293032032333531

`A000108(C(2, n+2))*A200942(A046691(n+3))`
-/

namespace A200895.P5959293032032333531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A200942 (A046691 (n + 3)).toNat

end

end A200895.P5959293032032333531

/-! ## A200895.P627387580546960960

`A000041(C(2, 2*n))*A200942(A046691(n+3))`
-/

namespace A200895.P627387580546960960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A200942 (A046691 (n + 3)).toNat

end

end A200895.P627387580546960960

/-!
# A200896: Number of nX2 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200896, there is no canonical definition to state claims against.
-/

/-! ## A200896.P2619406797590335094

`A200902(∑[n+1]+2)`
-/

namespace A200896.P2619406797590335094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200896.P2619406797590335094

/-! ## A200896.P7151118634103810100

`A200902(A000096(n+1))+A185255(n)`
-/

namespace A200896.P7151118634103810100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A000096 (n + 1)).toNat + A185255 n

end

end A200896.P7151118634103810100

/-! ## A200896.P18038322231208597065

`A200902(A000096(n+1))*A300385(2*n+3)`
-/

namespace A200896.P18038322231208597065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A000096 (n + 1)).toNat * A300385 (2 * n + 3)

end

end A200896.P18038322231208597065

/-!
# A200897: Number of nX3 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200897, there is no canonical definition to state claims against.
-/

/-! ## A200897.P8673067488671604988

`A200902(∑[n+2]+4)`
-/

namespace A200897.P8673067488671604988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200897.P8673067488671604988

/-! ## A200897.P5172098205886643576

`lcm(1-and(2, n), A200902(A167614(n+1)))`
-/

namespace A200897.P5172098205886643576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A200902 (A167614 (n + 1)).toNat)

end

end A200897.P5172098205886643576

/-! ## A200897.P15228484800809746868

`A200902(A167614(n+1))+A011731(n)`
-/

namespace A200897.P15228484800809746868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A167614 (n + 1)).toNat + A011731 n

end

end A200897.P15228484800809746868

/-! ## A200897.P13977526839243424540

`A200902(A167614(n+1))+A025469(n)`
-/

namespace A200897.P13977526839243424540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A167614 (n + 1)).toNat + A025469 n

end

end A200897.P13977526839243424540

/-! ## A200897.P16455698804246404930

`A200902(A167614(n+1))+A055024(n)`
-/

namespace A200897.P16455698804246404930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A167614 (n + 1)).toNat + A055024 n

end

end A200897.P16455698804246404930

/-!
# A200898: Number of nX4 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200898, there is no canonical definition to state claims against.
-/

/-! ## A200898.P4903493040781534644

`A200902(∑[n+3]+7)`
-/

namespace A200898.P4903493040781534644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200898.P4903493040781534644

/-! ## A200898.P11182593204212052453

`A326461(n)+A200902(A055998(n+2))`
-/

namespace A200898.P11182593204212052453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A200902 (A055998 (n + 2)).toNat

end

end A200898.P11182593204212052453

/-! ## A200898.P18380352700552126892

`A200902(A055998(n+2))^A116891(3*n+2)`
-/

namespace A200898.P18380352700552126892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200902 (A055998 (n + 2)).toNat : ℚ) ^ (A116891 (3 * n + 2) : ℤ)

end

end A200898.P18380352700552126892

/-!
# A200899: Number of nX5 0..5 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A200899, there is no canonical definition to state claims against.
-/

/-! ## A200899.P13083695446274729888

`A200902(A374005(n+1))`
-/

namespace A200899.P13083695446274729888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A374005 (n + 1)).toNat

end

end A200899.P13083695446274729888

/-! ## A200899.P1420986547330667780

`A200902(A167499(n+3))`
-/

namespace A200899.P1420986547330667780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A167499 (n + 3)).toNat

end

end A200899.P1420986547330667780

/-! ## A200899.P4810916076580487026

`A200902(A155212(n)+13)`
-/

namespace A200899.P4810916076580487026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200902 (A155212 n + 13).toNat

end

end A200899.P4810916076580487026

