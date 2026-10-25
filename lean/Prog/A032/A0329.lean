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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A032900: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^i has d(0) <= d(1) >= d(2) <= ...

The programs for A032900, there is no canonical definition to state claims against.
-/

/-! ## A032900.P14079454755967259920

`record[A103627(A032891(n+1))]`
-/

namespace A032900.P14079454755967259920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A032891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032900.P14079454755967259920

/-! ## A032900.P14420409410993247811

`record[A163528(A032906(n+1))]`
-/

namespace A032900.P14420409410993247811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A032906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032900.P14420409410993247811

/-!
# A032901: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^i has d(0) <= d(1) >= d(2) <= ...

The programs for A032901, there is no canonical definition to state claims against.
-/

/-! ## A032901.P17775695166581290171

`record[A057979(A004524(A032892(n+1)))]`
-/

namespace A032901.P17775695166581290171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004524 (A032892 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032901.P17775695166581290171

/-! ## A032901.P5819566424235798113

`record[A289813(A032906(n+1))]`
-/

namespace A032901.P5819566424235798113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A032906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032901.P5819566424235798113

/-!
# A032902: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^i has d(0) <= d(1) >= d(2) <= ...

The programs for A032902, there is no canonical definition to state claims against.
-/

/-! ## A032902.P615881529356981127

`lt[A265549(n), A265569(A265541(2*n))]`
-/

namespace A032902.P615881529356981127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A265541 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032902.P615881529356981127

/-! ## A032902.P6661905690955913489

`lt[A265549(n), A265569(A265541(n)+n)]`
-/

namespace A032902.P6661905690955913489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A265541 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032902.P6661905690955913489

/-!
# A032903: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^i has d(0) <= d(1) >= d(2) <= ...

The programs for A032903, there is no canonical definition to state claims against.
-/

/-! ## A032903.P17422458200959429077

`∩[A023762(n+1), A346447(n+1)]`
-/

namespace A032903.P17422458200959429077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032903.P17422458200959429077

/-!
# A032906: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^i has d(0) <= d(1) >= d(2) <= ...

The programs for A032906, there is no canonical definition to state claims against.
-/

/-! ## A032906.P1435131376922276657

`eq[A216455(A028310(n)), A319726(n)]`
-/

namespace A032906.P1435131376922276657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032906.P1435131376922276657

/-!
# A032907: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^i has d(0) <= d(1) >= d(2) <= ...

The programs for A032907, there is no canonical definition to state claims against.
-/

/-! ## A032907.P15032824215957413276

`eq[1, A016014(A213217(n+1))]+1`
-/

namespace A032907.P15032824215957413276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A213217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032907.P15032824215957413276

/-! ## A032907.P13822649528991544016

`eq[round(n/(n+1)), A281680(A213217(n))]`
-/

namespace A032907.P13822649528991544016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032907.P13822649528991544016

/-! ## A032907.P11195180152119954454

`eq[1, A001222(A213217(n+1)+2)]+1`
-/

namespace A032907.P11195180152119954454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A213217 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032907.P11195180152119954454

/-! ## A032907.P2790417164487430150

`eq[2, A000005(A213217(n+1)+2)]+1`
-/

namespace A032907.P2790417164487430150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A213217 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032907.P2790417164487430150

/-! ## A032907.P6177165780275118719

`lt[2, lcm(3, A175624(A213217(n+1)+1))]+1`
-/

namespace A032907.P6177165780275118719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A175624 (A213217 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A032907.P6177165780275118719

/-! ## A032907.P14106101241328307728

`eq[A016014(A213217(n)), A057427(n)]`
-/

namespace A032907.P14106101241328307728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032907.P14106101241328307728

/-! ## A032907.P16188905328744944104

`eq[A108782(n), A186742(A027379(n))]`
-/

namespace A032907.P16188905328744944104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186742 (A027379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032907.P16188905328744944104

/-! ## A032907.P13402553850712876371

`eq[A016014(A213217(n)), A178334(n)]`
-/

namespace A032907.P13402553850712876371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032907.P13402553850712876371

/-! ## A032907.P2933301098780209488

`eq[A000007(n), A228101(A213217(n))]`
-/

namespace A032907.P2933301098780209488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228101 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032907.P2933301098780209488

/-! ## A032907.P7436340459835555465

`eq[A000038(n), A228101(A213217(n))]`
-/

namespace A032907.P7436340459835555465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228101 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032907.P7436340459835555465

/-!
# A032908: One of four 3rd-order recurring sequences for which the first derived sequence and the Galois transformed sequence coincide.

The programs for A032908, the canonical program `A032908.P15819255478356776617` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032908 has offset 0).

The definition of A032908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032908.P15819255478356776617

`3*a(n-1)-a(n-2)-1` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032908

/-- `3*a(n-1)-a(n-2)-1` -/
def P15819255478356776617.Spec : Prop :=
  ∀ n, P15819255478356776617.a n = A032908 n

theorem P15819255478356776617.correct : P15819255478356776617.Spec := by
  intro n
  simp only [A032908]

end A032908

/-! ## A032908.P7001668685937917921

`1+A001519(n)`
-/

namespace A032908.P7001668685937917921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001519 n

end

end A032908.P7001668685937917921

namespace A032908

/-- `1+A001519(n)` -/
def P7001668685937917921.Spec : Prop :=
  ∀ n, P7001668685937917921.a n = A032908 n

end A032908

/-! ## A032908.P1594261354609767931

`∑[ogf((2-6x+3x^2)/(1-3x+x^2))]`
-/

namespace A032908.P1594261354609767931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 3] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032908.P1594261354609767931

namespace A032908

/-- `∑[ogf((2-6x+3x^2)/(1-3x+x^2))]` -/
def P1594261354609767931.Spec : Prop :=
  ∀ n, P1594261354609767931.a n = A032908 n

end A032908

/-! ## A032908.P7657046962692613016

`ogf((2-6x+3x^2)/(1-4x+4x^2-x^3))`
-/

namespace A032908.P7657046962692613016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 3] [1, -4, 4, -1] n

end

end A032908.P7657046962692613016

namespace A032908

/-- `ogf((2-6x+3x^2)/(1-4x+4x^2-x^3))` -/
def P7657046962692613016.Spec : Prop :=
  ∀ n, P7657046962692613016.a n = A032908 n

end A032908

/-! ## A032908.P16603203366367470604

`round(ϕ²*a(n-1))-2` with `a(0)=2, a(1)=2`
-/

namespace A032908.P16603203366367470604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)) - 2

end

end A032908.P16603203366367470604

namespace A032908

/-- `round(ϕ²*a(n-1))-2` -/
def P16603203366367470604.Spec : Prop :=
  ∀ n, P16603203366367470604.a n = A032908 n

end A032908

/-! ## A032908.P7207501874771424158

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A032908.P7207501874771424158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032908.P7207501874771424158

namespace A032908

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P7207501874771424158.Spec : Prop :=
  ∀ n, P7207501874771424158.a n = A032908 n

end A032908

/-! ## A032908.P13223845701598041549

`∑[round(ϕ*ϕ*a(n-1))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A032908.P13223845701598041549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032908.P13223845701598041549

namespace A032908

/-- `∑[round(ϕ*ϕ*a(n-1))]` -/
def P13223845701598041549.Spec : Prop :=
  ∀ n, P13223845701598041549.a n = A032908 n

end A032908

/-! ## A032908.P5701569509368899482

`a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` with `a(0)=2, a(1)=2`
-/

namespace A032908.P5701569509368899482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (a (n - 2) + 1)))

end

end A032908.P5701569509368899482

namespace A032908

/-- `a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` -/
def P5701569509368899482.Spec : Prop :=
  ∀ n, P5701569509368899482.a n = A032908 n

theorem P5701569509368899482.correct : P5701569509368899482.Spec := by
  intro n
  simp only [A032908, Nat.add_sub_cancel, A032908.P5701569509368899482.a, A032908.P15819255478356776617.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A032908

/-! ## A032908.P16347977359252606880

`a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` with `a(0)=2, a(1)=2`
-/

namespace A032908.P16347977359252606880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - (1 - (a (n - 1) - (a (n - 2) - a (n - 1))))

end

end A032908.P16347977359252606880

namespace A032908

/-- `a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` -/
def P16347977359252606880.Spec : Prop :=
  ∀ n, P16347977359252606880.a n = A032908 n

theorem P16347977359252606880.correct : P16347977359252606880.Spec := by
  intro n
  simp only [A032908, Nat.add_sub_cancel, A032908.P16347977359252606880.a, A032908.P15819255478356776617.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A032908

/-! ## A032908.P11532465111477313043

`or(2, A128534(n))`
-/

namespace A032908.P11532465111477313043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A128534 n)

end

end A032908.P11532465111477313043

namespace A032908

/-- `or(2, A128534(n))` -/
def P11532465111477313043.Spec : Prop :=
  ∀ n, P11532465111477313043.a n = A032908 n

end A032908

/-! ## A032908.P14789260231606339036

`A293064(n+1)+2`
-/

namespace A032908.P14789260231606339036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 1) + 2

end

end A032908.P14789260231606339036

namespace A032908

/-- `A293064(n+1)+2` -/
def P14789260231606339036.Spec : Prop :=
  ∀ n, P14789260231606339036.a n = A032908 n

end A032908

/-! ## A032908.P14694002182158595387

`A212804(2*n)+1`
-/

namespace A032908.P14694002182158595387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) + 1

end

end A032908.P14694002182158595387

namespace A032908

/-- `A212804(2*n)+1` -/
def P14694002182158595387.Spec : Prop :=
  ∀ n, P14694002182158595387.a n = A032908 n

end A032908

/-! ## A032908.P15309226438111417382

`A119282(2*n)+2`
-/

namespace A032908.P15309226438111417382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (2 * n) + 2

end

end A032908.P15309226438111417382

namespace A032908

/-- `A119282(2*n)+2` -/
def P15309226438111417382.Spec : Prop :=
  ∀ n, P15309226438111417382.a n = A032908 n

end A032908

/-! ## A032908.P13631742334416141665

`A247309(3*n)+1`
-/

namespace A032908.P13631742334416141665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (3 * n) + 1

end

end A032908.P13631742334416141665

namespace A032908

/-- `A247309(3*n)+1` -/
def P13631742334416141665.Spec : Prop :=
  ∀ n, P13631742334416141665.a n = A032908 n

end A032908

/-! ## A032908.P5701607106939356168

`1-A152163(Δ[n²])`
-/

namespace A032908.P5701607106939356168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152163 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A032908.P5701607106939356168

namespace A032908

/-- `1-A152163(Δ[n²])` -/
def P5701607106939356168.Spec : Prop :=
  ∀ n, P5701607106939356168.a n = A032908 n

end A032908

/-! ## A032908.P7619713340319787840

`A078024(Δ[n²])+3`
-/

namespace A032908.P7619713340319787840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A032908.P7619713340319787840

namespace A032908

/-- `A078024(Δ[n²])+3` -/
def P7619713340319787840.Spec : Prop :=
  ∀ n, P7619713340319787840.a n = A032908 n

end A032908

/-! ## A032908.P9724012883030954746

`Δ[A078024(2*n)]+1`
-/

namespace A032908.P9724012883030954746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A032908.P9724012883030954746

namespace A032908

/-- `Δ[A078024(2*n)]+1` -/
def P9724012883030954746.Spec : Prop :=
  ∀ n, P9724012883030954746.a n = A032908 n

end A032908

/-! ## A032908.P7198229641975849195

`1-Δ[A152163(2*n)]`
-/

namespace A032908.P7198229641975849195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A032908.P7198229641975849195

namespace A032908

/-- `1-Δ[A152163(2*n)]` -/
def P7198229641975849195.Spec : Prop :=
  ∀ n, P7198229641975849195.a n = A032908 n

end A032908

/-! ## A032908.P18068265217641601210

`A246640((n-1)%(n+1))`
-/

namespace A032908.P18068265217641601210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246640 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A032908.P18068265217641601210

namespace A032908

/-- `A246640((n-1)%(n+1))` -/
def P18068265217641601210.Spec : Prop :=
  ∀ n, P18068265217641601210.a n = A032908 n

end A032908

/-!
# A032911: Numbers whose set of base-4 digits is a subset of {1,3}.

The programs for A032911, there is no canonical definition to state claims against.
-/

/-! ## A032911.P13664026588520458142

`A032804(n+1)-A115637(n)`
-/

namespace A032911.P13664026588520458142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032804 (n + 1) - A115637 n

end

end A032911.P13664026588520458142

/-! ## A032911.P5914900065986269929

`∩[A003754(n+1), A032890(n+1)]`
-/

namespace A032911.P5914900065986269929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P5914900065986269929

/-! ## A032911.P9259575627649739381

`∩[A032890(n+1), A247648(n+1)]`
-/

namespace A032911.P9259575627649739381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P9259575627649739381

/-! ## A032911.P16075465808048235139

`A023713(A153775(n+2))`
-/

namespace A032911.P16075465808048235139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A153775 (n + 2)).toNat

end

end A032911.P16075465808048235139

/-! ## A032911.P13927181677466905300

`∩[A023713(n+1), A247648(n+1)]`
-/

namespace A032911.P13927181677466905300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P13927181677466905300

/-! ## A032911.P15816403632706332269

`A023705(A137951(n+1))`
-/

namespace A032911.P15816403632706332269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (A137951 (n + 1)).toNat

end

end A032911.P15816403632706332269

/-! ## A032911.P17306157185021391334

`A023705(A147991(n+2)-1)`
-/

namespace A032911.P17306157185021391334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (A147991 (n + 2) - 1).toNat

end

end A032911.P17306157185021391334

/-! ## A032911.P8044796999362339638

`∩[A023705(n+1), A023713(n+1)]`
-/

namespace A032911.P8044796999362339638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P8044796999362339638

/-! ## A032911.P7067529106356437774

`∩[A023705(n+1), A032890(n+1)]`
-/

namespace A032911.P7067529106356437774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P7067529106356437774

/-! ## A032911.P8920077817252375878

`A006257(A032804(n+1))`
-/

namespace A032911.P8920077817252375878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A032804 (n + 1)).toNat

end

end A032911.P8920077817252375878

/-! ## A032911.P4480220082643593873

`record[A284447(2*n+1)]`
-/

namespace A032911.P4480220082643593873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032911.P4480220082643593873

/-! ## A032911.P4954190997657730194

`∩[A003754(n+1), A039003(n+1)]`
-/

namespace A032911.P4954190997657730194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P4954190997657730194

/-! ## A032911.P11906732678248931794

`∩[A023705(n+1), A039003(n+1)]`
-/

namespace A032911.P11906732678248931794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P11906732678248931794

/-! ## A032911.P11641849338995932225

`∩[A023713(n+1), A039003(n+1)]`
-/

namespace A032911.P11641849338995932225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P11641849338995932225

/-! ## A032911.P3395302607341205544

`∩[A032890(n+1), A039003(n+1)]`
-/

namespace A032911.P3395302607341205544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P3395302607341205544

/-! ## A032911.P5894091802076767323

`∩[A039003(n+1), A247648(n+1)]`
-/

namespace A032911.P5894091802076767323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032911.P5894091802076767323

/-! ## A032911.P14391661701259351118

`eq[A004468(n), A379578(n)]`
-/

namespace A032911.P14391661701259351118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032911.P14391661701259351118

/-! ## A032911.P10576724526365728487

`A163241(A032925(n+1))`
-/

namespace A032911.P10576724526365728487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A032925 (n + 1)).toNat

end

end A032911.P10576724526365728487

/-! ## A032911.P84256902038610140

`record[A258996(A054429(n+1))]`
-/

namespace A032911.P84256902038610140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032911.P84256902038610140

/-! ## A032911.P8603261286787926613

`record[A258996(A092569(2*n+1))]`
-/

namespace A032911.P8603261286787926613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A092569 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032911.P8603261286787926613

/-!
# A032912: Numbers whose set of base-5 digits is {1,3}.

The programs for A032912, there is no canonical definition to state claims against.
-/

/-! ## A032912.P2482235252731680819

`(A032926(n+1)+A032817(n+1))/2`
-/

namespace A032912.P2482235252731680819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032926 (n + 1) + A032817 (n + 1) : ℚ) / 2

end

end A032912.P2482235252731680819

/-! ## A032912.P13481830065587005895

`A032829(n+1)-A032926(A346306(n+1))`
-/

namespace A032912.P13481830065587005895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032829 (n + 1) - A032926 (A346306 (n + 1)).toNat

end

end A032912.P13481830065587005895

/-! ## A032912.P3568995414569959854

`∑[A294566(A111982(n+1))]`
-/

namespace A032912.P3568995414569959854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (A111982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032912.P3568995414569959854

/-! ## A032912.P6942738372513486681

`A153776(n+2)-1`
-/

namespace A032912.P6942738372513486681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153776 (n + 2) - 1

end

end A032912.P6942738372513486681

/-! ## A032912.P7311736261202577492

`∑[abs(Δ[A153776(n+1)])]`
-/

namespace A032912.P7311736261202577492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032912.P7311736261202577492

/-! ## A032912.P11061191673317795165

`∑[A000027(Δ[A153776(n+1)])]`
-/

namespace A032912.P11061191673317795165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032912.P11061191673317795165

/-! ## A032912.P1344893255253766957

`∑[Δ[A153776(n+1)]%A252130(n+1)]`
-/

namespace A032912.P1344893255253766957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A252130 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032912.P1344893255253766957

/-! ## A032912.P10564791914494291909

`A023729(A032925(n+1)+1)`
-/

namespace A032912.P10564791914494291909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A032925 (n + 1) + 1).toNat

end

end A032912.P10564791914494291909

/-! ## A032912.P12507811824280401201

`∩[A023729(n+1), A039567(n+1)]`
-/

namespace A032912.P12507811824280401201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032912.P12507811824280401201

/-! ## A032912.P6000245702339931635

`A020655(A032911(n+1))`
-/

namespace A032912.P6000245702339931635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A032911 (n + 1)).toNat

end

end A032912.P6000245702339931635

/-! ## A032912.P6173884476687089441

`A020654(A032911(n+1)+1)`
-/

namespace A032912.P6173884476687089441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A032911 (n + 1) + 1).toNat

end

end A032912.P6173884476687089441

/-! ## A032912.P15322259803959972375

`∩[A020654(n+1), A039567(n+1)]`
-/

namespace A032912.P15322259803959972375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032912.P15322259803959972375

/-! ## A032912.P2388816026767931413

`∩[A023721(n+1), A039567(n+1)]`
-/

namespace A032912.P2388816026767931413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032912.P2388816026767931413

/-! ## A032912.P4397668219373522956

`∩[A037459(n+1), A039567(n+1)]`
-/

namespace A032912.P4397668219373522956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032912.P4397668219373522956

/-! ## A032912.P6053713919383865156

`A004515(A032829(n+1))`
-/

namespace A032912.P6053713919383865156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A032829 (n + 1)).toNat

end

end A032912.P6053713919383865156

/-!
# A032913: Numbers whose set of base-6 digits is {1,3}.

The programs for A032913, the canonical program `A032913.P14296521150570778594` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032913 has offset 1).

The definition of A032913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032913.P6654894083094216932

`(A032927(n+1)+A032818(n+1))/2`
-/

namespace A032913.P6654894083094216932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032927 (n + 1) + A032818 (n + 1) : ℚ) / 2

end

end A032913.P6654894083094216932

namespace A032913

/-- `(A032927(n+1)+A032818(n+1))/2` -/
def P6654894083094216932.Spec : Prop :=
  ∀ n, P6654894083094216932.a n = (A032913 (n + 1) : ℚ)

theorem P6654894083094216932.correct : P6654894083094216932.Spec := by
  intro n
  simp only [A032913, Nat.add_sub_cancel, A032913.P6654894083094216932.a, A032913.P14296521150570778594.a, A032806, A032806.P6530555208973634118.a, A032818, A032818.P11687481509006464414.a, A032927, A032927.P16396062760344607680.f1, A032927.P16396062760344607680.a, A135517, A135517.P346222672956229891.a, A147993, A147993.P9268513682852722789.a, A010673, A010673.P14010432101562150871.a, A065033, A065033.P13150710762287634520.a, A091090, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032913

/-! ## A032913.P14296521150570778594

`3*A032927(n+1)-A032806(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A032913

/-- `3*A032927(n+1)-A032806(n+1)` -/
def P14296521150570778594.Spec : Prop :=
  ∀ n, P14296521150570778594.a n = A032913 (n + 1)

theorem P14296521150570778594.correct : P14296521150570778594.Spec := by
  intro n
  simp only [A032913, Nat.add_sub_cancel]

end A032913

/-! ## A032913.P10453562557741763693

`(5*A032806(n+1))%A032830(n+1)`
-/

namespace A032913.P10453562557741763693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032806 (n + 1)) (A032830 (n + 1))

end

end A032913.P10453562557741763693

namespace A032913

/-- `(5*A032806(n+1))%A032830(n+1)` -/
def P10453562557741763693.Spec : Prop :=
  ∀ n, P10453562557741763693.a n = A032913 (n + 1)

end A032913

/-! ## A032913.P15854144786757654178

`A032830(n+1)-A032927(A346306(n+1))`
-/

namespace A032913.P15854144786757654178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032830 (n + 1) - A032927 (A346306 (n + 1)).toNat

end

end A032913.P15854144786757654178

namespace A032913

/-- `A032830(n+1)-A032927(A346306(n+1))` -/
def P15854144786757654178.Spec : Prop :=
  ∀ n, P15854144786757654178.a n = A032913 (n + 1)

end A032913

/-! ## A032913.P6985018605486081387

`A033032(A032924(n+1))`
-/

namespace A032913.P6985018605486081387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (A032924 (n + 1)).toNat

end

end A032913.P6985018605486081387

namespace A032913

/-- `A033032(A032924(n+1))` -/
def P6985018605486081387.Spec : Prop :=
  ∀ n, P6985018605486081387.a n = A032913 (n + 1)

end A032913

/-! ## A032913.P9722072423005395085

`A037460(A032911(n+1))`
-/

namespace A032913.P9722072423005395085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A032911 (n + 1)).toNat

end

end A032913.P9722072423005395085

namespace A032913

/-- `A037460(A032911(n+1))` -/
def P9722072423005395085.Spec : Prop :=
  ∀ n, P9722072423005395085.a n = A032913 (n + 1)

end A032913

/-! ## A032913.P7876204039066234010

`∩[A033032(n+1), A037460(n)]`
-/

namespace A032913.P7876204039066234010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P7876204039066234010

namespace A032913

