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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A398300: a(n) is the minimum possible sum of the numbers on all non-mine cells when n mines are placed on an infinite Minesweeper board (each non-mine cell's number is the count of mines among its up to 8 neighbors).

The programs for A398300, the canonical program `A398300.P2858714858380498305` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398300 has offset 1).

The definition of A398300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398300.P2858714858380498305

`2*ceil(sqrt(28*(n+1)-12))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398300

/-- `2*ceil(sqrt(28*(n+1)-12))` -/
def P2858714858380498305.Spec : Prop :=
  ∀ n, P2858714858380498305.a n = A398300 (n + 1)

theorem P2858714858380498305.correct : P2858714858380498305.Spec := by
  intro n
  simp only [A398300, Nat.add_sub_cancel]

end A398300

/-! ## A398300.P12919867050570480368

`A027709(7*n+3)`
-/

namespace A398300.P12919867050570480368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (7 * n + 3)

end

end A398300.P12919867050570480368

namespace A398300

/-- `A027709(7*n+3)` -/
def P12919867050570480368.Spec : Prop :=
  ∀ n, P12919867050570480368.a n = A398300 (n + 1)

end A398300

/-! ## A398300.P12199050057179356309

`lcm(2, A027709(A017017(n)))`
-/

namespace A398300.P12199050057179356309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A027709 (A017017 n).toNat)

end

end A398300.P12199050057179356309

namespace A398300

/-- `lcm(2, A027709(A017017(n)))` -/
def P12199050057179356309.Spec : Prop :=
  ∀ n, (P12199050057179356309.a n : ℤ) = A398300 (n + 1)

end A398300

/-! ## A398300.P17230231669203240838

`A130819(A063146(n+1))`
-/

namespace A398300.P17230231669203240838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130819 (A063146 (n + 1)).toNat

end

end A398300.P17230231669203240838

namespace A398300

/-- `A130819(A063146(n+1))` -/
def P17230231669203240838.Spec : Prop :=
  ∀ n, P17230231669203240838.a n = A398300 (n + 1)

end A398300

/-! ## A398300.P15945317883865128578

`A161205(2*A175229(2*n+1))`
-/

namespace A398300.P15945317883865128578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (2 * A175229 (2 * n + 1)).toNat

end

end A398300.P15945317883865128578

namespace A398300

/-- `A161205(2*A175229(2*n+1))` -/
def P15945317883865128578.Spec : Prop :=
  ∀ n, P15945317883865128578.a n = A398300 (n + 1)

end A398300

/-!
# A398301: Numbers k in A055932 such that k/rad(k) != m/rad(m) for m < k, where rad = A007947.

The programs for A398301, there is no canonical definition to state claims against.
-/

/-! ## A398301.P5273775158778443750

`A398314(A397500(n+1))`
-/

namespace A398301.P5273775158778443750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398314 (A397500 (n + 1)).toNat

end

end A398301.P5273775158778443750

/-! ## A398301.P16325280932298400687

`record[A322820(A055932(n+1))]`
-/

namespace A398301.P16325280932298400687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398301.P16325280932298400687

/-! ## A398301.P4879578832549655587

`eq[1, and(a(A064989(n)), n+1)]` with `a(0)=-6, a(1)=1, a(2)=4`
-/

namespace A398301.P4879578832549655587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-6, 1, 4] fun n f2 =>
  Int.land (f2 (A064989 n).toNat) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A398301.P4879578832549655587

/-! ## A398301.P5686625159117314873

`∩[A055744(n+1), A331935(n+1)]`
-/

namespace A398301.P5686625159117314873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398301.P5686625159117314873

/-! ## A398301.P3068729901602524751

`∩[A055744(n+1), A356955(n+1)]`
-/

namespace A398301.P3068729901602524751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398301.P3068729901602524751

/-!
# A398302: In the canonical representation of n as a product of powers of prime numbers, a(n) is the position of the last prime with an exponent greater than 1, or 0 if n is squarefree.

The programs for A398302, there is no canonical definition to state claims against.
-/

/-! ## A398302.P228843756251455277

`A061395(A396938(n+1))`
-/

namespace A398302.P228843756251455277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A396938 (n + 1)).toNat

end

end A398302.P228843756251455277

/-! ## A398302.P11304246608807264754

`A048881(A334032(1+n))`
-/

namespace A398302.P11304246608807264754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A334032 (1 + n)).toNat

end

end A398302.P11304246608807264754

/-! ## A398302.P13706500595373377608

`A000120(A334032(1+n)+1)-1`
-/

namespace A398302.P13706500595373377608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A334032 (1 + n) + 1).toNat - 1

end

end A398302.P13706500595373377608

/-! ## A398302.P1729001126271197041

`5%A000120(A334032(n+1)+1)`
-/

namespace A398302.P1729001126271197041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A000120 (A334032 (n + 1) + 1).toNat)

end

end A398302.P1729001126271197041

/-! ## A398302.P13414028591375095561

`A087624(A375400(n+1))`
-/

namespace A398302.P13414028591375095561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A375400 (n + 1)).toNat

end

end A398302.P13414028591375095561

/-! ## A398302.P3552347046299997803

`A001221(gcd(A008683(n+1), A375400(n+1)))`
-/

namespace A398302.P3552347046299997803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A008683 (n + 1)) (A375400 (n + 1)))

end

end A398302.P3552347046299997803

/-! ## A398302.P993634926428599231

`A056170((2*(n+1))^A056170(n+1))`
-/

namespace A398302.P993634926428599231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) ^ (A056170 (n + 1) : ℤ))).toNat

end

end A398302.P993634926428599231

/-! ## A398302.P7174635847118627107

`A056170(C(A005843(n+1), A056170(n+1)))`
-/

namespace A398302.P7174635847118627107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (Nat.choose (A005843 (n + 1)).toNat (A056170 (n + 1)).toNat)

end

end A398302.P7174635847118627107

/-! ## A398302.P15931063033125345204

`A056170(C(A028310(2*(n+1)), A056170(n+1)))`
-/

namespace A398302.P15931063033125345204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (Nat.choose (A028310 (2 * (n + 1))).toNat (A056170 (n + 1)).toNat)

end

end A398302.P15931063033125345204

/-! ## A398302.P13046250631095445407

`A049419(A256690(2*(n+1)))%A256690(n+1)`
-/

namespace A398302.P13046250631095445407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049419 (A256690 (2 * (n + 1))).toNat) (A256690 (n + 1))

end

end A398302.P13046250631095445407

/-!
# A398304: a(n) = A398303(n) / A398006(A398303(n)).

The programs for A398304, there is no canonical definition to state claims against.
-/

/-! ## A398304.P5372886902381919565

`A398303(n+1)/A398006(A398303(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398304.P5372886902381919565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398303 (n + 1) : ℚ) / (A398006 (A398303 (n + 1)).toNat : ℚ)

end

end A398304.P5372886902381919565

/-!
# A398306: Numbers k such that (26^k + 5^k)/31 is prime.

The programs for A398306, there is no canonical definition to state claims against.
-/

/-! ## A398306.P6443225097135241872

`A092195(A305876(n))`
-/

namespace A398306.P6443225097135241872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092195 (A305876 n).toNat

end

end A398306.P6443225097135241872

/-!
# A398307: Indices of zero terms in the Van Eck-like sequence A398259 whose lookup key is the decimal digit sum of the previous term.

The programs for A398307, there is no canonical definition to state claims against.
-/

/-! ## A398307.P11638190265672295635

`eq[0, A398259(n+1)]+1`
-/

namespace A398307.P11638190265672295635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398307.P11638190265672295635

/-! ## A398307.P14019873883920653694

`A171865(n+1)+A035185(A112819(3*n+5))`
-/

namespace A398307.P14019873883920653694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171865 (n + 1) + A035185 (A112819 (3 * n + 5)).toNat

end

end A398307.P14019873883920653694

/-!
# A398308: Numbers k such that (25^k + 4^k)/29 is prime.

The programs for A398308, there is no canonical definition to state claims against.
-/

/-! ## A398308.P10500885557864102642

`p?[∑[A356449(n+1)]]`
-/

namespace A398308.P10500885557864102642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356449 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A398308.P10500885557864102642

/-!
# A398309: Number of indecomposable closed walks of length n on the Petersen graph based at a vertex.

The programs for A398309, the canonical program `A398309.P7943178715840063505` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398309 has offset 0).

The definition of A398309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398309.P10295708892769642069

`ogf((1-2x+x^2-6x^3)/(1-2x-2x^2))`
-/

namespace A398309.P10295708892769642069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, -6] [1, -2, -2] n

end

end A398309.P10295708892769642069

namespace A398309

/-- `ogf((1-2x+x^2-6x^3)/(1-2x-2x^2))` -/
def P10295708892769642069.Spec : Prop :=
  ∀ n, P10295708892769642069.a n = A398309 n

end A398309

/-! ## A398309.P7943178715840063505

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398309

/-- `2*a(n-1)+2*a(n-2)` -/
def P7943178715840063505.Spec : Prop :=
  ∀ n, (P7943178715840063505.a n : ℤ) = A398309 n

theorem P7943178715840063505.correct : P7943178715840063505.Spec := by
  intro n
  simp only [A398309]

end A398309

/-! ## A398309.P13329404263686679713

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0`
-/

namespace A398309.P13329404263686679713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 0] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A398309.P13329404263686679713

namespace A398309

/-- `2*(a(n-1)+a(n-2))` -/
def P13329404263686679713.Spec : Prop :=
  ∀ n, (P13329404263686679713.a n : ℤ) = A398309 n

theorem P13329404263686679713.correct : P13329404263686679713.Spec := by
  intro n
  simp only [A398309, Nat.add_sub_cancel, A398309.P13329404263686679713.a, A398309.P7943178715840063505.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A398309

/-! ## A398309.P16673555104666215544

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0`
-/

