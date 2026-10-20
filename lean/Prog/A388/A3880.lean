import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import Seq.Opaque.C025

/-!
# A388004: Number of n X n grids with 1 non-attacking king on each row.

The programs for A388004, there is no canonical definition to state claims against.
-/

/-! ## A388004.P7526914574014947208

`A352829(A163318(n))`
-/

namespace A388004.P7526914574014947208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (A163318 n).toNat

end

end A388004.P7526914574014947208

/-! ## A388004.P16792467188423682826

`A193231(A353390(∑[n]))`
-/

namespace A388004.P16792467188423682826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A353390 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A388004.P16792467188423682826

/-!
# A388005: Sum of numbers <= 10^n which are not squarefree.

The programs for A388005, there is no canonical definition to state claims against.
-/

/-! ## A388005.P2639959689486409806

`10^n*(10^n+1)/2-A387980(n)`
-/

namespace A388005.P2639959689486409806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * (10 ^ n + 1) : ℚ) / 2 - (A387980 n : ℚ)

end

end A388005.P2639959689486409806

/-!
# A388008: Number of generalized conjugacy classes in the semigroup of relations on a set of size n.

The programs for A388008, there is no canonical definition to state claims against.
-/

/-! ## A388008.P17746784932905928278

`A181807(A090031(n))`
-/

namespace A388008.P17746784932905928278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181807 (A090031 n).toNat

end

end A388008.P17746784932905928278

/-! ## A388008.P7179225962045703478

`A001462(A063075(n)+n)`
-/

namespace A388008.P7179225962045703478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A063075 n + (n : ℤ)).toNat

end

end A388008.P7179225962045703478

/-!
# A388011: Numbers k such that sigma(k)/k < 5/3.

The programs for A388011, the canonical program `A388011.P2434188042193603591` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388011 has offset 1).

The definition of A388011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388011.P6944086511132002360

`eq[0, A388013(n+1)]+1`
-/

namespace A388011.P6944086511132002360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388011.P6944086511132002360

namespace A388011

/-- `eq[0, A388013(n+1)]+1` -/
def P6944086511132002360.Spec : Prop :=
  ∀ n, (P6944086511132002360.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P2434188042193603591

`comp[A388012(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A388011

/-- `comp[A388012(n+1)-1]+1` -/
def P2434188042193603591.Spec : Prop :=
  ∀ n, (P2434188042193603591.a n : ℤ) = A388011 (n + 1)

theorem P2434188042193603591.correct : P2434188042193603591.Spec := by
  intro n
  simp only [A388011, Nat.add_sub_cancel]

end A388011

/-! ## A388011.P6800607511207175475

`comp[∪[A388012(n+1), A277991(n)]]`
-/

namespace A388011.P6800607511207175475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388012 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277991 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A388011.P6800607511207175475

namespace A388011

/-- `comp[∪[A388012(n+1), A277991(n)]]` -/
def P6800607511207175475.Spec : Prop :=
  ∀ n, (P6800607511207175475.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P10848207665788190312

`lt[A382524(A008486(n)), A109802(n+1)]`
-/

namespace A388011.P10848207665788190312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382524 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388011.P10848207665788190312

namespace A388011

/-- `lt[A382524(A008486(n)), A109802(n+1)]` -/
def P10848207665788190312.Spec : Prop :=
  ∀ n, (P10848207665788190312.a n : ℤ) = A388011 (n + 1)

end A388011

/-! ## A388011.P2357552675874164228

`lt[A001075(A032741(n)), A358458(n+1)]`
-/

namespace A388011.P2357552675874164228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388011.P2357552675874164228

namespace A388011

/-- `lt[A001075(A032741(n)), A358458(n+1)]` -/
def P2357552675874164228.Spec : Prop :=
  ∀ n, (P2357552675874164228.a n : ℤ) = A388011 (n + 1)

end A388011

/-!
# A388012: Numbers k such that sigma(k)/k >= 5/3.

The programs for A388012, the canonical program `A388012.P15688760804591210700` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388012 has offset 1).

The definition of A388012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388012.P10768439576094753168

`∩[A002808(n+1), comp[A388011(n+1)]]`
-/

namespace A388012.P10768439576094753168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388011 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A388012.P10768439576094753168

namespace A388012

/-- `∩[A002808(n+1), comp[A388011(n+1)]]` -/
def P10768439576094753168.Spec : Prop :=
  ∀ n, (P10768439576094753168.a n : ℤ) = A388012 (n + 1)

end A388012

/-! ## A388012.P15688760804591210700

`lt[A277573(n+1), A000203(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A388012

/-- `lt[A277573(n+1), A000203(n+1)]+1` -/
def P15688760804591210700.Spec : Prop :=
  ∀ n, (P15688760804591210700.a n : ℤ) = A388012 (n + 1)

theorem P15688760804591210700.correct : P15688760804591210700.Spec := by
  intro n
  simp only [A388012, Nat.add_sub_cancel]

end A388012

/-! ## A388012.P12154584016435822791

`lt[A285967(n+1), A000203(n+1)]+1`
-/

namespace A388012.P12154584016435822791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388012.P12154584016435822791

namespace A388012

/-- `lt[A285967(n+1), A000203(n+1)]+1` -/
def P12154584016435822791.Spec : Prop :=
  ∀ n, (P12154584016435822791.a n : ℤ) = A388012 (n + 1)

end A388012

/-! ## A388012.P10623087724489886241

`A065475(lt[(2*n+1)/3, A001065(n+1)])`
-/

namespace A388012.P10623087724489886241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A388012.P10623087724489886241

namespace A388012

/-- `A065475(lt[(2*n+1)/3, A001065(n+1)])` -/
def P10623087724489886241.Spec : Prop :=
  ∀ n, P10623087724489886241.a n = A388012 (n + 1)

end A388012

/-! ## A388012.P7276084716309008671

`lt[5, ∑{d}[n, 3/#]]`
-/

namespace A388012.P7276084716309008671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 3 / (d : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A388012.P7276084716309008671

namespace A388012

/-- `lt[5, ∑{d}[n, 3/#]]` -/
def P7276084716309008671.Spec : Prop :=
  ∀ n, (P7276084716309008671.a n : ℤ) = A388012 (n + 1)

end A388012

/-!
# A388013: Number of divisors d of n for which sigma(d)/d >= 5/3.

The programs for A388013, there is no canonical definition to state claims against.
-/

/-! ## A388013.P4229372552767815178

`A045887(A068190(n+1))`
-/

namespace A388013.P4229372552767815178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045887 (A068190 (n + 1)).toNat

end

end A388013.P4229372552767815178

/-! ## A388013.P4990547934250454513

`and(A055212(n+1), A114387(n))`
-/

namespace A388013.P4990547934250454513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055212 (n + 1)) (A114387 n)

end

end A388013.P4990547934250454513

/-! ## A388013.P8748559642832229654

`and(A114387(n), A294904(n+1))`
-/

namespace A388013.P8748559642832229654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114387 n) (A294904 (n + 1))

end

end A388013.P8748559642832229654

/-! ## A388013.P13263692587895752076

`and(A114387(n), A337345(n+1))`
-/

namespace A388013.P13263692587895752076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114387 n) (A337345 (n + 1))

end

end A388013.P13263692587895752076

/-! ## A388013.P7447437482989331243

`and(A114387(n), A360661(n+1))`
-/

namespace A388013.P7447437482989331243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114387 n) (A360661 (n + 1))

