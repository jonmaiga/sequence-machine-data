import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

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

The programs for A209101, the canonical program `A209101.P11173671810188518875` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209101 has offset 1).

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

The canonical program, it is in `Seq.B000.C027`.
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

/-! ## A209108.P6112900522325564549

`A209115(A000217(n+1))%A159328(n)`
-/

namespace A209108.P6112900522325564549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209115 (A000217 (n + 1)).toNat) (A159328 n)

end

end A209108.P6112900522325564549

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

The programs for A209116, the canonical program `A209116.P3351996664689731237` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209116 has offset 1).

The definition of A209116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209116.P3351996664689731237

`A208946(n+1)-∑[and(2, n%3)]`

The canonical program, it is in `Seq.B001.C006`.
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

The programs for A209117, there is no canonical definition to state claims against.
-/

/-! ## A209117.P2788985894898845482

`2*A209074(n+1)-A208599(n+1)`
-/

namespace A209117.P2788985894898845482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209074 (n + 1) - A208599 (n + 1)

end

end A209117.P2788985894898845482

/-! ## A209117.P14445900359049896524

`A209115(A167499(n+3))`
-/

namespace A209117.P14445900359049896524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A167499 (n + 3)).toNat

end

end A209117.P14445900359049896524

/-! ## A209117.P4109750886858628532

`A209115(A155212(n)+13)`
-/

namespace A209117.P4109750886858628532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A155212 n + 13).toNat

end

end A209117.P4109750886858628532

/-! ## A209117.P11667550443476581629

`A209115(A056000(n)+15)`
-/

namespace A209117.P11667550443476581629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (A056000 n + 15).toNat

end

end A209117.P11667550443476581629

/-! ## A209117.P9814761592387269023

`A209115(eq[7, A066657(n)])`
-/

namespace A209117.P9814761592387269023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209117.P9814761592387269023

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

The programs for A209125, there is no canonical definition to state claims against.
-/

/-! ## A209125.P13816482070596835681

`2*A209147(n+1)-A207634(n+1)`
-/

namespace A209125.P13816482070596835681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209147 (n + 1) - A207634 (n + 1)

end

end A209125.P13816482070596835681

/-! ## A209125.P4186846651275503970

`A207633(n+2)-A210597(n+1)`
-/

namespace A209125.P4186846651275503970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207633 (n + 2) - A210597 (n + 1)

end

end A209125.P4186846651275503970

/-! ## A209125.P16418386471477928946

`A004277(A209147(n+1))-A207634(n+1)`
-/

namespace A209125.P16418386471477928946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209147 (n + 1)).toNat - A207634 (n + 1)

end

end A209125.P16418386471477928946

/-! ## A209125.P1239150259504449858

`A316427(n+1)-A038219(A219232(n))`
-/

namespace A209125.P1239150259504449858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (n + 1) - A038219 (A219232 n).toNat

end

end A209125.P1239150259504449858

/-!
# A209126: Triangle of coefficients of polynomials u(n,x) jointly generated with A209127; see the Formula section.

The programs for A209126, there is no canonical definition to state claims against.
-/

/-! ## A209126.P11659615554466823419

`A208337(n+2)-Δ[A038137(n)]`
-/

namespace A209126.P11659615554466823419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 2) - (f1 (n + 1) - f1 n)

end

end A209126.P11659615554466823419

/-! ## A209126.P5303500629321149307

`A208337(n+2)+A038137(n)-A038137(n+1)`
-/

namespace A209126.P5303500629321149307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 2) + (A038137 n - A038137 (n + 1))

end

end A209126.P5303500629321149307

/-! ## A209126.P7217569485547914441

`2*A038137(n)-A055830(A061579(n))`
-/

namespace A209126.P7217569485547914441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038137 n - A055830 (A061579 n).toNat

end

end A209126.P7217569485547914441

/-! ## A209126.P8216627964389047294

`A208609(n+1)-A155161(A038722(n+1))`
-/

namespace A209126.P8216627964389047294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208609 (n + 1) - A155161 (A038722 (n + 1)).toNat

end

end A209126.P8216627964389047294

/-! ## A209126.P7450104682723189695

`A207632(A061579(n)+1)-A155161(A038722(n+1))`
-/

namespace A209126.P7450104682723189695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207632 (A061579 n + 1).toNat - A155161 (A038722 (n + 1)).toNat

end

end A209126.P7450104682723189695

/-! ## A209126.P8465231414051727709

`A155161(A038722(n+2))+A038137(n)`
-/

namespace A209126.P8465231414051727709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 2)).toNat + A038137 n

end

end A209126.P8465231414051727709

/-! ## A209126.P8330504486785268109