/-- `∩[A033032(n+1), A037460(n)]` -/
def P7876204039066234010.Spec : Prop :=
  ∀ n, (P7876204039066234010.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P5753775439476556421

`∩[A039578(n+1), A037460(n)]`
-/

namespace A032913.P5753775439476556421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P5753775439476556421

namespace A032913

/-- `∩[A039578(n+1), A037460(n)]` -/
def P5753775439476556421.Spec : Prop :=
  ∀ n, (P5753775439476556421.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P12313622590904803669

`∩[A039579(n+1), A037460(n)]`
-/

namespace A032913.P12313622590904803669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P12313622590904803669

namespace A032913

/-- `∩[A039579(n+1), A037460(n)]` -/
def P12313622590904803669.Spec : Prop :=
  ∀ n, (P12313622590904803669.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P15271694538296780317

`∩[A033032(n+1), A039579(n+1)]`
-/

namespace A032913.P15271694538296780317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P15271694538296780317

namespace A032913

/-- `∩[A033032(n+1), A039579(n+1)]` -/
def P15271694538296780317.Spec : Prop :=
  ∀ n, (P15271694538296780317.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P13980918500342203750

`∩[A033032(n+1), A039582(n+1)]`
-/

namespace A032913.P13980918500342203750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P13980918500342203750

namespace A032913

/-- `∩[A033032(n+1), A039582(n+1)]` -/
def P13980918500342203750.Spec : Prop :=
  ∀ n, (P13980918500342203750.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P8062768415882237525

`∩[A033032(n+1), A039591(n+1)]`
-/

namespace A032913.P8062768415882237525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P8062768415882237525

namespace A032913

/-- `∩[A033032(n+1), A039591(n+1)]` -/
def P8062768415882237525.Spec : Prop :=
  ∀ n, (P8062768415882237525.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P12023226613597319882

`A037460(2*A032925(n+1))/2`
-/

namespace A032913.P12023226613597319882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037460 (2 * A032925 (n + 1)).toNat : ℚ) / 2

end

end A032913.P12023226613597319882

namespace A032913

/-- `A037460(2*A032925(n+1))/2` -/
def P12023226613597319882.Spec : Prop :=
  ∀ n, P12023226613597319882.a n = (A032913 (n + 1) : ℚ)

end A032913

/-! ## A032913.P17570423351149620284

`∩[A031477(n+1), A033032(n+1)]`
-/

namespace A032913.P17570423351149620284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P17570423351149620284

namespace A032913

/-- `∩[A031477(n+1), A033032(n+1)]` -/
def P17570423351149620284.Spec : Prop :=
  ∀ n, (P17570423351149620284.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P1733477131142845485

`∩[A033032(n+1), A039026(n+1)]`
-/

namespace A032913.P1733477131142845485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P1733477131142845485

namespace A032913

/-- `∩[A033032(n+1), A039026(n+1)]` -/
def P1733477131142845485.Spec : Prop :=
  ∀ n, (P1733477131142845485.a n : ℤ) = A032913 (n + 1)

end A032913

/-! ## A032913.P12813207272328485608

`∩[A033032(n+1), A039029(n+1)]`
-/

namespace A032913.P12813207272328485608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032913.P12813207272328485608

namespace A032913

/-- `∩[A033032(n+1), A039029(n+1)]` -/
def P12813207272328485608.Spec : Prop :=
  ∀ n, (P12813207272328485608.a n : ℤ) = A032913 (n + 1)

end A032913

/-!
# A032914: Numbers whose set of base-7 digits is {1,3}.

The programs for A032914, there is no canonical definition to state claims against.
-/

/-! ## A032914.P8467478856715670397

`(A032928(n+1)+A032819(n+1))/2`
-/

namespace A032914.P8467478856715670397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032928 (n + 1) + A032819 (n + 1) : ℚ) / 2

end

end A032914.P8467478856715670397

/-! ## A032914.P10266146131564341781

`3*A032928(n+1)-A032807(n+1)`
-/

namespace A032914.P10266146131564341781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032928 (n + 1) - A032807 (n + 1)

end

end A032914.P10266146131564341781

/-! ## A032914.P1033545532065644277

`A032831(n+1)-A032928(A346306(n+1))`
-/

namespace A032914.P1033545532065644277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032831 (n + 1) - A032928 (A346306 (n + 1)).toNat

end

end A032914.P1033545532065644277

/-! ## A032914.P4206282503245438893

`A033033(A032924(n+1))`
-/

namespace A032914.P4206282503245438893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033033 (A032924 (n + 1)).toNat

end

end A032914.P4206282503245438893

/-! ## A032914.P18011725045240070111

`A033033(eq[0, A077267(n)])`
-/

namespace A032914.P18011725045240070111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032914.P18011725045240070111

/-! ## A032914.P6619876019578337690

`record[A033033(n+1)/A291771(n+1)]`
-/

namespace A032914.P6619876019578337690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033033 (n + 1) : ℚ) / (A291771 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032914.P6619876019578337690

/-! ## A032914.P12010009693622989603

`A037461(A032911(n+1))`
-/

namespace A032914.P12010009693622989603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A032911 (n + 1)).toNat

end

end A032914.P12010009693622989603

/-! ## A032914.P17058078096533654736

`A037461(record[A332769(n+1)])`
-/

namespace A032914.P17058078096533654736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032914.P17058078096533654736

/-! ## A032914.P3110342827330258586

`∩[A033033(n+1), A037461(n+1)]`
-/

namespace A032914.P3110342827330258586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032914.P3110342827330258586

/-! ## A032914.P18106378851510563060

`A037466(A032912(n+1))`
-/

namespace A032914.P18106378851510563060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A032912 (n + 1)).toNat

end

end A032914.P18106378851510563060

/-!
# A032915: Numbers whose set of base-8 digits is {1,3}.

The programs for A032915, there is no canonical definition to state claims against.
-/

/-! ## A032915.P7965715589984559385

`(A032929(n+1)+A032820(n+1))/2`
-/

namespace A032915.P7965715589984559385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032929 (n + 1) + A032820 (n + 1) : ℚ) / 2

end

end A032915.P7965715589984559385

/-! ## A032915.P2145434239273344621

`3*A032929(n+1)-A032808(n+1)`
-/

namespace A032915.P2145434239273344621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032929 (n + 1) - A032808 (n + 1)

end

end A032915.P2145434239273344621

/-! ## A032915.P14231899705180371763

`xor(A032832(n+1), A032929(n+1))/2`
-/

namespace A032915.P14231899705180371763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A032832 (n + 1)) (A032929 (n + 1)) : ℚ) / 2

end

end A032915.P14231899705180371763

/-! ## A032915.P6977698911690345881

`A032808(n+1)-and(A032820(n+1), A032929(n+1))`
-/

namespace A032915.P6977698911690345881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032808 (n + 1) - Int.land (A032820 (n + 1)) (A032929 (n + 1))

end

end A032915.P6977698911690345881

/-! ## A032915.P1452499867950683216

`A032808(n+1)-A037462(A115637(n))`
-/

namespace A032915.P1452499867950683216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032808 (n + 1) - A037462 (A115637 n).toNat

end

end A032915.P1452499867950683216

/-! ## A032915.P3232211120081509883

`A033034(∑[A115716(n)])`
-/

namespace A032915.P3232211120081509883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032915.P3232211120081509883

/-! ## A032915.P12227289946746593830

`A033034(A032925(n+1))`
-/

namespace A032915.P12227289946746593830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033034 (A032925 (n + 1)).toNat

end

end A032915.P12227289946746593830

/-! ## A032915.P14261416250011394171

`A037462(A032911(n+1))`
-/

namespace A032915.P14261416250011394171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A032911 (n + 1)).toNat

end

end A032915.P14261416250011394171

/-! ## A032915.P5682173058479550719

`A037462(record[A332769(n+1)])`
-/

namespace A032915.P5682173058479550719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032915.P5682173058479550719

/-! ## A032915.P8413111838195946603

`∩[A033034(n+1), A037462(n)]`
-/

namespace A032915.P8413111838195946603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032915.P8413111838195946603

/-!
# A032916: Numbers whose set of base-9 digits is {1,3}.

The programs for A032916, there is no canonical definition to state claims against.
-/

/-! ## A032916.P9781698586169707376

`(A032930(n+1)+A032821(n+1))/2`
-/

namespace A032916.P9781698586169707376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032930 (n + 1) + A032821 (n + 1) : ℚ) / 2

end

end A032916.P9781698586169707376

/-! ## A032916.P1530451672617311238

`3*A032930(n+1)-A032809(n+1)`
-/

namespace A032916.P1530451672617311238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032930 (n + 1) - A032809 (n + 1)

end

end A032916.P1530451672617311238

/-! ## A032916.P6433602519011971513

`(5*A032809(n+1))%A032833(n+1)`
-/

namespace A032916.P6433602519011971513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032809 (n + 1)) (A032833 (n + 1))

end

end A032916.P6433602519011971513

/-! ## A032916.P14218442480422858927

`A032833(n+1)-A032930(A346306(n+1))`
-/

namespace A032916.P14218442480422858927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032833 (n + 1) - A032930 (A346306 (n + 1)).toNat

end

end A032916.P14218442480422858927

/-! ## A032916.P2765617339342861970

`A319497(A032924(n+1))`
-/

namespace A032916.P2765617339342861970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (A032924 (n + 1)).toNat

end

end A032916.P2765617339342861970

/-! ## A032916.P5599769745161959411

`A319497(eq[0, A077267(n)])`
-/

namespace A032916.P5599769745161959411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032916.P5599769745161959411

/-! ## A032916.P9279283635043149032

`A338086(A032924(n+1))-(A032930(n+1)+A032809(n+1))`
-/

namespace A032916.P9279283635043149032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A032924 (n + 1)).toNat - (A032930 (n + 1) + A032809 (n + 1))

end

end A032916.P9279283635043149032

/-! ## A032916.P6055882461329945980

`A319497(record[A348706(n+1)])`
-/

namespace A032916.P6055882461329945980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032916.P6055882461329945980

/-! ## A032916.P7194365440114115235

`A004793(∑[A115716(n)])`
-/

namespace A032916.P7194365440114115235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032916.P7194365440114115235

/-! ## A032916.P10543227784837608830

`A033035(∑[A115716(n)])`
-/

namespace A032916.P10543227784837608830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032916.P10543227784837608830

/-! ## A032916.P3679056394082887021

`A004793(A032925(n+1))`
-/

namespace A032916.P3679056394082887021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A032925 (n + 1)).toNat

end

end A032916.P3679056394082887021

/-! ## A032916.P1859743090945567011

`A005836(A032925(n+1)+1)`
-/

namespace A032916.P1859743090945567011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A032925 (n + 1) + 1).toNat

end

end A032916.P1859743090945567011

/-! ## A032916.P1812232911954338350

`∩[A033035(n+1), A319497(n)]`
-/

namespace A032916.P1812232911954338350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032916.P1812232911954338350

/-! ## A032916.P11224407272956600918

`∩[A004793(n+1), A033035(n+1)]`
-/

namespace A032916.P11224407272956600918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032916.P11224407272956600918

/-! ## A032916.P5121369571798637197

`∩[A005836(n+1), A033035(n+1)]`
-/

namespace A032916.P5121369571798637197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032916.P5121369571798637197

/-! ## A032916.P11179273195306076049

`A033035(A032925(n+1)%A057630(n+1))`
-/

namespace A032916.P11179273195306076049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (Int.tmod (A032925 (n + 1)) (A057630 (n + 1))).toNat

end

end A032916.P11179273195306076049

/-! ## A032916.P16056063677534613358

`A037463(A032911(n+1))`
-/

namespace A032916.P16056063677534613358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A032911 (n + 1)).toNat

end

end A032916.P16056063677534613358

/-! ## A032916.P11174399199289764632

`∩[A033035(n+1), A037463(n)]`
-/

namespace A032916.P11174399199289764632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032916.P11174399199289764632

/-! ## A032916.P8274725197782308297

`∩[A033035(n+1), A265746(n)]`
-/

namespace A032916.P8274725197782308297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032916.P8274725197782308297

/-! ## A032916.P4123969591132241838

`∩[A033035(n+1), A370662(n+1)]`
-/

namespace A032916.P4123969591132241838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032916.P4123969591132241838

/-!
# A032917: Numbers having only digits 1 and 3 in their decimal representation.

The programs for A032917, there is no canonical definition to state claims against.
-/

/-! ## A032917.P3494039978557239377

`A284632(n+1)/2`
-/

namespace A032917.P3494039978557239377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284632 (n + 1) : ℚ) / 2

end

end A032917.P3494039978557239377

/-! ## A032917.P18096931134190879595

`A284964(n+1)/3`
-/

namespace A032917.P18096931134190879595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284964 (n + 1) : ℚ) / 3

end

end A032917.P18096931134190879595

/-! ## A032917.P7307089623790317283

`A072961(n+1)-A007931(n+1)`
-/

namespace A032917.P7307089623790317283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) - A007931 (n + 1)

end

end A032917.P7307089623790317283

/-! ## A032917.P3107674172393503925

`A284633(n+1)-A032810(n+1)`
-/

namespace A032917.P3107674172393503925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) - A032810 (n + 1)

end

end A032917.P3107674172393503925

/-! ## A032917.P11895141288278399977

`A284921(n+1)-A032822(n+1)`
-/

namespace A032917.P11895141288278399977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) - A032822 (n + 1)

end

end A032917.P11895141288278399977

/-! ## A032917.P8328586296481590250

`A284971(n+1)-A032834(n+1)`
-/

namespace A032917.P8328586296481590250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) - A032834 (n + 1)

end

end A032917.P8328586296481590250

/-! ## A032917.P17169585984287903058

`A284963(n+1)-A072961(n+1)`
-/

namespace A032917.P17169585984287903058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A072961 (n + 1)

end

end A032917.P17169585984287903058

/-! ## A032917.P6439752698836595019

`A143967(n+1)-A284920(n+1)`
-/

namespace A032917.P6439752698836595019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A284920 (n + 1)

end

end A032917.P6439752698836595019

/-! ## A032917.P13083488312531710226

`A284381(n+1)-A256290(n+1)`
-/

namespace A032917.P13083488312531710226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A256290 (n + 1)

end

end A032917.P13083488312531710226

/-! ## A032917.P9912614388937341463

`A284636(n+1)-A256291(n+1)`
-/

namespace A032917.P9912614388937341463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A256291 (n + 1)

end

end A032917.P9912614388937341463

/-! ## A032917.P5378706584282254579

`A284920(n+1)-A256077(n+1)`
-/

namespace A032917.P5378706584282254579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) - A256077 (n + 1)

end

end A032917.P5378706584282254579

/-! ## A032917.P10183402982656534256

`A284922(n+1)-A276037(n+1)`
-/

namespace A032917.P10183402982656534256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284922 (n + 1) - A276037 (n + 1)

end

end A032917.P10183402982656534256

/-! ## A032917.P5456224857614567301

`A284382(n+1)-A284634(n+1)`
-/

namespace A032917.P5456224857614567301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A284634 (n + 1)

end

end A032917.P5456224857614567301

/-! ## A032917.P3708184718934819676

`A284923(n+1)-A284293(n+1)`
-/

namespace A032917.P3708184718934819676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A284293 (n + 1)

end

end A032917.P3708184718934819676

/-! ## A032917.P211653268097221138

`A284972(n+1)-A284379(n+1)`
-/

namespace A032917.P211653268097221138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A284379 (n + 1)

end

end A032917.P211653268097221138

/-! ## A032917.P15668594246699910358

`A284964(n+1)-A284632(n+1)`
-/

namespace A032917.P15668594246699910358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A284632 (n + 1)

end

end A032917.P15668594246699910358

/-! ## A032917.P12494928867441355466

`A284973(n+1)-A284633(n+1)`
-/

namespace A032917.P12494928867441355466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A284633 (n + 1)

end

end A032917.P12494928867441355466

/-! ## A032917.P13806863306043648505

`A302938(n+3)-A032834(n+1)`
-/

namespace A032917.P13806863306043648505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302938 (n + 3) - A032834 (n + 1)

end

end A032917.P13806863306043648505

/-! ## A032917.P7772406235169604992

`(A032822(n+1)+A007931(n+1))/2`
-/

namespace A032917.P7772406235169604992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032822 (n + 1) + A007931 (n + 1) : ℚ) / 2

end

end A032917.P7772406235169604992

/-! ## A032917.P13396240853886192227

`A143967(n+1)-2*A007931(n+1)`
-/

namespace A032917.P13396240853886192227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - 2 * A007931 (n + 1)

end

end A032917.P13396240853886192227

/-!
# A032918: Numbers whose set of base-11 digits is {1,3}.

The programs for A032918, there is no canonical definition to state claims against.
-/

/-! ## A032918.P15995985577003220936

`(A032931(n+1)+A032823(n+1))/2`
-/

namespace A032918.P15995985577003220936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032931 (n + 1) + A032823 (n + 1) : ℚ) / 2

end

end A032918.P15995985577003220936

/-! ## A032918.P1747298899088389355

`3*A032931(n+1)-A032811(n+1)`
-/

namespace A032918.P1747298899088389355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032931 (n + 1) - A032811 (n + 1)

end

end A032918.P1747298899088389355

/-! ## A032918.P6150341710220619424

`(5*A032811(n+1))%A032835(n+1)`
-/

namespace A032918.P6150341710220619424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032811 (n + 1)) (A032835 (n + 1))

end

end A032918.P6150341710220619424

/-! ## A032918.P10882910140913610250

`3*A032931(n+1)-(A032931(n+1)+A032835(n+1))/2`
-/

namespace A032918.P10882910140913610250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A032931 (n + 1) : ℚ) - (A032931 (n + 1) + A032835 (n + 1) : ℚ) / 2

end

end A032918.P10882910140913610250

/-! ## A032918.P2568705106161427378

`A033036(A032926(n+1))`
-/

namespace A032918.P2568705106161427378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033036 (A032926 (n + 1)).toNat

end

end A032918.P2568705106161427378

/-! ## A032918.P5673351741705250502

`A032931(n+1)+A014682(A032823(n+1)-A032931(n+1))`
-/

namespace A032918.P5673351741705250502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032931 (n + 1) + A014682 (A032823 (n + 1) - A032931 (n + 1)).toNat

end

end A032918.P5673351741705250502

/-! ## A032918.P8227923381739661618

`A014682(A032931(n+1)+A032823(n+1))`
-/

namespace A032918.P8227923381739661618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032931 (n + 1) + A032823 (n + 1)).toNat

end

end A032918.P8227923381739661618

/-!
# A032919: Numbers whose set of base-12 digits is {1,3}.

The programs for A032919, there is no canonical definition to state claims against.
-/

/-! ## A032919.P6483937007627884346

`(A032932(n+1)+A032824(n+1))/2`
-/

namespace A032919.P6483937007627884346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032932 (n + 1) + A032824 (n + 1) : ℚ) / 2

end

end A032919.P6483937007627884346

/-! ## A032919.P11859584941364749417

`3*A032932(n+1)-A032812(n+1)`
-/

namespace A032919.P11859584941364749417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032932 (n + 1) - A032812 (n + 1)

end

end A032919.P11859584941364749417

/-! ## A032919.P4632459553755478910

`(5*A032812(n+1))%A032836(n+1)`
-/

namespace A032919.P4632459553755478910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032812 (n + 1)) (A032836 (n + 1))

end

end A032919.P4632459553755478910

/-! ## A032919.P13902128088925523844

`(A032932(n+1)+4*A032932(n+1)-A032836(n+1))/2`
-/

namespace A032919.P13902128088925523844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032932 (n + 1) + (4 * A032932 (n + 1) - A032836 (n + 1)) : ℚ) / 2

end

end A032919.P13902128088925523844

/-! ## A032919.P13188829993260180092

`A033037(A032927(n+1))`
-/

namespace A032919.P13188829993260180092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033037 (A032927 (n + 1)).toNat

end

end A032919.P13188829993260180092

/-!
# A032920: Numbers whose set of base-13 digits is {1,3}.

The programs for A032920, there is no canonical definition to state claims against.
-/

/-! ## A032920.P2678350232254901845

`(A032933(n+1)+A032825(n+1))/2`
-/

namespace A032920.P2678350232254901845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032933 (n + 1) + A032825 (n + 1) : ℚ) / 2

end

end A032920.P2678350232254901845

/-! ## A032920.P4605373899676343294

`3*A032933(n+1)-A032813(n+1)`
-/

namespace A032920.P4605373899676343294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032933 (n + 1) - A032813 (n + 1)

end

end A032920.P4605373899676343294

/-! ## A032920.P3942110303607941267

`(5*A032813(n+1))%A032837(n+1)`
-/

namespace A032920.P3942110303607941267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032813 (n + 1)) (A032837 (n + 1))

end

end A032920.P3942110303607941267

/-! ## A032920.P13056906016790528438

`(A032825(n+1)+2*A032813(n+1)-A032837(n+1))/2`
-/

namespace A032920.P13056906016790528438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032825 (n + 1) + (2 * A032813 (n + 1) - A032837 (n + 1)) : ℚ) / 2

end

end A032920.P13056906016790528438

/-! ## A032920.P16995794933827413502

`(A032933(n+1)+4*A032933(n+1)-A032837(n+1))/2`
-/

namespace A032920.P16995794933827413502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032933 (n + 1) + (4 * A032933 (n + 1) - A032837 (n + 1)) : ℚ) / 2

end

end A032920.P16995794933827413502

/-! ## A032920.P1182764112057477769

`A033038(A032927(n+1))`
-/

namespace A032920.P1182764112057477769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033038 (A032927 (n + 1)).toNat

end

end A032920.P1182764112057477769

/-!
# A032921: Numbers whose set of base-14 digits is {1,3}.

The programs for A032921, there is no canonical definition to state claims against.
-/

/-! ## A032921.P2554286645034069683

`(A032934(n+1)+A032826(n+1))/2`
-/

namespace A032921.P2554286645034069683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032934 (n + 1) + A032826 (n + 1) : ℚ) / 2

end

end A032921.P2554286645034069683

/-! ## A032921.P616114197110519527

`3*A032934(n+1)-A032814(n+1)`
-/

namespace A032921.P616114197110519527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032934 (n + 1) - A032814 (n + 1)

end

end A032921.P616114197110519527

/-! ## A032921.P4095147711925347144

`(5*A032814(n+1))%A032838(n+1)`
-/

namespace A032921.P4095147711925347144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032814 (n + 1)) (A032838 (n + 1))

end

end A032921.P4095147711925347144

/-! ## A032921.P5297632298737637198

`A033039(A032928(n+1))`
-/

namespace A032921.P5297632298737637198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033039 (A032928 (n + 1)).toNat

end

end A032921.P5297632298737637198

/-! ## A032921.P2750362396446267025

`A008486(A032934(n+1))-A032814(n+1)`
-/

namespace A032921.P2750362396446267025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A032934 (n + 1)).toNat - A032814 (n + 1)

end

end A032921.P2750362396446267025

/-!
# A032922: Numbers whose set of base-15 digits is {1,3}.

The programs for A032922, there is no canonical definition to state claims against.
-/

/-! ## A032922.P10765961620881980092

`(A032935(n+1)+A032827(n+1))/2`
-/

namespace A032922.P10765961620881980092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032935 (n + 1) + A032827 (n + 1) : ℚ) / 2

end

end A032922.P10765961620881980092

/-! ## A032922.P229054886365434275

`3*A032935(n+1)-A032815(n+1)`
-/

namespace A032922.P229054886365434275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032935 (n + 1) - A032815 (n + 1)

end

end A032922.P229054886365434275

/-! ## A032922.P14392276634216509832

`(5*A032815(n+1))%A032839(n+1)`
-/

namespace A032922.P14392276634216509832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A032815 (n + 1)) (A032839 (n + 1))

end

end A032922.P14392276634216509832

/-! ## A032922.P9800869487687261548

`(A032827(n+1)+2*A032815(n+1)-A032839(n+1))/2`
-/

namespace A032922.P9800869487687261548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032827 (n + 1) + (2 * A032815 (n + 1) - A032839 (n + 1)) : ℚ) / 2

end

end A032922.P9800869487687261548

/-! ## A032922.P18250288023531224964

`A033040(A032928(n+1))`
-/

namespace A032922.P18250288023531224964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033040 (A032928 (n + 1)).toNat

end

end A032922.P18250288023531224964

/-!
# A032923: Numbers whose set of base-16 digits is {1,3}.

The programs for A032923, there is no canonical definition to state claims against.
-/

/-! ## A032923.P11591822008789552770

`(A032936(n+1)+A032828(n+1))/2`
-/

namespace A032923.P11591822008789552770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032936 (n + 1) + A032828 (n + 1) : ℚ) / 2

end

end A032923.P11591822008789552770

/-! ## A032923.P17095207113743743148

`3*A032936(n+1)-A032816(n+1)`
-/

namespace A032923.P17095207113743743148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032936 (n + 1) - A032816 (n + 1)

end

end A032923.P17095207113743743148

/-! ## A032923.P12899460706429369191

`A032816(n+1)-and(A032828(n+1), A032936(n+1))`
-/

namespace A032923.P12899460706429369191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032816 (n + 1) - Int.land (A032828 (n + 1)) (A032936 (n + 1))

end

end A032923.P12899460706429369191

/-! ## A032923.P2579813416183291495

`A032816(n+1)-and(A032840(n+1), A032936(n+1))`
-/

namespace A032923.P2579813416183291495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032816 (n + 1) - Int.land (A032840 (n + 1)) (A032936 (n + 1))

end

end A032923.P2579813416183291495

/-! ## A032923.P8124595328982389784

`A032840(n+1)-A032936(A346306(n+1))`
-/

namespace A032923.P8124595328982389784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032840 (n + 1) - A032936 (A346306 (n + 1)).toNat

end

end A032923.P8124595328982389784

/-! ## A032923.P5154039042295109998

`A032816(n+1)-A000695(A115637(n))`
-/

namespace A032923.P5154039042295109998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032816 (n + 1) - A000695 (A115637 n).toNat

end

end A032923.P5154039042295109998

/-! ## A032923.P14803211827645071277

`A033041(A032929(n+1))`
-/

namespace A032923.P14803211827645071277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033041 (A032929 (n + 1)).toNat

end

end A032923.P14803211827645071277

/-! ## A032923.P16709151497470704254

`∩[A032939(n+1), A033041(n+1)]`
-/

namespace A032923.P16709151497470704254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032923.P16709151497470704254

/-!
# A032924: Numbers whose ternary expansion contains no 0.

The programs for A032924, the canonical program `A032924.P18310276245285467851` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032924 has offset 1).

