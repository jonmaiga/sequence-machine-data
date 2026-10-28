import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A398300: a(n) is the minimum possible sum of the numbers on all non-mine cells when n mines are placed on an infinite Minesweeper board (each non-mine cell's number is the count of mines among its up to 8 neighbors).

The programs for A398300, the canonical program `A398300.P2858714858380498305` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398300 has offset 1).

The definition of A398300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398300.P2858714858380498305

`2*ceil(sqrt(28*(n+1)-12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398300

/-- `2*ceil(sqrt(28*(n+1)-12))` -/
def P2858714858380498305.Spec : Prop :=
  ∀ n, P2858714858380498305.a n = A398300 (n + 1)

theorem P2858714858380498305.correct : P2858714858380498305.Spec := by
  intro n
  simp only [A398300, Nat.add_sub_cancel]

end A398300

/-! ## A398300.P1299227352544880924

`A027709(A017017(n))`
-/

namespace A398300.P1299227352544880924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A017017 n).toNat

end

end A398300.P1299227352544880924

namespace A398300

/-- `A027709(A017017(n))` -/
def P1299227352544880924.Spec : Prop :=
  ∀ n, P1299227352544880924.a n = A398300 (n + 1)

end A398300

/-! ## A398300.P14595434300944813096

`A027709(A017029(n))`
-/

namespace A398300.P14595434300944813096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A017029 n).toNat

end

end A398300.P14595434300944813096

namespace A398300

/-- `A027709(A017029(n))` -/
def P14595434300944813096.Spec : Prop :=
  ∀ n, P14595434300944813096.a n = A398300 (n + 1)

end A398300

/-! ## A398300.P9200355729489429548

`A027709(A063211(n+1))`
-/

namespace A398300.P9200355729489429548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A063211 (n + 1)).toNat

end

end A398300.P9200355729489429548

namespace A398300

/-- `A027709(A063211(n+1))` -/
def P9200355729489429548.Spec : Prop :=
  ∀ n, P9200355729489429548.a n = A398300 (n + 1)

end A398300

/-! ## A398300.P12877636289742152033

`A027709(A063237(n+1))`
-/

namespace A398300.P12877636289742152033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A063237 (n + 1)).toNat

end

end A398300.P12877636289742152033

namespace A398300

/-- `A027709(A063237(n+1))` -/
def P12877636289742152033.Spec : Prop :=
  ∀ n, P12877636289742152033.a n = A398300 (n + 1)

end A398300

/-! ## A398300.P14005825120375390402

`A027709(A113803(n+1))`
-/

namespace A398300.P14005825120375390402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A113803 (n + 1)).toNat

end

end A398300.P14005825120375390402

namespace A398300

/-- `A027709(A113803(n+1))` -/
def P14005825120375390402.Spec : Prop :=
  ∀ n, P14005825120375390402.a n = A398300 (n + 1)

end A398300

/-! ## A398300.P906408528797707759

`A027709(A113804(n+1))`
-/

namespace A398300.P906408528797707759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A113804 (n + 1)).toNat

end

end A398300.P906408528797707759

namespace A398300

/-- `A027709(A113804(n+1))` -/
def P906408528797707759.Spec : Prop :=
  ∀ n, P906408528797707759.a n = A398300 (n + 1)

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

/-! ## A398301.P5184154718237044614

`∩[A055744(n+1), A330060(n+1)]`
-/

namespace A398301.P5184154718237044614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398301.P5184154718237044614

/-! ## A398301.P12231555999060061401

`∩[A055744(n+1), A330104(n+1)]`
-/

namespace A398301.P12231555999060061401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398301.P12231555999060061401

/-!
# A398302: In the canonical representation of n as a product of powers of prime numbers, a(n) is the position of the last prime with an exponent greater than 1, or 0 if n is squarefree.

The programs for A398302, there is no canonical definition to state claims against.
-/

/-! ## A398302.P9507825154355427606

`A001221(A398314(A396938(n+1)))`
-/

namespace A398302.P9507825154355427606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A398314 (A396938 (n + 1)).toNat).toNat

end

end A398302.P9507825154355427606

/-! ## A398302.P9162739142958833777

`A048881(A334032(n+1))`
-/

namespace A398302.P9162739142958833777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A334032 (n + 1)).toNat

end

end A398302.P9162739142958833777

/-! ## A398302.P6961302070072290529

`A000120(A334032(n+1)+1)-1`
-/

namespace A398302.P6961302070072290529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A334032 (n + 1) + 1).toNat - 1

end

end A398302.P6961302070072290529

/-! ## A398302.P13414028591375095561

`A087624(A375400(n+1))`
-/

namespace A398302.P13414028591375095561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A375400 (n + 1)).toNat

end

end A398302.P13414028591375095561

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

The programs for A398309, the canonical program `A398309.P7943178715840063505` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398309 has offset 0).

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

The canonical program, it is in `Seq.B000.C050`.
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

/-!
# A398310: Number of indecomposable closed walks of length n on the regular icosahedron based at a vertex.

The programs for A398310, the canonical program `A398310.P8489695089946524381` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398310 has offset 0).

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

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A398311.P17928526080245446348

`A136534(A118929(n))`
-/

namespace A398311.P17928526080245446348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136534 (A118929 n).toNat

end

end A398311.P17928526080245446348

/-! ## A398311.P11490101750924543014

`filter[A339837(n+1), A095130(#)]`
-/

namespace A398311.P11490101750924543014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A398311.P11490101750924543014

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

/-! ## A398314.P16604501375996341517

`(n+1)*A034386(A006530(n+1))`
-/

namespace A398314.P16604501375996341517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034386 (A006530 (n + 1)).toNat

end

end A398314.P16604501375996341517

namespace A398314

/-- `(n+1)*A034386(A006530(n+1))` -/
def P16604501375996341517.Spec : Prop :=
  ∀ n, P16604501375996341517.a n = A398314 (n + 1)

end A398314

/-! ## A398314.P7502296826251079305

`(n+1)*A002110(A061395(n+1))`
-/

namespace A398314.P7502296826251079305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002110 (A061395 (n + 1)).toNat

end

end A398314.P7502296826251079305

namespace A398314

/-- `(n+1)*A002110(A061395(n+1))` -/
def P7502296826251079305.Spec : Prop :=
  ∀ n, P7502296826251079305.a n = A398314 (n + 1)

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

/-!
# A398318: Number of words of length n over the 6 one-directional face-turn generators {U,D,L,R,F,B} (no inverses, no double turns) whose product in the Rubik's Cube group has the maximum order among all words of that length.

The programs for A398318, there is no canonical definition to state claims against.
-/

/-! ## A398318.P5987744361602588281

`A119870(A279253(n+1))`
-/

namespace A398318.P5987744361602588281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119870 (A279253 (n + 1)).toNat

end

end A398318.P5987744361602588281

/-!
# A398324: Positions k such that the prefix of length k of the Kolakoski sequence contains an even number of 1's and an even number of 2's.

The programs for A398324, the canonical program `A398324.P4813511843978568844` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398324 has offset 1).

The definition of A398324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1657 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398324.P483238104342319650

`lt[A040001(A216345(n+1)), A040001(n)]`
-/

namespace A398324.P483238104342319650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P483238104342319650

namespace A398324

/-- `lt[A040001(A216345(n+1)), A040001(n)]` -/
def P483238104342319650.Spec : Prop :=
  ∀ n, (P483238104342319650.a n : ℤ) = A398324 (n + 1)

end A398324

/-! ## A398324.P4813511843978568844

`eq[A088570(A216345(n+1)), A157928(n)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A398324

/-- `eq[A088570(A216345(n+1)), A157928(n)]` -/
def P4813511843978568844.Spec : Prop :=
  ∀ n, (P4813511843978568844.a n : ℤ) = A398324 (n + 1)

theorem P4813511843978568844.correct : P4813511843978568844.Spec := by
  intro n
  simp only [A398324, Nat.add_sub_cancel]

end A398324

/-! ## A398324.P13609165177966877987

`lt[A071045(A216345(n+1)), A071045(n)]`
-/

namespace A398324.P13609165177966877987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A216345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398324.P13609165177966877987

namespace A398324

/-- `lt[A071045(A216345(n+1)), A071045(n)]` -/
def P13609165177966877987.Spec : Prop :=
  ∀ n, (P13609165177966877987.a n : ℤ) = A398324 (n + 1)

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

/-!
# A398332: Largest value M such that all integers 1 through M can be expressed as b_i, b_i + b_j, or b_j - b_i for some set of n positive integers (the 2-postage stamp problem with subtraction).

The programs for A398332, there is no canonical definition to state claims against.
-/

/-! ## A398332.P12168240238481368083

`∑[A053196(n+2)]`
-/

namespace A398332.P12168240238481368083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398332.P12168240238481368083

/-! ## A398332.P6847129760173655638

`∑[A159634(n+2)]`
-/

namespace A398332.P6847129760173655638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398332.P6847129760173655638

/-! ## A398332.P6696389790383599593

`A088803(n+2)-1`
-/

namespace A398332.P6696389790383599593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088803 (n + 2) - 1

end

end A398332.P6696389790383599593

/-! ## A398332.P2683767313941522590

`2*∑[A070172(n+1)]`
-/

namespace A398332.P2683767313941522590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398332.P2683767313941522590

/-! ## A398332.P13355687710996035469

`2*∑[A273353(n+1)]`
-/

namespace A398332.P13355687710996035469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398332.P13355687710996035469

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

/-! ## A398334.P12771571877308110044

`A151950(n)-A283001(n)`
-/

namespace A398334.P12771571877308110044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n - A283001 n

end

end A398334.P12771571877308110044

/-! ## A398334.P14599915479744451991

`A271497(A271497(n-A004185(n)))`
-/

namespace A398334.P14599915479744451991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271497 (A271497 ((n : ℤ) - A004185 n).toNat).toNat

end

end A398334.P14599915479744451991

/-! ## A398334.P4066261687267513730

`A037860(A239088(n+1))`
-/

namespace A398334.P4066261687267513730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A239088 (n + 1)).toNat

end

end A398334.P4066261687267513730

/-! ## A398334.P11592227702062919000

`A355930(A054842(n))`
-/

namespace A398334.P11592227702062919000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355930 (A054842 n).toNat

end

end A398334.P11592227702062919000

/-! ## A398334.P1140775766399562489

`A370884(A305493(n))`
-/

namespace A398334.P1140775766399562489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 (A305493 n).toNat

end

end A398334.P1140775766399562489

/-! ## A398334.P5651393484701731563

`A037860(A160755(n+1))`
-/

namespace A398334.P5651393484701731563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A160755 (n + 1)).toNat

end

end A398334.P5651393484701731563

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

/-! ## A398337.P1562038542427195980

`A232088(A154952(n+1))`
-/

namespace A398337.P1562038542427195980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232088 (A154952 (n + 1)).toNat

end

end A398337.P1562038542427195980

/-!
# A398340: Triangle read by rows, where T(n,k), n>0, k<=2^(n-1), is the smallest prime factor of (2*k-1)*2^n+1.

The programs for A398340, there is no canonical definition to state claims against.
-/

/-! ## A398340.P10630356246976083991

`A020639(A369901(n+1))`
-/

namespace A398340.P10630356246976083991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A369901 (n + 1)).toNat

end

end A398340.P10630356246976083991

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

/-! ## A398341.P6830142214441089223

`n+1-A162348(2*(n+1))`
-/

namespace A398341.P6830142214441089223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A162348 (2 * (n + 1))

end

end A398341.P6830142214441089223

/-! ## A398341.P9118581664343355011

`2*(n+1)-A248835(n+1)`
-/

namespace A398341.P9118581664343355011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A248835 (n + 1)

end

end A398341.P9118581664343355011

/-! ## A398341.P4428551099151229240

`n+1-(n+1)/A033676(n+1)`
-/

namespace A398341.P4428551099151229240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / (A033676 (n + 1) : ℚ)

end

end A398341.P4428551099151229240

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

/-!
# A398351: Number of connected 4-valent half-arc-transitive graphs with n vertices.

The programs for A398351, there is no canonical definition to state claims against.
-/

/-! ## A398351.P2951940126772801681

`and(A325562(n+1), A325562(A325246(n)))`
-/

namespace A398351.P2951940126772801681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325562 (n + 1)) (A325562 (A325246 n).toNat)

end

end A398351.P2951940126772801681

/-! ## A398351.P6247989827203950994

`and(A010060(3*n+3), A049347(A096896(n+1)))`
-/

namespace A398351.P6247989827203950994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (3 * n + 3)) (A049347 (A096896 (n + 1)).toNat)

end

end A398351.P6247989827203950994

/-! ## A398351.P5397085770853762856

`A231367(A225319(n+1)+n)`
-/

namespace A398351.P5397085770853762856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231367 (A225319 (n + 1) + (n : ℤ)).toNat

end

end A398351.P5397085770853762856

/-! ## A398351.P6240753791860528592

`val(A358376(n+2), A119899(n+1))`
-/

namespace A398351.P6240753791860528592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A358376 (n + 2)).toNat (A119899 (n + 1)).toNat

end

end A398351.P6240753791860528592

/-! ## A398351.P7437244632273199883

`Δ[A333380(n+1)]%A362611(n+4)`
-/

namespace A398351.P7437244632273199883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A362611 (n + 4))

end

end A398351.P7437244632273199883

/-! ## A398351.P291149067033973666

`and(A001859(n), A010060(A188670(n)))`
-/

namespace A398351.P291149067033973666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001859 n) (A010060 (A188670 n).toNat)

end

end A398351.P291149067033973666

/-! ## A398351.P15134314809410978497

`A010051(A329347(n+1)+A117991(n+1))`
-/

namespace A398351.P15134314809410978497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A329347 (n + 1) + A117991 (n + 1)).toNat

end

end A398351.P15134314809410978497

/-! ## A398351.P15298867357716425657

`A302048(A284884(n+5)+A065671(n+4))`
-/

namespace A398351.P15298867357716425657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A284884 (n + 5) + A065671 (n + 4)).toNat

end

end A398351.P15298867357716425657

/-! ## A398351.P10253921677796924533

`A364272(A095047(n+1)%A030758(n+1))`
-/

namespace A398351.P10253921677796924533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 (Int.tmod (A095047 (n + 1)) (A030758 (n + 1))).toNat

end

end A398351.P10253921677796924533

/-! ## A398351.P13299595201970680983

`A124786(n+1)%A290262(A355731(n+1))`
-/

namespace A398351.P13299595201970680983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124786 (n + 1)) (A290262 (A355731 (n + 1)).toNat)

end

end A398351.P13299595201970680983

/-!
# A398364: a(n) = Sum_{k=0..floor(n/7)} binomial(2*k,k) * binomial(n-5*k,2*k).

The programs for A398364, the canonical program `A398364.P12204821827431358305` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398364 has offset 0).

The definition of A398364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` (program `A398364.P12204821827431358305`, by `A398364.P12204821827431358305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398364.P12204821827431358305

`∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398364

/-- `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` -/
def P12204821827431358305.Spec : Prop :=
  ∀ n, (P12204821827431358305.a n : ℤ) = A398364 n

theorem P12204821827431358305.correct : P12204821827431358305.Spec := by
  intro n
  simp only [A398364]

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

/-! ## A398364.P4063855819927594202

`A398365((n+1)*A398365(A191588(n+1)))`
-/

namespace A398364.P4063855819927594202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398365 ((n + 1 : ℤ) * A398365 (A191588 (n + 1)).toNat).toNat

end

end A398364.P4063855819927594202

namespace A398364

/-- `A398365((n+1)*A398365(A191588(n+1)))` -/
def P4063855819927594202.Spec : Prop :=
  ∀ n, P4063855819927594202.a n = A398364 n

end A398364

/-! ## A398364.P12853174699081285245

`A178568(A025727(n))`
-/

namespace A398364.P12853174699081285245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178568 (A025727 n).toNat

end

end A398364.P12853174699081285245

namespace A398364

/-- `A178568(A025727(n))` -/
def P12853174699081285245.Spec : Prop :=
  ∀ n, P12853174699081285245.a n = A398364 n

end A398364

/-!
# A398365: a(n) = Sum_{k=0..floor(n/8)} binomial(2*k,k) * binomial(n-6*k,2*k).

The programs for A398365, the canonical program `A398365.P10988356879286163353` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398365 has offset 0).

The definition of A398365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` (program `A398365.P10988356879286163353`, by `A398365.P10988356879286163353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398365.P10988356879286163353

`∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398365

/-- `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` -/
def P10988356879286163353.Spec : Prop :=
  ∀ n, (P10988356879286163353.a n : ℤ) = A398365 n

theorem P10988356879286163353.correct : P10988356879286163353.Spec := by
  intro n
  simp only [A398365]

end A398365

/-! ## A398365.P3242902317271745278

`A006670(A229887(n))`
-/

namespace A398365.P3242902317271745278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A229887 n).toNat

end

end A398365.P3242902317271745278

namespace A398365

/-- `A006670(A229887(n))` -/
def P3242902317271745278.Spec : Prop :=
  ∀ n, P3242902317271745278.a n = A398365 n

end A398365

/-! ## A398365.P11447899582577908810

`A265436(A398364(n))`
-/

namespace A398365.P11447899582577908810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265436 (A398364 n).toNat

end

end A398365.P11447899582577908810

namespace A398365

/-- `A265436(A398364(n))` -/
def P11447899582577908810.Spec : Prop :=
  ∀ n, P11447899582577908810.a n = A398365 n

end A398365

/-! ## A398365.P10044553822583564862

`A276611(A143571(n))`
-/

namespace A398365.P10044553822583564862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A143571 n).toNat

end

end A398365.P10044553822583564862

namespace A398365

/-- `A276611(A143571(n))` -/
def P10044553822583564862.Spec : Prop :=
  ∀ n, P10044553822583564862.a n = A398365 n

end A398365

/-! ## A398365.P12655785067853575027

`A276611(A291700(n))`
-/

namespace A398365.P12655785067853575027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A291700 n).toNat

end

end A398365.P12655785067853575027

namespace A398365

/-- `A276611(A291700(n))` -/
def P12655785067853575027.Spec : Prop :=
  ∀ n, P12655785067853575027.a n = A398365 n

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

/-! ## A398366.P10959188954415051466

`A182576(A322231(n))`
-/

namespace A398366.P10959188954415051466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182576 (A322231 n).toNat

end

end A398366.P10959188954415051466

/-! ## A398366.P2257446286405795595

`A331514(n)%A006002(A022182(n))`
-/

namespace A398366.P2257446286405795595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331514 n) (A006002 (A022182 n).toNat)

end

end A398366.P2257446286405795595

/-! ## A398366.P1324745207890290060

`A381569(n)/A124010(A334866(n+4))`
-/

namespace A398366.P1324745207890290060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381569 n : ℚ) / (A124010 (A334866 (n + 4)).toNat : ℚ)

end

end A398366.P1324745207890290060

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

/-! ## A398367.P9943733949574282275

`A288915(A219167(n+2))`
-/

namespace A398367.P9943733949574282275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288915 (A219167 (n + 2)).toNat

end

end A398367.P9943733949574282275

/-! ## A398367.P5912068397259840344

`A062831(A191658(n+2))`
-/

namespace A398367.P5912068397259840344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062831 (A191658 (n + 2)).toNat

end

end A398367.P5912068397259840344

/-!
# A398373: Triangle read by rows: T(n, k) = binomial(n + k - 1, k) * n^(n - k).

The programs for A398373, there is no canonical definition to state claims against.
-/

/-! ## A398373.P18263438788243973907

`A059481(n)*A364870(n)`
-/

namespace A398373.P18263438788243973907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A364870 n

end

end A398373.P18263438788243973907

/-!
# A398374: Number of permutations that give the maximum number of comparisons for sorting n elements by binary insertions.

The programs for A398374, the canonical program `A398374.P7463169060514221778` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398374 has offset 0).

The definition of A398374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398374.P7463169060514221778

`a(n-1)*(2*n-2^ceil(log2(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398374

/-- `a(n-1)*(2*n-2^ceil(log2(n)))` -/
def P7463169060514221778.Spec : Prop :=
  ∀ n, P7463169060514221778.a n = (A398374 n : ℚ)

end A398374

/-! ## A398374.P1588868290390775652

`A028310(∏[Δ[A068669(n+1)]])`
-/

namespace A398374.P1588868290390775652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A398374.P1588868290390775652

namespace A398374

/-- `A028310(∏[Δ[A068669(n+1)]])` -/
def P1588868290390775652.Spec : Prop :=
  ∀ n, P1588868290390775652.a n = A398374 n

end A398374

/-! ## A398374.P8280325663490055562

`A163373(A363545(n))`
-/

namespace A398374.P8280325663490055562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163373 (A363545 n).toNat

end

end A398374.P8280325663490055562

namespace A398374

/-- `A163373(A363545(n))` -/
def P8280325663490055562.Spec : Prop :=
  ∀ n, P8280325663490055562.a n = A398374 n

end A398374

/-! ## A398374.P14181097414209686628

`A395683(A150071(n))`
-/

namespace A398374.P14181097414209686628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395683 (A150071 n).toNat

end

end A398374.P14181097414209686628

namespace A398374

/-- `A395683(A150071(n))` -/
def P14181097414209686628.Spec : Prop :=
  ∀ n, P14181097414209686628.a n = A398374 n

end A398374

/-!
# A398375: Numbers divisible by the square of their second smallest distinct prime factor.

The programs for A398375, there is no canonical definition to state claims against.
-/

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

/-! ## A398376.P8507645865626145003

`A118065(A133585(n+1))`
-/

namespace A398376.P8507645865626145003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118065 (A133585 (n + 1)).toNat

end

end A398376.P8507645865626145003

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

The programs for A398389, the canonical program `A398389.P6222252586482190489` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398389 has offset 1).

The definition of A398389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398389.P6222252586482190489

`A177712(n+1)+2`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A398389

/-- `A177712(n+1)+2` -/
def P6222252586482190489.Spec : Prop :=
  ∀ n, P6222252586482190489.a n = A398389 (n + 1)

theorem P6222252586482190489.correct : P6222252586482190489.Spec := by
  intro n
  simp only [A398389, Nat.add_sub_cancel]

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

theorem P5277328001067070472.correct : P5277328001067070472.Spec := by
  intro n
  simp only [A398389, Nat.add_sub_cancel, A398389.P5277328001067070472.a, A398389.P6222252586482190489.a, A057716, A057716.P12729927747178564493.f1, A057716.P12729927747178564493.f2, A057716.P12729927747178564493.a, A177712, A177712.P17818057687902141564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

theorem P16812593357911905774.correct : P16812593357911905774.Spec := by
  intro n
  simp only [A398389, Nat.add_sub_cancel, A398389.P16812593357911905774.a, A398389.P6222252586482190489.a, A062289, A062289.P3760834885258552887.a, A177712, A177712.P17818057687902141564.a, A057716, A057716.P12729927747178564493.f1, A057716.P12729927747178564493.f2, A057716.P12729927747178564493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-! ## A398389.P8576938098693901220

`eq[A065599(n), A191598(n+1)]`
-/

namespace A398389.P8576938098693901220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P8576938098693901220

namespace A398389

/-- `eq[A065599(n), A191598(n+1)]` -/
def P8576938098693901220.Spec : Prop :=
  ∀ n, (P8576938098693901220.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P9660504844591858006

`eq[A066104(n), A191598(n+1)]`
-/

namespace A398389.P9660504844591858006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P9660504844591858006

namespace A398389

/-- `eq[A066104(n), A191598(n+1)]` -/
def P9660504844591858006.Spec : Prop :=
  ∀ n, (P9660504844591858006.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P1483587240417101048

`eq[A137501(n), A191598(n+1)]`
-/

namespace A398389.P1483587240417101048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P1483587240417101048

namespace A398389

/-- `eq[A137501(n), A191598(n+1)]` -/
def P1483587240417101048.Spec : Prop :=
  ∀ n, (P1483587240417101048.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P10207206577495756051

`eq[A153733(n), A191598(n+1)]`
-/

namespace A398389.P10207206577495756051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P10207206577495756051

namespace A398389

/-- `eq[A153733(n), A191598(n+1)]` -/
def P10207206577495756051.Spec : Prop :=
  ∀ n, (P10207206577495756051.a n : ℤ) = A398389 (n + 1)

end A398389

/-! ## A398389.P4169910914467469097

`eq[A159966(n), A191598(n+1)]`
-/

namespace A398389.P4169910914467469097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A398389.P4169910914467469097

namespace A398389

/-- `eq[A159966(n), A191598(n+1)]` -/
def P4169910914467469097.Spec : Prop :=
  ∀ n, (P4169910914467469097.a n : ℤ) = A398389 (n + 1)

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