end

end A388013.P7447437482989331243

/-!
# A388014: Primitive terms of A388012: Numbers k such that sigma(k)/k >= 5/3, but for all whose proper divisors d|k, d

The programs for A388014, there is no canonical definition to state claims against.
-/

/-! ## A388014.P16890240132744095010

`eq[1, A388013(n+1)]+1`
-/

namespace A388014.P16890240132744095010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388014.P16890240132744095010

/-! ## A388014.P5320466386252997571

`eq[1, A388013(A028310(n))]`
-/

namespace A388014.P5320466386252997571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388013 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388014.P5320466386252997571

/-! ## A388014.P5732272886974040494

`∩[A205805(n+1), A353543(n+1)]`
-/

namespace A388014.P5732272886974040494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388014.P5732272886974040494

/-!
# A388015: Numbers k that are odd multiples of 3 and non-multiples of 5, and for which sigma(k^2)/(k^2) >= 5/3.

The programs for A388015, there is no canonical definition to state claims against.
-/

/-! ## A388015.P16308940402836586667

`sqrt(A388016(n+1))`
-/

namespace A388015.P16308940402836586667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A388016 (n + 1) : ℝ)

end

end A388015.P16308940402836586667

/-! ## A388015.P15602364882942594566

`∩[A173250(n+1), A008603(n)]`
-/

namespace A388015.P15602364882942594566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388015.P15602364882942594566

/-! ## A388015.P3525007622878199301

`∩[A173250(n+1), A187965(n+1)]`
-/

namespace A388015.P3525007622878199301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388015.P3525007622878199301

/-! ## A388015.P8732558605227816176

`∩[A173250(n+1), A335774(n+1)]`
-/

namespace A388015.P8732558605227816176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388015.P8732558605227816176

/-!
# A388016: Odd squares k, multiples of 3 and non-multiples of 5, such that sigma(k)/k >= 5/3.

The programs for A388016, there is no canonical definition to state claims against.
-/

/-! ## A388016.P14625797656422844090

`A388015(n+1)²`
-/

namespace A388016.P14625797656422844090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (n + 1) ^ 2

end

end A388016.P14625797656422844090

/-! ## A388016.P8309313870289958407

`A388015(A000027(n+1))^2`
-/

namespace A388016.P8309313870289958407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (A000027 (n + 1)).toNat ^ 2

end

end A388016.P8309313870289958407

/-! ## A388016.P8640321376300421689

`A388015(A000027(n+1))*A388015(n+1)`
-/

namespace A388016.P8640321376300421689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (A000027 (n + 1)).toNat * A388015 (n + 1)

end

end A388016.P8640321376300421689

/-! ## A388016.P11610355661649010879

`A388015(A026741(2*(n+1)))^2`
-/

namespace A388016.P11610355661649010879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388015 (A026741 (2 * (n + 1))).toNat ^ 2

end

end A388016.P11610355661649010879

/-! ## A388016.P10492800100954554407

`A388015(n+1)^(A130196(3*n)+1)`
-/

namespace A388016.P10492800100954554407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388015 (n + 1) : ℚ) ^ (A130196 (3 * n) + 1 : ℤ)

end

end A388016.P10492800100954554407

/-! ## A388016.P15954150306519341627

`A000290(or(1, A388015(n+1)))`
-/

namespace A388016.P15954150306519341627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A388015 (n + 1))).toNat

end

end A388016.P15954150306519341627

/-! ## A388016.P5628827932576781612

`A000290(A388015(n+1)%A038370(n))`
-/

namespace A388016.P5628827932576781612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A388015 (n + 1)) (A038370 n)).toNat

end

end A388016.P5628827932576781612

/-! ## A388016.P2557377026032903386

`A000290(A388015(n+1))%A061663(3*n+1)`
-/

namespace A388016.P2557377026032903386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A388015 (n + 1)).toNat) (A061663 (3 * n + 1))

end

end A388016.P2557377026032903386

/-! ## A388016.P8346225396147294085

`A000290(A388015(n+1))%A169883(n+4)`
-/

