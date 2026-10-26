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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A230800: Number of n X 2 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230800, the canonical program `A230800.P10671768436820930655` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230800 has offset 1).

The definition of A230800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230800.P4711816325214838038

`ogf((2x-2x^2)/(1-2x-6x^2+5x^3))`
-/

namespace A230800.P4711816325214838038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2] [1, -2, -6, 5] n

end

end A230800.P4711816325214838038

namespace A230800

/-- `ogf((2x-2x^2)/(1-2x-6x^2+5x^3))` -/
def P4711816325214838038.Spec : Prop :=
  ∀ n, P4711816325214838038.a n = A230800 (n + 1)

end A230800

/-! ## A230800.P10671768436820930655

`2*a(n-1)+6*a(n-2)-5*a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230800

/-- `2*a(n-1)+6*a(n-2)-5*a(n-3)` -/
def P10671768436820930655.Spec : Prop :=
  ∀ n, P10671768436820930655.a n = A230800 (n + 1)

theorem P10671768436820930655.correct : P10671768436820930655.Spec := by
  intro n
  simp only [A230800, Nat.add_sub_cancel]

end A230800

/-! ## A230800.P15271110162367865783

`A230805(∑[n+1]+2)`
-/

namespace A230800.P15271110162367865783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230800.P15271110162367865783

namespace A230800

/-- `A230805(∑[n+1]+2)` -/
def P15271110162367865783.Spec : Prop :=
  ∀ n, P15271110162367865783.a n = A230800 (n + 1)

end A230800

/-! ## A230800.P5619578363095449007

`A231080(∑[n+2])`
-/

namespace A230800.P5619578363095449007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230800.P5619578363095449007

namespace A230800

/-- `A231080(∑[n+2])` -/
def P5619578363095449007.Spec : Prop :=
  ∀ n, P5619578363095449007.a n = A230800 (n + 1)

end A230800

/-! ## A230800.P1082501796457861691

`A159966(A230805(∑[n+2]))`
-/

namespace A230800.P1082501796457861691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A230805 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A230800.P1082501796457861691

namespace A230800

/-- `A159966(A230805(∑[n+2]))` -/
def P1082501796457861691.Spec : Prop :=
  ∀ n, P1082501796457861691.a n = A230800 (n + 1)

end A230800

/-!
# A230801: Number of n X 3 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230801, there is no canonical definition to state claims against.
-/

/-! ## A230801.P17906042323596847308

`A230805(∑[n+2]+4)`
-/

namespace A230801.P17906042323596847308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230801.P17906042323596847308

/-! ## A230801.P13090618883974477073

`lcm(2, A230805(A167614(n+1)))`
-/

namespace A230801.P13090618883974477073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230805 (A167614 (n + 1)).toNat)

end

end A230801.P13090618883974477073

/-! ## A230801.P3628760846060832337

`A230805(A167614(n+1))+A086015(n)`
-/

namespace A230801.P3628760846060832337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A167614 (n + 1)).toNat + A086015 n

end

end A230801.P3628760846060832337

/-! ## A230801.P15610355640244199435

`A230805(A167614(n+1))+A108782(n)`
-/

namespace A230801.P15610355640244199435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A167614 (n + 1)).toNat + A108782 n

end

end A230801.P15610355640244199435

/-! ## A230801.P17107711623598197607

`A230805(A167614(n+1))+A185255(n)`
-/

namespace A230801.P17107711623598197607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A167614 (n + 1)).toNat + A185255 n

end

end A230801.P17107711623598197607

/-!
# A230802: Number of nX4 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230802, there is no canonical definition to state claims against.
-/

/-! ## A230802.P17763506997190135890

`A230805(A141214(n)+7)`
-/

namespace A230802.P17763506997190135890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A141214 n + 7).toNat

end

end A230802.P17763506997190135890

/-! ## A230802.P16770501017983913943

`A230805(A052905(n)+9)`
-/

namespace A230802.P16770501017983913943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A052905 n + 9).toNat

end

end A230802.P16770501017983913943

/-! ## A230802.P4911124705954294493

`A230805(A055999(n)+10)`
-/

namespace A230802.P4911124705954294493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A055999 n + 10).toNat

end

end A230802.P4911124705954294493

/-! ## A230802.P17515278707531963375

`A230805(eq[5, A066657(n)])`
-/

namespace A230802.P17515278707531963375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230802.P17515278707531963375

/-! ## A230802.P1531498139371744973

`A230805(A167614(n+2)+1)`
-/

namespace A230802.P1531498139371744973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A167614 (n + 2) + 1).toNat

end

end A230802.P1531498139371744973

/-!
# A230803: Number of nX5 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230803, there is no canonical definition to state claims against.
-/

/-! ## A230803.P9591631458060761439

`A230805(A155212(n)+13)`
-/

namespace A230803.P9591631458060761439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A155212 n + 13).toNat

end

end A230803.P9591631458060761439

/-! ## A230803.P4607479157358784448

`A230805(A056000(n)+15)`
-/

namespace A230803.P4607479157358784448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A056000 n + 15).toNat

end

end A230803.P4607479157358784448

/-! ## A230803.P14428920214705185082

`A230805(eq[7, A066657(n)])`
-/

namespace A230803.P14428920214705185082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230803.P14428920214705185082

/-! ## A230803.P7003151781675505010

`A230805(A167614(n+3)+2)`
-/

namespace A230803.P7003151781675505010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A167614 (n + 3) + 2).toNat

end

end A230803.P7003151781675505010

/-! ## A230803.P17679653908861906463

`A230805(A000124(n+4)+4)`
-/

namespace A230803.P17679653908861906463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A000124 (n + 4) + 4).toNat

end

end A230803.P17679653908861906463

/-!
# A230804: Number of nX6 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A230804, there is no canonical definition to state claims against.
-/

/-! ## A230804.P10620705470272457358

`A230805(A166136(n+4))`
-/

namespace A230804.P10620705470272457358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A166136 (n + 4)).toNat

end

end A230804.P10620705470272457358

/-! ## A230804.P6157797054953197142

`A230805(A056115(n)+21)`
-/

namespace A230804.P6157797054953197142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A056115 n + 21).toNat

end

end A230804.P6157797054953197142

/-! ## A230804.P4913109408881604703

`A230805(A167499(n+4)+1)`
-/

namespace A230804.P4913109408881604703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A167499 (n + 4) + 1).toNat

end

end A230804.P4913109408881604703

/-! ## A230804.P1186890458737397870

`A230805(A000124(n+5)+5)`
-/

namespace A230804.P1186890458737397870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A000124 (n + 5) + 5).toNat

end

end A230804.P1186890458737397870

/-! ## A230804.P10678980085208120729

`A230805(A000096(n+4)+7)`
-/

namespace A230804.P10678980085208120729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230805 (A000096 (n + 4) + 7).toNat

end

end A230804.P10678980085208120729

/-!
# A230809: Primes p of the form 60*n + 59 such that 2*p + 1 is also prime.

The programs for A230809, there is no canonical definition to state claims against.
-/

/-! ## A230809.P2219443157561843697

`p?[abs(1-ceil((p?[40*n-1]+1)/2))]`
-/

namespace A230809.P2219443157561843697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌈(f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1 : ℚ) / 2⌉|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230809.P2219443157561843697

/-! ## A230809.P14800691037140078525

`p?[floor(A141180(n+1)/2)]`
-/

namespace A230809.P14800691037140078525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141180 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230809.P14800691037140078525

/-! ## A230809.P902530463856367133

`p?[floor(A142198(n+1)/2)]`
-/

namespace A230809.P902530463856367133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142198 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230809.P902530463856367133

/-! ## A230809.P4854489717350888503

`p?[floor(A294092(n+1)/2)]`
-/

namespace A230809.P4854489717350888503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294092 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230809.P4854489717350888503

/-! ## A230809.P6364161303394013456

`p?[floor(A295835(n+1)/2)]`
-/

namespace A230809.P6364161303394013456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A295835 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230809.P6364161303394013456

/-!
# A230812: Smallest squarefree side lengths of primitive integer Soddyian triangles.

The programs for A230812, the canonical program `A230812.P15143335762898235150` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230812 has offset 1).

The definition of A230812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230812.P15143335762898235150

`record[A059591(2*n+3)/2]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230812

/-- `record[A059591(2*n+3)/2]` -/
def P15143335762898235150.Spec : Prop :=
  ∀ n, P15143335762898235150.a n = (A230812 (n + 1) : ℚ)

end A230812

/-! ## A230812.P11851348088632976258

`∩[A002522(2*n+1), A078325(n+2)]/2`
-/

namespace A230812.P11851348088632976258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A230812.P11851348088632976258

namespace A230812

/-- `∩[A002522(2*n+1), A078325(n+2)]/2` -/
def P11851348088632976258.Spec : Prop :=
  ∀ n, P11851348088632976258.a n = (A230812 (n + 1) : ℚ)

end A230812

/-! ## A230812.P12478780282697304877

`∩[A087278(2*n), A078325(n+2)]/2`
-/

namespace A230812.P12478780282697304877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A230812.P12478780282697304877

namespace A230812

/-- `∩[A087278(2*n), A078325(n+2)]/2` -/
def P12478780282697304877.Spec : Prop :=
  ∀ n, P12478780282697304877.a n = (A230812 (n + 1) : ℚ)

end A230812

/-! ## A230812.P17004762651077825052

`record[∏{p}[∑[4*(n+1)]+1, #]]`
-/

namespace A230812.P17004762651077825052
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230812.P17004762651077825052

namespace A230812

/-- `record[∏{p}[∑[4*(n+1)]+1, #]]` -/
def P17004762651077825052.Spec : Prop :=
  ∀ n, (P17004762651077825052.a n : ℤ) = A230812 (n + 1)

end A230812

/-! ## A230812.P5324090701764097731

`record[∏{p}[(2*(n+1)+1)²+1, #]]/2`
-/

namespace A230812.P5324090701764097731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A230812.P5324090701764097731

namespace A230812

/-- `record[∏{p}[(2*(n+1)+1)²+1, #]]/2` -/
def P5324090701764097731.Spec : Prop :=
  ∀ n, P5324090701764097731.a n = (A230812 (n + 1) : ℚ)

end A230812

/-! ## A230812.P3374878771480191570

`∩[A099776(n+1), A231754(n+1)]`
-/

namespace A230812.P3374878771480191570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230812.P3374878771480191570

namespace A230812

/-- `∩[A099776(n+1), A231754(n+1)]` -/
def P3374878771480191570.Spec : Prop :=
  ∀ n, (P3374878771480191570.a n : ℤ) = A230812 (n + 1)

end A230812

/-! ## A230812.P8507540545126153283

`record[A007947(round((n+3)²/2))]`
-/

namespace A230812.P8507540545126153283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230812.P8507540545126153283

namespace A230812

/-- `record[A007947(round((n+3)²/2))]` -/
def P8507540545126153283.Spec : Prop :=
  ∀ n, P8507540545126153283.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P14283438329942867548

`record[A007913(∑[4*(n+1)]+1)]`
-/

namespace A230812.P14283438329942867548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230812.P14283438329942867548

namespace A230812

/-- `record[A007913(∑[4*(n+1)]+1)]` -/
def P14283438329942867548.Spec : Prop :=
  ∀ n, P14283438329942867548.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P12162423834314471497

`filter[A001844(n+1), A008966(#)]`
-/

namespace A230812.P12162423834314471497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230812.P12162423834314471497

namespace A230812

/-- `filter[A001844(n+1), A008966(#)]` -/
def P12162423834314471497.Spec : Prop :=
  ∀ n, P12162423834314471497.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P8662480297434229127

`filter[A099776(n+1), A008966(#)]`
-/

namespace A230812.P8662480297434229127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230812.P8662480297434229127

namespace A230812

/-- `filter[A099776(n+1), A008966(#)]` -/
def P8662480297434229127.Spec : Prop :=
  ∀ n, P8662480297434229127.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P4531964823449581225

`filter[A001844(n+1), A359377(#)]`
-/

namespace A230812.P4531964823449581225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A230812.P4531964823449581225

namespace A230812

/-- `filter[A001844(n+1), A359377(#)]` -/
def P4531964823449581225.Spec : Prop :=
  ∀ n, P4531964823449581225.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P2220313186044202708

`filter[A001844(n+1), A359590(#)]`
-/

namespace A230812.P2220313186044202708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A230812.P2220313186044202708

namespace A230812

/-- `filter[A001844(n+1), A359590(#)]` -/
def P2220313186044202708.Spec : Prop :=
  ∀ n, P2220313186044202708.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P15976958826918199315

`filter[A001844(n+1), A359592(#)]`
-/

namespace A230812.P15976958826918199315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A230812.P15976958826918199315

namespace A230812

/-- `filter[A001844(n+1), A359592(#)]` -/
def P15976958826918199315.Spec : Prop :=
  ∀ n, P15976958826918199315.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P426274530324359969

`filter[A001844(n+1), A359834(#)]`
-/

namespace A230812.P426274530324359969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A230812.P426274530324359969

namespace A230812

/-- `filter[A001844(n+1), A359834(#)]` -/
def P426274530324359969.Spec : Prop :=
  ∀ n, P426274530324359969.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P16468021312957638402

`filter[A001844(n+1), A373154(#)]`
-/

namespace A230812.P16468021312957638402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A230812.P16468021312957638402

namespace A230812

/-- `filter[A001844(n+1), A373154(#)]` -/
def P16468021312957638402.Spec : Prop :=
  ∀ n, P16468021312957638402.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P6048416965904989494

`filter[A030978(n+2), A008966(#)]`
-/

namespace A230812.P6048416965904989494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230812.P6048416965904989494

namespace A230812

/-- `filter[A030978(n+2), A008966(#)]` -/
def P6048416965904989494.Spec : Prop :=
  ∀ n, P6048416965904989494.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P12477113438397337765

`filter[A266725(n+2), A008966(#)]`
-/

namespace A230812.P12477113438397337765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230812.P12477113438397337765

namespace A230812

/-- `filter[A266725(n+2), A008966(#)]` -/
def P12477113438397337765.Spec : Prop :=
  ∀ n, P12477113438397337765.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P1882692835392104039

`filter[A335298(n+2), A008966(#)]`
-/

namespace A230812.P1882692835392104039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230812.P1882692835392104039

namespace A230812

/-- `filter[A335298(n+2), A008966(#)]` -/
def P1882692835392104039.Spec : Prop :=
  ∀ n, P1882692835392104039.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P4490272349938715046

`filter[A348484(n+2), A008966(#)]`
-/

namespace A230812.P4490272349938715046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230812.P4490272349938715046

namespace A230812

/-- `filter[A348484(n+2), A008966(#)]` -/
def P4490272349938715046.Spec : Prop :=
  ∀ n, P4490272349938715046.a n = A230812 (n + 1)

end A230812

/-! ## A230812.P8540093556717699761

`filter[A000982(n+2), A359592(#)]`
-/

namespace A230812.P8540093556717699761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A230812.P8540093556717699761

namespace A230812

/-- `filter[A000982(n+2), A359592(#)]` -/
def P8540093556717699761.Spec : Prop :=
  ∀ n, P8540093556717699761.a n = A230812 (n + 1)

end A230812

/-!
# A230813: Number of n X 2 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230813, the canonical program `A230813.P9922749768918240411` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230813 has offset 1).

The definition of A230813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230813.P4418094599547853672

`ogf((-2x^2+4x^3)/(-1+2x+x^2+4x^3-4x^4))`
-/

namespace A230813.P4418094599547853672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -4] [1, -2, -1, -4, 4] n

end

end A230813.P4418094599547853672

namespace A230813

/-- `ogf((-2x^2+4x^3)/(-1+2x+x^2+4x^3-4x^4))` -/
def P4418094599547853672.Spec : Prop :=
  ∀ n, P4418094599547853672.a n = A230813 (n + 1)

end A230813

/-! ## A230813.P9922749768918240411

`2*a(n-1)+a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230813

/-- `2*a(n-1)+a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P9922749768918240411.Spec : Prop :=
  ∀ n, P9922749768918240411.a n = A230813 (n + 1)

theorem P9922749768918240411.correct : P9922749768918240411.Spec := by
  intro n
  simp only [A230813, Nat.add_sub_cancel]

end A230813

/-! ## A230813.P10690816337438658135

`A230819(∑[n+1]+2)`
-/

namespace A230813.P10690816337438658135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230813.P10690816337438658135

namespace A230813

/-- `A230819(∑[n+1]+2)` -/
def P10690816337438658135.Spec : Prop :=
  ∀ n, P10690816337438658135.a n = A230813 (n + 1)

end A230813

/-! ## A230813.P16940854811987667310

`lcm(2, A230819(A000096(n+1)))`
-/

namespace A230813.P16940854811987667310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230819 (A000096 (n + 1)).toNat)

end

end A230813.P16940854811987667310

namespace A230813

/-- `lcm(2, A230819(A000096(n+1)))` -/
def P16940854811987667310.Spec : Prop :=
  ∀ n, (P16940854811987667310.a n : ℤ) = A230813 (n + 1)

end A230813

/-! ## A230813.P5125066465763663330

`A230819(A000096(n+1))+A011736(n)`
-/

namespace A230813.P5125066465763663330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A000096 (n + 1)).toNat + A011736 n

end

end A230813.P5125066465763663330

namespace A230813

/-- `A230819(A000096(n+1))+A011736(n)` -/
def P5125066465763663330.Spec : Prop :=
  ∀ n, P5125066465763663330.a n = A230813 (n + 1)

end A230813

/-!
# A230814: Number of nX3 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230814, there is no canonical definition to state claims against.
-/

/-! ## A230814.P14240134093513157680

`A230819(∑[n+2]+4)`
-/

namespace A230814.P14240134093513157680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230814.P14240134093513157680

/-! ## A230814.P14072999024296670207

`lcm(2, A230819(A167614(n+1)))`
-/

namespace A230814.P14072999024296670207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230819 (A167614 (n + 1)).toNat)

end

end A230814.P14072999024296670207

/-! ## A230814.P6983402664960855353

`record[A230819(n+3)/A157148(n)]`
-/

namespace A230814.P6983402664960855353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230819 (n + 3) : ℚ) / (A157148 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230814.P6983402664960855353

/-! ## A230814.P189991881843486309

`record[A230819(n+3)/A197342(n+1)]`
-/

namespace A230814.P189991881843486309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230819 (n + 3) : ℚ) / (A197342 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230814.P189991881843486309

/-! ## A230814.P148800856836743899

`A230819(A167614(n+1))+A185236(n)`
-/

namespace A230814.P148800856836743899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A167614 (n + 1)).toNat + A185236 n

end

end A230814.P148800856836743899

/-!
# A230815: Number of nX4 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230815, there is no canonical definition to state claims against.
-/

/-! ## A230815.P1366937838956189130

`A230819(A374004(n+1))`
-/

namespace A230815.P1366937838956189130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A374004 (n + 1)).toNat

end

end A230815.P1366937838956189130

