import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

/-!
# A297300: Number of 3 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297300, the canonical program `A297300.P4164233092792581426` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297300 has offset 1).

The definition of A297300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297300.P10010936824934795506

`ogf((1-x+2x^2-2x^3+x^4-x^5)/(1-2x+x^2-2x^3+x^4))`
-/

namespace A297300.P10010936824934795506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, -2, 1, -1] [1, -2, 1, -2, 1] n

end

end A297300.P10010936824934795506

namespace A297300

/-- `ogf((1-x+2x^2-2x^3+x^4-x^5)/(1-2x+x^2-2x^3+x^4))` -/
def P10010936824934795506.Spec : Prop :=
  ∀ n, P10010936824934795506.a n = A297300 (n + 1)

end A297300

/-! ## A297300.P4164233092792581426

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=9, a(5)=17`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297300

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` -/
def P4164233092792581426.Spec : Prop :=
  ∀ n, P4164233092792581426.a n = A297300 (n + 1)

theorem P4164233092792581426.correct : P4164233092792581426.Spec := by
  intro n
  simp only [A297300, Nat.add_sub_cancel]

end A297300

/-! ## A297300.P13707728886428600387

`A297299(∑[n+2]+4)`
-/

namespace A297300.P13707728886428600387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297300.P13707728886428600387

namespace A297300

/-- `A297299(∑[n+2]+4)` -/
def P13707728886428600387.Spec : Prop :=
  ∀ n, P13707728886428600387.a n = A297300 (n + 1)

end A297300

/-! ## A297300.P15108464602486010146

`A103128(A047046(n))`
-/

namespace A297300.P15108464602486010146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A047046 n).toNat

end

end A297300.P15108464602486010146

namespace A297300

/-- `A103128(A047046(n))` -/
def P15108464602486010146.Spec : Prop :=
  ∀ n, P15108464602486010146.a n = A297300 (n + 1)

end A297300

/-! ## A297300.P10834917136859833466

`A002024(A292287(n))`
-/

namespace A297300.P10834917136859833466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A292287 n).toNat

end

end A297300.P10834917136859833466

namespace A297300

/-- `A002024(A292287(n))` -/
def P10834917136859833466.Spec : Prop :=
  ∀ n, P10834917136859833466.a n = A297300 (n + 1)

end A297300

/-!
# A297301: Number of 4 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297301, there is no canonical definition to state claims against.
-/

/-! ## A297301.P2312172068919897840

`A297299(A052905(n)+9)`
-/

namespace A297301.P2312172068919897840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A052905 n + 9).toNat

end

end A297301.P2312172068919897840

/-! ## A297301.P10798445332474297739

`A095118(A150878(n))`
-/

namespace A297301.P10798445332474297739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (A150878 n).toNat

end

end A297301.P10798445332474297739

/-!
# A297302: Number of 5Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297302, there is no canonical definition to state claims against.
-/

/-! ## A297302.P716511960521760673

`A297299(A167499(n+3))`
-/

namespace A297302.P716511960521760673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A167499 (n + 3)).toNat

end

end A297302.P716511960521760673

/-!
# A297303: Number of 6 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1's.

The programs for A297303, there is no canonical definition to state claims against.
-/

/-! ## A297303.P17007249102431637924

`A297299(A167499(n+4)+1)`
-/

namespace A297303.P17007249102431637924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A167499 (n + 4) + 1).toNat

end

end A297303.P17007249102431637924

/-!
# A297304: Number of 7Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297304, there is no canonical definition to state claims against.
-/

/-! ## A297304.P17009598566044813393

`A297299(A167499(n+5)+2)`
-/

namespace A297304.P17009598566044813393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A167499 (n + 5) + 2).toNat

end

end A297304.P17009598566044813393

/-!
# A297305: Numbers k such that k^4 can be written as a sum of five positive 4th powers.

The programs for A297305, there is no canonical definition to state claims against.
-/

/-! ## A297305.P2016946179235400501

`eq[5, A161884(n+2)]+2`
-/

namespace A297305.P2016946179235400501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161884 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A297305.P2016946179235400501

/-! ## A297305.P5718771361553979549

`lt[A161884(n+3), 6]+3`
-/

namespace A297305.P5718771361553979549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161884 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A297305.P5718771361553979549

/-! ## A297305.P15940949580526647381

`eq[5, A161884(A233583(1+n))]`
-/

namespace A297305.P15940949580526647381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161884 (A233583 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297305.P15940949580526647381

/-! ## A297305.P16136470730522264578

`eq[1, A161884(A233583(or(1, 2*n)))%4]`
-/

namespace A297305.P16136470730522264578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161884 (A233583 (Nat.lor 1 (2 * n))).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297305.P16136470730522264578

/-! ## A297305.P12251095867081392874

`eq[A014040(n), A050782(A050782(2*n))]`
-/

namespace A297305.P12251095867081392874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A050782 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297305.P12251095867081392874

/-!
# A297306: Primes p such that q = 4*p+1 and r = (2*p+1)/3 are also primes.

The programs for A297306, there is no canonical definition to state claims against.
-/

/-! ## A297306.P12043094350481938694

`∩[A023212(n+1), A104163(n+1)]`
-/

namespace A297306.P12043094350481938694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P12043094350481938694

/-! ## A297306.P7923738847713715142

`p?[floor(A063644(n+1)/4)]`
-/

namespace A297306.P7923738847713715142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063644 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297306.P7923738847713715142

/-! ## A297306.P6362548197232404292

`∩[A023212(n+1), A234095(n+1)]`
-/

namespace A297306.P6362548197232404292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P6362548197232404292

/-! ## A297306.P16132512868406140868

`∩[A104163(n+1), A137310(n+1)]`
-/

namespace A297306.P16132512868406140868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P16132512868406140868

/-! ## A297306.P2936369227385084757

`∩[A137310(n+1), A234095(n+1)]`
-/

namespace A297306.P2936369227385084757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P2936369227385084757

/-! ## A297306.P16191808108347252217

`∩[A023212(n+1), A168565(n+2)]`
-/

namespace A297306.P16191808108347252217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P16191808108347252217

/-! ## A297306.P8394131739010046887

`∩[A104163(n+1), A230076(n+1)]`
-/

namespace A297306.P8394131739010046887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P8394131739010046887

/-! ## A297306.P15011508086783989762

`∩[A230076(n+1), A234095(n+1)]`
-/

namespace A297306.P15011508086783989762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P15011508086783989762

/-! ## A297306.P11346085300554482950

`∩[A087634(n+1), A104163(n+1)]`
-/

namespace A297306.P11346085300554482950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P11346085300554482950

/-! ## A297306.P9302247869640048313

`∩[A087634(n+1), A234095(n+1)]`
-/

namespace A297306.P9302247869640048313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P9302247869640048313

/-! ## A297306.P10990121761888738442

`∩[A087634(n+1), A168565(n+2)]`
-/

namespace A297306.P10990121761888738442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P10990121761888738442

/-! ## A297306.P18437154588194610900

`∩[A034780(n+1), A104163(n+1)]`
-/

namespace A297306.P18437154588194610900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P18437154588194610900

/-! ## A297306.P641671119504915177

`∩[A034780(n+1), A234095(n+1)]`
-/

namespace A297306.P641671119504915177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297306.P641671119504915177

/-!
# A297308: Number of n X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1's.

The programs for A297308, there is no canonical definition to state claims against.
-/

/-! ## A297308.P9147363096364026159

`A297314((n+1)²+n²)`
-/

namespace A297308.P9147363096364026159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 ((n + 1) ^ 2 + n ^ 2)

end

end A297308.P9147363096364026159

/-!
# A297309: Number of n X 3 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297309, the canonical program `A297309.P14565988723638847964` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297309 has offset 1).

The definition of A297309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297309.P7155159551944197097

`ogf((4+11x+4x^2-7x^3)/(1-3x-11x^2-3x^3+6x^4))`
-/

namespace A297309.P7155159551944197097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 11, 4, -7] [1, -3, -11, -3, 6] n

end

end A297309.P7155159551944197097

namespace A297309

/-- `ogf((4+11x+4x^2-7x^3)/(1-3x-11x^2-3x^3+6x^4))` -/
def P7155159551944197097.Spec : Prop :=
  ∀ n, P7155159551944197097.a n = A297309 (n + 1)

end A297309

/-! ## A297309.P14565988723638847964

`3*a(n-1)+11*a(n-2)+3*a(n-3)-6*a(n-4)` with `a(0)=4, a(1)=23, a(2)=117, a(3)=609`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297309

/-- `3*a(n-1)+11*a(n-2)+3*a(n-3)-6*a(n-4)` -/
def P14565988723638847964.Spec : Prop :=
  ∀ n, P14565988723638847964.a n = A297309 (n + 1)

theorem P14565988723638847964.correct : P14565988723638847964.Spec := by
  intro n
  simp only [A297309, Nat.add_sub_cancel]

end A297309

/-! ## A297309.P4574233272525313528

`A297314(∑[n+3]+1)`
-/

namespace A297309.P4574233272525313528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297309.P4574233272525313528

namespace A297309

/-- `A297314(∑[n+3]+1)` -/
def P4574233272525313528.Spec : Prop :=
  ∀ n, P4574233272525313528.a n = A297309 (n + 1)

end A297309

/-! ## A297309.P1467747230339231675

`record[A297314(A198464(n+1))]`
-/

namespace A297309.P1467747230339231675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297309.P1467747230339231675

namespace A297309

/-- `record[A297314(A198464(n+1))]` -/
def P1467747230339231675.Spec : Prop :=
  ∀ n, P1467747230339231675.a n = A297309 (n + 1)

end A297309

/-!
# A297310: Number of n X 4 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297310, the canonical program `A297310.P12500719105960419369` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297310 has offset 1).

The definition of A297310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297310.P12500719105960419369