namespace A388016.P8346225396147294085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A388015 (n + 1)).toNat) (A169883 (n + 4))

end

end A388016.P8346225396147294085

/-!
# A388018: a(n) = A276086(floor(sigma(n)/2)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388018, there is no canonical definition to state claims against.
-/

/-! ## A388018.P8263227786389747681

`A276086(floor(∑{d}[n+1, #]/2))`
-/

namespace A388018.P8263227786389747681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 2⌋.toNat

end

end A388018.P8263227786389747681

/-! ## A388018.P11038215183650310967

`A276086(floor(A000203(n+1)/2))`
-/

namespace A388018.P11038215183650310967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ⌊(A000203 (n + 1) : ℚ) / 2⌋.toNat

end

end A388018.P11038215183650310967

/-!
# A388019: Primitive terms of A023197: numbers k such that sigma(k)/k >= 3, but for every proper divisor, d|k, d

The programs for A388019, there is no canonical definition to state claims against.
-/

/-! ## A388019.P3291608224165440576

`A322377(A082743(n))`
-/

namespace A388019.P3291608224165440576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A082743 n).toNat

end

end A388019.P3291608224165440576

/-! ## A388019.P9622407489063767206

`A322377(A381225(n))`
-/

namespace A388019.P9622407489063767206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A381225 n).toNat

end

end A388019.P9622407489063767206

/-! ## A388019.P1307191075672398882

`A322377(A001104(n+1))`
-/

namespace A388019.P1307191075672398882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A001104 (n + 1)).toNat

end

end A388019.P1307191075672398882

/-! ## A388019.P3235826003561425682

`A322377(A002998(n+1))`
-/

namespace A388019.P3235826003561425682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A002998 (n + 1)).toNat

end

end A388019.P3235826003561425682

/-! ## A388019.P8128848855321233549

`A322377(A023106(n+1))`
-/

namespace A388019.P8128848855321233549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (A023106 (n + 1)).toNat

end

end A388019.P8128848855321233549

/-!
# A388020: Primitive terms of A023197 that are of the form 4u+2.

The programs for A388020, there is no canonical definition to state claims against.
-/

/-! ## A388020.P365370024060833817

`2*A006038(n+1)`
-/

namespace A388020.P365370024060833817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006038 (n + 1)

end

end A388020.P365370024060833817

/-! ## A388020.P14500573557820535881

`lcm(A006038(n+1), A010696(n))`
-/

namespace A388020.P14500573557820535881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006038 (n + 1)) (A010696 n)

end

end A388020.P14500573557820535881

/-! ## A388020.P9457017783690683345

`∩[A307112(n+1), A381550(n+1)]`
-/

namespace A388020.P9457017783690683345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P9457017783690683345

/-! ## A388020.P1853156469070723656

`∩[A381550(n+1), A388019(n+1)]`
-/

namespace A388020.P1853156469070723656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P1853156469070723656

/-! ## A388020.P14711950620227682067

`∩[A307112(n+1), A347938(n+1)]`
-/

namespace A388020.P14711950620227682067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P14711950620227682067

/-! ## A388020.P8055637380819870329

`∩[A347938(n+1), A388019(n+1)]`
-/

namespace A388020.P8055637380819870329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P8055637380819870329

/-! ## A388020.P14131142709232796000

`∩[A204830(n+1), A347938(n+1)]`
-/

namespace A388020.P14131142709232796000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P14131142709232796000

/-! ## A388020.P3075714265964407892

`∩[A023197(n+1), A347938(n+1)]`
-/

namespace A388020.P3075714265964407892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P3075714265964407892

/-! ## A388020.P2005853941339990420

`∩[A068403(n+1), A347938(n+1)]`
-/

namespace A388020.P2005853941339990420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388020.P2005853941339990420

/-!
# A388021: a(n) = gcd(A276086(floor(sigma(n)/2)), A276086(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388021, there is no canonical definition to state claims against.
-/

/-! ## A388021.P14338280165165431389

`gcd(A276086(n+1), A388018(n+1))`
-/

namespace A388021.P14338280165165431389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A388018 (n + 1))

end

end A388021.P14338280165165431389

/-!
# A388022: Numbers k such that sigma(k) AND 3*k = 3*k, where AND is bitwise-and, A004198.

The programs for A388022, there is no canonical definition to state claims against.
-/

/-! ## A388022.P419281993004068481

`A000689(A116639(n+1))*A056866(n+1)`
-/

namespace A388022.P419281993004068481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (A116639 (n + 1)).toNat * A056866 (n + 1)

end

end A388022.P419281993004068481

/-!
# A388025: Primitive terms of A388022: numbers k that satisfy sigma(k) AND 3*k = 3*k, but none of whose proper divisors satisfy the same condition.

The programs for A388025, there is no canonical definition to state claims against.
-/

/-! ## A388025.P6659201185937614375

`filter[A388022(2*n+1), A286987(#)]`
-/

namespace A388025.P6659201185937614375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286987 (f1 j).toNat = 1) n)

end

end A388025.P6659201185937614375

/-!
# A388029: Odd numbers k for which A003961(k) > 2*k and A003961(k)-2*k OR A003961(k)-sigma(k) = A003961(k)-2*k, where OR is bitwise-or (A003986) and A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A388029, there is no canonical definition to state claims against.
-/

/-! ## A388029.P11307777645708548113

`filter[A388030(n+1), A323158(#)]`
-/

namespace A388029.P11307777645708548113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A388029.P11307777645708548113

/-! ## A388029.P7899066662258292380

`filter[A388030(2*(n+1)), A093719(#)]`
-/

namespace A388029.P7899066662258292380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388030 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A388029.P7899066662258292380

/-! ## A388029.P15518161321587175779

`filter[A388030(2*(n+1)), A324908(#)]`
-/