namespace A398309.P16673555104666215544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 0] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A398309.P16673555104666215544

namespace A398309

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P16673555104666215544.Spec : Prop :=
  ∀ n, (P16673555104666215544.a n : ℤ) = A398309 n

theorem P16673555104666215544.correct : P16673555104666215544.Spec := by
  intro n
  simp only [A398309, Nat.add_sub_cancel, A398309.P16673555104666215544.a, A398309.P7943178715840063505.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A398309

/-! ## A398309.P7694673521675512494

`(2*(a(n-1)-floor(-a(n-2))))%A293017(n)` with `a(0)=1, a(1)=0, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A398309.P7694673521675512494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  Int.tmod (2 * (a (n - 1) - (-a (n - 2)))) (A293017 n)

end

end A398309.P7694673521675512494

namespace A398309

/-- `(2*(a(n-1)-floor(-a(n-2))))%A293017(n)` -/
def P7694673521675512494.Spec : Prop :=
  ∀ n, P7694673521675512494.a n = A398309 n

end A398309

/-!
# A398310: Number of indecomposable closed walks of length n on the regular icosahedron based at a vertex.

The programs for A398310, the canonical program `A398310.P8489695089946524381` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398310 has offset 0).

The definition of A398310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398310.P17791529936649675247

`ogf((1-4x-25x^4)/(1-4x-5x^2+10x^3))`
-/

namespace A398310.P17791529936649675247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 0, 0, -25] [1, -4, -5, 10] n

end

end A398310.P17791529936649675247

namespace A398310

/-- `ogf((1-4x-25x^4)/(1-4x-5x^2+10x^3))` -/
def P17791529936649675247.Spec : Prop :=
  ∀ n, P17791529936649675247.a n = A398310 n

end A398310

/-! ## A398310.P8489695089946524381

`4*a(n-1)+5*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=10, a(4)=40`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398310

/-- `4*a(n-1)+5*a(n-2)-10*a(n-3)` -/
def P8489695089946524381.Spec : Prop :=
  ∀ n, P8489695089946524381.a n = A398310 n

theorem P8489695089946524381.correct : P8489695089946524381.Spec := by
  intro n
  simp only [A398310]

end A398310

/-!
# A398311: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 2*x)^2) / (1 - x).

The programs for A398311, there is no canonical definition to state claims against.
-/

/-! ## A398311.P17405205159162312815

`A324744(n-1+row(n)^n)`
-/

namespace A398311.P17405205159162312815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324744 ((n : ℤ) - 1 + (SequenceMachineLib.triRow n ^ n : ℤ)).toNat

end

end A398311.P17405205159162312815

/-! ## A398311.P13855204317025488566

`A085311(A088088(n))`
-/

namespace A398311.P13855204317025488566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085311 (A088088 n).toNat

end

end A398311.P13855204317025488566

/-!
# A398313: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^2) / (1 - 2*x).

The programs for A398313, there is no canonical definition to state claims against.
-/

/-! ## A398313.P12767353679901944974

`A127087(n)-A114611(A116701(n))`
-/

namespace A398313.P12767353679901944974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127087 n - A114611 (A116701 n).toNat

end

end A398313.P12767353679901944974

/-!
# A398314: a(n) = n * A002110(pi(gpf(n))), where pi = A000720 and gpf(n) is the greatest prime factor of n.

The programs for A398314, the canonical program `A398314.P10672701769070794526` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398314 has offset 1).

The definition of A398314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398314.P10672701769070794526

`(n+1)*A002110(A000720(A006530(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A398314

/-- `(n+1)*A002110(A000720(A006530(n+1)))` -/
def P10672701769070794526.Spec : Prop :=
  ∀ n, P10672701769070794526.a n = A398314 (n + 1)

theorem P10672701769070794526.correct : P10672701769070794526.Spec := by
  intro n
  simp only [A398314, Nat.add_sub_cancel]

end A398314

/-! ## A398314.P17988695849076126245

`(n+1)*∏{p}[n+1, #]*A083720(n+1)`
-/

namespace A398314.P17988695849076126245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) * A083720 (n + 1)

end

end A398314.P17988695849076126245

namespace A398314

/-- `(n+1)*∏{p}[n+1, #]*A083720(n+1)` -/
def P17988695849076126245.Spec : Prop :=
  ∀ n, P17988695849076126245.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P5790088473926222234

`(1+n)*A034386(A006530(n+1))`
-/

namespace A398314.P5790088473926222234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A034386 (A006530 (n + 1)).toNat

end

end A398314.P5790088473926222234

namespace A398314

/-- `(1+n)*A034386(A006530(n+1))` -/
def P5790088473926222234.Spec : Prop :=
  ∀ n, P5790088473926222234.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P12007171651371198015

`(1+n)*A002110(A061395(n+1))`
-/

namespace A398314.P12007171651371198015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A002110 (A061395 (n + 1)).toNat

end

end A398314.P12007171651371198015

namespace A398314

/-- `(1+n)*A002110(A061395(n+1))` -/
def P12007171651371198015.Spec : Prop :=
  ∀ n, P12007171651371198015.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P10480389991687498444

`(n+1)*A073039(A007947(n+1))`
-/

namespace A398314.P10480389991687498444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073039 (A007947 (n + 1)).toNat

end

end A398314.P10480389991687498444

namespace A398314

/-- `(n+1)*A073039(A007947(n+1))` -/
def P10480389991687498444.Spec : Prop :=
  ∀ n, P10480389991687498444.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P5312012668044932776

`A064549(n+1)*A083720(n+1)`
-/

namespace A398314.P5312012668044932776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) * A083720 (n + 1)

end

end A398314.P5312012668044932776

namespace A398314

/-- `A064549(n+1)*A083720(n+1)` -/
def P5312012668044932776.Spec : Prop :=
  ∀ n, P5312012668044932776.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P15233992840417260020

`A032742(2*(n+1))*A073039(2^∑{p}[n+1, log2(#)])`
-/

namespace A398314.P15233992840417260020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * (n + 1)) * A073039 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))).toNat

end

end A398314.P15233992840417260020

namespace A398314

/-- `A032742(2*(n+1))*A073039(2^∑{p}[n+1, log2(#)])` -/
def P15233992840417260020.Spec : Prop :=
  ∀ n, P15233992840417260020.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P18397705674060232172

`A032742(2*(n+1))*A073039(abs(∏{p}[2*n-(n-1), -#]))`
-/

namespace A398314.P18397705674060232172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * (n + 1)) * A073039 |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))|.toNat

end

end A398314.P18397705674060232172

namespace A398314

/-- `A032742(2*(n+1))*A073039(abs(∏{p}[2*n-(n-1), -#]))` -/
def P18397705674060232172.Spec : Prop :=
  ∀ n, P18397705674060232172.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P10875873611093649524

`A000027(n+1)*A108951(A006530(n+1))`
-/

namespace A398314.P10875873611093649524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A108951 (A006530 (n + 1)).toNat

end

end A398314.P10875873611093649524

namespace A398314

/-- `A000027(n+1)*A108951(A006530(n+1))` -/
def P10875873611093649524.Spec : Prop :=
  ∀ n, P10875873611093649524.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P61476179122182883

`(n+1)*A002110(A001222(A241909(n+1)))`
-/

namespace A398314.P61476179122182883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002110 (A001222 (A241909 (n + 1)).toNat).toNat

end

end A398314.P61476179122182883

namespace A398314

/-- `(n+1)*A002110(A001222(A241909(n+1)))` -/
def P61476179122182883.Spec : Prop :=
  ∀ n, P61476179122182883.a n = A398314 (n + 1)

end A398314

/-!
# A398315: Number of asymmetric semicomplete digraphs with n nodes.

The programs for A398315, there is no canonical definition to state claims against.
-/

/-! ## A398315.P13581940385175606396

`A216556(n^(n+1))/(n+1)`
-/