`ogf((7+38x+51x^2-50x^3-93x^4+50x^5+2x^6-10x^7+x^8)/(1-4x-26x^2-22x^3+43x^4+x^5-7x^6+x^7+x^8))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297310

/-- `ogf((7+38x+51x^2-50x^3-93x^4+50x^5+2x^6-10x^7+x^8)/(1-4x-26x^2-22x^3+43x^4+x^5-7x^6+x^7+x^8))` -/
def P12500719105960419369.Spec : Prop :=
  ∀ n, P12500719105960419369.a n = A297310 (n + 1)

theorem P12500719105960419369.correct : P12500719105960419369.Spec := by
  intro n
  simp only [A297310, Nat.add_sub_cancel]

end A297310

/-! ## A297310.P1009100503446715006

`A297314(A141214(n+1))`
-/

namespace A297310.P1009100503446715006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A141214 (n + 1)).toNat

end

end A297310.P1009100503446715006

namespace A297310

/-- `A297314(A141214(n+1))` -/
def P1009100503446715006.Spec : Prop :=
  ∀ n, P1009100503446715006.a n = A297310 (n + 1)

end A297310

/-!
# A297311: Number of nX5 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297311, there is no canonical definition to state claims against.
-/

/-! ## A297311.P18011349704588206244

`A297314(∑[n+5]+6)`
-/

namespace A297311.P18011349704588206244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A297311.P18011349704588206244

/-!
# A297312: Number of nX6 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297312, there is no canonical definition to state claims against.
-/

/-! ## A297312.P16078197754037878730

`A297314(A052905(n+3))`
-/

namespace A297312.P16078197754037878730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A052905 (n + 3)).toNat

end

end A297312.P16078197754037878730

/-!
# A297313: Number of nX7 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297313, there is no canonical definition to state claims against.
-/

/-! ## A297313.P12060108144769827450

`A297314(eq[4, A219347(n)])`
-/

namespace A297313.P12060108144769827450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297313.P12060108144769827450

/-!
# A297315: Number of 2 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297315, the canonical program `A297315.P10529922257947945135` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297315 has offset 1).

The definition of A297315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297315.P10529922257947945135

`ogf((1+4x+4x^2+3x^3+2x^4-5x^5-2x^6+x^8)/(1-3x+2x^2-8x^3+3x^4-7x^5+5x^6+x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297315

/-- `ogf((1+4x+4x^2+3x^3+2x^4-5x^5-2x^6+x^8)/(1-3x+2x^2-8x^3+3x^4-7x^5+5x^6+x^7+x^8-x^9))` -/
def P10529922257947945135.Spec : Prop :=
  ∀ n, P10529922257947945135.a n = A297315 (n + 1)

theorem P10529922257947945135.correct : P10529922257947945135.Spec := by
  intro n
  simp only [A297315, Nat.add_sub_cancel]

end A297315

/-! ## A297315.P2901012587027605503

`A297314(∑[n+1]+2)`
-/

namespace A297315.P2901012587027605503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297315.P2901012587027605503

namespace A297315

/-- `A297314(∑[n+1]+2)` -/
def P2901012587027605503.Spec : Prop :=
  ∀ n, P2901012587027605503.a n = A297315 (n + 1)

end A297315

/-! ## A297315.P10349042466701590874

`record[gcd(A097230(n), A297314(n+1))]`
-/

namespace A297315.P10349042466701590874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A297314 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297315.P10349042466701590874

namespace A297315

/-- `record[gcd(A097230(n), A297314(n+1))]` -/
def P10349042466701590874.Spec : Prop :=
  ∀ n, (P10349042466701590874.a n : ℤ) = A297315 (n + 1)

end A297315

/-! ## A297315.P14967510762266933020

`record[gcd(A051168(n), A297314(n+2))]`
-/

namespace A297315.P14967510762266933020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051168 n) (A297314 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297315.P14967510762266933020

namespace A297315

/-- `record[gcd(A051168(n), A297314(n+2))]` -/
def P14967510762266933020.Spec : Prop :=
  ∀ n, (P14967510762266933020.a n : ℤ) = A297315 (n + 1)

end A297315

/-! ## A297315.P6998714139934936720

`record[gcd(A297314(n+3), A297321(n))]`
-/

namespace A297315.P6998714139934936720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297314 (n + 3)) (A297321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297315.P6998714139934936720

namespace A297315

/-- `record[gcd(A297314(n+3), A297321(n))]` -/
def P6998714139934936720.Spec : Prop :=
  ∀ n, (P6998714139934936720.a n : ℤ) = A297315 (n + 1)

end A297315

/-!
# A297316: Number of 3Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297316, there is no canonical definition to state claims against.
-/

/-! ## A297316.P11605429614277768303

`A297314(∑[n+2]+4)`
-/

namespace A297316.P11605429614277768303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297316.P11605429614277768303

/-!
# A297317: Number of 4Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297317, there is no canonical definition to state claims against.
-/

/-! ## A297317.P5735050329237421841

`A297314(A141214(n)+7)`
-/

namespace A297317.P5735050329237421841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A141214 n + 7).toNat

end

end A297317.P5735050329237421841

/-!
# A297318: Number of 5Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297318, there is no canonical definition to state claims against.
-/

/-! ## A297318.P8779889847161080751

`A297314(A155212(n)+13)`
-/

namespace A297318.P8779889847161080751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A155212 n + 13).toNat

end

end A297318.P8779889847161080751

/-!
# A297319: Number of 6Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297319, there is no canonical definition to state claims against.
-/

/-! ## A297319.P13979427199603061784

`A297314(eq[5, col(n)]+1)`
-/

namespace A297319.P13979427199603061784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A297319.P13979427199603061784

/-!
# A297320: Number of 7Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297320, there is no canonical definition to state claims against.
-/

/-! ## A297320.P15184744760166474363

`A297314(eq[11, A066657(n)])`
-/

namespace A297320.P15184744760166474363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297320.P15184744760166474363

/-!
# A297321: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + j*x^j)^k.

The programs for A297321, there is no canonical definition to state claims against.
-/

/-! ## A297321.P14746602334600701036

`A277938(n)-A055641(A322266(n+1))`
-/

namespace A297321.P14746602334600701036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 n - A055641 (A322266 (n + 1)).toNat

end

end A297321.P14746602334600701036

/-! ## A297321.P6696969758496546883

`A277938(n)-A125005(A326323(n))`
-/

namespace A297321.P6696969758496546883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 n - A125005 (A326323 n).toNat

end

end A297321.P6696969758496546883

/-! ## A297321.P5091521725591079192

`A277938(n)-A089311(A094544(n))`
-/

namespace A297321.P5091521725591079192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 n - A089311 (A094544 n).toNat

end

end A297321.P5091521725591079192

/-! ## A297321.P2228145973022862015

`A277938(n)-A151795(A060475(n))`
-/

namespace A297321.P2228145973022862015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 n - A151795 (A060475 n).toNat

end

end A297321.P2228145973022862015

/-! ## A297321.P11532153788520973285

`A277938(n)-A025469(A256116(n))`
-/

namespace A297321.P11532153788520973285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 n - A025469 (A256116 n).toNat

end

end A297321.P11532153788520973285

/-!
# A297322: a(n) = [x^n] Product_{k>=1} (1 + k*x^k)^n.

The programs for A297322, there is no canonical definition to state claims against.
-/

/-! ## A297322.P13818718225323719549

`A297321(C(n+n+1, 2)+n)`
-/

namespace A297322.P13818718225323719549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (Nat.choose (n + n + 1) 2 + n)

end

end A297322.P13818718225323719549

/-! ## A297322.P14314734284946815386

`A297321(∑[4*n])`
-/

namespace A297322.P14314734284946815386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297322.P14314734284946815386

/-!
# A297323: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - j*x^j)^k.

The programs for A297323, there is no canonical definition to state claims against.
-/

/-! ## A297323.P2594872309132004985

`A276554(n)-A125005(A326323(n))`
-/

namespace A297323.P2594872309132004985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 n - A125005 (A326323 n).toNat

end

end A297323.P2594872309132004985

/-! ## A297323.P6926060682248804774

`A276554(n)-A089311(A094544(n))`
-/

namespace A297323.P6926060682248804774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 n - A089311 (A094544 n).toNat

end

end A297323.P6926060682248804774

/-! ## A297323.P4761695199886786518

`A276554(n)-A025469(A163661(n))`
-/

namespace A297323.P4761695199886786518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 n - A025469 (A163661 n).toNat

end

end A297323.P4761695199886786518

/-! ## A297323.P1479283305371307709

`A276554(n)-A151795(A060475(n))`
-/

namespace A297323.P1479283305371307709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 n - A151795 (A060475 n).toNat

end

end A297323.P1479283305371307709

/-! ## A297323.P16924136776776819701

`A276554(n)-A151795(A086350(n))`
-/

namespace A297323.P16924136776776819701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 n - A151795 (A086350 n).toNat

end

end A297323.P16924136776776819701

/-!
# A297325: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 + j*x^j)^k.

The programs for A297325, there is no canonical definition to state claims against.
-/

/-! ## A297325.P1375179626977429271

`A279928(n)+A125005(A326323(n))`
-/

namespace A297325.P1375179626977429271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 n + A125005 (A326323 n).toNat

end

end A297325.P1375179626977429271

/-! ## A297325.P9576456446051426569

`A279928(n)+A089311(A094544(n))`
-/

namespace A297325.P9576456446051426569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 n + A089311 (A094544 n).toNat

end

end A297325.P9576456446051426569

/-! ## A297325.P218472670998509183

`A279928(n)+A151795(A060475(n))`
-/

namespace A297325.P218472670998509183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 n + A151795 (A060475 n).toNat

end

end A297325.P218472670998509183

/-! ## A297325.P7387281221573676507

`A279928(n)+A025469(A256116(n))`
-/

namespace A297325.P7387281221573676507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 n + A025469 (A256116 n).toNat

end

end A297325.P7387281221573676507

/-! ## A297325.P8472721959990184648

`A279928(n)+A185284(A163238(n))`
-/

namespace A297325.P8472721959990184648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 n + A185284 (A163238 n).toNat

end

end A297325.P8472721959990184648

/-!
# A297326: a(n) = [x^n] Product_{k>=1} 1/(1 + k*x^k)^n.

The programs for A297326, there is no canonical definition to state claims against.
-/

/-! ## A297326.P1738529488167809167

`A297325(C(n+n+1, 2)+n)`
-/

namespace A297326.P1738529488167809167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (Nat.choose (n + n + 1) 2 + n)

end

end A297326.P1738529488167809167

/-! ## A297326.P5002962389045299903

`A297325(∑[4*n])`
-/

namespace A297326.P5002962389045299903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297326.P5002962389045299903

