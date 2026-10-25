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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
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
# A307200: Fill the plane with the square spiral with cells numbered as in A275609; sequence gives the cells along the South-East spoke starting at the origin.

The programs for A307200, there is no canonical definition to state claims against.
-/

/-! ## A307200.P15341677640309449830

`A275609(∑[8*n])`
-/

namespace A307200.P15341677640309449830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307200.P15341677640309449830

/-! ## A307200.P17530312360507697615

`dr(A275609(4*(n²+n)))`
-/

namespace A307200.P17530312360507697615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A275609 (4 * (n ^ 2 + n)))

end

end A307200.P17530312360507697615

/-! ## A307200.P6373585765920745558

`A275609(4*n*(n+1))%4`
-/

namespace A307200.P6373585765920745558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275609 (4 * (n * (n + 1)))) 4

end

end A307200.P6373585765920745558

/-! ## A307200.P14042922526125523824

`A000038(n)!*A275609(4*(n²+n))`
-/

namespace A307200.P14042922526125523824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A275609 (4 * (n ^ 2 + n))

end

end A307200.P14042922526125523824

/-! ## A307200.P10273639999848654876

`A275609(4*(n²+n))+A000007(n+1)`
-/

namespace A307200.P10273639999848654876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (4 * (n ^ 2 + n)) + A000007 (n + 1)

end

end A307200.P10273639999848654876

/-! ## A307200.P16387430757525444591

`A275609(4*(n²+n))+A000038(n+1)`
-/

namespace A307200.P16387430757525444591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (4 * (n ^ 2 + n)) + A000038 (n + 1)

end

end A307200.P16387430757525444591

/-! ## A307200.P7344736952148322196

`A275609(4*(n²+n))+A000035(2*n)`
-/

namespace A307200.P7344736952148322196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (4 * (n ^ 2 + n)) + A000035 (2 * n)

end

end A307200.P7344736952148322196

/-! ## A307200.P15870405001460680591

`A000034(2*n)*A275609(4*(n²+n))`
-/

namespace A307200.P15870405001460680591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A275609 (4 * (n ^ 2 + n))

end

end A307200.P15870405001460680591

/-! ## A307200.P3586019801043746402

`A007318(C(2, n))*A275609(4*(n²+n))`
-/

namespace A307200.P3586019801043746402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A275609 (4 * (n ^ 2 + n))

end

end A307200.P3586019801043746402

/-! ## A307200.P345954365994561825

`A007318(and(1, -n))*A275609(4*(n²+n))`
-/

namespace A307200.P345954365994561825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A275609 (4 * (n ^ 2 + n))

end

end A307200.P345954365994561825

/-! ## A307200.P11021151023225439824

`A275609(4*(n²+n))+char[A000108(n+9)]`
-/

namespace A307200.P11021151023225439824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (4 * (n ^ 2 + n)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A307200.P11021151023225439824

/-! ## A307200.P17079285636249359486

`ceil(n/A000041(n))*A275609(4*(n²+n))`
-/

namespace A307200.P17079285636249359486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A275609 (4 * (n ^ 2 + n))

end

end A307200.P17079285636249359486

/-! ## A307200.P10075470268900826130

`A275609(4*(n²+n))+A008683(4*(n+1))`
-/

namespace A307200.P10075470268900826130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (4 * (n ^ 2 + n)) + A008683 (4 * (n + 1))

end

end A307200.P10075470268900826130

/-! ## A307200.P16015958855826485902

`A014963(4*n+2)*A275609(4*(n²+n))`
-/

namespace A307200.P16015958855826485902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A275609 (4 * (n ^ 2 + n))

end

end A307200.P16015958855826485902

/-! ## A307200.P12490789871328410830

`A000041(C(2, n+2))*A275609(4*(n²+n))`
-/

namespace A307200.P12490789871328410830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A275609 (4 * (n ^ 2 + n))

end

end A307200.P12490789871328410830

/-!
# A307201: Coordination sequence for trivalent node of type alpha in the first Moore pentagonal tiling.

The programs for A307201, the canonical program `A307201.P998129464971455454` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307201 has offset 0).

The definition of A307201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307201.P998129464971455454

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=12, a(4)=21, a(5)=30, a(6)=30, a(7)=33, a(8)=42`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307201

/-- `2*a(n-4)-a(n-8)` -/
def P998129464971455454.Spec : Prop :=
  ∀ n, P998129464971455454.a n = A307201 n

theorem P998129464971455454.correct : P998129464971455454.Spec := by
  intro n
  simp only [A307201]

end A307201

/-!
# A307202: Coordination sequence for trivalent node of type alpha' in the first Moore pentagonal tiling.

The programs for A307202, the canonical program `A307202.P17017945598621768139` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307202 has offset 0).

The definition of A307202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307202.P17017945598621768139

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=15, a(4)=21, a(5)=24, a(6)=30, a(7)=42, a(8)=42`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307202

/-- `2*a(n-4)-a(n-8)` -/
def P17017945598621768139.Spec : Prop :=
  ∀ n, P17017945598621768139.a n = A307202 n

theorem P17017945598621768139.correct : P17017945598621768139.Spec := by
  intro n
  simp only [A307202]

end A307202

/-!
# A307203: Coordination sequence for trivalent node of type alpha'' in the first Moore pentagonal tiling.

The programs for A307203, there is no canonical definition to state claims against.
-/

/-! ## A307203.P1310085753367155398

`∑[A330786(p?[A333265(n)])]`
-/

namespace A307203.P1310085753367155398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330786 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307203.P1310085753367155398

/-! ## A307203.P17446818041960340358

`∑[A000120(A319558(n))+1]-A070886(n)`
-/

namespace A307203.P17446818041960340358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A319558 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070886 n

end

end A307203.P17446818041960340358

/-! ## A307203.P6229088607288577789

`∑[∑[A290737(A029731(n+3))]]`
-/

namespace A307203.P6229088607288577789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290737 (A029731 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307203.P6229088607288577789

/-! ## A307203.P10147531194578152452

`∑[A007895(p?[A231428(n+1)])]`
-/

namespace A307203.P10147531194578152452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231428 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307203.P10147531194578152452

/-! ## A307203.P499672446485018640

`record[gcd(A232681(n+1), A365644(2*(n+2)))]`
-/

namespace A307203.P499672446485018640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232681 (n + 1)) (A365644 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307203.P499672446485018640

/-!
# A307205: Coordination sequence for tetravalent node in the first Moore pentagonal tiling.

The programs for A307205, there is no canonical definition to state claims against.
-/

/-! ## A307205.P12428322597305287498

`∑[A126302(∑[A091087(n+1)])]`
-/

namespace A307205.P12428322597305287498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307205.P12428322597305287498

/-! ## A307205.P4599571599850038079

`∑[A358372(A358354(3*n+1))]`
-/

namespace A307205.P4599571599850038079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A358354 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307205.P4599571599850038079

/-! ## A307205.P8881293663023237168

`∑[A000120(A247021(∑{d}[n+1, #]))]`
-/

namespace A307205.P8881293663023237168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A247021 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307205.P8881293663023237168

/-! ## A307205.P4803445842462192668

`∑[A000120(A234851(2*(n+1))²)]`
-/

namespace A307205.P4803445842462192668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A234851 (2 * (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307205.P4803445842462192668

/-! ## A307205.P11388058212720187622

`A151566(n)+A091333(A046661(n+1))`
-/

namespace A307205.P11388058212720187622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n + A091333 (A046661 (n + 1)).toNat

end

end A307205.P11388058212720187622

/-!
# A307206: The terms in A307183 that get underlined.

The programs for A307206, there is no canonical definition to state claims against.
-/

/-! ## A307206.P6362822074859898469

`comp[A307207(n+1)-1]+1`
-/

namespace A307206.P6362822074859898469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A307206.P6362822074859898469

/-! ## A307206.P14763957391029691337

`lt[char[A307207(n+1)], n/A000079(n)]`
-/

namespace A307206.P14763957391029691337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307207 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A307206.P14763957391029691337

/-! ## A307206.P5859402054737779669

`lt[char[A307207(n+1)], n/A300182(n+1)]`
-/

namespace A307206.P5859402054737779669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307207 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A300182 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A307206.P5859402054737779669

/-! ## A307206.P11031306698701324685

`lt[char[A307207(n+1)], n/A300759(n+1)]`
-/

namespace A307206.P11031306698701324685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307207 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A300759 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A307206.P11031306698701324685

/-! ## A307206.P6088890133981391450

`eq[char[A307207(n+1)], A151933(n)]`
-/

namespace A307206.P6088890133981391450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307207 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A307206.P6088890133981391450

/-!
# A307207: The terms in A307183 that do not get underlined.

The programs for A307207, there is no canonical definition to state claims against.
-/

/-! ## A307207.P12163635453049118217

`comp[A307183(n+1)+1+n]+1`
-/

namespace A307207.P12163635453049118217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307183 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A307207.P12163635453049118217

/-! ## A307207.P7315193788364096910

`eq[char[A307206(n+1)], A151933(n)]`
-/

namespace A307207.P7315193788364096910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307206 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A307207.P7315193788364096910

/-!
# A307208: a(n) is the forgotten index of the Fibonacci cube Gamma(n).

The programs for A307208, there is no canonical definition to state claims against.
-/

/-! ## A307208.P13577115008765143254

`A267171(n)+A267162(A143461(n))`
-/

namespace A307208.P13577115008765143254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267171 n + A267162 (A143461 n).toNat

end

end A307208.P13577115008765143254

/-!
# A307211: a(n) = the "maximum first open number" for prime(n).

The programs for A307211, there is no canonical definition to state claims against.
-/

/-! ## A307211.P60329217133520899

`A359267(A014284(n+1))+A248565(n+1)`
-/

namespace A307211.P60329217133520899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359267 (A014284 (n + 1)).toNat + A248565 (n + 1)

end

end A307211.P60329217133520899

/-!
# A307214: Triangle read by rows: number of forests of (k+1) ordered trees with 2(n-k) edges having root of even degree and nonroot nodes of outdegree 0 or 2.

The programs for A307214, there is no canonical definition to state claims against.
-/

/-! ## A307214.P11879554983221145595

`A102452(A185967(n))`
-/

namespace A307214.P11879554983221145595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102452 (A185967 n).toNat

end

end A307214.P11879554983221145595

/-! ## A307214.P2592077120722395434

`A111651(A071210(n+1))`
-/

namespace A307214.P2592077120722395434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A071210 (n + 1)).toNat

end

end A307214.P2592077120722395434

/-! ## A307214.P16689688764413378039

`A061395(A055398(A185967(n))²)`
-/

namespace A307214.P16689688764413378039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A055398 (A185967 n).toNat ^ 2).toNat

end

end A307214.P16689688764413378039

/-! ## A307214.P10728009063764777751

`A323524(A208931(n+2))`
-/

namespace A307214.P10728009063764777751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323524 (A208931 (n + 2)).toNat

end

end A307214.P10728009063764777751

/-! ## A307214.P8535608212815487049

`and(A002146(A343521(n+1)), A102472(n+1))`
-/

namespace A307214.P8535608212815487049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002146 (A343521 (n + 1)).toNat) (A102472 (n + 1))

end

end A307214.P8535608212815487049

/-!
# A307217: Semiprimes p*q such that 2^(p+q) == 1 (mod p*q).

The programs for A307217, there is no canonical definition to state claims against.
-/

/-! ## A307217.P4884274644926541564

`A278021(A059842(A000430(n+1)))`
-/

namespace A307217.P4884274644926541564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278021 (A059842 (A000430 (n + 1)).toNat).toNat

end

end A307217.P4884274644926541564

/-!
# A307219: a(n) is the number of partitions of (prime(n)^2 + 2)/3 into 3 squares.

The programs for A307219, there is no canonical definition to state claims against.
-/

/-! ## A307219.P10139290548335682313

`A025427(A024700(n+1)+1)`
-/

namespace A307219.P10139290548335682313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A024700 (n + 1) + 1).toNat

end

end A307219.P10139290548335682313

/-! ## A307219.P7787659848001930448

`A025427((A286679(n+3)+1)/2)`
-/

namespace A307219.P7787659848001930448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.roundAway ((A286679 (n + 3) + 1 : ℚ) / 2)).toNat

end

end A307219.P7787659848001930448

/-! ## A307219.P10746482808339489412

`A025427(A008810(p?[A223134(n)]))`
-/

namespace A307219.P10746482808339489412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A008810 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A307219.P10746482808339489412

/-! ## A307219.P8635944961449597360

`A025427(A008619(A286679(n+3)))`
-/

namespace A307219.P8635944961449597360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A008619 (A286679 (n + 3)).toNat).toNat

end

end A307219.P8635944961449597360

/-! ## A307219.P4451052939954100480

`A025427(2*(A286679(n+3)+1))`
-/

namespace A307219.P4451052939954100480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (2 * (A286679 (n + 3) + 1)).toNat