/-! ## A230815.P3528089789798090287

`A230819(A141214(n)+7)`
-/

namespace A230815.P3528089789798090287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A141214 n + 7).toNat

end

end A230815.P3528089789798090287

/-! ## A230815.P5579150691196175727

`A230819(A052905(n)+9)`
-/

namespace A230815.P5579150691196175727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A052905 n + 9).toNat

end

end A230815.P5579150691196175727

/-! ## A230815.P5496798350270691220

`A230819(A055999(n)+10)`
-/

namespace A230815.P5496798350270691220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A055999 n + 10).toNat

end

end A230815.P5496798350270691220

/-! ## A230815.P6696001028983235470

`A230819(eq[5, A066657(n)])`
-/

namespace A230815.P6696001028983235470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230815.P6696001028983235470

/-!
# A230816: Number of nX5 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230816, there is no canonical definition to state claims against.
-/

/-! ## A230816.P17276361733286048214

`record[A230819(A167499(n))]`
-/

namespace A230816.P17276361733286048214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230816.P17276361733286048214

/-! ## A230816.P6118118046551564524

`A230819(A374005(n+1))`
-/

namespace A230816.P6118118046551564524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A374005 (n + 1)).toNat

end

end A230816.P6118118046551564524

/-! ## A230816.P13981947375933922612

`A230819(A167499(n+3))`
-/

namespace A230816.P13981947375933922612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A167499 (n + 3)).toNat

end

end A230816.P13981947375933922612

/-! ## A230816.P9268084307766478325

`A230819(A155212(n)+13)`
-/

namespace A230816.P9268084307766478325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A155212 n + 13).toNat

end

end A230816.P9268084307766478325

/-! ## A230816.P3249424353296657413

`A230819(A056000(n)+15)`
-/

namespace A230816.P3249424353296657413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A056000 n + 15).toNat

end

end A230816.P3249424353296657413

/-!
# A230817: Number of nX6 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230817, there is no canonical definition to state claims against.
-/

/-! ## A230817.P3892648948674821111

`A230819(A374007(n+1))`
-/

namespace A230817.P3892648948674821111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A374007 (n + 1)).toNat

end

end A230817.P3892648948674821111

/-! ## A230817.P10680444794183256915

`A230819(A166136(n+4))`
-/

namespace A230817.P10680444794183256915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A166136 (n + 4)).toNat

end

end A230817.P10680444794183256915

/-! ## A230817.P11753627734636903790

`A230819(A056115(n)+21)`
-/

namespace A230817.P11753627734636903790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A056115 n + 21).toNat

end

end A230817.P11753627734636903790

/-! ## A230817.P18218896864447047174

`A230819(Δ[A264443(n)]+10)`
-/

namespace A230817.P18218896864447047174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (f1 (n + 1) - f1 n + 10).toNat

end

end A230817.P18218896864447047174

/-! ## A230817.P3185024042045883235

`A230819(A167499(n+4)+1)`
-/

namespace A230817.P3185024042045883235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A167499 (n + 4) + 1).toNat

end

end A230817.P3185024042045883235

/-!
# A230818: Number of nX7 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230818, there is no canonical definition to state claims against.
-/

/-! ## A230818.P10768621575650310940

`A230819(A374008(n+1))`
-/

namespace A230818.P10768621575650310940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A374008 (n + 1)).toNat

end

end A230818.P10768621575650310940

/-! ## A230818.P15825633983189980727

`A230819(eq[11, A066657(n)])`
-/

namespace A230818.P15825633983189980727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230818.P15825633983189980727

/-! ## A230818.P9229557829816203757

`A230819(A167499(n+5)+2)`
-/

namespace A230818.P9229557829816203757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A167499 (n + 5) + 2).toNat

end

end A230818.P9229557829816203757

/-! ## A230818.P9954071599710216752

`A230819(A167614(n+5)+4)`
-/

namespace A230818.P9954071599710216752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A167614 (n + 5) + 4).toNat

end

end A230818.P9954071599710216752

/-! ## A230818.P18308597715860334595

`A230819(A133263(n+6)+5)`
-/

namespace A230818.P18308597715860334595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230819 (A133263 (n + 6) + 5).toNat

end

end A230818.P18308597715860334595

/-!
# A230819: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A230819, there is no canonical definition to state claims against.
-/

/-! ## A230819.P2506927746001465276

`A139789(∏{p}[A197342(n+1), #])`
-/

namespace A230819.P2506927746001465276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139789 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A230819.P2506927746001465276

/-! ## A230819.P7871917328801453099

`A139789(A007947(A197342(n+1)))`
-/

namespace A230819.P7871917328801453099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139789 (A007947 (A197342 (n + 1)).toNat).toNat

end

end A230819.P7871917328801453099

/-! ## A230819.P15137008835587745164

`A124765(n)*A237123(A157148(n))`
-/

namespace A230819.P15137008835587745164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n * A237123 (A157148 n).toNat

end

end A230819.P15137008835587745164

/-! ## A230819.P1913417128324590175

`A064727(A125778(n)^A211314(n))`
-/

namespace A230819.P1913417128324590175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (SequenceMachineLib.roundAway ((A125778 n : ℚ) ^ (A211314 n : ℤ))).toNat

end

end A230819.P1913417128324590175

/-! ## A230819.P9828418466978430223

`A046523(A154984(n))%A131235(n)`
-/

namespace A230819.P9828418466978430223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (A154984 n).toNat) (A131235 n)

end

end A230819.P9828418466978430223

/-!
# A230823: Number of modified skew Dyck paths of semilength n.

The programs for A230823, there is no canonical definition to state claims against.
-/

/-! ## A230823.P4640435085006762349

`A323473(A023359(n))+A061396(n)`
-/

namespace A230823.P4640435085006762349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323473 (A023359 n).toNat + A061396 n

end

end A230823.P4640435085006762349

/-! ## A230823.P16988335104504357937

`A004526(A194956(n+1)+A061396(n))`
-/

namespace A230823.P16988335104504357937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194956 (n + 1) + A061396 n).toNat

end

end A230823.P16988335104504357937

/-! ## A230823.P4581037057890769693

`A123108(A194956(n+1)+A061396(n))`
-/

namespace A230823.P4581037057890769693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A194956 (n + 1) + A061396 n).toNat

end

end A230823.P4581037057890769693

/-! ## A230823.P5331300938346331212

`A326523(A217555(n+1))+A061396(n)`
-/

namespace A230823.P5331300938346331212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 (A217555 (n + 1)).toNat + A061396 n

end

end A230823.P5331300938346331212

/-! ## A230823.P11163278204157672545

`A192497(n)-A324881(A212718(n+1))`
-/

namespace A230823.P11163278204157672545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192497 n - A324881 (A212718 (n + 1)).toNat

end

end A230823.P11163278204157672545

/-!
# A230824: Number of n X n 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230824, there is no canonical definition to state claims against.
-/

/-! ## A230824.P164968771425747866

`A230831(∑[4*n]+1)`
-/

namespace A230824.P164968771425747866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230824.P164968771425747866

/-! ## A230824.P898548706809720935

`lcm(2, A230831(A001844(n)))`
-/

namespace A230824.P898548706809720935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230831 (A001844 n).toNat)

end

end A230824.P898548706809720935

/-! ## A230824.P23184474728685707

`record[A230831(Δ[A235355(n)])]`
-/

namespace A230824.P23184474728685707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230824.P23184474728685707

/-! ## A230824.P15408962604062599876

`record[A230831(A330613(n+1))]`
-/

namespace A230824.P15408962604062599876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230824.P15408962604062599876

/-! ## A230824.P5992023753728250713

`A230831(A001844(n))+A185203(n)`
-/

namespace A230824.P5992023753728250713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A001844 n).toNat + A185203 n

end

end A230824.P5992023753728250713

/-!
# A230825: Number of n X 2 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230825, the canonical program `A230825.P3731840723745434310` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230825 has offset 1).

The definition of A230825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230825.P3731840723745434310