/-!
# A297327: 1/36 of the square of the basis of a primitive 3-simplex.

The programs for A297327, there is no canonical definition to state claims against.
-/

/-! ## A297327.P6098411417757414526

`1/144*(A031174(n+1)²*A031175(n+1)²+A031173(n+1)²*(A031174(n+1)²+A031175(n+1)²))`
-/

namespace A297327.P6098411417757414526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 144 * (A031174 (n + 1) ^ 2 * A031175 (n + 1) ^ 2 + A031173 (n + 1) ^ 2 * (A031174 (n + 1) ^ 2 + A031175 (n + 1) ^ 2) : ℚ)

end

end A297327.P6098411417757414526

/-!
# A297328: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 - j*x^j)^k.

The programs for A297328, there is no canonical definition to state claims against.
-/

/-! ## A297328.P126109890026555405

`A255961(n)+A055641(A322266(n+1))`
-/

namespace A297328.P126109890026555405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n + A055641 (A322266 (n + 1)).toNat

end

end A297328.P126109890026555405

/-! ## A297328.P3398505988931174579

`A255961(n)+A125005(A326323(n))`
-/

namespace A297328.P3398505988931174579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n + A125005 (A326323 n).toNat

end

end A297328.P3398505988931174579

/-! ## A297328.P272968172445314200

`A255961(n)+A089311(A094544(n))`
-/

namespace A297328.P272968172445314200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n + A089311 (A094544 n).toNat

end

end A297328.P272968172445314200

/-! ## A297328.P17640552045220393091

`A255961(n)+A025469(A163661(n))`
-/

namespace A297328.P17640552045220393091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n + A025469 (A163661 n).toNat

end

end A297328.P17640552045220393091

/-! ## A297328.P8332407470878977908

`A255961(n)+A151795(A060475(n))`
-/

namespace A297328.P8332407470878977908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 n + A151795 (A060475 n).toNat

end

end A297328.P8332407470878977908

/-!
# A297329: a(n) = [x^n] Product_{k>=1} 1/(1 - k*x^k)^n.

The programs for A297329, there is no canonical definition to state claims against.
-/

/-! ## A297329.P11613410684235541060

`A297328(C(n+n+1, 2)+n)`
-/

namespace A297329.P11613410684235541060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (Nat.choose (n + n + 1) 2 + n)

end

end A297329.P11613410684235541060

/-! ## A297329.P16615336642132368144

`A297328(∑[4*n])`
-/

namespace A297329.P16615336642132368144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297329.P16615336642132368144

/-!
# A297330: Total variation of base-10 digits of n; see Comments.

The programs for A297330, the canonical program `A297330.P506225445683736335` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297330 has offset 1).

The definition of A297330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297330.P2683239607625503722

`A037860(n+1)+A037851(n+1)`
-/

namespace A297330.P2683239607625503722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (n + 1) + A037851 (n + 1)

end

end A297330.P2683239607625503722

namespace A297330

/-- `A037860(n+1)+A037851(n+1)` -/
def P2683239607625503722.Spec : Prop :=
  ∀ n, P2683239607625503722.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P506225445683736335

`A007953(A040115(1+n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A297330

/-- `A007953(A040115(1+n))` -/
def P506225445683736335.Spec : Prop :=
  ∀ n, P506225445683736335.a n = A297330 (n + 1)

theorem P506225445683736335.correct : P506225445683736335.Spec := by
  intro n
  simp only [A297330, Nat.add_sub_cancel]

end A297330

/-! ## A297330.P3358352580101599287

`A297233(A171397(n+1))`
-/

namespace A297330.P3358352580101599287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297233 (A171397 (n + 1)).toNat

end

end A297330.P3358352580101599287

namespace A297330

/-- `A297233(A171397(n+1))` -/
def P3358352580101599287.Spec : Prop :=
  ∀ n, P3358352580101599287.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P11133911012024654003

`A297236(A102487(n+2))`
-/

namespace A297330.P11133911012024654003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (A102487 (n + 2)).toNat

end

end A297330.P11133911012024654003

namespace A297330

/-- `A297236(A102487(n+2))` -/
def P11133911012024654003.Spec : Prop :=
  ∀ n, P11133911012024654003.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P15818213338081255386

`A297239(A094823(n+1))`
-/

namespace A297330.P15818213338081255386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297239 (A094823 (n + 1)).toNat

end

end A297330.P15818213338081255386

namespace A297330

/-- `A297239(A094823(n+1))` -/
def P15818213338081255386.Spec : Prop :=
  ∀ n, P15818213338081255386.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P286301473717161171

`A297248(A102489(n+1))`
-/

namespace A297330.P286301473717161171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (A102489 (n + 1)).toNat

end

end A297330.P286301473717161171

namespace A297330

/-- `A297248(A102489(n+1))` -/
def P286301473717161171.Spec : Prop :=
  ∀ n, P286301473717161171.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P12638692790016554329

`A037851(A056544(n+1)+A037851(n+1))`
-/

namespace A297330.P12638692790016554329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A056544 (n + 1) + A037851 (n + 1)).toNat

end

end A297330.P12638692790016554329

namespace A297330

/-- `A037851(A056544(n+1)+A037851(n+1))` -/
def P12638692790016554329.Spec : Prop :=
  ∀ n, P12638692790016554329.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P13318223954588837205

`A037860(A071273(n+1))`
-/

namespace A297330.P13318223954588837205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A071273 (n + 1)).toNat

end

end A297330.P13318223954588837205

namespace A297330

/-- `A037860(A071273(n+1))` -/
def P13318223954588837205.Spec : Prop :=
  ∀ n, P13318223954588837205.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P10420409065205708733

`A064834(A087019(n+1))`
-/

namespace A297330.P10420409065205708733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A087019 (n + 1)).toNat

end

end A297330.P10420409065205708733

namespace A297330

/-- `A064834(A087019(n+1))` -/
def P10420409065205708733.Spec : Prop :=
  ∀ n, P10420409065205708733.a n = A297330 (n + 1)

end A297330

/-! ## A297330.P5601381874331130340

`A037878(A020338(n+1))`
-/

namespace A297330.P5601381874331130340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037878 (A020338 (n + 1)).toNat

end

end A297330.P5601381874331130340

namespace A297330

/-- `A037878(A020338(n+1))` -/
def P5601381874331130340.Spec : Prop :=
  ∀ n, P5601381874331130340.a n = A297330 (n + 1)

end A297330

/-!
# A297331: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of (theta_3(q^(1/2))^k + theta_4(q^(1/2))^k)/2.

The programs for A297331, there is no canonical definition to state claims against.
-/

/-! ## A297331.P14750097309376386219

`A286815(A245300(n)+A002262(n))`
-/

namespace A297331.P14750097309376386219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A245300 n + A002262 n).toNat

end

end A297331.P14750097309376386219

/-! ## A297331.P11075090692922520701

`A319574(A245300(n)+A114327(n))`
-/

namespace A297331.P11075090692922520701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A245300 n + A114327 n).toNat

end

end A297331.P11075090692922520701

/-! ## A297331.P9978525613242883543

`A010960(A241855(n+1))%A090988(n+1)`
-/

namespace A297331.P9978525613242883543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010960 (A241855 (n + 1)).toNat) (A090988 (n + 1))

end

end A297331.P9978525613242883543

/-! ## A297331.P18306204308071435410

`and(A307117(3*n+5), A307122(A307081(n+1)))`
-/

namespace A297331.P18306204308071435410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A307117 (3 * n + 5)) (A307122 (A307081 (n + 1)).toNat)

end

end A297331.P18306204308071435410

/-!
# A297332: Number of n X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1's.

The programs for A297332, there is no canonical definition to state claims against.
-/

/-! ## A297332.P4626834907823268686

`A297338(∑[4*n]+1)`
-/

namespace A297332.P4626834907823268686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297332.P4626834907823268686

/-! ## A297332.P5610999623430005776

`record[gcd(A003987(n), A297338(n+1))]`
-/

namespace A297332.P5610999623430005776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A297338 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297332.P5610999623430005776

/-!
# A297333: Number of n X 3 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297333, the canonical program `A297333.P9011104790909617834` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297333 has offset 1).

The definition of A297333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297333.P1002242210484373122

`ogf((5-3x-4x^2)/(1-5x+2x^2+3x^3))`
-/

namespace A297333.P1002242210484373122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, -4] [1, -5, 2, 3] n

end

end A297333.P1002242210484373122

namespace A297333

/-- `ogf((5-3x-4x^2)/(1-5x+2x^2+3x^3))` -/
def P1002242210484373122.Spec : Prop :=
  ∀ n, P1002242210484373122.a n = A297333 (n + 1)

end A297333

/-! ## A297333.P9011104790909617834

`5*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=5, a(1)=22, a(2)=96`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297333

/-- `5*a(n-1)-2*a(n-2)-3*a(n-3)` -/
def P9011104790909617834.Spec : Prop :=
  ∀ n, P9011104790909617834.a n = A297333 (n + 1)

theorem P9011104790909617834.correct : P9011104790909617834.Spec := by
  intro n
  simp only [A297333, Nat.add_sub_cancel]

end A297333

/-! ## A297333.P5153794002402679260

`A297338(∑[n+3]+1)`
-/

namespace A297333.P5153794002402679260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297333.P5153794002402679260

namespace A297333

/-- `A297338(∑[n+3]+1)` -/
def P5153794002402679260.Spec : Prop :=
  ∀ n, P5153794002402679260.a n = A297333 (n + 1)

end A297333

/-!
# A297334: Number of n X 4 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297334, the canonical program `A297334.P17863102490304206643` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297334 has offset 1).

The definition of A297334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297334.P17863102490304206643

`ogf((8-11x-10x^2+9x^3+4x^4)/(1-8x+10x^2+4x^3-3x^4-x^5))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297334

/-- `ogf((8-11x-10x^2+9x^3+4x^4)/(1-8x+10x^2+4x^3-3x^4-x^5))` -/
def P17863102490304206643.Spec : Prop :=
  ∀ n, P17863102490304206643.a n = A297334 (n + 1)

theorem P17863102490304206643.correct : P17863102490304206643.Spec := by
  intro n
  simp only [A297334, Nat.add_sub_cancel]

end A297334

/-! ## A297334.P17950929376654279428

`A297338(A141214(n+1))`
-/

