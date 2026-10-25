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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A084201: Primes p such that the sum of the digits is prime and the sum of the digits of 2p is also prime.

The programs for A084201, there is no canonical definition to state claims against.
-/

/-! ## A084201.P17573215446855475989

`A084195(n+1)/2`
-/

namespace A084201.P17573215446855475989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084195 (n + 1) : ℚ) / 2

end

end A084201.P17573215446855475989

/-! ## A084201.P11872585805692272917

`∩[A001747(n+1), A093994(n+1)]/2`
-/

namespace A084201.P11872585805692272917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P11872585805692272917

/-! ## A084201.P13861979116457675996

`∩[A066190(n+1), A093994(n+1)]/2`
-/

namespace A084201.P13861979116457675996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P13861979116457675996

/-! ## A084201.P17001964961544832189

`∩[A066664(n+1), A093994(n+1)]/2`
-/

namespace A084201.P17001964961544832189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P17001964961544832189

/-! ## A084201.P6226972816174646269

`∩[A073582(n+1), A093994(n+1)]/2`
-/

namespace A084201.P6226972816174646269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P6226972816174646269

/-! ## A084201.P13555676506577061218

`∩[A074845(n+1), A093994(n+1)]/2`
-/

namespace A084201.P13555676506577061218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P13555676506577061218

/-! ## A084201.P15309147687888092426

`∩[A093994(n+1), A100484(n+1)]/2`
-/

namespace A084201.P15309147687888092426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P15309147687888092426

/-! ## A084201.P8414209352334422537

`∩[A015812(n+1), A093994(n+1)]/2`
-/

namespace A084201.P8414209352334422537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P8414209352334422537

/-! ## A084201.P1538714636818976520

`∩[A050990(n+1), A093994(n+1)]/2`
-/

namespace A084201.P1538714636818976520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P1538714636818976520

/-! ## A084201.P7179603153213473569

`record[A006530(A084194(n+1)/2)]`
-/

namespace A084201.P7179603153213473569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A084194 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084201.P7179603153213473569

/-! ## A084201.P1927369323683128628

`record[A020639(A084194(n+1)/2)]`
-/

namespace A084201.P1927369323683128628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A084194 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084201.P1927369323683128628

/-! ## A084201.P6799340110665214

`∩[A001747(n+1), A084194(n+1)]/2`
-/

namespace A084201.P6799340110665214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P6799340110665214

/-! ## A084201.P11569588386460660411

`∩[A055163(n+1), A084194(n+1)]/2`
-/

namespace A084201.P11569588386460660411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P11569588386460660411

/-! ## A084201.P15939168100898056458

`∩[A066190(n+1), A084194(n+1)]/2`
-/

namespace A084201.P15939168100898056458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P15939168100898056458

/-! ## A084201.P17182020524782282302

`∩[A066664(n+1), A084194(n+1)]/2`
-/

namespace A084201.P17182020524782282302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P17182020524782282302

/-! ## A084201.P11894085387646934917

`∩[A073582(n+1), A084194(n+1)]/2`
-/

namespace A084201.P11894085387646934917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P11894085387646934917

/-! ## A084201.P4840838144412944061

`∩[A074845(n+1), A084194(n+1)]/2`
-/

namespace A084201.P4840838144412944061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P4840838144412944061

/-! ## A084201.P2191865647718571278

`∩[A084194(n+1), A100484(n+1)]/2`
-/

namespace A084201.P2191865647718571278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084201.P2191865647718571278

/-!
# A084202: G.f. A(x) defined by: A(x)^2 consists entirely of integer coefficients between 1 and 2 (A083952); A(x) is the unique power series solution with A(0)=1.

The programs for A084202, there is no canonical definition to state claims against.
-/

/-! ## A084202.P7216796720217682185

`A008836(A011782(n))*A331964(n+1)`
-/

namespace A084202.P7216796720217682185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A011782 n).toNat * A331964 (n + 1)

end

end A084202.P7216796720217682185

/-! ## A084202.P18063131419500041353

`A020985(A078008(n))*A331964(n+1)`
-/

namespace A084202.P18063131419500041353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A078008 n).toNat * A331964 (n + 1)

end

end A084202.P18063131419500041353

/-! ## A084202.P1811241222065495770

`A165326(n)*A331964(A187829(n+1))`
-/

namespace A084202.P1811241222065495770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A331964 (A187829 (n + 1)).toNat

end

end A084202.P1811241222065495770

/-! ## A084202.P8906186333308253410

`A008836(A166444(n+1))*A331964(n+1)`
-/

namespace A084202.P8906186333308253410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A166444 (n + 1)).toNat * A331964 (n + 1)

end

end A084202.P8906186333308253410

/-! ## A084202.P2787935799189387028

`A128581(2^n)*A331964(n+1)`
-/

namespace A084202.P2787935799189387028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (2 ^ n) * A331964 (n + 1)

end

end A084202.P2787935799189387028

/-!
# A084206: G.f. A(x) defined by: A(x)^6 consists entirely of integer coefficients between 1 and 6 (A083946); A(x) is the unique power series solution with A(0)=1.

The programs for A084206, there is no canonical definition to state claims against.
-/

/-! ## A084206.P7605709299143734981

`xor(A106225(n), A160380(A192697(n+1)))`
-/

namespace A084206.P7605709299143734981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106225 n) (A160380 (A192697 (n + 1)).toNat)

end

end A084206.P7605709299143734981

/-! ## A084206.P17127350816587429073

`A106225(n)+A002620(A051118(n))`
-/

namespace A084206.P17127350816587429073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106225 n + A002620 (A051118 n).toNat

end

end A084206.P17127350816587429073

/-!
# A084207: G.f. A(x) defined by: A(x)^7 consists entirely of integer coefficients between 1 and 7 (A083947); A(x) is the unique power series solution with A(0)=1.

The programs for A084207, there is no canonical definition to state claims against.
-/

/-! ## A084207.P17335538768314718327

`A165326(n)*A194640(A307412(n))`
-/

namespace A084207.P17335538768314718327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A194640 (A307412 n).toNat

end

end A084207.P17335538768314718327

/-! ## A084207.P18025779708994032547

`A307590(A307575(n))-A307626(3*n)`
-/

namespace A084207.P18025779708994032547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307590 (A307575 n).toNat - A307626 (3 * n)

end

end A084207.P18025779708994032547

/-!
# A084210: G.f. A(x) defined by: A(x)^10 consists entirely of integer coefficients between 1 and 10 (A083950); A(x) is the unique power series solution with A(0)=1.

The programs for A084210, there is no canonical definition to state claims against.
-/

/-! ## A084210.P12601903375055940683

`A184963(A000975(n))+A171791(n)`
-/

namespace A084210.P12601903375055940683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184963 (A000975 n).toNat + A171791 n

end

end A084210.P12601903375055940683

/-!
# A084212: G.f. A(x) defined by: A(x)^12 consists entirely of integer coefficients between 1 and 12 (A084067); A(x) is the unique power series solution with A(0)=1.

The programs for A084212, there is no canonical definition to state claims against.
-/

/-! ## A084212.P10869904038483248228

`A352122(n)+A319781(A048855(n))`
-/

namespace A084212.P10869904038483248228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352122 n + A319781 (A048855 n).toNat

end

end A084212.P10869904038483248228

/-!
# A084213: Binomial transform of A081250.

The programs for A084213, the canonical program `A084213.P4019624963111332448` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084213 has offset 0).

The definition of A084213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084213.P2700035328788463105

`ogf((1-2x+2x^2)/(1-6x+8x^2))`
-/

namespace A084213.P2700035328788463105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -6, 8] n

end

end A084213.P2700035328788463105

namespace A084213

/-- `ogf((1-2x+2x^2)/(1-6x+8x^2))` -/
def P2700035328788463105.Spec : Prop :=
  ∀ n, P2700035328788463105.a n = A084213 n

end A084213

/-! ## A084213.P3910076092588826854

`2^(n-1)+4*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A084213.P3910076092588826854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 4 * a (n - 1)

end

end A084213.P3910076092588826854

namespace A084213

/-- `2^(n-1)+4*a(n-1)` -/
def P3910076092588826854.Spec : Prop :=
  ∀ n, P3910076092588826854.a n = (A084213 n : ℚ)

end A084213

/-! ## A084213.P4019624963111332448

`ceil(2^(n-1))*∑[round(5*2^(n-2))]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084213

/-- `ceil(2^(n-1))*∑[round(5*2^(n-2))]` -/
def P4019624963111332448.Spec : Prop :=
  ∀ n, P4019624963111332448.a n = A084213 n

theorem P4019624963111332448.correct : P4019624963111332448.Spec := by
  intro n
  simp only [A084213]

end A084213

/-! ## A084213.P13720400418374466507

`A003947(n)-floor(2^(n-1))`
-/

namespace A084213.P13720400418374466507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A084213.P13720400418374466507

namespace A084213

/-- `A003947(n)-floor(2^(n-1))` -/
def P13720400418374466507.Spec : Prop :=
  ∀ n, P13720400418374466507.a n = A084213 n

end A084213

/-! ## A084213.P643142742090339047

`xor(floor(2^(n-1))², A010036(n))`
-/

namespace A084213.P643142742090339047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2) (A010036 n)

end

end A084213.P643142742090339047

namespace A084213

/-- `xor(floor(2^(n-1))², A010036(n))` -/
def P643142742090339047.Spec : Prop :=
  ∀ n, P643142742090339047.a n = A084213 n

end A084213

/-! ## A084213.P1316707848634028698

`or(4*a(n-1), A011782(n))` with `a(0)=1, a(1)=4`
-/

namespace A084213.P1316707848634028698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lor (4 * a (n - 1)) (A011782 n)

end

end A084213.P1316707848634028698

namespace A084213

/-- `or(4*a(n-1), A011782(n))` -/
def P1316707848634028698.Spec : Prop :=
  ∀ n, P1316707848634028698.a n = A084213 n

end A084213

/-! ## A084213.P15165870891165054951

`A006516(n)+A002001(n)`
-/

namespace A084213.P15165870891165054951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A002001 n

end

end A084213.P15165870891165054951

namespace A084213

/-- `A006516(n)+A002001(n)` -/
def P15165870891165054951.Spec : Prop :=
  ∀ n, P15165870891165054951.a n = A084213 n

end A084213

/-! ## A084213.P16943444740817955441

`lcm(A011782(n), A052549(n))`
-/

namespace A084213.P16943444740817955441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A052549 n)

end

end A084213.P16943444740817955441

namespace A084213

/-- `lcm(A011782(n), A052549(n))` -/
def P16943444740817955441.Spec : Prop :=
  ∀ n, (P16943444740817955441.a n : ℤ) = A084213 n

end A084213

/-! ## A084213.P12148762556446102443

`xor(A003947(n), A006516(n))`
-/

namespace A084213.P12148762556446102443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003947 n) (A006516 n)

end

end A084213.P12148762556446102443

namespace A084213

/-- `xor(A003947(n), A006516(n))` -/
def P12148762556446102443.Spec : Prop :=
  ∀ n, P12148762556446102443.a n = A084213 n

end A084213

/-! ## A084213.P9008650435745109260

`A010036(n)-A131577(n)²`
-/

namespace A084213.P9008650435745109260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - A131577 n ^ 2

end

end A084213.P9008650435745109260

namespace A084213

/-- `A010036(n)-A131577(n)²` -/
def P9008650435745109260.Spec : Prop :=
  ∀ n, P9008650435745109260.a n = A084213 n

end A084213

/-! ## A084213.P15203292064164317244

`xor(Δ[A006095(n)], A003947(n))`
-/

namespace A084213.P15203292064164317244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A003947 n)

end

end A084213.P15203292064164317244

namespace A084213

/-- `xor(Δ[A006095(n)], A003947(n))` -/
def P15203292064164317244.Spec : Prop :=
  ∀ n, P15203292064164317244.a n = A084213 n

end A084213

/-! ## A084213.P5959249454054047320

`A002001(n)+A134169(n)-1`
-/

namespace A084213.P5959249454054047320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n + (A134169 n - 1)

end

end A084213.P5959249454054047320

namespace A084213

/-- `A002001(n)+A134169(n)-1` -/
def P5959249454054047320.Spec : Prop :=
  ∀ n, P5959249454054047320.a n = A084213 n

end A084213

/-! ## A084213.P15209914204565505370

`A134683(2*n)+A006516(n)`
-/

namespace A084213.P15209914204565505370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (2 * n) + A006516 n

end

end A084213.P15209914204565505370

namespace A084213

/-- `A134683(2*n)+A006516(n)` -/
def P15209914204565505370.Spec : Prop :=
  ∀ n, P15209914204565505370.a n = A084213 n

end A084213

/-! ## A084213.P10031502677491208467

`A084215(2*n)-A131577(n)`
-/

namespace A084213.P10031502677491208467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (2 * n) - A131577 n

end

end A084213.P10031502677491208467

namespace A084213

/-- `A084215(2*n)-A131577(n)` -/
def P10031502677491208467.Spec : Prop :=
  ∀ n, P10031502677491208467.a n = A084213 n

end A084213

/-! ## A084213.P2649549226993733040

`(A171476(n)+A081294(n))/2`
-/

namespace A084213.P2649549226993733040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171476 n + A081294 n : ℚ) / 2

end

end A084213.P2649549226993733040

namespace A084213

/-- `(A171476(n)+A081294(n))/2` -/
def P2649549226993733040.Spec : Prop :=
  ∀ n, P2649549226993733040.a n = (A084213 n : ℚ)

end A084213

/-! ## A084213.P2855591154853151801

`A257113(Δ[n²])-A011782(n)`
-/

namespace A084213.P2855591154853151801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A011782 n

end

end A084213.P2855591154853151801

namespace A084213

/-- `A257113(Δ[n²])-A011782(n)` -/
def P2855591154853151801.Spec : Prop :=
  ∀ n, P2855591154853151801.a n = A084213 n

end A084213

/-! ## A084213.P120304974956721121

`A171479(n)-(1-A003945(n))²`
-/

namespace A084213.P120304974956721121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171479 n - (1 - A003945 n) ^ 2

end

end A084213.P120304974956721121

namespace A084213

/-- `A171479(n)-(1-A003945(n))²` -/
def P120304974956721121.Spec : Prop :=
  ∀ n, P120304974956721121.a n = A084213 n

end A084213

/-! ## A084213.P4586683190242456703

`A354294(2*n)+A131577(n)²`
-/

namespace A084213.P4586683190242456703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 (2 * n) + A131577 n ^ 2

end

end A084213.P4586683190242456703

namespace A084213

/-- `A354294(2*n)+A131577(n)²` -/
def P4586683190242456703.Spec : Prop :=
  ∀ n, P4586683190242456703.a n = A084213 n

end A084213

/-! ## A084213.P15357124548158310245

`A135098(2*n)-A131577(n)²`
-/

namespace A084213.P15357124548158310245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135098 (2 * n) - A131577 n ^ 2

end

end A084213.P15357124548158310245

namespace A084213

/-- `A135098(2*n)-A131577(n)²` -/
def P15357124548158310245.Spec : Prop :=
  ∀ n, P15357124548158310245.a n = A084213 n

end A084213

/-!
# A084214: Inverse binomial transform of a math magic problem.

The programs for A084214, the canonical program `A084214.P17183988949145241867` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084214 has offset 0).

The definition of A084214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084214.P17183988949145241867

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084214

/-- `a(n-1)+2*a(n-2)` -/
def P17183988949145241867.Spec : Prop :=
  ∀ n, (P17183988949145241867.a n : ℤ) = A084214 n

theorem P17183988949145241867.correct : P17183988949145241867.Spec := by
  intro n
  simp only [A084214]

end A084214

/-! ## A084214.P6560396478639881510

`ogf((1+x^2)/(1-x-2x^2))`
-/

namespace A084214.P6560396478639881510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, -2] n

end

end A084214.P6560396478639881510

namespace A084214

/-- `ogf((1+x^2)/(1-x-2x^2))` -/
def P6560396478639881510.Spec : Prop :=
  ∀ n, P6560396478639881510.a n = A084214 n

end A084214

/-! ## A084214.P11705425416992004457

`2*(a(n-1)+(-1)^n)` with `a(0)=1, a(1)=1`
-/

namespace A084214.P11705425416992004457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + (-1) ^ n)

end

end A084214.P11705425416992004457

namespace A084214

/-- `2*(a(n-1)+(-1)^n)` -/
def P11705425416992004457.Spec : Prop :=
  ∀ n, P11705425416992004457.a n = A084214 n

end A084214

/-! ## A084214.P3207657331670867222

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A084214.P3207657331670867222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A084214.P3207657331670867222

namespace A084214

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P3207657331670867222.Spec : Prop :=
  ∀ n, (P3207657331670867222.a n : ℤ) = A084214 n

theorem P3207657331670867222.correct : P3207657331670867222.Spec := by
  intro n
  simp only [A084214, Nat.add_sub_cancel, A084214.P3207657331670867222.a, A084214.P17183988949145241867.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084214

/-! ## A084214.P6383628426748807841

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A084214.P6383628426748807841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A084214.P6383628426748807841

namespace A084214

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P6383628426748807841.Spec : Prop :=
  ∀ n, P6383628426748807841.a n = A084214 n

end A084214

/-! ## A084214.P3316547063792184241

`A375476(3*n+1)`
-/

namespace A084214.P3316547063792184241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (3 * n + 1)

end

end A084214.P3316547063792184241

namespace A084214

/-- `A375476(3*n+1)` -/
def P3316547063792184241.Spec : Prop :=
  ∀ n, P3316547063792184241.a n = A084214 n

end A084214

/-! ## A084214.P16141525685207527476

`Δ[A001045(n)]+floor(2^(n-1))`
-/

namespace A084214.P16141525685207527476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A084214.P16141525685207527476

namespace A084214

/-- `Δ[A001045(n)]+floor(2^(n-1))` -/
def P16141525685207527476.Spec : Prop :=
  ∀ n, P16141525685207527476.a n = A084214 n

end A084214

/-! ## A084214.P15035332959884748398

`A356050(A004273(n))`
-/

namespace A084214.P15035332959884748398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 (A004273 n).toNat

end

end A084214.P15035332959884748398

namespace A084214

/-- `A356050(A004273(n))` -/
def P15035332959884748398.Spec : Prop :=
  ∀ n, P15035332959884748398.a n = A084214 n

end A084214

/-! ## A084214.P10007690518896962705

`A092808(n)+A084183(n)`
-/

namespace A084214.P10007690518896962705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n + A084183 n

end

end A084214.P10007690518896962705

namespace A084214

/-- `A092808(n)+A084183(n)` -/
def P10007690518896962705.Spec : Prop :=
  ∀ n, P10007690518896962705.a n = A084214 n

end A084214

/-! ## A084214.P12469383108648960277

`A131577(n)+A078008(n)`
-/

namespace A084214.P12469383108648960277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A078008 n

end

end A084214.P12469383108648960277

namespace A084214

/-- `A131577(n)+A078008(n)` -/
def P12469383108648960277.Spec : Prop :=
  ∀ n, P12469383108648960277.a n = A084214 n

end A084214

/-! ## A084214.P4416135693905670804

`A153772(n)+A056469(n)`
-/

namespace A084214.P4416135693905670804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 n + A056469 n

end

end A084214.P4416135693905670804

namespace A084214

/-- `A153772(n)+A056469(n)` -/
def P4416135693905670804.Spec : Prop :=
  ∀ n, P4416135693905670804.a n = A084214 n

end A084214

/-! ## A084214.P11405629069107590200

`A023105(n)-A083944(n)`
-/

namespace A084214.P11405629069107590200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n - A083944 n

end

end A084214.P11405629069107590200

namespace A084214

/-- `A023105(n)-A083944(n)` -/
def P11405629069107590200.Spec : Prop :=
  ∀ n, P11405629069107590200.a n = A084214 n

end A084214

/-! ## A084214.P14063557522245846997

`A115341(n)-A154570(n)`
-/

namespace A084214.P14063557522245846997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115341 n - A154570 n

end

end A084214.P14063557522245846997

namespace A084214

/-- `A115341(n)-A154570(n)` -/
def P14063557522245846997.Spec : Prop :=
  ∀ n, P14063557522245846997.a n = A084214 n

end A084214

/-! ## A084214.P5491776848109440075

`A131577(n)+Δ[A001045(n)]`
-/

namespace A084214.P5491776848109440075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (f1 (n + 1) - f1 n)

end

end A084214.P5491776848109440075

namespace A084214

/-- `A131577(n)+Δ[A001045(n)]` -/
def P5491776848109440075.Spec : Prop :=
  ∀ n, P5491776848109440075.a n = A084214 n

end A084214

/-! ## A084214.P16970263171428740706

`A131577(n)+Δ[A153643(n)]`
-/

namespace A084214.P16970263171428740706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (f1 (n + 1) - f1 n)

end

end A084214.P16970263171428740706

namespace A084214

/-- `A131577(n)+Δ[A153643(n)]` -/
def P16970263171428740706.Spec : Prop :=
  ∀ n, P16970263171428740706.a n = A084214 n

end A084214

/-! ## A084214.P1834091566679089784

`A023105(n)+A097072(n)-1`
-/

namespace A084214.P1834091566679089784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n + (A097072 n - 1)

end

end A084214.P1834091566679089784

namespace A084214

/-- `A023105(n)+A097072(n)-1` -/
def P1834091566679089784.Spec : Prop :=
  ∀ n, P1834091566679089784.a n = A084214 n

end A084214

/-! ## A084214.P5343462158899381565

`A052950(n+1)-A135351(n)`
-/

namespace A084214.P5343462158899381565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052950 (n + 1) - A135351 n

end

end A084214.P5343462158899381565

namespace A084214

/-- `A052950(n+1)-A135351(n)` -/
def P5343462158899381565.Spec : Prop :=
  ∀ n, P5343462158899381565.a n = A084214 n

end A084214

/-! ## A084214.P13318063741754932565

`A089985(n+1)-A378105(n)`
-/

namespace A084214.P13318063741754932565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089985 (n + 1) - A378105 n

end

end A084214.P13318063741754932565

namespace A084214

/-- `A089985(n+1)-A378105(n)` -/
def P13318063741754932565.Spec : Prop :=
  ∀ n, P13318063741754932565.a n = A084214 n

end A084214

/-! ## A084214.P6201103420755227168

`A131577(n)+Δ[A092808(xor(1, n))]`
-/

namespace A084214.P6201103420755227168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (f1 (n + 1) - f1 n)

end

end A084214.P6201103420755227168

namespace A084214

/-- `A131577(n)+Δ[A092808(xor(1, n))]` -/
def P6201103420755227168.Spec : Prop :=
  ∀ n, P6201103420755227168.a n = A084214 n

end A084214

/-! ## A084214.P16347191271400388147

`A094359(n)+A122959(n)+A094359(n)`
-/

namespace A084214.P16347191271400388147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 n + (A122959 n + A094359 n)

end

end A084214.P16347191271400388147

namespace A084214

/-- `A094359(n)+A122959(n)+A094359(n)` -/
def P16347191271400388147.Spec : Prop :=
  ∀ n, P16347191271400388147.a n = A084214 n

end A084214

/-!
# A084215: Expansion of g.f.: (1+x^2)/(1-2*x).

The programs for A084215, the canonical program `A084215.P17935689327445096835` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084215 has offset 0).

The definition of A084215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-2x))` (program `A084215.P17935689327445096835`, by `A084215.P17935689327445096835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084215.P17935689327445096835