namespace A388029.P15518161321587175779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388030 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A388029.P15518161321587175779

/-!
# A388030: Primitive terms of A388028.

The programs for A388030, there is no canonical definition to state claims against.
-/

/-! ## A388030.P853889106321995237

`A337814(A350401(n+1))`
-/

namespace A388030.P853889106321995237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337814 (A350401 (n + 1)).toNat

end

end A388030.P853889106321995237

/-!
# A388031: a(n) = A276086(sigma(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388031, there is no canonical definition to state claims against.
-/

/-! ## A388031.P9747482596570530976

`A276086(A000203(n+1))`
-/

namespace A388031.P9747482596570530976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A000203 (n + 1)).toNat

end

end A388031.P9747482596570530976

/-! ## A388031.P1489664393135938853

`A388282(n+1)-A388281(n+1)`
-/

namespace A388031.P1489664393135938853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A388281 (n + 1)

end

end A388031.P1489664393135938853

/-! ## A388031.P3888318247800652027

`A276086(n+1)*A379493(n+1)-A388281(n+1)`
-/

namespace A388031.P3888318247800652027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A379493 (n + 1) - A388281 (n + 1)

end

end A388031.P3888318247800652027

/-! ## A388031.P14598531730792166440

`A276086(∑{d}[n+1, #])`
-/

namespace A388031.P14598531730792166440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A388031.P14598531730792166440

/-! ## A388031.P4255343783503967469

`A276086(A001065(n+1)+n+1)`
-/

namespace A388031.P4255343783503967469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A388031.P4255343783503967469

/-! ## A388031.P11405099914818527274

`A276086(A333783(n+1)+A332993(n+1))`
-/

namespace A388031.P11405099914818527274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A333783 (n + 1) + A332993 (n + 1)).toNat

end

end A388031.P11405099914818527274

/-! ## A388031.P14778768621381629363

`A276086(A324644(n+1)*A369445(n+1))`
-/

namespace A388031.P14778768621381629363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A324644 (n + 1) * A369445 (n + 1)).toNat

end

end A388031.P14778768621381629363

/-! ## A388031.P11279282466032245844

`A276086(A351252(n+1)/A276086(n+1))`
-/

namespace A388031.P11279282466032245844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A351252 (n + 1) : ℚ) / (A276086 (n + 1) : ℚ))).toNat

end

end A388031.P11279282466032245844

/-!
# A388032: a(n) = gcd(A276086(sigma(n)), A276086(2*n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388032, there is no canonical definition to state claims against.
-/

/-! ## A388032.P14282694286225666806

`gcd(A276086(2*(n+1)), A388031(n+1))`
-/

namespace A388032.P14282694286225666806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (2 * (n + 1))) (A388031 (n + 1))

end

end A388032.P14282694286225666806

/-!
# A388033: a(n) = gcd(A276086(sigma(n)), A276086(3*n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388033, there is no canonical definition to state claims against.
-/

/-! ## A388033.P1909377925171151161

`gcd(A276086(3*(n+1)), A388031(n+1))`
-/

namespace A388033.P1909377925171151161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (3 * (n + 1))) (A388031 (n + 1))

end

end A388033.P1909377925171151161

/-!
# A388035: Primitive terms of A388034.

The programs for A388035, there is no canonical definition to state claims against.
-/

/-! ## A388035.P11091384403144666545

`A389712(A356750(n+1))`
-/

namespace A388035.P11091384403144666545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389712 (A356750 (n + 1)).toNat

end

end A388035.P11091384403144666545

/-!
# A388036: Numbers k such that gcd(A276086(sigma(k)), A276086(3*k)) = A276086(3*k), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388036, there is no canonical definition to state claims against.
-/

/-! ## A388036.P6223336192906944764

`A256749(A264754(n+1))`
-/

namespace A388036.P6223336192906944764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256749 (A264754 (n + 1)).toNat

end

end A388036.P6223336192906944764

/-! ## A388036.P2391255197433395726

`filter[A256749(2*n+1), A169674(#)]`
-/

namespace A388036.P2391255197433395726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256749 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169674 (f1 j).toNat = 1) n)

end

end A388036.P2391255197433395726

/-!
# A388038: a(n) is the number of steps to reach 1 when the Sisyphus sequence (A350877) begins with n, or -1 if 1 is never reached.

The programs for A388038, there is no canonical definition to state claims against.
-/

/-! ## A388038.P3328644116025790158

`A029731(A145642(n+1))`
-/

namespace A388038.P3328644116025790158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029731 (A145642 (n + 1)).toNat

end

end A388038.P3328644116025790158

/-!
# A388041: a(n) = n! * ((n-2) * 2^(n-1) + 1).

The programs for A388041, the canonical program `A388041.P14621709364107648952` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388041 has offset 0).

The definition of A388041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388041.P14621709364107648952