namespace A297334.P17950929376654279428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A141214 (n + 1)).toNat

end

end A297334.P17950929376654279428

namespace A297334

/-- `A297338(A141214(n+1))` -/
def P17950929376654279428.Spec : Prop :=
  ∀ n, P17950929376654279428.a n = A297334 (n + 1)

end A297334

/-!
# A297335: Number of n X 5 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297335, there is no canonical definition to state claims against.
-/

/-! ## A297335.P935154624547185273

`ogf((13-48x-46x^2+243x^3-24x^4-291x^5+40x^6+16x^7)/(1-14x+40x^2+12x^3-107x^4+12x^5+60x^6-16x^7))`
-/

namespace A297335.P935154624547185273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -48, -46, 243, -24, -291, 40, 16] [1, -14, 40, 12, -107, 12, 60, -16] n

end

end A297335.P935154624547185273

/-! ## A297335.P8095556520234107847

`A297338(A046691(n+3))`
-/

namespace A297335.P8095556520234107847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A046691 (n + 3)).toNat

end

end A297335.P8095556520234107847

/-!
# A297336: Number of nX6 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297336, there is no canonical definition to state claims against.
-/

/-! ## A297336.P7234797166216085025

`A297338(A056119(n)+16)`
-/

namespace A297336.P7234797166216085025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A056119 n + 16).toNat

end

end A297336.P7234797166216085025

/-!
# A297337: Number of nX7 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297337, there is no canonical definition to state claims against.
-/

/-! ## A297337.P7178845254869501057

`A297338(eq[4, A219347(n)])`
-/

namespace A297337.P7178845254869501057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297337.P7178845254869501057

/-!
# A297339: Number of 2 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297339, the canonical program `A297339.P17332473575524694025` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297339 has offset 1).

The definition of A297339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297339.P2331260840868727260

`ogf((4+4x+2x^2-x^3-x^4)/(1-x-3x^2-2x^3+x^5))`
-/

namespace A297339.P2331260840868727260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 2, -1, -1] [1, -1, -3, -2, 0, 1] n

end

end A297339.P2331260840868727260

namespace A297339

/-- `ogf((4+4x+2x^2-x^3-x^4)/(1-x-3x^2-2x^3+x^5))` -/
def P2331260840868727260.Spec : Prop :=
  ∀ n, P2331260840868727260.a n = A297339 (n + 1)

end A297339

/-! ## A297339.P17332473575524694025

`a(n-1)+3*a(n-2)+2*a(n-3)-a(n-5)` with `a(0)=4, a(1)=8, a(2)=22, a(3)=53, a(4)=134`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297339

/-- `a(n-1)+3*a(n-2)+2*a(n-3)-a(n-5)` -/
def P17332473575524694025.Spec : Prop :=
  ∀ n, P17332473575524694025.a n = A297339 (n + 1)

theorem P17332473575524694025.correct : P17332473575524694025.Spec := by
  intro n
  simp only [A297339, Nat.add_sub_cancel]

end A297339

/-! ## A297339.P17282939780076140920

`A297338(∑[n+1]+2)`
-/

namespace A297339.P17282939780076140920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297339.P17282939780076140920

namespace A297339

/-- `A297338(∑[n+1]+2)` -/
def P17282939780076140920.Spec : Prop :=
  ∀ n, P17282939780076140920.a n = A297339 (n + 1)

end A297339

/-! ## A297339.P8923857565522081143

`record[A297338(A008795(n)+2)]`
-/

namespace A297339.P8923857565522081143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297339.P8923857565522081143

namespace A297339

/-- `record[A297338(A008795(n)+2)]` -/
def P8923857565522081143.Spec : Prop :=
  ∀ n, P8923857565522081143.a n = A297339 (n + 1)

end A297339

/-!
# A297340: Number of 3Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297340, there is no canonical definition to state claims against.
-/

/-! ## A297340.P4562413596967801531

`A297338(∑[n+2]+4)`
-/

namespace A297340.P4562413596967801531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297340.P4562413596967801531

/-!
# A297341: Number of 4Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297341, there is no canonical definition to state claims against.
-/

/-! ## A297341.P13553662628101548286

`A297338(A141214(n)+7)`
-/

namespace A297341.P13553662628101548286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A141214 n + 7).toNat

end

end A297341.P13553662628101548286

/-!
# A297342: Number of 5Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297342, there is no canonical definition to state claims against.
-/

/-! ## A297342.P10486722650411571117

`A297338(A167499(n+3))`
-/

namespace A297342.P10486722650411571117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A167499 (n + 3)).toNat

end

end A297342.P10486722650411571117

/-!
# A297343: Number of 6 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1's.

The programs for A297343, there is no canonical definition to state claims against.
-/

/-! ## A297343.P8658076251969542061

`A297338(A056115(n)+21)`
-/

namespace A297343.P8658076251969542061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A056115 n + 21).toNat

end

end A297343.P8658076251969542061

/-!
# A297344: Number of 7Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297344, there is no canonical definition to state claims against.
-/

/-! ## A297344.P17694045426601727312

`A297338(∑[n+6]+22)`
-/

namespace A297344.P17694045426601727312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A297344.P17694045426601727312

/-!
# A297345: a(0)=0; for n>0, a(n) is the least positive integer that cannot be represented as Sum_{k=1..n-1} a(i_k)*a(k), with 0 <= i_k < n.

The programs for A297345, there is no canonical definition to state claims against.
-/

/-! ## A297345.P6592956924763069051

`A393713(A004780((1+n)!+1))`
-/

namespace A297345.P6592956924763069051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393713 (A004780 (Nat.factorial (1 + n) + 1)).toNat

end

end A297345.P6592956924763069051

/-! ## A297345.P5338322194158901314

`A166097(A189052(n))+A078484(n)`
-/

namespace A297345.P5338322194158901314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166097 (A189052 n).toNat + A078484 n

end

end A297345.P5338322194158901314

/-! ## A297345.P9460515749059943969

`A007051(n)-A291166(A067687(n))`
-/

namespace A297345.P9460515749059943969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A291166 (A067687 n).toNat

end

end A297345.P9460515749059943969

/-!
# A297348: Numbers k such that 12*13^k - 1 is prime.

The programs for A297348, there is no canonical definition to state claims against.
-/

/-! ## A297348.P8926310900401720004

`A164840(n+1)-A209178(n+1)`
-/

namespace A297348.P8926310900401720004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164840 (n + 1) - A209178 (n + 1)

end

end A297348.P8926310900401720004

/-! ## A297348.P9294899220650349063

`A002375(A341625(n)+A135030(n+1))`
-/

namespace A297348.P9294899220650349063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A341625 n + A135030 (n + 1)).toNat

end

end A297348.P9294899220650349063

/-!
# A297349: Number of edge covers in the 2 X n king graph.

The programs for A297349, the canonical program `A297349.P11682316601978028879` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297349 has offset 0).

The definition of A297349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297349.P15255525587211083822

`ogf((1-28x-24x^2)/(1-29x-36x^2+24x^3))`
-/

namespace A297349.P15255525587211083822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -28, -24] [1, -29, -36, 24] n

end

end A297349.P15255525587211083822

namespace A297349

/-- `ogf((1-28x-24x^2)/(1-29x-36x^2+24x^3))` -/
def P15255525587211083822.Spec : Prop :=
  ∀ n, P15255525587211083822.a n = A297349 n

end A297349

/-! ## A297349.P11682316601978028879

`29*a(n-1)+36*a(n-2)-24*a(n-3)` with `a(0)=1, a(1)=1, a(2)=41`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297349

/-- `29*a(n-1)+36*a(n-2)-24*a(n-3)` -/
def P11682316601978028879.Spec : Prop :=
  ∀ n, P11682316601978028879.a n = A297349 n

theorem P11682316601978028879.correct : P11682316601978028879.Spec := by
  intro n
  simp only [A297349]

end A297349

/-! ## A297349.P6291654386221315483

`A297205(∑[n]+2)`
-/

namespace A297349.P6291654386221315483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297205 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297349.P6291654386221315483

namespace A297349

/-- `A297205(∑[n]+2)` -/
def P6291654386221315483.Spec : Prop :=
  ∀ n, P6291654386221315483.a n = A297349 n

end A297349

/-!
# A297350: Start of record gaps between sums of two squares.

The programs for A297350, there is no canonical definition to state claims against.
-/

/-! ## A297350.P14261546834480648072

`A402408(A357018(n+1)+1)`
-/

namespace A297350.P14261546834480648072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402408 (A357018 (n + 1) + 1).toNat

end

end A297350.P14261546834480648072

/-! ## A297350.P11242180835915025739

`A398088(n+1)-(A357018(n+1)+1)`
-/

namespace A297350.P11242180835915025739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398088 (n + 1) - (A357018 (n + 1) + 1)

end

end A297350.P11242180835915025739

/-! ## A297350.P14555231006769696255

`A001481(A102548(A398088(n+1)))`
-/

namespace A297350.P14555231006769696255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (A102548 (A398088 (n + 1)).toNat).toNat

end

end A297350.P14555231006769696255

/-! ## A297350.P2639580692769223861

`filter[A402408(n+1), A131218(#)]`
-/

namespace A297350.P2639580692769223861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131218 (f1 j).toNat = 1) n)

end

end A297350.P2639580692769223861

/-!
# A297351: Smallest number k such that, for any set S of k distinct nonzero residues mod p = prime(n), any residue mod p can be represented as a sum of zero or more distinct elements of S.

The programs for A297351, there is no canonical definition to state claims against.
-/

/-! ## A297351.P9487314623492057866

`floor(sqrt(4*p?[round(8*n/7)]-5))`
-/

namespace A297351.P9487314623492057866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5)

end

end A297351.P9487314623492057866

/-! ## A297351.P14321566768981592239

`floor(sqrt(A001749(n+1)-7))`
-/

namespace A297351.P14321566768981592239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001749 (n + 1) - 7)

end

end A297351.P14321566768981592239

/-! ## A297351.P12355114337580732238

`round(sqrt(A060019(n+1)²+1))`
-/

namespace A297351.P12355114337580732238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A060019 (n + 1) ^ 2 + 1 : ℝ))

end

end A297351.P12355114337580732238

/-! ## A297351.P3447843127275429295

`ceil(2*sqrt(A006093(n+1)))-1`
-/

