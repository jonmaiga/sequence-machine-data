import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A209100: T(n,k)=Number of nXk 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209100, there is no canonical definition to state claims against.
-/

/-! ## A209100.P9936832849661441646

`A233018(n+1)+A037859(A309845(n))`
-/

namespace A209100.P9936832849661441646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (n + 1) + A037859 (A309845 n).toNat

end

end A209100.P9936832849661441646

/-! ## A209100.P268752256534348296

`A037859(A309845(n))+ceil(A222444(n+1)/2)`
-/

namespace A209100.P268752256534348296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A309845 n).toNat + ⌈(A222444 (n + 1) : ℚ) / 2⌉

end

end A209100.P268752256534348296

/-! ## A209100.P15839909786482016804

`A110654(A222444(n+1))+A037859(A309845(n))`
-/

namespace A209100.P15839909786482016804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A222444 (n + 1)).toNat + A037859 (A309845 n).toNat

end

end A209100.P15839909786482016804

/-! ## A209100.P1982245023444603487

`A289436(A222444(n+1)+1)+A037859(A309845(n))`
-/

namespace A209100.P1982245023444603487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A222444 (n + 1) + 1).toNat + A037859 (A309845 n).toNat

end

end A209100.P1982245023444603487

/-! ## A209100.P16585289464433022384

`A037859(A309845(n))+A000027((A222444(n+1)+1)/2)`
-/

namespace A209100.P16585289464433022384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A309845 n).toNat + A000027 (SequenceMachineLib.roundAway ((A222444 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A209100.P16585289464433022384

/-!
# A209101: Number of 2 X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209101, the canonical program `A209101.P11173671810188518875` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209101 has offset 1).

The definition of A209101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209101.P12788459749772946400

`ogf((2-5x+4x^2)/(1-8x+8x^2))`
-/

namespace A209101.P12788459749772946400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 4] [1, -8, 8] n

end

end A209101.P12788459749772946400

namespace A209101

/-- `ogf((2-5x+4x^2)/(1-8x+8x^2))` -/
def P12788459749772946400.Spec : Prop :=
  ∀ n, P12788459749772946400.a n = A209101 (n + 1)

end A209101

/-! ## A209101.P11173671810188518875

`8*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=11, a(2)=76`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209101

/-- `8*a(n-1)-8*a(n-2)` -/
def P11173671810188518875.Spec : Prop :=
  ∀ n, P11173671810188518875.a n = A209101 (n + 1)

theorem P11173671810188518875.correct : P11173671810188518875.Spec := by
  intro n
  simp only [A209101, Nat.add_sub_cancel]

end A209101

/-! ## A209101.P401745439161751760

`A001882(A103517(n))*A011782(n)`
-/

namespace A209101.P401745439161751760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (A103517 n).toNat * A011782 n

end

end A209101.P401745439161751760

namespace A209101

/-- `A001882(A103517(n))*A011782(n)` -/
def P401745439161751760.Spec : Prop :=
  ∀ n, P401745439161751760.a n = A209101 (n + 1)

end A209101

/-! ## A209101.P4199112272015468281

`A164591(n)+A000079(n)*A003480(n)`
-/

namespace A209101.P4199112272015468281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164591 n + A000079 n * A003480 n

end

end A209101.P4199112272015468281

namespace A209101

/-- `A164591(n)+A000079(n)*A003480(n)` -/
def P4199112272015468281.Spec : Prop :=
  ∀ n, P4199112272015468281.a n = A209101 (n + 1)

end A209101

/-! ## A209101.P1048598345741843093

`A001882(A103517(n))*A016116(A004273(n))`
-/

namespace A209101.P1048598345741843093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (A103517 n).toNat * A016116 (A004273 n).toNat

end

end A209101.P1048598345741843093

namespace A209101

/-- `A001882(A103517(n))*A016116(A004273(n))` -/
def P1048598345741843093.Spec : Prop :=
  ∀ n, P1048598345741843093.a n = A209101 (n + 1)

end A209101

/-! ## A209101.P6581587085986507754

`A001882(A103517(n))*A049063(n²)`
-/

namespace A209101.P6581587085986507754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (A103517 n).toNat * A049063 (n ^ 2)

end

end A209101.P6581587085986507754

namespace A209101

/-- `A001882(A103517(n))*A049063(n²)` -/
def P6581587085986507754.Spec : Prop :=
  ∀ n, P6581587085986507754.a n = A209101 (n + 1)

end A209101

/-!
# A209102: Number of 3 X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209102, there is no canonical definition to state claims against.
-/

/-! ## A209102.P13143442542719732357

`A209100(∑[n+2]+4)`
-/

namespace A209102.P13143442542719732357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209102.P13143442542719732357

/-! ## A209102.P16111528944717683012

`A209100(A167614(n+1))+A185284(n)`
-/

namespace A209102.P16111528944717683012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A167614 (n + 1)).toNat + A185284 n

end

end A209102.P16111528944717683012

/-! ## A209102.P6692819653645614570

`lcm(A033999(n), A209100(A167614(n+1)))`
-/

namespace A209102.P6692819653645614570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209100 (A167614 (n + 1)).toNat)

end

end A209102.P6692819653645614570

/-! ## A209102.P10899954041621989883

`A033999(2*n)*A209100(A167614(n+1))`
-/

namespace A209102.P10899954041621989883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A209100 (A167614 (n + 1)).toNat

end

end A209102.P10899954041621989883

/-! ## A209102.P6891241780748172281

`A209100(A167614(n+1))%A236587(n+1)`
-/

namespace A209102.P6891241780748172281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209100 (A167614 (n + 1)).toNat) (A236587 (n + 1))

end

end A209102.P6891241780748172281

/-!
# A209103: Number of 4 X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209103, there is no canonical definition to state claims against.
-/

/-! ## A209103.P14759526637611368402

`A209100(∑[n+3]+7)`
-/

namespace A209103.P14759526637611368402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A209103.P14759526637611368402

/-!
# A209104: Number of 5Xn 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209104, there is no canonical definition to state claims against.
-/

/-! ## A209104.P17781502565214641021

`A209100(A167499(n+3))`
-/

namespace A209104.P17781502565214641021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A167499 (n + 3)).toNat

end

end A209104.P17781502565214641021

/-! ## A209104.P8176140084286984601

`A209100(A155212(n)+13)`
-/

namespace A209104.P8176140084286984601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A155212 n + 13).toNat

end

end A209104.P8176140084286984601

/-! ## A209104.P7049557272023626252

`A209100(A056000(n)+15)`
-/

namespace A209104.P7049557272023626252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A056000 n + 15).toNat

end

end A209104.P7049557272023626252

/-! ## A209104.P3656508493075782131

`A209100(eq[7, A066657(n)])`
-/

namespace A209104.P3656508493075782131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209104.P3656508493075782131

/-! ## A209104.P14928712228671328628

`A209100(A046691(n+2)+9)`
-/

namespace A209104.P14928712228671328628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A046691 (n + 2) + 9).toNat

end

end A209104.P14928712228671328628

/-!
# A209105: Number of 6Xn 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209105, there is no canonical definition to state claims against.
-/

/-! ## A209105.P8904168687686016506

`A209100(A167499(n+4)+1)`
-/

namespace A209105.P8904168687686016506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A167499 (n + 4) + 1).toNat

end

end A209105.P8904168687686016506

/-!
# A209106: Number of 7Xn 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209106, there is no canonical definition to state claims against.
-/

/-! ## A209106.P12246101344051862008

`A209100(eq[6, A002262(n)]+1)`
-/

namespace A209106.P12246101344051862008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209106.P12246101344051862008

/-! ## A209106.P6941166874583128400

`A209100(eq[8, A131818(n+1)])`
-/

namespace A209106.P6941166874583128400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209106.P6941166874583128400

/-!
# A209107: Number of n-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209107, there is no canonical definition to state claims against.
-/

/-! ## A209107.P4838268403412585424

`A209115(∑[4*n]+1)`
-/

namespace A209107.P4838268403412585424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209107.P4838268403412585424

/-! ## A209107.P5250589698817743057

`record[A209115(A330613(n+1))]`
-/

namespace A209107.P5250589698817743057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209107.P5250589698817743057

/-! ## A209107.P12535006515092574903

`A209115(A001844(n))+char[9]`
-/

namespace A209107.P12535006515092574903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209107.P12535006515092574903

/-! ## A209107.P7373490434670539923

`record[A003982(n)*A209115(n+1)]`
-/

namespace A209107.P7373490434670539923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A209115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209107.P7373490434670539923

/-! ## A209107.P12770250706286310095

`A132272(n)*A209115(A001844(n))`
-/

namespace A209107.P12770250706286310095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132272 n * A209115 (A001844 n).toNat

end

end A209107.P12770250706286310095

/-!
# A209108: Number of n-bead necklaces labeled with numbers -1..1 not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209108, there is no canonical definition to state claims against.
-/

/-! ## A209108.P11488117439969658632

`A209115(∑[n+1])`
-/

namespace A209108.P11488117439969658632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209108.P11488117439969658632

/-! ## A209108.P7929292437152783816

`A209115(A025747(n))+char[24]`
-/

namespace A209108.P7929292437152783816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A025747 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209108.P7929292437152783816

/-! ## A209108.P4085480255566029921

`A209115(∑[comp[22*n]])%A007272(n)`
-/

namespace A209108.P4085480255566029921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209115 (∑ j ∈ Finset.range (n + 1), f1 j)) (A007272 n)

end

end A209108.P4085480255566029921

/-! ## A209108.P10853115803653973703

`A007318(∑[n])*A209115(A025747(n))`
-/

namespace A209108.P10853115803653973703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A209115 (A025747 n).toNat

end

end A209108.P10853115803653973703

/-! ## A209108.P14348623719318488192

`A326547(n)+A209115(A000217(n+1))`
-/

namespace A209108.P14348623719318488192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 n + A209115 (A000217 (n + 1)).toNat

end

end A209108.P14348623719318488192

/-!
# A209109: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209109, there is no canonical definition to state claims against.
-/

/-! ## A209109.P8750984926755122789

`A209115(∑[n+2])`
-/

namespace A209109.P8750984926755122789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209109.P8750984926755122789

/-! ## A209109.P11166798734295489661

`record[A209115(A209268(2*(n+1)))]`
-/

namespace A209109.P11166798734295489661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A209268 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209109.P11166798734295489661

/-! ## A209109.P10612439144977709844

`A209115(A000096(n+1))+char[25]`
-/

namespace A209109.P10612439144977709844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209109.P10612439144977709844

/-! ## A209109.P12318182976853102350

`record[gcd(A008290(n), A209115(n+1))]`
-/

namespace A209109.P12318182976853102350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A209115 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209109.P12318182976853102350

/-! ## A209109.P12223974329305450588

`record[A209115(n+2)/A209136(n+4)]`
-/

namespace A209109.P12223974329305450588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209115 (n + 2) : ℚ) / (A209136 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209109.P12223974329305450588

/-!
# A209110: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209110, there is no canonical definition to state claims against.
-/

/-! ## A209110.P2216270733273151298

`A209115(∑[n+3]+1)`
-/

namespace A209110.P2216270733273151298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209110.P2216270733273151298

/-! ## A209110.P1714383974905826663

`record[A209115(abs(A255878(n+1)))]`
-/

namespace A209110.P1714383974905826663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209110.P1714383974905826663

/-! ## A209110.P4100807277047524324

`A209115(A034856(n+2))+char[15]`
-/

namespace A209110.P4100807277047524324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209110.P4100807277047524324

/-! ## A209110.P14506780754270660575

`record[A010054(n+3)*A209115(n+1)]`
-/

namespace A209110.P14506780754270660575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A209115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209110.P14506780754270660575

/-! ## A209110.P3749614827116769494

`record[A209115(n+1)/A013610(n+3)]`
-/

namespace A209110.P3749614827116769494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209115 (n + 1) : ℚ) / (A013610 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209110.P3749614827116769494

/-!
# A209111: Number of n-bead necklaces labeled with numbers -4..4 not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209111, there is no canonical definition to state claims against.
-/

/-! ## A209111.P16037445849252869176

`A209115(∑[n+4]+3)`
-/

namespace A209111.P16037445849252869176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A209111.P16037445849252869176

/-!
# A209112: Number of n-bead necklaces labeled with numbers -5..5 not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209112, there is no canonical definition to state claims against.
-/

/-! ## A209112.P9112688941201179788

`A209115(∑[n+5]+6)`
-/

namespace A209112.P9112688941201179788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A209112.P9112688941201179788

/-!
# A209113: Number of n-bead necklaces labeled with numbers -6..6 not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209113, there is no canonical definition to state claims against.
-/

/-! ## A209113.P11233323924152408308

`A209115(A052905(n+3))`
-/

namespace A209113.P11233323924152408308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A052905 (n + 3)).toNat

end

end A209113.P11233323924152408308

/-! ## A209113.P15488477447350494593

`A209115(A302537(n)+15)`
-/

namespace A209113.P15488477447350494593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A302537 n + 15).toNat

end

end A209113.P15488477447350494593

/-! ## A209113.P3403575763158351973

`A209115(A056119(n)+16)`
-/

namespace A209113.P3403575763158351973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A056119 n + 16).toNat

end

end A209113.P3403575763158351973

/-! ## A209113.P6423003533777322652

`A209115(eq[3, A219347(n)])`
-/

namespace A209113.P6423003533777322652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209113.P6423003533777322652

/-! ## A209113.P5517774025777133252

`A209115(eq[5, A152157(n)])`
-/

namespace A209113.P5517774025777133252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209113.P5517774025777133252

/-!
# A209114: Number of n-bead necklaces labeled with numbers -7..7 not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209114, there is no canonical definition to state claims against.
-/

/-! ## A209114.P15548907448497078263

`A209115(A055999(n+4))`
-/

namespace A209114.P15548907448497078263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A055999 (n + 4)).toNat

end

end A209114.P15548907448497078263

/-! ## A209114.P12471902676659419090

`A209115(eq[4, A219347(n)])`
-/

namespace A209114.P12471902676659419090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209114.P12471902676659419090

/-! ## A209114.P11965018505776553628

`A209115(eq[6, A193592(n)])`
-/

namespace A209114.P11965018505776553628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209114.P11965018505776553628

/-! ## A209114.P15103003819210004126

`A209115(eq[7, A152157(n)])`
-/

namespace A209114.P15103003819210004126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209114.P15103003819210004126

/-! ## A209114.P1364201708878946099

`A209115(Δ[A023551(n+2)])`
-/

namespace A209114.P1364201708878946099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (f1 (n + 1) - f1 n).toNat

end

end A209114.P1364201708878946099

/-!
# A209115: T(n,k) = number of n-bead necklaces labeled with numbers -k..k not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209115, there is no canonical definition to state claims against.
-/

/-! ## A209115.P17051693417476762523

`A209073(n+1)-A289165(A005902(n))`
-/

namespace A209115.P17051693417476762523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (n + 1) - A289165 (A005902 n).toNat

end

end A209115.P17051693417476762523

/-! ## A209115.P2215546585724521857

`A294142(A294105(n+3))+A294099(n+1)`
-/

namespace A209115.P2215546585724521857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294142 (A294105 (n + 3)).toNat + A294099 (n + 1)

end

end A209115.P2215546585724521857

/-! ## A209115.P12014027850121182476

`A334361(A108767(n+1))+A001973(A136431(n))`
-/

namespace A209115.P12014027850121182476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (A108767 (n + 1)).toNat + A001973 (A136431 n).toNat

end

end A209115.P12014027850121182476

/-! ## A209115.P9632724569377001140

`A097289(A087644(n+2))-A124010(A136680(n+1))`
-/

namespace A209115.P9632724569377001140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097289 (A087644 (n + 2)).toNat - A124010 (A136680 (n + 1)).toNat

end

end A209115.P9632724569377001140

/-!
# A209116: Number of 4-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209116, the canonical program `A209116.P3351996664689731237` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209116 has offset 1).

The definition of A209116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209116.P1497151853761159844

`ogf((5+7x+4x^2+11x^3-3x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`
-/

namespace A209116.P1497151853761159844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 7, 4, 11, -3] [1, -3, 3, -2, 3, -3, 1] n

end

end A209116.P1497151853761159844

namespace A209116

/-- `ogf((5+7x+4x^2+11x^3-3x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P1497151853761159844.Spec : Prop :=
  ∀ n, P1497151853761159844.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P3351996664689731237

`A208946(n+1)-∑[and(2, n%3)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209116

/-- `A208946(n+1)-∑[and(2, n%3)]` -/
def P3351996664689731237.Spec : Prop :=
  ∀ n, P3351996664689731237.a n = A209116 (n + 1)

theorem P3351996664689731237.correct : P3351996664689731237.Spec := by
  intro n
  simp only [A209116, Nat.add_sub_cancel]

end A209116

/-! ## A209116.P483225021568222735

`A208946(n+1)+A301298(n)-A219529(n)`
-/

namespace A209116.P483225021568222735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208946 (n + 1) + (A301298 n - A219529 n)

end

end A209116.P483225021568222735

namespace A209116

/-- `A208946(n+1)+A301298(n)-A219529(n)` -/
def P483225021568222735.Spec : Prop :=
  ∀ n, P483225021568222735.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P16680182352200377109

`A208946(n+1)+A133310(n)-A042968(n+1)`
-/

namespace A209116.P16680182352200377109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208946 (n + 1) + (A133310 n - A042968 (n + 1))

end

end A209116.P16680182352200377109

namespace A209116

/-- `A208946(n+1)+A133310(n)-A042968(n+1)` -/
def P16680182352200377109.Spec : Prop :=
  ∀ n, P16680182352200377109.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P1249163164041167952

`A208946(n+1)-Δ[A128422(n+1)]`
-/

namespace A209116.P1249163164041167952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208946 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209116.P1249163164041167952

namespace A209116

/-- `A208946(n+1)-Δ[A128422(n+1)]` -/
def P1249163164041167952.Spec : Prop :=
  ∀ n, P1249163164041167952.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P7091752204901302184

`A001845(n+1)+1-A047339(n+2)`
-/

namespace A209116.P7091752204901302184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 1) + (1 - A047339 (n + 2))

end

end A209116.P7091752204901302184

namespace A209116

/-- `A001845(n+1)+1-A047339(n+2)` -/
def P7091752204901302184.Spec : Prop :=
  ∀ n, P7091752204901302184.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P5324103312820025350

`A001845(n+1)-(A047354(n+2)+1)`
-/

namespace A209116.P5324103312820025350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 1) - (A047354 (n + 2) + 1)

end

end A209116.P5324103312820025350

namespace A209116

/-- `A001845(n+1)-(A047354(n+2)+1)` -/
def P5324103312820025350.Spec : Prop :=
  ∀ n, P5324103312820025350.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P13907048862035994356

`A208946(n+1)-A008611(abs(1-2*n))`
-/

namespace A209116.P13907048862035994356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208946 (n + 1) - A008611 |1 - (2 * n : ℤ)|.toNat

end

end A209116.P13907048862035994356

namespace A209116