`ogf((1+x^2)/(1-2x))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084215

/-- `ogf((1+x^2)/(1-2x))` -/
def P17935689327445096835.Spec : Prop :=
  ∀ n, P17935689327445096835.a n = A084215 n

theorem P17935689327445096835.correct : P17935689327445096835.Spec := by
  intro n
  simp only [A084215]

end A084215

/-! ## A084215.P334481219115606373

`floor(2^(n-2)*5)`
-/

namespace A084215.P334481219115606373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * 5⌋

end

end A084215.P334481219115606373

namespace A084215

/-- `floor(2^(n-2)*5)` -/
def P334481219115606373.Spec : Prop :=
  ∀ n, P334481219115606373.a n = A084215 n

end A084215

/-! ## A084215.P10316179091434366613

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A084215.P10316179091434366613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1)

end

end A084215.P10316179091434366613

namespace A084215

/-- `2*a(n-1)` -/
def P10316179091434366613.Spec : Prop :=
  ∀ n, (P10316179091434366613.a n : ℤ) = A084215 n

end A084215

/-! ## A084215.P5065971582774645392

`or(2^n, floor(2^(n-2)))`
-/

namespace A084215.P5065971582774645392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A084215.P5065971582774645392

namespace A084215

/-- `or(2^n, floor(2^(n-2)))` -/
def P5065971582774645392.Spec : Prop :=
  ∀ n, P5065971582774645392.a n = A084215 n

end A084215

/-! ## A084215.P11827556925802650486

`xor(2^n, floor(2^(n-2)))`
-/

namespace A084215.P11827556925802650486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A084215.P11827556925802650486

namespace A084215

/-- `xor(2^n, floor(2^(n-2)))` -/
def P11827556925802650486.Spec : Prop :=
  ∀ n, P11827556925802650486.a n = A084215 n

end A084215

/-! ## A084215.P18116293001692431763

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A084215.P18116293001692431763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + a (n - 1)

end

end A084215.P18116293001692431763

namespace A084215

/-- `a(n-1)+a(n-1)` -/
def P18116293001692431763.Spec : Prop :=
  ∀ n, (P18116293001692431763.a n : ℤ) = A084215 n

end A084215

/-! ## A084215.P952044503994352700

`a(n-1)/(1-1/2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A084215.P952044503994352700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A084215.P952044503994352700

namespace A084215

/-- `a(n-1)/(1-1/2)` -/
def P952044503994352700.Spec : Prop :=
  ∀ n, P952044503994352700.a n = (A084215 n : ℚ)

end A084215

/-! ## A084215.P16263722834681285555

`lcm(2^(n-2), a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A084215.P16263722834681285555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 1) : ℤ)

end

end A084215.P16263722834681285555

namespace A084215

/-- `lcm(2^(n-2), a(n-1))` -/
def P16263722834681285555.Spec : Prop :=
  ∀ n, (P16263722834681285555.a n : ℤ) = A084215 n

end A084215

/-! ## A084215.P175530663325676459

`A257113(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A084215.P175530663325676459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A257113 n + a (n - 1)

end

end A084215.P175530663325676459

namespace A084215

/-- `A257113(n)+a(n-1)` -/
def P175530663325676459.Spec : Prop :=
  ∀ n, P175530663325676459.a n = A084215 n

end A084215

/-! ## A084215.P5604335659199108961

`2^(n+1)-A098011(n+2)`
-/

namespace A084215.P5604335659199108961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A098011 (n + 2)

end

end A084215.P5604335659199108961

namespace A084215

/-- `2^(n+1)-A098011(n+2)` -/
def P5604335659199108961.Spec : Prop :=
  ∀ n, P5604335659199108961.a n = A084215 n

end A084215

/-! ## A084215.P2543561142563836712

`A029745(A004277(n))`
-/

namespace A084215.P2543561142563836712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029745 (A004277 n).toNat

end

end A084215.P2543561142563836712

namespace A084215

/-- `A029745(A004277(n))` -/
def P2543561142563836712.Spec : Prop :=
  ∀ n, P2543561142563836712.a n = A084215 n

end A084215

/-! ## A084215.P2825375813465118555

`A103969(A135042(n))`
-/

namespace A084215.P2825375813465118555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (A135042 n).toNat

end

end A084215.P2825375813465118555

namespace A084215

/-- `A103969(A135042(n))` -/
def P2825375813465118555.Spec : Prop :=
  ∀ n, P2825375813465118555.a n = A084215 n

end A084215

/-! ## A084215.P5984648269746389344

`A029745(A004275(n+1))`
-/

namespace A084215.P5984648269746389344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029745 (A004275 (n + 1)).toNat

end

end A084215.P5984648269746389344

namespace A084215

/-- `A029745(A004275(n+1))` -/
def P5984648269746389344.Spec : Prop :=
  ∀ n, P5984648269746389344.a n = A084215 n

end A084215

/-! ## A084215.P13958335362213901134

`A114744(A033627(n+1))`
-/

namespace A084215.P13958335362213901134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114744 (A033627 (n + 1)).toNat

end

end A084215.P13958335362213901134

namespace A084215

/-- `A114744(A033627(n+1))` -/
def P13958335362213901134.Spec : Prop :=
  ∀ n, P13958335362213901134.a n = A084215 n

end A084215

/-! ## A084215.P9157027359506648367

`A029749(A296515(n+1))`
-/

namespace A084215.P9157027359506648367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (A296515 (n + 1)).toNat

end

end A084215.P9157027359506648367

namespace A084215

/-- `A029749(A296515(n+1))` -/
def P9157027359506648367.Spec : Prop :=
  ∀ n, P9157027359506648367.a n = A084215 n

end A084215

/-! ## A084215.P18268797574337712162

`A333905(A140139(n+1))`
-/

namespace A084215.P18268797574337712162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (A140139 (n + 1)).toNat

end

end A084215.P18268797574337712162

namespace A084215

/-- `A333905(A140139(n+1))` -/
def P18268797574337712162.Spec : Prop :=
  ∀ n, P18268797574337712162.a n = A084215 n

end A084215

/-! ## A084215.P1509893109721175090

`A333905(A163985(n+1))`
-/

namespace A084215.P1509893109721175090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (A163985 (n + 1)).toNat

end

end A084215.P1509893109721175090

namespace A084215

/-- `A333905(A163985(n+1))` -/
def P1509893109721175090.Spec : Prop :=
  ∀ n, P1509893109721175090.a n = A084215 n

end A084215

/-! ## A084215.P440154425238539722

`A155559(n)+A034008(n)`
-/

namespace A084215.P440154425238539722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A034008 n

end

end A084215.P440154425238539722

namespace A084215

/-- `A155559(n)+A034008(n)` -/
def P440154425238539722.Spec : Prop :=
  ∀ n, P440154425238539722.a n = A084215 n

end A084215

/-! ## A084215.P13319972932779357213

`A323227(n)+A000295(n)`
-/

namespace A084215.P13319972932779357213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 n + A000295 n

end

end A084215.P13319972932779357213

namespace A084215

/-- `A323227(n)+A000295(n)` -/
def P13319972932779357213.Spec : Prop :=
  ∀ n, P13319972932779357213.a n = A084215 n

end A084215

/-! ## A084215.P6727969961399030279

`A052996(n)-A000225(n)`
-/

namespace A084215.P6727969961399030279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n - A000225 n

end

end A084215.P6727969961399030279

namespace A084215

/-- `A052996(n)-A000225(n)` -/
def P6727969961399030279.Spec : Prop :=
  ∀ n, P6727969961399030279.a n = A084215 n

end A084215

/-!
# A084217: Number of k's 1 <= k <= n dividing the numerator of 2n-th Bernoulli number.

The programs for A084217, there is no canonical definition to state claims against.
-/

/-! ## A084217.P8302318569193491992

`A000005(A300711(n+1))%A292310(n+4)`
-/

namespace A084217.P8302318569193491992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A300711 (n + 1)).toNat) (A292310 (n + 4))

end

end A084217.P8302318569193491992

/-! ## A084217.P1736646303907926623

`A000005(A300711(n+1)+A151878(2*n+1))`
-/

namespace A084217.P1736646303907926623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A300711 (n + 1) + A151878 (2 * n + 1)).toNat

end

end A084217.P1736646303907926623

/-! ## A084217.P9331148576176687797

`A333805(A180517(n+1)*A300711(n+1))`
-/

namespace A084217.P9331148576176687797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A180517 (n + 1) * A300711 (n + 1)).toNat

end

end A084217.P9331148576176687797

/-! ## A084217.P12530545414337670995

`∏{e}[A336898(2*(n+1)), #+1]`
-/

namespace A084217.P12530545414337670995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A084217.P12530545414337670995

/-! ## A084217.P7219162876917997408

`A181819(A336898(2*(n+1)))`
-/

namespace A084217.P7219162876917997408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A336898 (2 * (n + 1))).toNat

end

end A084217.P7219162876917997408

/-!
# A084218: a(n) = sigma_4(n^2)/sigma_2(n^2).

The programs for A084218, the canonical program `A084218.P6522014899142432729` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084218 has offset 1).

The definition of A084218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084218.P10620428796368819015

`∑{d}[n+1, A379833(#)]`
-/

namespace A084218.P10620428796368819015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A379833 d

end

end A084218.P10620428796368819015

namespace A084218

/-- `∑{d}[n+1, A379833(#)]` -/
def P10620428796368819015.Spec : Prop :=
  ∀ n, P10620428796368819015.a n = A084218 (n + 1)

end A084218

/-! ## A084218.P5592850160542634235

`∑{d}[n+1, #*A000056(#)]`
-/

namespace A084218.P5592850160542634235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000056 d

end

end A084218.P5592850160542634235

namespace A084218

/-- `∑{d}[n+1, #*A000056(#)]` -/
def P5592850160542634235.Spec : Prop :=
  ∀ n, P5592850160542634235.a n = A084218 (n + 1)

end A084218

/-! ## A084218.P6522014899142432729