`n!*((n-2)*2^(n-1)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A388041

/-- `n!*((n-2)*2^(n-1)+1)` -/
def P14621709364107648952.Spec : Prop :=
  ∀ n, P14621709364107648952.a n = (A388041 n : ℚ)

end A388041

/-! ## A388041.P11923796454177218893

`∑[A139756(n)]*A000142(n)`
-/

namespace A388041.P11923796454177218893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A388041.P11923796454177218893

namespace A388041

/-- `∑[A139756(n)]*A000142(n)` -/
def P11923796454177218893.Spec : Prop :=
  ∀ n, P11923796454177218893.a n = A388041 n

end A388041

/-! ## A388041.P9365146886064185908

`Δ[A007290(n)]*A355258(n)`
-/

namespace A388041.P9365146886064185908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A355258 n

end

end A388041.P9365146886064185908

namespace A388041

/-- `Δ[A007290(n)]*A355258(n)` -/
def P9365146886064185908.Spec : Prop :=
  ∀ n, P9365146886064185908.a n = A388041 n

end A388041

/-! ## A388041.P12161936894420562761

`A000142(n)*A211991(A000079(n))`
-/

namespace A388041.P12161936894420562761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A211991 (A000079 n).toNat

end

end A388041.P12161936894420562761

namespace A388041

/-- `A000142(n)*A211991(A000079(n))` -/
def P12161936894420562761.Spec : Prop :=
  ∀ n, P12161936894420562761.a n = A388041 n

end A388041

/-! ## A388041.P16670061407494170831

`A000142(n)*A001855(ceil(2^(n-1)))`
-/

namespace A388041.P16670061407494170831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001855 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A388041.P16670061407494170831

namespace A388041

/-- `A000142(n)*A001855(ceil(2^(n-1)))` -/
def P16670061407494170831.Spec : Prop :=
  ∀ n, P16670061407494170831.a n = A388041 n

end A388041

/-!
# A388043: a(n) = Sum_{k=0..n} binomial(3*n-2*k,n-k).

The programs for A388043, there is no canonical definition to state claims against.
-/

/-! ## A388043.P10721877869829300719

`A361654(A058331(n+1))`
-/

namespace A388043.P10721877869829300719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A058331 (n + 1)).toNat

end

end A388043.P10721877869829300719

/-! ## A388043.P1253406344584567865

`A013580(A062725(n))`
-/

namespace A388043.P1253406344584567865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A062725 n).toNat

end

end A388043.P1253406344584567865

/-! ## A388043.P14616202824203884875

`A013580(A062728(n))`
-/

namespace A388043.P14616202824203884875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A062728 n).toNat

end

end A388043.P14616202824203884875

/-! ## A388043.P12666542275824980678

`A013580(A000217(3*n)+n)`
-/

namespace A388043.P12666542275824980678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A388043.P12666542275824980678

/-! ## A388043.P11336150073142575970

`A231147(A154254(n+1))`
-/

namespace A388043.P11336150073142575970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A154254 (n + 1)).toNat

end

end A388043.P11336150073142575970

/-!
# A388044: a(n) = number of k <= m such that rad(k) | m, where m = A001694(n) and rad(n) = A007947(n).

The programs for A388044, there is no canonical definition to state claims against.
-/

/-! ## A388044.P17226502017535246127

`A010846(A001694(n+1))`
-/

namespace A388044.P17226502017535246127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A001694 (n + 1)).toNat

end

end A388044.P17226502017535246127

/-! ## A388044.P17065572029391464491

`A010846(A224866(n+1)-1)`
-/

namespace A388044.P17065572029391464491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A224866 (n + 1) - 1).toNat

end

end A388044.P17065572029391464491

/-! ## A388044.P13308265605785602702

`A010846(eq[1, A056671(n+1)]+1)`
-/

namespace A388044.P13308265605785602702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A388044.P13308265605785602702

/-!
# A388045: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(3*n+1,k).

The programs for A388045, there is no canonical definition to state claims against.
-/

/-! ## A388045.P14765877534169601546

`A008288(A194268(n))`
-/

namespace A388045.P14765877534169601546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A194268 n).toNat

end

end A388045.P14765877534169601546

/-! ## A388045.P7882288271475810474

`A008288(A125201(n+1))`
-/

namespace A388045.P7882288271475810474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A125201 (n + 1)).toNat

end

end A388045.P7882288271475810474

/-! ## A388045.P7490214393471926647

`A112475(A139273(n+1))`
-/

namespace A388045.P7490214393471926647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A139273 (n + 1)).toNat

end

end A388045.P7490214393471926647

/-! ## A388045.P15597627357048042507

`A112475(A383464(n+1))`
-/

namespace A388045.P15597627357048042507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A383464 (n + 1)).toNat

end

end A388045.P15597627357048042507

/-! ## A388045.P8809384456273115442

`A008288(A000384(2*n+1)+n)`
-/

namespace A388045.P8809384456273115442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A000384 (2 * n + 1) + (n : ℤ)).toNat

end

end A388045.P8809384456273115442

/-!
# A388046: a(n) = Sum_{k=0..n} 2^k * binomial(n,k) * binomial(4*n+1,k).

The programs for A388046, there is no canonical definition to state claims against.
-/

/-! ## A388046.P13820556868199533950

`A216182(A062728(n))`
-/

namespace A388046.P13820556868199533950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216182 (A062728 n).toNat

end

end A388046.P13820556868199533950

/-!
# A388047: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+1,k).

The programs for A388047, there is no canonical definition to state claims against.
-/

/-! ## A388047.P4280822375263779673

`∑[A052392(n)]`
-/

namespace A388047.P4280822375263779673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388047.P4280822375263779673

/-! ## A388047.P8740092242093716581

`A081577(2*(n+1)²)`
-/

namespace A388047.P8740092242093716581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (2 * (n + 1) ^ 2)

end

end A388047.P8740092242093716581

/-! ## A388047.P10422469682137968549

`∑[A054120(2*(n+1)²)]`
-/

namespace A388047.P10422469682137968549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388047.P10422469682137968549

/-! ## A388047.P8893895992537636

`record[A081577(A093005(n+1))]`
-/

namespace A388047.P8893895992537636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A093005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388047.P8893895992537636

/-! ## A388047.P10842433989829154395

`A152842(A054000(n+1)+1)`
-/

namespace A388047.P10842433989829154395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A054000 (n + 1) + 1).toNat

end

end A388047.P10842433989829154395

/-! ## A388047.P6038191839891804335

`A152842(eq[2, A071321(n+1)])`
-/

namespace A388047.P6038191839891804335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A388047.P6038191839891804335

/-! ## A388047.P12459998009823600404

`A152842(A090288(n)-A005408(n))`
-/

namespace A388047.P12459998009823600404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A090288 n - A005408 n).toNat

end

end A388047.P12459998009823600404

/-!
# A388048: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(2*n+1,k).

The programs for A388048, there is no canonical definition to state claims against.
-/

/-! ## A388048.P7055662144172850703

`A081577(C(3*n+2, 2)+n)`
-/

namespace A388048.P7055662144172850703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (Nat.choose (3 * n + 2) 2 + n)

end

end A388048.P7055662144172850703

/-! ## A388048.P1539702053254764852

`A081577(A051682(n+1))`
-/

namespace A388048.P1539702053254764852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A051682 (n + 1)).toNat

end

end A388048.P1539702053254764852

/-! ## A388048.P10864453107746517109

`A081577(A062708(n+1))`
-/

namespace A388048.P10864453107746517109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A062708 (n + 1)).toNat

end

end A388048.P10864453107746517109

/-! ## A388048.P10963359707315019532

`A081577(A081268(n)+1)`
-/

namespace A388048.P10963359707315019532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A081268 n + 1).toNat

end

end A388048.P10963359707315019532

/-! ## A388048.P17589470710749515087

`A081577(A000326(2*n+1)-A000326(n))`
-/

namespace A388048.P17589470710749515087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A000326 (2 * n + 1) - A000326 n).toNat

end

end A388048.P17589470710749515087

/-!
# A388049: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(3*n+1,k).

The programs for A388049, there is no canonical definition to state claims against.
-/

/-! ## A388049.P17098395825734976216

`A081577(A194268(n))`
-/

namespace A388049.P17098395825734976216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A194268 n).toNat

end

end A388049.P17098395825734976216

/-! ## A388049.P4255691812989932334

`A081577(A125201(n+1))`
-/

namespace A388049.P4255691812989932334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A125201 (n + 1)).toNat

end

end A388049.P4255691812989932334

/-! ## A388049.P15724397969935659202

`A081577(A085250(n+1)-A016789(n))`
-/

namespace A388049.P15724397969935659202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A085250 (n + 1) - A016789 n).toNat

end

end A388049.P15724397969935659202

/-!
# A388053: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n^2+k+1,n).

The programs for A388053, there is no canonical definition to state claims against.
-/

/-! ## A388053.P9674961664998268682

`A388052(∑[4*n])`
-/

namespace A388053.P9674961664998268682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A388053.P9674961664998268682

/-!
# A388054: Numbers k > 2 such that (k - 2^m)*2^m + 1 is prime for every m > 0 with 2^m < k.

The programs for A388054, there is no canonical definition to state claims against.
-/

/-! ## A388054.P3930611813093194150

`A006928(A181769(n))+A000793(n+2)`
-/

namespace A388054.P3930611813093194150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A181769 n).toNat + A000793 (n + 2)

end

end A388054.P3930611813093194150

/-! ## A388054.P15542038247713060884

`A376598(A181600(n+1))-A181600(n)`
-/

namespace A388054.P15542038247713060884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376598 (A181600 (n + 1)).toNat - A181600 n

end

end A388054.P15542038247713060884

/-! ## A388054.P8736464969558343585

`A088243(A354580(n))+A124765(n)+A124761(n)`
-/

namespace A388054.P8736464969558343585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088243 (A354580 n).toNat + (A124765 n + A124761 n)

end

end A388054.P8736464969558343585

/-!
# A388059: Smallest multiple of n that does not contain the digit 1 in its decimal representation.

The programs for A388059, there is no canonical definition to state claims against.
-/

/-! ## A388059.P10038205619044239046

`A110803(n+1)+A014075(A055574(n+1))`
-/

namespace A388059.P10038205619044239046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110803 (n + 1) + A014075 (A055574 (n + 1)).toNat

end

end A388059.P10038205619044239046

/-! ## A388059.P8953114219654340581

`(n+1)*2^A245794(n)`
-/

namespace A388059.P8953114219654340581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A245794 n : ℤ)

end

end A388059.P8953114219654340581

/-! ## A388059.P5254283211817643447

`(n+1)*A000079(A245794(n))`
-/

namespace A388059.P5254283211817643447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A245794 n).toNat

end

end A388059.P5254283211817643447

/-! ## A388059.P15154585969626881982

`(n+1)*A062729(A245794(n)+1)`
-/

namespace A388059.P15154585969626881982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062729 (A245794 n + 1).toNat

end

end A388059.P15154585969626881982

/-! ## A388059.P976578316373035477

`(n+1)*(A390608(A245794(n)+1)+1)`
-/

namespace A388059.P976578316373035477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A390608 (A245794 n + 1).toNat + 1)

end

end A388059.P976578316373035477

/-!
# A388060: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+1,k).

The programs for A388060, the canonical program `A388060.P10420952751908136420` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388060 has offset 0).

The definition of A388060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388060.P4724312809703244059

`A051708(n+2)-A084771(n)`
-/

namespace A388060.P4724312809703244059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051708 (n + 2) - A084771 n

end

end A388060.P4724312809703244059

namespace A388060

/-- `A051708(n+2)-A084771(n)` -/
def P4724312809703244059.Spec : Prop :=
  ∀ n, P4724312809703244059.a n = A388060 n

end A388060

/-! ## A388060.P10420952751908136420

`A084771(n)+2*A059231(n)*2*n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A388060