namespace A398315.P13581940385175606396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216556 (n ^ (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A398315.P13581940385175606396

/-!
# A398316: Numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

The programs for A398316, the canonical program `A398316.P8351843934457800232` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398316 has offset 1).

The definition of A398316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8673 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398316.P8351843934457800232

`filter[A396269(n+1), A359466(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A398316

/-- `filter[A396269(n+1), A359466(#)]` -/
def P8351843934457800232.Spec : Prop :=
  ∀ n, P8351843934457800232.a n = A398316 (n + 1)

theorem P8351843934457800232.correct : P8351843934457800232.Spec := by
  intro n
  simp only [A398316, Nat.add_sub_cancel]

end A398316

/-! ## A398316.P5984117095825713044

`filter[A396269(n+1), A359471(#)]`
-/

namespace A398316.P5984117095825713044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398316.P5984117095825713044

namespace A398316

/-- `filter[A396269(n+1), A359471(#)]` -/
def P5984117095825713044.Spec : Prop :=
  ∀ n, P5984117095825713044.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P16087856152282586846

`filter[A396269(n+1), A359474(#)]`
-/

namespace A398316.P16087856152282586846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A398316.P16087856152282586846

namespace A398316

/-- `filter[A396269(n+1), A359474(#)]` -/
def P16087856152282586846.Spec : Prop :=
  ∀ n, P16087856152282586846.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P12067337343548975

`filter[A396269(n+1), A359475(#)]`
-/

namespace A398316.P12067337343548975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A398316.P12067337343548975

namespace A398316

/-- `filter[A396269(n+1), A359475(#)]` -/
def P12067337343548975.Spec : Prop :=
  ∀ n, P12067337343548975.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P7968371277427040406

`filter[A072357(n+1), A262684(#)]`
-/

namespace A398316.P7968371277427040406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A398316.P7968371277427040406

namespace A398316

/-- `filter[A072357(n+1), A262684(#)]` -/
def P7968371277427040406.Spec : Prop :=
  ∀ n, P7968371277427040406.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P14964472269570555263

`filter[A072357(n+1), A379958(#)]`
-/

namespace A398316.P14964472269570555263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A398316.P14964472269570555263

namespace A398316

/-- `filter[A072357(n+1), A379958(#)]` -/
def P14964472269570555263.Spec : Prop :=
  ∀ n, P14964472269570555263.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P7296608565335206595

`∩[A072357(n+1), A320632(n+1)]`
-/

namespace A398316.P7296608565335206595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398316.P7296608565335206595

namespace A398316

/-- `∩[A072357(n+1), A320632(n+1)]` -/
def P7296608565335206595.Spec : Prop :=
  ∀ n, (P7296608565335206595.a n : ℤ) = A398316 (n + 1)

end A398316

/-! ## A398316.P16092218556638741738

`filter[A060687(n+1), A262684(#)]`
-/

namespace A398316.P16092218556638741738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A398316.P16092218556638741738

namespace A398316

/-- `filter[A060687(n+1), A262684(#)]` -/
def P16092218556638741738.Spec : Prop :=
  ∀ n, P16092218556638741738.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P7966635249758099820

`filter[A060687(n+1), A379958(#)]`
-/

namespace A398316.P7966635249758099820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A398316.P7966635249758099820

namespace A398316

/-- `filter[A060687(n+1), A379958(#)]` -/
def P7966635249758099820.Spec : Prop :=
  ∀ n, P7966635249758099820.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P14506877652582739987

`∩[A060687(n+1), A320632(n+1)]`
-/

namespace A398316.P14506877652582739987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398316.P14506877652582739987

namespace A398316

/-- `∩[A060687(n+1), A320632(n+1)]` -/
def P14506877652582739987.Spec : Prop :=
  ∀ n, (P14506877652582739987.a n : ℤ) = A398316 (n + 1)

end A398316

/-! ## A398316.P9461295880843271088

`filter[A036457(n+1), A359474(#)]`
-/

namespace A398316.P9461295880843271088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A398316.P9461295880843271088

namespace A398316

/-- `filter[A036457(n+1), A359474(#)]` -/
def P9461295880843271088.Spec : Prop :=
  ∀ n, P9461295880843271088.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P4953578748355955705

`filter[A036457(n+1), A359475(#)]`
-/

namespace A398316.P4953578748355955705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A398316.P4953578748355955705

namespace A398316

/-- `filter[A036457(n+1), A359475(#)]` -/
def P4953578748355955705.Spec : Prop :=
  ∀ n, P4953578748355955705.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P11482484145341139197

`∩[A036457(n+1), A060687(n+1)]`
-/

namespace A398316.P11482484145341139197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398316.P11482484145341139197

namespace A398316

/-- `∩[A036457(n+1), A060687(n+1)]` -/
def P11482484145341139197.Spec : Prop :=
  ∀ n, (P11482484145341139197.a n : ℤ) = A398316 (n + 1)

end A398316

/-! ## A398316.P1348497909136821784

`∩[A036457(n+1), A072357(n+1)]`
-/

namespace A398316.P1348497909136821784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398316.P1348497909136821784

namespace A398316

/-- `∩[A036457(n+1), A072357(n+1)]` -/
def P1348497909136821784.Spec : Prop :=
  ∀ n, (P1348497909136821784.a n : ℤ) = A398316 (n + 1)

end A398316

/-! ## A398316.P7861616349426323955

`filter[A182855(n+1), A359471(#)]`
-/

namespace A398316.P7861616349426323955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398316.P7861616349426323955

namespace A398316

/-- `filter[A182855(n+1), A359471(#)]` -/
def P7861616349426323955.Spec : Prop :=
  ∀ n, P7861616349426323955.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P14382620521353808594

`filter[A182855(n+1), A359474(#)]`
-/

namespace A398316.P14382620521353808594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A398316.P14382620521353808594

namespace A398316

/-- `filter[A182855(n+1), A359474(#)]` -/
def P14382620521353808594.Spec : Prop :=
  ∀ n, P14382620521353808594.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P6486745629322010169

`filter[A182855(n+1), A359475(#)]`
-/

namespace A398316.P6486745629322010169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A398316.P6486745629322010169

namespace A398316

/-- `filter[A182855(n+1), A359475(#)]` -/
def P6486745629322010169.Spec : Prop :=
  ∀ n, P6486745629322010169.a n = A398316 (n + 1)

end A398316

/-! ## A398316.P17696356415574656724

`∩[A060687(n+1), A182855(n+1)]`
-/

namespace A398316.P17696356415574656724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398316.P17696356415574656724

namespace A398316

/-- `∩[A060687(n+1), A182855(n+1)]` -/
def P17696356415574656724.Spec : Prop :=
  ∀ n, (P17696356415574656724.a n : ℤ) = A398316 (n + 1)

end A398316

/-! ## A398316.P3137380774533373712

`∩[A072357(n+1), A182855(n+1)]`
-/

namespace A398316.P3137380774533373712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398316.P3137380774533373712

namespace A398316

/-- `∩[A072357(n+1), A182855(n+1)]` -/
def P3137380774533373712.Spec : Prop :=
  ∀ n, (P3137380774533373712.a n : ℤ) = A398316 (n + 1)

end A398316

/-! ## A398316.P12449155856250132490

`filter[A392926(n+1), A359471(#)]`
-/

namespace A398316.P12449155856250132490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398316.P12449155856250132490

namespace A398316

/-- `filter[A392926(n+1), A359471(#)]` -/
def P12449155856250132490.Spec : Prop :=
  ∀ n, P12449155856250132490.a n = A398316 (n + 1)

end A398316

/-!
# A398318: Number of words of length n over the 6 one-directional face-turn generators {U,D,L,R,F,B} (no inverses, no double turns) whose product in the Rubik's Cube group has the maximum order among all words of that length.

The programs for A398318, there is no canonical definition to state claims against.
-/

/-! ## A398318.P14344207695073355357

`A005875(A026007(n+1)*A291000(n))`
-/

namespace A398318.P14344207695073355357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A026007 (n + 1) * A291000 n).toNat

end

end A398318.P14344207695073355357

/-! ## A398318.P16962247863051308663

`A005875(or(A316593(n+1), A318728(n+3)-3)-n)`
-/

namespace A398318.P16962247863051308663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (Int.lor (A316593 (n + 1)) (A318728 (n + 3) - 3) - (n : ℤ)).toNat

end

end A398318.P16962247863051308663

/-!
# A398324: Positions k such that the prefix of length k of the Kolakoski sequence contains an even number of 1's and an even number of 2's.

The programs for A398324, the canonical program `A398324.P4813511843978568844` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398324 has offset 1).

The definition of A398324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398324.P18364926209575019804

`lt[gcd(A156077(n+1), A007504(n))%2, 1]+1`
-/

namespace A398324.P18364926209575019804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156077 (n + 1)) (A007504 n) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A398324.P18364926209575019804

namespace A398324

