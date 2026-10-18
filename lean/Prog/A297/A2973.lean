import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024

/-!
# A297300: Number of 3 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297300, the canonical program `A297300.P4164233092792581426` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297300 has offset 1).

The definition of A297300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297300.P4164233092792581426

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=9, a(5)=17`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A297300.P429151459644432070

`or(char[1], A297299(A167614(n+1)))`
-/

namespace A297300.P429151459644432070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297299 (A167614 (n + 1)).toNat)

end

end A297300.P429151459644432070

namespace A297300

/-- `or(char[1], A297299(A167614(n+1)))` -/
def P429151459644432070.Spec : Prop :=
  ∀ n, P429151459644432070.a n = A297300 (n + 1)

end A297300

/-! ## A297300.P15533341198270700625

`A297299(A167614(n+1))%A002063(n)`
-/

namespace A297300.P15533341198270700625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297299 (A167614 (n + 1)).toNat) (A002063 n)

end

end A297300.P15533341198270700625

namespace A297300

/-- `A297299(A167614(n+1))%A002063(n)` -/
def P15533341198270700625.Spec : Prop :=
  ∀ n, P15533341198270700625.a n = A297300 (n + 1)

end A297300

/-! ## A297300.P6818803605883165168

`gcd(A151933(n), A297299(A167614(n+1)))`
-/

namespace A297300.P6818803605883165168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A297299 (A167614 (n + 1)).toNat)

end

end A297300.P6818803605883165168

namespace A297300

/-- `gcd(A151933(n), A297299(A167614(n+1)))` -/
def P6818803605883165168.Spec : Prop :=
  ∀ n, (P6818803605883165168.a n : ℤ) = A297300 (n + 1)

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

/-! ## A297301.P16925655897506979994

`A297299(A167614(n+2)+1)`
-/

namespace A297301.P16925655897506979994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A167614 (n + 2) + 1).toNat

end

end A297301.P16925655897506979994

/-! ## A297301.P326176711607294408

`A297299(A167499(n+2)-1)`
-/

namespace A297301.P326176711607294408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A167499 (n + 2) - 1).toNat

end

end A297301.P326176711607294408

/-! ## A297301.P10910489945643464664

`A297299(A133263(n+3)+2)`
-/

namespace A297301.P10910489945643464664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A133263 (n + 3) + 2).toNat

end

end A297301.P10910489945643464664

/-! ## A297301.P15455507995842057670

`A297299(A166136(n+2)-2)`
-/

namespace A297301.P15455507995842057670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A166136 (n + 2) - 2).toNat

end

end A297301.P15455507995842057670

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

/-! ## A297302.P924260161881215359

`A297299(A155212(n)+13)`
-/

namespace A297302.P924260161881215359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A155212 n + 13).toNat

end

end A297302.P924260161881215359

/-! ## A297302.P12007644764976633958

`A297299(A056000(n)+15)`
-/

namespace A297302.P12007644764976633958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A056000 n + 15).toNat

end

end A297302.P12007644764976633958

/-! ## A297302.P5903159877053395543

`A297299(A055998(n+2)+8)`
-/

namespace A297302.P5903159877053395543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A055998 (n + 2) + 8).toNat

end

end A297302.P5903159877053395543

/-! ## A297302.P15742539481351084275

`A297299(A000096(n+4)-(n-1))`
-/

namespace A297302.P15742539481351084275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A297302.P15742539481351084275

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

/-! ## A297303.P18410142912762124984

`A297299(A000096(n+4)+7)`
-/

namespace A297303.P18410142912762124984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A000096 (n + 4) + 7).toNat

end

end A297303.P18410142912762124984

/-! ## A297303.P390250735831280661

`A297299(A000217(n+5)+6)`
-/

namespace A297303.P390250735831280661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A000217 (n + 5) + 6).toNat

end

end A297303.P390250735831280661

/-! ## A297303.P17482337443551089138

`A297299(A166136(A020705(n)))`
-/

namespace A297303.P17482337443551089138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A166136 (A020705 n).toNat).toNat

end

end A297303.P17482337443551089138

/-! ## A297303.P11057753588441202221

`A297299(A055998(n+5)-A005843(n+2))`
-/

namespace A297303.P11057753588441202221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A055998 (n + 5) - A005843 (n + 2)).toNat

end

end A297303.P11057753588441202221

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

/-! ## A297304.P12467084106439551237

`A297299(A000217(n+6)+7)`
-/

namespace A297304.P12467084106439551237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A000217 (n + 6) + 7).toNat

end

end A297304.P12467084106439551237

/-! ## A297304.P15568025575401327235

`A297299(A027379(n+4)+10)`
-/

namespace A297304.P15568025575401327235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A027379 (n + 4) + 10).toNat

end

end A297304.P15568025575401327235

/-! ## A297304.P8263735509046787878

`A297299(A055998(n+4)+10)`
-/

namespace A297304.P8263735509046787878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A055998 (n + 4) + 10).toNat

end

end A297304.P8263735509046787878

/-! ## A297304.P9420467837107942107

`A297299(A000124(n+9)-A008585(n+6))`
-/

namespace A297304.P9420467837107942107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A000124 (n + 9) - A008585 (n + 6)).toNat

end

end A297304.P9420467837107942107

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

/-! ## A297305.P11626678354224686570

`eq[5, A161884(A233583(n+1))]`
-/

namespace A297305.P11626678354224686570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161884 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297305.P11626678354224686570

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

/-! ## A297308.P18254311610684630700

`or(A151671(n), A297314(A001844(n)))`
-/

namespace A297308.P18254311610684630700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151671 n) (A297314 (A001844 n).toNat)

end

end A297308.P18254311610684630700

/-! ## A297308.P13720504183525475664

`A297314(A001844(n))+A034507(n+1)`
-/

namespace A297308.P13720504183525475664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A001844 n).toNat + A034507 (n + 1)

end

end A297308.P13720504183525475664

/-! ## A297308.P9339144989701873365

`A007318(C(3, n))*A297314(A001844(n))`
-/

namespace A297308.P9339144989701873365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A297314 (A001844 n).toNat

end

end A297308.P9339144989701873365

/-! ## A297308.P13924481366748307332

`A297314(A001844(n))/A001222(A089793(n))`
-/

namespace A297308.P13924481366748307332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297314 (A001844 n).toNat : ℚ) / (A001222 (A089793 n).toNat : ℚ)

end

end A297308.P13924481366748307332

/-!
# A297309: Number of n X 3 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297309, the canonical program `A297309.P14565988723638847964` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297309 has offset 1).

The definition of A297309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297309.P14565988723638847964

`3*a(n-1)+11*a(n-2)+3*a(n-3)-6*a(n-4)` with `a(0)=4, a(1)=23, a(2)=117, a(3)=609`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A297309.P2101036704466256381

`A297314(A034856(n+2))%A016093(n+1)`
-/

namespace A297309.P2101036704466256381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297314 (A034856 (n + 2)).toNat) (A016093 (n + 1))

end

end A297309.P2101036704466256381

namespace A297309

/-- `A297314(A034856(n+2))%A016093(n+1)` -/
def P2101036704466256381.Spec : Prop :=
  ∀ n, P2101036704466256381.a n = A297309 (n + 1)

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

The programs for A297310, there is no canonical definition to state claims against.
-/

/-! ## A297310.P1009100503446715006

`A297314(A141214(n+1))`
-/

namespace A297310.P1009100503446715006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A141214 (n + 1)).toNat

end

end A297310.P1009100503446715006

/-! ## A297310.P17895637796169996191

`A297314(A155212(n)+5)`
-/

namespace A297310.P17895637796169996191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A155212 n + 5).toNat

end

end A297310.P17895637796169996191

/-! ## A297310.P9189847903631882011

`A297314(A056000(n)+7)`
-/

namespace A297310.P9189847903631882011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A056000 n + 7).toNat

end

end A297310.P9189847903631882011

/-! ## A297310.P9750680760977412857

`A297314(eq[3, A193592(n)])`
-/

namespace A297310.P9750680760977412857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297310.P9750680760977412857

/-! ## A297310.P14476626654578425199

`A297314(A052905(n+1)+2)`
-/

namespace A297310.P14476626654578425199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A052905 (n + 1) + 2).toNat

end

end A297310.P14476626654578425199

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

/-! ## A297312.P11982880055697650614

`A297314(eq[3, A219347(n)])`
-/

namespace A297312.P11982880055697650614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297312.P11982880055697650614

/-! ## A297312.P2818576994351368626

`A297314(eq[5, A193592(n)])`
-/

namespace A297312.P2818576994351368626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297312.P2818576994351368626

/-! ## A297312.P16273157316271206088

`A297314(eq[8, A185782(n+1)])`
-/

namespace A297312.P16273157316271206088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297312.P16273157316271206088

/-! ## A297312.P900034072945155806

`A297314(eq[16, A057728(n+1)])`
-/

namespace A297312.P900034072945155806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297312.P900034072945155806

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

/-! ## A297313.P18392653326082599065

`A297314(eq[6, A193592(n)])`
-/

namespace A297313.P18392653326082599065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297313.P18392653326082599065

/-! ## A297313.P16070998141165387619

`A297314(eq[6, A025581(n)]+1)`
-/

namespace A297313.P16070998141165387619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297313.P16070998141165387619

/-! ## A297313.P3016663222718831149

`A297314(eq[10, A185782(n+1)])`
-/

namespace A297313.P3016663222718831149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297313.P3016663222718831149

/-! ## A297313.P4760256747529579643

`A297314(eq[7, A200370(n+1)])`
-/

namespace A297313.P4760256747529579643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297313.P4760256747529579643

/-!
# A297315: Number of 2 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297315, there is no canonical definition to state claims against.
-/

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

/-! ## A297315.P14235494152332853540

`record[A133566(n+1)*A297314(n+3)]`
-/

namespace A297315.P14235494152332853540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133566 (n + 1) * A297314 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297315.P14235494152332853540

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

/-! ## A297316.P6350848591086098846

`or(char[2], A297314(A167614(n+1)))`
-/

namespace A297316.P6350848591086098846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297314 (A167614 (n + 1)).toNat)

end

end A297316.P6350848591086098846

/-! ## A297316.P17314331966634429246

`A297314(A167614(n+1))+A025466(n)`
-/

namespace A297316.P17314331966634429246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A167614 (n + 1)).toNat + A025466 n

end

end A297316.P17314331966634429246

/-! ## A297316.P7820860131831476130

`A297314(A167614(n+1))*A304042(n)`
-/

namespace A297316.P7820860131831476130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A167614 (n + 1)).toNat * A304042 n

end

end A297316.P7820860131831476130

/-! ## A297316.P13647040609458629657

`gcd(A000038(n), A297314(A167614(n+1)))`
-/

namespace A297316.P13647040609458629657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297314 (A167614 (n + 1)).toNat)

end

end A297316.P13647040609458629657

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

/-! ## A297317.P16723933414733373455

`A297314(A052905(n)+9)`
-/

namespace A297317.P16723933414733373455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A052905 n + 9).toNat

end

end A297317.P16723933414733373455

/-! ## A297317.P8342208641180641954

`A297314(A055999(n)+10)`
-/

namespace A297317.P8342208641180641954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A055999 n + 10).toNat

end

end A297317.P8342208641180641954

/-! ## A297317.P6183122568276296752

`A297314(A167614(n+2)+1)`
-/

namespace A297317.P6183122568276296752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A167614 (n + 2) + 1).toNat

end

end A297317.P6183122568276296752

/-! ## A297317.P1575053740342143590

`A297314(eq[5, A131818(n+1)])`
-/

namespace A297317.P1575053740342143590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297317.P1575053740342143590

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

/-! ## A297318.P1800632756376492639

`A297314(A056000(n)+15)`
-/

namespace A297318.P1800632756376492639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A056000 n + 15).toNat

end

end A297318.P1800632756376492639

/-! ## A297318.P7469294811452931438

`A297314(eq[7, A066657(n)])`
-/

namespace A297318.P7469294811452931438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297318.P7469294811452931438

/-! ## A297318.P7588753197331517510

`A297314(A052905(n+1)+10)`
-/

namespace A297318.P7588753197331517510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A052905 (n + 1) + 10).toNat

end

end A297318.P7588753197331517510

/-! ## A297318.P1262125448483312431

`A297314(eq[6, A131818(n+1)])`
-/

namespace A297318.P1262125448483312431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297318.P1262125448483312431

/-!
# A297319: Number of 6Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A297319, there is no canonical definition to state claims against.
-/

/-! ## A297319.P1545003652764048206

`A297314(A056115(n)+21)`
-/

namespace A297319.P1545003652764048206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A056115 n + 21).toNat

end

end A297319.P1545003652764048206

/-! ## A297319.P9473657064959264009

`A297314(A167499(n+4)+1)`
-/

namespace A297319.P9473657064959264009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A167499 (n + 4) + 1).toNat

end

end A297319.P9473657064959264009

/-! ## A297319.P10000310146784923442

`A297314(A000217(n+5)+6)`
-/

namespace A297319.P10000310146784923442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A000217 (n + 5) + 6).toNat

end

end A297319.P10000310146784923442

/-! ## A297319.P7840726272520450813

`A297314(eq[6, A130270(n+1)])`
-/

namespace A297319.P7840726272520450813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297319.P7840726272520450813

/-! ## A297319.P17080135852307765948

`A297314(eq[7, A131818(n+1)])`
-/

namespace A297319.P17080135852307765948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297319.P17080135852307765948

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

/-! ## A297320.P15199841961388482625

`A297314(A167499(n+5)+2)`
-/

namespace A297320.P15199841961388482625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A167499 (n + 5) + 2).toNat

end

end A297320.P15199841961388482625

/-! ## A297320.P10302107645739398198

`A297314(A000124(n+6)+6)`
-/

namespace A297320.P10302107645739398198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A000124 (n + 6) + 6).toNat

end

end A297320.P10302107645739398198

/-! ## A297320.P14059024471890903255

`A297314(A155212(n+2)+15)`
-/

namespace A297320.P14059024471890903255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (A155212 (n + 2) + 15).toNat

end

end A297320.P14059024471890903255

/-! ## A297320.P17985088822200354090

`A297314(eq[8, A131818(n+1)])`
-/

namespace A297320.P17985088822200354090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297320.P17985088822200354090

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

/-! ## A297322.P10655364561802208779

`or(char[1], A297321(A046092(n)))`
-/

namespace A297322.P10655364561802208779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297321 (A046092 n).toNat)

end

end A297322.P10655364561802208779

/-! ## A297322.P11781279761939417037

`A297321(A046092(n))^A178334(n)`
-/

namespace A297322.P11781279761939417037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297321 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A297322.P11781279761939417037

/-! ## A297322.P16940131142280601865

`A297321(A046092(n))^A178489(n)`
-/

namespace A297322.P16940131142280601865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297321 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A297322.P16940131142280601865

/-! ## A297322.P17634415793372276641

`gcd(A151878(n), A297321(A046092(n)))`
-/

namespace A297322.P17634415793372276641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A297321 (A046092 n).toNat)

end

end A297322.P17634415793372276641

/-! ## A297322.P1484168210974214015

`A297321(A046092(n))^A000038(n)!`
-/

namespace A297322.P1484168210974214015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A046092 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A297322.P1484168210974214015

/-! ## A297322.P13483201291722090077

`A297321(A046092(n))%(2*A179237(n))`
-/

namespace A297322.P13483201291722090077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297321 (A046092 n).toNat) (2 * A179237 n)

end

end A297322.P13483201291722090077

/-! ## A297322.P8595465274771688245

`A002828(A016754(n))*A297321(A046092(n))`
-/

namespace A297322.P8595465274771688245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A016754 n).toNat * A297321 (A046092 n).toNat

end

end A297322.P8595465274771688245

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

/-! ## A297326.P1854499476989102718

`A297325(A046092(n))^A178334(n)`
-/

namespace A297326.P1854499476989102718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297325 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A297326.P1854499476989102718

/-! ## A297326.P17071615153607859815

`or(A000007(n), A297325(A046092(n)))`
-/

namespace A297326.P17071615153607859815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297325 (A046092 n).toNat)

end

end A297326.P17071615153607859815

/-! ## A297326.P9708512497908527585

`A297325(A046092(n))%A002203(n)²`
-/

namespace A297326.P9708512497908527585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297325 (A046092 n).toNat) (A002203 n ^ 2)

end

end A297326.P9708512497908527585

/-! ## A297326.P18050400920817234598

`A297325(A046092(n))^A000038(n)!`
-/

namespace A297326.P18050400920817234598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A046092 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A297326.P18050400920817234598

/-! ## A297326.P14954911692804281847

`A297325(A046092(n))+A091069(8*n+4)`
-/

namespace A297326.P14954911692804281847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A046092 n).toNat + A091069 (8 * n + 4)

end

end A297326.P14954911692804281847

/-! ## A297326.P17131440500009291955

`A297325(A046092(n))+A121455(8*n+4)`
-/

namespace A297326.P17131440500009291955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A046092 n).toNat + A121455 (8 * n + 4)

end

end A297326.P17131440500009291955

/-! ## A297326.P15314565064034680677

`A297325(A046092(n))+A121454(A017017(n))`
-/

namespace A297326.P15314565064034680677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A046092 n).toNat + A121454 (A017017 n).toNat

end

end A297326.P15314565064034680677

/-! ## A297326.P6258094664396478833

`A297325(A046092(n))/A007318(A178334(n)²)`
-/

namespace A297326.P6258094664396478833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297325 (A046092 n).toNat : ℚ) / (A007318 (A178334 n ^ 2).toNat : ℚ)

end

end A297326.P6258094664396478833

/-! ## A297326.P1780324149358435161

`A297325(A046092(n))+A121454(A016052(n+1))`
-/

namespace A297326.P1780324149358435161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A046092 n).toNat + A121454 (A016052 (n + 1)).toNat

end

end A297326.P1780324149358435161

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

/-! ## A297329.P13876605745925248061

`or(char[1], A297328(A046092(n)))`
-/

namespace A297329.P13876605745925248061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297328 (A046092 n).toNat)

end

end A297329.P13876605745925248061

/-! ## A297329.P10602473626504905886

`gcd(A000038(n), A297328(A046092(n)))`
-/

namespace A297329.P10602473626504905886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297328 (A046092 n).toNat)

end

end A297329.P10602473626504905886

/-! ## A297329.P8791660354188661010

`A297328(A046092(n))^abs(A057428(n))`
-/

namespace A297329.P8791660354188661010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297328 (A046092 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A297329.P8791660354188661010

/-! ## A297329.P13961003183232777312

`char[A001281(n)]*A297328(A046092(n))`
-/

namespace A297329.P13961003183232777312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297328 (A046092 n).toNat

end

end A297329.P13961003183232777312

/-! ## A297329.P7159034956930862049

`A297328(A046092(n))+A000007(n+1)`
-/

namespace A297329.P7159034956930862049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046092 n).toNat + A000007 (n + 1)

end

end A297329.P7159034956930862049

/-! ## A297329.P12997269478246337729

`A297328(A046092(n))+A033322(n+4)`
-/

namespace A297329.P12997269478246337729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046092 n).toNat + A033322 (n + 4)

end

end A297329.P12997269478246337729

/-! ## A297329.P14025653130730319506

`A297328(A046092(n))%A223381(n+1)`
-/

namespace A297329.P14025653130730319506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297328 (A046092 n).toNat) (A223381 (n + 1))

end

end A297329.P14025653130730319506

/-! ## A297329.P12648073025467386737

`A297328(A046092(n))+A007814(2*n+1)`
-/

namespace A297329.P12648073025467386737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046092 n).toNat + A007814 (2 * n + 1)

end

end A297329.P12648073025467386737

/-! ## A297329.P3672938414815120490

`A297328(A046092(n))^A014963(4*n+2)`
-/

namespace A297329.P3672938414815120490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297328 (A046092 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A297329.P3672938414815120490

/-! ## A297329.P3804010154681727940

`A297328(A046092(n))^A001222(A008578(n+1))`
-/

namespace A297329.P3804010154681727940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297328 (A046092 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A297329.P3804010154681727940

/-!
# A297330: Total variation of base-10 digits of n; see Comments.

The programs for A297330, the canonical program `A297330.P4306723329666060960` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297330 has offset 1).

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

/-! ## A297330.P4306723329666060960

`A007953(A040115(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A297330

/-- `A007953(A040115(n+1))` -/
def P4306723329666060960.Spec : Prop :=
  ∀ n, P4306723329666060960.a n = A297330 (n + 1)

theorem P4306723329666060960.correct : P4306723329666060960.Spec := by
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

/-! ## A297330.P13245529869649474205

`A037860(A113585(n+1))`
-/

namespace A297330.P13245529869649474205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A113585 (n + 1)).toNat

end

end A297330.P13245529869649474205

namespace A297330

/-- `A037860(A113585(n+1))` -/
def P13245529869649474205.Spec : Prop :=
  ∀ n, P13245529869649474205.a n = A297330 (n + 1)

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

/-! ## A297332.P14500784898552059630

`A297338(A001844(n))+A025439(n)`
-/

namespace A297332.P14500784898552059630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A001844 n).toNat + A025439 n