`A005843(A038137(n))-A055830(A061579(n))`
-/

namespace A209126.P8330504486785268109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A038137 n).toNat - A055830 (A061579 n).toNat

end

end A209126.P8330504486785268109

/-!
# A209127: Triangle of coefficients of polynomials v(n,x) jointly generated with A209126; see the Formula section.

The programs for A209127, there is no canonical definition to state claims against.
-/

/-! ## A209127.P11508689501548597325

`A208337(n+1)+A038137(n)-A209126(n+1)`
-/

namespace A209127.P11508689501548597325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) + (A038137 n - A209126 (n + 1))

end

end A209127.P11508689501548597325

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

/-! ## A209127.P5223983842200890716

`A038137(n+1)+A208337(n+1)-A208337(n+2)`
-/

namespace A209127.P5223983842200890716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (n + 1) + (A208337 (n + 1) - A208337 (n + 2))

end

end A209127.P5223983842200890716

/-! ## A209127.P14620145598760262729

`A155161(A038722(n+1))+A055830(A061579(n))`
-/

namespace A209127.P14620145598760262729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat + A055830 (A061579 n).toNat

end

end A209127.P14620145598760262729

/-!
# A209128: Triangle of coefficients of polynomials u(n,x) jointly generated with A209129; see the Formula section.

The programs for A209128, there is no canonical definition to state claims against.
-/

/-! ## A209128.P7973527913701718731

`2*A210557(n+1)-A209129(n+1)`
-/

namespace A209128.P7973527913701718731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210557 (n + 1) - A209129 (n + 1)

end

end A209128.P7973527913701718731

/-! ## A209128.P6743081542129437283

`A209129(A014132(n+1)+1)-2*A209129(n+1)`
-/

namespace A209128.P6743081542129437283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209129 (A014132 (n + 1) + 1).toNat - 2 * A209129 (n + 1)

end

end A209128.P6743081542129437283

/-! ## A209128.P6261712066279851332

`A004277(A210557(n+1))-A209129(n+1)`
-/

namespace A209128.P6261712066279851332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210557 (n + 1)).toNat - A209129 (n + 1)

end

end A209128.P6261712066279851332

/-!
# A209129: Triangle of coefficients of polynomials v(n,x) jointly generated with A209128; see the Formula section.

The programs for A209129, there is no canonical definition to state claims against.
-/

/-! ## A209129.P14399593786110062895

`2*A208339(n+1)-A208611(n+1)`
-/

namespace A209129.P14399593786110062895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208339 (n + 1) - A208611 (n + 1)

end

end A209129.P14399593786110062895

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

/-! ## A209129.P177900375061788623

`A004277(A208339(n+1))-A208611(n+1)`
-/

namespace A209129.P177900375061788623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208339 (n + 1)).toNat - A208611 (n + 1)

end

end A209129.P177900375061788623

/-! ## A209129.P10507428971839418855

`xor(A187081(A296386(n+1)), A208757(n+1))`
-/

namespace A209129.P10507428971839418855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187081 (A296386 (n + 1)).toNat) (A208757 (n + 1))

end

end A209129.P10507428971839418855

/-!
# A209130: Triangle of coefficients of polynomials v(n,x) jointly generated with A102756; see the Formula section.

The programs for A209130, there is no canonical definition to state claims against.
-/

/-! ## A209130.P3604676222899270024

`A290726(3*A144696(n+2))`
-/

namespace A209130.P3604676222899270024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (3 * A144696 (n + 2)).toNat

end

end A209130.P3604676222899270024

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

/-! ## A209130.P1422630377352511371

`A319951(A059268(n)*A208660(n+1))`
-/

namespace A209130.P1422630377352511371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A059268 n * A208660 (n + 1)).toNat

end

end A209130.P1422630377352511371

/-! ## A209130.P11798410219469931987

`A350029(A193592(n)*A209159(n+1))`
-/

namespace A209130.P11798410219469931987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A193592 n * A209159 (n + 1)).toNat

end

end A209130.P11798410219469931987

/-! ## A209130.P7000157247593491726

`A072649(A200370(n+1)^A038137(n))`
-/

namespace A209130.P7000157247593491726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((A200370 (n + 1) : ℚ) ^ (A038137 n : ℤ))).toNat

end

end A209130.P7000157247593491726

/-!
# A209131: Triangle of coefficients of polynomials u(n,x) jointly generated with A209132; see the Formula section.

The programs for A209131, there is no canonical definition to state claims against.
-/

/-! ## A209131.P12665855455738330631

`2*A013609(n)-A209132(n+1)`
-/

namespace A209131.P12665855455738330631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A209132 (n + 1)

end