/-- `A084771(n)+2*A059231(n)*2*n` -/
def P10420952751908136420.Spec : Prop :=
  ∀ n, P10420952751908136420.a n = A388060 n

theorem P10420952751908136420.correct : P10420952751908136420.Spec := by
  intro n
  simp only [A388060]

end A388060

/-! ## A388060.P16319452557749934633

`A081578(2*(n+1)²)`
-/

namespace A388060.P16319452557749934633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (2 * (n + 1) ^ 2)

end

end A388060.P16319452557749934633

namespace A388060

/-- `A081578(2*(n+1)²)` -/
def P16319452557749934633.Spec : Prop :=
  ∀ n, P16319452557749934633.a n = A388060 n

end A388060

/-! ## A388060.P17543216660241325228

`∑[A348595(∑[A329779(n+1)])]`
-/

namespace A388060.P17543216660241325228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329779 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348595 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388060.P17543216660241325228

namespace A388060

/-- `∑[A348595(∑[A329779(n+1)])]` -/
def P17543216660241325228.Spec : Prop :=
  ∀ n, P17543216660241325228.a n = A388060 n

end A388060

/-!
# A388061: a(n) = Sum_{k=0..n} 5^k * binomial(n,k) * binomial(n+1,k).

The programs for A388061, there is no canonical definition to state claims against.
-/