end

end A307219.P4451052939954100480

/-!
# A307221: Positions of records in A306440.

The programs for A307221, there is no canonical definition to state claims against.
-/

/-! ## A307221.P14084394357144199795

`A184985(lcm(A122448(n), A225875(n+1)))`
-/

namespace A307221.P14084394357144199795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (Int.lcm (A122448 n) (A225875 (n + 1)))

end

end A307221.P14084394357144199795

/-! ## A307221.P10351706681029883469

`A362285(A056694(n+2))`
-/

namespace A307221.P10351706681029883469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362285 (A056694 (n + 2)).toNat

end

end A307221.P10351706681029883469

/-!
# A307222: Deficient numbers k at least one of whose divisors is the sum of other distinct divisors of k.

The programs for A307222, there is no canonical definition to state claims against.
-/

/-! ## A307222.P1107212528763149763

`filter[A119357(n+1), A294934(#)]`
-/

namespace A307222.P1107212528763149763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A307222.P1107212528763149763

/-! ## A307222.P2086159103161080620

`∩[A005100(n+1), A119357(n+1)]`
-/

namespace A307222.P2086159103161080620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307222.P2086159103161080620

/-! ## A307222.P570470574731795127

`∩[A051773(n+1), A119357(n+1)]`
-/

namespace A307222.P570470574731795127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307222.P570470574731795127

/-! ## A307222.P4578381418606853854

`∩[A119357(n+1), A125493(n+1)]`
-/

namespace A307222.P4578381418606853854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307222.P4578381418606853854

/-! ## A307222.P1495915969032005757

`∩[A119357(n+1), A214547(n+1)]`
-/

namespace A307222.P1495915969032005757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307222.P1495915969032005757

/-! ## A307222.P950444067817283757

`∩[A119357(n+1), A237046(n+1)]`
-/

namespace A307222.P950444067817283757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307222.P950444067817283757

/-! ## A307222.P2246886072797690395

`∩[A119357(n+1), A354145(n+1)]`
-/

namespace A307222.P2246886072797690395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307222.P2246886072797690395

/-!
# A307225: Superpractical numbers: practical numbers m with a record total number of combinations for presenting the set of numbers 1 <= k <= sigma(m) as sums of distinct divisors of m.

The programs for A307225, there is no canonical definition to state claims against.
-/

/-! ## A307225.P14812887771800952838

`record[A272777(n+1)%A244353(n+1)]`
-/

namespace A307225.P14812887771800952838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272777 (n + 1)) (A244353 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307225.P14812887771800952838

/-! ## A307225.P7481555912404191702

`record[gcd(A328969(n+2), A329004(2*(n+2)))]`
-/

namespace A307225.P7481555912404191702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328969 (n + 2)) (A329004 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307225.P7481555912404191702

/-! ## A307225.P4442984712979377938

`lt[A023894(n), A005470(A032741(n))]`
-/

namespace A307225.P4442984712979377938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307225.P4442984712979377938

/-! ## A307225.P7674580690259908067

`record[A210445(A179164(n+1))]`
-/

namespace A307225.P7674580690259908067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A179164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307225.P7674580690259908067

/-! ## A307225.P6436350774423241076

`eq[A079559(n), A265517(n)]`
-/

namespace A307225.P6436350774423241076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307225.P6436350774423241076

/-!
# A307226: Triangle read by rows: drop and bounce.

The programs for A307226, there is no canonical definition to state claims against.
-/

/-! ## A307226.P13513969037961944391

`A263390(record[A260999(n+1)])`
-/

namespace A307226.P13513969037961944391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307226.P13513969037961944391

/-! ## A307226.P12443217444046553840

`A263390(A077168(n))`
-/

namespace A307226.P12443217444046553840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A077168 n).toNat

end

end A307226.P12443217444046553840

/-! ## A307226.P4546634481658196065

`A263390(A163491(A083045(n)))`
-/

namespace A307226.P4546634481658196065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A163491 (A083045 n).toNat).toNat

end

end A307226.P4546634481658196065

/-! ## A307226.P10123699603043337025

`A263390(n+1)+A061480(A000079(n))`
-/

namespace A307226.P10123699603043337025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (n + 1) + A061480 (A000079 n).toNat

end

end A307226.P10123699603043337025

/-! ## A307226.P43690722549912502

`A163491(n+2)-A000120(A000079(n))`
-/

namespace A307226.P43690722549912502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (n + 2) - A000120 (A000079 n).toNat

end

end A307226.P43690722549912502

/-!
# A307227: Numbers k such that A060648(k) is divisible by k.

The programs for A307227, there is no canonical definition to state claims against.
-/

/-! ## A307227.P4998596931024788501

`C(A042939(A001879(n)), A004773(n))`
-/

namespace A307227.P4998596931024788501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A042939 (A001879 n).toNat).toNat (A004773 n).toNat

end

end A307227.P4998596931024788501

/-!
# A307228: G.f.: A(x) = Sum_{n>=0} x^n * (1 - x*A(x)^(2*n))/(1 - x*A(x)^(2*n+1)).

The programs for A307228, there is no canonical definition to state claims against.
-/

/-! ## A307228.P10257299207419586083

`A349536(A181768(n))`
-/

namespace A307228.P10257299207419586083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A181768 n).toNat

end

end A307228.P10257299207419586083

/-! ## A307228.P10602655545526124849

`A316964(A259792(n))`
-/

namespace A307228.P10602655545526124849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A259792 n).toNat

end

end A307228.P10602655545526124849

/-! ## A307228.P12210597830165535655

`A374543(n)+A010060(A184993(n))`
-/

namespace A307228.P12210597830165535655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374543 n + A010060 (A184993 n).toNat

end

end A307228.P12210597830165535655

/-!
# A307230: Number of divisible pairs of distinct positive integers up to n with at least one binary carry.

The programs for A307230, there is no canonical definition to state claims against.
-/

/-! ## A307230.P63635329538839012

`A325124(n)-n`
-/

namespace A307230.P63635329538839012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 n - (n : ℤ)

end

end A307230.P63635329538839012

/-! ## A307230.P12887430289678878020

`∑[∑{d}[n, ceil(and(n, #)/n)]]-n`
-/

namespace A307230.P12887430289678878020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈(Nat.land n d : ℚ) / (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A307230.P12887430289678878020

/-! ## A307230.P10329917850623820791

`∑[∑{d}[n, A057427(and(n, #))]]-n`
-/

namespace A307230.P10329917850623820791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A057427 (Nat.land n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A307230.P10329917850623820791

/-! ## A307230.P11134772485532508554

`∑[∑{d}[n, A178334(and(n, #))]]-n`
-/

namespace A307230.P11134772485532508554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A178334 (Nat.land n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A307230.P11134772485532508554

/-! ## A307230.P15598882980808505245

`∑[∑{d}[n, floor(atan(#))]]-A325123(n)`
-/

namespace A307230.P15598882980808505245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325123 n

end

end A307230.P15598882980808505245

/-! ## A307230.P9112721847291928618

`∑[A032741(n)]-A325123(n)`
-/

namespace A307230.P9112721847291928618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325123 n

end

end A307230.P9112721847291928618

/-! ## A307230.P3335517842039448404

`A006218(n)-(A325123(n)+n)`
-/

namespace A307230.P3335517842039448404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A325123 n + (n : ℤ))

end

end A307230.P3335517842039448404

/-! ## A307230.P6282530402054450532

`A054519(n)-(A325123(n)+1+n)`
-/

namespace A307230.P6282530402054450532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - (A325123 n + 1 + (n : ℤ))

end

end A307230.P6282530402054450532

/-! ## A307230.P4868752277070394371

`∑[A000005(abs(1-n)+1)]-2-A325123(n)-n`
-/

namespace A307230.P4868752277070394371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 - A325123 n - (n : ℤ)

end

end A307230.P4868752277070394371

/-! ## A307230.P3124495268061953692

`A006218(n)-n%A325095(n)-A325123(n)`
-/

namespace A307230.P3124495268061953692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - Int.tmod (n : ℤ) (A325095 n) - A325123 n

end

end A307230.P3124495268061953692

/-!
# A307231: G.f.: A(x) = exp( Sum_{n>=1} x^n/n * (1 + x^n*A(x)^(2*n)) / (1 + x^n*A(x)^n) ).

The programs for A307231, there is no canonical definition to state claims against.
-/

/-! ## A307231.P3576110610508557461

`A033183(A048693(n)+1)+1`
-/

namespace A307231.P3576110610508557461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A048693 n + 1).toNat + 1

end

end A307231.P3576110610508557461

/-! ## A307231.P6863030901169604275

`A110656(A227549(n+1)+A001333(n))`
-/

namespace A307231.P6863030901169604275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A227549 (n + 1) + A001333 n).toNat

end

end A307231.P6863030901169604275

/-! ## A307231.P2418955969197598271

`A002024(A266328(n))`
-/

namespace A307231.P2418955969197598271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A266328 n).toNat

end

end A307231.P2418955969197598271

/-! ## A307231.P5126807180643274366

`A206551(A127601(n))`
-/

namespace A307231.P5126807180643274366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A127601 n).toNat

end

end A307231.P5126807180643274366

/-! ## A307231.P18025076590527201466

`A356316(A030038(n))`
-/

namespace A307231.P18025076590527201466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356316 (A030038 n).toNat

end

end A307231.P18025076590527201466

/-!
# A307232: a(n) is the number of n X n {0,1}-matrices (over the reals) that contain no zeros when squared.

The programs for A307232, there is no canonical definition to state claims against.
-/

/-! ## A307232.P4539881701914331720

`A057859(A027890(n!))`
-/

namespace A307232.P4539881701914331720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (A027890 (Nat.factorial n)).toNat

end

end A307232.P4539881701914331720

/-!
# A307233: a(n) = Product_{k=1..n} (k^2 + k + 1) mod n.

The programs for A307233, there is no canonical definition to state claims against.
-/

/-! ## A307233.P15780740375969346014

`∏[A004652(A109613(n))]%(n+1)`
-/

namespace A307233.P15780740375969346014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A307233.P15780740375969346014

/-! ## A307233.P3002858703767508702

`∏[(3-n)²+n-2]%(n+1)`
-/

namespace A307233.P3002858703767508702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A307233.P3002858703767508702

/-! ## A307233.P1079463202223131088

`abs(or(1, ∏[n*(n-1)+1])%(n+1))`
-/

namespace A307233.P1079463202223131088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)|

end

end A307233.P1079463202223131088

/-! ## A307233.P9469421936323956914

`A004180(A130032(n)%(n+1))`
-/

namespace A307233.P9469421936323956914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (Int.tmod (A130032 n) (n + 1 : ℤ)).toNat

end

end A307233.P9469421936323956914

/-!
# A307236: One half of the number of primitive reduced binary quadratic forms for discriminant 4*A000037(n), for n >= 1.

The programs for A307236, there is no canonical definition to state claims against.
-/

/-! ## A307236.P16900880504212227402

`A053574(A282913(n+1)+1)`
-/

namespace A307236.P16900880504212227402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A282913 (n + 1) + 1).toNat

end

end A307236.P16900880504212227402

/-! ## A307236.P1961635461435387520

`A001222(A041674(n)+A041653(n+1))`
-/

namespace A307236.P1961635461435387520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A041674 n + A041653 (n + 1)).toNat

end

end A307236.P1961635461435387520

/-! ## A307236.P5784703538797824693

`A141829(A214248(n+1)+A192234(n))`
-/

namespace A307236.P5784703538797824693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141829 (A214248 (n + 1) + A192234 n).toNat

end

end A307236.P5784703538797824693

/-! ## A307236.P7335966793001163331

`A001227(A119034(n+1)-A001840(n))`
-/

namespace A307236.P7335966793001163331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A119034 (n + 1) - A001840 n).toNat

end

end A307236.P7335966793001163331

/-! ## A307236.P2169329979504764108

`A001222(A264131(2*n+1)+A055796(n))`
-/

namespace A307236.P2169329979504764108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A264131 (2 * n + 1) + A055796 n).toNat

end

end A307236.P2169329979504764108

/-!
# A307239: Analog of Pascal's triangle, with A007947 applied to each sum.

The programs for A307239, there is no canonical definition to state claims against.
-/

/-! ## A307239.P1310773281186411619

`A007895(A000292(A176346(n)²))`
-/

namespace A307239.P1310773281186411619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000292 (A176346 n ^ 2).toNat).toNat

end

end A307239.P1310773281186411619

/-! ## A307239.P7872876430338959076

`A081387(A049332(A176346(n))²)`
-/

namespace A307239.P7872876430338959076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081387 (A049332 (A176346 n).toNat ^ 2).toNat

end

end A307239.P7872876430338959076

/-! ## A307239.P8764285982127669227

`A212121(A101163(A176346(n))+1)`
-/