`4*a(n-1)-2*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=6, a(4)=16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230825

/-- `4*a(n-1)-2*a(n-2)-3*a(n-3)-a(n-4)` -/
def P3731840723745434310.Spec : Prop :=
  ∀ n, P3731840723745434310.a n = A230825 (n + 1)

theorem P3731840723745434310.correct : P3731840723745434310.Spec := by
  intro n
  simp only [A230825, Nat.add_sub_cancel]

end A230825

/-! ## A230825.P15383593794758188474

`A230831(∑[n+1]+2)`
-/

namespace A230825.P15383593794758188474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230825.P15383593794758188474

namespace A230825

/-- `A230831(∑[n+1]+2)` -/
def P15383593794758188474.Spec : Prop :=
  ∀ n, P15383593794758188474.a n = A230825 (n + 1)

end A230825

/-! ## A230825.P7528963773750522468

`lcm(2, A230831(Δ[A000292(n)]+2))`
-/

namespace A230825.P7528963773750522468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230831 (f1 (n + 1) - f1 n + 2).toNat)

end

end A230825.P7528963773750522468

namespace A230825

/-- `lcm(2, A230831(Δ[A000292(n)]+2))` -/
def P7528963773750522468.Spec : Prop :=
  ∀ n, (P7528963773750522468.a n : ℤ) = A230825 (n + 1)

end A230825

/-! ## A230825.P10398799377590177392

`A230831(Δ[A000292(n)]+2)%A000032(4*n)`
-/

namespace A230825.P10398799377590177392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230831 (f1 (n + 1) - f1 n + 2).toNat) (A000032 (4 * n))

end

end A230825.P10398799377590177392

namespace A230825

/-- `A230831(Δ[A000292(n)]+2)%A000032(4*n)` -/
def P10398799377590177392.Spec : Prop :=
  ∀ n, P10398799377590177392.a n = A230825 (n + 1)

end A230825

/-! ## A230825.P12001790912118325321

`A000040(n+1)%2*A230831(Δ[A000292(n)]+2)`
-/

namespace A230825.P12001790912118325321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A230831 (f1 (n + 1) - f1 n + 2).toNat

end

end A230825.P12001790912118325321

namespace A230825

/-- `A000040(n+1)%2*A230831(Δ[A000292(n)]+2)` -/
def P12001790912118325321.Spec : Prop :=
  ∀ n, P12001790912118325321.a n = A230825 (n + 1)

end A230825

/-!
# A230826: Number of nX3 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230826, there is no canonical definition to state claims against.
-/

/-! ## A230826.P2195872079240721077

`A230831(∑[n+2]+4)`
-/

namespace A230826.P2195872079240721077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230826.P2195872079240721077

/-! ## A230826.P13583521977085624692

`lcm(2, A230831(A167614(n+1)))`
-/

namespace A230826.P13583521977085624692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230831 (A167614 (n + 1)).toNat)

end

end A230826.P13583521977085624692

/-! ## A230826.P11123759647750292166

`record[A010054(n)*A230831(n+3)]`
-/

namespace A230826.P11123759647750292166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230831 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230826.P11123759647750292166

/-! ## A230826.P13222708670884071950

`A230831(A167614(n+1))%A254664(n)`
-/

namespace A230826.P13222708670884071950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230831 (A167614 (n + 1)).toNat) (A254664 n)

end

end A230826.P13222708670884071950

/-! ## A230826.P4356727033537362490

`char[A007318(n)]*A230831(A167614(n+1))`
-/

namespace A230826.P4356727033537362490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A230831 (A167614 (n + 1)).toNat

end

end A230826.P4356727033537362490

/-!
# A230827: Number of nX4 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230827, there is no canonical definition to state claims against.
-/

/-! ## A230827.P10184096826628717228

`A230831(∑[n+3]+7)`
-/

namespace A230827.P10184096826628717228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A230827.P10184096826628717228

/-! ## A230827.P16508848898607543579

`lcm(2, A230831(A000096(n+2)+5))`
-/

namespace A230827.P16508848898607543579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230831 (A000096 (n + 2) + 5).toNat)

end

end A230827.P16508848898607543579

/-! ## A230827.P15027884610647467184

`char[A007318(n)]*A230831(A000096(n+2)+5)`
-/

namespace A230827.P15027884610647467184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A230831 (A000096 (n + 2) + 5).toNat

end

end A230827.P15027884610647467184

/-! ## A230827.P15144756371093208027

`A001221(2^n)*A230831(A000096(n+2)+5)`
-/

namespace A230827.P15144756371093208027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 ^ n) * A230831 (A000096 (n + 2) + 5).toNat

end

end A230827.P15144756371093208027

/-! ## A230827.P17623345083066657988

`A007318(C(2, n))*A230831(A000096(n+2)+5)`
-/

namespace A230827.P17623345083066657988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A230831 (A000096 (n + 2) + 5).toNat

end

end A230827.P17623345083066657988

/-!
# A230828: Number of nX5 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230828, there is no canonical definition to state claims against.
-/

/-! ## A230828.P9635669667909042717

`A230831(∑[n+4]+11)`
-/

namespace A230828.P9635669667909042717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A230828.P9635669667909042717

/-!
# A230829: Number of nX6 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230829, there is no canonical definition to state claims against.
-/

/-! ## A230829.P453650798070987553

`A230831(∑[n+5]+16)`
-/

namespace A230829.P453650798070987553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A230829.P453650798070987553

/-! ## A230829.P15799677663585990553

`lcm(2, A230831(A000096(n+4)+7))`
-/

namespace A230829.P15799677663585990553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230831 (A000096 (n + 4) + 7).toNat)

end

end A230829.P15799677663585990553

/-! ## A230829.P1268739423818586284

`A007318(C(n, 2))*A230831(A000096(n+4)+7)`
-/

namespace A230829.P1268739423818586284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A230831 (A000096 (n + 4) + 7).toNat

end

end A230829.P1268739423818586284

/-! ## A230829.P18324790683764817191

`A000041(C(n, 64))*A230831(A000096(n+4)+7)`
-/

namespace A230829.P18324790683764817191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A230831 (A000096 (n + 4) + 7).toNat

end

end A230829.P18324790683764817191

/-!
# A230830: Number of nX7 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230830, there is no canonical definition to state claims against.
-/

/-! ## A230830.P15502438345463171033

`A230831(A167487(n+5))`
-/

namespace A230830.P15502438345463171033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A167487 (n + 5)).toNat

end

end A230830.P15502438345463171033

/-! ## A230830.P6011762295689780659

`A230831(A056119(n)+28)`
-/

namespace A230830.P6011762295689780659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A056119 n + 28).toNat

end

end A230830.P6011762295689780659

/-! ## A230830.P10546482708144862903

`A230831(eq[11, A066657(n)])`
-/

namespace A230830.P10546482708144862903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230830.P10546482708144862903

/-! ## A230830.P8554178082708676259

`A230831(A000124(n+6)+6)`
-/

namespace A230830.P8554178082708676259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A000124 (n + 6) + 6).toNat

end

end A230830.P8554178082708676259

/-! ## A230830.P13515441057012721736

`A230831(A052905(n+3)+12)`
-/

namespace A230830.P13515441057012721736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230831 (A052905 (n + 3) + 12).toNat

end

end A230830.P13515441057012721736

/-!
# A230831: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230831, there is no canonical definition to state claims against.
-/

/-! ## A230831.P14985014670161679371

`2*A202177(A008459(n))`
-/

namespace A230831.P14985014670161679371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202177 (A008459 n).toNat

end

end A230831.P14985014670161679371

/-! ## A230831.P11875597753734301680

`A079067(2*A174689(n))`
-/

namespace A230831.P11875597753734301680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (2 * A174689 n).toNat

end

end A230831.P11875597753734301680

/-! ## A230831.P11267247316473261177

`A079067(lcm(2, A174689(n)))`
-/

namespace A230831.P11267247316473261177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (Int.lcm 2 (A174689 n))

end

end A230831.P11267247316473261177

/-! ## A230831.P4402703753926711939

`2*A202177(A007318(n)²)`
-/

namespace A230831.P4402703753926711939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202177 (A007318 n ^ 2).toNat

end

end A230831.P4402703753926711939

/-! ## A230831.P4535697113056068166

`A220498(round(A156141(n)/5))`
-/

namespace A230831.P4535697113056068166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220498 (SequenceMachineLib.roundAway ((A156141 n : ℚ) / 5)).toNat

end

end A230831.P4535697113056068166

/-!
# A230832: Number of permutations of [n] with exactly one occurrence of the consecutive step pattern up, down, up, down.

The programs for A230832, there is no canonical definition to state claims against.
-/

/-! ## A230832.P1292903133176652279

`A177543(n)-A000027(A177520(n))`
-/

namespace A230832.P1292903133176652279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177543 n - A000027 (A177520 n).toNat

end

end A230832.P1292903133176652279

/-! ## A230832.P17419396694214035662

`A177543(A002998(n))-A177520(n)`
-/

namespace A230832.P17419396694214035662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177543 (A002998 n).toNat - A177520 n

end

end A230832.P17419396694214035662

/-! ## A230832.P6338081940299656606

`A177543(A023106(n))-A177520(n)`
-/

namespace A230832.P6338081940299656606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177543 (A023106 n).toNat - A177520 n

end

end A230832.P6338081940299656606

/-! ## A230832.P15259145563386148663

`A177543(A056142(n))-A177520(n)`
-/

namespace A230832.P15259145563386148663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177543 (A056142 n).toNat - A177520 n

end

end A230832.P15259145563386148663

/-! ## A230832.P13415568803964173785

`A177543(n)%A177520(A023106(n))`
-/

namespace A230832.P13415568803964173785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177543 n) (A177520 (A023106 n).toNat)

end

end A230832.P13415568803964173785

/-!
# A230833: Sum of the first n strobogrammatic numbers.

The programs for A230833, there is no canonical definition to state claims against.
-/

/-! ## A230833.P8635613867556777920

`∑[A000787(n+1)]`
-/

namespace A230833.P8635613867556777920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230833.P8635613867556777920

/-! ## A230833.P10914686568178605729

`∑[record[A000787(A133310(n))]]`
-/

namespace A230833.P10914686568178605729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230833.P10914686568178605729

/-! ## A230833.P3263871738390088557

`∑[record[A000787(A291769(n))]]`
-/

namespace A230833.P3263871738390088557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230833.P3263871738390088557

/-! ## A230833.P18256304874264130739

`∑[record[A000787(A331742(n))]]`
-/

namespace A230833.P18256304874264130739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (A331742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230833.P18256304874264130739

/-! ## A230833.P2869100785837311262

`∑[A259984(n+1)-1]`
-/

namespace A230833.P2869100785837311262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259984 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230833.P2869100785837311262

/-! ## A230833.P9636298219754554102

`∑[A000787(A008621(4*n))%A107660(n)]`
-/

namespace A230833.P9636298219754554102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000787 (A008621 (4 * n)).toNat) (A107660 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230833.P9636298219754554102

/-!
# A230834: Loeschian semiprimes: semiprimes of the form x^2 + x*y + y^2.

The programs for A230834, the canonical program `A230834.P9285383202588386292` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230834 has offset 1).

The definition of A230834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230834.P9285383202588386292

`∪[A001248(n+1), A107890(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A230834

/-- `∪[A001248(n+1), A107890(n+1)]` -/
def P9285383202588386292.Spec : Prop :=
  ∀ n, (P9285383202588386292.a n : ℤ) = A230834 (n + 1)

theorem P9285383202588386292.correct : P9285383202588386292.Spec := by
  intro n
  simp only [A230834, Nat.add_sub_cancel]

end A230834

/-! ## A230834.P1854138711073817869

`filter[A001358(n+1), A353816(#)]`
-/

namespace A230834.P1854138711073817869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230834.P1854138711073817869

namespace A230834

/-- `filter[A001358(n+1), A353816(#)]` -/
def P1854138711073817869.Spec : Prop :=
  ∀ n, P1854138711073817869.a n = A230834 (n + 1)

end A230834

/-! ## A230834.P5475370416449232625

`filter[A097503(n+1), A064911(#)]`
-/

namespace A230834.P5475370416449232625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A230834.P5475370416449232625

namespace A230834

/-- `filter[A097503(n+1), A064911(#)]` -/
def P5475370416449232625.Spec : Prop :=
  ∀ n, P5475370416449232625.a n = A230834 (n + 1)

end A230834

/-! ## A230834.P11636655687920451667

`∩[A001358(n+1), A097503(n+1)]`
-/

namespace A230834.P11636655687920451667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230834.P11636655687920451667

namespace A230834

/-- `∩[A001358(n+1), A097503(n+1)]` -/
def P11636655687920451667.Spec : Prop :=
  ∀ n, (P11636655687920451667.a n : ℤ) = A230834 (n + 1)

end A230834

/-! ## A230834.P15974961306619143960

`filter[A003136(n+2), A064911(#)]`
-/

namespace A230834.P15974961306619143960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A230834.P15974961306619143960

namespace A230834

/-- `filter[A003136(n+2), A064911(#)]` -/
def P15974961306619143960.Spec : Prop :=
  ∀ n, P15974961306619143960.a n = A230834 (n + 1)

end A230834

/-! ## A230834.P2895488887544038580

`∩[A001358(n+1), A003136(n+1)]`
-/

namespace A230834.P2895488887544038580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230834.P2895488887544038580

namespace A230834

/-- `∩[A001358(n+1), A003136(n+1)]` -/
def P2895488887544038580.Spec : Prop :=
  ∀ n, (P2895488887544038580.a n : ℤ) = A230834 (n + 1)

end A230834

/-! ## A230834.P12300099268181610854

`filter[A176540(n+2), A353816(#)]`
-/

namespace A230834.P12300099268181610854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230834.P12300099268181610854

namespace A230834

/-- `filter[A176540(n+2), A353816(#)]` -/
def P12300099268181610854.Spec : Prop :=
  ∀ n, P12300099268181610854.a n = A230834 (n + 1)

end A230834

/-! ## A230834.P460701522599732602

`filter[A129767(2*(n+1)), A353816(#)]`
-/

namespace A230834.P460701522599732602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230834.P460701522599732602

namespace A230834

/-- `filter[A129767(2*(n+1)), A353816(#)]` -/
def P460701522599732602.Spec : Prop :=
  ∀ n, P460701522599732602.a n = A230834 (n + 1)

end A230834

/-! ## A230834.P4380774997151385041

`∩[A014612(n+1), A270050(n+1)]/2`
-/

namespace A230834.P4380774997151385041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270050 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A230834.P4380774997151385041

namespace A230834

/-- `∩[A014612(n+1), A270050(n+1)]/2` -/
def P4380774997151385041.Spec : Prop :=
  ∀ n, P4380774997151385041.a n = (A230834 (n + 1) : ℚ)

end A230834

/-! ## A230834.P6298140227043620346

`eq[gcd(10, A033716(n)), A105700(n)]`
-/

namespace A230834.P6298140227043620346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A033716 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230834.P6298140227043620346

namespace A230834

/-- `eq[gcd(10, A033716(n)), A105700(n)]` -/
def P6298140227043620346.Spec : Prop :=
  ∀ n, (P6298140227043620346.a n : ℤ) = A230834 (n + 1)

end A230834

/-! ## A230834.P14015932024680115833

`eq[gcd(14, A004016(n)), A105700(n)]`
-/

namespace A230834.P14015932024680115833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 14 (A004016 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230834.P14015932024680115833

namespace A230834

/-- `eq[gcd(14, A004016(n)), A105700(n)]` -/
def P14015932024680115833.Spec : Prop :=
  ∀ n, (P14015932024680115833.a n : ℤ) = A230834 (n + 1)

end A230834

/-! ## A230834.P17833157450088461108

`eq[A107279(A004016(n)), A226378(n)]`
-/

namespace A230834.P17833157450088461108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230834.P17833157450088461108

namespace A230834

/-- `eq[A107279(A004016(n)), A226378(n)]` -/
def P17833157450088461108.Spec : Prop :=
  ∀ n, (P17833157450088461108.a n : ℤ) = A230834 (n + 1)

end A230834

/-! ## A230834.P12324247189321448953

`eq[A107279(A033716(n)), A226378(n)]`
-/

namespace A230834.P12324247189321448953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A033716 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230834.P12324247189321448953

namespace A230834

/-- `eq[A107279(A033716(n)), A226378(n)]` -/
def P12324247189321448953.Spec : Prop :=
  ∀ n, (P12324247189321448953.a n : ℤ) = A230834 (n + 1)

end A230834

/-! ## A230834.P2541002527601019959

`eq[A275365(A004016(n)), A284289(n)]`
-/

namespace A230834.P2541002527601019959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230834.P2541002527601019959

namespace A230834

/-- `eq[A275365(A004016(n)), A284289(n)]` -/
def P2541002527601019959.Spec : Prop :=
  ∀ n, (P2541002527601019959.a n : ℤ) = A230834 (n + 1)

end A230834

/-!
# A230835: Number of n X 2 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230835, the canonical program `A230835.P6095524338157223185` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230835 has offset 1).

The definition of A230835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230835.P6095524338157223185

`8*a(n-1)-5*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=22, a(3)=162`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230835

/-- `8*a(n-1)-5*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P6095524338157223185.Spec : Prop :=
  ∀ n, P6095524338157223185.a n = A230835 (n + 1)

theorem P6095524338157223185.correct : P6095524338157223185.Spec := by
  intro n
  simp only [A230835, Nat.add_sub_cancel]

end A230835

/-! ## A230835.P14786274132797162454

`A230840(∑[n+1]+2)`
-/

namespace A230835.P14786274132797162454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230835.P14786274132797162454

namespace A230835

/-- `A230840(∑[n+1]+2)` -/
def P14786274132797162454.Spec : Prop :=
  ∀ n, P14786274132797162454.a n = A230835 (n + 1)

end A230835

/-! ## A230835.P10688514193972616384

`record[A230840(record[A091995(n+1)])]`
-/

namespace A230835.P10688514193972616384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230835.P10688514193972616384

namespace A230835

/-- `record[A230840(record[A091995(n+1)])]` -/
def P10688514193972616384.Spec : Prop :=
  ∀ n, P10688514193972616384.a n = A230835 (n + 1)

end A230835

/-! ## A230835.P894364725400912416

`record[A010054(n)*A230840(n+2)]`
-/

namespace A230835.P894364725400912416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230835.P894364725400912416

namespace A230835

/-- `record[A010054(n)*A230840(n+2)]` -/
def P894364725400912416.Spec : Prop :=
  ∀ n, P894364725400912416.a n = A230835 (n + 1)

end A230835

/-! ## A230835.P10931277228054906337

`record[A174391(n+1)*A230840(n+2)]`
-/

namespace A230835.P10931277228054906337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174391 (n + 1) * A230840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230835.P10931277228054906337

namespace A230835

/-- `record[A174391(n+1)*A230840(n+2)]` -/
def P10931277228054906337.Spec : Prop :=
  ∀ n, P10931277228054906337.a n = A230835 (n + 1)

end A230835

/-!
# A230836: Number of n X 3 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230836, there is no canonical definition to state claims against.
-/

/-! ## A230836.P4184040083165833411

`A230840(∑[n+2]+4)`
-/

namespace A230836.P4184040083165833411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230836.P4184040083165833411

/-! ## A230836.P9498302242392525906

`lcm(2, A230840(A167614(n+1)))`
-/

namespace A230836.P9498302242392525906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230840 (A167614 (n + 1)).toNat)

end

end A230836.P9498302242392525906

/-! ## A230836.P976384475228616200

`record[A010054(n)*A230840(n+3)]`
-/

namespace A230836.P976384475228616200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230840 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230836.P976384475228616200

/-! ## A230836.P9349114317642672488

`record[A174391(n+1)*A230840(n+3)]`
-/

namespace A230836.P9349114317642672488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174391 (n + 1) * A230840 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230836.P9349114317642672488

/-! ## A230836.P1215851710471988491

`record[A230840(A198464(n+1))]`
-/

namespace A230836.P1215851710471988491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230836.P1215851710471988491

/-!
# A230837: Number of n X 4 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230837, there is no canonical definition to state claims against.
-/

/-! ## A230837.P14775645470303835927

`A230840(A052905(n)+9)`
-/

namespace A230837.P14775645470303835927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (A052905 n + 9).toNat

end

end A230837.P14775645470303835927

/-! ## A230837.P1432446416189622633

`A230840(A055999(n)+10)`
-/

namespace A230837.P1432446416189622633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (A055999 n + 10).toNat

end

end A230837.P1432446416189622633

/-! ## A230837.P15962371602617085792

`A230840(A167614(n+2)+1)`
-/

namespace A230837.P15962371602617085792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (A167614 (n + 2) + 1).toNat

end

end A230837.P15962371602617085792

/-! ## A230837.P3009890444405334667

`A230840(eq[5, A131818(n+1)])`
-/

namespace A230837.P3009890444405334667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230837.P3009890444405334667

/-! ## A230837.P7101374777633993452

`A230840(Δ[A264443(n)-n²])`
-/

namespace A230837.P7101374777633993452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (f1 (n + 1) - f1 n).toNat

end

end A230837.P7101374777633993452

/-!
# A230838: Number of nX5 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230838, there is no canonical definition to state claims against.
-/

/-! ## A230838.P11909228615477860124

`A230840(eq[6, A131818(n+1)])`
-/

namespace A230838.P11909228615477860124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230838.P11909228615477860124

/-! ## A230838.P8839512700999926075

`A230840(Δ[A264443(n)])`
-/

namespace A230838.P8839512700999926075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (f1 (n + 1) - f1 n).toNat

end

end A230838.P8839512700999926075

/-! ## A230838.P648472240204436184

`A230840(A374005(n+1))`
-/

namespace A230838.P648472240204436184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (A374005 (n + 1)).toNat

end

end A230838.P648472240204436184

/-! ## A230838.P1283028861240128227

`A230840(eq[4, A193592(n)])`
-/

namespace A230838.P1283028861240128227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230838.P1283028861240128227

/-! ## A230838.P4588526091782888040

`A230840(eq[5, A239144(n)])`
-/

namespace A230838.P4588526091782888040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230838.P4588526091782888040

/-!
# A230839: Number of nX6 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230839, there is no canonical definition to state claims against.
-/

/-! ## A230839.P10499671783870317986

`A230840(A374007(n+1))`
-/

namespace A230839.P10499671783870317986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (A374007 (n + 1)).toNat

end

end A230839.P10499671783870317986

/-! ## A230839.P5485907427995458934

`A230840(eq[5, A193592(n)])`
-/

namespace A230839.P5485907427995458934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230839.P5485907427995458934

/-! ## A230839.P6879612445678993907

`A230840(Δ[A264443(n+1)]-1)`
-/

namespace A230839.P6879612445678993907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230840 (f1 (n + 1) - f1 n - 1).toNat

end

end A230839.P6879612445678993907

/-!
# A230840: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230840, there is no canonical definition to state claims against.
-/

/-! ## A230840.P9565111072699245166

`A331762(A157180(n)+1)`
-/

namespace A230840.P9565111072699245166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331762 (A157180 n + 1).toNat

end

end A230840.P9565111072699245166

/-! ## A230840.P16723431159720724844

`A384395(A347672(n+1))`
-/

namespace A230840.P16723431159720724844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384395 (A347672 (n + 1)).toNat

end

end A230840.P16723431159720724844

/-! ## A230840.P11683565782690130355

`A194368(A008300(n))-2`
-/

namespace A230840.P11683565782690130355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194368 (A008300 n).toNat - 2

end

end A230840.P11683565782690130355

/-! ## A230840.P5803147384967141643

`2*A353504(A255494(n))`
-/

namespace A230840.P5803147384967141643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353504 (A255494 n).toNat

end

end A230840.P5803147384967141643

/-! ## A230840.P4673429340156406421

`A342497(A008292(n+1)-1)-1`
-/

namespace A230840.P4673429340156406421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A008292 (n + 1) - 1).toNat - 1

end

end A230840.P4673429340156406421

/-!
# A230843: Cubefree numbers which in their canonical prime factorization have mutually distinct exponents.

The programs for A230843, the canonical program `A230843.P11108055546362958893` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230843 has offset 1).

The definition of A230843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230843.P11108055546362958893

`∪[A054753(n+1), A166684(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230843

/-- `∪[A054753(n+1), A166684(n+1)]` -/
def P11108055546362958893.Spec : Prop :=
  ∀ n, (P11108055546362958893.a n : ℤ) = A230843 (n + 1)

theorem P11108055546362958893.correct : P11108055546362958893.Spec := by
  intro n
  simp only [A230843, Nat.add_sub_cancel]

end A230843

/-! ## A230843.P3080387817299370762

`∪[A000040(n+1), A286228(n+1)]`
-/

namespace A230843.P3080387817299370762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P3080387817299370762

namespace A230843

/-- `∪[A000040(n+1), A286228(n+1)]` -/
def P3080387817299370762.Spec : Prop :=
  ∀ n, (P3080387817299370762.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P12675614511522642127

`∪[A000430(n+1), A286228(n+1)]`
-/

namespace A230843.P12675614511522642127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P12675614511522642127

namespace A230843

/-- `∪[A000430(n+1), A286228(n+1)]` -/
def P12675614511522642127.Spec : Prop :=
  ∀ n, (P12675614511522642127.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P236440888376785244

`∪[A008578(n+1), A286228(n+1)]`
-/

namespace A230843.P236440888376785244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P236440888376785244

namespace A230843

/-- `∪[A008578(n+1), A286228(n+1)]` -/
def P236440888376785244.Spec : Prop :=
  ∀ n, (P236440888376785244.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P8952712329562108451

`∪[A033946(n+1), A286228(n+1)]`
-/

namespace A230843.P8952712329562108451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P8952712329562108451

namespace A230843

/-- `∪[A033946(n+1), A286228(n+1)]` -/
def P8952712329562108451.Spec : Prop :=
  ∀ n, (P8952712329562108451.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P11373070804019351329

`∪[A046022(n+1), A286228(n+1)]`
-/

namespace A230843.P11373070804019351329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P11373070804019351329

namespace A230843

/-- `∪[A046022(n+1), A286228(n+1)]` -/
def P11373070804019351329.Spec : Prop :=
  ∀ n, (P11373070804019351329.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P10165881680859462877

`∪[A067126(n+1), A286228(n+1)]`
-/

namespace A230843.P10165881680859462877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P10165881680859462877

namespace A230843

/-- `∪[A067126(n+1), A286228(n+1)]` -/
def P10165881680859462877.Spec : Prop :=
  ∀ n, (P10165881680859462877.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P4416075977630648832

`filter[A268375(n+1), A212793(#)]`
-/

namespace A230843.P4416075977630648832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A230843.P4416075977630648832

namespace A230843

/-- `filter[A268375(n+1), A212793(#)]` -/
def P4416075977630648832.Spec : Prop :=
  ∀ n, P4416075977630648832.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P1445775066224669752

`filter[A268375(n+1), A359471(#)]`
-/

namespace A230843.P1445775066224669752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A230843.P1445775066224669752

namespace A230843

/-- `filter[A268375(n+1), A359471(#)]` -/
def P1445775066224669752.Spec : Prop :=
  ∀ n, P1445775066224669752.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P8247652341171481975

`eq[A001222(n+1), A066328(A000005(n+1))]+1`
-/

namespace A230843.P8247652341171481975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230843.P8247652341171481975

namespace A230843

/-- `eq[A001222(n+1), A066328(A000005(n+1))]+1` -/
def P8247652341171481975.Spec : Prop :=
  ∀ n, (P8247652341171481975.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P11883449359918124488

`eq[A000005(n+1), A159069(A001222(n+1)+1)]+1`
-/

namespace A230843.P11883449359918124488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159069 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230843.P11883449359918124488

namespace A230843

/-- `eq[A000005(n+1), A159069(A001222(n+1)+1)]+1` -/
def P11883449359918124488.Spec : Prop :=
  ∀ n, (P11883449359918124488.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P7040698830067276792

`filter[A265640(n+1), A359471(#)]`
-/

namespace A230843.P7040698830067276792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A230843.P7040698830067276792

namespace A230843

/-- `filter[A265640(n+1), A359471(#)]` -/
def P7040698830067276792.Spec : Prop :=
  ∀ n, P7040698830067276792.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P14686406390330341185

`filter[A130091(n+1), A212793(#)]`
-/

namespace A230843.P14686406390330341185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A230843.P14686406390330341185

namespace A230843

/-- `filter[A130091(n+1), A212793(#)]` -/
def P14686406390330341185.Spec : Prop :=
  ∀ n, P14686406390330341185.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P14975935256248000662

`filter[A130091(n+1), A359471(#)]`
-/

namespace A230843.P14975935256248000662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A230843.P14975935256248000662

namespace A230843

/-- `filter[A130091(n+1), A359471(#)]` -/
def P14975935256248000662.Spec : Prop :=
  ∀ n, P14975935256248000662.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P8884091989704364799

`filter[A212165(n+1), A359471(#)]`
-/

namespace A230843.P8884091989704364799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A230843.P8884091989704364799

namespace A230843

/-- `filter[A212165(n+1), A359471(#)]` -/
def P8884091989704364799.Spec : Prop :=
  ∀ n, P8884091989704364799.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P1455554745041736978

`filter[A048107(n+1), A091862(#)]`
-/

namespace A230843.P1455554745041736978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A230843.P1455554745041736978

namespace A230843

/-- `filter[A048107(n+1), A091862(#)]` -/
def P1455554745041736978.Spec : Prop :=
  ∀ n, P1455554745041736978.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P8737318152385638556

`filter[A048107(n+1), A351564(#)]`
-/

namespace A230843.P8737318152385638556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A230843.P8737318152385638556

namespace A230843

/-- `filter[A048107(n+1), A351564(#)]` -/
def P8737318152385638556.Spec : Prop :=
  ∀ n, P8737318152385638556.a n = A230843 (n + 1)

end A230843

/-! ## A230843.P9595670239298670649

`∩[A048107(n+1), A130091(n+1)]`
-/

namespace A230843.P9595670239298670649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P9595670239298670649

namespace A230843

/-- `∩[A048107(n+1), A130091(n+1)]` -/
def P9595670239298670649.Spec : Prop :=
  ∀ n, (P9595670239298670649.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P15907256315250338295

`∩[A048107(n+1), A212165(n+1)]`
-/

namespace A230843.P15907256315250338295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P15907256315250338295

namespace A230843

/-- `∩[A048107(n+1), A212165(n+1)]` -/
def P15907256315250338295.Spec : Prop :=
  ∀ n, (P15907256315250338295.a n : ℤ) = A230843 (n + 1)

end A230843

/-! ## A230843.P2101090531056668675

`∩[A048107(n+1), A265640(n+1)]`
-/

namespace A230843.P2101090531056668675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230843.P2101090531056668675

namespace A230843

/-- `∩[A048107(n+1), A265640(n+1)]` -/
def P2101090531056668675.Spec : Prop :=
  ∀ n, (P2101090531056668675.a n : ℤ) = A230843 (n + 1)

end A230843

/-!
# A230846: 1 + A075526(n).

The programs for A230846, the canonical program `A230846.P382823846826996037` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230846 has offset 1).

The definition of A230846 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075526, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230846.P382823846826996037

`1+A075526(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230846

/-- `1+A075526(n)` -/
def P382823846826996037.Spec : Prop :=
  ∀ n, P382823846826996037.a n = A230846 (n + 1)

theorem P382823846826996037.correct : P382823846826996037.Spec := by
  intro n
  simp only [A230846, Nat.add_sub_cancel]

end A230846

/-! ## A230846.P11587482459459373811

`Δ[A028815(n)]+1`
-/

namespace A230846.P11587482459459373811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A230846.P11587482459459373811

namespace A230846

/-- `Δ[A028815(n)]+1` -/
def P11587482459459373811.Spec : Prop :=
  ∀ n, P11587482459459373811.a n = A230846 (n + 1)

theorem P11587482459459373811.correct : P11587482459459373811.Spec := by
  intro n
  simp only [A230846, Nat.add_sub_cancel, A230846.P11587482459459373811.f1, A230846.P11587482459459373811.a, A230846.P382823846826996037.a, A028815, A028815.P810525423351225743.a, A075526, A075526.P13453056913313804413.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230846

/-! ## A230846.P9331087296942273438

`A230849(Δ[n²])+1`
-/

namespace A230846.P9331087296942273438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A230846.P9331087296942273438

namespace A230846

/-- `A230849(Δ[n²])+1` -/
def P9331087296942273438.Spec : Prop :=
  ∀ n, P9331087296942273438.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P182581101885973733

`∑[A036263(abs(2-n)+1)]`
-/

namespace A230846.P182581101885973733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230846.P182581101885973733

namespace A230846

/-- `∑[A036263(abs(2-n)+1)]` -/
def P182581101885973733.Spec : Prop :=
  ∀ n, P182581101885973733.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P15365910328347077571

`A001223(or(n, C(n, n²)))+1`
-/

namespace A230846.P15365910328347077571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Nat.lor n (Nat.choose n (n ^ 2))) + 1

end

end A230846.P15365910328347077571

namespace A230846

/-- `A001223(or(n, C(n, n²)))+1` -/
def P15365910328347077571.Spec : Prop :=
  ∀ n, P15365910328347077571.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P17678841335537072680

`A159461(n)+4-a(n-1)` with `a(0)=2`
-/

namespace A230846.P17678841335537072680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A159461 n + (4 - a (n - 1))

end

end A230846.P17678841335537072680

namespace A230846

/-- `A159461(n)+4-a(n-1)` -/
def P17678841335537072680.Spec : Prop :=
  ∀ n, P17678841335537072680.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P8729894886717973112

`A230847(ceil(sqrt(n²+4))-char[1])`
-/

namespace A230846.P8729894886717973112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A230846.P8729894886717973112

namespace A230846

/-- `A230847(ceil(sqrt(n²+4))-char[1])` -/
def P8729894886717973112.Spec : Prop :=
  ∀ n, P8729894886717973112.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P1159510146610936672

`abs(Δ[A000040(abs(1-n)+1)])+1`
-/

namespace A230846.P1159510146610936672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A230846.P1159510146610936672

namespace A230846

/-- `abs(Δ[A000040(abs(1-n)+1)])+1` -/
def P1159510146610936672.Spec : Prop :=
  ∀ n, P1159510146610936672.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P15119209698464478094

`A001223(A028310(n))+1`
-/

namespace A230846.P15119209698464478094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat + 1

end

end A230846.P15119209698464478094

namespace A230846

/-- `A001223(A028310(n))+1` -/
def P15119209698464478094.Spec : Prop :=
  ∀ n, P15119209698464478094.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P16633626292752203850

`A001223(A000007(n)+n)+1`
-/

namespace A230846.P16633626292752203850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000007 n + (n : ℤ)).toNat + 1

end

end A230846.P16633626292752203850

namespace A230846

/-- `A001223(A000007(n)+n)+1` -/
def P16633626292752203850.Spec : Prop :=
  ∀ n, P16633626292752203850.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P13663300609127912215

`A076368(n+1)+A000007(n)`
-/

namespace A230846.P13663300609127912215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + A000007 n

end

end A230846.P13663300609127912215

namespace A230846

/-- `A076368(n+1)+A000007(n)` -/
def P13663300609127912215.Spec : Prop :=
  ∀ n, P13663300609127912215.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P3850003616240849424

`A057427(n)+A054541(n+1)`
-/

namespace A230846.P3850003616240849424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A054541 (n + 1)

end

end A230846.P3850003616240849424

namespace A230846

/-- `A057427(n)+A054541(n+1)` -/
def P3850003616240849424.Spec : Prop :=
  ∀ n, P3850003616240849424.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P7592223174952156739

`A158388(n)+A125266(n+1)`
-/

namespace A230846.P7592223174952156739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A125266 (n + 1)

end

end A230846.P7592223174952156739

namespace A230846

/-- `A158388(n)+A125266(n+1)` -/
def P7592223174952156739.Spec : Prop :=
  ∀ n, P7592223174952156739.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P452804744312294610

`lcm(A054977(n), A076368(n+1))`
-/

namespace A230846.P452804744312294610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A076368 (n + 1))

end

end A230846.P452804744312294610

namespace A230846

/-- `lcm(A054977(n), A076368(n+1))` -/
def P452804744312294610.Spec : Prop :=
  ∀ n, (P452804744312294610.a n : ℤ) = A230846 (n + 1)

end A230846

/-! ## A230846.P7499866891100646918

`xor(A000007(n), A230847(n+1))`
-/

namespace A230846.P7499866891100646918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A230847 (n + 1))

end

end A230846.P7499866891100646918

namespace A230846

/-- `xor(A000007(n), A230847(n+1))` -/
def P7499866891100646918.Spec : Prop :=
  ∀ n, P7499866891100646918.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P6724995456412284615

`A008864(n+1)-A008578(n+1)`
-/

namespace A230846.P6724995456412284615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A008578 (n + 1)

end

end A230846.P6724995456412284615

namespace A230846

/-- `A008864(n+1)-A008578(n+1)` -/
def P6724995456412284615.Spec : Prop :=
  ∀ n, P6724995456412284615.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P10813758819667778941

`A028815(n+1)-A008578(n+1)`
-/

namespace A230846.P10813758819667778941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - A008578 (n + 1)

end

end A230846.P10813758819667778941

namespace A230846

/-- `A028815(n+1)-A008578(n+1)` -/
def P10813758819667778941.Spec : Prop :=
  ∀ n, P10813758819667778941.a n = A230846 (n + 1)

theorem P10813758819667778941.correct : P10813758819667778941.Spec := by
  intro n
  simp only [A230846, Nat.add_sub_cancel, A230846.P10813758819667778941.a, A230846.P382823846826996037.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A075526, A075526.P13453056913313804413.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230846

/-! ## A230846.P2568674342270311059

`A014692(n+1)-A162177(n+1)`
-/

namespace A230846.P2568674342270311059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A162177 (n + 1)

end

end A230846.P2568674342270311059

namespace A230846

/-- `A014692(n+1)-A162177(n+1)` -/
def P2568674342270311059.Spec : Prop :=
  ∀ n, P2568674342270311059.a n = A230846 (n + 1)

end A230846

/-! ## A230846.P17803939053419913527

`A014688(n+1)-A167136(n+1)`
-/

namespace A230846.P17803939053419913527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A167136 (n + 1)

end

end A230846.P17803939053419913527

namespace A230846

/-- `A014688(n+1)-A167136(n+1)` -/
def P17803939053419913527.Spec : Prop :=
  ∀ n, P17803939053419913527.a n = A230846 (n + 1)

theorem P17803939053419913527.correct : P17803939053419913527.Spec := by
  intro n
  simp only [A230846, Nat.add_sub_cancel, A230846.P17803939053419913527.a, A230846.P382823846826996037.a, A014688, A014688.P4990984272387159238.a, A075526, A075526.P13453056913313804413.a, A167136, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230846

/-! ## A230846.P3015366975249825103

`Δ[A090178(n+1)]`
-/

namespace A230846.P3015366975249825103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230846.P3015366975249825103

namespace A230846

/-- `Δ[A090178(n+1)]` -/
def P3015366975249825103.Spec : Prop :=
  ∀ n, P3015366975249825103.a n = A230846 (n + 1)

theorem P3015366975249825103.correct : P3015366975249825103.Spec := by
  intro n
  simp only [A230846, Nat.add_sub_cancel, A230846.P3015366975249825103.f1, A230846.P3015366975249825103.a, A230846.P382823846826996037.a, A075526, A075526.P13453056913313804413.a, A090178, A090178.P3922482968985292774.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230846

/-!
# A230847: a(n) = 1 + A054541(n).

The programs for A230847, the canonical program `A230847.P8149811337675200087` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230847 has offset 1).

The definition of A230847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054541, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230847.P8149811337675200087

`1+A054541(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230847

/-- `1+A054541(n+1)` -/
def P8149811337675200087.Spec : Prop :=
  ∀ n, P8149811337675200087.a n = A230847 (n + 1)

theorem P8149811337675200087.correct : P8149811337675200087.Spec := by
  intro n
  simp only [A230847, Nat.add_sub_cancel]

end A230847

/-! ## A230847.P6655468002212535082

`∑{digits}[A270264(n+1), #]+1`
-/

namespace A230847.P6655468002212535082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A230847.P6655468002212535082

namespace A230847

/-- `∑{digits}[A270264(n+1), #]+1` -/
def P6655468002212535082.Spec : Prop :=
  ∀ n, (P6655468002212535082.a n : ℤ) = A230847 (n + 1)

end A230847

/-! ## A230847.P5363534042166684534

`A001223(abs(1-n)+1)+1`
-/

namespace A230847.P5363534042166684534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A230847.P5363534042166684534

namespace A230847

/-- `A001223(abs(1-n)+1)+1` -/
def P5363534042166684534.Spec : Prop :=
  ∀ n, P5363534042166684534.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P9755002147596266598

`or(char[2*n], A230846(n+1))`
-/

namespace A230847.P9755002147596266598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A230846 (n + 1))

end

end A230847.P9755002147596266598

namespace A230847

/-- `or(char[2*n], A230846(n+1))` -/
def P9755002147596266598.Spec : Prop :=
  ∀ n, P9755002147596266598.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P8834258505866095839

`A036263(n-1)+a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A230847.P8834258505866095839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A036263 (n - 1) + a (n - 1)

end

end A230847.P8834258505866095839

namespace A230847

/-- `A036263(n-1)+a(n-1)` -/
def P8834258505866095839.Spec : Prop :=
  ∀ n, P8834258505866095839.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P15107941573947899667

`Δ[A000040(gcd(n, n*a(n-1)))]+1` with `a(0)=0`
-/

namespace A230847.P15107941573947899667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A230847.P15107941573947899667

namespace A230847

/-- `Δ[A000040(gcd(n, n*a(n-1)))]+1` -/
def P15107941573947899667.Spec : Prop :=
  ∀ n, P15107941573947899667.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P3945243702099182935

`A075526(n)+A054977(n)`
-/

namespace A230847.P3945243702099182935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A054977 n

end

end A230847.P3945243702099182935

namespace A230847

/-- `A075526(n)+A054977(n)` -/
def P3945243702099182935.Spec : Prop :=
  ∀ n, P3945243702099182935.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P17183812768878907289

`A076368(A054977(n)²+n)`
-/

namespace A230847.P17183812768878907289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A230847.P17183812768878907289

namespace A230847

/-- `A076368(A054977(n)²+n)` -/
def P17183812768878907289.Spec : Prop :=
  ∀ n, P17183812768878907289.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P13622344843109934672

`A230846(A054977(n)²+n)`
-/

namespace A230847.P13622344843109934672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A230847.P13622344843109934672

namespace A230847

/-- `A230846(A054977(n)²+n)` -/
def P13622344843109934672.Spec : Prop :=
  ∀ n, P13622344843109934672.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P1141928205226949138

`A131055(A125266(n+1))+1`
-/

namespace A230847.P1141928205226949138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A125266 (n + 1)).toNat + 1

end

end A230847.P1141928205226949138

namespace A230847

/-- `A131055(A125266(n+1))+1` -/
def P1141928205226949138.Spec : Prop :=
  ∀ n, P1141928205226949138.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P6963337035374629020

`A076368(n+1)+A000038(n)`
-/

namespace A230847.P6963337035374629020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + A000038 n

end

end A230847.P6963337035374629020

namespace A230847

/-- `A076368(n+1)+A000038(n)` -/
def P6963337035374629020.Spec : Prop :=
  ∀ n, P6963337035374629020.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P11390732175951976659

`A125266(n+1)+A057427(n)`
-/

namespace A230847.P11390732175951976659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) + A057427 n

end

end A230847.P11390732175951976659

namespace A230847

/-- `A125266(n+1)+A057427(n)` -/
def P11390732175951976659.Spec : Prop :=
  ∀ n, P11390732175951976659.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P15624554932334602144

`A230846(n+1)+A000007(n)`
-/

namespace A230847.P15624554932334602144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) + A000007 n

end

end A230847.P15624554932334602144

namespace A230847

/-- `A230846(n+1)+A000007(n)` -/
def P15624554932334602144.Spec : Prop :=
  ∀ n, P15624554932334602144.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P10866209846400010958

`A125266(n+1)-A057428(n)`
-/

namespace A230847.P10866209846400010958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) - A057428 n

end

end A230847.P10866209846400010958

namespace A230847

/-- `A125266(n+1)-A057428(n)` -/
def P10866209846400010958.Spec : Prop :=
  ∀ n, P10866209846400010958.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P5484995315269118150

`A072055(n+1)-A011974(n+1)`
-/

namespace A230847.P5484995315269118150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A011974 (n + 1)

end

end A230847.P5484995315269118150

namespace A230847

/-- `A072055(n+1)-A011974(n+1)` -/
def P5484995315269118150.Spec : Prop :=
  ∀ n, P5484995315269118150.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P10895958329678754466

`A175216(n+1)-A008578(n+1)`
-/

namespace A230847.P10895958329678754466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) - A008578 (n + 1)

end

end A230847.P10895958329678754466

namespace A230847

/-- `A175216(n+1)-A008578(n+1)` -/
def P10895958329678754466.Spec : Prop :=
  ∀ n, P10895958329678754466.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P16624668152731786688

`A008864(n+1)-A182986(n+1)`
-/

namespace A230847.P16624668152731786688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A182986 (n + 1)

end

end A230847.P16624668152731786688

namespace A230847

/-- `A008864(n+1)-A182986(n+1)` -/
def P16624668152731786688.Spec : Prop :=
  ∀ n, P16624668152731786688.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P15634473473315069993

`A175216(n+1)-A028815(n)+1`
-/

namespace A230847.P15634473473315069993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) - A028815 n + 1

end

end A230847.P15634473473315069993

namespace A230847

/-- `A175216(n+1)-A028815(n)+1` -/
def P15634473473315069993.Spec : Prop :=
  ∀ n, P15634473473315069993.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P9223876280718456888

`A028815(n+1)-A182986(n+1)`
-/

namespace A230847.P9223876280718456888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - A182986 (n + 1)

end

end A230847.P9223876280718456888

namespace A230847

/-- `A028815(n+1)-A182986(n+1)` -/
def P9223876280718456888.Spec : Prop :=
  ∀ n, P9223876280718456888.a n = A230847 (n + 1)

end A230847

/-! ## A230847.P10064519393953477340

`A000040(n+1)+1-A182986(n+1)`
-/

namespace A230847.P10064519393953477340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A182986 (n + 1))

end

end A230847.P10064519393953477340

namespace A230847

/-- `A000040(n+1)+1-A182986(n+1)` -/
def P10064519393953477340.Spec : Prop :=
  ∀ n, P10064519393953477340.a n = A230847 (n + 1)

end A230847

/-!
# A230849: A075526 and A000012 interleaved.

The programs for A230849, the canonical program `A230849.P4568427976746247957` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230849 has offset 1).

The definition of A230849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230849.P17577546728142827441

`A230850(n+1)^a(n-1)` with `a(0)=1`
-/

namespace A230849.P17577546728142827441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A230850 (n + 1) : ℝ) ^ (a (n - 1))

end

end A230849.P17577546728142827441

namespace A230849

/-- `A230850(n+1)^a(n-1)` -/
def P17577546728142827441.Spec : Prop :=
  ∀ n, P17577546728142827441.a n = (A230849 (n + 1) : ℝ)

end A230849

/-! ## A230849.P4568427976746247957

`A001223(gcd(n, ceil(abs((1-n)/2))))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230849

/-- `A001223(gcd(n, ceil(abs((1-n)/2))))` -/
def P4568427976746247957.Spec : Prop :=
  ∀ n, P4568427976746247957.a n = A230849 (n + 1)

theorem P4568427976746247957.correct : P4568427976746247957.Spec := by
  intro n
  simp only [A230849, Nat.add_sub_cancel]

end A230849

/-! ## A230849.P15497321404186134128

`A230850(xor(xor(n, a(n-1)), a(n-1))+1)` with `a(0)=1`
-/

namespace A230849.P15497321404186134128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230850 (Int.xor (Int.xor (n : ℤ) (a (n - 1))) (a (n - 1)) + 1).toNat

end

end A230849.P15497321404186134128

namespace A230849

/-- `A230850(xor(xor(n, a(n-1)), a(n-1))+1)` -/
def P15497321404186134128.Spec : Prop :=
  ∀ n, P15497321404186134128.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P4446519751708722403

`A075526(A142150(n))`
-/

namespace A230849.P4446519751708722403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (A142150 n).toNat

end

end A230849.P4446519751708722403

namespace A230849

/-- `A075526(A142150(n))` -/
def P4446519751708722403.Spec : Prop :=
  ∀ n, P4446519751708722403.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P4066131587863383802

`A075526(A166514(n))`
-/

namespace A230849.P4066131587863383802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (A166514 n).toNat

end

end A230849.P4066131587863383802

namespace A230849

/-- `A075526(A166514(n))` -/
def P4066131587863383802.Spec : Prop :=
  ∀ n, P4066131587863383802.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P13232029199421832745

`A230850(A348776(n+1))`
-/

namespace A230849.P13232029199421832745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A348776 (n + 1)).toNat

end

end A230849.P13232029199421832745

namespace A230849

/-- `A230850(A348776(n+1))` -/
def P13232029199421832745.Spec : Prop :=
  ∀ n, P13232029199421832745.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P14917530633505455678

`A230850(A054977(n)+n)`
-/

namespace A230849.P14917530633505455678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A054977 n + (n : ℤ)).toNat

end

end A230849.P14917530633505455678

namespace A230849

/-- `A230850(A054977(n)+n)` -/
def P14917530633505455678.Spec : Prop :=
  ∀ n, P14917530633505455678.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P2431702513824835320

`A230850(A000007(n)+1+n)`
-/

namespace A230849.P2431702513824835320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A000007 n + 1 + (n : ℤ)).toNat

end

end A230849.P2431702513824835320

namespace A230849

/-- `A230850(A000007(n)+1+n)` -/
def P2431702513824835320.Spec : Prop :=
  ∀ n, P2431702513824835320.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P17867569354952080808

`A230850(A004273(n)+2-n)`
-/

namespace A230849.P17867569354952080808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A004273 n + (2 - (n : ℤ))).toNat

end

end A230849.P17867569354952080808

namespace A230849

/-- `A230850(A004273(n)+2-n)` -/
def P17867569354952080808.Spec : Prop :=
  ∀ n, P17867569354952080808.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P6861866502776539935

`A230850(2-(n-A004273(n)))`
-/

namespace A230849.P6861866502776539935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A230849.P6861866502776539935

namespace A230849

/-- `A230850(2-(n-A004273(n)))` -/
def P6861866502776539935.Spec : Prop :=
  ∀ n, P6861866502776539935.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P3241372863555802783

`A230850(A205006(2*n+1)-n)`
-/

namespace A230849.P3241372863555802783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A205006 (2 * n + 1) - (n : ℤ)).toNat

end

end A230849.P3241372863555802783

namespace A230849

/-- `A230850(A205006(2*n+1)-n)` -/
def P3241372863555802783.Spec : Prop :=
  ∀ n, P3241372863555802783.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P15482313408096802057

`A230850(n+1)-A010051(2*(n+1))`
-/

namespace A230849.P15482313408096802057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (n + 1) - A010051 (2 * (n + 1))

end

end A230849.P15482313408096802057

namespace A230849

/-- `A230850(n+1)-A010051(2*(n+1))` -/
def P15482313408096802057.Spec : Prop :=
  ∀ n, P15482313408096802057.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P9613369128169518086

`A230850(n+1)-A109578(2*n+1)`
-/

namespace A230849.P9613369128169518086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (n + 1) - A109578 (2 * n + 1)

end

end A230849.P9613369128169518086

namespace A230849

/-- `A230850(n+1)-A109578(2*n+1)` -/
def P9613369128169518086.Spec : Prop :=
  ∀ n, P9613369128169518086.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P7692128120749507170

`A230850(A230850(A075526(n))+n)`
-/

namespace A230849.P7692128120749507170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A230850 (A075526 n).toNat + (n : ℤ)).toNat

end

end A230849.P7692128120749507170

namespace A230849

/-- `A230850(A230850(A075526(n))+n)` -/
def P7692128120749507170.Spec : Prop :=
  ∀ n, P7692128120749507170.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P18026478089932393933

`A230850(A230850(A001223(n+1))+n)`
-/

namespace A230849.P18026478089932393933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A230850 (A001223 (n + 1)).toNat + (n : ℤ)).toNat

end

end A230849.P18026478089932393933

namespace A230849

/-- `A230850(A230850(A001223(n+1))+n)` -/
def P18026478089932393933.Spec : Prop :=
  ∀ n, P18026478089932393933.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P4968545247994439783

`A230850(n+1)/A230850(A125266(n+1)+2)`
-/

namespace A230849.P4968545247994439783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230850 (n + 1) : ℚ) / (A230850 (A125266 (n + 1) + 2).toNat : ℚ)

end

end A230849.P4968545247994439783

namespace A230849

/-- `A230850(n+1)/A230850(A125266(n+1)+2)` -/
def P4968545247994439783.Spec : Prop :=
  ∀ n, P4968545247994439783.a n = (A230849 (n + 1) : ℚ)

end A230849

/-! ## A230849.P17316144445491925486

`A054541(n+1)+A230850(n+1)-A125266(n+1)`
-/

namespace A230849.P17316144445491925486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (A230850 (n + 1) - A125266 (n + 1))

end

end A230849.P17316144445491925486

namespace A230849

/-- `A054541(n+1)+A230850(n+1)-A125266(n+1)` -/
def P17316144445491925486.Spec : Prop :=
  ∀ n, P17316144445491925486.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P14044458291264077831

`A075526(A057979(n+1))`
-/

namespace A230849.P14044458291264077831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (A057979 (n + 1)).toNat

end

end A230849.P14044458291264077831

namespace A230849

/-- `A075526(A057979(n+1))` -/
def P14044458291264077831.Spec : Prop :=
  ∀ n, P14044458291264077831.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P13570848544371446054

`A230850(A254667(n+1))`
-/

namespace A230849.P13570848544371446054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A254667 (n + 1)).toNat

end

end A230849.P13570848544371446054

namespace A230849

/-- `A230850(A254667(n+1))` -/
def P13570848544371446054.Spec : Prop :=
  ∀ n, P13570848544371446054.a n = A230849 (n + 1)

end A230849

/-! ## A230849.P15624559585866255260

`A230850(A114112(n+2))`
-/

namespace A230849.P15624559585866255260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A114112 (n + 2)).toNat

end

end A230849.P15624559585866255260

namespace A230849

/-- `A230850(A114112(n+2))` -/
def P15624559585866255260.Spec : Prop :=
  ∀ n, P15624559585866255260.a n = A230849 (n + 1)

end A230849

/-!
# A230850: A054541 and A000012 interleaved.

The programs for A230850, the canonical program `A230850.P10627389898103224064` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230850 has offset 1).

The definition of A230850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230850.P6166509617338347866

`A230849(n+1)^a(n-1)` with `a(0)=2`
-/

namespace A230850.P6166509617338347866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A230849 (n + 1) : ℝ) ^ (a (n - 1))

end

end A230850.P6166509617338347866

namespace A230850

/-- `A230849(n+1)^a(n-1)` -/
def P6166509617338347866.Spec : Prop :=
  ∀ n, P6166509617338347866.a n = (A230850 (n + 1) : ℝ)

end A230850

/-! ## A230850.P10627389898103224064

`A054541(gcd(n, ∑[xor(1, n+1)])+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230850

/-- `A054541(gcd(n, ∑[xor(1, n+1)])+1)` -/
def P10627389898103224064.Spec : Prop :=
  ∀ n, P10627389898103224064.a n = A230850 (n + 1)

theorem P10627389898103224064.correct : P10627389898103224064.Spec := by
  intro n
  simp only [A230850, Nat.add_sub_cancel]

end A230850

/-! ## A230850.P5541805759072817685

`A001223((n+1)%∑[1-a(n-1)]+1)` with `a(0)=2`
-/

namespace A230850.P5541805759072817685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.tmod (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A230850.P5541805759072817685

namespace A230850

/-- `A001223((n+1)%∑[1-a(n-1)]+1)` -/
def P5541805759072817685.Spec : Prop :=
  ∀ n, P5541805759072817685.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P12043947119887128545

`A230849(xor(xor(n, a(n-2)), a(n-2))+1)` with `a(0)=2, a(1)=1`
-/

namespace A230850.P12043947119887128545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A230849 (Int.xor (Int.xor (n : ℤ) (a (n - 2))) (a (n - 2)) + 1).toNat

end

end A230850.P12043947119887128545

namespace A230850

/-- `A230849(xor(xor(n, a(n-2)), a(n-2))+1)` -/
def P12043947119887128545.Spec : Prop :=
  ∀ n, P12043947119887128545.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P15696008190862859224

`A230849(n+1)+A000007(n)`
-/

namespace A230850.P15696008190862859224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (n + 1) + A000007 n

end

end A230850.P15696008190862859224

namespace A230850

/-- `A230849(n+1)+A000007(n)` -/
def P15696008190862859224.Spec : Prop :=
  ∀ n, P15696008190862859224.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P756151857633218180

`A054541(1-A029578(n)+n)`
-/

namespace A230850.P756151857633218180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (1 - A029578 n + (n : ℤ)).toNat

end

end A230850.P756151857633218180

namespace A230850

/-- `A054541(1-A029578(n)+n)` -/
def P756151857633218180.Spec : Prop :=
  ∀ n, P756151857633218180.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P671573906461025068

`A054541(1-(A029578(n)-n))`
-/

namespace A230850.P671573906461025068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (1 - (A029578 n - (n : ℤ))).toNat

end

end A230850.P671573906461025068

namespace A230850

/-- `A054541(1-(A029578(n)-n))` -/
def P671573906461025068.Spec : Prop :=
  ∀ n, P671573906461025068.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P3734251512154416149

`A054977(n)*A230849(n+1)`
-/

namespace A230850.P3734251512154416149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230849 (n + 1)

end

end A230850.P3734251512154416149

namespace A230850

/-- `A054977(n)*A230849(n+1)` -/
def P3734251512154416149.Spec : Prop :=
  ∀ n, P3734251512154416149.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P9624104242484994199

`A230849(n+1)+A010051(2*(n+1))`
-/

namespace A230850.P9624104242484994199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (n + 1) + A010051 (2 * (n + 1))

end

end A230850.P9624104242484994199

namespace A230850

/-- `A230849(n+1)+A010051(2*(n+1))` -/
def P9624104242484994199.Spec : Prop :=
  ∀ n, P9624104242484994199.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P9118414255656049872

`A054541(n+1)+A230849(n+1)-A075526(n)`
-/

namespace A230850.P9118414255656049872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (A230849 (n + 1) - A075526 n)

end

end A230850.P9118414255656049872

namespace A230850

/-- `A054541(n+1)+A230849(n+1)-A075526(n)` -/
def P9118414255656049872.Spec : Prop :=
  ∀ n, P9118414255656049872.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P4531247630574726802

`A160322(A230849(n+1)+n)*A230849(n+1)`
-/

namespace A230850.P4531247630574726802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160322 (A230849 (n + 1) + (n : ℤ)).toNat * A230849 (n + 1)

end

end A230850.P4531247630574726802

namespace A230850

/-- `A160322(A230849(n+1)+n)*A230849(n+1)` -/
def P4531247630574726802.Spec : Prop :=
  ∀ n, P4531247630574726802.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P1023726629961847474

`A054541(gcd(n, A002265(2*n))+1)`
-/

namespace A230850.P1023726629961847474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (Int.gcd (n : ℤ) (A002265 (2 * n)) + 1)

end

end A230850.P1023726629961847474

namespace A230850

/-- `A054541(gcd(n, A002265(2*n))+1)` -/
def P1023726629961847474.Spec : Prop :=
  ∀ n, P1023726629961847474.a n = A230850 (n + 1)

end A230850

/-! ## A230850.P8464949287733563156

`A230849((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A230850.P8464949287733563156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A230849 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A230850.P8464949287733563156

namespace A230850

/-- `A230849((n+1)*a(n-1))` -/
def P8464949287733563156.Spec : Prop :=
  ∀ n, P8464949287733563156.a n = A230850 (n + 1)

end A230850

/-!
# A230851: Numbers with divisors which are half odious (A000069) and half evil (A001969).

The programs for A230851, the canonical program `A230851.P4807682974501842405` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230851 has offset 1).

The definition of A230851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230851.P4807682974501842405

`eq[0, A357761(A028310(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A230851

/-- `eq[0, A357761(A028310(n))]` -/
def P4807682974501842405.Spec : Prop :=
  ∀ n, (P4807682974501842405.a n : ℤ) = A230851 (n + 1)

theorem P4807682974501842405.correct : P4807682974501842405.Spec := by
  intro n
  simp only [A230851, Nat.add_sub_cancel]

end A230851

/-! ## A230851.P12937258610133613584

`eq[A227872(n+1), A356018(n+1)]+1`
-/

namespace A230851.P12937258610133613584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230851.P12937258610133613584

namespace A230851

/-- `eq[A227872(n+1), A356018(n+1)]+1` -/
def P12937258610133613584.Spec : Prop :=
  ∀ n, (P12937258610133613584.a n : ℤ) = A230851 (n + 1)

end A230851

/-! ## A230851.P983419242435751423

`eq[A000007(n), A357761(2*(n+2))]+2`
-/

namespace A230851.P983419242435751423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357761 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A230851.P983419242435751423

namespace A230851

/-- `eq[A000007(n), A357761(2*(n+2))]+2` -/
def P983419242435751423.Spec : Prop :=
  ∀ n, (P983419242435751423.a n : ℤ) = A230851 (n + 1)

end A230851

/-! ## A230851.P13019875961939449636

`eq[A357761(2*(n+1)), A357761(n+1)]+1`
-/

namespace A230851.P13019875961939449636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357761 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230851.P13019875961939449636

namespace A230851

/-- `eq[A357761(2*(n+1)), A357761(n+1)]+1` -/
def P13019875961939449636.Spec : Prop :=
  ∀ n, (P13019875961939449636.a n : ℤ) = A230851 (n + 1)

end A230851

/-! ## A230851.P14226525501517760109

`eq[A000122(A173461(n)), A010060(n)]`
-/

namespace A230851.P14226525501517760109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A173461 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230851.P14226525501517760109

namespace A230851

/-- `eq[A000122(A173461(n)), A010060(n)]` -/
def P14226525501517760109.Spec : Prop :=
  ∀ n, (P14226525501517760109.a n : ℤ) = A230851 (n + 1)

end A230851

/-!
# A230852: Smallest k

The programs for A230852, there is no canonical definition to state claims against.
-/

/-! ## A230852.P12254424104468070363

`A121856(A307127(n)*A318508(n+1))`
-/

namespace A230852.P12254424104468070363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A307127 n * A318508 (n + 1)).toNat

end

end A230852.P12254424104468070363

/-! ## A230852.P14408580044430098679

`A298208(A233543(n)^A345424(n+1))`
-/

namespace A230852.P14408580044430098679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298208 (SequenceMachineLib.roundAway ((A233543 n : ℚ) ^ (A345424 (n + 1) : ℤ))).toNat

end

end A230852.P14408580044430098679

/-! ## A230852.P14868266569297419003

`A374264(n+2)%A351307(A001366(n+4))`
-/

namespace A230852.P14868266569297419003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374264 (n + 2)) (A351307 (A001366 (n + 4)).toNat)

end

end A230852.P14868266569297419003

/-! ## A230852.P4107840521588057876

`A358196(3*n+4)%A182933(A082824(n+1))`
-/

namespace A230852.P4107840521588057876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358196 (3 * n + 4)) (A182933 (A082824 (n + 1)).toNat)

end

end A230852.P4107840521588057876

/-! ## A230852.P12326881553606798684

`and(A130692(A130746(n+1)), A130736(3*n+5))`
-/

namespace A230852.P12326881553606798684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130692 (A130746 (n + 1)).toNat) (A130736 (3 * n + 5))

end

end A230852.P12326881553606798684

/-!
# A230853: Numbers n such that m + (sum of digits in base-3 representation of m) = n has exactly one solution.

The programs for A230853, there is no canonical definition to state claims against.
-/

/-! ## A230853.P5819842228696046594

`2*eq[1, A230643(n)]`
-/

namespace A230853.P5819842228696046594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230853.P5819842228696046594

/-! ## A230853.P7839722079323689716

`A005843(eq[1, A230643(n)])`
-/

namespace A230853.P7839722079323689716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230853.P7839722079323689716

/-! ## A230853.P14114914710375730772

`A005843(record[n/A230643(n)²])`
-/

namespace A230853.P14114914710375730772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A230643 n ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A230853.P14114914710375730772

/-! ## A230853.P7483080828205376581

`record[(2-A230643(n))*A005843(n)]`
-/

namespace A230853.P7483080828205376581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A230643 n) * A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230853.P7483080828205376581

/-! ## A230853.P5229777717043408376

`eq[1, A230642(n)]`
-/

namespace A230853.P5229777717043408376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230853.P5229777717043408376

/-! ## A230853.P7978090422431990734

`record[2*n/A230642(2*n)²]`
-/

namespace A230853.P7978090422431990734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A230642 (2 * n) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230853.P7978090422431990734

/-! ## A230853.P13914835972954626109

`record[(2-A230642(n))*A038608(n)]`
-/

namespace A230853.P13914835972954626109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A230642 n) * A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230853.P13914835972954626109

/-!
# A230854: Numbers n such that m + (sum of digits in base-3 representation of m) = n has exactly two solutions.

The programs for A230854, there is no canonical definition to state claims against.
-/

/-! ## A230854.P18246995259557338965

`2*eq[2, A230643(n)]`
-/

namespace A230854.P18246995259557338965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230854.P18246995259557338965

/-! ## A230854.P7371763277610475771

`A005843(eq[2, A230643(n)])`
-/

namespace A230854.P7371763277610475771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230854.P7371763277610475771

/-! ## A230854.P838843524091626587

`A163300(eq[2, A230643(n)])`
-/

namespace A230854.P838843524091626587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230854.P838843524091626587

/-! ## A230854.P16058622209783540067

`eq[2, A230642(n)]`
-/

namespace A230854.P16058622209783540067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230854.P16058622209783540067

/-! ## A230854.P9572496095336682808

`eq[2, A230643(A142150(n))]`
-/

namespace A230854.P9572496095336682808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230854.P9572496095336682808

/-! ## A230854.P543436037469005522

`eq[2, A230643(A166514(n))]`
-/

namespace A230854.P543436037469005522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A166514 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230854.P543436037469005522

/-! ## A230854.P8804146978577042634

`eq[A133265(n), A230643(A025480(n))]`
-/

namespace A230854.P8804146978577042634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230854.P8804146978577042634

/-!
# A230855: Numbers n such that m + (sum of digits in base-3 representation of m) = n has exactly three solutions.

The programs for A230855, there is no canonical definition to state claims against.
-/

/-! ## A230855.P15739777155778384206

`A005843(eq[3, A230643(n)])`
-/

namespace A230855.P15739777155778384206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230855.P15739777155778384206

/-! ## A230855.P16837070964565361887

`A163300(eq[3, A230643(n)])`
-/

namespace A230855.P16837070964565361887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230855.P16837070964565361887

/-! ## A230855.P8215944922403180232

`eq[3, A230642(n)]`
-/

namespace A230855.P8215944922403180232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230855.P8215944922403180232

/-! ## A230855.P6424828831326850171

`eq[3, A230643(A142150(n))]`
-/

namespace A230855.P6424828831326850171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230855.P6424828831326850171

/-! ## A230855.P4027799155333769367

`eq[1, A230643(A166514(n))-2]`
-/

namespace A230855.P4027799155333769367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A166514 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230855.P4027799155333769367

/-! ## A230855.P4796847021829468355

`eq[A133265(n)+1, A230643(A025480(n))]`
-/

namespace A230855.P4796847021829468355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230855.P4796847021829468355

/-!
# A230856: Numbers n such that m + (sum of digits in base-3 representation of m) = n has exactly four solutions.

The programs for A230856, there is no canonical definition to state claims against.
-/

/-! ## A230856.P2765161440514689770

`A005843(eq[4, A230643(n)])`
-/

namespace A230856.P2765161440514689770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230856.P2765161440514689770

/-!
# A230859: Triangle read by rows: coefficients of generating functions U_{13245,n}(y).

The programs for A230859, there is no canonical definition to state claims against.
-/

/-! ## A230859.P17330849568608500186

`or(A057211(A017913(n)), A230860(n+1))`
-/

namespace A230859.P17330849568608500186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057211 (A017913 n).toNat) (A230860 (n + 1))

end

end A230859.P17330849568608500186

/-! ## A230859.P9221676762253948719

`or(A001222(A347811(n)), A230861(n+1))`
-/

namespace A230859.P9221676762253948719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A347811 n).toNat) (A230861 (n + 1))

end

end A230859.P9221676762253948719

/-! ## A230859.P10315880224698698715

`or(A004197(A347811(n)), A230860(n+1))`
-/

namespace A230859.P10315880224698698715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004197 (A347811 n).toNat) (A230860 (n + 1))

end

end A230859.P10315880224698698715

/-! ## A230859.P7464338422701132847

`val(A268448(2*(n+2))+2, 5)-A118687(n)`
-/

namespace A230859.P7464338422701132847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A268448 (2 * (n + 2)) + 2).toNat 5 : ℤ) - A118687 n

end

end A230859.P7464338422701132847

/-! ## A230859.P6409485177016868040

`A018843(A168216(n))-A118687(n)`
-/

namespace A230859.P6409485177016868040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A168216 n).toNat - A118687 n

end

end A230859.P6409485177016868040

/-!
# A230860: Triangle read by rows: coefficients of generating functions U_{132456,n}(y).

The programs for A230860, there is no canonical definition to state claims against.
-/

/-! ## A230860.P15334842179305000141

`A016389(A060637(n))-A119724(n)`
-/

namespace A230860.P15334842179305000141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A060637 n).toNat - A119724 n

end

end A230860.P15334842179305000141

/-! ## A230860.P10571170248417968741

`A185236(A055807(n))-A119724(n)`
-/

namespace A230860.P10571170248417968741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 (A055807 n).toNat - A119724 n

end

end A230860.P10571170248417968741

/-! ## A230860.P17856923378087736139

`A230861(n+1)+A016389(A060637(n))`
-/

namespace A230860.P17856923378087736139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230861 (n + 1) + A016389 (A060637 n).toNat

end

end A230860.P17856923378087736139

/-! ## A230860.P2457001615670224100

`-(A119724(n)%A080854(n+1))`
-/

namespace A230860.P2457001615670224100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A119724 n) (A080854 (n + 1))

end

end A230860.P2457001615670224100

/-! ## A230860.P8180054828850526568

`A010054(A212561(2*n+3))-A119724(n)`
-/

namespace A230860.P8180054828850526568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A212561 (2 * n + 3)).toNat - A119724 n

end

end A230860.P8180054828850526568

/-!
# A230861: Triangle read by rows: coefficients of generating functions U_{1324567,n}(y).

The programs for A230861, there is no canonical definition to state claims against.
-/

/-! ## A230861.P13357568720691949994

`A025466(A274741(n))-A130595(A061579(n))`
-/

namespace A230861.P13357568720691949994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A274741 n).toNat - A130595 (A061579 n).toNat

end

end A230861.P13357568720691949994

/-! ## A230861.P3713139695678037352

`A055641(A176727(n))-A130595(A061579(n))`
-/

namespace A230861.P3713139695678037352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A176727 n).toNat - A130595 (A061579 n).toNat

end

end A230861.P3713139695678037352

/-! ## A230861.P7906820404646286719

`A008836(A000043(n+1))*A119724(n)`
-/

namespace A230861.P7906820404646286719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000043 (n + 1)).toNat * A119724 n

end

end A230861.P7906820404646286719

/-! ## A230861.P18311767643067925432

`A010054(A256472(n+1))-A119724(n)`
-/

namespace A230861.P18311767643067925432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A256472 (n + 1)).toNat - A119724 n

end

end A230861.P18311767643067925432

/-! ## A230861.P14716499132062012157

`A049084(A338314(n+1))-A119724(n)`
-/

namespace A230861.P14716499132062012157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A338314 (n + 1)).toNat - A119724 n

end

end A230861.P14716499132062012157

/-!
# A230863: a(1)=0; thereafter a(n) = 2^(a(ceiling(n/2)) + a(floor(n/2))).

The programs for A230863, the canonical program `A230863.P6973749645880223832` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230863 has offset 1).

The definition of A230863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1))` (program `A230863.P6973749645880223832`, by `A230863.P6973749645880223832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230863.P6973749645880223832

`2^(a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230863

/-- `2^(a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1))` -/
def P6973749645880223832.Spec : Prop :=
  ∀ n, (P6973749645880223832.a n : ℤ) = A230863 (n + 1)

theorem P6973749645880223832.correct : P6973749645880223832.Spec := by
  intro n
  simp only [A230863, Nat.add_sub_cancel]

end A230863

/-! ## A230863.P13844827676587119821

`A131572(record[A220497(n)])`
-/

namespace A230863.P13844827676587119821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230863.P13844827676587119821

namespace A230863

/-- `A131572(record[A220497(n)])` -/
def P13844827676587119821.Spec : Prop :=
  ∀ n, P13844827676587119821.a n = A230863 (n + 1)

end A230863

/-! ## A230863.P9084221774446055574

`A029744(A029744(n+1))-A093709(A145654(n+1))`
-/

namespace A230863.P9084221774446055574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A029744 (n + 1)).toNat - A093709 (A145654 (n + 1)).toNat

end

end A230863.P9084221774446055574

namespace A230863

/-- `A029744(A029744(n+1))-A093709(A145654(n+1))` -/
def P9084221774446055574.Spec : Prop :=
  ∀ n, P9084221774446055574.a n = A230863 (n + 1)

end A230863

/-! ## A230863.P5697893081060207710

`A000290(a(n-2))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8`
-/

namespace A230863.P5697893081060207710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 8] fun n a =>
  A000290 (a (n - 2)).toNat

end

end A230863.P5697893081060207710

namespace A230863

/-- `A000290(a(n-2))` -/
def P5697893081060207710.Spec : Prop :=
  ∀ n, P5697893081060207710.a n = A230863 (n + 1)

end A230863

/-! ## A230863.P11633356654311125970

`4*A008811(a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A230863.P11633356654311125970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  4 * A008811 (a (n - 2)).toNat

end

end A230863.P11633356654311125970

namespace A230863

/-- `4*A008811(a(n-2))` -/
def P11633356654311125970.Spec : Prop :=
  ∀ n, P11633356654311125970.a n = A230863 (n + 1)

end A230863

/-!
# A230864: log2*(n) (version 3): number of iterations log_2(log_2(log_2(...(n)...))) required for the result to be <= 1.

The programs for A230864, there is no canonical definition to state claims against.
-/

/-! ## A230864.P9624422365128701460

`a(floor(log2(n)))+1` with `a(0)=0`
-/

namespace A230864.P9624422365128701460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Nat.log 2 n) + 1

end

end A230864.P9624422365128701460

/-!
# A230865: a(n) = n + (sum of digits in base-5 representation of n).

The programs for A230865, the canonical program `A230865.P13351572211588276155` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230865 has offset 0).

The definition of A230865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230865.P13351572211588276155

`n+A053824(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230865

/-- `n+A053824(n)` -/
def P13351572211588276155.Spec : Prop :=
  ∀ n, P13351572211588276155.a n = A230865 n

theorem P13351572211588276155.correct : P13351572211588276155.Spec := by
  intro n
  simp only [A230865]

end A230865

/-! ## A230865.P16736133095786427740

`∑{digits}[A007091(n), #]+n`
-/

namespace A230865.P16736133095786427740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + n

end

end A230865.P16736133095786427740

namespace A230865

/-- `∑{digits}[A007091(n), #]+n` -/
def P16736133095786427740.Spec : Prop :=
  ∀ n, (P16736133095786427740.a n : ℤ) = A230865 n

end A230865

/-! ## A230865.P8597133341266807749

`A173525(n+1)-1+n`
-/

namespace A230865.P8597133341266807749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1) - 1 + (n : ℤ)

end

end A230865.P8597133341266807749

namespace A230865

/-- `A173525(n+1)-1+n` -/
def P8597133341266807749.Spec : Prop :=
  ∀ n, P8597133341266807749.a n = A230865 n

theorem P8597133341266807749.correct : P8597133341266807749.Spec := by
  intro n
  simp only [A230865, Nat.add_sub_cancel, A230865.P8597133341266807749.a, A230865.P13351572211588276155.a, A053824, A053824.P3010568683746929224.a, A173525, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230865

/-! ## A230865.P5263329509731281347

`n-4*A027868(n)+n`
-/

namespace A230865.P5263329509731281347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * A027868 n + (n : ℤ)

end

end A230865.P5263329509731281347

namespace A230865

/-- `n-4*A027868(n)+n` -/
def P5263329509731281347.Spec : Prop :=
  ∀ n, P5263329509731281347.a n = A230865 n

theorem P5263329509731281347.correct : P5263329509731281347.Spec := by
  intro n
  simp only [A230865, Nat.add_sub_cancel, A230865.P5263329509731281347.a, A230865.P13351572211588276155.a, A027868, A027868.P16736331187050993761.a, A053824, A053824.P3010568683746929224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230865

/-! ## A230865.P1082074915296476282

`A096289(n)+A011371(n)`
-/

namespace A230865.P1082074915296476282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096289 n + A011371 n

end

end A230865.P1082074915296476282

namespace A230865

/-- `A096289(n)+A011371(n)` -/
def P1082074915296476282.Spec : Prop :=
  ∀ n, P1082074915296476282.a n = A230865 n

end A230865

/-! ## A230865.P13017549901828370798

`A053824(n)-A001489(n)`
-/

namespace A230865.P13017549901828370798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - A001489 n

end

end A230865.P13017549901828370798

namespace A230865

/-- `A053824(n)-A001489(n)` -/
def P13017549901828370798.Spec : Prop :=
  ∀ n, P13017549901828370798.a n = A230865 n

theorem P13017549901828370798.correct : P13017549901828370798.Spec := by
  intro n
  simp only [A230865, Nat.add_sub_cancel, A230865.P13017549901828370798.a, A230865.P13351572211588276155.a, A001489, A001489.P15233530513763566776.a, A053824, A053824.P3010568683746929224.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230865

/-! ## A230865.P3752166469387387146

`A173525(n+1)+A023443(n)`
-/

namespace A230865.P3752166469387387146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1) + A023443 n

end

end A230865.P3752166469387387146

namespace A230865

/-- `A173525(n+1)+A023443(n)` -/
def P3752166469387387146.Spec : Prop :=
  ∀ n, P3752166469387387146.a n = A230865 n

theorem P3752166469387387146.correct : P3752166469387387146.Spec := by
  intro n
  simp only [A230865, Nat.add_sub_cancel, A230865.P3752166469387387146.a, A230865.P13351572211588276155.a, A023443, A023443.P2966051066474347068.a, A053824, A053824.P3010568683746929224.a, A173525, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230865

/-! ## A230865.P4636516166857340033

`A173525(n+1)-A024000(n)`
-/

namespace A230865.P4636516166857340033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1) - A024000 n

end

end A230865.P4636516166857340033

namespace A230865

/-- `A173525(n+1)-A024000(n)` -/
def P4636516166857340033.Spec : Prop :=
  ∀ n, P4636516166857340033.a n = A230865 n

theorem P4636516166857340033.correct : P4636516166857340033.Spec := by
  intro n
  simp only [A230865, Nat.add_sub_cancel, A230865.P4636516166857340033.a, A230865.P13351572211588276155.a, A024000, A024000.P8748414335487061084.a, A053824, A053824.P3010568683746929224.a, A173525, A173525.P12961577271591045237.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230865

/-! ## A230865.P6782810336788888346

`A096289(n)+n-A000120(n)`
-/

namespace A230865.P6782810336788888346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096289 n + ((n : ℤ) - A000120 n)

end

end A230865.P6782810336788888346

namespace A230865

/-- `A096289(n)+n-A000120(n)` -/
def P6782810336788888346.Spec : Prop :=
  ∀ n, P6782810336788888346.a n = A230865 n

theorem P6782810336788888346.correct : P6782810336788888346.Spec := by
  intro n
  simp only [A230865, Nat.add_sub_cancel, A230865.P6782810336788888346.a, A230865.P13351572211588276155.a, A000120, A000120.P2816527436160941581.a, A053824, A053824.P3010568683746929224.a, A096289, A096289.P10983530805932168913.a, A005187, A005187.P3874015513960485494.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230865

/-! ## A230865.P7313807603715898396

`A005843(n)-(n-A053824(n))`
-/

namespace A230865.P7313807603715898396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A053824 n)

end

end A230865.P7313807603715898396

namespace A230865

/-- `A005843(n)-(n-A053824(n))` -/
def P7313807603715898396.Spec : Prop :=
  ∀ n, P7313807603715898396.a n = A230865 n

theorem P7313807603715898396.correct : P7313807603715898396.Spec := by
  intro n
  simp only [A230865, Nat.add_sub_cancel, A230865.P7313807603715898396.a, A230865.P13351572211588276155.a, A005843, A005843.P3167286115683555970.a, A053824, A053824.P3010568683746929224.a, A027868, A027868.P16736331187050993761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230865

/-! ## A230865.P8414283128747771675

`n-A053824(n)*A057428(n)`
-/

namespace A230865.P8414283128747771675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053824 n * A057428 n

end

end A230865.P8414283128747771675

namespace A230865

/-- `n-A053824(n)*A057428(n)` -/
def P8414283128747771675.Spec : Prop :=
  ∀ n, P8414283128747771675.a n = A230865 n

end A230865

/-! ## A230865.P6076288238531917921

`A053827(A037465(n))+n`
-/

namespace A230865.P6076288238531917921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037465 n).toNat + (n : ℤ)

end

end A230865.P6076288238531917921

namespace A230865

/-- `A053827(A037465(n))+n` -/
def P6076288238531917921.Spec : Prop :=
  ∀ n, P6076288238531917921.a n = A230865 n

end A230865

/-! ## A230865.P3669432825260101879

`A053830(A037468(n))+n`
-/

namespace A230865.P3669432825260101879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A037468 n).toNat + (n : ℤ)

end

end A230865.P3669432825260101879

namespace A230865

/-- `A053830(A037468(n))+n` -/
def P3669432825260101879.Spec : Prop :=
  ∀ n, P3669432825260101879.a n = A230865 n

end A230865

/-! ## A230865.P5512251393736711305

`A053828(A037466(n))+n`
-/

namespace A230865.P5512251393736711305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A037466 n).toNat + (n : ℤ)

end

end A230865.P5512251393736711305

namespace A230865

/-- `A053828(A037466(n))+n` -/
def P5512251393736711305.Spec : Prop :=
  ∀ n, P5512251393736711305.a n = A230865 n

end A230865

/-! ## A230865.P13513121965978048252

`n-(1-A053824(A016861(n)))`
-/

namespace A230865.P13513121965978048252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A053824 (A016861 n).toNat)

end

end A230865.P13513121965978048252

namespace A230865

/-- `n-(1-A053824(A016861(n)))` -/
def P13513121965978048252.Spec : Prop :=
  ∀ n, P13513121965978048252.a n = A230865 n

end A230865

/-! ## A230865.P14740324496160551788

`A053829(A037467(n))+n`
-/

namespace A230865.P14740324496160551788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A037467 n).toNat + (n : ℤ)

end

end A230865.P14740324496160551788

namespace A230865

/-- `A053829(A037467(n))+n` -/
def P14740324496160551788.Spec : Prop :=
  ∀ n, P14740324496160551788.a n = A230865 n

end A230865

/-! ## A230865.P12085364960795227488

`A007953(A007091(n))+n`
-/

namespace A230865.P12085364960795227488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007091 n).toNat + (n : ℤ)