end

end A297332.P14500784898552059630

/-! ## A297332.P1878976152710110673

`A007318(∑[n])*A297338(A001844(n))`
-/

namespace A297332.P1878976152710110673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A297338 (A001844 n).toNat

end

end A297332.P1878976152710110673

/-! ## A297332.P5687871476973016062

`A014963(ceil(1/(n+1)))*A297338(A001844(n))`
-/

namespace A297332.P5687871476973016062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌈1 / (n + 1 : ℚ)⌉.toNat * A297338 (A001844 n).toNat

end

end A297332.P5687871476973016062

/-!
# A297333: Number of n X 3 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297333, the canonical program `A297333.P9011104790909617834` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297333 has offset 1).

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

The canonical program, it is in `Seq.B000.C033`.
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

The programs for A297334, there is no canonical definition to state claims against.
-/

/-! ## A297334.P17950929376654279428

`A297338(A141214(n+1))`
-/

namespace A297334.P17950929376654279428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A141214 (n + 1)).toNat

end

end A297334.P17950929376654279428

/-! ## A297334.P6965102202738076739

`A297338(A155212(n)+5)`
-/

namespace A297334.P6965102202738076739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A155212 n + 5).toNat

end

end A297334.P6965102202738076739

/-! ## A297334.P10490642624876106478

