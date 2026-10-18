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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A239600: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239600, there is no canonical definition to state claims against.
-/

/-! ## A239600.P14679569451708664904

`A239599(∑[n+1]+2)`
-/

namespace A239600.P14679569451708664904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239600.P14679569451708664904

/-!
# A239601: Number of 3 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239601, there is no canonical definition to state claims against.
-/

/-! ## A239601.P15937906127522730170

`A239599(∑[n+2]+4)`
-/

namespace A239601.P15937906127522730170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239601.P15937906127522730170

/-! ## A239601.P8419827607005127353

`lcm((-1)^n, A239599(A167614(n+1)))`
-/

namespace A239601.P8419827607005127353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A239599 (A167614 (n + 1)).toNat)

end

end A239601.P8419827607005127353

/-! ## A239601.P4382054800689534572

`A239599(A167614(n+1))+A064459(n)`
-/

namespace A239601.P4382054800689534572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A167614 (n + 1)).toNat + A064459 n

end

end A239601.P4382054800689534572

/-! ## A239601.P2461168186056172882

`A239599(A167614(n+1))+A184955(n)`
-/

namespace A239601.P2461168186056172882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A167614 (n + 1)).toNat + A184955 n

end

end A239601.P2461168186056172882

/-! ## A239601.P7809482474610896571

`A239599(A167614(n+1))+A185284(n)`
-/

namespace A239601.P7809482474610896571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A167614 (n + 1)).toNat + A185284 n

end

end A239601.P7809482474610896571

/-!
# A239602: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239602, there is no canonical definition to state claims against.
-/

/-! ## A239602.P3356801830879306343

`A239599(∑[n+3]+7)`
-/

namespace A239602.P3356801830879306343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A239602.P3356801830879306343

/-!
# A239603: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239603, there is no canonical definition to state claims against.
-/

/-! ## A239603.P1569026078003285478

`A239599(A167499(n+3))`
-/

namespace A239603.P1569026078003285478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A167499 (n + 3)).toNat

end

end A239603.P1569026078003285478

/-! ## A239603.P18247479117925003207

`A239599(A155212(n)+13)`
-/

namespace A239603.P18247479117925003207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A155212 n + 13).toNat

end

end A239603.P18247479117925003207

/-! ## A239603.P11618424653050863689

`A239599(A056000(n)+15)`
-/

namespace A239603.P11618424653050863689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A056000 n + 15).toNat

end

end A239603.P11618424653050863689

/-! ## A239603.P17967588801743608000

`A239599(eq[7, A066657(n)])`
-/

namespace A239603.P17967588801743608000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239603.P17967588801743608000

/-! ## A239603.P9705011436017808868

`A239599(A000124(n+4)+4)`
-/

namespace A239603.P9705011436017808868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A000124 (n + 4) + 4).toNat

end

end A239603.P9705011436017808868

/-!
# A239604: Width or height, given in millimeters, of ISO A paper formats.

The programs for A239604, there is no canonical definition to state claims against.
-/

/-! ## A239604.P3794766821005804473

`A076968(A087051(n)+9)`
-/

namespace A239604.P3794766821005804473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (A087051 n + 9).toNat

end

end A239604.P3794766821005804473

/-! ## A239604.P12417047375034131992

`A076968(A227549(n+1)+9)`
-/

namespace A239604.P12417047375034131992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (A227549 (n + 1) + 9).toNat

end

end A239604.P12417047375034131992

/-! ## A239604.P407516789637719552

`A076968(A032557(n+1)+8)`
-/

namespace A239604.P407516789637719552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (A032557 (n + 1) + 8).toNat

end

end A239604.P407516789637719552

/-! ## A239604.P6299020270103807716

`A076968(A032559(n+1)+8)`
-/

namespace A239604.P6299020270103807716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (A032559 (n + 1) + 8).toNat

end

end A239604.P6299020270103807716

/-! ## A239604.P12598473211481657910

`A076968(A032563(n+1)+8)`
-/

namespace A239604.P12598473211481657910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (A032563 (n + 1) + 8).toNat

end

end A239604.P12598473211481657910

/-!
# A239605: First column of A316273. Recurrence similar to series reversion giving Catalan numbers.

The programs for A239605, there is no canonical definition to state claims against.
-/

/-! ## A239605.P16807182749670052009

`A316273(∑[n]+1)`
-/

namespace A239605.P16807182749670052009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316273 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239605.P16807182749670052009

/-! ## A239605.P6649606577552582349

`A000027(A316273(C(n+1, 2)+1))`
-/

namespace A239605.P6649606577552582349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A316273 (Nat.choose (n + 1) 2 + 1)).toNat

end

end A239605.P6649606577552582349

/-! ## A239605.P5087458735541160108

`A000027(A316273((n²+n)/2+1))`
-/

namespace A239605.P5087458735541160108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A316273 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2 + 1)).toNat).toNat

end

end A239605.P5087458735541160108

/-! ## A239605.P14232842672325572292

`A326680(n)+A316273(A000124(n))`
-/

namespace A239605.P14232842672325572292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A316273 (A000124 n).toNat

end

end A239605.P14232842672325572292

/-! ## A239605.P7135577726841782846

`A316273(A000124(n))-A326679(n)-A326680(n)`
-/

namespace A239605.P7135577726841782846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316273 (A000124 n).toNat - A326679 n - A326680 n

end

end A239605.P7135577726841782846

/-!
# A239607: a(n) = (1-2*n^2)^2.

The programs for A239607, the canonical program `A239607.P10195960424083872381` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239607 has offset 0).

The definition of A239607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1-2*n²)²` (program `A239607.P10195960424083872381`, by `A239607.P10195960424083872381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239607.P10195960424083872381

`(1-2*n²)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239607

/-- `(1-2*n²)²` -/
def P10195960424083872381.Spec : Prop :=
  ∀ n, P10195960424083872381.a n = A239607 n

theorem P10195960424083872381.correct : P10195960424083872381.Spec := by
  intro n
  simp only [A239607]

end A239607

/-! ## A239607.P13440076155857667500

`8*C(n², 2)+1`
-/

namespace A239607.P13440076155857667500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n ^ 2) 2 + 1

end

end A239607.P13440076155857667500

namespace A239607

/-- `8*C(n², 2)+1` -/
def P13440076155857667500.Spec : Prop :=
  ∀ n, (P13440076155857667500.a n : ℤ) = A239607 n

end A239607

/-! ## A239607.P2295454168392672595

`or(1, 8*C(n², 2))`
-/

namespace A239607.P2295454168392672595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * Nat.choose (n ^ 2) 2)

end

end A239607.P2295454168392672595

namespace A239607

/-- `or(1, 8*C(n², 2))` -/
def P2295454168392672595.Spec : Prop :=
  ∀ n, (P2295454168392672595.a n : ℤ) = A239607 n

end A239607

/-! ## A239607.P1401141958405635591

`xor(1, 8*C(n², 2))`
-/

namespace A239607.P1401141958405635591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * Nat.choose (n ^ 2) 2)

end

end A239607.P1401141958405635591

namespace A239607

/-- `xor(1, 8*C(n², 2))` -/
def P1401141958405635591.Spec : Prop :=
  ∀ n, (P1401141958405635591.a n : ℤ) = A239607 n

end A239607

/-! ## A239607.P7232530321234541723

`or(2, -(2*n)²)²/4`
-/

namespace A239607.P7232530321234541723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (-((2 * n) ^ 2 : ℤ)) ^ 2 : ℚ) / 4

end

end A239607.P7232530321234541723

namespace A239607

/-- `or(2, -(2*n)²)²/4` -/
def P7232530321234541723.Spec : Prop :=
  ∀ n, P7232530321234541723.a n = (A239607 n : ℚ)

end A239607

/-! ## A239607.P5566383082892873748

`xor(2, -(2*n)²)²/4`
-/

namespace A239607.P5566383082892873748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (-((2 * n) ^ 2 : ℤ)) ^ 2 : ℚ) / 4

end

end A239607.P5566383082892873748

namespace A239607

/-- `xor(2, -(2*n)²)²/4` -/
def P5566383082892873748.Spec : Prop :=
  ∀ n, P5566383082892873748.a n = (A239607 n : ℚ)

end A239607

/-! ## A239607.P9245706502828979746

`16*C(n, 2)*∑[n]+1`
-/

namespace A239607.P9245706502828979746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A239607.P9245706502828979746

namespace A239607

/-- `16*C(n, 2)*∑[n]+1` -/
def P9245706502828979746.Spec : Prop :=
  ∀ n, (P9245706502828979746.a n : ℤ) = A239607 n

end A239607

/-! ## A239607.P17050214730164383205

`n*24*C(n+1, 3)+1`
-/

namespace A239607.P17050214730164383205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (24 * Nat.choose (n + 1) 3) + 1

end

end A239607.P17050214730164383205

namespace A239607

/-- `n*24*C(n+1, 3)+1` -/
def P17050214730164383205.Spec : Prop :=
  ∀ n, (P17050214730164383205.a n : ℤ) = A239607 n

end A239607

/-! ## A239607.P1162433589751236567

`floor(∑[a(n-1)+4]²)` with `a(0)=-1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A239607.P1162433589751236567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A239607.P1162433589751236567

namespace A239607

/-- `floor(∑[a(n-1)+4]²)` -/
def P1162433589751236567.Spec : Prop :=
  ∀ n, P1162433589751236567.a n = A239607 n

end A239607

/-! ## A239607.P12925878948804774344

`floor((1-∑[a(n-1)-4])²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A239607.P12925878948804774344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A239607.P12925878948804774344

namespace A239607

/-- `floor((1-∑[a(n-1)-4])²)` -/
def P12925878948804774344.Spec : Prop :=
  ∀ n, P12925878948804774344.a n = A239607 n

end A239607

/-! ## A239607.P390530758813100980

`A173121(n)+1`
-/

namespace A239607.P390530758813100980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173121 n + 1

end

end A239607.P390530758813100980

namespace A239607

/-- `A173121(n)+1` -/
def P390530758813100980.Spec : Prop :=
  ∀ n, P390530758813100980.a n = A239607 n

end A239607

/-! ## A239607.P15806966688183736726

`or(1, A056220(n)²)`
-/

namespace A239607.P15806966688183736726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056220 n ^ 2)

end

end A239607.P15806966688183736726

namespace A239607

/-- `or(1, A056220(n)²)` -/
def P15806966688183736726.Spec : Prop :=
  ∀ n, P15806966688183736726.a n = A239607 n

end A239607

/-! ## A239607.P6289075197632295138

`ceil(A144130(n)/2)`
-/

namespace A239607.P6289075197632295138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144130 n : ℚ) / 2⌉

end

end A239607.P6289075197632295138

namespace A239607

/-- `ceil(A144130(n)/2)` -/
def P6289075197632295138.Spec : Prop :=
  ∀ n, P6289075197632295138.a n = A239607 n

end A239607

/-! ## A239607.P5360179870504410140

`4*A060886(n)-3`
-/

namespace A239607.P5360179870504410140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060886 n - 3

end

end A239607.P5360179870504410140

namespace A239607

/-- `4*A060886(n)-3` -/
def P5360179870504410140.Spec : Prop :=
  ∀ n, P5360179870504410140.a n = A239607 n

end A239607

/-! ## A239607.P12374196881054919193

`n*A272871(n)+1`
-/

namespace A239607.P12374196881054919193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A272871 n + 1

end

end A239607.P12374196881054919193

namespace A239607

/-- `n*A272871(n)+1` -/
def P12374196881054919193.Spec : Prop :=
  ∀ n, P12374196881054919193.a n = A239607 n

end A239607

/-! ## A239607.P11963719818581581662

`A033595(n)+A002593(n)`
-/

namespace A239607.P11963719818581581662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033595 n + A002593 n

end

end A239607.P11963719818581581662

namespace A239607

/-- `A033595(n)+A002593(n)` -/
def P11963719818581581662.Spec : Prop :=
  ∀ n, P11963719818581581662.a n = A239607 n

end A239607

/-! ## A239607.P8981839630879889708

`A141046(n)-A000466(n)`
-/

namespace A239607.P8981839630879889708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141046 n - A000466 n

end

end A239607.P8981839630879889708

namespace A239607

/-- `A141046(n)-A000466(n)` -/
def P8981839630879889708.Spec : Prop :=
  ∀ n, P8981839630879889708.a n = A239607 n

end A239607

/-! ## A239607.P10920902813980098443

`A144130(n)-A173121(n)`
-/

namespace A239607.P10920902813980098443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 n - A173121 n

end

end A239607.P10920902813980098443

namespace A239607

/-- `A144130(n)-A173121(n)` -/
def P10920902813980098443.Spec : Prop :=
  ∀ n, P10920902813980098443.a n = A239607 n

end A239607

/-! ## A239607.P5331914330399302678

`A130886(n)-A196507(n)`
-/

namespace A239607.P5331914330399302678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130886 n - A196507 n

end

end A239607.P5331914330399302678

namespace A239607

/-- `A130886(n)-A196507(n)` -/
def P5331914330399302678.Spec : Prop :=
  ∀ n, P5331914330399302678.a n = A239607 n

end A239607

/-! ## A239607.P1049186591381436053

`A357281(n)-A092277(n)`
-/

namespace A239607.P1049186591381436053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357281 n - A092277 n

end

end A239607.P1049186591381436053

namespace A239607

/-- `A357281(n)-A092277(n)` -/
def P1049186591381436053.Spec : Prop :=
  ∀ n, P1049186591381436053.a n = A239607 n

end A239607

/-!
# A239608: a(n) = sin( arcsin(n)- 2*arccos(n) )^2.

The programs for A239608, the canonical program `A239608.P1516319900859204455` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239608 has offset 0).

The definition of A239608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239608.P1516319900859204455

`n²*(3-4*n²)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239608

/-- `n²*(3-4*n²)²` -/
def P1516319900859204455.Spec : Prop :=
  ∀ n, P1516319900859204455.a n = A239608 n

theorem P1516319900859204455.correct : P1516319900859204455.Spec := by
  intro n
  simp only [A239608]

end A239608

/-! ## A239608.P8800011235720105326

`A144129(n)²`
-/

namespace A239608.P8800011235720105326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 n ^ 2

end

end A239608.P8800011235720105326

namespace A239608

/-- `A144129(n)²` -/
def P8800011235720105326.Spec : Prop :=
  ∀ n, P8800011235720105326.a n = A239608 n

end A239608

/-! ## A239608.P3413058227463083552

`(1-A280089(n))²`
-/

namespace A239608.P3413058227463083552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A280089 n) ^ 2

end

end A239608.P3413058227463083552

namespace A239608

/-- `(1-A280089(n))²` -/
def P3413058227463083552.Spec : Prop :=
  ∀ n, P3413058227463083552.a n = A239608 n

end A239608

/-! ## A239608.P8877579371824662371

`ceil(A243132(n)/2)`
-/

namespace A239608.P8877579371824662371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A243132 n : ℚ) / 2⌉

end

end A239608.P8877579371824662371

namespace A239608

/-- `ceil(A243132(n)/2)` -/
def P8877579371824662371.Spec : Prop :=
  ∀ n, P8877579371824662371.a n = A239608 n

end A239608

/-! ## A239608.P10276193634426709520

`(A272871(n)+n)²`
-/

namespace A239608.P10276193634426709520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272871 n + (n : ℤ)) ^ 2

end

end A239608.P10276193634426709520

namespace A239608

/-- `(A272871(n)+n)²` -/
def P10276193634426709520.Spec : Prop :=
  ∀ n, P10276193634426709520.a n = A239608 n

end A239608

/-! ## A239608.P11106221719316432361

`(∑[A064200(n)]+n)²`
-/

namespace A239608.P11106221719316432361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) ^ 2

end

end A239608.P11106221719316432361

namespace A239608

/-- `(∑[A064200(n)]+n)²` -/
def P11106221719316432361.Spec : Prop :=
  ∀ n, P11106221719316432361.a n = A239608 n

end A239608

/-! ## A239608.P3703596373508955902

`A239609(n)%A242851(n)`
-/

namespace A239608.P3703596373508955902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239609 n) (A242851 n)

end

end A239608.P3703596373508955902

namespace A239608

/-- `A239609(n)%A242851(n)` -/
def P3703596373508955902.Spec : Prop :=
  ∀ n, P3703596373508955902.a n = A239608 n

end A239608

/-! ## A239608.P6675179115056777174

`A144130(n)²%A242851(n)`
-/

namespace A239608.P6675179115056777174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144130 n ^ 2) (A242851 n)

end

end A239608.P6675179115056777174

namespace A239608

/-- `A144130(n)²%A242851(n)` -/
def P6675179115056777174.Spec : Prop :=
  ∀ n, P6675179115056777174.a n = A239608 n

end A239608

/-! ## A239608.P10358077555935944592

`(Δ[A052762(n+1)]+n)²`
-/

namespace A239608.P10358077555935944592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A239608.P10358077555935944592

namespace A239608

/-- `(Δ[A052762(n+1)]+n)²` -/
def P10358077555935944592.Spec : Prop :=
  ∀ n, P10358077555935944592.a n = A239608 n

end A239608

/-! ## A239608.P1972943780403051642

`A206481(Δ[n²])²`
-/

namespace A239608.P1972943780403051642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A239608.P1972943780403051642

namespace A239608

/-- `A206481(Δ[n²])²` -/
def P1972943780403051642.Spec : Prop :=
  ∀ n, P1972943780403051642.a n = A239608 n

end A239608

/-!
# A239609: Sin(arcsin(n)- 3 arccos(n))^2.

The programs for A239609, the canonical program `A239609.P13990594251603008149` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239609 has offset 0).

The definition of A239609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239609.P13990594251603008149

`A144130(n)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239609

/-- `A144130(n)²` -/
def P13990594251603008149.Spec : Prop :=
  ∀ n, P13990594251603008149.a n = A239609 n

theorem P13990594251603008149.correct : P13990594251603008149.Spec := by
  intro n
  simp only [A239609]

end A239609

/-! ## A239609.P1968171657655294591

`(2*(1-2*n²)²-1)²`
-/

namespace A239609.P1968171657655294591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (1 - (2 * n ^ 2 : ℤ)) ^ 2 - 1) ^ 2

end

end A239609.P1968171657655294591

namespace A239609

/-- `(2*(1-2*n²)²-1)²` -/
def P1968171657655294591.Spec : Prop :=
  ∀ n, P1968171657655294591.a n = A239609 n

end A239609

/-! ## A239609.P5088588959323226031

`ceil(A243134(n)/2)`
-/

namespace A239609.P5088588959323226031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A243134 n : ℚ) / 2⌉

end

end A239609.P5088588959323226031

namespace A239609

/-- `ceil(A243134(n)/2)` -/
def P5088588959323226031.Spec : Prop :=
  ∀ n, P5088588959323226031.a n = A239609 n

end A239609

/-! ## A239609.P3474288117025666215

`A144130(A110654(2*n))*A144130(n)`
-/

namespace A239609.P3474288117025666215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 (A110654 (2 * n)).toNat * A144130 n

end

end A239609.P3474288117025666215

namespace A239609

/-- `A144130(A110654(2*n))*A144130(n)` -/
def P3474288117025666215.Spec : Prop :=
  ∀ n, P3474288117025666215.a n = A239609 n

end A239609

/-! ## A239609.P1715910930284247257

`((A033596(2*n)-1)/2)^2`
-/

namespace A239609.P1715910930284247257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A033596 (2 * n) - 1 : ℚ) / 2) ^ 2

end

end A239609.P1715910930284247257

namespace A239609

/-- `((A033596(2*n)-1)/2)^2` -/
def P1715910930284247257.Spec : Prop :=
  ∀ n, P1715910930284247257.a n = (A239609 n : ℚ)

end A239609

/-! ## A239609.P1482072099210026669

`A239607(sqrt(A239607(n)))`
-/

namespace A239609.P1482072099210026669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 (SequenceMachineLib.roundAway (Real.sqrt (A239607 n : ℝ))).toNat

end

end A239609.P1482072099210026669

namespace A239609

/-- `A239607(sqrt(A239607(n)))` -/
def P1482072099210026669.Spec : Prop :=
  ∀ n, P1482072099210026669.a n = A239609 n

end A239609

/-!
# A239610: Sin(arcsin(n) - 4 arccos(n))^2.

The programs for A239610, the canonical program `A239610.P10822114580950016374` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239610 has offset 1).

The definition of A239610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239610.P10822114580950016374

`((n+1)*(2*n+1-(2*n)²)²-1)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239610

/-- `((n+1)*(2*n+1-(2*n)²)²-1)²` -/
def P10822114580950016374.Spec : Prop :=
  ∀ n, P10822114580950016374.a n = A239610 (n + 1)

theorem P10822114580950016374.correct : P10822114580950016374.Spec := by
  intro n
  simp only [A239610, Nat.add_sub_cancel]

end A239610

/-! ## A239610.P2210569595161313366

`(A243136(n)+1)/2`
-/

namespace A239610.P2210569595161313366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243136 n + 1 : ℚ) / 2

end

end A239610.P2210569595161313366

namespace A239610

/-- `(A243136(n)+1)/2` -/
def P2210569595161313366.Spec : Prop :=
  ∀ n, P2210569595161313366.a n = (A239610 (n + 1) : ℚ)

end A239610

/-! ## A239610.P3729115511107551360

`A243131(n)*A243131(n)`
-/

namespace A239610.P3729115511107551360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243131 n * A243131 n

end

end A239610.P3729115511107551360

namespace A239610

/-- `A243131(n)*A243131(n)` -/
def P3729115511107551360.Spec : Prop :=
  ∀ n, P3729115511107551360.a n = A239610 (n + 1)

end A239610

/-! ## A239610.P4394962076154795940

`A243131(n)^A000005(A151800(n))`
-/

namespace A239610.P4394962076154795940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243131 n : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A239610.P4394962076154795940

namespace A239610

/-- `A243131(n)^A000005(A151800(n))` -/
def P4394962076154795940.Spec : Prop :=
  ∀ n, P4394962076154795940.a n = (A239610 (n + 1) : ℚ)

end A239610

/-! ## A239610.P5040228819178581186

`A243131(n)^A000034(A265509(n))`
-/

namespace A239610.P5040228819178581186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243131 n : ℚ) ^ (A000034 (A265509 n).toNat : ℤ)

end

end A239610.P5040228819178581186

namespace A239610

/-- `A243131(n)^A000034(A265509(n))` -/
def P5040228819178581186.Spec : Prop :=
  ∀ n, P5040228819178581186.a n = (A239610 (n + 1) : ℚ)

end A239610

/-! ## A239610.P4324814451784249492

`A243131(n)^A000034(A004273(n))`
-/

namespace A239610.P4324814451784249492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243131 n : ℚ) ^ (A000034 (A004273 n).toNat : ℤ)

end

end A239610.P4324814451784249492

namespace A239610

/-- `A243131(n)^A000034(A004273(n))` -/
def P4324814451784249492.Spec : Prop :=
  ∀ n, P4324814451784249492.a n = (A239610 (n + 1) : ℚ)

end A239610

/-! ## A239610.P1108527683940120282

`A243131(n)^A000005(A088175(n+1))`
-/

namespace A239610.P1108527683940120282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243131 n : ℚ) ^ (A000005 (A088175 (n + 1)).toNat : ℤ)

end

end A239610.P1108527683940120282

namespace A239610

/-- `A243131(n)^A000005(A088175(n+1))` -/
def P1108527683940120282.Spec : Prop :=
  ∀ n, P1108527683940120282.a n = (A239610 (n + 1) : ℚ)

end A239610

/-! ## A239610.P3820095376779970984

`A243131(n)^A014963(A137688(n))`
-/

namespace A239610.P3820095376779970984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243131 n : ℚ) ^ (A014963 (A137688 n).toNat : ℤ)

end

end A239610.P3820095376779970984

namespace A239610

/-- `A243131(n)^A014963(A137688(n))` -/
def P3820095376779970984.Spec : Prop :=
  ∀ n, P3820095376779970984.a n = (A239610 (n + 1) : ℚ)

end A239610

/-! ## A239610.P11145806090407319609

`A243131(n)^A014963(A140513(n))`
-/

namespace A239610.P11145806090407319609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243131 n : ℚ) ^ (A014963 (A140513 n).toNat : ℤ)

end

end A239610.P11145806090407319609

namespace A239610