/-- `A208946(n+1)-A008611(abs(1-2*n))` -/
def P13907048862035994356.Spec : Prop :=
  ∀ n, P13907048862035994356.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P4050707400220205702

`∑[A115714(4*n)+(2*(n+1))²]`
-/

namespace A209116.P4050707400220205702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (4 * n) + ((2 * (n + 1)) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209116.P4050707400220205702

namespace A209116

/-- `∑[A115714(4*n)+(2*(n+1))²]` -/
def P4050707400220205702.Spec : Prop :=
  ∀ n, P4050707400220205702.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P16787386036114214057

`A000292(2*(n+1))+∑[A115714(4*n)]`
-/

namespace A209116.P16787386036114214057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209116.P16787386036114214057

namespace A209116

/-- `A000292(2*(n+1))+∑[A115714(4*n)]` -/
def P16787386036114214057.Spec : Prop :=
  ∀ n, P16787386036114214057.a n = A209116 (n + 1)

end A209116

/-! ## A209116.P8193274564138287306

`∑[4*A080782((n+1)²)+1]`
-/

namespace A209116.P8193274564138287306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A080782 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209116.P8193274564138287306

namespace A209116

/-- `∑[4*A080782((n+1)²)+1]` -/
def P8193274564138287306.Spec : Prop :=
  ∀ n, P8193274564138287306.a n = A209116 (n + 1)

end A209116

/-!
# A209117: Number of 5-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209117, the canonical program `A209117.P5530710580226521922` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209117 has offset 1).

The definition of A209117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209117.P5530710580226521922

`ogf((5+48x+87x^2+137x^3+127x^4+103x^5+39x^6+5x^7+2x^8-x^9)/(1-3x+3x^2-2x^3+2x^4-2x^6+2x^7-3x^8+3x^9-x^10))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209117

/-- `ogf((5+48x+87x^2+137x^3+127x^4+103x^5+39x^6+5x^7+2x^8-x^9)/(1-3x+3x^2-2x^3+2x^4-2x^6+2x^7-3x^8+3x^9-x^10))` -/
def P5530710580226521922.Spec : Prop :=
  ∀ n, P5530710580226521922.a n = A209117 (n + 1)

theorem P5530710580226521922.correct : P5530710580226521922.Spec := by
  intro n
  simp only [A209117, Nat.add_sub_cancel]

end A209117

/-! ## A209117.P2788985894898845482

`2*A209074(n+1)-A208599(n+1)`
-/

namespace A209117.P2788985894898845482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209074 (n + 1) - A208599 (n + 1)

end

end A209117.P2788985894898845482

namespace A209117

/-- `2*A209074(n+1)-A208599(n+1)` -/
def P2788985894898845482.Spec : Prop :=
  ∀ n, P2788985894898845482.a n = A209117 (n + 1)

end A209117

/-! ## A209117.P14445900359049896524

`A209115(A167499(n+3))`
-/

namespace A209117.P14445900359049896524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A167499 (n + 3)).toNat

end

end A209117.P14445900359049896524

namespace A209117

/-- `A209115(A167499(n+3))` -/
def P14445900359049896524.Spec : Prop :=
  ∀ n, P14445900359049896524.a n = A209117 (n + 1)

end A209117

/-! ## A209117.P4109750886858628532

`A209115(A155212(n)+13)`
-/

namespace A209117.P4109750886858628532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A155212 n + 13).toNat

end

end A209117.P4109750886858628532

namespace A209117

/-- `A209115(A155212(n)+13)` -/
def P4109750886858628532.Spec : Prop :=
  ∀ n, P4109750886858628532.a n = A209117 (n + 1)

end A209117

/-! ## A209117.P11667550443476581629

`A209115(A056000(n)+15)`
-/

namespace A209117.P11667550443476581629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A056000 n + 15).toNat

end

end A209117.P11667550443476581629

namespace A209117

/-- `A209115(A056000(n)+15)` -/
def P11667550443476581629.Spec : Prop :=
  ∀ n, P11667550443476581629.a n = A209117 (n + 1)

end A209117

/-!
# A209118: Number of 6-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209118, there is no canonical definition to state claims against.
-/

/-! ## A209118.P14976766446915281143

`A209115(A056115(n)+21)`
-/

namespace A209118.P14976766446915281143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A056115 n + 21).toNat

end

end A209118.P14976766446915281143

/-! ## A209118.P7364069428181337535

`A209115(A167499(n+4)+1)`
-/

namespace A209118.P7364069428181337535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A167499 (n + 4) + 1).toNat

end

end A209118.P7364069428181337535

/-! ## A209118.P5881578079469151697

`A209115(A000124(n+5)+5)`
-/

namespace A209118.P5881578079469151697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A000124 (n + 5) + 5).toNat

end

end A209118.P5881578079469151697

/-! ## A209118.P2299023557075268345

`A209115(A000096(n+4)+7)`
-/

namespace A209118.P2299023557075268345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A000096 (n + 4) + 7).toNat

end

end A209118.P2299023557075268345

/-! ## A209118.P9252567470065227386

`A209115(A000217(n+5)+6)`
-/

namespace A209118.P9252567470065227386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A000217 (n + 5) + 6).toNat

end

end A209118.P9252567470065227386

/-!
# A209119: Number of 7-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209119, there is no canonical definition to state claims against.
-/

/-! ## A209119.P5665817127979502171

`A209115(A056119(n)+28)`
-/

namespace A209119.P5665817127979502171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A056119 n + 28).toNat

end

end A209119.P5665817127979502171

/-! ## A209119.P11618722739258288052

`A209115(eq[11, A066657(n)])`
-/

namespace A209119.P11618722739258288052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209119.P11618722739258288052

/-! ## A209119.P9208796650087434176

`A209115(A167499(n+5)+2)`
-/

namespace A209119.P9208796650087434176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A167499 (n + 5) + 2).toNat

end

end A209119.P9208796650087434176

/-! ## A209119.P5801419164830724168

`A209115(A167614(n+5)+4)`
-/

namespace A209119.P5801419164830724168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A167614 (n + 5) + 4).toNat

end

end A209119.P5801419164830724168

/-! ## A209119.P8019381350924022238

`A209115(A141214(n+3)+10)`
-/

namespace A209119.P8019381350924022238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A141214 (n + 3) + 10).toNat

end

end A209119.P8019381350924022238

/-!
# A209121: Recursive sequence: a(n) = 1+mod(abs(n-2+a(n-2)),n) + mod(abs(n-1+a(n-1)),n-1), a(0) = 1, a(1) = 1, a(2) = 1, a(3)=1, a(4)=2.

The programs for A209121, the canonical program `A209121.P14756897796740105894` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209121 has offset 0).

The definition of A209121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+abs(n-2+a(n-2))%n+abs(n-1+a(n-1))%(n-1)` (program `A209121.P14756897796740105894`, by `A209121.P14756897796740105894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209121.P14756897796740105894

`1+abs(n-2+a(n-2))%n+abs(n-1+a(n-1))%(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209121

/-- `1+abs(n-2+a(n-2))%n+abs(n-1+a(n-1))%(n-1)` -/
def P14756897796740105894.Spec : Prop :=
  ∀ n, P14756897796740105894.a n = A209121 n

theorem P14756897796740105894.correct : P14756897796740105894.Spec := by
  intro n
  simp only [A209121]

end A209121

/-! ## A209121.P16343525750762414011

`1+(n-2+a(n-2))%n+(n-1+a(n-1))%(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A209121.P16343525750762414011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  1 + Int.tmod ((n : ℤ) - 2 + a (n - 2)) (n : ℤ) + Int.tmod ((n : ℤ) - 1 + a (n - 1)) ((n : ℤ) - 1)

end

end A209121.P16343525750762414011

namespace A209121

/-- `1+(n-2+a(n-2))%n+(n-1+a(n-1))%(n-1)` -/
def P16343525750762414011.Spec : Prop :=
  ∀ n, P16343525750762414011.a n = A209121 n

end A209121

/-!
# A209122: Numbers a(n) for which there exists k>1 such that the number of partitions of a(n) into k parts is k.

The programs for A209122, there is no canonical definition to state claims against.
-/

/-! ## A209122.P18287921052861352878

`A133041(n+1)+C(2, n+1)`
-/

namespace A209122.P18287921052861352878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (n + 1) + (Nat.choose 2 (n + 1) : ℤ)

end

end A209122.P18287921052861352878

/-! ## A209122.P5517280899499570223

`A052810(n+1)+round(acot(n)+n)`
-/

namespace A209122.P5517280899499570223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (n + 1) + SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

end

end A209122.P5517280899499570223

/-! ## A209122.P10429186115308846744

`round(acot(n)+n)+Δ[A000070(n)]+1`
-/

namespace A209122.P10429186115308846744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (f1 (n + 1) - f1 n + 1)

end

end A209122.P10429186115308846744

/-! ## A209122.P12421531402253439582

`record[A035377(n)]+floor(n+3-atan(n))`
-/

namespace A209122.P12421531402253439582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊(n + 3 : ℝ) - Real.arctan (n : ℝ)⌋

end

end A209122.P12421531402253439582

/-! ## A209122.P15478475898412293412

`record[A035444(n)]+floor(n+3-atan(n))`
-/

namespace A209122.P15478475898412293412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊(n + 3 : ℝ) - Real.arctan (n : ℝ)⌋

end

end A209122.P15478475898412293412

/-!
# A209123: Triangle read by rows: numerators of degenerate Bernoulli numbers written as powers of lambda.

The programs for A209123, there is no canonical definition to state claims against.
-/

/-! ## A209123.P4492049307549141256

`A135010(A202426(n+2))-A001221(n+5)`
-/

namespace A209123.P4492049307549141256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A202426 (n + 2)).toNat - A001221 (n + 5)

end

end A209123.P4492049307549141256

/-!
# A209125: Triangle of coefficients of polynomials u(n,x) jointly generated with A164975; see the Formula section.

The programs for A209125, the canonical program `A209125.P11860134007593482387` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209125 has offset 1).

The definition of A209125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209125.P11860134007593482387

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209125

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` -/
def P11860134007593482387.Spec : Prop :=
  ∀ n, P11860134007593482387.a n = A209125 (n + 1)

theorem P11860134007593482387.correct : P11860134007593482387.Spec := by
  intro n
  simp only [A209125, Nat.add_sub_cancel]

end A209125

/-! ## A209125.P13816482070596835681

`2*A209147(n+1)-A207634(n+1)`
-/

namespace A209125.P13816482070596835681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209147 (n + 1) - A207634 (n + 1)

end

end A209125.P13816482070596835681

namespace A209125

/-- `2*A209147(n+1)-A207634(n+1)` -/
def P13816482070596835681.Spec : Prop :=
  ∀ n, P13816482070596835681.a n = A209125 (n + 1)

theorem P13816482070596835681.correct : P13816482070596835681.Spec := by
  intro n
  simp only [A209125, Nat.add_sub_cancel, A209125.P13816482070596835681.a, A209125.P11860134007593482387.a, A207634, A207634.P3848981335035764252.a, A209147, A209147.P2065933926638694855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209125

/-! ## A209125.P4186846651275503970

`A207633(n+2)-A210597(n+1)`
-/

namespace A209125.P4186846651275503970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207633 (n + 2) - A210597 (n + 1)

end

end A209125.P4186846651275503970

namespace A209125

/-- `A207633(n+2)-A210597(n+1)` -/
def P4186846651275503970.Spec : Prop :=
  ∀ n, P4186846651275503970.a n = A209125 (n + 1)

end A209125

/-! ## A209125.P16418386471477928946

`A004277(A209147(n+1))-A207634(n+1)`
-/

namespace A209125.P16418386471477928946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209147 (n + 1)).toNat - A207634 (n + 1)

end

end A209125.P16418386471477928946

namespace A209125

/-- `A004277(A209147(n+1))-A207634(n+1)` -/
def P16418386471477928946.Spec : Prop :=
  ∀ n, P16418386471477928946.a n = A209125 (n + 1)

end A209125

/-! ## A209125.P1239150259504449858

`A316427(n+1)-A038219(A219232(n))`
-/

namespace A209125.P1239150259504449858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (n + 1) - A038219 (A219232 n).toNat

end

end A209125.P1239150259504449858

namespace A209125

/-- `A316427(n+1)-A038219(A219232(n))` -/
def P1239150259504449858.Spec : Prop :=
  ∀ n, P1239150259504449858.a n = A209125 (n + 1)

end A209125

/-!
# A209126: Triangle of coefficients of polynomials u(n,x) jointly generated with A209127; see the Formula section.

The programs for A209126, the canonical program `A209126.P13924381217313319081` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209126 has offset 1).

The definition of A209126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209126.P13924381217313319081

`T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209126

/-- `T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)` -/
def P13924381217313319081.Spec : Prop :=
  ∀ n, (P13924381217313319081.a n : ℤ) = A209126 (n + 1)

theorem P13924381217313319081.correct : P13924381217313319081.Spec := by
  intro n
  simp only [A209126, Nat.add_sub_cancel]

end A209126

/-! ## A209126.P2513662215833252131

`T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=2`
-/

namespace A209126.P2513662215833252131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A209126.P2513662215833252131

namespace A209126

/-- `T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)` -/
def P2513662215833252131.Spec : Prop :=
  ∀ n, (P2513662215833252131.a n : ℤ) = A209126 (n + 1)

end A209126

/-! ## A209126.P14733786003863960520

`A208337(2+n)-Δ[A038137(n)]`
-/

namespace A209126.P14733786003863960520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (2 + n) - (f1 (n + 1) - f1 n)

end

end A209126.P14733786003863960520

namespace A209126

/-- `A208337(2+n)-Δ[A038137(n)]` -/
def P14733786003863960520.Spec : Prop :=
  ∀ n, P14733786003863960520.a n = A209126 (n + 1)

end A209126

/-! ## A209126.P5303500629321149307

`A208337(n+2)+A038137(n)-A038137(n+1)`
-/

namespace A209126.P5303500629321149307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 2) + (A038137 n - A038137 (n + 1))

end

end A209126.P5303500629321149307

namespace A209126

/-- `A208337(n+2)+A038137(n)-A038137(n+1)` -/
def P5303500629321149307.Spec : Prop :=
  ∀ n, P5303500629321149307.a n = A209126 (n + 1)

end A209126

/-! ## A209126.P7217569485547914441

`2*A038137(n)-A055830(A061579(n))`
-/

namespace A209126.P7217569485547914441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038137 n - A055830 (A061579 n).toNat

end

end A209126.P7217569485547914441

namespace A209126

/-- `2*A038137(n)-A055830(A061579(n))` -/
def P7217569485547914441.Spec : Prop :=
  ∀ n, P7217569485547914441.a n = A209126 (n + 1)

end A209126

/-! ## A209126.P8216627964389047294

`A208609(n+1)-A155161(A038722(n+1))`
-/

namespace A209126.P8216627964389047294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208609 (n + 1) - A155161 (A038722 (n + 1)).toNat

end

end A209126.P8216627964389047294

namespace A209126

/-- `A208609(n+1)-A155161(A038722(n+1))` -/
def P8216627964389047294.Spec : Prop :=
  ∀ n, P8216627964389047294.a n = A209126 (n + 1)

end A209126

/-! ## A209126.P7450104682723189695

`A207632(A061579(n)+1)-A155161(A038722(n+1))`
-/

namespace A209126.P7450104682723189695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (A061579 n + 1).toNat - A155161 (A038722 (n + 1)).toNat

end

end A209126.P7450104682723189695

namespace A209126

/-- `A207632(A061579(n)+1)-A155161(A038722(n+1))` -/
def P7450104682723189695.Spec : Prop :=
  ∀ n, P7450104682723189695.a n = A209126 (n + 1)

end A209126

/-! ## A209126.P8465231414051727709

`A155161(A038722(n+2))+A038137(n)`
-/

namespace A209126.P8465231414051727709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 2)).toNat + A038137 n

end

end A209126.P8465231414051727709

namespace A209126

/-- `A155161(A038722(n+2))+A038137(n)` -/
def P8465231414051727709.Spec : Prop :=
  ∀ n, P8465231414051727709.a n = A209126 (n + 1)

end A209126

/-! ## A209126.P8330504486785268109

`A005843(A038137(n))-A055830(A061579(n))`
-/

namespace A209126.P8330504486785268109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A038137 n).toNat - A055830 (A061579 n).toNat

end

end A209126.P8330504486785268109

namespace A209126

/-- `A005843(A038137(n))-A055830(A061579(n))` -/
def P8330504486785268109.Spec : Prop :=
  ∀ n, P8330504486785268109.a n = A209126 (n + 1)

end A209126

/-!
# A209127: Triangle of coefficients of polynomials v(n,x) jointly generated with A209126; see the Formula section.

The programs for A209127, the canonical program `A209127.P3442223085145704089` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209127 has offset 1).

The definition of A209127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209127.P3442223085145704089

`T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209127

/-- `T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)` -/
def P3442223085145704089.Spec : Prop :=
  ∀ n, (P3442223085145704089.a n : ℤ) = A209127 (n + 1)

theorem P3442223085145704089.correct : P3442223085145704089.Spec := by
  intro n
  simp only [A209127, Nat.add_sub_cancel]

end A209127

/-! ## A209127.P11508689501548597325

`A208337(n+1)+A038137(n)-A209126(n+1)`
-/

namespace A209127.P11508689501548597325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) + (A038137 n - A209126 (n + 1))

end

end A209127.P11508689501548597325

namespace A209127

/-- `A208337(n+1)+A038137(n)-A209126(n+1)` -/
def P11508689501548597325.Spec : Prop :=
  ∀ n, P11508689501548597325.a n = A209127 (n + 1)

end A209127

/-! ## A209127.P13566796975256840061

`Δ[∑[A038137(n)]-A208337(n+1)]`
-/

namespace A209127.P13566796975256840061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A208337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209127.P13566796975256840061

namespace A209127

/-- `Δ[∑[A038137(n)]-A208337(n+1)]` -/
def P13566796975256840061.Spec : Prop :=
  ∀ n, P13566796975256840061.a n = A209127 (n + 1)

end A209127

/-! ## A209127.P18076214695720627200

`A038137(n+1)-Δ[A208337(n+1)]`
-/

namespace A209127.P18076214695720627200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209127.P18076214695720627200

namespace A209127

/-- `A038137(n+1)-Δ[A208337(n+1)]` -/
def P18076214695720627200.Spec : Prop :=
  ∀ n, P18076214695720627200.a n = A209127 (n + 1)

end A209127

/-! ## A209127.P5223983842200890716

`A038137(n+1)+A208337(n+1)-A208337(n+2)`
-/

namespace A209127.P5223983842200890716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (n + 1) + (A208337 (n + 1) - A208337 (n + 2))

end

end A209127.P5223983842200890716

namespace A209127

/-- `A038137(n+1)+A208337(n+1)-A208337(n+2)` -/
def P5223983842200890716.Spec : Prop :=
  ∀ n, P5223983842200890716.a n = A209127 (n + 1)

end A209127

/-! ## A209127.P14620145598760262729