/-! ## A388061.P1252963645497812185

`A081579(2*(n+1)²)`
-/

namespace A388061.P1252963645497812185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (2 * (n + 1) ^ 2)

end

end A388061.P1252963645497812185

/-!
# A388062: Least prime p such that p+A135311(k) is prime for 2 <= k <= n, but not for k = n+1, or 0 if no such prime exists.

The programs for A388062, there is no canonical definition to state claims against.
-/

/-! ## A388062.P3134692646090563042

`A344448(A238366(n))`
-/

namespace A388062.P3134692646090563042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344448 (A238366 n).toNat

end

end A388062.P3134692646090563042

/-!
# A388064: Total number of parts in all partitions of n with designated summands.

The programs for A388064, there is no canonical definition to state claims against.
-/

/-! ## A388064.P13481944773004328035

`A306639(A000079(n))-A107753(n+1)`
-/

namespace A388064.P13481944773004328035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306639 (A000079 n).toNat - A107753 (n + 1)

end

end A388064.P13481944773004328035

/-! ## A388064.P12763915332843293672

`A000005(A001715(n+3))-A325567(n+5)`
-/

namespace A388064.P12763915332843293672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001715 (n + 3)).toNat - A325567 (n + 5)

end

end A388064.P12763915332843293672

/-!
# A388066: Numbers k such that the sum of the first k primes minus one is prime.

The programs for A388066, there is no canonical definition to state claims against.
-/

/-! ## A388066.P17482258712020951180

`eq[3, A077982(A007504(n))]`
-/

namespace A388066.P17482258712020951180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388066.P17482258712020951180

/-!
# A388067: Multiplicative sequence a(n) with a(p^e) = (1+floor(e/2)) * (2+floor(e/2)) / 2 for prime p and e >= 0.

The programs for A388067, the canonical program `A388067.P9453088931527127366` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388067 has offset 1).

The definition of A388067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388067.P9453088931527127366

`∑{d}[n+1, A369308(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A388067

/-- `∑{d}[n+1, A369308(#)]` -/
def P9453088931527127366.Spec : Prop :=
  ∀ n, P9453088931527127366.a n = A388067 (n + 1)

theorem P9453088931527127366.correct : P9453088931527127366.Spec := by
  intro n
  simp only [A388067, Nat.add_sub_cancel]

end A388067

/-! ## A388067.P5240999910639947005

`∏{e}[n+1, A008805(#)]`
-/

namespace A388067.P5240999910639947005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008805 (Nat.factorization (f1 n) p)

end

end A388067.P5240999910639947005

namespace A388067

/-- `∏{e}[n+1, A008805(#)]` -/
def P5240999910639947005.Spec : Prop :=
  ∀ n, P5240999910639947005.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P826781414591879446

`A007425(A000188(n+1))`
-/

namespace A388067.P826781414591879446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A000188 (n + 1)).toNat

end

end A388067.P826781414591879446

namespace A388067

/-- `A007425(A000188(n+1))` -/
def P826781414591879446.Spec : Prop :=
  ∀ n, P826781414591879446.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P17509547583698848283

`A007425((n+1)/A019554(n+1))`
-/

namespace A388067.P17509547583698848283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A388067.P17509547583698848283

namespace A388067

/-- `A007425((n+1)/A019554(n+1))` -/
def P17509547583698848283.Spec : Prop :=
  ∀ n, P17509547583698848283.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P5435324738934803970

`∑{d}[n+1, A008836(#)*A124315((n+1)/#)]`
-/

namespace A388067.P5435324738934803970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P5435324738934803970

namespace A388067

/-- `∑{d}[n+1, A008836(#)*A124315((n+1)/#)]` -/
def P5435324738934803970.Spec : Prop :=
  ∀ n, P5435324738934803970.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P16626309545747680746

`∑{d}[n+1, A007425(#)*A329484((n+1)/#)]`
-/

namespace A388067.P16626309545747680746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P16626309545747680746

namespace A388067

/-- `∑{d}[n+1, A007425(#)*A329484((n+1)/#)]` -/
def P16626309545747680746.Spec : Prop :=
  ∀ n, P16626309545747680746.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P3188609641355944481

`∑{d}[n+1, A092520(#)*A307420((n+1)/#)]`
-/

namespace A388067.P3188609641355944481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P3188609641355944481

namespace A388067

/-- `∑{d}[n+1, A092520(#)*A307420((n+1)/#)]` -/
def P3188609641355944481.Spec : Prop :=
  ∀ n, P3188609641355944481.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P7528127907440300663

`∑{d}[n+1, A056624(#)*A370256((n+1)/#)]`
-/

namespace A388067.P7528127907440300663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A370256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P7528127907440300663

namespace A388067

/-- `∑{d}[n+1, A056624(#)*A370256((n+1)/#)]` -/
def P7528127907440300663.Spec : Prop :=
  ∀ n, P7528127907440300663.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P15551782968182495035

`∑{d}[n+1, A061704(#)*A389887((n+1)/#)]`
-/

namespace A388067.P15551782968182495035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061704 d * A389887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P15551782968182495035

namespace A388067

/-- `∑{d}[n+1, A061704(#)*A389887((n+1)/#)]` -/
def P15551782968182495035.Spec : Prop :=
  ∀ n, P15551782968182495035.a n = A388067 (n + 1)

end A388067

/-! ## A388067.P11767799134915741048

`∑{d}[n+1, A307423(#)*A322885((n+1)/#)]`
-/

namespace A388067.P11767799134915741048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307423 d * A322885 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388067.P11767799134915741048

namespace A388067

/-- `∑{d}[n+1, A307423(#)*A322885((n+1)/#)]` -/
def P11767799134915741048.Spec : Prop :=
  ∀ n, P11767799134915741048.a n = A388067 (n + 1)

end A388067

/-!
# A388070: Number of compositions of n where the gcd of the parts equals the median of the parts.

The programs for A388070, there is no canonical definition to state claims against.
-/

/-! ## A388070.P1850613314472611700

`∑{d}[n+1, A391398(#)]`
-/

namespace A388070.P1850613314472611700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391398 d

end

end A388070.P1850613314472611700

/-!
# A388072: a(n) = Kronecker symbol (-10/n).

The programs for A388072, the canonical program `A388072.P14779318985125589135` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388072 has offset 0).