`A297338(A056000(n)+7)`
-/

namespace A297334.P10490642624876106478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A056000 n + 7).toNat

end

end A297334.P10490642624876106478

/-! ## A297334.P4952491432342900813

`A297338(eq[3, A193592(n)])`
-/

namespace A297334.P4952491432342900813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297334.P4952491432342900813

/-! ## A297334.P13252078250677326205

`A297338(A052905(n+1)+2)`
-/

namespace A297334.P13252078250677326205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A052905 (n + 1) + 2).toNat

end

end A297334.P13252078250677326205

/-!
# A297335: Number of n X 5 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297335, there is no canonical definition to state claims against.
-/

/-! ## A297335.P8095556520234107847

`A297338(A046691(n+3))`
-/

namespace A297335.P8095556520234107847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A046691 (n + 3)).toNat

end

end A297335.P8095556520234107847

/-! ## A297335.P9930197871632842664

`A297338(eq[4, A193592(n)])`
-/

namespace A297335.P9930197871632842664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297335.P9930197871632842664

/-! ## A297335.P1211585102974467874

`A297338(Δ[A023545(n+1)])`
-/

namespace A297335.P1211585102974467874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (f1 (n + 1) - f1 n).toNat

end

end A297335.P1211585102974467874

/-! ## A297335.P8070918221827177011