/-- `lt[gcd(A156077(n+1), A007504(n))%2, 1]+1` -/
def P18364926209575019804.Spec : Prop :=
  ∀ n, (P18364926209575019804.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P6416503703366189416

`lt[A040001(A216345(1+n)), A040001(n)]`
-/

namespace A398324.P6416503703366189416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A216345 (1 + n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P6416503703366189416

namespace A398324

/-- `lt[A040001(A216345(1+n)), A040001(n)]` -/
def P6416503703366189416.Spec : Prop :=
  ∀ n, (P6416503703366189416.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P6820939466659860832

`A156351(∩[A156242(n+1), 2*(n-1)])`
-/

namespace A398324.P6820939466659860832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A398324.P6820939466659860832

namespace A398324

/-- `A156351(∩[A156242(n+1), 2*(n-1)])` -/
def P6820939466659860832.Spec : Prop :=
  ∀ n, P6820939466659860832.a n = A398324 (n + 1)

end A398324

/-! ## A398324.P4813511843978568844

`eq[A088570(A216345(n+1)), A157928(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A398324

/-- `eq[A088570(A216345(n+1)), A157928(n)]` -/
def P4813511843978568844.Spec : Prop :=
  ∀ n, (P4813511843978568844.a n : ℤ) = A398324 (n + 1)

theorem P4813511843978568844.correct : P4813511843978568844.Spec := by
  intro n
  simp only [A398324, Nat.add_sub_cancel]

end A398324

/-! ## A398324.P4742956103362427853

`lt[A071045(A216345(1+n)), A071045(n)]`
-/

namespace A398324.P4742956103362427853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A216345 (1 + n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P4742956103362427853

namespace A398324

/-- `lt[A071045(A216345(1+n)), A071045(n)]` -/
def P4742956103362427853.Spec : Prop :=
  ∀ n, (P4742956103362427853.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P10740600778531101038

`lt[A074306(A216345(n+1)), A074306(n)]`
-/

namespace A398324.P10740600778531101038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P10740600778531101038

namespace A398324

/-- `lt[A074306(A216345(n+1)), A074306(n)]` -/
def P10740600778531101038.Spec : Prop :=
  ∀ n, (P10740600778531101038.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P14006549983948376752

`lt[A165988(A216345(n+1)), A165988(n)]`
-/

namespace A398324.P14006549983948376752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P14006549983948376752

namespace A398324

/-- `lt[A165988(A216345(n+1)), A165988(n)]` -/
def P14006549983948376752.Spec : Prop :=
  ∀ n, (P14006549983948376752.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P16756583143006062320

`lt[A195140(A216345(n+1)), A195140(n)]`
-/

namespace A398324.P16756583143006062320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P16756583143006062320

namespace A398324

/-- `lt[A195140(A216345(n+1)), A195140(n)]` -/
def P16756583143006062320.Spec : Prop :=
  ∀ n, (P16756583143006062320.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P2447977774214982652

`lt[A165367(n), A319556(A216345(n+1))]`
-/

namespace A398324.P2447977774214982652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319556 (A216345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P2447977774214982652

namespace A398324

/-- `lt[A165367(n), A319556(A216345(n+1))]` -/
def P2447977774214982652.Spec : Prop :=
  ∀ n, (P2447977774214982652.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P11415927855250412264

`A156253(∩[A156242(n+1), A005843(n)])`
-/

namespace A398324.P11415927855250412264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A398324.P11415927855250412264

namespace A398324

/-- `A156253(∩[A156242(n+1), A005843(n)])` -/
def P11415927855250412264.Spec : Prop :=
  ∀ n, P11415927855250412264.a n = A398324 (n + 1)

end A398324

/-! ## A398324.P9416465991101965742

`A156253(∩[A000027(2*(n+2)), A156242(n+1)])`
-/

namespace A398324.P9416465991101965742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A398324.P9416465991101965742

namespace A398324

/-- `A156253(∩[A000027(2*(n+2)), A156242(n+1)])` -/
def P9416465991101965742.Spec : Prop :=
  ∀ n, P9416465991101965742.a n = A398324 (n + 1)

end A398324

/-! ## A398324.P12625152216317236102

`A156253(∩[A131380(3*n+1), A156242(n+1)])`
-/

namespace A398324.P12625152216317236102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A398324.P12625152216317236102

namespace A398324

/-- `A156253(∩[A131380(3*n+1), A156242(n+1)])` -/
def P12625152216317236102.Spec : Prop :=
  ∀ n, P12625152216317236102.a n = A398324 (n + 1)

end A398324

/-! ## A398324.P7170033451119377743

`eq[A010892(3*n), A027642(A216345(n+1))]`
-/

namespace A398324.P7170033451119377743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A216345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398324.P7170033451119377743

namespace A398324

/-- `eq[A010892(3*n), A027642(A216345(n+1))]` -/
def P7170033451119377743.Spec : Prop :=
  ∀ n, (P7170033451119377743.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P7816951266839260478

`lt[A123684(3*n+4), A123684(A216345(n+1))]`
-/

namespace A398324.P7816951266839260478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A216345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P7816951266839260478

namespace A398324

/-- `lt[A123684(3*n+4), A123684(A216345(n+1))]` -/
def P7816951266839260478.Spec : Prop :=
  ∀ n, (P7816951266839260478.a n : ℤ) = A398324 (n + 1)

end A398324

/-!
# A398326: Number of connected cubic simple graphs on 2n unlabeled nodes with chromatic index 3.

The programs for A398326, there is no canonical definition to state claims against.
-/

/-! ## A398326.P5210751312759552944

`A002851(n+2)-A357446(n+2)`
-/

namespace A398326.P5210751312759552944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 (n + 2) - A357446 (n + 2)

end

end A398326.P5210751312759552944

/-! ## A398326.P6395944939605821395

`record[A002851(n)]-A357446(n+2)`
-/

namespace A398326.P6395944939605821395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A357446 (n + 2)

end

end A398326.P6395944939605821395

/-! ## A398326.P13483229105750590835

`record[A002851(n)]-A033103(A145267(n)²)`
-/

namespace A398326.P13483229105750590835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A033103 (A145267 n ^ 2).toNat

end

end A398326.P13483229105750590835

/-!
# A398327: Numbers k such that (10*4^k - 1)/3 is prime.

The programs for A398327, there is no canonical definition to state claims against.
-/

/-! ## A398327.P10095775136272825722

`eq[A056974(n+1), A241035(n)]`
-/

namespace A398327.P10095775136272825722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398327.P10095775136272825722

/-! ## A398327.P8621743774264932310

`lt[A256553(A128084(3*(n+1))), A317698(n)]`
-/

namespace A398327.P8621743774264932310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256553 (A128084 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398327.P8621743774264932310

/-!
# A398329: Number of partitions of the 2-dimensional vector (n, n) into strictly distinct parts with nonnegative components, excluding elementary basis vectors (1,0) and (0,1).

The programs for A398329, there is no canonical definition to state claims against.
-/

/-! ## A398329.P3790321546062851199

`A397804(∑[n+1]+n)`
-/

namespace A398329.P3790321546062851199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397804 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A398329.P3790321546062851199

/-! ## A398329.P18343118549929784528

`A232482(3*n+1)+A036497(n)`
-/

namespace A398329.P18343118549929784528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232482 (3 * n + 1) + A036497 n

end

end A398329.P18343118549929784528

/-! ## A398329.P6523864098464645713

`A234246(A007889(n))+A054359(n+1)`
-/

namespace A398329.P6523864098464645713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234246 (A007889 n).toNat + A054359 (n + 1)

end

end A398329.P6523864098464645713

/-!
# A398332: Largest value M such that all integers 1 through M can be expressed as b_i, b_i + b_j, or b_j - b_i for some set of n positive integers (the 2-postage stamp problem with subtraction).

The programs for A398332, there is no canonical definition to state claims against.
-/

/-! ## A398332.P3424222806330314805

`2*∑[fp[∑{d}[n, #]]]`
-/

namespace A398332.P3424222806330314805
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398332.P3424222806330314805

/-! ## A398332.P7218464585192795594

`∑[∑[2*T(n-2,k-1)]]` with `a(0)=2, a(1)=2, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A398332.P7218464585192795594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0, 2, 2] fun n f2 =>
  2 * SequenceMachineLib.triUp2Left f2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398332.P7218464585192795594

/-! ## A398332.P810146472143293940

`2*ceil(n+1+∑[n]/ϕ)`
-/

namespace A398332.P810146472143293940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n + 1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.goldenRatio⌉

end

end A398332.P810146472143293940

/-! ## A398332.P16219534312048586576

`∑[or(C(comp[n²+n]-n, 2), n+1)+1]`
-/

namespace A398332.P16219534312048586576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2) (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398332.P16219534312048586576

/-! ## A398332.P10005987902640690282

`and(-(floor(n/3)+1), floor(2/3*(n+2)²))`
-/

namespace A398332.P10005987902640690282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(⌊(n : ℚ) / 3⌋ + 1)) ⌊(2 : ℚ) / 3 * ((n + 2) ^ 2 : ℚ)⌋

end

end A398332.P10005987902640690282

/-!
# A398333: Number of integers r, 1<=r<n, such that L(n*r) < L(n*r+1) where L(x) is the largest divisor of x <= the square root of x.

The programs for A398333, there is no canonical definition to state claims against.
-/

/-! ## A398333.P16255717575010699199

`A061395(A003418(n))-A061395(A280495(n+1))`
-/

namespace A398333.P16255717575010699199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A003418 n).toNat - A061395 (A280495 (n + 1)).toNat

end

end A398333.P16255717575010699199

/-! ## A398333.P15201414478122481217

`A061395(A003418(n))-A061395(A280498(n+1))`
-/

namespace A398333.P15201414478122481217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A003418 n).toNat - A061395 (A280498 (n + 1)).toNat

end

end A398333.P15201414478122481217

/-!
# A398334: a(n) = (n - A004185(n)) / 9.

The programs for A398334, there is no canonical definition to state claims against.
-/

/-! ## A398334.P13375350279482509599

`(n-A004185(n))/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398334.P13375350279482509599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004185 n : ℚ) / 9

end

end A398334.P13375350279482509599

/-! ## A398334.P12162114818491264430

`A193581(n)/9`
-/

namespace A398334.P12162114818491264430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193581 n : ℚ) / 9

end

end A398334.P12162114818491264430

/-! ## A398334.P17959115173929096896

`A255594(A193581(n))`
-/

namespace A398334.P17959115173929096896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 (A193581 n).toNat

end

end A398334.P17959115173929096896

/-! ## A398334.P15309845492185389252

`A106610(n-A004185(n))`
-/

namespace A398334.P15309845492185389252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 ((n : ℤ) - A004185 n).toNat

end

end A398334.P15309845492185389252

/-! ## A398334.P12771571877308110044

`A151950(n)-A283001(n)`
-/

namespace A398334.P12771571877308110044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n - A283001 n

end

end A398334.P12771571877308110044

/-! ## A398334.P2403833871833107842

`(2*n-A070196(n))/A157532(n+1)²`
-/

namespace A398334.P2403833871833107842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A070196 n : ℚ) / (A157532 (n + 1) ^ 2 : ℚ)

end

end A398334.P2403833871833107842

/-! ## A398334.P14599915479744451991

`A271497(A271497(n-A004185(n)))`
-/

namespace A398334.P14599915479744451991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271497 (A271497 ((n : ℤ) - A004185 n).toNat).toNat

end

end A398334.P14599915479744451991

/-! ## A398334.P17823793595965117035

`A283001(A061601(2*n)+n)`
-/

namespace A398334.P17823793595965117035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A061601 (2 * n) + (n : ℤ)).toNat

end

end A398334.P17823793595965117035

/-! ## A398334.P1995580615846443501

`A037860(or(1, A087019(n)))`
-/

namespace A398334.P1995580615846443501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (Int.lor 1 (A087019 n)).toNat

end

end A398334.P1995580615846443501

/-! ## A398334.P8807894189094765079

`A097601(n)%(A168095(n²)+3)`
-/

namespace A398334.P8807894189094765079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097601 n) (A168095 (n ^ 2) + 3)

end

end A398334.P8807894189094765079

/-!
# A398336: Numbers m coprime to 3 such that, for k >= 0, sopfr(3^k*m) <= sopfr(j) for j > 3^k*m, where sopfr is A001414; numbers dividing 40 or 1024.

The programs for A398336, there is no canonical definition to state claims against.
-/

/-! ## A398336.P10286231398934357356

`A094958(A008729(n))`
-/

namespace A398336.P10286231398934357356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A008729 n).toNat

