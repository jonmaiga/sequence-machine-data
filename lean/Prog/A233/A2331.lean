import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A233100: Number of 3 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233100, there is no canonical definition to state claims against.
-/

/-! ## A233100.P17493376774537800054

`A233098(∑[n+2]+4)`
-/

namespace A233100.P17493376774537800054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233100.P17493376774537800054

/-! ## A233100.P10209320548956571598

`A233098(A167614(n+1))+A184945(n)`
-/

namespace A233100.P10209320548956571598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A167614 (n + 1)).toNat + A184945 n

end

end A233100.P10209320548956571598

/-! ## A233100.P17610564285149587506

`A233098(A167614(n+1))+A185284(n)`
-/

namespace A233100.P17610564285149587506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A167614 (n + 1)).toNat + A185284 n

end

end A233100.P17610564285149587506

/-! ## A233100.P9123362799812153506

`lcm(A165326(n), A233098(A167614(n+1)))`
-/

namespace A233100.P9123362799812153506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A233098 (A167614 (n + 1)).toNat)

end

end A233100.P9123362799812153506

/-! ## A233100.P18339151744438546878

`A233098(A167614(n+1))%A238043(n+1)`
-/

namespace A233100.P18339151744438546878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233098 (A167614 (n + 1)).toNat) (A238043 (n + 1))

end

end A233100.P18339151744438546878

/-!
# A233101: Number of 4Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233101, there is no canonical definition to state claims against.
-/

/-! ## A233101.P9435419248939437301

`A233098(A141214(n)+7)`
-/

namespace A233101.P9435419248939437301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A141214 n + 7).toNat

end

end A233101.P9435419248939437301

/-! ## A233101.P15102799461762063216

`A233098(A052905(n)+9)`
-/

namespace A233101.P15102799461762063216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A052905 n + 9).toNat

end

end A233101.P15102799461762063216

/-! ## A233101.P10492088320318864317

`A233098(A055999(n)+10)`
-/

namespace A233101.P10492088320318864317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A055999 n + 10).toNat

end

end A233101.P10492088320318864317

/-! ## A233101.P16457290230625359553

`A233098(A167614(n+2)+1)`
-/

namespace A233101.P16457290230625359553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A167614 (n + 2) + 1).toNat

end

end A233101.P16457290230625359553

/-! ## A233101.P15793303801409452724

`A233098(eq[3, A002262(n)]+1)`
-/

namespace A233101.P15793303801409452724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233101.P15793303801409452724

/-!
# A233102: Number of 5 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233102, there is no canonical definition to state claims against.
-/

/-! ## A233102.P12914417902891212834

`A233098(A155212(n)+13)`
-/

namespace A233102.P12914417902891212834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A155212 n + 13).toNat

end

end A233102.P12914417902891212834

/-! ## A233102.P16947844422960425829

`A233098(A056000(n)+15)`
-/

namespace A233102.P16947844422960425829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A056000 n + 15).toNat

end

end A233102.P16947844422960425829

/-! ## A233102.P5375466013247220413

`A233098(eq[7, A066657(n)])`
-/

namespace A233102.P5375466013247220413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233102.P5375466013247220413

/-! ## A233102.P3741613697880053534

`A233098(A052905(n+1)+10)`
-/

namespace A233102.P3741613697880053534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A052905 (n + 1) + 10).toNat

end

end A233102.P3741613697880053534

/-! ## A233102.P5521472466361767921

`A233098(eq[6, A131818(n+1)])`
-/

namespace A233102.P5521472466361767921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233102.P5521472466361767921

/-!
# A233103: Number of 6Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233103, there is no canonical definition to state claims against.
-/

/-! ## A233103.P1093591919613722666

`A233098(A000217(n+5)+6)`
-/

namespace A233103.P1093591919613722666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A000217 (n + 5) + 6).toNat

end

end A233103.P1093591919613722666

/-! ## A233103.P7078269496750357700

`A233098(A056000(n+1)+16)`
-/

namespace A233103.P7078269496750357700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A056000 (n + 1) + 16).toNat

end

end A233103.P7078269496750357700

/-! ## A233103.P9674977639041052739

`A233098(eq[5, A002262(n)]+1)`
-/

namespace A233103.P9674977639041052739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233103.P9674977639041052739

/-! ## A233103.P5972416439168797252

`A233098(eq[7, A131818(n+1)])`
-/

namespace A233103.P5972416439168797252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233103.P5972416439168797252

/-! ## A233103.P10254070023521682590

`A233098(A052905(n+4)-2*(n+1))`
-/

namespace A233103.P10254070023521682590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A052905 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A233103.P10254070023521682590

/-!
# A233104: Number of 7 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233104, there is no canonical definition to state claims against.
-/

/-! ## A233104.P9398275118114157510

`A233098(eq[8, A131818(n+1)])`
-/

namespace A233104.P9398275118114157510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233104.P9398275118114157510

/-!
# A233105: Number of n X n 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233105, there is no canonical definition to state claims against.
-/

/-! ## A233105.P10926437173040527841

`A233113((n+1)²+n²)`
-/

namespace A233105.P10926437173040527841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 ((n + 1) ^ 2 + n ^ 2)

end

end A233105.P10926437173040527841

/-!
# A233106: Number of n X 1 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233106, the canonical program `A233106.P12902737924150097618` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233106 has offset 1).

The definition of A233106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233106.P1113010470957198917

`A081186(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A233106.P1113010470957198917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081186 (n - 1) + a (n - 1)

end

end A233106.P1113010470957198917

namespace A233106

/-- `A081186(n-1)+a(n-1)` -/
def P1113010470957198917.Spec : Prop :=
  ∀ n, P1113010470957198917.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P478887083280325946

`A185055(n)+A164039(n)`
-/

namespace A233106.P478887083280325946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185055 n + A164039 n

end

end A233106.P478887083280325946

namespace A233106

/-- `A185055(n)+A164039(n)` -/
def P478887083280325946.Spec : Prop :=
  ∀ n, P478887083280325946.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P2351274550387238322

`∑[A081186(log2(A011782(n)))]`
-/

namespace A233106.P2351274550387238322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233106.P2351274550387238322

namespace A233106

/-- `∑[A081186(log2(A011782(n)))]` -/
def P2351274550387238322.Spec : Prop :=
  ∀ n, P2351274550387238322.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P5880849846591455666

`Δ[Δ[A056272(n)]]+1-A056272(n)`
-/

namespace A233106.P5880849846591455666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A056272 n)

end

end A233106.P5880849846591455666

namespace A233106

/-- `Δ[Δ[A056272(n)]]+1-A056272(n)` -/
def P5880849846591455666.Spec : Prop :=
  ∀ n, P5880849846591455666.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P17433435208269792949

`∑[A081186(A034856(n+1)-A134869(n+1))]`
-/

namespace A233106.P17433435208269792949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 (A034856 (n + 1) - A134869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233106.P17433435208269792949

namespace A233106

/-- `∑[A081186(A034856(n+1)-A134869(n+1))]` -/
def P17433435208269792949.Spec : Prop :=
  ∀ n, P17433435208269792949.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P4538865340791701137

`A056272(n+2)+1-(A056272(n+1)+A056272(n+1))`
-/

namespace A233106.P4538865340791701137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 2) + (1 - (A056272 (n + 1) + A056272 (n + 1)))

end

end A233106.P4538865340791701137

namespace A233106

/-- `A056272(n+2)+1-(A056272(n+1)+A056272(n+1))` -/
def P4538865340791701137.Spec : Prop :=
  ∀ n, P4538865340791701137.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P3891295881493703012

`9*a(n-1)-23*a(n-2)+15*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A233106.P3891295881493703012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  9 * a (n - 1) - 23 * a (n - 2) + 15 * a (n - 3)

end

end A233106.P3891295881493703012

namespace A233106

/-- `9*a(n-1)-23*a(n-2)+15*a(n-3)` -/
def P3891295881493703012.Spec : Prop :=
  ∀ n, P3891295881493703012.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P7167041162598139749

`A047850(n)-A007798(n)/2`
-/

namespace A233106.P7167041162598139749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047850 n : ℚ) - (A007798 n : ℚ) / 2

end

end A233106.P7167041162598139749

namespace A233106

/-- `A047850(n)-A007798(n)/2` -/
def P7167041162598139749.Spec : Prop :=
  ∀ n, P7167041162598139749.a n = (A233106 (n + 1) : ℚ)

end A233106

/-! ## A233106.P8402343289707236317

`∑[A081186(n)]+1-A081186(n)`
-/

namespace A233106.P8402343289707236317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A081186 n)

end

end A233106.P8402343289707236317

namespace A233106

/-- `∑[A081186(n)]+1-A081186(n)` -/
def P8402343289707236317.Spec : Prop :=
  ∀ n, P8402343289707236317.a n = A233106 (n + 1)

end A233106

/-! ## A233106.P12902737924150097618

`(75+10*3^(n+1)+3*5^(n+1))/120`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233106

/-- `(75+10*3^(n+1)+3*5^(n+1))/120` -/
def P12902737924150097618.Spec : Prop :=
  ∀ n, P12902737924150097618.a n = (A233106 (n + 1) : ℚ)

end A233106

/-!
# A233107: Number of n X 2 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233107, there is no canonical definition to state claims against.
-/

/-! ## A233107.P12053355444040751799

`29*a(n-1)-175*a(n-2)+147*a(n-3)` with `a(0)=2, a(1)=19, a(2)=313`
-/

namespace A233107.P12053355444040751799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 19, 313] fun n a =>
  29 * a (n - 1) - 175 * a (n - 2) + 147 * a (n - 3)

end

end A233107.P12053355444040751799

/-! ## A233107.P5037911681175604551

`(105+18*7^(n+1)+5*21^(n+1))/168`
-/

namespace A233107.P5037911681175604551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (105 + 18 * 7 ^ (n + 1) + 5 * 21 ^ (n + 1) : ℚ) / 168

end

end A233107.P5037911681175604551

/-! ## A233107.P1680984966104869881

`A233113(∑[n+1]+2)`
-/

namespace A233107.P1680984966104869881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233107.P1680984966104869881

/-! ## A233107.P1480273342940250445

`record[A167374(n)*A233113(n+3)]`
-/

namespace A233107.P1480273342940250445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A233113 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233107.P1480273342940250445

/-! ## A233107.P2443702379337210330

`record[A233113(Δ[A003453(n+5)])]`
-/

namespace A233107.P2443702379337210330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233107.P2443702379337210330

/-!
# A233108: Number of n X 3 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233108, there is no canonical definition to state claims against.
-/

/-! ## A233108.P6689267826300783765

`A233113(∑[n+2]+4)`
-/

namespace A233108.P6689267826300783765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233108.P6689267826300783765

/-! ## A233108.P9805259197291262756

`lcm(A054977(n), A233113(A167614(n+1)))`
-/

namespace A233108.P9805259197291262756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A233113 (A167614 (n + 1)).toNat)

end

end A233108.P9805259197291262756

/-! ## A233108.P9699735733973735100

`A015161(n)!*A233113(A055999(n)+4)`
-/

namespace A233108.P9699735733973735100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A015161 n).toNat : ℤ) * A233113 (A055999 n + 4).toNat

end

end A233108.P9699735733973735100

/-! ## A233108.P7646695215355337184

`A233113(A055999(n)+4)%A233226(n+1)`
-/

namespace A233108.P7646695215355337184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233113 (A055999 n + 4).toNat) (A233226 (n + 1))