`A297338(eq[4, A049286(n+1)])`
-/

namespace A297335.P8070918221827177011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297335.P8070918221827177011

/-! ## A297335.P4666919102402587839

`A297338(eq[5, A194921(n+1)])`
-/

namespace A297335.P4666919102402587839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297335.P4666919102402587839

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

/-! ## A297336.P3936477612954646781

`A297338(eq[3, A219347(n)])`
-/

namespace A297336.P3936477612954646781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297336.P3936477612954646781

/-! ## A297336.P10021900294121767513

`A297338(eq[5, A193592(n)])`
-/

namespace A297336.P10021900294121767513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297336.P10021900294121767513

/-! ## A297336.P10287657435397488749

`A297338(eq[7, A049286(n+1)])`
-/

namespace A297336.P10287657435397488749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297336.P10287657435397488749

/-! ## A297336.P5383223719925727147

`A297338(eq[8, A243070(n+1)])`
-/

namespace A297336.P5383223719925727147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297336.P5383223719925727147

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

/-! ## A297337.P11132999611819212327

`A297338(eq[6, A193592(n)])`
-/

namespace A297337.P11132999611819212327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297337.P11132999611819212327

/-! ## A297337.P15074102642155681345

`A297338(A000217(n+7)-6)`
-/

namespace A297337.P15074102642155681345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A000217 (n + 7) - 6).toNat

end

end A297337.P15074102642155681345

/-! ## A297337.P4647584254126989679

`A297338(eq[10, A185782(n+1)])`
-/

namespace A297337.P4647584254126989679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297337.P4647584254126989679

/-! ## A297337.P7212609738968156152

`A297338(eq[7, A200370(n+1)])`
-/

namespace A297337.P7212609738968156152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297337.P7212609738968156152

/-!
# A297339: Number of 2 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297339, the canonical program `A297339.P17332473575524694025` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297339 has offset 1).

The definition of A297339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297339.P17332473575524694025

`a(n-1)+3*a(n-2)+2*a(n-3)-a(n-5)` with `a(0)=4, a(1)=8, a(2)=22, a(3)=53, a(4)=134`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A297340.P11346704941370259970

`xor(1, xor(1, A297338(A167614(n+1))))`
-/

namespace A297340.P11346704941370259970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A297338 (A167614 (n + 1)).toNat))

end

end A297340.P11346704941370259970

/-! ## A297340.P17570047619673172119

`A297338(A167614(n+1))%A002089(n)`
-/

namespace A297340.P17570047619673172119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297338 (A167614 (n + 1)).toNat) (A002089 n)

end

end A297340.P17570047619673172119

/-! ## A297340.P2951275984854672175

`lcm(A106400(n), A297338(A167614(n+1)))`
-/

namespace A297340.P2951275984854672175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A297338 (A167614 (n + 1)).toNat)

end

end A297340.P2951275984854672175

/-! ## A297340.P4628485286740306156

`A020985(n)²*A297338(A167614(n+1))`
-/

namespace A297340.P4628485286740306156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A297338 (A167614 (n + 1)).toNat

end

end A297340.P4628485286740306156

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

/-! ## A297341.P6981844374354323558

`A297338(A052905(n)+9)`
-/

namespace A297341.P6981844374354323558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A052905 n + 9).toNat

end

end A297341.P6981844374354323558

/-! ## A297341.P18062194779304005977

`A297338(A055999(n)+10)`
-/

namespace A297341.P18062194779304005977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A055999 n + 10).toNat

end

end A297341.P18062194779304005977

/-! ## A297341.P13734025285154757518

`A297338(A167614(n+2)+1)`
-/

namespace A297341.P13734025285154757518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A167614 (n + 2) + 1).toNat

end

end A297341.P13734025285154757518

/-! ## A297341.P2158219163297182823

`A297338(A000217(n+3)+4)`
-/

namespace A297341.P2158219163297182823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A000217 (n + 3) + 4).toNat

end

end A297341.P2158219163297182823

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

/-! ## A297342.P11112067060134869709

`A297338(A155212(n)+13)`
-/

namespace A297342.P11112067060134869709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A155212 n + 13).toNat

end

end A297342.P11112067060134869709

/-! ## A297342.P12115912325715217232

`A297338(A056000(n)+15)`
-/

namespace A297342.P12115912325715217232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A056000 n + 15).toNat

end

end A297342.P12115912325715217232

/-! ## A297342.P14914856230162527680

`A297338(A055999(n+1)+11)`
-/

namespace A297342.P14914856230162527680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A055999 (n + 1) + 11).toNat

end

end A297342.P14914856230162527680

/-! ## A297342.P8416421288973852240

`A297338(A051936(n+4)+14)`
-/

namespace A297342.P8416421288973852240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A051936 (n + 4) + 14).toNat

end

end A297342.P8416421288973852240

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

/-! ## A297343.P713931461745433773

`A297338(A167499(n+4)+1)`
-/

namespace A297343.P713931461745433773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A167499 (n + 4) + 1).toNat

end

end A297343.P713931461745433773

/-! ## A297343.P4250950314143319802

`A297338(A167614(n+4)+3)`
-/

namespace A297343.P4250950314143319802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A167614 (n + 4) + 3).toNat

end

end A297343.P4250950314143319802

/-! ## A297343.P15104180037179109754

`A297338(A000217(n+5)+6)`
-/

namespace A297343.P15104180037179109754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (A000217 (n + 5) + 6).toNat

end

end A297343.P15104180037179109754

/-! ## A297343.P8544394713856439100

`A297338(eq[7, A131818(n+1)])`
-/

namespace A297343.P8544394713856439100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297343.P8544394713856439100

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

/-! ## A297345.P5430414492992849210

`A356859(A000079(n))+A000073(2*n)`
-/

namespace A297345.P5430414492992849210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356859 (A000079 n).toNat + A000073 (2 * n)

end

end A297345.P5430414492992849210

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

The programs for A297349, the canonical program `A297349.P11682316601978028879` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297349 has offset 0).

The definition of A297349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297349.P11682316601978028879

`29*a(n-1)+36*a(n-2)-24*a(n-3)` with `a(0)=1, a(1)=1, a(2)=41`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A297350.P8650532381377166896

`A233583(A104271(n+1))%A104268(n+1)`
-/

namespace A297350.P8650532381377166896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A104271 (n + 1)).toNat) (A104268 (n + 1))

end

end A297350.P8650532381377166896

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

/-! ## A297351.P7275491729142760360

`A060019(n+1)+C(2, n+2)`
-/

namespace A297351.P7275491729142760360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060019 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A297351.P7275491729142760360

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

/-! ## A297358.P10871180563852276829

`A065475(eq[3, lcm(n+1, A206369(n+1))/(n+1)])`
-/

namespace A297358.P10871180563852276829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A206369 (n + 1)) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A297358.P10871180563852276829

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

/-! ## A297359.P14560452535093239217

`A112765(A080046(n+1))+A034932(n)`
-/