namespace A307239.P8764285982127669227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212121 (A101163 (A176346 n).toNat + 1).toNat

end

end A307239.P8764285982127669227

/-! ## A307239.P10415702796614129946

`A040695(A154336(n))`
-/

namespace A307239.P10415702796614129946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040695 (A154336 n).toNat

end

end A307239.P10415702796614129946

/-! ## A307239.P13599648965214992163

`A073182(A176417(n))`
-/

namespace A307239.P13599648965214992163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073182 (A176417 n).toNat

end

end A307239.P13599648965214992163

/-!
# A307240: a(0) = 1; a(n) = Sum_{k=1..n} -lambda(k+1)*a(n-k), where lambda() is the Liouville function (A008836).

The programs for A307240, there is no canonical definition to state claims against.
-/

/-! ## A307240.P16661716896898779770

`A241061(A075709(n+1)+n)`
-/

namespace A307240.P16661716896898779770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 (A075709 (n + 1) + (n : ℤ)).toNat

end

end A307240.P16661716896898779770

/-!
# A307241: a(0) = 1; a(n) = Sum_{k=1..n} (-1)^(k+1)*d(k+1)*a(n-k), where d() is the number of divisors (A000005).

The programs for A307241, there is no canonical definition to state claims against.
-/

/-! ## A307241.P15767061511869696817

`A003056(or(A018158(n), A094734(n)))`
-/

namespace A307241.P15767061511869696817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A018158 n) (A094734 n)).toNat

end

end A307241.P15767061511869696817

/-! ## A307241.P13553558558884150035

`A194327(A131818(n+1)+A094033(n))`
-/

namespace A307241.P13553558558884150035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A131818 (n + 1) + A094033 n).toNat

end

end A307241.P13553558558884150035

/-! ## A307241.P12261548653771525663

`A192416(a(n-1)+n-2)` with `a(0)=1, a(1)=2`
-/

namespace A307241.P12261548653771525663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A192416 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A307241.P12261548653771525663

/-! ## A307241.P16057867133683875729

`A258575(a(n-1)+n-2)` with `a(0)=1, a(1)=2`
-/

namespace A307241.P16057867133683875729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A258575 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A307241.P16057867133683875729

/-! ## A307241.P18276367259741894781

`A325367(A298338(n))+A284792(n+1)`
-/

namespace A307241.P18276367259741894781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (A298338 n).toNat + A284792 (n + 1)

end

end A307241.P18276367259741894781

/-!
# A307242: a(0) = 1; a(n) = Sum_{k=1..n} (-1)^(k+1)*sigma_2(k+1)*a(n-k), where sigma_2() is the sum of squares of divisors (A001157).

The programs for A307242, there is no canonical definition to state claims against.
-/

/-! ## A307242.P246194144785001866

`A230980(A244784(n+1)-1)`
-/

namespace A307242.P246194144785001866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A244784 (n + 1) - 1).toNat

end

end A307242.P246194144785001866

/-! ## A307242.P5100879262366918852

`A230980(xor(1, A244784(n+1)))`
-/

namespace A307242.P5100879262366918852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.xor 1 (A244784 (n + 1))).toNat

end

end A307242.P5100879262366918852

/-!
# A307243: An irregular fractal binary sequence embedding three copies of itself. See comments for precise definition.

The programs for A307243, there is no canonical definition to state claims against.
-/

/-! ## A307243.P17487302602401736407

`A127001(A026035(n+2)+record[A057164(n)])`
-/

namespace A307243.P17487302602401736407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127001 (A026035 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307243.P17487302602401736407

/-! ## A307243.P5082973607950872998

`A005614((A053742(n)-A016777(n))%A105848(2*n+1))`
-/

namespace A307243.P5082973607950872998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (Int.tmod (A053742 n - A016777 n) (A105848 (2 * n + 1))).toNat

end

end A307243.P5082973607950872998

/-! ## A307243.P15475802100829376378

`A010060(A003100(A302029(2*(n+2))+A003100(n+8)))`
-/

namespace A307243.P15475802100829376378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003100 (A302029 (2 * (n + 2)) + A003100 (n + 8)).toNat).toNat

end

end A307243.P15475802100829376378

/-! ## A307243.P6092904691017522450

`A256660(A087382(n+3)+2)%2`
-/

namespace A307243.P6092904691017522450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256660 (A087382 (n + 3) + 2).toNat) 2

end

end A307243.P6092904691017522450

/-! ## A307243.P4855158112202518548

`A181632(A335171(n+1))`
-/

namespace A307243.P4855158112202518548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181632 (A335171 (n + 1)).toNat

end

end A307243.P4855158112202518548

/-!
# A307246: Smallest k for which a set of n primes <= k exists so that the averages of all nonempty subsets are all distinct primes.

The programs for A307246, there is no canonical definition to state claims against.
-/

/-! ## A307246.P2447505784807523413

`A113833(A000009(2*(n+2)))-A355619(2*n+3)`
-/

namespace A307246.P2447505784807523413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113833 (A000009 (2 * (n + 2))).toNat - A355619 (2 * n + 3)

end

end A307246.P2447505784807523413

/-!
# A307247: Second digit in the expansion of n in Fraenkel's exotic ternary representation.

The programs for A307247, the canonical program `A307247.P2766846640949423295` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307247 has offset 1).

The definition of A307247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307247.P2766846640949423295

`A263844(∑[A188374(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A307247

/-- `A263844(∑[A188374(n+1)])` -/
def P2766846640949423295.Spec : Prop :=
  ∀ n, P2766846640949423295.a n = A307247 (n + 1)

theorem P2766846640949423295.correct : P2766846640949423295.Spec := by
  intro n
  simp only [A307247, Nat.add_sub_cancel]

end A307247

/-! ## A307247.P5455553858354879982

`A263844(∑[char[n-A263844(n+1)]])`
-/

namespace A307247.P5455553858354879982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A263844 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307247.P5455553858354879982

namespace A307247

/-- `A263844(∑[char[n-A263844(n+1)]])` -/
def P5455553858354879982.Spec : Prop :=
  ∀ n, P5455553858354879982.a n = A307247 (n + 1)

end A307247

/-! ## A307247.P18066962908147358190

`A294180(∑[A188374(n+1)])-1`
-/

namespace A307247.P18066962908147358190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A307247.P18066962908147358190

namespace A307247

/-- `A294180(∑[A188374(n+1)])-1` -/
def P18066962908147358190.Spec : Prop :=
  ∀ n, P18066962908147358190.a n = A307247 (n + 1)

theorem P18066962908147358190.correct : P18066962908147358190.Spec := by
  intro n
  simp only [A307247, Nat.add_sub_cancel, A307247.P18066962908147358190.f1, A307247.P18066962908147358190.a, A307247.P2766846640949423295.f1, A307247.P2766846640949423295.a, A188374, A188374.P8612799017787756249.a, A263844, A263844.P203203564096424831.a, A294180, A294180.P3974927329510953203.a, A080764, A080764.P14301132771463561424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A307247

/-! ## A307247.P17012264827538291884

`A002148(n)%A294180(∑[A188374(n+1)])`
-/

namespace A307247.P17012264827538291884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A294180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A307247.P17012264827538291884

namespace A307247

/-- `A002148(n)%A294180(∑[A188374(n+1)])` -/
def P17012264827538291884.Spec : Prop :=
  ∀ n, P17012264827538291884.a n = A307247 (n + 1)

end A307247

/-! ## A307247.P16291759378443012791

`A004273(9*(n+1))%A294180(∑[A188374(n+1)])`
-/

namespace A307247.P16291759378443012791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (9 * (n + 1))) (A294180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A307247.P16291759378443012791

namespace A307247

/-- `A004273(9*(n+1))%A294180(∑[A188374(n+1)])` -/
def P16291759378443012791.Spec : Prop :=
  ∀ n, P16291759378443012791.a n = A307247 (n + 1)

end A307247

/-!
# A307248: a(n) is the number of n X n binary matrices (over the reals) with at least one row and column full of 1's where the row index equals the column index.

The programs for A307248, there is no canonical definition to state claims against.
-/

/-! ## A307248.P3034396338050076322

`A002416(n+1)-A173403(n+1)`
-/

namespace A307248.P3034396338050076322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) - A173403 (n + 1)

end

end A307248.P3034396338050076322

/-! ## A307248.P5411040073361400010

`A002416(n+1)-record[A217436(n)]`
-/

namespace A307248.P5411040073361400010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307248.P5411040073361400010

/-!
# A307249: Number of simplicial complexes with n nodes.

The programs for A307249, there is no canonical definition to state claims against.
-/

/-! ## A307249.P13035318037243689047

`∏{e}[2^n, A006126(#)]`
-/

namespace A307249.P13035318037243689047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006126 (Nat.factorization (f1 n) p)

end

end A307249.P13035318037243689047

/-! ## A307249.P9770944667051954478

`A006126(floor(acot(n)+n))`
-/

namespace A307249.P9770944667051954478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A307249.P9770944667051954478

/-! ## A307249.P17471551675405901613

`A006126(n)-floor(acot(n))`
-/

namespace A307249.P17471551675405901613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A307249.P17471551675405901613

/-! ## A307249.P17070580531465089939

`A006126(A028310(n))`
-/

namespace A307249.P17070580531465089939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 (A028310 n).toNat

end

end A307249.P17070580531465089939

/-! ## A307249.P6807996536571316318

`A006126(A111332(n)+n)`
-/

namespace A307249.P6807996536571316318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 (A111332 n + (n : ℤ)).toNat

end

end A307249.P6807996536571316318

/-!
# A307250: Primes q == 1 (mod 4) such that there is exactly one equivalence class of quaternary quadratic forms of discriminant q not representing 2.

The programs for A307250, there is no canonical definition to state claims against.
-/

/-! ## A307250.P4364216680078769528

`A363147(lt[A187470(n+1), A271513(n)])`
-/

namespace A307250.P4364216680078769528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307250.P4364216680078769528

/-!
# A307251: Numbers k for which A319100(k) sets a new record.

The programs for A307251, there is no canonical definition to state claims against.
-/

/-! ## A307251.P11609984689035293996

`record[A262401(A146377(n+1))]`
-/

namespace A307251.P11609984689035293996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (A146377 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307251.P11609984689035293996

/-! ## A307251.P17297700873640981246

`filter[A307162(n+1), A167021(#)]`
-/

namespace A307251.P17297700873640981246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A307251.P17297700873640981246

/-! ## A307251.P5659586138044369867

`filter[A307162(n+1), A368916(#)]`
-/

namespace A307251.P5659586138044369867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A307251.P5659586138044369867

/-!
# A307252: Records in A319100.

The programs for A307252, there is no canonical definition to state claims against.
-/

/-! ## A307252.P1059093788635262999

`record[A323505(A154445(n-and(n, 2*n)))]`
-/

namespace A307252.P1059093788635262999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (A154445 (n - Nat.land n (2 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307252.P1059093788635262999

/-! ## A307252.P14205830916201929085

`A323505(record[A180200(n)-A064707(n)])`
-/

namespace A307252.P14205830916201929085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 n - A064707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307252.P14205830916201929085

/-! ## A307252.P12333582179878356762

`∑{d}[A307251(n+1), A307381(#)]`
-/

namespace A307252.P12333582179878356762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A307381 d

end

end A307252.P12333582179878356762

/-! ## A307252.P12819834554158661132

`A319100(A307251(n+1))`
-/

namespace A307252.P12819834554158661132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A307251 (n + 1)).toNat

end

end A307252.P12819834554158661132

/-! ## A307252.P17281821802410134014

`filter[A382492(n+1), A190210(#)]`
-/

namespace A307252.P17281821802410134014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190210 (f1 j).toNat = 1) n)

end

end A307252.P17281821802410134014

/-!
# A307253: Number of triangles larger than size=1 in a matchstick-made hexagon with side length n.

The programs for A307253, the canonical program `A307253.P1314890788948728855` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307253 has offset 0).

The definition of A307253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307253.P1314890788948728855

`floor(n*(14*n²+9*n+2)/4)-6*n²`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307253

/-- `floor(n*(14*n²+9*n+2)/4)-6*n²` -/
def P1314890788948728855.Spec : Prop :=
  ∀ n, P1314890788948728855.a n = A307253 n

theorem P1314890788948728855.correct : P1314890788948728855.Spec := by
  intro n
  simp only [A307253]

end A307253

/-! ## A307253.P15616156273732689339

`abs(A033581(n)-A045949(n))`
-/

namespace A307253.P15616156273732689339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033581 n - A045949 n|

end

end A307253.P15616156273732689339

namespace A307253

/-- `abs(A033581(n)-A045949(n))` -/
def P15616156273732689339.Spec : Prop :=
  ∀ n, P15616156273732689339.a n = A307253 n

end A307253

/-! ## A307253.P10104754402544750435

`∑[A007899(n)-A019557(n)]`
-/

namespace A307253.P10104754402544750435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - A019557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307253.P10104754402544750435

namespace A307253

/-- `∑[A007899(n)-A019557(n)]` -/
def P10104754402544750435.Spec : Prop :=
  ∀ n, P10104754402544750435.a n = A307253 n

end A307253

/-! ## A307253.P7560568037461140433

`(A007202(n)-A082040(n))%A007202(n)`
-/

namespace A307253.P7560568037461140433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007202 n - A082040 n) (A007202 n)

end

end A307253.P7560568037461140433

namespace A307253

/-- `(A007202(n)-A082040(n))%A007202(n)` -/
def P7560568037461140433.Spec : Prop :=
  ∀ n, P7560568037461140433.a n = A307253 n

end A307253

/-! ## A307253.P9833194988339880455

`2*(A019298(A004273(n))-A019298(n))`
-/

namespace A307253.P9833194988339880455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A019298 (A004273 n).toNat - A019298 n)