end

end A233108.P7646695215355337184

/-! ## A233108.P2747807376732532241

`A007318(C(6, n))*A233113(A055999(n)+4)`
-/

namespace A233108.P2747807376732532241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 6 n) * A233113 (A055999 n + 4).toNat

end

end A233108.P2747807376732532241

/-!
# A233109: Number of nX4 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233109, there is no canonical definition to state claims against.
-/

/-! ## A233109.P9953868200848870256

`A233113(A167614(n+2)+1)`
-/

namespace A233109.P9953868200848870256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (A167614 (n + 2) + 1).toNat

end

end A233109.P9953868200848870256

/-! ## A233109.P7598214492322573947

`A233113(eq[2, A152157(n)])`
-/

namespace A233109.P7598214492322573947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233109.P7598214492322573947

/-! ## A233109.P3556156745481592617

`A233113(eq[3, A193592(n)])`
-/

namespace A233109.P3556156745481592617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233109.P3556156745481592617

/-! ## A233109.P15089876530620859566

`A233113(eq[4, A140996(n)])`
-/

namespace A233109.P15089876530620859566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233109.P15089876530620859566

/-! ## A233109.P12928758233389207551

`A233113(A046691(n+2)+1)`
-/

namespace A233109.P12928758233389207551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (A046691 (n + 2) + 1).toNat

end

end A233109.P12928758233389207551

/-!
# A233110: Number of nX5 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233110, there is no canonical definition to state claims against.
-/

/-! ## A233110.P10203649021905111825

`A233113(A374005(n+1))`
-/

namespace A233110.P10203649021905111825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (A374005 (n + 1)).toNat

end

end A233110.P10203649021905111825

/-! ## A233110.P14022695242572853449

`A233113(A155212(n)+13)`
-/

namespace A233110.P14022695242572853449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (A155212 n + 13).toNat

end

end A233110.P14022695242572853449

/-! ## A233110.P8255875179008673489

`A233113(Δ[A264443(n)])`
-/

namespace A233110.P8255875179008673489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (f1 (n + 1) - f1 n).toNat

end

end A233110.P8255875179008673489

/-! ## A233110.P4726688772775631722

`A233113(eq[3, A152157(n)])`
-/

namespace A233110.P4726688772775631722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233110.P4726688772775631722

/-! ## A233110.P319195618048274529

`A233113(eq[4, A193592(n)])`
-/

namespace A233110.P319195618048274529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233110.P319195618048274529

/-!
# A233114: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..1+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A233114, there is no canonical definition to state claims against.
-/

/-! ## A233114.P54939401235533362

`A233117(∑[n+1])`
-/

namespace A233114.P54939401235533362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233114.P54939401235533362

/-! ## A233114.P3640799607278098994

`record[A233117(A133825(n))]`
-/

namespace A233114.P3640799607278098994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233114.P3640799607278098994

/-! ## A233114.P10444121861032051282

`record[A023531(n)*A233117(n+1)]`
-/

namespace A233114.P10444121861032051282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A233117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233114.P10444121861032051282

/-! ## A233114.P8714066256887979506

`record[A115713(n)*A233117(n+1)]`
-/

namespace A233114.P8714066256887979506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115713 n * A233117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233114.P8714066256887979506

/-!
# A233115: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..2+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A233115, there is no canonical definition to state claims against.
-/

/-! ## A233115.P6869064990740769312

`A233117(∑[n+2])`
-/

namespace A233115.P6869064990740769312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233115.P6869064990740769312

/-! ## A233115.P16800827004116800099

`A233117(A000096(n+1))+A033665(n)`
-/

namespace A233115.P16800827004116800099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (A000096 (n + 1)).toNat + A033665 n

end

end A233115.P16800827004116800099

/-! ## A233115.P16231286135383459215

`A067032(n)*A233117(A000096(n+1))`
-/

namespace A233115.P16231286135383459215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n * A233117 (A000096 (n + 1)).toNat

end

end A233115.P16231286135383459215

/-!
# A233116: Number of (n+1)X(3+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..3+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A233116, there is no canonical definition to state claims against.
-/

/-! ## A233116.P2008401377513985344

`A233117(∑[n+3]+1)`
-/

namespace A233116.P2008401377513985344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233116.P2008401377513985344

/-!
# A233118: Number of (1+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..1+1} nondecreasing.

The programs for A233118, there is no canonical definition to state claims against.
-/

/-! ## A233118.P4349207594893064455

`A233117(∑[n]+1)`
-/

namespace A233118.P4349207594893064455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233118.P4349207594893064455

/-! ## A233118.P2519091625341612643

`and(-1, A233117(A000124(n)))`
-/

namespace A233118.P2519091625341612643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A233117 (A000124 n).toNat)

end

end A233118.P2519091625341612643

/-! ## A233118.P5896217567910220126

`record[A010054(n)*A233117(n+1)]`
-/

namespace A233118.P5896217567910220126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233118.P5896217567910220126

/-! ## A233118.P234909509698872804

`record[gcd(A002262(n), A233117(n+1))]`
-/

namespace A233118.P234909509698872804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233117 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233118.P234909509698872804

/-! ## A233118.P8631596825222648915

`record[A233117(n+1)/A157385(n+1)]`
-/

namespace A233118.P8631596825222648915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233117 (n + 1) : ℚ) / (A157385 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233118.P8631596825222648915

/-!
# A233119: Number of (2+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..2+1} nondecreasing.

The programs for A233119, there is no canonical definition to state claims against.
-/

/-! ## A233119.P14978791501934480932

`A233117(∑[n+1]+2)`
-/

namespace A233119.P14978791501934480932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233119.P14978791501934480932

/-! ## A233119.P15250257220505682060

`record[A233117(n+3)/A249266(n)]`
-/

namespace A233119.P15250257220505682060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233117 (n + 3) : ℚ) / (A249266 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233119.P15250257220505682060

/-! ## A233119.P3087969738998665328

`record[A233117(n+3)/A249268(n)]`
-/

namespace A233119.P3087969738998665328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233117 (n + 3) : ℚ) / (A249268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233119.P3087969738998665328

/-! ## A233119.P4715996629677784347

`record[A233117(n+3)/A249269(n)]`
-/

namespace A233119.P4715996629677784347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233117 (n + 3) : ℚ) / (A249269 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233119.P4715996629677784347

/-!
# A233120: Number of (3+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..3+1} nondecreasing.

The programs for A233120, there is no canonical definition to state claims against.
-/

/-! ## A233120.P6539928556764714288

`A233117(∑[n+2]+4)`
-/

namespace A233120.P6539928556764714288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233120.P6539928556764714288

/-! ## A233120.P18256060822679514699

`lcm(1-and(2, n), A233117(A167614(n+1)))`
-/

namespace A233120.P18256060822679514699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A233117 (A167614 (n + 1)).toNat)

end

end A233120.P18256060822679514699

/-! ## A233120.P5618414124782318360

`A233117(A167614(n+1))+A025469(n)`
-/

namespace A233120.P5618414124782318360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (A167614 (n + 1)).toNat + A025469 n

end

end A233120.P5618414124782318360

/-!
# A233121: Number of (4+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..4+1} nondecreasing.

The programs for A233121, there is no canonical definition to state claims against.
-/

/-! ## A233121.P9317224529924183373

`A233117(A020752(n+1))`
-/

namespace A233121.P9317224529924183373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (A020752 (n + 1)).toNat

end

end A233121.P9317224529924183373

/-! ## A233121.P10029830609916911751

`A233117(A141214(n)+7)`
-/

namespace A233121.P10029830609916911751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233117 (A141214 n + 7).toNat

end

end A233121.P10029830609916911751

/-!
# A233122: Number of n X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233122, there is no canonical definition to state claims against.
-/

/-! ## A233122.P14542726361670339260

`A233129(∑[4*n]+1)`
-/

namespace A233122.P14542726361670339260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233122.P14542726361670339260

/-!
# A233123: Number of n X 2 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233123, there is no canonical definition to state claims against.
-/

/-! ## A233123.P9189909605698948845

`(3^n+1)/2*4^n`
-/

namespace A233123.P9189909605698948845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℚ) / 2 * (4 ^ n : ℚ)

end

end A233123.P9189909605698948845

/-! ## A233123.P7140021965053463049

`12*a(n-1)-4^n` with `a(0)=1`
-/

namespace A233123.P7140021965053463049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  12 * a (n - 1) - (4 ^ n : ℤ)

end

end A233123.P7140021965053463049

/-! ## A233123.P5993502787218221794

`4*3*a(n-1)-A000302(n)` with `a(0)=1`
-/

namespace A233123.P5993502787218221794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (3 * a (n - 1)) - A000302 n

end

end A233123.P5993502787218221794

/-! ## A233123.P14264319173592221599

`lcm(A007051(n), A107906(n))`
-/

namespace A233123.P14264319173592221599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007051 n) (A107906 n)

end

end A233123.P14264319173592221599

/-! ## A233123.P12105276735234014860

`(A001021(n)+A000302(n))/2`
-/

namespace A233123.P12105276735234014860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n + A000302 n : ℚ) / 2

end

end A233123.P12105276735234014860

/-! ## A233123.P9254963990456773863

`(A034660(n)-A034488(n))/2`
-/

namespace A233123.P9254963990456773863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034660 n - A034488 n : ℚ) / 2

end

end A233123.P9254963990456773863

/-! ## A233123.P2157693285958627869

`A004171(n)*A007051(n)/2`
-/

namespace A233123.P2157693285958627869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n * A007051 n : ℚ) / 2

end

end A233123.P2157693285958627869

/-! ## A233123.P13335540658900964461

`A000079(n)*A074601(n)/2`
-/

namespace A233123.P13335540658900964461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A074601 n : ℚ) / 2

end

end A233123.P13335540658900964461

/-! ## A233123.P3527165457093567445

`A004171(n)*A034472(n)/4`
-/

namespace A233123.P3527165457093567445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n * A034472 n : ℚ) / 4

end

end A233123.P3527165457093567445

/-! ## A233123.P16000585451002039875

`(A001021(n)+A000079(n)²)/2`
-/

namespace A233123.P16000585451002039875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n + A000079 n ^ 2 : ℚ) / 2

end

end A233123.P16000585451002039875

/-!
# A233124: Number of n X 3 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233124, there is no canonical definition to state claims against.
-/

/-! ## A233124.P12389044409311222929

`A233129(∑[n+2]+4)`
-/

namespace A233124.P12389044409311222929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233124.P12389044409311222929

/-! ## A233124.P5385008002192263232

`lcm(A020985(n), A233129(A167614(n+1)))`
-/

namespace A233124.P5385008002192263232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A233129 (A167614 (n + 1)).toNat)

end

end A233124.P5385008002192263232

/-! ## A233124.P4522743072905489309

`A233129(A167614(n+1))%A233125(n+1)`
-/

namespace A233124.P4522743072905489309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233129 (A167614 (n + 1)).toNat) (A233125 (n + 1))

end

end A233124.P4522743072905489309

/-! ## A233124.P2237513237999611551

`A082460(2*(n+1))*A233129(A167614(n+1))`
-/

namespace A233124.P2237513237999611551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (2 * (n + 1)) * A233129 (A167614 (n + 1)).toNat

end

end A233124.P2237513237999611551

/-! ## A233124.P9305417685963190724

`A233174(∑[n+3]+1)`
-/