namespace A297359.P14560452535093239217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A080046 (n + 1)).toNat + A034932 n

end

end A297359.P14560452535093239217

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

/-! ## A297366.P17687247544862231456

`eq[A079275(A055456(n+1)), A087802(n+1)]`
-/

namespace A297366.P17687247544862231456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (A055456 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297366.P17687247544862231456

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

/-! ## A297368.P3042643401568247957

`A297374(∑[4*n]+1)`
-/

namespace A297368.P3042643401568247957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297368.P3042643401568247957

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

/-! ## A297368.P3268250505379078031

`A297374(A001844(n))+A185284(n)`
-/

namespace A297368.P3268250505379078031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A001844 n).toNat + A185284 n

end

end A297368.P3268250505379078031

/-! ## A297368.P115783105692913214

`A139553(n)*A297374(A001844(n))`
-/

namespace A297368.P115783105692913214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A297374 (A001844 n).toNat

end

end A297368.P115783105692913214

/-!
# A297369: Number of n X 3 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297369, the canonical program `A297369.P11053646476533247410` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297369 has offset 1).

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

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A297369.P16419053073670478517

`A033999(n)²*A297374(Δ[A008778(n)])`
-/

namespace A297369.P16419053073670478517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A297374 (f1 (n + 1) - f1 n).toNat

end

end A297369.P16419053073670478517

namespace A297369

/-- `A033999(n)²*A297374(Δ[A008778(n)])` -/
def P16419053073670478517.Spec : Prop :=
  ∀ n, P16419053073670478517.a n = A297369 (n + 1)

end A297369

/-!
# A297370: Number of n X 4 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1's.

The programs for A297370, there is no canonical definition to state claims against.
-/

/-! ## A297370.P7660582376477176160

`A297374(A141214(n+1))`
-/

namespace A297370.P7660582376477176160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A141214 (n + 1)).toNat

end

end A297370.P7660582376477176160

/-! ## A297370.P16278802042775557950

`A297374(A155212(n)+5)`
-/

namespace A297370.P16278802042775557950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A155212 n + 5).toNat

end

end A297370.P16278802042775557950

/-! ## A297370.P11851089207822399195

`A297374(Δ[A006416(n+2)])`
-/

namespace A297370.P11851089207822399195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (f1 (n + 1) - f1 n).toNat

end

end A297370.P11851089207822399195

/-! ## A297370.P6943704212570596150

`A297374(A052905(n+1)+2)`
-/

namespace A297370.P6943704212570596150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A052905 (n + 1) + 2).toNat

end

end A297370.P6943704212570596150

/-! ## A297370.P3544074945791118956

`A297374(A167614(n+3)-6)`
-/

namespace A297370.P3544074945791118956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A167614 (n + 3) - 6).toNat

end

end A297370.P3544074945791118956

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

/-! ## A297371.P5306937526424169640

`A297374(eq[8, A166065(n)])`
-/

namespace A297371.P5306937526424169640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297371.P5306937526424169640

/-! ## A297371.P11764407092108127227

`A297374(Δ[A023545(n+1)])`
-/

namespace A297371.P11764407092108127227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (f1 (n + 1) - f1 n).toNat

end

end A297371.P11764407092108127227

/-! ## A297371.P11243651576396480304

`A297374(A052905(n+2)+1)`
-/

namespace A297371.P11243651576396480304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A052905 (n + 2) + 1).toNat

end

end A297371.P11243651576396480304

/-! ## A297371.P18329900471007707971

`A297374(A141214(n+2)-1)`
-/

namespace A297371.P18329900471007707971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A141214 (n + 2) - 1).toNat

end

end A297371.P18329900471007707971

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

/-! ## A297372.P8170933557093336669

`A297374(eq[3, A219347(n)])`
-/

namespace A297372.P8170933557093336669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297372.P8170933557093336669

/-! ## A297372.P11955683646518392389

`A297374(eq[5, A193592(n)])`
-/

namespace A297372.P11955683646518392389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297372.P11955683646518392389

/-! ## A297372.P3347750224992237694

`A297374(eq[8, A185782(n+1)])`
-/

namespace A297372.P3347750224992237694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297372.P3347750224992237694

/-! ## A297372.P7564602603460370139

`A297374(eq[16, A057728(n+1)])`
-/

namespace A297372.P7564602603460370139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297372.P7564602603460370139

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

/-! ## A297373.P9100971258346547206

`A297374(eq[4, A219347(n)])`
-/

namespace A297373.P9100971258346547206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297373.P9100971258346547206

/-! ## A297373.P10909089100191855373

`A297374(eq[6, A193592(n)])`
-/

namespace A297373.P10909089100191855373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297373.P10909089100191855373

/-! ## A297373.P17706885479866877610

`A297374(A056115(n+2)+9)`
-/

namespace A297373.P17706885479866877610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A056115 (n + 2) + 9).toNat

end

end A297373.P17706885479866877610

/-! ## A297373.P15515145632507973060

`A297374(eq[10, A185782(n+1)])`
-/

namespace A297373.P15515145632507973060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297373.P15515145632507973060

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

/-! ## A297374.P16066379932052874071

`A102512(2*A303469(n+1))`
-/

namespace A297374.P16066379932052874071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102512 (2 * A303469 (n + 1)).toNat

end

end A297374.P16066379932052874071

/-!
# A297375: Number of 2 X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 0, 1 or 2 neighboring 1s.

The programs for A297375, there is no canonical definition to state claims against.
-/

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

/-! ## A297375.P4001132434149114607

`char[A025581(n)]*A297374(A133263(n+1))`
-/

namespace A297375.P4001132434149114607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A297374 (A133263 (n + 1)).toNat

end

end A297375.P4001132434149114607

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

/-! ## A297376.P5577841437305366422

`A297374(A167614(n+1))+A185284(n)`
-/

namespace A297376.P5577841437305366422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A167614 (n + 1)).toNat + A185284 n

end

end A297376.P5577841437305366422

/-! ## A297376.P16652913186333207024

`A139553(n)*A297374(A167614(n+1))`
-/

namespace A297376.P16652913186333207024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A297374 (A167614 (n + 1)).toNat

end

end A297376.P16652913186333207024

/-! ## A297376.P9661777913071553496

`lcm(A033999(n), A297374(A167614(n+1)))`
-/

namespace A297376.P9661777913071553496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297374 (A167614 (n + 1)).toNat)

end

end A297376.P9661777913071553496

/-! ## A297376.P10144173303280418393

`A297374(A167614(n+1))%A027687(n+1)`
-/

namespace A297376.P10144173303280418393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297374 (A167614 (n + 1)).toNat) (A027687 (n + 1))

end

end A297376.P10144173303280418393

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

/-! ## A297377.P15478675414295409017

`A297374(A052905(n)+9)`
-/

namespace A297377.P15478675414295409017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A052905 n + 9).toNat

end

end A297377.P15478675414295409017

/-! ## A297377.P15866813358577001789

`A297374(A055999(n)+10)`
-/

namespace A297377.P15866813358577001789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A055999 n + 10).toNat

end

end A297377.P15866813358577001789

/-! ## A297377.P900228967879093427

`A297374(A167614(n+2)+1)`
-/

namespace A297377.P900228967879093427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A167614 (n + 2) + 1).toNat

end

end A297377.P900228967879093427

/-! ## A297377.P15803207423973090981

`A297374(A166136(n+2)-2)`
-/

namespace A297377.P15803207423973090981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A166136 (n + 2) - 2).toNat

end

end A297377.P15803207423973090981

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

/-! ## A297378.P10599308171822613017

`A297374(A077169(n+5))`
-/

namespace A297378.P10599308171822613017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A077169 (n + 5)).toNat

end

end A297378.P10599308171822613017

/-! ## A297378.P207905523588934940

`A297374(A167614(n+3)+2)`
-/