end

end A230865.P12085364960795227488

namespace A230865

/-- `A007953(A007091(n))+n` -/
def P12085364960795227488.Spec : Prop :=
  ∀ n, P12085364960795227488.a n = A230865 n

end A230865

/-! ## A230865.P9264751960664706028

`A007953(lt[A054055(n), 5])+n`
-/

namespace A230865.P9264751960664706028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + (n : ℤ)

end

end A230865.P9264751960664706028

namespace A230865

/-- `A007953(lt[A054055(n), 5])+n` -/
def P9264751960664706028.Spec : Prop :=
  ∀ n, P9264751960664706028.a n = A230865 n

end A230865

/-! ## A230865.P4787059806931505875

`A007953(A014263(n+1)/2)+n`
-/

namespace A230865.P4787059806931505875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat + (n : ℤ)

end

end A230865.P4787059806931505875

namespace A230865

/-- `A007953(A014263(n+1)/2)+n` -/
def P4787059806931505875.Spec : Prop :=
  ∀ n, P4787059806931505875.a n = A230865 n

end A230865

/-! ## A230865.P14071453634042965236

`∑{digits}[record[A106747(n)], #]+n`
-/

namespace A230865.P14071453634042965236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + n

end

end A230865.P14071453634042965236

namespace A230865