namespace A297351.P3447843127275429295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A006093 (n + 1) : ℝ)⌉ - 1

end

end A297351.P3447843127275429295

/-! ## A297351.P47334092853306738

`round(sqrt(2*A342173(n+1)))+1`
-/

namespace A297351.P47334092853306738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A342173 (n + 1) : ℝ)) + 1

end

end A297351.P47334092853306738

/-!
# A297358: Numbers m such that the denominator of m/rho(m) is 3, where rho is A206369; i.e. A294649(m) = 3.

The programs for A297358, there is no canonical definition to state claims against.
-/

/-! ## A297358.P11092675626742534734

`eq[3, A294649(A028310(n))]`
-/

namespace A297358.P11092675626742534734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297358.P11092675626742534734

/-! ## A297358.P970112864605874922

`A014681(eq[3, A294649(n+1)])`
-/

namespace A297358.P970112864605874922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297358.P970112864605874922

/-! ## A297358.P3794518327906260737

`A020725(eq[3, A294649(n+1)])`
-/

namespace A297358.P3794518327906260737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297358.P3794518327906260737

/-! ## A297358.P4195935482493164638

`A065475(eq[3, A294649(n+1)])`
-/

namespace A297358.P4195935482493164638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297358.P4195935482493164638

/-!
# A297359: Array read by antidiagonals: Pascal-like recursion and self-referential boundaries.

The programs for A297359, there is no canonical definition to state claims against.
-/

/-! ## A297359.P299322288629237730

`A264119(A168464(n))+A014473(n)`
-/

namespace A297359.P299322288629237730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264119 (A168464 n).toNat + A014473 n

end

end A297359.P299322288629237730

/-! ## A297359.P17421606702836672227

`A079998(A080046(n+1))+A007318(n)`
-/

namespace A297359.P17421606702836672227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A080046 (n + 1)).toNat + A007318 n

end

end A297359.P17421606702836672227

/-! ## A297359.P2574300069571901079

`A079998(A080046(n+1))+A034932(n)`
-/

namespace A297359.P2574300069571901079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A080046 (n + 1)).toNat + A034932 n

end

end A297359.P2574300069571901079

/-! ## A297359.P5372596660599732250

`A112765(A080046(n+1))+A076831(n)`
-/

namespace A297359.P5372596660599732250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A080046 (n + 1)).toNat + A076831 n

end

end A297359.P5372596660599732250

/-! ## A297359.P11363856434539737934

`A007318(n)+A264119(A168464(n))-1`
-/

namespace A297359.P11363856434539737934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A264119 (A168464 n).toNat - 1)

end

end A297359.P11363856434539737934

/-!
# A297360: Numbers k such that (2^lambda(k) - 1)/k is prime, where lambda(k) is the Carmichael lambda function (A002322).

The programs for A297360, there is no canonical definition to state claims against.
-/

/-! ## A297360.P14771635769752563498

`A071053(A332245(n+1)+A332238(n+1))`
-/

namespace A297360.P14771635769752563498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A332245 (n + 1) + A332238 (n + 1)).toNat

end

end A297360.P14771635769752563498

/-!
# A297361: Numbers k such that (3^lambda(k) - 1)/k is prime, where lambda(k) is the Carmichael lambda function (A002322).

The programs for A297361, there is no canonical definition to state claims against.
-/

/-! ## A297361.P9405536830199204228

`A297363(A194406(n+1))`
-/

namespace A297361.P9405536830199204228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297363 (A194406 (n + 1)).toNat

end

end A297361.P9405536830199204228

/-!
# A297364: Numbers k such that f(k) > f(m) for all m < k, where f(k) = usigma(usigma(usigma(k)))/usigma(usigma(k)) and usigma(k) is the sum of unitary divisors of k (A034448).

The programs for A297364, there is no canonical definition to state claims against.
-/

/-! ## A297364.P14654421388904871173

`A160543(∑[A075158(n)!])`
-/

namespace A297364.P14654421388904871173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A075158 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297364.P14654421388904871173

/-! ## A297364.P4446281775728384054

`∑[A247160(A075158(n)!)]`
-/

namespace A297364.P4446281775728384054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (Nat.factorial (A075158 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297364.P4446281775728384054

/-!
# A297365: Numbers k such that uphi(k)*usigma(k) = uphi(k+1)*usigma(k+1), where uphi is the unitary totient function (A047994) and usigma the sum of unitary divisors (A034448).

The programs for A297365, there is no canonical definition to state claims against.
-/

/-! ## A297365.P3122065074162152361

`eq[A191414(n+1), A191414(n+2)]+1`
-/

namespace A297365.P3122065074162152361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297365.P3122065074162152361

/-! ## A297365.P17874014587329714065

`A020725(eq[A191414(n+1), A191414(n+2)])`
-/

namespace A297365.P17874014587329714065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297365.P17874014587329714065

/-! ## A297365.P2107812138820700467

`A065475(eq[A191414(n+1), A191414(n+2)])`
-/

namespace A297365.P2107812138820700467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297365.P2107812138820700467

/-! ## A297365.P4393249858877063977

`A153152(eq[A191414(n+1), A191414(n+2)])`
-/

namespace A297365.P4393249858877063977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297365.P4393249858877063977

/-! ## A297365.P8409866181224985229

`eq[A191414(n+1), A191414(A000038(n)+n)]`
-/

namespace A297365.P8409866181224985229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297365.P8409866181224985229

/-!
# A297366: Numbers k such that uphi(k) + usigma(k) = uphi(k+1) + usigma(k+1), where uphi is the unitary totient function (A047994) and usigma the sum of unitary divisors (A034448).

The programs for A297366, there is no canonical definition to state claims against.
-/

/-! ## A297366.P7414364684207668036

`eq[A001221(A036987(n²)+n), A034444(n+1)]`
-/

namespace A297366.P7414364684207668036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A036987 (n ^ 2) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297366.P7414364684207668036

/-! ## A297366.P203337369519036620

`eq[A001221(A036987(n²)+n), A292586(n+1)]`
-/

namespace A297366.P203337369519036620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A036987 (n ^ 2) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297366.P203337369519036620

/-! ## A297366.P5197609415451986712

`filter[A373677(n+1), A215480(#)]`
-/

namespace A297366.P5197609415451986712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A297366.P5197609415451986712

/-! ## A297366.P11121168498248603189

`∩[A007774(n+1), A373677(n+1)]`
-/

namespace A297366.P11121168498248603189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297366.P11121168498248603189

/-! ## A297366.P14427187331976133793

`eq[A007875(n+1), A079275(A055456(n+1))]`
-/

namespace A297366.P14427187331976133793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (A055456 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297366.P14427187331976133793

/-!
# A297367: Numerators of fraction whose denominator is defined in A303612.

The programs for A297367, there is no canonical definition to state claims against.
-/

/-! ## A297367.P6455890269021221422

`ceil(A303612(n)/A304879(n)*A304880(n))`
-/

namespace A297367.P6455890269021221422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A303612 n : ℚ) / (A304879 n : ℚ) * (A304880 n : ℚ)⌉

end

end A297367.P6455890269021221422

/-!
# A297368: Number of n X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1's.

The programs for A297368, there is no canonical definition to state claims against.
-/

/-! ## A297368.P9994501940867508527

`A297374(1+∑[4*n])`
-/

namespace A297368.P9994501940867508527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297368.P9994501940867508527

/-! ## A297368.P13672699903786346591

`record[A297374(A001844(val(n+1, 2)))]`
-/

namespace A297368.P13672699903786346591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297368.P13672699903786346591

/-! ## A297368.P17602951935085534371

`record[A003982(n)*A297374(n+1)]`
-/

namespace A297368.P17602951935085534371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297368.P17602951935085534371

/-! ## A297368.P6396416848321799383

`record[gcd(A114327(n), A297374(n+1))]`
-/

namespace A297368.P6396416848321799383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297374 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297368.P6396416848321799383

/-!
# A297369: Number of n X 3 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297369, the canonical program `A297369.P11053646476533247410` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297369 has offset 1).

The definition of A297369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297369.P10208900576267040165

`ogf((8+x-6x^2)/(1-7x+4x^3))`
-/

namespace A297369.P10208900576267040165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 1, -6] [1, -7, 0, 4] n

end

end A297369.P10208900576267040165

namespace A297369

/-- `ogf((8+x-6x^2)/(1-7x+4x^3))` -/
def P10208900576267040165.Spec : Prop :=
  ∀ n, P10208900576267040165.a n = A297369 (n + 1)

end A297369

/-! ## A297369.P11053646476533247410

`7*a(n-1)-4*a(n-3)` with `a(0)=8, a(1)=57, a(2)=393`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297369

/-- `7*a(n-1)-4*a(n-3)` -/
def P11053646476533247410.Spec : Prop :=
  ∀ n, P11053646476533247410.a n = A297369 (n + 1)

theorem P11053646476533247410.correct : P11053646476533247410.Spec := by
  intro n
  simp only [A297369, Nat.add_sub_cancel]

end A297369

/-! ## A297369.P8671551951091585315

`A297374(∑[n+3]+1)`
-/

namespace A297369.P8671551951091585315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297369.P8671551951091585315

namespace A297369

/-- `A297374(∑[n+3]+1)` -/
def P8671551951091585315.Spec : Prop :=
  ∀ n, P8671551951091585315.a n = A297369 (n + 1)

end A297369

/-!
# A297370: Number of n X 4 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1's.

The programs for A297370, there is no canonical definition to state claims against.
-/

/-! ## A297370.P9323435472923084381

`ogf((16-30x^2+4x^3+10x^4-x^5)/(1-13x+4x^2+3x^3+19x^4-15x^5+x^6))`
-/

namespace A297370.P9323435472923084381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 0, -30, 4, 10, -1] [1, -13, 4, 3, 19, -15, 1] n

end

end A297370.P9323435472923084381

/-! ## A297370.P7660582376477176160

`A297374(A141214(n+1))`
-/

namespace A297370.P7660582376477176160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A141214 (n + 1)).toNat

end

end A297370.P7660582376477176160

/-!
# A297371: Number of nX5 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297371, there is no canonical definition to state claims against.
-/

/-! ## A297371.P5055899290865997614

`A297374(A046691(n+3))`
-/