end

end A398336.P10286231398934357356

/-! ## A398336.P10094867012863326592

`A094958(A032516(n+1))`
-/

namespace A398336.P10094867012863326592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A032516 (n + 1)).toNat

end

end A398336.P10094867012863326592

/-! ## A398336.P3652913969376027677

`A094958(A032961(n+1))`
-/

namespace A398336.P3652913969376027677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A032961 (n + 1)).toNat

end

end A398336.P3652913969376027677

/-! ## A398336.P16681482348433021151

`A094958(A033063(n+1))`
-/

namespace A398336.P16681482348433021151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A033063 (n + 1)).toNat

end

end A398336.P16681482348433021151

/-! ## A398336.P14131770341224924904

`A094958(A051534(n+1))`
-/

namespace A398336.P14131770341224924904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A051534 (n + 1)).toNat

end

end A398336.P14131770341224924904

/-!
# A398337: a(n) is the largest k < n such that gpf(2^(k*n) - 1) = gpf(2^n - 1), for n > 1.

The programs for A398337, there is no canonical definition to state claims against.
-/

/-! ## A398337.P3619452829398467271

`A112050(A057147(n+1))`
-/

namespace A398337.P3619452829398467271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A057147 (n + 1)).toNat

end

end A398337.P3619452829398467271

/-! ## A398337.P9682186748304636885

`A112050(A213630(n+1))`
-/

namespace A398337.P9682186748304636885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A213630 (n + 1)).toNat

end

end A398337.P9682186748304636885

/-! ## A398337.P8225064607471188322

`A112050(A361203(n+1))`
-/

namespace A398337.P8225064607471188322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A361203 (n + 1)).toNat

end

end A398337.P8225064607471188322

/-! ## A398337.P7477182721938110038

`A384783(A335840(n+1))`
-/

namespace A398337.P7477182721938110038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384783 (A335840 (n + 1)).toNat

end

end A398337.P7477182721938110038

/-! ## A398337.P4937349530496877440

`A333381(A265710(n+1))^A398577(n+1)`
-/

namespace A398337.P4937349530496877440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333381 (A265710 (n + 1)).toNat : ℚ) ^ (A398577 (n + 1) : ℤ)

end

end A398337.P4937349530496877440

/-!
# A398340: Triangle read by rows, where T(n,k), n>0, k<=2^(n-1), is the smallest prime factor of (2*k-1)*2^n+1.

The programs for A398340, there is no canonical definition to state claims against.
-/

/-! ## A398340.P16007474695315865847

`A020639(A369901(1+n))`
-/

namespace A398340.P16007474695315865847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A369901 (1 + n)).toNat

end

end A398340.P16007474695315865847

/-!
# A398341: a(n) is the number of die sizes < n that can produce n as the product of two identical dice.

The programs for A398341, there is no canonical definition to state claims against.
-/

/-! ## A398341.P8283071572373183100

`n+1-A033677(n+1)`
-/

namespace A398341.P8283071572373183100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033677 (n + 1)

end

end A398341.P8283071572373183100

/-! ## A398341.P16175943843417720981

`1-A033677(1+n)+n`
-/

namespace A398341.P16175943843417720981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033677 (1 + n) + (n : ℤ)

end

end A398341.P16175943843417720981

/-! ## A398341.P16667529971872600094

`n-floor(n/A033676(n+1))`
-/

namespace A398341.P16667529971872600094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A033676 (n + 1) : ℚ)⌋

end

end A398341.P16667529971872600094

/-! ## A398341.P8525578716437039152

`1-A162348(2*(n+1))+n`
-/

namespace A398341.P8525578716437039152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A162348 (2 * (n + 1)) + (n : ℤ)

end

end A398341.P8525578716437039152

/-! ## A398341.P15581482178177711060

`2*(n+1)-A248835(1+n)`
-/

namespace A398341.P15581482178177711060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A248835 (1 + n)

end

end A398341.P15581482178177711060

/-! ## A398341.P17343905021697205701

`A024000(A033677(n+1))+n`
-/

namespace A398341.P17343905021697205701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A033677 (n + 1)).toNat + (n : ℤ)

end

end A398341.P17343905021697205701

/-! ## A398341.P13865045375844305845

`A028391(n)-A395409(n+1)`
-/

namespace A398341.P13865045375844305845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n - A395409 (n + 1)

end

end A398341.P13865045375844305845

/-! ## A398341.P14843199603809160880

`A220114(n+1)+A033676(n+1)`
-/

namespace A398341.P14843199603809160880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220114 (n + 1) + A033676 (n + 1)

end

end A398341.P14843199603809160880

/-! ## A398341.P2253004449719599046

`A101322(n+1)-A033676(n+1)`
-/

namespace A398341.P2253004449719599046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (n + 1) - A033676 (n + 1)

end

end A398341.P2253004449719599046

/-! ## A398341.P6803477163926545035

`A163300(n+1)%A248835(n+1)`
-/

namespace A398341.P6803477163926545035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A248835 (n + 1))

end

end A398341.P6803477163926545035

/-! ## A398341.P8219844751461852775

`A317440(n+1)%A248835(n+1)`
-/

namespace A398341.P8219844751461852775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317440 (n + 1)) (A248835 (n + 1))

end

end A398341.P8219844751461852775

/-! ## A398341.P9136407318833413451

`A002378(n+1)-(A248835(n+1)+A002378(n))`
-/

namespace A398341.P9136407318833413451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - (A248835 (n + 1) + A002378 n)

end

end A398341.P9136407318833413451

/-! ## A398341.P4946864374391284505

`A053755(n+1)-(A248835(n+1)+A054554(n+2))`
-/

namespace A398341.P4946864374391284505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (n + 1) - (A248835 (n + 1) + A054554 (n + 2))

end

end A398341.P4946864374391284505

/-! ## A398341.P1456240654680151571

`A054569(n+2)-(A248835(n+1)+A053755(n+1))`
-/

namespace A398341.P1456240654680151571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 (n + 2) - (A248835 (n + 1) + A053755 (n + 1))

end

end A398341.P1456240654680151571

/-!
# A398343: a(n) = (Sum_{d|k} rad(d)) / rad(k), where k = A398342(n) and rad = A007947.

The programs for A398343, there is no canonical definition to state claims against.
-/

/-! ## A398343.P1770399361530046489

`∑{d}[A398342(n+1), A007947(#)/A007947(A398342(n+1))]`
-/

namespace A398343.P1770399361530046489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398342 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A007947 d : ℚ) / (A007947 (A398342 (n + 1)).toNat : ℚ)

end

end A398343.P1770399361530046489

/-!
# A398344: Smallest positive number that can be written in exactly n ways as a sum or a difference of two squares > 0.

The programs for A398344, there is no canonical definition to state claims against.
-/

/-! ## A398344.P5039254236022384099

`∑[A128668(n+1)%A222001(n+3)]`
-/

namespace A398344.P5039254236022384099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128668 (n + 1)) (A222001 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398344.P5039254236022384099

/-!
# A398347: Number of S_3-symmetric 3-dimensional vector partitions of (n, n, n) into strictly distinct parts.

The programs for A398347, there is no canonical definition to state claims against.
-/

/-! ## A398347.P16609087742572230444

`A377028(A148599(n+1))`
-/

namespace A398347.P16609087742572230444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (A148599 (n + 1)).toNat

end

end A398347.P16609087742572230444

/-! ## A398347.P8327920554572958802

`A377028(A248603(n+1))`
-/

namespace A398347.P8327920554572958802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (A248603 (n + 1)).toNat

end

end A398347.P8327920554572958802

/-! ## A398347.P4839569255805618015

`A370457(A344611(n+1))`
-/

namespace A398347.P4839569255805618015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370457 (A344611 (n + 1)).toNat

end

end A398347.P4839569255805618015

/-! ## A398347.P3755615613262352138

`A000126(n+1)-A284257(A273468(n+1))`
-/

namespace A398347.P3755615613262352138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1) - A284257 (A273468 (n + 1)).toNat

end

end A398347.P3755615613262352138

/-! ## A398347.P15472517916665711831

`A000126(n+1)-A284258(A000126(2*n+1))`
-/

namespace A398347.P15472517916665711831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1) - A284258 (A000126 (2 * n + 1)).toNat

end

end A398347.P15472517916665711831

/-!
# A398350: Primes p that start a run of three consecutive primes in arithmetic progression (CPAP-3) such that the two primes immediately preceding p, or the two primes immediately following the run, form a twin prime pair.

The programs for A398350, there is no canonical definition to state claims against.
-/