namespace A233124.P9305417685963190724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233124.P9305417685963190724

/-!
# A233125: Number of nX4 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabeled 6-colorings with no clashing color pairs).

The programs for A233125, there is no canonical definition to state claims against.
-/

/-! ## A233125.P5802924961829228226

`A233129(A374004(n+1))`
-/

namespace A233125.P5802924961829228226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A374004 (n + 1)).toNat

end

end A233125.P5802924961829228226

/-! ## A233125.P12448825217670955711

`A233129(A052905(n)+9)`
-/

namespace A233125.P12448825217670955711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A052905 n + 9).toNat

end

end A233125.P12448825217670955711

/-! ## A233125.P11075677452272334305

`A233129(A055999(n)+10)`
-/

namespace A233125.P11075677452272334305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A055999 n + 10).toNat

end

end A233125.P11075677452272334305

/-! ## A233125.P4541037605577280162

`A233129(A167614(n+2)+1)`
-/

namespace A233125.P4541037605577280162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A167614 (n + 2) + 1).toNat

end

end A233125.P4541037605577280162

/-! ## A233125.P9251782725163818125

`A233129(A141214(n+1))`
-/

namespace A233125.P9251782725163818125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A141214 (n + 1)).toNat

end

end A233125.P9251782725163818125

/-!
# A233126: Number of nX5 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233126, there is no canonical definition to state claims against.
-/

/-! ## A233126.P2451608042794994327

`A233129(A374005(n+1))`
-/

namespace A233126.P2451608042794994327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A374005 (n + 1)).toNat

end

end A233126.P2451608042794994327

/-! ## A233126.P6157797224219646806

`A233129(A167499(n+3))`
-/

namespace A233126.P6157797224219646806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A167499 (n + 3)).toNat

end

end A233126.P6157797224219646806

/-! ## A233126.P3353074200445719442

`A233129(Δ[A023545(n+1)])`
-/

namespace A233126.P3353074200445719442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (f1 (n + 1) - f1 n).toNat

end

end A233126.P3353074200445719442

/-!
# A233127: Number of nX6 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233127, there is no canonical definition to state claims against.
-/

/-! ## A233127.P14219405622291115012

`A233129(A374007(n+1))`
-/

namespace A233127.P14219405622291115012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A374007 (n + 1)).toNat

end

end A233127.P14219405622291115012

/-! ## A233127.P11485988617857455609

`A233129(A167499(n+5)-10)`
-/

namespace A233127.P11485988617857455609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A167499 (n + 5) - 10).toNat

end

end A233127.P11485988617857455609

/-! ## A233127.P6517320173702354738

`A233129(Δ[Δ[A006504(n+1)]])`
-/

namespace A233127.P6517320173702354738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (f1 (n + 1) - f1 n).toNat

end

end A233127.P6517320173702354738

/-!
# A233128: 

The programs for A233128, there is no canonical definition to state claims against.
-/

/-! ## A233128.P4693557894363773397

`A233129(A000124(n+7)-7)`
-/

namespace A233128.P4693557894363773397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233129 (A000124 (n + 7) - 7).toNat

end

end A233128.P4693557894363773397

/-!
# A233129: T(n,k) = number of n X k 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabeled 6-colorings with no clashing color pairs).

The programs for A233129, there is no canonical definition to state claims against.
-/

/-! ## A233129.P6790913018201151937

`A110656(A223569(n+1)+A223202(n+1))`
-/

namespace A233129.P6790913018201151937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A223569 (n + 1) + A223202 (n + 1)).toNat

end

end A233129.P6790913018201151937

/-! ## A233129.P17511087069515846608

`xor(A188037(A115277(n)), A222828(n+1))`
-/

namespace A233129.P17511087069515846608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188037 (A115277 n).toNat) (A222828 (n + 1))

end

end A233129.P17511087069515846608

/-! ## A233129.P8865409699014176540

`xor(A222828(n+1), A308187(A007581(n)))`
-/

namespace A233129.P8865409699014176540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A222828 (n + 1)) (A308187 (A007581 n).toNat)

end

end A233129.P8865409699014176540

/-! ## A233129.P45229324931143239

`xor(A121262(A266765(n)), A222828(n+1))`
-/

namespace A233129.P45229324931143239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121262 (A266765 n).toNat) (A222828 (n + 1))

end

end A233129.P45229324931143239

/-!
# A233130: Number of negative formulas with two connectives (-> and *) and no variables.

The programs for A233130, there is no canonical definition to state claims against.
-/

/-! ## A233130.P12124466770771726784

`A151374(n)-A233396(n)`
-/

namespace A233130.P12124466770771726784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151374 n - A233396 n

end

end A233130.P12124466770771726784

/-! ## A233130.P159089760911898050

`A052701(n+1)-A233396(n)`
-/

namespace A233130.P159089760911898050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 (n + 1) - A233396 n

end

end A233130.P159089760911898050

/-! ## A233130.P11492021140174891264

`2^n*A000108(n)-A233396(n)`
-/

namespace A233130.P11492021140174891264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000108 n - A233396 n

end

end A233130.P11492021140174891264

/-! ## A233130.P885118764146650312

`A151374(n)%A233396(A028310(n))`
-/

namespace A233130.P885118764146650312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151374 n) (A233396 (A028310 n).toNat)

end

end A233130.P885118764146650312

/-! ## A233130.P436269010906265572

`gcd(A156128(n), A156270(n))-A233396(n)`
-/

namespace A233130.P436269010906265572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A156128 n) (A156270 n) : ℤ) - A233396 n

end

end A233130.P436269010906265572

/-!
# A233131: Sum of remainders of n modulo all smaller composite numbers.

The programs for A233131, the canonical program `A233131.P11554169254893934889` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233131 has offset 0).

The definition of A233131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233131.P5442813408559597271

`A004125(round(sqrt(n²+1)))-A024934(n)`
-/

namespace A233131.P5442813408559597271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A024934 n

end

end A233131.P5442813408559597271

namespace A233131

/-- `A004125(round(sqrt(n²+1)))-A024934(n)` -/
def P5442813408559597271.Spec : Prop :=
  ∀ n, P5442813408559597271.a n = A233131 n

end A233131

/-! ## A233131.P3502829656667643003

`A004125(n+1)+A237588(n+1)-A024934(n)`
-/

namespace A233131.P3502829656667643003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (A237588 (n + 1) - A024934 n)

end

end A233131.P3502829656667643003

namespace A233131

/-- `A004125(n+1)+A237588(n+1)-A024934(n)` -/
def P3502829656667643003.Spec : Prop :=
  ∀ n, P3502829656667643003.a n = A233131 n

end A233131

/-! ## A233131.P11554169254893934889

`A004125(A028310(n))-(n*A230980(n)-A024924(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A233131

/-- `A004125(A028310(n))-(n*A230980(n)-A024924(n))` -/
def P11554169254893934889.Spec : Prop :=
  ∀ n, P11554169254893934889.a n = A233131 n

theorem P11554169254893934889.correct : P11554169254893934889.Spec := by
  intro n
  simp only [A233131]

end A233131

/-! ## A233131.P17998415190183507588

`A004125(A233583(n+1))-(n*A230980(n)-A024924(n))`
-/

namespace A233131.P17998415190183507588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A233583 (n + 1)).toNat - ((n : ℤ) * A230980 n - A024924 n)

end

end A233131.P17998415190183507588

namespace A233131

/-- `A004125(A233583(n+1))-(n*A230980(n)-A024924(n))` -/
def P17998415190183507588.Spec : Prop :=
  ∀ n, P17998415190183507588.a n = A233131 n

end A233131

/-!
# A233133: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^10.

The programs for A233133, there is no canonical definition to state claims against.
-/

/-! ## A233133.P4047228013281964822

`A000720(A233134(n+1))`
-/

namespace A233133.P4047228013281964822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233134 (n + 1)).toNat

end

end A233133.P4047228013281964822

/-! ## A233133.P1266872003903089437

`∑{d}[A233134(n+1), A061395(#)]`
-/

namespace A233133.P1266872003903089437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233133.P1266872003903089437

/-! ## A233133.P18178309401734892953

`A061395(A233134(n+1)%A037074(n+1))`
-/

namespace A233133.P18178309401734892953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A233134 (n + 1)) (A037074 (n + 1))).toNat

end

end A233133.P18178309401734892953

/-! ## A233133.P16623475837738228796

`A061395(2*A233134(n+1))`
-/

namespace A233133.P16623475837738228796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A233134 (n + 1)).toNat

end

end A233133.P16623475837738228796

/-!
# A233134: Prime(k), where k is such that (1 + Sum_{j=1..k} prime(j)^10) / k is an integer.

The programs for A233134, there is no canonical definition to state claims against.
-/

/-! ## A233134.P15031383069607647969

`A000040(A233133(n+1))`
-/

namespace A233134.P15031383069607647969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233133 (n + 1)).toNat

end

end A233134.P15031383069607647969

/-! ## A233134.P12527668328794534001

`A008578(A233133(n+1)+1)`
-/

namespace A233134.P12527668328794534001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233133 (n + 1) + 1).toNat

end

end A233134.P12527668328794534001

/-! ## A233134.P439532463446103899

`A158611(A233133(n+1)+2)`
-/

namespace A233134.P439532463446103899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A233133 (n + 1) + 2).toNat

end

end A233134.P439532463446103899

/-! ## A233134.P7052063618962452363

`∑{d}[A233133(n+1), A007444(#)]`
-/

namespace A233134.P7052063618962452363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233134.P7052063618962452363

/-! ## A233134.P14008579572133006187

`A006005(A233133(n+1))+A000007(n)`
-/

namespace A233134.P14008579572133006187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A233133 (n + 1)).toNat + A000007 n

end

end A233134.P14008579572133006187

/-! ## A233134.P5040391217646073143

`gcd(A000038(n), A273960(A233133(n+1)))`
-/

namespace A233134.P5040391217646073143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273960 (A233133 (n + 1)).toNat)

end

end A233134.P5040391217646073143

/-! ## A233134.P10851901817816698591

`A006093(A233133(n+1))+A014963(15*(n+1))`
-/

namespace A233134.P10851901817816698591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A233133 (n + 1)).toNat + A014963 (15 * (n + 1))

end

end A233134.P10851901817816698591

/-! ## A233134.P8346858433139773549

`A006093(A233133(n+1))+A008683(A005117(n+1))²`
-/

namespace A233134.P8346858433139773549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A233133 (n + 1)).toNat + A008683 (A005117 (n + 1)).toNat ^ 2

end

end A233134.P8346858433139773549

/-!
# A233135: Shortest (x+1,2x)-code of n.

The programs for A233135, there is no canonical definition to state claims against.
-/

/-! ## A233135.P2586915942726201554

`A004086(A233137(n+1))`
-/

namespace A233135.P2586915942726201554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A233137 (n + 1)).toNat

end

end A233135.P2586915942726201554

/-! ## A233135.P13709511641626676206

`A065031(lcm(3, A329274(n)))`
-/

namespace A233135.P13709511641626676206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (Int.lcm 3 (A329274 n))

end

end A233135.P13709511641626676206

/-!
# A233136: Concatenated shortest (x+1,2x)-codes for the positive integers.

The programs for A233136, there is no canonical definition to state claims against.
-/

/-! ## A233136.P5424023097793543869

`A022932(A184257(4*n+1))+A022932(A002262(4*n+3))`
-/