/-- `∑{digits}[record[A106747(n)], #]+n` -/
def P14071453634042965236.Spec : Prop :=
  ∀ n, (P14071453634042965236.a n : ℤ) = A230865 n

end A230865

/-!
# A230866: Number of integers m such that m + (sum of digits in base-5 representation of m) = 2n.

The programs for A230866, there is no canonical definition to state claims against.
-/

/-! ## A230866.P8429238121669052150

`A325028(A312255(A222228(n)))`
-/

namespace A230866.P8429238121669052150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325028 (A312255 (A222228 n).toNat).toNat

end

end A230866.P8429238121669052150

/-! ## A230866.P12930069695879387027

`A067694(A157171(∑[A028242(n)]))`
-/

namespace A230866.P12930069695879387027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (A157171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A230866.P12930069695879387027

/-! ## A230866.P3350787299539986857

`A302790(A052369(2*(n+1))+A020717(n))`
-/

namespace A230866.P3350787299539986857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302790 (A052369 (2 * (n + 1)) + A020717 n).toNat

end

end A230866.P3350787299539986857

/-! ## A230866.P15628522740904826405

`A001221(or(A351172(3*n+2), A351226(n+1)))`
-/

namespace A230866.P15628522740904826405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A351172 (3 * n + 2)) (A351226 (n + 1))).toNat