end A209131.P12665855455738330631

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

/-! ## A209131.P4196624185404179571

`A005843(A013609(n))-A209132(n+1)`
-/

namespace A209131.P4196624185404179571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013609 n).toNat - A209132 (n + 1)

end

end A209131.P4196624185404179571

/-! ## A209131.P3682829402918587468

`A370469(n+1)-A209132(n+1)`
-/

namespace A209131.P3682829402918587468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370469 (n + 1) - A209132 (n + 1)

end

end A209131.P3682829402918587468

/-! ## A209131.P12565548042802620353

`A013609(n)+Δ[A068063(A172236(n+1)^3)]`
-/

namespace A209131.P12565548042802620353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A172236 (n + 1) ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (f1 (n + 1) - f1 n)

end

end A209131.P12565548042802620353

/-!
# A209132: Triangle of coefficients of polynomials v(n,x) jointly generated with A209131; see the Formula section.

The programs for A209132, there is no canonical definition to state claims against.
-/

/-! ## A209132.P13283960570520168917

`2*A013609(n)-A209131(n+1)`
-/

namespace A209132.P13283960570520168917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A209131 (n + 1)

end

end A209132.P13283960570520168917

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

/-! ## A209132.P7115078149122873066

`A005843(A013609(n))-A209131(n+1)`
-/

namespace A209132.P7115078149122873066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013609 n).toNat - A209131 (n + 1)

end

end A209132.P7115078149122873066

/-! ## A209132.P4492477034664089824

`A370469(n+1)-A209131(n+1)`
-/

namespace A209132.P4492477034664089824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370469 (n + 1) - A209131 (n + 1)

end

end A209132.P4492477034664089824

/-!
# A209134: Triangle of coefficients of polynomials v(n,x) jointly generated with A209133; see the Formula section.

The programs for A209134, there is no canonical definition to state claims against.
-/

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

/-!
# A209135: Triangle of coefficients of polynomials u(n,x) jointly generated with A209136; see the Formula section.

The programs for A209135, there is no canonical definition to state claims against.
-/

/-! ## A209135.P342411282874765465

`2*A208762(n+1)-A209163(n+1)`
-/

namespace A209135.P342411282874765465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208762 (n + 1) - A209163 (n + 1)

end

end A209135.P342411282874765465

/-! ## A209135.P18223642260981249525

`A208761(n+1)+A208932(n+1)-A209163(n+1)`
-/

namespace A209135.P18223642260981249525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208761 (n + 1) + (A208932 (n + 1) - A209163 (n + 1))

end

end A209135.P18223642260981249525

/-! ## A209135.P3846788689720926780

`A209163(n+1)-A005843(A209163(n+1)-A208762(n+1))`
-/

namespace A209135.P3846788689720926780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209163 (n + 1) - A005843 (A209163 (n + 1) - A208762 (n + 1)).toNat

end

end A209135.P3846788689720926780

/-! ## A209135.P6023973821357596047

`A004277(A208762(n+1))-A209163(n+1)`
-/

namespace A209135.P6023973821357596047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208762 (n + 1)).toNat - A209163 (n + 1)

end

end A209135.P6023973821357596047

/-! ## A209135.P11157597992382099300

`A210864(n+1)+A135385(A210858(n+1))`
-/

namespace A209135.P11157597992382099300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210864 (n + 1) + A135385 (A210858 (n + 1)).toNat

end

end A209135.P11157597992382099300

/-!
# A209137: Triangle of coefficients of polynomials u(n,x) jointly generated with A209138; see the Formula section.

The programs for A209137, there is no canonical definition to state claims against.
-/

/-! ## A209137.P529580930331483545

`A228815(n)+A205575(n)`
-/

namespace A209137.P529580930331483545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228815 n + A205575 n

end

end A209137.P529580930331483545

/-! ## A209137.P12994024395751416457

`A091533(n)+A205575(n)-A091562(n)`
-/

namespace A209137.P12994024395751416457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n + (A205575 n - A091562 n)

end

end A209137.P12994024395751416457

/-! ## A209137.P5391981498352858471

`A091533(n+1)+A091533(n)-A205575(n+1)`
-/

namespace A209137.P5391981498352858471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 (n + 1) + (A091533 n - A205575 (n + 1))

end

end A209137.P5391981498352858471

/-! ## A209137.P8397549482064320016

`A209138(n+2)+A091533(n)-A091533(n+1)`
-/

namespace A209137.P8397549482064320016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 (n + 2) + (A091533 n - A091533 (n + 1))

end

end A209137.P8397549482064320016

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

/-! ## A209137.P10837607034523837918

`gcd(A000038(n), A209138(A038722(n+1)))`
-/