namespace A233136.P5424023097793543869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (A184257 (4 * n + 1)).toNat + A022932 (A002262 (4 * n + 3)).toNat

end

end A233136.P5424023097793543869

/-! ## A233136.P15093798544846893097

`gcd(A246362(A246381(n))², A131130(n))`
-/

namespace A233136.P15093798544846893097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246362 (A246381 n).toNat ^ 2) (A131130 n)

end

end A233136.P15093798544846893097

/-! ## A233136.P17644771055346387902

`A025142(A306323(n+1)*A324842(2*(n+1)))`
-/

namespace A233136.P17644771055346387902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (A306323 (n + 1) * A324842 (2 * (n + 1))).toNat

end

end A233136.P17644771055346387902

/-! ## A233136.P17387708617565339221

`A246127(A237354(n+5)*A361666(n+1))`
-/

namespace A233136.P17387708617565339221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (A237354 (n + 5) * A361666 (n + 1)).toNat

end

end A233136.P17387708617565339221

/-!
# A233137: Reversed shortest (x+1,2x)-code of n.

The programs for A233137, there is no canonical definition to state claims against.
-/

/-! ## A233137.P10879171027386578939

`A004086(A233135(n+1))`
-/

namespace A233137.P10879171027386578939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A233135 (n + 1)).toNat

end

end A233137.P10879171027386578939

/-! ## A233137.P6413505981417914397

`A064770(∑[∑[A150318(n)]])`
-/

namespace A233137.P6413505981417914397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233137.P6413505981417914397

/-! ## A233137.P6383530737059500469

`record[A065031(Δ[A164156(n)])]`
-/

namespace A233137.P6383530737059500469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233137.P6383530737059500469

/-!
# A233138: Concatenated reversed shortest (x+1,2x)-codes for the positive integers.

The programs for A233138, there is no canonical definition to state claims against.
-/

/-! ## A233138.P8712528994935216073

`A346707(A272215(n+1)+A074206(n))`
-/

namespace A233138.P8712528994935216073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346707 (A272215 (n + 1) + A074206 n).toNat

end

end A233138.P8712528994935216073

/-! ## A233138.P903149614606708342

`gcd(2, A144254(A189168(n+1)))`
-/

namespace A233138.P903149614606708342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A144254 (A189168 (n + 1)).toNat)

end

end A233138.P903149614606708342

/-! ## A233138.P1429405991152029938

`A000034(A239464(n+1)%A265055(n))`
-/

namespace A233138.P1429405991152029938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.tmod (A239464 (n + 1)) (A265055 n)).toNat

end

end A233138.P1429405991152029938

/-! ## A233138.P14566111486810432267

`A130196(or(A011905(2*n+1), A162607(n)))`
-/

namespace A233138.P14566111486810432267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (Int.lor (A011905 (2 * n + 1)) (A162607 n)).toNat

end

end A233138.P14566111486810432267

/-! ## A233138.P8002349357236642636

`A000002(p?[A171896(2*(n+1))]*A171898(4*n+2))`
-/

namespace A233138.P8002349357236642636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A171898 (4 * n + 2)).toNat

end

end A233138.P8002349357236642636

/-!
# A233139: Number of tilings of a 4 X n rectangle using T and Z tetrominoes.

The programs for A233139, the canonical program `A233139.P12112664299954791325` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233139 has offset 0).

The definition of A233139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233139.P12112664299954791325

`2*a(n-1)+a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233139

/-- `2*a(n-1)+a(n-3)+2*a(n-4)` -/
def P12112664299954791325.Spec : Prop :=
  ∀ n, (P12112664299954791325.a n : ℤ) = A233139 n

theorem P12112664299954791325.correct : P12112664299954791325.Spec := by
  intro n
  simp only [A233139]

end A233139

/-! ## A233139.P3020551265774714697

`ogf((-1+2x+x^3)/(-1+2x+x^3+2x^4))`
-/

namespace A233139.P3020551265774714697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, -1] [1, -2, 0, -1, -2] n

end

end A233139.P3020551265774714697

namespace A233139

/-- `ogf((-1+2x+x^3)/(-1+2x+x^3+2x^4))` -/
def P3020551265774714697.Spec : Prop :=
  ∀ n, P3020551265774714697.a n = A233139 n

end A233139

/-! ## A233139.P6063794543733605951

`a(n-3)+2*(a(n-1)+a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A233139.P6063794543733605951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 3) + 2 * (a (n - 1) + a (n - 4))

end

end A233139.P6063794543733605951

namespace A233139

/-- `a(n-3)+2*(a(n-1)+a(n-4))` -/
def P6063794543733605951.Spec : Prop :=
  ∀ n, (P6063794543733605951.a n : ℤ) = A233139 n

end A233139

/-! ## A233139.P3817078538070060108

`A195109(round(2^n/5)+1)-n`
-/

namespace A233139.P3817078538070060108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 5) + 1).toNat - (n : ℤ)

end

end A233139.P3817078538070060108

namespace A233139

/-- `A195109(round(2^n/5)+1)-n` -/
def P3817078538070060108.Spec : Prop :=
  ∀ n, P3817078538070060108.a n = A233139 n

end A233139

/-! ## A233139.P3054609525872667808

`and(A228099(n), A283314(n))`
-/

namespace A233139.P3054609525872667808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228099 n) (A283314 n)

end

end A233139.P3054609525872667808

namespace A233139

/-- `and(A228099(n), A283314(n))` -/
def P3054609525872667808.Spec : Prop :=
  ∀ n, P3054609525872667808.a n = A233139 n

end A233139

/-!
# A233140: Number of n X n 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233140, there is no canonical definition to state claims against.
-/

/-! ## A233140.P7747504559495740102

`A233147(∑[4*n]+1)`
-/

namespace A233140.P7747504559495740102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233140.P7747504559495740102

/-!
# A233141: Number of n X 2 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233141, there is no canonical definition to state claims against.
-/

/-! ## A233141.P17507925882313527870

`A233147(∑[n+1]+2)`
-/

namespace A233141.P17507925882313527870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233141.P17507925882313527870

/-! ## A233141.P12626142154846046747

`record[A010054(n)*A233147(n+2)]`
-/

namespace A233141.P12626142154846046747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233147 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233141.P12626142154846046747

/-! ## A233141.P11980323326975329579

`lcm(A014908(n), A233147(A133263(n+1)))`
-/

namespace A233141.P11980323326975329579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014908 n) (A233147 (A133263 (n + 1)).toNat)

end

end A233141.P11980323326975329579

/-! ## A233141.P8691412380946851689

`A014908(n+1)*A233147(A133263(n+1))`
-/

namespace A233141.P8691412380946851689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 (n + 1) * A233147 (A133263 (n + 1)).toNat

end

end A233141.P8691412380946851689

/-! ## A233141.P15458075615371222285

`A233147(A133263(n+1))+A151933(3*n+1)`
-/

namespace A233141.P15458075615371222285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A133263 (n + 1)).toNat + A151933 (3 * n + 1)

end

end A233141.P15458075615371222285

/-!
# A233142: Number of nX3 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233142, there is no canonical definition to state claims against.
-/

/-! ## A233142.P17365790464762747204

`A233147(∑[n+2]+4)`
-/

namespace A233142.P17365790464762747204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233142.P17365790464762747204

/-! ## A233142.P2018061874375024398

`A233147(A167614(n+1))+A185203(n)`
-/

namespace A233142.P2018061874375024398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A167614 (n + 1)).toNat + A185203 n

end

end A233142.P2018061874375024398

/-! ## A233142.P8378136473526910559

`A233147(A167614(n+1))+A185284(n)`
-/

namespace A233142.P8378136473526910559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A167614 (n + 1)).toNat + A185284 n

end

end A233142.P8378136473526910559

/-! ## A233142.P13399410905746916113

`lcm(A033999(n), A233147(A167614(n+1)))`
-/

namespace A233142.P13399410905746916113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A233147 (A167614 (n + 1)).toNat)

end

end A233142.P13399410905746916113

/-! ## A233142.P7663781873155709779

`A233147(A167614(n+1))%A233143(n+1)`
-/

namespace A233142.P7663781873155709779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233147 (A167614 (n + 1)).toNat) (A233143 (n + 1))

end

end A233142.P7663781873155709779

/-!
# A233143: Number of nX4 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233143, there is no canonical definition to state claims against.
-/

/-! ## A233143.P8512086872664843259

`A233147(A141214(n)+7)`
-/

namespace A233143.P8512086872664843259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A141214 n + 7).toNat

end

end A233143.P8512086872664843259

/-! ## A233143.P13492684303776129618

`A233147(A052905(n)+9)`
-/

namespace A233143.P13492684303776129618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A052905 n + 9).toNat

end

end A233143.P13492684303776129618

/-! ## A233143.P17470058732305882483

`A233147(A055999(n)+10)`
-/

namespace A233143.P17470058732305882483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A055999 n + 10).toNat

end

end A233143.P17470058732305882483

/-! ## A233143.P14690790496917218332

`A233147(A167614(n+2)+1)`
-/

namespace A233143.P14690790496917218332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A167614 (n + 2) + 1).toNat

end

end A233143.P14690790496917218332

/-! ## A233143.P14495553380863433795

`A233147(A155212(n)+5)`
-/

namespace A233143.P14495553380863433795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A155212 n + 5).toNat

end

end A233143.P14495553380863433795

/-!
# A233144: Number of nX5 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233144, there is no canonical definition to state claims against.
-/

/-! ## A233144.P10225592401736224310

`A233147(A374005(n+1))`
-/

namespace A233144.P10225592401736224310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A374005 (n + 1)).toNat

end

end A233144.P10225592401736224310

/-! ## A233144.P17203906792106604756

`A233147(A155212(n)+13)`
-/

namespace A233144.P17203906792106604756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A155212 n + 13).toNat

end

end A233144.P17203906792106604756

/-!
# A233145: 

The programs for A233145, there is no canonical definition to state claims against.
-/

/-! ## A233145.P6190539073911964733

`A233147(A167499(n+5)-10)`
-/

namespace A233145.P6190539073911964733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A167499 (n + 5) - 10).toNat

end

end A233145.P6190539073911964733

/-!
# A233146: 

The programs for A233146, there is no canonical definition to state claims against.
-/

/-! ## A233146.P14820494162292267794

`A233147(A000124(n+7)-7)`
-/

namespace A233146.P14820494162292267794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233147 (A000124 (n + 7) - 7).toNat

end

end A233146.P14820494162292267794

/-!
# A233148: Number of n-edge-colorings of the cubical graph.

The programs for A233148, there is no canonical definition to state claims against.
-/

/-! ## A233148.P5991878592662518924

`(24*C(n, 3))^(2*C(n, 4))!`
-/

namespace A233148.P5991878592662518924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (24 * Nat.choose n 3) ^ Nat.factorial (2 * Nat.choose n 4)

end

end A233148.P5991878592662518924

/-!
# A233149: a(n) = ((n^2+1)^3) - s, where s is the nearest square to (n^2+1)^3.

The programs for A233149, the canonical program `A233149.P1830884297999285355` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233149 has offset 1).

The definition of A233149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233149.P13533621579938121567

`((n+1)²+1)^3-round(sqrt(((n+1)²+1)^3))²`
-/

namespace A233149.P13533621579938121567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 + 1) ^ 3 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (((n + 1) ^ 2 + 1) ^ 3 : ℝ)) ^ 2

end