end

end A307253.P9833194988339880455

namespace A307253

/-- `2*(A019298(A004273(n))-A019298(n))` -/
def P9833194988339880455.Spec : Prop :=
  ∀ n, P9833194988339880455.a n = A307253 n

end A307253

/-! ## A307253.P12679676660750286318

`(A033581(n)-A045949(n))*A244895(A139610(n+1)-2)`
-/

namespace A307253.P12679676660750286318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033581 n - A045949 n) * A244895 (A139610 (n + 1) - 2).toNat

end

end A307253.P12679676660750286318

namespace A307253

/-- `(A033581(n)-A045949(n))*A244895(A139610(n+1)-2)` -/
def P12679676660750286318.Spec : Prop :=
  ∀ n, P12679676660750286318.a n = A307253 n

end A307253

/-!
# A307254: Numbers k such that k is the substring identical to the most significant digits of its base-3 representation.

The programs for A307254, there is no canonical definition to state claims against.
-/

/-! ## A307254.P10927729273012063808

`∩[A038103(n+1), A258069(n+1)]`
-/

namespace A307254.P10927729273012063808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307254.P10927729273012063808

/-! ## A307254.P15485709180472968567

`∩[A038103(n+1), A291179(n+1)]`
-/

namespace A307254.P15485709180472968567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307254.P15485709180472968567

/-! ## A307254.P9526433733686062216

`A224447(A027214(n))+A038103(n+1)`
-/

namespace A307254.P9526433733686062216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224447 (A027214 n).toNat + A038103 (n + 1)

end

end A307254.P9526433733686062216

/-! ## A307254.P4886686042625341843

`A038103(n+1)+A038020(A038140(n+1))`
-/

namespace A307254.P4886686042625341843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038103 (n + 1) + A038020 (A038140 (n + 1)).toNat

end

end A307254.P4886686042625341843

/-! ## A307254.P1468559418298675798

`A102669(A089456(2*(n+1)))+A038103(n+1)`
-/

namespace A307254.P1468559418298675798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A089456 (2 * (n + 1))).toNat + A038103 (n + 1)

end

end A307254.P1468559418298675798

/-!
# A307255: Numbers k such that k is the substring identical to the most significant digits of its base-4 representation.

The programs for A307255, there is no canonical definition to state claims against.
-/

/-! ## A307255.P7135033105163063379

`A038104(A307256(n+2)%A038264(n+1))`
-/

namespace A307255.P7135033105163063379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038104 (Int.tmod (A307256 (n + 2)) (A038264 (n + 1))).toNat

end

end A307255.P7135033105163063379

/-!
# A307259: Expansion of (1/(1 - x)) * Product_{k>=1} (1 + k*x^k/(1 - x)^k).

The programs for A307259, there is no canonical definition to state claims against.
-/

/-! ## A307259.P15057881883654706026

`∑[A307262(n)]`
-/

namespace A307259.P15057881883654706026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307259.P15057881883654706026

/-! ## A307259.P8347221112087124168

`∑{d}[A000079(n), A307262(log2(#))]`
-/

namespace A307259.P8347221112087124168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A307262 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A307259.P8347221112087124168

/-!
# A307261: Expansion of Product_{k>=1} 1/(1 - k*x^k/(1 - x)^k).

The programs for A307261, there is no canonical definition to state claims against.
-/

/-! ## A307261.P9752207984650319354

`A105519(A121591(n+1))+A002572(2*n+1)`
-/

namespace A307261.P9752207984650319354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A121591 (n + 1)).toNat + A002572 (2 * n + 1)

end

end A307261.P9752207984650319354

/-! ## A307261.P8865833833133484415

`A008616(A001629(2*n+3)-n)`
-/

namespace A307261.P8865833833133484415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A001629 (2 * n + 3) - (n : ℤ)).toNat

end

end A307261.P8865833833133484415

/-!
# A307262: Expansion of Product_{k>=1} (1 + k*x^k/(1 - x)^k).

The programs for A307262, there is no canonical definition to state claims against.
-/

/-! ## A307262.P4679285456467226425

`A001429(n+3)-A108611(A288444(2*n+1))`
-/

namespace A307262.P4679285456467226425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001429 (n + 3) - A108611 (A288444 (2 * n + 1)).toNat

end

end A307262.P4679285456467226425

/-! ## A307262.P8251814098152445865

`A335130(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A307262.P8251814098152445865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A335130 (a (n - 1) ^ 2).toNat

end

end A307262.P8251814098152445865

/-! ## A307262.P2618033181420069733

`A369715(A211297(n))`
-/

namespace A307262.P2618033181420069733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A211297 n).toNat

end

end A307262.P2618033181420069733

/-!
# A307264: Expansion of (1/(1 - x)) * Product_{k>=1} 1/(1 + (-x)^k/(1 - x)^k).

The programs for A307264, there is no canonical definition to state claims against.
-/

/-! ## A307264.P872577282880209955

`∑[A307265(n)]`
-/

namespace A307264.P872577282880209955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307264.P872577282880209955

/-! ## A307264.P14874102795058404654

`A307265(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A307264.P14874102795058404654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307265 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A307264.P14874102795058404654

/-! ## A307264.P17247730077695352913

`A307265(n)+a(n-A158388(n))` with `a(0)=1`
-/

namespace A307264.P17247730077695352913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307265 n + a ((n : ℤ) - A158388 n).toNat

end

end A307264.P17247730077695352913

/-! ## A307264.P4438593971500123101

`A307265(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A307264.P4438593971500123101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307265 n + a (A000027 (n + 1) - 2).toNat

end

end A307264.P4438593971500123101

/-! ## A307264.P13101392579667054146

`A307265(n)-floor(-a(A008619(2*n)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A307264.P13101392579667054146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307265 n - (-a (A008619 (2 * n) - 2).toNat)

end

end A307264.P13101392579667054146

/-!
# A307265: Expansion of Product_{k>=1} 1/(1 + (-x)^k/(1 - x)^k).

The programs for A307265, there is no canonical definition to state claims against.
-/

/-! ## A307265.P4142957370744473662

`A084638(n)-A089233(A135092(n))`
-/

namespace A307265.P4142957370744473662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 n - A089233 (A135092 n).toNat

end

end A307265.P4142957370744473662

/-! ## A307265.P2724471547067214025

`A084638(n)-A032741(A133494(n))`
-/

namespace A307265.P2724471547067214025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 n - A032741 (A133494 n).toNat

end

end A307265.P2724471547067214025

/-! ## A307265.P726961852854531691

`A279339(A195458(n+1))`
-/

namespace A307265.P726961852854531691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A195458 (n + 1)).toNat

end

end A307265.P726961852854531691

/-! ## A307265.P1247668266501981046

`A325543(A054539(n+3))`
-/

namespace A307265.P1247668266501981046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325543 (A054539 (n + 3)).toNat

end

end A307265.P1247668266501981046

/-! ## A307265.P11565454018686963655

`A094373(n)-A374995(A006128(n))`
-/

namespace A307265.P11565454018686963655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A374995 (A006128 n).toNat

end

end A307265.P11565454018686963655

/-!
# A307266: Row 8 of array in A059897.

The programs for A307266, there is no canonical definition to state claims against.
-/

/-! ## A307266.P5818538212678054117

`A073675(A120230(n+1))`
-/

namespace A307266.P5818538212678054117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A120230 (n + 1)).toNat

end

end A307266.P5818538212678054117

/-! ## A307266.P18141193875694939565

`A073675(n+1)/A307150(n+1)*A307267(n+1)`
-/

namespace A307266.P18141193875694939565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073675 (n + 1) : ℚ) / (A307150 (n + 1) : ℚ) * (A307267 (n + 1) : ℚ)

end

end A307266.P18141193875694939565

/-! ## A307266.P7819366721211549182

`A073675(A007913(n+1))*A008833(A307267(n+1))`
-/

namespace A307266.P7819366721211549182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A007913 (n + 1)).toNat * A008833 (A307267 (n + 1)).toNat

end

end A307266.P7819366721211549182

/-! ## A307266.P8202684151032063527

`A073675(n+1)/A008833(n+1)*A008833(A307267(n+1))`
-/

namespace A307266.P8202684151032063527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073675 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ) * (A008833 (A307267 (n + 1)).toNat : ℚ)

end

end A307266.P8202684151032063527

/-! ## A307266.P18312322180380431361

`A307267(A307150(A073675(n+1)))`
-/

namespace A307266.P18312322180380431361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A307150 (A073675 (n + 1)).toNat).toNat

end

end A307266.P18312322180380431361

/-! ## A307266.P4577944813721773110

`A000265(n+1)*A006519(A307267(n+1))`
-/

namespace A307266.P4577944813721773110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A006519 (A307267 (n + 1)).toNat

end

end A307266.P4577944813721773110

/-! ## A307266.P10966320546961094819

`A038500(n+1)*A038502(A307267(n+1))`
-/

namespace A307266.P10966320546961094819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A038502 (A307267 (n + 1)).toNat

end

end A307266.P10966320546961094819

/-! ## A307266.P41996366890426264

`A007913(A214682(n+1))*A235872(A307267(n+1))`
-/

namespace A307266.P41996366890426264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A214682 (n + 1)).toNat * A235872 (A307267 (n + 1)).toNat

end

end A307266.P41996366890426264

/-! ## A307266.P5945492260267864442

`A307267(A307150(A059897(∑[n+2])))`
-/

namespace A307266.P5945492260267864442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A307150 (A059897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A307266.P5945492260267864442

/-! ## A307266.P12303458247833854896

`A059897(A374009(n+1))`
-/

namespace A307266.P12303458247833854896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A374009 (n + 1)).toNat

end

end A307266.P12303458247833854896

/-! ## A307266.P14387100692523159873

`A059897(A046691(n+6)-3)`
-/

namespace A307266.P14387100692523159873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A046691 (n + 6) - 3).toNat

end

end A307266.P14387100692523159873

/-! ## A307266.P11152708520280226210

`A059897(A000217(n+7)+8)`
-/

namespace A307266.P11152708520280226210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A000217 (n + 7) + 8).toNat

end

end A307266.P11152708520280226210

/-! ## A307266.P5943662123041812043

`A059897(A000124(n+8)-8)`
-/

namespace A307266.P5943662123041812043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A000124 (n + 8) - 8).toNat

end

end A307266.P5943662123041812043

/-! ## A307266.P16404317275091983640

`A059897(A167614(n+7)-(n+3))`
-/

namespace A307266.P16404317275091983640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A167614 (n + 7) - (n + 3 : ℤ)).toNat

end

end A307266.P16404317275091983640

/-!
# A307267: Row 24 of array in A059897.

The programs for A307267, there is no canonical definition to state claims against.
-/

/-! ## A307267.P10635755433404592082

`A073675(n+1)*A120229(n+1)*A120230(n+1)/(n+1)²`
-/

namespace A307267.P10635755433404592082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073675 (n + 1) * A120229 (n + 1) * A120230 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A307267.P10635755433404592082

/-! ## A307267.P15212719013206522187

`A073675(A120229(A120230(n+1)))`
-/

namespace A307267.P15212719013206522187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A120229 (A120230 (n + 1)).toNat).toNat

end

end A307267.P15212719013206522187

/-! ## A307267.P17838027784336722311

`A307150(n+1)/A073675(n+1)*A307266(n+1)`
-/

namespace A307267.P17838027784336722311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307150 (n + 1) : ℚ) / (A073675 (n + 1) : ℚ) * (A307266 (n + 1) : ℚ)

end

end A307267.P17838027784336722311

/-! ## A307267.P12981400212206182839

`A307150(A007913(n+1))*A008833(A307266(n+1))`
-/

namespace A307267.P12981400212206182839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (A007913 (n + 1)).toNat * A008833 (A307266 (n + 1)).toNat

end

end A307267.P12981400212206182839

/-! ## A307267.P6890670184157289964

`A007913(A166466(n+1))*A307266(A235872(n+1))`
-/