end

end A230866.P15628522740904826405

/-! ## A230866.P8439626403758976493

`A001221(A335585(n+4)+A123125(3*(n+1)))`
-/

namespace A230866.P8439626403758976493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A335585 (n + 4) + A123125 (3 * (n + 1))).toNat

end

end A230866.P8439626403758976493

/-!
# A230868: Exponent of leading power of 5 in A230867(n).

The programs for A230868, there is no canonical definition to state claims against.
-/

/-! ## A230868.P15637263152363805343

`∑[A239936(ceil((n+3)^n/(n+2)))]`
-/

namespace A230868.P15637263152363805343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239936 ⌈((n + 3) ^ n : ℚ) / (n + 2 : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230868.P15637263152363805343

/-! ## A230868.P11599707229038309012

`A205558(A160786(∑[n]))`
-/

namespace A230868.P11599707229038309012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A160786 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A230868.P11599707229038309012

/-!
# A230869: Primes p such that the class number h-tilde_p^{+} of the real cyclotomic field Q(zeta_p + zeta_p^(-1)) is greater than 1.

The programs for A230869, there is no canonical definition to state claims against.
-/

/-! ## A230869.P5251970099625528470

`A115232(A296096(n+1)+1)`
-/

namespace A230869.P5251970099625528470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115232 (A296096 (n + 1) + 1).toNat

end

end A230869.P5251970099625528470

/-!
# A230872: Numbers that appear in A230871.

The programs for A230872, there is no canonical definition to state claims against.
-/

/-! ## A230872.P14014073511328432022

`comp[A230873(n+1)]`
-/

namespace A230872.P14014073511328432022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230872.P14014073511328432022

/-! ## A230872.P5251501933749058656

`lt[A331124(n), A266191(A207858(n+1))]`
-/

namespace A230872.P5251501933749058656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266191 (A207858 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230872.P5251501933749058656

/-! ## A230872.P5218672583891056907

`lt[A191607(3*n+2), A000196(2*n+1)]`
-/

namespace A230872.P5218672583891056907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191607 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230872.P5218672583891056907

/-! ## A230872.P12415719484541042954

`lt[char[A000203(n+4)], A280752(n+1)]`
-/

namespace A230872.P12415719484541042954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A230872.P12415719484541042954

/-! ## A230872.P1831863302636547412

`lt[A220949(A220949(n+1)), A223815(n+1)]`
-/

namespace A230872.P1831863302636547412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220949 (A220949 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230872.P1831863302636547412

/-!
# A230873: Numbers that do not appear in A230871.

The programs for A230873, there is no canonical definition to state claims against.
-/

/-! ## A230873.P10725435475902226088

`comp[A230872(n+1)]`
-/

namespace A230873.P10725435475902226088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230873.P10725435475902226088

/-! ## A230873.P12936157161334179900

`comp[A231330(n)]`
-/

namespace A230873.P12936157161334179900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231330 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230873.P12936157161334179900

/-! ## A230873.P7539172914688633180

`comp[A230871(n)]`
-/

namespace A230873.P7539172914688633180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230871 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230873.P7539172914688633180

/-!
# A230874: a(1)=1; thereafter a(n) = 2^a(ceiling(n/2)).

The programs for A230874, the canonical program `A230874.P5133864724493513101` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230874 has offset 1).

The definition of A230874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(ceil((n+1)/2)-1)` (program `A230874.P5133864724493513101`, by `A230874.P5133864724493513101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230874.P5133864724493513101

`2^a(ceil((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230874

/-- `2^a(ceil((n+1)/2)-1)` -/
def P5133864724493513101.Spec : Prop :=
  ∀ n, (P5133864724493513101.a n : ℤ) = A230874 (n + 1)

theorem P5133864724493513101.correct : P5133864724493513101.Spec := by
  intro n
  simp only [A230874, Nat.add_sub_cancel]

end A230874

/-! ## A230874.P8896847803439249493

`2^abs(a(floor(n/2)))` with `a(0)=1`
-/

namespace A230874.P8896847803439249493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ a ⌊(n : ℚ) / 2⌋.toNat

end

end A230874.P8896847803439249493

namespace A230874

/-- `2^abs(a(floor(n/2)))` -/
def P8896847803439249493.Spec : Prop :=
  ∀ n, (P8896847803439249493.a n : ℤ) = A230874 (n + 1)

end A230874

/-! ## A230874.P2549889430492448661

`floor(2^a(floor(n/2)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A230874.P2549889430492448661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ a ⌊(n : ℚ) / 2⌋.toNat

end

end A230874.P2549889430492448661

namespace A230874

/-- `floor(2^a(floor(n/2)))` -/
def P2549889430492448661.Spec : Prop :=
  ∀ n, (P2549889430492448661.a n : ℤ) = A230874 (n + 1)

end A230874

/-! ## A230874.P18428704420914240299

`root(2, 1/a(floor(n/2)))` with `a(0)=1`
-/

namespace A230874.P18428704420914240299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℝ) ^ (1 / (1 / a ⌊(n : ℚ) / 2⌋.toNat))

end

end A230874.P18428704420914240299

namespace A230874

/-- `root(2, 1/a(floor(n/2)))` -/
def P18428704420914240299.Spec : Prop :=
  ∀ n, P18428704420914240299.a n = (A230874 (n + 1) : ℝ)

end A230874

/-! ## A230874.P15341619545549516189

`A230875(2*(n+1))`
-/

namespace A230874.P15341619545549516189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230875 (2 * (n + 1))

end

end A230874.P15341619545549516189

namespace A230874

/-- `A230875(2*(n+1))` -/
def P15341619545549516189.Spec : Prop :=
  ∀ n, P15341619545549516189.a n = A230874 (n + 1)

end A230874

/-!
# A230875: a(1)=0; thereafter a(n) = 2^a(ceiling(n/2)).

The programs for A230875, the canonical program `A230875.P17098552562468978426` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230875 has offset 1).

The definition of A230875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(ceil((n+1)/2)-1)` (program `A230875.P17098552562468978426`, by `A230875.P17098552562468978426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230875.P17098552562468978426

`2^a(ceil((n+1)/2)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230875

/-- `2^a(ceil((n+1)/2)-1)` -/
def P17098552562468978426.Spec : Prop :=
  ∀ n, (P17098552562468978426.a n : ℤ) = A230875 (n + 1)

theorem P17098552562468978426.correct : P17098552562468978426.Spec := by
  intro n
  simp only [A230875, Nat.add_sub_cancel]

end A230875

/-! ## A230875.P15322237485148154969

`2^floor(a(floor(n/2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A230875.P15322237485148154969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 ^ a ⌊(n : ℚ) / 2⌋.toNat

end

end A230875.P15322237485148154969

namespace A230875

/-- `2^floor(a(floor(n/2)))` -/
def P15322237485148154969.Spec : Prop :=
  ∀ n, (P15322237485148154969.a n : ℤ) = A230875 (n + 1)

end A230875

/-! ## A230875.P6534643227118493563

`floor(2^a(val(2^n, 4)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A230875.P6534643227118493563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 ^ a (SequenceMachineLib.valuation (2 ^ n) 4)

end

end A230875.P6534643227118493563

namespace A230875

/-- `floor(2^a(val(2^n, 4)))` -/
def P6534643227118493563.Spec : Prop :=
  ∀ n, (P6534643227118493563.a n : ℤ) = A230875 (n + 1)

end A230875

/-! ## A230875.P11123272993126892522

`root(2, 1/a(floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A230875.P11123272993126892522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 : ℝ) ^ (1 / (1 / a ⌊(n : ℚ) / 2⌋.toNat))

end

end A230875.P11123272993126892522

namespace A230875

/-- `root(2, 1/a(floor(n/2)))` -/
def P11123272993126892522.Spec : Prop :=
  ∀ n, P11123272993126892522.a n = (A230875 (n + 1) : ℝ)

end A230875

/-! ## A230875.P772546479370497568

`2^abs(a(ceil((n-1)/2)))` with `a(0)=0`
-/

namespace A230875.P772546479370497568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 ^ a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A230875.P772546479370497568

namespace A230875

/-- `2^abs(a(ceil((n-1)/2)))` -/
def P772546479370497568.Spec : Prop :=
  ∀ n, (P772546479370497568.a n : ℤ) = A230875 (n + 1)

end A230875

/-!
# A230876: Total detection number of complete bipartite graph K_{n,n}.

The programs for A230876, there is no canonical definition to state claims against.
-/

/-! ## A230876.P12937963393783981275

`A322847(∑[A070939((p?[4*n+1]-1)/4)])`
-/

namespace A230876.P12937963393783981275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway (((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1 : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230876.P12937963393783981275

/-! ## A230876.P9318999352153309062

`A322847(∑[A081604(A028347(n+2))])`
-/

namespace A230876.P9318999352153309062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A028347 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230876.P9318999352153309062

/-! ## A230876.P13046747579619401620

`A299702(ceil(log(A093548(n+1))))`
-/

namespace A230876.P13046747579619401620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 ⌈Real.log (A093548 (n + 1) : ℝ)⌉.toNat

end

end A230876.P13046747579619401620

/-! ## A230876.P1611599344885768992

`lt[A176795(A256792(n+2)), A341446(n+1)]`
-/

namespace A230876.P1611599344885768992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176795 (A256792 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230876.P1611599344885768992

/-! ## A230876.P8736626339592443024

`A140473(A155212(n))`
-/

namespace A230876.P8736626339592443024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A155212 n).toNat

end

end A230876.P8736626339592443024

/-!
# A230877: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m+1-i)*c(i).

The programs for A230877, the canonical program `A230877.P5743359450081405431` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230877 has offset 0).

The definition of A230877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230877.P15801581074041830904

`a(floor(n/2))+n%2*floor(log2(2*n))` with `a(0)=0`
-/

namespace A230877.P15801581074041830904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + n % 2 * Nat.log 2 (2 * n)

end

end A230877.P15801581074041830904

namespace A230877

/-- `a(floor(n/2))+n%2*floor(log2(2*n))` -/
def P15801581074041830904.Spec : Prop :=
  ∀ n, (P15801581074041830904.a n : ℤ) = A230877 n

end A230877

/-! ## A230877.P16282535645963315988

`A029931(A030101(n))`
-/

namespace A230877.P16282535645963315988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A030101 n).toNat

end

end A230877.P16282535645963315988

namespace A230877

/-- `A029931(A030101(n))` -/
def P16282535645963315988.Spec : Prop :=
  ∀ n, P16282535645963315988.a n = A230877 n

end A230877

/-! ## A230877.P1183052355777019150

`A231204(n)+A000120(n)`
-/

namespace A230877.P1183052355777019150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n + A000120 n

end

end A230877.P1183052355777019150

namespace A230877

/-- `A231204(n)+A000120(n)` -/
def P1183052355777019150.Spec : Prop :=
  ∀ n, P1183052355777019150.a n = A230877 n

theorem P1183052355777019150.correct : P1183052355777019150.Spec := by
  intro n
  simp only [A230877, Nat.add_sub_cancel, A230877.P1183052355777019150.a, A230877.P5743359450081405431.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A073642, A073642.P15123079599203656975.a, A231204, A231204.P13163929619996957332.a, A005187, A005187.P3874015513960485494.a, A029931, A029931.P9873769426762813119.a, A029930, A029930.P3707852897458008637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230877

/-! ## A230877.P7405845209725985971

`A359495(n)+A029931(n)`
-/

namespace A230877.P7405845209725985971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n + A029931 n

end

end A230877.P7405845209725985971

namespace A230877

/-- `A359495(n)+A029931(n)` -/
def P7405845209725985971.Spec : Prop :=
  ∀ n, P7405845209725985971.a n = A230877 n

theorem P7405845209725985971.correct : P7405845209725985971.Spec := by
  intro n
  simp only [A230877, Nat.add_sub_cancel, A230877.P7405845209725985971.a, A230877.P5743359450081405431.a, A000120, A000120.P2816527436160941581.a, A029931, A029931.P9873769426762813119.a, A070939, A070939.P14677302147902843740.a, A073642, A073642.P15123079599203656975.a, A359495, A359495.P14356946249672535810.a, A005187, A005187.P3874015513960485494.a, A029930, A029930.P3707852897458008637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230877

/-! ## A230877.P7279464408318381589

`A359042(n)-A080791(n)`
-/

namespace A230877.P7279464408318381589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 n - A080791 n

end

end A230877.P7279464408318381589

namespace A230877

/-- `A359042(n)-A080791(n)` -/
def P7279464408318381589.Spec : Prop :=
  ∀ n, P7279464408318381589.a n = A230877 n

theorem P7279464408318381589.correct : P7279464408318381589.Spec := by
  intro n
  simp only [A230877, Nat.add_sub_cancel, A230877.P7279464408318381589.a, A230877.P5743359450081405431.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A073642, A073642.P15123079599203656975.a, A080791, A080791.P6131873509789506769.a, A359042, A359042.P13411366105931231401.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A029931, A029931.P9873769426762813119.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A029930, A029930.P3707852897458008637.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230877

/-! ## A230877.P868515447417871809

`A231204(n)+A001222(A001316(n))`
-/

namespace A230877.P868515447417871809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n + A001222 (A001316 n).toNat

end

end A230877.P868515447417871809

namespace A230877

/-- `A231204(n)+A001222(A001316(n))` -/
def P868515447417871809.Spec : Prop :=
  ∀ n, P868515447417871809.a n = A230877 n

end A230877

/-! ## A230877.P3055256134566623552

`A280700(n)+A359495(n)+A283981(n)`
-/

namespace A230877.P3055256134566623552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 n + (A359495 n + A283981 n)

end

end A230877.P3055256134566623552

namespace A230877

/-- `A280700(n)+A359495(n)+A283981(n)` -/
def P3055256134566623552.Spec : Prop :=
  ∀ n, P3055256134566623552.a n = A230877 n

theorem P3055256134566623552.correct : P3055256134566623552.Spec := by
  intro n
  simp only [A230877, Nat.add_sub_cancel, A230877.P3055256134566623552.a, A230877.P5743359450081405431.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A073642, A073642.P15123079599203656975.a, A280700, A280700.P14793683405892301722.a, A283981, A283981.P14600652629483997425.a, A359495, A359495.P14356946249672535810.a, A005187, A005187.P3874015513960485494.a, A029931, A029931.P9873769426762813119.a, A029930, A029930.P3707852897458008637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230877

/-! ## A230877.P6127690281309255518

`A029931(n)+A231204(n)-A073642(n)`
-/

namespace A230877.P6127690281309255518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n + (A231204 n - A073642 n)

end

end A230877.P6127690281309255518

namespace A230877

/-- `A029931(n)+A231204(n)-A073642(n)` -/
def P6127690281309255518.Spec : Prop :=
  ∀ n, P6127690281309255518.a n = A230877 n

end A230877

/-! ## A230877.P5743359450081405431

`A000120(n)*A070939(n)-A073642(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230877

/-- `A000120(n)*A070939(n)-A073642(n)` -/
def P5743359450081405431.Spec : Prop :=
  ∀ n, P5743359450081405431.a n = A230877 n

theorem P5743359450081405431.correct : P5743359450081405431.Spec := by
  intro n
  simp only [A230877]

end A230877

/-! ## A230877.P8834612529835843767

`A029837(n+1)+A359495(n)+A124757(n)`
-/

namespace A230877.P8834612529835843767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A359495 n + A124757 n)

end

end A230877.P8834612529835843767

namespace A230877

/-- `A029837(n+1)+A359495(n)+A124757(n)` -/
def P8834612529835843767.Spec : Prop :=
  ∀ n, P8834612529835843767.a n = A230877 n

end A230877

/-! ## A230877.P8297929038465087968

`A000120(n)+A359042(n)-A029837(n+1)`
-/

namespace A230877.P8297929038465087968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A359042 n - A029837 (n + 1))

end

end A230877.P8297929038465087968

namespace A230877

/-- `A000120(n)+A359042(n)-A029837(n+1)` -/
def P8297929038465087968.Spec : Prop :=
  ∀ n, P8297929038465087968.a n = A230877 n

end A230877

/-! ## A230877.P12901004940584213517

`A124757(A145341(n+1))`
-/

namespace A230877.P12901004940584213517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A145341 (n + 1)).toNat

end

end A230877.P12901004940584213517

namespace A230877

/-- `A124757(A145341(n+1))` -/
def P12901004940584213517.Spec : Prop :=
  ∀ n, P12901004940584213517.a n = A230877 n

end A230877

/-! ## A230877.P15127149190250442083

`A359495(2*n+1)+A124757(2*n+1)`
-/

namespace A230877.P15127149190250442083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 (2 * n + 1) + A124757 (2 * n + 1)

end

end A230877.P15127149190250442083

namespace A230877

/-- `A359495(2*n+1)+A124757(2*n+1)` -/
def P15127149190250442083.Spec : Prop :=
  ∀ n, P15127149190250442083.a n = A230877 n

end A230877

/-! ## A230877.P3324236321066280771

`A000120(n)*A000120(A003817(n))-A073642(n)`
-/

namespace A230877.P3324236321066280771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A000120 (A003817 n).toNat - A073642 n

end

end A230877.P3324236321066280771

namespace A230877

/-- `A000120(n)*A000120(A003817(n))-A073642(n)` -/
def P3324236321066280771.Spec : Prop :=
  ∀ n, P3324236321066280771.a n = A230877 n

end A230877

/-! ## A230877.P5077594888174571421

`A359495(n)+A073642(2*n)`
-/

namespace A230877.P5077594888174571421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n + A073642 (2 * n)

end

end A230877.P5077594888174571421

namespace A230877

/-- `A359495(n)+A073642(2*n)` -/
def P5077594888174571421.Spec : Prop :=
  ∀ n, P5077594888174571421.a n = A230877 n

end A230877

/-! ## A230877.P697869923627978043

`A231204(n)+A048881(2*n)`
-/

namespace A230877.P697869923627978043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n + A048881 (2 * n)

end

end A230877.P697869923627978043

namespace A230877

/-- `A231204(n)+A048881(2*n)` -/
def P697869923627978043.Spec : Prop :=
  ∀ n, P697869923627978043.a n = A230877 n

end A230877

/-! ## A230877.P15707024880184739343

`A073642(2*A030101(n))`
-/

namespace A230877.P15707024880184739343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * A030101 n).toNat

end

end A230877.P15707024880184739343

namespace A230877

/-- `A073642(2*A030101(n))` -/
def P15707024880184739343.Spec : Prop :=
  ∀ n, P15707024880184739343.a n = A230877 n

end A230877

/-! ## A230877.P9661138366330652996

`A073642(A030101(n)+A030101(n)+1)`
-/

namespace A230877.P9661138366330652996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A030101 n + (A030101 n + 1)).toNat

end

end A230877.P9661138366330652996

namespace A230877

/-- `A073642(A030101(n)+A030101(n)+1)` -/
def P9661138366330652996.Spec : Prop :=
  ∀ n, P9661138366330652996.a n = A230877 n

end A230877

/-! ## A230877.P663300456595725894

`A231204(A004760(n+2))`
-/

namespace A230877.P663300456595725894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A004760 (n + 2)).toNat

end

end A230877.P663300456595725894

namespace A230877

/-- `A231204(A004760(n+2))` -/
def P663300456595725894.Spec : Prop :=
  ∀ n, P663300456595725894.a n = A230877 n

end A230877

/-! ## A230877.P322581998163556155

`A231204(A053644(2*n)+n)`
-/

namespace A230877.P322581998163556155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A053644 (2 * n) + (n : ℤ)).toNat

end

end A230877.P322581998163556155

namespace A230877

/-- `A231204(A053644(2*n)+n)` -/
def P322581998163556155.Spec : Prop :=
  ∀ n, P322581998163556155.a n = A230877 n

end A230877

/-!
# A230880: Number of 2-packed matrices with exactly n nonzero entries.

The programs for A230880, there is no canonical definition to state claims against.
-/

/-! ## A230880.P12461236177847887419

`2^n*A104602(n)`
-/

namespace A230880.P12461236177847887419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A104602 n

end

end A230880.P12461236177847887419

/-! ## A230880.P9477071179961341394

`A104602(n)*A122111(A008578(n+1))`
-/

namespace A230880.P9477071179961341394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104602 n * A122111 (A008578 (n + 1)).toNat

end

end A230880.P9477071179961341394

/-! ## A230880.P4669873729013055055

`A104602(n)*A166444(A004526(2*(n+2)))`
-/

namespace A230880.P4669873729013055055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104602 n * A166444 (A004526 (2 * (n + 2))).toNat

end

end A230880.P4669873729013055055

/-! ## A230880.P17985195763253529468

`A104602(n)*A316815(A000217(n+1))`
-/

namespace A230880.P17985195763253529468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104602 n * A316815 (A000217 (n + 1)).toNat

end

end A230880.P17985195763253529468

/-! ## A230880.P7663081798608847305

`A104602(n)*A225381(A000079(n))`
-/

namespace A230880.P7663081798608847305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104602 n * A225381 (A000079 n).toNat

end

end A230880.P7663081798608847305

/-!
# A230883: Dimensions of algebraic generators of Hopf algebra PML_1.

The programs for A230883, there is no canonical definition to state claims against.
-/

/-! ## A230883.P7172028460894682069

`A230884(n)/2^n`
-/

namespace A230883.P7172028460894682069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230884 n : ℚ) / (2 ^ n : ℚ)

end

end A230883.P7172028460894682069

/-! ## A230883.P5858557789707986701

`floor(A230884(n)/A000079(n))`
-/

namespace A230883.P5858557789707986701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230884 n : ℚ) / (A000079 n : ℚ)⌋

end

end A230883.P5858557789707986701

/-! ## A230883.P14101181456663428292

`floor(A230884(n)/A008863(n))`
-/

namespace A230883.P14101181456663428292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230884 n : ℚ) / (A008863 n : ℚ)⌋

end

end A230883.P14101181456663428292

/-! ## A230883.P14349957017432460551

`A228710(n)/A000079(n)*A230884(n)`
-/

namespace A230883.P14349957017432460551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228710 n : ℚ) / (A000079 n : ℚ) * (A230884 n : ℚ)

end

end A230883.P14349957017432460551

/-! ## A230883.P3925640180158092315

`A228710(n)/A008863(n)*A230884(n)`
-/

namespace A230883.P3925640180158092315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228710 n : ℚ) / (A008863 n : ℚ) * (A230884 n : ℚ)

end

end A230883.P3925640180158092315

/-!
# A230884: Dimensions of algebraic generators of Hopf algebra PML_2.

The programs for A230884, there is no canonical definition to state claims against.
-/

/-! ## A230884.P15827854073981610368

`2^n*A230883(n)`
-/

namespace A230884.P15827854073981610368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A230883 n

end

end A230884.P15827854073981610368

/-! ## A230884.P14044187252413986726

`A230883(n)*A329562(n)`
-/

namespace A230884.P14044187252413986726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230883 n * A329562 n

end

end A230884.P14044187252413986726

/-! ## A230884.P17081348710871672422

`lcm(A000079(n), A230883(n))`
-/

namespace A230884.P17081348710871672422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A230883 n)

end

end A230884.P17081348710871672422

/-! ## A230884.P1880827605997786869

`∑{digits}[n, lcm(A008863(n), A230883(#))]`
-/

namespace A230884.P1880827605997786869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.lcm (A008863 n) (A230883 x)).sum

end

end A230884.P1880827605997786869

/-! ## A230884.P8542127594375839476

`A230883(n)*A304775(A000124(n))`
-/

namespace A230884.P8542127594375839476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230883 n * A304775 (A000124 n).toNat

end

end A230884.P8542127594375839476

/-!
# A230887: Dimensions of totally primitive elements of Hopf algebra PML_1.

The programs for A230887, there is no canonical definition to state claims against.
-/

/-! ## A230887.P11060872868161457680

`A230888(n)/2^n`
-/

namespace A230887.P11060872868161457680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230888 n : ℚ) / (2 ^ n : ℚ)

end

end A230887.P11060872868161457680

/-! ## A230887.P5732444220173602323

`floor(A230888(n)/A000079(n))`
-/

namespace A230887.P5732444220173602323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230888 n : ℚ) / (A000079 n : ℚ)⌋

end

end A230887.P5732444220173602323

/-! ## A230887.P10391528471342551789

`floor(A230888(n)/A171559(n))`
-/

namespace A230887.P10391528471342551789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230888 n : ℚ) / (A171559 n : ℚ)⌋

end

end A230887.P10391528471342551789

/-! ## A230887.P1207765928989255604

`abs(A230888(n)/A157823(n+1))`
-/

namespace A230887.P1207765928989255604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A230888 n : ℚ) / (A157823 (n + 1) : ℚ)|

end

end A230887.P1207765928989255604

/-! ## A230887.P6575181618425144954

`abs(A230888(n)/(2*A157823(n)))`
-/

namespace A230887.P6575181618425144954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A230888 n : ℚ) / (2 * A157823 n : ℚ)|

end

end A230887.P6575181618425144954

/-!
# A230888: Dimensions of totally primitive elements of Hopf algebra PML_2.

The programs for A230888, there is no canonical definition to state claims against.
-/

/-! ## A230888.P13851502213508349312

`2^n*A230887(n)`
-/

namespace A230888.P13851502213508349312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A230887 n

end

end A230888.P13851502213508349312

/-! ## A230888.P13521688238466285379

`2*A011782(n)*A230887(n)`
-/

namespace A230888.P13521688238466285379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n * A230887 n)

end

end A230888.P13521688238466285379

/-! ## A230888.P8853802342380254221

`abs(A157823(n+1)*A230887(n))`
-/

namespace A230888.P8853802342380254221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157823 (n + 1) * A230887 n|

end

end A230888.P8853802342380254221

/-! ## A230888.P9672296312252368765

`abs(2*A157823(n)*A230887(n))`
-/

namespace A230888.P9672296312252368765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A157823 n * A230887 n)|

end

end A230888.P9672296312252368765

/-! ## A230888.P11241356314596866564

`A230887(n)/A000079(n)^-1`
-/

namespace A230888.P11241356314596866564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230887 n : ℚ) / (A000079 n : ℚ) ^ (-1 : ℤ)

end

end A230888.P11241356314596866564

/-!
# A230889: Dimensions of algebraic generators of Hopf algebra UBP*.

The programs for A230889, there is no canonical definition to state claims against.
-/

/-! ## A230889.P4622330115209908718

`A242602(n*∑[(n+1)^(n-1)]+1)`
-/

namespace A230889.P4622330115209908718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (SequenceMachineLib.roundAway ((n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)).toNat

end

end A230889.P4622330115209908718

/-! ## A230889.P10826052173513158594

`A166486(n)+A057362(A000312(n))`
-/

namespace A230889.P10826052173513158594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A057362 (A000312 n).toNat

end

end A230889.P10826052173513158594

/-!
# A230890: Dimensions of totally primitive elements of Hopf algebra UBP*.

The programs for A230890, there is no canonical definition to state claims against.
-/

/-! ## A230890.P8201762597449984395

`A319453(A279700(∑[n]))`
-/

namespace A230890.P8201762597449984395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A279700 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A230890.P8201762597449984395

/-! ## A230890.P14261723005439580969

`A004179(xor(A214159(n), A356262(n)))`
-/

namespace A230890.P14261723005439580969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (Int.xor (A214159 n) (A356262 n)).toNat

end

end A230890.P14261723005439580969

/-!
# A230891: Working in base 2: a(0)=0, thereafter a(n+1) is the smallest number not already in the sequence such that the bits of a(n) and a(n+1) together can be rearranged to form a palindrome.

The programs for A230891, there is no canonical definition to state claims against.
-/

/-! ## A230891.P14375169257986583035

`A007088(A230892(n))`
-/

namespace A230891.P14375169257986583035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A230892 n).toNat

end

end A230891.P14375169257986583035

/-! ## A230891.P15707416085526836215

`A185544(2*A230892(n))`
-/

namespace A230891.P15707416085526836215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A230892 n).toNat

end

end A230891.P15707416085526836215

/-! ## A230891.P11956514728184930550

`A185544(A230892(n)+A230892(n))`
-/

namespace A230891.P11956514728184930550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A230892 n + A230892 n).toNat

end

end A230891.P11956514728184930550

/-!
# A230892: Terms of A230891 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A230892, there is no canonical definition to state claims against.
-/

/-! ## A230892.P17432556539743238168

`A053830(A230891(n))%p?[A178976(n)]`
-/

namespace A230892.P17432556539743238168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A230891 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A230892.P17432556539743238168

/-! ## A230892.P8530452193943467141

`A053830(A230891(n)%A246774(n+1))`
-/

namespace A230892.P8530452193943467141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (Int.tmod (A230891 n) (A246774 (n + 1))).toNat

end

end A230892.P8530452193943467141

/-! ## A230892.P444994203844051128

`A053830(A230891(n))+A008683(A235198(n+1))`
-/

namespace A230892.P444994203844051128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A230891 n).toNat + A008683 (A235198 (n + 1)).toNat

end

end A230892.P444994203844051128

/-! ## A230892.P18176501028299890926

`A001222(A264576(n+1))*A053830(A230891(n))`
-/

namespace A230892.P18176501028299890926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A264576 (n + 1)).toNat * A053830 (A230891 n).toNat

end

end A230892.P18176501028299890926

/-! ## A230892.P6936296202608535763

`A028897(A230891(n))`
-/

namespace A230892.P6936296202608535763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A230891 n).toNat