`∑{d}[n+1, A053191(#)*A068970((n+1)/#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A084218

/-- `∑{d}[n+1, A053191(#)*A068970((n+1)/#)]` -/
def P6522014899142432729.Spec : Prop :=
  ∀ n, P6522014899142432729.a n = A084218 (n + 1)

theorem P6522014899142432729.correct : P6522014899142432729.Spec := by
  intro n
  simp only [A084218, Nat.add_sub_cancel]

end A084218

/-! ## A084218.P14305794544983105856

`∑{d}[n+1, A068963(#)*A189393((n+1)/#)]`
-/

namespace A084218.P14305794544983105856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084218.P14305794544983105856

namespace A084218

/-- `∑{d}[n+1, A068963(#)*A189393((n+1)/#)]` -/
def P14305794544983105856.Spec : Prop :=
  ∀ n, P14305794544983105856.a n = A084218 (n + 1)

end A084218

/-! ## A084218.P10874843289191594029

`∑{d}[n+1, A001159(#)*A334657((n+1)/#)]`
-/

namespace A084218.P10874843289191594029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084218.P10874843289191594029

namespace A084218

/-- `∑{d}[n+1, A001159(#)*A334657((n+1)/#)]` -/
def P10874843289191594029.Spec : Prop :=
  ∀ n, P10874843289191594029.a n = A084218 (n + 1)

end A084218

/-! ## A084218.P13817073762889796026

`∑{d}[n+1, A000583(#)*A046970((n+1)/#)]`
-/

namespace A084218.P13817073762889796026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000583 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084218.P13817073762889796026

namespace A084218

/-- `∑{d}[n+1, A000583(#)*A046970((n+1)/#)]` -/
def P13817073762889796026.Spec : Prop :=
  ∀ n, P13817073762889796026.a n = A084218 (n + 1)

end A084218

/-! ## A084218.P6471129534706241684

`A076792((n+1)²)`
-/

namespace A084218.P6471129534706241684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076792 ((n + 1) ^ 2)

end

end A084218.P6471129534706241684

namespace A084218

/-- `A076792((n+1)²)` -/
def P6471129534706241684.Spec : Prop :=
  ∀ n, P6471129534706241684.a n = A084218 (n + 1)

end A084218

/-! ## A084218.P14341326340396036995

`∑{d}[n+1, A254520(#²)]`
-/

namespace A084218.P14341326340396036995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 (d ^ 2)

end

end A084218.P14341326340396036995

namespace A084218

/-- `∑{d}[n+1, A254520(#²)]` -/
def P14341326340396036995.Spec : Prop :=
  ∀ n, P14341326340396036995.a n = A084218 (n + 1)

end A084218

/-! ## A084218.P2736708075048994339

`abs(A076792(∑[2*n+1]))`
-/

namespace A084218.P2736708075048994339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076792 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A084218.P2736708075048994339

namespace A084218

/-- `abs(A076792(∑[2*n+1]))` -/
def P2736708075048994339.Spec : Prop :=
  ∀ n, P2736708075048994339.a n = A084218 (n + 1)

end A084218

/-!
# A084219: Inverse binomial transform of A053088.

The programs for A084219, the canonical program `A084219.P11906096925189382685` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084219 has offset 0).

The definition of A084219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084219.P11906096925189382685

`(4-3*n*(-2)^(n-1)+5*(-2)^n)/9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084219

/-- `(4-3*n*(-2)^(n-1)+5*(-2)^n)/9` -/
def P11906096925189382685.Spec : Prop :=
  ∀ n, P11906096925189382685.a n = (A084219 n : ℚ)

end A084219

/-! ## A084219.P3371945534557353271

`∑[ogf((1+2x+x^2)/(1+4x+4x^2))]`
-/

namespace A084219.P3371945534557353271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084219.P3371945534557353271

namespace A084219

/-- `∑[ogf((1+2x+x^2)/(1+4x+4x^2))]` -/
def P3371945534557353271.Spec : Prop :=
  ∀ n, P3371945534557353271.a n = A084219 n

end A084219

/-! ## A084219.P3428162853514266225

`ogf((1+2x+x^2)/(1+3x-4x^3))`
-/

namespace A084219.P3428162853514266225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 3, 0, -4] n

end

end A084219.P3428162853514266225

namespace A084219

/-- `ogf((1+2x+x^2)/(1+3x-4x^3))` -/
def P3428162853514266225.Spec : Prop :=
  ∀ n, P3428162853514266225.a n = A084219 n

end A084219

/-! ## A084219.P7367133457426868503

`4*(1-(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=-1`
-/

namespace A084219.P7367133457426868503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  4 * (1 - (a (n - 1) + a (n - 2)))

end

end A084219.P7367133457426868503

namespace A084219

/-- `4*(1-(a(n-1)+a(n-2)))` -/
def P7367133457426868503.Spec : Prop :=
  ∀ n, P7367133457426868503.a n = A084219 n

end A084219

/-! ## A084219.P4998431460634842161

`4*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=-1`
-/

namespace A084219.P4998431460634842161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  4 * (1 - a (n - 1) - a (n - 2))

end

end A084219.P4998431460634842161

namespace A084219

/-- `4*(1-a(n-1)-a(n-2))` -/
def P4998431460634842161.Spec : Prop :=
  ∀ n, P4998431460634842161.a n = A084219 n

end A084219

/-! ## A084219.P5313189857784893898

`Δ[A322039(abs(1-n))]`
-/

namespace A084219.P5313189857784893898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322039 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084219.P5313189857784893898

namespace A084219

/-- `Δ[A322039(abs(1-n))]` -/
def P5313189857784893898.Spec : Prop :=
  ∀ n, P5313189857784893898.a n = A084219 n

end A084219

/-! ## A084219.P6105380961514226622

`∑[A045623(n)/(-1)^n]`
-/

namespace A084219.P6105380961514226622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045623 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084219.P6105380961514226622

namespace A084219

/-- `∑[A045623(n)/(-1)^n]` -/
def P6105380961514226622.Spec : Prop :=
  ∀ n, P6105380961514226622.a n = (A084219 n : ℚ)

end A084219

/-! ## A084219.P3108064837178458893

`A033999(n)*A208907(A347553(n+3))`
-/

namespace A084219.P3108064837178458893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208907 (A347553 (n + 3)).toNat

end

end A084219.P3108064837178458893

namespace A084219

/-- `A033999(n)*A208907(A347553(n+3))` -/
def P3108064837178458893.Spec : Prop :=
  ∀ n, P3108064837178458893.a n = A084219 n

end A084219

/-!
# A084220: a(n) = sigma_6(n^2)/sigma_3(n^2).

The programs for A084220, the canonical program `A084220.P3476602202439273006` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084220 has offset 1).

The definition of A084220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084220.P7927523306558635957

`∑{d}[n+1, #*A115224(#)]`
-/

namespace A084220.P7927523306558635957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A115224 d

end

end A084220.P7927523306558635957

namespace A084220

/-- `∑{d}[n+1, #*A115224(#)]` -/
def P7927523306558635957.Spec : Prop :=
  ∀ n, P7927523306558635957.a n = A084220 (n + 1)

end A084220

/-! ## A084220.P3476602202439273006

`∑{d}[n+1, A013954(#)*A334659((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084220

/-- `∑{d}[n+1, A013954(#)*A334659((n+1)/#)]` -/
def P3476602202439273006.Spec : Prop :=
  ∀ n, P3476602202439273006.a n = A084220 (n + 1)

theorem P3476602202439273006.correct : P3476602202439273006.Spec := by
  intro n
  simp only [A084220, Nat.add_sub_cancel]

end A084220

/-! ## A084220.P8784004315960300280

`∑{d}[n+1, A306411(#)*A372950((n+1)/#)]`
-/

namespace A084220.P8784004315960300280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A372950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084220.P8784004315960300280

namespace A084220

/-- `∑{d}[n+1, A306411(#)*A372950((n+1)/#)]` -/
def P8784004315960300280.Spec : Prop :=
  ∀ n, P8784004315960300280.a n = A084220 (n + 1)

end A084220

/-! ## A084220.P14289835546668783972

`∑{d}[n+1, A059376(#²)]`
-/

namespace A084220.P14289835546668783972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059376 (d ^ 2)

end

end A084220.P14289835546668783972

namespace A084220

/-- `∑{d}[n+1, A059376(#²)]` -/
def P14289835546668783972.Spec : Prop :=
  ∀ n, P14289835546668783972.a n = A084220 (n + 1)

end A084220

/-!
# A084221: a(n+2) = 4*a(n), with a(0)=1, a(1)=3.

The programs for A084221, the canonical program `A084221.P220553154635234367` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084221 has offset 0).

The definition of A084221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084221.P17430773446964405742

`A074323(n+1)*A016116(n)`
-/

namespace A084221.P17430773446964405742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (n + 1) * A016116 n

end

end A084221.P17430773446964405742

namespace A084221

/-- `A074323(n+1)*A016116(n)` -/
def P17430773446964405742.Spec : Prop :=
  ∀ n, P17430773446964405742.a n = A084221 n

end A084221

/-! ## A084221.P220553154635234367

`(5*2^n-(-2)^n)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084221

/-- `(5*2^n-(-2)^n)/4` -/
def P220553154635234367.Spec : Prop :=
  ∀ n, P220553154635234367.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P15507329157837771757

`ogf((1+3x)/(1-4x^2))`
-/

namespace A084221.P15507329157837771757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -4] n

end

end A084221.P15507329157837771757

namespace A084221

/-- `ogf((1+3x)/(1-4x^2))` -/
def P15507329157837771757.Spec : Prop :=
  ∀ n, P15507329157837771757.a n = A084221 n

end A084221

/-! ## A084221.P16632811642668789038

`4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A084221.P16632811642668789038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 2)

end

end A084221.P16632811642668789038

namespace A084221

/-- `4*a(n-2)` -/
def P16632811642668789038.Spec : Prop :=
  ∀ n, (P16632811642668789038.a n : ℤ) = A084221 n

end A084221

/-! ## A084221.P18072834426922779967

`∏[4/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A084221.P18072834426922779967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084221.P18072834426922779967

namespace A084221

/-- `∏[4/a(n-1)]` -/
def P18072834426922779967.Spec : Prop :=
  ∀ n, P18072834426922779967.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P8920843338448500629

`floor(a(n-2)/(1-3/4))` with `a(0)=1, a(1)=3`
-/

namespace A084221.P8920843338448500629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A084221.P8920843338448500629

namespace A084221

/-- `floor(a(n-2)/(1-3/4))` -/
def P8920843338448500629.Spec : Prop :=
  ∀ n, P8920843338448500629.a n = A084221 n

end A084221

/-! ## A084221.P3350989204624421394

`a(n-1)+2^xor(1, n-1)` with `a(0)=1`
-/

namespace A084221.P3350989204624421394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (Int.xor 1 ((n : ℤ) - 1) : ℤ)

end

end A084221.P3350989204624421394

namespace A084221

/-- `a(n-1)+2^xor(1, n-1)` -/
def P3350989204624421394.Spec : Prop :=
  ∀ n, P3350989204624421394.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P4886355706177349471

`∑[2^∑[2-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A084221.P4886355706177349471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084221.P4886355706177349471

namespace A084221

/-- `∑[2^∑[2-a(n-1)]]` -/
def P4886355706177349471.Spec : Prop :=
  ∀ n, P4886355706177349471.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P17788068483510868560

`a(n-1)+a(n-1)+(-2)^(n-1)` with `a(0)=1`
-/

namespace A084221.P17788068483510868560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A084221.P17788068483510868560

namespace A084221

/-- `a(n-1)+a(n-1)+(-2)^(n-1)` -/
def P17788068483510868560.Spec : Prop :=
  ∀ n, P17788068483510868560.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P903305225437218656

`a(n-1)-((-2)^n/2-a(n-1))` with `a(0)=1`
-/

namespace A084221.P903305225437218656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (((-2) ^ n : ℚ) / 2 - a (n - 1))

end

end A084221.P903305225437218656

namespace A084221

/-- `a(n-1)-((-2)^n/2-a(n-1))` -/
def P903305225437218656.Spec : Prop :=
  ∀ n, P903305225437218656.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P14766243813645409282

`floor(a(n-2)+a(n-2)+a(n-2)+floor(a(n-2)))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A084221.P14766243813645409282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A084221.P14766243813645409282

namespace A084221

/-- `floor(a(n-2)+a(n-2)+a(n-2)+floor(a(n-2)))` -/
def P14766243813645409282.Spec : Prop :=
  ∀ n, (P14766243813645409282.a n : ℤ) = A084221 n

end A084221

/-! ## A084221.P210583926807780032

`record[abs(A078069(n))]`
-/

namespace A084221.P210583926807780032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078069 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084221.P210583926807780032

namespace A084221

/-- `record[abs(A078069(n))]` -/
def P210583926807780032.Spec : Prop :=
  ∀ n, P210583926807780032.a n = A084221 n

end A084221

/-! ## A084221.P2043253090637252307

`record[A137824(n+1)]`
-/

namespace A084221.P2043253090637252307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084221.P2043253090637252307

namespace A084221

/-- `record[A137824(n+1)]` -/
def P2043253090637252307.Spec : Prop :=
  ∀ n, P2043253090637252307.a n = A084221 n

end A084221

/-! ## A084221.P7620657749184739629

`A277867(n)+and(1, n)`
-/

namespace A084221.P7620657749184739629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277867 n + (Nat.land 1 n : ℤ)

end

end A084221.P7620657749184739629

namespace A084221

/-- `A277867(n)+and(1, n)` -/
def P7620657749184739629.Spec : Prop :=
  ∀ n, P7620657749184739629.a n = A084221 n

end A084221

/-! ## A084221.P509260611253128398

`∑[A135520(abs(1-n))]`
-/

namespace A084221.P509260611253128398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084221.P509260611253128398

namespace A084221

/-- `∑[A135520(abs(1-n))]` -/
def P509260611253128398.Spec : Prop :=
  ∀ n, P509260611253128398.a n = A084221 n

end A084221

/-! ## A084221.P14914051796966724650

`record[abs(A138377(n+1))]`
-/

namespace A084221.P14914051796966724650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138377 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084221.P14914051796966724650

namespace A084221

/-- `record[abs(A138377(n+1))]` -/
def P14914051796966724650.Spec : Prop :=
  ∀ n, P14914051796966724650.a n = A084221 n

end A084221

/-! ## A084221.P9818089092681229758

`2^(n-1)*A010693(n)`
-/

namespace A084221.P9818089092681229758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A010693 n : ℚ)

end

end A084221.P9818089092681229758

namespace A084221

/-- `2^(n-1)*A010693(n)` -/
def P9818089092681229758.Spec : Prop :=
  ∀ n, P9818089092681229758.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P16387836568994920943

`2^(n-2)*A010711(n)`
-/

namespace A084221.P16387836568994920943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A010711 n : ℚ)

end

end A084221.P16387836568994920943

namespace A084221

/-- `2^(n-2)*A010711(n)` -/
def P16387836568994920943.Spec : Prop :=
  ∀ n, P16387836568994920943.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P664104948812420152

`2^(n-1)*A020639(3*(n+2))`
-/

namespace A084221.P664104948812420152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A020639 (3 * (n + 2)) : ℚ)

end

end A084221.P664104948812420152

namespace A084221

/-- `2^(n-1)*A020639(3*(n+2))` -/
def P664104948812420152.Spec : Prop :=
  ∀ n, P664104948812420152.a n = (A084221 n : ℚ)

end A084221

/-! ## A084221.P255967561513729948

`2^(n-1)*A000040(gcd(n+1, n-1))`
-/

namespace A084221.P255967561513729948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000040 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) : ℚ)

end

end A084221.P255967561513729948

namespace A084221

/-- `2^(n-1)*A000040(gcd(n+1, n-1))` -/
def P255967561513729948.Spec : Prop :=
  ∀ n, P255967561513729948.a n = (A084221 n : ℚ)

end A084221

/-!
# A084222: a(n) = -2*a(n-1) + 3*a(n-2), with a(0)=1, a(1)=2.

The programs for A084222, the canonical program `A084222.P59924733229623195` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084222 has offset 0).

The definition of A084222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)+3*a(n-2)` (program `A084222.P59924733229623195`, by `A084222.P59924733229623195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084222.P10985646095929575114

`9*a(n-2)-10` with `a(0)=1, a(1)=2`
-/

namespace A084222.P10985646095929575114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  9 * a (n - 2) - 10

end

end A084222.P10985646095929575114

namespace A084222

/-- `9*a(n-2)-10` -/
def P10985646095929575114.Spec : Prop :=
  ∀ n, P10985646095929575114.a n = A084222 n

end A084222

/-! ## A084222.P59924733229623195

`-2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084222

/-- `-2*a(n-1)+3*a(n-2)` -/
def P59924733229623195.Spec : Prop :=
  ∀ n, P59924733229623195.a n = A084222 n

theorem P59924733229623195.correct : P59924733229623195.Spec := by
  intro n
  simp only [A084222]

end A084222

/-! ## A084222.P9985148549171272133

`(5-(-3)^n)/4`
-/

namespace A084222.P9985148549171272133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (-3) ^ n : ℚ) / 4

end

end A084222.P9985148549171272133

namespace A084222

/-- `(5-(-3)^n)/4` -/
def P9985148549171272133.Spec : Prop :=
  ∀ n, P9985148549171272133.a n = (A084222 n : ℚ)

theorem P9985148549171272133.correct : P9985148549171272133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084222, Nat.add_sub_cancel, A084222.P9985148549171272133.a, A084222.P59924733229623195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084222, Nat.add_sub_cancel, A084222.P9985148549171272133.a, A084222.P59924733229623195.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084222

/-! ## A084222.P329022548256962462

`∑[ogf((1+4x)/(1+3x))]`
-/

namespace A084222.P329022548256962462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084222.P329022548256962462

namespace A084222

/-- `∑[ogf((1+4x)/(1+3x))]` -/
def P329022548256962462.Spec : Prop :=
  ∀ n, P329022548256962462.a n = A084222 n

end A084222

/-! ## A084222.P6123360206891067717

`ogf((1+4x)/(1+2x-3x^2))`
-/

namespace A084222.P6123360206891067717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 2, -3] n

end

end A084222.P6123360206891067717

namespace A084222

/-- `ogf((1+4x)/(1+2x-3x^2))` -/
def P6123360206891067717.Spec : Prop :=
  ∀ n, P6123360206891067717.a n = A084222 n

end A084222

/-! ## A084222.P16563008113599329226

`5-3*a(n-1)` with `a(0)=1`
-/

namespace A084222.P16563008113599329226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - 3 * a (n - 1)

end

end A084222.P16563008113599329226

namespace A084222

/-- `5-3*a(n-1)` -/
def P16563008113599329226.Spec : Prop :=
  ∀ n, P16563008113599329226.a n = A084222 n

end A084222

/-! ## A084222.P6894574888145534407

`∑[(-3)^((n-1)%(n+1))]`
-/

namespace A084222.P6894574888145534407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084222.P6894574888145534407

namespace A084222

/-- `∑[(-3)^((n-1)%(n+1))]` -/
def P6894574888145534407.Spec : Prop :=
  ∀ n, P6894574888145534407.a n = (A084222 n : ℚ)

end A084222

/-! ## A084222.P4002937345697021266

`a(n-1)+(-3)^(n-1)` with `a(0)=1`
-/

namespace A084222.P4002937345697021266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A084222.P4002937345697021266

namespace A084222

/-- `a(n-1)+(-3)^(n-1)` -/
def P4002937345697021266.Spec : Prop :=
  ∀ n, P4002937345697021266.a n = (A084222 n : ℚ)

end A084222

/-! ## A084222.P5324284684521442558

`∑[(C(4, n+3)-3)^(n-1)]`
-/

namespace A084222.P5324284684521442558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 4 (n + 3) : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084222.P5324284684521442558

namespace A084222

/-- `∑[(C(4, n+3)-3)^(n-1)]` -/
def P5324284684521442558.Spec : Prop :=
  ∀ n, P5324284684521442558.a n = (A084222 n : ℚ)

end A084222

/-! ## A084222.P14470844813160399379

`5-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A084222.P14470844813160399379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - a (n - 1) - a (n - 1) - a (n - 1)

end

end A084222.P14470844813160399379

namespace A084222

/-- `5-a(n-1)-a(n-1)-a(n-1)` -/
def P14470844813160399379.Spec : Prop :=
  ∀ n, P14470844813160399379.a n = A084222 n

end A084222

/-! ## A084222.P1530288978424477924

`A014983(n)+1`
-/

namespace A084222.P1530288978424477924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n + 1

end

end A084222.P1530288978424477924

namespace A084222

/-- `A014983(n)+1` -/
def P1530288978424477924.Spec : Prop :=
  ∀ n, P1530288978424477924.a n = A084222 n

theorem P1530288978424477924.correct : P1530288978424477924.Spec := by
  intro n
  simp only [A084222, Nat.add_sub_cancel, A084222.P1530288978424477924.a, A084222.P59924733229623195.a, A014983, A014983.P11933017260358448092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084222

/-! ## A084222.P12526051447980854601

`2-A084567(n)`
-/

namespace A084222.P12526051447980854601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084567 n

end

end A084222.P12526051447980854601

namespace A084222

/-- `2-A084567(n)` -/
def P12526051447980854601.Spec : Prop :=
  ∀ n, P12526051447980854601.a n = A084222 n

end A084222

/-! ## A084222.P14307284725489945642

`ceil(A165553(n)/2)`
-/

namespace A084222.P14307284725489945642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165553 n : ℚ) / 2⌉

end

end A084222.P14307284725489945642

namespace A084222

/-- `ceil(A165553(n)/2)` -/
def P14307284725489945642.Spec : Prop :=
  ∀ n, P14307284725489945642.a n = A084222 n

end A084222

/-! ## A084222.P3877248839168901029

`∑[A141413(n+1)]+2`
-/

namespace A084222.P3877248839168901029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A084222.P3877248839168901029

namespace A084222

/-- `∑[A141413(n+1)]+2` -/
def P3877248839168901029.Spec : Prop :=
  ∀ n, P3877248839168901029.a n = A084222 n

end A084222

/-! ## A084222.P1630627234707330392

`A084567(n+1)/3+1`
-/

namespace A084222.P1630627234707330392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084567 (n + 1) : ℚ) / 3 + 1

end

end A084222.P1630627234707330392

namespace A084222

/-- `A084567(n+1)/3+1` -/
def P1630627234707330392.Spec : Prop :=
  ∀ n, P1630627234707330392.a n = (A084222 n : ℚ)

end A084222

/-! ## A084222.P11470023347647369837

`A297445(n)-A029858(n+1)`
-/

namespace A084222.P11470023347647369837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297445 n - A029858 (n + 1)

end

end A084222.P11470023347647369837

namespace A084222

/-- `A297445(n)-A029858(n+1)` -/
def P11470023347647369837.Spec : Prop :=
  ∀ n, P11470023347647369837.a n = A084222 n

end A084222

/-! ## A084222.P7199157969686674174

`∑[A157674(2*n)]`
-/

namespace A084222.P7199157969686674174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157674 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084222.P7199157969686674174

namespace A084222

/-- `∑[A157674(2*n)]` -/
def P7199157969686674174.Spec : Prop :=
  ∀ n, P7199157969686674174.a n = A084222 n

end A084222

/-! ## A084222.P10693653371812335317

`∑[a(n-1)²/a(n-2)]` with `a(0)=1, a(1)=1, a(2)=-3`
-/

namespace A084222.P10693653371812335317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, -3] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084222.P10693653371812335317

namespace A084222

/-- `∑[a(n-1)²/a(n-2)]` -/
def P10693653371812335317.Spec : Prop :=
  ∀ n, P10693653371812335317.a n = (A084222 n : ℚ)

end A084222

/-! ## A084222.P14045125066412446051

`∑[ceil(A084244(2*n)/A084244(n+1))]`
-/

namespace A084222.P14045125066412446051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084244 (2 * n) : ℚ) / (A084244 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084222.P14045125066412446051

namespace A084222

/-- `∑[ceil(A084244(2*n)/A084244(n+1))]` -/
def P14045125066412446051.Spec : Prop :=
  ∀ n, P14045125066412446051.a n = A084222 n

end A084222

/-!
# A084227: Numbers of the form p*q^k with distinct primes p and q, k>0.

The programs for A084227, the canonical program `A084227.P1142344251697710946` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084227 has offset 1).

The definition of A084227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084227.P1142344251697710946

`∪[A006881(n+1), A345381(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A084227

/-- `∪[A006881(n+1), A345381(n+1)]` -/
def P1142344251697710946.Spec : Prop :=
  ∀ n, (P1142344251697710946.a n : ℤ) = A084227 (n + 1)

theorem P1142344251697710946.correct : P1142344251697710946.Spec := by
  intro n
  simp only [A084227, Nat.add_sub_cancel]

end A084227

/-! ## A084227.P7813526527188957944

`∩[A007774(n+1), A328956(n+1)]`
-/

namespace A084227.P7813526527188957944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084227.P7813526527188957944

namespace A084227

/-- `∩[A007774(n+1), A328956(n+1)]` -/
def P7813526527188957944.Spec : Prop :=
  ∀ n, (P7813526527188957944.a n : ℤ) = A084227 (n + 1)

end A084227

/-! ## A084227.P10290592413158748830

`∩[A070915(n+1), A328956(n+1)]`
-/

namespace A084227.P10290592413158748830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084227.P10290592413158748830

namespace A084227

/-- `∩[A070915(n+1), A328956(n+1)]` -/
def P10290592413158748830.Spec : Prop :=
  ∀ n, (P10290592413158748830.a n : ℤ) = A084227 (n + 1)

end A084227

/-! ## A084227.P329995735885462424

`∩[A267114(n+1), A328956(n+1)]`
-/

namespace A084227.P329995735885462424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084227.P329995735885462424

namespace A084227

/-- `∩[A267114(n+1), A328956(n+1)]` -/
def P329995735885462424.Spec : Prop :=
  ∀ n, (P329995735885462424.a n : ℤ) = A084227 (n + 1)

end A084227

/-! ## A084227.P3109198934831839898

`∩[A007774(n+1), A389065(n+1)]`
-/

namespace A084227.P3109198934831839898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084227.P3109198934831839898

namespace A084227

/-- `∩[A007774(n+1), A389065(n+1)]` -/
def P3109198934831839898.Spec : Prop :=
  ∀ n, (P3109198934831839898.a n : ℤ) = A084227 (n + 1)

end A084227

/-! ## A084227.P17364963098179642704

`∩[A070915(n+1), A389065(n+1)]`
-/

namespace A084227.P17364963098179642704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084227.P17364963098179642704

namespace A084227

/-- `∩[A070915(n+1), A389065(n+1)]` -/
def P17364963098179642704.Spec : Prop :=
  ∀ n, (P17364963098179642704.a n : ℤ) = A084227 (n + 1)

end A084227

/-! ## A084227.P8676093821456958689

`∩[A007774(n+1), A052485(n+1)]`
-/

namespace A084227.P8676093821456958689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084227.P8676093821456958689

namespace A084227

/-- `∩[A007774(n+1), A052485(n+1)]` -/
def P8676093821456958689.Spec : Prop :=
  ∀ n, (P8676093821456958689.a n : ℤ) = A084227 (n + 1)

end A084227

/-! ## A084227.P13474424167835571980

`1+eq[2, A050320(n+1)]`
-/

namespace A084227.P13474424167835571980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084227.P13474424167835571980

namespace A084227

/-- `1+eq[2, A050320(n+1)]` -/
def P13474424167835571980.Spec : Prop :=
  ∀ n, (P13474424167835571980.a n : ℤ) = A084227 (n + 1)

end A084227

/-! ## A084227.P1382410311072283074

`filter[A052485(n+1), A215480(#)]`
-/

namespace A084227.P1382410311072283074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A084227.P1382410311072283074

namespace A084227

/-- `filter[A052485(n+1), A215480(#)]` -/
def P1382410311072283074.Spec : Prop :=
  ∀ n, P1382410311072283074.a n = A084227 (n + 1)

end A084227

/-! ## A084227.P12560129582002026374

`filter[A328956(n+1), A215480(#)]`
-/

namespace A084227.P12560129582002026374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A084227.P12560129582002026374

namespace A084227

/-- `filter[A328956(n+1), A215480(#)]` -/
def P12560129582002026374.Spec : Prop :=
  ∀ n, P12560129582002026374.a n = A084227 (n + 1)

end A084227

/-! ## A084227.P3195046768055409421

`filter[A389065(n+1), A215480(#)]`
-/

namespace A084227.P3195046768055409421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A084227.P3195046768055409421

namespace A084227

/-- `filter[A389065(n+1), A215480(#)]` -/
def P3195046768055409421.Spec : Prop :=
  ∀ n, P3195046768055409421.a n = A084227 (n + 1)

end A084227

/-!
# A084228: a(1)=1, a(2)=2; thereafter a(n) = sum of digits of (a(1)+a(2)+a(3)+...+a(n-1)).

The programs for A084228, the canonical program `A084228.P11895831632362515159` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084228 has offset 1).

The definition of A084228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084228.P11895831632362515159

`∑{digits}[A160939(a(n-1)+1)-1, #]` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A084228

/-- `∑{digits}[A160939(a(n-1)+1)-1, #]` -/
def P11895831632362515159.Spec : Prop :=
  ∀ n, (P11895831632362515159.a n : ℤ) = A084228 (n + 1)

theorem P11895831632362515159.correct : P11895831632362515159.Spec := by
  intro n
  simp only [A084228, Nat.add_sub_cancel]

end A084228

/-! ## A084228.P13477809012284614419

`Δ[A062028(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A084228.P13477809012284614419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A062028 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084228.P13477809012284614419

namespace A084228

/-- `Δ[A062028(a(n-1))]` -/
def P13477809012284614419.Spec : Prop :=
  ∀ n, P13477809012284614419.a n = A084228 (n + 1)

end A084228

/-! ## A084228.P1079031321281638270

`Δ[A160939(a(n-1))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A084228.P1079031321281638270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  A160939 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084228.P1079031321281638270

namespace A084228

/-- `Δ[A160939(a(n-1))]` -/
def P1079031321281638270.Spec : Prop :=
  ∀ n, P1079031321281638270.a n = A084228 (n + 1)

end A084228

/-! ## A084228.P6038049471871720522

`Δ[A007953(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A084228.P6038049471871720522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A007953 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084228.P6038049471871720522

namespace A084228

/-- `Δ[A007953(a(n-1))+a(n-1)]` -/
def P6038049471871720522.Spec : Prop :=
  ∀ n, P6038049471871720522.a n = A084228 (n + 1)

end A084228

/-! ## A084228.P11430818944286777480

`gcd(Δ[A053613(n+1)], A085126(n+1))`
-/

namespace A084228.P11430818944286777480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A085126 (n + 1))

end

end A084228.P11430818944286777480

namespace A084228

/-- `gcd(Δ[A053613(n+1)], A085126(n+1))` -/
def P11430818944286777480.Spec : Prop :=
  ∀ n, (P11430818944286777480.a n : ℤ) = A084228 (n + 1)

end A084228

/-!
# A084229: Let b(1)=1, b(2)=2, b(n) = sum of digits of b(1)+b(2)+b(3)+...+b(n-1), sequence gives values of n such that b(n)=3.

The programs for A084229, there is no canonical definition to state claims against.
-/

/-! ## A084229.P3296579188680978458

`eq[3, A084228(n+1)]+1`
-/

namespace A084229.P3296579188680978458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084229.P3296579188680978458

/-! ## A084229.P8264659976080709075

`eq[1, A230287(n+1)]+3`
-/

namespace A084229.P8264659976080709075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A084229.P8264659976080709075

/-! ## A084229.P799816119462787499

`eq[3, A084228(A028310(n))]`
-/

namespace A084229.P799816119462787499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084229.P799816119462787499

/-! ## A084229.P5469434585192840376

`A004442(eq[3, A084228(n+1)])`
-/

namespace A084229.P5469434585192840376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084229.P5469434585192840376

/-! ## A084229.P6974788624827782768

`A131738(eq[3, A084228(n+1)])`
-/

namespace A084229.P6974788624827782768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084229.P6974788624827782768

/-!
# A084230: Cumulative minima of A006046(n)/n^theta, where theta=log(3)/log(2), is a local minimum.

The programs for A084230, there is no canonical definition to state claims against.
-/

/-! ## A084230.P5253988413074643458

`or(floor(n/3), A071053(4^n-2^n))`
-/

namespace A084230.P5253988413074643458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 3⌋ (A071053 (4 ^ n - 2 ^ n))

end

end A084230.P5253988413074643458

/-! ## A084230.P13377686742944453643

`A070864(A371773(n))`
-/

namespace A084230.P13377686742944453643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A371773 n).toNat

end

end A084230.P13377686742944453643

/-! ## A084230.P13276205740092930843

`A055086(A192652(n)²)`
-/

namespace A084230.P13276205740092930843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A192652 n ^ 2).toNat

end

end A084230.P13276205740092930843

/-! ## A084230.P1482220598377591016

`A234300(A081696(n+1))`
-/

namespace A084230.P1482220598377591016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A081696 (n + 1)).toNat

end

end A084230.P1482220598377591016

/-!
# A084231: Numbers k such that the root-mean-square value of 1, 2, ..., k, i.e., sqrt((1/k)*Sum_{j=1..k} j^2), is an integer.

The programs for A084231, the canonical program `A084231.P8886951333675734745` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084231 has offset 1).

The definition of A084231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084231.P8886951333675734745

`(floor((7/2+2*sqrt(3))*(97+56*sqrt(3))^n)-2)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084231

/-- `(floor((7/2+2*sqrt(3))*(97+56*sqrt(3))^n)-2)/4` -/
def P8886951333675734745.Spec : Prop :=
  ∀ n, P8886951333675734745.a n = (A084231 (n + 1) : ℚ)

end A084231

/-! ## A084231.P14539018102413753281

`∑[A001352(4*n)]`
-/

namespace A084231.P14539018102413753281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084231.P14539018102413753281

namespace A084231

/-- `∑[A001352(4*n)]` -/
def P14539018102413753281.Spec : Prop :=
  ∀ n, P14539018102413753281.a n = A084231 (n + 1)

end A084231

/-! ## A084231.P16335720795023300544

`16*A200998(n)+1`
-/

namespace A084231.P16335720795023300544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A200998 n + 1

end

end A084231.P16335720795023300544

namespace A084231

/-- `16*A200998(n)+1` -/
def P16335720795023300544.Spec : Prop :=
  ∀ n, P16335720795023300544.a n = A084231 (n + 1)

end A084231

/-! ## A084231.P688385366463484684

`2*A006051(n+1)-1`
-/

namespace A084231.P688385366463484684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006051 (n + 1) - 1

end

end A084231.P688385366463484684

namespace A084231

/-- `2*A006051(n+1)-1` -/
def P688385366463484684.Spec : Prop :=
  ∀ n, P688385366463484684.a n = A084231 (n + 1)

end A084231

/-! ## A084231.P6372138259306992920

`6*A059989(n+1)+1`
-/

namespace A084231.P6372138259306992920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A059989 (n + 1) + 1

end

end A084231.P6372138259306992920

namespace A084231

/-- `6*A059989(n+1)+1` -/
def P6372138259306992920.Spec : Prop :=
  ∀ n, P6372138259306992920.a n = A084231 (n + 1)

end A084231

/-!
# A084232: RMS values associated with A084231.

The programs for A084232, the canonical program `A084232.P11530783516737648957` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084232 has offset 0).

The definition of A084232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084232.P11530783516737648957

`((7+4*sqrt(3))^(2*n+1)-(7-4*sqrt(3))^(2*n+1))/(8*sqrt(3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084232

/-- `((7+4*sqrt(3))^(2*n+1)-(7-4*sqrt(3))^(2*n+1))/(8*sqrt(3))` -/
def P11530783516737648957.Spec : Prop :=
  ∀ n, P11530783516737648957.a n = (A084232 n : ℝ)

end A084232

/-! ## A084232.P8117985450955401211

`Δ[A351683(n+1)]`
-/

namespace A084232.P8117985450955401211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084232.P8117985450955401211

namespace A084232

/-- `Δ[A351683(n+1)]` -/
def P8117985450955401211.Spec : Prop :=
  ∀ n, P8117985450955401211.a n = A084232 n

end A084232

/-! ## A084232.P12590913038643197456

`A007655(2*(n+1))`
-/

namespace A084232.P12590913038643197456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007655 (2 * (n + 1))

end

end A084232.P12590913038643197456

namespace A084232

/-- `A007655(2*(n+1))` -/
def P12590913038643197456.Spec : Prop :=
  ∀ n, P12590913038643197456.a n = A084232 n

end A084232

/-! ## A084232.P7628933225918272678

`A041357(4*n+1)`
-/

namespace A084232.P7628933225918272678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041357 (4 * n + 1)

end

end A084232.P7628933225918272678

namespace A084232

/-- `A041357(4*n+1)` -/
def P7628933225918272678.Spec : Prop :=
  ∀ n, P7628933225918272678.a n = A084232 n

end A084232

/-! ## A084232.P17232123452878313440

`A099486(4*n+1)`
-/

namespace A084232.P17232123452878313440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099486 (4 * n + 1)

end

end A084232.P17232123452878313440

namespace A084232

/-- `A099486(4*n+1)` -/
def P17232123452878313440.Spec : Prop :=
  ∀ n, P17232123452878313440.a n = A084232 n

end A084232

/-!
# A084234: Smallest k such that |M(k)| = n^2, where M(x) is Mertens's function A002321.

The programs for A084234, there is no canonical definition to state claims against.
-/

/-! ## A084234.P4171429779971651440

`A051402((n+1)²)`
-/

namespace A084234.P4171429779971651440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 ((n + 1) ^ 2)

end

end A084234.P4171429779971651440

/-! ## A084234.P4110625376784063129

`or(char[1], A051402(∑[2*n+1]))`
-/

namespace A084234.P4110625376784063129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051402 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A084234.P4110625376784063129

/-! ## A084234.P16344601924885851571

`record[A051402(ceil(C(or(1, n), n)/2)²)]`
-/

namespace A084234.P16344601924885851571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084234.P16344601924885851571

/-! ## A084234.P8970467590399903671

`record[A051402(A152271(n)²)]`
-/

namespace A084234.P8970467590399903671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (A152271 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084234.P8970467590399903671

/-! ## A084234.P6134540929182377865

`record[A051402(A193739(n)²)]`
-/

namespace A084234.P6134540929182377865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (A193739 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084234.P6134540929182377865

/-!
# A084235: Smallest k such that |M(k)| = 2^n, where M(x) is Mertens's function A002321.

The programs for A084235, there is no canonical definition to state claims against.
-/

/-! ## A084235.P3288261925777808501

`A051402(2^n)`
-/

namespace A084235.P3288261925777808501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (2 ^ n)

end

end A084235.P3288261925777808501

/-! ## A084235.P5898561403504920980

`record[A051402(A059268(n))]`
-/

namespace A084235.P5898561403504920980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084235.P5898561403504920980

/-! ## A084235.P11778340525015216544

`record[A051402(A068009(n))]`
-/

namespace A084235.P11778340525015216544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (A068009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084235.P11778340525015216544

/-! ## A084235.P2439063898048216093

`record[A051402(A101508(n))]`
-/

namespace A084235.P2439063898048216093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (A101508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084235.P2439063898048216093

/-! ## A084235.P8690395546520426750

`record[A051402(A130321(n))]`
-/

namespace A084235.P8690395546520426750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084235.P8690395546520426750

/-!
# A084236: a(n) = M(2^n), where M(n) is Mertens's function, A002321.

The programs for A084236, the canonical program `A084236.P206726255755332926` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084236 has offset 0).

The definition of A084236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084236.P206726255755332926

`A002321(2^n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084236

/-- `A002321(2^n)` -/
def P206726255755332926.Spec : Prop :=
  ∀ n, P206726255755332926.a n = A084236 n

theorem P206726255755332926.correct : P206726255755332926.Spec := by
  intro n
  simp only [A084236]

end A084236

/-! ## A084236.P16915766935736651155

`A181587(A153010(n+1))`
-/

namespace A084236.P16915766935736651155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 (A153010 (n + 1)).toNat

end

end A084236.P16915766935736651155

namespace A084236

/-- `A181587(A153010(n+1))` -/
def P16915766935736651155.Spec : Prop :=
  ∀ n, P16915766935736651155.a n = A084236 n

end A084236

/-! ## A084236.P15861312957902512196

`A181587(A296965(n)+1)`
-/

namespace A084236.P15861312957902512196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 (A296965 n + 1).toNat

end

end A084236.P15861312957902512196

namespace A084236

/-- `A181587(A296965(n)+1)` -/
def P15861312957902512196.Spec : Prop :=
  ∀ n, P15861312957902512196.a n = A084236 n

end A084236

/-! ## A084236.P17639417166359236405

`A181587(A095121(n)/(2-C(n, n²)))`
-/

namespace A084236.P17639417166359236405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 (SequenceMachineLib.roundAway ((A095121 n : ℚ) / (2 - (Nat.choose n (n ^ 2) : ℤ) : ℚ))).toNat

end

end A084236.P17639417166359236405

namespace A084236

/-- `A181587(A095121(n)/(2-C(n, n²)))` -/
def P17639417166359236405.Spec : Prop :=
  ∀ n, P17639417166359236405.a n = A084236 n

end A084236

/-! ## A084236.P18107513757508477117

`A181587(A290114(n)-A131577(n))`
-/

namespace A084236.P18107513757508477117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 (A290114 n - A131577 n).toNat

end

end A084236.P18107513757508477117

namespace A084236

/-- `A181587(A290114(n)-A131577(n))` -/
def P18107513757508477117.Spec : Prop :=
  ∀ n, P18107513757508477117.a n = A084236 n

end A084236

/-!
# A084237: a(n) = M(10^n), where M(n) is Mertens's function.

The programs for A084237, there is no canonical definition to state claims against.
-/

/-! ## A084237.P11102649249833637616

`A348709(n)-A348708(n)`
-/

namespace A084237.P11102649249833637616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348709 n - A348708 n

end

end A084237.P11102649249833637616

/-! ## A084237.P805468357934948552

`2*A348709(n)-A071172(n)`
-/

namespace A084237.P805468357934948552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348709 n - A071172 n

end

end A084237.P805468357934948552

/-! ## A084237.P17200744479445579623

`A071172(n)-2*A348708(n)`
-/

namespace A084237.P17200744479445579623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 n - 2 * A348708 n

end

end A084237.P17200744479445579623

/-! ## A084237.P15952118535189062653

`A000007(n+3)+A071172(n)-A348708(n)-A348708(n)`
-/

namespace A084237.P15952118535189062653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) + (A071172 n - A348708 n - A348708 n)

end

end A084237.P15952118535189062653

/-!
# A084239: Rank of K-groups of Furstenberg transformation group C*-algebras of n-torus.

The programs for A084239, there is no canonical definition to state claims against.
-/

/-! ## A084239.P14515498985199847148

`floor(sqrt(A319721(n)+A001399(3*n+1)))`
-/

namespace A084239.P14515498985199847148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A319721 n + A001399 (3 * n + 1))

end

end A084239.P14515498985199847148

/-! ## A084239.P1904900846002326305

`A000196(A319721(n)+A059100(n))`
-/

namespace A084239.P1904900846002326305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A319721 n + A059100 n).toNat

end

end A084239.P1904900846002326305

/-! ## A084239.P12206889607486873910

`A225687(A081124(n))+A024361(n+1)`
-/

namespace A084239.P12206889607486873910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A081124 n).toNat + A024361 (n + 1)

end

end A084239.P12206889607486873910

/-! ## A084239.P10031776650405633733

`A000196(A319721(n)+A129096(n+1))`
-/

namespace A084239.P10031776650405633733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A319721 n + A129096 (n + 1)).toNat

end

end A084239.P10031776650405633733

/-! ## A084239.P5597267447459929570

`A002024(A180414(n))-A117370(n+1)`
-/

namespace A084239.P5597267447459929570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A180414 n).toNat - A117370 (n + 1)

end

end A084239.P5597267447459929570

/-!
# A084240: a(n) = -5*a(n-1) - 4*a(n-2), a(0)=1, a(1)=0.

The programs for A084240, the canonical program `A084240.P11115372360745740639` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084240 has offset 0).

The definition of A084240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-5*a(n-1)-4*a(n-2)` (program `A084240.P11115372360745740639`, by `A084240.P11115372360745740639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084240.P16821091035337151441

`(4*(-1)^n-(-4)^n)/3`
-/

namespace A084240.P16821091035337151441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (-1) ^ n - (-4) ^ n : ℚ) / 3

end

end A084240.P16821091035337151441

namespace A084240