namespace A307267.P6890670184157289964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A166466 (n + 1)).toNat * A307266 (A235872 (n + 1)).toNat

end

end A307267.P6890670184157289964

/-! ## A307267.P11923353839963434323

`A307150(n+1)/A008833(n+1)*A008833(A307266(n+1))`
-/

namespace A307267.P11923353839963434323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307150 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ) * (A008833 (A307266 (n + 1)).toNat : ℚ)

end

end A307267.P11923353839963434323

/-! ## A307267.P5737754808108393684

`A307150(A274611(A274611(n+1)))`
-/

namespace A307267.P5737754808108393684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (A274611 (A274611 (n + 1)).toNat).toNat

end

end A307267.P5737754808108393684

/-! ## A307267.P10242238802036558249

`A307266(A307150(A073675(n+1)))`
-/

namespace A307267.P10242238802036558249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A307150 (A073675 (n + 1)).toNat).toNat

end

end A307267.P10242238802036558249

/-! ## A307267.P10934883322943062670

`A307266(A307150(A059897(∑[n+2])))`
-/

namespace A307267.P10934883322943062670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A307150 (A059897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A307267.P10934883322943062670

/-! ## A307267.P11999564174388261410

`A307266(A120229(n+1))`
-/

namespace A307267.P11999564174388261410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A120229 (n + 1)).toNat

end

end A307267.P11999564174388261410

/-!
# A307268: Partial sums of the Lucas numbers of the form L(3n+2) (A163063).

The programs for A307268, the canonical program `A307268.P11715760634184223182` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307268 has offset 0).

The definition of A307268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307268.P11715760634184223182

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=3, a(1)=14, a(2)=61`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307268

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P11715760634184223182.Spec : Prop :=
  ∀ n, P11715760634184223182.a n = A307268 n

theorem P11715760634184223182.correct : P11715760634184223182.Spec := by
  intro n
  simp only [A307268]

end A307268

/-! ## A307268.P14887547826820603111

`A001076(n+1)+A099919(n+1)`
-/

namespace A307268.P14887547826820603111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) + A099919 (n + 1)

end

end A307268.P14887547826820603111

namespace A307268

/-- `A001076(n+1)+A099919(n+1)` -/
def P14887547826820603111.Spec : Prop :=
  ∀ n, P14887547826820603111.a n = A307268 n

end A307268

/-! ## A307268.P11326892831600776109

`ogf((3-x)/(1-5x+3x^2+x^3))`
-/

namespace A307268.P11326892831600776109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -5, 3, 1] n

end

end A307268.P11326892831600776109

namespace A307268

/-- `ogf((3-x)/(1-5x+3x^2+x^3))` -/
def P11326892831600776109.Spec : Prop :=
  ∀ n, P11326892831600776109.a n = A307268 n

end A307268

/-! ## A307268.P13979408987546965753

`∑[round(ϕ^(3*n+2))]`
-/

namespace A307268.P13979408987546965753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307268.P13979408987546965753

namespace A307268

/-- `∑[round(ϕ^(3*n+2))]` -/
def P13979408987546965753.Spec : Prop :=
  ∀ n, P13979408987546965753.a n = A307268 n

end A307268

/-! ## A307268.P11288576843063785698

`round(ϕ*a(n-1))+ceil(ϕ²*a(n-1))+1` with `a(0)=3`
-/

namespace A307268.P11288576843063785698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + (⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉ + 1)

end

end A307268.P11288576843063785698

namespace A307268

/-- `round(ϕ*a(n-1))+ceil(ϕ²*a(n-1))+1` -/
def P11288576843063785698.Spec : Prop :=
  ∀ n, P11288576843063785698.a n = A307268 n

end A307268

/-! ## A307268.P5818649099640836681

`round(ϕ*a(n-1))+1-floor(a(n-1)/(ϕ-2))` with `a(0)=3`
-/

namespace A307268.P5818649099640836681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + (1 - ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 2)⌋)

end

end A307268.P5818649099640836681

namespace A307268

/-- `round(ϕ*a(n-1))+1-floor(a(n-1)/(ϕ-2))` -/
def P5818649099640836681.Spec : Prop :=
  ∀ n, P5818649099640836681.a n = A307268 n

end A307268

/-! ## A307268.P3021435551548638935

`A365907(n+2)-2`
-/

namespace A307268.P3021435551548638935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365907 (n + 2) - 2

end

end A307268.P3021435551548638935

namespace A307268

/-- `A365907(n+2)-2` -/
def P3021435551548638935.Spec : Prop :=
  ∀ n, P3021435551548638935.a n = A307268 n

end A307268

/-! ## A307268.P7715109228275340023

`A100886(3*(n+1))`
-/

namespace A307268.P7715109228275340023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (3 * (n + 1))

end

end A307268.P7715109228275340023

namespace A307268

/-- `A100886(3*(n+1))` -/
def P7715109228275340023.Spec : Prop :=
  ∀ n, P7715109228275340023.a n = A307268 n

end A307268

/-! ## A307268.P12874744191127536642

`A173714(3*(n+1))`
-/

namespace A307268.P12874744191127536642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (3 * (n + 1))

end

end A307268.P12874744191127536642

namespace A307268

/-- `A173714(3*(n+1))` -/
def P12874744191127536642.Spec : Prop :=
  ∀ n, P12874744191127536642.a n = A307268 n

end A307268

/-! ## A307268.P17775962895854740064

`floor(A048876(n+1)/2)`
-/

namespace A307268.P17775962895854740064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048876 (n + 1) : ℚ) / 2⌋

end

end A307268.P17775962895854740064

namespace A307268

/-- `floor(A048876(n+1)/2)` -/
def P17775962895854740064.Spec : Prop :=
  ∀ n, P17775962895854740064.a n = A307268 n

end A307268

/-! ## A307268.P16377942666054219643

`A245968(3*(n+1)+1)`
-/

namespace A307268.P16377942666054219643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (3 * (n + 1) + 1)

end

end A307268.P16377942666054219643

namespace A307268

/-- `A245968(3*(n+1)+1)` -/
def P16377942666054219643.Spec : Prop :=
  ∀ n, P16377942666054219643.a n = A307268 n

end A307268

/-! ## A307268.P12610972804623710223

`A001610(3*(n+1))/2`
-/

namespace A307268.P12610972804623710223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001610 (3 * (n + 1)) : ℚ) / 2

end

end A307268.P12610972804623710223

namespace A307268

/-- `A001610(3*(n+1))/2` -/
def P12610972804623710223.Spec : Prop :=
  ∀ n, P12610972804623710223.a n = (A307268 n : ℚ)

end A307268

/-! ## A307268.P1683476815953847491

`A142584(3*(n+1))/2`
-/

namespace A307268.P1683476815953847491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142584 (3 * (n + 1)) : ℚ) / 2

end

end A307268.P1683476815953847491

namespace A307268

/-- `A142584(3*(n+1))/2` -/
def P1683476815953847491.Spec : Prop :=
  ∀ n, P1683476815953847491.a n = (A307268 n : ℚ)

end A307268

/-! ## A307268.P9083455806414873795

`A100233(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A307268.P9083455806414873795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A100233 (n + 1) - a (n - 1)

end

end A307268.P9083455806414873795

namespace A307268

/-- `A100233(n+1)-a(n-1)` -/
def P9083455806414873795.Spec : Prop :=
  ∀ n, P9083455806414873795.a n = A307268 n

end A307268

/-! ## A307268.P1967698647759351538

`floor(A000032(2*(n+2)+n)/2)`
-/

namespace A307268.P1967698647759351538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (2 * (n + 2) + n) : ℚ) / 2⌋

end

end A307268.P1967698647759351538

namespace A307268

/-- `floor(A000032(2*(n+2)+n)/2)` -/
def P1967698647759351538.Spec : Prop :=
  ∀ n, P1967698647759351538.a n = A307268 n

end A307268

/-! ## A307268.P7388380561409414100

`(A000032(3*(n+1)+1)-1)/2`
-/

namespace A307268.P7388380561409414100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * (n + 1) + 1) - 1 : ℚ) / 2

end

end A307268.P7388380561409414100

namespace A307268

/-- `(A000032(3*(n+1)+1)-1)/2` -/
def P7388380561409414100.Spec : Prop :=
  ∀ n, P7388380561409414100.a n = (A307268 n : ℚ)

end A307268

/-! ## A307268.P15013561263233560207

`A000032(2*n+n+2)+a(n-1)` with `a(0)=3`
-/

namespace A307268.P15013561263233560207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000032 (2 * n + (n + 2)) + a (n - 1)

end

end A307268.P15013561263233560207

namespace A307268

/-- `A000032(2*n+n+2)+a(n-1)` -/
def P15013561263233560207.Spec : Prop :=
  ∀ n, P15013561263233560207.a n = A307268 n

end A307268

/-! ## A307268.P6864016667475738197

`A049651(n)+A033887(n+1)`
-/

namespace A307268.P6864016667475738197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049651 n + A033887 (n + 1)

end

end A307268.P6864016667475738197

namespace A307268

/-- `A049651(n)+A033887(n+1)` -/
def P6864016667475738197.Spec : Prop :=
  ∀ n, P6864016667475738197.a n = A307268 n

end A307268

/-! ## A307268.P8145892059566751160

`A049651(n)+Δ[Δ[A049652(n)]]`
-/

namespace A307268.P8145892059566751160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049651 n + (f1 (n + 1) - f1 n)

end

end A307268.P8145892059566751160

namespace A307268

/-- `A049651(n)+Δ[Δ[A049652(n)]]` -/
def P8145892059566751160.Spec : Prop :=
  ∀ n, P8145892059566751160.a n = A307268 n

end A307268

/-! ## A307268.P258485088694335220

`A364754(n+1)+A001077(n+1)`
-/

namespace A307268.P258485088694335220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364754 (n + 1) + A001077 (n + 1)

end

end A307268.P258485088694335220

namespace A307268

/-- `A364754(n+1)+A001077(n+1)` -/
def P258485088694335220.Spec : Prop :=
  ∀ n, P258485088694335220.a n = A307268 n

end A307268

/-!
# A307270: Coordination sequence for trivalent node of type alpha''' in the first Moore pentagonal tiling.

The programs for A307270, there is no canonical definition to state claims against.
-/

/-! ## A307270.P13229263854775856130

`∑[A073093(Δ[A329275(n)])]`
-/

namespace A307270.P13229263854775856130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307270.P13229263854775856130

/-! ## A307270.P14228386516138688554

`A089038(A228121(n+1)^A339095(n+1)²)`
-/

namespace A307270.P14228386516138688554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (SequenceMachineLib.roundAway ((A228121 (n + 1) : ℚ) ^ (A339095 (n + 1) ^ 2 : ℤ))).toNat

end

end A307270.P14228386516138688554

/-!
# A307271: Partial sums of A307201.

The programs for A307271, the canonical program `A307271.P14966515819900074794` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307271 has offset 0).

The definition of A307271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307271.P14966515819900074794

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=25, a(4)=46, a(5)=76, a(6)=106, a(7)=139, a(8)=181`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307271

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P14966515819900074794.Spec : Prop :=
  ∀ n, P14966515819900074794.a n = A307271 n

theorem P14966515819900074794.correct : P14966515819900074794.Spec := by
  intro n
  simp only [A307271]

end A307271

/-! ## A307271.P15273803381335298992

`∑[A307201(n)]`
-/

namespace A307271.P15273803381335298992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307271.P15273803381335298992

namespace A307271

/-- `∑[A307201(n)]` -/
def P15273803381335298992.Spec : Prop :=
  ∀ n, P15273803381335298992.a n = A307271 n

end A307271

/-! ## A307271.P16284491662362115542

`A307201(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A307271.P16284491662362115542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307201 n + a (A023443 n).toNat

end

end A307271.P16284491662362115542

namespace A307271

/-- `A307201(n)+a(A023443(n))` -/
def P16284491662362115542.Spec : Prop :=
  ∀ n, P16284491662362115542.a n = A307271 n

end A307271

/-! ## A307271.P13912610828523349576

`a(n-1)+A307201(n)+A000007(n)` with `a(0)=1`
-/

namespace A307271.P13912610828523349576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A307201 n + A000007 n)

end

end A307271.P13912610828523349576

namespace A307271

/-- `a(n-1)+A307201(n)+A000007(n)` -/
def P13912610828523349576.Spec : Prop :=
  ∀ n, P13912610828523349576.a n = A307271 n

end A307271

/-! ## A307271.P12735695061486166685

`a(n-1)+A307201(n)/A033999(n)²` with `a(0)=1`
-/

namespace A307271.P12735695061486166685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A307201 n : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A307271.P12735695061486166685

namespace A307271

/-- `a(n-1)+A307201(n)/A033999(n)²` -/
def P12735695061486166685.Spec : Prop :=
  ∀ n, P12735695061486166685.a n = (A307271 n : ℚ)

end A307271