end

end A230892.P6936296202608535763

/-!
# A230893: Number of n X 2 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230893, the canonical program `A230893.P10344782664287852436` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230893 has offset 1).

The definition of A230893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230893.P9625869273051060426

`ogf((2x-2x^2)/(1-2x-3x^2+2x^3))`
-/

namespace A230893.P9625869273051060426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2] [1, -2, -3, 2] n

end

end A230893.P9625869273051060426

namespace A230893

/-- `ogf((2x-2x^2)/(1-2x-3x^2+2x^3))` -/
def P9625869273051060426.Spec : Prop :=
  ∀ n, P9625869273051060426.a n = A230893 (n + 1)

end A230893

/-! ## A230893.P10344782664287852436

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230893

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P10344782664287852436.Spec : Prop :=
  ∀ n, P10344782664287852436.a n = A230893 (n + 1)

theorem P10344782664287852436.correct : P10344782664287852436.Spec := by
  intro n
  simp only [A230893, Nat.add_sub_cancel]

end A230893

/-! ## A230893.P1255932333216844059

`A054854(n+1)-A101197(n)`
-/

namespace A230893.P1255932333216844059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 (n + 1) - A101197 n

end

end A230893.P1255932333216844059

namespace A230893

/-- `A054854(n+1)-A101197(n)` -/
def P1255932333216844059.Spec : Prop :=
  ∀ n, P1255932333216844059.a n = A230893 (n + 1)