/-! ## A398350.P17169973869122780094

`A122535(A049054(n+1)%A027891(2*(n+2)))`
-/

namespace A398350.P17169973869122780094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (Int.tmod (A049054 (n + 1)) (A027891 (2 * (n + 2)))).toNat

end

end A398350.P17169973869122780094

/-!
# A398351: Number of connected 4-valent half-arc-transitive graphs with n vertices.

The programs for A398351, there is no canonical definition to state claims against.
-/

/-! ## A398351.P5084585281460606941

`and(A325562(1+n), A325562(A325246(n)))`
-/

namespace A398351.P5084585281460606941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325562 (1 + n)) (A325562 (A325246 n).toNat)

end

end A398351.P5084585281460606941

/-! ## A398351.P7602555514739122594

`val(A083947(A345910(1+n)), 3)`
-/

namespace A398351.P7602555514739122594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083947 (A345910 (1 + n)).toNat).toNat 3

end

end A398351.P7602555514739122594

/-! ## A398351.P16102490657575325633

`A102283(C(A056239(n+5), 11))`
-/

namespace A398351.P16102490657575325633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (Nat.choose (A056239 (n + 5)).toNat 11)

end

end A398351.P16102490657575325633

/-! ## A398351.P4047462406676747258

`char[A055109(A300322(2*(n+2)))]`
-/

namespace A398351.P4047462406676747258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055109 (A300322 (2 * (n + 2))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A398351.P4047462406676747258

/-! ## A398351.P969957701200958515

`char[A055109(A288627(3*n+2))]`
-/

namespace A398351.P969957701200958515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055109 (A288627 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A398351.P969957701200958515

/-! ## A398351.P6687482851526927938

`val(n+1, A167614(A220393(n+1)))`
-/

namespace A398351.P6687482851526927938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A167614 (A220393 (n + 1)).toNat).toNat

end

end A398351.P6687482851526927938

/-! ## A398351.P5500675475438371008

`A360681(n+2)²%A050320(n+4)`
-/

namespace A398351.P5500675475438371008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360681 (n + 2) ^ 2) (A050320 (n + 4))

end

end A398351.P5500675475438371008

/-! ## A398351.P17687988474530372652

`char[A164708(6+ceil(A005436(n+2)/2))]`
-/

namespace A398351.P17687988474530372652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164708 (6 + ⌈(A005436 (n + 2) : ℚ) / 2⌉).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A398351.P17687988474530372652

/-! ## A398351.P13657195365016624158

`char[A164708(6+ceil(A393099(n+2)/2))]`
-/

namespace A398351.P13657195365016624158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164708 (6 + ⌈(A393099 (n + 2) : ℚ) / 2⌉).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A398351.P13657195365016624158

/-! ## A398351.P6358094231259412808

`char[A164708(6+ceil(A398025(n+3)/2))]`
-/

namespace A398351.P6358094231259412808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164708 (6 + ⌈(A398025 (n + 3) : ℚ) / 2⌉).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A398351.P6358094231259412808

/-!
# A398352: Numbers n such that there exists a connected 4-valent half-arc-transitive graph with n vertices.

The programs for A398352, there is no canonical definition to state claims against.
-/

/-! ## A398352.P3061247797484276511

`lt[0, A398351(A028310(n))]`
-/

namespace A398352.P3061247797484276511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398351 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398352.P3061247797484276511

/-! ## A398352.P859268499499592980

`lt[A358777(2*(n+2)), A398351(n+1)]+1`
-/

namespace A398352.P859268499499592980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A398352.P859268499499592980

/-! ## A398352.P11069552307067210153

`comp[1+n-A398351(n+1)*(n+1)]`
-/

namespace A398352.P11069552307067210153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A398351 (n + 1) * (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398352.P11069552307067210153

/-!
# A398354: Triangle read by rows: T(n,k) is the number of distinct entries q of the n X n multiplication table whose remainder upon division by n is k, for 0 <= k < n.

The programs for A398354, there is no canonical definition to state claims against.
-/

/-! ## A398354.P15557584612453648737

`A051903(C(A118586(n+1), A008284(n+1)))`
-/

namespace A398354.P15557584612453648737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Nat.choose (A118586 (n + 1)).toNat (A008284 (n + 1)).toNat)

end

end A398354.P15557584612453648737

/-!
# A398364: a(n) = Sum_{k=0..floor(n/7)} binomial(2*k,k) * binomial(n-5*k,2*k).

The programs for A398364, the canonical program `A398364.P12204821827431358305` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398364 has offset 0).

The definition of A398364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` (program `A398364.P12204821827431358305`, by `A398364.P12204821827431358305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398364.P12204821827431358305

`∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398364

/-- `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` -/
def P12204821827431358305.Spec : Prop :=
  ∀ n, (P12204821827431358305.a n : ℤ) = A398364 n

theorem P12204821827431358305.correct : P12204821827431358305.Spec := by
  intro n
  simp only [A398364]

end A398364

/-! ## A398364.P8721175145214469138

`∑[∑{e}[6*a(n-1), #]]` with `a(0)=2, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=1`
-/

namespace A398364.P8721175145214469138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 0, 0, 1, 0, 1] fun n f2 =>
  6 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398364.P8721175145214469138

namespace A398364

/-- `∑[∑{e}[6*a(n-1), #]]` -/
def P8721175145214469138.Spec : Prop :=
  ∀ n, (P8721175145214469138.a n : ℤ) = A398364 n

end A398364

/-! ## A398364.P4453429355293536859

`A398365(A077168(n))`
-/

namespace A398364.P4453429355293536859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398365 (A077168 n).toNat

end

end A398364.P4453429355293536859

namespace A398364

/-- `A398365(A077168(n))` -/
def P4453429355293536859.Spec : Prop :=
  ∀ n, P4453429355293536859.a n = A398364 n

end A398364

/-! ## A398364.P5284014139309702665

`A247890(∑[A245792(n)])`
-/

namespace A398364.P5284014139309702665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247890 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A398364.P5284014139309702665

namespace A398364

/-- `A247890(∑[A245792(n)])` -/
def P5284014139309702665.Spec : Prop :=
  ∀ n, P5284014139309702665.a n = A398364 n

end A398364

/-! ## A398364.P11552218479826704738

`A110340(A398365(n+1))`
-/

namespace A398364.P11552218479826704738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110340 (A398365 (n + 1)).toNat

end

end A398364.P11552218479826704738

namespace A398364

/-- `A110340(A398365(n+1))` -/
def P11552218479826704738.Spec : Prop :=
  ∀ n, P11552218479826704738.a n = A398364 n

end A398364

/-!
# A398365: a(n) = Sum_{k=0..floor(n/8)} binomial(2*k,k) * binomial(n-6*k,2*k).

The programs for A398365, the canonical program `A398365.P10988356879286163353` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398365 has offset 0).

The definition of A398365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` (program `A398365.P10988356879286163353`, by `A398365.P10988356879286163353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398365.P10988356879286163353

`∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398365

/-- `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` -/
def P10988356879286163353.Spec : Prop :=
  ∀ n, (P10988356879286163353.a n : ℤ) = A398365 n

theorem P10988356879286163353.correct : P10988356879286163353.Spec := by
  intro n
  simp only [A398365]

end A398365

/-! ## A398365.P639878954802459311

`A002061(A005710(n))%A226671(2*n+5)`
-/

namespace A398365.P639878954802459311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 (A005710 n).toNat) (A226671 (2 * n + 5))

end

end A398365.P639878954802459311

namespace A398365

/-- `A002061(A005710(n))%A226671(2*n+5)` -/
def P639878954802459311.Spec : Prop :=
  ∀ n, P639878954802459311.a n = A398365 n

end A398365

/-! ## A398365.P12762627009876622687

`A004652(A291149(2*(n+1))%A268448(2*n+3))`
-/

namespace A398365.P12762627009876622687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (Int.tmod (A291149 (2 * (n + 1))) (A268448 (2 * n + 3))).toNat

end

end A398365.P12762627009876622687

namespace A398365

/-- `A004652(A291149(2*(n+1))%A268448(2*n+3))` -/
def P12762627009876622687.Spec : Prop :=
  ∀ n, P12762627009876622687.a n = A398365 n

end A398365

/-! ## A398365.P12321625668465204209

`∑[∑{e}[6*a(n-1), #]]` with `a(0)=2, a(1)=0, a(2)=0, a(3)=0, a(4)=-1, a(5)=1, a(6)=0, a(7)=1`
-/

namespace A398365.P12321625668465204209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0, 0, -1, 1, 0, 1] fun n f2 =>
  6 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398365.P12321625668465204209

namespace A398365

/-- `∑[∑{e}[6*a(n-1), #]]` -/
def P12321625668465204209.Spec : Prop :=
  ∀ n, (P12321625668465204209.a n : ℤ) = A398365 n

end A398365

/-! ## A398365.P2108551298204843395

`A002061(∑[A054900(2*(n+1))^23])`
-/

namespace A398365.P2108551298204843395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (2 * (n + 1)) ^ 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A398365.P2108551298204843395

namespace A398365

/-- `A002061(∑[A054900(2*(n+1))^23])` -/
def P2108551298204843395.Spec : Prop :=
  ∀ n, P2108551298204843395.a n = A398365 n

end A398365

/-!
# A398366: Array read by ascending antidiagonals: A(n,k) = binomial(3*n-1+k,k).

The programs for A398366, there is no canonical definition to state claims against.
-/

/-! ## A398366.P5280850255907060340

`A206294(A061579(n))`
-/

namespace A398366.P5280850255907060340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (A061579 n).toNat

end

end A398366.P5280850255907060340

/-! ## A398366.P206521083336865641

`A206294(A114327(n)+n)`
-/

namespace A398366.P206521083336865641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (A114327 n + (n : ℤ)).toNat

end

end A398366.P206521083336865641

/-! ## A398366.P4366569464772597818

`A081577(n)-A219039(n+4)%A303696(n)`
-/

namespace A398366.P4366569464772597818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 n - Int.tmod (A219039 (n + 4)) (A303696 n)

end

end A398366.P4366569464772597818

/-! ## A398366.P10959188954415051466

`A182576(A322231(n))`
-/

namespace A398366.P10959188954415051466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182576 (A322231 n).toNat

end

end A398366.P10959188954415051466

/-! ## A398366.P1863644660860158687

`dr(A381573(n)%A337856(n+3))`
-/

namespace A398366.P1863644660860158687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A381573 n) (A337856 (n + 3)))