/-! ## A307271.P14513924751531715732

`a(n-1)+(1-A010051(A000096(n+2)))*A307201(n)` with `a(0)=1`
-/

namespace A307271.P14513924751531715732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A010051 (A000096 (n + 2)).toNat) * A307201 n

end

end A307271.P14513924751531715732

namespace A307271

/-- `a(n-1)+(1-A010051(A000096(n+2)))*A307201(n)` -/
def P14513924751531715732.Spec : Prop :=
  ∀ n, P14513924751531715732.a n = A307271 n

end A307271

/-!
# A307272: Partial sums of A307202.

The programs for A307272, the canonical program `A307272.P18059001463994426958` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307272 has offset 0).

The definition of A307272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307272.P18059001463994426958

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=28, a(4)=49, a(5)=73, a(6)=103, a(7)=145, a(8)=187`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A307272

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P18059001463994426958.Spec : Prop :=
  ∀ n, P18059001463994426958.a n = A307272 n

theorem P18059001463994426958.correct : P18059001463994426958.Spec := by
  intro n
  simp only [A307272]

end A307272

/-! ## A307272.P3504282877663642654

`∑[A307202(n)]`
-/

namespace A307272.P3504282877663642654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307272.P3504282877663642654

namespace A307272

/-- `∑[A307202(n)]` -/
def P3504282877663642654.Spec : Prop :=
  ∀ n, P3504282877663642654.a n = A307272 n

end A307272

/-! ## A307272.P6747328335814472707

`A307202(n%A307201(n))+a(n-1)` with `a(0)=1`
-/

namespace A307272.P6747328335814472707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307202 (Int.tmod (n : ℤ) (A307201 n)).toNat + a (n - 1)

end

end A307272.P6747328335814472707

namespace A307272

/-- `A307202(n%A307201(n))+a(n-1)` -/
def P6747328335814472707.Spec : Prop :=
  ∀ n, P6747328335814472707.a n = A307272 n

end A307272

/-! ## A307272.P8049618034321476215

`a(n-1)+A307202(n)%A307276(n)` with `a(0)=1`
-/

namespace A307272.P8049618034321476215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A307202 n) (A307276 n)

end

end A307272.P8049618034321476215

namespace A307272

/-- `a(n-1)+A307202(n)%A307276(n)` -/
def P8049618034321476215.Spec : Prop :=
  ∀ n, P8049618034321476215.a n = A307272 n

end A307272

/-! ## A307272.P17986697772749974474

`A307202(n)+a(n-1)%A307271(n)` with `a(0)=1`
-/

namespace A307272.P17986697772749974474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307202 n + Int.tmod (a (n - 1)) (A307271 n)

end

end A307272.P17986697772749974474

namespace A307272

/-- `A307202(n)+a(n-1)%A307271(n)` -/
def P17986697772749974474.Spec : Prop :=
  ∀ n, P17986697772749974474.a n = A307272 n

end A307272

/-! ## A307272.P5056802595767247991

`A307202(n*A000034(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A307272.P5056802595767247991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307202 ((n : ℤ) * A000034 (2 * n)).toNat + a (n - 1)

end

end A307272.P5056802595767247991

namespace A307272

/-- `A307202(n*A000034(2*n))+a(n-1)` -/
def P5056802595767247991.Spec : Prop :=
  ∀ n, P5056802595767247991.a n = A307272 n

end A307272

/-!
# A307273: Partial sums of A307203.

The programs for A307273, there is no canonical definition to state claims against.
-/

/-! ## A307273.P7441195345603550290

`∑[A307203(n)]`
-/

namespace A307273.P7441195345603550290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307273.P7441195345603550290

/-! ## A307273.P12197377627234225495

`A307203(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A307273.P12197377627234225495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307203 (A028310 n).toNat + a (n - 1)

end

end A307273.P12197377627234225495

/-! ## A307273.P2213626236837020847

`A307203(n%A307201(n))+a(n-1)` with `a(0)=1`
-/

namespace A307273.P2213626236837020847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307203 (Int.tmod (n : ℤ) (A307201 n)).toNat + a (n - 1)

end

end A307273.P2213626236837020847

/-! ## A307273.P4478489538153430299

`a(n-1)+A307203(n)%A307276(n)` with `a(0)=1`
-/

namespace A307273.P4478489538153430299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A307203 n) (A307276 n)

end

end A307273.P4478489538153430299

/-! ## A307273.P17193294354735341539

`A307203(n)+a(n-1)%A307271(n)` with `a(0)=1`
-/

namespace A307273.P17193294354735341539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307203 n + Int.tmod (a (n - 1)) (A307271 n)

end

end A307273.P17193294354735341539

/-!
# A307274: Partial sums of A307204.

The programs for A307274, there is no canonical definition to state claims against.
-/

/-! ## A307274.P14352413929948573774

`∑[A307204(n)]`
-/

namespace A307274.P14352413929948573774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307274.P14352413929948573774

/-! ## A307274.P12230407875112175749

`A307204(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A307274.P12230407875112175749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307204 n + a (A023443 n).toNat

end

end A307274.P12230407875112175749

/-! ## A307274.P8268842029457504132

`a(n-1)+A307204(n)+A000007(n)` with `a(0)=1`
-/

namespace A307274.P8268842029457504132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A307204 n + A000007 n)

end

end A307274.P8268842029457504132

/-! ## A307274.P9466271960941195005

`a(n-1)+A307204(n)%A307276(n)` with `a(0)=1`
-/

namespace A307274.P9466271960941195005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A307204 n) (A307276 n)

end

end A307274.P9466271960941195005

/-! ## A307274.P4834389332409968138

`A307204(n)+a(n-1)%A307271(n)` with `a(0)=1`
-/

namespace A307274.P4834389332409968138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307204 n + Int.tmod (a (n - 1)) (A307271 n)

end

end A307274.P4834389332409968138

/-!
# A307275: Partial sums of A307205.

The programs for A307275, there is no canonical definition to state claims against.
-/

/-! ## A307275.P9492160975921706023

`∑[A307205(n)]`
-/

namespace A307275.P9492160975921706023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307275.P9492160975921706023

/-! ## A307275.P13491958051389714697

`A307205(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A307275.P13491958051389714697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307205 n + a (A023443 n).toNat

end

end A307275.P13491958051389714697

/-! ## A307275.P13750853360205543082

`A307205(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A307275.P13750853360205543082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307205 (A028310 n).toNat + a (n - 1)

end

end A307275.P13750853360205543082

/-! ## A307275.P3510382385100208199

`A307205(n)+a(n-1)%A307271(n)` with `a(0)=1`
-/

namespace A307275.P3510382385100208199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307205 n + Int.tmod (a (n - 1)) (A307271 n)

end

end A307275.P3510382385100208199

/-! ## A307275.P8368558893257659372

`a(n-1)+A307205(n)+and(1, A005893(n))` with `a(0)=1`
-/

namespace A307275.P8368558893257659372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A307205 n + Int.land 1 (A005893 n))

end

end A307275.P8368558893257659372

/-! ## A307275.P716828699699051184

`(A307205(n)+a(n-1))%A307276(n+1)` with `a(0)=1`
-/

namespace A307275.P716828699699051184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A307205 n + a (n - 1)) (A307276 (n + 1))

end

end A307275.P716828699699051184

/-!
# A307276: Partial sums of A307270.

The programs for A307276, there is no canonical definition to state claims against.
-/

/-! ## A307276.P2851736462661096815

`∑[A307270(n)]`
-/

namespace A307276.P2851736462661096815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307276.P2851736462661096815

/-! ## A307276.P15217792919847712924