/-- `(4*(-1)^n-(-4)^n)/3` -/
def P16821091035337151441.Spec : Prop :=
  ∀ n, P16821091035337151441.a n = (A084240 n : ℚ)

theorem P16821091035337151441.correct : P16821091035337151441.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084240, Nat.add_sub_cancel, A084240.P16821091035337151441.a, A084240.P11115372360745740639.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084240, Nat.add_sub_cancel, A084240.P16821091035337151441.a, A084240.P11115372360745740639.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084240

/-! ## A084240.P11115372360745740639

`-5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084240

/-- `-5*a(n-1)-4*a(n-2)` -/
def P11115372360745740639.Spec : Prop :=
  ∀ n, P11115372360745740639.a n = A084240 n

theorem P11115372360745740639.correct : P11115372360745740639.Spec := by
  intro n
  simp only [A084240]

end A084240

/-! ## A084240.P121693863769185996

`A084241(n)+(-1)^n`
-/

namespace A084240.P121693863769185996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084241 n + (-1) ^ n

end

end A084240.P121693863769185996

namespace A084240

/-- `A084241(n)+(-1)^n` -/
def P121693863769185996.Spec : Prop :=
  ∀ n, P121693863769185996.a n = A084240 n

end A084240

/-! ## A084240.P994393399022683913

`(-1)^(n+1)*(A002450(n)-1)`
-/

namespace A084240.P994393399022683913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A002450 n - 1)

end

end A084240.P994393399022683913

namespace A084240

/-- `(-1)^(n+1)*(A002450(n)-1)` -/
def P994393399022683913.Spec : Prop :=
  ∀ n, P994393399022683913.a n = A084240 n

end A084240

/-! ## A084240.P18087940146972107059

`(-1)^(n+1)*(A001045(2*n)-1)`
-/

namespace A084240.P18087940146972107059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A001045 (2 * n) - 1)

end

end A084240.P18087940146972107059

namespace A084240

/-- `(-1)^(n+1)*(A001045(2*n)-1)` -/
def P18087940146972107059.Spec : Prop :=
  ∀ n, P18087940146972107059.a n = A084240 n

end A084240

/-! ## A084240.P14090269724752895762

`ogf((1+5x)/(1+5x+4x^2))`
-/

namespace A084240.P14090269724752895762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 5, 4] n

end

end A084240.P14090269724752895762

namespace A084240

/-- `ogf((1+5x)/(1+5x+4x^2))` -/
def P14090269724752895762.Spec : Prop :=
  ∀ n, P14090269724752895762.a n = A084240 n

end A084240

/-! ## A084240.P1091271894495271128

`(-4)^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A084240.P1091271894495271128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A084240.P1091271894495271128

namespace A084240

/-- `(-4)^(n-1)-a(n-1)` -/
def P1091271894495271128.Spec : Prop :=
  ∀ n, P1091271894495271128.a n = (A084240 n : ℚ)

end A084240

/-! ## A084240.P8383855117959406696

`a(n-2)-5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A084240.P8383855117959406696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - 5 * (a (n - 1) + a (n - 2))

end

end A084240.P8383855117959406696

namespace A084240

/-- `a(n-2)-5*(a(n-1)+a(n-2))` -/
def P8383855117959406696.Spec : Prop :=
  ∀ n, P8383855117959406696.a n = A084240 n

end A084240

/-! ## A084240.P8777071274821137060

`A087213(eq[n+2, xor(2, n)])`
-/

namespace A084240.P8777071274821137060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087213 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084240.P8777071274821137060

namespace A084240

/-- `A087213(eq[n+2, xor(2, n)])` -/
def P8777071274821137060.Spec : Prop :=
  ∀ n, P8777071274821137060.a n = A084240 n

end A084240

/-! ## A084240.P5829160559443546058

`-xor(a(n-1), A034008(2*n))` with `a(0)=1`
-/

namespace A084240.P5829160559443546058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor (a (n - 1)) (A034008 (2 * n))

end

end A084240.P5829160559443546058

namespace A084240

/-- `-xor(a(n-1), A034008(2*n))` -/
def P5829160559443546058.Spec : Prop :=
  ∀ n, P5829160559443546058.a n = A084240 n

end A084240

/-! ## A084240.P16432296966635696856

`A087213(A042948(n))`
-/

namespace A084240.P16432296966635696856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087213 (A042948 n).toNat

end

end A084240.P16432296966635696856

namespace A084240

/-- `A087213(A042948(n))` -/
def P16432296966635696856.Spec : Prop :=
  ∀ n, P16432296966635696856.a n = A084240 n

end A084240

/-! ## A084240.P16048564441370125443

`Δ[A014113(n)]-A083086(n)`
-/

namespace A084240.P16048564441370125443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083086 n

end

end A084240.P16048564441370125443

namespace A084240

/-- `Δ[A014113(n)]-A083086(n)` -/
def P16048564441370125443.Spec : Prop :=
  ∀ n, P16048564441370125443.a n = A084240 n

end A084240

/-! ## A084240.P3606996785379265795

`2*A078008(n)-A083086(n)`
-/

namespace A084240.P3606996785379265795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078008 n - A083086 n

end

end A084240.P3606996785379265795

namespace A084240

/-- `2*A078008(n)-A083086(n)` -/
def P3606996785379265795.Spec : Prop :=
  ∀ n, P3606996785379265795.a n = A084240 n

end A084240

/-! ## A084240.P9297296613318347879

`A033999(n)*A084247(2*n)`
-/

namespace A084240.P9297296613318347879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A084247 (2 * n)

end

end A084240.P9297296613318347879

namespace A084240

/-- `A033999(n)*A084247(2*n)` -/
def P9297296613318347879.Spec : Prop :=
  ∀ n, P9297296613318347879.a n = A084240 n

end A084240

/-! ## A084240.P4016024181364955040

`A087213(∑[A014681(2*n)%4])`
-/

namespace A084240.P4016024181364955040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014681 (2 * n)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087213 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084240.P4016024181364955040

namespace A084240

/-- `A087213(∑[A014681(2*n)%4])` -/
def P4016024181364955040.Spec : Prop :=
  ∀ n, P4016024181364955040.a n = A084240 n

end A084240

/-! ## A084240.P13690241144250432718

`A084247(2*n)*A165326(n+1)`
-/

namespace A084240.P13690241144250432718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (2 * n) * A165326 (n + 1)

end

end A084240.P13690241144250432718

namespace A084240

/-- `A084247(2*n)*A165326(n+1)` -/
def P13690241144250432718.Spec : Prop :=
  ∀ n, P13690241144250432718.a n = A084240 n

end A084240

/-! ## A084240.P15998848635735270027

`A084247(2*n)*A133730(2*n)`
-/

namespace A084240.P15998848635735270027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (2 * n) * A133730 (2 * n)

end

end A084240.P15998848635735270027

namespace A084240

/-- `A084247(2*n)*A133730(2*n)` -/
def P15998848635735270027.Spec : Prop :=
  ∀ n, P15998848635735270027.a n = A084240 n

end A084240

/-! ## A084240.P13408306992927570632

`A033999(n)-A002450(n)*A033999(n)`
-/

namespace A084240.P13408306992927570632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A002450 n * A033999 n

end

end A084240.P13408306992927570632

namespace A084240

/-- `A033999(n)-A002450(n)*A033999(n)` -/
def P13408306992927570632.Spec : Prop :=
  ∀ n, P13408306992927570632.a n = A084240 n

end A084240

/-! ## A084240.P11299311805783749736

`(A151575(n+1)+A084247(n))*A078008(n)`
-/

namespace A084240.P11299311805783749736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151575 (n + 1) + A084247 n) * A078008 n

end

end A084240.P11299311805783749736

namespace A084240

/-- `(A151575(n+1)+A084247(n))*A078008(n)` -/
def P11299311805783749736.Spec : Prop :=
  ∀ n, P11299311805783749736.a n = A084240 n

end A084240

/-! ## A084240.P8746288924552782638

`(A014551(n)-A014551(n+1))*A151575(n)`
-/

namespace A084240.P8746288924552782638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014551 n - A014551 (n + 1)) * A151575 n

end

end A084240.P8746288924552782638

namespace A084240

/-- `(A014551(n)-A014551(n+1))*A151575(n)` -/
def P8746288924552782638.Spec : Prop :=
  ∀ n, P8746288924552782638.a n = A084240 n

end A084240

/-!
# A084241: a(n) = -5*a(n-1)-4*a(n-2) with n>1, a(0)=0, a(1)=1.

The programs for A084241, the canonical program `A084241.P13245971717086203206` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084241 has offset 0).

The definition of A084241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-5*a(n-1)-4*a(n-2)` (program `A084241.P13245971717086203206`, by `A084241.P13245971717086203206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084241.P6043852672876047438

`((-1)^n-(-4)^n)/3`
-/

namespace A084241.P6043852672876047438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n - (-4) ^ n : ℚ) / 3

end

end A084241.P6043852672876047438

namespace A084241

/-- `((-1)^n-(-4)^n)/3` -/
def P6043852672876047438.Spec : Prop :=
  ∀ n, P6043852672876047438.a n = (A084241 n : ℚ)

theorem P6043852672876047438.correct : P6043852672876047438.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084241, Nat.add_sub_cancel, A084241.P6043852672876047438.a, A084241.P13245971717086203206.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084241, Nat.add_sub_cancel, A084241.P6043852672876047438.a, A084241.P13245971717086203206.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084241

/-! ## A084241.P13245971717086203206

`-5*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084241

/-- `-5*a(n-1)-4*a(n-2)` -/
def P13245971717086203206.Spec : Prop :=
  ∀ n, P13245971717086203206.a n = A084241 n

theorem P13245971717086203206.correct : P13245971717086203206.Spec := by
  intro n
  simp only [A084241]

end A084241

/-! ## A084241.P5968081771237983009

`ogf(x/(1+5x+4x^2))`
-/

namespace A084241.P5968081771237983009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 5, 4] n

end

end A084241.P5968081771237983009

namespace A084241

/-- `ogf(x/(1+5x+4x^2))` -/
def P5968081771237983009.Spec : Prop :=
  ∀ n, P5968081771237983009.a n = A084241 n

end A084241

/-! ## A084241.P1379591131973296161

`(-4)^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A084241.P1379591131973296161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (-4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A084241.P1379591131973296161

namespace A084241

/-- `(-4)^(n-1)-a(n-1)` -/
def P1379591131973296161.Spec : Prop :=
  ∀ n, P1379591131973296161.a n = (A084241 n : ℚ)

end A084241

/-! ## A084241.P17924626201673034741

`n-xor(1, 4*a(n-1)+n)` with `a(0)=0`
-/

namespace A084241.P17924626201673034741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.xor 1 (4 * a (n - 1) + (n : ℤ))

end

end A084241.P17924626201673034741

namespace A084241

/-- `n-xor(1, 4*a(n-1)+n)` -/
def P17924626201673034741.Spec : Prop :=
  ∀ n, P17924626201673034741.a n = A084241 n

end A084241

/-! ## A084241.P15992524455738514906

`2*(n%2-2*a(n-1))-1` with `a(0)=0`
-/

namespace A084241.P15992524455738514906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (((n % 2 : ℕ) : ℤ) - 2 * a (n - 1)) - 1

end

end A084241.P15992524455738514906

namespace A084241

/-- `2*(n%2-2*a(n-1))-1` -/
def P15992524455738514906.Spec : Prop :=
  ∀ n, P15992524455738514906.a n = A084241 n

end A084241

/-! ## A084241.P15355135317902323920

`a(n-2)-5*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A084241.P15355135317902323920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 5 * (a (n - 1) + a (n - 2))

end

end A084241.P15355135317902323920

namespace A084241

/-- `a(n-2)-5*(a(n-1)+a(n-2))` -/
def P15355135317902323920.Spec : Prop :=
  ∀ n, P15355135317902323920.a n = A084241 n

end A084241

/-! ## A084241.P2748797969893525918

`(-1)^(n+1)*A002450(n)`
-/

namespace A084241.P2748797969893525918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A002450 n

end

end A084241.P2748797969893525918

namespace A084241

/-- `(-1)^(n+1)*A002450(n)` -/
def P2748797969893525918.Spec : Prop :=
  ∀ n, P2748797969893525918.a n = A084241 n

end A084241

/-! ## A084241.P17451512028979618273

`(-1)^(n+1)*A001045(2*n)`
-/

namespace A084241.P17451512028979618273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A001045 (2 * n)

end

end A084241.P17451512028979618273

namespace A084241

/-- `(-1)^(n+1)*A001045(2*n)` -/
def P17451512028979618273.Spec : Prop :=
  ∀ n, P17451512028979618273.a n = A084241 n

end A084241

/-! ## A084241.P5994676905929656332

`A084240(n)-A033999(n)`
-/

namespace A084241.P5994676905929656332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084240 n - A033999 n

end

end A084241.P5994676905929656332

namespace A084241

/-- `A084240(n)-A033999(n)` -/
def P5994676905929656332.Spec : Prop :=
  ∀ n, P5994676905929656332.a n = A084241 n

end A084241

/-! ## A084241.P18392643479618465151

`A002450(n)*A062157(n)`
-/

namespace A084241.P18392643479618465151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n * A062157 n

end

end A084241.P18392643479618465151

namespace A084241

/-- `A002450(n)*A062157(n)` -/
def P18392643479618465151.Spec : Prop :=
  ∀ n, P18392643479618465151.a n = A084241 n

end A084241

/-! ## A084241.P3173283394874948407

`A002450(n)*A165326(n)`
-/

namespace A084241.P3173283394874948407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n * A165326 n

end

end A084241.P3173283394874948407

namespace A084241

/-- `A002450(n)*A165326(n)` -/
def P3173283394874948407.Spec : Prop :=
  ∀ n, P3173283394874948407.a n = A084241 n

end A084241

/-! ## A084241.P7753169361986612883

`-(A002450(n)*A033999(n))`
-/

namespace A084241.P7753169361986612883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002450 n * A033999 n)

end

end A084241.P7753169361986612883

namespace A084241

/-- `-(A002450(n)*A033999(n))` -/
def P7753169361986612883.Spec : Prop :=
  ∀ n, P7753169361986612883.a n = A084241 n

end A084241

/-! ## A084241.P17152397693710944512

`A001045(n+1)-A083086(n)`
-/

namespace A084241.P17152397693710944512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A083086 n

end

end A084241.P17152397693710944512

namespace A084241

/-- `A001045(n+1)-A083086(n)` -/
def P17152397693710944512.Spec : Prop :=
  ∀ n, P17152397693710944512.a n = A084241 n

end A084241

/-! ## A084241.P11182478534749171746

`A002450(n)*A033999(n+1)`
-/

namespace A084241.P11182478534749171746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n * A033999 (n + 1)

end

end A084241.P11182478534749171746

namespace A084241

/-- `A002450(n)*A033999(n+1)` -/
def P11182478534749171746.Spec : Prop :=
  ∀ n, P11182478534749171746.a n = A084241 n

end A084241

/-! ## A084241.P3102424465489363307

`(A084247(n)-1)*A014551(n)`
-/

namespace A084241.P3102424465489363307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084247 n - 1) * A014551 n

end

end A084241.P3102424465489363307

namespace A084241

/-- `(A084247(n)-1)*A014551(n)` -/
def P3102424465489363307.Spec : Prop :=
  ∀ n, P3102424465489363307.a n = A084241 n

end A084241

/-! ## A084241.P11760636061219613331

`(1-A151575(n))*A014551(n)`
-/

namespace A084241.P11760636061219613331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A151575 n) * A014551 n

end

end A084241.P11760636061219613331

namespace A084241

/-- `(1-A151575(n))*A014551(n)` -/
def P11760636061219613331.Spec : Prop :=
  ∀ n, P11760636061219613331.a n = A084241 n

end A084241

/-! ## A084241.P4267966812746288527

`A001045(2*n)*A062157(n)`
-/

namespace A084241.P4267966812746288527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) * A062157 n

end

end A084241.P4267966812746288527

namespace A084241

/-- `A001045(2*n)*A062157(n)` -/
def P4267966812746288527.Spec : Prop :=
  ∀ n, P4267966812746288527.a n = A084241 n

end A084241

/-! ## A084241.P9901389146121867857

`A001045(2*n)*A165326(n)`
-/

namespace A084241.P9901389146121867857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) * A165326 n

end

end A084241.P9901389146121867857

namespace A084241

/-- `A001045(2*n)*A165326(n)` -/
def P9901389146121867857.Spec : Prop :=
  ∀ n, P9901389146121867857.a n = A084241 n

end A084241

/-! ## A084241.P13893020694264641334

`A001045(2*n)*A033999(n+1)`
-/

namespace A084241.P13893020694264641334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) * A033999 (n + 1)

end

end A084241.P13893020694264641334

namespace A084241

/-- `A001045(2*n)*A033999(n+1)` -/
def P13893020694264641334.Spec : Prop :=
  ∀ n, P13893020694264641334.a n = A084241 n

end A084241

/-!
# A084242: Least k, 1 <= k <= n, such that the number of elements of the continued fraction for n/k is maximum.

The programs for A084242, there is no canonical definition to state claims against.
-/

/-! ## A084242.P1319075107281501369

`A260728(A063013(n))+A094838(n+1)`
-/

namespace A084242.P1319075107281501369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (A063013 n).toNat + A094838 (n + 1)

end

end A084242.P1319075107281501369

/-! ## A084242.P5523589524450027400

`A268060(n+1)+A014105(A342721(n+1)^A342737(n))`
-/

namespace A084242.P5523589524450027400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268060 (n + 1) + A014105 (SequenceMachineLib.roundAway ((A342721 (n + 1) : ℚ) ^ (A342737 n : ℤ))).toNat

end

end A084242.P5523589524450027400

/-! ## A084242.P16407610429115788797

`A268060(n+1)+A033428(A342721(n+1)^A342737(n))`
-/

namespace A084242.P16407610429115788797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268060 (n + 1) + A033428 (SequenceMachineLib.roundAway ((A342721 (n + 1) : ℚ) ^ (A342737 n : ℤ))).toNat

end

end A084242.P16407610429115788797

/-! ## A084242.P7487565120463180000

`A268060(n+1)-A015240(A342721(n+1)^A342737(n))`
-/

namespace A084242.P7487565120463180000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268060 (n + 1) - A015240 (SequenceMachineLib.roundAway ((A342721 (n + 1) : ℚ) ^ (A342737 n : ℤ))).toNat

end

end A084242.P7487565120463180000

/-! ## A084242.P17199850926912548329

`A245760(A224916(n+1))`
-/

namespace A084242.P17199850926912548329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245760 (A224916 (n + 1)).toNat

end

end A084242.P17199850926912548329

/-!
# A084244: a(0)=1, a(1)=5, a(n) = -3*a(n-1), n>1.

The programs for A084244, the canonical program `A084244.P18278010967446381286` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084244 has offset 0).

The definition of A084244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)` (program `A084244.P18278010967446381286`, by `A084244.P18278010967446381286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084244.P18278010967446381286

`-3*a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084244

/-- `-3*a(n-1)` -/
def P18278010967446381286.Spec : Prop :=
  ∀ n, P18278010967446381286.a n = A084244 n

theorem P18278010967446381286.correct : P18278010967446381286.Spec := by
  intro n
  simp only [A084244]

end A084244

/-! ## A084244.P1470157561908566587

`ogf((1+8x)/(1+3x))`
-/

namespace A084244.P1470157561908566587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, 3] n

end

end A084244.P1470157561908566587

namespace A084244

/-- `ogf((1+8x)/(1+3x))` -/
def P1470157561908566587.Spec : Prop :=
  ∀ n, P1470157561908566587.a n = A084244 n

end A084244

/-! ## A084244.P6916424447059597031

`Δ[3*(3-a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A084244.P6916424447059597031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084244.P6916424447059597031

namespace A084244

/-- `Δ[3*(3-a(n-1))]` -/
def P6916424447059597031.Spec : Prop :=
  ∀ n, P6916424447059597031.a n = A084244 n

end A084244

/-! ## A084244.P13636481912945067040

`char[1]-3*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A084244.P13636481912945067040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 3 * a (n - 1)

end

end A084244.P13636481912945067040

namespace A084244

/-- `char[1]-3*a(n-1)` -/
def P13636481912945067040.Spec : Prop :=
  ∀ n, P13636481912945067040.a n = A084244 n

end A084244

/-! ## A084244.P17598908579013463413

`-(a(n-1)/cot(atan(3)))` with `a(0)=1, a(1)=5`
-/

namespace A084244.P17598908579013463413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n a =>
  -(a (n - 1) / Real.cot (Real.arctan (3 : ℝ)))

end

end A084244.P17598908579013463413

namespace A084244

/-- `-(a(n-1)/cot(atan(3)))` -/
def P17598908579013463413.Spec : Prop :=
  ∀ n, P17598908579013463413.a n = (A084244 n : ℝ)

end A084244

/-! ## A084244.P7117210237010343925

`3-3*(a(n-1)+1)` with `a(0)=1, a(1)=5`
-/

namespace A084244.P7117210237010343925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 - 3 * (a (n - 1) + 1)

end

end A084244.P7117210237010343925

namespace A084244

/-- `3-3*(a(n-1)+1)` -/
def P7117210237010343925.Spec : Prop :=
  ∀ n, P7117210237010343925.a n = A084244 n

theorem P7117210237010343925.correct : P7117210237010343925.Spec := by
  intro n
  simp only [A084244, Nat.add_sub_cancel, A084244.P7117210237010343925.a, A084244.P18278010967446381286.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084244

/-! ## A084244.P14152436014834662972

`3*(1-a(n-1))-3` with `a(0)=1, a(1)=5`
-/

namespace A084244.P14152436014834662972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * (1 - a (n - 1)) - 3

end

end A084244.P14152436014834662972

namespace A084244

/-- `3*(1-a(n-1))-3` -/
def P14152436014834662972.Spec : Prop :=
  ∀ n, P14152436014834662972.a n = A084244 n

theorem P14152436014834662972.correct : P14152436014834662972.Spec := by
  intro n
  simp only [A084244, Nat.add_sub_cancel, A084244.P14152436014834662972.a, A084244.P18278010967446381286.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084244

/-! ## A084244.P12228240887926129369

`a(n-1)/(2/3-1)` with `a(0)=1, a(1)=5`
-/

namespace A084244.P12228240887926129369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / ((2 : ℚ) / 3 - 1)

end

end A084244.P12228240887926129369

namespace A084244

/-- `a(n-1)/(2/3-1)` -/
def P12228240887926129369.Spec : Prop :=
  ∀ n, P12228240887926129369.a n = (A084244 n : ℚ)

end A084244

/-! ## A084244.P5261489021627803732

`A157674(2*n)-Δ[A157674(2*n)]`
-/

namespace A084244.P5261489021627803732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157674 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157674 (2 * n) - (f1 (n + 1) - f1 n)

end

end A084244.P5261489021627803732

namespace A084244

/-- `A157674(2*n)-Δ[A157674(2*n)]` -/
def P5261489021627803732.Spec : Prop :=
  ∀ n, P5261489021627803732.a n = A084244 n

end A084244

/-!
# A084245: a(n) = (n + (prime(n) mod 7) - 3) mod 10.

The programs for A084245, the canonical program `A084245.P17616269984016597429` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084245 has offset 1).

The definition of A084245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084245.P13859028548253278692

`(A004681(n+1)-2+n)%10`
-/

namespace A084245.P13859028548253278692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004681 (n + 1) - 2 + (n : ℤ)) 10

end

end A084245.P13859028548253278692

namespace A084245

/-- `(A004681(n+1)-2+n)%10` -/
def P13859028548253278692.Spec : Prop :=
  ∀ n, P13859028548253278692.a n = A084245 (n + 1)

end A084245

/-! ## A084245.P17616269984016597429

`(A039705(n+1)+n-2)%10`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A084245

/-- `(A039705(n+1)+n-2)%10` -/
def P17616269984016597429.Spec : Prop :=
  ∀ n, P17616269984016597429.a n = A084245 (n + 1)

theorem P17616269984016597429.correct : P17616269984016597429.Spec := by
  intro n
  simp only [A084245, Nat.add_sub_cancel]

end A084245

/-! ## A084245.P13460718733857956272

`A010879(A039705(n+1)-2+n)`
-/

namespace A084245.P13460718733857956272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A039705 (n + 1) - 2 + (n : ℤ)).toNat

end

end A084245.P13460718733857956272

namespace A084245

/-- `A010879(A039705(n+1)-2+n)` -/
def P13460718733857956272.Spec : Prop :=
  ∀ n, P13460718733857956272.a n = A084245 (n + 1)

end A084245

/-! ## A084245.P13535693215052042325

`A010879(A004681(n+1)-2+n)`
-/

namespace A084245.P13535693215052042325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004681 (n + 1) - 2 + (n : ℤ)).toNat

end

end A084245.P13535693215052042325

namespace A084245

/-- `A010879(A004681(n+1)-2+n)` -/
def P13535693215052042325.Spec : Prop :=
  ∀ n, P13535693215052042325.a n = A084245 (n + 1)

end A084245

/-!
# A084247: a(n) = -a(n-1) + 2*a(n-2), a(0)=1, a(1)=2.

The programs for A084247, the canonical program `A084247.P3128533902584007237` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084247 has offset 0).

The definition of A084247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+2*a(n-2)` (program `A084247.P3128533902584007237`, by `A084247.P3128533902584007237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084247.P3128533902584007237

`-a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084247

/-- `-a(n-1)+2*a(n-2)` -/
def P3128533902584007237.Spec : Prop :=
  ∀ n, P3128533902584007237.a n = A084247 n

theorem P3128533902584007237.correct : P3128533902584007237.Spec := by
  intro n
  simp only [A084247]

end A084247

/-! ## A084247.P5005842967463328252

`(4-(-2)^n)/3`
-/

namespace A084247.P5005842967463328252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - (-2) ^ n : ℚ) / 3

end

end A084247.P5005842967463328252

namespace A084247

/-- `(4-(-2)^n)/3` -/
def P5005842967463328252.Spec : Prop :=
  ∀ n, P5005842967463328252.a n = (A084247 n : ℚ)

theorem P5005842967463328252.correct : P5005842967463328252.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084247, Nat.add_sub_cancel, A084247.P5005842967463328252.a, A084247.P3128533902584007237.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A084247, Nat.add_sub_cancel, A084247.P5005842967463328252.a, A084247.P3128533902584007237.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084247

/-! ## A084247.P12331234404023779996

`(-1)^(n+1)*(A078008(n+1)-A078008(n))`
-/

namespace A084247.P12331234404023779996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A078008 (n + 1) - A078008 n)

end

end A084247.P12331234404023779996

namespace A084247

/-- `(-1)^(n+1)*(A078008(n+1)-A078008(n))` -/
def P12331234404023779996.Spec : Prop :=
  ∀ n, P12331234404023779996.a n = A084247 n

end A084247

/-! ## A084247.P2310183459805309498

`∑[ogf((1+3x)/(1+2x))]`
-/

namespace A084247.P2310183459805309498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084247.P2310183459805309498

namespace A084247

/-- `∑[ogf((1+3x)/(1+2x))]` -/
def P2310183459805309498.Spec : Prop :=
  ∀ n, P2310183459805309498.a n = A084247 n

end A084247

/-! ## A084247.P17851386778263519113

`ogf((1+3x)/(1+x-2x^2))`
-/

namespace A084247.P17851386778263519113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 1, -2] n