end A233149.P13533621579938121567

namespace A233149

/-- `((n+1)²+1)^3-round(sqrt(((n+1)²+1)^3))²` -/
def P13533621579938121567.Spec : Prop :=
  ∀ n, P13533621579938121567.a n = A233149 (n + 1)

theorem P13533621579938121567.correct : P13533621579938121567.Spec := by
  intro n
  simp only [A233149, Nat.add_sub_cancel, A233149.P13533621579938121567.a, A233149.P1830884297999285355.a, A077119, A077119.P17256151960313143409.a, A077118, A077118.P9288148666822653701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A233149

/-! ## A233149.P1830884297999285355

`-A077119((n+1)²+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A233149

/-- `-A077119((n+1)²+1)` -/
def P1830884297999285355.Spec : Prop :=
  ∀ n, P1830884297999285355.a n = A233149 (n + 1)

theorem P1830884297999285355.correct : P1830884297999285355.Spec := by
  intro n
  simp only [A233149, Nat.add_sub_cancel]

end A233149

/-!
# A233151: Number of n X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233151, there is no canonical definition to state claims against.
-/

/-! ## A233151.P11790948860110262057

`A233155(∑[4*n]+1)`
-/

namespace A233151.P11790948860110262057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233151.P11790948860110262057

/-! ## A233151.P10635199195019771256

`lcm(3, A233155(A001844(n)))`
-/

namespace A233151.P10635199195019771256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A233155 (A001844 n).toNat)

end

end A233151.P10635199195019771256

/-! ## A233151.P13945395023461267256

`record[A003982(n)*A233155(n+1)]`
-/

namespace A233151.P13945395023461267256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A233155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233151.P13945395023461267256

/-! ## A233151.P2372357383050941660

`record[gcd(A049581(n), A233155(n+1))]`
-/

namespace A233151.P2372357383050941660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A233155 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233151.P2372357383050941660

/-! ## A233151.P18051483722950927730

`or(A000007(n), A233155(A001844(n)))`
-/

namespace A233151.P18051483722950927730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A233155 (A001844 n).toNat)

end

end A233151.P18051483722950927730

/-!
# A233152: Number of n X 5 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233152, there is no canonical definition to state claims against.
-/

/-! ## A233152.P14167715965842984677

`15*a(n-1)-18*a(n-2)` with `a(0)=48, a(1)=648`
-/

namespace A233152.P14167715965842984677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [48, 648] fun n a =>
  15 * a (n - 1) - 18 * a (n - 2)

end

end A233152.P14167715965842984677

/-! ## A233152.P6103912391640374945

`12*A008776(n)*A020698(n)`
-/

namespace A233152.P6103912391640374945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A008776 n * A020698 n)

end

end A233152.P6103912391640374945

/-! ## A233152.P5189626189507883467

`6*A000244(n)*A147722(n+2)`
-/

namespace A233152.P5189626189507883467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000244 n * A147722 (n + 2)

end

end A233152.P5189626189507883467

/-! ## A233152.P4498102746060449895

`(A159289(n+1)+A052984(n+1))*A008776(n)`
-/

namespace A233152.P4498102746060449895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159289 (n + 1) + A052984 (n + 1)) * A008776 n

end

end A233152.P4498102746060449895

/-! ## A233152.P6807530708178157596

`(A008776(n+1)-A008776(n))*A396257(n+1)`
-/

namespace A233152.P6807530708178157596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 (n + 1) - A008776 n) * A396257 (n + 1)

end

end A233152.P6807530708178157596

/-! ## A233152.P7886566598759197485

`(A107839(n+1)+A052984(n+1))*A008776(n+1)`
-/

namespace A233152.P7886566598759197485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107839 (n + 1) + A052984 (n + 1)) * A008776 (n + 1)

end

end A233152.P7886566598759197485

/-!
# A233153: Number of n X 6 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233153, there is no canonical definition to state claims against.
-/

/-! ## A233153.P17977787379534670161

`A268969(n+1)-A268902(n+1)`
-/

namespace A233153.P17977787379534670161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268969 (n + 1) - A268902 (n + 1)

end

end A233153.P17977787379534670161

/-! ## A233153.P13752648779906625751

`sqrt(A204103(2*n+1))`
-/

namespace A233153.P13752648779906625751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204103 (2 * n + 1) : ℝ)

end

end A233153.P13752648779906625751

/-! ## A233153.P5816868655796484424

`A233155(A052905(n+3))`
-/

namespace A233153.P5816868655796484424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A052905 (n + 3)).toNat

end

end A233153.P5816868655796484424

/-! ## A233153.P8310978361280469779

`A233155(eq[5, A193592(n)])`
-/

namespace A233153.P8310978361280469779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233153.P8310978361280469779

/-! ## A233153.P7577578634742312468

`A233155(A167499(n+5)-10)`
-/

namespace A233153.P7577578634742312468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A167499 (n + 5) - 10).toNat

end

end A233153.P7577578634742312468

/-!
# A233154: Number of n X 7 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233154, there is no canonical definition to state claims against.
-/

/-! ## A233154.P11787909433602147006

`A268970(n+1)-A268903(n+1)`
-/

namespace A233154.P11787909433602147006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268970 (n + 1) - A268903 (n + 1)

end

end A233154.P11787909433602147006

/-! ## A233154.P10999890673186544498

`A233155(A055999(n+4))`
-/

namespace A233154.P10999890673186544498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A055999 (n + 4)).toNat

end

end A233154.P10999890673186544498

/-! ## A233154.P14819447833810109684

`A233155(eq[4, A219347(n)])`
-/

namespace A233154.P14819447833810109684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233154.P14819447833810109684

/-! ## A233154.P2076983737331234925

`A233155(eq[6, A193592(n)])`
-/

namespace A233154.P2076983737331234925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233154.P2076983737331234925

/-! ## A233154.P11842021104992209102

`A233155(A000124(n+7)-7)`
-/

namespace A233154.P11842021104992209102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A000124 (n + 7) - 7).toNat

end

end A233154.P11842021104992209102

/-!
# A233155: T(n,k) = Number of n X k 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233155, there is no canonical definition to state claims against.
-/

/-! ## A233155.P12093815099402781460

`A268971(n+1)-A268904(n+1)`
-/

namespace A233155.P12093815099402781460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (n + 1) - A268904 (n + 1)

end

end A233155.P12093815099402781460

/-! ## A233155.P997470219993126699

`A268971(n+1)-A229586(n+1)*A267884(n)`
-/

namespace A233155.P997470219993126699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (n + 1) - A229586 (n + 1) * A267884 n

end

end A233155.P997470219993126699

/-! ## A233155.P13311182910774594236

`A268971(n+1)-gcd(6, A167667(n))*A229586(n+1)`
-/

namespace A233155.P13311182910774594236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (n + 1) - (Int.gcd 6 (A167667 n) : ℤ) * A229586 (n + 1)

end

end A233155.P13311182910774594236

/-! ## A233155.P14687925659192586006

`A268971(n+1)+A008683(A065720(n+1))*A268904(n+1)`
-/

namespace A233155.P14687925659192586006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (n + 1) + A008683 (A065720 (n + 1)).toNat * A268904 (n + 1)

end

end A233155.P14687925659192586006

/-! ## A233155.P3749308032670777101

`A268971(n+1)-A089353(A034856(n+1))*A229586(n+1)`
-/

namespace A233155.P3749308032670777101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (n + 1) - A089353 (A034856 (n + 1)).toNat * A229586 (n + 1)

end

end A233155.P3749308032670777101

/-!
# A233156: Number of 3 X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233156, there is no canonical definition to state claims against.
-/

/-! ## A233156.P11556582983953819157

`A233155(∑[n+2]+4)`
-/

namespace A233156.P11556582983953819157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233156.P11556582983953819157

/-! ## A233156.P7338973670661328511

`lcm(3, A233155(A167614(n+1)))`
-/

namespace A233156.P7338973670661328511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A233155 (A167614 (n + 1)).toNat)

end

end A233156.P7338973670661328511

/-! ## A233156.P11261688356525219091

`A015600(n)*A233155(A167614(n+1))`
-/

namespace A233156.P11261688356525219091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A233155 (A167614 (n + 1)).toNat

end

end A233156.P11261688356525219091

/-! ## A233156.P15313643162443043902

`A233155(A167614(n+1))*A304042(n)`
-/

namespace A233156.P15313643162443043902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A167614 (n + 1)).toNat * A304042 n

end

end A233156.P15313643162443043902

/-! ## A233156.P15872310153942696666

`or(A000007(n), A233155(A167614(n+1)))`
-/

namespace A233156.P15872310153942696666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A233155 (A167614 (n + 1)).toNat)

end

end A233156.P15872310153942696666

/-!
# A233157: Number of 4 X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233157, there is no canonical definition to state claims against.
-/

/-! ## A233157.P2909888784654364171

`A268974(n+1)-A268907(n+1)`
-/

namespace A233157.P2909888784654364171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268974 (n + 1) - A268907 (n + 1)

end

end A233157.P2909888784654364171

/-! ## A233157.P2598967581385216150

`A233155(A145018(n+4))`
-/

namespace A233157.P2598967581385216150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A145018 (n + 4)).toNat

end

end A233157.P2598967581385216150

/-! ## A233157.P12663069377975085620

`A233155(A141214(n)+7)`
-/

namespace A233157.P12663069377975085620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A141214 n + 7).toNat

end

end A233157.P12663069377975085620

/-! ## A233157.P9987590849287399692

`A233155(A052905(n)+9)`
-/

namespace A233157.P9987590849287399692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A052905 n + 9).toNat

end

end A233157.P9987590849287399692

/-! ## A233157.P5872164415496901015

`A233155(A055999(n)+10)`
-/

namespace A233157.P5872164415496901015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A055999 n + 10).toNat

end

end A233157.P5872164415496901015

/-!
# A233158: Number of 5Xn 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233158, there is no canonical definition to state claims against.
-/

/-! ## A233158.P16948463494916462886

`A233155(A167499(n+3))`
-/

namespace A233158.P16948463494916462886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A167499 (n + 3)).toNat

end

end A233158.P16948463494916462886

/-! ## A233158.P795669322875759110

`A233155(A155212(n)+13)`
-/

namespace A233158.P795669322875759110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A155212 n + 13).toNat

end

end A233158.P795669322875759110

/-! ## A233158.P1582144180500211008

`A233155(A056000(n)+15)`
-/

namespace A233158.P1582144180500211008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A056000 n + 15).toNat

end

end A233158.P1582144180500211008

/-! ## A233158.P2888213534070503786

`A233155(eq[6, A131818(n+1)])`
-/

namespace A233158.P2888213534070503786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233158.P2888213534070503786

/-! ## A233158.P17356837367540972

`A233155(A167614(n+2)+n+6)`
-/

namespace A233158.P17356837367540972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A233158.P17356837367540972

/-!
# A233159: Number of 6Xn 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233159, there is no canonical definition to state claims against.
-/

/-! ## A233159.P5034762960852951205

`A233155(A056115(n)+21)`
-/

namespace A233159.P5034762960852951205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A056115 n + 21).toNat

end

end A233159.P5034762960852951205

/-! ## A233159.P2849698167335551428

`A233155(Δ[A264443(n)]+10)`
-/

namespace A233159.P2849698167335551428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (f1 (n + 1) - f1 n + 10).toNat

end

end A233159.P2849698167335551428

/-! ## A233159.P12313648964492771900

`A233155(A167499(n+4)+1)`
-/

namespace A233159.P12313648964492771900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A167499 (n + 4) + 1).toNat

end

end A233159.P12313648964492771900

/-! ## A233159.P13288151724019811100

`A233155(eq[7, A131818(n+1)])`
-/

namespace A233159.P13288151724019811100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233159.P13288151724019811100

/-! ## A233159.P17779378207092536370

`A233155(Δ[A023545(n+1)]+10)`
-/

namespace A233159.P17779378207092536370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (f1 (n + 1) - f1 n + 10).toNat

end

end A233159.P17779378207092536370

/-!
# A233160: Number of 7Xn 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally or antidiagonally.

The programs for A233160, there is no canonical definition to state claims against.
-/

/-! ## A233160.P4242517738288936296

`A233155(A167487(n+5))`
-/

namespace A233160.P4242517738288936296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A167487 (n + 5)).toNat

end

end A233160.P4242517738288936296

/-! ## A233160.P12516609276314848745

`A233155(A056119(n)+28)`
-/

namespace A233160.P12516609276314848745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (A056119 n + 28).toNat

end

end A233160.P12516609276314848745

/-! ## A233160.P8618722866342178958

`A233155(eq[11, A066657(n)])`
-/

namespace A233160.P8618722866342178958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233160.P8618722866342178958

/-! ## A233160.P13869500712713612438

`A233155(eq[8, A131818(n+1)])`
-/

namespace A233160.P13869500712713612438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233160.P13869500712713612438

/-! ## A233160.P418987921804320135

`A233155(eq[64, A059268(n)]+1)`
-/

namespace A233160.P418987921804320135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233160.P418987921804320135

/-!
# A233161: Number of n X n 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233161, there is no canonical definition to state claims against.
-/

/-! ## A233161.P5299720149265242599

`A233168((n+1)²+n²)`
-/

namespace A233161.P5299720149265242599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 ((n + 1) ^ 2 + n ^ 2)

end

end A233161.P5299720149265242599

/-! ## A233161.P7527682558766297679

`A015216(n)*A233168(A001844(n))`
-/

namespace A233161.P7527682558766297679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015216 n * A233168 (A001844 n).toNat

end

end A233161.P7527682558766297679

/-! ## A233161.P16367676123852600206

`or(A000007(n), A233168(A001844(n)))`
-/

namespace A233161.P16367676123852600206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A233168 (A001844 n).toNat)

end

end A233161.P16367676123852600206

/-! ## A233161.P11856092555806825574

`or(A151933(n), A233168(A001844(n)))`
-/

namespace A233161.P11856092555806825574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A233168 (A001844 n).toNat)

end

end A233161.P11856092555806825574

/-! ## A233161.P15838943635085210058

`A233168(A001844(n))+A008683(4*(n+1))`
-/

namespace A233161.P15838943635085210058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A233161.P15838943635085210058

/-!
# A233162: Number of n X 1 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabeled 8-colorings with no clashing color pairs).

The programs for A233162, the canonical program `A233162.P8274408616495409963` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233162 has offset 1).

The definition of A233162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233162.P8274408616495409963

`12*a(n-1)-44*a(n-2)+48*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=11`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233162

/-- `12*a(n-1)-44*a(n-2)+48*a(n-3)` -/
def P8274408616495409963.Spec : Prop :=
  ∀ n, P8274408616495409963.a n = A233162 (n + 1)

theorem P8274408616495409963.correct : P8274408616495409963.Spec := by
  intro n
  simp only [A233162, Nat.add_sub_cancel]

end A233162

/-! ## A233162.P10569248180397787907

`A233168(∑[n]+1)`
-/

namespace A233162.P10569248180397787907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233162.P10569248180397787907

namespace A233162

/-- `A233168(∑[n]+1)` -/
def P10569248180397787907.Spec : Prop :=
  ∀ n, P10569248180397787907.a n = A233162 (n + 1)

end A233162

/-! ## A233162.P5206252021982015614

`A233174(∑[C(n, a(n-1))])` with `a(0)=2`
-/

namespace A233162.P5206252021982015614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233162.P5206252021982015614

namespace A233162

/-- `A233174(∑[C(n, a(n-1))])` -/
def P5206252021982015614.Spec : Prop :=
  ∀ n, P5206252021982015614.a n = A233162 (n + 1)

end A233162

/-! ## A233162.P17589324020570002944

`A233174(A028310(∑[n]))`
-/

namespace A233162.P17589324020570002944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A233162.P17589324020570002944

namespace A233162

/-- `A233174(A028310(∑[n]))` -/
def P17589324020570002944.Spec : Prop :=
  ∀ n, P17589324020570002944.a n = A233162 (n + 1)

end A233162

/-! ## A233162.P12109361946836904001

`A233174(A179865(n+1))`
-/

namespace A233162.P12109361946836904001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A179865 (n + 1)).toNat

end

end A233162.P12109361946836904001

namespace A233162

/-- `A233174(A179865(n+1))` -/
def P12109361946836904001.Spec : Prop :=
  ∀ n, P12109361946836904001.a n = A233162 (n + 1)

end A233162

/-!
# A233163: Number of n X 3 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233163, there is no canonical definition to state claims against.
-/

/-! ## A233163.P6739824588511787396

`24*a(n-1)-128*a(n-2)` with `a(0)=3, a(1)=8, a(2)=96`
-/

namespace A233163.P6739824588511787396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 96] fun n a =>
  24 * a (n - 1) - 128 * a (n - 2)

end

end A233163.P6739824588511787396

/-! ## A233163.P10402078629845740155

`A011782(n)²*A242985(n)`
-/

namespace A233163.P10402078629845740155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A242985 n

end

end A233163.P10402078629845740155

/-! ## A233163.P16787679898317175261

`(A000079(n)+2)*A034008(3*n)`
-/

namespace A233163.P16787679898317175261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + 2) * A034008 (3 * n)

end

end A233163.P16787679898317175261

/-! ## A233163.P10152074678985792221

`A052548(n)*A166444(A008486(n))`
-/

namespace A233163.P10152074678985792221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n * A166444 (A008486 n).toNat

end

end A233163.P10152074678985792221

/-! ## A233163.P15265371109703092582

`(A090129(n+2)+A081294(n))*A081294(n)`
-/

namespace A233163.P15265371109703092582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090129 (n + 2) + A081294 n) * A081294 n

end

end A233163.P15265371109703092582

/-! ## A233163.P8259927970191218273

`(A090129(2*n+1)+A090129(n+2))*A090129(2*n+1)`
-/

namespace A233163.P8259927970191218273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090129 (2 * n + 1) + A090129 (n + 2)) * A090129 (2 * n + 1)

end

end A233163.P8259927970191218273

/-! ## A233163.P7085668155578535452

`A011782(A008585(n))+A000079(A111284(n+1))`
-/

namespace A233163.P7085668155578535452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008585 n).toNat + A000079 (A111284 (n + 1)).toNat

end

end A233163.P7085668155578535452

/-!
# A233164: Number of n X 4 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233164, there is no canonical definition to state claims against.
-/

/-! ## A233164.P17598999585968668553

`A233168(A374004(n+1))`
-/

namespace A233164.P17598999585968668553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A374004 (n + 1)).toNat

end

end A233164.P17598999585968668553

/-! ## A233164.P12064401459535226258

`A233168(A141214(n)+7)`
-/

namespace A233164.P12064401459535226258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A141214 n + 7).toNat

end

end A233164.P12064401459535226258

/-! ## A233164.P12281503727309915575

`A233168(A052905(n)+9)`
-/

namespace A233164.P12281503727309915575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A052905 n + 9).toNat

end

end A233164.P12281503727309915575

/-! ## A233164.P3526605196086130332

`A233168(A167614(n+2)+1)`
-/

namespace A233164.P3526605196086130332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A167614 (n + 2) + 1).toNat

end

end A233164.P3526605196086130332

/-! ## A233164.P12529989958888755529

`A233168(A034856(n+2)+6)`
-/

namespace A233164.P12529989958888755529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A034856 (n + 2) + 6).toNat

end

end A233164.P12529989958888755529

/-!
# A233165: Number of n X 5 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233165, there is no canonical definition to state claims against.
-/

/-! ## A233165.P16248781105416534232

`A233168(A374005(n+1))`
-/

namespace A233165.P16248781105416534232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A374005 (n + 1)).toNat

end

end A233165.P16248781105416534232

/-! ## A233165.P13097811103450854832

`A233168(A167499(n+3))`
-/

namespace A233165.P13097811103450854832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A167499 (n + 3)).toNat

end

end A233165.P13097811103450854832

/-! ## A233165.P3622264833895018513

`A233168(A167614(n+2)+n+6)`
-/

namespace A233165.P3622264833895018513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A233165.P3622264833895018513

/-! ## A233165.P17294718518864610190

`A233168(Δ[A264443(n)])`
-/

namespace A233165.P17294718518864610190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (f1 (n + 1) - f1 n).toNat

end

end A233165.P17294718518864610190

/-! ## A233165.P7688709749884957914

`A233168(A046691(n+3))`
-/

namespace A233165.P7688709749884957914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A046691 (n + 3)).toNat

end

end A233165.P7688709749884957914

/-!
# A233166: Number of n X 6 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233166, there is no canonical definition to state claims against.
-/

/-! ## A233166.P14457597113351525187

`A233168(A374007(n+1))`
-/

namespace A233166.P14457597113351525187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A374007 (n + 1)).toNat

end

end A233166.P14457597113351525187

/-! ## A233166.P17013840575831415736

`A233168(Δ[A264443(n)]+10)`
-/

namespace A233166.P17013840575831415736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (f1 (n + 1) - f1 n + 10).toNat

end

end A233166.P17013840575831415736

/-! ## A233166.P1374677788659993329

`A233168(A133263(n+5)+4)`
-/

namespace A233166.P1374677788659993329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A133263 (n + 5) + 4).toNat

end

end A233166.P1374677788659993329

/-! ## A233166.P639882189362824022

`A233168(eq[5, A193592(n)])`
-/

namespace A233166.P639882189362824022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233166.P639882189362824022

/-! ## A233166.P3834951723111679930

`A233168(eq[8, A185782(n+1)])`
-/

namespace A233166.P3834951723111679930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233166.P3834951723111679930

/-!
# A233167: Number of n X 7 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabeled 8-colorings with no clashing color pairs).

The programs for A233167, there is no canonical definition to state claims against.
-/

/-! ## A233167.P3268118429724625127

`A233168(A374008(n+1))`
-/

namespace A233167.P3268118429724625127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A374008 (n + 1)).toNat

end

end A233167.P3268118429724625127

/-! ## A233167.P3954497451298487298

`A233168(eq[8, A131818(n+1)])`
-/

namespace A233167.P3954497451298487298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233167.P3954497451298487298

/-! ## A233167.P14018608240473947934

`A233168(A055999(n+4))`
-/

namespace A233167.P14018608240473947934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A055999 (n + 4)).toNat

end

end A233167.P14018608240473947934

/-! ## A233167.P6985016689678482857

`A233168(eq[6, A193592(n)])`
-/

namespace A233167.P6985016689678482857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233167.P6985016689678482857

/-! ## A233167.P16641864964520810475

`A233168(A000124(n+7)-7)`
-/

namespace A233167.P16641864964520810475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233168 (A000124 (n + 7) - 7).toNat

end

end A233167.P16641864964520810475

/-!
# A233168: T(n,k)=Number of nXk 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabeled 8-colorings with no clashing color pairs).

The programs for A233168, there is no canonical definition to state claims against.
-/

/-! ## A233168.P9139990969083290181

`A130743(A281837(n+1)%A302346(n))`
-/

namespace A233168.P9139990969083290181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130743 (Int.tmod (A281837 (n + 1)) (A302346 n)).toNat

end

end A233168.P9139990969083290181

/-!
# A233169: Number of n X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233169, there is no canonical definition to state claims against.
-/

/-! ## A233169.P1756958638607331348

`A233174(∑[4*n]+1)`
-/

namespace A233169.P1756958638607331348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233169.P1756958638607331348

/-!
# A233170: Number of n X 4 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabeled 6-colorings with no clashing color pairs).

The programs for A233170, there is no canonical definition to state claims against.
-/

/-! ## A233170.P7836291350696113680

`A233174(A141214(n+1))`
-/

namespace A233170.P7836291350696113680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A141214 (n + 1)).toNat

end

end A233170.P7836291350696113680

/-! ## A233170.P13806172723910660834

`A233174(A155212(n)+5)`
-/

namespace A233170.P13806172723910660834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A155212 n + 5).toNat

end

end A233170.P13806172723910660834

/-! ## A233170.P6249775121790379549

`A233174(A056000(n)+7)`
-/

namespace A233170.P6249775121790379549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A056000 n + 7).toNat

end

end A233170.P6249775121790379549

/-! ## A233170.P9424034006554716317

`A233174(eq[2, A054123(n)])`
-/

namespace A233170.P9424034006554716317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233170.P9424034006554716317

/-! ## A233170.P9403410585232651743

`A233174(eq[3, A193592(n)])`
-/

namespace A233170.P9403410585232651743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233170.P9403410585232651743

/-!
# A233171: Number of n X 5 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabeled 6-colorings with no clashing color pairs).

The programs for A233171, there is no canonical definition to state claims against.
-/

/-! ## A233171.P1456603974919690480

`A233174(Δ[A264443(n)])`
-/

namespace A233171.P1456603974919690480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (f1 (n + 1) - f1 n).toNat

end

end A233171.P1456603974919690480

/-! ## A233171.P12128603562854923649

`A233174(A055999(n+2)+2)`
-/

namespace A233171.P12128603562854923649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A055999 (n + 2) + 2).toNat

end

end A233171.P12128603562854923649

/-! ## A233171.P12008383156807225544

`A233174(eq[3, A144018(n+1)])`
-/

namespace A233171.P12008383156807225544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233171.P12008383156807225544

/-! ## A233171.P761870910009187539

`A233174(eq[2, A193592(n)-2])`
-/

namespace A233171.P761870910009187539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233171.P761870910009187539

/-! ## A233171.P12814966597982286278

`A233174(A167614(n+2)+2*(n+1))`
-/

namespace A233171.P12814966597982286278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A233171.P12814966597982286278

/-!
# A233172: Number of n X 6 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233172, there is no canonical definition to state claims against.
-/

/-! ## A233172.P11011781823519240156

`A233174(A052905(n+3))`
-/

namespace A233172.P11011781823519240156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A052905 (n + 3)).toNat

end

end A233172.P11011781823519240156

/-! ## A233172.P586629644627588284

`A233174(eq[3, A219347(n)])`
-/

namespace A233172.P586629644627588284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233172.P586629644627588284

/-! ## A233172.P14475977835089601882

`A233174(A055999(n+2)+n+7)`
-/

namespace A233172.P14475977835089601882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A055999 (n + 2) + (n + 7 : ℤ)).toNat

end

end A233172.P14475977835089601882

/-!
# A233173: 

The programs for A233173, there is no canonical definition to state claims against.
-/

/-! ## A233173.P18091372390555586511

`A233174(A055999(n+4))`
-/

namespace A233173.P18091372390555586511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A055999 (n + 4)).toNat

end

end A233173.P18091372390555586511

/-! ## A233173.P13828989593308117707

`A233174(eq[4, A219347(n)])`
-/

namespace A233173.P13828989593308117707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233173.P13828989593308117707

/-!
# A233175: Number of 2 X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233175, there is no canonical definition to state claims against.
-/

/-! ## A233175.P15113662244010701790

`12*a(n-1)-128*a(n-3)` with `a(0)=3, a(1)=8, a(2)=80, a(3)=800`
-/

namespace A233175.P15113662244010701790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 80, 800] fun n a =>
  12 * a (n - 1) - 128 * a (n - 3)

end

end A233175.P15113662244010701790

/-! ## A233175.P838113225971275616

`A233174(∑[n+1]+2)`
-/

namespace A233175.P838113225971275616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233175.P838113225971275616

/-!
# A233176: Number of 3 X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233176, there is no canonical definition to state claims against.
-/

/-! ## A233176.P8185446655702814514

`A233174(∑[n+2]+4)`
-/

namespace A233176.P8185446655702814514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233176.P8185446655702814514

/-! ## A233176.P15471706003172585123

`A233174(A167614(n+1))+A011741(n)`
-/

namespace A233176.P15471706003172585123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A167614 (n + 1)).toNat + A011741 n

end

end A233176.P15471706003172585123

/-! ## A233176.P12727985030247122320

`lcm(A001018(n), A233174(A167614(n+1)))`
-/

namespace A233176.P12727985030247122320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001018 n) (A233174 (A167614 (n + 1)).toNat)

end

end A233176.P12727985030247122320

/-! ## A233176.P5160343111335814151

`or(A000007(n), A233174(A167614(n+1)))`
-/

namespace A233176.P5160343111335814151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A233174 (A167614 (n + 1)).toNat)

end

end A233176.P5160343111335814151

/-! ## A233176.P193830378982769883

`A233174(A167614(n+1))%A233126(n+1)`
-/

namespace A233176.P193830378982769883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233174 (A167614 (n + 1)).toNat) (A233126 (n + 1))

end

end A233176.P193830378982769883

/-!
# A233177: Number of 4Xn 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabeled 6-colorings with no clashing color pairs).

The programs for A233177, there is no canonical definition to state claims against.
-/

/-! ## A233177.P10721572586189708875

`A233174(A141214(n)+7)`
-/

namespace A233177.P10721572586189708875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A141214 n + 7).toNat

end

end A233177.P10721572586189708875

/-! ## A233177.P443383222205392257

`A233174(A052905(n)+9)`
-/

namespace A233177.P443383222205392257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A052905 n + 9).toNat

end

end A233177.P443383222205392257

/-! ## A233177.P16952570666059907245

`A233174(A055999(n)+10)`
-/

namespace A233177.P16952570666059907245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A055999 n + 10).toNat

end

end A233177.P16952570666059907245

/-! ## A233177.P7238698045075614326

`A233174(A167614(n+2)+1)`
-/

namespace A233177.P7238698045075614326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A167614 (n + 2) + 1).toNat

end

end A233177.P7238698045075614326

/-! ## A233177.P18278365423226219537

`A233174(A034856(n+2)+6)`
-/

namespace A233177.P18278365423226219537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A034856 (n + 2) + 6).toNat

end

end A233177.P18278365423226219537

/-!
# A233178: Number of 5Xn 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233178, there is no canonical definition to state claims against.
-/

/-! ## A233178.P3569226004760720661

`A233174(A167499(n+3))`
-/

namespace A233178.P3569226004760720661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A167499 (n + 3)).toNat

end

end A233178.P3569226004760720661

/-! ## A233178.P12771879138004019071

`A233174(A167614(n+2)+n+6)`
-/

namespace A233178.P12771879138004019071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A233178.P12771879138004019071

/-!
# A233179: Number of 6Xn 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233179, there is no canonical definition to state claims against.
-/

/-! ## A233179.P13164925388549382348

`A233174(Δ[A264443(n)]+10)`
-/

namespace A233179.P13164925388549382348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (f1 (n + 1) - f1 n + 10).toNat

end

end A233179.P13164925388549382348

/-! ## A233179.P17977134381178204769

`A233174(A133263(n+5)+4)`
-/

namespace A233179.P17977134381178204769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (A133263 (n + 5) + 4).toNat

end

end A233179.P17977134381178204769

/-!
# A233180: 

The programs for A233180, there is no canonical definition to state claims against.
-/

/-! ## A233180.P8886694808852144076

`A233174(eq[8, A131818(n+1)])`
-/

namespace A233180.P8886694808852144076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233180.P8886694808852144076

/-!
# A233181: Highly composite numbers of the form x^2 + xy + y^2.

The programs for A233181, there is no canonical definition to state claims against.
-/

/-! ## A233181.P6683507166699960846

`A348273(∏{e}[n+1, #+1]+floor((n/2)²))`
-/

namespace A233181.P6683507166699960846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348273 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A233181.P6683507166699960846

/-!
# A233182: Numbers that are not the product of a prime and a square.

The programs for A233182, the canonical program `A233182.P15043265348537409818` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233182 has offset 1).

The definition of A233182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233182.P11401535077633953916

`comp[eq[1, A162642(n+1)]]+1`
-/

namespace A233182.P11401535077633953916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A233182.P11401535077633953916

namespace A233182

/-- `comp[eq[1, A162642(n+1)]]+1` -/
def P11401535077633953916.Spec : Prop :=
  ∀ n, (P11401535077633953916.a n : ℤ) = A233182 (n + 1)

end A233182

/-! ## A233182.P15043265348537409818

`comp[(n+1)*A358769(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A233182

/-- `comp[(n+1)*A358769(n+1)]` -/
def P15043265348537409818.Spec : Prop :=
  ∀ n, (P15043265348537409818.a n : ℤ) = A233182 (n + 1)

theorem P15043265348537409818.correct : P15043265348537409818.Spec := by
  intro n
  simp only [A233182, Nat.add_sub_cancel]

end A233182

/-! ## A233182.P2166640438345051664

`∪[(n+1)², A229153(n+1)]`
-/

namespace A233182.P2166640438345051664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233182.P2166640438345051664

namespace A233182

/-- `∪[(n+1)², A229153(n+1)]` -/
def P2166640438345051664.Spec : Prop :=
  ∀ n, (P2166640438345051664.a n : ℤ) = A233182 (n + 1)

end A233182

/-! ## A233182.P16084074315749498131

`eq[1, A005171(A007913(n+1))]+1`
-/

namespace A233182.P16084074315749498131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A233182.P16084074315749498131

namespace A233182

/-- `eq[1, A005171(A007913(n+1))]+1` -/
def P16084074315749498131.Spec : Prop :=
  ∀ n, (P16084074315749498131.a n : ℤ) = A233182 (n + 1)

end A233182

/-! ## A233182.P15647862312116760503

`∪[A285800(n+1), A028260(n+1)]`
-/

namespace A233182.P15647862312116760503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233182.P15647862312116760503

namespace A233182

/-- `∪[A285800(n+1), A028260(n+1)]` -/
def P15647862312116760503.Spec : Prop :=
  ∀ n, (P15647862312116760503.a n : ℤ) = A233182 (n + 1)

end A233182

/-! ## A233182.P6205475906112563161

`comp[eq[1, A054024(A007913(n+2))]+1]+1`
-/

namespace A233182.P6205475906112563161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A007913 (n + 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A233182.P6205475906112563161

namespace A233182

/-- `comp[eq[1, A054024(A007913(n+2))]+1]+1` -/
def P6205475906112563161.Spec : Prop :=
  ∀ n, (P6205475906112563161.a n : ℤ) = A233182 (n + 1)

end A233182

/-! ## A233182.P13264038408288481585

`eq[2, gcd(2, A062799(n+1))]+1`
-/

namespace A233182.P13264038408288481585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A062799 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A233182.P13264038408288481585

namespace A233182

/-- `eq[2, gcd(2, A062799(n+1))]+1` -/
def P13264038408288481585.Spec : Prop :=
  ∀ n, (P13264038408288481585.a n : ℤ) = A233182 (n + 1)

end A233182

/-! ## A233182.P11720854701260509902

`eq[1, and(1, A100565(n+1))]+1`
-/

namespace A233182.P11720854701260509902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A100565 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A233182.P11720854701260509902

namespace A233182

/-- `eq[1, and(1, A100565(n+1))]+1` -/
def P11720854701260509902.Spec : Prop :=
  ∀ n, (P11720854701260509902.a n : ℤ) = A233182 (n + 1)

end A233182

/-! ## A233182.P6590926820286038464

`record[(n+1)/A014963((n+1)/A008833(n+1))]`
-/

namespace A233182.P6590926820286038464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233182.P6590926820286038464

namespace A233182

/-- `record[(n+1)/A014963((n+1)/A008833(n+1))]` -/
def P6590926820286038464.Spec : Prop :=
  ∀ n, P6590926820286038464.a n = (A233182 (n + 1) : ℚ)

end A233182

/-! ## A233182.P5216415051592514777

`record[(n+1)/A014963(A167614(A055076(n+1)))]`
-/

namespace A233182.P5216415051592514777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (A167614 (A055076 (n + 1)).toNat).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233182.P5216415051592514777

namespace A233182

/-- `record[(n+1)/A014963(A167614(A055076(n+1)))]` -/
def P5216415051592514777.Spec : Prop :=
  ∀ n, P5216415051592514777.a n = (A233182 (n + 1) : ℚ)

end A233182

/-!
# A233183: Number of ways to write n = k + m with 0 < k < m such that C(2*k, k) + prime(m) is prime.

The programs for A233183, there is no canonical definition to state claims against.
-/

/-! ## A233183.P8776147141031165947

`A072273(n+1)+A037825(A000799(n+1))`
-/

namespace A233183.P8776147141031165947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1) + A037825 (A000799 (n + 1)).toNat

end

end A233183.P8776147141031165947

/-! ## A233183.P9493463094130025230

`A065714(n)+A001221(A003611(n+1))`
-/

namespace A233183.P9493463094130025230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 n + A001221 (A003611 (n + 1)).toNat

end

end A233183.P9493463094130025230

/-! ## A233183.P7146889463060362324

`A165190(3*(n+1))+A162641(A208436(n+1))`
-/

namespace A233183.P7146889463060362324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (3 * (n + 1)) + A162641 (A208436 (n + 1)).toNat

end

end A233183.P7146889463060362324

/-! ## A233183.P13879891675978078986

`A124769(A239259(n)*A368010(n))`
-/

namespace A233183.P13879891675978078986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A239259 n * A368010 n).toNat

end

end A233183.P13879891675978078986

/-!
# A233189: Numbers n such that phi(n) + pi(n) = n+1.

The programs for A233189, there is no canonical definition to state claims against.
-/

/-! ## A233189.P7692536527066990582

`eq[A062830(n), A063084(n+1)]`
-/

namespace A233189.P7692536527066990582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233189.P7692536527066990582

/-! ## A233189.P3471000796240010260

`eq[A063084(n+1), A322366(n)]`
-/

namespace A233189.P3471000796240010260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233189.P3471000796240010260

/-! ## A233189.P6662815215163476315

`eq[A239968(n+1), A384710(n)]`
-/

namespace A233189.P6662815215163476315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233189.P6662815215163476315

/-! ## A233189.P5626300501733271854

`A020725(eq[n+2, A082515(n+1)])`
-/

namespace A233189.P5626300501733271854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233189.P5626300501733271854

/-! ## A233189.P8205505074802886752

`eq[n+2, A018252(A000010(n+1))]+1`
-/

namespace A233189.P8205505074802886752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A233189.P8205505074802886752

/-!
# A233192: Prime(k), where k is such that (Sum_{j=1..k} prime(j)^11) / k is an integer.

The programs for A233192, there is no canonical definition to state claims against.
-/

/-! ## A233192.P9692852728820586054

`A000040(A125827(n+1))`
-/

namespace A233192.P9692852728820586054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A125827 (n + 1)).toNat

end

end A233192.P9692852728820586054

/-!
# A233193: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^11.

The programs for A233193, there is no canonical definition to state claims against.
-/

/-! ## A233193.P18369388618687610567

`A000720(A233194(n+1))`
-/

namespace A233193.P18369388618687610567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233194 (n + 1)).toNat

end

end A233193.P18369388618687610567

/-!
# A233194: Prime(k), where k is such that (1 + Sum_{i=1..k} prime(i)^11) / k is an integer.

The programs for A233194, there is no canonical definition to state claims against.
-/

/-! ## A233194.P8362916241197236732

`A000040(A233193(n+1))`
-/

namespace A233194.P8362916241197236732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233193 (n + 1)).toNat

end

end A233194.P8362916241197236732

/-! ## A233194.P4827800438729305484

`A008578(A233193(n+1)+1)`
-/

namespace A233194.P4827800438729305484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233193 (n + 1) + 1).toNat

end

end A233194.P4827800438729305484

/-! ## A233194.P17437199332933959000

`A158611(A233193(n+1)+2)`
-/

namespace A233194.P17437199332933959000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A233193 (n + 1) + 2).toNat

end

end A233194.P17437199332933959000

/-! ## A233194.P6475040343354509302

`∑{d}[A233193(n+1), A007444(#)]`
-/

namespace A233194.P6475040343354509302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233194.P6475040343354509302

/-!
# A233195: Number of n X n 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233195, there is no canonical definition to state claims against.
-/

/-! ## A233195.P3278725018780034935

`A233202(∑[4*n]+1)`
-/

namespace A233195.P3278725018780034935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233195.P3278725018780034935

/-!
# A233196: Number of n X 2 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabeled 8-colorings with no clashing color pairs).

The programs for A233196, there is no canonical definition to state claims against.
-/

/-! ## A233196.P3898442527388666330

`C(ceil(4^n/2)+1, 2)`
-/

namespace A233196.P3898442527388666330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(4 ^ n : ℚ) / 2⌉ + 1).toNat 2

end

end A233196.P3898442527388666330

/-! ## A233196.P2167772032005711975

`record[C(abs(1-(-2)^n), 2^n-1)]`
-/

namespace A233196.P2167772032005711975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (-2) ^ n|.toNat ((2 ^ n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233196.P2167772032005711975

/-! ## A233196.P7695402514482061679

`20*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=3, a(2)=36`
-/

namespace A233196.P7695402514482061679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 36] fun n a =>
  20 * a (n - 1) - 64 * a (n - 2)

end

end A233196.P7695402514482061679

/-! ## A233196.P5016801166260559956

`record[gcd((2^n+4^n)/2, (4^n-(-2)^n)/2)]`
-/

namespace A233196.P5016801166260559956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2)) (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (-2) ^ n : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233196.P5016801166260559956

/-! ## A233196.P8996224751250597926

`record[and((and(-2, 2^n)+1)*ceil(2^(n-1)), (-1)^n)]`
-/

namespace A233196.P8996224751250597926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Int.land (-2) (2 ^ n : ℤ) + 1) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233196.P8996224751250597926

/-! ## A233196.P5735162097712955027

`record[A007582(n*n%2)]`
-/

namespace A233196.P5735162097712955027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233196.P5735162097712955027

/-! ## A233196.P9111328202523540032

`A007582(log2(ceil(4^n/2)))`
-/

namespace A233196.P9111328202523540032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(4 ^ n : ℚ) / 2⌉ : ℝ))).toNat