namespace A209137.P10837607034523837918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A209138 (A038722 (n + 1)).toNat)

end

end A209137.P10837607034523837918

/-! ## A209137.P3580146111012433929

`A003484(2*n+1)*A209138(A038722(n+1))`
-/

namespace A209137.P3580146111012433929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * n + 1) * A209138 (A038722 (n + 1)).toNat

end

end A209137.P3580146111012433929

/-!
# A209138: Triangle of coefficients of polynomials v(n,x) jointly generated with A209137; see the Formula section.

The programs for A209138, there is no canonical definition to state claims against.
-/

/-! ## A209138.P3463020231095323164

`2*A091533(n)-A205575(n)`
-/

namespace A209138.P3463020231095323164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091533 n - A205575 n

end

end A209138.P3463020231095323164

/-! ## A209138.P14548935316064193003

`A209167(n+1)+A091533(n)-A209137(n+1)`
-/

namespace A209138.P14548935316064193003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209167 (n + 1) + (A091533 n - A209137 (n + 1))

end

end A209138.P14548935316064193003

/-! ## A209138.P12920358034412695361

`A209137(A038722(n+1))`
-/

namespace A209138.P12920358034412695361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A038722 (n + 1)).toNat

end

end A209138.P12920358034412695361

/-! ## A209138.P12183894912558547606

`A209137(A061579(n)+1)`
-/

namespace A209138.P12183894912558547606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A061579 n + 1).toNat

end

end A209138.P12183894912558547606

/-! ## A209138.P11616391106146694864

`A209137(A114327(n)+1+n)`
-/

namespace A209138.P11616391106146694864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209138.P11616391106146694864

/-! ## A209138.P2930730430687728562

`A209137(A093995(n+1)-n)`
-/

namespace A209138.P2930730430687728562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209138.P2930730430687728562

/-! ## A209138.P12673795999921741342

`A185081(A014132(n+1))`
-/

namespace A209138.P12673795999921741342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185081 (A014132 (n + 1)).toNat

end

end A209138.P12673795999921741342

/-!
# A209141: Triangle of coefficients of polynomials u(n,x) jointly generated with A209142; see the Formula section.

The programs for A209141, there is no canonical definition to state claims against.
-/

/-! ## A209141.P1590217754441047562

`A209745(A038722(n+1))`
-/

namespace A209141.P1590217754441047562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A038722 (n + 1)).toNat

end

end A209141.P1590217754441047562

/-! ## A209141.P6884482111354245494

`A209745(A061579(n)+1)`
-/

namespace A209141.P6884482111354245494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A061579 n + 1).toNat

end

end A209141.P6884482111354245494

/-! ## A209141.P3874213432742484800

`A209745(A114327(n)+1+n)`
-/

namespace A209141.P3874213432742484800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209141.P3874213432742484800

/-! ## A209141.P13718621521694805162

`A209745(A093995(n+1)-n)`
-/

namespace A209141.P13718621521694805162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209141.P13718621521694805162

/-! ## A209141.P2038119539807597014

`A209745(A002024(n+1)²-n)`
-/

namespace A209141.P2038119539807597014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A209141.P2038119539807597014

/-!
# A209142: Triangle of coefficients of polynomials v(n,x) jointly generated with A209141; see the Formula section.

The programs for A209142, there is no canonical definition to state claims against.
-/

/-! ## A209142.P7711054576956927081

`A209746(A038722(n+1))`
-/

namespace A209142.P7711054576956927081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A038722 (n + 1)).toNat

end

end A209142.P7711054576956927081

/-! ## A209142.P7023397161725898039

`A209746(A061579(n)+1)`
-/

namespace A209142.P7023397161725898039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A061579 n + 1).toNat

end

end A209142.P7023397161725898039

/-! ## A209142.P5957110317693471429

`A209746(A114327(n)+1+n)`
-/

namespace A209142.P5957110317693471429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209142.P5957110317693471429

/-! ## A209142.P1517769846439127234

`A209746(A093995(n+1)-n)`
-/

namespace A209142.P1517769846439127234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209142.P1517769846439127234

/-! ## A209142.P13075986134732917417

`A209746(A114327(n)-xor(n, -1))`
-/

namespace A209142.P13075986134732917417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A114327 n - Int.xor (n : ℤ) (-1)).toNat

end

end A209142.P13075986134732917417

/-! ## A209142.P14874080215568657639

`A209746(A057944(n)+A004736(n+1))`
-/

namespace A209142.P14874080215568657639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A057944 n + A004736 (n + 1)).toNat

end

end A209142.P14874080215568657639

/-!
# A209144: Triangle of coefficients of polynomials v(n,x) jointly generated with A209143; see the Formula section.