end

end A084247.P17851386778263519113

namespace A084247

/-- `ogf((1+3x)/(1+x-2x^2))` -/
def P17851386778263519113.Spec : Prop :=
  ∀ n, P17851386778263519113.a n = A084247 n

end A084247

/-! ## A084247.P10434254141051989497

`2*(2-a(n-1))` with `a(0)=1`
-/

namespace A084247.P10434254141051989497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - a (n - 1))

end

end A084247.P10434254141051989497

namespace A084247

/-- `2*(2-a(n-1))` -/
def P10434254141051989497.Spec : Prop :=
  ∀ n, P10434254141051989497.a n = A084247 n

end A084247

/-! ## A084247.P3221934068996123850

`∑[(-2)^((n-1)%(n+1))]`
-/

namespace A084247.P3221934068996123850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084247.P3221934068996123850

namespace A084247

/-- `∑[(-2)^((n-1)%(n+1))]` -/
def P3221934068996123850.Spec : Prop :=
  ∀ n, P3221934068996123850.a n = (A084247 n : ℚ)

end A084247

/-! ## A084247.P285741585881011087

`a(n-1)+(-2)^(n-1)` with `a(0)=1`
-/

namespace A084247.P285741585881011087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A084247.P285741585881011087

namespace A084247

/-- `a(n-1)+(-2)^(n-1)` -/
def P285741585881011087.Spec : Prop :=
  ∀ n, P285741585881011087.a n = (A084247 n : ℚ)

end A084247

/-! ## A084247.P531894651873089715

`4-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A084247.P531894651873089715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (a (n - 1) + a (n - 1))

end

end A084247.P531894651873089715

namespace A084247

/-- `4-(a(n-1)+a(n-1))` -/
def P531894651873089715.Spec : Prop :=
  ∀ n, P531894651873089715.a n = A084247 n

end A084247

/-! ## A084247.P16248484230318420088

`4-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A084247.P16248484230318420088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - a (n - 1) - a (n - 1)

end

end A084247.P16248484230318420088

namespace A084247

/-- `4-a(n-1)-a(n-1)` -/
def P16248484230318420088.Spec : Prop :=
  ∀ n, P16248484230318420088.a n = A084247 n

end A084247

/-! ## A084247.P8024085038510324963

`∑[(C(3, n+2)-2)^(n-1)]`
-/

namespace A084247.P8024085038510324963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 3 (n + 2) : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084247.P8024085038510324963

namespace A084247

/-- `∑[(C(3, n+2)-2)^(n-1)]` -/
def P8024085038510324963.Spec : Prop :=
  ∀ n, P8024085038510324963.a n = (A084247 n : ℚ)

end A084247

/-! ## A084247.P488002464281180551

`∑[A123344(n)]`
-/

namespace A084247.P488002464281180551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084247.P488002464281180551

namespace A084247

/-- `∑[A123344(n)]` -/
def P488002464281180551.Spec : Prop :=
  ∀ n, P488002464281180551.a n = A084247 n

end A084247

/-! ## A084247.P5869026698797197752

`3-A140966(n)`
-/

namespace A084247.P5869026698797197752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A140966 n

end

end A084247.P5869026698797197752

namespace A084247

/-- `3-A140966(n)` -/
def P5869026698797197752.Spec : Prop :=
  ∀ n, P5869026698797197752.a n = A084247 n

end A084247

/-! ## A084247.P17823005203895646634

`Δ[A140962(n)]+2`
-/

namespace A084247.P17823005203895646634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A084247.P17823005203895646634

namespace A084247

/-- `Δ[A140962(n)]+2` -/
def P17823005203895646634.Spec : Prop :=
  ∀ n, P17823005203895646634.a n = A084247 n

end A084247

/-! ## A084247.P3424541554986487638

`2-xor(1, A171501(n))`
-/

namespace A084247.P3424541554986487638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (A171501 n)

end

end A084247.P3424541554986487638

namespace A084247

/-- `2-xor(1, A171501(n))` -/
def P3424541554986487638.Spec : Prop :=
  ∀ n, P3424541554986487638.a n = A084247 n

end A084247

/-! ## A084247.P3978173798113805803

`2-∑[A117575(2*n)]`
-/

namespace A084247.P3978173798113805803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084247.P3978173798113805803

namespace A084247

/-- `2-∑[A117575(2*n)]` -/
def P3978173798113805803.Spec : Prop :=
  ∀ n, P3978173798113805803.a n = A084247 n

end A084247

/-! ## A084247.P3320464360167545458

`∑[A113679(n)^(n-1)]`
-/

namespace A084247.P3320464360167545458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113679 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084247.P3320464360167545458

namespace A084247

/-- `∑[A113679(n)^(n-1)]` -/
def P3320464360167545458.Spec : Prop :=
  ∀ n, P3320464360167545458.a n = (A084247 n : ℚ)

end A084247

/-! ## A084247.P9171943849785545400

`A122803(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A084247.P9171943849785545400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122803 (n - 1) + a (n - 1)

end

end A084247.P9171943849785545400

namespace A084247

/-- `A122803(n-1)+a(n-1)` -/
def P9171943849785545400.Spec : Prop :=
  ∀ n, P9171943849785545400.a n = A084247 n

end A084247

/-! ## A084247.P18403828133123683256

`((-1)^n-A001045(n))*(-1)^n`
-/

namespace A084247.P18403828133123683256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n - A001045 n) * (-1) ^ n

end

end A084247.P18403828133123683256

namespace A084247

/-- `((-1)^n-A001045(n))*(-1)^n` -/
def P18403828133123683256.Spec : Prop :=
  ∀ n, P18403828133123683256.a n = A084247 n

end A084247

/-! ## A084247.P17281342731014393872

`A167193(n)+A010673(n)`
-/

namespace A084247.P17281342731014393872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 n + A010673 n

end

end A084247.P17281342731014393872

namespace A084247

/-- `A167193(n)+A010673(n)` -/
def P17281342731014393872.Spec : Prop :=
  ∀ n, P17281342731014393872.a n = A084247 n

end A084247

/-!
# A084249: Triangle T(n,k) read by rows: permutations on 123...n with one abc pattern and no aj pattern with j<=k, n>2, k

The programs for A084249, there is no canonical definition to state claims against.
-/

/-! ## A084249.P14392069716273767334

`A228708(lt[1, A085391(n)])`
-/

namespace A084249.P14392069716273767334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084249.P14392069716273767334

/-! ## A084249.P8433781019898964515

`A228708(lt[1, A152798(n)])`
-/

namespace A084249.P8433781019898964515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084249.P8433781019898964515

/-! ## A084249.P15496812381890533083

`A228708(lt[1, A322280(n)])`
-/

namespace A084249.P15496812381890533083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084249.P15496812381890533083

/-! ## A084249.P1553175644309946269

`A228708(lt[2, A002262(n+2)])`
-/

namespace A084249.P1553175644309946269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084249.P1553175644309946269

/-!
# A084251: G.f.: A(x) = exp(sum(n>=1, A084250(n)*x^n/n)), where A084250 lists the least distinct positive integers that allow A(x) to be an integer power series.

The programs for A084251, there is no canonical definition to state claims against.
-/

/-! ## A084251.P9802402481186765697

`A194711(A059922(n))+A000065(n)`
-/

namespace A084251.P9802402481186765697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194711 (A059922 n).toNat + A000065 n

end

end A084251.P9802402481186765697

/-! ## A084251.P6181873594724503715

`A124943(A174125(n))+A000065(n)`
-/

namespace A084251.P6181873594724503715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124943 (A174125 n).toNat + A000065 n

end

end A084251.P6181873594724503715

/-! ## A084251.P2224745870490908887

`A330641(n)+A011765(A022173(n))`
-/

namespace A084251.P2224745870490908887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330641 n + A011765 (A022173 n).toNat

end

end A084251.P2224745870490908887

/-! ## A084251.P12984912489775763966

`A330641(n)+A044941(A022171(n))`
-/

namespace A084251.P12984912489775763966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330641 n + A044941 (A022171 n).toNat

end

end A084251.P12984912489775763966

/-! ## A084251.P1886518292332509690

`A000041(n)-A343630(A282441(n+1))`
-/

namespace A084251.P1886518292332509690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A343630 (A282441 (n + 1)).toNat

end

end A084251.P1886518292332509690

/-!
# A084253: a(n) is the denominator of the coefficient of z^(2n-1) in the Maclaurin expansion of Sqrt[Pi]Erfi[z].

The programs for A084253, there is no canonical definition to state claims against.
-/

/-! ## A084253.P359698182928301772

`ceil(n!/2)*Δ[n²]`
-/

namespace A084253.P359698182928301772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / 2⌉ * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A084253.P359698182928301772

/-! ## A084253.P4683274728424364605

`round(n!/2)*Δ[n²]`
-/

namespace A084253.P4683274728424364605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A084253.P4683274728424364605

/-! ## A084253.P8376157360415040022

`Δ[n²]*∏[gcd(n, C(2, n))]`
-/

namespace A084253.P8376157360415040022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A084253.P8376157360415040022

/-! ## A084253.P9693631314152500638

`(2*n+1)*ceil(n!/2)`
-/

namespace A084253.P9693631314152500638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ⌈(Nat.factorial n : ℚ) / 2⌉

end

end A084253.P9693631314152500638

/-! ## A084253.P45930097028975500

`(2*n+1)*round(n!/2)`
-/

namespace A084253.P45930097028975500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)

end

end A084253.P45930097028975500

/-! ## A084253.P16538421378884504905

`lcm(2, (2*n+1)*n!)/2`
-/

namespace A084253.P16538421378884504905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((2 * n + 1) * Nat.factorial n) : ℚ) / 2

end

end A084253.P16538421378884504905

/-! ## A084253.P5605635903321384824

`∏[floor(acot(n)+n)]+n*a(n-1)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A084253.P5605635903321384824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * a (n - 1)

end

end A084253.P5605635903321384824

/-! ## A084253.P13293008224034054079

`∏[n+1]/(n+1)+n*a(n-1)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A084253.P13293008224034054079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) + (n : ℚ) * a (n - 1)

end

end A084253.P13293008224034054079

/-! ## A084253.P12114180216975462042

`Δ[n²]*A001710(n)`
-/

namespace A084253.P12114180216975462042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001710 n

end

end A084253.P12114180216975462042

/-! ## A084253.P15812250232191994465

`2*A188588(n)-A001710(n)`
-/

namespace A084253.P15812250232191994465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188588 n - A001710 n

end

end A084253.P15812250232191994465

/-!
# A084255: Decimal expansion of continued fraction 1/(2+1/(3+1/(5+1/(7+1/(11+...))))).

The programs for A084255, there is no canonical definition to state claims against.
-/

/-! ## A084255.P8094441773860621984

`A152062(n+1)`
-/

namespace A084255.P8094441773860621984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152062 (n + 1 + 1)

end

end A084255.P8094441773860621984

/-!
# A084259: a(n) = n! * (n+1)! * (n+2)! * (n+3).

The programs for A084259, the canonical program `A084259.P10676180273792100607` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084259 has offset 0).

The definition of A084259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+1)!*(n+2)!*(n+3)` (program `A084259.P10676180273792100607`, by `A084259.P10676180273792100607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084259.P10676180273792100607

`n!*(n+1)!*(n+2)!*(n+3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084259

/-- `n!*(n+1)!*(n+2)!*(n+3)` -/
def P10676180273792100607.Spec : Prop :=
  ∀ n, (P10676180273792100607.a n : ℤ) = A084259 n

theorem P10676180273792100607.correct : P10676180273792100607.Spec := by
  intro n
  simp only [A084259]

end A084259

/-! ## A084259.P15101392190743367466

`(n+1)*(n+3)!*n!²`
-/

namespace A084259.P15101392190743367466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (n + 3) * Nat.factorial n ^ 2

end

end A084259.P15101392190743367466

namespace A084259

/-- `(n+1)*(n+3)!*n!²` -/
def P15101392190743367466.Spec : Prop :=
  ∀ n, (P15101392190743367466.a n : ℤ) = A084259 n

theorem P15101392190743367466.correct : P15101392190743367466.Spec := by
  intro n
  simp only [A084259, Nat.add_sub_cancel, A084259.P15101392190743367466.a, A084259.P10676180273792100607.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A084259

/-! ## A084259.P10147036896942552337

`(n+1)!*(n+3)!*n!`
-/

namespace A084259.P10147036896942552337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.factorial (n + 3) * Nat.factorial n

end

end A084259.P10147036896942552337

namespace A084259

/-- `(n+1)!*(n+3)!*n!` -/
def P10147036896942552337.Spec : Prop :=
  ∀ n, (P10147036896942552337.a n : ℤ) = A084259 n

theorem P10147036896942552337.correct : P10147036896942552337.Spec := by
  intro n
  simp only [A084259, Nat.add_sub_cancel, A084259.P10147036896942552337.a, A084259.P10676180273792100607.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A084259

/-! ## A084259.P14831794102489497237

`∏{d}[-a(n-1), (n-1+#)!]` with `a(0)=4`
-/

namespace A084259.P14831794102489497237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial ((n : ℤ) - 1 + (d : ℤ)).toNat

end

end A084259.P14831794102489497237

namespace A084259

/-- `∏{d}[-a(n-1), (n-1+#)!]` -/
def P14831794102489497237.Spec : Prop :=
  ∀ n, (P14831794102489497237.a n : ℤ) = A084259 n

end A084259

/-! ## A084259.P7190424349077045060

`n*((n+2)²-1)*a(n-1)` with `a(0)=6`
-/

namespace A084259.P7190424349077045060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (n : ℤ) * (((n + 2) ^ 2 : ℤ) - 1) * a (n - 1)

end

end A084259.P7190424349077045060

namespace A084259

/-- `n*((n+2)²-1)*a(n-1)` -/
def P7190424349077045060.Spec : Prop :=
  ∀ n, P7190424349077045060.a n = A084259 n

end A084259

/-!
# A084260: Triangular numbers that set a new record for number of triangular divisors.

The programs for A084260, there is no canonical definition to state claims against.
-/

/-! ## A084260.P12423636698044093495

`A076983(A141283(n+1))`
-/

namespace A084260.P12423636698044093495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076983 (A141283 (n + 1)).toNat

end

end A084260.P12423636698044093495

/-! ## A084260.P5179011703597626947

`A076983(record[A076982(n+1)])`
-/

namespace A084260.P5179011703597626947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084260.P5179011703597626947

/-! ## A084260.P9314099465832502646

`A076983(record[A325334(∑[n+1])+1])`
-/

namespace A084260.P9314099465832502646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084260.P9314099465832502646

/-! ## A084260.P1579480340949377721

`A076983(record[A007862(∑[n+1])])`
-/

namespace A084260.P1579480340949377721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084260.P1579480340949377721

/-! ## A084260.P14613746674695307786

`A076983(lt[A001333(n), A076983(n+1)])`
-/

namespace A084260.P14613746674695307786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076983 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A084260.P14613746674695307786

/-!
# A084261: A binomial transform of factorial numbers.

The programs for A084261, there is no canonical definition to state claims against.
-/

/-! ## A084261.P13408774523910386809

`Δ[A028242(2*a(n-1)+(n-1)*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A084261.P13408774523910386809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A028242 (2 * f1 (n - 1) + ((n : ℤ) - 1) * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084261.P13408774523910386809

/-! ## A084261.P4531644658902215289

`A100196(2*A287253(n))`
-/

namespace A084261.P4531644658902215289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * A287253 n).toNat

end

end A084261.P4531644658902215289

/-! ## A084261.P11289977099109378866

`A157271(∑[∑[A001373(n)]])`
-/

namespace A084261.P11289977099109378866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084261.P11289977099109378866

/-! ## A084261.P8997289615674675193

`A137746(A137747(n))+A136753(n+1)`
-/

namespace A084261.P8997289615674675193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137746 (A137747 n).toNat + A136753 (n + 1)

end

end A084261.P8997289615674675193

/-! ## A084261.P7158522229607999267

`A100196(A287253(n)+A287253(n)-1)`
-/

namespace A084261.P7158522229607999267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A287253 n + (A287253 n - 1)).toNat

end

end A084261.P7158522229607999267

/-!
# A084262: Binomial transform of double factorials.

The programs for A084262, there is no canonical definition to state claims against.
-/

/-! ## A084262.P7751036262190713918

`abs(Δ[(1-n)*2*(a(n-2)-a(n-1))])` with `a(0)=1, a(1)=0`
-/

namespace A084262.P7751036262190713918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (1 - (n : ℤ)) * (2 * (f1 (n - 2) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084262.P7751036262190713918

/-! ## A084262.P4200730907857975380

`2*(a(n-2)+n*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A084262.P4200730907857975380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + (n : ℤ) * (a (n - 1) - a (n - 2)))

end

end A084262.P4200730907857975380

/-! ## A084262.P14094069830318837623

`abs(Δ[A055142(n)])`
-/

namespace A084262.P14094069830318837623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084262.P14094069830318837623

/-! ## A084262.P2973427655201875678

`abs(Δ[A055141(∑[n])])`
-/

namespace A084262.P2973427655201875678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055141 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084262.P2973427655201875678

/-! ## A084262.P3324596737569213712

`Δ[record[1-A055141(n)]]`
-/

namespace A084262.P3324596737569213712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055141 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084262.P3324596737569213712

/-! ## A084262.P5157104184439544788

`lcm(Δ[A055142(n)], A033999(n))`
-/

namespace A084262.P5157104184439544788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A084262.P5157104184439544788

/-! ## A084262.P10647506657420995272

`A055142(n)-A055142(n+1)`
-/

namespace A084262.P10647506657420995272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055142 n - A055142 (n + 1)

end

end A084262.P10647506657420995272

/-! ## A084262.P12805031417503259643

`Δ[A033999(2*n)-A055142(n)]`
-/

namespace A084262.P12805031417503259643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) - A055142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084262.P12805031417503259643

/-! ## A084262.P7971680113731154473

`Δ[A033999(2*n+1)*A055142(n)]`
-/

namespace A084262.P7971680113731154473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A055142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084262.P7971680113731154473

/-!
# A084263: a(n) = (-1)^n/2+(n^2+n+1)/2.

The programs for A084263, the canonical program `A084263.P17157487116850151729` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084263 has offset 0).

The definition of A084263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n/2+(n²+n+1)/2` (program `A084263.P15450500083783419389`, by `A084263.P15450500083783419389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084263.P17157487116850151729

`1+n²-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084263

/-- `1+n²-a(n-1)` -/
def P17157487116850151729.Spec : Prop :=
  ∀ n, P17157487116850151729.a n = A084263 n

theorem P17157487116850151729.correct : P17157487116850151729.Spec := by
  intro n
  simp only [A084263]

end A084263

/-! ## A084263.P4579391420992631325

`1+floor(n/2)+floor(n²/2)`
-/

namespace A084263.P4579391420992631325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℚ) / 2⌋ + ⌊(n ^ 2 : ℚ) / 2⌋

end

end A084263.P4579391420992631325

namespace A084263

/-- `1+floor(n/2)+floor(n²/2)` -/
def P4579391420992631325.Spec : Prop :=
  ∀ n, P4579391420992631325.a n = A084263 n

end A084263

/-! ## A084263.P15450500083783419389

`(-1)^n/2+(n²+n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084263.P15450500083783419389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / 2 + (n ^ 2 + n + 1 : ℚ) / 2

end

end A084263.P15450500083783419389

namespace A084263

/-- `(-1)^n/2+(n²+n+1)/2` -/
def P15450500083783419389.Spec : Prop :=
  ∀ n, P15450500083783419389.a n = (A084263 n : ℚ)

theorem P15450500083783419389.correct : P15450500083783419389.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A084263, Nat.add_sub_cancel, A084263.P15450500083783419389.a, A084263.P17157487116850151729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A084263, Nat.add_sub_cancel, A084263.P15450500083783419389.a, A084263.P17157487116850151729.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084263

/-! ## A084263.P6448187289323320654

`∑[xor(1, n)]`
-/

namespace A084263.P6448187289323320654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P6448187289323320654

namespace A084263

/-- `∑[xor(1, n)]` -/
def P6448187289323320654.Spec : Prop :=
  ∀ n, (P6448187289323320654.a n : ℤ) = A084263 n

end A084263

/-! ## A084263.P4349884631214451449

`∑[a(n-2)+2]` with `a(0)=1, a(1)=0`
-/

namespace A084263.P4349884631214451449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P4349884631214451449

namespace A084263

/-- `∑[a(n-2)+2]` -/
def P4349884631214451449.Spec : Prop :=
  ∀ n, (P4349884631214451449.a n : ℤ) = A084263 n

end A084263

/-! ## A084263.P15606455388894544796

`(xor(1, n²)+n+1)/2`
-/

namespace A084263.P15606455388894544796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n ^ 2) + (n + 1) : ℚ) / 2

end

end A084263.P15606455388894544796

namespace A084263

/-- `(xor(1, n²)+n+1)/2` -/
def P15606455388894544796.Spec : Prop :=
  ∀ n, P15606455388894544796.a n = (A084263 n : ℚ)

end A084263

/-! ## A084263.P11455807415118016839

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=-1`
-/

namespace A084263.P11455807415118016839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P11455807415118016839

namespace A084263

/-- `∑[∑[2-a(n-1)]]` -/
def P11455807415118016839.Spec : Prop :=
  ∀ n, P11455807415118016839.a n = A084263 n

end A084263

/-! ## A084263.P9183070709256307724

`∑[∑[∑[ogf((1-x+2x^2)/(1+x))]]]`
-/

namespace A084263.P9183070709256307724
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P9183070709256307724

namespace A084263

/-- `∑[∑[∑[ogf((1-x+2x^2)/(1+x))]]]` -/
def P9183070709256307724.Spec : Prop :=
  ∀ n, P9183070709256307724.a n = A084263 n

end A084263

/-! ## A084263.P14086058675805021720

`ogf((1-x+2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A084263.P14086058675805021720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -2, 0, 2, -1] n

end

end A084263.P14086058675805021720

namespace A084263

/-- `ogf((1-x+2x^2)/(1-2x+2x^3-x^4))` -/
def P14086058675805021720.Spec : Prop :=
  ∀ n, P14086058675805021720.a n = A084263 n

end A084263

/-! ## A084263.P11582674243512226798

`floor((gcd(2, n)+n²+n)/2)`
-/

namespace A084263.P11582674243512226798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n + (n ^ 2 + n) : ℚ) / 2⌋

end

end A084263.P11582674243512226798

namespace A084263

/-- `floor((gcd(2, n)+n²+n)/2)` -/
def P11582674243512226798.Spec : Prop :=
  ∀ n, P11582674243512226798.a n = A084263 n

end A084263

/-! ## A084263.P17194727827731678275

`floor(n*n+1-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A084263.P17194727827731678275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n * n + 1 : ℤ) - a (n - 1)

end

end A084263.P17194727827731678275

namespace A084263

/-- `floor(n*n+1-a(n-1))` -/
def P17194727827731678275.Spec : Prop :=
  ∀ n, P17194727827731678275.a n = A084263 n

theorem P17194727827731678275.correct : P17194727827731678275.Spec := by
  intro n
  simp only [A084263, Nat.add_sub_cancel, A084263.P17194727827731678275.a, A084263.P17157487116850151729.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084263

/-! ## A084263.P11615722529138953046

`n*((1-a(n-1))/n+n)` with `a(0)=1`
-/

namespace A084263.P11615722529138953046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((1 - a (n - 1)) / (n : ℚ) + (n : ℚ))

end

end A084263.P11615722529138953046

namespace A084263

/-- `n*((1-a(n-1))/n+n)` -/
def P11615722529138953046.Spec : Prop :=
  ∀ n, P11615722529138953046.a n = (A084263 n : ℚ)

end A084263

/-! ## A084263.P8854271607426255046

`∑[A004442(n)]`
-/

namespace A084263.P8854271607426255046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P8854271607426255046

namespace A084263

/-- `∑[A004442(n)]` -/
def P8854271607426255046.Spec : Prop :=
  ∀ n, P8854271607426255046.a n = A084263 n

end A084263

/-! ## A084263.P11879513428663071845

`∑[A033999(n)+n]`
-/

namespace A084263.P11879513428663071845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P11879513428663071845

namespace A084263

/-- `∑[A033999(n)+n]` -/
def P11879513428663071845.Spec : Prop :=
  ∀ n, P11879513428663071845.a n = A084263 n

end A084263

/-! ## A084263.P4599299955566852155

`∑[A165754(a(n-1))]` with `a(0)=1`
-/

namespace A084263.P4599299955566852155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A165754 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P4599299955566852155

namespace A084263

/-- `∑[A165754(a(n-1))]` -/
def P4599299955566852155.Spec : Prop :=
  ∀ n, P4599299955566852155.a n = A084263 n

end A084263

/-! ## A084263.P14741266121030955413

`A081435(n)%A245764(n)`
-/

namespace A084263.P14741266121030955413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081435 n) (A245764 n)

end

end A084263.P14741266121030955413

namespace A084263

/-- `A081435(n)%A245764(n)` -/
def P14741266121030955413.Spec : Prop :=
  ∀ n, P14741266121030955413.a n = A084263 n

end A084263

/-! ## A084263.P6666216904084298989

`xor(A116996(n), A121262(n))`
-/

namespace A084263.P6666216904084298989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116996 n) (A121262 n)

end

end A084263.P6666216904084298989

namespace A084263

/-- `xor(A116996(n), A121262(n))` -/
def P6666216904084298989.Spec : Prop :=
  ∀ n, P6666216904084298989.a n = A084263 n

end A084263

/-! ## A084263.P6500919711840194288

`xor(A125577(n), A135481(n))`
-/

namespace A084263.P6500919711840194288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125577 n) (A135481 n)

end

end A084263.P6500919711840194288

namespace A084263

/-- `xor(A125577(n), A135481(n))` -/
def P6500919711840194288.Spec : Prop :=
  ∀ n, P6500919711840194288.a n = A084263 n

end A084263

/-! ## A084263.P8003051092447446675

`∑[abs(A134405(2*n+1))]`
-/

namespace A084263.P8003051092447446675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134405 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084263.P8003051092447446675

namespace A084263

/-- `∑[abs(A134405(2*n+1))]` -/
def P8003051092447446675.Spec : Prop :=
  ∀ n, P8003051092447446675.a n = A084263 n

end A084263

/-! ## A084263.P3818459195518354698

`A055802(A014601(n+1))`
-/

namespace A084263.P3818459195518354698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (A014601 (n + 1)).toNat

end

end A084263.P3818459195518354698

namespace A084263

/-- `A055802(A014601(n+1))` -/
def P3818459195518354698.Spec : Prop :=
  ∀ n, P3818459195518354698.a n = A084263 n

end A084263

/-!
# A084264: Binomial transform of A084263.

The programs for A084264, the canonical program `A084264.P4266875326527675862` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084264 has offset 0).

The definition of A084264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084264.P4266875326527675862

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=22`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084264

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P4266875326527675862.Spec : Prop :=
  ∀ n, P4266875326527675862.a n = A084264 n

theorem P4266875326527675862.correct : P4266875326527675862.Spec := by
  intro n
  simp only [A084264]

end A084264

/-! ## A084264.P16425724399317465865

`ceil((∑[n+1]+1)*2^(n-2))`
-/

namespace A084264.P16425724399317465865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A084264.P16425724399317465865

namespace A084264

/-- `ceil((∑[n+1]+1)*2^(n-2))` -/
def P16425724399317465865.Spec : Prop :=
  ∀ n, P16425724399317465865.a n = A084264 n

end A084264

/-! ## A084264.P16039988998600582280

`2*a(n-1)*ratio[a(n-1)+n]` with `a(0)=1, a(1)=2`
-/

namespace A084264.P16039988998600582280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A084264.P16039988998600582280

namespace A084264

/-- `2*a(n-1)*ratio[a(n-1)+n]` -/
def P16039988998600582280.Spec : Prop :=
  ∀ n, P16039988998600582280.a n = (A084264 n : ℚ)

end A084264

/-! ## A084264.P3095952733748800349

`(∑[n+1]+1)/2*A011782(n)`
-/

namespace A084264.P3095952733748800349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (A011782 n : ℚ)

end

end A084264.P3095952733748800349

namespace A084264

/-- `(∑[n+1]+1)/2*A011782(n)` -/
def P3095952733748800349.Spec : Prop :=
  ∀ n, P3095952733748800349.a n = (A084264 n : ℚ)

end A084264

/-! ## A084264.P14107025089232345072

`2*a(n-1)*ratio[A000124(n)]` with `a(0)=1, a(1)=2`
-/

namespace A084264.P14107025089232345072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A084264.P14107025089232345072

namespace A084264

/-- `2*a(n-1)*ratio[A000124(n)]` -/
def P14107025089232345072.Spec : Prop :=
  ∀ n, P14107025089232345072.a n = (A084264 n : ℚ)

end A084264

/-! ## A084264.P9515407681703674344

`A084266(n)-A001787(n)`
-/

namespace A084264.P9515407681703674344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 n - A001787 n

end

end A084264.P9515407681703674344

namespace A084264

/-- `A084266(n)-A001787(n)` -/
def P9515407681703674344.Spec : Prop :=
  ∀ n, P9515407681703674344.a n = A084264 n

theorem P9515407681703674344.correct : P9515407681703674344.Spec := by
  intro n
  simp only [A084264, Nat.add_sub_cancel, A084264.P9515407681703674344.a, A084264.P4266875326527675862.a, A001787, A001787.P18099519164826187117.a, A084266, A084266.P5090138000761302846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084264

/-! ## A084264.P18040862836774422257

`A072863(n)-A131577(n)`
-/

namespace A084264.P18040862836774422257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - A131577 n

end

end A084264.P18040862836774422257

namespace A084264

/-- `A072863(n)-A131577(n)` -/
def P18040862836774422257.Spec : Prop :=
  ∀ n, P18040862836774422257.a n = A084264 n

end A084264

/-! ## A084264.P836895346650518927

`A011782(n)+∑[A049611(n)]`
-/

namespace A084264.P836895346650518927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084264.P836895346650518927

namespace A084264

/-- `A011782(n)+∑[A049611(n)]` -/
def P836895346650518927.Spec : Prop :=
  ∀ n, P836895346650518927.a n = A084264 n

end A084264

/-! ## A084264.P764113676142528552

`A084266(n)-n*A011782(n)`
-/

namespace A084264.P764113676142528552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 n - (n : ℤ) * A011782 n

end

end A084264.P764113676142528552

namespace A084264

/-- `A084266(n)-n*A011782(n)` -/
def P764113676142528552.Spec : Prop :=
  ∀ n, P764113676142528552.a n = A084264 n

end A084264

/-! ## A084264.P11055439983308134265

`A084266(n)-n*A131577(n)`
-/

namespace A084264.P11055439983308134265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 n - (n : ℤ) * A131577 n

end

end A084264.P11055439983308134265

namespace A084264

/-- `A084266(n)-n*A131577(n)` -/
def P11055439983308134265.Spec : Prop :=
  ∀ n, P11055439983308134265.a n = A084264 n

end A084264

/-! ## A084264.P7232632832614218521

`A000124(n+1)/2*A166444(n+1)`
-/

namespace A084264.P7232632832614218521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (n + 1) : ℚ) / 2 * (A166444 (n + 1) : ℚ)

end

end A084264.P7232632832614218521

namespace A084264

/-- `A000124(n+1)/2*A166444(n+1)` -/
def P7232632832614218521.Spec : Prop :=
  ∀ n, P7232632832614218521.a n = (A084264 n : ℚ)

end A084264

/-! ## A084264.P9381382302661270545

`A049611(n+1)+A011782(n)-A001792(n)`
-/

namespace A084264.P9381382302661270545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + (A011782 n - A001792 n)

end

end A084264.P9381382302661270545

namespace A084264

/-- `A049611(n+1)+A011782(n)-A001792(n)` -/
def P9381382302661270545.Spec : Prop :=
  ∀ n, P9381382302661270545.a n = A084264 n

end A084264

/-! ## A084264.P13782463105449399183

`A011782(n)+A072863(n)-A011782(n+1)`
-/

namespace A084264.P13782463105449399183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A072863 n - A011782 (n + 1))