/-- `A243131(n)^A014963(A140513(n))` -/
def P11145806090407319609.Spec : Prop :=
  ∀ n, P11145806090407319609.a n = (A239610 (n + 1) : ℚ)

end A239610

/-!
# A239611: a(n) = Sum_{0 < x,y <= n and gcd(x^2 + y^2, n)=1} gcd(x^2 + y^2 - 1, n).

The programs for A239611, the canonical program `A239611.P7840883180630474585` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239611 has offset 1).

The definition of A239611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239611.P4821958845481225483

`A079458(n+1)*A239614(n+1)`
-/

namespace A239611.P4821958845481225483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079458 (n + 1) * A239614 (n + 1)

end

end A239611.P4821958845481225483

namespace A239611

/-- `A079458(n+1)*A239614(n+1)` -/
def P4821958845481225483.Spec : Prop :=
  ∀ n, P4821958845481225483.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P16654848556709300068

`∑{d}[n+1, sqrt(A010121(#))]*A079458(n+1)`
-/

namespace A239611.P16654848556709300068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A010121 d : ℝ)) * (A079458 (n + 1) : ℝ)

end

end A239611.P16654848556709300068

namespace A239611

/-- `∑{d}[n+1, sqrt(A010121(#))]*A079458(n+1)` -/
def P16654848556709300068.Spec : Prop :=
  ∀ n, P16654848556709300068.a n = (A239611 (n + 1) : ℝ)

end A239611

/-! ## A239611.P3681845721420606659

`A000005(A087560(n+1)/2)*A079458(n+1)`
-/

namespace A239611.P3681845721420606659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A087560 (n + 1) : ℚ) / 2)).toNat * A079458 (n + 1)

end

end A239611.P3681845721420606659

namespace A239611

/-- `A000005(A087560(n+1)/2)*A079458(n+1)` -/
def P3681845721420606659.Spec : Prop :=
  ∀ n, P3681845721420606659.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P7840883180630474585

`A079458(n+1)*A320111(n+1)*A000034(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A239611

/-- `A079458(n+1)*A320111(n+1)*A000034(n)` -/
def P7840883180630474585.Spec : Prop :=
  ∀ n, P7840883180630474585.a n = A239611 (n + 1)

theorem P7840883180630474585.correct : P7840883180630474585.Spec := by
  intro n
  simp only [A239611, Nat.add_sub_cancel]

end A239611

/-! ## A239611.P1814629289378844681

`A204617(n+1)*A239614(n+1)*Δ[A049690(n)]`
-/

namespace A239611.P1814629289378844681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 (n + 1) * A239614 (n + 1) * (f1 (n + 1) - f1 n)

end

end A239611.P1814629289378844681

namespace A239611

/-- `A204617(n+1)*A239614(n+1)*Δ[A049690(n)]` -/
def P1814629289378844681.Spec : Prop :=
  ∀ n, P1814629289378844681.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P5269266094345311446

`(A320111(n+1)+A183063(n+1))*A079458(n+1)`
-/

namespace A239611.P5269266094345311446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A320111 (n + 1) + A183063 (n + 1)) * A079458 (n + 1)

end

end A239611.P5269266094345311446

namespace A239611

/-- `(A320111(n+1)+A183063(n+1))*A079458(n+1)` -/
def P5269266094345311446.Spec : Prop :=
  ∀ n, P5269266094345311446.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P17126292364865570298

`A069733(n+1)*A079458(n+1)*A204988(n+1)`
-/

namespace A239611.P17126292364865570298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (n + 1) * A079458 (n + 1) * A204988 (n + 1)

end

end A239611.P17126292364865570298

namespace A239611

/-- `A069733(n+1)*A079458(n+1)*A204988(n+1)` -/
def P17126292364865570298.Spec : Prop :=
  ∀ n, P17126292364865570298.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P9455738765985415803

`A062570(n+1)*A204617(n+1)*A239614(n+1)`
-/

namespace A239611.P9455738765985415803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) * A204617 (n + 1) * A239614 (n + 1)

end

end A239611.P9455738765985415803

namespace A239611

/-- `A062570(n+1)*A204617(n+1)*A239614(n+1)` -/
def P9455738765985415803.Spec : Prop :=
  ∀ n, P9455738765985415803.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P9787329524896965095

`A000005(A026741(n+1))*A040001(n+1)*A079458(n+1)`
-/

namespace A239611.P9787329524896965095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A026741 (n + 1)).toNat * A040001 (n + 1) * A079458 (n + 1)

end

end A239611.P9787329524896965095

namespace A239611

/-- `A000005(A026741(n+1))*A040001(n+1)*A079458(n+1)` -/
def P9787329524896965095.Spec : Prop :=
  ∀ n, P9787329524896965095.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P1492707779734916438

`A000010(2*(n+1))*A204617(n+1)*(A000035(n)+1)*A320111(n+1)`
-/

namespace A239611.P1492707779734916438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A204617 (n + 1) * ((A000035 n + 1) * A320111 (n + 1))

end

end A239611.P1492707779734916438

namespace A239611

/-- `A000010(2*(n+1))*A204617(n+1)*(A000035(n)+1)*A320111(n+1)` -/
def P1492707779734916438.Spec : Prop :=
  ∀ n, P1492707779734916438.a n = A239611 (n + 1)

end A239611

/-! ## A239611.P10221547866792071503

`A069157(A087560(n+1))*A079458(n+1)`
-/

namespace A239611.P10221547866792071503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A087560 (n + 1)).toNat * A079458 (n + 1)

end

end A239611.P10221547866792071503

namespace A239611

/-- `A069157(A087560(n+1))*A079458(n+1)` -/
def P10221547866792071503.Spec : Prop :=
  ∀ n, P10221547866792071503.a n = A239611 (n + 1)

end A239611

/-!
# A239612: a(n) = Sum_{0 < x,y,z <= n and gcd(x^2 + y^2 + z^2, n)=1} gcd(x^2 + y^2 + z^2 - 1, n).

The programs for A239612, there is no canonical definition to state claims against.
-/

/-! ## A239612.P13054818002990604527

`Δ[A240877(n)]*A239615(n+1)`
-/

namespace A239612.P13054818002990604527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A239615 (n + 1)

end

end A239612.P13054818002990604527

/-! ## A239612.P15814761472405152415

`A002618(n+1)*A239615(n+1)`
-/

namespace A239612.P15814761472405152415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) * A239615 (n + 1)

end

end A239612.P15814761472405152415

/-! ## A239612.P10255873211783548901

`A071118(n+1)/2*A239615(n+1)`
-/

namespace A239612.P10255873211783548901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / 2 * (A239615 (n + 1) : ℚ)

end

end A239612.P10255873211783548901

/-! ## A239612.P17692275855715321903

`(n+1)*A000010(n+1)*A239615(n+1)`
-/

namespace A239612.P17692275855715321903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000010 (n + 1) * A239615 (n + 1))

end

end A239612.P17692275855715321903

/-! ## A239612.P5506413808669881879

`A053191(n+1)/(n+1)*A239615(n+1)`
-/

namespace A239612.P5506413808669881879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (n + 1 : ℚ) * (A239615 (n + 1) : ℚ)

end

end A239612.P5506413808669881879

/-! ## A239612.P6357606616101498545

`A000010((n+1)²)*A239615(n+1)`
-/

namespace A239612.P6357606616101498545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2) * A239615 (n + 1)

end

end A239612.P6357606616101498545

/-! ## A239612.P12421583958151816032

`A026741(A071118(n+1))*A239615(n+1)`
-/

namespace A239612.P12421583958151816032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A071118 (n + 1)).toNat * A239615 (n + 1)

end

end A239612.P12421583958151816032

/-!
# A239613: a(n) = Sum_{0 < x,y,z,t <= n and gcd(x^2 + y^2 + z^2 + t^2, n)=1} gcd(x^2 + y^2 + z^2 + t^2 - 1, n).

The programs for A239613, the canonical program `A239613.P14059425188494653900` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239613 has offset 1).

The definition of A239613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239613.P14059425188494653900

`A000005(n+1)*A227499(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A239613

/-- `A000005(n+1)*A227499(n+1)` -/
def P14059425188494653900.Spec : Prop :=
  ∀ n, P14059425188494653900.a n = A239613 (n + 1)

theorem P14059425188494653900.correct : P14059425188494653900.Spec := by
  intro n
  simp only [A239613, Nat.add_sub_cancel]

end A239613

/-! ## A239613.P3009220212424576230

`A062355(n+1)*A208895(n+1)`
-/

namespace A239613.P3009220212424576230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (n + 1) * A208895 (n + 1)

end

end A239613.P3009220212424576230

namespace A239613

/-- `A062355(n+1)*A208895(n+1)` -/
def P3009220212424576230.Spec : Prop :=
  ∀ n, P3009220212424576230.a n = A239613 (n + 1)

end A239613

/-! ## A239613.P6075930256242926393

`A000005(n+1)*A000010(n+1)*A208895(n+1)`
-/

namespace A239613.P6075930256242926393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000010 (n + 1) * A208895 (n + 1)

end

end A239613.P6075930256242926393

namespace A239613

/-- `A000005(n+1)*A000010(n+1)*A208895(n+1)` -/
def P6075930256242926393.Spec : Prop :=
  ∀ n, P6075930256242926393.a n = A239613 (n + 1)

end A239613

/-! ## A239613.P356671634245283294

`A065430(2*(n+1))/3*A000010(n+1)*A000005(n+1)`
-/

namespace A239613.P356671634245283294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065430 (2 * (n + 1)) : ℚ) / 3 * (A000010 (n + 1) : ℚ) * (A000005 (n + 1) : ℚ)

end

end A239613.P356671634245283294

namespace A239613

/-- `A065430(2*(n+1))/3*A000010(n+1)*A000005(n+1)` -/
def P356671634245283294.Spec : Prop :=
  ∀ n, P356671634245283294.a n = (A239613 (n + 1) : ℚ)

end A239613

/-! ## A239613.P8853556851671436862

`A000056(2*(n+1))/6*A000010(n+1)*A000005(n+1)`
-/

namespace A239613.P8853556851671436862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (2 * (n + 1)) : ℚ) / 6 * (A000010 (n + 1) : ℚ) * (A000005 (n + 1) : ℚ)

end

end A239613.P8853556851671436862

namespace A239613

/-- `A000056(2*(n+1))/6*A000010(n+1)*A000005(n+1)` -/
def P8853556851671436862.Spec : Prop :=
  ∀ n, P8853556851671436862.a n = (A239613 (n + 1) : ℚ)

end A239613

/-! ## A239613.P15722829121924934183

`(n+1)*A023023(4*(n+1))*A000010(n+1)*Δ[A006218(n)]`
-/

namespace A239613.P15722829121924934183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023023 (4 * (n + 1)) * A000010 (n + 1) * (f1 (n + 1) - f1 n)

end

end A239613.P15722829121924934183

namespace A239613

/-- `(n+1)*A023023(4*(n+1))*A000010(n+1)*Δ[A006218(n)]` -/
def P15722829121924934183.Spec : Prop :=
  ∀ n, P15722829121924934183.a n = A239613 (n + 1)

end A239613

/-! ## A239613.P15397982216161628810

`(n+1)*A023023(4*(n+1))*A000010(n+1)*A000005(n+1)`
-/

namespace A239613.P15397982216161628810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023023 (4 * (n + 1)) * A000010 (n + 1) * A000005 (n + 1)

end

end A239613.P15397982216161628810

namespace A239613

/-- `(n+1)*A023023(4*(n+1))*A000010(n+1)*A000005(n+1)` -/
def P15397982216161628810.Spec : Prop :=
  ∀ n, P15397982216161628810.a n = A239613 (n + 1)

end A239613

/-! ## A239613.P9557011393769127286

`(n+1)*A023023(4*(n+1))*A000010(n+1)*A320111(A103517(n))`
-/

namespace A239613.P9557011393769127286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023023 (4 * (n + 1)) * A000010 (n + 1) * A320111 (A103517 n).toNat

end

end A239613.P9557011393769127286

namespace A239613

/-- `(n+1)*A023023(4*(n+1))*A000010(n+1)*A320111(A103517(n))` -/
def P9557011393769127286.Spec : Prop :=
  ∀ n, P9557011393769127286.a n = A239613 (n + 1)

end A239613

/-! ## A239613.P9980328842883721954

`(n+1)*A023023(4*(n+1))*A000010(n+1)*A026741(A062011(n+1))`
-/

namespace A239613.P9980328842883721954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023023 (4 * (n + 1)) * A000010 (n + 1) * A026741 (A062011 (n + 1)).toNat

end

end A239613.P9980328842883721954

namespace A239613

/-- `(n+1)*A023023(4*(n+1))*A000010(n+1)*A026741(A062011(n+1))` -/
def P9980328842883721954.Spec : Prop :=
  ∀ n, P9980328842883721954.a n = A239613 (n + 1)

end A239613

/-!
# A239614: a(n) = A239611(n) / A079458(n).

The programs for A239614, the canonical program `A239614.P8675786918159621361` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239614 has offset 1).

The definition of A239614 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, A239611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239614.P8675786918159621361

`A239611(n+1)/A079458(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A239614

/-- `A239611(n+1)/A079458(n+1)` -/
def P8675786918159621361.Spec : Prop :=
  ∀ n, P8675786918159621361.a n = (A239614 (n + 1) : ℚ)

end A239614

/-! ## A239614.P9405444663222308792

`∑{d}[n+1, sqrt(A010121(#))]`
-/

namespace A239614.P9405444663222308792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A010121 d : ℝ)

end

end A239614.P9405444663222308792

namespace A239614

/-- `∑{d}[n+1, sqrt(A010121(#))]` -/
def P9405444663222308792.Spec : Prop :=
  ∀ n, P9405444663222308792.a n = (A239614 (n + 1) : ℝ)

end A239614

/-! ## A239614.P4468909238345379201

`∑{d}[n+1, A177704(#-1)]`
-/

namespace A239614.P4468909238345379201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A177704 (d - 1)

end

end A239614.P4468909238345379201

namespace A239614

/-- `∑{d}[n+1, A177704(#-1)]` -/
def P4468909238345379201.Spec : Prop :=
  ∀ n, P4468909238345379201.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P15930342026101644996

`gcd(2, n+1)*A320111(n+1)`
-/

namespace A239614.P15930342026101644996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A320111 (n + 1)

end

end A239614.P15930342026101644996

namespace A239614

/-- `gcd(2, n+1)*A320111(n+1)` -/
def P15930342026101644996.Spec : Prop :=
  ∀ n, P15930342026101644996.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P16760483215911861975

`∑{d}[n+1, A007318(gcd(#, n-3))]`
-/

namespace A239614.P16760483215911861975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (Int.gcd (d : ℤ) ((n : ℤ) - 3))

end

end A239614.P16760483215911861975

namespace A239614

/-- `∑{d}[n+1, A007318(gcd(#, n-3))]` -/
def P16760483215911861975.Spec : Prop :=
  ∀ n, P16760483215911861975.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P16238878406925166226

`A000005(A087560(n+1)/2)`
-/

namespace A239614.P16238878406925166226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A087560 (n + 1) : ℚ) / 2)).toNat

end

end A239614.P16238878406925166226

namespace A239614

/-- `A000005(A087560(n+1)/2)` -/
def P16238878406925166226.Spec : Prop :=
  ∀ n, P16238878406925166226.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P4386900040096729510

`A000034(n)*A320111(n+1)`
-/

namespace A239614.P4386900040096729510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A320111 (n + 1)

end

end A239614.P4386900040096729510

namespace A239614

/-- `A000034(n)*A320111(n+1)` -/
def P4386900040096729510.Spec : Prop :=
  ∀ n, P4386900040096729510.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P13706354510232485918

`A320111(n+1)+A183063(n+1)`
-/

namespace A239614.P13706354510232485918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) + A183063 (n + 1)

end

end A239614.P13706354510232485918

namespace A239614

/-- `A320111(n+1)+A183063(n+1)` -/
def P13706354510232485918.Spec : Prop :=
  ∀ n, P13706354510232485918.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P4717715858365826378

`A062011(n+1)-A069733(n+1)`
-/

namespace A239614.P4717715858365826378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A069733 (n + 1)

end

end A239614.P4717715858365826378

namespace A239614

/-- `A062011(n+1)-A069733(n+1)` -/
def P4717715858365826378.Spec : Prop :=
  ∀ n, P4717715858365826378.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P10439630092573815307

`A069733(n+1)*A204988(n+1)`
-/

namespace A239614.P10439630092573815307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (n + 1) * A204988 (n + 1)

end

end A239614.P10439630092573815307

namespace A239614

/-- `A069733(n+1)*A204988(n+1)` -/
def P10439630092573815307.Spec : Prop :=
  ∀ n, P10439630092573815307.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P11360315781579502048

`(A000035(n)+1)*A320111(n+1)`
-/

namespace A239614.P11360315781579502048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A320111 (n + 1)

end

end A239614.P11360315781579502048

namespace A239614

/-- `(A000035(n)+1)*A320111(n+1)` -/
def P11360315781579502048.Spec : Prop :=
  ∀ n, P11360315781579502048.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P2527260232324248979

`A040001(n+1)*A320111(n+1)`
-/

namespace A239614.P2527260232324248979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A320111 (n + 1)

end

end A239614.P2527260232324248979

namespace A239614

/-- `A040001(n+1)*A320111(n+1)` -/
def P2527260232324248979.Spec : Prop :=
  ∀ n, P2527260232324248979.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P1334452811145835944

`2*A000005(n+1)-A069733(n+1)`
-/

namespace A239614.P1334452811145835944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - A069733 (n + 1)

end

end A239614.P1334452811145835944

namespace A239614

/-- `2*A000005(n+1)-A069733(n+1)` -/
def P1334452811145835944.Spec : Prop :=
  ∀ n, P1334452811145835944.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P8414898169106955221

`(A145390(n+1)+A069735(n+1))/2`
-/

namespace A239614.P8414898169106955221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145390 (n + 1) + A069735 (n + 1) : ℚ) / 2

end

end A239614.P8414898169106955221

namespace A239614

/-- `(A145390(n+1)+A069735(n+1))/2` -/
def P8414898169106955221.Spec : Prop :=
  ∀ n, P8414898169106955221.a n = (A239614 (n + 1) : ℚ)

end A239614

/-! ## A239614.P12329186422109691881

`2*A145393(n+1)-A145392(n+1)`
-/

namespace A239614.P12329186422109691881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145393 (n + 1) - A145392 (n + 1)

end

end A239614.P12329186422109691881

namespace A239614

/-- `2*A145393(n+1)-A145392(n+1)` -/
def P12329186422109691881.Spec : Prop :=
  ∀ n, P12329186422109691881.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P4893301752241654370

`∑{d}[n+1, A000005(#)*A154281((n+1)/#)]`
-/

namespace A239614.P4893301752241654370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A154281 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A239614.P4893301752241654370

namespace A239614

/-- `∑{d}[n+1, A000005(#)*A154281((n+1)/#)]` -/
def P4893301752241654370.Spec : Prop :=
  ∀ n, P4893301752241654370.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P16241741604180879627

`∑{d}[n+1, A008836(#)*A307000((n+1)/#)]`
-/

namespace A239614.P16241741604180879627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A307000 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A239614.P16241741604180879627

namespace A239614

/-- `∑{d}[n+1, A008836(#)*A307000((n+1)/#)]` -/
def P16241741604180879627.Spec : Prop :=
  ∀ n, P16241741604180879627.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P2081387104496084842

`∑{d}[n+1, A065704(#)*A359592((n+1)/#)]`
-/

namespace A239614.P2081387104496084842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A359592 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A239614.P2081387104496084842

namespace A239614

/-- `∑{d}[n+1, A065704(#)*A359592((n+1)/#)]` -/
def P2081387104496084842.Spec : Prop :=
  ∀ n, P2081387104496084842.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P12749554678953495662

`∑{d}[n+1, A323308(#)*A353628((n+1)/#)]`
-/

namespace A239614.P12749554678953495662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323308 d * A353628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A239614.P12749554678953495662

namespace A239614

/-- `∑{d}[n+1, A323308(#)*A353628((n+1)/#)]` -/
def P12749554678953495662.Spec : Prop :=
  ∀ n, P12749554678953495662.a n = A239614 (n + 1)

end A239614

/-! ## A239614.P826671262104910422

`A006530(and(n+1, -(n+1)))*A320111(n+1)`
-/

namespace A239614.P826671262104910422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat * A320111 (n + 1)

end

end A239614.P826671262104910422

namespace A239614

/-- `A006530(and(n+1, -(n+1)))*A320111(n+1)` -/
def P826671262104910422.Spec : Prop :=
  ∀ n, P826671262104910422.a n = A239614 (n + 1)

end A239614

/-!
# A239615: a(n) = n * A239612(n) / A053191(n).

The programs for A239615, there is no canonical definition to state claims against.
-/

/-! ## A239615.P9391604879003963144

`(n+1)*A239612(n+1)/A053191(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239615.P9391604879003963144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A239612 (n + 1) : ℚ) / (A053191 (n + 1) : ℚ)

end

end A239615.P9391604879003963144

/-! ## A239615.P16959774036006555231

`A239612(n+1)/Δ[A240877(n)]`
-/

namespace A239615.P16959774036006555231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239612 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A239615.P16959774036006555231

/-! ## A239615.P4023493421125602462

`A239612(n+1)/A002618(n+1)`
-/

namespace A239615.P4023493421125602462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239612 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A239615.P4023493421125602462

/-! ## A239615.P6946476106361428416

`A239612(n+1)/((n+1)*A000010(n+1))`
-/

namespace A239615.P6946476106361428416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239612 (n + 1) : ℚ) / ((n + 1 : ℤ) * A000010 (n + 1) : ℚ)

end

end A239615.P6946476106361428416

/-! ## A239615.P9749330370477354314

`A239612(n+1)/A000010((n+1)²)`
-/

namespace A239615.P9749330370477354314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239612 (n + 1) : ℚ) / (A000010 ((n + 1) ^ 2) : ℚ)

end

end A239615.P9749330370477354314

/-!
# A239616: Numbers that end in the trivial cycle (0) under the rule: next term = product of the last four digits of the concatenated preceding terms.

The programs for A239616, there is no canonical definition to state claims against.
-/

/-! ## A239616.P8045535931022075545

`record[A139327(n+1)-A297248(n+1)]`
-/

namespace A239616.P8045535931022075545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139327 (n + 1) - A297248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239616.P8045535931022075545

/-!
# A239617: Number of ways to write 2*n = p + q with p, q and pi(2*p) - pi(p) all prime, where pi(x) denotes the number of primes not exceeding x.

The programs for A239617, there is no canonical definition to state claims against.
-/

/-! ## A239617.P13892848306207100270

`A031346(A052955(n)+A020992(n))`
-/

namespace A239617.P13892848306207100270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A052955 n + A020992 n).toNat

end

end A239617.P13892848306207100270

/-! ## A239617.P328089116299769278

`A001222(xor(A002265(n), A014981(n+1)))`
-/

namespace A239617.P328089116299769278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A002265 n) (A014981 (n + 1))).toNat

end

end A239617.P328089116299769278

/-! ## A239617.P5389864966612026307

`A031346(A237271(3*(n+1))+A005318(n))`
-/

namespace A239617.P5389864966612026307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A237271 (3 * (n + 1)) + A005318 n).toNat

end

end A239617.P5389864966612026307

/-!
# A239618: Number of primitive Euler bricks with side length a < b < c < 10^n, i.e., in a boxed parameter space with dimension 10^n.

The programs for A239618, there is no canonical definition to state claims against.
-/

/-! ## A239618.P16197411917381459882

`3^n-A210535(A273688(n))`
-/

namespace A239618.P16197411917381459882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A210535 (A273688 n).toNat

end

end A239618.P16197411917381459882

/-! ## A239618.P7062905666068352254

`A000984(n)-A113398(A113409(n+2))`
-/

namespace A239618.P7062905666068352254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A113398 (A113409 (n + 2)).toNat

end

end A239618.P7062905666068352254

/-!
# A239619: Base 3 sum of digits of prime(n).

The programs for A239619, the canonical program `A239619.P15559327982944587006` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239619 has offset 1).

The definition of A239619 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239619.P15559327982944587006

`A053735(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239619

/-- `A053735(A000040(n+1))` -/
def P15559327982944587006.Spec : Prop :=
  ∀ n, P15559327982944587006.a n = A239619 (n + 1)

theorem P15559327982944587006.correct : P15559327982944587006.Spec := by
  intro n
  simp only [A239619, Nat.add_sub_cancel]

end A239619

/-! ## A239619.P11304319589509592970

`∑{digits}[A001363(n+1), #]`
-/

namespace A239619.P11304319589509592970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239619.P11304319589509592970

namespace A239619

/-- `∑{digits}[A001363(n+1), #]` -/
def P11304319589509592970.Spec : Prop :=
  ∀ n, (P11304319589509592970.a n : ℤ) = A239619 (n + 1)

end A239619

/-! ## A239619.P6858585869677057555

`A073780(n+1)+2*A073781(n+1)`
-/

namespace A239619.P6858585869677057555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073780 (n + 1) + 2 * A073781 (n + 1)

end

end A239619.P6858585869677057555

namespace A239619

/-- `A073780(n+1)+2*A073781(n+1)` -/
def P6858585869677057555.Spec : Prop :=
  ∀ n, P6858585869677057555.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P3507128036294098670

`A056239(A331279(A008578(n+2)))`
-/

namespace A239619.P3507128036294098670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 (A008578 (n + 2)).toNat).toNat