`A155161(A038722(n+1))+A055830(A061579(n))`
-/

namespace A209127.P14620145598760262729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat + A055830 (A061579 n).toNat

end

end A209127.P14620145598760262729

namespace A209127

/-- `A155161(A038722(n+1))+A055830(A061579(n))` -/
def P14620145598760262729.Spec : Prop :=
  ∀ n, P14620145598760262729.a n = A209127 (n + 1)

end A209127

/-! ## A209127.P3132134226646714941

`A208336(n+1)-Δ[A155161(A038722(n+1))]`
-/

namespace A209127.P3132134226646714941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208336 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209127.P3132134226646714941

namespace A209127

/-- `A208336(n+1)-Δ[A155161(A038722(n+1))]` -/
def P3132134226646714941.Spec : Prop :=
  ∀ n, P3132134226646714941.a n = A209127 (n + 1)

end A209127

/-!
# A209128: Triangle of coefficients of polynomials u(n,x) jointly generated with A209129; see the Formula section.

The programs for A209128, the canonical program `A209128.P7973527913701718731` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209128 has offset 1).

The definition of A209128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209128.P7973527913701718731

`2*A210557(n+1)-A209129(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209128

/-- `2*A210557(n+1)-A209129(n+1)` -/
def P7973527913701718731.Spec : Prop :=
  ∀ n, P7973527913701718731.a n = A209128 (n + 1)

theorem P7973527913701718731.correct : P7973527913701718731.Spec := by
  intro n
  simp only [A209128, Nat.add_sub_cancel]

end A209128

/-! ## A209128.P6743081542129437283

`A209129(A014132(n+1)+1)-2*A209129(n+1)`
-/

namespace A209128.P6743081542129437283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209129 (A014132 (n + 1) + 1).toNat - 2 * A209129 (n + 1)

end

end A209128.P6743081542129437283

namespace A209128

/-- `A209129(A014132(n+1)+1)-2*A209129(n+1)` -/
def P6743081542129437283.Spec : Prop :=
  ∀ n, P6743081542129437283.a n = A209128 (n + 1)

end A209128

/-! ## A209128.P6261712066279851332

`A004277(A210557(n+1))-A209129(n+1)`
-/

namespace A209128.P6261712066279851332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210557 (n + 1)).toNat - A209129 (n + 1)

end

end A209128.P6261712066279851332

namespace A209128

/-- `A004277(A210557(n+1))-A209129(n+1)` -/
def P6261712066279851332.Spec : Prop :=
  ∀ n, P6261712066279851332.a n = A209128 (n + 1)

end A209128

/-!
# A209129: Triangle of coefficients of polynomials v(n,x) jointly generated with A209128; see the Formula section.

The programs for A209129, the canonical program `A209129.P5779824986213914757` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209129 has offset 1).

The definition of A209129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209129.P5779824986213914757

`T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209129

/-- `T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P5779824986213914757.Spec : Prop :=
  ∀ n, P5779824986213914757.a n = A209129 (n + 1)

theorem P5779824986213914757.correct : P5779824986213914757.Spec := by
  intro n
  simp only [A209129, Nat.add_sub_cancel]

end A209129

/-! ## A209129.P14399593786110062895

`2*A208339(n+1)-A208611(n+1)`
-/

namespace A209129.P14399593786110062895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208339 (n + 1) - A208611 (n + 1)

end

end A209129.P14399593786110062895

namespace A209129

/-- `2*A208339(n+1)-A208611(n+1)` -/
def P14399593786110062895.Spec : Prop :=
  ∀ n, P14399593786110062895.a n = A209129 (n + 1)

theorem P14399593786110062895.correct : P14399593786110062895.Spec := by
  intro n
  simp only [A209129, Nat.add_sub_cancel, A209129.P14399593786110062895.a, A209129.P5779824986213914757.a, A208339, A208339.P11994109951258822282.a, A208611, A208611.P15995575520268450885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209129

/-! ## A209129.P7550965487604742724

`A209128(n+2)-Δ[A208611(n+1)]`
-/

namespace A209129.P7550965487604742724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209128 (n + 2) - (f1 (n + 1) - f1 n)

end

end A209129.P7550965487604742724

namespace A209129

/-- `A209128(n+2)-Δ[A208611(n+1)]` -/
def P7550965487604742724.Spec : Prop :=
  ∀ n, P7550965487604742724.a n = A209129 (n + 1)

end A209129

/-! ## A209129.P177900375061788623

`A004277(A208339(n+1))-A208611(n+1)`
-/

namespace A209129.P177900375061788623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208339 (n + 1)).toNat - A208611 (n + 1)

end

end A209129.P177900375061788623

namespace A209129

/-- `A004277(A208339(n+1))-A208611(n+1)` -/
def P177900375061788623.Spec : Prop :=
  ∀ n, P177900375061788623.a n = A209129 (n + 1)

end A209129

/-! ## A209129.P10507428971839418855

`xor(A187081(A296386(n+1)), A208757(n+1))`
-/

namespace A209129.P10507428971839418855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187081 (A296386 (n + 1)).toNat) (A208757 (n + 1))

end

end A209129.P10507428971839418855

namespace A209129

/-- `xor(A187081(A296386(n+1)), A208757(n+1))` -/
def P10507428971839418855.Spec : Prop :=
  ∀ n, P10507428971839418855.a n = A209129 (n + 1)

end A209129

/-!
# A209130: Triangle of coefficients of polynomials v(n,x) jointly generated with A102756; see the Formula section.

The programs for A209130, the canonical program `A209130.P4626027190206492877` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209130 has offset 1).

The definition of A209130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209130.P4626027190206492877

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209130

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(row(n)-2, col(n)-2)` -/
def P4626027190206492877.Spec : Prop :=
  ∀ n, P4626027190206492877.a n = A209130 (n + 1)

theorem P4626027190206492877.correct : P4626027190206492877.Spec := by
  intro n
  simp only [A209130, Nat.add_sub_cancel]

end A209130

/-! ## A209130.P3604676222899270024

`A290726(3*A144696(n+2))`
-/

namespace A209130.P3604676222899270024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (3 * A144696 (n + 2)).toNat

end

end A209130.P3604676222899270024

namespace A209130

/-- `A290726(3*A144696(n+2))` -/
def P3604676222899270024.Spec : Prop :=
  ∀ n, P3604676222899270024.a n = A209130 (n + 1)

end A209130

/-! ## A209130.P14063629806018394271

`A240192(n+1)+A212619(∑[∑{d}[n, #]]+1)`
-/

namespace A209130.P14063629806018394271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240192 (n + 1) + A212619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209130.P14063629806018394271

namespace A209130

/-- `A240192(n+1)+A212619(∑[∑{d}[n, #]]+1)` -/
def P14063629806018394271.Spec : Prop :=
  ∀ n, P14063629806018394271.a n = A209130 (n + 1)

end A209130

/-! ## A209130.P1422630377352511371

`A319951(A059268(n)*A208660(n+1))`
-/

namespace A209130.P1422630377352511371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A059268 n * A208660 (n + 1)).toNat

end

end A209130.P1422630377352511371

namespace A209130

/-- `A319951(A059268(n)*A208660(n+1))` -/
def P1422630377352511371.Spec : Prop :=
  ∀ n, P1422630377352511371.a n = A209130 (n + 1)

end A209130

/-! ## A209130.P11798410219469931987

`A350029(A193592(n)*A209159(n+1))`
-/

namespace A209130.P11798410219469931987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A193592 n * A209159 (n + 1)).toNat

end

end A209130.P11798410219469931987

namespace A209130

/-- `A350029(A193592(n)*A209159(n+1))` -/
def P11798410219469931987.Spec : Prop :=
  ∀ n, P11798410219469931987.a n = A209130 (n + 1)

end A209130

/-!
# A209131: Triangle of coefficients of polynomials u(n,x) jointly generated with A209132; see the Formula section.

The programs for A209131, the canonical program `A209131.P3514612165003283278` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209131 has offset 1).

The definition of A209131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209131.P3514612165003283278

`T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209131

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P3514612165003283278.Spec : Prop :=
  ∀ n, (P3514612165003283278.a n : ℤ) = A209131 (n + 1)

theorem P3514612165003283278.correct : P3514612165003283278.Spec := by
  intro n
  simp only [A209131, Nat.add_sub_cancel]

end A209131

/-! ## A209131.P12665855455738330631

`2*A013609(n)-A209132(n+1)`
-/

namespace A209131.P12665855455738330631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A209132 (n + 1)

end

end A209131.P12665855455738330631

namespace A209131

/-- `2*A013609(n)-A209132(n+1)` -/
def P12665855455738330631.Spec : Prop :=
  ∀ n, P12665855455738330631.a n = A209131 (n + 1)

end A209131

/-! ## A209131.P14322053920553303286

`A013609(n)+Δ[A209159(n+1)-A013609(n)]`
-/

namespace A209131.P14322053920553303286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209159 (n + 1) - A013609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (f1 (n + 1) - f1 n)

end

end A209131.P14322053920553303286

namespace A209131

/-- `A013609(n)+Δ[A209159(n+1)-A013609(n)]` -/
def P14322053920553303286.Spec : Prop :=
  ∀ n, P14322053920553303286.a n = A209131 (n + 1)

end A209131

/-! ## A209131.P4196624185404179571

`A005843(A013609(n))-A209132(n+1)`
-/

namespace A209131.P4196624185404179571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013609 n).toNat - A209132 (n + 1)

end

end A209131.P4196624185404179571

namespace A209131

/-- `A005843(A013609(n))-A209132(n+1)` -/
def P4196624185404179571.Spec : Prop :=
  ∀ n, P4196624185404179571.a n = A209131 (n + 1)

end A209131

/-! ## A209131.P3682829402918587468

`A370469(n+1)-A209132(n+1)`
-/

namespace A209131.P3682829402918587468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370469 (n + 1) - A209132 (n + 1)

end

end A209131.P3682829402918587468

namespace A209131

/-- `A370469(n+1)-A209132(n+1)` -/
def P3682829402918587468.Spec : Prop :=
  ∀ n, P3682829402918587468.a n = A209131 (n + 1)

end A209131

/-!
# A209132: Triangle of coefficients of polynomials v(n,x) jointly generated with A209131; see the Formula section.

The programs for A209132, the canonical program `A209132.P10469472920156970506` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209132 has offset 1).

The definition of A209132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209132.P10469472920156970506

`T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209132

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P10469472920156970506.Spec : Prop :=
  ∀ n, (P10469472920156970506.a n : ℤ) = A209132 (n + 1)

theorem P10469472920156970506.correct : P10469472920156970506.Spec := by
  intro n
  simp only [A209132, Nat.add_sub_cancel]

end A209132

/-! ## A209132.P13283960570520168917

`2*A013609(n)-A209131(n+1)`
-/

namespace A209132.P13283960570520168917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A209131 (n + 1)

end

end A209132.P13283960570520168917

namespace A209132

/-- `2*A013609(n)-A209131(n+1)` -/
def P13283960570520168917.Spec : Prop :=
  ∀ n, P13283960570520168917.a n = A209132 (n + 1)

end A209132

/-! ## A209132.P7977516864703795587

`Δ[∑[A013609(n)]-A209159(n+1)]`
-/

namespace A209132.P7977516864703795587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A209159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209132.P7977516864703795587

namespace A209132

/-- `Δ[∑[A013609(n)]-A209159(n+1)]` -/
def P7977516864703795587.Spec : Prop :=
  ∀ n, P7977516864703795587.a n = A209132 (n + 1)

end A209132

/-! ## A209132.P1146918338069879989

`A013609(n+1)-Δ[A209159(n+1)]`
-/

namespace A209132.P1146918338069879989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209132.P1146918338069879989

namespace A209132

/-- `A013609(n+1)-Δ[A209159(n+1)]` -/
def P1146918338069879989.Spec : Prop :=
  ∀ n, P1146918338069879989.a n = A209132 (n + 1)

end A209132

/-! ## A209132.P7115078149122873066

`A005843(A013609(n))-A209131(n+1)`
-/

namespace A209132.P7115078149122873066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013609 n).toNat - A209131 (n + 1)

end

end A209132.P7115078149122873066

namespace A209132

/-- `A005843(A013609(n))-A209131(n+1)` -/
def P7115078149122873066.Spec : Prop :=
  ∀ n, P7115078149122873066.a n = A209132 (n + 1)

end A209132

/-! ## A209132.P4492477034664089824

`A370469(n+1)-A209131(n+1)`
-/

namespace A209132.P4492477034664089824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370469 (n + 1) - A209131 (n + 1)

end

end A209132.P4492477034664089824

namespace A209132

/-- `A370469(n+1)-A209131(n+1)` -/
def P4492477034664089824.Spec : Prop :=
  ∀ n, P4492477034664089824.a n = A209132 (n + 1)

end A209132

/-!
# A209133: Triangle of coefficients of polynomials u(n,x) jointly generated with A209134; see the Formula section.

The programs for A209133, the canonical program `A209133.P9211093350270897131` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209133 has offset 1).

The definition of A209133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209133.P9211093350270897131