end

end A084264.P13782463105449399183

namespace A084264

/-- `A011782(n)+A072863(n)-A011782(n+1)` -/
def P13782463105449399183.Spec : Prop :=
  ∀ n, P13782463105449399183.a n = A084264 n

end A084264

/-! ## A084264.P16442129147603962160

`A011782(n+1)+A084266(n)-A001792(n)`
-/

namespace A084264.P16442129147603962160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A084266 n - A001792 n)

end

end A084264.P16442129147603962160

namespace A084264

/-- `A011782(n+1)+A084266(n)-A001792(n)` -/
def P16442129147603962160.Spec : Prop :=
  ∀ n, P16442129147603962160.a n = A084264 n

end A084264

/-! ## A084264.P16023107152978725124

`A057711(n+1)+A081908(n)-A000079(n)`
-/

namespace A084264.P16023107152978725124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 1) + (A081908 n - A000079 n)

end

end A084264.P16023107152978725124

namespace A084264

/-- `A057711(n+1)+A081908(n)-A000079(n)` -/
def P16023107152978725124.Spec : Prop :=
  ∀ n, P16023107152978725124.a n = A084264 n

end A084264

/-! ## A084264.P10965781687941996867

`round(A007466(n+1)/2)`
-/

namespace A084264.P10965781687941996867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007466 (n + 1) : ℚ) / 2)

end

end A084264.P10965781687941996867

namespace A084264

/-- `round(A007466(n+1)/2)` -/
def P10965781687941996867.Spec : Prop :=
  ∀ n, P10965781687941996867.a n = A084264 n

end A084264

/-! ## A084264.P12670979628711120770

`(A080929(n)+A011782(n))/2`
-/

namespace A084264.P12670979628711120770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080929 n + A011782 n : ℚ) / 2

end

end A084264.P12670979628711120770

namespace A084264

/-- `(A080929(n)+A011782(n))/2` -/
def P12670979628711120770.Spec : Prop :=
  ∀ n, P12670979628711120770.a n = (A084264 n : ℚ)

end A084264

/-! ## A084264.P1535565427370157020

`A007466(n+1)/A036453(n+1)`
-/

namespace A084264.P1535565427370157020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007466 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A084264.P1535565427370157020

namespace A084264

/-- `A007466(n+1)/A036453(n+1)` -/
def P1535565427370157020.Spec : Prop :=
  ∀ n, P1535565427370157020.a n = (A084264 n : ℚ)

end A084264

/-! ## A084264.P14408993939860161347

`A007466(n+1)/A000032(C(2, n+2))`
-/

namespace A084264.P14408993939860161347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007466 (n + 1) : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A084264.P14408993939860161347

namespace A084264

/-- `A007466(n+1)/A000032(C(2, n+2))` -/
def P14408993939860161347.Spec : Prop :=
  ∀ n, P14408993939860161347.a n = (A084264 n : ℚ)

end A084264

/-!
# A084265: a(n) = (n^2 + 3*n + 1 + (-1)^n) / 2.

The programs for A084265, the canonical program `A084265.P9221913054610920112` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084265 has offset 0).

The definition of A084265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+3*n+1+(-1)^n)/2` (program `A084265.P9959253151178684130`, by `A084265.P9959253151178684130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084265.P9959253151178684130

`(n²+3*n+1+(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084265.P9959253151178684130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 3 * n + 1 : ℤ) + (-1) ^ n : ℚ) / 2

end

end A084265.P9959253151178684130

namespace A084265

/-- `(n²+3*n+1+(-1)^n)/2` -/
def P9959253151178684130.Spec : Prop :=
  ∀ n, P9959253151178684130.a n = (A084265 n : ℚ)

theorem P9959253151178684130.correct : P9959253151178684130.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A084265, Nat.add_sub_cancel, A084265.P9959253151178684130.a, A084265.P9221913054610920112.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A084265, Nat.add_sub_cancel, A084265.P9959253151178684130.a, A084265.P9221913054610920112.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A084265

/-! ## A084265.P9221913054610920112

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084265

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P9221913054610920112.Spec : Prop :=
  ∀ n, P9221913054610920112.a n = A084265 n

theorem P9221913054610920112.correct : P9221913054610920112.Spec := by
  intro n
  simp only [A084265]

end A084265

/-! ## A084265.P6932803187308104343

`A000217(n)+A059841(n)+n`
-/

namespace A084265.P6932803187308104343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A059841 n + (n : ℤ)

end

end A084265.P6932803187308104343

namespace A084265

/-- `A000217(n)+A059841(n)+n` -/
def P6932803187308104343.Spec : Prop :=
  ∀ n, P6932803187308104343.a n = A084265 n

end A084265

/-! ## A084265.P12437690416565458557

`∑[n]+or(1, n)`
-/

namespace A084265.P12437690416565458557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n

end

end A084265.P12437690416565458557

namespace A084265

/-- `∑[n]+or(1, n)` -/
def P12437690416565458557.Spec : Prop :=
  ∀ n, (P12437690416565458557.a n : ℤ) = A084265 n

end A084265

/-! ## A084265.P9584113353255444588

`∑[xor(1, n)]+n`
-/

namespace A084265.P9584113353255444588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A084265.P9584113353255444588

namespace A084265

/-- `∑[xor(1, n)]+n` -/
def P9584113353255444588.Spec : Prop :=
  ∀ n, (P9584113353255444588.a n : ℤ) = A084265 n

end A084265

/-! ## A084265.P7130476198032772836

`∑[abs(xor(n, -2))]-1`
-/

namespace A084265.P7130476198032772836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084265.P7130476198032772836

namespace A084265

/-- `∑[abs(xor(n, -2))]-1` -/
def P7130476198032772836.Spec : Prop :=
  ∀ n, P7130476198032772836.a n = A084265 n

end A084265

/-! ## A084265.P763952643594341339

`∑[n+1]-n%2`
-/

namespace A084265.P763952643594341339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A084265.P763952643594341339

namespace A084265

/-- `∑[n+1]-n%2` -/
def P763952643594341339.Spec : Prop :=
  ∀ n, P763952643594341339.a n = A084265 n

end A084265

/-! ## A084265.P10009535982027654439

`∑[n+1]-and(1, n)`
-/

namespace A084265.P10009535982027654439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

end

end A084265.P10009535982027654439

namespace A084265

/-- `∑[n+1]-and(1, n)` -/
def P10009535982027654439.Spec : Prop :=
  ∀ n, P10009535982027654439.a n = A084265 n

end A084265

/-! ## A084265.P18189078939388429807

`∑[-xor(n, -2)]-1`
-/

namespace A084265.P18189078939388429807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084265.P18189078939388429807

namespace A084265

/-- `∑[-xor(n, -2)]-1` -/
def P18189078939388429807.Spec : Prop :=
  ∀ n, P18189078939388429807.a n = A084265 n

end A084265

/-! ## A084265.P17212656966964205164

`xor(-1, ∑[xor(n, -2)])`
-/

namespace A084265.P17212656966964205164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084265.P17212656966964205164

namespace A084265

/-- `xor(-1, ∑[xor(n, -2)])` -/
def P17212656966964205164.Spec : Prop :=
  ∀ n, P17212656966964205164.a n = A084265 n

end A084265

/-! ## A084265.P12749822999183509259

`or(1, n)+C(n+1, 2)`
-/

namespace A084265.P12749822999183509259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + Nat.choose (n + 1) 2

end

end A084265.P12749822999183509259

namespace A084265

/-- `or(1, n)+C(n+1, 2)` -/
def P12749822999183509259.Spec : Prop :=
  ∀ n, (P12749822999183509259.a n : ℤ) = A084265 n

end A084265

/-! ## A084265.P468700423258643871

`∑[a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A084265.P468700423258643871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084265.P468700423258643871

namespace A084265

/-- `∑[a(n-2)+2]` -/
def P468700423258643871.Spec : Prop :=
  ∀ n, (P468700423258643871.a n : ℤ) = A084265 n

end A084265

/-! ## A084265.P1872693485483342475

`C(n+2, 2)-and(1, n)²`
-/

namespace A084265.P1872693485483342475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - (Nat.land 1 n ^ 2 : ℤ)

end

end A084265.P1872693485483342475

namespace A084265

/-- `C(n+2, 2)-and(1, n)²` -/
def P1872693485483342475.Spec : Prop :=
  ∀ n, P1872693485483342475.a n = A084265 n

end A084265

/-! ## A084265.P8068641203663233450

`or(1, n)*(ceil(n/2)+1)`
-/

namespace A084265.P8068641203663233450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * (⌈(n : ℚ) / 2⌉ + 1)

end

end A084265.P8068641203663233450

namespace A084265

/-- `or(1, n)*(ceil(n/2)+1)` -/
def P8068641203663233450.Spec : Prop :=
  ∀ n, P8068641203663233450.a n = A084265 n

end A084265

/-! ## A084265.P12920710923164569803

`gcd(2, n)+∑[n+1]-2`
-/

namespace A084265.P12920710923164569803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A084265.P12920710923164569803

namespace A084265

/-- `gcd(2, n)+∑[n+1]-2` -/
def P12920710923164569803.Spec : Prop :=
  ∀ n, P12920710923164569803.a n = A084265 n

end A084265

/-! ## A084265.P7451875661341086054

`a(n-1)-xor(n, -2)` with `a(0)=1`
-/

namespace A084265.P7451875661341086054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.xor (n : ℤ) (-2)

end

end A084265.P7451875661341086054

namespace A084265

/-- `a(n-1)-xor(n, -2)` -/
def P7451875661341086054.Spec : Prop :=
  ∀ n, P7451875661341086054.a n = A084265 n

end A084265

/-! ## A084265.P5891727430639779736

`∑[2*or(1, n)-n]-1`
-/

namespace A084265.P5891727430639779736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084265.P5891727430639779736

namespace A084265

/-- `∑[2*or(1, n)-n]-1` -/
def P5891727430639779736.Spec : Prop :=
  ∀ n, P5891727430639779736.a n = A084265 n

end A084265

/-! ## A084265.P6563075774631083165

`Δ[n²]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A084265.P6563075774631083165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 2)

end

end A084265.P6563075774631083165

namespace A084265

/-- `Δ[n²]+a(n-2)` -/
def P6563075774631083165.Spec : Prop :=
  ∀ n, P6563075774631083165.a n = A084265 n

end A084265

/-! ## A084265.P16686898302991117240

`and(1, n+1)+∑[n]+n`
-/

namespace A084265.P16686898302991117240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A084265.P16686898302991117240

namespace A084265

/-- `and(1, n+1)+∑[n]+n` -/
def P16686898302991117240.Spec : Prop :=
  ∀ n, (P16686898302991117240.a n : ℤ) = A084265 n

end A084265

/-! ## A084265.P6607673876902095920

`2*n-(n-∑[xor(1, n)])`
-/

namespace A084265.P6607673876902095920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A084265.P6607673876902095920

namespace A084265

/-- `2*n-(n-∑[xor(1, n)])` -/
def P6607673876902095920.Spec : Prop :=
  ∀ n, P6607673876902095920.a n = A084265 n

end A084265

/-!
# A084266: Binomial transform of A084265.

The programs for A084266, the canonical program `A084266.P5090138000761302846` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084266 has offset 0).

The definition of A084266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084266.P12674928443072630313

`2^(n-2)*A060577(n+2)`
-/

namespace A084266.P12674928443072630313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A060577 (n + 2) : ℚ)

end

end A084266.P12674928443072630313

namespace A084266

/-- `2^(n-2)*A060577(n+2)` -/
def P12674928443072630313.Spec : Prop :=
  ∀ n, P12674928443072630313.a n = (A084266 n : ℚ)

end A084266

/-! ## A084266.P13049787132500567193

`(∑[n+3]-1)/2*A011782(n)`
-/

namespace A084266.P13049787132500567193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2 * (A011782 n : ℚ)

end

end A084266.P13049787132500567193

namespace A084266

/-- `(∑[n+3]-1)/2*A011782(n)` -/
def P13049787132500567193.Spec : Prop :=
  ∀ n, P13049787132500567193.a n = (A084266 n : ℚ)

end A084266

/-! ## A084266.P5090138000761302846

`A084264(n)+A001787(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084266

/-- `A084264(n)+A001787(n)` -/
def P5090138000761302846.Spec : Prop :=
  ∀ n, P5090138000761302846.a n = A084266 n

theorem P5090138000761302846.correct : P5090138000761302846.Spec := by
  intro n
  simp only [A084266]

end A084266

/-! ## A084266.P14752842837580794356

`A084851(n)-A131577(n)`
-/

namespace A084266.P14752842837580794356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - A131577 n

end

end A084266.P14752842837580794356

namespace A084266

/-- `A084851(n)-A131577(n)` -/
def P14752842837580794356.Spec : Prop :=
  ∀ n, P14752842837580794356.a n = A084266 n

end A084266

/-! ## A084266.P16864228812792714141

`∑[A058396(n)]-A131577(n)`
-/

namespace A084266.P16864228812792714141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131577 n

end

end A084266.P16864228812792714141

namespace A084266

/-- `∑[A058396(n)]-A131577(n)` -/
def P16864228812792714141.Spec : Prop :=
  ∀ n, P16864228812792714141.a n = A084266 n

end A084266

/-! ## A084266.P1590995946801444471

`A084851(n)-A034008(n+1)`
-/

namespace A084266.P1590995946801444471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - A034008 (n + 1)

end

end A084266.P1590995946801444471

namespace A084266

/-- `A084851(n)-A034008(n+1)` -/
def P1590995946801444471.Spec : Prop :=
  ∀ n, P1590995946801444471.a n = A084266 n

end A084266

/-! ## A084266.P8815144541710922114

`A049611(n+1)-A131577(n)`
-/

namespace A084266.P8815144541710922114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) - A131577 n

end

end A084266.P8815144541710922114

namespace A084266

/-- `A049611(n+1)-A131577(n)` -/
def P8815144541710922114.Spec : Prop :=
  ∀ n, P8815144541710922114.a n = A084266 n

end A084266

/-! ## A084266.P5085041105473860079

`A098156(n)+n*A045891(n)`
-/

namespace A084266.P5085041105473860079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 n + (n : ℤ) * A045891 n

end

end A084266.P5085041105473860079

namespace A084266

/-- `A098156(n)+n*A045891(n)` -/
def P5085041105473860079.Spec : Prop :=
  ∀ n, P5085041105473860079.a n = A084266 n

end A084266

/-! ## A084266.P12060872022120853399

`A045891(n)+n*A109975(n)`
-/

namespace A084266.P12060872022120853399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + (n : ℤ) * A109975 n

end

end A084266.P12060872022120853399

namespace A084266

/-- `A045891(n)+n*A109975(n)` -/
def P12060872022120853399.Spec : Prop :=
  ∀ n, P12060872022120853399.a n = A084266 n

end A084266

/-! ## A084266.P3626652648655075768

`A084264(n)+n*A131577(n)`
-/

namespace A084266.P3626652648655075768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084264 n + (n : ℤ) * A131577 n

end

end A084266.P3626652648655075768

namespace A084266

/-- `A084264(n)+n*A131577(n)` -/
def P3626652648655075768.Spec : Prop :=
  ∀ n, P3626652648655075768.a n = A084266 n

end A084266

/-! ## A084266.P14842428873119401771

`∑[A268586(n+1)+A131352(n)]`
-/

namespace A084266.P14842428873119401771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 1) + A131352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084266.P14842428873119401771

namespace A084266

/-- `∑[A268586(n+1)+A131352(n)]` -/
def P14842428873119401771.Spec : Prop :=
  ∀ n, P14842428873119401771.a n = A084266 n

end A084266

/-! ## A084266.P3529987325654655216

`A049611(n+1)-Δ[A011782(n)]`
-/

namespace A084266.P3529987325654655216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) - (f1 (n + 1) - f1 n)

end

end A084266.P3529987325654655216

namespace A084266

/-- `A049611(n+1)-Δ[A011782(n)]` -/
def P3529987325654655216.Spec : Prop :=
  ∀ n, P3529987325654655216.a n = A084266 n

end A084266

/-! ## A084266.P13223218898691057102

`A058396(n+1)-2*A045891(n+1)`
-/

namespace A084266.P13223218898691057102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 (n + 1) - 2 * A045891 (n + 1)

end

end A084266.P13223218898691057102

namespace A084266

/-- `A058396(n+1)-2*A045891(n+1)` -/
def P13223218898691057102.Spec : Prop :=
  ∀ n, P13223218898691057102.a n = A084266 n

end A084266

/-! ## A084266.P6381531708456429845

`A190050(n+1)-A111286(n+2)/2`
-/

namespace A084266.P6381531708456429845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190050 (n + 1) : ℚ) - (A111286 (n + 2) : ℚ) / 2

end

end A084266.P6381531708456429845

namespace A084266

/-- `A190050(n+1)-A111286(n+2)/2` -/
def P6381531708456429845.Spec : Prop :=
  ∀ n, P6381531708456429845.a n = (A084266 n : ℚ)

end A084266

/-! ## A084266.P1081380649104738601

`A049611(n)-(A131577(n)-Δ[A049611(n)])`
-/

namespace A084266.P1081380649104738601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n - (A131577 n - (f1 (n + 1) - f1 n))

end

end A084266.P1081380649104738601

namespace A084266

/-- `A049611(n)-(A131577(n)-Δ[A049611(n)])` -/
def P1081380649104738601.Spec : Prop :=
  ∀ n, P1081380649104738601.a n = A084266 n

end A084266

/-! ## A084266.P4378175007542745075

`A049611(n+1)+A011782(n)-A000079(n)`
-/

namespace A084266.P4378175007542745075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + (A011782 n - A000079 n)

end

end A084266.P4378175007542745075

namespace A084266

/-- `A049611(n+1)+A011782(n)-A000079(n)` -/
def P4378175007542745075.Spec : Prop :=
  ∀ n, P4378175007542745075.a n = A084266 n

end A084266

/-! ## A084266.P5714250775765722812

`A058396(n)+A058396(n)-A045891(n+1)`
-/

namespace A084266.P5714250775765722812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n + (A058396 n - A045891 (n + 1))

end

end A084266.P5714250775765722812

namespace A084266

/-- `A058396(n)+A058396(n)-A045891(n+1)` -/
def P5714250775765722812.Spec : Prop :=
  ∀ n, P5714250775765722812.a n = A084266 n

end A084266

/-! ## A084266.P1022744748826185354

`A049611(n+1)+A011782(n)-A011782(n+1)`
-/

namespace A084266.P1022744748826185354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + (A011782 n - A011782 (n + 1))