The programs for A209144, the canonical program `A209144.P4568866588798003918` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209144 has offset 1).

The definition of A209144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209144.P4568866588798003918

`A209149(A056536(n+1))`

The canonical program, it is in `Seq.B010.C000`.
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

The programs for A209145, there is no canonical definition to state claims against.
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

/-! ## A209145.P7072402552796024351

`A055830(n)+A122075(n)-A010054(n)`
-/

namespace A209145.P7072402552796024351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 n + (A122075 n - A010054 n)

end

end A209145.P7072402552796024351

/-! ## A209145.P16734587229576953641

`A210200(n+1)-A155161(A000007(n)+n)`
-/

namespace A209145.P16734587229576953641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (n + 1) - A155161 (A000007 n + (n : ℤ)).toNat

end

end A209145.P16734587229576953641

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

/-! ## A209145.P9008062851042395013

`A210200(n+1)-A155161(A066182(n+1))`
-/

namespace A209145.P9008062851042395013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (n + 1) - A155161 (A066182 (n + 1)).toNat

end

end A209145.P9008062851042395013

/-! ## A209145.P434666384695101471

`A210200(A066182(n+2))-A155161(n)`
-/

namespace A209145.P434666384695101471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (A066182 (n + 2)).toNat - A155161 n

end

end A209145.P434666384695101471

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

/-!
# A209147: Triangle of coefficients of polynomials v(n,x) jointly generated with A209146; see the Formula section.

The programs for A209147, there is no canonical definition to state claims against.
-/

/-! ## A209147.P11900092433637758745

`(A209125(n+1)+A207634(n+1))/2`
-/

namespace A209147.P11900092433637758745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209125 (n + 1) + A207634 (n + 1) : ℚ) / 2

end

end A209147.P11900092433637758745

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

/-! ## A209147.P12751852987605669179

`A209125(n+1)+A038572(A207634(n+1)-A209125(n+1))`
-/

namespace A209147.P12751852987605669179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209125 (n + 1) + A038572 (A207634 (n + 1) - A209125 (n + 1)).toNat

end

end A209147.P12751852987605669179

/-! ## A209147.P3188497073618886602

`A209125(n+1)+A001281(A207634(n+1)-A209125(n+1))`
-/

namespace A209147.P3188497073618886602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209125 (n + 1) + A001281 (A207634 (n + 1) - A209125 (n + 1)).toNat

end

end A209147.P3188497073618886602

/-! ## A209147.P5545965649991019997