namespace A297378.P207905523588934940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A167614 (n + 3) + 2).toNat

end

end A297378.P207905523588934940

/-! ## A297378.P345252840473351973

`A297374(A141214(n+1)+8)`
-/

namespace A297378.P345252840473351973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A141214 (n + 1) + 8).toNat

end

end A297378.P345252840473351973

/-! ## A297378.P1549630014829535346

`A297374(A052905(n+1)+10)`
-/

namespace A297378.P1549630014829535346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A052905 (n + 1) + 10).toNat

end

end A297378.P1549630014829535346

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

/-! ## A297379.P16095310533805176048

`A297374(A056115(n)+21)`
-/

namespace A297379.P16095310533805176048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A056115 n + 21).toNat

end

end A297379.P16095310533805176048

/-! ## A297379.P13617566629599979876

`A297374(A141214(n+2)+9)`
-/

namespace A297379.P13617566629599979876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A141214 (n + 2) + 9).toNat

end

end A297379.P13617566629599979876

/-! ## A297379.P12332964146300337900

`A297374(A052905(n+2)+11)`
-/

namespace A297379.P12332964146300337900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A052905 (n + 2) + 11).toNat

end

end A297379.P12332964146300337900

/-! ## A297379.P7925763466732200345

`A297374(eq[7, A131818(n+1)])`
-/

namespace A297379.P7925763466732200345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297379.P7925763466732200345

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

/-! ## A297380.P10223482401808971158

`A297374(A056119(n)+28)`
-/

namespace A297380.P10223482401808971158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A056119 n + 28).toNat

end

end A297380.P10223482401808971158

/-! ## A297380.P4522126050966735996

`A297374(eq[11, A066657(n)])`
-/

namespace A297380.P4522126050966735996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297380.P4522126050966735996

/-! ## A297380.P16718625132770358388

`A297374(A133263(n+6)+5)`
-/

namespace A297380.P16718625132770358388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (A133263 (n + 6) + 5).toNat

end

end A297380.P16718625132770358388

/-! ## A297380.P14766088859572841970

`A297374(eq[8, A131818(n+1)])`
-/

namespace A297380.P14766088859572841970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297380.P14766088859572841970

/-!
# A297381: Numerator of -A023900(n)/2.

The programs for A297381, the canonical program `A297381.P12976311845768696802` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297381 has offset 1).

The definition of A297381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297381.P12976311845768696802

`-round(∏{p}[n+1, 1-#]/2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A297381

/-- `-round(∏{p}[n+1, 1-#]/2)` -/
def P12976311845768696802.Spec : Prop :=
  ∀ n, P12976311845768696802.a n = A297381 (n + 1)

theorem P12976311845768696802.correct : P12976311845768696802.Spec := by
  intro n
  simp only [A297381, Nat.add_sub_cancel]

end A297381

/-! ## A297381.P4609199837958693680

`-A349431(n+1)`
-/

namespace A297381.P4609199837958693680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349431 (n + 1)

end

end A297381.P4609199837958693680

namespace A297381

/-- `-A349431(n+1)` -/
def P4609199837958693680.Spec : Prop :=
  ∀ n, P4609199837958693680.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P5468094423525692393

`-A023900(n+1)/(2-char[2^n-1])`
-/

namespace A297381.P5468094423525692393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A023900 (n + 1) : ℚ) / (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ))

end

end A297381.P5468094423525692393

namespace A297381

/-- `-A023900(n+1)/(2-char[2^n-1])` -/
def P5468094423525692393.Spec : Prop :=
  ∀ n, P5468094423525692393.a n = (A297381 (n + 1) : ℚ)

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

/-! ## A297381.P5008312607198478592

`Δ[A349431(n+1)]-A349431(n+2)`
-/

namespace A297381.P5008312607198478592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349431 (n + 2)

end

end A297381.P5008312607198478592

namespace A297381

/-- `Δ[A349431(n+1)]-A349431(n+2)` -/
def P5008312607198478592.Spec : Prop :=
  ∀ n, P5008312607198478592.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P15551996061407795448

`A349136(2*(n+1))-A349431(n+1)`
-/

namespace A297381.P15551996061407795448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (2 * (n + 1)) - A349431 (n + 1)

end

end A297381.P15551996061407795448

namespace A297381

/-- `A349136(2*(n+1))-A349431(n+1)` -/
def P15551996061407795448.Spec : Prop :=
  ∀ n, P15551996061407795448.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P15415695646622864310

`A349447(2*(n+1))-A349431(n+1)`
-/

namespace A297381.P15415695646622864310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349447 (2 * (n + 1)) - A349431 (n + 1)

end

end A297381.P15415695646622864310

namespace A297381

/-- `A349447(2*(n+1))-A349431(n+1)` -/
def P15415695646622864310.Spec : Prop :=
  ∀ n, P15415695646622864310.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P11814748958995604041

`A349448(2*(n+1))-A349431(n+1)`
-/

namespace A297381.P11814748958995604041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349448 (2 * (n + 1)) - A349431 (n + 1)

end

end A297381.P11814748958995604041

namespace A297381

/-- `A349448(2*(n+1))-A349431(n+1)` -/
def P11814748958995604041.Spec : Prop :=
  ∀ n, P11814748958995604041.a n = A297381 (n + 1)

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

/-! ## A297381.P3081767755315142224

`A059841(A059841(n)+n)-A349431(n+1)`
-/

namespace A297381.P3081767755315142224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A059841 n + (n : ℤ)).toNat - A349431 (n + 1)

end

end A297381.P3081767755315142224

namespace A297381

/-- `A059841(A059841(n)+n)-A349431(n+1)` -/
def P3081767755315142224.Spec : Prop :=
  ∀ n, P3081767755315142224.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P13201627045368054380

`A349431(2*A006519(n+1))*A349431(n+1)`
-/

namespace A297381.P13201627045368054380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (2 * A006519 (n + 1)).toNat * A349431 (n + 1)

end

end A297381.P13201627045368054380

namespace A297381

/-- `A349431(2*A006519(n+1))*A349431(n+1)` -/
def P13201627045368054380.Spec : Prop :=
  ∀ n, P13201627045368054380.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P6433502481206950940

`A349431(n+1)-A023900(n+1)*A297382(n+1)`
-/

namespace A297381.P6433502481206950940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (n + 1) - A023900 (n + 1) * A297382 (n + 1)

end

end A297381.P6433502481206950940

namespace A297381

/-- `A349431(n+1)-A023900(n+1)*A297382(n+1)` -/
def P6433502481206950940.Spec : Prop :=
  ∀ n, P6433502481206950940.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P6636266560592229216

`A008683(n+1)*A380399(n+1)-A349431(n+1)`
-/

namespace A297381.P6636266560592229216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A380399 (n + 1) - A349431 (n + 1)

end

end A297381.P6636266560592229216

namespace A297381

/-- `A008683(n+1)*A380399(n+1)-A349431(n+1)` -/
def P6636266560592229216.Spec : Prop :=
  ∀ n, P6636266560592229216.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P5840866430957619491

`A154955(n+3)-A349431(n+1)`
-/

namespace A297381.P5840866430957619491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 3) - A349431 (n + 1)

end

end A297381.P5840866430957619491

namespace A297381

/-- `A154955(n+3)-A349431(n+1)` -/
def P5840866430957619491.Spec : Prop :=
  ∀ n, P5840866430957619491.a n = A297381 (n + 1)

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

/-! ## A297381.P770910088653291448

`A129527(n)-(A349431(n+1)+A129527(A129527(n)))`
-/

namespace A297381.P770910088653291448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 n - (A349431 (n + 1) + A129527 (A129527 n).toNat)

end

end A297381.P770910088653291448

namespace A297381