end

end A084266.P1022744748826185354

namespace A084266

/-- `A049611(n+1)+A011782(n)-A011782(n+1)` -/
def P1022744748826185354.Spec : Prop :=
  ∀ n, P1022744748826185354.a n = A084266 n

end A084266

/-! ## A084266.P4823240685359439716

`A190050(n+1)+A011782(n)-A000079(n+1)`
-/

namespace A084266.P4823240685359439716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 (n + 1) + (A011782 n - A000079 (n + 1))

end

end A084266.P4823240685359439716

namespace A084266

/-- `A190050(n+1)+A011782(n)-A000079(n+1)` -/
def P4823240685359439716.Spec : Prop :=
  ∀ n, P4823240685359439716.a n = A084266 n

end A084266

/-! ## A084266.P9189040549198186664

`Δ[(n-1)*Δ[floor(((n+2)*2^(n-1)+1)/4)]]`
-/

namespace A084266.P9189040549198186664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) / 4⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084266.P9189040549198186664

namespace A084266

/-- `Δ[(n-1)*Δ[floor(((n+2)*2^(n-1)+1)/4)]]` -/
def P9189040549198186664.Spec : Prop :=
  ∀ n, P9189040549198186664.a n = A084266 n

end A084266

/-!
# A084267: Partial sums of a binomial quotient.

The programs for A084267, the canonical program `A084267.P11628582770077578792` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084267 has offset 0).

The definition of A084267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084267.P11628582770077578792

`∑[round(∑[(n+3)/6])]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084267

/-- `∑[round(∑[(n+3)/6])]` -/
def P11628582770077578792.Spec : Prop :=
  ∀ n, P11628582770077578792.a n = A084267 n

theorem P11628582770077578792.correct : P11628582770077578792.Spec := by
  intro n
  simp only [A084267]

end A084267

/-! ## A084267.P11447270730809775639

`∑[floor(C(n+4, 4)/A000217(n+1))+1]-1-n`
-/

namespace A084267.P11447270730809775639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 4) 4 : ℚ) / (A000217 (n + 1) : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A084267.P11447270730809775639

namespace A084267

/-- `∑[floor(C(n+4, 4)/A000217(n+1))+1]-1-n` -/
def P11447270730809775639.Spec : Prop :=
  ∀ n, P11447270730809775639.a n = A084267 n

end A084267

/-! ## A084267.P3744539499069737136

`∑[A011865(n+4)]%A017319(n)`
-/

namespace A084267.P3744539499069737136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017319 n)

end

end A084267.P3744539499069737136

namespace A084267

/-- `∑[A011865(n+4)]%A017319(n)` -/
def P3744539499069737136.Spec : Prop :=
  ∀ n, P3744539499069737136.a n = A084267 n

end A084267

/-! ## A084267.P11103896731675468394

`or(∑[A011865(n+4)], A000007(n))`
-/

namespace A084267.P11103896731675468394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A084267.P11103896731675468394

namespace A084267

/-- `or(∑[A011865(n+4)], A000007(n))` -/
def P11103896731675468394.Spec : Prop :=
  ∀ n, P11103896731675468394.a n = A084267 n

end A084267

/-! ## A084267.P2008846413827995179

`A000007(n+1)+∑[A011865(n+4)]`
-/

namespace A084267.P2008846413827995179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084267.P2008846413827995179

namespace A084267

/-- `A000007(n+1)+∑[A011865(n+4)]` -/
def P2008846413827995179.Spec : Prop :=
  ∀ n, P2008846413827995179.a n = A084267 n

end A084267

/-! ## A084267.P248700790251625796

`char[A083598(n+1)]+∑[A011865(n+4)]`
-/

namespace A084267.P248700790251625796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A084267.P248700790251625796

namespace A084267

/-- `char[A083598(n+1)]+∑[A011865(n+4)]` -/
def P248700790251625796.Spec : Prop :=
  ∀ n, P248700790251625796.a n = A084267 n

end A084267

/-! ## A084267.P16961775341134053784

`char[A083605(n+1)]+∑[A011865(n+4)]`
-/

namespace A084267.P16961775341134053784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A084267.P16961775341134053784

namespace A084267

/-- `char[A083605(n+1)]+∑[A011865(n+4)]` -/
def P16961775341134053784.Spec : Prop :=
  ∀ n, P16961775341134053784.a n = A084267 n

end A084267

/-! ## A084267.P17398630303745781833

`char[A242980(n+1)]+∑[A011865(n+4)]`
-/

namespace A084267.P17398630303745781833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A084267.P17398630303745781833

namespace A084267

/-- `char[A242980(n+1)]+∑[A011865(n+4)]` -/
def P17398630303745781833.Spec : Prop :=
  ∀ n, P17398630303745781833.a n = A084267 n

end A084267

/-! ## A084267.P10127691664096455424

`record[A000007(n)+∑[A011865(n)]]`
-/

namespace A084267.P10127691664096455424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084267.P10127691664096455424

namespace A084267

/-- `record[A000007(n)+∑[A011865(n)]]` -/
def P10127691664096455424.Spec : Prop :=
  ∀ n, P10127691664096455424.a n = A084267 n

end A084267

/-! ## A084267.P3711823300214286922

`A002483(2*n)+∑[A011865(n+4)]`
-/

namespace A084267.P3711823300214286922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084267.P3711823300214286922

namespace A084267

/-- `A002483(2*n)+∑[A011865(n+4)]` -/
def P3711823300214286922.Spec : Prop :=
  ∀ n, P3711823300214286922.a n = A084267 n

end A084267

/-! ## A084267.P2300023378720994338

`A010673(2*n)+∑[A011865(n+4)]`
-/

namespace A084267.P2300023378720994338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084267.P2300023378720994338

namespace A084267

/-- `A010673(2*n)+∑[A011865(n+4)]` -/
def P2300023378720994338.Spec : Prop :=
  ∀ n, P2300023378720994338.a n = A084267 n

end A084267

/-! ## A084267.P3429449751198967730

`A001222(A243009(n+1))*∑[A011865(n+4)]`
-/

namespace A084267.P3429449751198967730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243009 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084267.P3429449751198967730

namespace A084267

/-- `A001222(A243009(n+1))*∑[A011865(n+4)]` -/
def P3429449751198967730.Spec : Prop :=
  ∀ n, P3429449751198967730.a n = A084267 n

end A084267

/-! ## A084267.P12524096912887076255

`A001222(A048161(n+1))*∑[A011865(n+4)]`
-/

namespace A084267.P12524096912887076255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048161 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084267.P12524096912887076255

namespace A084267

/-- `A001222(A048161(n+1))*∑[A011865(n+4)]` -/
def P12524096912887076255.Spec : Prop :=
  ∀ n, P12524096912887076255.a n = A084267 n

end A084267

/-! ## A084267.P2402554910174031605

`A014963(A008597(n+1))*∑[A011865(n+4)]`
-/

namespace A084267.P2402554910174031605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008597 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084267.P2402554910174031605

namespace A084267

/-- `A014963(A008597(n+1))*∑[A011865(n+4)]` -/
def P2402554910174031605.Spec : Prop :=
  ∀ n, P2402554910174031605.a n = A084267 n

end A084267

/-! ## A084267.P16536084789186143302

`A010051(A277794(n+1))+∑[A011865(n+4)]`
-/

namespace A084267.P16536084789186143302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A277794 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084267.P16536084789186143302

namespace A084267

/-- `A010051(A277794(n+1))+∑[A011865(n+4)]` -/
def P16536084789186143302.Spec : Prop :=
  ∀ n, P16536084789186143302.a n = A084267 n

end A084267

/-! ## A084267.P10060252609613854512

`A000027(∑[A011865(n+4)])`
-/

namespace A084267.P10060252609613854512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084267.P10060252609613854512

namespace A084267

/-- `A000027(∑[A011865(n+4)])` -/
def P10060252609613854512.Spec : Prop :=
  ∀ n, P10060252609613854512.a n = A084267 n

end A084267

/-! ## A084267.P6087672775528600058

`A014963(46*(n+2))*∑[A011865(n+4)]`
-/

namespace A084267.P6087672775528600058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (46 * (n + 2)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084267.P6087672775528600058

namespace A084267

/-- `A014963(46*(n+2))*∑[A011865(n+4)]` -/
def P6087672775528600058.Spec : Prop :=
  ∀ n, P6087672775528600058.a n = A084267 n

end A084267

/-! ## A084267.P9302401932482464868

`A049780(A266440(n))+∑[A011865(n+4)]`
-/

namespace A084267.P9302401932482464868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (A266440 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084267.P9302401932482464868

namespace A084267

/-- `A049780(A266440(n))+∑[A011865(n+4)]` -/
def P9302401932482464868.Spec : Prop :=
  ∀ n, P9302401932482464868.a n = A084267 n

end A084267

/-! ## A084267.P7492691124167247924

`∑[A011865(n+4)]*A002262(A000124(n+1))`
-/

namespace A084267.P7492691124167247924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002262 (A000124 (n + 1)).toNat

end

end A084267.P7492691124167247924

namespace A084267

/-- `∑[A011865(n+4)]*A002262(A000124(n+1))` -/
def P7492691124167247924.Spec : Prop :=
  ∀ n, P7492691124167247924.a n = A084267 n

end A084267

/-! ## A084267.P2707057914291724113

`∑[A152467(A052905(n))]+n+1`
-/

namespace A084267.P2707057914291724113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A084267.P2707057914291724113

namespace A084267

/-- `∑[A152467(A052905(n))]+n+1` -/
def P2707057914291724113.Spec : Prop :=
  ∀ n, P2707057914291724113.a n = A084267 n

end A084267

/-!
# A084268: Triangle read by rows: T(n,k) is the number of simple graphs on n unlabeled nodes having chromatic number k, 1 <= k <= n.

The programs for A084268, there is no canonical definition to state claims against.
-/

/-! ## A084268.P363878632303735153

`A115597(A056943(n)+2)`
-/

namespace A084268.P363878632303735153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115597 (A056943 n + 2).toNat

end

end A084268.P363878632303735153

/-! ## A084268.P17059759122514691099

`A115597(2*(1-A002262(n))+n)`
-/

namespace A084268.P17059759122514691099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115597 (2 * (1 - A002262 n) + (n : ℤ)).toNat

end

end A084268.P17059759122514691099

/-! ## A084268.P11228459868981671190

`A115597(A093995(n+1)-A023443(A163352(n)+n))`
-/

namespace A084268.P11228459868981671190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115597 (A093995 (n + 1) - A023443 (A163352 n + (n : ℤ)).toNat).toNat

end

end A084268.P11228459868981671190

/-! ## A084268.P11490289177586217943

`A107324(A000040(A047884(n+1)))`
-/

namespace A084268.P11490289177586217943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A000040 (A047884 (n + 1)).toNat).toNat

end

end A084268.P11490289177586217943

/-! ## A084268.P6265819715645217732

`A125987(A117396(n))`
-/

namespace A084268.P6265819715645217732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125987 (A117396 n).toNat

end

end A084268.P6265819715645217732

/-!
# A084269: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled nodes having chromatic number k, 1 <= k <= n.

The programs for A084269, there is no canonical definition to state claims against.
-/

/-! ## A084269.P13133346887823013328

`A300756(n)+A034329(A034328(n))`
-/

namespace A084269.P13133346887823013328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 n + A034329 (A034328 n).toNat

end

end A084269.P13133346887823013328

/-! ## A084269.P5797313059379934578

`A258829(n)+A124761(A308292(n))`
-/

namespace A084269.P5797313059379934578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 n + A124761 (A308292 n).toNat

end

end A084269.P5797313059379934578

/-! ## A084269.P15689474769356318926

`A227568(A064045(n)²)+A124761(A308292(n))`
-/

namespace A084269.P15689474769356318926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A064045 n ^ 2).toNat + A124761 (A308292 n).toNat

end

end A084269.P15689474769356318926

/-! ## A084269.P2139020905564242107

`A124761(A308292(n))+A085269(3*A064045(n))`
-/

namespace A084269.P2139020905564242107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A308292 n).toNat + A085269 (3 * A064045 n).toNat

end

end A084269.P2139020905564242107

/-! ## A084269.P14502773695637900841

`A305924(A232006(n))`
-/

namespace A084269.P14502773695637900841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305924 (A232006 n).toNat

end

end A084269.P14502773695637900841

/-!
# A084270: Number of labeled 2-chromatic (i.e., chromatic number = 2) graphs on n nodes.

The programs for A084270, there is no canonical definition to state claims against.
-/

/-! ## A084270.P132552895765902655

`A047864(n+1)-1`
-/

namespace A084270.P132552895765902655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047864 (n + 1) - 1

end

end A084270.P132552895765902655

/-! ## A084270.P9206236429027760077

`∑[abs(Δ[A047864(n)])]`
-/

namespace A084270.P9206236429027760077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084270.P9206236429027760077

/-! ## A084270.P15852821083032395604

`record[Δ[A047864(A057979(n))]]`
-/

namespace A084270.P15852821083032395604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047864 (A057979 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084270.P15852821083032395604

/-! ## A084270.P6527915203848801108

`∑[A000007(n+1)+Δ[A047864(n)]]`
-/

namespace A084270.P6527915203848801108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084270.P6527915203848801108

/-! ## A084270.P5159862955208857781

`∑[Δ[A047864(n)]%A000684(n+1)]`
-/

namespace A084270.P5159862955208857781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000684 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084270.P5159862955208857781

/-!
# A084271: Number of labeled 3-chromatic (i.e., chromatic number = 3) graphs on n nodes.

The programs for A084271, there is no canonical definition to state claims against.
-/

/-! ## A084271.P2560675402470717224

`A084279(n+1)-A047864(n+1)`
-/

namespace A084271.P2560675402470717224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084279 (n + 1) - A047864 (n + 1)

end

end A084271.P2560675402470717224

/-! ## A084271.P12912125856589822632

`A084279(n+1)-(A084270(n+1)+1)`
-/

namespace A084271.P12912125856589822632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084279 (n + 1) - (A084270 (n + 1) + 1)

end

end A084271.P12912125856589822632

/-! ## A084271.P7744596772834588079

`A084280(n+1)-A084272(n+1)-A047864(n+1)`
-/

namespace A084271.P7744596772834588079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084280 (n + 1) - A084272 (n + 1) - A047864 (n + 1)

end

end A084271.P7744596772834588079

/-!
# A084272: Number of labeled 4-chromatic (i.e., chromatic number = 4) graphs on n nodes.

The programs for A084272, there is no canonical definition to state claims against.
-/

/-! ## A084272.P8982422833777867181

`A084280(n+1)-A084279(n+1)`
-/

namespace A084272.P8982422833777867181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084280 (n + 1) - A084279 (n + 1)

end

end A084272.P8982422833777867181

/-! ## A084272.P7842380598053314074

`A084280(n+1)-(A084271(n+1)+A047864(n+1))`
-/

namespace A084272.P7842380598053314074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084280 (n + 1) - (A084271 (n + 1) + A047864 (n + 1))

end

end A084272.P7842380598053314074

/-! ## A084272.P16323282683051128033

`A084280(n+1)-(A084270(n+1)+A084271(n+1)+1)`
-/

namespace A084272.P16323282683051128033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084280 (n + 1) - (A084270 (n + 1) + (A084271 (n + 1) + 1))

end

end A084272.P16323282683051128033

/-!
# A084273: Number of labeled connected 3-chromatic (i.e., chromatic number = 3) graphs on n nodes.

The programs for A084273, there is no canonical definition to state claims against.
-/

/-! ## A084273.P9026635851815131011

`A084283(n+1)-A001832(n+1)`
-/

namespace A084273.P9026635851815131011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084283 (n + 1) - A001832 (n + 1)

end

end A084273.P9026635851815131011

/-!
# A084274: Number of labeled connected 4-chromatic (i.e., chromatic number = 4) graphs on n nodes.

The programs for A084274, there is no canonical definition to state claims against.
-/

/-! ## A084274.P13772803927039858467

`A084284(n+1)-A084283(n+1)`
-/

namespace A084274.P13772803927039858467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084284 (n + 1) - A084283 (n + 1)

end

end A084274.P13772803927039858467

/-! ## A084274.P209834466824230225

`A084284(n+1)-(A084273(n+1)+A001832(n+1))`
-/

namespace A084274.P209834466824230225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084284 (n + 1) - (A084273 (n + 1) + A001832 (n + 1))

end

end A084274.P209834466824230225

/-!
# A084278: Squarefree numbers n which are the product of an even number of distinct primes such that Fibonacci(n) is also squarefree and the product of an even number of distinct primes.

The programs for A084278, there is no canonical definition to state claims against.
-/

/-! ## A084278.P6647595946209456328

`record[A080304(n+1)*A174340(n+1)]`
-/

namespace A084278.P6647595946209456328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (n + 1) * A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084278.P6647595946209456328

/-! ## A084278.P3884162100351330273

`record[A062953(n+1)^A174340(n+1)]`
-/

namespace A084278.P3884162100351330273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062953 (n + 1) : ℚ) ^ (A174340 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084278.P3884162100351330273

/-! ## A084278.P17158425271165185670

`record[(n*A008683(n+1)+1)^A174340(n+1)]`
-/

namespace A084278.P17158425271165185670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A008683 (n + 1) + 1 : ℚ) ^ (A174340 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084278.P17158425271165185670

/-! ## A084278.P6215479784047761747

`record[A080304(round((n+1+n)/2))^A174340(n+1)]`
-/

namespace A084278.P6215479784047761747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080304 (SequenceMachineLib.roundAway ((n + 1 + n : ℚ) / 2)).toNat : ℚ) ^ (A174340 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084278.P6215479784047761747

/-! ## A084278.P10442825620888120066

`A080304(record[A080304(n+1)^A174340(n+1)])`
-/

namespace A084278.P10442825620888120066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080304 (n + 1) : ℚ) ^ (A174340 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A084278.P10442825620888120066

/-!
# A084279: Number of labeled 3-colorable (i.e., chromatic number <= 3) graphs on n nodes.

The programs for A084279, there is no canonical definition to state claims against.
-/

/-! ## A084279.P12311757183283831357

`A084271(n+1)+A047864(n+1)`
-/

namespace A084279.P12311757183283831357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084271 (n + 1) + A047864 (n + 1)

end

end A084279.P12311757183283831357

/-! ## A084279.P3070819615611181488

`A084270(n+1)+A084271(n+1)+1`
-/

namespace A084279.P3070819615611181488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084270 (n + 1) + (A084271 (n + 1) + 1)

end

end A084279.P3070819615611181488

/-! ## A084279.P9872606405548012715

`A084280(n+1)-A084272(n+1)`
-/

namespace A084279.P9872606405548012715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084280 (n + 1) - A084272 (n + 1)

end

end A084279.P9872606405548012715

/-!
# A084280: Number of labeled 4-colorable (i.e., chromatic number <= 4) graphs on n nodes.

The programs for A084280, there is no canonical definition to state claims against.
-/

/-! ## A084280.P12518177145541221551

`A084279(n+1)+A084272(n+1)`
-/

namespace A084280.P12518177145541221551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084279 (n + 1) + A084272 (n + 1)

end

end A084280.P12518177145541221551

/-! ## A084280.P2112316355948210539

`A084272(n+1)+A084271(n+1)+A047864(n+1)`
-/

namespace A084280.P2112316355948210539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084272 (n + 1) + (A084271 (n + 1) + A047864 (n + 1))

end

end A084280.P2112316355948210539

/-! ## A084280.P12867842876328189151

`A084272(n+1)+A084270(n+1)+A084271(n+1)+1`
-/

namespace A084280.P12867842876328189151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084272 (n + 1) + (A084270 (n + 1) + (A084271 (n + 1) + 1))

end

end A084280.P12867842876328189151

/-!
# A084281: Number of labeled 5-colorable (i.e., chromatic number <= 5) graphs on n nodes.

The programs for A084281, there is no canonical definition to state claims against.
-/

/-! ## A084281.P5893785482680120666

`2^∑[n]-A010060(5*n^5)`
-/

namespace A084281.P5893785482680120666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A010060 (5 * n ^ 5)

end

end A084281.P5893785482680120666

/-! ## A084281.P11097605409466744676

`A001221(∑{digits}[n, 10^#])^∑[n]-char[5]`
-/

namespace A084281.P11097605409466744676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum ^ (∑ j ∈ Finset.range (n + 1), f2 j) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A084281.P11097605409466744676

/-!
# A084282: Number of labeled 6-colorable (i.e., chromatic number <= 6) graphs on n nodes.

The programs for A084282, there is no canonical definition to state claims against.
-/

/-! ## A084282.P3190409592458021142

`record[A360604(n)-A185284(n)]`
-/

namespace A084282.P3190409592458021142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360604 n - A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084282.P3190409592458021142

/-! ## A084282.P15476811413988797927

`record[A108084(n)-A185037(n+3)]`
-/

namespace A084282.P15476811413988797927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108084 n - A185037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084282.P15476811413988797927

/-! ## A084282.P18057326386045401787

`and(∏[2^n], -1)-A316864(A255906(n))`
-/

namespace A084282.P18057326386045401787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1) - A316864 (A255906 n).toNat

end

end A084282.P18057326386045401787

/-!
# A084283: Number of connected labeled 3-colorable (i.e., chromatic number <= 3) graphs on n nodes.

The programs for A084283, there is no canonical definition to state claims against.
-/

/-! ## A084283.P11030441865739314583

`A084273(n+1)+A001832(n+1)`
-/

namespace A084283.P11030441865739314583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084273 (n + 1) + A001832 (n + 1)

end

end A084283.P11030441865739314583

/-! ## A084283.P3818796573147145946

`A084284(n+1)-A084274(n+1)`
-/

namespace A084283.P3818796573147145946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084284 (n + 1) - A084274 (n + 1)

end

end A084283.P3818796573147145946

/-!
# A084284: Number of connected labeled 4-colorable (i.e., chromatic number <= 4) graphs on n nodes.

The programs for A084284, there is no canonical definition to state claims against.
-/

/-! ## A084284.P917882853093926423

`A084283(n+1)+A084274(n+1)`
-/

namespace A084284.P917882853093926423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084283 (n + 1) + A084274 (n + 1)

end

end A084284.P917882853093926423

/-! ## A084284.P13054499636850825823

`A001832(n+1)+A084274(n+1)+A084273(n+1)`
-/

namespace A084284.P13054499636850825823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001832 (n + 1) + (A084274 (n + 1) + A084273 (n + 1))

end

end A084284.P13054499636850825823

/-!
# A084285: Number of connected labeled 5-colorable (i.e., chromatic number <= 5) graphs on n nodes.

The programs for A084285, there is no canonical definition to state claims against.
-/

/-! ## A084285.P1885133329368635800

`A084286(n+1)-A269243(2^(∑[n]-n))`
-/

namespace A084285.P1885133329368635800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084286 (n + 1) - A269243 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A084285.P1885133329368635800

/-! ## A084285.P1042056822376593480

`A084286(n+1)+A014021(A000798(n))`
-/

namespace A084285.P1042056822376593480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084286 (n + 1) + A014021 (A000798 n).toNat

end

end A084285.P1042056822376593480

/-!
# A084286: Number of connected labeled 6-colorable (i.e., chromatic number <= 6) graphs on n nodes.

The programs for A084286, there is no canonical definition to state claims against.
-/

/-! ## A084286.P9539356302118636987

`A001187(n+1)-A064911(A006862(n))`
-/

namespace A084286.P9539356302118636987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) - A064911 (A006862 n).toNat

end

end A084286.P9539356302118636987

/-! ## A084286.P1591077015101053546

`A001187(n+1)-A083896(A000302(n))`
-/

namespace A084286.P1591077015101053546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) - A083896 (A000302 n).toNat

end

end A084286.P1591077015101053546

/-! ## A084286.P269080459869377162

`A001187(A141769(n+1))-A026812(n)`
-/

namespace A084286.P269080459869377162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (A141769 (n + 1)).toNat - A026812 n

end

end A084286.P269080459869377162

/-!
# A084287: Self-similar table, read by antidiagonals, where the k-th row is the product of the k-th prime with the antidiagonals of the first k rows of the table.

The programs for A084287, there is no canonical definition to state claims against.
-/

/-! ## A084287.P16381722418281455398

`A026098(A187829(n+1)+round(sqrt(2*(n+1)))²-(2*n+1))`
-/

namespace A084287.P16381722418281455398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (A187829 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))).toNat

end

end A084287.P16381722418281455398

/-! ## A084287.P6742020534340968502

`A026098(A038722(n+1)^A008835(n+1))`
-/

namespace A084287.P6742020534340968502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A084287.P6742020534340968502

/-! ## A084287.P8375585325947876087

`A026098(A038722(n+1)%A147305(n+1))`
-/

namespace A084287.P8375585325947876087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (Int.tmod (A038722 (n + 1)) (A147305 (n + 1))).toNat

end

end A084287.P8375585325947876087

/-! ## A084287.P127137449477301510

`A026098(C(A038722(n+1), A008835(n+1)))`
-/

namespace A084287.P127137449477301510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (Nat.choose (A038722 (n + 1)).toNat (A008835 (n + 1)).toNat)

end

end A084287.P127137449477301510

/-!
# A084288: Antidiagonal sums of table A084287, in which the k-th row is the product of the k-th prime with the antidiagonals of the first k rows of the table.

The programs for A084288, there is no canonical definition to state claims against.
-/

/-! ## A084288.P18233049697602919454

`A367085(A001924(n))`
-/

namespace A084288.P18233049697602919454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367085 (A001924 n).toNat

end

end A084288.P18233049697602919454

/-! ## A084288.P12459023093706883694

`A005041(A356039(n+1))`
-/

namespace A084288.P12459023093706883694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A356039 (n + 1)).toNat

end

end A084288.P12459023093706883694

/-! ## A084288.P1187304601892589166

`A367085(∑[∑[A000045(n)]])`
-/

namespace A084288.P1187304601892589166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367085 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084288.P1187304601892589166

/-!
# A084289: Primes p such that the arithmetic mean of p and the next prime after p is a true prime power from A025475.