`A038572(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P5545965649991019997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P5545965649991019997

/-! ## A209147.P17509408018838632035

`A001281(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P17509408018838632035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P17509408018838632035

/-! ## A209147.P14503974851281977226

`A032742(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P14503974851281977226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P14503974851281977226

/-! ## A209147.P9295373682314933701

`A110654(A209125(n+1)+A207634(n+1))`
-/

namespace A209147.P9295373682314933701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A209125 (n + 1) + A207634 (n + 1)).toNat

end

end A209147.P9295373682314933701

/-!
# A209148: Triangle of coefficients of polynomials u(n,x) jointly generated with A209149; see the Formula section.

The programs for A209148, the canonical program `A209148.P13074942020782808763` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209148 has offset 1).

The definition of A209148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A209148

/-- `abs(A209149(n+1)-A073424(n))` -/
def P13074942020782808763.Spec : Prop :=
  ∀ n, P13074942020782808763.a n = A209148 (n + 1)

theorem P13074942020782808763.correct : P13074942020782808763.Spec := by
  intro n
  simp only [A209148, Nat.add_sub_cancel]

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

The programs for A209149, the canonical program `A209149.P3458088456185272143` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209149 has offset 1).

The definition of A209149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A209149

/-- `2*A038207(n)-A200139(n)` -/
def P3458088456185272143.Spec : Prop :=
  ∀ n, P3458088456185272143.a n = A209149 (n + 1)

theorem P3458088456185272143.correct : P3458088456185272143.Spec := by
  intro n
  simp only [A209149, Nat.add_sub_cancel]

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

The programs for A209150, there is no canonical definition to state claims against.
-/

/-! ## A209150.P6776607552167433688

`A208335(A014132(n+2))-A208335(n+2)`
-/

namespace A209150.P6776607552167433688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208335 (A014132 (n + 2)).toNat - A208335 (n + 2)

end

end A209150.P6776607552167433688

/-! ## A209150.P4779115431365232328

`A194145(A122075(n)^A261959(n))`
-/

namespace A209150.P4779115431365232328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (SequenceMachineLib.roundAway ((A122075 n : ℚ) ^ (A261959 n : ℤ))).toNat

end

end A209150.P4779115431365232328

/-!
# A209151: Triangle of coefficients of polynomials u(n,x) jointly generated with A208337; see the Formula section.

The programs for A209151, there is no canonical definition to state claims against.
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

/-! ## A209151.P2572837439504681830

`A038137(n+1)+A038137(n)-A010054(n+1)`
-/

namespace A209151.P2572837439504681830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (n + 1) + (A038137 n - A010054 (n + 1))

end

end A209151.P2572837439504681830

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

/-! ## A209151.P4849299142001411866

`A210565(n+1)-A155161(A038722(n+1))`
-/

namespace A209151.P4849299142001411866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (n + 1) - A155161 (A038722 (n + 1)).toNat

end

end A209151.P4849299142001411866

/-! ## A209151.P12203520744058954940

`A038137(A014132(n+1))-A155161(A038722(n+1))`
-/

namespace A209151.P12203520744058954940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A014132 (n + 1)).toNat - A155161 (A038722 (n + 1)).toNat

end

end A209151.P12203520744058954940

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

/-! ## A209151.P14903247641986755644

`A005843(A210595(n+1))-A209756(n+1)`
-/

namespace A209151.P14903247641986755644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210595 (n + 1)).toNat - A209756 (n + 1)

end

end A209151.P14903247641986755644

/-! ## A209151.P4404278820888720004

`A193737(A380649(n+1))`
-/

namespace A209151.P4404278820888720004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (A380649 (n + 1)).toNat

end

end A209151.P4404278820888720004

/-!
# A209152: Triangle of coefficients of polynomials u(n,x) jointly generated with A208339; see the Formula section.

The programs for A209152, there is no canonical definition to state claims against.
-/

/-! ## A209152.P4089763024179772782

`A208338(n+1)+A210558(n+1)-A208339(n+1)`
-/

namespace A209152.P4089763024179772782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208338 (n + 1) + (A210558 (n + 1) - A208339 (n + 1))

end

end A209152.P4089763024179772782

/-!
# A209153: Triangle of coefficients of polynomials u(n,x) jointly generated with A208340; see the Formula section.

The programs for A209153, there is no canonical definition to state claims against.
-/

/-! ## A209153.P3351280738018175407

`A202390(n+1)+A202390(n)-A010054(n+1)`
-/

namespace A209153.P3351280738018175407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (n + 1) + (A202390 n - A010054 (n + 1))

end

end A209153.P3351280738018175407

/-! ## A209153.P11026214576199038817

`A346632(A056941(n))+A144332(n+1)`
-/

namespace A209153.P11026214576199038817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346632 (A056941 n).toNat + A144332 (n + 1)

end

end A209153.P11026214576199038817

/-! ## A209153.P2566848259492397228

`A160753(A308989(n))+A144332(n+1)`
-/

namespace A209153.P2566848259492397228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160753 (A308989 n).toNat + A144332 (n + 1)

end

end A209153.P2566848259492397228

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

/-! ## A209156.P17232156243695472483

`A290318(∪[A014132(n+1), A118924(n+1)])`
-/

namespace A209156.P17232156243695472483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118924 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290318 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A209156.P17232156243695472483

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

The programs for A209161, there is no canonical definition to state claims against.
-/

/-! ## A209161.P4535158147168129632

`2*A208760(n+1)-A208759(n+1)`
-/

namespace A209161.P4535158147168129632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208760 (n + 1) - A208759 (n + 1)

end

end A209161.P4535158147168129632

/-! ## A209161.P16575701344856374274

`2*A208760(n+1)-A073387(A002378(n)%A080036(n))`
-/

namespace A209161.P16575701344856374274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208760 (n + 1) - A073387 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A209161.P16575701344856374274

/-! ## A209161.P7536020638303005612

`A004277(A208760(n+1))-A208759(n+1)`
-/

namespace A209161.P7536020638303005612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208760 (n + 1)).toNat - A208759 (n + 1)

end

end A209161.P7536020638303005612

/-! ## A209161.P14701821954454653526

`A353853(or(A193842(n), A352513(n)))`
-/

namespace A209161.P14701821954454653526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (Int.lor (A193842 n) (A352513 n)).toNat

end

end A209161.P14701821954454653526

/-! ## A209161.P5341584738523815086

`A219760(A193710(n+1))`
-/

namespace A209161.P5341584738523815086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219760 (A193710 (n + 1)).toNat

end

end A209161.P5341584738523815086

/-!
# A209163: Triangle of coefficients of polynomials v(n,x) jointly generated with A209162; see the Formula section.

The programs for A209163, there is no canonical definition to state claims against.
-/

/-! ## A209163.P6100200027214597742

`2*A208762(n+1)-A209135(n+1)`
-/

namespace A209163.P6100200027214597742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208762 (n + 1) - A209135 (n + 1)

end

end A209163.P6100200027214597742

/-! ## A209163.P13642650605235252587

`A208761(n+1)+A208932(n+1)-A209135(n+1)`
-/

namespace A209163.P13642650605235252587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208761 (n + 1) + (A208932 (n + 1) - A209135 (n + 1))

end

end A209163.P13642650605235252587

/-! ## A209163.P6260072515090706510

`A004277(A208762(n+1))-A209135(n+1)`
-/

namespace A209163.P6260072515090706510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208762 (n + 1)).toNat - A209135 (n + 1)

end

end A209163.P6260072515090706510

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
# A209167: Triangle of coefficients of polynomials v(n,x) jointly generated with A209166; see the Formula section.

The programs for A209167, there is no canonical definition to state claims against.
-/

/-! ## A209167.P16133289670553750604

`A228815(n)+A091533(n)`
-/

namespace A209167.P16133289670553750604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228815 n + A091533 n

end

end A209167.P16133289670553750604

/-! ## A209167.P1517655585322455031

`A091562(n)+2*A228815(n)`
-/

namespace A209167.P1517655585322455031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 n + 2 * A228815 n

end

end A209167.P1517655585322455031

/-! ## A209167.P14363580244125632286

`2*A091533(n)-A091562(n)`
-/

namespace A209167.P14363580244125632286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091533 n - A091562 n

end

end A209167.P14363580244125632286

/-! ## A209167.P11249411951521502906

`A209137(n+1)+A091533(n)-A205575(n)`
-/

namespace A209167.P11249411951521502906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) + (A091533 n - A205575 n)

end

end A209167.P11249411951521502906

/-! ## A209167.P13455692785128639692

`A209137(n+1)+A209138(n+1)-A091533(n)`
-/

namespace A209167.P13455692785128639692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) + (A209138 (n + 1) - A091533 n)

end

end A209167.P13455692785128639692

/-! ## A209167.P13689338745467683072

`A209138(n+2)+A209138(n+1)-A091533(n+1)`
-/

namespace A209167.P13689338745467683072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 (n + 2) + (A209138 (n + 1) - A091533 (n + 1))

end

end A209167.P13689338745467683072

/-! ## A209167.P1982062257164129743

`A091562(n)+A005843(A228815(n))`
-/

namespace A209167.P1982062257164129743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 n + A005843 (A228815 n).toNat

end

end A209167.P1982062257164129743

/-! ## A209167.P9947547965761107679

`A005843(A091533(n))-A091562(n)`
-/

namespace A209167.P9947547965761107679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A091533 n).toNat - A091562 n

end

end A209167.P9947547965761107679

/-!
# A209171: Triangle of coefficients of polynomials v(n,x) jointly generated with A209170; see the Formula section.

The programs for A209171, there is no canonical definition to state claims against.
-/

/-! ## A209171.P1152321617571872192

`A209142(n+1)+A209142(n+2)-A209141(n+2)`
-/

namespace A209171.P1152321617571872192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209142 (n + 1) + (A209142 (n + 2) - A209141 (n + 2))

end

end A209171.P1152321617571872192

/-!
# A209172: Triangle of coefficients of polynomials u(n,x) jointly generated with A209413; see the Formula section.

The programs for A209172, there is no canonical definition to state claims against.
-/

/-! ## A209172.P14747529155577773176

`A140068(A056943(n)+A002024(n+1))`
-/

namespace A209172.P14747529155577773176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140068 (A056943 n + A002024 (n + 1)).toNat

end

end A209172.P14747529155577773176

/-! ## A209172.P15880068994146557102

`A140068(gcd(A038722(n+1), A198954(n)))`
-/

namespace A209172.P15880068994146557102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140068 (Int.gcd (A038722 (n + 1)) (A198954 n))

end

end A209172.P15880068994146557102

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

/-! ## A209172.P16194657111603197121

`A140068(A038722(n+1))^A035214(n)`
-/

namespace A209172.P16194657111603197121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140068 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A209172.P16194657111603197121

/-! ## A209172.P5828710094431542477

`and(A140068(A038722(n+1)), A284481(n))`
-/

namespace A209172.P5828710094431542477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140068 (A038722 (n + 1)).toNat) (A284481 n)

end

end A209172.P5828710094431542477

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

/-! ## A209173.P12491771372542692142

`record[A209178(A000124(∑{digits}[n, #]))]`
-/

namespace A209173.P12491771372542692142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209173.P12491771372542692142

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

/-! ## A209175.P4696398888627922427

`A209178(A167614(n+1))+A036633(n)`
-/

namespace A209175.P4696398888627922427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A167614 (n + 1)).toNat + A036633 n

end

end A209175.P4696398888627922427

/-! ## A209175.P3577618360158811675

`A209178(A167614(n+1))+A053392(n)`
-/

namespace A209175.P3577618360158811675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209178 (A167614 (n + 1)).toNat + A053392 n

end

end A209175.P3577618360158811675

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

The programs for A209187, the canonical program `A209187.P1822992089248699320` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209187 has offset 1).

The definition of A209187 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

end A209187

/-! ## A209187.P1822992089248699320

`A000203(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209187

/-- `A000203(n+1)-A051953(n+1)` -/
def P1822992089248699320.Spec : Prop :=
  ∀ n, P1822992089248699320.a n = A209187 (n + 1)

theorem P1822992089248699320.correct : P1822992089248699320.Spec := by
  intro n
  simp only [A209187, Nat.add_sub_cancel]

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

end A209187

/-! ## A209187.P2793746801296842073

`∑{d}[n+1, A000010(#)*A325765((n+1)/#-1)]`
-/

namespace A209187.P2793746801296842073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A325765 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A209187.P2793746801296842073

namespace A209187

/-- `∑{d}[n+1, A000010(#)*A325765((n+1)/#-1)]` -/
def P2793746801296842073.Spec : Prop :=
  ∀ n, P2793746801296842073.a n = A209187 (n + 1)

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

/-! ## A209188.P2487267624770822922

`∑{p}[A020639((n+2)²+n+1), #]`
-/

namespace A209188.P2487267624770822922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2) ^ 2 + n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A209188.P2487267624770822922

/-! ## A209188.P9117450796392240237

`∏{p}[A020639(∑[a(n-1)+2]+1), #]` with `a(0)=4`
-/

namespace A209188.P9117450796392240237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A209188.P9117450796392240237

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

/-! ## A209188.P9107340782802477411

`∏{p}[A020639(A005563(n+1)+n+2), #]`
-/

namespace A209188.P9107340782802477411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005563 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A209188.P9107340782802477411

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

/-! ## A209190.P2040341721274731280

`A020639(1-A056965(n+1)+n)`
-/

namespace A209190.P2040341721274731280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - A056965 (n + 1) + (n : ℤ)).toNat

end

end A209190.P2040341721274731280

/-! ## A209190.P16630494348900917745

`A020639(A056964(n+1)-(n+1))`
-/

namespace A209190.P16630494348900917745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A209190.P16630494348900917745

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

/-! ## A209193.P8302497679082459866

`∩[A084442(n+1), A100827(n+1)]`
-/

namespace A209193.P8302497679082459866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P8302497679082459866

/-! ## A209193.P7710889543415493062

`∩[A100827(n+1), A161897(n+1)]`
-/

namespace A209193.P7710889543415493062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P7710889543415493062

/-! ## A209193.P11748190195209881673

`∩[A100827(n+1), A175625(n+1)]`
-/

namespace A209193.P11748190195209881673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209193.P11748190195209881673

/-!
# A209194: Sophie Germain primes that are also highly cototient numbers.

The programs for A209194, there is no canonical definition to state claims against.
-/

/-! ## A209194.P7581152365448341447

`filter[A105440(n+1), A101264(#)]`
-/

namespace A209194.P7581152365448341447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A209194.P7581152365448341447

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

/-! ## A209194.P5632679054479232712

`p?[A003558(A105440(n+1))]`
-/

namespace A209194.P5632679054479232712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A105440 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209194.P5632679054479232712

/-! ## A209194.P1742190054795554960

`filter[A100827(n+1), A156660(#)]`
-/

namespace A209194.P1742190054795554960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156660 (f1 j).toNat = 1) n)

end

end A209194.P1742190054795554960

/-! ## A209194.P8149297376924370052

`filter[A105440(n+1), A156660(#)]`
-/

namespace A209194.P8149297376924370052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156660 (f1 j).toNat = 1) n)

end

end A209194.P8149297376924370052

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

The programs for A209198, the canonical program `A209198.P2237083971532073653` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209198 has offset 1).

The definition of A209198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209198.P2237083971532073653

`floor(1/gcd(n+1, ∑[n²]+63))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A209198

/-- `floor(1/gcd(n+1, ∑[n²]+63))` -/
def P2237083971532073653.Spec : Prop :=
  ∀ n, P2237083971532073653.a n = A209198 (n + 1)

theorem P2237083971532073653.correct : P2237083971532073653.Spec := by
  intro n
  simp only [A209198, Nat.add_sub_cancel]

end A209198