end

end A398366.P1863644660860158687

/-!
# A398367: Values written by the walker in the trampled carousel process.

The programs for A398367, there is no canonical definition to state claims against.
-/

/-! ## A398367.P8208650665095552212

`A371735(A345531(n+1))`
-/

namespace A398367.P8208650665095552212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371735 (A345531 (n + 1)).toNat

end

end A398367.P8208650665095552212

/-! ## A398367.P14734709596297985440

`A049419(A301541(n+1)+A014217(n))`
-/

namespace A398367.P14734709596297985440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A301541 (n + 1) + A014217 n).toNat

end

end A398367.P14734709596297985440

/-! ## A398367.P16731864138725878022

`A126307(A051424(n+2)-A124767(2*n))`
-/

namespace A398367.P16731864138725878022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (A051424 (n + 2) - A124767 (2 * n)).toNat

end

end A398367.P16731864138725878022

/-! ## A398367.P9943733949574282275

`A288915(A219167(n+2))`
-/

namespace A398367.P9943733949574282275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288915 (A219167 (n + 2)).toNat

end

end A398367.P9943733949574282275

/-! ## A398367.P17049893036543782477

`A126307(A373219(n)+n)`
-/

namespace A398367.P17049893036543782477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (A373219 n + (n : ℤ)).toNat

end

end A398367.P17049893036543782477

/-!
# A398373: Triangle read by rows: T(n, k) = binomial(n + k - 1, k) * n^(n - k).

The programs for A398373, the canonical program `A398373.P12839850949891993134` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398373 has offset 0).

The definition of A398373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398373.P12839850949891993134