/-- `A129527(n)-(A349431(n+1)+A129527(A129527(n)))` -/
def P770910088653291448.Spec : Prop :=
  ∀ n, P770910088653291448.a n = A297381 (n + 1)

end A297381

/-! ## A297381.P1542578243494353431

`A007814(2*n+1)-A349431(n+1)`
-/

namespace A297381.P1542578243494353431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A349431 (n + 1)

end

end A297381.P1542578243494353431

namespace A297381

/-- `A007814(2*n+1)-A349431(n+1)` -/
def P1542578243494353431.Spec : Prop :=
  ∀ n, P1542578243494353431.a n = A297381 (n + 1)

end A297381

/-!
# A297382: Denominator of -A023900(n)/2.

The programs for A297382, the canonical program `A297382.P17234500139329436849` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297382 has offset 1).

The definition of A297382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297382.P17234500139329436849

`1+A209229(n+1)`

The canonical program, it is in `Seq.B001.C008`.
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

/-! ## A297382.P15568009590627548180

`char[2^n-1]+1`
-/

namespace A297382.P15568009590627548180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A297382.P15568009590627548180

namespace A297382

/-- `char[2^n-1]+1` -/
def P15568009590627548180.Spec : Prop :=
  ∀ n, (P15568009590627548180.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P2116588031876379987

`C(2, Δ[ceil(log2(n+1))])`
-/

namespace A297382.P2116588031876379987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A297382.P2116588031876379987

namespace A297382

/-- `C(2, Δ[ceil(log2(n+1))])` -/
def P2116588031876379987.Spec : Prop :=
  ∀ n, (P2116588031876379987.a n : ℤ) = A297382 (n + 1)

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

/-! ## A297382.P3954952352576012188

`2^∏{p}[n+1, val(#, 2)]`
-/

namespace A297382.P3954952352576012188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2)

end

end A297382.P3954952352576012188

namespace A297382

/-- `2^∏{p}[n+1, val(#, 2)]` -/
def P3954952352576012188.Spec : Prop :=
  ∀ n, (P3954952352576012188.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P1378085618864047558

`2^C(2, ∑{p}[n+1, #])`
-/

namespace A297382.P1378085618864047558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A297382.P1378085618864047558

namespace A297382

/-- `2^C(2, ∑{p}[n+1, #])` -/
def P1378085618864047558.Spec : Prop :=
  ∀ n, (P1378085618864047558.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P7837967947014509725

`2^∏{p}[n+1, C(2, #)]`
-/

namespace A297382.P7837967947014509725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p)

end

end A297382.P7837967947014509725

namespace A297382

/-- `2^∏{p}[n+1, C(2, #)]` -/
def P7837967947014509725.Spec : Prop :=
  ∀ n, (P7837967947014509725.a n : ℤ) = A297382 (n + 1)

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

/-! ## A297382.P15102939736033347897

`2^C(2, and(n, n+1)²)`
-/

namespace A297382.P15102939736033347897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose 2 (Nat.land n (n + 1) ^ 2)

end

end A297382.P15102939736033347897

namespace A297382

/-- `2^C(2, and(n, n+1)²)` -/
def P15102939736033347897.Spec : Prop :=
  ∀ n, (P15102939736033347897.a n : ℤ) = A297382 (n + 1)

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

/-! ## A297382.P12936624733681640905

`gcd(n+1, a(floor(n/2)))` with `a(0)=2`
-/

namespace A297382.P12936624733681640905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd (n + 1) (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A297382.P12936624733681640905

namespace A297382

/-- `gcd(n+1, a(floor(n/2)))` -/
def P12936624733681640905.Spec : Prop :=
  ∀ n, (P12936624733681640905.a n : ℤ) = A297382 (n + 1)

end A297382

/-! ## A297382.P12965204191093995292

`ceil(2/∏{p}[n+1, #-1])`
-/

namespace A297382.P12965204191093995292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) : ℤ) : ℚ)⌉

end

end A297382.P12965204191093995292

namespace A297382

/-- `ceil(2/∏{p}[n+1, #-1])` -/
def P12965204191093995292.Spec : Prop :=
  ∀ n, P12965204191093995292.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P2739076503451962731

`ceil(4/(∏{p}[n+1, #]+1))`
-/

namespace A297382.P2739076503451962731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 / ((∏ p ∈ Nat.primeFactors (f1 n), p + 1 : ℕ) : ℚ)⌉

end

end A297382.P2739076503451962731

namespace A297382

/-- `ceil(4/(∏{p}[n+1, #]+1))` -/
def P2739076503451962731.Spec : Prop :=
  ∀ n, P2739076503451962731.a n = A297382 (n + 1)

end A297382

/-! ## A297382.P3934835914313649217

`ceil(3/∑{p}[2*(n+1), #])`
-/

namespace A297382.P3934835914313649217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌉

end

end A297382.P3934835914313649217

namespace A297382

/-- `ceil(3/∑{p}[2*(n+1), #])` -/
def P3934835914313649217.Spec : Prop :=
  ∀ n, P3934835914313649217.a n = A297382 (n + 1)

end A297382

/-!
# A297384: Number of Eulerian cycles in the n-antiprism graph.

The programs for A297384, the canonical program `A297384.P15101918690716605914` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297384 has offset 1).

The definition of A297384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297384.P15101918690716605914

`A080040(2*(n+1))-record[4-a(n-1)-a(n-1)]` with `a(0)=4`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A297384

/-- `A080040(2*(n+1))-record[4-a(n-1)-a(n-1)]` -/
def P15101918690716605914.Spec : Prop :=
  ∀ n, P15101918690716605914.a n = A297384 (n + 1)

theorem P15101918690716605914.correct : P15101918690716605914.Spec := by
  intro n
  simp only [A297384, Nat.add_sub_cancel]

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

/-! ## A297385.P12239338410197009012

`lcm(2, A298117(A001844(n)))`
-/

namespace A297385.P12239338410197009012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A298117 (A001844 n).toNat)

end

end A297385.P12239338410197009012

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

/-! ## A297388.P13291120970378645772

`A328596(A061257(n+1))-A018783(A018783(n+1))`
-/

namespace A297388.P13291120970378645772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A061257 (n + 1)).toNat - A018783 (A018783 (n + 1)).toNat

end

end A297388.P13291120970378645772

/-! ## A297388.P6709256320797512448

`A303431(A391680(n+1)+n)`
-/

namespace A297388.P6709256320797512448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (A391680 (n + 1) + (n : ℤ)).toNat

end

end A297388.P6709256320797512448

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

/-! ## A297389.P16637327890673514288

`A297395(A001844(n))+A011741(n)`
-/

namespace A297389.P16637327890673514288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A001844 n).toNat + A011741 n

end

end A297389.P16637327890673514288

/-! ## A297389.P6349420144464491943

`A152851(n)*A297395(A001844(n))`
-/

namespace A297389.P6349420144464491943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A297395 (A001844 n).toNat

end

end A297389.P6349420144464491943

/-!
# A297390: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297390, the canonical program `A297390.P5300710697734047341` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297390 has offset 1).

The definition of A297390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297390.P5300710697734047341

`a(n-1)+4*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=3, a(1)=9, a(2)=19, a(3)=57`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A297390.P49426832889584612

`or(1, A297395(A034856(n+2)))`
-/

namespace A297390.P49426832889584612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297395 (A034856 (n + 2)).toNat)

end

end A297390.P49426832889584612

namespace A297390

/-- `or(1, A297395(A034856(n+2)))` -/
def P49426832889584612.Spec : Prop :=
  ∀ n, P49426832889584612.a n = A297390 (n + 1)

end A297390

/-! ## A297390.P4775830574640658014

`A297395(A034856(n+2))%A041768(n)`
-/

namespace A297390.P4775830574640658014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297395 (A034856 (n + 2)).toNat) (A041768 n)