`A307270(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A307276.P15217792919847712924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307270 (A028310 n).toNat + a (n - 1)

end

end A307276.P15217792919847712924

/-! ## A307276.P11907228908255653582

`A307270(n%A307201(n))+a(n-1)` with `a(0)=1`
-/

namespace A307276.P11907228908255653582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307270 (Int.tmod (n : ℤ) (A307201 n)).toNat + a (n - 1)

end

end A307276.P11907228908255653582

/-! ## A307276.P6716978472767744685

`A307270(n)+a(n-1)%A307271(n)` with `a(0)=1`
-/

namespace A307276.P6716978472767744685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307270 n + Int.tmod (a (n - 1)) (A307271 n)

end

end A307276.P6716978472767744685

/-! ## A307276.P18196537166851249459

`A307270(n)+a(A028242(A004273(n)))` with `a(0)=1`
-/

namespace A307276.P18196537166851249459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307270 n + a (A028242 (A004273 n).toNat).toNat

end

end A307276.P18196537166851249459

/-!
# A307277: Number of even, unimodular, positive definite lattices of dimension 4 over a real quadratic number field Q(sqrt(D)) of fundamental discriminant d = A306300(n).

The programs for A307277, there is no canonical definition to state claims against.
-/

/-! ## A307277.P1524114258006986850

`gcd(A139491(A001177(n+1)), A143976(n+2))`
-/

namespace A307277.P1524114258006986850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139491 (A001177 (n + 1)).toNat) (A143976 (n + 2))

end

end A307277.P1524114258006986850

/-!
# A307278: Record values in A050782.

The programs for A307278, there is no canonical definition to state claims against.
-/

/-! ## A307278.P7788544651556060786

`record[A050782(n)]`
-/

namespace A307278.P7788544651556060786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307278.P7788544651556060786

/-! ## A307278.P4123201271873152763

`A050782(A307279(n+1))`
-/

namespace A307278.P4123201271873152763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A307279 (n + 1)).toNat

end

end A307278.P4123201271873152763

/-! ## A307278.P8792983546976289634

`record[A061906(n)-A000007(n)]`
-/

namespace A307278.P8792983546976289634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307278.P8792983546976289634

/-! ## A307278.P1795249530384499385

`record[A061906(n)-A036987(n)]`
-/

namespace A307278.P1795249530384499385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n - A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307278.P1795249530384499385

/-! ## A307278.P18366808832058775098

`record[A061906(n)*A168184(n)]`
-/

namespace A307278.P18366808832058775098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n * A168184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307278.P18366808832058775098

/-!
# A307280: Irregular triangle read by rows, arising from the study of the behavior of an n-particle one-dimensional random walk.

The programs for A307280, there is no canonical definition to state claims against.
-/

/-! ## A307280.P9898476457583534124

`A000005(A344651(n)^A328171(n+1))`
-/

namespace A307280.P9898476457583534124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A344651 n : ℚ) ^ (A328171 (n + 1) : ℤ))).toNat

end

end A307280.P9898476457583534124

/-! ## A307280.P870669724282729813

`A308590(A336573(2*n))/A061704(n+1)`
-/

namespace A307280.P870669724282729813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308590 (A336573 (2 * n)).toNat : ℚ) / (A061704 (n + 1) : ℚ)

end

end A307280.P870669724282729813

/-!
# A307281: a(n) = second coordinate m of P-position (n,m) in Maharaja Nim.

The programs for A307281, there is no canonical definition to state claims against.
-/

/-! ## A307281.P5942718013661992913

`A308883(n+1)-1`
-/

namespace A307281.P5942718013661992913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308883 (n + 1) - 1

end

end A307281.P5942718013661992913

/-! ## A307281.P7187005156685500773

`A023443(A308883(n+1))`
-/

namespace A307281.P7187005156685500773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308883 (n + 1)).toNat

end

end A307281.P7187005156685500773

/-! ## A307281.P18000115379796019907

`A023444(A308883(n+1)+1)`
-/

namespace A307281.P18000115379796019907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A308883 (n + 1) + 1).toNat

end

end A307281.P18000115379796019907

/-! ## A307281.P6411059077787925114

`A023445(A308883(n+1)+2)`
-/

namespace A307281.P6411059077787925114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A308883 (n + 1) + 2).toNat

end

end A307281.P6411059077787925114

/-! ## A307281.P13494703510599937200

`A140106(2*A308883(n+1))`
-/

namespace A307281.P13494703510599937200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A308883 (n + 1)).toNat

end

end A307281.P13494703510599937200

/-! ## A307281.P7778765706169107489

`A059169(4*A308883(n+1))`
-/

namespace A307281.P7778765706169107489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A308883 (n + 1)).toNat

end

end A307281.P7778765706169107489

/-! ## A307281.P16242850668582026831

`abs(A308883(n+1)+A033999(Δ[n²]))`
-/

namespace A307281.P16242850668582026831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308883 (n + 1) + A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A307281.P16242850668582026831

/-!
# A307283: P-positions (indices of 0 values) along the spiral in A307282.

The programs for A307283, there is no canonical definition to state claims against.
-/

/-! ## A307283.P789009763195540034

`eq[0, A307282(n)]`
-/

namespace A307283.P789009763195540034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307283.P789009763195540034

/-! ## A307283.P8265939647561414150

`lt[A307282(n), acot(A007090(n))]`
-/

namespace A307283.P8265939647561414150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007090 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A307283.P8265939647561414150

/-! ## A307283.P6394794407876189759

`lt[A307282(n), acot(A110591(n))]`
-/

namespace A307283.P6394794407876189759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A110591 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A307283.P6394794407876189759

/-! ## A307283.P18331231445793353528

`lt[A307282(n), acot(A209259(n))]`
-/

namespace A307283.P18331231445793353528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A209259 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A307283.P18331231445793353528

/-! ## A307283.P17930747897462844010

`lt[A307282(n), acot(A328659(n))]`
-/

namespace A307283.P17930747897462844010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A328659 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A307283.P17930747897462844010

/-! ## A307283.P14300305027425480102

`lt[A307282(n), acot(A008864(n+1))]`
-/

namespace A307283.P14300305027425480102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008864 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A307283.P14300305027425480102

/-! ## A307283.P13788368937050891885

`lt[A307282(n), acot(A104103(n+1))]`
-/

namespace A307283.P13788368937050891885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A104103 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A307283.P13788368937050891885

/-! ## A307283.P1392792231291761377

`lt[A307282(n), A001222(A162753(n))]`
-/

namespace A307283.P1392792231291761377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A162753 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307283.P1392792231291761377

/-! ## A307283.P4254233444873037278

`lt[A307282(n), A001222(A112823(n+2))]`
-/

namespace A307283.P4254233444873037278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A112823 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307283.P4254233444873037278

/-! ## A307283.P5869631887253735771

`lt[A307282(n), A001222(A175787(n+1))]`
-/

namespace A307283.P5869631887253735771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175787 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307283.P5869631887253735771

/-!
# A307284: Coordinates X_upper(n) of P-positions in Maharaja Nim on square spiral (see Comments for precise definition).

The programs for A307284, there is no canonical definition to state claims against.
-/

/-! ## A307284.P8050874497362913557

`Δ[n²]-A046978(A265458(n+1))`
-/

namespace A307284.P8050874497362913557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A046978 (A265458 (n + 1)).toNat

end

end A307284.P8050874497362913557

/-!
# A307285: Coordinates Y_upper(n) of P-positions in Maharaja Nim on square spiral (see Comments for precise definition).

The programs for A307285, there is no canonical definition to state claims against.
-/

/-! ## A307285.P16203638962876864407

`A310076(n)%A267554(n+1)`
-/

namespace A307285.P16203638962876864407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310076 n) (A267554 (n + 1))

end

end A307285.P16203638962876864407

/-! ## A307285.P12038132827223544978

`A310076(n)-A000007(n²²)`
-/

namespace A307285.P12038132827223544978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310076 n - A000007 ((n ^ 2) ^ 2)

end

end A307285.P12038132827223544978

/-! ## A307285.P17511709787845870122

`∑[A079066(∑[A005109(2*n+5)])]`
-/

namespace A307285.P17511709787845870122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307285.P17511709787845870122

/-! ## A307285.P1074314114692374369

`A310076(n)-A178333(A001411(n))`
-/

namespace A307285.P1074314114692374369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310076 n - A178333 (A001411 n).toNat

end

end A307285.P1074314114692374369

/-! ## A307285.P10999973405848584443

`A310076(n)%A016921(A070198(n))`
-/

namespace A307285.P10999973405848584443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310076 n) (A016921 (A070198 n).toNat)

end

end A307285.P10999973405848584443

/-!
# A307288: Number of arithmetic classes of space groups in dimension n, including enantiomorphs.

The programs for A307288, there is no canonical definition to state claims against.
-/

/-! ## A307288.P8893041521092938320

`A004239(A004070(n))+A004027(n)`
-/

namespace A307288.P8893041521092938320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004239 (A004070 n).toNat + A004027 n

end

end A307288.P8893041521092938320

/-!
# A307290: Number of black-and-white colored (or proper magnetic) space groups in dimension n, counting enantiomorphs.

The programs for A307290, there is no canonical definition to state claims against.
-/

/-! ## A307290.P18107859539897857603

`A307291(n)-2*A006227(n)`
-/

namespace A307290.P18107859539897857603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307291 n - 2 * A006227 n

end

end A307290.P18107859539897857603

/-!
# A307291: Number of colored (or magnetic) space groups in dimension n, including enantiomorphs.

The programs for A307291, there is no canonical definition to state claims against.
-/

/-! ## A307291.P6949240369915676232

`A307290(n)+2*A006227(n)`
-/

namespace A307291.P6949240369915676232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307290 n + 2 * A006227 n

end

end A307291.P6949240369915676232

/-!
# A307294: If n is even, a(n) = A000201(n/2+1), otherwise a(n) = A000201((n-1)/2+1) + 1.

The programs for A307294, the canonical program `A307294.P8973898542976002328` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307294 has offset 0).

The definition of A307294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307294.P13415595654919858842

`floor(∑[ϕ^((1-n)%2)])`
-/

namespace A307294.P13415595654919858842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A307294.P13415595654919858842

namespace A307294

/-- `floor(∑[ϕ^((1-n)%2)])` -/
def P13415595654919858842.Spec : Prop :=
  ∀ n, P13415595654919858842.a n = A307294 n

end A307294

/-! ## A307294.P1799157712912408873

`ceil(∑[ϕ^(n%2-1)])`
-/

namespace A307294.P1799157712912408873
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (((n % 2 : ℕ) : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307294.P1799157712912408873

namespace A307294

/-- `ceil(∑[ϕ^(n%2-1)])` -/
def P1799157712912408873.Spec : Prop :=
  ∀ n, P1799157712912408873.a n = A307294 n

end A307294

/-! ## A307294.P16349059502364941190

`ceil(∑[ϕ^and(1, n)]/ϕ)`
-/

namespace A307294.P16349059502364941190
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / Real.goldenRatio⌉

end

end A307294.P16349059502364941190

namespace A307294

/-- `ceil(∑[ϕ^and(1, n)]/ϕ)` -/
def P16349059502364941190.Spec : Prop :=
  ∀ n, P16349059502364941190.a n = A307294 n

end A307294

/-! ## A307294.P18221019205584797798

`ceil(∑[∏[ϕ²-gcd(2, n)]])`
-/

namespace A307294.P18221019205584797798
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307294.P18221019205584797798

namespace A307294

/-- `ceil(∑[∏[ϕ²-gcd(2, n)]])` -/
def P18221019205584797798.Spec : Prop :=
  ∀ n, P18221019205584797798.a n = A307294 n

end A307294

/-! ## A307294.P15265854876654619697

`ceil(∑[ϕ^-((n+1)%2)])`
-/

namespace A307294.P15265854876654619697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (-(((n + 1) % 2 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307294.P15265854876654619697

namespace A307294

/-- `ceil(∑[ϕ^-((n+1)%2)])` -/
def P15265854876654619697.Spec : Prop :=
  ∀ n, P15265854876654619697.a n = A307294 n

end A307294

/-! ## A307294.P16412725596663008073

`ceil(∑[∏[ϕ-and(1, n+1)]])`
-/

namespace A307294.P16412725596663008073
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (Nat.land 1 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307294.P16412725596663008073

namespace A307294

/-- `ceil(∑[∏[ϕ-and(1, n+1)]])` -/
def P16412725596663008073.Spec : Prop :=
  ∀ n, P16412725596663008073.a n = A307294 n

end A307294

/-! ## A307294.P11115201291988228420

`ceil(∑[ϕ/(char[2*n]+ϕ)])`
-/

namespace A307294.P11115201291988228420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio / (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ) + Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307294.P11115201291988228420

namespace A307294

/-- `ceil(∑[ϕ/(char[2*n]+ϕ)])` -/
def P11115201291988228420.Spec : Prop :=
  ∀ n, P11115201291988228420.a n = A307294 n

end A307294

/-! ## A307294.P14859041740794717047

`floor(∑[ϕ-a(n-1)]+ϕ)` with `a(0)=0, a(1)=1`
-/

namespace A307294.P14859041740794717047
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋

end

end A307294.P14859041740794717047

namespace A307294

/-- `floor(∑[ϕ-a(n-1)]+ϕ)` -/
def P14859041740794717047.Spec : Prop :=
  ∀ n, P14859041740794717047.a n = A307294 n

end A307294

/-! ## A307294.P18169379769036427568

`(A187581(n+1)-n)/2`
-/

namespace A307294.P18169379769036427568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187581 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A307294.P18169379769036427568

namespace A307294

/-- `(A187581(n+1)-n)/2` -/
def P18169379769036427568.Spec : Prop :=
  ∀ n, P18169379769036427568.a n = (A307294 n : ℚ)

end A307294

/-! ## A307294.P17937092630462364699

`A005206(A307295(n))`
-/

namespace A307294.P17937092630462364699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A307295 n).toNat

end

end A307294.P17937092630462364699

namespace A307294

/-- `A005206(A307295(n))` -/
def P17937092630462364699.Spec : Prop :=
  ∀ n, P17937092630462364699.a n = A307294 n

end A307294

/-! ## A307294.P1629684375239445084

`A005206(A188435(n+1))`
-/

namespace A307294.P1629684375239445084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A188435 (n + 1)).toNat

end

end A307294.P1629684375239445084

namespace A307294

/-- `A005206(A188435(n+1))` -/
def P1629684375239445084.Spec : Prop :=
  ∀ n, P1629684375239445084.a n = A307294 n

end A307294

/-! ## A307294.P15825720564787082118

`A307295(n)-A008619(n)`
-/

namespace A307294.P15825720564787082118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - A008619 n

end

end A307294.P15825720564787082118

namespace A307294

/-- `A307295(n)-A008619(n)` -/
def P15825720564787082118.Spec : Prop :=
  ∀ n, P15825720564787082118.a n = A307294 n

end A307294

/-! ## A307294.P14002083034091052100

`A187485(n+1)-A004526(n)`
-/

namespace A307294.P14002083034091052100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1) - A004526 n

end

end A307294.P14002083034091052100

namespace A307294

/-- `A187485(n+1)-A004526(n)` -/
def P14002083034091052100.Spec : Prop :=
  ∀ n, P14002083034091052100.a n = A307294 n

end A307294

/-! ## A307294.P1032955246508592677

`A307295(n)-(A004526(n)+1)`
-/

namespace A307294.P1032955246508592677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n - (A004526 n + 1)

end

end A307294.P1032955246508592677

namespace A307294

/-- `A307295(n)-(A004526(n)+1)` -/
def P1032955246508592677.Spec : Prop :=
  ∀ n, P1032955246508592677.a n = A307294 n

end A307294

/-! ## A307294.P8973898542976002328

`A287775(n+1)-A109613(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307294

/-- `A287775(n+1)-A109613(n)` -/
def P8973898542976002328.Spec : Prop :=
  ∀ n, P8973898542976002328.a n = A307294 n

theorem P8973898542976002328.correct : P8973898542976002328.Spec := by
  intro n
  simp only [A307294]

end A307294

/-! ## A307294.P4397050542113474277

`A187485(n+1)+1-A008619(n)`
-/

namespace A307294.P4397050542113474277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1) + (1 - A008619 n)

end

end A307294.P4397050542113474277

namespace A307294

/-- `A187485(n+1)+1-A008619(n)` -/
def P4397050542113474277.Spec : Prop :=
  ∀ n, P4397050542113474277.a n = A307294 n

end A307294

/-! ## A307294.P17383247120804166906

`A287723(n+1)-A001651(n+1)`
-/

namespace A307294.P17383247120804166906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (n + 1) - A001651 (n + 1)

end

end A307294.P17383247120804166906

namespace A307294

/-- `A287723(n+1)-A001651(n+1)` -/
def P17383247120804166906.Spec : Prop :=
  ∀ n, P17383247120804166906.a n = A307294 n

end A307294

/-! ## A307294.P3682263466897756419

`A187952(n+1)-A219636(n+1)`
-/

namespace A307294.P3682263466897756419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1) - A219636 (n + 1)

end

end A307294.P3682263466897756419

namespace A307294

/-- `A187952(n+1)-A219636(n+1)` -/
def P3682263466897756419.Spec : Prop :=
  ∀ n, P3682263466897756419.a n = A307294 n

end A307294

/-! ## A307294.P5885062357251462593

`A286750(n+1)-A168236(n+1)`
-/

namespace A307294.P5885062357251462593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1) - A168236 (n + 1)

end

end A307294.P5885062357251462593

namespace A307294

/-- `A286750(n+1)-A168236(n+1)` -/
def P5885062357251462593.Spec : Prop :=
  ∀ n, P5885062357251462593.a n = A307294 n

end A307294

/-! ## A307294.P9427157740060241034

`(A137709(n+1)-A004442(n))/2`
-/

namespace A307294.P9427157740060241034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137709 (n + 1) - A004442 n : ℚ) / 2

end

end A307294.P9427157740060241034

namespace A307294

/-- `(A137709(n+1)-A004442(n))/2` -/
def P9427157740060241034.Spec : Prop :=
  ∀ n, P9427157740060241034.a n = (A307294 n : ℚ)