The definition of A388072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388072.P14779318985125589135

`A080891(n)*A188510(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A388072

/-- `A080891(n)*A188510(n)` -/
def P14779318985125589135.Spec : Prop :=
  ∀ n, P14779318985125589135.a n = A388072 n

theorem P14779318985125589135.correct : P14779318985125589135.Spec := by
  intro n
  simp only [A388072]

end A388072

/-!
# A388073: a(n) = Kronecker symbol (-39/n) = (n/39).

The programs for A388073, the canonical program `A388073.P2282890064848621379` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388073 has offset 0).

The definition of A388073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011583, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388073.P2282890064848621379

`A102283(n)*A011583(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A388073

/-- `A102283(n)*A011583(n)` -/
def P2282890064848621379.Spec : Prop :=
  ∀ n, P2282890064848621379.a n = A388073 n

theorem P2282890064848621379.correct : P2282890064848621379.Spec := by
  intro n
  simp only [A388073]

end A388073

/-!
# A388076: Integers which can be expressed as the sum of three distinct perfect powers.

The programs for A388076, there is no canonical definition to state claims against.
-/

/-! ## A388076.P8075986898476901876

`lt[0, A362425(n)]`
-/

namespace A388076.P8075986898476901876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A388076.P8075986898476901876

/-!
# A388077: Complement of A000332.

The programs for A388077, the canonical program `A388077.P17750427128830897830` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388077 has offset 1).

The definition of A388077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388077.P6327443858052778415

`comp[C(n, 4)]`
-/

namespace A388077.P6327443858052778415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A388077.P6327443858052778415

namespace A388077

/-- `comp[C(n, 4)]` -/
def P6327443858052778415.Spec : Prop :=
  ∀ n, (P6327443858052778415.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P18383951922531493201

`comp[∑[∑[∑[n]]]]`
-/

namespace A388077.P18383951922531493201
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A388077.P18383951922531493201

namespace A388077

/-- `comp[∑[∑[∑[n]]]]` -/
def P18383951922531493201.Spec : Prop :=
  ∀ n, (P18383951922531493201.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P17750427128830897830

`eq[0, A256436(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A388077

/-- `eq[0, A256436(n)]` -/
def P17750427128830897830.Spec : Prop :=
  ∀ n, (P17750427128830897830.a n : ℤ) = A388077 (n + 1)

theorem P17750427128830897830.correct : P17750427128830897830.Spec := by
  intro n
  simp only [A388077, Nat.add_sub_cancel]

end A388077

/-! ## A388077.P12816590086335250786

`∪[A077721(n+1), comp[A000332(n)]]`
-/

namespace A388077.P12816590086335250786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A388077.P12816590086335250786

namespace A388077

/-- `∪[A077721(n+1), comp[A000332(n)]]` -/
def P12816590086335250786.Spec : Prop :=
  ∀ n, (P12816590086335250786.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P17578282682637517382

`lt[1, A283365(n)]`
-/

namespace A388077.P17578282682637517382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A388077.P17578282682637517382

namespace A388077

/-- `lt[1, A283365(n)]` -/
def P17578282682637517382.Spec : Prop :=
  ∀ n, (P17578282682637517382.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P1886044203058253827

`lt[2, A194883(n)]`
-/

namespace A388077.P1886044203058253827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A388077.P1886044203058253827

namespace A388077

/-- `lt[2, A194883(n)]` -/
def P1886044203058253827.Spec : Prop :=
  ∀ n, (P1886044203058253827.a n : ℤ) = A388077 (n + 1)

end A388077

/-! ## A388077.P2791307029936971819

`A000196(comp[A000332(n)]²)`
-/

namespace A388077.P2791307029936971819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A388077.P2791307029936971819

namespace A388077

/-- `A000196(comp[A000332(n)]²)` -/
def P2791307029936971819.Spec : Prop :=
  ∀ n, P2791307029936971819.a n = A388077 (n + 1)

end A388077

/-!
# A388078: Smallest prime p such that p + 6^i is prime for all i = 1 to n and not for i = n + 1.

The programs for A388078, there is no canonical definition to state claims against.
-/

/-! ## A388078.P4364792504770681300

`A247877(A359904(n+2))`
-/

namespace A388078.P4364792504770681300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247877 (A359904 (n + 2)).toNat

end

end A388078.P4364792504770681300