namespace A297371.P5055899290865997614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A046691 (n + 3)).toNat

end

end A297371.P5055899290865997614

/-!
# A297372: Number of nX6 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297372, there is no canonical definition to state claims against.
-/

/-! ## A297372.P5825823309574411322

`A297374(A052905(n+3))`
-/

namespace A297372.P5825823309574411322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A052905 (n + 3)).toNat

end

end A297372.P5825823309574411322

/-!
# A297373: Number of nX7 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297373, there is no canonical definition to state claims against.
-/

/-! ## A297373.P11072439886739547076

`A297374(A055999(n+4))`
-/

namespace A297373.P11072439886739547076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A055999 (n + 4)).toNat

end

end A297373.P11072439886739547076

/-!
# A297374: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297374, there is no canonical definition to state claims against.
-/

/-! ## A297374.P14114159589953827011

`A265519(A283857(n+1))`
-/

namespace A297374.P14114159589953827011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265519 (A283857 (n + 1)).toNat

end

end A297374.P14114159589953827011

/-! ## A297374.P14660407761699851885

`A084250(A302069(n+1))+1`
-/

namespace A297374.P14660407761699851885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084250 (A302069 (n + 1)).toNat + 1

end

end A297374.P14660407761699851885

/-! ## A297374.P784744094149011725

`A122313(2*A208709(n+1))`
-/

namespace A297374.P784744094149011725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (2 * A208709 (n + 1)).toNat

end

end A297374.P784744094149011725

/-! ## A297374.P1487179919448477907

`A102512(2*A302265(n+1))`
-/

namespace A297374.P1487179919448477907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102512 (2 * A302265 (n + 1)).toNat

end

end A297374.P1487179919448477907

/-!
# A297375: Number of 2 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297375, the canonical program `A297375.P9923740434133283450` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297375 has offset 1).

The definition of A297375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297375.P9923740434133283450

`ogf((4+4x+5x^2+x^3-x^5-x^6)/(1-3x-x^2-5x^3-x^4-x^5+x^6+x^7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297375

/-- `ogf((4+4x+5x^2+x^3-x^5-x^6)/(1-3x-x^2-5x^3-x^4-x^5+x^6+x^7))` -/
def P9923740434133283450.Spec : Prop :=
  ∀ n, P9923740434133283450.a n = A297375 (n + 1)

theorem P9923740434133283450.correct : P9923740434133283450.Spec := by
  intro n
  simp only [A297375, Nat.add_sub_cancel]

end A297375

/-! ## A297375.P15730456900992232252

`A297374(∑[n+1]+2)`
-/

namespace A297375.P15730456900992232252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297375.P15730456900992232252

namespace A297375

/-- `A297374(∑[n+1]+2)` -/
def P15730456900992232252.Spec : Prop :=
  ∀ n, P15730456900992232252.a n = A297375 (n + 1)

end A297375

/-! ## A297375.P10228424344955728776

`record[root(A297374(n+2), A013610(n))]`
-/

namespace A297375.P10228424344955728776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A297374 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297375.P10228424344955728776

namespace A297375

/-- `record[root(A297374(n+2), A013610(n))]` -/
def P10228424344955728776.Spec : Prop :=
  ∀ n, P10228424344955728776.a n = (A297375 (n + 1) : ℝ)

end A297375

/-! ## A297375.P14010013852986285036

`record[gcd(A204533(n+1), A297374(n+3))]`
-/

namespace A297375.P14010013852986285036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204533 (n + 1)) (A297374 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297375.P14010013852986285036

namespace A297375

/-- `record[gcd(A204533(n+1), A297374(n+3))]` -/
def P14010013852986285036.Spec : Prop :=
  ∀ n, (P14010013852986285036.a n : ℤ) = A297375 (n + 1)

end A297375

/-! ## A297375.P7439475102861986761

`record[root(A297374(n+1), A131818(n+1))²]`
-/

namespace A297375.P7439475102861986761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A297374 (n + 1) : ℝ) ^ (1 / (A131818 (n + 1) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297375.P7439475102861986761

namespace A297375

/-- `record[root(A297374(n+1), A131818(n+1))²]` -/
def P7439475102861986761.Spec : Prop :=
  ∀ n, P7439475102861986761.a n = (A297375 (n + 1) : ℝ)

end A297375

/-!
# A297376: Number of 3Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297376, there is no canonical definition to state claims against.
-/

/-! ## A297376.P8930254169765082867

`A297374(∑[n+2]+4)`
-/

namespace A297376.P8930254169765082867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297376.P8930254169765082867

/-!
# A297377: Number of 4Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297377, there is no canonical definition to state claims against.
-/

/-! ## A297377.P4540520852459522020

`A297374(A141214(n)+7)`
-/

namespace A297377.P4540520852459522020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A141214 n + 7).toNat

end

end A297377.P4540520852459522020

/-!
# A297378: Number of 5Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297378, there is no canonical definition to state claims against.
-/

/-! ## A297378.P12138984397604464984

`A297374(A167499(n+3))`
-/

namespace A297378.P12138984397604464984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A167499 (n + 3)).toNat

end

end A297378.P12138984397604464984

/-!
# A297379: Number of 6Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297379, there is no canonical definition to state claims against.
-/

/-! ## A297379.P6450451363781866405

`A297374(A166136(n+4))`
-/

namespace A297379.P6450451363781866405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A166136 (n + 4)).toNat

end

end A297379.P6450451363781866405

/-!
# A297380: Number of 7Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297380, there is no canonical definition to state claims against.
-/

/-! ## A297380.P6369400349318666900

`A297374(A167487(n+5))`
-/

namespace A297380.P6369400349318666900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A167487 (n + 5)).toNat

end

end A297380.P6369400349318666900

/-!
# A297381: Numerator of -A023900(n)/2.

The programs for A297381, the canonical program `A297381.P12976311845768696802` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297381 has offset 1).

The definition of A297381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297381.P12976311845768696802

`-round(∏{p}[n+1, 1-#]/2)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297381

/-- `-round(∏{p}[n+1, 1-#]/2)` -/
def P12976311845768696802.Spec : Prop :=
  ∀ n, P12976311845768696802.a n = A297381 (n + 1)

theorem P12976311845768696802.correct : P12976311845768696802.Spec := by
  intro n
  simp only [A297381, Nat.add_sub_cancel]

end A297381

/-! ## A297381.P12915039849366739370

`-A349431(1+n)`
-/

namespace A297381.P12915039849366739370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349431 (1 + n)

end

end A297381.P12915039849366739370

namespace A297381

/-- `-A349431(1+n)` -/
def P12915039849366739370.Spec : Prop :=
  ∀ n, P12915039849366739370.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P8484407989824994297

`round(-(A023900(n+1)/2))`
-/

namespace A297381.P8484407989824994297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((A023900 (n + 1) : ℚ) / 2))

end

end A297381.P8484407989824994297

namespace A297381

/-- `round(-(A023900(n+1)/2))` -/
def P8484407989824994297.Spec : Prop :=
  ∀ n, P8484407989824994297.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P13620032615057227601

`A349432(n+1)-A349433(n+1)`
-/

namespace A297381.P13620032615057227601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349432 (n + 1) - A349433 (n + 1)

end

end A297381.P13620032615057227601

namespace A297381

/-- `A349432(n+1)-A349433(n+1)` -/
def P13620032615057227601.Spec : Prop :=
  ∀ n, P13620032615057227601.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P5194064380736985520

`A033999(n)*A349431(2*(n+1))`
-/

namespace A297381.P5194064380736985520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A349431 (2 * (n + 1))

end

end A297381.P5194064380736985520

namespace A297381

/-- `A033999(n)*A349431(2*(n+1))` -/
def P5194064380736985520.Spec : Prop :=
  ∀ n, P5194064380736985520.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P10846446253698020503

`A023900(n+1)/(A209229(n+1)-2)`
-/

namespace A297381.P10846446253698020503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A209229 (n + 1) - 2 : ℚ)

end

end A297381.P10846446253698020503

namespace A297381

/-- `A023900(n+1)/(A209229(n+1)-2)` -/
def P10846446253698020503.Spec : Prop :=
  ∀ n, P10846446253698020503.a n = (A297381 (n + 1) : ℚ)

end A297381

/-! ## A297381.P2373515693872388508

`A023900(n+1)/(A297382(n+1)-3)`
-/

namespace A297381.P2373515693872388508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A297382 (n + 1) - 3 : ℚ)

end

end A297381.P2373515693872388508

namespace A297381

/-- `A023900(n+1)/(A297382(n+1)-3)` -/
def P2373515693872388508.Spec : Prop :=
  ∀ n, P2373515693872388508.a n = (A297381 (n + 1) : ℚ)

end A297381

/-! ## A297381.P7743592435995350171

`A004526(n+1)-A004526(A023900(n+1)+n+1)`
-/

namespace A297381.P7743592435995350171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A004526 (A023900 (n + 1) + (n + 1 : ℤ)).toNat

end

end A297381.P7743592435995350171

namespace A297381

/-- `A004526(n+1)-A004526(A023900(n+1)+n+1)` -/
def P7743592435995350171.Spec : Prop :=
  ∀ n, P7743592435995350171.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P7865739291773944484

`A123108(n+1)-A123108(A023900(n+1)+n+1)`
-/

namespace A297381.P7865739291773944484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) - A123108 (A023900 (n + 1) + (n + 1 : ℤ)).toNat

end

end A297381.P7865739291773944484

namespace A297381

/-- `A123108(n+1)-A123108(A023900(n+1)+n+1)` -/
def P7865739291773944484.Spec : Prop :=
  ∀ n, P7865739291773944484.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P11614763108359199799

`A349431(A161150(n+1))`
-/

namespace A297381.P11614763108359199799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (A161150 (n + 1)).toNat

end

end A297381.P11614763108359199799

namespace A297381

/-- `A349431(A161150(n+1))` -/
def P11614763108359199799.Spec : Prop :=
  ∀ n, P11614763108359199799.a n = A297381 (n + 1)

end A297381

/-!
# A297382: Denominator of -A023900(n)/2.

The programs for A297382, the canonical program `A297382.P17234500139329436849` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297382 has offset 1).

The definition of A297382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297382.P17234500139329436849