end

end A239619.P3507128036294098670

namespace A239619

/-- `A056239(A331279(A008578(n+2)))` -/
def P3507128036294098670.Spec : Prop :=
  ∀ n, P3507128036294098670.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P13414422969812932327

`A053735(Δ[A007504(n)])`
-/

namespace A239619.P13414422969812932327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (f1 (n + 1) - f1 n).toNat

end

end A239619.P13414422969812932327

namespace A239619

/-- `A053735(Δ[A007504(n)])` -/
def P13414422969812932327.Spec : Prop :=
  ∀ n, P13414422969812932327.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P10807175057356452377

`A053735(A008578(n+2))`
-/

namespace A239619.P10807175057356452377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008578 (n + 2)).toNat

end

end A239619.P10807175057356452377

namespace A239619

/-- `A053735(A008578(n+2))` -/
def P10807175057356452377.Spec : Prop :=
  ∀ n, P10807175057356452377.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P18325232752466023979

`A053735(A182986(n+2))`
-/

namespace A239619.P18325232752466023979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A182986 (n + 2)).toNat

end

end A239619.P18325232752466023979

namespace A239619

/-- `A053735(A182986(n+2))` -/
def P18325232752466023979.Spec : Prop :=
  ∀ n, P18325232752466023979.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P12729070791837192483

`A053735(record[A006530(n+2)])`
-/

namespace A239619.P12729070791837192483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239619.P12729070791837192483

namespace A239619

/-- `A053735(record[A006530(n+2)])` -/
def P12729070791837192483.Spec : Prop :=
  ∀ n, P12729070791837192483.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P11232713045508476826

`A053735(record[A014963(n+2)])`
-/

namespace A239619.P11232713045508476826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239619.P11232713045508476826

namespace A239619

/-- `A053735(record[A014963(n+2)])` -/
def P11232713045508476826.Spec : Prop :=
  ∀ n, P11232713045508476826.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P9897296162609136979

`A053735(record[A020639(n+2)])`
-/

namespace A239619.P9897296162609136979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239619.P9897296162609136979

namespace A239619

/-- `A053735(record[A020639(n+2)])` -/
def P9897296162609136979.Spec : Prop :=
  ∀ n, P9897296162609136979.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P18227169672036242810

`∑{digits}[A007089(Δ[A007504(n)]), #]`
-/

namespace A239619.P18227169672036242810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239619.P18227169672036242810

namespace A239619

/-- `∑{digits}[A007089(Δ[A007504(n)]), #]` -/
def P18227169672036242810.Spec : Prop :=
  ∀ n, (P18227169672036242810.a n : ℤ) = A239619 (n + 1)

end A239619

/-! ## A239619.P17164986824312674330

`∑{digits}[A007089(p?[A014681(n)]), #]`
-/

namespace A239619.P17164986824312674330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239619.P17164986824312674330

namespace A239619

/-- `∑{digits}[A007089(p?[A014681(n)]), #]` -/
def P17164986824312674330.Spec : Prop :=
  ∀ n, (P17164986824312674330.a n : ℤ) = A239619 (n + 1)

end A239619

/-! ## A239619.P16452862558373503048

`A053735(A052147(n+1)-2)`
-/

namespace A239619.P16452862558373503048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A052147 (n + 1) - 2).toNat

end

end A239619.P16452862558373503048

namespace A239619

/-- `A053735(A052147(n+1)-2)` -/
def P16452862558373503048.Spec : Prop :=
  ∀ n, P16452862558373503048.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P16764244904056196715

`∑{digits}[A007089(p?[A003277(n+1)]), #]`
-/

namespace A239619.P16764244904056196715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239619.P16764244904056196715

namespace A239619

/-- `∑{digits}[A007089(p?[A003277(n+1)]), #]` -/
def P16764244904056196715.Spec : Prop :=
  ∀ n, (P16764244904056196715.a n : ℤ) = A239619 (n + 1)

end A239619

/-! ## A239619.P13045064328808667547

`∑{digits}[A007089(record[A006530(n+2)]), #]`
-/

namespace A239619.P13045064328808667547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239619.P13045064328808667547

namespace A239619

/-- `∑{digits}[A007089(record[A006530(n+2)]), #]` -/
def P13045064328808667547.Spec : Prop :=
  ∀ n, (P13045064328808667547.a n : ℤ) = A239619 (n + 1)

end A239619

/-! ## A239619.P6467289661836628829

`∑{digits}[A007089(record[A014963(n+2)]), #]`
-/

namespace A239619.P6467289661836628829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239619.P6467289661836628829

namespace A239619

/-- `∑{digits}[A007089(record[A014963(n+2)]), #]` -/
def P6467289661836628829.Spec : Prop :=
  ∀ n, (P6467289661836628829.a n : ℤ) = A239619 (n + 1)

end A239619

/-! ## A239619.P16121167846986923597

`∑{digits}[A007089(record[A020639(n+2)]), #]`
-/

namespace A239619.P16121167846986923597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239619.P16121167846986923597

namespace A239619

/-- `∑{digits}[A007089(record[A020639(n+2)]), #]` -/
def P16121167846986923597.Spec : Prop :=
  ∀ n, (P16121167846986923597.a n : ℤ) = A239619 (n + 1)

end A239619

/-! ## A239619.P4387447485629500248

`A053735(eq[1, A010051(n+1)]+1)`
-/

namespace A239619.P4387447485629500248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239619.P4387447485629500248

namespace A239619

/-- `A053735(eq[1, A010051(n+1)]+1)` -/
def P4387447485629500248.Spec : Prop :=
  ∀ n, P4387447485629500248.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P15636806596751293055

`A053735(eq[2, A000005(n+1)]+1)`
-/

namespace A239619.P15636806596751293055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239619.P15636806596751293055

namespace A239619

/-- `A053735(eq[2, A000005(n+1)]+1)` -/
def P15636806596751293055.Spec : Prop :=
  ∀ n, P15636806596751293055.a n = A239619 (n + 1)

end A239619

/-! ## A239619.P12029875353078355970

`A134599(A000040(2*n+1-n))`
-/

namespace A239619.P12029875353078355970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134599 (A000040 (2 * n + 1 - n)).toNat

end

end A239619.P12029875353078355970

namespace A239619

/-- `A134599(A000040(2*n+1-n))` -/
def P12029875353078355970.Spec : Prop :=
  ∀ n, P12029875353078355970.a n = A239619 (n + 1)

end A239619

/-!
# A239620: Number of Euler bricks with side length a < b < c < 10^n, i.e., in a boxed parameter space with dimension 10^n.

The programs for A239620, there is no canonical definition to state claims against.
-/

/-! ## A239620.P13249852738187871658

`A261954(A237019(n))%A237019(n)`
-/

namespace A239620.P13249852738187871658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261954 (A237019 n).toNat) (A237019 n)

end

end A239620.P13249852738187871658

/-!
# A239621: Gaussian primes x + i*y, with x = a(2n-1) >= y = a(2n) >= 0, sorted by norm.

The programs for A239621, there is no canonical definition to state claims against.
-/

/-! ## A239621.P17358311568058386153

`A239397(comp[2*n+3]+1)`
-/

namespace A239621.P17358311568058386153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A239621.P17358311568058386153

/-! ## A239621.P11415825169475649703

`A239397(A004280(n+1))%(n+2)`
-/

namespace A239621.P11415825169475649703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239397 (A004280 (n + 1)).toNat) (n + 2 : ℤ)

end

end A239621.P11415825169475649703

/-! ## A239621.P17220682339104591774

`abs(A033999(n)*A239397(A004280(n+1)))`
-/

namespace A239621.P17220682339104591774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A239397 (A004280 (n + 1)).toNat|

end

end A239621.P17220682339104591774

/-! ## A239621.P13500186464913732927

`A239397(A004280(n+1))+A000007(n+1)`
-/

namespace A239621.P13500186464913732927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (A004280 (n + 1)).toNat + A000007 (n + 1)

end

end A239621.P13500186464913732927

/-! ## A239621.P11004107861442114180

`A239397(A004280(n+1))+A000038(n+1)`
-/

namespace A239621.P11004107861442114180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (A004280 (n + 1)).toNat + A000038 (n + 1)

end

end A239621.P11004107861442114180

/-! ## A239621.P1803146527398901446

`abs(A057428(n+1)*A239397(A004280(n+1)))`
-/

namespace A239621.P1803146527398901446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 (n + 1) * A239397 (A004280 (n + 1)).toNat|

end

end A239621.P1803146527398901446

/-! ## A239621.P7521578462899324861

`A239397(A004280(n+1))*A348507(A240233(n+1))`
-/

namespace A239621.P7521578462899324861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (A004280 (n + 1)).toNat * A348507 (A240233 (n + 1)).toNat

end

end A239621.P7521578462899324861

/-! ## A239621.P7623492221229532317

`A007318(A020639(2*(n+1)))*A239397(A004280(n+1))`
-/

namespace A239621.P7623492221229532317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A239397 (A004280 (n + 1)).toNat

end

end A239621.P7623492221229532317

/-! ## A239621.P16231984339762003821

`A239397(A004280(n+1))+A000035(2*n)`
-/

namespace A239621.P16231984339762003821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239397 (A004280 (n + 1)).toNat + A000035 (2 * n)

end

end A239621.P16231984339762003821

/-! ## A239621.P11227083644671156655

`A006519(2*n+1)*A239397(A004280(n+1))`
-/

namespace A239621.P11227083644671156655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A239397 (A004280 (n + 1)).toNat

end

end A239621.P11227083644671156655

/-! ## A239621.P942835812715064627

`A302031(A302036(n+1))!*A239397(A004280(n+1))`
-/

namespace A239621.P942835812715064627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A302031 (A302036 (n + 1)).toNat).toNat : ℤ) * A239397 (A004280 (n + 1)).toNat

end

end A239621.P942835812715064627

/-! ## A239621.P7437121268538375111

`A239397(A004280(n+1))^A008683(A001748(n+1))`
-/

namespace A239621.P7437121268538375111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239397 (A004280 (n + 1)).toNat : ℚ) ^ (A008683 (A001748 (n + 1)).toNat : ℤ)

end

end A239621.P7437121268538375111

/-! ## A239621.P12490671714682979076

`abs(A106400(3*n)*A239397(A004280(n+1)))`
-/

namespace A239621.P12490671714682979076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106400 (3 * n) * A239397 (A004280 (n + 1)).toNat|

end

end A239621.P12490671714682979076

/-! ## A239621.P17670500498271805987

`dr(A094267(n²))*A239397(A004280(n+1))`
-/

namespace A239621.P17670500498271805987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A094267 (n ^ 2)) : ℤ) * A239397 (A004280 (n + 1)).toNat

end

end A239621.P17670500498271805987

/-!
# A239623: Conjecturally, the largest k such that prime(n)^2 is the largest squared prime divisor of binomial(2k,k).

The programs for A239623, there is no canonical definition to state claims against.
-/

/-! ## A239623.P6300563600846629143

`A239622(∑[A239624(n)]-1)`
-/

namespace A239623.P6300563600846629143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239622 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A239623.P6300563600846629143

/-! ## A239623.P5349514575353388003

`A239622(lt[A239622(n+1), A239622(n)])`
-/

namespace A239623.P5349514575353388003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239622 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239623.P5349514575353388003

/-!
# A239626: Factored over the Gaussian integers, n has a(n) prime factors counted multiply, including units -1, i, and -i.

The programs for A239626, there is no canonical definition to state claims against.
-/

/-! ## A239626.P12570513706659872247

`A078458(n+1)+A239627(n+1)-A086275(n+1)`
-/

namespace A239626.P12570513706659872247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (n + 1) + (A239627 (n + 1) - A086275 (n + 1))

end

end A239626.P12570513706659872247

/-! ## A239626.P15068761159611404559

`A296338(A027642(3*n+4))+A078458(n+1)`
-/

namespace A239626.P15068761159611404559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296338 (A027642 (3 * n + 4)).toNat + A078458 (n + 1)

end

end A239626.P15068761159611404559

/-!
# A239627: Factored over the Gaussian integers, n has a(n) distinct prime factors, including units -1, i, and -i.

The programs for A239627, there is no canonical definition to state claims against.
-/

/-! ## A239627.P17157272708461432964

`A086275(n+1)+A239626(n+1)-A078458(n+1)`
-/

namespace A239627.P17157272708461432964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (n + 1) + (A239626 (n + 1) - A078458 (n + 1))

end

end A239627.P17157272708461432964

/-! ## A239627.P4599915013144107353

`A115580(A046099(n+2))`
-/

namespace A239627.P4599915013144107353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115580 (A046099 (n + 2)).toNat

end

end A239627.P4599915013144107353

/-! ## A239627.P1102411576225035080

`A115580(A375145(n+2))`
-/

namespace A239627.P1102411576225035080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115580 (A375145 (n + 2)).toNat

end

end A239627.P1102411576225035080

/-! ## A239627.P12322771922570898061

`gcd(A212628(n+1), A257684(2^n))`
-/

namespace A239627.P12322771922570898061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212628 (n + 1)) (A257684 (2 ^ n))

end

end A239627.P12322771922570898061

/-! ## A239627.P14345149094652955881

`A283437(A002910(n))+A086275(n+1)`
-/

namespace A239627.P14345149094652955881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283437 (A002910 n).toNat + A086275 (n + 1)

end

end A239627.P14345149094652955881

/-!
# A239629: Factored over the Gaussian integers, the least positive number having n prime factors, including units -1, i, and -i.

The programs for A239629, there is no canonical definition to state claims against.
-/

/-! ## A239629.P16168092892368032644

`A018429(A005574(n+1))`
-/

namespace A239629.P16168092892368032644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018429 (A005574 (n + 1)).toNat

end

end A239629.P16168092892368032644

/-! ## A239629.P3177733768444065854

`A018429(A191113(n+1))`
-/

namespace A239629.P3177733768444065854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018429 (A191113 (n + 1)).toNat

end

end A239629.P3177733768444065854

/-! ## A239629.P11274093577897238443

`A018429(eq[2, A193432(n)])`
-/

namespace A239629.P11274093577897238443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239629.P11274093577897238443

/-!
# A239630: Factored over the Gaussian integers, the least number having n prime factors, excluding units 1, -1, i, and -i.

The programs for A239630, there is no canonical definition to state claims against.
-/

/-! ## A239630.P15161647437300314334

`A323019(n+3)/4`
-/

namespace A239630.P15161647437300314334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323019 (n + 3) : ℚ) / 4

end

end A239630.P15161647437300314334

/-! ## A239630.P9888588500848556095

`A018642(A019359(n+1))`
-/

namespace A239630.P9888588500848556095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018642 (A019359 (n + 1)).toNat

end

end A239630.P9888588500848556095

/-!
# A239631: Triangular array read by rows: T(n,k) is the number of parts equal to k over all palindromic compositions of n, n>=1, 1<=k<=n.

The programs for A239631, there is no canonical definition to state claims against.
-/

/-! ## A239631.P17115527400151283877

`A219644(A299779(n+1)^3)-A016193(A156348(n+1))`
-/

namespace A239631.P17115527400151283877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 (A299779 (n + 1) ^ 3).toNat - A016193 (A156348 (n + 1)).toNat

end

end A239631.P17115527400151283877

/-! ## A239631.P5036532658789492797

`A207031(n+1)-A252742(A090344(n))`
-/

namespace A239631.P5036532658789492797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207031 (n + 1) - A252742 (A090344 n).toNat

end

end A239631.P5036532658789492797

/-! ## A239631.P17731142001589871956

`A168021(n+1)+A083025(A003040(n+1))`
-/

namespace A239631.P17731142001589871956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168021 (n + 1) + A083025 (A003040 (n + 1)).toNat

end

end A239631.P17731142001589871956

/-! ## A239631.P6147936083374608713

`A307598(A118980(n+1))+A168021(n+1)`
-/

namespace A239631.P6147936083374608713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A118980 (n + 1)).toNat + A168021 (n + 1)

end

end A239631.P6147936083374608713

/-!
# A239632: Number of parts in all palindromic compositions of n.

The programs for A239632, the canonical program `A239632.P14830643779705531716` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239632 has offset 0).

The definition of A239632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239632.P14830643779705531716

`4*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239632

/-- `4*a(n-2)-4*a(n-4)` -/
def P14830643779705531716.Spec : Prop :=
  ∀ n, P14830643779705531716.a n = A239632 n

theorem P14830643779705531716.correct : P14830643779705531716.Spec := by
  intro n
  simp only [A239632]

end A239632

/-! ## A239632.P9802586182043943136

`(n+1)*a(n-1)/gcd(n, ∑[n])` with `a(0)=0, a(1)=1`
-/

namespace A239632.P9802586182043943136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A239632.P9802586182043943136

namespace A239632

/-- `(n+1)*a(n-1)/gcd(n, ∑[n])` -/
def P9802586182043943136.Spec : Prop :=
  ∀ n, P9802586182043943136.a n = (A239632 n : ℚ)

end A239632

/-! ## A239632.P12572108819353985941

`floor((n+1)*2^∑[a(n-2)²])` with `a(0)=-1, a(1)=0`
-/

namespace A239632.P12572108819353985941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A239632.P12572108819353985941

namespace A239632

/-- `floor((n+1)*2^∑[a(n-2)²])` -/
def P12572108819353985941.Spec : Prop :=
  ∀ n, P12572108819353985941.a n = A239632 n

end A239632

/-! ## A239632.P281700136838732740

`(n+1)*gcd(2*a(n-2), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A239632.P281700136838732740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1) * Nat.gcd (2 * a (n - 2)) (a (n - 1))

end

end A239632.P281700136838732740

namespace A239632

/-- `(n+1)*gcd(2*a(n-2), a(n-1))` -/
def P281700136838732740.Spec : Prop :=
  ∀ n, (P281700136838732740.a n : ℤ) = A239632 n

end A239632

/-! ## A239632.P14187712469427991193

`(n+1)/2*A131572(n)`
-/

namespace A239632.P14187712469427991193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A131572 n : ℚ)

end

end A239632.P14187712469427991193

namespace A239632

/-- `(n+1)/2*A131572(n)` -/
def P14187712469427991193.Spec : Prop :=
  ∀ n, P14187712469427991193.a n = (A239632 n : ℚ)

end A239632

/-! ## A239632.P13657213556222504648

`floor((n+1)/2*A016116(n))`
-/

namespace A239632.P13657213556222504648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (A016116 n : ℚ)⌋

end

end A239632.P13657213556222504648

namespace A239632

/-- `floor((n+1)/2*A016116(n))` -/
def P13657213556222504648.Spec : Prop :=
  ∀ n, P13657213556222504648.a n = A239632 n

end A239632

/-! ## A239632.P17245427722581270327

`A158780(n)*A181440(n+1)`
-/

namespace A239632.P17245427722581270327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n * A181440 (n + 1)

end

end A239632.P17245427722581270327

namespace A239632

/-- `A158780(n)*A181440(n+1)` -/
def P17245427722581270327.Spec : Prop :=
  ∀ n, P17245427722581270327.a n = A239632 n

end A239632

/-! ## A239632.P4821036197241462493

`A158780(n)*A184985(n+1)`
-/

namespace A239632.P4821036197241462493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n * A184985 (n + 1)

end

end A239632.P4821036197241462493

namespace A239632

/-- `A158780(n)*A184985(n+1)` -/
def P4821036197241462493.Spec : Prop :=
  ∀ n, P4821036197241462493.a n = A239632 n

end A239632

/-! ## A239632.P15423747537469906296

`record[n/A266447(n)]*A016116(n)`
-/

namespace A239632.P15423747537469906296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A266447 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A016116 n : ℚ)

end

end A239632.P15423747537469906296

namespace A239632

/-- `record[n/A266447(n)]*A016116(n)` -/
def P15423747537469906296.Spec : Prop :=
  ∀ n, P15423747537469906296.a n = (A239632 n : ℚ)

end A239632

/-! ## A239632.P5708691747365655988

`floor((n+1)/2*A011782(A008619(n)))`
-/

namespace A239632.P5708691747365655988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (A011782 (A008619 n).toNat : ℚ)⌋

end

end A239632.P5708691747365655988

namespace A239632

/-- `floor((n+1)/2*A011782(A008619(n)))` -/
def P5708691747365655988.Spec : Prop :=
  ∀ n, P5708691747365655988.a n = A239632 n

end A239632

/-! ## A239632.P8767767447696046085

`∪[A128135(n+1), A001787(n)]`
-/

namespace A239632.P8767767447696046085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239632.P8767767447696046085

namespace A239632

/-- `∪[A128135(n+1), A001787(n)]` -/
def P8767767447696046085.Spec : Prop :=
  ∀ n, (P8767767447696046085.a n : ℤ) = A239632 n

end A239632

/-! ## A239632.P13511083917783682267

`n/A004275(n+1)*A093968(n+1)`
-/

namespace A239632.P13511083917783682267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004275 (n + 1) : ℚ) * (A093968 (n + 1) : ℚ)

end

end A239632.P13511083917783682267

namespace A239632

/-- `n/A004275(n+1)*A093968(n+1)` -/
def P13511083917783682267.Spec : Prop :=
  ∀ n, P13511083917783682267.a n = (A239632 n : ℚ)

end A239632

/-! ## A239632.P1973147351533525115

`floor((n+1)*A000079(A002265(2*n))/2)`
-/

namespace A239632.P1973147351533525115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A000079 (A002265 (2 * n)).toNat : ℚ) / 2⌋

end

end A239632.P1973147351533525115

namespace A239632

/-- `floor((n+1)*A000079(A002265(2*n))/2)` -/
def P1973147351533525115.Spec : Prop :=
  ∀ n, P1973147351533525115.a n = A239632 n

end A239632

/-! ## A239632.P17095852461035387297

`floor(((n+1)*∏[gcd(2, n)]+1)/4)`
-/

namespace A239632.P17095852461035387297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℚ) / 4⌋

end

end A239632.P17095852461035387297

namespace A239632

/-- `floor(((n+1)*∏[gcd(2, n)]+1)/4)` -/
def P17095852461035387297.Spec : Prop :=
  ∀ n, P17095852461035387297.a n = A239632 n

end A239632

/-! ## A239632.P1727184893189998717

`lcm(2, n+1)*a(n-1)/n` with `a(0)=0, a(1)=1`
-/

namespace A239632.P1727184893189998717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.lcm 2 (n + 1) : ℚ) * a (n - 1) / (n : ℚ)

end

end A239632.P1727184893189998717

namespace A239632

/-- `lcm(2, n+1)*a(n-1)/n` -/
def P1727184893189998717.Spec : Prop :=
  ∀ n, P1727184893189998717.a n = (A239632 n : ℚ)

end A239632

/-! ## A239632.P3840945536229352858

`(A045623(n)-A011782(n))/A158780(n+1)`
-/

namespace A239632.P3840945536229352858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045623 n - A011782 n : ℚ) / (A158780 (n + 1) : ℚ)

end

end A239632.P3840945536229352858

namespace A239632

/-- `(A045623(n)-A011782(n))/A158780(n+1)` -/
def P3840945536229352858.Spec : Prop :=
  ∀ n, P3840945536229352858.a n = (A239632 n : ℚ)