`T(n-1,k)+2*T(n-1,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209133

/-- `T(n-1,k)+2*T(n-1,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P9211093350270897131.Spec : Prop :=
  ∀ n, (P9211093350270897131.a n : ℤ) = A209133 (n + 1)

theorem P9211093350270897131.correct : P9211093350270897131.Spec := by
  intro n
  simp only [A209133, Nat.add_sub_cancel]

end A209133

/-! ## A209133.P9588289058720167109

`T(n-1,k)+2*(T(row(n)-2, col(n)-2)+T(n-1,k-1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A209133.P9588289058720167109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUpLeft a n)

end

end A209133.P9588289058720167109

namespace A209133

/-- `T(n-1,k)+2*(T(row(n)-2, col(n)-2)+T(n-1,k-1))` -/
def P9588289058720167109.Spec : Prop :=
  ∀ n, (P9588289058720167109.a n : ℤ) = A209133 (n + 1)

end A209133

/-!
# A209134: Triangle of coefficients of polynomials v(n,x) jointly generated with A209133; see the Formula section.

The programs for A209134, the canonical program `A209134.P16982424245230213877` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209134 has offset 1).

The definition of A209134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209134.P16982424245230213877

`T(n-1,k)+2*T(n-1,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209134

/-- `T(n-1,k)+2*T(n-1,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P16982424245230213877.Spec : Prop :=
  ∀ n, (P16982424245230213877.a n : ℤ) = A209134 (n + 1)

theorem P16982424245230213877.correct : P16982424245230213877.Spec := by
  intro n
  simp only [A209134, Nat.add_sub_cancel]

end A209134

/-! ## A209134.P15916856672675793709

`A208760(n+2)-Δ[A209161(n+1)]`
-/

namespace A209134.P15916856672675793709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208760 (n + 2) - (f1 (n + 1) - f1 n)

end

end A209134.P15916856672675793709

namespace A209134

/-- `A208760(n+2)-Δ[A209161(n+1)]` -/
def P15916856672675793709.Spec : Prop :=
  ∀ n, P15916856672675793709.a n = A209134 (n + 1)

end A209134

/-!
# A209135: Triangle of coefficients of polynomials u(n,x) jointly generated with A209136; see the Formula section.

The programs for A209135, the canonical program `A209135.P3722806028542428745` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209135 has offset 1).

The definition of A209135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209135.P3722806028542428745

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209135

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P3722806028542428745.Spec : Prop :=
  ∀ n, P3722806028542428745.a n = A209135 (n + 1)

theorem P3722806028542428745.correct : P3722806028542428745.Spec := by
  intro n
  simp only [A209135, Nat.add_sub_cancel]

end A209135

/-! ## A209135.P13942199320442628408

`A208762(n+1)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A209135.P13942199320442628408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208762 (n + 1) - SequenceMachineLib.triUpLeft a n

end

end A209135.P13942199320442628408

namespace A209135

/-- `A208762(n+1)-T(n-1,k-1)` -/
def P13942199320442628408.Spec : Prop :=
  ∀ n, P13942199320442628408.a n = A209135 (n + 1)

end A209135

/-! ## A209135.P342411282874765465

`2*A208762(n+1)-A209163(n+1)`
-/

namespace A209135.P342411282874765465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208762 (n + 1) - A209163 (n + 1)

end

end A209135.P342411282874765465

namespace A209135

/-- `2*A208762(n+1)-A209163(n+1)` -/
def P342411282874765465.Spec : Prop :=
  ∀ n, P342411282874765465.a n = A209135 (n + 1)

theorem P342411282874765465.correct : P342411282874765465.Spec := by
  intro n
  simp only [A209135, Nat.add_sub_cancel, A209135.P342411282874765465.a, A209135.P3722806028542428745.a, A208762, A208762.P9660494929894193493.a, A209163, A209163.P6100200027214597742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209135

/-! ## A209135.P18223642260981249525

`A208761(n+1)+A208932(n+1)-A209163(n+1)`
-/

namespace A209135.P18223642260981249525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208761 (n + 1) + (A208932 (n + 1) - A209163 (n + 1))

end

end A209135.P18223642260981249525

namespace A209135

/-- `A208761(n+1)+A208932(n+1)-A209163(n+1)` -/
def P18223642260981249525.Spec : Prop :=
  ∀ n, P18223642260981249525.a n = A209135 (n + 1)

theorem P18223642260981249525.correct : P18223642260981249525.Spec := by
  intro n
  simp only [A209135, Nat.add_sub_cancel, A209135.P18223642260981249525.a, A209135.P3722806028542428745.a, A208761, A208761.P6495230936573383809.a, A208932, A208932.P1537757445397386457.a, A209163, A209163.P6100200027214597742.a, A208762, A208762.P9660494929894193493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209135

/-! ## A209135.P3846788689720926780

`A209163(n+1)-A005843(A209163(n+1)-A208762(n+1))`
-/

namespace A209135.P3846788689720926780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209163 (n + 1) - A005843 (A209163 (n + 1) - A208762 (n + 1)).toNat

end

end A209135.P3846788689720926780

namespace A209135

/-- `A209163(n+1)-A005843(A209163(n+1)-A208762(n+1))` -/
def P3846788689720926780.Spec : Prop :=
  ∀ n, P3846788689720926780.a n = A209135 (n + 1)

end A209135

/-!
# A209136: Triangle of coefficients of polynomials v(n,x) jointly generated with A209135; see the Formula section.

The programs for A209136, the canonical program `A209136.P6736290272433366201` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209136 has offset 1).

The definition of A209136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209136.P6736290272433366201

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209136

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P6736290272433366201.Spec : Prop :=
  ∀ n, P6736290272433366201.a n = A209136 (n + 1)

theorem P6736290272433366201.correct : P6736290272433366201.Spec := by
  intro n
  simp only [A209136, Nat.add_sub_cancel]

end A209136

/-!
# A209137: Triangle of coefficients of polynomials u(n,x) jointly generated with A209138; see the Formula section.

The programs for A209137, the canonical program `A209137.P1244537498734719081` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209137 has offset 1).

The definition of A209137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209137.P1244537498734719081

`T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209137

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P1244537498734719081.Spec : Prop :=
  ∀ n, (P1244537498734719081.a n : ℤ) = A209137 (n + 1)

theorem P1244537498734719081.correct : P1244537498734719081.Spec := by
  intro n
  simp only [A209137, Nat.add_sub_cancel]

end A209137

/-! ## A209137.P11377193523153698319

`T(row(n)-2, col(n)-2)+T(n-2,k-1)+T(n-2,k)+T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=2`
-/

namespace A209137.P11377193523153698319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A209137.P11377193523153698319

namespace A209137

/-- `T(row(n)-2, col(n)-2)+T(n-2,k-1)+T(n-2,k)+T(n-1,k-1)+T(n-1,k)` -/
def P11377193523153698319.Spec : Prop :=
  ∀ n, (P11377193523153698319.a n : ℤ) = A209137 (n + 1)

end A209137

/-! ## A209137.P529580930331483545

`A228815(n)+A205575(n)`
-/

namespace A209137.P529580930331483545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228815 n + A205575 n

end

end A209137.P529580930331483545

namespace A209137

/-- `A228815(n)+A205575(n)` -/
def P529580930331483545.Spec : Prop :=
  ∀ n, P529580930331483545.a n = A209137 (n + 1)

end A209137

/-! ## A209137.P12994024395751416457

`A091533(n)+A205575(n)-A091562(n)`
-/

namespace A209137.P12994024395751416457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n + (A205575 n - A091562 n)

end

end A209137.P12994024395751416457

namespace A209137

/-- `A091533(n)+A205575(n)-A091562(n)` -/
def P12994024395751416457.Spec : Prop :=
  ∀ n, P12994024395751416457.a n = A209137 (n + 1)

end A209137

/-! ## A209137.P5391981498352858471

`A091533(n+1)+A091533(n)-A205575(n+1)`
-/

namespace A209137.P5391981498352858471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (n + 1) + (A091533 n - A205575 (n + 1))

end

end A209137.P5391981498352858471

namespace A209137

/-- `A091533(n+1)+A091533(n)-A205575(n+1)` -/
def P5391981498352858471.Spec : Prop :=
  ∀ n, P5391981498352858471.a n = A209137 (n + 1)

end A209137

/-! ## A209137.P8397549482064320016

`A209138(n+2)+A091533(n)-A091533(n+1)`
-/

namespace A209137.P8397549482064320016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 (n + 2) + (A091533 n - A091533 (n + 1))

end

end A209137.P8397549482064320016

namespace A209137

/-- `A209138(n+2)+A091533(n)-A091533(n+1)` -/
def P8397549482064320016.Spec : Prop :=
  ∀ n, P8397549482064320016.a n = A209137 (n + 1)

end A209137

/-! ## A209137.P8974279529428898449

`A209138(∑[char[∑[n]]]²-n)`
-/

namespace A209137.P8974279529428898449
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A209137.P8974279529428898449

namespace A209137

/-- `A209138(∑[char[∑[n]]]²-n)` -/
def P8974279529428898449.Spec : Prop :=
  ∀ n, P8974279529428898449.a n = A209137 (n + 1)

end A209137

/-! ## A209137.P3649089455836479579

`or(char[2], A209138(A038722(n+1)))`
-/

namespace A209137.P3649089455836479579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A209138 (A038722 (n + 1)).toNat)

end

end A209137.P3649089455836479579

namespace A209137

/-- `or(char[2], A209138(A038722(n+1)))` -/
def P3649089455836479579.Spec : Prop :=
  ∀ n, P3649089455836479579.a n = A209137 (n + 1)

end A209137

/-! ## A209137.P10837607034523837918

`gcd(A000038(n), A209138(A038722(n+1)))`
-/

namespace A209137.P10837607034523837918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A209138 (A038722 (n + 1)).toNat)

end

end A209137.P10837607034523837918

namespace A209137

/-- `gcd(A000038(n), A209138(A038722(n+1)))` -/
def P10837607034523837918.Spec : Prop :=
  ∀ n, (P10837607034523837918.a n : ℤ) = A209137 (n + 1)

end A209137

/-! ## A209137.P3580146111012433929

`A003484(2*n+1)*A209138(A038722(n+1))`
-/

namespace A209137.P3580146111012433929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * n + 1) * A209138 (A038722 (n + 1)).toNat

end

end A209137.P3580146111012433929

namespace A209137

/-- `A003484(2*n+1)*A209138(A038722(n+1))` -/
def P3580146111012433929.Spec : Prop :=
  ∀ n, P3580146111012433929.a n = A209137 (n + 1)

end A209137

/-!
# A209138: Triangle of coefficients of polynomials v(n,x) jointly generated with A209137; see the Formula section.

The programs for A209138, the canonical program `A209138.P3389930194062250695` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209138 has offset 1).

The definition of A209138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209138.P3389930194062250695

`T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209138

/-- `T(n-1,k)+T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P3389930194062250695.Spec : Prop :=
  ∀ n, (P3389930194062250695.a n : ℤ) = A209138 (n + 1)

theorem P3389930194062250695.correct : P3389930194062250695.Spec := by
  intro n
  simp only [A209138, Nat.add_sub_cancel]

end A209138

/-! ## A209138.P4572802717841176154

`A185081(C(row(n)+2, 2)+col(n)+1)`
-/

namespace A209138.P4572802717841176154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185081 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + (SequenceMachineLib.triCol n + 1))

end

end A209138.P4572802717841176154

namespace A209138

/-- `A185081(C(row(n)+2, 2)+col(n)+1)` -/
def P4572802717841176154.Spec : Prop :=
  ∀ n, P4572802717841176154.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P3463020231095323164

`2*A091533(n)-A205575(n)`
-/

namespace A209138.P3463020231095323164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091533 n - A205575 n

end

end A209138.P3463020231095323164

namespace A209138

/-- `2*A091533(n)-A205575(n)` -/
def P3463020231095323164.Spec : Prop :=
  ∀ n, P3463020231095323164.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P14548935316064193003

`A209167(n+1)+A091533(n)-A209137(n+1)`
-/

namespace A209138.P14548935316064193003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209167 (n + 1) + (A091533 n - A209137 (n + 1))

end

end A209138.P14548935316064193003

namespace A209138

/-- `A209167(n+1)+A091533(n)-A209137(n+1)` -/
def P14548935316064193003.Spec : Prop :=
  ∀ n, P14548935316064193003.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P12920358034412695361

`A209137(A038722(n+1))`
-/

namespace A209138.P12920358034412695361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A038722 (n + 1)).toNat

end

end A209138.P12920358034412695361

namespace A209138

/-- `A209137(A038722(n+1))` -/
def P12920358034412695361.Spec : Prop :=
  ∀ n, P12920358034412695361.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P12183894912558547606

`A209137(A061579(n)+1)`
-/

namespace A209138.P12183894912558547606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A061579 n + 1).toNat

end

end A209138.P12183894912558547606

namespace A209138

/-- `A209137(A061579(n)+1)` -/
def P12183894912558547606.Spec : Prop :=
  ∀ n, P12183894912558547606.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P11616391106146694864

`A209137(A114327(n)+1+n)`
-/

namespace A209138.P11616391106146694864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209138.P11616391106146694864

namespace A209138

/-- `A209137(A114327(n)+1+n)` -/
def P11616391106146694864.Spec : Prop :=
  ∀ n, P11616391106146694864.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P2930730430687728562

`A209137(A093995(n+1)-n)`
-/

namespace A209138.P2930730430687728562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209138.P2930730430687728562

namespace A209138

/-- `A209137(A093995(n+1)-n)` -/
def P2930730430687728562.Spec : Prop :=
  ∀ n, P2930730430687728562.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P12673795999921741342

`A185081(A014132(n+1))`
-/

namespace A209138.P12673795999921741342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185081 (A014132 (n + 1)).toNat

end

end A209138.P12673795999921741342

namespace A209138

/-- `A185081(A014132(n+1))` -/
def P12673795999921741342.Spec : Prop :=
  ∀ n, P12673795999921741342.a n = A209138 (n + 1)

end A209138

/-! ## A209138.P17137234472096113489

`A185081(eq[0, A010054(n)])`
-/

namespace A209138.P17137234472096113489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209138.P17137234472096113489

namespace A209138

/-- `A185081(eq[0, A010054(n)])` -/
def P17137234472096113489.Spec : Prop :=
  ∀ n, P17137234472096113489.a n = A209138 (n + 1)

end A209138

/-!
# A209139: Triangle of coefficients of polynomials u(n,x) jointly generated with A209140; see the Formula section.

The programs for A209139, the canonical program `A209139.P6783330833926084428` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209139 has offset 1).

The definition of A209139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209139.P6783330833926084428

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209139

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)+T(row(n)-2, col(n)-2)` -/
def P6783330833926084428.Spec : Prop :=
  ∀ n, (P6783330833926084428.a n : ℤ) = A209139 (n + 1)

theorem P6783330833926084428.correct : P6783330833926084428.Spec := by
  intro n
  simp only [A209139, Nat.add_sub_cancel]

end A209139

/-!
# A209140: Triangle of coefficients of polynomials v(n,x) jointly generated with A209139; see the Formula section.

The programs for A209140, the canonical program `A209140.P13921750237864515925` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209140 has offset 1).

The definition of A209140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209140.P13921750237864515925

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209140

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)+T(row(n)-2, col(n)-2)` -/
def P13921750237864515925.Spec : Prop :=
  ∀ n, (P13921750237864515925.a n : ℤ) = A209140 (n + 1)

theorem P13921750237864515925.correct : P13921750237864515925.Spec := by
  intro n
  simp only [A209140, Nat.add_sub_cancel]

end A209140

/-!
# A209141: Triangle of coefficients of polynomials u(n,x) jointly generated with A209142; see the Formula section.

The programs for A209141, the canonical program `A209141.P15494776354899447955` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209141 has offset 1).

The definition of A209141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209141.P15494776354899447955

`2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209141

/-- `2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P15494776354899447955.Spec : Prop :=
  ∀ n, (P15494776354899447955.a n : ℤ) = A209141 (n + 1)

theorem P15494776354899447955.correct : P15494776354899447955.Spec := by
  intro n
  simp only [A209141, Nat.add_sub_cancel]

end A209141

/-! ## A209141.P1590217754441047562

`A209745(A038722(n+1))`
-/

namespace A209141.P1590217754441047562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A038722 (n + 1)).toNat

end

end A209141.P1590217754441047562

namespace A209141

/-- `A209745(A038722(n+1))` -/
def P1590217754441047562.Spec : Prop :=
  ∀ n, P1590217754441047562.a n = A209141 (n + 1)

end A209141

/-! ## A209141.P6884482111354245494

`A209745(A061579(n)+1)`
-/

namespace A209141.P6884482111354245494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A061579 n + 1).toNat

end

end A209141.P6884482111354245494

namespace A209141

/-- `A209745(A061579(n)+1)` -/
def P6884482111354245494.Spec : Prop :=
  ∀ n, P6884482111354245494.a n = A209141 (n + 1)

end A209141

/-! ## A209141.P3874213432742484800

`A209745(A114327(n)+1+n)`
-/

namespace A209141.P3874213432742484800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209141.P3874213432742484800

namespace A209141

/-- `A209745(A114327(n)+1+n)` -/
def P3874213432742484800.Spec : Prop :=
  ∀ n, P3874213432742484800.a n = A209141 (n + 1)

end A209141

/-! ## A209141.P13718621521694805162

`A209745(A093995(n+1)-n)`
-/

namespace A209141.P13718621521694805162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209141.P13718621521694805162

namespace A209141

/-- `A209745(A093995(n+1)-n)` -/
def P13718621521694805162.Spec : Prop :=
  ∀ n, P13718621521694805162.a n = A209141 (n + 1)

end A209141

/-! ## A209141.P2038119539807597014

`A209745(A002024(n+1)²-n)`
-/

namespace A209141.P2038119539807597014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A209141.P2038119539807597014

namespace A209141

/-- `A209745(A002024(n+1)²-n)` -/
def P2038119539807597014.Spec : Prop :=
  ∀ n, P2038119539807597014.a n = A209141 (n + 1)

end A209141

/-!
# A209142: Triangle of coefficients of polynomials v(n,x) jointly generated with A209141; see the Formula section.

The programs for A209142, the canonical program `A209142.P692590932978695816` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209142 has offset 1).

The definition of A209142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209142.P692590932978695816

`2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209142