end

end A233196.P9111328202523540032

/-! ## A233196.P13074258734846697960

`A005418(abs(1-n)+3*n)`
-/

namespace A233196.P13074258734846697960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (|1 - (n : ℤ)| + (3 * n : ℤ)).toNat

end

end A233196.P13074258734846697960

/-! ## A233196.P10646254869928054036

`record[A007582(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A233196.P10646254869928054036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007582 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233196.P10646254869928054036

/-!
# A233197: Number of n X 3 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233197, there is no canonical definition to state claims against.
-/

/-! ## A233197.P14507549933861124372

`A233202(∑[n+2]+4)`
-/

namespace A233197.P14507549933861124372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233197.P14507549933861124372

/-! ## A233197.P16465159694091542190

`A233202(A167614(n+1))+A061858(n)`
-/

namespace A233197.P16465159694091542190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A167614 (n + 1)).toNat + A061858 n

end

end A233197.P16465159694091542190

/-! ## A233197.P8750852337149277519

`A233202(A167614(n+1))+A185284(n)`
-/

namespace A233197.P8750852337149277519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A167614 (n + 1)).toNat + A185284 n

end

end A233197.P8750852337149277519

/-! ## A233197.P5411766744737722837

`lcm(A000302(n), A233202(A167614(n+1)))`
-/

namespace A233197.P5411766744737722837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A233202 (A167614 (n + 1)).toNat)

end

end A233197.P5411766744737722837

/-! ## A233197.P7870614211076415456

`or(A000038(n), A233202(A167614(n+1)))`
-/

namespace A233197.P7870614211076415456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A233202 (A167614 (n + 1)).toNat)

end

end A233197.P7870614211076415456

/-!
# A233198: Number of n X 4 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233198, there is no canonical definition to state claims against.
-/

/-! ## A233198.P3823735833839244970

`A233202(A374004(n+1))`
-/

namespace A233198.P3823735833839244970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A374004 (n + 1)).toNat

end

end A233198.P3823735833839244970

/-! ## A233198.P936437516881183242

`A233202(A052905(n)+9)`
-/

namespace A233198.P936437516881183242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A052905 n + 9).toNat

end

end A233198.P936437516881183242

/-! ## A233198.P8851250966643209649

`A233202(A055999(n)+10)`
-/

namespace A233198.P8851250966643209649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A055999 n + 10).toNat

end

end A233198.P8851250966643209649

/-! ## A233198.P5819266832486461221

`A233202(A167614(n+2)+1)`
-/

namespace A233198.P5819266832486461221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A167614 (n + 2) + 1).toNat

end

end A233198.P5819266832486461221

/-! ## A233198.P12368606891713870429

`A233202(eq[3, A002262(n)]+1)`
-/

namespace A233198.P12368606891713870429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233198.P12368606891713870429

/-!
# A233199: Number of nX5 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233199, there is no canonical definition to state claims against.
-/

/-! ## A233199.P5934671835558377201

`A233202(A374005(n+1))`
-/

namespace A233199.P5934671835558377201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A374005 (n + 1)).toNat

end

end A233199.P5934671835558377201

/-! ## A233199.P831187288315239227

`A233202(eq[4, A002262(n)]+1)`
-/

namespace A233199.P831187288315239227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233199.P831187288315239227

/-! ## A233199.P3580504753456839198

`A233202(Δ[A023545(n+1)])`
-/

namespace A233199.P3580504753456839198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (f1 (n + 1) - f1 n).toNat

end

end A233199.P3580504753456839198