end A239632

/-! ## A239632.P13608883444397609942

`A027271(n)%A060647(n)`
-/

namespace A239632.P13608883444397609942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027271 n) (A060647 n)

end

end A239632.P13608883444397609942

namespace A239632

/-- `A027271(n)%A060647(n)` -/
def P13608883444397609942.Spec : Prop :=
  ∀ n, P13608883444397609942.a n = A239632 n

end A239632

/-!
# A239633: Triangle read by rows: T(n,k) = A059384(n)/(A059384(k)*A059384(n-k)).

The programs for A239633, there is no canonical definition to state claims against.
-/

/-! ## A239633.P13749250222884284545

`A059378(A094526(n*A174544(n)))`
-/

namespace A239633.P13749250222884284545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059378 (A094526 ((n : ℤ) * A174544 n).toNat).toNat

end

end A239633.P13749250222884284545

/-! ## A239633.P10024667376609524795

`A059378(A309876(n*A061674(n)))`
-/

namespace A239633.P10024667376609524795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059378 (A309876 ((n : ℤ) * A061674 n).toNat).toNat

end

end A239633.P10024667376609524795

/-! ## A239633.P10656719594304456550

`A059378(A309876(n*A174544(n)))`
-/

namespace A239633.P10656719594304456550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059378 (A309876 ((n : ℤ) * A174544 n).toNat).toNat

end

end A239633.P10656719594304456550

/-! ## A239633.P5551309271657036461

`A059378(A094526(n)^A061674(n))`
-/

namespace A239633.P5551309271657036461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059378 (SequenceMachineLib.roundAway ((A094526 n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A239633.P5551309271657036461

/-! ## A239633.P13915351824321002412

`A059378(A077028(n)^A174544(n))`
-/

namespace A239633.P13915351824321002412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059378 (SequenceMachineLib.roundAway ((A077028 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A239633.P13915351824321002412

/-!
# A239634: Initial digits of semiprimes in decimal representation.

The programs for A239634, there is no canonical definition to state claims against.
-/

/-! ## A239634.P8092693467124288834

`A210616(n+1)%10`
-/

namespace A239634.P8092693467124288834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210616 (n + 1)) 10

end

end A239634.P8092693467124288834

/-! ## A239634.P15105189911022584776

`A004086(A001358(n+1))%10`
-/

namespace A239634.P15105189911022584776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A001358 (n + 1)).toNat) 10

end

end A239634.P15105189911022584776

/-! ## A239634.P6966552762858921237

`A077649(A176193(n+1))`
-/

namespace A239634.P6966552762858921237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077649 (A176193 (n + 1)).toNat

end

end A239634.P6966552762858921237

/-! ## A239634.P4735121162120090044

`A000030(A001358(n+1)-A024326(n+1))`
-/

namespace A239634.P4735121162120090044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A001358 (n + 1) - A024326 (n + 1)).toNat

end

end A239634.P4735121162120090044

/-! ## A239634.P3667147891841700648

`A000030(xor(A001358(n+1), A024326(n+1)))`
-/

namespace A239634.P3667147891841700648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.xor (A001358 (n + 1)) (A024326 (n + 1))).toNat

end

end A239634.P3667147891841700648

/-! ## A239634.P11181744950403462522

`A000030(A001358(n+1)-A004601(3*n+4))`
-/

namespace A239634.P11181744950403462522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A001358 (n + 1) - A004601 (3 * n + 4)).toNat

end

end A239634.P11181744950403462522

/-! ## A239634.P5615128315301140564

`A000030(A001358(n+1))`
-/

namespace A239634.P5615128315301140564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A001358 (n + 1)).toNat

end

end A239634.P5615128315301140564

/-! ## A239634.P481950930294863099

`A010879(A210616(n+1))`
-/

namespace A239634.P481950930294863099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A210616 (n + 1)).toNat

end

end A239634.P481950930294863099

/-! ## A239634.P13481484424621966832

`A000030(A176540(n+2))`
-/

namespace A239634.P13481484424621966832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A176540 (n + 2)).toNat

end

end A239634.P13481484424621966832

/-! ## A239634.P5273826245153489716

`A000030(eq[2, A226378(n)])`
-/

namespace A239634.P5273826245153489716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239634.P5273826245153489716

/-! ## A239634.P10168548590471580986

`A000030(A186621(n+1)+1)`
-/

namespace A239634.P10168548590471580986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A186621 (n + 1) + 1).toNat

end

end A239634.P10168548590471580986

/-! ## A239634.P272081731081701195

`A000030(eq[2, A001222(n+1)]+1)`
-/

namespace A239634.P272081731081701195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239634.P272081731081701195

/-! ## A239634.P13055935469618639453

`A000030(eq[2, A318322(n+1)]+1)`
-/

namespace A239634.P13055935469618639453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239634.P13055935469618639453

/-!
# A239635: Common Sigma, Uncommon Clique Numbers: a(n) is the minimal s for which there exists a set of n pairwise relatively prime integers with a sigma value of s.

The programs for A239635, there is no canonical definition to state claims against.
-/

/-! ## A239635.P7339457615520309352

`A145899(record[A353846(3*n+4)])`
-/

namespace A239635.P7339457615520309352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145899 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239635.P7339457615520309352

/-! ## A239635.P10517183416219081803

`record[gcd(A145899(n+1), A339218(n))]`
-/

namespace A239635.P10517183416219081803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145899 (n + 1)) (A339218 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239635.P10517183416219081803

/-! ## A239635.P1303128881212252632

`∩[A145899(n+1), A308560(n+1)]`
-/

namespace A239635.P1303128881212252632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239635.P1303128881212252632

/-!
# A239636: Distance between the two occurrences of n-th prime in A082500.

The programs for A239636, the canonical program `A239636.P9315992942707104834` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239636 has offset 1).

The definition of A239636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239636.P9315992942707104834

`2*A014689(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A239636

/-- `2*A014689(n+1)-1` -/
def P9315992942707104834.Spec : Prop :=
  ∀ n, P9315992942707104834.a n = A239636 (n + 1)

theorem P9315992942707104834.correct : P9315992942707104834.Spec := by
  intro n
  simp only [A239636, Nat.add_sub_cancel]

end A239636

/-! ## A239636.P10798597429281786570

`2*A065890(n+1)+1`
-/

namespace A239636.P10798597429281786570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065890 (n + 1) + 1

end

end A239636.P10798597429281786570

namespace A239636

/-- `2*A065890(n+1)+1` -/
def P10798597429281786570.Spec : Prop :=
  ∀ n, P10798597429281786570.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P6731916876835246854

`2*A014692(n+1)-3`
-/

namespace A239636.P6731916876835246854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014692 (n + 1) - 3

end

end A239636.P6731916876835246854

namespace A239636

/-- `2*A014692(n+1)-3` -/
def P6731916876835246854.Spec : Prop :=
  ∀ n, P6731916876835246854.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P16319847001987023824

`A134591(n+1)-(n+2)`
-/

namespace A239636.P16319847001987023824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - (n + 2 : ℤ)

end

end A239636.P16319847001987023824

namespace A239636

/-- `A134591(n+1)-(n+2)` -/
def P16319847001987023824.Spec : Prop :=
  ∀ n, P16319847001987023824.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P9702041361637935309

`A131426(n+1)-2*n`
-/

namespace A239636.P9702041361637935309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - (2 * n : ℤ)

end

end A239636.P9702041361637935309

namespace A239636

/-- `A131426(n+1)-2*n` -/
def P9702041361637935309.Spec : Prop :=
  ∀ n, P9702041361637935309.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P14829328578496768425

`A037168(n+1)-Δ[n²]`
-/

namespace A239636.P14829328578496768425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A239636.P14829328578496768425

namespace A239636

/-- `A037168(n+1)-Δ[n²]` -/
def P14829328578496768425.Spec : Prop :=
  ∀ n, P14829328578496768425.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P8814961107639109202

`2*(A040976(n+1)-n)+1`
-/

namespace A239636.P8814961107639109202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040976 (n + 1) - (n : ℤ)) + 1

end

end A239636.P8814961107639109202

namespace A239636

/-- `2*(A040976(n+1)-n)+1` -/
def P8814961107639109202.Spec : Prop :=
  ∀ n, P8814961107639109202.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P16721063230856029468

`A072055(n+1)-2*(n+2)`
-/

namespace A239636.P16721063230856029468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - (2 * (n + 2) : ℤ)

end

end A239636.P16721063230856029468

namespace A239636

/-- `A072055(n+1)-2*(n+2)` -/
def P16721063230856029468.Spec : Prop :=
  ∀ n, P16721063230856029468.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P13864688188386952528

`A140777(n+1)-(2*n-1)`
-/

namespace A239636.P13864688188386952528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) - ((2 * n : ℤ) - 1)

end

end A239636.P13864688188386952528

namespace A239636

/-- `A140777(n+1)-(2*n-1)` -/
def P13864688188386952528.Spec : Prop :=
  ∀ n, P13864688188386952528.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P13659324363361786616

`A100484(n+1)-(2*n+3)`
-/

namespace A239636.P13659324363361786616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (2 * n + 3 : ℤ)

end

end A239636.P13659324363361786616

namespace A239636

/-- `A100484(n+1)-(2*n+3)` -/
def P13659324363361786616.Spec : Prop :=
  ∀ n, P13659324363361786616.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P12517878873621303207

`2*(A000040(n+1)-n)-3`
-/

namespace A239636.P12517878873621303207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) - (n : ℤ)) - 3

end

end A239636.P12517878873621303207

namespace A239636

/-- `2*(A000040(n+1)-n)-3` -/
def P12517878873621303207.Spec : Prop :=
  ∀ n, P12517878873621303207.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P1790023546775515963

`A089241(n+1)-(2*n+5)`
-/

namespace A239636.P1790023546775515963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - (2 * n + 5 : ℤ)

end

end A239636.P1790023546775515963

namespace A239636

/-- `A089241(n+1)-(2*n+5)` -/
def P1790023546775515963.Spec : Prop :=
  ∀ n, P1790023546775515963.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P3474059781808911566

`a(n-1)+A100803(n)-1` with `a(0)=1`
-/

namespace A239636.P3474059781808911566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A100803 n - 1)

end

end A239636.P3474059781808911566

namespace A239636

/-- `a(n-1)+A100803(n)-1` -/
def P3474059781808911566.Spec : Prop :=
  ∀ n, P3474059781808911566.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P13400529684630293620

`A165747(n)+A140777(n+1)`
-/

namespace A239636.P13400529684630293620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A140777 (n + 1)

end

end A239636.P13400529684630293620

namespace A239636

/-- `A165747(n)+A140777(n+1)` -/
def P13400529684630293620.Spec : Prop :=
  ∀ n, P13400529684630293620.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P16770009141562135788

`A129069(n+1)-A020739(n)`
-/

namespace A239636.P16770009141562135788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - A020739 n

end

end A239636.P16770009141562135788

namespace A239636

/-- `A129069(n+1)-A020739(n)` -/
def P16770009141562135788.Spec : Prop :=
  ∀ n, P16770009141562135788.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P10068059830591198453

`A065890(n+1)+A014689(n+1)`
-/

namespace A239636.P10068059830591198453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + A014689 (n + 1)

end

end A239636.P10068059830591198453

namespace A239636

/-- `A065890(n+1)+A014689(n+1)` -/
def P10068059830591198453.Spec : Prop :=
  ∀ n, P10068059830591198453.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P13719101311243975730

`A131733(n+1)+A040976(n+1)`
-/

namespace A239636.P13719101311243975730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + A040976 (n + 1)

end

end A239636.P13719101311243975730

namespace A239636

/-- `A131733(n+1)+A040976(n+1)` -/
def P13719101311243975730.Spec : Prop :=
  ∀ n, P13719101311243975730.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P15644087027184806369

`A173072(n+1)+A086801(n+1)`
-/

namespace A239636.P15644087027184806369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) + A086801 (n + 1)

end

end A239636.P15644087027184806369

namespace A239636

/-- `A173072(n+1)+A086801(n+1)` -/
def P15644087027184806369.Spec : Prop :=
  ∀ n, P15644087027184806369.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P2383863556375447912

`A108568(n+1)-A001223(n+1)`
-/

namespace A239636.P2383863556375447912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1) - A001223 (n + 1)

end

end A239636.P2383863556375447912

namespace A239636

/-- `A108568(n+1)-A001223(n+1)` -/
def P2383863556375447912.Spec : Prop :=
  ∀ n, P2383863556375447912.a n = A239636 (n + 1)

end A239636

/-! ## A239636.P14485600239121115501

`A065897(n+1)-A334051(n+1)`
-/

namespace A239636.P14485600239121115501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) - A334051 (n + 1)

end

end A239636.P14485600239121115501

namespace A239636

/-- `A065897(n+1)-A334051(n+1)` -/
def P14485600239121115501.Spec : Prop :=
  ∀ n, P14485600239121115501.a n = A239636 (n + 1)

end A239636

/-!
# A239638: Numbers n such that the semiprime 2^n-1 is divisible by 2n+1.

The programs for A239638, there is no canonical definition to state claims against.
-/

/-! ## A239638.P18221938738792319881

`p?[A250203(n+1)]`
-/

namespace A239638.P18221938738792319881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239638.P18221938738792319881

/-!
# A239641: Dirichlet inverse of Carmichael lambda function (A002322).

The programs for A239641, there is no canonical definition to state claims against.
-/

/-! ## A239641.P14016997301140218357

`A104194(n+1)+A023900(A187829(n+1))`
-/

namespace A239641.P14016997301140218357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 1) + A023900 (A187829 (n + 1)).toNat

end

end A239641.P14016997301140218357

/-! ## A239641.P16896131190643356268

`A319340(A187829(n+1))-A002322(n+1)`
-/

namespace A239641.P16896131190643356268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (A187829 (n + 1)).toNat - A002322 (n + 1)

end

end A239641.P16896131190643356268

/-! ## A239641.P17582305398659973513

`A319340(A187829(n+1))-A000010(A140271(n+1))`
-/

namespace A239641.P17582305398659973513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (A187829 (n + 1)).toNat - A000010 (A140271 (n + 1)).toNat

end

end A239641.P17582305398659973513

/-! ## A239641.P10741608009899897702

`A319340(A187829(n+1))-A000010(A263027(n+1))`
-/

namespace A239641.P10741608009899897702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (A187829 (n + 1)).toNat - A000010 (A263027 (n + 1)).toNat

end

end A239641.P10741608009899897702

/-! ## A239641.P14817810034716670309

`A023900(n+1)^A151859(n)!`
-/

namespace A239641.P14817810034716670309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) ^ Nat.factorial (A151859 n).toNat

end

end A239641.P14817810034716670309

/-!
# A239642: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239642, there is no canonical definition to state claims against.
-/

/-! ## A239642.P3993141029528033873

`A239649((n+1)²+n²)`
-/

namespace A239642.P3993141029528033873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 ((n + 1) ^ 2 + n ^ 2)

end

end A239642.P3993141029528033873

/-!
# A239643: Number of nX2 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239643, there is no canonical definition to state claims against.
-/

/-! ## A239643.P3760417444101944821

`A239649(∑[n+2])`
-/

namespace A239643.P3760417444101944821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239643.P3760417444101944821

/-! ## A239643.P10665700099469214309

`lcm(2, A239649(A000096(n+1)))`
-/

namespace A239643.P10665700099469214309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239649 (A000096 (n + 1)).toNat)

end

end A239643.P10665700099469214309

/-! ## A239643.P2949945663001717051

`record[A239649(Δ[A003453(n+5)])]`
-/

namespace A239643.P2949945663001717051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239643.P2949945663001717051

/-! ## A239643.P12489104976466789754

`A239649(A000096(n+1))%A199763(n)`
-/

namespace A239643.P12489104976466789754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239649 (A000096 (n + 1)).toNat) (A199763 n)

end

end A239643.P12489104976466789754

/-! ## A239643.P16599511433293458934

`A239649(A000096(n+1))+A035363(2*n+1)`
-/

namespace A239643.P16599511433293458934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A000096 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A239643.P16599511433293458934

/-!
# A239644: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239644, there is no canonical definition to state claims against.
-/

/-! ## A239644.P12924191406566061911

`A239649(∑[n+3]+1)`
-/

namespace A239644.P12924191406566061911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239644.P12924191406566061911

/-! ## A239644.P10940406491344594783

`A239649(Δ[A008778(n)])%A082428(n+4)`
-/

namespace A239644.P10940406491344594783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239649 (f1 (n + 1) - f1 n).toNat) (A082428 (n + 4))

end

end A239644.P10940406491344594783

/-!
# A239645: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239645, there is no canonical definition to state claims against.
-/

/-! ## A239645.P14948453420544413937

`A239649(A141214(n+1))`
-/

namespace A239645.P14948453420544413937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A141214 (n + 1)).toNat

end

end A239645.P14948453420544413937

/-! ## A239645.P16840044878459084544

`A239649(A155212(n)+5)`
-/

namespace A239645.P16840044878459084544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A155212 n + 5).toNat

end

end A239645.P16840044878459084544

/-! ## A239645.P8138508330035224456

`A239649(A056000(n)+7)`
-/

namespace A239645.P8138508330035224456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A056000 n + 7).toNat

end

end A239645.P8138508330035224456

/-! ## A239645.P2043938875491434975

`A239649(eq[2, A054123(n)])`
-/

namespace A239645.P2043938875491434975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239645.P2043938875491434975

/-! ## A239645.P10544794015829798898

`A239649(eq[3, A193592(n)])`
-/

namespace A239645.P10544794015829798898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239645.P10544794015829798898

/-!
# A239646: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239646, there is no canonical definition to state claims against.
-/

/-! ## A239646.P17131696736622583841

`A239649(A056115(n)+11)`
-/

namespace A239646.P17131696736622583841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A056115 n + 11).toNat

end

end A239646.P17131696736622583841

/-! ## A239646.P2942183491791364650

`A239649(eq[4, A193592(n)])`
-/

namespace A239646.P2942183491791364650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239646.P2942183491791364650

/-! ## A239646.P8452792703089852448

`A239649(Δ[A023545(n+1)])`
-/

namespace A239646.P8452792703089852448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (f1 (n + 1) - f1 n).toNat

end

end A239646.P8452792703089852448

/-! ## A239646.P17650695205650091297

`A239649(A052905(n+2)+1)`
-/

namespace A239646.P17650695205650091297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A052905 (n + 2) + 1).toNat

end

end A239646.P17650695205650091297

/-! ## A239646.P7949031605123735742

`A239649(eq[5, A200370(n+1)])`
-/

namespace A239646.P7949031605123735742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239646.P7949031605123735742

/-!
# A239647: Number of n X 6 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239647, there is no canonical definition to state claims against.
-/

/-! ## A239647.P3171728478587690761

`A239649(A052905(n+3))`
-/

namespace A239647.P3171728478587690761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A052905 (n + 3)).toNat

end

end A239647.P3171728478587690761

/-! ## A239647.P3778176239996411499

`A239649(eq[5, A193592(n)])`
-/

namespace A239647.P3778176239996411499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239647.P3778176239996411499

/-! ## A239647.P1239868794791767402

`A239649(eq[6, A200370(n+1)])`
-/

namespace A239647.P1239868794791767402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239647.P1239868794791767402

/-! ## A239647.P17516867052122493038

`A239649(eq[8, A185782(n+1)])`
-/

namespace A239647.P17516867052122493038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239647.P17516867052122493038

/-! ## A239647.P15771645472221363815

`A239649(eq[16, A057728(n+1)])`
-/

namespace A239647.P15771645472221363815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239647.P15771645472221363815

/-!
# A239648: Number of nX7 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it, modulo 4.

The programs for A239648, there is no canonical definition to state claims against.
-/

/-! ## A239648.P3972774495611290103

`A239649(eq[6, A193592(n)])`
-/

namespace A239648.P3972774495611290103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239648.P3972774495611290103

/-! ## A239648.P17461659013969753678

`A239649(eq[7, A200370(n+1)])`
-/

namespace A239648.P17461659013969753678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239648.P17461659013969753678

/-! ## A239648.P5210351215563517203

`A239649(eq[7, A004736(n+1)]+1)`
-/

namespace A239648.P5210351215563517203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239648.P5210351215563517203

/-!
# A239650: Number of 2 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239650, there is no canonical definition to state claims against.
-/

/-! ## A239650.P457987332357874949

`A239649(∑[n+1]+2)`
-/

namespace A239650.P457987332357874949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239650.P457987332357874949

/-! ## A239650.P4656357007949216533

`record[A239649(A114091(n+1)+1)]`
-/

namespace A239650.P4656357007949216533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239650.P4656357007949216533

/-! ## A239650.P3144724084156693743

`record[A010054(n)*A239649(n+2)]`
-/

namespace A239650.P3144724084156693743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A239649 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239650.P3144724084156693743

/-! ## A239650.P12598851373452892145

`record[gcd(A239649(n+2), A259016(n))]`
-/

namespace A239650.P12598851373452892145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A239649 (n + 2)) (A259016 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239650.P12598851373452892145

/-! ## A239650.P13502978978316909347

`record[gcd(A239649(n+3), A291883(n+1))]`
-/

namespace A239650.P13502978978316909347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A239649 (n + 3)) (A291883 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239650.P13502978978316909347

/-!
# A239651: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239651, there is no canonical definition to state claims against.
-/

/-! ## A239651.P639884555388790015

`A239649(∑[n+2]+4)`
-/

namespace A239651.P639884555388790015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239651.P639884555388790015

/-! ## A239651.P4687010352587409705

`lcm(2, A239649(A167614(n+1)))`
-/

namespace A239651.P4687010352587409705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239649 (A167614 (n + 1)).toNat)

end

end A239651.P4687010352587409705

/-! ## A239651.P14564276278613941820

`A239649(A167614(n+1))+A025438(n)`
-/

namespace A239651.P14564276278613941820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A167614 (n + 1)).toNat + A025438 n

end

end A239651.P14564276278613941820

/-! ## A239651.P18072148323244035718

`A326679(n)+A239649(A167614(n+1))`
-/

namespace A239651.P18072148323244035718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A239649 (A167614 (n + 1)).toNat

end

end A239651.P18072148323244035718

/-! ## A239651.P13829599984755967722

`A239649(A167614(n+1))*A278657(n)`
-/

namespace A239651.P13829599984755967722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A167614 (n + 1)).toNat * A278657 n

end

end A239651.P13829599984755967722

/-!
# A239652: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239652, there is no canonical definition to state claims against.
-/

/-! ## A239652.P3046169137355222071

`A239649(A141214(n)+7)`
-/

namespace A239652.P3046169137355222071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A141214 n + 7).toNat

end

end A239652.P3046169137355222071

/-! ## A239652.P3943336786497915565

`A239649(A052905(n)+9)`
-/

namespace A239652.P3943336786497915565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A052905 n + 9).toNat

end

end A239652.P3943336786497915565

/-! ## A239652.P13218387621695757776

`A239649(A055999(n)+10)`
-/

namespace A239652.P13218387621695757776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A055999 n + 10).toNat

end

end A239652.P13218387621695757776

/-! ## A239652.P447067419246055062

`A239649(A167614(n+2)+1)`
-/

namespace A239652.P447067419246055062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A167614 (n + 2) + 1).toNat

end

end A239652.P447067419246055062

/-! ## A239652.P5762161572077996377

`A239649(A166136(n+2)-2)`
-/

namespace A239652.P5762161572077996377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A166136 (n + 2) - 2).toNat

end

end A239652.P5762161572077996377

/-!
# A239653: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239653, there is no canonical definition to state claims against.
-/

/-! ## A239653.P7017845627157636976

`A239649(A167499(n+3))`
-/

namespace A239653.P7017845627157636976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A167499 (n + 3)).toNat

end

end A239653.P7017845627157636976

/-! ## A239653.P12209765998580709113

`A239649(A155212(n)+13)`
-/

namespace A239653.P12209765998580709113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A155212 n + 13).toNat

end

end A239653.P12209765998580709113

/-! ## A239653.P2379086154181666580

`A239649(A056000(n)+15)`
-/

namespace A239653.P2379086154181666580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A056000 n + 15).toNat

end

end A239653.P2379086154181666580

/-! ## A239653.P2072040939584618927

`A239649(A000217(n+4)+5)`
-/

namespace A239653.P2072040939584618927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A000217 (n + 4) + 5).toNat

end

end A239653.P2072040939584618927

/-! ## A239653.P18344409926286706634

`A239649(eq[6, A131818(n+1)])`
-/

namespace A239653.P18344409926286706634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239653.P18344409926286706634

/-!
# A239654: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239654, there is no canonical definition to state claims against.
-/

/-! ## A239654.P15680731029101750801

`A239649(A166136(n+4))`
-/

namespace A239654.P15680731029101750801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A166136 (n + 4)).toNat

end

end A239654.P15680731029101750801

/-! ## A239654.P4526955269818492018

`A239649(A056115(n)+21)`
-/

namespace A239654.P4526955269818492018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A056115 n + 21).toNat

end

end A239654.P4526955269818492018

/-! ## A239654.P15805421498760974750

`A239649(A141214(n+2)+9)`
-/

namespace A239654.P15805421498760974750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (A141214 (n + 2) + 9).toNat

end

end A239654.P15805421498760974750

/-! ## A239654.P934305314026552410

`A239649(eq[7, A131818(n+1)])`
-/

namespace A239654.P934305314026552410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239654.P934305314026552410

/-! ## A239654.P6494779256950463380

`A239649(eq[5, A130270(n+1)]+1)`
-/

namespace A239654.P6494779256950463380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239654.P6494779256950463380

/-!
# A239655: Number of 7Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it, modulo 4.

The programs for A239655, there is no canonical definition to state claims against.
-/

/-! ## A239655.P14486796905822325334

`A239649(eq[8, A131818(n+1)])`
-/

namespace A239655.P14486796905822325334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239655.P14486796905822325334

/-!
# A239656: First differences of sphenic numbers, cf. A007304.

The programs for A239656, the canonical program `A239656.P12690542447395092271` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239656 has offset 1).

The definition of A239656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007304, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239656.P12690542447395092271

`A007304(n+2)-A007304(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A239656

/-- `A007304(n+2)-A007304(n+1)` -/
def P12690542447395092271.Spec : Prop :=
  ∀ n, P12690542447395092271.a n = A239656 (n + 1)

theorem P12690542447395092271.correct : P12690542447395092271.Spec := by
  intro n
  simp only [A239656, Nat.add_sub_cancel]

end A239656

/-! ## A239656.P2531907759281387912

`Δ[A007304(n+1)]`
-/

namespace A239656.P2531907759281387912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239656.P2531907759281387912

namespace A239656

/-- `Δ[A007304(n+1)]` -/
def P2531907759281387912.Spec : Prop :=
  ∀ n, P2531907759281387912.a n = A239656 (n + 1)

theorem P2531907759281387912.correct : P2531907759281387912.Spec := by
  intro n
  simp only [A239656, Nat.add_sub_cancel, A239656.P2531907759281387912.f1, A239656.P2531907759281387912.a, A239656.P12690542447395092271.a, SequenceMachineLib.memo_apply]

end A239656

/-! ## A239656.P9756511953098810260

`Δ[sqrt(A162143(n+1))]`
-/

namespace A239656.P9756511953098810260
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A162143 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239656.P9756511953098810260

namespace A239656

/-- `Δ[sqrt(A162143(n+1))]` -/
def P9756511953098810260.Spec : Prop :=
  ∀ n, P9756511953098810260.a n = (A239656 (n + 1) : ℝ)

end A239656

/-! ## A239656.P13496567416240471992

`abs(Δ[A007304(1-A001489(n))])`
-/

namespace A239656.P13496567416240471992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (1 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A239656.P13496567416240471992

namespace A239656

/-- `abs(Δ[A007304(1-A001489(n))])` -/
def P13496567416240471992.Spec : Prop :=
  ∀ n, P13496567416240471992.a n = A239656 (n + 1)

end A239656

/-! ## A239656.P7203208332885090893

`Δ[A162144(n+1)/A162143(n+1)]`
-/

namespace A239656.P7203208332885090893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162144 (n + 1) : ℚ) / (A162143 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239656.P7203208332885090893

namespace A239656

/-- `Δ[A162144(n+1)/A162143(n+1)]` -/
def P7203208332885090893.Spec : Prop :=
  ∀ n, P7203208332885090893.a n = (A239656 (n + 1) : ℚ)

end A239656

/-! ## A239656.P7140598137262894570

`Δ[lt[A000005(n+2), A001221(n+2)²]]`
-/

namespace A239656.P7140598137262894570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239656.P7140598137262894570

namespace A239656

/-- `Δ[lt[A000005(n+2), A001221(n+2)²]]` -/
def P7140598137262894570.Spec : Prop :=
  ∀ n, P7140598137262894570.a n = A239656 (n + 1)

end A239656

/-! ## A239656.P2301635812963294145

`Δ[eq[(A008683(n+1)+1)*(n+1)+3, A001222(n+1)]]`
-/

namespace A239656.P2301635812963294145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * (n + 1 : ℤ) + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239656.P2301635812963294145

namespace A239656

/-- `Δ[eq[(A008683(n+1)+1)*(n+1)+3, A001222(n+1)]]` -/
def P2301635812963294145.Spec : Prop :=
  ∀ n, P2301635812963294145.a n = A239656 (n + 1)

end A239656

/-! ## A239656.P7984550860240115750

`Δ[eq[13, A002033(n)]]`
-/

namespace A239656.P7984550860240115750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239656.P7984550860240115750

namespace A239656

/-- `Δ[eq[13, A002033(n)]]` -/
def P7984550860240115750.Spec : Prop :=
  ∀ n, P7984550860240115750.a n = A239656 (n + 1)

end A239656

/-! ## A239656.P3794479885179557002

`Δ[eq[7, A050334(n+1)]]`
-/

namespace A239656.P3794479885179557002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239656.P3794479885179557002

namespace A239656

/-- `Δ[eq[7, A050334(n+1)]]` -/
def P3794479885179557002.Spec : Prop :=
  ∀ n, P3794479885179557002.a n = A239656 (n + 1)

end A239656

/-! ## A239656.P6201673238386280789

`Δ[eq[8, A181819(n+1)]]`
-/

namespace A239656.P6201673238386280789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239656.P6201673238386280789

namespace A239656

/-- `Δ[eq[8, A181819(n+1)]]` -/
def P6201673238386280789.Spec : Prop :=
  ∀ n, P6201673238386280789.a n = A239656 (n + 1)

end A239656

/-! ## A239656.P3385796543250855261

`Δ[eq[1, A008476(n+1)-2]]`
-/

namespace A239656.P3385796543250855261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (n + 1) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239656.P3385796543250855261

namespace A239656

/-- `Δ[eq[1, A008476(n+1)-2]]` -/
def P3385796543250855261.Spec : Prop :=
  ∀ n, P3385796543250855261.a n = A239656 (n + 1)

end A239656

/-!
# A239657: Number of odd divisors m of n such that there is a divisor d of n with d < m < 2*d.

The programs for A239657, there is no canonical definition to state claims against.
-/

/-! ## A239657.P18005973574858765565

`A001227(n+1)-A237271(n+1)`
-/

namespace A239657.P18005973574858765565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A237271 (n + 1)

end

end A239657.P18005973574858765565

/-! ## A239657.P11485898889685739894

`A243982(n+1)-A183063(n+1)`
-/

namespace A239657.P11485898889685739894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1) - A183063 (n + 1)

end

end A239657.P11485898889685739894

/-! ## A239657.P17419339681002731850

`A243982(n+1)%A001227(n+1)`
-/

namespace A239657.P17419339681002731850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243982 (n + 1)) (A001227 (n + 1))