/-- `2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P692590932978695816.Spec : Prop :=
  ∀ n, (P692590932978695816.a n : ℤ) = A209142 (n + 1)

theorem P692590932978695816.correct : P692590932978695816.Spec := by
  intro n
  simp only [A209142, Nat.add_sub_cancel]

end A209142

/-! ## A209142.P7711054576956927081

`A209746(A038722(n+1))`
-/

namespace A209142.P7711054576956927081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A038722 (n + 1)).toNat

end

end A209142.P7711054576956927081

namespace A209142

/-- `A209746(A038722(n+1))` -/
def P7711054576956927081.Spec : Prop :=
  ∀ n, P7711054576956927081.a n = A209142 (n + 1)

end A209142

/-! ## A209142.P7023397161725898039

`A209746(A061579(n)+1)`
-/

namespace A209142.P7023397161725898039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A061579 n + 1).toNat

end

end A209142.P7023397161725898039

namespace A209142

/-- `A209746(A061579(n)+1)` -/
def P7023397161725898039.Spec : Prop :=
  ∀ n, P7023397161725898039.a n = A209142 (n + 1)

end A209142

/-! ## A209142.P5957110317693471429

`A209746(A114327(n)+1+n)`
-/

namespace A209142.P5957110317693471429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209142.P5957110317693471429

namespace A209142

/-- `A209746(A114327(n)+1+n)` -/
def P5957110317693471429.Spec : Prop :=
  ∀ n, P5957110317693471429.a n = A209142 (n + 1)

end A209142

/-! ## A209142.P1517769846439127234

`A209746(A093995(n+1)-n)`
-/

namespace A209142.P1517769846439127234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209142.P1517769846439127234

namespace A209142

/-- `A209746(A093995(n+1)-n)` -/
def P1517769846439127234.Spec : Prop :=
  ∀ n, P1517769846439127234.a n = A209142 (n + 1)

end A209142

/-! ## A209142.P13075986134732917417

`A209746(A114327(n)-xor(n, -1))`
-/

namespace A209142.P13075986134732917417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A114327 n - Int.xor (n : ℤ) (-1)).toNat

end

end A209142.P13075986134732917417

namespace A209142

/-- `A209746(A114327(n)-xor(n, -1))` -/
def P13075986134732917417.Spec : Prop :=
  ∀ n, P13075986134732917417.a n = A209142 (n + 1)

end A209142

/-! ## A209142.P14874080215568657639

`A209746(A057944(n)+A004736(n+1))`
-/

namespace A209142.P14874080215568657639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A057944 n + A004736 (n + 1)).toNat

end

end A209142.P14874080215568657639

namespace A209142

/-- `A209746(A057944(n)+A004736(n+1))` -/
def P14874080215568657639.Spec : Prop :=
  ∀ n, P14874080215568657639.a n = A209142 (n + 1)

end A209142

/-!
# A209144: Triangle of coefficients of polynomials v(n,x) jointly generated with A209143; see the Formula section.

The programs for A209144, the canonical program `A209144.P4568866588798003918` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209144 has offset 1).

The definition of A209144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209144.P4568866588798003918

`A209149(A056536(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A209144

/-- `A209149(A056536(n+1))` -/
def P4568866588798003918.Spec : Prop :=
  ∀ n, P4568866588798003918.a n = A209144 (n + 1)

theorem P4568866588798003918.correct : P4568866588798003918.Spec := by
  intro n
  simp only [A209144, Nat.add_sub_cancel]

end A209144

/-! ## A209144.P11252627814133997855

`A209149(A091018(n)+1)`
-/

namespace A209144.P11252627814133997855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209149 (A091018 n + 1).toNat

end

end A209144.P11252627814133997855

namespace A209144

/-- `A209149(A091018(n)+1)` -/
def P11252627814133997855.Spec : Prop :=
  ∀ n, P11252627814133997855.a n = A209144 (n + 1)

theorem P11252627814133997855.correct : P11252627814133997855.Spec := by
  intro n
  simp only [A209144, Nat.add_sub_cancel, A209144.P11252627814133997855.a, A209144.P4568866588798003918.a, A056536, A056536.P15475188742304027796.a, A091018, A091018.P2259398009619809425.a, A209149, A209149.P11454977017558481505.a, A056537, A056537.P3331014331152516535.a, A091995, A091995.P16558306300262697301.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209144

/-! ## A209144.P13009656481536716109

`A209148(A056536(n+1))+A073424(A091018(n))`
-/

namespace A209144.P13009656481536716109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (A056536 (n + 1)).toNat + A073424 (A091018 n).toNat

end

end A209144.P13009656481536716109

namespace A209144

/-- `A209148(A056536(n+1))+A073424(A091018(n))` -/
def P13009656481536716109.Spec : Prop :=
  ∀ n, P13009656481536716109.a n = A209144 (n + 1)

end A209144

/-!
# A209145: Triangle of coefficients of polynomials u(n,x) jointly generated with A122075; see the Formula section.

The programs for A209145, the canonical program `A209145.P7072402552796024351` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209145 has offset 1).

The definition of A209145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209145.P13535824605935448537

`A210200(n+1)-A155161(A028310(n))`
-/

namespace A209145.P13535824605935448537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (n + 1) - A155161 (A028310 n).toNat

end

end A209145.P13535824605935448537

namespace A209145

/-- `A210200(n+1)-A155161(A028310(n))` -/
def P13535824605935448537.Spec : Prop :=
  ∀ n, P13535824605935448537.a n = A209145 (n + 1)

theorem P13535824605935448537.correct : P13535824605935448537.Spec := by
  intro n
  simp only [A209145, Nat.add_sub_cancel, A209145.P13535824605935448537.a, A209145.P7072402552796024351.a, A010054, A010054.P18347828677204923252.a, A028310, A028310.P18130301328277559831.a, A055830, A055830.P330965441625135501.a, A122075, A122075.P15727001130153339687.a, A155161, A155161.P10354802974006554035.a, A210200, A210200.P13673094195992924329.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209145

/-! ## A209145.P7072402552796024351

`A055830(n)+A122075(n)-A010054(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A209145

/-- `A055830(n)+A122075(n)-A010054(n)` -/
def P7072402552796024351.Spec : Prop :=
  ∀ n, P7072402552796024351.a n = A209145 (n + 1)

theorem P7072402552796024351.correct : P7072402552796024351.Spec := by
  intro n
  simp only [A209145, Nat.add_sub_cancel]

end A209145

/-! ## A209145.P16734587229576953641

`A210200(n+1)-A155161(A000007(n)+n)`
-/

namespace A209145.P16734587229576953641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (n + 1) - A155161 (A000007 n + (n : ℤ)).toNat

end

end A209145.P16734587229576953641

namespace A209145

/-- `A210200(n+1)-A155161(A000007(n)+n)` -/
def P16734587229576953641.Spec : Prop :=
  ∀ n, P16734587229576953641.a n = A209145 (n + 1)

end A209145

/-! ## A209145.P12357370306627393063

`A209747(n+1)+Δ[A155161(A028310(n))]`
-/

namespace A209145.P12357370306627393063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209747 (n + 1) + (f1 (n + 1) - f1 n)

end

end A209145.P12357370306627393063

namespace A209145

/-- `A209747(n+1)+Δ[A155161(A028310(n))]` -/
def P12357370306627393063.Spec : Prop :=
  ∀ n, P12357370306627393063.a n = A209145 (n + 1)

end A209145

/-! ## A209145.P9008062851042395013

`A210200(n+1)-A155161(A066182(n+1))`
-/

namespace A209145.P9008062851042395013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (n + 1) - A155161 (A066182 (n + 1)).toNat

end

end A209145.P9008062851042395013

namespace A209145

/-- `A210200(n+1)-A155161(A066182(n+1))` -/
def P9008062851042395013.Spec : Prop :=
  ∀ n, P9008062851042395013.a n = A209145 (n + 1)

end A209145

/-! ## A209145.P434666384695101471

`A210200(A066182(n+2))-A155161(n)`
-/

namespace A209145.P434666384695101471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (A066182 (n + 2)).toNat - A155161 n

end

end A209145.P434666384695101471

namespace A209145

/-- `A210200(A066182(n+2))-A155161(n)` -/
def P434666384695101471.Spec : Prop :=
  ∀ n, P434666384695101471.a n = A209145 (n + 1)

end A209145

/-! ## A209145.P6531792696631592400

`A209747(n+1)+Δ[A155161(A066182(n+1))]`
-/

namespace A209145.P6531792696631592400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209747 (n + 1) + (f1 (n + 1) - f1 n)

end

end A209145.P6531792696631592400

namespace A209145

/-- `A209747(n+1)+Δ[A155161(A066182(n+1))]` -/
def P6531792696631592400.Spec : Prop :=
  ∀ n, P6531792696631592400.a n = A209145 (n + 1)

end A209145

/-!
# A209147: Triangle of coefficients of polynomials v(n,x) jointly generated with A209146; see the Formula section.

The programs for A209147, the canonical program `A209147.P2065933926638694855` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209147 has offset 1).

The definition of A209147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209147.P2065933926638694855

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209147

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` -/
def P2065933926638694855.Spec : Prop :=
  ∀ n, P2065933926638694855.a n = A209147 (n + 1)

theorem P2065933926638694855.correct : P2065933926638694855.Spec := by
  intro n
  simp only [A209147, Nat.add_sub_cancel]

end A209147

/-! ## A209147.P11900092433637758745

`(A209125(n+1)+A207634(n+1))/2`
-/

namespace A209147.P11900092433637758745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209125 (n + 1) + A207634 (n + 1) : ℚ) / 2

end

end A209147.P11900092433637758745

namespace A209147

/-- `(A209125(n+1)+A207634(n+1))/2` -/
def P11900092433637758745.Spec : Prop :=
  ∀ n, P11900092433637758745.a n = (A209147 (n + 1) : ℚ)

theorem P11900092433637758745.correct : P11900092433637758745.Spec := by
  intro n
  simp only [A209147, Nat.add_sub_cancel, A209147.P11900092433637758745.a, A209147.P2065933926638694855.a, A207634, A207634.P3848981335035764252.a, A209125, A209125.P11860134007593482387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209147

/-! ## A209147.P13763996852775141529

`A164975(n+1)+∑[A209125(n+1)-A164975(n+1)]`
-/

namespace A209147.P13763996852775141529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209125 (n + 1) - A164975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164975 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209147.P13763996852775141529

namespace A209147

/-- `A164975(n+1)+∑[A209125(n+1)-A164975(n+1)]` -/
def P13763996852775141529.Spec : Prop :=
  ∀ n, P13763996852775141529.a n = A209147 (n + 1)

end A209147

/-! ## A209147.P12751852987605669179

`A209125(n+1)+A038572(A207634(n+1)-A209125(n+1))`
-/

namespace A209147.P12751852987605669179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209125 (n + 1) + A038572 (A207634 (n + 1) - A209125 (n + 1)).toNat

end

end A209147.P12751852987605669179

namespace A209147

/-- `A209125(n+1)+A038572(A207634(n+1)-A209125(n+1))` -/
def P12751852987605669179.Spec : Prop :=
  ∀ n, P12751852987605669179.a n = A209147 (n + 1)

end A209147

/-! ## A209147.P3188497073618886602

`A209125(n+1)+A001281(A207634(n+1)-A209125(n+1))`
-/

namespace A209147.P3188497073618886602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209125 (n + 1) + A001281 (A207634 (n + 1) - A209125 (n + 1)).toNat

end

end A209147.P3188497073618886602

namespace A209147

/-- `A209125(n+1)+A001281(A207634(n+1)-A209125(n+1))` -/
def P3188497073618886602.Spec : Prop :=
  ∀ n, P3188497073618886602.a n = A209147 (n + 1)

end A209147

/-! ## A209147.P5545965649991019997

`A038572(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P5545965649991019997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P5545965649991019997

namespace A209147

/-- `A038572(A209125(n+1)+A207634(n+1))` -/
def P5545965649991019997.Spec : Prop :=
  ∀ n, P5545965649991019997.a n = A209147 (n + 1)

end A209147

/-! ## A209147.P17509408018838632035

`A001281(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P17509408018838632035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P17509408018838632035

namespace A209147

/-- `A001281(A209125(n+1)+A207634(n+1))` -/
def P17509408018838632035.Spec : Prop :=
  ∀ n, P17509408018838632035.a n = A209147 (n + 1)

end A209147

/-! ## A209147.P14503974851281977226

`A032742(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P14503974851281977226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P14503974851281977226

namespace A209147

/-- `A032742(A209125(n+1)+A207634(n+1))` -/
def P14503974851281977226.Spec : Prop :=
  ∀ n, P14503974851281977226.a n = A209147 (n + 1)

end A209147

/-! ## A209147.P9295373682314933701

`A110654(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P9295373682314933701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P9295373682314933701

namespace A209147

/-- `A110654(A209125(n+1)+A207634(n+1))` -/
def P9295373682314933701.Spec : Prop :=
  ∀ n, P9295373682314933701.a n = A209147 (n + 1)

end A209147

/-!
# A209148: Triangle of coefficients of polynomials u(n,x) jointly generated with A209149; see the Formula section.

The programs for A209148, the canonical program `A209148.P12395643079432860352` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209148 has offset 1).

The definition of A209148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209148.P12395643079432860352

`3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5, a(4)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209148

/-- `3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` -/
def P12395643079432860352.Spec : Prop :=
  ∀ n, P12395643079432860352.a n = A209148 (n + 1)

theorem P12395643079432860352.correct : P12395643079432860352.Spec := by
  intro n
  simp only [A209148, Nat.add_sub_cancel]

end A209148

/-! ## A209148.P380859674281280660

`A209149(n+1)-char[∑[n+1]]`
-/

namespace A209148.P380859674281280660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209149 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209148.P380859674281280660

namespace A209148

/-- `A209149(n+1)-char[∑[n+1]]` -/
def P380859674281280660.Spec : Prop :=
  ∀ n, P380859674281280660.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P13074942020782808763

`abs(A209149(n+1)-A073424(n))`
-/

namespace A209148.P13074942020782808763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209149 (n + 1) - A073424 n|

end

end A209148.P13074942020782808763

namespace A209148

/-- `abs(A209149(n+1)-A073424(n))` -/
def P13074942020782808763.Spec : Prop :=
  ∀ n, P13074942020782808763.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P10986668830889553350

`A209149(n+1)+A177767(n)-A097805(n)`
-/

namespace A209148.P10986668830889553350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209149 (n + 1) + A177767 n - A097805 n

end

end A209148.P10986668830889553350

namespace A209148

/-- `A209149(n+1)+A177767(n)-A097805(n)` -/
def P10986668830889553350.Spec : Prop :=
  ∀ n, P10986668830889553350.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P14021418796722569762

`or(A209149(n+1)-A073424(n), A000007(n))`
-/

namespace A209148.P14021418796722569762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209149 (n + 1) - A073424 n) (A000007 n)

end

end A209148.P14021418796722569762

namespace A209148

/-- `or(A209149(n+1)-A073424(n), A000007(n))` -/
def P14021418796722569762.Spec : Prop :=
  ∀ n, P14021418796722569762.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P5864218074553753426

`A208510(n+1)+A209149(n+1)-A029653(n)`
-/

namespace A209148.P5864218074553753426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + (A209149 (n + 1) - A029653 n)

end

end A209148.P5864218074553753426

namespace A209148

/-- `A208510(n+1)+A209149(n+1)-A029653(n)` -/
def P5864218074553753426.Spec : Prop :=
  ∀ n, P5864218074553753426.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P3393376104772910531

`A185045(n+1)+A209149(n+1)-A208659(n+1)`
-/

namespace A209148.P3393376104772910531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185045 (n + 1) + (A209149 (n + 1) - A208659 (n + 1))

end

end A209148.P3393376104772910531

namespace A209148

/-- `A185045(n+1)+A209149(n+1)-A208659(n+1)` -/
def P3393376104772910531.Spec : Prop :=
  ∀ n, P3393376104772910531.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P4897047375029127599

`A209561(n+1)+A209149(n+1)-A209562(n+1)`
-/

namespace A209148.P4897047375029127599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) + (A209149 (n + 1) - A209562 (n + 1))

end

end A209148.P4897047375029127599

namespace A209148

/-- `A209561(n+1)+A209149(n+1)-A209562(n+1)` -/
def P4897047375029127599.Spec : Prop :=
  ∀ n, P4897047375029127599.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P9571295713643772260

`A000035(2*n)+A209149(n+1)-A073424(n)`
-/

namespace A209148.P9571295713643772260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (A209149 (n + 1) - A073424 n)

end

end A209148.P9571295713643772260

namespace A209148

/-- `A000035(2*n)+A209149(n+1)-A073424(n)` -/
def P9571295713643772260.Spec : Prop :=
  ∀ n, P9571295713643772260.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P11037399364378062440

`(A209149(n+1)-A073424(n))*A000034(2*n)`
-/

namespace A209148.P11037399364378062440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209149 (n + 1) - A073424 n) * A000034 (2 * n)

end

end A209148.P11037399364378062440

namespace A209148

/-- `(A209149(n+1)-A073424(n))*A000034(2*n)` -/
def P11037399364378062440.Spec : Prop :=
  ∀ n, P11037399364378062440.a n = A209148 (n + 1)

end A209148

/-! ## A209148.P4675852138616611304

`A000027(A209149(n+1)-A073424(n))`
-/

namespace A209148.P4675852138616611304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A209149 (n + 1) - A073424 n).toNat

end

end A209148.P4675852138616611304

namespace A209148

/-- `A000027(A209149(n+1)-A073424(n))` -/
def P4675852138616611304.Spec : Prop :=
  ∀ n, P4675852138616611304.a n = A209148 (n + 1)

end A209148

/-!
# A209149: Triangle of coefficients of polynomials v(n,x) jointly generated with A209146; see the Formula section.

The programs for A209149, the canonical program `A209149.P11454977017558481505` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209149 has offset 1).

The definition of A209149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209149.P11454977017558481505

`2*T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209149

/-- `2*T(n-1,k)+T(n-1,k-1)` -/
def P11454977017558481505.Spec : Prop :=
  ∀ n, (P11454977017558481505.a n : ℤ) = A209149 (n + 1)

theorem P11454977017558481505.correct : P11454977017558481505.Spec := by
  intro n
  simp only [A209149, Nat.add_sub_cancel]

end A209149

/-! ## A209149.P14317810831700292210

`T(n-1,k)+T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=3`
-/

namespace A209149.P14317810831700292210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A209149.P14317810831700292210

namespace A209149

/-- `T(n-1,k)+T(n-1,k-1)+T(n-1,k)` -/
def P14317810831700292210.Spec : Prop :=
  ∀ n, (P14317810831700292210.a n : ℤ) = A209149 (n + 1)

theorem P14317810831700292210.correct : P14317810831700292210.Spec := by
  intro n
  simp only [A209149, Nat.add_sub_cancel, A209149.P14317810831700292210.a, A209149.P11454977017558481505.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209149

/-! ## A209149.P17119828374222236593

`T(n-1,k-1)-2*(T(n-1,k)-2*T(n-1,k))` with `a(0)=1, a(1)=3`
-/

namespace A209149.P17119828374222236593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n)

end

end A209149.P17119828374222236593

namespace A209149

/-- `T(n-1,k-1)-2*(T(n-1,k)-2*T(n-1,k))` -/
def P17119828374222236593.Spec : Prop :=
  ∀ n, P17119828374222236593.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P12240326651649827890

`A209148(n+1)+A073424(n)`
-/

namespace A209149.P12240326651649827890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1) + A073424 n

end

end A209149.P12240326651649827890

namespace A209149

/-- `A209148(n+1)+A073424(n)` -/
def P12240326651649827890.Spec : Prop :=
  ∀ n, P12240326651649827890.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P3458088456185272143

`2*A038207(n)-A200139(n)`
-/

namespace A209149.P3458088456185272143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A200139 n

end

end A209149.P3458088456185272143

namespace A209149

/-- `2*A038207(n)-A200139(n)` -/
def P3458088456185272143.Spec : Prop :=
  ∀ n, P3458088456185272143.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P409707093043642928

`A209148(n+1)+char[A008805(n)]`
-/

namespace A209149.P409707093043642928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209149.P409707093043642928

namespace A209149

/-- `A209148(n+1)+char[A008805(n)]` -/
def P409707093043642928.Spec : Prop :=
  ∀ n, P409707093043642928.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P11894620814806519259

`A029635(n)*A130321(n)-A251636(n)`
-/

namespace A209149.P11894620814806519259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n * A130321 n - A251636 n

end

end A209149.P11894620814806519259

namespace A209149

/-- `A029635(n)*A130321(n)-A251636(n)` -/
def P11894620814806519259.Spec : Prop :=
  ∀ n, P11894620814806519259.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P7634125484036177412

`A209148(n+1)+A029653(n)-A208510(n+1)`
-/

namespace A209149.P7634125484036177412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1) + (A029653 n - A208510 (n + 1))

end

end A209149.P7634125484036177412

namespace A209149

/-- `A209148(n+1)+A029653(n)-A208510(n+1)` -/
def P7634125484036177412.Spec : Prop :=
  ∀ n, P7634125484036177412.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P15612206653619055478

`A208659(n+1)+A209148(n+1)-A185045(n+1)`
-/

namespace A209149.P15612206653619055478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208659 (n + 1) + (A209148 (n + 1) - A185045 (n + 1))

end

end A209149.P15612206653619055478

namespace A209149

/-- `A208659(n+1)+A209148(n+1)-A185045(n+1)` -/
def P15612206653619055478.Spec : Prop :=
  ∀ n, P15612206653619055478.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P2948581606609038778

`A209148(n+1)+A209762(n+1)-A209761(n+1)`
-/

namespace A209149.P2948581606609038778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1) + (A209762 (n + 1) - A209761 (n + 1))

end

end A209149.P2948581606609038778

namespace A209149

/-- `A209148(n+1)+A209762(n+1)-A209761(n+1)` -/
def P2948581606609038778.Spec : Prop :=
  ∀ n, P2948581606609038778.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P7505190357046418328

`A209144(A056537(n+1))`
-/

namespace A209149.P7505190357046418328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209144 (A056537 (n + 1)).toNat

end

end A209149.P7505190357046418328

namespace A209149

/-- `A209144(A056537(n+1))` -/
def P7505190357046418328.Spec : Prop :=
  ∀ n, P7505190357046418328.a n = A209149 (n + 1)

end A209149

/-! ## A209149.P3071375908665660166

`A209148(n+1)+A005369(A004277(n))`
-/

namespace A209149.P3071375908665660166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1) + A005369 (A004277 n).toNat

end

end A209149.P3071375908665660166

namespace A209149

/-- `A209148(n+1)+A005369(A004277(n))` -/
def P3071375908665660166.Spec : Prop :=
  ∀ n, P3071375908665660166.a n = A209149 (n + 1)

end A209149

/-!
# A209150: Triangle of coefficients of polynomials u(n,x) jointly generated with A208335; see the Formula section.

The programs for A209150, the canonical program `A209150.P6776607552167433688` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209150 has offset 1).

The definition of A209150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209150.P6776607552167433688

`A208335(A014132(n+2))-A208335(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209150

/-- `A208335(A014132(n+2))-A208335(n+2)` -/
def P6776607552167433688.Spec : Prop :=
  ∀ n, P6776607552167433688.a n = A209150 (n + 1)

theorem P6776607552167433688.correct : P6776607552167433688.Spec := by
  intro n
  simp only [A209150, Nat.add_sub_cancel]

end A209150

/-! ## A209150.P4779115431365232328

`A194145(A122075(n)^A261959(n))`
-/

namespace A209150.P4779115431365232328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (SequenceMachineLib.roundAway ((A122075 n : ℚ) ^ (A261959 n : ℤ))).toNat

end

end A209150.P4779115431365232328

namespace A209150

/-- `A194145(A122075(n)^A261959(n))` -/
def P4779115431365232328.Spec : Prop :=
  ∀ n, P4779115431365232328.a n = A209150 (n + 1)

end A209150

/-!
# A209151: Triangle of coefficients of polynomials u(n,x) jointly generated with A208337; see the Formula section.

The programs for A209151, the canonical program `A209151.P2572837439504681830` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209151 has offset 1).

The definition of A209151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209151.P6976357336034747054

`2*A210595(n+1)-A209756(n+1)`
-/

namespace A209151.P6976357336034747054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210595 (n + 1) - A209756 (n + 1)

end

end A209151.P6976357336034747054

namespace A209151

/-- `2*A210595(n+1)-A209756(n+1)` -/
def P6976357336034747054.Spec : Prop :=
  ∀ n, P6976357336034747054.a n = A209151 (n + 1)

theorem P6976357336034747054.correct : P6976357336034747054.Spec := by
  intro n
  simp only [A209151, Nat.add_sub_cancel, A209151.P6976357336034747054.a, A209151.P2572837439504681830.a, A010054, A010054.P18347828677204923252.a, A038137, A038137.P10900785267476421453.a, A209756, A209756.P12009947398184770659.a, A210595, A210595.P1117465512218785240.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209151

/-! ## A209151.P2572837439504681830

`A038137(n+1)+A038137(n)-A010054(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A209151

/-- `A038137(n+1)+A038137(n)-A010054(n+1)` -/
def P2572837439504681830.Spec : Prop :=
  ∀ n, P2572837439504681830.a n = A209151 (n + 1)

theorem P2572837439504681830.correct : P2572837439504681830.Spec := by
  intro n
  simp only [A209151, Nat.add_sub_cancel]

end A209151

/-! ## A209151.P10227797525334918340

`A209747(A038722(n+1))+Δ[A038137(n)]`
-/

namespace A209151.P10227797525334918340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209747 (A038722 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A209151.P10227797525334918340

namespace A209151

/-- `A209747(A038722(n+1))+Δ[A038137(n)]` -/
def P10227797525334918340.Spec : Prop :=
  ∀ n, P10227797525334918340.a n = A209151 (n + 1)

end A209151

/-! ## A209151.P4849299142001411866

`A210565(n+1)-A155161(A038722(n+1))`
-/

namespace A209151.P4849299142001411866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1) - A155161 (A038722 (n + 1)).toNat

end

end A209151.P4849299142001411866

namespace A209151

/-- `A210565(n+1)-A155161(A038722(n+1))` -/
def P4849299142001411866.Spec : Prop :=
  ∀ n, P4849299142001411866.a n = A209151 (n + 1)

end A209151

/-! ## A209151.P12203520744058954940

`A038137(A014132(n+1))-A155161(A038722(n+1))`
-/

namespace A209151.P12203520744058954940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A014132 (n + 1)).toNat - A155161 (A038722 (n + 1)).toNat