The programs for A084289, there is no canonical definition to state claims against.
-/

/-! ## A084289.P5521086353269385729

`∩[A053607(n+1), A242380(n+1)]`
-/

namespace A084289.P5521086353269385729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084289.P5521086353269385729

/-! ## A084289.P16566406362179019662

`A002374(A263675(n+1))`
-/

namespace A084289.P16566406362179019662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A263675 (n + 1)).toNat

end

end A084289.P16566406362179019662

/-! ## A084289.P11744482839994562585

`A136548(A263675(n+1)+1)`
-/

namespace A084289.P11744482839994562585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A263675 (n + 1) + 1).toNat

end

end A084289.P11744482839994562585

/-!
# A084290: Difference between consecutive primes arising before difference (d=2) between twin primes. In A001223, terms before the ones that equal 2.

The programs for A084290, the canonical program `A084290.P12844808655589070540` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084290 has offset 1).

The definition of A084290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084290.P7942685437633833126

`A001223(A155752(n+1))`
-/

namespace A084290.P7942685437633833126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A155752 (n + 1)).toNat

end

end A084290.P7942685437633833126

namespace A084290

/-- `A001223(A155752(n+1))` -/
def P7942685437633833126.Spec : Prop :=
  ∀ n, P7942685437633833126.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P10007694522232334460

`A001223(∑[A242767(n+2)])`
-/

namespace A084290.P10007694522232334460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084290.P10007694522232334460

namespace A084290

/-- `A001223(∑[A242767(n+2)])` -/
def P10007694522232334460.Spec : Prop :=
  ∀ n, P10007694522232334460.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P10349158174639560414

`A001223(A029707(n+1)-1)`
-/

namespace A084290.P10349158174639560414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A029707 (n + 1) - 1).toNat

end

end A084290.P10349158174639560414

namespace A084290

/-- `A001223(A029707(n+1)-1)` -/
def P10349158174639560414.Spec : Prop :=
  ∀ n, P10349158174639560414.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P11672812758655801520

`A001223(A107770(n+1)-2)`
-/

namespace A084290.P11672812758655801520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A107770 (n + 1) - 2).toNat

end

end A084290.P11672812758655801520

namespace A084290

/-- `A001223(A107770(n+1)-2)` -/
def P11672812758655801520.Spec : Prop :=
  ∀ n, P11672812758655801520.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P2513378409261515287

`A001359(n+1)-A088175(n+1)`
-/

namespace A084290.P2513378409261515287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A088175 (n + 1)

end

end A084290.P2513378409261515287

namespace A084290

/-- `A001359(n+1)-A088175(n+1)` -/
def P2513378409261515287.Spec : Prop :=
  ∀ n, P2513378409261515287.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P17983293793130614707

`A084291(n+1)-A305558(n+1)`
-/

namespace A084290.P17983293793130614707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084291 (n + 1) - A305558 (n + 1)

end

end A084290.P17983293793130614707

namespace A084290

/-- `A084291(n+1)-A305558(n+1)` -/
def P17983293793130614707.Spec : Prop :=
  ∀ n, P17983293793130614707.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P15511831861617503052

`A006512(n+1)-(A088175(n+1)+2)`
-/

namespace A084290.P15511831861617503052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (A088175 (n + 1) + 2)

end

end A084290.P15511831861617503052

namespace A084290

/-- `A006512(n+1)-(A088175(n+1)+2)` -/
def P15511831861617503052.Spec : Prop :=
  ∀ n, P15511831861617503052.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P12844808655589070540

`A001223(record[2*(n+1)/A001223(n+2)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084290

/-- `A001223(record[2*(n+1)/A001223(n+2)])` -/
def P12844808655589070540.Spec : Prop :=
  ∀ n, P12844808655589070540.a n = A084290 (n + 1)

theorem P12844808655589070540.correct : P12844808655589070540.Spec := by
  intro n
  simp only [A084290, Nat.add_sub_cancel]

end A084290

/-! ## A084290.P14881899984407679075

`A001223(eq[2, A001223(n+1)])`
-/

namespace A084290.P14881899984407679075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084290.P14881899984407679075

namespace A084290

/-- `A001223(eq[2, A001223(n+1)])` -/
def P14881899984407679075.Spec : Prop :=
  ∀ n, P14881899984407679075.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P10491637696390681818

`A077800(2*n+1)-A088175(n+1)`
-/

namespace A084290.P10491637696390681818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1) - A088175 (n + 1)

end

end A084290.P10491637696390681818

namespace A084290

/-- `A077800(2*n+1)-A088175(n+1)` -/
def P10491637696390681818.Spec : Prop :=
  ∀ n, P10491637696390681818.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P16400146529109407841

`p?[A171821(n+1)-2]-A088175(n+1)`
-/

namespace A084290.P16400146529109407841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A088175 (n + 1)

end

end A084290.P16400146529109407841

namespace A084290

/-- `p?[A171821(n+1)-2]-A088175(n+1)` -/
def P16400146529109407841.Spec : Prop :=
  ∀ n, P16400146529109407841.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P13061111574224515118

`A046930(A029707(n+1))`
-/

namespace A084290.P13061111574224515118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (A029707 (n + 1)).toNat

end

end A084290.P13061111574224515118

namespace A084290

/-- `A046930(A029707(n+1))` -/
def P13061111574224515118.Spec : Prop :=
  ∀ n, P13061111574224515118.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P14509383515485568530

`A054541(eq[2, Δ[A028815(n)]])`
-/

namespace A084290.P14509383515485568530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084290.P14509383515485568530

namespace A084290

/-- `A054541(eq[2, Δ[A028815(n)]])` -/
def P14509383515485568530.Spec : Prop :=
  ∀ n, P14509383515485568530.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P2361108235931411803

`A054541(A155752(n+1)+1)`
-/

namespace A084290.P2361108235931411803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A155752 (n + 1) + 1).toNat

end

end A084290.P2361108235931411803

namespace A084290

/-- `A054541(A155752(n+1)+1)` -/
def P2361108235931411803.Spec : Prop :=
  ∀ n, P2361108235931411803.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P16749384748683416038

`A075526(A029707(n+1)-1)`
-/

namespace A084290.P16749384748683416038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (A029707 (n + 1) - 1).toNat

end

end A084290.P16749384748683416038

namespace A084290

/-- `A075526(A029707(n+1)-1)` -/
def P16749384748683416038.Spec : Prop :=
  ∀ n, P16749384748683416038.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P13628169172064927370

`A075526(eq[1, A339270(n+1)])`
-/

namespace A084290.P13628169172064927370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084290.P13628169172064927370

namespace A084290

/-- `A075526(eq[1, A339270(n+1)])` -/
def P13628169172064927370.Spec : Prop :=
  ∀ n, P13628169172064927370.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P8050505651411497363

`A075526(eq[2, A075526(n+1)])`
-/

namespace A084290.P8050505651411497363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084290.P8050505651411497363

namespace A084290

/-- `A075526(eq[2, A075526(n+1)])` -/
def P8050505651411497363.Spec : Prop :=
  ∀ n, P8050505651411497363.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P7232058761800921335

`A125266(eq[2, A125266(n+1)])`
-/

namespace A084290.P7232058761800921335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084290.P7232058761800921335

namespace A084290

/-- `A125266(eq[2, A125266(n+1)])` -/
def P7232058761800921335.Spec : Prop :=
  ∀ n, P7232058761800921335.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P11069478718852896553

`A230849(eq[2, A230849(n+2)])`
-/

namespace A084290.P11069478718852896553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084290.P11069478718852896553

namespace A084290

/-- `A230849(eq[2, A230849(n+2)])` -/
def P11069478718852896553.Spec : Prop :=
  ∀ n, P11069478718852896553.a n = A084290 (n + 1)

end A084290

/-! ## A084290.P4904283017627529041

`A001223(lt[A163981(n+1), 3])`
-/

namespace A084290.P4904283017627529041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163981 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A084290.P4904283017627529041

namespace A084290

/-- `A001223(lt[A163981(n+1), 3])` -/
def P4904283017627529041.Spec : Prop :=
  ∀ n, P4904283017627529041.a n = A084290 (n + 1)

end A084290

/-!
# A084291: Difference between consecutive primes arising after difference (d=2) between twin primes. In A001223, terms succeeding those that equal 2.

The programs for A084291, the canonical program `A084291.P5500729874406725872` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084291 has offset 1).

The definition of A084291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084291.P14976061686112741089

`A001223(A107770(n+1))`
-/

namespace A084291.P14976061686112741089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A107770 (n + 1)).toNat

end

end A084291.P14976061686112741089

namespace A084291

/-- `A001223(A107770(n+1))` -/
def P14976061686112741089.Spec : Prop :=
  ∀ n, P14976061686112741089.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P9234208208014512438

`A001223(A029707(n+1)+1)`
-/

namespace A084291.P9234208208014512438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A029707 (n + 1) + 1).toNat

end

end A084291.P9234208208014512438

namespace A084291

/-- `A001223(A029707(n+1)+1)` -/
def P9234208208014512438.Spec : Prop :=
  ∀ n, P9234208208014512438.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P5386890632841729884

`A001223(A155752(n+1)+2)`
-/

namespace A084291.P5386890632841729884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A155752 (n + 1) + 2).toNat

end

end A084291.P5386890632841729884

namespace A084291

/-- `A001223(A155752(n+1)+2)` -/
def P5386890632841729884.Spec : Prop :=
  ∀ n, P5386890632841729884.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P8337895215654429734

`A001223(∑[A242767(n+2)]+2)`
-/

namespace A084291.P8337895215654429734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A084291.P8337895215654429734

namespace A084291

/-- `A001223(∑[A242767(n+2)]+2)` -/
def P8337895215654429734.Spec : Prop :=
  ∀ n, P8337895215654429734.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P10107597263310951093

`A305558(n+1)+A084290(n+1)`
-/

namespace A084291.P10107597263310951093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305558 (n + 1) + A084290 (n + 1)

end

end A084291.P10107597263310951093

namespace A084291

/-- `A305558(n+1)+A084290(n+1)` -/
def P10107597263310951093.Spec : Prop :=
  ∀ n, P10107597263310951093.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P14910818666772921422

`A088176(n+1)-A006512(n+1)`
-/

namespace A084291.P14910818666772921422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) - A006512 (n + 1)

end

end A084291.P14910818666772921422

namespace A084291

/-- `A088176(n+1)-A006512(n+1)` -/
def P14910818666772921422.Spec : Prop :=
  ∀ n, P14910818666772921422.a n = A084291 (n + 1)

theorem P14910818666772921422.correct : P14910818666772921422.Spec := by
  intro n
  simp only [A084291, Nat.add_sub_cancel, A084291.P14910818666772921422.a, A084291.P5500729874406725872.f1, A084291.P5500729874406725872.f2, A084291.P5500729874406725872.a, A001223, A001223.P5083310856331133973.a, A006512, A006512.P8157243218962949380.a, A088176, A088176.P508922277924974894.a, A001359, A001359.P8865495035699438537.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084291

/-! ## A084291.P12023952359817221872

`A088176(n+1)-(A014574(n+1)+1)`
-/

namespace A084291.P12023952359817221872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) - (A014574 (n + 1) + 1)

end

end A084291.P12023952359817221872

namespace A084291

/-- `A088176(n+1)-(A014574(n+1)+1)` -/
def P12023952359817221872.Spec : Prop :=
  ∀ n, P12023952359817221872.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P5609177859567007294

`A088176(n+1)-(A001359(n+1)+2)`
-/

namespace A084291.P5609177859567007294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) - (A001359 (n + 1) + 2)

end

end A084291.P5609177859567007294

namespace A084291

/-- `A088176(n+1)-(A001359(n+1)+2)` -/
def P5609177859567007294.Spec : Prop :=
  ∀ n, P5609177859567007294.a n = A084291 (n + 1)

theorem P5609177859567007294.correct : P5609177859567007294.Spec := by
  intro n
  simp only [A084291, Nat.add_sub_cancel, A084291.P5609177859567007294.a, A084291.P5500729874406725872.f1, A084291.P5500729874406725872.f2, A084291.P5500729874406725872.a, A001223, A001223.P5083310856331133973.a, A001359, A001359.P8865495035699438537.a, A088176, A088176.P508922277924974894.a, A006512, A006512.P8157243218962949380.a, A046933, A046933.P9479947770746769512.a, A077800, A077800.P16009445446139691322.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084291

/-! ## A084291.P5500729874406725872

`A001223(eq[2, A001223(n+1)]+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084291

/-- `A001223(eq[2, A001223(n+1)]+2)` -/
def P5500729874406725872.Spec : Prop :=
  ∀ n, P5500729874406725872.a n = A084291 (n + 1)

theorem P5500729874406725872.correct : P5500729874406725872.Spec := by
  intro n
  simp only [A084291, Nat.add_sub_cancel]

end A084291

/-! ## A084291.P3980374667601687085

`A001223(A334142(2*n+1))`
-/

namespace A084291.P3980374667601687085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A334142 (2 * n + 1)).toNat

end

end A084291.P3980374667601687085

namespace A084291

/-- `A001223(A334142(2*n+1))` -/
def P3980374667601687085.Spec : Prop :=
  ∀ n, P3980374667601687085.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P4430424194381484531

`A088176(n+1)-A077800(2*(n+1))`
-/

namespace A084291.P4430424194381484531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) - A077800 (2 * (n + 1))

end

end A084291.P4430424194381484531

namespace A084291

/-- `A088176(n+1)-A077800(2*(n+1))` -/
def P4430424194381484531.Spec : Prop :=
  ∀ n, P4430424194381484531.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P2880359032191547136

`A083551(A029707(n+1))`
-/

namespace A084291.P2880359032191547136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083551 (A029707 (n + 1)).toNat

end

end A084291.P2880359032191547136

namespace A084291

/-- `A083551(A029707(n+1))` -/
def P2880359032191547136.Spec : Prop :=
  ∀ n, P2880359032191547136.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P6928909844853687909

`A046930(A029707(n+1)+1)`
-/

namespace A084291.P6928909844853687909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (A029707 (n + 1) + 1).toNat

end

end A084291.P6928909844853687909

namespace A084291

/-- `A046930(A029707(n+1)+1)` -/
def P6928909844853687909.Spec : Prop :=
  ∀ n, P6928909844853687909.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P8953299525035896682

`A075526(A029707(n+1)+1)`
-/

namespace A084291.P8953299525035896682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (A029707 (n + 1) + 1).toNat

end

end A084291.P8953299525035896682

namespace A084291

/-- `A075526(A029707(n+1)+1)` -/
def P8953299525035896682.Spec : Prop :=
  ∀ n, P8953299525035896682.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P3152386872408180456

`A000040(A029707(n+1)+2)-A006512(n+1)`
-/

namespace A084291.P3152386872408180456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029707 (n + 1) + 2).toNat - A006512 (n + 1)

end

end A084291.P3152386872408180456

namespace A084291

/-- `A000040(A029707(n+1)+2)-A006512(n+1)` -/
def P3152386872408180456.Spec : Prop :=
  ∀ n, P3152386872408180456.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P14949229333555275511

`A166597(p?[A000040(n+1)+2])`
-/

namespace A084291.P14949229333555275511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084291.P14949229333555275511

namespace A084291

/-- `A166597(p?[A000040(n+1)+2])` -/
def P14949229333555275511.Spec : Prop :=
  ∀ n, P14949229333555275511.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P140432818724028568

`A166597(p?[A061771(n+1)+2])`
-/

namespace A084291.P140432818724028568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084291.P140432818724028568

namespace A084291

/-- `A166597(p?[A061771(n+1)+2])` -/
def P140432818724028568.Spec : Prop :=
  ∀ n, P140432818724028568.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P9309607697835258902

`A001223(A000720(A006512(n+1)))`
-/

namespace A084291.P9309607697835258902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A006512 (n + 1)).toNat).toNat

end

end A084291.P9309607697835258902

namespace A084291

/-- `A001223(A000720(A006512(n+1)))` -/
def P9309607697835258902.Spec : Prop :=
  ∀ n, P9309607697835258902.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P9810780963200796115

`A001223(A000720(A001359(n+1))+1)`
-/

namespace A084291.P9810780963200796115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A001359 (n + 1)).toNat + 1).toNat

end

end A084291.P9810780963200796115

namespace A084291

/-- `A001223(A000720(A001359(n+1))+1)` -/
def P9810780963200796115.Spec : Prop :=
  ∀ n, P9810780963200796115.a n = A084291 (n + 1)

end A084291

/-! ## A084291.P6299812548634123569

`A151800(p?[A000040(n+1)+2])-A006512(n+1)`
-/

namespace A084291.P6299812548634123569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A006512 (n + 1)

end

end A084291.P6299812548634123569

namespace A084291

/-- `A151800(p?[A000040(n+1)+2])-A006512(n+1)` -/
def P6299812548634123569.Spec : Prop :=
  ∀ n, P6299812548634123569.a n = A084291 (n + 1)

end A084291

/-!
# A084292: a(n) = 6n + A054904(n).

The programs for A084292, there is no canonical definition to state claims against.
-/

/-! ## A084292.P15581272625296101471

`6*(n+1)+A054904(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084292.P15581272625296101471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) + A054904 (n + 1)

end

end A084292.P15581272625296101471

/-! ## A084292.P10861439868155825302

`A054904(n+1)+Δ[A003215(n)]`
-/

namespace A084292.P10861439868155825302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054904 (n + 1) + (f1 (n + 1) - f1 n)

end

end A084292.P10861439868155825302

/-! ## A084292.P17887240351559373791

`A054904(n+1)+A016969(n)+1`
-/

namespace A084292.P17887240351559373791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054904 (n + 1) + (A016969 n + 1)

end

end A084292.P17887240351559373791

/-! ## A084292.P5038289960351893087

`A054904(n+1)+A052380(A016789(n))`
-/

namespace A084292.P5038289960351893087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054904 (n + 1) + A052380 (A016789 n).toNat

end

end A084292.P5038289960351893087

/-!
# A084293: a(n) = 2n + A054905(n).

The programs for A084293, there is no canonical definition to state claims against.
-/

/-! ## A084293.P8329375556910845940

`2*(n+1)+A054905(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084293.P8329375556910845940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A054905 (n + 1)

end

end A084293.P8329375556910845940

/-! ## A084293.P8076120253568871529

`A054905(n+1)+A005408(n)+1`
-/

namespace A084293.P8076120253568871529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054905 (n + 1) + A005408 n + 1

end

end A084293.P8076120253568871529

/-!
# A084294: Number of primes in the interval [prime(n),n+prime(n)].

The programs for A084294, the canonical program `A084294.P12286291503589741630` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084294 has offset 1).

The definition of A084294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084294.P12286291503589741630

`A000720(n+A000040(n+1)+1)-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084294

/-- `A000720(n+A000040(n+1)+1)-n` -/
def P12286291503589741630.Spec : Prop :=
  ∀ n, P12286291503589741630.a n = A084294 (n + 1)

theorem P12286291503589741630.correct : P12286291503589741630.Spec := by
  intro n
  simp only [A084294, Nat.add_sub_cancel]

end A084294

/-! ## A084294.P18377301409188525642

`A332086(n+1)+1`
-/

namespace A084294.P18377301409188525642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (n + 1) + 1

end

end A084294.P18377301409188525642

namespace A084294

/-- `A332086(n+1)+1` -/
def P18377301409188525642.Spec : Prop :=
  ∀ n, P18377301409188525642.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P1043000850443448847

`A000720(p?[abs(xor(n, -2))]+n+1)-n`
-/

namespace A084294.P1043000850443448847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)).toNat - (n : ℤ)

end

end A084294.P1043000850443448847

namespace A084294

/-- `A000720(p?[abs(xor(n, -2))]+n+1)-n` -/
def P1043000850443448847.Spec : Prop :=
  ∀ n, P1043000850443448847.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P9714398296999754601

`A000720(p?[xor(1, n)+1]+n+1)-n`
-/

namespace A084294.P9714398296999754601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 1)) - (n : ℤ)

end

end A084294.P9714398296999754601

namespace A084294

/-- `A000720(p?[xor(1, n)+1]+n+1)-n` -/
def P9714398296999754601.Spec : Prop :=
  ∀ n, P9714398296999754601.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P6056202851882157509

`A000720(p?[round(8*n/7)]+1+n)-n`
-/

namespace A084294.P6056202851882157509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)).toNat - (n : ℤ)

end

end A084294.P6056202851882157509

namespace A084294

/-- `A000720(p?[round(8*n/7)]+1+n)-n` -/
def P6056202851882157509.Spec : Prop :=
  ∀ n, P6056202851882157509.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P7778399059003975197

`A000720(A014688(n+1))-n`
-/

namespace A084294.P7778399059003975197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014688 (n + 1)).toNat - (n : ℤ)

end

end A084294.P7778399059003975197

namespace A084294

/-- `A000720(A014688(n+1))-n` -/
def P7778399059003975197.Spec : Prop :=
  ∀ n, P7778399059003975197.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P681878166764738913

`A337788(A000040(n+1))+1`
-/

namespace A084294.P681878166764738913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A000040 (n + 1)).toNat + 1

end

end A084294.P681878166764738913

namespace A084294

/-- `A337788(A000040(n+1))+1` -/
def P681878166764738913.Spec : Prop :=
  ∀ n, P681878166764738913.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P2104128841171523853

`A337788(A008578(n+2))+1`
-/

namespace A084294.P2104128841171523853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A008578 (n + 2)).toNat + 1

end

end A084294.P2104128841171523853

namespace A084294

/-- `A337788(A008578(n+2))+1` -/
def P2104128841171523853.Spec : Prop :=
  ∀ n, P2104128841171523853.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P6492258922903865675

`A337788(A116974(n+2))+1`
-/

namespace A084294.P6492258922903865675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A116974 (n + 2)).toNat + 1

end

end A084294.P6492258922903865675

namespace A084294

/-- `A337788(A116974(n+2))+1` -/
def P6492258922903865675.Spec : Prop :=
  ∀ n, P6492258922903865675.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P6859719457369645843

`A337788(A161428(n+2))+1`
-/

namespace A084294.P6859719457369645843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A161428 (n + 2)).toNat + 1

end

end A084294.P6859719457369645843

namespace A084294

/-- `A337788(A161428(n+2))+1` -/
def P6859719457369645843.Spec : Prop :=
  ∀ n, P6859719457369645843.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P1294404085703585997

`A337788(A175787(n+2))+1`
-/

namespace A084294.P1294404085703585997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A175787 (n + 2)).toNat + 1

end

end A084294.P1294404085703585997

namespace A084294

/-- `A337788(A175787(n+2))+1` -/
def P1294404085703585997.Spec : Prop :=
  ∀ n, P1294404085703585997.a n = A084294 (n + 1)

end A084294

/-! ## A084294.P1001038904267193372

`A337788(A182986(n+2))+1`
-/

namespace A084294.P1001038904267193372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (A182986 (n + 2)).toNat + 1

end

end A084294.P1001038904267193372

namespace A084294

/-- `A337788(A182986(n+2))+1` -/
def P1001038904267193372.Spec : Prop :=
  ∀ n, P1001038904267193372.a n = A084294 (n + 1)

end A084294

/-!
# A084295: Numbers k such that pi(k*prime(k))/k is an integer.

The programs for A084295, there is no canonical definition to state claims against.
-/

/-! ## A084295.P403999916024071047

`A000720(A084297(n+1))`
-/

namespace A084295.P403999916024071047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084297 (n + 1)).toNat

end

end A084295.P403999916024071047

/-! ## A084295.P64851831577047308

`A003963(p?[A084297(n+1)])`
-/

namespace A084295.P64851831577047308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A084295.P64851831577047308

/-!
# A084296: Triangle read by rows: T(n,k) = omega(prime(n)#+k) where prime(n)# is the n-th primorial (A002110) and omega is the number of distinct prime factors (A001221), 0 <= k < n.

The programs for A084296, there is no canonical definition to state claims against.
-/

/-! ## A084296.P3133621686847338700

`A066301(4*A225466(n))`
-/

namespace A084296.P3133621686847338700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (4 * A225466 n).toNat

end

end A084296.P3133621686847338700

/-! ## A084296.P10196331231005308996

`A051903(3*A027466(A038722(n+1)))`
-/

namespace A084296.P10196331231005308996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (3 * A027466 (A038722 (n + 1)).toNat).toNat

end

end A084296.P10196331231005308996

/-! ## A084296.P9254971011633977408

`A046660(A341383(n+3))`
-/

namespace A084296.P9254971011633977408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A341383 (n + 3)).toNat

end

end A084296.P9254971011633977408

/-! ## A084296.P6423324094132667197

`A330944(lcm(2, A099628(n+1)))`
-/

namespace A084296.P6423324094132667197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (Int.lcm 2 (A099628 (n + 1)))

end

end A084296.P6423324094132667197

/-! ## A084296.P16716064519405670793

`A266282(A245980(n))+A130296(n+1)`
-/

namespace A084296.P16716064519405670793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266282 (A245980 n).toNat + A130296 (n + 1)

end

end A084296.P16716064519405670793

/-!
# A084297: Primes p=prime(m) such that pi(m*p)/m is an integer.

The programs for A084297, there is no canonical definition to state claims against.
-/

/-! ## A084297.P10838990296099175346

`A001748(A084295(n+1))/3`
-/

namespace A084297.P10838990296099175346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A084295 (n + 1)).toNat : ℚ) / 3

end

end A084297.P10838990296099175346

/-! ## A084297.P4383713322764780418

`A000040(A084295(n+1))`
-/

namespace A084297.P4383713322764780418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084295 (n + 1)).toNat

end

end A084297.P4383713322764780418

/-!
# A084298: Integer quotients pi(m*prime(m))/m.

The programs for A084298, there is no canonical definition to state claims against.
-/

/-! ## A084298.P17095291416575355120

`A057855(A084295(n+1))/A084295(n+1)`
-/

namespace A084298.P17095291416575355120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057855 (A084295 (n + 1)).toNat : ℚ) / (A084295 (n + 1) : ℚ)

end

end A084298.P17095291416575355120