end

end A239657.P17419339681002731850

/-! ## A239657.P12975875554553057755

`A000005(A000265(n+1))-A237271(n+1)`
-/

namespace A239657.P12975875554553057755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A237271 (n + 1)

end

end A239657.P12975875554553057755

/-! ## A239657.P10980239250642452177

`A000005(A064989(n+1))-A237271(n+1)`
-/

namespace A239657.P10980239250642452177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064989 (n + 1)).toNat - A237271 (n + 1)

end

end A239657.P10980239250642452177

/-! ## A239657.P18205249303759446271

`A000005(A336158(n+1))-A237271(n+1)`
-/

namespace A239657.P18205249303759446271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - A237271 (n + 1)

end

end A239657.P18205249303759446271

/-! ## A239657.P11423367704084133178

`Δ[A060831(n)]-A237271(n+1)`
-/

namespace A239657.P11423367704084133178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237271 (n + 1)

end

end A239657.P11423367704084133178

/-! ## A239657.P14386213603174828922

`A243982(n+1)%Δ[A060831(n)]`
-/

namespace A239657.P14386213603174828922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243982 (n + 1)) (f1 (n + 1) - f1 n)

end

end A239657.P14386213603174828922

/-! ## A239657.P11290069500399841234

`A005136(A383147(n+1))`
-/

namespace A239657.P11290069500399841234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A383147 (n + 1)).toNat

end

end A239657.P11290069500399841234

/-!
# A239658: Number of free triangular n-polyplets (triangular polyominoes connected at edges or corners), where turning over is allowed and holes are allowed.

The programs for A239658, there is no canonical definition to state claims against.
-/

/-! ## A239658.P6113497144866742526

`A062491(A149171(n))`
-/

namespace A239658.P6113497144866742526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062491 (A149171 n).toNat

end

end A239658.P6113497144866742526

/-! ## A239658.P7724011397134550241

`A132832(A261417(n+1))`
-/

namespace A239658.P7724011397134550241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132832 (A261417 (n + 1)).toNat

end

end A239658.P7724011397134550241

/-!
# A239659: Sum of first n parts of the spiral described in A239660.

The programs for A239659, there is no canonical definition to state claims against.
-/

/-! ## A239659.P5612039730192633271

`∑[A237270(n+1)]`
-/

namespace A239659.P5612039730192633271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239659.P5612039730192633271

/-! ## A239659.P17526457737602419268

`root(∑[A237270(Δ[n²]-n)], 2)²`
-/

namespace A239659.P17526457737602419268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A239659.P17526457737602419268

/-! ## A239659.P18202165051687949147

`record[A237270(n-1)+a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A239659.P18202165051687949147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A237270 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239659.P18202165051687949147

/-! ## A239659.P16084710794552227500

`A237270((n+2+n)/2)+a(n-1)` with `a(0)=1`
-/

namespace A239659.P16084710794552227500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A237270 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / 2)).toNat + a (n - 1)

end

end A239659.P16084710794552227500

/-! ## A239659.P2224332314263004948

`∑[A237270(A004273(n)-(n-2))]-2`
-/

namespace A239659.P2224332314263004948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A004273 n - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A239659.P2224332314263004948

/-! ## A239659.P8258929285917621112

`∑[A237270(Δ[n²]-n)%A006124(n)]`
-/

namespace A239659.P8258929285917621112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237270 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) (A006124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239659.P8258929285917621112

/-! ## A239659.P13203654045779829293

`∑[A237270(Δ[n²]-n)]%A017128(n)`
-/

namespace A239659.P13203654045779829293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017128 n)

end

end A239659.P13203654045779829293

/-! ## A239659.P9241042060381555208

`∑[A123108(2*A237270(Δ[n²]-n))]`
-/

namespace A239659.P9241042060381555208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A237270 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239659.P9241042060381555208

/-! ## A239659.P12292300092483389356

`A000027(∑[A237270(Δ[n²]-n)])`
-/

namespace A239659.P12292300092483389356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239659.P12292300092483389356

/-! ## A239659.P8520313950345387541

`A028310(∑[A237270(Δ[n²]-n)])`
-/

namespace A239659.P8520313950345387541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239659.P8520313950345387541

/-!
# A239661: Divisors of 1089.

The programs for A239661, there is no canonical definition to state claims against.
-/

/-! ## A239661.P10243609686958633253

`11*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A239661.P10243609686958633253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  11 * a (n - 3)

end

end A239661.P10243609686958633253

/-! ## A239661.P9806363908891767524

`A008593(a(n-3))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A239661.P9806363908891767524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A008593 (a (n - 3)).toNat

end

end A239661.P9806363908891767524

/-! ## A239661.P10671195274125236094

`eq[1, A053831(lcm(9, n)/9)]`
-/

namespace A239661.P10671195274125236094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239661.P10671195274125236094

/-! ## A239661.P6573837570947414679

`A171397(A004669(n))`
-/

namespace A239661.P6573837570947414679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A004669 n).toNat

end

end A239661.P6573837570947414679

/-! ## A239661.P1539731978081620434

`A257538(A101278(n))`
-/

namespace A239661.P1539731978081620434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257538 (A101278 n).toNat

end

end A239661.P1539731978081620434

/-!
# A239662: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the numbers A017113 interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A239662, there is no canonical definition to state claims against.
-/

/-! ## A239662.P1495416539992465130

`4*A196020(n+1)`
-/

namespace A239662.P1495416539992465130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A196020 (n + 1)

end

end A239662.P1495416539992465130

/-! ## A239662.P2076156226884419901

`2*A236106(n+1)`
-/

namespace A239662.P2076156226884419901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236106 (n + 1)

end

end A239662.P2076156226884419901

/-! ## A239662.P4592203161408106694

`4/3*A272026(n+1)`
-/

namespace A239662.P4592203161408106694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A272026 (n + 1) : ℚ)

end

end A239662.P4592203161408106694

/-! ## A239662.P6227735700132773508

`lcm(4, A196020(C(n+1, n)))`
-/

namespace A239662.P6227735700132773508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A196020 (Nat.choose (n + 1) n))

end

end A239662.P6227735700132773508

/-! ## A239662.P6966464537863231676

`2*2*A196020(Δ[n²]-n)`
-/

namespace A239662.P6966464537863231676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A196020 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A239662.P6966464537863231676

/-! ## A239662.P7034562700559566710

`A008586(A196020(n+1))`
-/

namespace A239662.P7034562700559566710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A196020 (n + 1)).toNat

end

end A239662.P7034562700559566710

/-! ## A239662.P112784579237656226

`A004773(A272026(n+1))`
-/

namespace A239662.P112784579237656226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A272026 (n + 1)).toNat

end

end A239662.P112784579237656226

/-! ## A239662.P14073222939476356616

`A004396(2*A272026(n+1))`
-/

namespace A239662.P14073222939476356616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A272026 (n + 1)).toNat

end

end A239662.P14073222939476356616

/-! ## A239662.P10936352635795683474

`2*A130824(A211343(n+1))`
-/

namespace A239662.P10936352635795683474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130824 (A211343 (n + 1)).toNat

end

end A239662.P10936352635795683474

/-! ## A239662.P7101094096801688638

`A160080(2*A272026(n+1))`
-/

namespace A239662.P7101094096801688638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160080 (2 * A272026 (n + 1)).toNat

end

end A239662.P7101094096801688638

/-!
# A239663: a(n) is the smallest number k such that the symmetric representation of sigma(k) has n parts.

The programs for A239663, there is no canonical definition to state claims against.
-/

/-! ## A239663.P14043754886019344125

`A346969(∑[n]+1)`
-/

namespace A239663.P14043754886019344125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239663.P14043754886019344125

/-! ## A239663.P17457701830627917082

`or(1, A346969(A000124(n)))`
-/

namespace A239663.P17457701830627917082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346969 (A000124 n).toNat)

end

end A239663.P17457701830627917082

/-! ## A239663.P1014537693860707233

`record[A346969(A286235(n+1))]`
-/

namespace A239663.P1014537693860707233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346969 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239663.P1014537693860707233

/-! ## A239663.P6114812023794074016

`or(1, A346969(∑[A028310(n)]))`
-/

namespace A239663.P6114812023794074016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346969 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A239663.P6114812023794074016

/-! ## A239663.P15241731730299668041

`record[A010054(n)*A346969(n+1)]`
-/

namespace A239663.P15241731730299668041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A346969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239663.P15241731730299668041

/-!
# A239665: Triangle read by rows in which row n lists the parts of the symmetric representation of sigma of the smallest number whose symmetric representation of sigma has n parts.

The programs for A239665, there is no canonical definition to state claims against.
-/

/-! ## A239665.P1603293091397117892

`A155169(n)-A050870(A010926(n))`
-/

namespace A239665.P1603293091397117892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155169 n - A050870 (A010926 n).toNat

end

end A239665.P1603293091397117892

/-!
# A239667: Sum of the largest parts of the partitions of 4n into 4 parts.

The programs for A239667, there is no canonical definition to state claims against.
-/

/-! ## A239667.P4589967556030429488

`A243011(n+1)-(A242727(n+1)+A241084(n+1))`
-/

namespace A239667.P4589967556030429488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243011 (n + 1) - (A242727 (n + 1) + A241084 (n + 1))

end

end A239667.P4589967556030429488

/-! ## A239667.P4798548101134479079

`A308760(4*(n+1))`
-/

namespace A239667.P4798548101134479079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308760 (4 * (n + 1))

end

end A239667.P4798548101134479079

/-! ## A239667.P13997763965212962735

`record[A308760(4*ceil(xor(1, n)/2))]`
-/

namespace A239667.P13997763965212962735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308760 (4 * ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239667.P13997763965212962735

/-! ## A239667.P14041300048262282567

`record[A308760(4*Δ[ceil(n²/12)])]`
-/

namespace A239667.P14041300048262282567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308760 (4 * (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239667.P14041300048262282567

/-!
# A239668: Sum of the composite divisors of n^2.

The programs for A239668, the canonical program `A239668.P5413228738959679082` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239668 has offset 1).

The definition of A239668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239668.P5413228738959679082

`A000203((n+1)²)-A008472((n+1)²)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239668

/-- `A000203((n+1)²)-A008472((n+1)²)-1` -/
def P5413228738959679082.Spec : Prop :=
  ∀ n, P5413228738959679082.a n = A239668 (n + 1)

theorem P5413228738959679082.correct : P5413228738959679082.Spec := by
  intro n
  simp only [A239668, Nat.add_sub_cancel]

end A239668

/-! ## A239668.P17539923763295334689

`A023891((n+1)²)`
-/

namespace A239668.P17539923763295334689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 ((n + 1) ^ 2)

end

end A239668.P17539923763295334689

namespace A239668

/-- `A023891((n+1)²)` -/
def P17539923763295334689.Spec : Prop :=
  ∀ n, P17539923763295334689.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P10235446486868174334

`A065764(n+1)-(∑{p}[n+1, #]+1)`
-/

namespace A239668.P10235446486868174334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), p + 1 : ℕ) : ℤ)

end

end A239668.P10235446486868174334

namespace A239668

/-- `A065764(n+1)-(∑{p}[n+1, #]+1)` -/
def P10235446486868174334.Spec : Prop :=
  ∀ n, P10235446486868174334.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P3996640500465416053

`A320059(n+1)+A023891(n+1)`
-/

namespace A239668.P3996640500465416053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) + A023891 (n + 1)

end

end A239668.P3996640500465416053

namespace A239668

/-- `A320059(n+1)+A023891(n+1)` -/
def P3996640500465416053.Spec : Prop :=
  ∀ n, P3996640500465416053.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P17202320498919621211

`A065764(n+1)-A074372(n+1)`
-/

namespace A239668.P17202320498919621211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - A074372 (n + 1)

end

end A239668.P17202320498919621211

namespace A239668

/-- `A065764(n+1)-A074372(n+1)` -/
def P17202320498919621211.Spec : Prop :=
  ∀ n, P17202320498919621211.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P5662573355763919896

`A023890(n+1)+A320059(n+1)-1`
-/

namespace A239668.P5662573355763919896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + (A320059 (n + 1) - 1)

end

end A239668.P5662573355763919896

namespace A239668

/-- `A023890(n+1)+A320059(n+1)-1` -/
def P5662573355763919896.Spec : Prop :=
  ∀ n, P5662573355763919896.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P12650699983422788424

`A000203((n+1)²)-A074372(n+1)`
-/

namespace A239668.P12650699983422788424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - A074372 (n + 1)

end

end A239668.P12650699983422788424

namespace A239668

/-- `A000203((n+1)²)-A074372(n+1)` -/
def P12650699983422788424.Spec : Prop :=
  ∀ n, P12650699983422788424.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P9700816582143010668

`A000203((n+1)²)-(A008472(n+1)+1)`
-/

namespace A239668.P9700816582143010668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - (A008472 (n + 1) + 1)

end

end A239668.P9700816582143010668

namespace A239668

/-- `A000203((n+1)²)-(A008472(n+1)+1)` -/
def P9700816582143010668.Spec : Prop :=
  ∀ n, P9700816582143010668.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P14151835201584350301

`∑{d}[(n+1)², #*A066247(#)]`
-/

namespace A239668.P14151835201584350301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A066247 d

end

end A239668.P14151835201584350301

namespace A239668

/-- `∑{d}[(n+1)², #*A066247(#)]` -/
def P14151835201584350301.Spec : Prop :=
  ∀ n, P14151835201584350301.a n = A239668 (n + 1)

end A239668

/-! ## A239668.P5010793794983517140

`A023890((n+1)²)-1`
-/

namespace A239668.P5010793794983517140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 ((n + 1) ^ 2) - 1

end

end A239668.P5010793794983517140

namespace A239668

/-- `A023890((n+1)²)-1` -/
def P5010793794983517140.Spec : Prop :=
  ∀ n, P5010793794983517140.a n = A239668 (n + 1)

end A239668

/-!
# A239669: Total number of prime factors counted with multiplicity of prime(n)-1 and prime(n)+1, where prime(n) is the n-th prime.

The programs for A239669, the canonical program `A239669.P3998766772752686955` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239669 has offset 1).

The definition of A239669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239669.P3998766772752686955