end

end A209151.P12203520744058954940

namespace A209151

/-- `A038137(A014132(n+1))-A155161(A038722(n+1))` -/
def P12203520744058954940.Spec : Prop :=
  ∀ n, P12203520744058954940.a n = A209151 (n + 1)

end A209151

/-! ## A209151.P1965705384158722015

`A193736(comp[∑[n]])`
-/

namespace A209151.P1965705384158722015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A209151.P1965705384158722015

namespace A209151

/-- `A193736(comp[∑[n]])` -/
def P1965705384158722015.Spec : Prop :=
  ∀ n, P1965705384158722015.a n = A209151 (n + 1)

end A209151

/-! ## A209151.P14903247641986755644

`A005843(A210595(n+1))-A209756(n+1)`
-/

namespace A209151.P14903247641986755644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210595 (n + 1)).toNat - A209756 (n + 1)

end

end A209151.P14903247641986755644

namespace A209151

/-- `A005843(A210595(n+1))-A209756(n+1)` -/
def P14903247641986755644.Spec : Prop :=
  ∀ n, P14903247641986755644.a n = A209151 (n + 1)

end A209151

/-! ## A209151.P4404278820888720004

`A193737(A380649(n+1))`
-/

namespace A209151.P4404278820888720004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (A380649 (n + 1)).toNat

end

end A209151.P4404278820888720004

namespace A209151

/-- `A193737(A380649(n+1))` -/
def P4404278820888720004.Spec : Prop :=
  ∀ n, P4404278820888720004.a n = A209151 (n + 1)

end A209151

/-!
# A209152: Triangle of coefficients of polynomials u(n,x) jointly generated with A208339; see the Formula section.

The programs for A209152, the canonical program `A209152.P4089763024179772782` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209152 has offset 1).

The definition of A209152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209152.P4089763024179772782

`A208338(n+1)+A210558(n+1)-A208339(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A209152

/-- `A208338(n+1)+A210558(n+1)-A208339(n+1)` -/
def P4089763024179772782.Spec : Prop :=
  ∀ n, P4089763024179772782.a n = A209152 (n + 1)

theorem P4089763024179772782.correct : P4089763024179772782.Spec := by
  intro n
  simp only [A209152, Nat.add_sub_cancel]

end A209152

/-!
# A209153: Triangle of coefficients of polynomials u(n,x) jointly generated with A208340; see the Formula section.

The programs for A209153, the canonical program `A209153.P3351280738018175407` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209153 has offset 1).

The definition of A209153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209153.P3351280738018175407

`A202390(n+1)+A202390(n)-A010054(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A209153

/-- `A202390(n+1)+A202390(n)-A010054(n+1)` -/
def P3351280738018175407.Spec : Prop :=
  ∀ n, P3351280738018175407.a n = A209153 (n + 1)

theorem P3351280738018175407.correct : P3351280738018175407.Spec := by
  intro n
  simp only [A209153, Nat.add_sub_cancel]

end A209153

/-! ## A209153.P11026214576199038817

`A346632(A056941(n))+A144332(n+1)`
-/

namespace A209153.P11026214576199038817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346632 (A056941 n).toNat + A144332 (n + 1)

end

end A209153.P11026214576199038817

namespace A209153

/-- `A346632(A056941(n))+A144332(n+1)` -/
def P11026214576199038817.Spec : Prop :=
  ∀ n, P11026214576199038817.a n = A209153 (n + 1)

end A209153

/-! ## A209153.P2566848259492397228

`A160753(A308989(n))+A144332(n+1)`
-/

namespace A209153.P2566848259492397228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160753 (A308989 n).toNat + A144332 (n + 1)

end

end A209153.P2566848259492397228

namespace A209153

/-- `A160753(A308989(n))+A144332(n+1)` -/
def P2566848259492397228.Spec : Prop :=
  ∀ n, P2566848259492397228.a n = A209153 (n + 1)

end A209153

/-!
# A209156: Triangle read by rows: denominators of Stirling-like triangle of rational numbers.

The programs for A209156, there is no canonical definition to state claims against.
-/

/-! ## A209156.P12870988359848868080

`gcd(A007318(n), A028310(A319758(n)))`
-/

namespace A209156.P12870988359848868080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A028310 (A319758 n).toNat)

end

end A209156.P12870988359848868080

/-! ## A209156.P5827840627874222794

`A290318(lt[A290318(2*n), A290316(n)])`
-/

namespace A209156.P5827840627874222794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209156.P5827840627874222794

/-! ## A209156.P2737107552637251373

`A290318(A014132(n+1)%p?[A168297(n)])`
-/

namespace A209156.P2737107552637251373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 (Int.tmod (A014132 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A209156.P2737107552637251373

/-! ## A209156.P10284361245062963768

`A290318(A014132(n+1))%A001213(n+1)`
-/

namespace A209156.P10284361245062963768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290318 (A014132 (n + 1)).toNat) (A001213 (n + 1))

end

end A209156.P10284361245062963768

/-!
# A209158: Triangle of coefficients of polynomials u(n,x) jointly generated with A209159; see the Formula section.

The programs for A209158, there is no canonical definition to state claims against.
-/

/-! ## A209158.P2858740653044221900

`A010054(n)+A208324(n)-A209159(n+1)`
-/

namespace A209158.P2858740653044221900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A208324 n - A209159 (n + 1))

end

end A209158.P2858740653044221900

/-! ## A209158.P12503317873114605942

`A208324(n)-A209159(n+1)%A209161(n+1)`
-/

namespace A209158.P12503317873114605942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 n - Int.tmod (A209159 (n + 1)) (A209161 (n + 1))

end

end A209158.P12503317873114605942

/-! ## A209158.P13388935658427624946

`A208913(n+1)+A208914(n+1)-A209159(n+1)`
-/

namespace A209158.P13388935658427624946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208913 (n + 1) + (A208914 (n + 1) - A209159 (n + 1))

end

end A209158.P13388935658427624946

/-! ## A209158.P6280924287628142955

`A209705(n+1)+A209706(n+1)-A209159(n+1)`
-/

namespace A209158.P6280924287628142955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A209706 (n + 1) - A209159 (n + 1))

end

end A209158.P6280924287628142955

/-! ## A209158.P6547021081912589434

`A209771(n+1)+A209772(n+1)-A209159(n+1)`
-/

namespace A209158.P6547021081912589434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + (A209772 (n + 1) - A209159 (n + 1))

end

end A209158.P6547021081912589434

/-! ## A209158.P7516243226548908629

`A207627(n+2)-A209159(n+1)`
-/

namespace A209158.P7516243226548908629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209159 (n + 1)

end

end A209158.P7516243226548908629

/-! ## A209158.P14952924739394460681

`A005369(2*n)+A208324(n)-A209159(n+1)`
-/

namespace A209158.P14952924739394460681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) + (A208324 n - A209159 (n + 1))

end

end A209158.P14952924739394460681

/-!
# A209159: Triangle of coefficients of polynomials v(n,x) jointly generated with A209158; see the Formula section.

The programs for A209159, there is no canonical definition to state claims against.
-/

/-! ## A209159.P16458929619180437478

`or(1, A208324(n)-A209158(n+1))`
-/

namespace A209159.P16458929619180437478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A208324 n - A209158 (n + 1))

end

end A209159.P16458929619180437478

/-! ## A209159.P6360517193932325242

`A010054(n)+A208324(n)-A209158(n+1)`
-/

namespace A209159.P6360517193932325242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A208324 n - A209158 (n + 1))

end

end A209159.P6360517193932325242

/-! ## A209159.P14884086210008098777

`A208913(n+1)+A208914(n+1)-A209158(n+1)`
-/

namespace A209159.P14884086210008098777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208913 (n + 1) + (A208914 (n + 1) - A209158 (n + 1))

end

end A209159.P14884086210008098777

/-! ## A209159.P1696040268749604248

`A209771(n+1)+A209772(n+1)-A209158(n+1)`
-/

namespace A209159.P1696040268749604248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + (A209772 (n + 1) - A209158 (n + 1))

end

end A209159.P1696040268749604248

/-! ## A209159.P3175744141045862212

`A207627(n+2)-A209158(n+1)`
-/

namespace A209159.P3175744141045862212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209158 (n + 1)

end

end A209159.P3175744141045862212

/-! ## A209159.P8347691671687195125

`A093178(A208324(n)-A209158(n+1))`
-/

namespace A209159.P8347691671687195125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A208324 n - A209158 (n + 1)).toNat

end

end A209159.P8347691671687195125

/-! ## A209159.P13856024331728368485

`∏{d}[A209158(n+1)-A208324(n), A014963(#)]`
-/

namespace A209159.P13856024331728368485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) - A208324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A209159.P13856024331728368485

/-!
# A209161: Triangle of coefficients of polynomials v(n,x) jointly generated with A209160; see the Formula section.

The programs for A209161, the canonical program `A209161.P4535158147168129632` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209161 has offset 1).

The definition of A209161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209161.P4535158147168129632

`2*A208760(n+1)-A208759(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209161

/-- `2*A208760(n+1)-A208759(n+1)` -/
def P4535158147168129632.Spec : Prop :=
  ∀ n, P4535158147168129632.a n = A209161 (n + 1)

theorem P4535158147168129632.correct : P4535158147168129632.Spec := by
  intro n
  simp only [A209161, Nat.add_sub_cancel]

end A209161

/-! ## A209161.P16575701344856374274

`2*A208760(n+1)-A073387(A002378(n)%A080036(n))`
-/

namespace A209161.P16575701344856374274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208760 (n + 1) - A073387 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A209161.P16575701344856374274

namespace A209161

/-- `2*A208760(n+1)-A073387(A002378(n)%A080036(n))` -/
def P16575701344856374274.Spec : Prop :=
  ∀ n, P16575701344856374274.a n = A209161 (n + 1)

end A209161

/-! ## A209161.P7536020638303005612

`A004277(A208760(n+1))-A208759(n+1)`
-/

namespace A209161.P7536020638303005612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208760 (n + 1)).toNat - A208759 (n + 1)

end

end A209161.P7536020638303005612

namespace A209161

/-- `A004277(A208760(n+1))-A208759(n+1)` -/
def P7536020638303005612.Spec : Prop :=
  ∀ n, P7536020638303005612.a n = A209161 (n + 1)

end A209161

/-! ## A209161.P14701821954454653526

`A353853(or(A193842(n), A352513(n)))`
-/

namespace A209161.P14701821954454653526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (Int.lor (A193842 n) (A352513 n)).toNat

end

end A209161.P14701821954454653526

namespace A209161

/-- `A353853(or(A193842(n), A352513(n)))` -/
def P14701821954454653526.Spec : Prop :=
  ∀ n, P14701821954454653526.a n = A209161 (n + 1)

end A209161

/-! ## A209161.P5341584738523815086

`A219760(A193710(n+1))`
-/

namespace A209161.P5341584738523815086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219760 (A193710 (n + 1)).toNat

end

end A209161.P5341584738523815086

namespace A209161

/-- `A219760(A193710(n+1))` -/
def P5341584738523815086.Spec : Prop :=
  ∀ n, P5341584738523815086.a n = A209161 (n + 1)

end A209161

/-!
# A209163: Triangle of coefficients of polynomials v(n,x) jointly generated with A209162; see the Formula section.

The programs for A209163, the canonical program `A209163.P6100200027214597742` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209163 has offset 1).

The definition of A209163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209163.P6100200027214597742

`2*A208762(n+1)-A209135(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209163

/-- `2*A208762(n+1)-A209135(n+1)` -/
def P6100200027214597742.Spec : Prop :=
  ∀ n, P6100200027214597742.a n = A209163 (n + 1)

theorem P6100200027214597742.correct : P6100200027214597742.Spec := by
  intro n
  simp only [A209163, Nat.add_sub_cancel]

end A209163

/-! ## A209163.P13642650605235252587

`A208761(n+1)+A208932(n+1)-A209135(n+1)`
-/

namespace A209163.P13642650605235252587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208761 (n + 1) + (A208932 (n + 1) - A209135 (n + 1))

end

end A209163.P13642650605235252587

namespace A209163

/-- `A208761(n+1)+A208932(n+1)-A209135(n+1)` -/
def P13642650605235252587.Spec : Prop :=
  ∀ n, P13642650605235252587.a n = A209163 (n + 1)

theorem P13642650605235252587.correct : P13642650605235252587.Spec := by
  intro n
  simp only [A209163, Nat.add_sub_cancel, A209163.P13642650605235252587.a, A209163.P6100200027214597742.a, A208761, A208761.P6495230936573383809.a, A208762, A208762.P9660494929894193493.a, A208932, A208932.P1537757445397386457.a, A209135, A209135.P3722806028542428745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209163

/-! ## A209163.P6260072515090706510

`A004277(A208762(n+1))-A209135(n+1)`
-/

namespace A209163.P6260072515090706510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208762 (n + 1)).toNat - A209135 (n + 1)

end

end A209163.P6260072515090706510

namespace A209163

/-- `A004277(A208762(n+1))-A209135(n+1)` -/
def P6260072515090706510.Spec : Prop :=
  ∀ n, P6260072515090706510.a n = A209163 (n + 1)

end A209163

/-!
# A209164: Triangle of coefficients of polynomials u(n,x) jointly generated with A209165; see the Formula section.

The programs for A209164, there is no canonical definition to state claims against.
-/

/-! ## A209164.P10885481569658841649

`A209148(n+1)-A213722(A342985(n))`
-/

namespace A209164.P10885481569658841649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1) - A213722 (A342985 n).toNat

end

end A209164.P10885481569658841649

/-!
# A209165: Triangle of coefficients of polynomials v(n,x) jointly generated with A209164; see the Formula section.

The programs for A209165, the canonical program `A209165.P15663781587695796066` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209165 has offset 1).

The definition of A209165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209165.P15663781587695796066

`A207636(n+1)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209165

/-- `A207636(n+1)-T(n-1,k-1)` -/
def P15663781587695796066.Spec : Prop :=
  ∀ n, P15663781587695796066.a n = A209165 (n + 1)

theorem P15663781587695796066.correct : P15663781587695796066.Spec := by
  intro n
  simp only [A209165, Nat.add_sub_cancel]

end A209165

/-!
# A209167: Triangle of coefficients of polynomials v(n,x) jointly generated with A209166; see the Formula section.

The programs for A209167, the canonical program `A209167.P16133289670553750604` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209167 has offset 1).

The definition of A209167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209167.P16133289670553750604

`A228815(n)+A091533(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A209167

/-- `A228815(n)+A091533(n)` -/
def P16133289670553750604.Spec : Prop :=
  ∀ n, P16133289670553750604.a n = A209167 (n + 1)

theorem P16133289670553750604.correct : P16133289670553750604.Spec := by
  intro n
  simp only [A209167, Nat.add_sub_cancel]

end A209167

/-! ## A209167.P1517655585322455031

`A091562(n)+2*A228815(n)`
-/

namespace A209167.P1517655585322455031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 n + 2 * A228815 n

end

end A209167.P1517655585322455031

namespace A209167

/-- `A091562(n)+2*A228815(n)` -/
def P1517655585322455031.Spec : Prop :=
  ∀ n, P1517655585322455031.a n = A209167 (n + 1)

end A209167

/-! ## A209167.P14363580244125632286

`2*A091533(n)-A091562(n)`
-/

namespace A209167.P14363580244125632286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091533 n - A091562 n

end

end A209167.P14363580244125632286

namespace A209167

/-- `2*A091533(n)-A091562(n)` -/
def P14363580244125632286.Spec : Prop :=
  ∀ n, P14363580244125632286.a n = A209167 (n + 1)

end A209167

/-! ## A209167.P11249411951521502906

`A209137(n+1)+A091533(n)-A205575(n)`
-/

namespace A209167.P11249411951521502906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) + (A091533 n - A205575 n)

end

end A209167.P11249411951521502906

namespace A209167

/-- `A209137(n+1)+A091533(n)-A205575(n)` -/
def P11249411951521502906.Spec : Prop :=
  ∀ n, P11249411951521502906.a n = A209167 (n + 1)

end A209167

/-! ## A209167.P13455692785128639692

`A209137(n+1)+A209138(n+1)-A091533(n)`
-/

namespace A209167.P13455692785128639692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) + (A209138 (n + 1) - A091533 n)

end

end A209167.P13455692785128639692

namespace A209167

/-- `A209137(n+1)+A209138(n+1)-A091533(n)` -/
def P13455692785128639692.Spec : Prop :=
  ∀ n, P13455692785128639692.a n = A209167 (n + 1)

end A209167

/-! ## A209167.P13689338745467683072

`A209138(n+2)+A209138(n+1)-A091533(n+1)`
-/

namespace A209167.P13689338745467683072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 (n + 2) + (A209138 (n + 1) - A091533 (n + 1))

end

end A209167.P13689338745467683072

namespace A209167

/-- `A209138(n+2)+A209138(n+1)-A091533(n+1)` -/
def P13689338745467683072.Spec : Prop :=
  ∀ n, P13689338745467683072.a n = A209167 (n + 1)

end A209167

/-! ## A209167.P1982062257164129743

`A091562(n)+A005843(A228815(n))`
-/

namespace A209167.P1982062257164129743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 n + A005843 (A228815 n).toNat

end

end A209167.P1982062257164129743

namespace A209167

/-- `A091562(n)+A005843(A228815(n))` -/
def P1982062257164129743.Spec : Prop :=
  ∀ n, P1982062257164129743.a n = A209167 (n + 1)

end A209167

/-! ## A209167.P9947547965761107679

`A005843(A091533(n))-A091562(n)`
-/

namespace A209167.P9947547965761107679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A091533 n).toNat - A091562 n

end

end A209167.P9947547965761107679

namespace A209167

/-- `A005843(A091533(n))-A091562(n)` -/
def P9947547965761107679.Spec : Prop :=
  ∀ n, P9947547965761107679.a n = A209167 (n + 1)

end A209167