`1+A209229(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A297382

/-- `1+A209229(n+1)` -/
def P17234500139329436849.Spec : Prop :=
  ∀ n, P17234500139329436849.a n = A297382 (n + 1)

theorem P17234500139329436849.correct : P17234500139329436849.Spec := by
  intro n
  simp only [A297382, Nat.add_sub_cancel]

end A297382

/-! ## A297382.P8098724450081881212

`A014963(2*(n+1))`
-/

namespace A297382.P8098724450081881212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

end

end A297382.P8098724450081881212

namespace A297382

/-- `A014963(2*(n+1))` -/
def P8098724450081881212.Spec : Prop :=
  ∀ n, P8098724450081881212.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P17683310063867629314

`ratio[fp[and(n, -n)]]`
-/

namespace A297382.P17683310063867629314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A297382.P17683310063867629314

namespace A297382

/-- `ratio[fp[and(n, -n)]]` -/
def P17683310063867629314.Spec : Prop :=
  ∀ n, P17683310063867629314.a n = (A297382 (n + 1) : ℚ)

end A297382

/-! ## A297382.P2853023706442874726

`Δ[fp[2^n]]+1`
-/

namespace A297382.P2853023706442874726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A297382.P2853023706442874726

namespace A297382

/-- `Δ[fp[2^n]]+1` -/
def P2853023706442874726.Spec : Prop :=
  ∀ n, P2853023706442874726.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P10820174409396157568

`2^Δ[fp[2^n]]`
-/

namespace A297382.P10820174409396157568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A297382.P10820174409396157568

namespace A297382

/-- `2^Δ[fp[2^n]]` -/
def P10820174409396157568.Spec : Prop :=
  ∀ n, P10820174409396157568.a n = (A297382 (n + 1) : ℚ)

end A297382

/-! ## A297382.P6817327992762374172

`ratio[2^fp[2^n]]`
-/

namespace A297382.P6817327992762374172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A297382.P6817327992762374172

namespace A297382

/-- `ratio[2^fp[2^n]]` -/
def P6817327992762374172.Spec : Prop :=
  ∀ n, P6817327992762374172.a n = (A297382 (n + 1) : ℚ)

end A297382

/-! ## A297382.P17858639692969871129

`Δ[comp[2^n+n]]`
-/

namespace A297382.P17858639692969871129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A297382.P17858639692969871129

namespace A297382

/-- `Δ[comp[2^n+n]]` -/
def P17858639692969871129.Spec : Prop :=
  ∀ n, P17858639692969871129.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P14309392078142591975

`ceil(acot(and(n, n+1)))`
-/

namespace A297382.P14309392078142591975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (Nat.land n (n + 1) : ℝ)⌉

end

end A297382.P14309392078142591975

namespace A297382

/-- `ceil(acot(and(n, n+1)))` -/
def P14309392078142591975.Spec : Prop :=
  ∀ n, P14309392078142591975.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P6847092639358999823

`C(2, Δ[ceil(log2(1+n))])`
-/

namespace A297382.P6847092639358999823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (1 + n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A297382.P6847092639358999823

namespace A297382

/-- `C(2, Δ[ceil(log2(1+n))])` -/
def P6847092639358999823.Spec : Prop :=
  ∀ n, (P6847092639358999823.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P17369864861592125348

`round(acot(and(n, n+1)))!`
-/

namespace A297382.P17369864861592125348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.land n (n + 1) : ℝ))).toNat

end

end A297382.P17369864861592125348

namespace A297382

/-- `round(acot(and(n, n+1)))!` -/
def P17369864861592125348.Spec : Prop :=
  ∀ n, (P17369864861592125348.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P6641027466258839643

`round(exp(acot(∏{p}[n+1, #])))`
-/

namespace A297382.P6641027466258839643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)))

end

end A297382.P6641027466258839643

namespace A297382

/-- `round(exp(acot(∏{p}[n+1, #])))` -/
def P6641027466258839643.Spec : Prop :=
  ∀ n, P6641027466258839643.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P9864814627790494320

`floor(cosh(acot(and(n, n+1))))`
-/

namespace A297382.P9864814627790494320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (SequenceMachineLib.acot (Nat.land n (n + 1) : ℝ))⌋

end

end A297382.P9864814627790494320

namespace A297382

/-- `floor(cosh(acot(and(n, n+1))))` -/
def P9864814627790494320.Spec : Prop :=
  ∀ n, P9864814627790494320.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P2698764502013312732

`round(acot(atan(and(n, n+1))))`
-/

namespace A297382.P2698764502013312732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Real.arctan (Nat.land n (n + 1) : ℝ)))

end

end A297382.P2698764502013312732

namespace A297382

/-- `round(acot(atan(and(n, n+1))))` -/
def P2698764502013312732.Spec : Prop :=
  ∀ n, P2698764502013312732.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P5649107057736664317

`∏{p}[n+1, val(#, 2)]+1`
-/

namespace A297382.P5649107057736664317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 + 1

end

end A297382.P5649107057736664317

namespace A297382

/-- `∏{p}[n+1, val(#, 2)]+1` -/
def P5649107057736664317.Spec : Prop :=
  ∀ n, (P5649107057736664317.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P3253480239027078040

`C(2, ∑{p}[n+1, #])+1`
-/

namespace A297382.P3253480239027078040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A297382.P3253480239027078040

namespace A297382

/-- `C(2, ∑{p}[n+1, #])+1` -/
def P3253480239027078040.Spec : Prop :=
  ∀ n, (P3253480239027078040.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P13397600520992096449

`∏{p}[n+1, C(2, #)]+1`
-/

namespace A297382.P13397600520992096449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p + 1

end

end A297382.P13397600520992096449

namespace A297382

/-- `∏{p}[n+1, C(2, #)]+1` -/
def P13397600520992096449.Spec : Prop :=
  ∀ n, (P13397600520992096449.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P3503514728157823507

`C(2, and(n, n+1)²)+1`
-/

namespace A297382.P3503514728157823507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (n + 1) ^ 2) + 1

end

end A297382.P3503514728157823507

namespace A297382

/-- `C(2, and(n, n+1)²)+1` -/
def P3503514728157823507.Spec : Prop :=
  ∀ n, (P3503514728157823507.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P265253310673079513

`ceil(2/(and(n, n+1)+1))`
-/

namespace A297382.P265253310673079513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (Nat.land n (n + 1) + 1 : ℚ)⌉

end

end A297382.P265253310673079513

namespace A297382

/-- `ceil(2/(and(n, n+1)+1))` -/
def P265253310673079513.Spec : Prop :=
  ∀ n, P265253310673079513.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P2723071955955368749

`ceil(2^(1-and(n, n+1)))`
-/

namespace A297382.P2723071955955368749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (1 - (Nat.land n (n + 1) : ℤ) : ℤ)⌉

end

end A297382.P2723071955955368749

namespace A297382

/-- `ceil(2^(1-and(n, n+1)))` -/
def P2723071955955368749.Spec : Prop :=
  ∀ n, P2723071955955368749.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P6545478760219785419

`C(2, and(n, n+1)+1)!`
-/

namespace A297382.P6545478760219785419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (Nat.land n (n + 1) + 1))

end

end A297382.P6545478760219785419

namespace A297382

/-- `C(2, and(n, n+1)+1)!` -/
def P6545478760219785419.Spec : Prop :=
  ∀ n, (P6545478760219785419.a n : ℤ) = A297382 (n + 1)

end A297382

/-!
# A297384: Number of Eulerian cycles in the n-antiprism graph.

The programs for A297384, the canonical program `A297384.P12971683271013436262` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297384 has offset 1).

The definition of A297384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297384.P10446228101252758987

`ogf((4-8x-8x^2)/(1-13x+48x^2-52x^3+16x^4))`
-/

namespace A297384.P10446228101252758987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8, -8] [1, -13, 48, -52, 16] n

end

end A297384.P10446228101252758987

namespace A297384

/-- `ogf((4-8x-8x^2)/(1-13x+48x^2-52x^3+16x^4))` -/
def P10446228101252758987.Spec : Prop :=
  ∀ n, P10446228101252758987.a n = A297384 (n + 1)

end A297384

/-! ## A297384.P12971683271013436262

`2^(n+1)*A003500(n+1)-2/3*(2+4^(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A297384

/-- `2^(n+1)*A003500(n+1)-2/3*(2+4^(n+1))` -/
def P12971683271013436262.Spec : Prop :=
  ∀ n, P12971683271013436262.a n = (A297384 (n + 1) : ℚ)

end A297384

/-! ## A297384.P15101918690716605914

`A080040(2*(n+1))-record[4-a(n-1)-a(n-1)]` with `a(0)=4`
-/

namespace A297384.P15101918690716605914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297384.P15101918690716605914

namespace A297384

/-- `A080040(2*(n+1))-record[4-a(n-1)-a(n-1)]` -/
def P15101918690716605914.Spec : Prop :=
  ∀ n, P15101918690716605914.a n = A297384 (n + 1)

end A297384

/-! ## A297384.P15937066140008646388

`A080040(2*(n+1))-record[A084247(n+3)]`
-/

namespace A297384.P15937066140008646388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297384.P15937066140008646388

namespace A297384

/-- `A080040(2*(n+1))-record[A084247(n+3)]` -/
def P15937066140008646388.Spec : Prop :=
  ∀ n, P15937066140008646388.a n = A297384 (n + 1)

end A297384

/-! ## A297384.P11673193323516493085

`∑[A083337(2*(n+1))-2*A000079(n)²]`
-/

namespace A297384.P11673193323516493085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (2 * (n + 1)) - 2 * A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297384.P11673193323516493085

namespace A297384

/-- `∑[A083337(2*(n+1))-2*A000079(n)²]` -/
def P11673193323516493085.Spec : Prop :=
  ∀ n, P11673193323516493085.a n = A297384 (n + 1)

end A297384

/-! ## A297384.P6215552368991694195

`∑[A083337(2*(n+1))-A000079(2*n+1)]`
-/

namespace A297384.P6215552368991694195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (2 * (n + 1)) - A000079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297384.P6215552368991694195

namespace A297384

/-- `∑[A083337(2*(n+1))-A000079(2*n+1)]` -/
def P6215552368991694195.Spec : Prop :=
  ∀ n, P6215552368991694195.a n = A297384 (n + 1)

end A297384

/-!
# A297385: Number of Eulerian cycles in the n X n torus grid graph.

The programs for A297385, there is no canonical definition to state claims against.
-/

/-! ## A297385.P3114077223822599267

`A298117((n+1)²+n²)`
-/

namespace A297385.P3114077223822599267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298117 ((n + 1) ^ 2 + n ^ 2)

end

end A297385.P3114077223822599267

/-! ## A297385.P9070851182530841250

`record[A003982(n)*A298117(n+1)]`
-/

namespace A297385.P9070851182530841250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297385.P9070851182530841250

/-!
# A297388: Number of pairs (p,q) of partitions such that q is a partition of n and p <= q (diagram containment).

The programs for A297388, there is no canonical definition to state claims against.
-/

/-! ## A297388.P4742474663052151627

`A000041(n)+∑{#}[n-1, A259478(C(n, 2)+#+1)]`
-/

namespace A297388.P4742474663052151627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + ∑ k ∈ Finset.range (f1 n + 1).toNat, A259478 (Nat.choose n 2 + (k + 1))

end

end A297388.P4742474663052151627

/-! ## A297388.P997089208910286362

`∑[A213368(n+1)]-A249068(n)`
-/

namespace A297388.P997089208910286362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A249068 n

end

end A297388.P997089208910286362

/-!
# A297389: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297389, there is no canonical definition to state claims against.
-/

/-! ## A297389.P5143818550310979281

`A297395(∑[4*n]+1)`
-/

namespace A297389.P5143818550310979281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297389.P5143818550310979281

/-! ## A297389.P4222983409805697047

`record[A003982(n)*A297395(n+1)]`
-/

namespace A297389.P4222983409805697047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297389.P4222983409805697047

/-! ## A297389.P5472085489132467939

`record[gcd(A114327(n), A297395(n+1))]`
-/

namespace A297389.P5472085489132467939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297389.P5472085489132467939

/-!
# A297390: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297390, the canonical program `A297390.P5300710697734047341` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297390 has offset 1).

The definition of A297390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297390.P17823271164435185681

`ogf((3+6x-2x^2-4x^3)/(1-x-4x^2-2x^3+4x^4))`
-/

namespace A297390.P17823271164435185681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -2, -4] [1, -1, -4, -2, 4] n