`A023514(n+1)+A023508(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A239669

/-- `A023514(n+1)+A023508(n+1)` -/
def P3998766772752686955.Spec : Prop :=
  ∀ n, P3998766772752686955.a n = A239669 (n + 1)

theorem P3998766772752686955.correct : P3998766772752686955.Spec := by
  intro n
  simp only [A239669, Nat.add_sub_cancel]

end A239669

/-! ## A239669.P16379102273526605138

`A023508(n+1)+A001222(A111333(n+1))+1`
-/

namespace A239669.P16379102273526605138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + (A001222 (A111333 (n + 1)).toNat + 1)

end

end A239669.P16379102273526605138

namespace A239669

/-- `A023508(n+1)+A001222(A111333(n+1))+1` -/
def P16379102273526605138.Spec : Prop :=
  ∀ n, P16379102273526605138.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P2681262151034814429

`A023508(n+1)+A001222(A278228(n+1))`
-/

namespace A239669.P2681262151034814429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + A001222 (A278228 (n + 1)).toNat

end

end A239669.P2681262151034814429

namespace A239669

/-- `A023508(n+1)+A001222(A278228(n+1))` -/
def P2681262151034814429.Spec : Prop :=
  ∀ n, P2681262151034814429.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P9220795016637714246

`A023514(n+1)+A001222(A006093(n+1))`
-/

namespace A239669.P9220795016637714246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (n + 1) + A001222 (A006093 (n + 1)).toNat

end

end A239669.P9220795016637714246

namespace A239669

/-- `A023514(n+1)+A001222(A006093(n+1))` -/
def P9220795016637714246.Spec : Prop :=
  ∀ n, P9220795016637714246.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P8800457154331903670

`A023508(n+1)+A001222(A008864(n+1))`
-/

namespace A239669.P8800457154331903670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + A001222 (A008864 (n + 1)).toNat

end

end A239669.P8800457154331903670

namespace A239669

/-- `A023508(n+1)+A001222(A008864(n+1))` -/
def P8800457154331903670.Spec : Prop :=
  ∀ n, P8800457154331903670.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P8084631456057406271

`A023508(n+1)+A001222(A028815(n+1))`
-/

namespace A239669.P8084631456057406271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + A001222 (A028815 (n + 1)).toNat

end

end A239669.P8084631456057406271

namespace A239669

/-- `A023508(n+1)+A001222(A028815(n+1))` -/
def P8084631456057406271.Spec : Prop :=
  ∀ n, P8084631456057406271.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P12604231287639574971

`A023508(n+1)+A001222(sqrt(A110833(n+1)))`
-/

namespace A239669.P12604231287639574971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + A001222 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ))).toNat

end

end A239669.P12604231287639574971

namespace A239669

/-- `A023508(n+1)+A001222(sqrt(A110833(n+1)))` -/
def P12604231287639574971.Spec : Prop :=
  ∀ n, P12604231287639574971.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P18080486811885259820

`A023508(n+1)+A001222(Δ[A007504(n)]+1)`
-/

namespace A239669.P18080486811885259820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + A001222 (f1 (n + 1) - f1 n + 1).toNat

end

end A239669.P18080486811885259820

namespace A239669

/-- `A023508(n+1)+A001222(Δ[A007504(n)]+1)` -/
def P18080486811885259820.Spec : Prop :=
  ∀ n, P18080486811885259820.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P13643574168792537087

`A023508(n+1)+A001222(A000040(n+1)+1)`
-/

namespace A239669.P13643574168792537087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + A001222 (A000040 (n + 1) + 1).toNat

end

end A239669.P13643574168792537087

namespace A239669

/-- `A023508(n+1)+A001222(A000040(n+1)+1)` -/
def P13643574168792537087.Spec : Prop :=
  ∀ n, P13643574168792537087.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P7495279111114915511

`A023514(n+1)+A001222(A000040(n+1)-1)`
-/

namespace A239669.P7495279111114915511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (n + 1) + A001222 (A000040 (n + 1) - 1).toNat

end

end A239669.P7495279111114915511

namespace A239669

/-- `A023514(n+1)+A001222(A000040(n+1)-1)` -/
def P7495279111114915511.Spec : Prop :=
  ∀ n, P7495279111114915511.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P7760720207062880553

`A023508(n+1)+A001222(record[A006530(n+2)]+1)`
-/

namespace A239669.P7760720207062880553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A239669.P7760720207062880553

namespace A239669

/-- `A023508(n+1)+A001222(record[A006530(n+2)]+1)` -/
def P7760720207062880553.Spec : Prop :=
  ∀ n, P7760720207062880553.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P573718218502426611

`A001222(A000040(n+1)+1)+A001222(A006093(n+1))`
-/

namespace A239669.P573718218502426611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + 1).toNat + A001222 (A006093 (n + 1)).toNat

end

end A239669.P573718218502426611

namespace A239669

/-- `A001222(A000040(n+1)+1)+A001222(A006093(n+1))` -/
def P573718218502426611.Spec : Prop :=
  ∀ n, P573718218502426611.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P5602731934059746424

`A001222(A000040(n+1)+1)+A001222(A040976(n+1)+1)`
-/

namespace A239669.P5602731934059746424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + 1).toNat + A001222 (A040976 (n + 1) + 1).toNat

end

end A239669.P5602731934059746424

namespace A239669

/-- `A001222(A000040(n+1)+1)+A001222(A040976(n+1)+1)` -/
def P5602731934059746424.Spec : Prop :=
  ∀ n, P5602731934059746424.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P573430502282276770

`A023508(n+1)+∑{e}[eq[1, A001222(n+1)]+2, #]`
-/

namespace A239669.P573430502282276770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A239669.P573430502282276770

namespace A239669

/-- `A023508(n+1)+∑{e}[eq[1, A001222(n+1)]+2, #]` -/
def P573430502282276770.Spec : Prop :=
  ∀ n, P573430502282276770.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P1381116507854381271

`A193295(A000040(n+1))`
-/

namespace A239669.P1381116507854381271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (A000040 (n + 1)).toNat

end

end A239669.P1381116507854381271

namespace A239669

/-- `A193295(A000040(n+1))` -/
def P1381116507854381271.Spec : Prop :=
  ∀ n, P1381116507854381271.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P6787003433852582052

`A193295(A063884(n+1))`
-/

namespace A239669.P6787003433852582052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (A063884 (n + 1)).toNat

end

end A239669.P6787003433852582052

namespace A239669

/-- `A193295(A063884(n+1))` -/
def P6787003433852582052.Spec : Prop :=
  ∀ n, P6787003433852582052.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P2868244352851466711

`A193295(A008578(n+2))`
-/

namespace A239669.P2868244352851466711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (A008578 (n + 2)).toNat

end

end A239669.P2868244352851466711

namespace A239669

/-- `A193295(A008578(n+2))` -/
def P2868244352851466711.Spec : Prop :=
  ∀ n, P2868244352851466711.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P15003453320720914441

`A193295(A182986(n+2))`
-/

namespace A239669.P15003453320720914441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (A182986 (n + 2)).toNat

end

end A239669.P15003453320720914441

namespace A239669

/-- `A193295(A182986(n+2))` -/
def P15003453320720914441.Spec : Prop :=
  ∀ n, P15003453320720914441.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P4246870198563265834

`A193295(record[A006530(n+2)])`
-/

namespace A239669.P4246870198563265834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239669.P4246870198563265834

namespace A239669

/-- `A193295(record[A006530(n+2)])` -/
def P4246870198563265834.Spec : Prop :=
  ∀ n, P4246870198563265834.a n = A239669 (n + 1)

end A239669

/-! ## A239669.P17411842133966197245

`A193295(record[A014963(n+2)])`
-/

namespace A239669.P17411842133966197245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239669.P17411842133966197245

namespace A239669

/-- `A193295(record[A014963(n+2)])` -/
def P17411842133966197245.Spec : Prop :=
  ∀ n, P17411842133966197245.a n = A239669 (n + 1)

end A239669

/-!
# A239670: Expansion of 1/((1-x)*(1-81*x)).

The programs for A239670, the canonical program `A239670.P11978968046923535514` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239670 has offset 0).

The definition of A239670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239670.P11978968046923535514

`81*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239670

/-- `81*a(n-1)+1` -/
def P11978968046923535514.Spec : Prop :=
  ∀ n, (P11978968046923535514.a n : ℤ) = A239670 n

theorem P11978968046923535514.correct : P11978968046923535514.Spec := by
  intro n
  simp only [A239670]

end A239670

/-! ## A239670.P284929837049924997

`A033119(2*n+1)`
-/

namespace A239670.P284929837049924997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033119 (2 * n + 1)

end

end A239670.P284929837049924997

namespace A239670

/-- `A033119(2*n+1)` -/
def P284929837049924997.Spec : Prop :=
  ∀ n, P284929837049924997.a n = A239670 n

end A239670

/-! ## A239670.P14146761573715142562

`(81^(n+1)-1)/80`
-/

namespace A239670.P14146761573715142562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((81 ^ (n + 1) : ℤ) - 1 : ℚ) / 80

end

end A239670.P14146761573715142562

namespace A239670

/-- `(81^(n+1)-1)/80` -/
def P14146761573715142562.Spec : Prop :=
  ∀ n, P14146761573715142562.a n = (A239670 n : ℚ)

theorem P14146761573715142562.correct : P14146761573715142562.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A239670, Nat.add_sub_cancel, A239670.P14146761573715142562.a, A239670.P11978968046923535514.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A239670, Nat.add_sub_cancel, A239670.P14146761573715142562.a, A239670.P11978968046923535514.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A239670

/-! ## A239670.P3268491516548179793

`a(n-1)+81^n` with `a(0)=1`
-/

namespace A239670.P3268491516548179793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 81 ^ n

end

end A239670.P3268491516548179793

namespace A239670

/-- `a(n-1)+81^n` -/
def P3268491516548179793.Spec : Prop :=
  ∀ n, (P3268491516548179793.a n : ℤ) = A239670 n

end A239670

/-! ## A239670.P16134861664917559406

`∑[9*9*a(n-1)]` with `a(0)=1`
-/

namespace A239670.P16134861664917559406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * (9 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239670.P16134861664917559406

namespace A239670

/-- `∑[9*9*a(n-1)]` -/
def P16134861664917559406.Spec : Prop :=
  ∀ n, (P16134861664917559406.a n : ℤ) = A239670 n

end A239670

/-! ## A239670.P6867416107702643188

`a(n-1)/(1/3)²²+1` with `a(0)=1`
-/

namespace A239670.P6867416107702643188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (((1 : ℚ) / 3) ^ 2) ^ 2 + 1

end

end A239670.P6867416107702643188

namespace A239670

/-- `a(n-1)/(1/3)²²+1` -/
def P6867416107702643188.Spec : Prop :=
  ∀ n, P6867416107702643188.a n = (A239670 n : ℚ)

end A239670

/-! ## A239670.P503769864609619324

`1-(a(n-1)-82*a(n-1))` with `a(0)=1`
-/

namespace A239670.P503769864609619324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - 82 * a (n - 1))

end

end A239670.P503769864609619324

namespace A239670

/-- `1-(a(n-1)-82*a(n-1))` -/
def P503769864609619324.Spec : Prop :=
  ∀ n, P503769864609619324.a n = A239670 n

end A239670

/-! ## A239670.P3074418449064518861

`∑[A156180(4*n)]`
-/

namespace A239670.P3074418449064518861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156180 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239670.P3074418449064518861

namespace A239670

/-- `∑[A156180(4*n)]` -/
def P3074418449064518861.Spec : Prop :=
  ∀ n, P3074418449064518861.a n = A239670 n

end A239670

/-! ## A239670.P14890289383724249644

`∑[A063270(n)]-(n+1)`
-/

namespace A239670.P14890289383724249644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A239670.P14890289383724249644

namespace A239670

/-- `∑[A063270(n)]-(n+1)` -/
def P14890289383724249644.Spec : Prop :=
  ∀ n, P14890289383724249644.a n = A239670 n

end A239670

/-!
# A239672: Product_{i=1..n} J_6(i) where J_6(i) = A069091(i).

The programs for A239672, there is no canonical definition to state claims against.
-/

/-! ## A239672.P17161353268282935993

`∏[A069091(n+1)]`
-/

namespace A239672.P17161353268282935993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239672.P17161353268282935993

/-! ## A239672.P1348677840880845316

`∏[record[A069091(A134478(n))]]`
-/

namespace A239672.P1348677840880845316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069091 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239672.P1348677840880845316

/-!
# A239675: Least k > 0 such that p(n)+k is prime, where p(n) is the number of partitions of n.

The programs for A239675, there is no canonical definition to state claims against.
-/

/-! ## A239675.P11600191351741182663

`A151800(A000041(n))-A000041(n)`
-/

namespace A239675.P11600191351741182663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000041 n).toNat - A000041 n

end

end A239675.P11600191351741182663

/-! ## A239675.P17242261480924254249

`A151800(A213598(n))-A213598(n)`
-/

namespace A239675.P17242261480924254249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A213598 n).toNat - A213598 n

end

end A239675.P17242261480924254249

/-! ## A239675.P15247711274294930043

`A151800(∑[A002865(n)])-(A133041(n)-n)`
-/

namespace A239675.P15247711274294930043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (A133041 n - (n : ℤ))

end

end A239675.P15247711274294930043

/-! ## A239675.P10290869761009284722

`A151800(A035363(2*n))-A035363(2*n)`
-/

namespace A239675.P10290869761009284722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A035363 (2 * n)).toNat - A035363 (2 * n)

end

end A239675.P10290869761009284722

/-! ## A239675.P8127130646735409370

`A151800(A100824(2*n))-A100824(2*n)`
-/

namespace A239675.P8127130646735409370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A100824 (2 * n)).toNat - A100824 (2 * n)

end

end A239675.P8127130646735409370

/-!
# A239677: Least numbers k such that k*3^n-1 is prime.

The programs for A239677, there is no canonical definition to state claims against.
-/

/-! ## A239677.P12520257390323058116

`gcd(A008611(A279066(n+1)), A100786(n+1))`
-/

namespace A239677.P12520257390323058116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 (A279066 (n + 1)).toNat) (A100786 (n + 1))

end

end A239677.P12520257390323058116

/-!
# A239678: Least numbers k such that k*2^n+1 is a square.

The programs for A239678, the canonical program `A239678.P6894274824431886186` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239678 has offset 0).

The definition of A239678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239678.P6894274824431886186

`3*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=4, a(2)=2, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239678

/-- `3*a(n-1)-2*a(n-2)` -/
def P6894274824431886186.Spec : Prop :=
  ∀ n, P6894274824431886186.a n = A239678 n

theorem P6894274824431886186.correct : P6894274824431886186.Spec := by
  intro n
  simp only [A239678]

end A239678

/-! ## A239678.P10964231131858421812

`2*a(n-1)+1` with `a(0)=3, a(1)=4, a(2)=2, a(3)=1`
-/

namespace A239678.P10964231131858421812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 2, 1] fun n a =>
  2 * a (n - 1) + 1

end

end A239678.P10964231131858421812

namespace A239678

/-- `2*a(n-1)+1` -/
def P10964231131858421812.Spec : Prop :=
  ∀ n, (P10964231131858421812.a n : ℤ) = A239678 n

end A239678

/-! ## A239678.P3995655216513048794

`∑[2*a(n-1)]` with `a(0)=3, a(1)=1, a(2)=-2, a(3)=-1, a(4)=2`
-/

namespace A239678.P3995655216513048794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, -2, -1, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239678.P3995655216513048794

namespace A239678

/-- `∑[2*a(n-1)]` -/
def P3995655216513048794.Spec : Prop :=
  ∀ n, P3995655216513048794.a n = A239678 n

end A239678

/-! ## A239678.P11011618635652079318

`lcm(2, a(n-1))+1` with `a(0)=3, a(1)=4, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A239678.P11011618635652079318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 2, 1, 3] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 1

end

end A239678.P11011618635652079318

namespace A239678

/-- `lcm(2, a(n-1))+1` -/
def P11011618635652079318.Spec : Prop :=
  ∀ n, (P11011618635652079318.a n : ℤ) = A239678 n

end A239678

/-! ## A239678.P5730969630311531839

`3-2*(1-a(n-1))` with `a(0)=3, a(1)=4, a(2)=2, a(3)=1`
-/

namespace A239678.P5730969630311531839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 2, 1] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A239678.P5730969630311531839

namespace A239678

/-- `3-2*(1-a(n-1))` -/
def P5730969630311531839.Spec : Prop :=
  ∀ n, P5730969630311531839.a n = A239678 n

end A239678

/-! ## A239678.P6189977255582408171

`xor(a(n-1)+1, a(n-1))` with `a(0)=3, a(1)=4, a(2)=2`
-/

namespace A239678.P6189977255582408171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 2] fun n a =>
  Nat.xor (a (n - 1) + 1) (a (n - 1))

end

end A239678.P6189977255582408171

namespace A239678

/-- `xor(a(n-1)+1, a(n-1))` -/
def P6189977255582408171.Spec : Prop :=
  ∀ n, (P6189977255582408171.a n : ℤ) = A239678 n

end A239678

/-! ## A239678.P15416629566068693816

`a(n-1)+a(n-1)+1` with `a(0)=3, a(1)=4, a(2)=2, a(3)=1`
-/

namespace A239678.P15416629566068693816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 2, 1] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A239678.P15416629566068693816

namespace A239678

/-- `a(n-1)+a(n-1)+1` -/
def P15416629566068693816.Spec : Prop :=
  ∀ n, (P15416629566068693816.a n : ℤ) = A239678 n

end A239678

/-! ## A239678.P15705678635048994147

`(A088041(n+1)²-1)/A000079(n)`
-/

namespace A239678.P15705678635048994147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088041 (n + 1) ^ 2 - 1 : ℚ) / (A000079 n : ℚ)

end

end A239678.P15705678635048994147

namespace A239678

/-- `(A088041(n+1)²-1)/A000079(n)` -/
def P15705678635048994147.Spec : Prop :=
  ∀ n, P15705678635048994147.a n = (A239678 n : ℚ)

end A239678

/-!
# A239679: Least number k > 0 such that k*2^n+1 is a cube.

The programs for A239679, the canonical program `A239679.P7005928044584288628` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239679 has offset 0).

The definition of A239679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239679.P7005928044584288628

`3+3*2^n+4^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239679

/-- `3+3*2^n+4^n` -/
def P7005928044584288628.Spec : Prop :=
  ∀ n, (P7005928044584288628.a n : ℤ) = A239679 n

theorem P7005928044584288628.correct : P7005928044584288628.Spec := by
  intro n
  simp only [A239679]

end A239679

/-! ## A239679.P17883982398135710941

`xor(A028400(n), A052548(n))`
-/

namespace A239679.P17883982398135710941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028400 n) (A052548 n)

end

end A239679.P17883982398135710941

namespace A239679

/-- `xor(A028400(n), A052548(n))` -/
def P17883982398135710941.Spec : Prop :=
  ∀ n, P17883982398135710941.a n = A239679 n

end A239679

/-! ## A239679.P306296086186177898

`xor(A052539(n), A164094(n))`
-/

namespace A239679.P306296086186177898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052539 n) (A164094 n)

end

end A239679.P306296086186177898

namespace A239679

/-- `xor(A052539(n), A164094(n))` -/
def P306296086186177898.Spec : Prop :=
  ∀ n, P306296086186177898.a n = A239679 n

end A239679

/-! ## A239679.P11485766513837433181

`xor(A048578(n), A170938(n))`
-/

namespace A239679.P11485766513837433181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048578 n) (A170938 n)

end

end A239679.P11485766513837433181

namespace A239679

/-- `xor(A048578(n), A170938(n))` -/
def P11485766513837433181.Spec : Prop :=
  ∀ n, P11485766513837433181.a n = A239679 n

end A239679

/-! ## A239679.P11035273079166127480

`xor(A062709(n), A242985(n))`
-/

namespace A239679.P11035273079166127480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062709 n) (A242985 n)

end

end A239679.P11035273079166127480

namespace A239679

/-- `xor(A062709(n), A242985(n))` -/
def P11035273079166127480.Spec : Prop :=
  ∀ n, P11035273079166127480.a n = A239679 n

end A239679

/-!
# A239680: Number of pairs (x,y) in {0,...,n-1}^2 such that x^2+y^2 divides n.

The programs for A239680, there is no canonical definition to state claims against.
-/

/-! ## A239680.P11203188743507450273

`∑{d}[a(n-1)+1, A000925(#)]` with `a(0)=0, a(1)=2`
-/

namespace A239680.P11203188743507450273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000925 d

end

end A239680.P11203188743507450273

/-! ## A239680.P10257407520524728981

`∑{d}[A131738(n), A000925(#)]`
-/

namespace A239680.P10257407520524728981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000925 d

end

end A239680.P10257407520524728981

/-! ## A239680.P2297679546234311311

`∑{d}[A087156(n+1), A000925(#)]`
-/

namespace A239680.P2297679546234311311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000925 d

end

end A239680.P2297679546234311311

/-! ## A239680.P6461571645674068417

`∑{d}[n+1, A000925(#)%A312915(n)]`
-/

namespace A239680.P6461571645674068417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000925 d) (A312915 n)

end

end A239680.P6461571645674068417

/-! ## A239680.P17826127012131599672

`∑{d}[A008624(A008574(n)), A000925(#)]`
-/

namespace A239680.P17826127012131599672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000925 d

end

end A239680.P17826127012131599672

/-! ## A239680.P17250099122382326996

`∑{d}[A003056(A055998(n)), A000925(#)]`
-/

namespace A239680.P17250099122382326996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000925 d

end

end A239680.P17250099122382326996

/-! ## A239680.P9562897746836544199

`∑{d}[A004526(A103517(n)), A000925(#)]`
-/

namespace A239680.P9562897746836544199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000925 d

end

end A239680.P9562897746836544199

/-! ## A239680.P6116890135916368036

`∑{d}[A002262(A001844(n)), A000925(#)]`
-/

namespace A239680.P6116890135916368036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000925 d

end

end A239680.P6116890135916368036

/-!
# A239681: Primality of Mersenne number 2^prime(n)-1.

The programs for A239681, there is no canonical definition to state claims against.
-/

/-! ## A239681.P4594201727854786892

`char[A016027(n+1)-1]`
-/

namespace A239681.P4594201727854786892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016027 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A239681.P4594201727854786892

/-! ## A239681.P9271270151549184395

`A332219(A000040(n+1))`
-/

namespace A239681.P9271270151549184395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A000040 (n + 1)).toNat

end

end A239681.P9271270151549184395

/-! ## A239681.P18075127250736232839

`char[A000720(A090748(n+1))]`
-/

namespace A239681.P18075127250736232839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090748 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A239681.P18075127250736232839

/-! ## A239681.P17025335603784784309

`char[A000720(A000043(n+1)-1)]`
-/

namespace A239681.P17025335603784784309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000043 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A239681.P17025335603784784309

/-! ## A239681.P9097426459125908746

`A332219(A008578(n+2))`
-/

namespace A239681.P9097426459125908746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A008578 (n + 2)).toNat

end

end A239681.P9097426459125908746

/-! ## A239681.P14389033989837267801

`A332219(p?[xor(1, n)])`
-/

namespace A239681.P14389033989837267801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239681.P14389033989837267801

/-! ## A239681.P7176711351852621967

`A332219(record[A006530(n+2)])`
-/

namespace A239681.P7176711351852621967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239681.P7176711351852621967

/-! ## A239681.P11098167899139792

`A332219(record[A020639(n+2)])`
-/

namespace A239681.P11098167899139792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239681.P11098167899139792

/-! ## A239681.P6771788325518144714

`A010051(A276121(n+1)+1)`
-/

namespace A239681.P6771788325518144714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A276121 (n + 1) + 1).toNat

end

end A239681.P6771788325518144714

/-! ## A239681.P608334609422164788

`A332219(record[A014963(n+2)])`
-/

namespace A239681.P608334609422164788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239681.P608334609422164788

/-! ## A239681.P7022474729042615783

`A332219(p?[A022998(n)+2])`
-/

namespace A239681.P7022474729042615783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A239681.P7022474729042615783

/-! ## A239681.P15020546076722870120

`A276121(n+1)%A249806(n+1)`
-/

namespace A239681.P15020546076722870120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276121 (n + 1)) (A249806 (n + 1))

end

end A239681.P15020546076722870120

/-! ## A239681.P16478684980163814407

`A332219(A332212(A332210(n+1)))`
-/

namespace A239681.P16478684980163814407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A332212 (A332210 (n + 1)).toNat).toNat

end

end A239681.P16478684980163814407

/-! ## A239681.P18138670334393151122

`C(2, A066180(n+1))`
-/

namespace A239681.P18138670334393151122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A066180 (n + 1)).toNat

end

end A239681.P18138670334393151122

/-! ## A239681.P18310687906236734512

`A019590(A066180(n+1))`
-/

namespace A239681.P18310687906236734512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A066180 (n + 1)).toNat

end

end A239681.P18310687906236734512

/-! ## A239681.P2141905589853679748

`A074038(2*(A066180(n+1)-1))`
-/

namespace A239681.P2141905589853679748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074038 (2 * (A066180 (n + 1) - 1)).toNat

end

end A239681.P2141905589853679748

/-! ## A239681.P8371894797749657746

`A074038(A066180(n+1)+A066180(n+1)-2)`
-/

namespace A239681.P8371894797749657746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074038 (A066180 (n + 1) + (A066180 (n + 1) - 2)).toNat

end

end A239681.P8371894797749657746

/-! ## A239681.P15918984912421806120

`val(A123487(n+1), 2)`
-/

namespace A239681.P15918984912421806120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A123487 (n + 1)).toNat 2

end

end A239681.P15918984912421806120

/-! ## A239681.P10879238751848960885

`A047751(A276121(n+1))`
-/

namespace A239681.P10879238751848960885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (A276121 (n + 1)).toNat

end

end A239681.P10879238751848960885

/-! ## A239681.P13784686335360871802

`A316341(A123487(n+1))`
-/

namespace A239681.P13784686335360871802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A123487 (n + 1)).toNat

end

end A239681.P13784686335360871802

/-!
# A239682: Product_{i=1..n} A173557(i).

The programs for A239682, there is no canonical definition to state claims against.
-/

/-! ## A239682.P14212103215749226621

`abs(A085542(n+1))`
-/

namespace A239682.P14212103215749226621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085542 (n + 1)|

end

end A239682.P14212103215749226621

/-! ## A239682.P13493389055125548897

`∏[∏{p}[n+1, #-1]]`
-/

namespace A239682.P13493389055125548897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239682.P13493389055125548897

/-! ## A239682.P10072305463660864312

`exp(∑[log(∏{p}[n+1, #-1])])`
-/

namespace A239682.P10072305463660864312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239682.P10072305463660864312

/-! ## A239682.P14881613321545397367

`a(n-1)*∏{p}[n+1, #-1]` with `a(0)=1`
-/

namespace A239682.P14881613321545397367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))

end

end A239682.P14881613321545397367

/-! ## A239682.P8427135351208940606