end

end A297390.P4775830574640658014

namespace A297390

/-- `A297395(A034856(n+2))%A041768(n)` -/
def P4775830574640658014.Spec : Prop :=
  ∀ n, P4775830574640658014.a n = A297390 (n + 1)

end A297390

/-!
# A297391: Number of n X 4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297391, there is no canonical definition to state claims against.
-/

/-! ## A297391.P5279503775078389308

`A297395(A141214(n+1))`
-/

namespace A297391.P5279503775078389308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A141214 (n + 1)).toNat

end

end A297391.P5279503775078389308

/-! ## A297391.P5044506926269215301

`A297395(A055998(n+2))`
-/

namespace A297391.P5044506926269215301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A055998 (n + 2)).toNat

end

end A297391.P5044506926269215301

/-! ## A297391.P12242475485987718794

`A297395(A056000(n)+7)`
-/

namespace A297391.P12242475485987718794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A056000 n + 7).toNat

end

end A297391.P12242475485987718794

/-! ## A297391.P6826044945004362562

`A297395(A046691(n+2)+1)`
-/

namespace A297391.P6826044945004362562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A046691 (n + 2) + 1).toNat

end

end A297391.P6826044945004362562

/-! ## A297391.P8713140044210653315

`A297395(A052905(n+1)+2)`
-/

namespace A297391.P8713140044210653315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A052905 (n + 1) + 2).toNat

end

end A297391.P8713140044210653315

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

/-! ## A297392.P1696684427309232872

`A297395(eq[4, A193592(n)])`
-/

namespace A297392.P1696684427309232872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297392.P1696684427309232872

/-! ## A297392.P1614487037159291190

`A297395(Δ[A023545(n+1)])`
-/

namespace A297392.P1614487037159291190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (f1 (n + 1) - f1 n).toNat

end

end A297392.P1614487037159291190

/-! ## A297392.P7630599645775334144

`A297395(A167487(n)+4*n+3)`
-/

namespace A297392.P7630599645775334144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A167487 n + (4 * n + 3 : ℤ)).toNat

end

end A297392.P7630599645775334144

/-! ## A297392.P3828144760142353922

`A297395(eq[5, A200370(n+1)])`
-/

namespace A297392.P3828144760142353922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297392.P3828144760142353922

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

/-! ## A297393.P10747084331282417836

`A297395(eq[3, A219347(n)])`
-/

namespace A297393.P10747084331282417836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297393.P10747084331282417836

/-! ## A297393.P7640903847558249867

`A297395(A046691(n+4)-1)`
-/

namespace A297393.P7640903847558249867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A046691 (n + 4) - 1).toNat

end

end A297393.P7640903847558249867

/-! ## A297393.P3599954215297160874

`A297395(Δ[Δ[A006504(n+1)]])`
-/

namespace A297393.P3599954215297160874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (f1 (n + 1) - f1 n).toNat

end

end A297393.P3599954215297160874

/-! ## A297393.P3301014940622305411

`A297395(Δ[A023545(n+2)]-1)`
-/

namespace A297393.P3301014940622305411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (f1 (n + 1) - f1 n - 1).toNat

end

end A297393.P3301014940622305411

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

/-! ## A297394.P2308564176447686695

`A297395(eq[6, A193592(n)])`
-/

namespace A297394.P2308564176447686695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297394.P2308564176447686695

/-! ## A297394.P13725133785320876923

`A297395(eq[10, A185782(n+1)])`
-/

namespace A297394.P13725133785320876923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297394.P13725133785320876923

/-! ## A297394.P18288883874188849779

`A297395(eq[32, A057728(n+1)])`
-/

namespace A297394.P18288883874188849779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297394.P18288883874188849779

/-! ## A297394.P17303715236617187877

`A297395(eq[7, A200370(n+1)])`
-/

namespace A297394.P17303715236617187877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297394.P17303715236617187877

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

/-! ## A297395.P12274872300235835911

`A297595(n+1)-A336551(A078679(n))`
-/

namespace A297395.P12274872300235835911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (n + 1) - A336551 (A078679 n).toNat

end

end A297395.P12274872300235835911

/-! ## A297395.P5893129880712145847

`xor(A185255(A006456(n)), A297595(n+1))`
-/

namespace A297395.P5893129880712145847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185255 (A006456 n).toNat) (A297595 (n + 1))

end

end A297395.P5893129880712145847

/-!
# A297396: Number of 3 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297396, the canonical program `A297396.P7355173798773222102` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297396 has offset 1).

The definition of A297396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297396.P7355173798773222102

`a(n-1)+a(n-2)+8*a(n-3)+a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=9, a(2)=19, a(3)=37, a(4)=127, a(5)=323`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A297396.P12390177072406405949

`or(1, A297395(A167614(n+1)))`
-/

namespace A297396.P12390177072406405949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297395 (A167614 (n + 1)).toNat)

end

end A297396.P12390177072406405949

namespace A297396

/-- `or(1, A297395(A167614(n+1)))` -/
def P12390177072406405949.Spec : Prop :=
  ∀ n, P12390177072406405949.a n = A297396 (n + 1)

end A297396

/-! ## A297396.P1487320769742923228

`or(1, A297395(A152950(n+3)))`
-/

namespace A297396.P1487320769742923228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297395 (A152950 (n + 3)).toNat)

end

end A297396.P1487320769742923228

namespace A297396

/-- `or(1, A297395(A152950(n+3)))` -/
def P1487320769742923228.Spec : Prop :=
  ∀ n, P1487320769742923228.a n = A297396 (n + 1)

end A297396

/-! ## A297396.P11186928897262117026

`or(1, A297395(A167499(n)+n))`
-/

namespace A297396.P11186928897262117026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297395 (A167499 n + (n : ℤ)).toNat)

end

end A297396.P11186928897262117026

namespace A297396

/-- `or(1, A297395(A167499(n)+n))` -/
def P11186928897262117026.Spec : Prop :=
  ∀ n, P11186928897262117026.a n = A297396 (n + 1)

end A297396

/-!
# A297397: Number of 4 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297397, there is no canonical definition to state claims against.
-/

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

/-! ## A297398.P17447252278247515973

`A297395(A016028(n+7)+2)`
-/

namespace A297398.P17447252278247515973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A016028 (n + 7) + 2).toNat

end

end A297398.P17447252278247515973

/-! ## A297398.P6046051240903031775

`A297395(A046691(n+2)+9)`
-/

namespace A297398.P6046051240903031775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A046691 (n + 2) + 9).toNat

end

end A297398.P6046051240903031775

/-! ## A297398.P1346743158294206270

`A297395(A000096(n+4)-(n-1))`
-/

namespace A297398.P1346743158294206270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A297398.P1346743158294206270

/-! ## A297398.P12954755734914027514

`A297395(A052905(n+3)-(2*n+1))`
-/

namespace A297398.P12954755734914027514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A297398.P12954755734914027514

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

/-! ## A297399.P16618628416977378942

`A297395(A167499(n+4)+1)`
-/

namespace A297399.P16618628416977378942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A167499 (n + 4) + 1).toNat

end

end A297399.P16618628416977378942

/-! ## A297399.P144962160265185982

`A297395(A133263(n+5)+4)`
-/

namespace A297399.P144962160265185982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A133263 (n + 5) + 4).toNat

end

end A297399.P144962160265185982

/-! ## A297399.P18157543658050903593

`A297395(A000124(n+5)+5)`
-/

namespace A297399.P18157543658050903593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A000124 (n + 5) + 5).toNat

end

end A297399.P18157543658050903593

/-! ## A297399.P2577487621325369148

`A297395(A000096(n+4)+7)`
-/

namespace A297399.P2577487621325369148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A000096 (n + 4) + 7).toNat

end

end A297399.P2577487621325369148