The definition of A032924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032924.P18310276245285467851

`A107680(n+1)+A107681(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032924

/-- `A107680(n+1)+A107681(n+1)` -/
def P18310276245285467851.Spec : Prop :=
  ∀ n, P18310276245285467851.a n = A032924 (n + 1)

theorem P18310276245285467851.correct : P18310276245285467851.Spec := by
  intro n
  simp only [A032924, Nat.add_sub_cancel]

end A032924

/-! ## A032924.P10145164877107657817

`record[3*a(floor(n/2))+n-2*floor(n/2)+1]` with `a(0)=1, a(1)=0`
-/

namespace A032924.P10145164877107657817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032924.P10145164877107657817

namespace A032924

/-- `record[3*a(floor(n/2))+n-2*floor(n/2)+1]` -/
def P10145164877107657817.Spec : Prop :=
  ∀ n, P10145164877107657817.a n = A032924 (n + 1)

end A032924

/-! ## A032924.P4431550511667110886

`∑[A048673(A135517(n+1))]`
-/

namespace A032924.P4431550511667110886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A135517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032924.P4431550511667110886

namespace A032924

/-- `∑[A048673(A135517(n+1))]` -/
def P4431550511667110886.Spec : Prop :=
  ∀ n, P4431550511667110886.a n = A032924 (n + 1)

end A032924

/-! ## A032924.P2813040740962334657

`∪[A191109(n+1), A259566(n+1)]`
-/

namespace A032924.P2813040740962334657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032924.P2813040740962334657

namespace A032924

/-- `∪[A191109(n+1), A259566(n+1)]` -/
def P2813040740962334657.Spec : Prop :=
  ∀ n, (P2813040740962334657.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P16060146822122260236

`A153775(n+2)-1`
-/

namespace A032924.P16060146822122260236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 2) - 1

end

end A032924.P16060146822122260236

namespace A032924

/-- `A153775(n+2)-1` -/
def P16060146822122260236.Spec : Prop :=
  ∀ n, P16060146822122260236.a n = A032924 (n + 1)

end A032924

/-! ## A032924.P10873331731414612662

`∑[abs(Δ[A153775(n+1)])]`
-/

namespace A032924.P10873331731414612662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032924.P10873331731414612662

namespace A032924

/-- `∑[abs(Δ[A153775(n+1)])]` -/
def P10873331731414612662.Spec : Prop :=
  ∀ n, P10873331731414612662.a n = A032924 (n + 1)

end A032924

/-! ## A032924.P1883856867646798144

`(A191110(n+2)-1)/2`
-/

namespace A032924.P1883856867646798144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191110 (n + 2) - 1 : ℚ) / 2

end

end A032924.P1883856867646798144

namespace A032924

/-- `(A191110(n+2)-1)/2` -/
def P1883856867646798144.Spec : Prop :=
  ∀ n, P1883856867646798144.a n = (A032924 (n + 1) : ℚ)

end A032924

/-! ## A032924.P5182614580259843548

`(A191109(n+3)-2)/3`
-/

namespace A032924.P5182614580259843548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191109 (n + 3) - 2 : ℚ) / 3

end

end A032924.P5182614580259843548

namespace A032924

/-- `(A191109(n+3)-2)/3` -/
def P5182614580259843548.Spec : Prop :=
  ∀ n, P5182614580259843548.a n = (A032924 (n + 1) : ℚ)

end A032924

/-! ## A032924.P16569722054441702864

`record[(n+1)/A291771(n+1)]`
-/

namespace A032924.P16569722054441702864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A291771 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032924.P16569722054441702864

namespace A032924

/-- `record[(n+1)/A291771(n+1)]` -/
def P16569722054441702864.Spec : Prop :=
  ∀ n, P16569722054441702864.a n = (A032924 (n + 1) : ℚ)

end A032924

/-! ## A032924.P10055688638358545156

`record[A372783(n+1)]`
-/

namespace A032924.P10055688638358545156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032924.P10055688638358545156

namespace A032924

/-- `record[A372783(n+1)]` -/
def P10055688638358545156.Spec : Prop :=
  ∀ n, P10055688638358545156.a n = A032924 (n + 1)

end A032924

/-! ## A032924.P3678141367488560863

`comp[A081605(n+1)]`
-/

namespace A032924.P3678141367488560863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A032924.P3678141367488560863

namespace A032924

/-- `comp[A081605(n+1)]` -/
def P3678141367488560863.Spec : Prop :=
  ∀ n, (P3678141367488560863.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P7249141982093988125

`eq[0, A077267(n)]`
-/

namespace A032924.P7249141982093988125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032924.P7249141982093988125

namespace A032924

/-- `eq[0, A077267(n)]` -/
def P7249141982093988125.Spec : Prop :=
  ∀ n, (P7249141982093988125.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P11027750765870799905

`eq[0, A212193(n)]`
-/

namespace A032924.P11027750765870799905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032924.P11027750765870799905

namespace A032924

/-- `eq[0, A212193(n)]` -/
def P11027750765870799905.Spec : Prop :=
  ∀ n, (P11027750765870799905.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P1391361122516545851

`lt[0, A290825(n)]`
-/

namespace A032924.P1391361122516545851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032924.P1391361122516545851

namespace A032924

/-- `lt[0, A290825(n)]` -/
def P1391361122516545851.Spec : Prop :=
  ∀ n, (P1391361122516545851.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P706496267040505545

`lt[0, A309953(n)]`
-/

namespace A032924.P706496267040505545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032924.P706496267040505545

namespace A032924

/-- `lt[0, A309953(n)]` -/
def P706496267040505545.Spec : Prop :=
  ∀ n, (P706496267040505545.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P6694480259431470178

`lt[n, 2*A038574(n)]`
-/

namespace A032924.P6694480259431470178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032924.P6694480259431470178

namespace A032924

/-- `lt[n, 2*A038574(n)]` -/
def P6694480259431470178.Spec : Prop :=
  ∀ n, (P6694480259431470178.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P13948880455346026501

`eq[1, A054390(n+1)]+1`
-/

namespace A032924.P13948880455346026501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A032924.P13948880455346026501

namespace A032924

/-- `eq[1, A054390(n+1)]+1` -/
def P13948880455346026501.Spec : Prop :=
  ∀ n, (P13948880455346026501.a n : ℤ) = A032924 (n + 1)

end A032924

/-! ## A032924.P7165417868966508835

`A023443(A153775(n+2))`
-/

namespace A032924.P7165417868966508835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153775 (n + 2)).toNat

end

end A032924.P7165417868966508835

namespace A032924

/-- `A023443(A153775(n+2))` -/
def P7165417868966508835.Spec : Prop :=
  ∀ n, P7165417868966508835.a n = A032924 (n + 1)

end A032924

/-! ## A032924.P7546977915316953605

`eq[1, A290251(A289831(n))]`
-/

namespace A032924.P7546977915316953605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032924.P7546977915316953605

namespace A032924

/-- `eq[1, A290251(A289831(n))]` -/
def P7546977915316953605.Spec : Prop :=
  ∀ n, (P7546977915316953605.a n : ℤ) = A032924 (n + 1)

end A032924

/-!
# A032925: Numbers whose set of base-4 digits is a subset of {1,2}.

The programs for A032925, the canonical program `A032925.P17103236497457502139` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032925 has offset 1).

The definition of A032925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032925.P17103236497457502139

`∑[A115716(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A032925

/-- `∑[A115716(n)]` -/
def P17103236497457502139.Spec : Prop :=
  ∀ n, P17103236497457502139.a n = A032925 (n + 1)

theorem P17103236497457502139.correct : P17103236497457502139.Spec := by
  intro n
  simp only [A032925, Nat.add_sub_cancel]

end A032925

/-! ## A032925.P13637867549438072925

`∑[A276390(A142150(n))]`
-/

namespace A032925.P13637867549438072925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276390 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P13637867549438072925

namespace A032925

/-- `∑[A276390(A142150(n))]` -/
def P13637867549438072925.Spec : Prop :=
  ∀ n, P13637867549438072925.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P9402163406007928065

`∑[A008747(A135521(n+1))]`
-/

namespace A032925.P9402163406007928065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 (A135521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P9402163406007928065

namespace A032925

/-- `∑[A008747(A135521(n+1))]` -/
def P9402163406007928065.Spec : Prop :=
  ∀ n, P9402163406007928065.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P9473933605999371751

`∑[A048702(A135517(n+1))]`
-/

namespace A032925.P9473933605999371751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (A135517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P9473933605999371751

namespace A032925

/-- `∑[A048702(A135517(n+1))]` -/
def P9473933605999371751.Spec : Prop :=
  ∀ n, P9473933605999371751.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P17800018247564335254

`∑[A276391(A054429(n+1))]`
-/

namespace A032925.P17800018247564335254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P17800018247564335254

namespace A032925

/-- `∑[A276391(A054429(n+1))]` -/
def P17800018247564335254.Spec : Prop :=
  ∀ n, P17800018247564335254.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P7455823025344288291

`∑[A276391(A062050(n+1))]`
-/

namespace A032925.P7455823025344288291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A062050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P7455823025344288291

namespace A032925

/-- `∑[A276391(A062050(n+1))]` -/
def P7455823025344288291.Spec : Prop :=
  ∀ n, P7455823025344288291.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P3271687008003290624

`∑[A276391(A162751(n+1))]`
-/

namespace A032925.P3271687008003290624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A162751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P3271687008003290624

namespace A032925

/-- `∑[A276391(A162751(n+1))]` -/
def P3271687008003290624.Spec : Prop :=
  ∀ n, P3271687008003290624.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P17763562994264592092

`∑[A007583(A091090(n+1)-1)]`
-/

namespace A032925.P17763562994264592092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A091090 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P17763562994264592092

namespace A032925

/-- `∑[A007583(A091090(n+1)-1)]` -/
def P17763562994264592092.Spec : Prop :=
  ∀ n, P17763562994264592092.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P7533406593042841043

`floor(A147992(n+2)/2)`
-/

namespace A032925.P7533406593042841043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147992 (n + 2) : ℚ) / 2⌋

end

end A032925.P7533406593042841043

namespace A032925

/-- `floor(A147992(n+2)/2)` -/
def P7533406593042841043.Spec : Prop :=
  ∀ n, P7533406593042841043.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P8428972132094649342

`∑[Δ[A147992(n+1)]/2]`
-/

namespace A032925.P8428972132094649342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147992 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P8428972132094649342

namespace A032925

/-- `∑[Δ[A147992(n+1)]/2]` -/
def P8428972132094649342.Spec : Prop :=
  ∀ n, P8428972132094649342.a n = (A032925 (n + 1) : ℚ)

end A032925

/-! ## A032925.P18399716623847612451

`∑[A276391(A153152(n+1))]`
-/

namespace A032925.P18399716623847612451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A153152 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P18399716623847612451

namespace A032925

/-- `∑[A276391(A153152(n+1))]` -/
def P18399716623847612451.Spec : Prop :=
  ∀ n, P18399716623847612451.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P15704122770381889801

`∑[A276391(A154437(n+1))]`
-/

namespace A032925.P15704122770381889801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A154437 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P15704122770381889801

namespace A032925

/-- `∑[A276391(A154437(n+1))]` -/
def P15704122770381889801.Spec : Prop :=
  ∀ n, P15704122770381889801.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P3803116976735572200

`∑[A276391(A009195(n+2))]`
-/

namespace A032925.P3803116976735572200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A009195 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P3803116976735572200

namespace A032925

/-- `∑[A276391(A009195(n+2))]` -/
def P3803116976735572200.Spec : Prop :=
  ∀ n, P3803116976735572200.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P1552829986718084260

`∑[A276391(A048671(n+2))]`
-/

namespace A032925.P1552829986718084260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A048671 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P1552829986718084260

namespace A032925

/-- `∑[A276391(A048671(n+2))]` -/
def P1552829986718084260.Spec : Prop :=
  ∀ n, P1552829986718084260.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P1899663503199704385

`∑[A276391(A052126(n+2))]`
-/

namespace A032925.P1899663503199704385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A052126 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P1899663503199704385

namespace A032925

/-- `∑[A276391(A052126(n+2))]` -/
def P1899663503199704385.Spec : Prop :=
  ∀ n, P1899663503199704385.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P10686484896727642379

`∑[A276391(A094521(n+2))]`
-/

namespace A032925.P10686484896727642379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A094521 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P10686484896727642379

namespace A032925

/-- `∑[A276391(A094521(n+2))]` -/
def P10686484896727642379.Spec : Prop :=
  ∀ n, P10686484896727642379.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P16145552313072528371

`∑[A276391(A253550(n+2))]`
-/

namespace A032925.P16145552313072528371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A253550 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P16145552313072528371

namespace A032925

/-- `∑[A276391(A253550(n+2))]` -/
def P16145552313072528371.Spec : Prop :=
  ∀ n, P16145552313072528371.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P18156581549960546790

`xor(A000035(2*n+1), A147992(n+2))/2`
-/

namespace A032925.P18156581549960546790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A000035 (2 * n + 1)) (A147992 (n + 2)) : ℚ) / 2

end

end A032925.P18156581549960546790

namespace A032925

/-- `xor(A000035(2*n+1), A147992(n+2))/2` -/
def P18156581549960546790.Spec : Prop :=
  ∀ n, P18156581549960546790.a n = (A032925 (n + 1) : ℚ)

end A032925

/-! ## A032925.P14093459471669504086

`∑[A276391(A304588(n+2))]`
-/

namespace A032925.P14093459471669504086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A304588 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P14093459471669504086

namespace A032925

/-- `∑[A276391(A304588(n+2))]` -/
def P14093459471669504086.Spec : Prop :=
  ∀ n, P14093459471669504086.a n = A032925 (n + 1)

end A032925

/-! ## A032925.P1082107105236426037

`∑[A276391(A153153(n+1))]`
-/

namespace A032925.P1082107105236426037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A153153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032925.P1082107105236426037

namespace A032925

/-- `∑[A276391(A153153(n+1))]` -/
def P1082107105236426037.Spec : Prop :=
  ∀ n, P1082107105236426037.a n = A032925 (n + 1)

end A032925

/-!
# A032926: Numbers whose set of base-5 digits is {1,2}.

The programs for A032926, there is no canonical definition to state claims against.
-/

/-! ## A032926.P16830470437473992992

`2*A032805(n+1)-A032829(n+1)`
-/

namespace A032926.P16830470437473992992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032805 (n + 1) - A032829 (n + 1)

end

end A032926.P16830470437473992992

/-! ## A032926.P17842472969696210976

`2*A032912(n+1)-A032817(n+1)`
-/

namespace A032926.P17842472969696210976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032912 (n + 1) - A032817 (n + 1)

end

end A032926.P17842472969696210976

/-! ## A032926.P7964641697590955262

`(A032912(n+1)+A032805(n+1))/3`
-/

namespace A032926.P7964641697590955262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032912 (n + 1) + A032805 (n + 1) : ℚ) / 3

end

end A032926.P7964641697590955262

/-! ## A032926.P12253587785683892703

`(A032829(n+1)+A032817(n+1))/4`
-/

namespace A032926.P12253587785683892703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032829 (n + 1) + A032817 (n + 1) : ℚ) / 4

end

end A032926.P12253587785683892703

/-! ## A032926.P6278448709480739093

`A032829(A346306(n+1))-A032912(A346306(n+1))`
-/

namespace A032926.P6278448709480739093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032829 (A346306 (n + 1)).toNat - A032912 (A346306 (n + 1)).toNat

end

end A032926.P6278448709480739093

/-! ## A032926.P8550501307338348936

`A037453(A032924(n+1))`
-/

namespace A032926.P8550501307338348936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A032924 (n + 1)).toNat

end

end A032926.P8550501307338348936

/-! ## A032926.P14936966431816155549

`∩[A037453(n+1), A039568(n+1)]`
-/

namespace A032926.P14936966431816155549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P14936966431816155549

/-! ## A032926.P13485067492543773527

`∩[A039568(n+1), A050607(n+1)]`
-/

namespace A032926.P13485067492543773527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P13485067492543773527

/-! ## A032926.P15778810393715320924

`∩[A031470(n+1), A037453(n+1)]`
-/

namespace A032926.P15778810393715320924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P15778810393715320924

/-! ## A032926.P2194899666219213587

`∩[A037453(n+1), A039009(n+1)]`
-/

namespace A032926.P2194899666219213587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P2194899666219213587

/-! ## A032926.P17138446257614952151

`A020655(∑[A115716(n)])`
-/

namespace A032926.P17138446257614952151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032926.P17138446257614952151

/-! ## A032926.P2709373571772679051

`A020655(A032925(n+1))`
-/

namespace A032926.P2709373571772679051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A032925 (n + 1)).toNat

end

end A032926.P2709373571772679051

/-! ## A032926.P17498662513858708011

`A020654(A032925(n+1)+1)`
-/

namespace A032926.P17498662513858708011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A032925 (n + 1) + 1).toNat

end

end A032926.P17498662513858708011

/-! ## A032926.P10959460866774565382

`A023733(A032925(n+1)+1)`
-/

namespace A032926.P10959460866774565382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A032925 (n + 1) + 1).toNat

end

end A032926.P10959460866774565382

/-! ## A032926.P17870564531074316597

`∩[A020654(n+1), A039568(n+1)]`
-/

namespace A032926.P17870564531074316597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P17870564531074316597

/-! ## A032926.P8271123907375668193

`∩[A023721(n+1), A037453(n+1)]`
-/

namespace A032926.P8271123907375668193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P8271123907375668193

/-! ## A032926.P13505559998731816360

`∩[A023721(n+1), A039568(n+1)]`
-/

namespace A032926.P13505559998731816360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P13505559998731816360

/-! ## A032926.P17076633349231677128

`∩[A023733(n+1), A039568(n+1)]`
-/

namespace A032926.P17076633349231677128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P17076633349231677128

/-! ## A032926.P3159490239485426012

`∩[A037459(n+1), A039568(n+1)]`
-/

namespace A032926.P3159490239485426012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032926.P3159490239485426012

/-! ## A032926.P5039939809184616993

`A023721(A032925(n+1)%A032804(n+1))`
-/

namespace A032926.P5039939809184616993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (Int.tmod (A032925 (n + 1)) (A032804 (n + 1))).toNat

end

end A032926.P5039939809184616993

/-!
# A032927: Numbers whose set of base-6 digits is {1,2}.

The programs for A032927, the canonical program `A032927.P16396062760344607680` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032927 has offset 1).

The definition of A032927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032927.P16396062760344607680