`A398477(A010054(n)+n-1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A398373

/-- `A398477(A010054(n)+n-1)` -/
def P12839850949891993134.Spec : Prop :=
  ∀ n, P12839850949891993134.a n = A398373 n

theorem P12839850949891993134.correct : P12839850949891993134.Spec := by
  intro n
  simp only [A398373]

end A398373

/-! ## A398373.P18263438788243973907

`A059481(n)*A364870(n)`
-/

namespace A398373.P18263438788243973907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A364870 n

end

end A398373.P18263438788243973907

namespace A398373

/-- `A059481(n)*A364870(n)` -/
def P18263438788243973907.Spec : Prop :=
  ∀ n, P18263438788243973907.a n = A398373 n

end A398373

/-!
# A398374: Number of permutations that give the maximum number of comparisons for sorting n elements by binary insertions.

The programs for A398374, the canonical program `A398374.P7463169060514221778` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398374 has offset 0).

The definition of A398374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398374.P7463169060514221778

`a(n-1)*(2*n-2^ceil(log2(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398374

/-- `a(n-1)*(2*n-2^ceil(log2(n)))` -/
def P7463169060514221778.Spec : Prop :=
  ∀ n, P7463169060514221778.a n = (A398374 n : ℚ)

end A398374

/-! ## A398374.P18346570586338170837

`A152423(n)*a(n-1)` with `a(0)=1`
-/

namespace A398374.P18346570586338170837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152423 n * a (n - 1)

end

end A398374.P18346570586338170837

namespace A398374

/-- `A152423(n)*a(n-1)` -/
def P18346570586338170837.Spec : Prop :=
  ∀ n, P18346570586338170837.a n = A398374 n

end A398374

/-! ## A398374.P7077407983041961457

`(A006257(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A398374.P7077407983041961457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A006257 (n - 1) + 1) * a (n - 1)

end

end A398374.P7077407983041961457

namespace A398374

/-- `(A006257(n-1)+1)*a(n-1)` -/
def P7077407983041961457.Spec : Prop :=
  ∀ n, P7077407983041961457.a n = A398374 n

end A398374

/-! ## A398374.P4157021131492007658

`A062050(2*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A398374.P4157021131492007658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062050 (2 * n - 1) * a (n - 1)

end

end A398374.P4157021131492007658

namespace A398374

/-- `A062050(2*n-1)*a(n-1)` -/
def P4157021131492007658.Spec : Prop :=
  ∀ n, P4157021131492007658.a n = A398374 n

end A398374

/-! ## A398374.P6672157632282566598

`∏[A062050(2*n+1)]/A062050(2*n+1)`
-/

namespace A398374.P6672157632282566598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A062050 (2 * n + 1) : ℚ)

end

end A398374.P6672157632282566598

namespace A398374

/-- `∏[A062050(2*n+1)]/A062050(2*n+1)` -/
def P6672157632282566598.Spec : Prop :=
  ∀ n, P6672157632282566598.a n = (A398374 n : ℚ)

end A398374

/-!
# A398375: Numbers divisible by the square of their second smallest distinct prime factor.

The programs for A398375, there is no canonical definition to state claims against.
-/

/-! ## A398375.P3494051443164142491

`lt[1, A351563(A028310(n))]`
-/

namespace A398375.P3494051443164142491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398375.P3494051443164142491

/-! ## A398375.P7162919425040102525

`eq[1, A070403(A396938(n+1))]+1`
-/

namespace A398375.P7162919425040102525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 (A396938 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398375.P7162919425040102525

/-! ## A398375.P4939716655358497677

`∩[A350137(n+1), A375397(n+1)]`
-/

namespace A398375.P4939716655358497677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398375.P4939716655358497677

/-!
# A398376: Number of congruence classes of nonsingular n X n matrices over GF(2).

The programs for A398376, there is no canonical definition to state claims against.
-/

/-! ## A398376.P10600731150608773347

`A130696(A035594(n)+1)`
-/

namespace A398376.P10600731150608773347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A035594 n + 1).toNat

end

end A398376.P10600731150608773347

/-! ## A398376.P8507645865626145003

`A118065(A133585(n+1))`
-/

namespace A398376.P8507645865626145003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118065 (A133585 (n + 1)).toNat

end

end A398376.P8507645865626145003

/-! ## A398376.P3488953004313177368

`A005374(A029862(n)%A127997(n+1))`
-/

namespace A398376.P3488953004313177368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (Int.tmod (A029862 n) (A127997 (n + 1))).toNat

end

end A398376.P3488953004313177368

/-! ## A398376.P16742557534740441954

`A005374(A029862(n))%A197465(3*(n+1))`
-/

namespace A398376.P16742557534740441954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005374 (A029862 n).toNat) (A197465 (3 * (n + 1)))

end

end A398376.P16742557534740441954

/-!
# A398379: Record gaps between consecutive Loeschian numbers (A003136).

The programs for A398379, there is no canonical definition to state claims against.
-/

/-! ## A398379.P5696113314775038098

`A398381(n+1)-A398380(n+1)`
-/

namespace A398379.P5696113314775038098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398381 (n + 1) - A398380 (n + 1)

end

end A398379.P5696113314775038098

/-!
# A398380: Lower end of record gaps between consecutive Loeschian numbers (A003136).

The programs for A398380, there is no canonical definition to state claims against.
-/

/-! ## A398380.P15661555437271360084

`A398381(n+1)-A398379(n+1)`
-/

namespace A398380.P15661555437271360084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398381 (n + 1) - A398379 (n + 1)

end

end A398380.P15661555437271360084

/-! ## A398380.P13275259864001133322

`A398381(n+1)-A114538(A114538(n+1))`
-/

namespace A398380.P13275259864001133322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398381 (n + 1) - A114538 (A114538 (n + 1)).toNat

end

end A398380.P13275259864001133322

/-!
# A398381: Upper end of record gaps between consecutive Loeschian numbers (A003136).

The programs for A398381, there is no canonical definition to state claims against.
-/

/-! ## A398381.P10417921895981587364

`A398380(n+1)+A398379(n+1)`
-/

namespace A398381.P10417921895981587364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398380 (n + 1) + A398379 (n + 1)

end

end A398381.P10417921895981587364

/-! ## A398381.P5229074640806131721

`A398380(n+1)+A130259(A317736(2*n+5))`
-/

namespace A398381.P5229074640806131721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398380 (n + 1) + A130259 (A317736 (2 * n + 5)).toNat

end

end A398381.P5229074640806131721

/-! ## A398381.P3750089577639699801

`A398380(n+1)+A114538(A114538(n+1))`
-/

namespace A398381.P3750089577639699801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398380 (n + 1) + A114538 (A114538 (n + 1)).toNat

end

end A398381.P3750089577639699801

/-!
# A398382: Index of the first occurrence of n in A398367.

The programs for A398382, there is no canonical definition to state claims against.
-/

/-! ## A398382.P13509887599432299942

`A212991(A047106(n))`
-/

namespace A398382.P13509887599432299942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212991 (A047106 n).toNat

end

end A398382.P13509887599432299942

/-!
# A398389: Even positive numbers m such that m - 2^k is composite for all k > 0 with 2^k < m.

The programs for A398389, the canonical program `A398389.P1944970499955465081` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398389 has offset 1).

The definition of A398389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398389.P5133632610829585927

`∑[2^Δ[comp[2^n]]]`
-/

namespace A398389.P5133632610829585927
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398389.P5133632610829585927

namespace A398389

/-- `∑[2^Δ[comp[2^n]]]` -/
def P5133632610829585927.Spec : Prop :=
  ∀ n, P5133632610829585927.a n = (A398389 (n + 1) : ℚ)

end A398389

/-! ## A398389.P17393286615001533071

`2*(1+comp[and(n, -n)])`
-/

namespace A398389.P17393286615001533071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A398389.P17393286615001533071

namespace A398389

/-- `2*(1+comp[and(n, -n)])` -/
def P17393286615001533071.Spec : Prop :=
  ∀ n, (P17393286615001533071.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P9326612484560544362

`2*(1+comp[2*T(n-1,k)])` with `a(0)=1`
-/

namespace A398389.P9326612484560544362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * SequenceMachineLib.triUp f1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A398389.P9326612484560544362

namespace A398389

/-- `2*(1+comp[2*T(n-1,k)])` -/
def P9326612484560544362.Spec : Prop :=
  ∀ n, (P9326612484560544362.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P1944970499955465081

`2*(lt[xor(n+1, n), n]+2)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398389

/-- `2*(lt[xor(n+1, n), n]+2)` -/
def P1944970499955465081.Spec : Prop :=
  ∀ n, (P1944970499955465081.a n : ℤ) = A398389 (n + 1)

theorem P1944970499955465081.correct : P1944970499955465081.Spec := by
  intro n
  simp only [A398389, Nat.add_sub_cancel]

end A398389

/-! ## A398389.P3968972486505635911

`2*(comp[xor(n, and(n, n-1))]+1)`
-/

namespace A398389.P3968972486505635911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (n : ℤ) ((n : ℤ) - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A398389.P3968972486505635911

namespace A398389

/-- `2*(comp[xor(n, and(n, n-1))]+1)` -/
def P3968972486505635911.Spec : Prop :=
  ∀ n, (P3968972486505635911.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P18145395655811103735

`lt[a(floor(n/2))+n, n*gcd(2, n)]+2` with `a(0)=1`
-/

namespace A398389.P18145395655811103735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A398389.P18145395655811103735

namespace A398389

/-- `lt[a(floor(n/2))+n, n*gcd(2, n)]+2` -/
def P18145395655811103735.Spec : Prop :=
  ∀ n, (P18145395655811103735.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P16347668594839308066

`2+A177712(n+1)`
-/

namespace A398389.P16347668594839308066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A177712 (n + 1)

end

end A398389.P16347668594839308066

namespace A398389

/-- `2+A177712(n+1)` -/
def P16347668594839308066.Spec : Prop :=
  ∀ n, P16347668594839308066.a n = A398389 (n + 1)

end A398389

/-! ## A398389.P5277328001067070472

`2*(A057716(n+1)+1)`
-/

namespace A398389.P5277328001067070472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057716 (n + 1) + 1)

end

end A398389.P5277328001067070472

namespace A398389

/-- `2*(A057716(n+1)+1)` -/
def P5277328001067070472.Spec : Prop :=
  ∀ n, P5277328001067070472.a n = A398389 (n + 1)

end A398389

/-! ## A398389.P16812593357911905774

`2*(A062289(n+1)+2)`
-/

namespace A398389.P16812593357911905774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062289 (n + 1) + 2)

end

end A398389.P16812593357911905774

namespace A398389

/-- `2*(A062289(n+1)+2)` -/
def P16812593357911905774.Spec : Prop :=
  ∀ n, P16812593357911905774.a n = A398389 (n + 1)

end A398389

/-! ## A398389.P5926379816263142763

`A136724(n+1)/2+2`
-/

namespace A398389.P5926379816263142763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136724 (n + 1) : ℚ) / 2 + 2

end

end A398389.P5926379816263142763

namespace A398389

/-- `A136724(n+1)/2+2` -/
def P5926379816263142763.Spec : Prop :=
  ∀ n, P5926379816263142763.a n = (A398389 (n + 1) : ℚ)

end A398389

/-! ## A398389.P5019804509289831194

`∪[A192544(n+1), A266214(n+1)]`
-/

namespace A398389.P5019804509289831194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A398389.P5019804509289831194

namespace A398389

/-- `∪[A192544(n+1), A266214(n+1)]` -/
def P5019804509289831194.Spec : Prop :=
  ∀ n, (P5019804509289831194.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P6592551520079473713

`A103517(A057716(n+1))`
-/

namespace A398389.P6592551520079473713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A057716 (n + 1)).toNat

end

end A398389.P6592551520079473713

namespace A398389

/-- `A103517(A057716(n+1))` -/
def P6592551520079473713.Spec : Prop :=
  ∀ n, P6592551520079473713.a n = A398389 (n + 1)

end A398389

/-! ## A398389.P181736137694664174

`A103517(A138591(n+2))`
-/

namespace A398389.P181736137694664174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A138591 (n + 2)).toNat

end

end A398389.P181736137694664174

namespace A398389

/-- `A103517(A138591(n+2))` -/
def P181736137694664174.Spec : Prop :=
  ∀ n, P181736137694664174.a n = A398389 (n + 1)

end A398389

/-! ## A398389.P11722514291781209581

`A005843(A057716(n+1)+1)`
-/

namespace A398389.P11722514291781209581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A057716 (n + 1) + 1).toNat

end

end A398389.P11722514291781209581

namespace A398389

/-- `A005843(A057716(n+1)+1)` -/
def P11722514291781209581.Spec : Prop :=
  ∀ n, P11722514291781209581.a n = A398389 (n + 1)

end A398389

/-! ## A398389.P7521866624332409217

`2*lt[2, ∑{p}[1-n, #]]`
-/

namespace A398389.P7521866624332409217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398389.P7521866624332409217

namespace A398389

/-- `2*lt[2, ∑{p}[1-n, #]]` -/
def P7521866624332409217.Spec : Prop :=
  ∀ n, (P7521866624332409217.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P14806969106412288413

`2*lt[2, ∏{p}[1-n, #]]`
-/

namespace A398389.P14806969106412288413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398389.P14806969106412288413

namespace A398389

/-- `2*lt[2, ∏{p}[1-n, #]]` -/
def P14806969106412288413.Spec : Prop :=
  ∀ n, (P14806969106412288413.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P9263652494665087776

`A009056(A177712(n+1))`
-/

namespace A398389.P9263652494665087776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A177712 (n + 1)).toNat

end

end A398389.P9263652494665087776

namespace A398389

/-- `A009056(A177712(n+1))` -/
def P9263652494665087776.Spec : Prop :=
  ∀ n, P9263652494665087776.a n = A398389 (n + 1)

end A398389

/-! ## A398389.P16913856102232606418

`eq[A038608(n), A191598(n+1)]`
-/

namespace A398389.P16913856102232606418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P16913856102232606418

namespace A398389

/-- `eq[A038608(n), A191598(n+1)]` -/
def P16913856102232606418.Spec : Prop :=
  ∀ n, (P16913856102232606418.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P1722758782773477645

`eq[A052928(n), A191598(n+1)]`
-/

namespace A398389.P1722758782773477645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P1722758782773477645

namespace A398389

/-- `eq[A052928(n), A191598(n+1)]` -/
def P1722758782773477645.Spec : Prop :=
  ∀ n, (P1722758782773477645.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P14163644895225313855

`eq[A059029(n), A191598(n+1)]`
-/

namespace A398389.P14163644895225313855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P14163644895225313855

namespace A398389

/-- `eq[A059029(n), A191598(n+1)]` -/
def P14163644895225313855.Spec : Prop :=
  ∀ n, (P14163644895225313855.a n : ℤ) = A398389 (n + 1)

end A398389

/-!
# A398390: Number of factorizations of (p*q*r*s)^n into squarefree factors > 1 where none of p, q, r, or s are permitted as factors, for any four distinct primes p, q, r, and s.

The programs for A398390, there is no canonical definition to state claims against.
-/

/-! ## A398390.P14289454486581816990

`A337191(A118047(n))`
-/

namespace A398390.P14289454486581816990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337191 (A118047 n).toNat

end

end A398390.P14289454486581816990

/-! ## A398390.P15790689722243383767

`A382400(2*n)+A380534(A253342(2*n+1))`
-/

namespace A398390.P15790689722243383767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382400 (2 * n) + A380534 (A253342 (2 * n + 1)).toNat

end

end A398390.P15790689722243383767

/-!
# A398392: a(n) is the number of inequivalent placements of 4 nonattacking rooks on an n X n board, up to rotations.

The programs for A398392, there is no canonical definition to state claims against.
-/

/-! ## A398392.P17107683926393130898

`A071285(n!²)`
-/

namespace A398392.P17107683926393130898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071285 (Nat.factorial n ^ 2)

end

end A398392.P17107683926393130898

/-!
# A398393: a(n) is the number of inequivalent placements of 4 nonattacking rooks on an n X n board, up to rotations and reflections.

The programs for A398393, there is no canonical definition to state claims against.
-/

/-! ## A398393.P13626748981700093057

`A078898(A132853(n))-A373387(n+2)`
-/

namespace A398393.P13626748981700093057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A132853 n).toNat - A373387 (n + 2)

end

end A398393.P13626748981700093057