end

end A297390.P17823271164435185681

namespace A297390

/-- `ogf((3+6x-2x^2-4x^3)/(1-x-4x^2-2x^3+4x^4))` -/
def P17823271164435185681.Spec : Prop :=
  ∀ n, P17823271164435185681.a n = A297390 (n + 1)

end A297390

/-! ## A297390.P5300710697734047341

`a(n-1)+4*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=3, a(1)=9, a(2)=19, a(3)=57`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297390

/-- `a(n-1)+4*a(n-2)+2*a(n-3)-4*a(n-4)` -/
def P5300710697734047341.Spec : Prop :=
  ∀ n, P5300710697734047341.a n = A297390 (n + 1)

theorem P5300710697734047341.correct : P5300710697734047341.Spec := by
  intro n
  simp only [A297390, Nat.add_sub_cancel]

end A297390

/-! ## A297390.P15423703272634033717

`A297395(∑[n+3]+1)`
-/

namespace A297390.P15423703272634033717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297390.P15423703272634033717

namespace A297390

/-- `A297395(∑[n+3]+1)` -/
def P15423703272634033717.Spec : Prop :=
  ∀ n, P15423703272634033717.a n = A297390 (n + 1)

end A297390

/-!
# A297391: Number of n X 4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297391, the canonical program `A297391.P11773225013895845879` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297391 has offset 1).

The definition of A297391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297391.P11773225013895845879

`ogf((4+9x-5x^3-3x^4-3x^5-x^6)/(1-x-6x^2-4x^3+3x^4+x^5+2x^6+x^7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297391

/-- `ogf((4+9x-5x^3-3x^4-3x^5-x^6)/(1-x-6x^2-4x^3+3x^4+x^5+2x^6+x^7))` -/
def P11773225013895845879.Spec : Prop :=
  ∀ n, P11773225013895845879.a n = A297391 (n + 1)

theorem P11773225013895845879.correct : P11773225013895845879.Spec := by
  intro n
  simp only [A297391, Nat.add_sub_cancel]

end A297391

/-! ## A297391.P5279503775078389308

`A297395(A141214(n+1))`
-/

namespace A297391.P5279503775078389308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A141214 (n + 1)).toNat

end

end A297391.P5279503775078389308

namespace A297391

/-- `A297395(A141214(n+1))` -/
def P5279503775078389308.Spec : Prop :=
  ∀ n, P5279503775078389308.a n = A297391 (n + 1)

end A297391

/-!
# A297392: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297392, there is no canonical definition to state claims against.
-/

/-! ## A297392.P8490953403659734845

`A297395(A046691(n+3))`
-/

namespace A297392.P8490953403659734845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A046691 (n + 3)).toNat

end

end A297392.P8490953403659734845

/-!
# A297393: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297393, there is no canonical definition to state claims against.
-/

/-! ## A297393.P17577722089152298156

`A297395(A052905(n+3))`
-/

namespace A297393.P17577722089152298156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A052905 (n + 3)).toNat

end

end A297393.P17577722089152298156

/-!
# A297394: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297394, there is no canonical definition to state claims against.
-/

/-! ## A297394.P7757222497919419630

`A297395(eq[4, A219347(n)])`
-/

namespace A297394.P7757222497919419630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297394.P7757222497919419630

/-!
# A297395: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297395, there is no canonical definition to state claims against.
-/

/-! ## A297395.P18227369286985417037

`A297595(n+1)-A115859(A331315(n))`
-/

namespace A297395.P18227369286985417037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (n + 1) - A115859 (A331315 n).toNat

end

end A297395.P18227369286985417037

/-! ## A297395.P3795222184627138123

`xor(A297595(n+1), A336551(A072025(n)))`
-/

namespace A297395.P3795222184627138123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297595 (n + 1)) (A336551 (A072025 n).toNat)

end

end A297395.P3795222184627138123

/-! ## A297395.P7541188173935826285

`A297595(n+1)-A242444(A284289(n)!)`
-/

namespace A297395.P7541188173935826285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (n + 1) - A242444 (Nat.factorial (A284289 n).toNat)

end

end A297395.P7541188173935826285

/-! ## A297395.P1284078517007645741

`A297595(n+1)-A349797(A000607(2*(n+1)))`
-/

namespace A297395.P1284078517007645741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (n + 1) - A349797 (A000607 (2 * (n + 1))).toNat

end

end A297395.P1284078517007645741

/-! ## A297395.P12274872300235835911

`A297595(n+1)-A336551(A078679(n))`
-/

namespace A297395.P12274872300235835911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (n + 1) - A336551 (A078679 n).toNat

end

end A297395.P12274872300235835911

/-!
# A297396: Number of 3 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297396, the canonical program `A297396.P7355173798773222102` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297396 has offset 1).

The definition of A297396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297396.P3327528824288904916

`ogf((1+8x+9x^2+x^3-2x^4-2x^5)/(1-x-x^2-8x^3-x^4+2x^6))`
-/

namespace A297396.P3327528824288904916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 9, 1, -2, -2] [1, -1, -1, -8, -1, 0, 2] n

end

end A297396.P3327528824288904916

namespace A297396

/-- `ogf((1+8x+9x^2+x^3-2x^4-2x^5)/(1-x-x^2-8x^3-x^4+2x^6))` -/
def P3327528824288904916.Spec : Prop :=
  ∀ n, P3327528824288904916.a n = A297396 (n + 1)

end A297396

/-! ## A297396.P7355173798773222102

`a(n-1)+a(n-2)+8*a(n-3)+a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=9, a(2)=19, a(3)=37, a(4)=127, a(5)=323`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297396

/-- `a(n-1)+a(n-2)+8*a(n-3)+a(n-4)-2*a(n-6)` -/
def P7355173798773222102.Spec : Prop :=
  ∀ n, P7355173798773222102.a n = A297396 (n + 1)

theorem P7355173798773222102.correct : P7355173798773222102.Spec := by
  intro n
  simp only [A297396, Nat.add_sub_cancel]

end A297396

/-! ## A297396.P14891575671750148736

`A297395(∑[n+2]+4)`
-/

namespace A297396.P14891575671750148736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297396.P14891575671750148736

namespace A297396

/-- `A297395(∑[n+2]+4)` -/
def P14891575671750148736.Spec : Prop :=
  ∀ n, P14891575671750148736.a n = A297396 (n + 1)

end A297396

/-!
# A297397: Number of 4 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297397, the canonical program `A297397.P17117091535792830034` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297397 has offset 1).

The definition of A297397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297397.P17117091535792830034

`ogf((1+19x+34x^2-15x^3-88x^4-76x^5-54x^6-45x^7)/(1-x-3x^2-24x^3-11x^4+21x^5+67x^6+9x^7+45x^8))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297397

/-- `ogf((1+19x+34x^2-15x^3-88x^4-76x^5-54x^6-45x^7)/(1-x-3x^2-24x^3-11x^4+21x^5+67x^6+9x^7+45x^8))` -/
def P17117091535792830034.Spec : Prop :=
  ∀ n, P17117091535792830034.a n = A297397 (n + 1)

theorem P17117091535792830034.correct : P17117091535792830034.Spec := by
  intro n
  simp only [A297397, Nat.add_sub_cancel]

end A297397

/-! ## A297397.P992865593366400370

`A297395(∑[n+3]+7)`
-/

namespace A297397.P992865593366400370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297397.P992865593366400370

namespace A297397

/-- `A297395(∑[n+3]+7)` -/
def P992865593366400370.Spec : Prop :=
  ∀ n, P992865593366400370.a n = A297397 (n + 1)

end A297397

/-!
# A297398: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297398, there is no canonical definition to state claims against.
-/

/-! ## A297398.P7530905910457752626

`A297395(A000217(n+4)+5)`
-/

namespace A297398.P7530905910457752626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A000217 (n + 4) + 5).toNat

end

end A297398.P7530905910457752626

/-!
# A297399: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297399, there is no canonical definition to state claims against.
-/

/-! ## A297399.P4260741270799814942

`A297395(A166136(n+4))`
-/

namespace A297399.P4260741270799814942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A166136 (n + 4)).toNat

end

end A297399.P4260741270799814942