`∏[A173557(n+1)]`
-/

namespace A239682.P8427135351208940606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239682.P8427135351208940606

/-! ## A239682.P11919221565914543580

`∏[abs(A023900(n+1))]`
-/

namespace A239682.P11919221565914543580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023900 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239682.P11919221565914543580

/-! ## A239682.P3777876725461427256

`∏[A322351((n+1)²)]`
-/

namespace A239682.P3777876725461427256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322351 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239682.P3777876725461427256

/-! ## A239682.P3122948561759481767

`a(n-1)*A173557((n+1)²)` with `a(0)=1`
-/

namespace A239682.P3122948561759481767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A173557 ((n + 1) ^ 2)

end

end A239682.P3122948561759481767

/-! ## A239682.P16800372109668184075

`∏[A000010(A099985(n+1))]`
-/

namespace A239682.P16800372109668184075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A099985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239682.P16800372109668184075

/-! ## A239682.P15424114616668388839

`∏[A000010(A204455(n+1))]`
-/

namespace A239682.P15424114616668388839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A204455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A239682.P15424114616668388839

/-!
# A239683: Number of digits in decimal expansion of n^5.

The programs for A239683, the canonical program `A239683.P16314192363757025056` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239683 has offset 0).

The definition of A239683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239683.P16314192363757025056

`∑{digits}[n^5, (#%2)!]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239683

/-- `∑{digits}[n^5, (#%2)!]` -/
def P16314192363757025056.Spec : Prop :=
  ∀ n, (P16314192363757025056.a n : ℤ) = A239683 n

theorem P16314192363757025056.correct : P16314192363757025056.Spec := by
  intro n
  simp only [A239683]

end A239683

/-! ## A239683.P11888767017604620460

`∑{digits}[n^5, and(1, #)!]`
-/

namespace A239683.P11888767017604620460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A239683.P11888767017604620460

namespace A239683

/-- `∑{digits}[n^5, and(1, #)!]` -/
def P11888767017604620460.Spec : Prop :=
  ∀ n, (P11888767017604620460.a n : ℤ) = A239683 n

theorem P11888767017604620460.correct : P11888767017604620460.Spec := by
  intro n
  simp only [A239683, Nat.add_sub_cancel, A239683.P11888767017604620460.f1, A239683.P11888767017604620460.a, A239683.P16314192363757025056.f1, A239683.P16314192363757025056.a, SequenceMachineLib.memo_apply]
  try simp

end A239683

/-! ## A239683.P11946293911687605966

`∑{digits}[n^5, floor(atan(#))!]`
-/

namespace A239683.P11946293911687605966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial ⌊Real.arctan (x : ℝ)⌋.toNat).sum

end

end A239683.P11946293911687605966

namespace A239683

/-- `∑{digits}[n^5, floor(atan(#))!]` -/
def P11946293911687605966.Spec : Prop :=
  ∀ n, (P11946293911687605966.a n : ℤ) = A239683 n

end A239683

/-! ## A239683.P1946424465103398922

`∑{digits}[n^5, C(#, n+1)!]`
-/

namespace A239683.P1946424465103398922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.choose x (n + 1))).sum

end

end A239683.P1946424465103398922

namespace A239683

/-- `∑{digits}[n^5, C(#, n+1)!]` -/
def P1946424465103398922.Spec : Prop :=
  ∀ n, (P1946424465103398922.a n : ℤ) = A239683 n

end A239683

/-! ## A239683.P13426984564920514440

`∑{digits}[n^5, A036370(#)]`
-/

namespace A239683.P13426984564920514440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A239683.P13426984564920514440

namespace A239683

/-- `∑{digits}[n^5, A036370(#)]` -/
def P13426984564920514440.Spec : Prop :=
  ∀ n, P13426984564920514440.a n = A239683 n

end A239683

/-! ## A239683.P1306122948827479656

`∑{digits}[n^5, A061906(#)]`
-/

namespace A239683.P1306122948827479656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A061906 x).sum

end

end A239683.P1306122948827479656

namespace A239683

/-- `∑{digits}[n^5, A061906(#)]` -/
def P1306122948827479656.Spec : Prop :=
  ∀ n, P1306122948827479656.a n = A239683 n

end A239683

/-! ## A239683.P13832182609798968092

`∑{digits}[n^5, A001222(or(3, #))]`
-/

namespace A239683.P13832182609798968092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001222 (Nat.lor 3 x)).sum

end

end A239683.P13832182609798968092

namespace A239683

/-- `∑{digits}[n^5, A001222(or(3, #))]` -/
def P13832182609798968092.Spec : Prop :=
  ∀ n, P13832182609798968092.a n = A239683 n

end A239683

/-! ## A239683.P12007590161374900077

`A134021(A193452(n+1))`
-/

namespace A239683.P12007590161374900077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A193452 (n + 1)).toNat

end

end A239683.P12007590161374900077

namespace A239683

/-- `A134021(A193452(n+1))` -/
def P12007590161374900077.Spec : Prop :=
  ∀ n, P12007590161374900077.a n = A239683 n

end A239683

/-!
# A239684: Number of digits in the decimal expansion of n^4.

The programs for A239684, the canonical program `A239684.P4520864967617930361` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239684 has offset 0).

The definition of A239684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239684.P4520864967617930361

`∑{digits}[n^4, (#%2)!]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239684

/-- `∑{digits}[n^4, (#%2)!]` -/
def P4520864967617930361.Spec : Prop :=
  ∀ n, (P4520864967617930361.a n : ℤ) = A239684 n

theorem P4520864967617930361.correct : P4520864967617930361.Spec := by
  intro n
  simp only [A239684]

end A239684

/-! ## A239684.P3302716284817211125

`∑{digits}[n^4, and(1, #)!]`
-/

namespace A239684.P3302716284817211125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A239684.P3302716284817211125

namespace A239684

/-- `∑{digits}[n^4, and(1, #)!]` -/
def P3302716284817211125.Spec : Prop :=
  ∀ n, (P3302716284817211125.a n : ℤ) = A239684 n

theorem P3302716284817211125.correct : P3302716284817211125.Spec := by
  intro n
  simp only [A239684, Nat.add_sub_cancel, A239684.P3302716284817211125.f1, A239684.P3302716284817211125.a, A239684.P4520864967617930361.f1, A239684.P4520864967617930361.a, SequenceMachineLib.memo_apply]
  try simp

end A239684

/-! ## A239684.P14512102928467020064

`∑{digits}[n^4, dr(10^#)]`
-/

namespace A239684.P14512102928467020064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum

end

end A239684.P14512102928467020064

namespace A239684

/-- `∑{digits}[n^4, dr(10^#)]` -/
def P14512102928467020064.Spec : Prop :=
  ∀ n, (P14512102928467020064.a n : ℤ) = A239684 n

end A239684

/-! ## A239684.P531758171739846587

`∑{digits}[n^4, floor(atan(#))!]`
-/

namespace A239684.P531758171739846587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial ⌊Real.arctan (x : ℝ)⌋.toNat).sum

end

end A239684.P531758171739846587

namespace A239684

/-- `∑{digits}[n^4, floor(atan(#))!]` -/
def P531758171739846587.Spec : Prop :=
  ∀ n, (P531758171739846587.a n : ℤ) = A239684 n

end A239684

/-! ## A239684.P11584535484446915325

`∑{digits}[n²², abs((-1)^#)]`
-/

namespace A239684.P11584535484446915325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => |(-1) ^ x|).sum

end

end A239684.P11584535484446915325

namespace A239684

/-- `∑{digits}[n²², abs((-1)^#)]` -/
def P11584535484446915325.Spec : Prop :=
  ∀ n, P11584535484446915325.a n = A239684 n

end A239684

/-! ## A239684.P4471474633584752385

`∑[char[A130082(2*(n+1)+1)]]+1`
-/

namespace A239684.P4471474633584752385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (2 * (n + 1) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A239684.P4471474633584752385

namespace A239684

/-- `∑[char[A130082(2*(n+1)+1)]]+1` -/
def P4471474633584752385.Spec : Prop :=
  ∀ n, (P4471474633584752385.a n : ℤ) = A239684 n

end A239684

/-! ## A239684.P14843526138096347188

`A110655(2*A242374(n))`
-/

namespace A239684.P14843526138096347188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A242374 n).toNat

end

end A239684.P14843526138096347188

namespace A239684

/-- `A110655(2*A242374(n))` -/
def P14843526138096347188.Spec : Prop :=
  ∀ n, P14843526138096347188.a n = A239684 n

end A239684

/-! ## A239684.P6284917262254865827

`A185679(n²)`
-/

namespace A239684.P6284917262254865827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (n ^ 2)

end

end A239684.P6284917262254865827

namespace A239684

/-- `A185679(n²)` -/
def P6284917262254865827.Spec : Prop :=
  ∀ n, P6284917262254865827.a n = A239684 n

end A239684

/-! ## A239684.P2916542623169452005

`A110655(A242374(n²))`
-/

namespace A239684.P2916542623169452005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A242374 (n ^ 2)).toNat

end

end A239684.P2916542623169452005

namespace A239684

/-- `A110655(A242374(n²))` -/
def P2916542623169452005.Spec : Prop :=
  ∀ n, P2916542623169452005.a n = A239684 n

end A239684

/-!
# A239685: Prime numbers for which the sum of reciprocals of nonzero digits equals 1.

The programs for A239685, there is no canonical definition to state claims against.
-/

/-! ## A239685.P5734874090613830963

`p?[A214959(n+1)]`
-/

namespace A239685.P5734874090613830963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239685.P5734874090613830963

/-! ## A239685.P6023287510925850993

`record[p?[A214959(A324347(n))]]`
-/

namespace A239685.P6023287510925850993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214959 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239685.P6023287510925850993

/-! ## A239685.P4632641277811765525

`p?[A037265(A005408(n))*A214958(n+1)]`
-/

namespace A239685.P4632641277811765525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037265 (A005408 n).toNat * A214958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239685.P4632641277811765525

/-! ## A239685.P2920713291871693971

`p?[A037265(A052382(n+1))*A214958(n+1)]`
-/

namespace A239685.P2920713291871693971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037265 (A052382 (n + 1)).toNat * A214958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239685.P2920713291871693971

/-! ## A239685.P17466790732548514182

`p?[A214958(n+1)%A037264(n+1)]`
-/

namespace A239685.P17466790732548514182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214958 (n + 1)) (A037264 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239685.P17466790732548514182

/-!
# A239689: Number of partitions p of n such that if h = max(p) - min(p), then h is an (h,2)-separator of p; see Comments.

The programs for A239689, there is no canonical definition to state claims against.
-/

/-! ## A239689.P1175669310862407742

`A139354(A028495(n))*A139354(n)`
-/

namespace A239689.P1175669310862407742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A028495 n).toNat * A139354 n

end

end A239689.P1175669310862407742

/-! ## A239689.P16808836891043207009

`A324344(A324362(3*(n+1)))%A324338(n)`
-/

namespace A239689.P16808836891043207009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324344 (A324362 (3 * (n + 1))).toNat) (A324338 n)

end

end A239689.P16808836891043207009

/-! ## A239689.P8119469713428992460

`A260728(n*A106611(A023422(n)))`
-/

namespace A239689.P8119469713428992460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 ((n : ℤ) * A106611 (A023422 n).toNat).toNat

end

end A239689.P8119469713428992460

/-! ## A239689.P9072842119221959844

`A000120(and(A064821(n+1), A285362(2*n+1)))`
-/

namespace A239689.P9072842119221959844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A064821 (n + 1)) (A285362 (2 * n + 1))).toNat

end

end A239689.P9072842119221959844

/-! ## A239689.P2268727096057924942

`A247186(A340244(n+1))%A005728(A008612(n))`
-/

namespace A239689.P2268727096057924942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247186 (A340244 (n + 1)).toNat) (A005728 (A008612 n).toNat)

end

end A239689.P2268727096057924942

/-!
# A239690: Base 4 sum of digits of prime(n).

The programs for A239690, the canonical program `A239690.P6526358221762526972` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239690 has offset 1).

The definition of A239690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239690.P6526358221762526972

`A053737(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239690

/-- `A053737(A000040(n+1))` -/
def P6526358221762526972.Spec : Prop :=
  ∀ n, P6526358221762526972.a n = A239690 (n + 1)

theorem P6526358221762526972.correct : P6526358221762526972.Spec := by
  intro n
  simp only [A239690, Nat.add_sub_cancel]

end A239690

/-! ## A239690.P4889609426081486455

`∑{digits}[A004678(n+1), #]`
-/

namespace A239690.P4889609426081486455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239690.P4889609426081486455

namespace A239690

/-- `∑{digits}[A004678(n+1), #]` -/
def P4889609426081486455.Spec : Prop :=
  ∀ n, (P4889609426081486455.a n : ℤ) = A239690 (n + 1)

end A239690

/-! ## A239690.P9063679722669953442

`A053737(p?[comp[n²]])`
-/

namespace A239690.P9063679722669953442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239690.P9063679722669953442

namespace A239690

/-- `A053737(p?[comp[n²]])` -/
def P9063679722669953442.Spec : Prop :=
  ∀ n, P9063679722669953442.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P14093084439994457655

`A053737(Δ[A007504(n)])`
-/

namespace A239690.P14093084439994457655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (f1 (n + 1) - f1 n).toNat

end

end A239690.P14093084439994457655

namespace A239690

/-- `A053737(Δ[A007504(n)])` -/
def P14093084439994457655.Spec : Prop :=
  ∀ n, P14093084439994457655.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P1930342962288036479

`A053737(A008578(n+2))`
-/

namespace A239690.P1930342962288036479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008578 (n + 2)).toNat

end

end A239690.P1930342962288036479

namespace A239690

/-- `A053737(A008578(n+2))` -/
def P1930342962288036479.Spec : Prop :=
  ∀ n, P1930342962288036479.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P13849674232402479051

`A053737(A182986(n+2))`
-/

namespace A239690.P13849674232402479051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A182986 (n + 2)).toNat

end

end A239690.P13849674232402479051

namespace A239690

/-- `A053737(A182986(n+2))` -/
def P13849674232402479051.Spec : Prop :=
  ∀ n, P13849674232402479051.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P8080630032445600284

`A053737(eq[1, A105700(n)])`
-/

namespace A239690.P8080630032445600284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239690.P8080630032445600284

namespace A239690

/-- `A053737(eq[1, A105700(n)])` -/
def P8080630032445600284.Spec : Prop :=
  ∀ n, P8080630032445600284.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P655674374831459050

`A053737(record[A006530(n+2)])`
-/

namespace A239690.P655674374831459050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239690.P655674374831459050

namespace A239690

/-- `A053737(record[A006530(n+2)])` -/
def P655674374831459050.Spec : Prop :=
  ∀ n, P655674374831459050.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P2273250753900765133

`A053737(record[A014963(n+2)])`
-/

namespace A239690.P2273250753900765133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239690.P2273250753900765133

namespace A239690

/-- `A053737(record[A014963(n+2)])` -/
def P2273250753900765133.Spec : Prop :=
  ∀ n, P2273250753900765133.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P18200713865676540044

`A053737(record[A020639(n+2)])`
-/

namespace A239690.P18200713865676540044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239690.P18200713865676540044

namespace A239690

/-- `A053737(record[A020639(n+2)])` -/
def P18200713865676540044.Spec : Prop :=
  ∀ n, P18200713865676540044.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P1339052189465037905

`A053737(record[p?[A324389(n+1)]])`
-/

namespace A239690.P1339052189465037905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239690.P1339052189465037905

namespace A239690

/-- `A053737(record[p?[A324389(n+1)]])` -/
def P1339052189465037905.Spec : Prop :=
  ∀ n, P1339052189465037905.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P11195898714733483096

`A053737(A006530(A001749(n+1)))`
-/

namespace A239690.P11195898714733483096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A006530 (A001749 (n + 1)).toNat).toNat

end

end A239690.P11195898714733483096

namespace A239690

/-- `A053737(A006530(A001749(n+1)))` -/
def P11195898714733483096.Spec : Prop :=
  ∀ n, P11195898714733483096.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P9805402178549852242

`A053737(eq[2, A284289(2*n)])`
-/

namespace A239690.P9805402178549852242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239690.P9805402178549852242

namespace A239690

/-- `A053737(eq[2, A284289(2*n)])` -/
def P9805402178549852242.Spec : Prop :=
  ∀ n, P9805402178549852242.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P11774275874751503333

`A053737(A001749(n+1))`
-/

namespace A239690.P11774275874751503333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A001749 (n + 1)).toNat

end

end A239690.P11774275874751503333

namespace A239690

/-- `A053737(A001749(n+1))` -/
def P11774275874751503333.Spec : Prop :=
  ∀ n, P11774275874751503333.a n = A239690 (n + 1)

end A239690

/-! ## A239690.P15877390765063919252

`A053737(A072900(n+1))`
-/

namespace A239690.P15877390765063919252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A072900 (n + 1)).toNat

end

end A239690.P15877390765063919252

namespace A239690

/-- `A053737(A072900(n+1))` -/
def P15877390765063919252.Spec : Prop :=
  ∀ n, P15877390765063919252.a n = A239690 (n + 1)

end A239690

/-!
# A239691: Base 5 sum of digits of prime(n).

The programs for A239691, the canonical program `A239691.P9580753319822426723` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239691 has offset 1).

The definition of A239691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239691.P9580753319822426723

`A053824(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239691

/-- `A053824(A000040(n+1))` -/
def P9580753319822426723.Spec : Prop :=
  ∀ n, P9580753319822426723.a n = A239691 (n + 1)

theorem P9580753319822426723.correct : P9580753319822426723.Spec := by
  intro n
  simp only [A239691, Nat.add_sub_cancel]

end A239691

/-! ## A239691.P16098031646658486536

`∑{digits}[A004679(n+1), #]`
-/

namespace A239691.P16098031646658486536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239691.P16098031646658486536

namespace A239691

/-- `∑{digits}[A004679(n+1), #]` -/
def P16098031646658486536.Spec : Prop :=
  ∀ n, (P16098031646658486536.a n : ℤ) = A239691 (n + 1)

end A239691

/-! ## A239691.P8398589136092708191

`A053824(p?[comp[n²]])`
-/

namespace A239691.P8398589136092708191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239691.P8398589136092708191

namespace A239691

/-- `A053824(p?[comp[n²]])` -/
def P8398589136092708191.Spec : Prop :=
  ∀ n, P8398589136092708191.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P12087173376606050730

`A053824(A161847(n+1))`
-/

namespace A239691.P12087173376606050730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A161847 (n + 1)).toNat

end

end A239691.P12087173376606050730

namespace A239691

/-- `A053824(A161847(n+1))` -/
def P12087173376606050730.Spec : Prop :=
  ∀ n, P12087173376606050730.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P4823656556832675702

`A053824(A008578(n+2))`
-/

namespace A239691.P4823656556832675702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008578 (n + 2)).toNat

end

end A239691.P4823656556832675702

namespace A239691

/-- `A053824(A008578(n+2))` -/
def P4823656556832675702.Spec : Prop :=
  ∀ n, P4823656556832675702.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P4844798139006185785

`A053824(A182986(n+2))`
-/

namespace A239691.P4844798139006185785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A182986 (n + 2)).toNat

end

end A239691.P4844798139006185785

namespace A239691

/-- `A053824(A182986(n+2))` -/
def P4844798139006185785.Spec : Prop :=
  ∀ n, P4844798139006185785.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P11783488870283410120

`A053824(record[A053811(n+1)])`
-/

namespace A239691.P11783488870283410120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239691.P11783488870283410120

namespace A239691

/-- `A053824(record[A053811(n+1)])` -/
def P11783488870283410120.Spec : Prop :=
  ∀ n, P11783488870283410120.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P5045794871881796919

`A053824(record[A006530(n+2)])`
-/

namespace A239691.P5045794871881796919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239691.P5045794871881796919

namespace A239691

/-- `A053824(record[A006530(n+2)])` -/
def P5045794871881796919.Spec : Prop :=
  ∀ n, P5045794871881796919.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P3472690098549332594

`A053824(record[A014963(n+2)])`
-/

namespace A239691.P3472690098549332594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239691.P3472690098549332594

namespace A239691

/-- `A053824(record[A014963(n+2)])` -/
def P3472690098549332594.Spec : Prop :=
  ∀ n, P3472690098549332594.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P11637829697739164539

`A053824(record[A020639(n+2)])`
-/

namespace A239691.P11637829697739164539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239691.P11637829697739164539

namespace A239691

/-- `A053824(record[A020639(n+2)])` -/
def P11637829697739164539.Spec : Prop :=
  ∀ n, P11637829697739164539.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P2003783752757490892

`A053824(record[A053815(n+2)])`
-/

namespace A239691.P2003783752757490892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239691.P2003783752757490892

namespace A239691

/-- `A053824(record[A053815(n+2)])` -/
def P2003783752757490892.Spec : Prop :=
  ∀ n, P2003783752757490892.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P6737985853272847704

`A173525(A000040(n+1)+1)-1`
-/

namespace A239691.P6737985853272847704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (A000040 (n + 1) + 1).toNat - 1

end

end A239691.P6737985853272847704

namespace A239691

/-- `A173525(A000040(n+1)+1)-1` -/
def P6737985853272847704.Spec : Prop :=
  ∀ n, P6737985853272847704.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P1210557025421085182

`A173525(record[A006530(n+2)]+1)-1`
-/

namespace A239691.P1210557025421085182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat - 1

end

end A239691.P1210557025421085182

namespace A239691

/-- `A173525(record[A006530(n+2)]+1)-1` -/
def P1210557025421085182.Spec : Prop :=
  ∀ n, P1210557025421085182.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P5772469710284739290

`A053824(A065073(n+1)-A007605(n+1))`
-/

namespace A239691.P5772469710284739290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A065073 (n + 1) - A007605 (n + 1)).toNat

end

end A239691.P5772469710284739290

namespace A239691

/-- `A053824(A065073(n+1)-A007605(n+1))` -/
def P5772469710284739290.Spec : Prop :=
  ∀ n, P5772469710284739290.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P842810102599335731

`A053824(A001750(n+1))`
-/

namespace A239691.P842810102599335731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A001750 (n + 1)).toNat

end

end A239691.P842810102599335731

namespace A239691

/-- `A053824(A001750(n+1))` -/
def P842810102599335731.Spec : Prop :=
  ∀ n, P842810102599335731.a n = A239691 (n + 1)

end A239691

/-! ## A239691.P2594604779443834617

`A007953(A004679(n+1))`
-/

namespace A239691.P2594604779443834617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004679 (n + 1)).toNat

end

end A239691.P2594604779443834617

namespace A239691

/-- `A007953(A004679(n+1))` -/
def P2594604779443834617.Spec : Prop :=
  ∀ n, P2594604779443834617.a n = A239691 (n + 1)

end A239691

/-!
# A239692: Base 6 sum of digits of prime(n).

The programs for A239692, the canonical program `A239692.P2456652248599163808` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239692 has offset 1).

The definition of A239692 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239692.P2456652248599163808

`A053827(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239692

/-- `A053827(A000040(n+1))` -/
def P2456652248599163808.Spec : Prop :=
  ∀ n, P2456652248599163808.a n = A239692 (n + 1)

theorem P2456652248599163808.correct : P2456652248599163808.Spec := by
  intro n
  simp only [A239692, Nat.add_sub_cancel]

end A239692

/-! ## A239692.P10833689799788342375

`∑{digits}[A004680(n+1), #]`
-/

namespace A239692.P10833689799788342375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239692.P10833689799788342375

namespace A239692

/-- `∑{digits}[A004680(n+1), #]` -/
def P10833689799788342375.Spec : Prop :=
  ∀ n, (P10833689799788342375.a n : ℤ) = A239692 (n + 1)

end A239692

/-! ## A239692.P13253677193492976947

`A053827(p?[comp[n²]])`
-/

namespace A239692.P13253677193492976947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239692.P13253677193492976947

namespace A239692

/-- `A053827(p?[comp[n²]])` -/
def P13253677193492976947.Spec : Prop :=
  ∀ n, P13253677193492976947.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P18184748139580513099

`A173526(p?[comp[n²]])`
-/

namespace A239692.P18184748139580513099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239692.P18184748139580513099

namespace A239692

/-- `A173526(p?[comp[n²]])` -/
def P18184748139580513099.Spec : Prop :=
  ∀ n, P18184748139580513099.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P10439704218938953963

`A053827(A008578(n+2))`
-/

namespace A239692.P10439704218938953963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008578 (n + 2)).toNat