/-!
# A209169: Triangle of coefficients of polynomials v(n,x) jointly generated with A209168; see the Formula section.

The programs for A209169, the canonical program `A209169.P6757168458647328851` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209169 has offset 1).

The definition of A209169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209169.P6757168458647328851

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209169

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)+T(row(n)-2, col(n)-2)` -/
def P6757168458647328851.Spec : Prop :=
  ∀ n, (P6757168458647328851.a n : ℤ) = A209169 (n + 1)

theorem P6757168458647328851.correct : P6757168458647328851.Spec := by
  intro n
  simp only [A209169, Nat.add_sub_cancel]

end A209169

/-! ## A209169.P10673099469550148484

`A210743(n+1)+A209139(n+1)-A209168(n+1)`
-/

namespace A209169.P10673099469550148484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210743 (n + 1) + A209139 (n + 1) - A209168 (n + 1)

end

end A209169.P10673099469550148484

namespace A209169

/-- `A210743(n+1)+A209139(n+1)-A209168(n+1)` -/
def P10673099469550148484.Spec : Prop :=
  ∀ n, P10673099469550148484.a n = A209169 (n + 1)

end A209169

/-!
# A209171: Triangle of coefficients of polynomials v(n,x) jointly generated with A209170; see the Formula section.

The programs for A209171, the canonical program `A209171.P15068537238133119135` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209171 has offset 1).

The definition of A209171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209171.P15068537238133119135

`2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209171

/-- `2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P15068537238133119135.Spec : Prop :=
  ∀ n, (P15068537238133119135.a n : ℤ) = A209171 (n + 1)

theorem P15068537238133119135.correct : P15068537238133119135.Spec := by
  intro n
  simp only [A209171, Nat.add_sub_cancel]

end A209171

/-! ## A209171.P1152321617571872192

`A209142(n+1)+A209142(n+2)-A209141(n+2)`
-/

namespace A209171.P1152321617571872192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209142 (n + 1) + (A209142 (n + 2) - A209141 (n + 2))

end

end A209171.P1152321617571872192

namespace A209171

/-- `A209142(n+1)+A209142(n+2)-A209141(n+2)` -/
def P1152321617571872192.Spec : Prop :=
  ∀ n, P1152321617571872192.a n = A209171 (n + 1)

end A209171

/-!
# A209172: Triangle of coefficients of polynomials u(n,x) jointly generated with A209413; see the Formula section.

The programs for A209172, the canonical program `A209172.P18300842118399150066` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209172 has offset 1).

The definition of A209172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209172.P18300842118399150066

`3*T(n-1,k-1)+T(n-2,k)-2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209172

/-- `3*T(n-1,k-1)+T(n-2,k)-2*T(row(n)-2, col(n)-2)` -/
def P18300842118399150066.Spec : Prop :=
  ∀ n, P18300842118399150066.a n = A209172 (n + 1)

theorem P18300842118399150066.correct : P18300842118399150066.Spec := by
  intro n
  simp only [A209172, Nat.add_sub_cancel]

end A209172

/-! ## A209172.P14747529155577773176

`A140068(A056943(n)+A002024(n+1))`
-/

namespace A209172.P14747529155577773176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140068 (A056943 n + A002024 (n + 1)).toNat

end

end A209172.P14747529155577773176

namespace A209172

/-- `A140068(A056943(n)+A002024(n+1))` -/
def P14747529155577773176.Spec : Prop :=
  ∀ n, P14747529155577773176.a n = A209172 (n + 1)

end A209172

/-! ## A209172.P15880068994146557102

`A140068(gcd(A038722(n+1), A198954(n)))`
-/

namespace A209172.P15880068994146557102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140068 (Int.gcd (A038722 (n + 1)) (A198954 n))

end

end A209172.P15880068994146557102

namespace A209172

/-- `A140068(gcd(A038722(n+1), A198954(n)))` -/
def P15880068994146557102.Spec : Prop :=
  ∀ n, P15880068994146557102.a n = A209172 (n + 1)

end A209172

/-! ## A209172.P4443363691665338244

`A140068(∑[char[∑[n]]]²-n)`
-/

namespace A209172.P4443363691665338244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140068 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A209172.P4443363691665338244

namespace A209172

/-- `A140068(∑[char[∑[n]]]²-n)` -/
def P4443363691665338244.Spec : Prop :=
  ∀ n, P4443363691665338244.a n = A209172 (n + 1)

end A209172

/-! ## A209172.P16194657111603197121

`A140068(A038722(n+1))^A035214(n)`
-/

namespace A209172.P16194657111603197121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140068 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A209172.P16194657111603197121

namespace A209172

/-- `A140068(A038722(n+1))^A035214(n)` -/
def P16194657111603197121.Spec : Prop :=
  ∀ n, P16194657111603197121.a n = (A209172 (n + 1) : ℚ)

end A209172

/-! ## A209172.P5828710094431542477

`and(A140068(A038722(n+1)), A284481(n))`
-/

namespace A209172.P5828710094431542477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140068 (A038722 (n + 1)).toNat) (A284481 n)

end

end A209172.P5828710094431542477

namespace A209172

/-- `and(A140068(A038722(n+1)), A284481(n))` -/
def P5828710094431542477.Spec : Prop :=
  ∀ n, P5828710094431542477.a n = A209172 (n + 1)

end A209172

/-!
# A209173: Number of nX1 0..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209173, there is no canonical definition to state claims against.
-/

/-! ## A209173.P2271215725565038162

`A209178(∑[n]+1)`
-/

namespace A209173.P2271215725565038162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209173.P2271215725565038162

/-! ## A209173.P11041794207710795463

`record[A209178(A114091(n+1))]`
-/

namespace A209173.P11041794207710795463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209173.P11041794207710795463

/-! ## A209173.P12099441888820143457

`record[A209178(A286235(n+1))]`
-/

namespace A209173.P12099441888820143457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209173.P12099441888820143457

/-! ## A209173.P17726546268274896513

`A209178(A000124(n))+char[10]`
-/

namespace A209173.P17726546268274896513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209173.P17726546268274896513

/-! ## A209173.P14761506796409210962

`record[A010054(n)*A209178(n+1)]`
-/

namespace A209173.P14761506796409210962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209173.P14761506796409210962

/-!
# A209174: Number of nX2 0..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209174, there is no canonical definition to state claims against.
-/

/-! ## A209174.P8436285341745415035

`A209178(∑[n+1]+2)`
-/

namespace A209174.P8436285341745415035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209174.P8436285341745415035

/-! ## A209174.P4802270884032376955

`record[A209178(A114091(n+1)+1)]`
-/

namespace A209174.P4802270884032376955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209174.P4802270884032376955

/-! ## A209174.P4601972141019144838

`record[A209178(A286235(n+1)+1)]`
-/

namespace A209174.P4601972141019144838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209174.P4601972141019144838

/-! ## A209174.P15581210517395873329

`record[A209178(A133263(val(n+1, 2)+1))]`
-/

namespace A209174.P15581210517395873329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209174.P15581210517395873329

/-! ## A209174.P10890602333341956164

`record[root(A209178(n+2), A209159(n+1))]`
-/

namespace A209174.P10890602333341956164
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209178 (n + 2) : ℝ) ^ (1 / (A209159 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209174.P10890602333341956164

/-!
# A209175: Number of nX3 0..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209175, there is no canonical definition to state claims against.
-/

/-! ## A209175.P10075299968234480856

`A209178(∑[n+2]+4)`
-/

namespace A209175.P10075299968234480856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209175.P10075299968234480856

/-! ## A209175.P16838714883971269449

`or(char[2], A209178(A167614(n+1)))`
-/

namespace A209175.P16838714883971269449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A209178 (A167614 (n + 1)).toNat)

end

end A209175.P16838714883971269449

/-! ## A209175.P13300617972382973163

`A209178(A167614(n+1))+A025437(n)`
-/

namespace A209175.P13300617972382973163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A167614 (n + 1)).toNat + A025437 n

end

end A209175.P13300617972382973163

/-! ## A209175.P4696398888627922427

`A209178(A167614(n+1))+A036633(n)`
-/

namespace A209175.P4696398888627922427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A167614 (n + 1)).toNat + A036633 n

end

end A209175.P4696398888627922427

/-!
# A209176: Number of nX4 0..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209176, there is no canonical definition to state claims against.
-/

/-! ## A209176.P1263556976257925803

`A209178(∑[n+3]+7)`
-/

namespace A209176.P1263556976257925803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A209176.P1263556976257925803

/-!
# A209177: Number of nX5 0..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209177, there is no canonical definition to state claims against.
-/

/-! ## A209177.P11324623130635248132

`A209178(∑[n+4]+11)`
-/

namespace A209177.P11324623130635248132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A209177.P11324623130635248132

/-!
# A209178: T(n,k)=Number of nXk 0..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209178, there is no canonical definition to state claims against.
-/

/-! ## A209178.P6519692028510961604

`A208960(A082743(n))`
-/

namespace A209178.P6519692028510961604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (A082743 n).toNat

end

end A209178.P6519692028510961604

/-! ## A209178.P561104990305376358

`A208960(A381225(n))`
-/

namespace A209178.P561104990305376358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (A381225 n).toNat

end

end A209178.P561104990305376358

/-! ## A209178.P13728098174696505990

`A209054(Δ[A121295(n)])`
-/

namespace A209178.P13728098174696505990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (f1 (n + 1) - f1 n).toNat

end

end A209178.P13728098174696505990

/-! ## A209178.P14928144954449815026

`A209054(record[A082743(n)])`
-/

namespace A209178.P14928144954449815026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209178.P14928144954449815026

/-! ## A209178.P7653761896239343375

`A208960(record[A252648(n)])`
-/

namespace A209178.P7653761896239343375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A209178.P7653761896239343375

/-!
# A209179: Number of nX1 1..6 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209179, there is no canonical definition to state claims against.
-/

/-! ## A209179.P2172080353611368438

`A209182(∑[n]+1)`
-/

namespace A209179.P2172080353611368438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209179.P2172080353611368438

/-! ## A209179.P5774263850731934107

`record[A209182(A112367(n)+1)]`
-/

namespace A209179.P5774263850731934107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (A112367 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209179.P5774263850731934107

/-! ## A209179.P7164898650604511073

`record[A209182(A114091(n+1))]`
-/

namespace A209179.P7164898650604511073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209179.P7164898650604511073

/-! ## A209179.P13492457476583081256

`record[A209182(A254052(n+1))]`
-/

namespace A209179.P13492457476583081256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209179.P13492457476583081256

/-!
# A209180: Number of n X 2 1..6 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209180, there is no canonical definition to state claims against.
-/

/-! ## A209180.P17998295709501950967

`A209182(∑[n+1]+2)`
-/

namespace A209180.P17998295709501950967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209180.P17998295709501950967

/-! ## A209180.P11608194980351742757

`record[A209182(record[A209187(n+2)])]`
-/

namespace A209180.P11608194980351742757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209180.P11608194980351742757

/-! ## A209180.P8815848947367234223

`record[A209182(A114091(n+1)+1)]`
-/

namespace A209180.P8815848947367234223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209180.P8815848947367234223

/-!
# A209181: Number of nX3 1..6 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209181, there is no canonical definition to state claims against.
-/

/-! ## A209181.P6068926341599075348

`A209182(∑[n+2]+4)`
-/

namespace A209181.P6068926341599075348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209181.P6068926341599075348

/-!
# A209183: Number of words, either empty or beginning with the first letter of the cyclic 4-ary alphabet, where each letter of the alphabet occurs n times and letters of neighboring word positions are equal or neighbors in the alphabet.

The programs for A209183, there is no canonical definition to state claims against.
-/

/-! ## A209183.P4123887495291104922

`A208879(eq[5, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A209183.P4123887495291104922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209183.P4123887495291104922

/-! ## A209183.P12823537505369218299

`record[A208879(A313851(n))]`
-/

namespace A209183.P12823537505369218299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (A313851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209183.P12823537505369218299

/-!
# A209184: Number of words, either empty or beginning with the first letter of the cyclic 5-ary alphabet, where each letter of the alphabet occurs n times and letters of neighboring word positions are equal or neighbors in the alphabet.

The programs for A209184, there is no canonical definition to state claims against.
-/

/-! ## A209184.P10476322207711696438

`record[A208879(∑[ceil((13*n-6)/47)])]`
-/

namespace A209184.P10476322207711696438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((13 * n : ℤ) - 6 : ℚ) / 47⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209184.P10476322207711696438

/-!
# A209187: Sum of divisors of n minus cototient of n.

The programs for A209187, the canonical program `A209187.P1822992089248699320` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209187 has offset 1).

The definition of A209187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209187.P12274877434959415231

`A065387(n+1)-(n+1)`
-/

namespace A209187.P12274877434959415231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - (n + 1 : ℤ)

end

end A209187.P12274877434959415231

namespace A209187

/-- `A065387(n+1)-(n+1)` -/
def P12274877434959415231.Spec : Prop :=
  ∀ n, P12274877434959415231.a n = A209187 (n + 1)

theorem P12274877434959415231.correct : P12274877434959415231.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P12274877434959415231.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A065387, A065387.P11284875715279330998.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P1822992089248699320

`A000203(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209187

/-- `A000203(n+1)-A051953(n+1)` -/
def P1822992089248699320.Spec : Prop :=
  ∀ n, P1822992089248699320.a n = A209187 (n + 1)

theorem P1822992089248699320.correct : P1822992089248699320.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel]

end A209187

/-! ## A209187.P5724859884051613590

`A000203(n+1)+A000010(n+1)-(n+1)`
-/

namespace A209187.P5724859884051613590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) - (n + 1 : ℤ)

end

end A209187.P5724859884051613590

namespace A209187

/-- `A000203(n+1)+A000010(n+1)-(n+1)` -/
def P5724859884051613590.Spec : Prop :=
  ∀ n, P5724859884051613590.a n = A209187 (n + 1)

theorem P5724859884051613590.correct : P5724859884051613590.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P5724859884051613590.a, A209187.P1822992089248699320.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P11137582092099489616

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∑{d}[n+1, #]-(n+1)`
-/

namespace A209187.P11137582092099489616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ)

end

end A209187.P11137582092099489616

namespace A209187

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∑{d}[n+1, #]-(n+1)` -/
def P11137582092099489616.Spec : Prop :=
  ∀ n, P11137582092099489616.a n = (A209187 (n + 1) : ℚ)

end A209187

/-! ## A209187.P5635027380807072933

`A051709(n+1)+1+n`
-/

namespace A209187.P5635027380807072933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + 1 + (n : ℤ)

end

end A209187.P5635027380807072933

namespace A209187

/-- `A051709(n+1)+1+n` -/
def P5635027380807072933.Spec : Prop :=
  ∀ n, P5635027380807072933.a n = A209187 (n + 1)

theorem P5635027380807072933.correct : P5635027380807072933.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P5635027380807072933.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051709, A051709.P8066883811744733228.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P17342814569206258802

`A001065(n+1)+Δ[A002088(n)]`
-/

namespace A209187.P17342814569206258802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (f1 (n + 1) - f1 n)

end

end A209187.P17342814569206258802

namespace A209187

/-- `A001065(n+1)+Δ[A002088(n)]` -/
def P17342814569206258802.Spec : Prop :=
  ∀ n, P17342814569206258802.a n = A209187 (n + 1)

end A209187

/-! ## A209187.P11725144553642108696

`A001065(n+1)+Δ[A005728(n)]`
-/

namespace A209187.P11725144553642108696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (f1 (n + 1) - f1 n)

end

end A209187.P11725144553642108696

namespace A209187

/-- `A001065(n+1)+Δ[A005728(n)]` -/
def P11725144553642108696.Spec : Prop :=
  ∀ n, P11725144553642108696.a n = A209187 (n + 1)

end A209187

/-! ## A209187.P4845863039782852900

`A001065(n+1)+A000010(n+1)`
-/

namespace A209187.P4845863039782852900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A000010 (n + 1)

end

end A209187.P4845863039782852900

namespace A209187

/-- `A001065(n+1)+A000010(n+1)` -/
def P4845863039782852900.Spec : Prop :=
  ∀ n, P4845863039782852900.a n = A209187 (n + 1)

theorem P4845863039782852900.correct : P4845863039782852900.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P4845863039782852900.a, A209187.P1822992089248699320.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P7936170822384061012

`A083254(n+1)+A051612(n+1)`
-/

namespace A209187.P7936170822384061012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + A051612 (n + 1)

end

end A209187.P7936170822384061012

namespace A209187

/-- `A083254(n+1)+A051612(n+1)` -/
def P7936170822384061012.Spec : Prop :=
  ∀ n, P7936170822384061012.a n = A209187 (n + 1)

theorem P7936170822384061012.correct : P7936170822384061012.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P7936170822384061012.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P13042439235273904070

`A121048(n+1)+A033880(n+1)`
-/

namespace A209187.P13042439235273904070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) + A033880 (n + 1)

end

end A209187.P13042439235273904070

namespace A209187

/-- `A121048(n+1)+A033880(n+1)` -/
def P13042439235273904070.Spec : Prop :=
  ∀ n, P13042439235273904070.a n = A209187 (n + 1)

theorem P13042439235273904070.correct : P13042439235273904070.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P13042439235273904070.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A051953, A051953.P11179276897610979764.a, A121048, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P10547204952939018901

`A163163(n+1)+A063070(n+1)`
-/

namespace A209187.P10547204952939018901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + A063070 (n + 1)

end

end A209187.P10547204952939018901

namespace A209187

/-- `A163163(n+1)+A063070(n+1)` -/
def P10547204952939018901.Spec : Prop :=
  ∀ n, P10547204952939018901.a n = A209187 (n + 1)

theorem P10547204952939018901.correct : P10547204952939018901.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P10547204952939018901.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A063070, A063070.P5416196495209204381.a, A163163, A163163.P5673829929796067677.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P11307630990573232795

`A152770(n+1)+A073757(n+1)`
-/

namespace A209187.P11307630990573232795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + A073757 (n + 1)

end

end A209187.P11307630990573232795

namespace A209187

/-- `A152770(n+1)+A073757(n+1)` -/
def P11307630990573232795.Spec : Prop :=
  ∀ n, P11307630990573232795.a n = A209187 (n + 1)

theorem P11307630990573232795.correct : P11307630990573232795.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P11307630990573232795.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A073757, A073757.P6861480467973211752.a, A152770, A152770.P4996422170920482869.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A062249, A062249.P5473932307129171226.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P13282581360376819777

`A249904(n+1)+A053139(n+1)`
-/

namespace A209187.P13282581360376819777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249904 (n + 1) + A053139 (n + 1)

end

end A209187.P13282581360376819777

namespace A209187

/-- `A249904(n+1)+A053139(n+1)` -/
def P13282581360376819777.Spec : Prop :=
  ∀ n, P13282581360376819777.a n = A209187 (n + 1)

theorem P13282581360376819777.correct : P13282581360376819777.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P13282581360376819777.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A053139, A053139.P14434493847918876096.a, A249904, A249904.P16116295632790744900.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P4341646069201333866