end A230893

/-! ## A230893.P9031337610618373287

`Δ[A046672(n)]-A101197(n)`
-/

namespace A230893.P9031337610618373287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101197 n

end

end A230893.P9031337610618373287

namespace A230893

/-- `Δ[A046672(n)]-A101197(n)` -/
def P9031337610618373287.Spec : Prop :=
  ∀ n, P9031337610618373287.a n = A230893 (n + 1)

end A230893

/-! ## A230893.P16976358700713673912

`A046672(n+1)-(A101197(n)+A046672(n))`
-/

namespace A230893.P16976358700713673912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046672 (n + 1) - (A101197 n + A046672 n)

end

end A230893.P16976358700713673912

namespace A230893

/-- `A046672(n+1)-(A101197(n)+A046672(n))` -/
def P16976358700713673912.Spec : Prop :=
  ∀ n, P16976358700713673912.a n = A230893 (n + 1)

end A230893

/-! ## A230893.P16610024936367436324

`Δ[Δ[A259508(n+1)]%A251319(n+1)]`
-/

namespace A230893.P16610024936367436324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A251319 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230893.P16610024936367436324

namespace A230893

/-- `Δ[Δ[A259508(n+1)]%A251319(n+1)]` -/
def P16610024936367436324.Spec : Prop :=
  ∀ n, P16610024936367436324.a n = A230893 (n + 1)

end A230893

/-!
# A230894: Number of nX3 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230894, there is no canonical definition to state claims against.
-/

/-! ## A230894.P5018607766300303223

`A230899(∑[n+2]+4)`
-/

namespace A230894.P5018607766300303223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230894.P5018607766300303223

/-! ## A230894.P12052259063077508882

`lcm(2, A230899(A167614(n+1)))`
-/

namespace A230894.P12052259063077508882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230899 (A167614 (n + 1)).toNat)

end

end A230894.P12052259063077508882

/-! ## A230894.P6018830585889206289

`record[A230899(A286158(n+1)+3)]`
-/

namespace A230894.P6018830585889206289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A286158 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230894.P6018830585889206289

/-! ## A230894.P3008569793809992407

`record[A010054(n)*A230899(n+3)]`
-/

namespace A230894.P3008569793809992407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230899 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230894.P3008569793809992407

/-! ## A230894.P3452605586641719494

`ceil(sin(n)²)*A230899(A016028(n+5))`
-/

namespace A230894.P3452605586641719494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A230899 (A016028 (n + 5)).toNat

end

end A230894.P3452605586641719494

/-!
# A230895: Number of nX4 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230895, there is no canonical definition to state claims against.
-/

/-! ## A230895.P9499298160133014263

`A230899(A374004(n+1))`
-/

namespace A230895.P9499298160133014263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A374004 (n + 1)).toNat

end

end A230895.P9499298160133014263

/-! ## A230895.P8160668053322949241

`A230899(A141214(n)+7)`
-/

namespace A230895.P8160668053322949241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A141214 n + 7).toNat

end

end A230895.P8160668053322949241

/-! ## A230895.P1190080655061493959

`A230899(A052905(n)+9)`
-/

namespace A230895.P1190080655061493959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A052905 n + 9).toNat

end

end A230895.P1190080655061493959

/-! ## A230895.P14810944813336704164

`A230899(A055999(n)+10)`
-/

namespace A230895.P14810944813336704164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A055999 n + 10).toNat

end

end A230895.P14810944813336704164

/-! ## A230895.P2284247701622877198

`A230899(eq[5, A066657(n)])`
-/

namespace A230895.P2284247701622877198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230895.P2284247701622877198

/-!
# A230896: Number of nX5 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230896, there is no canonical definition to state claims against.
-/

/-! ## A230896.P10996790631466556686

`A230899(∑[n+4]+11)`
-/

namespace A230896.P10996790631466556686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A230896.P10996790631466556686

/-!
# A230897: Number of nX6 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230897, there is no canonical definition to state claims against.
-/

/-! ## A230897.P13618665471765088134

`A230899(A374007(n+1))`
-/

namespace A230897.P13618665471765088134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A374007 (n + 1)).toNat

end

end A230897.P13618665471765088134

/-! ## A230897.P14433395134815603152

`A230899(A166136(n+4))`
-/

namespace A230897.P14433395134815603152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A166136 (n + 4)).toNat

end

end A230897.P14433395134815603152

/-! ## A230897.P14913853321150692971

`A230899(eq[6, A256910(n)])`
-/

namespace A230897.P14913853321150692971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230897.P14913853321150692971

/-! ## A230897.P4528919500892521279

`A230899(A167499(n+4)+1)`
-/

namespace A230897.P4528919500892521279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A167499 (n + 4) + 1).toNat

end

end A230897.P4528919500892521279

/-! ## A230897.P491299684401661536

`A230899(eq[7, A131818(n+1)])`
-/

namespace A230897.P491299684401661536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230897.P491299684401661536

/-!
# A230898: Number of nX7 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230898, there is no canonical definition to state claims against.
-/

/-! ## A230898.P1737292298189615406

`A230899(A374008(n+1))`
-/

namespace A230898.P1737292298189615406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A374008 (n + 1)).toNat

end

end A230898.P1737292298189615406

/-! ## A230898.P15771943121522533682

`A230899(A056119(n)+28)`
-/

namespace A230898.P15771943121522533682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A056119 n + 28).toNat

end

end A230898.P15771943121522533682

/-! ## A230898.P2664355539685752013

`A230899(A000217(n+6)+7)`
-/

namespace A230898.P2664355539685752013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A000217 (n + 6) + 7).toNat

end

end A230898.P2664355539685752013

/-! ## A230898.P9328003895317783475

`A230899(eq[8, A131818(n+1)])`
-/

namespace A230898.P9328003895317783475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230898.P9328003895317783475

/-! ## A230898.P11064836931461248174

`A230899(A055999(n+4))`
-/

namespace A230898.P11064836931461248174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230899 (A055999 (n + 4)).toNat

end

end A230898.P11064836931461248174

/-!
# A230899: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A230899, there is no canonical definition to state claims against.
-/

/-! ## A230899.P11687624735970132974

`A151843(A173584(n)%A000124(n)²)`
-/

namespace A230899.P11687624735970132974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (Int.tmod (A173584 n) (A000124 n ^ 2)).toNat

end

end A230899.P11687624735970132974

/-! ## A230899.P10978148979225322857

`A151843(A173584(n))`
-/

namespace A230899.P10978148979225322857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A173584 n).toNat

end

end A230899.P10978148979225322857

/-! ## A230899.P7480758790276731977

`A169805(A317896(n+1)^5)`
-/

namespace A230899.P7480758790276731977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A317896 (n + 1) ^ 5).toNat

end

end A230899.P7480758790276731977