`∑[A147993(A135517(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A032927

/-- `∑[A147993(A135517(n+1))]` -/
def P16396062760344607680.Spec : Prop :=
  ∀ n, P16396062760344607680.a n = A032927 (n + 1)

theorem P16396062760344607680.correct : P16396062760344607680.Spec := by
  intro n
  simp only [A032927, Nat.add_sub_cancel]

end A032927

/-! ## A032927.P3981501927932679309

`2*A032806(n+1)-A032830(n+1)`
-/

namespace A032927.P3981501927932679309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032806 (n + 1) - A032830 (n + 1)

end

end A032927.P3981501927932679309

namespace A032927

/-- `2*A032806(n+1)-A032830(n+1)` -/
def P3981501927932679309.Spec : Prop :=
  ∀ n, P3981501927932679309.a n = A032927 (n + 1)

theorem P3981501927932679309.correct : P3981501927932679309.Spec := by
  intro n
  simp only [A032927, Nat.add_sub_cancel, A032927.P3981501927932679309.a, A032927.P16396062760344607680.f1, A032927.P16396062760344607680.a, A032806, A032806.P6530555208973634118.a, A032830, A032830.P14599917088282478471.a, A135517, A135517.P346222672956229891.a, A147993, A147993.P9268513682852722789.a, A010673, A010673.P14010432101562150871.a, A065033, A065033.P13150710762287634520.a, A091090, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032927

/-! ## A032927.P17930253312672462151

`2*A032913(n+1)-A032818(n+1)`
-/

namespace A032927.P17930253312672462151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032913 (n + 1) - A032818 (n + 1)

end

end A032927.P17930253312672462151

namespace A032927

/-- `2*A032913(n+1)-A032818(n+1)` -/
def P17930253312672462151.Spec : Prop :=
  ∀ n, P17930253312672462151.a n = A032927 (n + 1)

theorem P17930253312672462151.correct : P17930253312672462151.Spec := by
  intro n
  simp only [A032927, Nat.add_sub_cancel, A032927.P17930253312672462151.a, A032927.P16396062760344607680.f1, A032927.P16396062760344607680.a, A032818, A032818.P11687481509006464414.a, A032913, A032913.P14296521150570778594.a, A135517, A135517.P346222672956229891.a, A147993, A147993.P9268513682852722789.a, A010673, A010673.P14010432101562150871.a, A032806, A032806.P6530555208973634118.a, A065033, A065033.P13150710762287634520.a, A091090, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032927

/-! ## A032927.P2459923515613882333

`(A032913(n+1)+A032806(n+1))/3`
-/

namespace A032927.P2459923515613882333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032913 (n + 1) + A032806 (n + 1) : ℚ) / 3

end

end A032927.P2459923515613882333

namespace A032927

/-- `(A032913(n+1)+A032806(n+1))/3` -/
def P2459923515613882333.Spec : Prop :=
  ∀ n, P2459923515613882333.a n = (A032927 (n + 1) : ℚ)

theorem P2459923515613882333.correct : P2459923515613882333.Spec := by
  intro n
  simp only [A032927, Nat.add_sub_cancel, A032927.P2459923515613882333.a, A032927.P16396062760344607680.f1, A032927.P16396062760344607680.a, A032806, A032806.P6530555208973634118.a, A032913, A032913.P14296521150570778594.a, A135517, A135517.P346222672956229891.a, A147993, A147993.P9268513682852722789.a, A010673, A010673.P14010432101562150871.a, A065033, A065033.P13150710762287634520.a, A091090, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032927

/-! ## A032927.P1200415928587428304

`(A032830(n+1)+A032818(n+1))/4`
-/

namespace A032927.P1200415928587428304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032830 (n + 1) + A032818 (n + 1) : ℚ) / 4

end

end A032927.P1200415928587428304

namespace A032927

/-- `(A032830(n+1)+A032818(n+1))/4` -/
def P1200415928587428304.Spec : Prop :=
  ∀ n, P1200415928587428304.a n = (A032927 (n + 1) : ℚ)

theorem P1200415928587428304.correct : P1200415928587428304.Spec := by
  intro n
  simp only [A032927, Nat.add_sub_cancel, A032927.P1200415928587428304.a, A032927.P16396062760344607680.f1, A032927.P16396062760344607680.a, A032818, A032818.P11687481509006464414.a, A032830, A032830.P14599917088282478471.a, A135517, A135517.P346222672956229891.a, A147993, A147993.P9268513682852722789.a, A010673, A010673.P14010432101562150871.a, A032806, A032806.P6530555208973634118.a, A065033, A065033.P13150710762287634520.a, A091090, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032927

/-! ## A032927.P4520884257103519413

`A037454(A032924(n+1))`
-/

namespace A032927.P4520884257103519413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A032924 (n + 1)).toNat

end

end A032927.P4520884257103519413

namespace A032927

/-- `A037454(A032924(n+1))` -/
def P4520884257103519413.Spec : Prop :=
  ∀ n, P4520884257103519413.a n = A032927 (n + 1)

end A032927

/-! ## A032927.P4170607909248510099

`A037454(eq[0, A077267(n)])`
-/

namespace A032927.P4170607909248510099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032927.P4170607909248510099

namespace A032927

/-- `A037454(eq[0, A077267(n)])` -/
def P4170607909248510099.Spec : Prop :=
  ∀ n, P4170607909248510099.a n = A032927 (n + 1)

end A032927

/-! ## A032927.P8682718770810275162

`A037454(eq[0, A212193(n)])`
-/

namespace A032927.P8682718770810275162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032927.P8682718770810275162

namespace A032927

/-- `A037454(eq[0, A212193(n)])` -/
def P8682718770810275162.Spec : Prop :=
  ∀ n, P8682718770810275162.a n = A032927 (n + 1)

end A032927

/-! ## A032927.P4523578351294673160

`A037454(eq[A171960(n), A244042(n)])`
-/

namespace A032927.P4523578351294673160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032927.P4523578351294673160

namespace A032927

/-- `A037454(eq[A171960(n), A244042(n)])` -/
def P4523578351294673160.Spec : Prop :=
  ∀ n, P4523578351294673160.a n = A032927 (n + 1)

end A032927

/-! ## A032927.P11159233311452961087

`A037454(record[A348706(n+1)])`
-/

namespace A032927.P11159233311452961087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032927.P11159233311452961087

namespace A032927

/-- `A037454(record[A348706(n+1)])` -/
def P11159233311452961087.Spec : Prop :=
  ∀ n, P11159233311452961087.a n = A032927 (n + 1)

end A032927

/-! ## A032927.P9357366456612062938

`∩[A039580(n+1), A037454(n)]`
-/

namespace A032927.P9357366456612062938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P9357366456612062938

namespace A032927

/-- `∩[A039580(n+1), A037454(n)]` -/
def P9357366456612062938.Spec : Prop :=
  ∀ n, (P9357366456612062938.a n : ℤ) = A032927 (n + 1)

end A032927

/-! ## A032927.P9019584772319256818

`∩[A039581(n+1), A037454(n)]`
-/

namespace A032927.P9019584772319256818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P9019584772319256818

namespace A032927

/-- `∩[A039581(n+1), A037454(n)]` -/
def P9019584772319256818.Spec : Prop :=
  ∀ n, (P9019584772319256818.a n : ℤ) = A032927 (n + 1)

end A032927

/-! ## A032927.P12324507847817664836

`∩[A039582(n+1), A037454(n)]`
-/

namespace A032927.P12324507847817664836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P12324507847817664836

namespace A032927

/-- `∩[A039582(n+1), A037454(n)]` -/
def P12324507847817664836.Spec : Prop :=
  ∀ n, (P12324507847817664836.a n : ℤ) = A032927 (n + 1)

end A032927

/-! ## A032927.P5107528365274632596

`A037460(A032925(n+1))`
-/

namespace A032927.P5107528365274632596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A032925 (n + 1)).toNat

end

end A032927.P5107528365274632596

namespace A032927

/-- `A037460(A032925(n+1))` -/
def P5107528365274632596.Spec : Prop :=
  ∀ n, P5107528365274632596.a n = A032927 (n + 1)

end A032927

/-! ## A032927.P7310734421396552995

`∩[A039580(n+1), A037460(n)]`
-/

namespace A032927.P7310734421396552995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P7310734421396552995

namespace A032927

/-- `∩[A039580(n+1), A037460(n)]` -/
def P7310734421396552995.Spec : Prop :=
  ∀ n, (P7310734421396552995.a n : ℤ) = A032927 (n + 1)

end A032927

/-! ## A032927.P13741187714502856448

`∩[A039581(n+1), A037460(n)]`
-/

namespace A032927.P13741187714502856448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P13741187714502856448

namespace A032927

/-- `∩[A039581(n+1), A037460(n)]` -/
def P13741187714502856448.Spec : Prop :=
  ∀ n, (P13741187714502856448.a n : ℤ) = A032927 (n + 1)

end A032927

/-! ## A032927.P15423933666302928123

`A037465(A032926(n+1))`
-/

namespace A032927.P15423933666302928123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A032926 (n + 1)).toNat

end

end A032927.P15423933666302928123

namespace A032927

/-- `A037465(A032926(n+1))` -/
def P15423933666302928123.Spec : Prop :=
  ∀ n, P15423933666302928123.a n = A032927 (n + 1)

end A032927

/-! ## A032927.P14259538300398599957

`∩[A031477(n+1), A037454(n)]`
-/

namespace A032927.P14259538300398599957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P14259538300398599957

namespace A032927

/-- `∩[A031477(n+1), A037454(n)]` -/
def P14259538300398599957.Spec : Prop :=
  ∀ n, (P14259538300398599957.a n : ℤ) = A032927 (n + 1)

end A032927

/-! ## A032927.P16732964781032907471

`∩[A039018(n+1), A037454(n)]`
-/

namespace A032927.P16732964781032907471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P16732964781032907471

namespace A032927

/-- `∩[A039018(n+1), A037454(n)]` -/
def P16732964781032907471.Spec : Prop :=
  ∀ n, (P16732964781032907471.a n : ℤ) = A032927 (n + 1)

end A032927

/-! ## A032927.P818937718671253027

`∩[A039019(n+1), A037454(n)]`
-/

namespace A032927.P818937718671253027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032927.P818937718671253027

namespace A032927

/-- `∩[A039019(n+1), A037454(n)]` -/
def P818937718671253027.Spec : Prop :=
  ∀ n, (P818937718671253027.a n : ℤ) = A032927 (n + 1)

end A032927

/-!
# A032928: Numbers whose set of base-7 digits is {1,2}.

The programs for A032928, there is no canonical definition to state claims against.
-/

/-! ## A032928.P5670289853566567745

`2*A032807(n+1)-A032831(n+1)`
-/

namespace A032928.P5670289853566567745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032807 (n + 1) - A032831 (n + 1)

end

end A032928.P5670289853566567745

/-! ## A032928.P15003283901146412374

`2*A032914(n+1)-A032819(n+1)`
-/

namespace A032928.P15003283901146412374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032914 (n + 1) - A032819 (n + 1)

end

end A032928.P15003283901146412374

/-! ## A032928.P11665365968530811845

`(A032831(n+1)+A032819(n+1))/4`
-/

namespace A032928.P11665365968530811845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032831 (n + 1) + A032819 (n + 1) : ℚ) / 4

end

end A032928.P11665365968530811845

/-! ## A032928.P6847805649284542169

`A032831(A346306(n+1))-A032914(A346306(n+1))`
-/

namespace A032928.P6847805649284542169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032831 (A346306 (n + 1)).toNat - A032914 (A346306 (n + 1)).toNat

end

end A032928.P6847805649284542169

/-! ## A032928.P14104872508555988081

`A037455(A032924(n+1))`
-/

namespace A032928.P14104872508555988081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A032924 (n + 1)).toNat

end

end A032928.P14104872508555988081

/-! ## A032928.P13640318255757955007

`A037455(eq[0, A077267(n)])`
-/

namespace A032928.P13640318255757955007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032928.P13640318255757955007

/-! ## A032928.P7298530379143275134

`A037455(eq[0, A212193(n)])`
-/

namespace A032928.P7298530379143275134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032928.P7298530379143275134

/-! ## A032928.P15852150804626958034

`A037455(lt[A077267(n), 1])`
-/

namespace A032928.P15852150804626958034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A032928.P15852150804626958034

/-! ## A032928.P11621527279009800536

`A037455(eq[A171960(n), A244042(n)])`
-/

namespace A032928.P11621527279009800536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032928.P11621527279009800536

/-! ## A032928.P15436021113710430466

`A037455(eq[A117592(n), A309953(n)])`
-/

namespace A032928.P15436021113710430466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032928.P15436021113710430466

/-! ## A032928.P10474955795582472620

`A037455(record[A348706(n+1)])`
-/

namespace A032928.P10474955795582472620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032928.P10474955795582472620

/-! ## A032928.P9884358692044048594

`A037461(A032925(n+1))`
-/

namespace A032928.P9884358692044048594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A032925 (n + 1)).toNat

end

end A032928.P9884358692044048594

/-! ## A032928.P18255436506979976461

`A037466(A032926(n+1))`
-/

namespace A032928.P18255436506979976461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A032926 (n + 1)).toNat

end

end A032928.P18255436506979976461

/-!
# A032929: Numbers whose set of base-8 digits is {1,2}.

The programs for A032929, there is no canonical definition to state claims against.
-/

/-! ## A032929.P17879137307517736465

`2*A032808(n+1)-A032832(n+1)`
-/

namespace A032929.P17879137307517736465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032808 (n + 1) - A032832 (n + 1)

end

end A032929.P17879137307517736465

/-! ## A032929.P5877151614208997842

`2*A032915(n+1)-A032820(n+1)`
-/

namespace A032929.P5877151614208997842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032915 (n + 1) - A032820 (n + 1)

end

end A032929.P5877151614208997842

/-! ## A032929.P12465919692826166587

`(A032915(n+1)+A032808(n+1))/3`
-/

namespace A032929.P12465919692826166587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032915 (n + 1) + A032808 (n + 1) : ℚ) / 3

end

end A032929.P12465919692826166587

/-! ## A032929.P11320563816705872212

`(A032832(n+1)+A032820(n+1))/4`
-/

namespace A032929.P11320563816705872212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032832 (n + 1) + A032820 (n + 1) : ℚ) / 4

end

end A032929.P11320563816705872212

/-! ## A032929.P8127123221342548713

`xor(2*A032915(n+1), A032832(n+1))`
-/

namespace A032929.P8127123221342548713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A032915 (n + 1)) (A032832 (n + 1))

end

end A032929.P8127123221342548713

/-! ## A032929.P17628377275684637347

`A037456(A032924(n+1))`
-/

namespace A032929.P17628377275684637347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A032924 (n + 1)).toNat

end

end A032929.P17628377275684637347

/-! ## A032929.P3214979240918110713

`A037456(eq[0, A077267(n)])`
-/

namespace A032929.P3214979240918110713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032929.P3214979240918110713

/-! ## A032929.P7055692465147220937

`A048678(∑[A115716(n)])`
-/

namespace A032929.P7055692465147220937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032929.P7055692465147220937

/-! ## A032929.P4845998860214726746

`A308496(∑[A115716(n)])`
-/

namespace A032929.P4845998860214726746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308496 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032929.P4845998860214726746

/-! ## A032929.P17787114395225148766

`A037462(A032925(n+1))`
-/

namespace A032929.P17787114395225148766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A032925 (n + 1)).toNat

end

end A032929.P17787114395225148766

/-! ## A032929.P9973411610155676838

`∩[A308496(n+1), A037456(n)]`
-/

namespace A032929.P9973411610155676838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032929.P9973411610155676838

/-! ## A032929.P2157080221925039252

`∩[A308496(n+1), A037462(n)]`
-/

namespace A032929.P2157080221925039252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032929.P2157080221925039252

/-! ## A032929.P10813452371126902561

`A037467(A032926(n+1))`
-/

namespace A032929.P10813452371126902561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A032926 (n + 1)).toNat

end

end A032929.P10813452371126902561

/-! ## A032929.P6948414679043322649

`A308496(A032804(n+1))/2`
-/

namespace A032929.P6948414679043322649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308496 (A032804 (n + 1)).toNat : ℚ) / 2

end

end A032929.P6948414679043322649

/-!
# A032930: Numbers whose set of base-9 digits is {1,2}.

The programs for A032930, there is no canonical definition to state claims against.
-/

/-! ## A032930.P3029340191547060158

`2*A032809(n+1)-A032833(n+1)`
-/

namespace A032930.P3029340191547060158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032809 (n + 1) - A032833 (n + 1)

end

end A032930.P3029340191547060158

/-! ## A032930.P12326700430743583477

`2*A032916(n+1)-A032821(n+1)`
-/

namespace A032930.P12326700430743583477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032916 (n + 1) - A032821 (n + 1)

end

end A032930.P12326700430743583477

/-! ## A032930.P13335026881462610373

`(A032916(n+1)+A032809(n+1))/3`
-/

namespace A032930.P13335026881462610373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032916 (n + 1) + A032809 (n + 1) : ℚ) / 3

end

end A032930.P13335026881462610373

/-! ## A032930.P1379916240250793840

`(A032833(n+1)+A032821(n+1))/4`
-/

namespace A032930.P1379916240250793840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032833 (n + 1) + A032821 (n + 1) : ℚ) / 4

end

end A032930.P1379916240250793840

/-! ## A032930.P15348962659186388239

`A037314(A032924(n+1))`
-/

namespace A032930.P15348962659186388239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A032924 (n + 1)).toNat

end

end A032930.P15348962659186388239

/-! ## A032930.P12483266133521479054

`∩[A032874(n+1), A037314(n)]`
-/

namespace A032930.P12483266133521479054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032930.P12483266133521479054

/-! ## A032930.P12027280025460226595

`∩[A032874(n+1), A032938(n+1)]`
-/

namespace A032930.P12027280025460226595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032930.P12027280025460226595

/-! ## A032930.P598708868390727738

`∩[A031941(n+1), A037314(n)]`
-/

namespace A032930.P598708868390727738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032930.P598708868390727738

/-! ## A032930.P15647106132765343497

`∩[A032874(n+1), A328727(n+1)]`
-/

namespace A032930.P15647106132765343497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032930.P15647106132765343497

/-! ## A032930.P11043520288000725085

`A037463(∑[A115716(n)])`
-/

namespace A032930.P11043520288000725085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032930.P11043520288000725085

/-! ## A032930.P3772827391990506942

`A037463(A032925(n+1))`
-/

namespace A032930.P3772827391990506942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A032925 (n + 1)).toNat

end

end A032930.P3772827391990506942

/-! ## A032930.P1686165676807335425

`∩[A032874(n+1), A037463(n)]`
-/

namespace A032930.P1686165676807335425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032930.P1686165676807335425

/-! ## A032930.P3185607078590021171

`A037468(A032926(n+1))`
-/

namespace A032930.P3185607078590021171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A032926 (n + 1)).toNat

end

end A032930.P3185607078590021171

/-! ## A032930.P6542838028205529771

`A147991(A032804(n+1))/2`
-/

namespace A032930.P6542838028205529771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147991 (A032804 (n + 1)).toNat : ℚ) / 2

end

end A032930.P6542838028205529771

/-! ## A032930.P16609934390584284337

`∩[A032874(n+1), A037468(n)]`
-/

namespace A032930.P16609934390584284337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032930.P16609934390584284337

/-! ## A032930.P287262917501466297

`∩[A032874(n+1), A242407(n+1)]`
-/

namespace A032930.P287262917501466297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032930.P287262917501466297

/-!
# A032931: Numbers whose set of base-11 digits is {1,2}.

The programs for A032931, there is no canonical definition to state claims against.
-/

/-! ## A032931.P10521635155797078850

`2*A032811(n+1)-A032835(n+1)`
-/

namespace A032931.P10521635155797078850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032811 (n + 1) - A032835 (n + 1)

end

end A032931.P10521635155797078850

/-! ## A032931.P11873491772842939728

`2*A032918(n+1)-A032823(n+1)`
-/

namespace A032931.P11873491772842939728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032918 (n + 1) - A032823 (n + 1)

end

end A032931.P11873491772842939728

/-! ## A032931.P11631667068759537900

`(A032918(n+1)+A032811(n+1))/3`
-/

namespace A032931.P11631667068759537900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032918 (n + 1) + A032811 (n + 1) : ℚ) / 3

end

end A032931.P11631667068759537900

/-! ## A032931.P18241600264504931143

`(A032835(n+1)+A032823(n+1))/4`
-/

namespace A032931.P18241600264504931143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032835 (n + 1) + A032823 (n + 1) : ℚ) / 4

end

end A032931.P18241600264504931143

/-! ## A032931.P778999928937055836

`(A020639(2*(n+1))*A032811(n+1))%A032835(n+1)`
-/

namespace A032931.P778999928937055836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (2 * (n + 1)) * A032811 (n + 1)) (A032835 (n + 1))

end

end A032931.P778999928937055836

/-! ## A032931.P888715483191598587

`2*A033036(A032926(n+1))-A032823(n+1)`
-/

namespace A032931.P888715483191598587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033036 (A032926 (n + 1)).toNat - A032823 (n + 1)

end

end A032931.P888715483191598587

/-!
# A032932: Numbers whose set of base-12 digits is {1,2}.

The programs for A032932, there is no canonical definition to state claims against.
-/

/-! ## A032932.P17573696394568258826

`2*A032812(n+1)-A032836(n+1)`
-/

namespace A032932.P17573696394568258826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032812 (n + 1) - A032836 (n + 1)

end

end A032932.P17573696394568258826

/-! ## A032932.P12305091349465752934

`2*A032919(n+1)-A032824(n+1)`
-/

namespace A032932.P12305091349465752934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032919 (n + 1) - A032824 (n + 1)

end

end A032932.P12305091349465752934

/-! ## A032932.P1505104647594419385

`(A032919(n+1)+A032812(n+1))/3`
-/

namespace A032932.P1505104647594419385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032919 (n + 1) + A032812 (n + 1) : ℚ) / 3

end

end A032932.P1505104647594419385

/-! ## A032932.P16034362867278370870

`(A032836(n+1)+A032824(n+1))/4`
-/

namespace A032932.P16034362867278370870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032836 (n + 1) + A032824 (n + 1) : ℚ) / 4

end

end A032932.P16034362867278370870

/-! ## A032932.P9625224219430916481

`(2*A032812(A000027(n+1)))%A032836(n+1)`
-/

namespace A032932.P9625224219430916481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A032812 (A000027 (n + 1)).toNat) (A032836 (n + 1))

end

end A032932.P9625224219430916481

/-!
# A032933: Numbers whose set of base-13 digits is {1,2}.

The programs for A032933, there is no canonical definition to state claims against.
-/

/-! ## A032933.P10363253226792932133

`2*A032813(n+1)-A032837(n+1)`
-/

namespace A032933.P10363253226792932133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032813 (n + 1) - A032837 (n + 1)

end

end A032933.P10363253226792932133

/-! ## A032933.P656352198669540956

`2*A032920(n+1)-A032825(n+1)`
-/

namespace A032933.P656352198669540956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032920 (n + 1) - A032825 (n + 1)

end

end A032933.P656352198669540956

/-! ## A032933.P7785998122557127684

`(A032920(n+1)+A032813(n+1))/3`
-/

namespace A032933.P7785998122557127684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032920 (n + 1) + A032813 (n + 1) : ℚ) / 3

end

end A032933.P7785998122557127684

/-! ## A032933.P6295563241331689193

`(A032837(n+1)+A032825(n+1))/4`
-/

namespace A032933.P6295563241331689193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032837 (n + 1) + A032825 (n + 1) : ℚ) / 4

end

end A032933.P6295563241331689193

/-! ## A032933.P5958321172073613062

`A094823(A007931(n+1))`
-/

namespace A032933.P5958321172073613062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A007931 (n + 1)).toNat

end

end A032933.P5958321172073613062

/-!
# A032934: Numbers whose set of base-14 digits is {1,2}.

The programs for A032934, there is no canonical definition to state claims against.
-/

/-! ## A032934.P15166603636847744527

`2*A032814(n+1)-A032838(n+1)`
-/

namespace A032934.P15166603636847744527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032814 (n + 1) - A032838 (n + 1)

end

end A032934.P15166603636847744527

/-! ## A032934.P16322328514076410303

`2*A032921(n+1)-A032826(n+1)`
-/

namespace A032934.P16322328514076410303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032921 (n + 1) - A032826 (n + 1)

end

end A032934.P16322328514076410303

/-! ## A032934.P14025858266932735419

`(A032921(n+1)+A032814(n+1))/3`
-/

namespace A032934.P14025858266932735419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032921 (n + 1) + A032814 (n + 1) : ℚ) / 3

end

end A032934.P14025858266932735419

/-! ## A032934.P7127963096644201957

`(A032838(n+1)+A032826(n+1))/4`
-/

namespace A032934.P7127963096644201957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032838 (n + 1) + A032826 (n + 1) : ℚ) / 4

end

end A032934.P7127963096644201957

/-! ## A032934.P18347825593919432990

`A004277(A032814(n+1))-A032838(n+1)`
-/

namespace A032934.P18347825593919432990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A032814 (n + 1)).toNat - A032838 (n + 1)

end

end A032934.P18347825593919432990

/-!
# A032935: Numbers whose set of base-15 digits is {1,2}.

The programs for A032935, there is no canonical definition to state claims against.
-/

/-! ## A032935.P4952780557916232608

`2*A032815(n+1)-A032839(n+1)`
-/

namespace A032935.P4952780557916232608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032815 (n + 1) - A032839 (n + 1)

end

end A032935.P4952780557916232608

/-! ## A032935.P12800090235485700851

`2*A032922(n+1)-A032827(n+1)`
-/

namespace A032935.P12800090235485700851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032922 (n + 1) - A032827 (n + 1)

end

end A032935.P12800090235485700851

/-! ## A032935.P17387424038989417728

`(A032922(n+1)+A032815(n+1))/3`
-/

namespace A032935.P17387424038989417728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032922 (n + 1) + A032815 (n + 1) : ℚ) / 3

end

end A032935.P17387424038989417728

/-! ## A032935.P11103849849188178845

`(A032839(n+1)+A032827(n+1))/4`
-/

namespace A032935.P11103849849188178845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032839 (n + 1) + A032827 (n + 1) : ℚ) / 4

end

end A032935.P11103849849188178845

/-! ## A032935.P11179897702158335145

`A032839(n+1)-A004277(A032839(n+1)-A032815(n+1))`
-/

namespace A032935.P11179897702158335145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032839 (n + 1) - A004277 (A032839 (n + 1) - A032815 (n + 1)).toNat

end

end A032935.P11179897702158335145

/-!
# A032936: Numbers whose set of base-16 digits is {1,2}.

The programs for A032936, there is no canonical definition to state claims against.
-/

/-! ## A032936.P14226052686339194618

`2*A032816(n+1)-A032840(n+1)`
-/

namespace A032936.P14226052686339194618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032816 (n + 1) - A032840 (n + 1)

end

end A032936.P14226052686339194618

/-! ## A032936.P797338661048077863

`2*A032923(n+1)-A032828(n+1)`
-/

namespace A032936.P797338661048077863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032923 (n + 1) - A032828 (n + 1)

end

end A032936.P797338661048077863

/-! ## A032936.P10307637411853977415

`(A032923(n+1)+A032816(n+1))/3`
-/

namespace A032936.P10307637411853977415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032923 (n + 1) + A032816 (n + 1) : ℚ) / 3

end

end A032936.P10307637411853977415

/-! ## A032936.P16721373030544557109

`(A032840(n+1)+A032828(n+1))/4`
-/

namespace A032936.P16721373030544557109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032840 (n + 1) + A032828 (n + 1) : ℚ) / 4

end

end A032936.P16721373030544557109

/-! ## A032936.P8246588920691168840

`and(A032816(A346306(n+1)), A032923(n+1))`
-/

namespace A032936.P8246588920691168840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032816 (A346306 (n + 1)).toNat) (A032923 (n + 1))

end

end A032936.P8246588920691168840

/-! ## A032936.P7609646002343292649

`xor(A032816(n+1), A032923(A346306(n+1)))`
-/

namespace A032936.P7609646002343292649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032816 (n + 1)) (A032923 (A346306 (n + 1)).toNat)

end

end A032936.P7609646002343292649

/-! ## A032936.P6460774201361525361

`∩[A032875(n+1), A048715(n)]`
-/

namespace A032936.P6460774201361525361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032936.P6460774201361525361

/-! ## A032936.P543633183044176248

`∩[A032875(n+1), A115813(n)]`
-/

namespace A032936.P543633183044176248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032936.P543633183044176248

/-! ## A032936.P7785427243317639736

`A048678(A032929(n+1))`
-/

namespace A032936.P7785427243317639736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A032929 (n + 1)).toNat

end

end A032936.P7785427243317639736

/-! ## A032936.P16271413715135982233

`∩[A032875(n+1), A003714(n)]`
-/

namespace A032936.P16271413715135982233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032936.P16271413715135982233

/-!
# A032937: Numbers k whose base-2 representation Sum_{i=0..m} d(i)*2^(m-i) has d(i)=0 for all odd i, excluding 0. Here m is the position of the leading bit of k.

The programs for A032937, the canonical program `A032937.P10558907271502412002` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032937 has offset 1).

The definition of A032937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032937.P10558907271502412002

`∪[A000695(n+1), A062880(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032937

/-- `∪[A000695(n+1), A062880(n+1)]` -/
def P10558907271502412002.Spec : Prop :=
  ∀ n, (P10558907271502412002.a n : ℤ) = A032937 (n + 1)

theorem P10558907271502412002.correct : P10558907271502412002.Spec := by
  intro n
  simp only [A032937, Nat.add_sub_cancel]

end A032937

/-! ## A032937.P8734472374480010430

`A126684(n+2)`
-/

namespace A032937.P8734472374480010430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (n + 2)

end

end A032937.P8734472374480010430

namespace A032937

/-- `A126684(n+2)` -/
def P8734472374480010430.Spec : Prop :=
  ∀ n, P8734472374480010430.a n = A032937 (n + 1)

end A032937

/-! ## A032937.P12943434319494126968

`∩[A331206(n+1), A105425(n)]`
-/

namespace A032937.P12943434319494126968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P12943434319494126968

namespace A032937

/-- `∩[A331206(n+1), A105425(n)]` -/
def P12943434319494126968.Spec : Prop :=
  ∀ n, (P12943434319494126968.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P2340031410665405656

`∩[A331206(n+1), A003714(n)]`
-/

namespace A032937.P2340031410665405656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P2340031410665405656

namespace A032937

/-- `∩[A331206(n+1), A003714(n)]` -/
def P2340031410665405656.Spec : Prop :=
  ∀ n, (P2340031410665405656.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P8482959067038756687

`A023717(A125292(n+1))`
-/

namespace A032937.P8482959067038756687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A125292 (n + 1)).toNat

end

end A032937.P8482959067038756687

namespace A032937

/-- `A023717(A125292(n+1))` -/
def P8482959067038756687.Spec : Prop :=
  ∀ n, P8482959067038756687.a n = A032937 (n + 1)

end A032937

/-! ## A032937.P7401008906506121818

`A023717(record[(n+1)/(A265352(n+1)-n)])`
-/

namespace A032937.P7401008906506121818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A265352 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A032937.P7401008906506121818

namespace A032937

/-- `A023717(record[(n+1)/(A265352(n+1)-n)])` -/
def P7401008906506121818.Spec : Prop :=
  ∀ n, P7401008906506121818.a n = A032937 (n + 1)

end A032937

/-! ## A032937.P12962268599356568529

`A023717(eq[n, A265351(A028310(n))])`
-/

namespace A032937.P12962268599356568529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032937.P12962268599356568529

namespace A032937

/-- `A023717(eq[n, A265351(A028310(n))])` -/
def P12962268599356568529.Spec : Prop :=
  ∀ n, P12962268599356568529.a n = A032937 (n + 1)

end A032937

/-! ## A032937.P288814444801721620

`A023717(eq[A088917(n), A189820(n+1)])`
-/

namespace A032937.P288814444801721620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A032937.P288814444801721620

namespace A032937

/-- `A023717(eq[A088917(n), A189820(n+1)])` -/
def P288814444801721620.Spec : Prop :=
  ∀ n, P288814444801721620.a n = A032937 (n + 1)

end A032937

/-! ## A032937.P14671123457619797407

`∩[A223909(n+1), A331206(n+1)]`
-/

namespace A032937.P14671123457619797407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P14671123457619797407

namespace A032937

/-- `∩[A223909(n+1), A331206(n+1)]` -/
def P14671123457619797407.Spec : Prop :=
  ∀ n, (P14671123457619797407.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P3931953232657709148

`∩[A004761(n+1), A331206(n+1)]`
-/

namespace A032937.P3931953232657709148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P3931953232657709148

namespace A032937

/-- `∩[A004761(n+1), A331206(n+1)]` -/
def P3931953232657709148.Spec : Prop :=
  ∀ n, (P3931953232657709148.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P17460671893855092240

`∩[A091072(n+1), A331206(n+1)]`
-/

namespace A032937.P17460671893855092240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P17460671893855092240

namespace A032937

/-- `∩[A091072(n+1), A331206(n+1)]` -/
def P17460671893855092240.Spec : Prop :=
  ∀ n, (P17460671893855092240.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P9844551606771913625

`∩[A269176(n+1), A331206(n+1)]`
-/

namespace A032937.P9844551606771913625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P9844551606771913625

namespace A032937

/-- `∩[A269176(n+1), A331206(n+1)]` -/
def P9844551606771913625.Spec : Prop :=
  ∀ n, (P9844551606771913625.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P14287027249805624523

`∩[A331206(n+1), A377169(n+1)]`
-/

namespace A032937.P14287027249805624523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032937.P14287027249805624523

namespace A032937

/-- `∩[A331206(n+1), A377169(n+1)]` -/
def P14287027249805624523.Spec : Prop :=
  ∀ n, (P14287027249805624523.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P2448289694630223443

`record[abs(A053985(n+1))]`
-/

namespace A032937.P2448289694630223443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053985 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032937.P2448289694630223443

namespace A032937

/-- `record[abs(A053985(n+1))]` -/
def P2448289694630223443.Spec : Prop :=
  ∀ n, P2448289694630223443.a n = A032937 (n + 1)

end A032937

/-! ## A032937.P16799218854734085701

`lt[n*A139353(n), n]`
-/

namespace A032937.P16799218854734085701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139353 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032937.P16799218854734085701

namespace A032937

/-- `lt[n*A139353(n), n]` -/
def P16799218854734085701.Spec : Prop :=
  ∀ n, (P16799218854734085701.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P10763827694478833157

`lt[n*A139354(n), n]`
-/

namespace A032937.P10763827694478833157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139354 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032937.P10763827694478833157

namespace A032937

/-- `lt[n*A139354(n), n]` -/
def P10763827694478833157.Spec : Prop :=
  ∀ n, (P10763827694478833157.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P11486362929244507912

`eq[A000007(n), A139353(n)]`
-/

namespace A032937.P11486362929244507912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032937.P11486362929244507912

namespace A032937

/-- `eq[A000007(n), A139353(n)]` -/
def P11486362929244507912.Spec : Prop :=
  ∀ n, (P11486362929244507912.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P17901366142474245603

`eq[A000007(n), A139354(n)]`
-/

namespace A032937.P17901366142474245603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032937.P17901366142474245603

namespace A032937

/-- `eq[A000007(n), A139354(n)]` -/
def P17901366142474245603.Spec : Prop :=
  ∀ n, (P17901366142474245603.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P6616437584793711413

`eq[A000038(n), A139353(n)]`
-/

namespace A032937.P6616437584793711413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032937.P6616437584793711413

namespace A032937

/-- `eq[A000038(n), A139353(n)]` -/
def P6616437584793711413.Spec : Prop :=
  ∀ n, (P6616437584793711413.a n : ℤ) = A032937 (n + 1)

end A032937

/-! ## A032937.P10667885112427627656

`eq[A000038(n), A139354(n)]`
-/

namespace A032937.P10667885112427627656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032937.P10667885112427627656

namespace A032937

/-- `eq[A000038(n), A139354(n)]` -/
def P10667885112427627656.Spec : Prop :=
  ∀ n, (P10667885112427627656.a n : ℤ) = A032937 (n + 1)

end A032937

/-!
# A032938: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^(m-i) has d(i)=0 for all odd i.

The programs for A032938, the canonical program `A032938.P16217621075849988673` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032938 has offset 1).

The definition of A032938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032938.P16217621075849988673

`∪[A037314(n+1), A208665(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032938

/-- `∪[A037314(n+1), A208665(n+1)]` -/
def P16217621075849988673.Spec : Prop :=
  ∀ n, (P16217621075849988673.a n : ℤ) = A032938 (n + 1)

theorem P16217621075849988673.correct : P16217621075849988673.Spec := by
  intro n
  simp only [A032938, Nat.add_sub_cancel]

end A032938

/-! ## A032938.P10941720021122342289

`∪[∑[A120437(n+1)], A208665(n+1)]`
-/

namespace A032938.P10941720021122342289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120437 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A032938.P10941720021122342289

namespace A032938

/-- `∪[∑[A120437(n+1)], A208665(n+1)]` -/
def P10941720021122342289.Spec : Prop :=
  ∀ n, (P10941720021122342289.a n : ℤ) = A032938 (n + 1)

end A032938

/-! ## A032938.P13487384248973220264

`∪[A037468(A037453(n+1)), A208665(n+1)]`
-/

namespace A032938.P13487384248973220264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A037453 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032938.P13487384248973220264

namespace A032938

/-- `∪[A037468(A037453(n+1)), A208665(n+1)]` -/
def P13487384248973220264.Spec : Prop :=
  ∀ n, (P13487384248973220264.a n : ℤ) = A032938 (n + 1)

end A032938

/-! ## A032938.P404760339310467099

`∩[A032866(n+1), A328727(n+1)]`
-/

namespace A032938.P404760339310467099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032938.P404760339310467099

namespace A032938

/-- `∩[A032866(n+1), A328727(n+1)]` -/
def P404760339310467099.Spec : Prop :=
  ∀ n, (P404760339310467099.a n : ℤ) = A032938 (n + 1)

end A032938

/-! ## A032938.P12770685790288376488

`record[abs(A065369(n+1))]`
-/

namespace A032938.P12770685790288376488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065369 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P12770685790288376488

namespace A032938

/-- `record[abs(A065369(n+1))]` -/
def P12770685790288376488.Spec : Prop :=
  ∀ n, P12770685790288376488.a n = A032938 (n + 1)

end A032938

/-! ## A032938.P710412131633886554

`record[gcd(C(2, n+2), A065369(n))]`
-/

namespace A032938.P710412131633886554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A065369 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P710412131633886554

namespace A032938

/-- `record[gcd(C(2, n+2), A065369(n))]` -/
def P710412131633886554.Spec : Prop :=
  ∀ n, (P710412131633886554.a n : ℤ) = A032938 (n + 1)

end A032938

/-! ## A032938.P5952953702213732603

`record[n+1-A105186(n+1)%(n+1)]`
-/

namespace A032938.P5952953702213732603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A105186 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P5952953702213732603

namespace A032938

/-- `record[n+1-A105186(n+1)%(n+1)]` -/
def P5952953702213732603.Spec : Prop :=
  ∀ n, P5952953702213732603.a n = A032938 (n + 1)

end A032938

/-! ## A032938.P778675796752668884

`record[gcd(A008486(n), A065369(n))]`
-/

namespace A032938.P778675796752668884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 n) (A065369 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P778675796752668884

namespace A032938

/-- `record[gcd(A008486(n), A065369(n))]` -/
def P778675796752668884.Spec : Prop :=
  ∀ n, (P778675796752668884.a n : ℤ) = A032938 (n + 1)

end A032938

/-! ## A032938.P12178630686295933094

`record[gcd(n, A105186(A028310(n)))]`
-/

namespace A032938.P12178630686295933094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A105186 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P12178630686295933094

namespace A032938

/-- `record[gcd(n, A105186(A028310(n)))]` -/
def P12178630686295933094.Spec : Prop :=
  ∀ n, (P12178630686295933094.a n : ℤ) = A032938 (n + 1)

end A032938

/-! ## A032938.P1912738507363595814

`record[abs(A000007(n)-A065369(n))]`
-/

namespace A032938.P1912738507363595814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n - A065369 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P1912738507363595814

namespace A032938

/-- `record[abs(A000007(n)-A065369(n))]` -/
def P1912738507363595814.Spec : Prop :=
  ∀ n, P1912738507363595814.a n = A032938 (n + 1)

end A032938

/-! ## A032938.P10769339330407406403

`eq[3, A134059(A163329(n))]`
-/

namespace A032938.P10769339330407406403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 (A163329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032938.P10769339330407406403

namespace A032938

/-- `eq[3, A134059(A163329(n))]` -/
def P10769339330407406403.Spec : Prop :=
  ∀ n, (P10769339330407406403.a n : ℤ) = A032938 (n + 1)

end A032938

/-! ## A032938.P4197264064573137198

`record[(n+1)/A007318(A163331(n+1))]`
-/

namespace A032938.P4197264064573137198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007318 (A163331 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P4197264064573137198

namespace A032938

/-- `record[(n+1)/A007318(A163331(n+1))]` -/
def P4197264064573137198.Spec : Prop :=
  ∀ n, P4197264064573137198.a n = (A032938 (n + 1) : ℚ)

end A032938

/-! ## A032938.P14459925461602528163

`record[A065369(n+1)²/A008619(2*n)]`
-/

namespace A032938.P14459925461602528163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065369 (n + 1) ^ 2 : ℚ) / (A008619 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032938.P14459925461602528163

namespace A032938

/-- `record[A065369(n+1)²/A008619(2*n)]` -/
def P14459925461602528163.Spec : Prop :=
  ∀ n, P14459925461602528163.a n = (A032938 (n + 1) : ℚ)

end A032938

/-!
# A032939: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^(m-i) has d(i)=0 for all odd i.

The programs for A032939, the canonical program `A032939.P14752265326544919997` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032939 has offset 1).

The definition of A032939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032939.P3049985633987414214

`record[abs(A073791(n+1))]`
-/

namespace A032939.P3049985633987414214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073791 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032939.P3049985633987414214

namespace A032939

/-- `record[abs(A073791(n+1))]` -/
def P3049985633987414214.Spec : Prop :=
  ∀ n, P3049985633987414214.a n = A032939 (n + 1)

end A032939

/-! ## A032939.P14752265326544919997

`record[A123108(abs(A320283(n)))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A032939

/-- `record[A123108(abs(A320283(n)))]` -/
def P14752265326544919997.Spec : Prop :=
  ∀ n, P14752265326544919997.a n = A032939 (n + 1)

theorem P14752265326544919997.correct : P14752265326544919997.Spec := by
  intro n
  simp only [A032939, Nat.add_sub_cancel]

end A032939

/-! ## A032939.P15275251719735202285

`record[gcd(A065033(n), A320283(n))]`
-/

namespace A032939.P15275251719735202285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065033 n) (A320283 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032939.P15275251719735202285

namespace A032939

/-- `record[gcd(A065033(n), A320283(n))]` -/
def P15275251719735202285.Spec : Prop :=
  ∀ n, (P15275251719735202285.a n : ℤ) = A032939 (n + 1)

end A032939

/-! ## A032939.P4373225381175868408

`record[gcd(A008619(n), A320283(n+1))]`
-/

namespace A032939.P4373225381175868408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n) (A320283 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032939.P4373225381175868408

namespace A032939

/-- `record[gcd(A008619(n), A320283(n+1))]` -/
def P4373225381175868408.Spec : Prop :=
  ∀ n, (P4373225381175868408.a n : ℤ) = A032939 (n + 1)

end A032939

/-! ## A032939.P17276248146295607952

`record[A289813(A032944(n+1))]`
-/

namespace A032939.P17276248146295607952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A032944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032939.P17276248146295607952

namespace A032939

/-- `record[A289813(A032944(n+1))]` -/
def P17276248146295607952.Spec : Prop :=
  ∀ n, P17276248146295607952.a n = A032939 (n + 1)

end A032939

/-!
# A032940: Numbers whose base-5 representation Sum_{i=0..m} d(i)*5^(m-i) has d(i)=0 for all odd i.

The programs for A032940, there is no canonical definition to state claims against.
-/

/-! ## A032940.P10981643609126656822

`record[abs(A073792(n+1))]`
-/

namespace A032940.P10981643609126656822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073792 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032940.P10981643609126656822

/-! ## A032940.P17544720087426359444

`record[gcd(C(2, n+2), A073792(n))]`
-/

namespace A032940.P17544720087426359444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A073792 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032940.P17544720087426359444

/-! ## A032940.P8776711478104810351

`record[A028310(abs(A073792(n)))]`
-/

namespace A032940.P8776711478104810351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A073792 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032940.P8776711478104810351

/-! ## A032940.P18110083464809629777

`eq[abs(A073792(n)), A028310(n)]`
-/

namespace A032940.P18110083464809629777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073792 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032940.P18110083464809629777

/-! ## A032940.P1943958403182446066

`record[A028310(gcd(n, A073792(n)))]`
-/

namespace A032940.P1943958403182446066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A073792 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032940.P1943958403182446066

/-!
# A032941: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^(m-i) has d(i)=0 for all odd i.

The programs for A032941, there is no canonical definition to state claims against.
-/

/-! ## A032941.P8228079397706099587

`record[abs(A073793(n+1))]`
-/

namespace A032941.P8228079397706099587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073793 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032941.P8228079397706099587

/-! ## A032941.P5138781794050106757

`record[gcd(C(2, n+2), A073793(n))]`
-/

namespace A032941.P5138781794050106757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A073793 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032941.P5138781794050106757

/-! ## A032941.P16551227131490199699

`record[A028310(abs(A073793(n)))]`
-/

namespace A032941.P16551227131490199699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A073793 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032941.P16551227131490199699

/-! ## A032941.P13892223033189924285

`record[gcd(n, A073793(A028310(n)))]`
-/

namespace A032941.P13892223033189924285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A073793 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032941.P13892223033189924285

/-! ## A032941.P7927623371524120182

`∑[A306209(A214080(2*(n+2)))]`
-/

namespace A032941.P7927623371524120182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A214080 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032941.P7927623371524120182

/-!
# A032942: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^(m-i) has d(i)=0 for all odd i.

The programs for A032942, there is no canonical definition to state claims against.
-/

/-! ## A032942.P14135100621635099102

`record[abs(A073794(n+1))]`
-/

namespace A032942.P14135100621635099102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073794 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032942.P14135100621635099102

/-! ## A032942.P8342012506908145781

`record[gcd(C(2, n+2), A073794(n))]`
-/

namespace A032942.P8342012506908145781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A073794 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032942.P8342012506908145781

/-! ## A032942.P11614718571999303058

`record[A028310(abs(A073794(n)))]`
-/

namespace A032942.P11614718571999303058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A073794 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032942.P11614718571999303058

/-! ## A032942.P15896092889564814068

`eq[A073794(n)², A253909(n)]`
-/

namespace A032942.P15896092889564814068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073794 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032942.P15896092889564814068

/-! ## A032942.P15074290051813421985

`A306921(A195904(n+1))`
-/

namespace A032942.P15074290051813421985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306921 (A195904 (n + 1)).toNat

end

end A032942.P15074290051813421985

/-!
# A032943: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^(m-i) has d(i)=0 for all odd i.

The programs for A032943, the canonical program `A032943.P3501722432435064616` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032943 has offset 1).

The definition of A032943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032943.P3501722432435064616

`record[abs(A073795(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A032943

/-- `record[abs(A073795(n+1))]` -/
def P3501722432435064616.Spec : Prop :=
  ∀ n, P3501722432435064616.a n = A032943 (n + 1)

theorem P3501722432435064616.correct : P3501722432435064616.Spec := by
  intro n
  simp only [A032943, Nat.add_sub_cancel]

end A032943

/-! ## A032943.P11750877397483521525

`record[round(sqrt(A073795(n)²+1))]`
-/

namespace A032943.P11750877397483521525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A073795 n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032943.P11750877397483521525

namespace A032943

/-- `record[round(sqrt(A073795(n)²+1))]` -/
def P11750877397483521525.Spec : Prop :=
  ∀ n, P11750877397483521525.a n = A032943 (n + 1)

end A032943

/-! ## A032943.P11430944201253777592

`eq[n, abs(A073795(A028310(n)))]`
-/

namespace A032943.P11430944201253777592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073795 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032943.P11430944201253777592

namespace A032943

/-- `eq[n, abs(A073795(A028310(n)))]` -/
def P11430944201253777592.Spec : Prop :=
  ∀ n, (P11430944201253777592.a n : ℤ) = A032943 (n + 1)

end A032943

/-! ## A032943.P4004886946857405347

`eq[A028310(n)², A073795(n)²]`
-/

namespace A032943.P4004886946857405347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073795 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032943.P4004886946857405347

namespace A032943

/-- `eq[A028310(n)², A073795(n)²]` -/
def P4004886946857405347.Spec : Prop :=
  ∀ n, (P4004886946857405347.a n : ℤ) = A032943 (n + 1)

end A032943

/-! ## A032943.P14711833969097598425

`record[gcd(A073795(n+1), A100189(n+1))]`
-/

namespace A032943.P14711833969097598425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073795 (n + 1)) (A100189 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032943.P14711833969097598425

namespace A032943

/-- `record[gcd(A073795(n+1), A100189(n+1))]` -/
def P14711833969097598425.Spec : Prop :=
  ∀ n, (P14711833969097598425.a n : ℤ) = A032943 (n + 1)

end A032943

/-!
# A032944: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^(m-i) has d(i)=0 for all odd i.

The programs for A032944, there is no canonical definition to state claims against.
-/

/-! ## A032944.P5818785915228577461

`record[abs(A073796(n+1))]`
-/

namespace A032944.P5818785915228577461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073796 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032944.P5818785915228577461

/-! ## A032944.P2938360280239785215

`record[gcd(A002378(n), A073796(n+1))]`
-/

namespace A032944.P2938360280239785215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A073796 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032944.P2938360280239785215

/-! ## A032944.P8657753886447769145

`∑[A147125(Δ[A048320(n)])]`
-/

namespace A032944.P8657753886447769145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147125 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032944.P8657753886447769145

/-! ## A032944.P15071948822341898804

`∑[A237799(Δ[A048320(n)])]`
-/

namespace A032944.P15071948822341898804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032944.P15071948822341898804

/-! ## A032944.P3189295486732284442

`∑[A260883(Δ[A048320(n)])]`
-/

namespace A032944.P3189295486732284442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032944.P3189295486732284442

/-!
# A032945: Numbers k whose base-10 representation Sum_{i=0..m} d(i)*10^(m-i) has d(i)=0 for all odd i. Here m is the position of the lead digit of k.

The programs for A032945, there is no canonical definition to state claims against.
-/

/-! ## A032945.P14451710970159814898

`∪[10*A051022(n), A051022(n)]`
-/

namespace A032945.P14451710970159814898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A051022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A032945.P14451710970159814898

/-! ## A032945.P11407038791781216928

`eq[A007953(n), A225693(n)]`
-/

namespace A032945.P11407038791781216928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032945.P11407038791781216928

/-! ## A032945.P16817917614290695477

`eq[A003132(n), A257587(n)]`
-/

namespace A032945.P16817917614290695477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032945.P16817917614290695477

/-! ## A032945.P5434558520257009741

`eq[A003132(n), A257588(n)]`
-/

namespace A032945.P5434558520257009741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032945.P5434558520257009741

/-! ## A032945.P6908315884971116267

`eq[abs(A055017(n)), A007953(n)]`
-/

namespace A032945.P6908315884971116267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032945.P6908315884971116267

/-! ## A032945.P11660185836171212662

`eq[A055017(n)², A118881(n)]`
-/

namespace A032945.P11660185836171212662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032945.P11660185836171212662

/-! ## A032945.P7401776878400611734

`eq[A007953(n), A055017(A004086(n))]`
-/

namespace A032945.P7401776878400611734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032945.P7401776878400611734

/-! ## A032945.P8599454713320354260

`record[abs(A073835(n))]`
-/

namespace A032945.P8599454713320354260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073835 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032945.P8599454713320354260

/-! ## A032945.P324100302510757152

`eq[A257587(n), A289506(A113581(n))]`
-/

namespace A032945.P324100302510757152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032945.P324100302510757152

/-!
# A032946: Numbers whose base-11 representation Sum_{i=0..m} d(i)*11^i has d(i)=0 for all odd i.

The programs for A032946, there is no canonical definition to state claims against.
-/

/-! ## A032946.P852558826277373512

`A342696(A033024(n+1))`
-/

namespace A032946.P852558826277373512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A033024 (n + 1)).toNat

end

end A032946.P852558826277373512

/-! ## A032946.P1820820396401132063

`∑[A335405(A295977(3*(n+1)))]`
-/

namespace A032946.P1820820396401132063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 (A295977 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032946.P1820820396401132063

/-! ## A032946.P15998642230274431986

`eq[n%11*floor(n/11), C(2, A067035(n+1))]`
-/

namespace A032946.P15998642230274431986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 11 : ℕ) : ℤ) * ⌊(n : ℚ) / 11⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A067035 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A032946.P15998642230274431986

/-! ## A032946.P4677456202450281388

`lt[A114044(A056960(n)), A329771(n)]`
-/

namespace A032946.P4677456202450281388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114044 (A056960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032946.P4677456202450281388

/-! ## A032946.P4153456293367757557

`∩[A178354(n+1), A190220(n+1)]`
-/

namespace A032946.P4153456293367757557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032946.P4153456293367757557

/-!
# A032947: Numbers whose base-12 representation Sum_{i=0..m} d(i)*12^i has d(i)=0 for all odd i.

The programs for A032947, there is no canonical definition to state claims against.
-/

/-! ## A032947.P237113981906339834

`∑[A065279(Δ[A048323(n)])]`
-/

namespace A032947.P237113981906339834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065279 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032947.P237113981906339834

/-! ## A032947.P8107713941665688197

`∑[A088847(Δ[A048323(n)])]`
-/

namespace A032947.P8107713941665688197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088847 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032947.P8107713941665688197

/-! ## A032947.P3463508945317554064

`∑[A090104(Δ[A048323(n)])]`
-/

namespace A032947.P3463508945317554064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090104 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032947.P3463508945317554064

/-! ## A032947.P18116804049474546495

`∑[A112631(Δ[A048323(n)])]`
-/

namespace A032947.P18116804049474546495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112631 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032947.P18116804049474546495

/-! ## A032947.P18399189233739262368

`∑[A112996(Δ[A048323(n)])]`
-/

namespace A032947.P18399189233739262368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112996 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032947.P18399189233739262368

/-!
# A032948: Numbers k whose base-13 representation Sum_{i=0..m} d(i)*13^(m-i) has d(i)=0 for all odd i. Here m is the position of the leading bit of k.

The programs for A032948, there is no canonical definition to state claims against.
-/

/-! ## A032948.P6915017985491189711

`∑[gcd(13, record[A090224(n)])]`
-/

namespace A032948.P6915017985491189711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090224 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032948.P6915017985491189711

/-! ## A032948.P15851123600932628658

`∑[A278716(2*(A004907(n+1)-n)+2)]`
-/

namespace A032948.P15851123600932628658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278716 (2 * (A004907 (n + 1) - (n : ℤ)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032948.P15851123600932628658

/-! ## A032948.P11622641675604437628

`∑[A091258(A101776(n)!)]`
-/

namespace A032948.P11622641675604437628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091258 (Nat.factorial (A101776 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032948.P11622641675604437628

/-! ## A032948.P16197652941437243972

`∑[gcd(A001405(n), A015961(n+1))]`
-/

namespace A032948.P16197652941437243972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 n) (A015961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032948.P16197652941437243972

/-! ## A032948.P12626412380879365232

`∑[gcd(A015961(n+2), A090224(n))]`
-/

namespace A032948.P12626412380879365232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015961 (n + 2)) (A090224 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032948.P12626412380879365232

/-!
# A032949: Numbers whose base-14 representation Sum_{i=0..m} d(i)*14^i has d(i)=0 for all odd i.

The programs for A032949, there is no canonical definition to state claims against.
-/

/-! ## A032949.P529998540679821633

`∑[A112284(Δ[A048325(n)])]`
-/

namespace A032949.P529998540679821633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112284 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032949.P529998540679821633

/-! ## A032949.P11965380095637519814

`∑[A117268(Δ[A048325(n)])]`
-/

namespace A032949.P11965380095637519814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117268 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032949.P11965380095637519814

/-! ## A032949.P14543008689391915000

`∑[A240642(Δ[A048325(n)])]`
-/

namespace A032949.P14543008689391915000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032949.P14543008689391915000

/-! ## A032949.P5174400659405351458

`∑[A079318(Δ[A048325(n)]²)]`
-/

namespace A032949.P5174400659405351458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079318 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032949.P5174400659405351458

/-! ## A032949.P15231366903760287902

`∩[A023795(n+1), A342591(n+1)]`
-/

namespace A032949.P15231366903760287902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032949.P15231366903760287902

/-!
# A032950: Numbers whose base-15 representation Sum_{i=0..m} d(i)*15^i has d(i)=0 for all odd i.

The programs for A032950, there is no canonical definition to state claims against.
-/

/-! ## A032950.P4588922391735030013

`∑[A130043(Δ[A048326(n)])]`
-/

namespace A032950.P4588922391735030013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130043 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032950.P4588922391735030013

/-! ## A032950.P17227129280776093929

`∑[A228899(Δ[A048326(n)])]`
-/

namespace A032950.P17227129280776093929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228899 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032950.P17227129280776093929

/-! ## A032950.P3647542148214613242

`∑[A338369(Δ[A048326(n)])]`
-/

namespace A032950.P3647542148214613242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338369 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032950.P3647542148214613242

/-! ## A032950.P354914434194016350

`lt[A263110(n+1), 3*n%2]-n`
-/

namespace A032950.P354914434194016350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A032950.P354914434194016350

/-! ## A032950.P14742844622068291089

`lt[A265144(A043320(n+1)), n+1]`
-/

namespace A032950.P14742844622068291089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265144 (A043320 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032950.P14742844622068291089

/-!
# A032951: Numbers whose base-16 representation Sum_{i=0..m} d(i)*16^i has d(i)=0 for all odd i.

The programs for A032951, there is no canonical definition to state claims against.
-/

/-! ## A032951.P9773594415653327129

`∑[A298554(A111894(n+2)!)]`
-/

namespace A032951.P9773594415653327129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (Nat.factorial (A111894 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032951.P9773594415653327129

/-! ## A032951.P12663694993726023485

`A217558(record[A217558(n)])+1`
-/

namespace A032951.P12663694993726023485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A032951.P12663694993726023485

/-! ## A032951.P205580255973954059

`lt[A056962(n)², A217558(A056962(n))]`
-/

namespace A032951.P205580255973954059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032951.P205580255973954059

/-! ## A032951.P9762988995008306188

`∩[A023771(n+1), A371477(n+1)]`
-/

namespace A032951.P9762988995008306188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032951.P9762988995008306188

/-! ## A032951.P18312077827839434887

`∩[A023797(n+1), A371477(n+1)]`
-/

namespace A032951.P18312077827839434887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032951.P18312077827839434887

/-!
# A032952: Expansion of (1+x*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A032952, the canonical program `A032952.P14319785002090626155` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032952 has offset 0).

The definition of A032952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032952.P14319785002090626155

`A026013(n+1)-A099376(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A032952

/-- `A026013(n+1)-A099376(n)` -/
def P14319785002090626155.Spec : Prop :=
  ∀ n, P14319785002090626155.a n = A032952 n

theorem P14319785002090626155.correct : P14319785002090626155.Spec := by
  intro n
  simp only [A032952]

end A032952

/-! ## A032952.P7102516925984236698

`Δ[A099376(n)+∑[A000588(n)]]`
-/

namespace A032952.P7102516925984236698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032952.P7102516925984236698

namespace A032952

/-- `Δ[A099376(n)+∑[A000588(n)]]` -/
def P7102516925984236698.Spec : Prop :=
  ∀ n, P7102516925984236698.a n = A032952 n

end A032952

/-! ## A032952.P10581011853308584248

`A000588(n+1)+Δ[A099376(n)]`
-/

namespace A032952.P10581011853308584248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (f1 (n + 1) - f1 n)

end

end A032952.P10581011853308584248

namespace A032952

/-- `A000588(n+1)+Δ[A099376(n)]` -/
def P10581011853308584248.Spec : Prop :=
  ∀ n, P10581011853308584248.a n = A032952 n

end A032952

/-! ## A032952.P15250639508022819609

`A026016(n+1)+A000588(n+1)`
-/

namespace A032952.P15250639508022819609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + A000588 (n + 1)

end

end A032952.P15250639508022819609

namespace A032952

/-- `A026016(n+1)+A000588(n+1)` -/
def P15250639508022819609.Spec : Prop :=
  ∀ n, P15250639508022819609.a n = A032952 n

end A032952

/-! ## A032952.P4790918406550916904

`A026029(n+1)-A000245(n+1)`
-/

namespace A032952.P4790918406550916904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A000245 (n + 1)

end

end A032952.P4790918406550916904

namespace A032952

/-- `A026029(n+1)-A000245(n+1)` -/
def P4790918406550916904.Spec : Prop :=
  ∀ n, P4790918406550916904.a n = A032952 n

end A032952

/-! ## A032952.P418394072209824228

`A026029(n+1)-Δ[A000108(n+1)]`
-/

namespace A032952.P418394072209824228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - (f1 (n + 1) - f1 n)

end

end A032952.P418394072209824228

namespace A032952

/-- `A026029(n+1)-Δ[A000108(n+1)]` -/
def P418394072209824228.Spec : Prop :=
  ∀ n, P418394072209824228.a n = A032952 n

end A032952

/-! ## A032952.P10607092833378630687

`A026034(2*(n+1))-A000245(n+1)`
-/

namespace A032952.P10607092833378630687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * (n + 1)) - A000245 (n + 1)

end

end A032952.P10607092833378630687

namespace A032952

/-- `A026034(2*(n+1))-A000245(n+1)` -/
def P10607092833378630687.Spec : Prop :=
  ∀ n, P10607092833378630687.a n = A032952 n

end A032952

/-! ## A032952.P3427980725460009472

`A026029(n+1)-A026008(2*n+1)`
-/

namespace A032952.P3427980725460009472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A026008 (2 * n + 1)

end

end A032952.P3427980725460009472

namespace A032952

/-- `A026029(n+1)-A026008(2*n+1)` -/
def P3427980725460009472.Spec : Prop :=
  ∀ n, P3427980725460009472.a n = A032952 n

end A032952

/-! ## A032952.P13981415987935363071

`A026013(n+1)+A000108(n)-A026012(n)`
-/

namespace A032952.P13981415987935363071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) + (A000108 n - A026012 n)

end

end A032952.P13981415987935363071

namespace A032952

/-- `A026013(n+1)+A000108(n)-A026012(n)` -/
def P13981415987935363071.Spec : Prop :=
  ∀ n, P13981415987935363071.a n = A032952 n

theorem P13981415987935363071.correct : P13981415987935363071.Spec := by
  intro n
  simp only [A032952, Nat.add_sub_cancel, A032952.P13981415987935363071.a, A032952.P14319785002090626155.a, A000108, A000108.P17551949696095299361.a, A026012, A026012.P8146518293460492297.a, A026013, A026013.P4755213788874432283.a, A099376, A099376.P5902379968883628035.a, A000245, A000245.P15461013057778681831.a, A000588, A000588.P2240156739823594693.a, A002057, A002057.P16485173035074746318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032952

/-! ## A032952.P1463719291132004216

`A000588(n+1)+A002057(n)-A099376(n)`
-/

namespace A032952.P1463719291132004216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A002057 n - A099376 n)

end

end A032952.P1463719291132004216

namespace A032952

/-- `A000588(n+1)+A002057(n)-A099376(n)` -/
def P1463719291132004216.Spec : Prop :=
  ∀ n, P1463719291132004216.a n = A032952 n

theorem P1463719291132004216.correct : P1463719291132004216.Spec := by
  intro n
  simp only [A032952, Nat.add_sub_cancel, A032952.P1463719291132004216.a, A032952.P14319785002090626155.a, A000588, A000588.P2240156739823594693.a, A002057, A002057.P16485173035074746318.a, A026013, A026013.P4755213788874432283.a, A099376, A099376.P5902379968883628035.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032952

/-! ## A032952.P1808680778165107313

`A026013(n+1)+A026016(n+1)-A002057(n)`
-/

namespace A032952.P1808680778165107313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) + (A026016 (n + 1) - A002057 n)

end

end A032952.P1808680778165107313

namespace A032952

/-- `A026013(n+1)+A026016(n+1)-A002057(n)` -/
def P1808680778165107313.Spec : Prop :=
  ∀ n, P1808680778165107313.a n = A032952 n

end A032952

/-! ## A032952.P4633240611483843104

`A026013(n+1)+A071725(n+1)-A002057(n)`
-/

namespace A032952.P4633240611483843104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) + (A071725 (n + 1) - A002057 n)

end

end A032952.P4633240611483843104

namespace A032952

/-- `A026013(n+1)+A071725(n+1)-A002057(n)` -/
def P4633240611483843104.Spec : Prop :=
  ∀ n, P4633240611483843104.a n = A032952 n

end A032952

/-! ## A032952.P13218025372686771952

`A000588(n+1)+A099376(n+1)-A099376(n)`
-/

namespace A032952.P13218025372686771952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A099376 (n + 1) - A099376 n)

end

end A032952.P13218025372686771952

namespace A032952

/-- `A000588(n+1)+A099376(n+1)-A099376(n)` -/
def P13218025372686771952.Spec : Prop :=
  ∀ n, P13218025372686771952.a n = A032952 n

end A032952

/-! ## A032952.P11222234483935523407

`A026026(n+2)+A026029(n)-A000108(n+1)`
-/

namespace A032952.P11222234483935523407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026026 (n + 2) + (A026029 n - A000108 (n + 1))

end

end A032952.P11222234483935523407

namespace A032952

/-- `A026026(n+2)+A026029(n)-A000108(n+1)` -/
def P11222234483935523407.Spec : Prop :=
  ∀ n, P11222234483935523407.a n = A032952 n

end A032952

/-! ## A032952.P10062705695258882203

`A000108(n+1)+A026013(n+1)-A000245(n+1)`
-/

namespace A032952.P10062705695258882203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A026013 (n + 1) - A000245 (n + 1))

end

end A032952.P10062705695258882203

namespace A032952

/-- `A000108(n+1)+A026013(n+1)-A000245(n+1)` -/
def P10062705695258882203.Spec : Prop :=
  ∀ n, P10062705695258882203.a n = A032952 n

theorem P10062705695258882203.correct : P10062705695258882203.Spec := by
  intro n
  simp only [A032952, Nat.add_sub_cancel, A032952.P10062705695258882203.a, A032952.P14319785002090626155.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A026013, A026013.P4755213788874432283.a, A099376, A099376.P5902379968883628035.a, A000588, A000588.P2240156739823594693.a, A002057, A002057.P16485173035074746318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032952

/-! ## A032952.P1239744065584181713

`A000588(n+1)+A026012(n+1)-A000245(n+1)`
-/

namespace A032952.P1239744065584181713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A026012 (n + 1) - A000245 (n + 1))

end

end A032952.P1239744065584181713

namespace A032952

/-- `A000588(n+1)+A026012(n+1)-A000245(n+1)` -/
def P1239744065584181713.Spec : Prop :=
  ∀ n, P1239744065584181713.a n = A032952 n

end A032952

/-! ## A032952.P13474120052899875439

`A000108(n+1)+A026013(n+1)-A071724(n+1)`
-/

namespace A032952.P13474120052899875439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A026013 (n + 1) - A071724 (n + 1))

end

end A032952.P13474120052899875439

namespace A032952

/-- `A000108(n+1)+A026013(n+1)-A071724(n+1)` -/
def P13474120052899875439.Spec : Prop :=
  ∀ n, P13474120052899875439.a n = A032952 n

theorem P13474120052899875439.correct : P13474120052899875439.Spec := by
  intro n
  simp only [A032952, Nat.add_sub_cancel, A032952.P13474120052899875439.a, A032952.P14319785002090626155.a, A000108, A000108.P17551949696095299361.a, A026013, A026013.P4755213788874432283.a, A071724, A071724.P13075293376280166576.f1, A071724.P13075293376280166576.a, A099376, A099376.P5902379968883628035.a, A000588, A000588.P2240156739823594693.a, A002057, A002057.P16485173035074746318.a, A141351, A141351.P15521239837132020654.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A032952

/-! ## A032952.P3505127314549790669

`A026016(n+1)+A026026(n+2)-A000245(n+1)`
-/

namespace A032952.P3505127314549790669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + (A026026 (n + 2) - A000245 (n + 1))

end

end A032952.P3505127314549790669

namespace A032952

/-- `A026016(n+1)+A026026(n+2)-A000245(n+1)` -/
def P3505127314549790669.Spec : Prop :=
  ∀ n, P3505127314549790669.a n = A032952 n

end A032952

/-! ## A032952.P2714324683578448605

`A000588(n+1)+A026029(n+1)-A026026(n+2)`
-/

namespace A032952.P2714324683578448605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A026029 (n + 1) - A026026 (n + 2))

end

end A032952.P2714324683578448605

namespace A032952

/-- `A000588(n+1)+A026029(n+1)-A026026(n+2)` -/
def P2714324683578448605.Spec : Prop :=
  ∀ n, P2714324683578448605.a n = A032952 n

end A032952

/-! ## A032952.P17818270449477668875

`A026034(2*n+1)+A026034(2*n)-A000108(n+1)`
-/

namespace A032952.P17818270449477668875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n + 1) + (A026034 (2 * n) - A000108 (n + 1))

end

end A032952.P17818270449477668875

namespace A032952

/-- `A026034(2*n+1)+A026034(2*n)-A000108(n+1)` -/
def P17818270449477668875.Spec : Prop :=
  ∀ n, P17818270449477668875.a n = A032952 n

end A032952

/-!
# A032953: Numbers whose base-3 representation Sum_{i=0..m} d(i)*3^(m-i) has even d(i) for all odd i.

The programs for A032953, there is no canonical definition to state claims against.
-/

/-! ## A032953.P6984532153684190021

`∑[A046951(∑[A046255(n+1)])]`
-/

namespace A032953.P6984532153684190021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032953.P6984532153684190021

/-! ## A032953.P6029738297806331926

`∑[A049419(∑[A046255(n+1)])]`
-/

namespace A032953.P6029738297806331926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032953.P6029738297806331926

/-! ## A032953.P15207243412685275157

`∑[A278908(∑[A046255(n+1)])]`
-/

namespace A032953.P15207243412685275157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032953.P15207243412685275157

/-! ## A032953.P14460492655074583822

`∑[A112050(A018818(n+1))]`
-/

namespace A032953.P14460492655074583822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A018818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032953.P14460492655074583822

/-!
# A032954: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^(m-i) has even d(i) for all odd i.

The programs for A032954, there is no canonical definition to state claims against.
-/

/-! ## A032954.P5333051490727557964

`eq[and(4, A030103(n)), A151622(n)]`
-/

namespace A032954.P5333051490727557964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A030103 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032954.P5333051490727557964

/-!
# A032956: Numbers whose base-6 representation Sum_{i=0..m} d(i)*6^(m-i) has even d(i) for all odd i.

The programs for A032956, there is no canonical definition to state claims against.
-/

/-! ## A032956.P17718185522663604055

`∑[A000989(A100851(n))!]`
-/

namespace A032956.P17718185522663604055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000989 (A100851 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032956.P17718185522663604055

/-! ## A032956.P12492563649532035233

`∑[A336532(A000108(ceil(n/5)))]`
-/

namespace A032956.P12492563649532035233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336532 (A000108 ⌈(n : ℚ) / 5⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032956.P12492563649532035233

/-! ## A032956.P5378542229638193829

`∑[A227739(∑[A129686(3*(n+1))])]`
-/

namespace A032956.P5378542229638193829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129686 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032956.P5378542229638193829

/-! ## A032956.P15769159187032994526

`∑[A000034(∑[A046304(3*n+5)])]`
-/

namespace A032956.P15769159187032994526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032956.P15769159187032994526

/-! ## A032956.P13927214837859876412

`eq[A030138(A152271(n)), A057427(n)]`
-/

namespace A032956.P13927214837859876412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030138 (A152271 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032956.P13927214837859876412

/-!
# A032957: Numbers whose base-7 representation Sum_{i=0..m} d(i)*7^(m-i) has even d(i) for all odd i.

The programs for A032957, there is no canonical definition to state claims against.
-/

/-! ## A032957.P10221156186446342632

`lt[2, A022597(A171596(n))+A000132(n)]`
-/

namespace A032957.P10221156186446342632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (A171596 n).toNat + A000132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032957.P10221156186446342632

/-! ## A032957.P7322649310418892409

`lt[A022597(n), A022597(A171596(n))+n]`
-/

namespace A032957.P7322649310418892409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (A171596 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032957.P7322649310418892409

/-! ## A032957.P4844430009689721901

`record[2*(n+1)-A171597(n+1)]`
-/

namespace A032957.P4844430009689721901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A171597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032957.P4844430009689721901

/-! ## A032957.P1249774402712521950

`lt[A057979(A024641(n)), n]`
-/

namespace A032957.P1249774402712521950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A024641 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032957.P1249774402712521950

/-!
# A032958: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^(m-i) has even d(i) for all odd i.

The programs for A032958, there is no canonical definition to state claims against.
-/

/-! ## A032958.P12869176288889286571

`record[and(n+1, A154374(2*(n+1)²+1))]`
-/

namespace A032958.P12869176288889286571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A154374 (2 * (n + 1) ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032958.P12869176288889286571

/-! ## A032958.P8935711146503938839

`record[∑[A008276(A213253(n+1))]]`
-/

namespace A032958.P8935711146503938839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A213253 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032958.P8935711146503938839

/-! ## A032958.P124766296067323810

`record[and(n+1, A056220(A056220(n+1)+9))]`
-/

namespace A032958.P124766296067323810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A056220 (A056220 (n + 1) + 9).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032958.P124766296067323810

/-! ## A032958.P15761828508255294494

`lt[A266249(n), A266728(n)]`
-/

namespace A032958.P15761828508255294494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032958.P15761828508255294494

/-! ## A032958.P9703541216872682381

`lt[A317492(A029579(n)), A321993(n+1)]`
-/

namespace A032958.P9703541216872682381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032958.P9703541216872682381

/-!
# A032959: Numbers whose base-9 representation Sum_{i=0..m} d(i)*9^(m-i) has even d(i) for all odd i.

The programs for A032959, there is no canonical definition to state claims against.
-/

/-! ## A032959.P496132050702894170

`∑[gcd(A098378(2*(n+2)), A102669(2*(n+2)))]`
-/

namespace A032959.P496132050702894170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098378 (2 * (n + 2))) (A102669 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032959.P496132050702894170

/-! ## A032959.P9570915430325894379

`lt[A126696(n), A124625(A069570(n+1))]`
-/

namespace A032959.P9570915430325894379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A069570 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032959.P9570915430325894379

/-! ## A032959.P647430665223891978

`record[(n+1)%A113220(n+2)]`
-/

namespace A032959.P647430665223891978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A113220 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032959.P647430665223891978

/-! ## A032959.P836046194241368072

`lt[n²+1, A113220(n+1)²]`
-/

namespace A032959.P836046194241368072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032959.P836046194241368072

/-!
# A032960: Numbers whose base-10 representation Sum_{i=0..m} d(i)*10^(m-i) has even d(i) for all odd i.

The programs for A032960, there is no canonical definition to state claims against.
-/

/-! ## A032960.P10437613222691072795

`lt[A014856(A139337(n)), A184166(n+1)]`
-/

namespace A032960.P10437613222691072795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014856 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032960.P10437613222691072795

/-! ## A032960.P11245673734786754041

`lt[A084938(A337843(n)-n), A184166(n+1)]`
-/

namespace A032960.P11245673734786754041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A337843 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032960.P11245673734786754041

/-! ## A032960.P587147816057504857

`lt[A007814((A117804(n+1)-n)²), 1]+1`
-/

namespace A032960.P587147816057504857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((A117804 (n + 1) - (n : ℤ)) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A032960.P587147816057504857

/-! ## A032960.P12605398719137091345

`A117804(n+1)-A197870(A063108(n+4))`
-/

namespace A032960.P12605398719137091345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 1) - A197870 (A063108 (n + 4)).toNat

end

end A032960.P12605398719137091345

/-!
# A032961: Numbers whose base-11 representation Sum_{i=0..m} d(i)*11^(m-i) has even d(i) for all odd i.

The programs for A032961, there is no canonical definition to state claims against.
-/

/-! ## A032961.P15748962552267884803

`lt[A114285(n), A081362(A055649(n))]`
-/

namespace A032961.P15748962552267884803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (A055649 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P15748962552267884803

/-! ## A032961.P6471689848866382759

`lt[A081362(n), A081362(A055649(n))+n]`
-/

namespace A032961.P6471689848866382759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (A055649 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P6471689848866382759

/-! ## A032961.P17280755010156294979

`lt[A057979(A055649(n)), n]`
-/

namespace A032961.P17280755010156294979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A055649 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032961.P17280755010156294979

/-! ## A032961.P2827923363779751857

`lt[A001057(A055649(n+1)), n+2]+1`
-/

namespace A032961.P2827923363779751857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055649 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A032961.P2827923363779751857

/-! ## A032961.P15706288616911917924

`lt[A001057(A055649(n)), A061762(n)]`
-/

namespace A032961.P15706288616911917924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P15706288616911917924

/-! ## A032961.P11489491509446733686

`lt[A001057(A055649(n)), A062028(n)]`
-/

namespace A032961.P11489491509446733686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P11489491509446733686

/-! ## A032961.P1026593727517275073

`lt[A001057(A055649(n)), A102370(n)]`
-/

namespace A032961.P1026593727517275073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P1026593727517275073

/-! ## A032961.P420275114324421121

`lt[A070565(n), A267354(A055649(n))]`
-/

namespace A032961.P420275114324421121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (A055649 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P420275114324421121

/-! ## A032961.P3178779324517323407

`lt[A026741(A055649(n)), A249648(n+1)]`
-/

namespace A032961.P3178779324517323407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A055649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P3178779324517323407

/-! ## A032961.P10344753153201871234

`lt[A001057(A055649(n))-n, A001057(n)]`
-/

namespace A032961.P10344753153201871234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055649 n).toNat - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032961.P10344753153201871234

/-!
# A032962: Numbers whose base-12 representation Sum_{i=0..m} d(i)*12^(m-i) has even d(i) for all odd i.

The programs for A032962, there is no canonical definition to state claims against.
-/

/-! ## A032962.P11742904603668226358

`lt[sqrt((n+1)^gcd(2, n)-1), 12]+1`
-/

namespace A032962.P11742904603668226358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1) ^ Nat.gcd 2 n : ℤ) - 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A032962.P11742904603668226358

/-! ## A032962.P16620541159324318249

`lt[a(n-1)+val(n, 12), sqrt(n^(n%2))]+1` with `a(0)=0`
-/

namespace A032962.P16620541159324318249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 12

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n ^ (n % 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A032962.P16620541159324318249

/-! ## A032962.P16664918978226028566

`lt[A085787(n), 8*A317323(n)]`
-/

namespace A032962.P16664918978226028566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A317323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032962.P16664918978226028566

/-! ## A032962.P5137250959083794505

`lt[A142150(A049872(n)), n+1]+1`
-/

namespace A032962.P5137250959083794505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A049872 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A032962.P5137250959083794505

/-! ## A032962.P11777458411693609926

`lt[A073846(n+1), A073425(3*n)]`
-/

namespace A032962.P11777458411693609926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032962.P11777458411693609926

/-! ## A032962.P14318099805292152193

`lt[A014237(n+1), A266286(3*n)]`
-/

namespace A032962.P14318099805292152193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032962.P14318099805292152193

/-! ## A032962.P5548491292802588846

`lt[A032438(n+1), A317320(11*n)]`
-/

namespace A032962.P5548491292802588846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032962.P5548491292802588846

/-! ## A032962.P16424263827825777733

`lt[A114539(A057979(n+2)), log2(n+1)]`
-/

namespace A032962.P16424263827825777733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114539 (A057979 (n + 2)).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A032962.P16424263827825777733

/-! ## A032962.P806593839728676559

`lt[lcm(n, n+2), (2*n)^ϕ]`
-/

namespace A032962.P806593839728676559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) ^ Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A032962.P806593839728676559

/-! ## A032962.P681836468326089362

`lt[5, ∏[5-2*n/5]]`
-/

namespace A032962.P681836468326089362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 - (2 * n : ℚ) / 5

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032962.P681836468326089362

/-!
# A032963: Numbers whose base-13 representation Sum_{i=0..m} d(i)*13^(m-i) has even d(i) for all odd i.

The programs for A032963, there is no canonical definition to state claims against.
-/

/-! ## A032963.P3260752281278586272

`lt[A057979(A055648(n)), n]`
-/

namespace A032963.P3260752281278586272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A055648 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032963.P3260752281278586272

/-! ## A032963.P14444053035165282853

`lt[A001057(A055648(n)), A005843(n)]`
-/

namespace A032963.P14444053035165282853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P14444053035165282853

/-! ## A032963.P1651988576006696113

`lt[A001057(A055648(n)), A062545(n)]`
-/

namespace A032963.P1651988576006696113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P1651988576006696113

/-! ## A032963.P1429849571183734549

`lt[A266256(A055648(n)), A004277(n)]`
-/

namespace A032963.P1429849571183734549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P1429849571183734549

/-! ## A032963.P9563767347553951039

`lt[A266256(A055648(n)), A008458(n)]`
-/

namespace A032963.P9563767347553951039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P9563767347553951039

/-! ## A032963.P1819832607752579323

`lt[A266256(A055648(n)), A008486(n)]`
-/

namespace A032963.P1819832607752579323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P1819832607752579323

/-! ## A032963.P16189925677382390204

`lt[A266256(A055648(n)), A008574(n)]`
-/

namespace A032963.P16189925677382390204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P16189925677382390204

/-! ## A032963.P11528678357710945629

`lt[A266256(A055648(n)), A016777(n)]`
-/

namespace A032963.P11528678357710945629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P11528678357710945629

/-! ## A032963.P446257804233751883

`lt[A266256(A055648(n)), A250120(n)]`
-/

namespace A032963.P446257804233751883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P446257804233751883

/-! ## A032963.P16418599300636575498

`lt[A266256(A055648(n)), A000203(n+1)]`
-/

namespace A032963.P16418599300636575498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 (A055648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032963.P16418599300636575498

/-!
# A032964: Numbers whose base-14 representation Sum_{i=0..m} d(i)*14^(m-i) has even d(i) for all odd i.

The programs for A032964, the canonical program `A032964.P5917314505731750893` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032964 has offset 1).

The definition of A032964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032964.P5917314505731750893

`lt[n, a(n-2)+1]+1` with `a(0)=7, a(1)=99`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032964

/-- `lt[n, a(n-2)+1]+1` -/
def P5917314505731750893.Spec : Prop :=
  ∀ n, (P5917314505731750893.a n : ℤ) = A032964 (n + 1)

theorem P5917314505731750893.correct : P5917314505731750893.Spec := by
  intro n
  simp only [A032964, Nat.add_sub_cancel]

end A032964

/-! ## A032964.P1340252123874109426

`lt[(gcd(1-n, floor(n/2))²+n)², ceil(n*(ϕ^6)²/ϕ)]`
-/

namespace A032964.P1340252123874109426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ ^ 2 + n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.goldenRatio ^ 6) ^ 2 / Real.goldenRatio⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032964.P1340252123874109426

namespace A032964

/-- `lt[(gcd(1-n, floor(n/2))²+n)², ceil(n*(ϕ^6)²/ϕ)]` -/
def P1340252123874109426.Spec : Prop :=
  ∀ n, (P1340252123874109426.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P2044315797967553958

`lt[A276424(A004120(n)), n]`
-/

namespace A032964.P2044315797967553958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276424 (A004120 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032964.P2044315797967553958

namespace A032964

/-- `lt[A276424(A004120(n)), n]` -/
def P2044315797967553958.Spec : Prop :=
  ∀ n, (P2044315797967553958.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P1423009365195998370

`lt[A079097(n)², A004926(n)]`
-/

namespace A032964.P1423009365195998370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P1423009365195998370

namespace A032964

/-- `lt[A079097(n)², A004926(n)]` -/
def P1423009365195998370.Spec : Prop :=
  ∀ n, (P1423009365195998370.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P299495083232069744

`lt[A142150(A055647(abs(1-n))), n]`
-/

namespace A032964.P299495083232069744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A055647 |1 - (n : ℤ)|.toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032964.P299495083232069744

namespace A032964

/-- `lt[A142150(A055647(abs(1-n))), n]` -/
def P299495083232069744.Spec : Prop :=
  ∀ n, (P299495083232069744.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P6438932668888464979

`lt[A035689(n+1), A267354(n)²]`
-/

namespace A032964.P6438932668888464979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P6438932668888464979

namespace A032964

/-- `lt[A035689(n+1), A267354(n)²]` -/
def P6438932668888464979.Spec : Prop :=
  ∀ n, (P6438932668888464979.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P10792438018556949294

`lt[A142150(A055647(n)), n+1]+1`
-/

namespace A032964.P10792438018556949294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A055647 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A032964.P10792438018556949294

namespace A032964

/-- `lt[A142150(A055647(n)), n+1]+1` -/
def P10792438018556949294.Spec : Prop :=
  ∀ n, (P10792438018556949294.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P4128722393177177761

`lt[A055417(A026741(n)), A006000(n)]`
-/

namespace A032964.P4128722393177177761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 (A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P4128722393177177761

namespace A032964

/-- `lt[A055417(A026741(n)), A006000(n)]` -/
def P4128722393177177761.Spec : Prop :=
  ∀ n, (P4128722393177177761.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P10275919467557977728

`lt[A089593(A029579(n)), A004976(n)]`
-/

namespace A032964.P10275919467557977728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P10275919467557977728

namespace A032964

/-- `lt[A089593(A029579(n)), A004976(n)]` -/
def P10275919467557977728.Spec : Prop :=
  ∀ n, (P10275919467557977728.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P7457484849603509555

`lt[A057979(n), A048766(A194045(n))]`
-/

namespace A032964.P7457484849603509555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A194045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P7457484849603509555

namespace A032964

/-- `lt[A057979(n), A048766(A194045(n))]` -/
def P7457484849603509555.Spec : Prop :=
  ∀ n, (P7457484849603509555.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P1479477425620545826

`lt[A055647(n), 2*A317318(n)]`
-/

namespace A032964.P1479477425620545826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P1479477425620545826

namespace A032964

/-- `lt[A055647(n), 2*A317318(n)]` -/
def P1479477425620545826.Spec : Prop :=
  ∀ n, (P1479477425620545826.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P9571306445998111156

`lt[A001281(A055647(n)), A008593(n)]`
-/

namespace A032964.P9571306445998111156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P9571306445998111156

namespace A032964

/-- `lt[A001281(A055647(n)), A008593(n)]` -/
def P9571306445998111156.Spec : Prop :=
  ∀ n, (P9571306445998111156.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P9226209934487626615

`lt[A001281(A055647(n)), A008594(n)]`
-/

namespace A032964.P9226209934487626615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P9226209934487626615

namespace A032964

/-- `lt[A001281(A055647(n)), A008594(n)]` -/
def P9226209934487626615.Spec : Prop :=
  ∀ n, (P9226209934487626615.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P12628268353175119767

`lt[A152271(A055647(n)), A005408(n)]`
-/

namespace A032964.P12628268353175119767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P12628268353175119767

namespace A032964

/-- `lt[A152271(A055647(n)), A005408(n)]` -/
def P12628268353175119767.Spec : Prop :=
  ∀ n, (P12628268353175119767.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P17384430247772383556

`lt[A004526(A055647(n)), A317318(n)]`
-/

namespace A032964.P17384430247772383556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P17384430247772383556

namespace A032964

/-- `lt[A004526(A055647(n)), A317318(n)]` -/
def P17384430247772383556.Spec : Prop :=
  ∀ n, (P17384430247772383556.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P6560551729442291853

`lt[A152271(A055647(n)), A014683(n+1)]`
-/

namespace A032964.P6560551729442291853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P6560551729442291853

namespace A032964

/-- `lt[A152271(A055647(n)), A014683(n+1)]` -/
def P6560551729442291853.Spec : Prop :=
  ∀ n, (P6560551729442291853.a n : ℤ) = A032964 (n + 1)

end A032964

/-! ## A032964.P1861242886647824685

`lt[A152271(A055647(n)), A122825(n+1)]`
-/

namespace A032964.P1861242886647824685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032964.P1861242886647824685

namespace A032964

/-- `lt[A152271(A055647(n)), A122825(n+1)]` -/
def P1861242886647824685.Spec : Prop :=
  ∀ n, (P1861242886647824685.a n : ℤ) = A032964 (n + 1)

end A032964

/-!
# A032965: Numbers whose base-15 representation Sum_{i=0..m} d(i)*15^(m-i) has even d(i) for all odd i.

The programs for A032965, there is no canonical definition to state claims against.
-/

/-! ## A032965.P3644031314699653552

`lt[A124625(A055646(n)), n]`
-/

namespace A032965.P3644031314699653552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A055646 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032965.P3644031314699653552

/-! ## A032965.P5667486601170677419

`lt[A014682(A055646(n)), A008586(n)]`
-/

namespace A032965.P5667486601170677419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P5667486601170677419

/-! ## A032965.P16322201572055153161

`lt[A152271(A055646(n)), A004277(n)]`
-/

namespace A032965.P16322201572055153161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P16322201572055153161

/-! ## A032965.P10914095622430381972

`lt[A152271(A055646(n)), A005843(n)]`
-/

namespace A032965.P10914095622430381972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P10914095622430381972

/-! ## A032965.P11204404125730856965

`lt[A272825(A055646(n)), A004926(n)]`
-/

namespace A032965.P11204404125730856965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P11204404125730856965

/-! ## A032965.P7690551887638999944

`lt[A266593(A055646(n)), A301690(n)]`
-/

namespace A032965.P7690551887638999944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P7690551887638999944

/-! ## A032965.P9691279780757589075

`lt[A152271(A055646(n)), A000027(n+1)]`
-/

namespace A032965.P9691279780757589075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P9691279780757589075

/-! ## A032965.P13339248322471681495

`lt[A152271(A055646(n)), A000203(n+1)]`
-/

namespace A032965.P13339248322471681495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P13339248322471681495

/-! ## A032965.P6485923667140257691

`lt[A152271(A055646(n)), A018252(n+1)]`
-/

namespace A032965.P6485923667140257691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P6485923667140257691

/-! ## A032965.P16196021025138517042

`lt[A029306(n), A266593(A055646(n)+1)]`
-/

namespace A032965.P16196021025138517042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A055646 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P16196021025138517042

/-! ## A032965.P7533264397622392396

`lt[A266593(A055646(n)), A155724(n+1)]`
-/

namespace A032965.P7533264397622392396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P7533264397622392396

/-! ## A032965.P10077901064446206067

`lt[A266593(A055646(n)), A172367(n+1)]`
-/

namespace A032965.P10077901064446206067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P10077901064446206067

/-! ## A032965.P345061385680453245

`lt[A152271(A055646(n)), A152271(n)+n]`
-/

namespace A032965.P345061385680453245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P345061385680453245

/-! ## A032965.P10725229270681358898

`lt[A266593(A055646(n)), A266593(n)+n]`
-/

namespace A032965.P10725229270681358898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P10725229270681358898

/-! ## A032965.P6139230753665432106

`lt[A272825(A055646(n)), A272825(n)+n]`
-/

namespace A032965.P6139230753665432106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 (A055646 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P6139230753665432106

/-! ## A032965.P18362943481589219135

`lt[A046675(A055646(n)+1), A001222(n+1)]`
-/

namespace A032965.P18362943481589219135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 (A055646 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P18362943481589219135

/-! ## A032965.P5194429126519865239

`lt[A000463(A043319(n+1)), A004926(n)]`
-/

namespace A032965.P5194429126519865239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A043319 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P5194429126519865239

/-! ## A032965.P15918037759812825052

`lt[A000463(A043319(n+1)), A132336(n+1)]`
-/

namespace A032965.P15918037759812825052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A043319 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P15918037759812825052

/-! ## A032965.P5547507823946231442

`lt[A158416(A043319(n+1)), A155724(n+1)]`
-/

namespace A032965.P5547507823946231442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A043319 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P5547507823946231442

/-! ## A032965.P936974348000790202

`lt[A158416(A043319(n+1)), A172367(n+1)]`
-/

namespace A032965.P936974348000790202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A043319 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032965.P936974348000790202

/-!
# A032967: Numbers with the property that all pairs of consecutive base-4 digits differ by more than 1.

The programs for A032967, there is no canonical definition to state claims against.
-/

/-! ## A032967.P15707650323513669484

`∑[A343854(A125182(3*n+5))]`
-/

namespace A032967.P15707650323513669484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343854 (A125182 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032967.P15707650323513669484

/-! ## A032967.P563427245216891089

`∑[A054390(A008292(3*n+4)*A074971(2*(n+2)))]`
-/

namespace A032967.P563427245216891089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A008292 (3 * n + 4) * A074971 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032967.P563427245216891089

/-!
# A032969: Numbers with the property that all pairs of consecutive base-6 digits differ by more than 1.

The programs for A032969, there is no canonical definition to state claims against.
-/

/-! ## A032969.P6042187115942125231

`lt[3, A104704(n+1)%11]`
-/

namespace A032969.P6042187115942125231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104704 (n + 1)) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A032969.P6042187115942125231

/-! ## A032969.P16583170521482406524

`(a(n-4)+7)%A247661(n)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A032969.P16583170521482406524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  Int.tmod (a (n - 4) + 7) (A247661 n)

end

end A032969.P16583170521482406524

/-! ## A032969.P6193112312659320756

`(a(n-1)+a(n-4)-a(n-5))%A304243(n+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=9`
-/

namespace A032969.P6193112312659320756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 9] fun n a =>
  Int.tmod (a (n - 1) + a (n - 4) - a (n - 5)) (A304243 (n + 1))

end

end A032969.P6193112312659320756

/-! ## A032969.P5006020131791233580

`∑[A043286(A000211(n))²]`
-/

namespace A032969.P5006020131791233580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043286 (A000211 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032969.P5006020131791233580

/-! ## A032969.P12920241269881752198

`∑[A099837(A006355(n))²]`
-/

namespace A032969.P12920241269881752198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A006355 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032969.P12920241269881752198

/-!
# A032970: Numbers with the property that all pairs of consecutive base-7 digits differ by more than 1.

The programs for A032970, there is no canonical definition to state claims against.
-/

/-! ## A032970.P7091672268637014940

`∑[A066389((n+1)²+n)²]`
-/

namespace A032970.P7091672268637014940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 ((n + 1) ^ 2 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032970.P7091672268637014940

/-! ## A032970.P14296082373760985605

`∑[a(n-5)%5]%A260743(2*(n+1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=4`
-/

namespace A032970.P14296082373760985605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 4] fun n f1 =>
  f1 (n - 5) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A260743 (2 * (n + 1)))

end

end A032970.P14296082373760985605

/-! ## A032970.P11158600309182841303

`∑[A090751(A090288(n))²]`
-/

namespace A032970.P11158600309182841303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090751 (A090288 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032970.P11158600309182841303

/-!
# A032971: Numbers with the property that all pairs of consecutive base-8 digits differ by more than 1.

The programs for A032971, there is no canonical definition to state claims against.
-/

/-! ## A032971.P9458002352961853747

`∑[A280193(A129982(n))²]`
-/

namespace A032971.P9458002352961853747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A129982 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032971.P9458002352961853747

/-! ## A032971.P8943681572467919659

`∑[A245477(A327376(n+1))²]`
-/

namespace A032971.P8943681572467919659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (A327376 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032971.P8943681572467919659

/-! ## A032971.P542130173280453273

`lt[A040248(n), A040249(A359397(n+1))]`
-/

namespace A032971.P542130173280453273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040249 (A359397 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032971.P542130173280453273

/-! ## A032971.P12050548971558686034

`∑[A005811(A363941(2*(n+2)))²]`
-/

namespace A032971.P12050548971558686034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A363941 (2 * (n + 2))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032971.P12050548971558686034

/-! ## A032971.P13319104261558696951

`∑[A006519(A363941(2*(n+2))²)]`
-/

namespace A032971.P13319104261558696951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A363941 (2 * (n + 2)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032971.P13319104261558696951

/-!
# A032972: Numbers with the property that all pairs of consecutive base-9 digits differ by more than 1.

The programs for A032972, there is no canonical definition to state claims against.
-/

/-! ## A032972.P6682517980079120783

`lt[log2(A333939(n)), A008959(n)]`
-/

namespace A032972.P6682517980079120783
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A333939 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032972.P6682517980079120783

/-! ## A032972.P3422881354758194274

`lt[A283431(n), A010879(n)²]-1`
-/

namespace A032972.P3422881354758194274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A032972.P3422881354758194274

/-! ## A032972.P16753017355698222960

`record[C(A344543(n+1), A007094(n))]`
-/

namespace A032972.P16753017355698222960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344543 (n + 1)).toNat (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032972.P16753017355698222960

/-! ## A032972.P2671370813148704957

`lt[A357692(n+1), A048376(n+1)]`
-/

namespace A032972.P2671370813148704957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032972.P2671370813148704957

/-! ## A032972.P671302412627716174

`lt[A283431(n+1), A010879(n+1)²]`
-/

namespace A032972.P671302412627716174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032972.P671302412627716174

/-! ## A032972.P9982545265842523436

`record[A008616(A233583(A214677(n+1)))]`
-/

namespace A032972.P9982545265842523436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A233583 (A214677 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032972.P9982545265842523436

/-!
# A032973: Numbers with the property that all pairs of consecutive digits differ by more than 1.

The programs for A032973, there is no canonical definition to state claims against.
-/

/-! ## A032973.P2356838714719085713

`lt[A131809(n), A241494(n)]`
-/

namespace A032973.P2356838714719085713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P2356838714719085713

/-! ## A032973.P7026864410181554938

`lt[A131809(n), abs(A055017(n))]`
-/

namespace A032973.P7026864410181554938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P7026864410181554938

/-! ## A032973.P16505583296986015245

`lt[A131809(n), abs(A225693(n))]`
-/

namespace A032973.P16505583296986015245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P16505583296986015245

/-! ## A032973.P1853217841078187063

`lt[A175424(n), A055017(n)²]`
-/

namespace A032973.P1853217841078187063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P1853217841078187063

/-! ## A032973.P4250683685888017151

`lt[A151950(n), A241494(n)²]`
-/

namespace A032973.P4250683685888017151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P4250683685888017151

/-! ## A032973.P9714968075619179782

`lt[A175424(n), A241494(n)²]`
-/

namespace A032973.P9714968075619179782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P9714968075619179782

/-! ## A032973.P775818969391989809

`lt[A347689(n), A241494(n)²]`
-/

namespace A032973.P775818969391989809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P775818969391989809

/-! ## A032973.P12458050019776067264

`lt[A138908(n), 2*A072137(n)]`
-/

namespace A032973.P12458050019776067264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P12458050019776067264

/-! ## A032973.P17713480664878158636

`lt[A138902(n)², 2*A072137(n)]`
-/

namespace A032973.P17713480664878158636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P17713480664878158636

/-! ## A032973.P14788498824017264111

`lt[A061862(A196222(n)), A241494(n)²]`
-/

namespace A032973.P14788498824017264111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (A196222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032973.P14788498824017264111

/-!
# A032974: Numbers with the property that all pairs of consecutive base-3 digits differ by 0 or 1.

The programs for A032974, there is no canonical definition to state claims against.
-/

/-! ## A032974.P2145354157393815995

`record[A163528(A032980(n+1))]`
-/

namespace A032974.P2145354157393815995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A032980 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032974.P2145354157393815995

/-! ## A032974.P7825026646250780011

`∑[gcd(A117343(n+1), A159936(n+1))]`
-/

namespace A032974.P7825026646250780011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117343 (n + 1)) (A159936 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032974.P7825026646250780011

/-! ## A032974.P3925038929829179495

`∑[A108244(A314163(n))]`
-/

namespace A032974.P3925038929829179495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A314163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032974.P3925038929829179495

/-! ## A032974.P6141259967990146514

`∑[A108244(A314218(n))]`
-/

namespace A032974.P6141259967990146514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A314218 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032974.P6141259967990146514

/-! ## A032974.P10272174051223461261

`lt[A107504(n), A006785(A213919(n+5))]`
-/

namespace A032974.P10272174051223461261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (A213919 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032974.P10272174051223461261

/-!
# A032975: Numbers with the property that all pairs of consecutive base-4 digits differ by 0 or 1.

The programs for A032975, there is no canonical definition to state claims against.
-/

/-! ## A032975.P8559379325652004328

`∑[A038500(A106208(A029578(n)))]`
-/

namespace A032975.P8559379325652004328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A106208 (A029578 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032975.P8559379325652004328

/-!
# A032976: Numbers with the property that all pairs of consecutive base-5 digits differ by 0 or 1.

The programs for A032976, there is no canonical definition to state claims against.
-/

/-! ## A032976.P12580899511297447825

`∑[A084888(A006368(n)²)+1]`
-/

namespace A032976.P12580899511297447825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 (A006368 n ^ 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032976.P12580899511297447825

/-! ## A032976.P5921914833076107494

`∑[A231813(A161792(n+1))²]`
-/

namespace A032976.P5921914833076107494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A161792 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032976.P5921914833076107494

/-! ## A032976.P11832814133780282030

`∑[A243756(∑[A151903(n+1)])]`
-/

namespace A032976.P11832814133780282030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243756 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032976.P11832814133780282030

/-! ## A032976.P13038333403806242464

`∑[A100793(A084888(A006368(n)²))]`
-/

namespace A032976.P13038333403806242464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100793 (A084888 (A006368 n ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032976.P13038333403806242464

/-! ## A032976.P5861246897366586397

`a(n-1)+A084888(A006368(n)²)+A000038(n)!` with `a(0)=1`
-/

namespace A032976.P5861246897366586397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A084888 (A006368 n ^ 2).toNat + (Nat.factorial (A000038 n).toNat : ℤ))

end

end A032976.P5861246897366586397

/-!
# A032977: Numbers with the property that all pairs of consecutive base-6 digits differ by 0 or 1.

The programs for A032977, there is no canonical definition to state claims against.
-/

/-! ## A032977.P7626110139940690819

`eq[A151811(n), A165051(A165051(n))]`
-/

namespace A032977.P7626110139940690819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 (A165051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032977.P7626110139940690819

/-! ## A032977.P2914303954119118006

`lt[A037900(n), A211662(A324695(n+1))]`
-/

namespace A032977.P2914303954119118006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211662 (A324695 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032977.P2914303954119118006

/-! ## A032977.P5637547029520203429

`lt[A037900(n), A211662(A331784(n+1))]`
-/

namespace A032977.P5637547029520203429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211662 (A331784 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032977.P5637547029520203429

/-! ## A032977.P11529793951792956916

`lt[A037900(n), A211662(A331785(n+1))]`
-/

namespace A032977.P11529793951792956916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211662 (A331785 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032977.P11529793951792956916

/-! ## A032977.P17492711191366649854

`lt[A037900(n), A211662(A331873(n+1))]`
-/

namespace A032977.P17492711191366649854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211662 (A331873 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032977.P17492711191366649854

/-!
# A032978: Numbers with the property that all pairs of consecutive base-7 digits differ by 0 or 1.

The programs for A032978, there is no canonical definition to state claims against.
-/

/-! ## A032978.P11449897487385072430

`eq[n/a(A037901(n)), A000196(n²)]` with `a(0)=1`
-/

namespace A032978.P11449897487385072430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A037901 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A032978.P11449897487385072430

/-! ## A032978.P3000018204258669486

`lt[A319655(A165071(n)²), 2*n]`
-/

namespace A032978.P3000018204258669486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (A165071 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032978.P3000018204258669486

/-! ## A032978.P14041271501021659403

`lt[A180279((n+1)%8+(n+1)*n/2), n]`
-/

namespace A032978.P14041271501021659403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180279 (SequenceMachineLib.roundAway ((((n + 1) % 8 : ℕ) : ℚ) + (n + 1 : ℚ) * ((n : ℚ) / 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032978.P14041271501021659403

/-! ## A032978.P15851051491844063830

`lt[A007444(A315399(n)), A089030(n+1)]`
-/

namespace A032978.P15851051491844063830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A315399 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032978.P15851051491844063830

/-! ## A032978.P12795428895880933383

`lt[A238918(A165071(n)), n]`
-/

namespace A032978.P12795428895880933383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238918 (A165071 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032978.P12795428895880933383

/-!
# A032979: Numbers with the property that all pairs of consecutive base-8 digits differ by 0 or 1.

The programs for A032979, there is no canonical definition to state claims against.
-/

/-! ## A032979.P5615092200789819371

`eq[A086099(A165090(n)), A151878(n)]`
-/

namespace A032979.P5615092200789819371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A165090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032979.P5615092200789819371

/-! ## A032979.P2251377733636715434

`eq[A086099(A165090(n)), A151909(n)]`
-/

namespace A032979.P2251377733636715434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A165090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032979.P2251377733636715434

/-! ## A032979.P15081933493600067162

`eq[A086099(A165090(n)), A151933(n)]`
-/

namespace A032979.P15081933493600067162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A165090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032979.P15081933493600067162

/-! ## A032979.P18002650064686965003

`lt[A086099(A165090(n)), A124769(n)]`
-/

namespace A032979.P18002650064686965003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A165090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032979.P18002650064686965003

/-! ## A032979.P18076702235828711808

`lt[A165090(A165090(n)), A124766(n)]`
-/

namespace A032979.P18076702235828711808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 (A165090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032979.P18076702235828711808

/-!
# A032980: Numbers with the property that all pairs of consecutive base-9 digits differ by 0 or 1.

The programs for A032980, there is no canonical definition to state claims against.
-/

/-! ## A032980.P8667065008343653919

`lt[A004183(A165110(n)), A102382(n)]`
-/

namespace A032980.P8667065008343653919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A165110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032980.P8667065008343653919

/-! ## A032980.P9804697376376106451

`lt[A265556(n)-2, n+1]+1`
-/

namespace A032980.P9804697376376106451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A032980.P9804697376376106451

/-! ## A032980.P3160001483642840872

`eq[A054977(n), A175832(A165110(n))]`
-/

namespace A032980.P3160001483642840872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175832 (A165110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032980.P3160001483642840872

/-! ## A032980.P15697668661376327896

`eq[A057427(n), A175832(A165110(n))]`
-/

namespace A032980.P15697668661376327896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175832 (A165110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032980.P15697668661376327896

/-! ## A032980.P13287222696564964845

`lt[A014535(A165110(n)), n]`
-/

namespace A032980.P13287222696564964845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014535 (A165110 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032980.P13287222696564964845

/-!
# A032981: Positive numbers with the property that all pairs of consecutive base-10 digits differ by 0 or 1.

The programs for A032981, there is no canonical definition to state claims against.
-/

/-! ## A032981.P3856801690461516091

`eq[A002828(n²), A043562(A151949(n))]`
-/

namespace A032981.P3856801690461516091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032981.P3856801690461516091

/-! ## A032981.P12638704670054454985

`lt[A151949(A151949(n)), A138789(n+1)]`
-/

namespace A032981.P12638704670054454985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A151949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032981.P12638704670054454985

/-! ## A032981.P3015591277604257312

`eq[C(2, n+2), A106747(A347689(n))]`
-/

namespace A032981.P3015591277604257312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032981.P3015591277604257312

/-! ## A032981.P9526316468371070482

`eq[A000007(n), A102669(A347689(n))]`
-/

namespace A032981.P9526316468371070482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032981.P9526316468371070482

/-! ## A032981.P9155618278887791331

`lt[A151949(A151949(n)), A124766(n)]`
-/

namespace A032981.P9155618278887791331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A151949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032981.P9155618278887791331

/-!
# A032982: Numbers with the property that all pairs of consecutive base-5 digits differ by more than 2.

The programs for A032982, there is no canonical definition to state claims against.
-/

/-! ## A032982.P33930298631098848

`eq[A060502(n+3), A124460(n)]`
-/

namespace A032982.P33930298631098848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032982.P33930298631098848

/-! ## A032982.P4356684590710786081

`eq[A000032(A014473(n)), A351112(n+1)]`
-/

namespace A032982.P4356684590710786081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A014473 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032982.P4356684590710786081

/-! ## A032982.P18427905580975355011

`eq[A007318(n), A270644(A239886(n+1))]`
-/

namespace A032982.P18427905580975355011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270644 (A239886 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032982.P18427905580975355011

/-! ## A032982.P6393242706306915984

`eq[A054429(A008277(n+1)), A060502(n+3)]`
-/

namespace A032982.P6393242706306915984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A008277 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032982.P6393242706306915984

/-!
# A032983: Numbers with the property that all pairs of consecutive base-6 digits differ by more than 2.

The programs for A032983, there is no canonical definition to state claims against.
-/

/-! ## A032983.P6798470852317783233

`lt[A257990(A036018(2*n+1)), (n^4)%7]`
-/

namespace A032983.P6798470852317783233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A036018 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032983.P6798470852317783233

/-! ## A032983.P10254949876149335463

`eq[A025461(2*n), A292438(A115026(2*n+1))]`
-/

namespace A032983.P10254949876149335463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A115026 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032983.P10254949876149335463

/-!
# A032984: Numbers with the property that all pairs of consecutive base-7 digits differ by more than 2.

The programs for A032984, there is no canonical definition to state claims against.
-/

/-! ## A032984.P12294869032239721334

`eq[A002265(A165072(n)+1), A185117(n)]`
-/

namespace A032984.P12294869032239721334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165072 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032984.P12294869032239721334

/-! ## A032984.P16104330360052506563

`∑[A119339(A286237(A167614(2*n+1)))]`
-/

namespace A032984.P16104330360052506563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119339 (A286237 (A167614 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032984.P16104330360052506563

/-! ## A032984.P16706008646532239137

`lt[A140261(n)+A140230(n+1), A140276(n)]`
-/

namespace A032984.P16706008646532239137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140261 n + A140230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032984.P16706008646532239137

/-! ## A032984.P13958478095656018891

`lt[A173438(A330994(n)), A331005(n)]`
-/

namespace A032984.P13958478095656018891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173438 (A330994 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032984.P13958478095656018891

/-!
# A032985: Numbers with the property that all pairs of consecutive base-8 digits differ by more than 2.

The programs for A032985, there is no canonical definition to state claims against.
-/

/-! ## A032985.P8302639827592149840

`lt[A292042(A000212(n)+1), n]`
-/

namespace A032985.P8302639827592149840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 (A000212 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032985.P8302639827592149840

/-! ## A032985.P16875208702361562013

`lt[A292042(A000212(n)), A048379(n)]`
-/

namespace A032985.P16875208702361562013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 (A000212 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032985.P16875208702361562013

/-! ## A032985.P384372679221858217

`lt[A292042(A000212(n)), A216556(n)]`
-/

namespace A032985.P384372679221858217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 (A000212 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032985.P384372679221858217

/-! ## A032985.P3025655189832852700

`lt[A185118(n), A321282(A165091(n))]`
-/

namespace A032985.P3025655189832852700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321282 (A165091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032985.P3025655189832852700

/-! ## A032985.P6538688905792207356

`lt[A292042(A000212(n))-1, A004728(n)]`
-/

namespace A032985.P6538688905792207356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 (A000212 n).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032985.P6538688905792207356

/-!
# A032986: Numbers with the property that all pairs of consecutive base-9 digits differ by more than 2.

The programs for A032986, there is no canonical definition to state claims against.
-/

/-! ## A032986.P2777056686804510146

`lt[A360315(n), A319246(n+1)]`
-/

namespace A032986.P2777056686804510146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032986.P2777056686804510146

/-! ## A032986.P5369872776216400216

`lt[2*A360315(n), A053035(n+1)]`
-/

namespace A032986.P5369872776216400216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032986.P5369872776216400216

/-! ## A032986.P2202947345722311274

`lt[A112274(3*n+4), A112233(n+1)]`
-/

namespace A032986.P2202947345722311274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112274 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032986.P2202947345722311274

/-! ## A032986.P17366719699426940655

`lt[A112274(3*n+4), A112235(n+1)]`
-/

namespace A032986.P17366719699426940655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112274 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032986.P17366719699426940655

/-! ## A032986.P15495448977199095703

`lt[A112274(3*n+4), A138373(n+1)]`
-/

namespace A032986.P15495448977199095703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112274 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032986.P15495448977199095703

/-!
# A032987: Numbers with the property that all pairs of consecutive base-10 digits differ by more than 2.

The programs for A032987, there is no canonical definition to state claims against.
-/

/-! ## A032987.P10980082192934651922

`lt[A196222(n), 2*A241494(n)]`
-/

namespace A032987.P10980082192934651922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032987.P10980082192934651922

/-! ## A032987.P15907023476201368467

`lt[A139337(n), (A241494(n)+1)²]`
-/

namespace A032987.P15907023476201368467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A241494 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032987.P15907023476201368467

/-! ## A032987.P14722836474304745564

`lt[2*A151950(n), A241494(n)²]`
-/

namespace A032987.P14722836474304745564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032987.P14722836474304745564

/-! ## A032987.P14546399142667885349

`lt[2*A347689(n), A241494(n)²]`
-/

namespace A032987.P14546399142667885349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032987.P14546399142667885349

/-! ## A032987.P9707054316130418450

`lt[A131809(n), (A055017(n)/2)²]`
-/

namespace A032987.P9707054316130418450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055017 n : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032987.P9707054316130418450

/-! ## A032987.P15950088065474669458

`lt[A131809(n), (A241494(n)/2)²]`
-/

namespace A032987.P15950088065474669458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241494 n : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032987.P15950088065474669458

/-! ## A032987.P16344895174274922639

`lt[A002266(A123895(n)), A241494(n)]`
-/

namespace A032987.P16344895174274922639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A123895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032987.P16344895174274922639

/-! ## A032987.P13057313207363197926

`lt[A036042(A151950(n)), A241494(n)]`
-/

namespace A032987.P13057313207363197926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032987.P13057313207363197926

/-!
# A032988: Numbers k such that if d,e are consecutive digits of k in base 6, then |d-e| >= 4.

The programs for A032988, there is no canonical definition to state claims against.
-/

/-! ## A032988.P8303741231276386044

`∑[A135900(A231473(3*(n+2)))]`
-/

namespace A032988.P8303741231276386044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135900 (A231473 (3 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032988.P8303741231276386044

/-! ## A032988.P1989665948393859798

`∑[ceil(A237593(A000984(n))/ϕ²)]`
-/

namespace A032988.P1989665948393859798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A237593 (A000984 n).toNat : ℝ) / Real.goldenRatio ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032988.P1989665948393859798

/-! ## A032988.P9134558515723103300

`∑[ceil(A296554(A296130(n+1))/5)]`
-/

namespace A032988.P9134558515723103300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A296554 (A296130 (n + 1)).toNat : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032988.P9134558515723103300

/-! ## A032988.P11468382555134133340

`record[A033273(A152654(3*(n+1))+1)+n]`
-/

namespace A032988.P11468382555134133340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A152654 (3 * (n + 1)) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032988.P11468382555134133340

/-! ## A032988.P2172878634923562967

`record[gcd(A058487(2*(n+2)), A332108(n+1))]`
-/

namespace A032988.P2172878634923562967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058487 (2 * (n + 2))) (A332108 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032988.P2172878634923562967

/-!
# A032989: If d,e are consecutive digits of n in base 7, then |d-e|>=4.

The programs for A032989, there is no canonical definition to state claims against.
-/

/-! ## A032989.P9406912828813458194

`eq[A002265(A165072(n)), A185117(n)]`
-/

namespace A032989.P9406912828813458194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165072 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032989.P9406912828813458194

/-! ## A032989.P7378520971860790290

`eq[A185117(A165072(n)!), A185117(n)]`
-/

namespace A032989.P7378520971860790290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 (Nat.factorial (A165072 n).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032989.P7378520971860790290

/-! ## A032989.P4490419677303830102

`eq[A226162(A022272(n)), A281871(n)]`
-/

namespace A032989.P4490419677303830102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 (A022272 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032989.P4490419677303830102

/-! ## A032989.P17891654265014182077

`∑[A306438(∑[A309936(3*n+2)])]`
-/

namespace A032989.P17891654265014182077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309936 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306438 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032989.P17891654265014182077

/-!
# A032990: If d,e are consecutive digits of n in base 8, then |d-e|>=4.

The programs for A032990, there is no canonical definition to state claims against.
-/

/-! ## A032990.P5898715920084775680

`eq[A002265(A165091(n)), A185118(n)]`
-/

namespace A032990.P5898715920084775680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032990.P5898715920084775680

/-! ## A032990.P15951208939022250739

`lt[A140994(A293407(n)), A000203(n+1)]`
-/

namespace A032990.P15951208939022250739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 (A293407 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032990.P15951208939022250739

/-! ## A032990.P10068857255159442408

`lt[A140994(A293407(n)), A344291(n+1)]`
-/

namespace A032990.P10068857255159442408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 (A293407 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032990.P10068857255159442408

/-! ## A032990.P4740490699076341867

`lt[p?[A181482(n+1)], A284641(n)]`
-/

namespace A032990.P4740490699076341867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A032990.P4740490699076341867

/-! ## A032990.P1051902588648834439

`lt[A293377(A293408(n)), A194038(2*n)]`
-/

namespace A032990.P1051902588648834439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 (A293408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194038 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032990.P1051902588648834439

/-!
# A032991: If d,e are consecutive digits of n in base 9, then |d-e|>=4.

The programs for A032991, there is no canonical definition to state claims against.
-/

/-! ## A032991.P7506501695819302562

`eq[A002266(A165111(n)+1), A185119(n)]`
-/

namespace A032991.P7506501695819302562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A165111 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032991.P7506501695819302562

/-! ## A032991.P16646002916445271684

`eq[A185119(A165111(n)!), A185119(n)]`
-/

namespace A032991.P16646002916445271684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 (Nat.factorial (A165111 n).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032991.P16646002916445271684

/-! ## A032991.P7829790385739396249

`lt[A240219(A027907(n)), A010879(n+1)]`
-/

namespace A032991.P7829790385739396249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240219 (A027907 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032991.P7829790385739396249

/-! ## A032991.P11601597153717308176

`lt[A089052(A000567(2*(n+2))), A316476(n+2)]`
-/

namespace A032991.P11601597153717308176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000567 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032991.P11601597153717308176

/-! ## A032991.P15088354971640092752

`lt[A089052(A000567(2*(n+2))), A269757(3*n)]`
-/

namespace A032991.P15088354971640092752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000567 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032991.P15088354971640092752

/-!
# A032992: If d,e are consecutive digits of n in base 10, then |d-e|>=4.

The programs for A032992, there is no canonical definition to state claims against.
-/

/-! ## A032992.P3514272715488476901

`lt[A196222(n), A241494(n)+1]`
-/

namespace A032992.P3514272715488476901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032992.P3514272715488476901

/-! ## A032992.P9998660976750121595

`lt[A139337(n), A241494(n)²+1]`
-/

namespace A032992.P9998660976750121595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032992.P9998660976750121595

/-! ## A032992.P1279637991095628549

`lt[A151950(n), A241494(n)²/3]`
-/

namespace A032992.P1279637991095628549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241494 n ^ 2 : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032992.P1279637991095628549

/-! ## A032992.P17700025678819503966

`lt[A010784(A196222(n)), A241494(n)]`
-/

namespace A032992.P17700025678819503966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (A196222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032992.P17700025678819503966

/-! ## A032992.P10744392453416814920

`lt[A131809(n), A072137(A225693(n)²)²]`
-/

namespace A032992.P10744392453416814920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 (A225693 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032992.P10744392453416814920

/-!
# A032993: If d,e are consecutive digits of n in base 11, then |d-e|>=4.

The programs for A032993, there is no canonical definition to state claims against.
-/

/-! ## A032993.P11524893155333035915

`lt[∑[∑[12*n-3]+4], A282350(n)]`
-/

namespace A032993.P11524893155333035915
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282350 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A032993.P11524893155333035915

/-! ## A032993.P9007443907221758054

`lt[∑[A214963(n)], A080241(3*n)]`
-/

namespace A032993.P9007443907221758054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214963 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080241 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A032993.P9007443907221758054

/-! ## A032993.P5537905838099840234

`lt[A359047(n+1), A162321(A053831(n))]`
-/

namespace A032993.P5537905838099840234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162321 (A053831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032993.P5537905838099840234

/-! ## A032993.P11363031487856134022

`lt[A115650(n+1), A018902(A053831(n))]`
-/

namespace A032993.P11363031487856134022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 (A053831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032993.P11363031487856134022

/-!
# A032994: If d,e are consecutive digits of n in base 12, then |d-e|>=4.

The programs for A032994, there is no canonical definition to state claims against.
-/

/-! ## A032994.P7406697976372185678

`lt[A154615(A054895(n)), n]`
-/

namespace A032994.P7406697976372185678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154615 (A054895 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032994.P7406697976372185678

/-! ## A032994.P13513666323801833346

`lt[A002265(A035044(n)), n%12]`
-/

namespace A032994.P13513666323801833346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A035044 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032994.P13513666323801833346

/-! ## A032994.P11030062601878033683

`lt[A037471(A222254(3*n))/5, n]`
-/

namespace A032994.P11030062601878033683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037471 (A222254 (3 * n)).toNat : ℚ) / 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A032994.P11030062601878033683

/-! ## A032994.P5181479797197360256

`lt[∑[A268643(3*n+4)], A053832(n)]`
-/

namespace A032994.P5181479797197360256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A032994.P5181479797197360256

/-! ## A032994.P8985401526882124834

`∑[A328025(A014726(A266213(n)))]`
-/

namespace A032994.P8985401526882124834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328025 (A014726 (A266213 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032994.P8985401526882124834

/-!
# A032995: If d,e are consecutive digits of n in base 7, then |d-e|>=5.

The programs for A032995, there is no canonical definition to state claims against.
-/

/-! ## A032995.P1912680652354244894

`∑[A128227(A057944(n)^A094053(n+1))]`
-/

namespace A032995.P1912680652354244894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.roundAway ((A057944 n : ℚ) ^ (A094053 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032995.P1912680652354244894

/-! ## A032995.P14007422390850119006

`∑[A063892(lcm(32, n)%(2^n)/2+1)]`
-/

namespace A032995.P14007422390850119006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063892 (SequenceMachineLib.roundAway (((Nat.lcm 32 n % 2 ^ n : ℕ) : ℚ) / 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032995.P14007422390850119006

/-! ## A032995.P14623394795833181314

`A358733(A178767(n+1))`
-/

namespace A032995.P14623394795833181314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358733 (A178767 (n + 1)).toNat

end

end A032995.P14623394795833181314

/-! ## A032995.P4791486935855018125

`record[gcd(A084192(n), A319083(n))]`
-/

namespace A032995.P4791486935855018125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084192 n) (A319083 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032995.P4791486935855018125

/-! ## A032995.P15116312043207276704

`∑[A070422(A120043(2*n)²)]`
-/

namespace A032995.P15116312043207276704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070422 (A120043 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032995.P15116312043207276704

/-!
# A032996: If d,e are consecutive digits of n in base 8, then |d-e|>=5.

The programs for A032996, there is no canonical definition to state claims against.
-/

/-! ## A032996.P9562156361776592771

`∑[A114225(A113767(n+1))]`
-/

namespace A032996.P9562156361776592771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114225 (A113767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032996.P9562156361776592771

/-! ## A032996.P4359796095193196092

`lt[A272626(∑[A007094(n)]+1), n]`
-/

namespace A032996.P4359796095193196092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272626 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A032996.P4359796095193196092

/-! ## A032996.P4796606828203853302

`or(A056172(A188473(n+1)), A322260(n+1))`
-/

namespace A032996.P4796606828203853302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056172 (A188473 (n + 1)).toNat) (A322260 (n + 1))

end

end A032996.P4796606828203853302

/-! ## A032996.P3264700881794454674

`record[A204016(A198300(n+1)-A204016(n+1))]`
-/

namespace A032996.P3264700881794454674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A198300 (n + 1) - A204016 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032996.P3264700881794454674

/-!
# A032997: If d,e are consecutive digits of n in base 9, then |d-e|>=5.

The programs for A032997, there is no canonical definition to state claims against.
-/

/-! ## A032997.P3191754624632781848

`eq[A002266(A165111(n)), A185119(n)]`
-/

namespace A032997.P3191754624632781848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A165111 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032997.P3191754624632781848

/-! ## A032997.P1508314987077446752

`lt[(2-n)², cosh(n%9)]`
-/

namespace A032997.P1508314987077446752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((n % 9 : ℕ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A032997.P1508314987077446752

/-! ## A032997.P9197967735297586676

`lt[(n-2)^(4/dr(n+1)), 5]`
-/

namespace A032997.P9197967735297586676
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℝ) ^ (4 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A032997.P9197967735297586676

/-! ## A032997.P4409938553794023861

`lt[(2-n)^4, 5^dr(n+1)]`
-/

namespace A032997.P4409938553794023861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032997.P4409938553794023861

/-! ## A032997.P14886223032182000267

`lt[A053392(2*n), dr(n)]`
-/

namespace A032997.P14886223032182000267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A032997.P14886223032182000267

/-!
# A032998: If d,e are consecutive digits of n in base 10, then |d-e|>=5.

The programs for A032998, there is no canonical definition to state claims against.
-/

/-! ## A032998.P14479541917883715216

`lt[A151950(n), (A241494(n)/2)²]`
-/

namespace A032998.P14479541917883715216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241494 n : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032998.P14479541917883715216

/-! ## A032998.P11506931013597883931

`lt[A347689(n), (A241494(n)/2)²]`
-/

namespace A032998.P11506931013597883931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241494 n : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A032998.P11506931013597883931

/-! ## A032998.P6000662483145387927

`lt[A023733(A196222(n)), A241494(n)]`
-/

namespace A032998.P6000662483145387927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A196222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032998.P6000662483145387927

/-! ## A032998.P11184632334777249912

`lt[A189663(A139337(n)), A241494(n)]`
-/

namespace A032998.P11184632334777249912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032998.P11184632334777249912

/-! ## A032998.P4310754818626113848

`lt[A289087(A347689(n)), A145568(n)]`
-/

namespace A032998.P4310754818626113848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289087 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032998.P4310754818626113848

/-!
# A032999: If d,e are consecutive digits of n in base 11, then |d-e|>=5.

The programs for A032999, there is no canonical definition to state claims against.
-/

/-! ## A032999.P1618369003558431681

`lt[A111901(3*n), A007089(A113699(n+1))]`
-/

namespace A032999.P1618369003558431681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111901 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A113699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032999.P1618369003558431681

/-! ## A032999.P12417502422167681666

`lt[A126796(3*n+2), A000330(A113699(n+1))]`
-/

namespace A032999.P12417502422167681666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126796 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A113699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032999.P12417502422167681666

/-! ## A032999.P15002525796419794576

`lt[A000009(3*n+4), A002378(A113699(n+1))]`
-/

namespace A032999.P15002525796419794576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A113699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032999.P15002525796419794576

/-! ## A032999.P13685476680199275387

`lt[A364839(n), A000081(A053831(n))]`
-/

namespace A032999.P13685476680199275387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A053831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032999.P13685476680199275387

/-! ## A032999.P9047729128959493541

`lt[A193842(A226290(n+3)), A358637(2*n+3)]`
-/

namespace A032999.P9047729128959493541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A226290 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032999.P9047729128959493541