end

end A239692.P10439704218938953963

namespace A239692

/-- `A053827(A008578(n+2))` -/
def P10439704218938953963.Spec : Prop :=
  ∀ n, P10439704218938953963.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P326729785957357742

`A053827(A182986(n+2))`
-/

namespace A239692.P326729785957357742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A182986 (n + 2)).toNat

end

end A239692.P326729785957357742

namespace A239692

/-- `A053827(A182986(n+2))` -/
def P326729785957357742.Spec : Prop :=
  ∀ n, P326729785957357742.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P9998949384336263762

`A053827(record[A053811(n+1)])`
-/

namespace A239692.P9998949384336263762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P9998949384336263762

namespace A239692

/-- `A053827(record[A053811(n+1)])` -/
def P9998949384336263762.Spec : Prop :=
  ∀ n, P9998949384336263762.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P17633403031171485083

`A053827(record[A006530(n+2)])`
-/

namespace A239692.P17633403031171485083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P17633403031171485083

namespace A239692

/-- `A053827(record[A006530(n+2)])` -/
def P17633403031171485083.Spec : Prop :=
  ∀ n, P17633403031171485083.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P5699124809046597984

`A053827(record[A014963(n+2)])`
-/

namespace A239692.P5699124809046597984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P5699124809046597984

namespace A239692

/-- `A053827(record[A014963(n+2)])` -/
def P5699124809046597984.Spec : Prop :=
  ∀ n, P5699124809046597984.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P17702985411104005782

`A053827(record[A020639(n+2)])`
-/

namespace A239692.P17702985411104005782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P17702985411104005782

namespace A239692

/-- `A053827(record[A020639(n+2)])` -/
def P17702985411104005782.Spec : Prop :=
  ∀ n, P17702985411104005782.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P10276646317921004983

`A053827(record[A053815(n+2)])`
-/

namespace A239692.P10276646317921004983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P10276646317921004983

namespace A239692

/-- `A053827(record[A053815(n+2)])` -/
def P10276646317921004983.Spec : Prop :=
  ∀ n, P10276646317921004983.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P11488718273018941479

`A173526(record[A006530(n+2)])`
-/

namespace A239692.P11488718273018941479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P11488718273018941479

namespace A239692

/-- `A173526(record[A006530(n+2)])` -/
def P11488718273018941479.Spec : Prop :=
  ∀ n, P11488718273018941479.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P7071021143341707344

`A173526(record[A014963(n+2)])`
-/

namespace A239692.P7071021143341707344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P7071021143341707344

namespace A239692

/-- `A173526(record[A014963(n+2)])` -/
def P7071021143341707344.Spec : Prop :=
  ∀ n, P7071021143341707344.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P12584801085832536389

`A173526(record[A020639(n+2)])`
-/

namespace A239692.P12584801085832536389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239692.P12584801085832536389

namespace A239692

/-- `A173526(record[A020639(n+2)])` -/
def P12584801085832536389.Spec : Prop :=
  ∀ n, P12584801085832536389.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P15076713689736411277

`A053827(eq[1, A001222(n+1)]+1)`
-/

namespace A239692.P15076713689736411277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239692.P15076713689736411277

namespace A239692

/-- `A053827(eq[1, A001222(n+1)]+1)` -/
def P15076713689736411277.Spec : Prop :=
  ∀ n, P15076713689736411277.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P13856369712399971791

`A173526(eq[n, A000010(n+1)]+1)`
-/

namespace A239692.P13856369712399971791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239692.P13856369712399971791

namespace A239692

/-- `A173526(eq[n, A000010(n+1)]+1)` -/
def P13856369712399971791.Spec : Prop :=
  ∀ n, P13856369712399971791.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P17042628755073843596

`∑{digits}[A007092(p?[n*A069513(n+1)+1]), #]`
-/

namespace A239692.P17042628755073843596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069513 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239692.P17042628755073843596

namespace A239692

/-- `∑{digits}[A007092(p?[n*A069513(n+1)+1]), #]` -/
def P17042628755073843596.Spec : Prop :=
  ∀ n, (P17042628755073843596.a n : ℤ) = A239692 (n + 1)

end A239692

/-! ## A239692.P5333282894845739087

`A053827(A138636(n+1))`
-/

namespace A239692.P5333282894845739087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A138636 (n + 1)).toNat

end

end A239692.P5333282894845739087

namespace A239692

/-- `A053827(A138636(n+1))` -/
def P5333282894845739087.Spec : Prop :=
  ∀ n, P5333282894845739087.a n = A239692 (n + 1)

end A239692

/-! ## A239692.P4475712206568818490

`A007953(A004680(n+1))`
-/

namespace A239692.P4475712206568818490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004680 (n + 1)).toNat

end

end A239692.P4475712206568818490

namespace A239692

/-- `A007953(A004680(n+1))` -/
def P4475712206568818490.Spec : Prop :=
  ∀ n, P4475712206568818490.a n = A239692 (n + 1)

end A239692

/-!
# A239693: Base 7 sum of digits of prime(n).

The programs for A239693, the canonical program `A239693.P6595797453947118428` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239693 has offset 1).

The definition of A239693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239693.P6595797453947118428

`A053828(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239693

/-- `A053828(A000040(n+1))` -/
def P6595797453947118428.Spec : Prop :=
  ∀ n, P6595797453947118428.a n = A239693 (n + 1)

theorem P6595797453947118428.correct : P6595797453947118428.Spec := by
  intro n
  simp only [A239693, Nat.add_sub_cancel]

end A239693

/-! ## A239693.P4827162990034775216

`∑{digits}[A004681(n+1), #]`
-/

namespace A239693.P4827162990034775216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239693.P4827162990034775216

namespace A239693

/-- `∑{digits}[A004681(n+1), #]` -/
def P4827162990034775216.Spec : Prop :=
  ∀ n, (P4827162990034775216.a n : ℤ) = A239693 (n + 1)

end A239693

/-! ## A239693.P12166754457428668014

`A053828(p?[comp[n²]])`
-/

namespace A239693.P12166754457428668014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239693.P12166754457428668014

namespace A239693

/-- `A053828(p?[comp[n²]])` -/
def P12166754457428668014.Spec : Prop :=
  ∀ n, P12166754457428668014.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P4933660528339341936

`A053828(Δ[A007504(n)])`
-/

namespace A239693.P4933660528339341936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (f1 (n + 1) - f1 n).toNat

end

end A239693.P4933660528339341936

namespace A239693

/-- `A053828(Δ[A007504(n)])` -/
def P4933660528339341936.Spec : Prop :=
  ∀ n, P4933660528339341936.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P4131947747508135131

`A053828(A008578(n+2))`
-/

namespace A239693.P4131947747508135131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A008578 (n + 2)).toNat

end

end A239693.P4131947747508135131

namespace A239693

/-- `A053828(A008578(n+2))` -/
def P4131947747508135131.Spec : Prop :=
  ∀ n, P4131947747508135131.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P5691296782601414892

`A053828(A182986(n+2))`
-/

namespace A239693.P5691296782601414892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A182986 (n + 2)).toNat

end

end A239693.P5691296782601414892

namespace A239693

/-- `A053828(A182986(n+2))` -/
def P5691296782601414892.Spec : Prop :=
  ∀ n, P5691296782601414892.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P12918796953792381840

`A053828(record[A053811(n+1)])`
-/

namespace A239693.P12918796953792381840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239693.P12918796953792381840

namespace A239693

/-- `A053828(record[A053811(n+1)])` -/
def P12918796953792381840.Spec : Prop :=
  ∀ n, P12918796953792381840.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P13692996555949517991

`A053828(record[A006530(n+2)])`
-/

namespace A239693.P13692996555949517991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239693.P13692996555949517991

namespace A239693

/-- `A053828(record[A006530(n+2)])` -/
def P13692996555949517991.Spec : Prop :=
  ∀ n, P13692996555949517991.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P845819737375974819

`A053828(record[A014963(n+2)])`
-/

namespace A239693.P845819737375974819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239693.P845819737375974819

namespace A239693

/-- `A053828(record[A014963(n+2)])` -/
def P845819737375974819.Spec : Prop :=
  ∀ n, P845819737375974819.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P11355203742094678519

`A053828(record[A020639(n+2)])`
-/

namespace A239693.P11355203742094678519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239693.P11355203742094678519

namespace A239693

/-- `A053828(record[A020639(n+2)])` -/
def P11355203742094678519.Spec : Prop :=
  ∀ n, P11355203742094678519.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P9347142577771474017

`A053828(record[A053815(n+2)])`
-/

namespace A239693.P9347142577771474017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239693.P9347142577771474017

namespace A239693

/-- `A053828(record[A053815(n+2)])` -/
def P9347142577771474017.Spec : Prop :=
  ∀ n, P9347142577771474017.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P9866194251528983321

`A053828(eq[1, A010051(n+1)]+1)`
-/

namespace A239693.P9866194251528983321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239693.P9866194251528983321

namespace A239693

/-- `A053828(eq[1, A010051(n+1)]+1)` -/
def P9866194251528983321.Spec : Prop :=
  ∀ n, P9866194251528983321.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P2828797803730617972

`A053828(eq[2, A007012(n)])`
-/

namespace A239693.P2828797803730617972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239693.P2828797803730617972

namespace A239693

/-- `A053828(eq[2, A007012(n)])` -/
def P2828797803730617972.Spec : Prop :=
  ∀ n, P2828797803730617972.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P9256817310517655506

`A007953(A004681(n+1))`
-/

namespace A239693.P9256817310517655506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004681 (n + 1)).toNat

end

end A239693.P9256817310517655506

namespace A239693

/-- `A007953(A004681(n+1))` -/
def P9256817310517655506.Spec : Prop :=
  ∀ n, P9256817310517655506.a n = A239693 (n + 1)

end A239693

/-! ## A239693.P10647360850838689898

`A053828(A272470(n+1))`
-/

namespace A239693.P10647360850838689898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A272470 (n + 1)).toNat

end

end A239693.P10647360850838689898

namespace A239693

/-- `A053828(A272470(n+1))` -/
def P10647360850838689898.Spec : Prop :=
  ∀ n, P10647360850838689898.a n = A239693 (n + 1)

end A239693

/-!
# A239694: Base 8 sum of digits of prime(n).

The programs for A239694, the canonical program `A239694.P16976564839662586664` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239694 has offset 1).

The definition of A239694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239694.P16976564839662586664

`A053829(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239694

/-- `A053829(A000040(n+1))` -/
def P16976564839662586664.Spec : Prop :=
  ∀ n, P16976564839662586664.a n = A239694 (n + 1)

theorem P16976564839662586664.correct : P16976564839662586664.Spec := by
  intro n
  simp only [A239694, Nat.add_sub_cancel]

end A239694

/-! ## A239694.P14596363221821762836

`∑{digits}[A004682(n+1), #]`
-/

namespace A239694.P14596363221821762836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239694.P14596363221821762836

namespace A239694

/-- `∑{digits}[A004682(n+1), #]` -/
def P14596363221821762836.Spec : Prop :=
  ∀ n, (P14596363221821762836.a n : ℤ) = A239694 (n + 1)

end A239694

/-! ## A239694.P4071567788881078408

`A053829(p?[comp[n²]])`
-/

namespace A239694.P4071567788881078408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239694.P4071567788881078408

namespace A239694

/-- `A053829(p?[comp[n²]])` -/
def P4071567788881078408.Spec : Prop :=
  ∀ n, P4071567788881078408.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P14176164284996386649

`A173528(p?[comp[n²]])`
-/

namespace A239694.P14176164284996386649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A239694.P14176164284996386649

namespace A239694

/-- `A173528(p?[comp[n²]])` -/
def P14176164284996386649.Spec : Prop :=
  ∀ n, P14176164284996386649.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P15407142710389692956

`A053829(Δ[A007504(n)])`
-/

namespace A239694.P15407142710389692956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (f1 (n + 1) - f1 n).toNat

end

end A239694.P15407142710389692956

namespace A239694

/-- `A053829(Δ[A007504(n)])` -/
def P15407142710389692956.Spec : Prop :=
  ∀ n, P15407142710389692956.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P3832958827344309643

`A053829(A008578(n+2))`
-/

namespace A239694.P3832958827344309643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A008578 (n + 2)).toNat

end

end A239694.P3832958827344309643

namespace A239694

/-- `A053829(A008578(n+2))` -/
def P3832958827344309643.Spec : Prop :=
  ∀ n, P3832958827344309643.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P8800035108038546235

`A053829(A182986(n+2))`
-/

namespace A239694.P8800035108038546235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A182986 (n + 2)).toNat

end

end A239694.P8800035108038546235

namespace A239694

/-- `A053829(A182986(n+2))` -/
def P8800035108038546235.Spec : Prop :=
  ∀ n, P8800035108038546235.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P15208720985444109834

`A053829(eq[1, A003415(n)])`
-/

namespace A239694.P15208720985444109834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239694.P15208720985444109834

namespace A239694

/-- `A053829(eq[1, A003415(n)])` -/
def P15208720985444109834.Spec : Prop :=
  ∀ n, P15208720985444109834.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P5596602654878912240

`A053829(record[A053811(n+1)])`
-/

namespace A239694.P5596602654878912240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P5596602654878912240

namespace A239694

/-- `A053829(record[A053811(n+1)])` -/
def P5596602654878912240.Spec : Prop :=
  ∀ n, P5596602654878912240.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P5382994761917023649

`A053829(record[A006530(n+2)])`
-/

namespace A239694.P5382994761917023649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P5382994761917023649

namespace A239694

/-- `A053829(record[A006530(n+2)])` -/
def P5382994761917023649.Spec : Prop :=
  ∀ n, P5382994761917023649.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P2253237818454836016

`A053829(record[A014963(n+2)])`
-/

namespace A239694.P2253237818454836016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P2253237818454836016

namespace A239694

/-- `A053829(record[A014963(n+2)])` -/
def P2253237818454836016.Spec : Prop :=
  ∀ n, P2253237818454836016.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P5504285791975944321

`A053829(record[A020639(n+2)])`
-/

namespace A239694.P5504285791975944321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P5504285791975944321

namespace A239694

/-- `A053829(record[A020639(n+2)])` -/
def P5504285791975944321.Spec : Prop :=
  ∀ n, P5504285791975944321.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P11800035914545723245

`A053829(record[A053815(n+2)])`
-/

namespace A239694.P11800035914545723245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P11800035914545723245

namespace A239694

/-- `A053829(record[A053815(n+2)])` -/
def P11800035914545723245.Spec : Prop :=
  ∀ n, P11800035914545723245.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P6774434662180798880

`A173528(record[A006530(n+2)])`
-/

namespace A239694.P6774434662180798880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P6774434662180798880

namespace A239694

/-- `A173528(record[A006530(n+2)])` -/
def P6774434662180798880.Spec : Prop :=
  ∀ n, P6774434662180798880.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P308206736621469255

`A173528(record[A014963(n+2)])`
-/

namespace A239694.P308206736621469255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P308206736621469255

namespace A239694

/-- `A173528(record[A014963(n+2)])` -/
def P308206736621469255.Spec : Prop :=
  ∀ n, P308206736621469255.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P7056182534505580139

`A173528(record[A020639(n+2)])`
-/

namespace A239694.P7056182534505580139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P7056182534505580139

namespace A239694

/-- `A173528(record[A020639(n+2)])` -/
def P7056182534505580139.Spec : Prop :=
  ∀ n, P7056182534505580139.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P1086763598351382921

`A173528(A006093(n+1)+1)`
-/

namespace A239694.P1086763598351382921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (A006093 (n + 1) + 1).toNat

end

end A239694.P1086763598351382921

namespace A239694

/-- `A173528(A006093(n+1)+1)` -/
def P1086763598351382921.Spec : Prop :=
  ∀ n, P1086763598351382921.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P15055160430229081082

`A173528(record[A000010(n+1)+1])`
-/

namespace A239694.P15055160430229081082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239694.P15055160430229081082

namespace A239694

/-- `A173528(record[A000010(n+1)+1])` -/
def P15055160430229081082.Spec : Prop :=
  ∀ n, P15055160430229081082.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P494715793514121589

`A173528(eq[1, A001222(n+1)]+1)`
-/

namespace A239694.P494715793514121589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239694.P494715793514121589

namespace A239694

/-- `A173528(eq[1, A001222(n+1)]+1)` -/
def P494715793514121589.Spec : Prop :=
  ∀ n, P494715793514121589.a n = A239694 (n + 1)

end A239694

/-! ## A239694.P6289104752911543584

`A173528(eq[2, A000005(n+1)]+1)`
-/

namespace A239694.P6289104752911543584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239694.P6289104752911543584

namespace A239694

/-- `A173528(eq[2, A000005(n+1)]+1)` -/
def P6289104752911543584.Spec : Prop :=
  ∀ n, P6289104752911543584.a n = A239694 (n + 1)

end A239694

/-!
# A239695: Base 9 sum of digits of prime(n).

The programs for A239695, the canonical program `A239695.P12338492364467656266` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239695 has offset 1).

The definition of A239695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A053830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239695.P12338492364467656266

`A053830(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239695

/-- `A053830(A000040(n+1))` -/
def P12338492364467656266.Spec : Prop :=
  ∀ n, P12338492364467656266.a n = A239695 (n + 1)

theorem P12338492364467656266.correct : P12338492364467656266.Spec := by
  intro n
  simp only [A239695, Nat.add_sub_cancel]

end A239695

/-! ## A239695.P18175050773346374580

`∑{digits}[A004683(n+1), #]`
-/

namespace A239695.P18175050773346374580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A239695.P18175050773346374580

namespace A239695

/-- `∑{digits}[A004683(n+1), #]` -/
def P18175050773346374580.Spec : Prop :=
  ∀ n, (P18175050773346374580.a n : ℤ) = A239695 (n + 1)

end A239695

/-! ## A239695.P2036441014702169217

`A053830(A008578(n+2))`
-/

namespace A239695.P2036441014702169217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A008578 (n + 2)).toNat

end

end A239695.P2036441014702169217

namespace A239695

/-- `A053830(A008578(n+2))` -/
def P2036441014702169217.Spec : Prop :=
  ∀ n, P2036441014702169217.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P10351066813395499770

`A053830(A182986(n+2))`
-/

namespace A239695.P10351066813395499770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A182986 (n + 2)).toNat

end

end A239695.P10351066813395499770

namespace A239695

/-- `A053830(A182986(n+2))` -/
def P10351066813395499770.Spec : Prop :=
  ∀ n, P10351066813395499770.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P17912419003988276231

`A053830(∑[A054541(n+1)])`
-/

namespace A239695.P17912419003988276231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239695.P17912419003988276231

namespace A239695

/-- `A053830(∑[A054541(n+1)])` -/
def P17912419003988276231.Spec : Prop :=
  ∀ n, P17912419003988276231.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P13279014054361612391

`A053830(record[A053811(n+1)])`
-/

namespace A239695.P13279014054361612391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239695.P13279014054361612391

namespace A239695

/-- `A053830(record[A053811(n+1)])` -/
def P13279014054361612391.Spec : Prop :=
  ∀ n, P13279014054361612391.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P10183418379248383930

`A053830(record[A006530(n+2)])`
-/

namespace A239695.P10183418379248383930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239695.P10183418379248383930

namespace A239695

/-- `A053830(record[A006530(n+2)])` -/
def P10183418379248383930.Spec : Prop :=
  ∀ n, P10183418379248383930.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P10283020057432368961

`A053830(record[A020639(n+2)])`
-/

namespace A239695.P10283020057432368961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239695.P10283020057432368961

namespace A239695

/-- `A053830(record[A020639(n+2)])` -/
def P10283020057432368961.Spec : Prop :=
  ∀ n, P10283020057432368961.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P12556512011268398794

`A053830(record[A014963(n+2)])`
-/

namespace A239695.P12556512011268398794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239695.P12556512011268398794

namespace A239695

/-- `A053830(record[A014963(n+2)])` -/
def P12556512011268398794.Spec : Prop :=
  ∀ n, P12556512011268398794.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P733115978026028111

`A053830(record[A053815(n+2)])`
-/

namespace A239695.P733115978026028111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239695.P733115978026028111

namespace A239695

/-- `A053830(record[A053815(n+2)])` -/
def P733115978026028111.Spec : Prop :=
  ∀ n, P733115978026028111.a n = A239695 (n + 1)

end A239695

/-! ## A239695.P8523423994731628869

`A007953(A004683(n+1))`
-/

namespace A239695.P8523423994731628869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004683 (n + 1)).toNat

end

end A239695.P8523423994731628869

namespace A239695

/-- `A007953(A004683(n+1))` -/
def P8523423994731628869.Spec : Prop :=
  ∀ n, P8523423994731628869.a n = A239695 (n + 1)

end A239695

/-!
# A239696: Smallest number m such that m and reverse(m) each have exactly n distinct prime factors.

The programs for A239696, there is no canonical definition to state claims against.
-/

/-! ## A239696.P17867453276302232642

`A082617(n+1)*A094275(A082618(n+1))`
-/

namespace A239696.P17867453276302232642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082617 (n + 1) * A094275 (A082618 (n + 1)).toNat

end

end A239696.P17867453276302232642

/-!
# A239698: Number of equilateral triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A239698, there is no canonical definition to state claims against.
-/

/-! ## A239698.P9995315486275948186

`A000194((n+1)²*∑[or(1, n)]-A094373(n))`
-/

namespace A239698.P9995315486275948186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((((n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A094373 n).toNat

end

end A239698.P9995315486275948186

/-! ## A239698.P9850517563412804654

`A005228(n+1)-A047999(A000571(n))`
-/

namespace A239698.P9850517563412804654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A047999 (A000571 n).toNat

end

end A239698.P9850517563412804654

/-! ## A239698.P16453653687487740067

`A338236((A086849(n+1)-A202305(n))²+n)`
-/

namespace A239698.P16453653687487740067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338236 ((A086849 (n + 1) - A202305 n) ^ 2 + (n : ℤ)).toNat

end

end A239698.P16453653687487740067

/-! ## A239698.P13226173520735215845

`∑[∑[(n%3)!]]-A011655(A337442(3*(n+1))!)`
-/

namespace A239698.P13226173520735215845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A011655 (Nat.factorial (A337442 (3 * (n + 1))).toNat)

end

end A239698.P13226173520735215845

/-! ## A239698.P9579159190091156895

`A316824(A005043(n))+A081689(n)`
-/

namespace A239698.P9579159190091156895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A005043 n).toNat + A081689 n

end

end A239698.P9579159190091156895

/-!
# A239699: Numbers n such that the number of Abelian groups of order n is equal to the number of non-Abelian groups of order n.

The programs for A239699, there is no canonical definition to state claims against.
-/

/-! ## A239699.P6393276892131098553

`eq[0, A066295(n+1)]+1`
-/

namespace A239699.P6393276892131098553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239699.P6393276892131098553

/-! ## A239699.P3743322007455558529

`eq[A000688(n+1), A060689(n+1)]+1`
-/

namespace A239699.P3743322007455558529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239699.P3743322007455558529

/-! ## A239699.P10444540926555891024

`eq[A060689(n+1), A322453(n+1)]+1`
-/

namespace A239699.P10444540926555891024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239699.P10444540926555891024

/-! ## A239699.P8667741092172048026

`eq[A238877(2*n+1), A238877(2*(n+1))]+1`
-/

namespace A239699.P8667741092172048026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239699.P8667741092172048026

/-! ## A239699.P3739898238438704225

`eq[A000001(n), A050377(A008574(n))]`
-/

namespace A239699.P3739898238438704225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239699.P3739898238438704225

/-! ## A239699.P1566933762563565068

`eq[A000001(n), A061393(A226602(n))]`
-/

namespace A239699.P1566933762563565068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239699.P1566933762563565068

/-! ## A239699.P8594889371549683002

`eq[2*A000688(A028310(n)), A000001(n)]`
-/

namespace A239699.P8594889371549683002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000688 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239699.P8594889371549683002

/-! ## A239699.P17782856037641188268

`eq[2*A066060(A233583(n+1)), A000001(n)]`
-/

namespace A239699.P17782856037641188268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066060 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239699.P17782856037641188268