end A307294

/-!
# A307295: If n is even, a(n) = A001950(n/2+1), otherwise a(n) = A001950((n-1)/2+1) + 1.

The programs for A307295, the canonical program `A307295.P4534131516467912471` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307295 has offset 0).

The definition of A307295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307295.P25035970712774745

`ceil(∑[gcd(2, n)^log2(ϕ)])`
-/

namespace A307295.P25035970712774745
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℝ) ^ (Real.logb 2 Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307295.P25035970712774745

namespace A307295

/-- `ceil(∑[gcd(2, n)^log2(ϕ)])` -/
def P25035970712774745.Spec : Prop :=
  ∀ n, P25035970712774745.a n = A307295 n

end A307295

/-! ## A307295.P4631742159915240647

`ceil(∑[∏[ϕ-n%2]])`
-/

namespace A307295.P4631742159915240647
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - ((n % 2 : ℕ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307295.P4631742159915240647

namespace A307295

/-- `ceil(∑[∏[ϕ-n%2]])` -/
def P4631742159915240647.Spec : Prop :=
  ∀ n, P4631742159915240647.a n = A307295 n

end A307295

/-! ## A307295.P14657736430575493458

`ceil(∑[∏[ϕ-and(1, n)]])`
-/

namespace A307295.P14657736430575493458
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (Nat.land 1 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307295.P14657736430575493458

namespace A307295

/-- `ceil(∑[∏[ϕ-and(1, n)]])` -/
def P14657736430575493458.Spec : Prop :=
  ∀ n, P14657736430575493458.a n = A307295 n

end A307295

/-! ## A307295.P5791953028842904779

`ceil(∑[ϕ^∑[(-1)^n]])`
-/

namespace A307295.P5791953028842904779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A307295.P5791953028842904779

namespace A307295

/-- `ceil(∑[ϕ^∑[(-1)^n]])` -/
def P5791953028842904779.Spec : Prop :=
  ∀ n, P5791953028842904779.a n = A307295 n

end A307295

/-! ## A307295.P7783293190162708110

`floor(∑[ϕ^((n-1)%2)])+2`
-/

namespace A307295.P7783293190162708110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 2

end

end A307295.P7783293190162708110

namespace A307295

/-- `floor(∑[ϕ^((n-1)%2)])+2` -/
def P7783293190162708110.Spec : Prop :=
  ∀ n, P7783293190162708110.a n = A307295 n

end A307295

/-! ## A307295.P5888433243102478605

`floor(∑[ϕ/a(n-1)]+ϕ)` with `a(0)=1, a(1)=1`
-/

namespace A307295.P5888433243102478605
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋

end

end A307295.P5888433243102478605

namespace A307295

/-- `floor(∑[ϕ/a(n-1)]+ϕ)` -/
def P5888433243102478605.Spec : Prop :=
  ∀ n, P5888433243102478605.a n = A307295 n

end A307295

/-! ## A307295.P1643441531552892012

`A187485(n+1)+1`
-/

namespace A307295.P1643441531552892012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1) + 1

end

end A307295.P1643441531552892012

namespace A307295

/-- `A187485(n+1)+1` -/
def P1643441531552892012.Spec : Prop :=
  ∀ n, P1643441531552892012.a n = A307295 n

end A307295

/-! ## A307295.P17676228494004791583

`A219636(n+1)+2`
-/

namespace A307295.P17676228494004791583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (n + 1) + 2

end

end A307295.P17676228494004791583

namespace A307295

/-- `A219636(n+1)+2` -/
def P17676228494004791583.Spec : Prop :=
  ∀ n, P17676228494004791583.a n = A307295 n

theorem P17676228494004791583.correct : P17676228494004791583.Spec := by
  intro n
  simp only [A307295, Nat.add_sub_cancel, A307295.P17676228494004791583.a, A307295.P4534131516467912471.a, A219636, A219636.P17854170644708396736.a, A287723, A287723.P11608785159484584755.f1, A287723.P11608785159484584755.a, A001468, A001468.P12360075344960480253.a, A142150, A142150.P17187063318547882225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307295

/-! ## A307295.P4534131516467912471

`A287723(n+1)-n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307295

/-- `A287723(n+1)-n` -/
def P4534131516467912471.Spec : Prop :=
  ∀ n, P4534131516467912471.a n = A307295 n

theorem P4534131516467912471.correct : P4534131516467912471.Spec := by
  intro n
  simp only [A307295]

end A307295

/-! ## A307295.P11913366120563756136

`∑[A363057(n+1)]+1`
-/

namespace A307295.P11913366120563756136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307295.P11913366120563756136

namespace A307295

/-- `∑[A363057(n+1)]+1` -/
def P11913366120563756136.Spec : Prop :=
  ∀ n, P11913366120563756136.a n = A307295 n

end A307295

/-! ## A307295.P15919966169490591828

`comp[A035336(n+1)]+2`
-/

namespace A307295.P15919966169490591828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A307295.P15919966169490591828

namespace A307295

/-- `comp[A035336(n+1)]+2` -/
def P15919966169490591828.Spec : Prop :=
  ∀ n, (P15919966169490591828.a n : ℤ) = A307295 n

end A307295

/-! ## A307295.P831249494028073851

`eq[2, and(2, A003754(n+1))]`
-/

namespace A307295.P831249494028073851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A003754 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307295.P831249494028073851

namespace A307295

/-- `eq[2, and(2, A003754(n+1))]` -/
def P831249494028073851.Spec : Prop :=
  ∀ n, (P831249494028073851.a n : ℤ) = A307295 n

end A307295

/-! ## A307295.P12004150008305247147

`A307294(n)+A008619(n)`
-/

namespace A307295.P12004150008305247147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 n + A008619 n

end

end A307295.P12004150008305247147

namespace A307295

/-- `A307294(n)+A008619(n)` -/
def P12004150008305247147.Spec : Prop :=
  ∀ n, P12004150008305247147.a n = A307295 n

end A307295

/-! ## A307295.P4262703209591034674

`∑[A001468(A142150(n))]+1`
-/

namespace A307295.P4262703209591034674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307295.P4262703209591034674

namespace A307295

/-- `∑[A001468(A142150(n))]+1` -/
def P4262703209591034674.Spec : Prop :=
  ∀ n, P4262703209591034674.a n = A307295 n

end A307295

/-! ## A307295.P11669708751282468951

`comp[A022342(A026352(n))]+1`
-/

namespace A307295.P11669708751282468951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A026352 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A307295.P11669708751282468951

namespace A307295

/-- `comp[A022342(A026352(n))]+1` -/
def P11669708751282468951.Spec : Prop :=
  ∀ n, (P11669708751282468951.a n : ℤ) = A307295 n

end A307295

/-! ## A307295.P9038505440871134984

`A158416(n)+A072061(n+1)`
-/

namespace A307295.P9038505440871134984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + A072061 (n + 1)

end

end A307295.P9038505440871134984

namespace A307295

/-- `A158416(n)+A072061(n+1)` -/
def P9038505440871134984.Spec : Prop :=
  ∀ n, P9038505440871134984.a n = A307295 n

end A307295

/-! ## A307295.P12978907359068382569

`A287775(n+1)-A004526(n)`
-/

namespace A307295.P12978907359068382569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (n + 1) - A004526 n

end

end A307295.P12978907359068382569

namespace A307295

/-- `A287775(n+1)-A004526(n)` -/
def P12978907359068382569.Spec : Prop :=
  ∀ n, P12978907359068382569.a n = A307295 n

end A307295

/-! ## A307295.P14240654553928123990

`A287675(n+1)-A052928(n)`
-/

namespace A307295.P14240654553928123990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1) - A052928 n

end

end A307295.P14240654553928123990

namespace A307295

/-- `A287675(n+1)-A052928(n)` -/
def P14240654553928123990.Spec : Prop :=
  ∀ n, P14240654553928123990.a n = A307295 n

end A307295

/-! ## A307295.P13236888797174401035

`A286750(n+1)-A109613(n)`
-/

namespace A307295.P13236888797174401035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1) - A109613 n

end

end A307295.P13236888797174401035

namespace A307295

/-- `A286750(n+1)-A109613(n)` -/
def P13236888797174401035.Spec : Prop :=
  ∀ n, P13236888797174401035.a n = A307295 n

end A307295

/-!
# A307296: Array read by antidiagonals: Sprague-Grundy values for the game NimHof with 4 rules [1,0], [3,2], [1,1], [0,1].

The programs for A307296, there is no canonical definition to state claims against.
-/

/-! ## A307296.P7555422511877177004

`A004489(n)%A004473(A232433(n))`
-/

namespace A307296.P7555422511877177004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004489 n) (A004473 (A232433 n).toNat)

end

end A307296.P7555422511877177004

/-! ## A307296.P10712340187081757687

`A004489(gcd(n, A185284(A005044(n))))`
-/

namespace A307296.P10712340187081757687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (Int.gcd (n : ℤ) (A185284 (A005044 n).toNat))

end

end A307296.P10712340187081757687

/-! ## A307296.P1954575557615677160

`(A004489(n)*A133687(A133687(n)))%9`
-/

namespace A307296.P1954575557615677160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004489 n * A133687 (A133687 n).toNat) 9

end

end A307296.P1954575557615677160

/-!
# A307297: Array read by antidiagonals: Sprague-Grundy values for the game NimHof with 4 rules [1,0], [2,1], [3,3], [0,1].

The programs for A307297, there is no canonical definition to state claims against.
-/

/-! ## A307297.P12742390003736430781

`or(A003987(n), A285118(A096852(n)))`
-/

namespace A307297.P12742390003736430781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003987 n) (A285118 (A096852 n).toNat)

end

end A307297.P12742390003736430781

/-! ## A307297.P9642045537533815068

`or(A003987(n), A343321(A238010(n)))`
-/

namespace A307297.P9642045537533815068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003987 n) (A343321 (A238010 n).toNat)

end

end A307297.P9642045537533815068

/-! ## A307297.P12428579988443799246

`or(A307302(n), A343321(A238010(n)))`
-/

namespace A307297.P12428579988443799246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A307302 n) (A343321 (A238010 n).toNat)

end

end A307297.P12428579988443799246

/-! ## A307297.P12332018703070477468

`or(A280172(n+1)-1, A285118(A096852(n)))`
-/

namespace A307297.P12332018703070477468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280172 (n + 1) - 1) (A285118 (A096852 n).toNat)

end

end A307297.P12332018703070477468

/-! ## A307297.P15140437641729743219

`or(A280172(n+1)-1, A343321(A238010(n)))`
-/

namespace A307297.P15140437641729743219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280172 (n + 1) - 1) (A343321 (A238010 n).toNat)

end

end A307297.P15140437641729743219

/-!
# A307298: Array read by antidiagonals: Sprague-Grundy values for the game NimHof with 5 rules [1,0], [1,1], [2,3], [1,2], [0,1].

The programs for A307298, there is no canonical definition to state claims against.
-/

/-! ## A307298.P14264673543167851044

`A307299(n^A030599(n+1))`
-/

namespace A307298.P14264673543167851044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307299 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A030599 (n + 1) : ℤ))).toNat

end

end A307298.P14264673543167851044

/-! ## A307298.P12988414788534615970

`A307299(n^A121657(n+1))`
-/

namespace A307298.P12988414788534615970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307299 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A121657 (n + 1) : ℤ))).toNat

end

end A307298.P12988414788534615970

/-! ## A307298.P13392879870939333184

`A307299(n)%A141815(n+1)`
-/

namespace A307298.P13392879870939333184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307299 n) (A141815 (n + 1))

end

end A307298.P13392879870939333184

/-! ## A307298.P6137915362322295937

`A307299(n*A030599(n+1)²)`
-/

namespace A307298.P6137915362322295937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307299 ((n : ℤ) * A030599 (n + 1) ^ 2).toNat

end

end A307298.P6137915362322295937

/-! ## A307298.P13899492536515000033

`A307299(n*A121657(n+1)²)`
-/

namespace A307298.P13899492536515000033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307299 ((n : ℤ) * A121657 (n + 1) ^ 2).toNat

end

end A307298.P13899492536515000033

/-!
# A307299: Array read by antidiagonals: Sprague-Grundy values for the game NimHof with 4 rules [1,0], [1,1], [1,2], [0,1].

The programs for A307299, there is no canonical definition to state claims against.
-/

/-! ## A307299.P12233009285922948965

`gcd(A178798(A096940(n)), A307298(n))`
-/

namespace A307299.P12233009285922948965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178798 (A096940 n).toNat) (A307298 n)

end

end A307299.P12233009285922948965

/-! ## A307299.P4329964361386559001

`A307298(n)%p?[A307275(A307300(n))]`
-/

namespace A307299.P4329964361386559001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307275 (A307300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307298 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A307299.P4329964361386559001