`A001065(n+1)+A109606(n+1)+1`
-/

namespace A209187.P4341646069201333866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A109606 (n + 1) + 1)

end

end A209187.P4341646069201333866

namespace A209187

/-- `A001065(n+1)+A109606(n+1)+1` -/
def P4341646069201333866.Spec : Prop :=
  ∀ n, P4341646069201333866.a n = A209187 (n + 1)

theorem P4341646069201333866.correct : P4341646069201333866.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P4341646069201333866.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P11179276897610979764.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P16237696073437186127

`A001065(n+1)+A039649(n+1)-1`
-/

namespace A209187.P16237696073437186127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A039649 (n + 1) - 1)

end

end A209187.P16237696073437186127

namespace A209187

/-- `A001065(n+1)+A039649(n+1)-1` -/
def P16237696073437186127.Spec : Prop :=
  ∀ n, P16237696073437186127.a n = A209187 (n + 1)

theorem P16237696073437186127.correct : P16237696073437186127.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P16237696073437186127.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A039649, A039649.P16717312505280968063.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P4644246783262139038

`A000203(n+1)-(A219428(n+1)+1)`
-/

namespace A209187.P4644246783262139038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A219428 (n + 1) + 1)

end

end A209187.P4644246783262139038

namespace A209187

/-- `A000203(n+1)-(A219428(n+1)+1)` -/
def P4644246783262139038.Spec : Prop :=
  ∀ n, P4644246783262139038.a n = A209187 (n + 1)

theorem P4644246783262139038.correct : P4644246783262139038.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P4644246783262139038.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A219428, A219428.P9184341513320465947.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P9653442239840520228

`A228947(n+1)+2*A000010(n+1)`
-/

namespace A209187.P9653442239840520228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + 2 * A000010 (n + 1)

end

end A209187.P9653442239840520228

namespace A209187

/-- `A228947(n+1)+2*A000010(n+1)` -/
def P9653442239840520228.Spec : Prop :=
  ∀ n, P9653442239840520228.a n = A209187 (n + 1)

theorem P9653442239840520228.correct : P9653442239840520228.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P9653442239840520228.a, A209187.P1822992089248699320.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A228947, A228947.P1027786129053480284.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P12290346043531747187

`A000010(n+1)+A237588(n+1)+n`
-/

namespace A209187.P12290346043531747187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A237588 (n + 1) + (n : ℤ))

end

end A209187.P12290346043531747187

namespace A209187

/-- `A000010(n+1)+A237588(n+1)+n` -/
def P12290346043531747187.Spec : Prop :=
  ∀ n, P12290346043531747187.a n = A209187 (n + 1)

theorem P12290346043531747187.correct : P12290346043531747187.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P12290346043531747187.a, A209187.P1822992089248699320.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A237588, A237588.P10590847318200798620.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P8054375175904421413

`A000203(n+1)+A109606(n+1)-n`
-/

namespace A209187.P8054375175904421413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A109606 (n + 1) - (n : ℤ))

end

end A209187.P8054375175904421413

namespace A209187

/-- `A000203(n+1)+A109606(n+1)-n` -/
def P8054375175904421413.Spec : Prop :=
  ∀ n, P8054375175904421413.a n = A209187 (n + 1)

theorem P8054375175904421413.correct : P8054375175904421413.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P8054375175904421413.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-! ## A209187.P3987423610233967771

`A001065(n+1)-A219428(n+1)+n`
-/

namespace A209187.P3987423610233967771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A219428 (n + 1) + (n : ℤ)

end

end A209187.P3987423610233967771

namespace A209187

/-- `A001065(n+1)-A219428(n+1)+n` -/
def P3987423610233967771.Spec : Prop :=
  ∀ n, P3987423610233967771.a n = A209187 (n + 1)

theorem P3987423610233967771.correct : P3987423610233967771.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel, A209187.P3987423610233967771.a, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P11179276897610979764.a, A219428, A219428.P9184341513320465947.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A209187

/-!
# A209188: Smallest prime factor of n^2 + n - 1.

The programs for A209188, there is no canonical definition to state claims against.
-/

/-! ## A209188.P15620808051521637971

`A020639(n*(n+5)+5)`
-/

namespace A209188.P15620808051521637971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * (n + 5) + 5)

end

end A209188.P15620808051521637971

/-! ## A209188.P6850703383570671417

`p?[or(1, A020639((n+1)²+n))]`
-/

namespace A209188.P6850703383570671417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 ((n + 1) ^ 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209188.P6850703383570671417

/-! ## A209188.P9545871607004388596

`or(1, A020639((n+2)²+n+1))`
-/

namespace A209188.P9545871607004388596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 ((n + 2) ^ 2 + (n + 1)))

end

end A209188.P9545871607004388596

/-! ## A209188.P184079664160744935

`xor(1, A020639(Δ[∑[(n+1)²]+n]+n))+1`
-/

namespace A209188.P184079664160744935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) + 1

end

end A209188.P184079664160744935

/-! ## A209188.P11003550981243614169

`p?[A000027(A020639((n+1)²+n))]`
-/

namespace A209188.P11003550981243614169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020639 ((n + 1) ^ 2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209188.P11003550981243614169

/-! ## A209188.P14015173215950458006

`A306289(A143975(n+1))`
-/

namespace A209188.P14015173215950458006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (A143975 (n + 1)).toNat

end

end A209188.P14015173215950458006

/-! ## A209188.P8049828351982124065

`A090368(C(n+3, 2))`
-/

namespace A209188.P8049828351982124065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (Nat.choose (n + 3) 2)

end

end A209188.P8049828351982124065

/-! ## A209188.P16279586848316804817

`p?[A090368(∑[n+1])]`
-/

namespace A209188.P16279586848316804817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209188.P16279586848316804817

/-! ## A209188.P12265445234629139702

`A090368(∑[n+2]+1)`
-/

namespace A209188.P12265445234629139702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209188.P12265445234629139702

/-! ## A209188.P5553915954776816687

`A005408(A195508(∑[n+2]))`
-/

namespace A209188.P5553915954776816687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A195508 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A209188.P5553915954776816687

/-!
# A209189: Smallest prime factor of n^2 + n + 1.

The programs for A209189, there is no canonical definition to state claims against.
-/

/-! ## A209189.P17244618427226365801

`A020639(n*(n+5)+7)`
-/

namespace A209189.P17244618427226365801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * (n + 5) + 7)

end

end A209189.P17244618427226365801

/-! ## A209189.P6897767679775653514

`or(1, A020639(A002061(n+3)))`
-/

namespace A209189.P6897767679775653514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (A002061 (n + 3)).toNat)

end

end A209189.P6897767679775653514

/-! ## A209189.P3163833969949875136

`A020639(A002061(n+3))%A001034(n+1)`
-/

namespace A209189.P3163833969949875136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A002061 (n + 3)).toNat) (A001034 (n + 1))

end

end A209189.P3163833969949875136

/-! ## A209189.P2960202293802334827

`A020639(A002378(n+2)+1)+A000007(n+1)`
-/

namespace A209189.P2960202293802334827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002378 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A209189.P2960202293802334827

/-! ## A209189.P14970622760326812192

`A090368(∑[n+2]+2)`
-/

namespace A209189.P14970622760326812192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209189.P14970622760326812192

/-! ## A209189.P13457880461545131946

`A092067((n+2)*(n+3))`
-/

namespace A209189.P13457880461545131946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 ((n + 2) * (n + 3))

end

end A209189.P13457880461545131946

/-! ## A209189.P16196956042708610823

`A078701((n+2)²+n+3)`
-/

namespace A209189.P16196956042708610823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 ((n + 2) ^ 2 + (n + 3))

end

end A209189.P16196956042708610823

/-!
# A209190: Least prime factor of reversal of digits of n.

The programs for A209190, there is no canonical definition to state claims against.
-/

/-! ## A209190.P9119003979907628781

`A020639(A004086(n+1))`
-/

namespace A209190.P9119003979907628781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004086 (n + 1)).toNat

end

end A209190.P9119003979907628781

/-! ## A209190.P16630494348900917745

`A020639(A056964(n+1)-(n+1))`
-/

namespace A209190.P16630494348900917745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A209190.P16630494348900917745

/-! ## A209190.P2040341721274731280

`A020639(1-A056965(n+1)+n)`
-/

namespace A209190.P2040341721274731280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - A056965 (n + 1) + (n : ℤ)).toNat

end

end A209190.P2040341721274731280

/-! ## A209190.P15013623202816804278

`A020639(A061205(n+1)/(n+1))`
-/

namespace A209190.P15013623202816804278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A061205 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A209190.P15013623202816804278

/-! ## A209190.P14459628593459387612

`A020639(xor(n+1, A256756(n+1)))`
-/

namespace A209190.P14459628593459387612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor (n + 1 : ℤ) (A256756 (n + 1))).toNat

end

end A209190.P14459628593459387612

/-! ## A209190.P1397505131364551459

`A020639(A135020(2*(n+1)))`
-/

namespace A209190.P1397505131364551459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135020 (2 * (n + 1))).toNat

end

end A209190.P1397505131364551459

/-! ## A209190.P5572780548471502922

`A074828(A004086(n+1)²)`
-/

namespace A209190.P5572780548471502922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A004086 (n + 1) ^ 2).toNat

end

end A209190.P5572780548471502922

/-! ## A209190.P2319646150929732606

`A324861(A105574(A004086(n+1)²))`
-/

namespace A209190.P2319646150929732606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324861 (A105574 (A004086 (n + 1) ^ 2).toNat).toNat

end

end A209190.P2319646150929732606

/-! ## A209190.P11478309595358957120

`A020639(A167542(A014681(n+1)))`
-/

namespace A209190.P11478309595358957120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A167542 (A014681 (n + 1)).toNat).toNat

end

end A209190.P11478309595358957120

/-! ## A209190.P6407284510087423330

`A020639(A167542(A103889(n+1)))`
-/

namespace A209190.P6407284510087423330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A167542 (A103889 (n + 1)).toNat).toNat

end

end A209190.P6407284510087423330

/-!
# A209191: Numbers k such that digital root of k equals smallest prime factor of k.

The programs for A209191, there is no canonical definition to state claims against.
-/

/-! ## A209191.P801328461958859777

`eq[0, A245075(n+2)]+2`
-/

namespace A209191.P801328461958859777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245075 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A209191.P801328461958859777

/-! ## A209191.P5582447221008726649

`eq[2*dr(n), A090088(n+1)]`
-/

namespace A209191.P5582447221008726649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209191.P5582447221008726649

/-! ## A209191.P16454104046900894961

`eq[dr(n), A020639(A114112(n+1))]`
-/

namespace A209191.P16454104046900894961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A114112 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209191.P16454104046900894961

/-! ## A209191.P5808168378926587757

`eq[A010888(n), A057237(n+1)]+1`
-/

namespace A209191.P5808168378926587757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209191.P5808168378926587757

/-! ## A209191.P6831177887783542011

`eq[dr(n+1), A334023(A020639(n+1))]+1`
-/

namespace A209191.P6831177887783542011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334023 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209191.P6831177887783542011

/-! ## A209191.P10492244420821477709

`eq[A020639(A114112(n+1)), A010888(n)]`
-/

namespace A209191.P10492244420821477709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A114112 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209191.P10492244420821477709

/-! ## A209191.P18260888159413276516

`eq[dr(n), A004526(A090088(n+1))]`
-/

namespace A209191.P18260888159413276516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A090088 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209191.P18260888159413276516

/-! ## A209191.P5837276396319164308

`eq[A020639(A233583(n+1)), A010878(n)]`
-/

namespace A209191.P5837276396319164308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209191.P5837276396319164308

/-! ## A209191.P12423599057549772414

`eq[A020639(A233583(n+1)), A010888(n)]`
-/

namespace A209191.P12423599057549772414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209191.P12423599057549772414

/-!
# A209192: Numbers k such that digital root of k equals largest prime factor of k.

The programs for A209192, there is no canonical definition to state claims against.
-/

/-! ## A209192.P8590924906246345654

`eq[dr(n), A006530(A008574(n))]`
-/

namespace A209192.P8590924906246345654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209192.P8590924906246345654

/-! ## A209192.P17456264220966573155

`eq[dr(n), A006530(A022144(n))]`
-/

namespace A209192.P17456264220966573155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209192.P17456264220966573155

/-! ## A209192.P13055064652113797087

`eq[A006530(2*(n+1)), A010888(n+1)]+1`
-/

namespace A209192.P13055064652113797087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A209192.P13055064652113797087

/-! ## A209192.P16945325613188805075

`eq[A006530(A004277(n)), A010888(n)]`
-/

namespace A209192.P16945325613188805075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209192.P16945325613188805075

/-! ## A209192.P4335465231800967309

`eq[A006530(A008574(n)), A010888(n)]`
-/

namespace A209192.P4335465231800967309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209192.P4335465231800967309

/-!
# A209193: Safe primes that are also highly cototient numbers.

The programs for A209193, there is no canonical definition to state claims against.
-/

/-! ## A209193.P8942284162237064960

`∩[A005385(n+1), A100827(n+1)]`
-/

namespace A209193.P8942284162237064960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P8942284162237064960

/-! ## A209193.P7841855713777851117

`∩[A005385(n+1), A105440(n+1)]`
-/

namespace A209193.P7841855713777851117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P7841855713777851117

/-! ## A209193.P1263378945011186374

`∩[A048184(n+1), A100827(n+1)]`
-/

namespace A209193.P1263378945011186374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P1263378945011186374

/-! ## A209193.P8835465843357406140

`∩[A048184(n+1), A105440(n+1)]`
-/

namespace A209193.P8835465843357406140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P8835465843357406140

/-! ## A209193.P1904228511538072129

`∩[A084441(n+1), A100827(n+1)]`
-/

namespace A209193.P1904228511538072129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P1904228511538072129

/-!
# A209194: Sophie Germain primes that are also highly cototient numbers.

The programs for A209194, there is no canonical definition to state claims against.
-/

/-! ## A209194.P11306309984469301572

`∩[A005384(n+1), A100827(n+1)]`
-/

namespace A209194.P11306309984469301572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209194.P11306309984469301572

/-! ## A209194.P11109606668246629955

`∩[A005384(n+1), A105440(n+1)]`
-/

namespace A209194.P11109606668246629955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209194.P11109606668246629955

/-! ## A209194.P816675776716736143

`∩[A105440(n+1), A246857(n+1)]`
-/

namespace A209194.P816675776716736143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209194.P816675776716736143

/-! ## A209194.P12479930385043934276

`∩[A105440(n+1), A348511(n+1)]`
-/

namespace A209194.P12479930385043934276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209194.P12479930385043934276

/-! ## A209194.P11448931605639561114

`∩[A105440(n+1), A364926(n+1)]`
-/

namespace A209194.P11448931605639561114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209194.P11448931605639561114

/-!
# A209195: Smallest prime factor of the n-th highly totient number (A097942(n)) plus 1.

The programs for A209195, there is no canonical definition to state claims against.
-/

/-! ## A209195.P5497222983829645039

`A020639(A097942(n+1)+1)`
-/

namespace A209195.P5497222983829645039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A097942 (n + 1) + 1).toNat

end

end A209195.P5497222983829645039

/-! ## A209195.P17417991057297333713

`A020639(A007374(A131934(n+1))+1)`
-/

namespace A209195.P17417991057297333713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007374 (A131934 (n + 1)).toNat + 1).toNat

end

end A209195.P17417991057297333713

/-! ## A209195.P5548108869737757552

`A353270(A097942(n+1)+1)`
-/

namespace A209195.P5548108869737757552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353270 (A097942 (n + 1) + 1).toNat

end

end A209195.P5548108869737757552

/-! ## A209195.P17438059775933343164

`A020639(A141310(A097942(n+1)))`
-/

namespace A209195.P17438059775933343164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141310 (A097942 (n + 1)).toNat).toNat

end

end A209195.P17438059775933343164

/-! ## A209195.P10824607170053047336

`A092067(A097942(n+1))`
-/

namespace A209195.P10824607170053047336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (A097942 (n + 1)).toNat

end

end A209195.P10824607170053047336

/-!
# A209196: Triangle defined by g.f. A(x,y) = exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, n*k) * y^k ), as read by rows.

The programs for A209196, there is no canonical definition to state claims against.
-/

/-! ## A209196.P16472629975944929598

`A209197(A157219(n))`
-/

namespace A209196.P16472629975944929598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209197 (A157219 n).toNat

end

end A209196.P16472629975944929598

/-! ## A209196.P17206576698425233261

`A209197(A167040(n))`
-/

namespace A209196.P17206576698425233261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209197 (A167040 n).toNat

end

end A209196.P17206576698425233261

/-! ## A209196.P18328516455237833731

`A239389(A168621(n))`
-/

namespace A209196.P18328516455237833731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239389 (A168621 n).toNat

end

end A209196.P18328516455237833731

/-! ## A209196.P5553015366579843908

`A353848(A255494(n))`
-/

namespace A209196.P5553015366579843908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A255494 n).toNat

end

end A209196.P5553015366579843908

/-! ## A209196.P9240281855356309825

`A167831(2^A285192(n))`
-/

namespace A209196.P9240281855356309825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A285192 n : ℤ))).toNat

end

end A209196.P9240281855356309825

/-!
# A209197: Column 1 of triangle A209196.

The programs for A209197, there is no canonical definition to state claims against.
-/

/-! ## A209197.P9002892253668379935

`∑[C(n*(n+2), n)]`
-/

namespace A209197.P9002892253668379935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n + 2)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209197.P9002892253668379935

/-! ## A209197.P7238794797306362872

`a(n-1)+C(n*(n+2), n)` with `a(0)=1`
-/

namespace A209197.P7238794797306362872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n * (n + 2)) n

end

end A209197.P7238794797306362872

/-! ## A209197.P4357802291804251819

`∑[C((n+1)², n+1)/(n+1)]`
-/

namespace A209197.P4357802291804251819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209197.P4357802291804251819

/-! ## A209197.P7484711620446700731

`a(n-1)+C((n+1)², n+1)/(n+1)` with `a(0)=1`
-/

namespace A209197.P7484711620446700731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose ((n + 1) ^ 2) (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A209197.P7484711620446700731

/-! ## A209197.P11763042784347812857

`record[ratio[A209196(n)]]`
-/

namespace A209197.P11763042784347812857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209196 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209197.P11763042784347812857

/-!
# A209198: a(n) = 1 if n not == 2 (mod 4) and relatively prime to 63 otherwise 0.

The programs for A209198, the canonical program `A209198.P2237083971532073653` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209198 has offset 1).

The definition of A209198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209198.P2237083971532073653

`floor(1/gcd(n+1, ∑[n²]+63))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A209198

/-- `floor(1/gcd(n+1, ∑[n²]+63))` -/
def P2237083971532073653.Spec : Prop :=
  ∀ n, P2237083971532073653.a n = A209198 (n + 1)

theorem P2237083971532073653.correct : P2237083971532073653.Spec := by
  intro n
  simp only [A209198, Nat.add_sub_cancel]

end A209198

