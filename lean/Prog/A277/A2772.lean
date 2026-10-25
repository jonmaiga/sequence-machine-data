import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A277200: Even terms in A260442 (in A260443).

The programs for A277200, there is no canonical definition to state claims against.
-/

/-! ## A277200.P15820751417731253066

`∩[2*n, A260442(n)]`
-/

namespace A277200.P15820751417731253066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277200.P15820751417731253066

/-! ## A277200.P1626097370373630641

`filter[A069087(n+1), A389449(#)]`
-/

namespace A277200.P1626097370373630641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A277200.P1626097370373630641

/-! ## A277200.P13053000913714629446

`filter[A304450(n+1), A389449(#)]`
-/

namespace A277200.P13053000913714629446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A277200.P13053000913714629446

/-! ## A277200.P16837254887618481513

`filter[A373515(n+1), A389449(#)]`
-/

namespace A277200.P16837254887618481513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A277200.P16837254887618481513

/-! ## A277200.P14491193373373581837

`filter[A055932(n+2), A389449(#)]`
-/

namespace A277200.P14491193373373581837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A277200.P14491193373373581837

/-!
# A277201: Primes of the form (p^4 + 1)/2, where p is prime.

The programs for A277201, there is no canonical definition to state claims against.
-/

/-! ## A277201.P13352953099181977851

`(A176116(n+1)^4+1)/2`
-/

namespace A277201.P13352953099181977851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176116 (n + 1) ^ 4 + 1 : ℚ) / 2

end

end A277201.P13352953099181977851

/-! ## A277201.P13424665049806769541

`ceil(A176116(n+1)^4/2)`
-/

namespace A277201.P13424665049806769541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176116 (n + 1) ^ 4 : ℚ) / 2⌉

end

end A277201.P13424665049806769541

/-! ## A277201.P10766326590805478741

`record[A078553(n+3)]`
-/

namespace A277201.P10766326590805478741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078553 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277201.P10766326590805478741

/-! ## A277201.P7325624316747477256

`record[A096172(p?[2*n+1])]`
-/

namespace A277201.P7325624316747477256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277201.P7325624316747477256

/-! ## A277201.P8821692429071885958

`A078553(A176116(n+1))`
-/

namespace A277201.P8821692429071885958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078553 (A176116 (n + 1)).toNat

end

end A277201.P8821692429071885958

/-! ## A277201.P6831523067549203542

`A078553(p?[A096169(n+1)])`
-/

namespace A277201.P6831523067549203542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A277201.P6831523067549203542

/-! ## A277201.P4556497152240964029

`A096172(p?[A096169(n+1)])`
-/

namespace A277201.P4556497152240964029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A277201.P4556497152240964029

/-! ## A277201.P17909181533735737852

`record[A096172(A006530(n+3))]`
-/

namespace A277201.P17909181533735737852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (A006530 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277201.P17909181533735737852

/-! ## A277201.P13490149533031088599

`record[A096172(A014963(n+3))]`
-/

namespace A277201.P13490149533031088599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (A014963 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277201.P13490149533031088599

/-! ## A277201.P7647225053446110917

`record[A096172(A020639(n+3))]`
-/

namespace A277201.P7647225053446110917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (A020639 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277201.P7647225053446110917

/-! ## A277201.P4815013425280600111

`A096172(2*A176116(n+1)-A176116(n+1))`
-/

namespace A277201.P4815013425280600111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (2 * A176116 (n + 1) - A176116 (n + 1)).toNat

end

end A277201.P4815013425280600111

/-!
# A277202: Ratio of the fibonomial Catalan numbers and Lucas numbers.

The programs for A277202, there is no canonical definition to state claims against.
-/

/-! ## A277202.P11505207034290676129

`A003150(n+1)/A000032(n+1)`
-/

namespace A277202.P11505207034290676129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003150 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A277202.P11505207034290676129

/-! ## A277202.P11827950921290271496

`A003150(n+1)/A000204(n+1)`
-/

namespace A277202.P11827950921290271496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003150 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ)

end

end A277202.P11827950921290271496

/-!
# A277203: Number of distinct chromatic symmetric functions realizable by a graph on n vertices.

The programs for A277203, there is no canonical definition to state claims against.
-/

/-! ## A277203.P3360215952595533163

`A178925(n+1)+A076281(A321966(n))`
-/

namespace A277203.P3360215952595533163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178925 (n + 1) + A076281 (A321966 n).toNat

end

end A277203.P3360215952595533163

/-! ## A277203.P13272339030990666350

`A178925(n+1)+A076281(A108198(n+1))`
-/

namespace A277203.P13272339030990666350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178925 (n + 1) + A076281 (A108198 (n + 1)).toNat

end

end A277203.P13272339030990666350

/-! ## A277203.P6402939200061690554

`A008621(A152322(n+1)+∑[A090368(n+1)])`
-/

namespace A277203.P6402939200061690554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A152322 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277203.P6402939200061690554

/-!
# A277204: Number of chromatic symmetric functions realizable from exactly one graph on n vertices.

The programs for A277204, there is no canonical definition to state claims against.
-/

/-! ## A277204.P8096425331076668562

`A057357(A006093(n+2)+n!*∑[1/n!])`
-/

namespace A277204.P8096425331076668562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A277204.P8096425331076668562

/-! ## A277204.P9983064567676958420

`A057357(A006093(n+2)+A000522(n))`
-/

namespace A277204.P9983064567676958420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A006093 (n + 2) + A000522 n).toNat

end

end A277204.P9983064567676958420

/-! ## A277204.P15406965144610975404

`A123437(n+1)-A098804(A001200(n))`
-/

namespace A277204.P15406965144610975404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123437 (n + 1) - A098804 (A001200 n).toNat

end

end A277204.P15406965144610975404

/-!
# A277205: Number of chromatic symmetric functions realizable by exactly 2 graphs on n vertices.

The programs for A277205, there is no canonical definition to state claims against.
-/

/-! ## A277205.P14029766340337277131

`A002266(A187505(∑[n])+1)`
-/

namespace A277205.P14029766340337277131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A187505 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A277205.P14029766340337277131

/-! ## A277205.P17831139105195167439

`A359900(∑[∑[A214131(3*n+2)]])`
-/

namespace A277205.P17831139105195167439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214131 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359900 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277205.P17831139105195167439

/-! ## A277205.P3493907535677818297

`A079693(A028338(n)+A007838(n))`
-/

namespace A277205.P3493907535677818297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079693 (A028338 n + A007838 n).toNat

end

end A277205.P3493907535677818297

/-! ## A277205.P11262810921944401259

`A359900(A001405(n)+A000930(n))`
-/

namespace A277205.P11262810921944401259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359900 (A001405 n + A000930 n).toNat

end

end A277205.P11262810921944401259

/-!
# A277208: Numbers m such that m-1 = (tau(m-1)-1)^k for some k>=0, where tau(m) is the number of divisors of m (A000005).

The programs for A277208, there is no canonical definition to state claims against.
-/

/-! ## A277208.P12698003108750061563

`A340852(A028355(n+1))+1`
-/

namespace A277208.P12698003108750061563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340852 (A028355 (n + 1)).toNat + 1

end

end A277208.P12698003108750061563

/-!
# A277209: Partial sums of repdigit numbers (A010785).

The programs for A277209, the canonical program `A277209.P17765883351870887207` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277209 has offset 0).

The definition of A277209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277209.P7128153955482900451

`∑[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9]`
-/

namespace A277209.P7128153955482900451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277209.P7128153955482900451

namespace A277209

/-- `∑[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9]` -/
def P7128153955482900451.Spec : Prop :=
  ∀ n, P7128153955482900451.a n = (A277209 n : ℚ)

end A277209

/-! ## A277209.P1590942217183653177

`a(n-1)+(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9` with `a(0)=0`
-/

namespace A277209.P1590942217183653177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9)

end

end A277209.P1590942217183653177

namespace A277209

/-- `a(n-1)+(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9` -/
def P1590942217183653177.Spec : Prop :=
  ∀ n, P1590942217183653177.a n = (A277209 n : ℚ)

end A277209

/-! ## A277209.P18050891291364242683

`or(∑[A010785(n)], char[1])`
-/

namespace A277209.P18050891291364242683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277209.P18050891291364242683

namespace A277209

/-- `or(∑[A010785(n)], char[1])` -/
def P18050891291364242683.Spec : Prop :=
  ∀ n, P18050891291364242683.a n = A277209 n

end A277209

/-! ## A277209.P17765883351870887207

`A010785(n)+a(A023443(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277209

/-- `A010785(n)+a(A023443(n))` -/
def P17765883351870887207.Spec : Prop :=
  ∀ n, P17765883351870887207.a n = A277209 n

theorem P17765883351870887207.correct : P17765883351870887207.Spec := by
  intro n
  simp only [A277209]

end A277209

/-! ## A277209.P6340911745935144212

`lcm(∑[A010785(n)], A008836(n+1))`
-/

namespace A277209.P6340911745935144212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A008836 (n + 1))

end

end A277209.P6340911745935144212

namespace A277209

/-- `lcm(∑[A010785(n)], A008836(n+1))` -/
def P6340911745935144212.Spec : Prop :=
  ∀ n, (P6340911745935144212.a n : ℤ) = A277209 n

end A277209

/-! ## A277209.P10194861865678614892

`A000040(n+1)%2*∑[A010785(n)]`
-/

namespace A277209.P10194861865678614892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277209.P10194861865678614892

namespace A277209

/-- `A000040(n+1)%2*∑[A010785(n)]` -/
def P10194861865678614892.Spec : Prop :=
  ∀ n, P10194861865678614892.a n = A277209 n

end A277209

/-! ## A277209.P17555336918621468524

`∑[A010785(n+1)]-A010785(n+1)`
-/

namespace A277209.P17555336918621468524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010785 (n + 1)

end

end A277209.P17555336918621468524

namespace A277209

/-- `∑[A010785(n+1)]-A010785(n+1)` -/
def P17555336918621468524.Spec : Prop :=
  ∀ n, P17555336918621468524.a n = A277209 n

end A277209

/-! ## A277209.P13548653333914687333

`∑[A152966(n)]/2`
-/

namespace A277209.P13548653333914687333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A277209.P13548653333914687333

namespace A277209

/-- `∑[A152966(n)]/2` -/
def P13548653333914687333.Spec : Prop :=
  ∀ n, P13548653333914687333.a n = (A277209 n : ℚ)

end A277209

/-! ## A277209.P12404963373589791924

`∑[A010785(n)]%A000032(n+1)`
-/

namespace A277209.P12404963373589791924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000032 (n + 1))

end

end A277209.P12404963373589791924

namespace A277209

/-- `∑[A010785(n)]%A000032(n+1)` -/
def P12404963373589791924.Spec : Prop :=
  ∀ n, P12404963373589791924.a n = A277209 n

end A277209

/-! ## A277209.P2100009053701397618

`∑[A010785(n)]%A000051(n)`
-/

namespace A277209.P2100009053701397618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000051 n)

end

end A277209.P2100009053701397618

namespace A277209

/-- `∑[A010785(n)]%A000051(n)` -/
def P2100009053701397618.Spec : Prop :=
  ∀ n, P2100009053701397618.a n = A277209 n

end A277209

/-! ## A277209.P73174149138642350

`and(∑[A010785(n)], A000225(n))`
-/

namespace A277209.P73174149138642350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A000225 n)

end

end A277209.P73174149138642350

namespace A277209

/-- `and(∑[A010785(n)], A000225(n))` -/
def P73174149138642350.Spec : Prop :=
  ∀ n, P73174149138642350.a n = A277209 n

end A277209

/-! ## A277209.P11343913305728147515

`A007318(∑[n])*∑[A010785(n)]`
-/

namespace A277209.P11343913305728147515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A277209.P11343913305728147515

namespace A277209

/-- `A007318(∑[n])*∑[A010785(n)]` -/
def P11343913305728147515.Spec : Prop :=
  ∀ n, P11343913305728147515.a n = A277209 n

end A277209

/-!
# A277210: Expansion of Product_{k>=1} 1/(1 - x^(3*k+1)).

The programs for A277210, there is no canonical definition to state claims against.
-/

/-! ## A277210.P14330087859889572249

`A035382(n)-A127321(A094926(n))`
-/

namespace A277210.P14330087859889572249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 n - A127321 (A094926 n).toNat

end

end A277210.P14330087859889572249

/-! ## A277210.P10919392392758567019

`A025862(eq[A033183(n), A165190(n)])`
-/

namespace A277210.P10919392392758567019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277210.P10919392392758567019

/-! ## A277210.P14972931976667771809

`A035535(n)-A035538(n)-A127321(A094926(n))`
-/

namespace A277210.P14972931976667771809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n - A035538 n - A127321 (A094926 n).toNat

end

end A277210.P14972931976667771809

/-! ## A277210.P8399025489564815732

`Δ[A127321(A094926(n))]`
-/

namespace A277210.P8399025489564815732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A094926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277210.P8399025489564815732

/-! ## A277210.P10387275512091280120

`A066099(A006171(n))%A289493(n+1)`
-/

namespace A277210.P10387275512091280120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066099 (A006171 n).toNat) (A289493 (n + 1))

end

end A277210.P10387275512091280120

/-!
# A277211: Number of n X n X n triangular 0..1 arrays with no 2 X 2 X 2 subblock having three equal elements.

The programs for A277211, there is no canonical definition to state claims against.
-/

/-! ## A277211.P3906943376832356389

`(n+1)*A173643(∑[(1-n)²])`
-/

namespace A277211.P3906943376832356389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A173643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277211.P3906943376832356389

/-! ## A277211.P10214621350524706237

`A225545(∑[∑[A298985(n)]])`
-/

namespace A277211.P10214621350524706237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277211.P10214621350524706237

/-!
# A277213: Least k such that Fibonacci(k + 1) has n times as many distinct prime factors as Fibonacci(k), or 0 if no such k exists.

The programs for A277213, there is no canonical definition to state claims against.
-/

/-! ## A277213.P6673711468222948396

`A125767(4*A086781(n))`
-/

namespace A277213.P6673711468222948396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125767 (4 * A086781 n).toNat

end

end A277213.P6673711468222948396

/-! ## A277213.P4385167958887614938

`p?[∑[A245341(A245319(n+1))]]`
-/

namespace A277213.P4385167958887614938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245341 (A245319 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277213.P4385167958887614938

/-! ## A277213.P5520718962227942298

`∩[A306355(n+1), A308420(n+1)]`
-/

namespace A277213.P5520718962227942298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277213.P5520718962227942298

/-!
# A277214: a(n) is the Manhattan distance between n and 1 in a 3-dimensional cubic spiral of positive integers with 1..8 at the center (illustration in the comments).

The programs for A277214, there is no canonical definition to state claims against.
-/

/-! ## A277214.P3194696295012260345

`A086520(n+1)%A036122(A000032(n))`
-/

namespace A277214.P3194696295012260345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (n + 1)) (A036122 (A000032 n).toNat)

end

end A277214.P3194696295012260345

/-! ## A277214.P1469065026541441531

`A374054(A278603(n)%A128981(n+1))`
-/

namespace A277214.P1469065026541441531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374054 (Int.tmod (A278603 n) (A128981 (n + 1))).toNat

end

end A277214.P1469065026541441531

/-! ## A277214.P7015174453994902506

`A005811(A004884(n+1)%A325301(n+1))`
-/

namespace A277214.P7015174453994902506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.tmod (A004884 (n + 1)) (A325301 (n + 1))).toNat

end

end A277214.P7015174453994902506

/-! ## A277214.P10231434660737151093

`gcd(A010894(A081339(n+1)), A086520(n+1))`
-/

namespace A277214.P10231434660737151093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 ((A081339 (n + 1)).toNat + 21)) (A086520 (n + 1))

end

end A277214.P10231434660737151093

/-! ## A277214.P1258767888605476684

`A340378(A054886(n+1)-A127992(n+1))`
-/

namespace A277214.P1258767888605476684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340378 (A054886 (n + 1) - A127992 (n + 1)).toNat

end

end A277214.P1258767888605476684

/-!
# A277216: Product of decimal digits of sum of divisors of n.

The programs for A277216, the canonical program `A277216.P4779686101066146694` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277216 has offset 1).

The definition of A277216 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277216.P4779686101066146694

`A007954(A000203(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277216

/-- `A007954(A000203(n+1))` -/
def P4779686101066146694.Spec : Prop :=
  ∀ n, P4779686101066146694.a n = A277216 (n + 1)

theorem P4779686101066146694.correct : P4779686101066146694.Spec := by
  intro n
  simp only [A277216, Nat.add_sub_cancel]

end A277216

/-! ## A277216.P6141054380278405079

`∏{digits}[∑{d}[n+1, #], #]`
-/

namespace A277216.P6141054380278405079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A277216.P6141054380278405079

namespace A277216

/-- `∏{digits}[∑{d}[n+1, #], #]` -/
def P6141054380278405079.Spec : Prop :=
  ∀ n, (P6141054380278405079.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P9992648063468863635

`∏{digits}[Δ[A160664(n)], #]`
-/

namespace A277216.P9992648063468863635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P9992648063468863635

namespace A277216

/-- `∏{digits}[Δ[A160664(n)], #]` -/
def P9992648063468863635.Spec : Prop :=
  ∀ n, (P9992648063468863635.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P17651985750038171795

`∏{digits}[A143348(n+1), #]`
-/

namespace A277216.P17651985750038171795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P17651985750038171795

namespace A277216

/-- `∏{digits}[A143348(n+1), #]` -/
def P17651985750038171795.Spec : Prop :=
  ∀ n, (P17651985750038171795.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P16297554096795494086

`∏{digits}[A245092(Δ[n²]), #]`
-/

namespace A277216.P16297554096795494086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P16297554096795494086

namespace A277216

/-- `∏{digits}[A245092(Δ[n²]), #]` -/
def P16297554096795494086.Spec : Prop :=
  ∀ n, (P16297554096795494086.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P17478889793630903046

`∏{digits}[sqrt(A072861(n+1)), #]`
-/

namespace A277216.P17478889793630903046
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P17478889793630903046

namespace A277216

/-- `∏{digits}[sqrt(A072861(n+1)), #]` -/
def P17478889793630903046.Spec : Prop :=
  ∀ n, (P17478889793630903046.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P17745209977140808607

`∏{digits}[A155085(n+1)-(n+1), #]`
-/

namespace A277216.P17745209977140808607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P17745209977140808607

namespace A277216

/-- `∏{digits}[A155085(n+1)-(n+1), #]` -/
def P17745209977140808607.Spec : Prop :=
  ∀ n, (P17745209977140808607.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P3850500467138198920

`∏{digits}[A064987(n+1)/(n+1), #]`
-/

namespace A277216.P3850500467138198920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P3850500467138198920

namespace A277216

/-- `∏{digits}[A064987(n+1)/(n+1), #]` -/
def P3850500467138198920.Spec : Prop :=
  ∀ n, (P3850500467138198920.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P6147606474173838112

`∏{digits}[A237588(n+1)+(n+1)²-n², #]`
-/

namespace A277216.P6147606474173838112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P6147606474173838112

namespace A277216

/-- `∏{digits}[A237588(n+1)+(n+1)²-n², #]` -/
def P6147606474173838112.Spec : Prop :=
  ∀ n, (P6147606474173838112.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P1031331513911245403

`∏{digits}[A326065(2*(n+1)), #]`
-/

namespace A277216.P1031331513911245403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P1031331513911245403

namespace A277216

/-- `∏{digits}[A326065(2*(n+1)), #]` -/
def P1031331513911245403.Spec : Prop :=
  ∀ n, (P1031331513911245403.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P6082613151630809809

`∏{digits}[A262610(2*n+1), #]`
-/

namespace A277216.P6082613151630809809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A277216.P6082613151630809809

namespace A277216

/-- `∏{digits}[A262610(2*n+1), #]` -/
def P6082613151630809809.Spec : Prop :=
  ∀ n, (P6082613151630809809.a n : ℤ) = A277216 (n + 1)

end A277216

/-! ## A277216.P3320278200199825428

`A007954(∑{d}[n+1, #])`
-/

namespace A277216.P3320278200199825428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A277216.P3320278200199825428

namespace A277216

/-- `A007954(∑{d}[n+1, #])` -/
def P3320278200199825428.Spec : Prop :=
  ∀ n, P3320278200199825428.a n = A277216 (n + 1)

end A277216

/-! ## A277216.P14069902158024455386

`A007954(A039653(n+1)+1)`
-/

namespace A277216.P14069902158024455386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A039653 (n + 1) + 1).toNat

end

end A277216.P14069902158024455386

namespace A277216

/-- `A007954(A039653(n+1)+1)` -/
def P14069902158024455386.Spec : Prop :=
  ∀ n, P14069902158024455386.a n = A277216 (n + 1)

end A277216

/-! ## A277216.P13953206758279137640

`A007954(A001065(n+1)+1+n)`
-/

namespace A277216.P13953206758279137640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A277216.P13953206758279137640

namespace A277216

/-- `A007954(A001065(n+1)+1+n)` -/
def P13953206758279137640.Spec : Prop :=
  ∀ n, P13953206758279137640.a n = A277216 (n + 1)

theorem P13953206758279137640.correct : P13953206758279137640.Spec := by
  intro n
  simp only [A277216, Nat.add_sub_cancel, A277216.P13953206758279137640.a, A277216.P4779686101066146694.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007954, A007954.P17322577641810457605.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277216

/-!
# A277217: Numbers k for which the sum of digits of sigma(k) = the product of digits of sigma(k).

The programs for A277217, there is no canonical definition to state claims against.
-/

/-! ## A277217.P7843618569191532214

`eq[A067342(n+1), A277216(n+1)]+1`
-/

namespace A277217.P7843618569191532214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277217.P7843618569191532214

/-! ## A277217.P8663272140245431179

`record[gcd(n+1, A062329(A000203(n+1)))]`
-/

namespace A277217.P8663272140245431179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A062329 (A000203 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277217.P8663272140245431179

/-!
# A277218: Maximal coefficient among the polynomials in row n of the triangle of q-binomial coefficients.

The programs for A277218, there is no canonical definition to state claims against.
-/

/-! ## A277218.P1814251857118991707

`A067059(∑[n%2+n])`
-/

namespace A277218.P1814251857118991707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277218.P1814251857118991707

/-! ## A277218.P7631110621873250316

`A067059(∑[and(1, n)+n])`
-/

namespace A277218.P7631110621873250316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277218.P7631110621873250316

/-! ## A277218.P2084513718003402041

`A067059(floor((n+1)²/2))`
-/

namespace A277218.P2084513718003402041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A277218.P2084513718003402041

/-! ## A277218.P6113110887892689740

`A067059(A194274(n))/gcd(n, n+1)`
-/

namespace A277218.P6113110887892689740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067059 (A194274 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A277218.P6113110887892689740

/-! ## A277218.P3579284949791356169

`A067059(record[A245300(n)])+and(1, 2*n)`
-/

namespace A277218.P3579284949791356169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A277218.P3579284949791356169

/-!
# A277219: Triangle read by rows: T(n,k) is the number of independent sets of size k over all simple labeled graphs on n nodes, n>=0, 0<=k<=n.

The programs for A277219, the canonical program `A277219.P4583255546027378714` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277219 has offset 0).

The definition of A277219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277219.P4583255546027378714

`A007318(n)*A011782(A329854(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277219

/-- `A007318(n)*A011782(A329854(n))` -/
def P4583255546027378714.Spec : Prop :=
  ∀ n, P4583255546027378714.a n = A277219 n

theorem P4583255546027378714.correct : P4583255546027378714.Spec := by
  intro n
  simp only [A277219]

end A277219

/-! ## A277219.P11305338187078133436

`abs(A130595(n))*A011782(A329854(n))`
-/

namespace A277219.P11305338187078133436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A011782 (A329854 n).toNat

end

end A277219.P11305338187078133436

namespace A277219

/-- `abs(A130595(n))*A011782(A329854(n))` -/
def P11305338187078133436.Spec : Prop :=
  ∀ n, P11305338187078133436.a n = A277219 n

end A277219

/-! ## A277219.P11509229680946851199

`A028326(n)/2*A011782(A329854(n))`
-/

namespace A277219.P11509229680946851199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A011782 (A329854 n).toNat : ℚ)

end

end A277219.P11509229680946851199

namespace A277219

/-- `A028326(n)/2*A011782(A329854(n))` -/
def P11509229680946851199.Spec : Prop :=
  ∀ n, P11509229680946851199.a n = (A277219 n : ℚ)

theorem P11509229680946851199.correct : P11509229680946851199.Spec := by
  intro n
  simp only [A277219, Nat.add_sub_cancel, A277219.P11509229680946851199.a, A277219.P4583255546027378714.a, A007318, A007318.P302227728145965961.a, A011782, A011782.P7461078519819856082.a, A028326, A028326.P16610217584664895500.a, A329854, A329854.P9235265463401662256.a, A131422, A131422.P7219812161266444625.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A007401, A007401.P15765701893365026453.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A112367, A112367.P5378126856570841990.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A277219

/-! ## A277219.P5141183127158289456

`A007318(n)*A000079(2*n+1-A131422(n+1))`
-/

namespace A277219.P5141183127158289456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000079 ((2 * n + 1 : ℤ) - A131422 (n + 1)).toNat

end

end A277219.P5141183127158289456

namespace A277219

/-- `A007318(n)*A000079(2*n+1-A131422(n+1))` -/
def P5141183127158289456.Spec : Prop :=
  ∀ n, P5141183127158289456.a n = A277219 n

end A277219

/-! ## A277219.P7372849448261945325

`sqrt(A007318(n)*A134484(n))`
-/

namespace A277219.P7372849448261945325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007318 n * A134484 n : ℝ)

end

end A277219.P7372849448261945325

namespace A277219

/-- `sqrt(A007318(n)*A134484(n))` -/
def P7372849448261945325.Spec : Prop :=
  ∀ n, P7372849448261945325.a n = (A277219 n : ℝ)

end A277219

/-! ## A277219.P17378177088645924699

`A134484(n)/A011782(A329854(n))`
-/

namespace A277219.P17378177088645924699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134484 n : ℚ) / (A011782 (A329854 n).toNat : ℚ)

end

end A277219.P17378177088645924699

namespace A277219

/-- `A134484(n)/A011782(A329854(n))` -/
def P17378177088645924699.Spec : Prop :=
  ∀ n, P17378177088645924699.a n = (A277219 n : ℚ)

end A277219

/-! ## A277219.P14735096923739916341

`A004526(A028326(n))*A011782(A329854(n))`
-/

namespace A277219.P14735096923739916341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n).toNat * A011782 (A329854 n).toNat

end

end A277219.P14735096923739916341

namespace A277219

/-- `A004526(A028326(n))*A011782(A329854(n))` -/
def P14735096923739916341.Spec : Prop :=
  ∀ n, P14735096923739916341.a n = A277219 n

end A277219

/-!
# A277220: Exponential convolution of Fibonacci (A000045) and Catalan (A000108) numbers.

The programs for A277220, there is no canonical definition to state claims against.
-/

/-! ## A277220.P1002651833814889250

`∑[A103221(A001207(n+1)+n)]`
-/

namespace A277220.P1002651833814889250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A001207 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277220.P1002651833814889250

/-! ## A277220.P3623540424476403693

`∑[A103221(A068091(n+1)+n)]`
-/

namespace A277220.P3623540424476403693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A068091 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277220.P3623540424476403693

/-! ## A277220.P896213290048162055

`A137588(A000040(5*a(n-1)))+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A277220.P896213290048162055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A137588 (A000040 (5 * a (n - 1)).toNat).toNat + (a (n - 2) + 1)

end

end A277220.P896213290048162055

/-!
# A277221: Number of permutations of length n which avoid the patterns 4123, 1324, and 3124.

The programs for A277221, there is no canonical definition to state claims against.
-/

/-! ## A277221.P11922198878034214841

`A124292(n+1)+A036645(A036646(n))`
-/

namespace A277221.P11922198878034214841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) + A036645 (A036646 n).toNat

end

end A277221.P11922198878034214841

/-! ## A277221.P2886558548821454469

`A124292(n+1)+A036646(A059431(n))`
-/

namespace A277221.P2886558548821454469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) + A036646 (A059431 n).toNat

end

end A277221.P2886558548821454469

/-! ## A277221.P4599074546507135529

`A124292(n+1)+A122840(A002387(n))`
-/

namespace A277221.P4599074546507135529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) + A122840 (A002387 n).toNat

end

end A277221.P4599074546507135529

/-! ## A277221.P11832230781620813830

`A124292(n+1)+A101605(A042133(n))`
-/

namespace A277221.P11832230781620813830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) + A101605 (A042133 n).toNat

end

end A277221.P11832230781620813830

/-! ## A277221.P15721820560954571223

`A184974(A184974(n))+A124292(n+1)`
-/

namespace A277221.P15721820560954571223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A184974 n).toNat + A124292 (n + 1)

end

end A277221.P15721820560954571223

/-!
# A277222: Number of permutations of length n that avoid 4123, 1324, and 31524.

The programs for A277222, there is no canonical definition to state claims against.
-/

/-! ## A277222.P5377639820052197978

`or(A097992(floor(4^n/2)), A332833(n))`
-/

namespace A277222.P5377639820052197978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097992 ⌊(4 ^ n : ℚ) / 2⌋.toNat) (A332833 n)

end

end A277222.P5377639820052197978

/-! ## A277222.P12609990317358500702

`A110654(A085294(n)+A006095(n))`
-/

namespace A277222.P12609990317358500702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A085294 n + A006095 n).toNat

end

end A277222.P12609990317358500702

/-! ## A277222.P15265865453602824094

`A373912(n)+A002265(A002450(n))`
-/

namespace A277222.P15265865453602824094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373912 n + A002265 (A002450 n).toNat

end

end A277222.P15265865453602824094

/-! ## A277222.P10164751909650275444

`or(A004525(A039301(n)), A110141(n))`
-/

namespace A277222.P10164751909650275444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A039301 n).toNat) (A110141 n)

end

end A277222.P10164751909650275444

/-!
# A277223: a(n) = A052489(n)/n.

The programs for A277223, there is no canonical definition to state claims against.
-/

/-! ## A277223.P12232362366501551133

`A052489(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277223.P12232362366501551133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052489 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A277223.P12232362366501551133

/-! ## A277223.P4814624635299962377

`A007953(A052489(n+1))`
-/

namespace A277223.P4814624635299962377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A052489 (n + 1)).toNat

end

end A277223.P4814624635299962377

/-!
# A277224: a(1)=1, a(n+1) = a(n) + p, where p is the largest prime < a(n) if a(n) is even and the smallest prime > a(n) if a(n) is odd.

The programs for A277224, there is no canonical definition to state claims against.
-/

/-! ## A277224.P10513128096375640182

`A122746(n)+A119016(A078213(n+1))`
-/

namespace A277224.P10513128096375640182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n + A119016 (A078213 (n + 1)).toNat

end

end A277224.P10513128096375640182

/-! ## A277224.P15390653804292636967

`A122746(n)+A119016(A276142(n+1))`
-/

namespace A277224.P15390653804292636967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n + A119016 (A276142 (n + 1)).toNat

end

end A277224.P15390653804292636967

/-! ## A277224.P2313988124477765938

`A001445(n+2)-A233583(A078213(n+1))`
-/

namespace A277224.P2313988124477765938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001445 (n + 2) - A233583 (A078213 (n + 1)).toNat

end

end A277224.P2313988124477765938

/-! ## A277224.P5975325869155121981

`A001445(n+2)-A233583(A276142(n+1))`
-/

namespace A277224.P5975325869155121981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001445 (n + 2) - A233583 (A276142 (n + 1)).toNat

end

end A277224.P5975325869155121981

/-! ## A277224.P3293525451039890896

`A233583(A001445(n+2)+1)-A233583(n+1)`
-/

namespace A277224.P3293525451039890896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A001445 (n + 2) + 1).toNat - A233583 (n + 1)

end

end A277224.P3293525451039890896

/-!
# A277226: Number of inequivalent (modulo C_4 rotations) square n X n grids with squares coming in two colors and four squares have one of the colors.

The programs for A277226, there is no canonical definition to state claims against.
-/

/-! ## A277226.P18106419757100265459

`A054772(∑[(n+2)²]+n-1)`
-/

namespace A277226.P18106419757100265459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A277226.P18106419757100265459

/-! ## A277226.P8253518135066078805

`record[A054772(eq[1, A054772(n+4)])]`
-/

namespace A277226.P8253518135066078805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277226.P8253518135066078805

/-! ## A277226.P6130848979305489511

`record[A054772(lt[A054772(n+4), 2])]`
-/

namespace A277226.P6130848979305489511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277226.P6130848979305489511

/-!
# A277227: Triangular array T read by rows: T(n,k) gives the additive orders k modulo n, for k = 0,1, ..., n-1.

The programs for A277227, the canonical program `A277227.P5944869305107030698` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277227 has offset 1).

The definition of A277227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277227.P12115745307673464214

`A054531(floor(acot(n)+n))`
-/

namespace A277227.P12115745307673464214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A277227.P12115745307673464214

namespace A277227

/-- `A054531(floor(acot(n)+n))` -/
def P12115745307673464214.Spec : Prop :=
  ∀ n, P12115745307673464214.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P8385418093178285341

`A054531(or(n, floor(acot(n))))`
-/

namespace A277227.P8385418093178285341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A277227.P8385418093178285341

namespace A277227

/-- `A054531(or(n, floor(acot(n))))` -/
def P8385418093178285341.Spec : Prop :=
  ∀ n, P8385418093178285341.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P18094120128011955565

`A054531(xor(n, floor(acot(n))))`
-/

namespace A277227.P18094120128011955565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A277227.P18094120128011955565

namespace A277227

/-- `A054531(xor(n, floor(acot(n))))` -/
def P18094120128011955565.Spec : Prop :=
  ∀ n, P18094120128011955565.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P2964289798840850720

`A054531(n+1-ceil(abs(sin(n))))`
-/

namespace A277227.P2964289798840850720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 ((n + 1 : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A277227.P2964289798840850720

namespace A277227

/-- `A054531(n+1-ceil(abs(sin(n))))` -/
def P2964289798840850720.Spec : Prop :=
  ∀ n, P2964289798840850720.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P5944869305107030698

`A054531((2*n)%(n+1)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277227

/-- `A054531((2*n)%(n+1)+1)` -/
def P5944869305107030698.Spec : Prop :=
  ∀ n, P5944869305107030698.a n = A277227 (n + 1)

theorem P5944869305107030698.correct : P5944869305107030698.Spec := by
  intro n
  simp only [A277227, Nat.add_sub_cancel]

end A277227

/-! ## A277227.P329718125537712123

`A054531(comp[2*(n+1)]-n+1)`
-/

namespace A277227.P329718125537712123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat

end

end A277227.P329718125537712123

namespace A277227

/-- `A054531(comp[2*(n+1)]-n+1)` -/
def P329718125537712123.Spec : Prop :=
  ∀ n, P329718125537712123.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P10943664281168118013

`A002024(n+1)/gcd(A002024(n+1), A002262(n))`
-/

namespace A277227.P10943664281168118013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (Int.gcd (A002024 (n + 1)) (A002262 n) : ℚ)

end

end A277227.P10943664281168118013

namespace A277227

/-- `A002024(n+1)/gcd(A002024(n+1), A002262(n))` -/
def P10943664281168118013.Spec : Prop :=
  ∀ n, P10943664281168118013.a n = (A277227 (n + 1) : ℚ)

end A277227

/-! ## A277227.P4752281036589548043

`A341314(A007401(n+1))`
-/

namespace A277227.P4752281036589548043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341314 (A007401 (n + 1)).toNat

end

end A277227.P4752281036589548043

namespace A277227

/-- `A341314(A007401(n+1))` -/
def P4752281036589548043.Spec : Prop :=
  ∀ n, P4752281036589548043.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P2155715378201850642

`A341314(A014132(n+1)-1)`
-/

namespace A277227.P2155715378201850642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341314 (A014132 (n + 1) - 1).toNat

end

end A277227.P2155715378201850642

namespace A277227

/-- `A341314(A014132(n+1)-1)` -/
def P2155715378201850642.Spec : Prop :=
  ∀ n, P2155715378201850642.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P15944925187992757465

`A075119(A064801(n+1))`
-/

namespace A277227.P15944925187992757465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A064801 (n + 1)).toNat

end

end A277227.P15944925187992757465

namespace A277227

/-- `A075119(A064801(n+1))` -/
def P15944925187992757465.Spec : Prop :=
  ∀ n, P15944925187992757465.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P13512605754601066902

`A075119(A004202(n+1)-1)`
-/

namespace A277227.P13512605754601066902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A004202 (n + 1) - 1).toNat

end

end A277227.P13512605754601066902

namespace A277227

/-- `A075119(A004202(n+1)-1)` -/
def P13512605754601066902.Spec : Prop :=
  ∀ n, P13512605754601066902.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P10553732007820793698

`A256098(A118011(n+1)-2)`
-/

namespace A277227.P10553732007820793698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256098 (A118011 (n + 1) - 2).toNat

end

end A277227.P10553732007820793698

namespace A277227

/-- `A256098(A118011(n+1)-2)` -/
def P10553732007820793698.Spec : Prop :=
  ∀ n, P10553732007820793698.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P4328777273968000631

`A391490(A195437(n))`
-/

namespace A277227.P4328777273968000631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391490 (A195437 n).toNat

end

end A277227.P4328777273968000631

namespace A277227

/-- `A391490(A195437(n))` -/
def P4328777273968000631.Spec : Prop :=
  ∀ n, P4328777273968000631.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P6506458806784306252

`A075119(A217575(n+1))`
-/

namespace A277227.P6506458806784306252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A217575 (n + 1)).toNat

end

end A277227.P6506458806784306252

namespace A277227

/-- `A075119(A217575(n+1))` -/
def P6506458806784306252.Spec : Prop :=
  ∀ n, P6506458806784306252.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P733145653174239449

`A075119(A063657(n+1)-1)`
-/

namespace A277227.P733145653174239449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A063657 (n + 1) - 1).toNat

end

end A277227.P733145653174239449

namespace A277227

/-- `A075119(A063657(n+1)-1)` -/
def P733145653174239449.Spec : Prop :=
  ∀ n, P733145653174239449.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P9757483792603581854

`A050873(n+1)*A338878(n+1)`
-/

namespace A277227.P9757483792603581854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A338878 (n + 1)

end

end A277227.P9757483792603581854

namespace A277227

/-- `A050873(n+1)*A338878(n+1)` -/
def P9757483792603581854.Spec : Prop :=
  ∀ n, P9757483792603581854.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P16190695271913810190

`A099246(lt[A048896(n), 3])`
-/

namespace A277227.P16190695271913810190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A277227.P16190695271913810190

namespace A277227

/-- `A099246(lt[A048896(n), 3])` -/
def P16190695271913810190.Spec : Prop :=
  ∀ n, P16190695271913810190.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P10145244138433510469

`A099246(lt[A099246(A006257(n)), 2])`
-/

namespace A277227.P10145244138433510469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A006257 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A277227.P10145244138433510469

namespace A277227

/-- `A099246(lt[A099246(A006257(n)), 2])` -/
def P10145244138433510469.Spec : Prop :=
  ∀ n, P10145244138433510469.a n = A277227 (n + 1)

end A277227

/-! ## A277227.P11960015145365879378

`A099246(A099627(n)-1)`
-/

namespace A277227.P11960015145365879378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A099627 n - 1).toNat

end

end A277227.P11960015145365879378

namespace A277227

/-- `A099246(A099627(n)-1)` -/
def P11960015145365879378.Spec : Prop :=
  ∀ n, P11960015145365879378.a n = A277227 (n + 1)

end A277227

/-!
# A277228: Convolution of the even-indexed triangular numbers (A014105) and the squares (A000290).

The programs for A277228, the canonical program `A277228.P4636785083864292295` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277228 has offset 0).

The definition of A277228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277228.P4636785083864292295

`C(n+1, 3)*(4*n²+5*n+4)/10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277228

/-- `C(n+1, 3)*(4*n²+5*n+4)/10` -/
def P4636785083864292295.Spec : Prop :=
  ∀ n, P4636785083864292295.a n = (A277228 n : ℚ)

end A277228

/-! ## A277228.P2433058727003487247

`(n-1)*n*(n+1)*(4*n²+5*n+4)/60`
-/

namespace A277228.P2433058727003487247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n : ℤ) * (n + 1 : ℤ) * (4 * n ^ 2 + 5 * n + 4 : ℤ) : ℚ) / 60

end

end A277228.P2433058727003487247

namespace A277228

/-- `(n-1)*n*(n+1)*(4*n²+5*n+4)/60` -/
def P2433058727003487247.Spec : Prop :=
  ∀ n, P2433058727003487247.a n = (A277228 n : ℚ)

end A277228

/-! ## A277228.P14195374301448187816

`∑[∑[C(2*n+1, 3)]-n^3]`
-/

namespace A277228.P14195374301448187816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277228.P14195374301448187816

namespace A277228

/-- `∑[∑[C(2*n+1, 3)]-n^3]` -/
def P14195374301448187816.Spec : Prop :=
  ∀ n, P14195374301448187816.a n = A277228 n

end A277228

/-! ## A277228.P14232084860583830230

`a(n-1)+n*(n-1)*(2*n²+1)/6` with `a(0)=0`
-/

namespace A277228.P14232084860583830230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) * (((n : ℤ) - 1 : ℚ) * ((2 * n ^ 2 + 1 : ℚ) / 6))

end

end A277228.P14232084860583830230

namespace A277228

/-- `a(n-1)+n*(n-1)*(2*n²+1)/6` -/
def P14232084860583830230.Spec : Prop :=
  ∀ n, P14232084860583830230.a n = (A277228 n : ℚ)

end A277228

/-! ## A277228.P17153442637977435286

`∑[A071245(n)]`
-/

namespace A277228.P17153442637977435286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277228.P17153442637977435286

namespace A277228

/-- `∑[A071245(n)]` -/
def P17153442637977435286.Spec : Prop :=
  ∀ n, P17153442637977435286.a n = A277228 n

end A277228

/-! ## A277228.P15045468167073798333

`A061927(n)-∑[∑[n²]]`
-/

namespace A277228.P15045468167073798333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277228.P15045468167073798333

namespace A277228

/-- `A061927(n)-∑[∑[n²]]` -/
def P15045468167073798333.Spec : Prop :=
  ∀ n, P15045468167073798333.a n = A277228 n

end A277228

/-! ## A277228.P7351205898500165307

`∑[∑[A000447(n)]]-A000537(n)`
-/

namespace A277228.P7351205898500165307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000537 n

end

end A277228.P7351205898500165307

namespace A277228

/-- `∑[∑[A000447(n)]]-A000537(n)` -/
def P7351205898500165307.Spec : Prop :=
  ∀ n, P7351205898500165307.a n = A277228 n

end A277228

/-! ## A277228.P17309418249485151687

`∑[4*A002415(n)]-A002415(n)`
-/

namespace A277228.P17309418249485151687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002415 n

end

end A277228.P17309418249485151687

namespace A277228

/-- `∑[4*A002415(n)]-A002415(n)` -/
def P17309418249485151687.Spec : Prop :=
  ∀ n, P17309418249485151687.a n = A277228 n

end A277228

/-! ## A277228.P17617189971509371473

`∑[A288961(n+1)]-A288961(n+1)/2`
-/

namespace A277228.P17617189971509371473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A288961 (n + 1) : ℚ) / 2

end

end A277228.P17617189971509371473

namespace A277228

/-- `∑[A288961(n+1)]-A288961(n+1)/2` -/
def P17617189971509371473.Spec : Prop :=
  ∀ n, P17617189971509371473.a n = (A277228 n : ℚ)

end A277228

/-! ## A277228.P12970276266637615637

`∑[A006011(n)+A002415(n)]-A002415(n)`
-/

namespace A277228.P12970276266637615637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002415 n

end

end A277228.P12970276266637615637

namespace A277228

/-- `∑[A006011(n)+A002415(n)]-A002415(n)` -/
def P12970276266637615637.Spec : Prop :=
  ∀ n, P12970276266637615637.a n = A277228 n

end A277228

/-! ## A277228.P17443781240762982181

`∑[A002415(n)]+A112851(n)-A002415(n)`
-/

namespace A277228.P17443781240762982181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A112851 n - A002415 n)

end

end A277228.P17443781240762982181

namespace A277228

/-- `∑[A002415(n)]+A112851(n)-A002415(n)` -/
def P17443781240762982181.Spec : Prop :=
  ∀ n, P17443781240762982181.a n = A277228 n

end A277228

/-! ## A277228.P2191695949890255686

`A039623(n+1)+A061927(n)-A014820(n)`
-/

namespace A277228.P2191695949890255686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) + (A061927 n - A014820 n)

end

end A277228.P2191695949890255686

namespace A277228

/-- `A039623(n+1)+A061927(n)-A014820(n)` -/
def P2191695949890255686.Spec : Prop :=
  ∀ n, P2191695949890255686.a n = A277228 n

end A277228

/-! ## A277228.P16209686751773831445

`A069038(n+1)-A277229(n+1)`
-/

namespace A277228.P16209686751773831445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (n + 1) - A277229 (n + 1)

end

end A277228.P16209686751773831445

namespace A277228

/-- `A069038(n+1)-A277229(n+1)` -/
def P16209686751773831445.Spec : Prop :=
  ∀ n, P16209686751773831445.a n = A277228 n

end A277228

/-! ## A277228.P17897410360405767848

`A069038(n+1)-∑[A071238(n+1)]`
-/

namespace A277228.P17897410360405767848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277228.P17897410360405767848

namespace A277228

/-- `A069038(n+1)-∑[A071238(n+1)]` -/
def P17897410360405767848.Spec : Prop :=
  ∀ n, P17897410360405767848.a n = A277228 n

end A277228

/-! ## A277228.P14330953189920048816

`A039623(n+1)+A061927(n+1)-A035598(n+1)`
-/

namespace A277228.P14330953189920048816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) + (A061927 (n + 1) - A035598 (n + 1))

end

end A277228.P14330953189920048816

namespace A277228

/-- `A039623(n+1)+A061927(n+1)-A035598(n+1)` -/
def P14330953189920048816.Spec : Prop :=
  ∀ n, P14330953189920048816.a n = A277228 n

end A277228

/-! ## A277228.P208701126036153884

`A277229(n+1)-A000217((n+1)²)`
-/

namespace A277228.P208701126036153884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 (n + 1) - A000217 ((n + 1) ^ 2)

end

end A277228.P208701126036153884

namespace A277228

/-- `A277229(n+1)-A000217((n+1)²)` -/
def P208701126036153884.Spec : Prop :=
  ∀ n, P208701126036153884.a n = A277228 n

end A277228

/-!
# A277229: Convolution of the odd-indexed triangular numbers (A000384(n+1)) and the squares (A000290).

The programs for A277229, the canonical program `A277229.P9868233781548164918` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277229 has offset 0).

The definition of A277229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277229.P9868233781548164918

`C(n+2, 3)*(4*n²+3*n+3)/10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277229

/-- `C(n+2, 3)*(4*n²+3*n+3)/10` -/
def P9868233781548164918.Spec : Prop :=
  ∀ n, P9868233781548164918.a n = (A277229 n : ℚ)

end A277229

/-! ## A277229.P5740382589313468645

`n*(n+1)*(n+2)*(4*n²+3*n+3)/60`
-/

namespace A277229.P5740382589313468645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (4 * n ^ 2 + 3 * n + 3) : ℚ) / 60

end

end A277229.P5740382589313468645

namespace A277229

/-- `n*(n+1)*(n+2)*(4*n²+3*n+3)/60` -/
def P5740382589313468645.Spec : Prop :=
  ∀ n, P5740382589313468645.a n = (A277229 n : ℚ)

end A277229

/-! ## A277229.P12699971013710607825

`∑[∑[C(2*n, 3)+n²]]`
-/

namespace A277229.P12699971013710607825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277229.P12699971013710607825

namespace A277229

/-- `∑[∑[C(2*n, 3)+n²]]` -/
def P12699971013710607825.Spec : Prop :=
  ∀ n, (P12699971013710607825.a n : ℤ) = A277229 n

end A277229

/-! ## A277229.P17700343766512590966

`∑[∑[∑[∑[a(n-1)+8]]]]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A277229.P17700343766512590966
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n f4 =>
  f4 (n - 1) + 8

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277229.P17700343766512590966

namespace A277229

/-- `∑[∑[∑[∑[a(n-1)+8]]]]` -/
def P17700343766512590966.Spec : Prop :=
  ∀ n, (P17700343766512590966.a n : ℤ) = A277229 n

end A277229

/-! ## A277229.P13953231086313748368

`∑[A071238(n)]`
-/

namespace A277229.P13953231086313748368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277229.P13953231086313748368

namespace A277229

/-- `∑[A071238(n)]` -/
def P13953231086313748368.Spec : Prop :=
  ∀ n, P13953231086313748368.a n = A277229 n

end A277229

/-! ## A277229.P2585807909690984629

`∑[A330700(n)+n²]`
-/

namespace A277229.P2585807909690984629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277229.P2585807909690984629

namespace A277229

/-- `∑[A330700(n)+n²]` -/
def P2585807909690984629.Spec : Prop :=
  ∀ n, P2585807909690984629.a n = A277229 n

end A277229

/-! ## A277229.P17547766398633359818

`A290360(n)-a(n-1)` with `a(0)=0`
-/

namespace A277229.P17547766398633359818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A290360 n - a (n - 1)

end

end A277229.P17547766398633359818

namespace A277229

/-- `A290360(n)-a(n-1)` -/
def P17547766398633359818.Spec : Prop :=
  ∀ n, P17547766398633359818.a n = A277229 n

end A277229

/-! ## A277229.P10971352350636461463

`A112851(n)+∑[∑[∑[n²]]]`
-/

namespace A277229.P10971352350636461463
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277229.P10971352350636461463

namespace A277229

/-- `A112851(n)+∑[∑[∑[n²]]]` -/
def P10971352350636461463.Spec : Prop :=
  ∀ n, P10971352350636461463.a n = A277229 n

end A277229

/-! ## A277229.P8902028758138646813

`∑[A081492(n+1)-(n+1)²]`
-/

namespace A277229.P8902028758138646813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081492 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277229.P8902028758138646813

namespace A277229

/-- `∑[A081492(n+1)-(n+1)²]` -/
def P8902028758138646813.Spec : Prop :=
  ∀ n, P8902028758138646813.a n = A277229 n

end A277229

/-! ## A277229.P1276964178477106206

`A061927(n)+A002415(n)`
-/

namespace A277229.P1276964178477106206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 n + A002415 n

end

end A277229.P1276964178477106206

namespace A277229

/-- `A061927(n)+A002415(n)` -/
def P1276964178477106206.Spec : Prop :=
  ∀ n, P1276964178477106206.a n = A277229 n

end A277229

/-! ## A277229.P11638500974776056373

`A051878(n)-A213549(n+1)`
-/

namespace A277229.P11638500974776056373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 n - A213549 (n + 1)

end

end A277229.P11638500974776056373

namespace A277229

/-- `A051878(n)-A213549(n+1)` -/
def P11638500974776056373.Spec : Prop :=
  ∀ n, P11638500974776056373.a n = A277229 n

end A277229

/-! ## A277229.P16893378029697547189

`A071252(n+1)+A277228(n)-A071246(n+1)`
-/

namespace A277229.P16893378029697547189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 (n + 1) + (A277228 n - A071246 (n + 1))

end

end A277229.P16893378029697547189

namespace A277229

/-- `A071252(n+1)+A277228(n)-A071246(n+1)` -/
def P16893378029697547189.Spec : Prop :=
  ∀ n, P16893378029697547189.a n = A277229 n

end A277229

/-! ## A277229.P2421194385967688292

`A071244(n+1)+A277228(n+1)-A071246(n+1)`
-/

namespace A277229.P2421194385967688292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071244 (n + 1) + (A277228 (n + 1) - A071246 (n + 1))

end

end A277229.P2421194385967688292

namespace A277229

/-- `A071244(n+1)+A277228(n+1)-A071246(n+1)` -/
def P2421194385967688292.Spec : Prop :=
  ∀ n, P2421194385967688292.a n = A277229 n

end A277229

/-! ## A277229.P12949020765193020996

`A207361(n)-A000332(n+2)`
-/

namespace A277229.P12949020765193020996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207361 n - A000332 (n + 2)

end

end A277229.P12949020765193020996

namespace A277229

/-- `A207361(n)-A000332(n+2)` -/
def P12949020765193020996.Spec : Prop :=
  ∀ n, P12949020765193020996.a n = A277229 n

end A277229

/-! ## A277229.P17911133709361564033

`∑[∑[A000292(2*n)]]-A006011(n+1)`
-/

namespace A277229.P17911133709361564033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006011 (n + 1)

end

end A277229.P17911133709361564033

namespace A277229

/-- `∑[∑[A000292(2*n)]]-A006011(n+1)` -/
def P17911133709361564033.Spec : Prop :=
  ∀ n, P17911133709361564033.a n = A277229 n

end A277229

/-! ## A277229.P4234309788315544507

`A037241(2*n)-A037243(2*n)`
-/

namespace A277229.P4234309788315544507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037241 (2 * n) - A037243 (2 * n)

end

end A277229.P4234309788315544507

namespace A277229

/-- `A037241(2*n)-A037243(2*n)` -/
def P4234309788315544507.Spec : Prop :=
  ∀ n, P4234309788315544507.a n = A277229 n

end A277229

/-! ## A277229.P13652022187531947147

`∑[A005994(2*n)]-A005994(2*n)`
-/

namespace A277229.P13652022187531947147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005994 (2 * n)

end

end A277229.P13652022187531947147

namespace A277229

/-- `∑[A005994(2*n)]-A005994(2*n)` -/
def P13652022187531947147.Spec : Prop :=
  ∀ n, P13652022187531947147.a n = A277229 n

end A277229

/-! ## A277229.P11593643607543580894

`A277228(n+2)-A014105(A000217(n+1))`
-/

namespace A277229.P11593643607543580894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277228 (n + 2) - A014105 (A000217 (n + 1)).toNat

end

end A277229.P11593643607543580894

namespace A277229

/-- `A277228(n+2)-A014105(A000217(n+1))` -/
def P11593643607543580894.Spec : Prop :=
  ∀ n, P11593643607543580894.a n = A277229 n

end A277229

/-!
# A277230: Irregular triangular array T(n, k) giving in row n the base of the Ferrers diagram of the k-th partition of n into distinct parts. The partitions of n are taken in Abramowitz-Stegun order but with decreasing parts. T(n, k) is the smallest part of the k-th partition of n into distinct parts.

The programs for A277230, there is no canonical definition to state claims against.
-/

/-! ## A277230.P13827078129241344459

`A071178(A328524(n+1)/A277231(n+1))`
-/

namespace A277230.P13827078129241344459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.roundAway ((A328524 (n + 1) : ℚ) / (A277231 (n + 1) : ℚ))).toNat

end

end A277230.P13827078129241344459

/-! ## A277230.P13209038803773231589

`A071178(A328524(n+1))`
-/

namespace A277230.P13209038803773231589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A328524 (n + 1)).toNat

end

end A277230.P13209038803773231589

/-! ## A277230.P4133187796229513827

`A001511(49*A333256(n+2))`
-/

namespace A277230.P4133187796229513827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (49 * A333256 (n + 2)).toNat

end

end A277230.P4133187796229513827

/-! ## A277230.P11308787961533711736

`val(eq[1, A124769(n)], 2)+1`
-/

namespace A277230.P11308787961533711736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A277230.P11308787961533711736

/-! ## A277230.P644634053753294943

`A333768(A333256(n+2))`
-/

namespace A277230.P644634053753294943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A333256 (n + 2)).toNat

end

end A277230.P644634053753294943

/-!
# A277231: Irregular triangular array T(n, k) giving in row n the so-called slope of the Ferrers diagram of the k-th partition of n into distinct parts. The partitions of n are taken in Abramowitz-Stegun order but with decreasing parts. See a comment for the definition of this 'slope'.

The programs for A277231, there is no canonical definition to state claims against.
-/

/-! ## A277231.P16593495647136420670

`and(A112030(n), A339047(A004280(n+9)))`
-/

namespace A277231.P16593495647136420670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112030 n) (A339047 (A004280 (n + 9)).toNat)

end

end A277231.P16593495647136420670

/-! ## A277231.P17817893767055582430

`A339047(A004280(n+9))^abs(A080891(n))`
-/

namespace A277231.P17817893767055582430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339047 (A004280 (n + 9)).toNat : ℚ) ^ (|A080891 n| : ℤ)

end

end A277231.P17817893767055582430

/-! ## A277231.P6720870371888399553

`A105551(gcd(A157726(n), A351640(2*(n+2))))`
-/

namespace A277231.P6720870371888399553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105551 (Int.gcd (A157726 n) (A351640 (2 * (n + 2))))

end

end A277231.P6720870371888399553

/-! ## A277231.P13353501874935910229

`gcd(A004524(n+2), A339047(A004280(n+9)))`
-/

namespace A277231.P13353501874935910229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004524 (n + 2)) (A339047 (A004280 (n + 9)).toNat)

end

end A277231.P13353501874935910229

/-! ## A277231.P6631810446622100876

`and(A047270(n+1), A339047(A004280(n+9)))`
-/

namespace A277231.P6631810446622100876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047270 (n + 1)) (A339047 (A004280 (n + 9)).toNat)

end

end A277231.P6631810446622100876

/-!
# A277232: Numerators of the partial sums of the cubes of the expansion coefficients of 1/sqrt(1-x).

The programs for A277232, there is no canonical definition to state claims against.
-/

/-! ## A277232.P9222703575673128737

`A167871(n)/A001018(A000120(n))`
-/

namespace A277232.P9222703575673128737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167871 n : ℚ) / (A001018 (A000120 n).toNat : ℚ)

end

end A277232.P9222703575673128737

/-!
# A277233: Numerators of the partial sums of the squares of the expansion coefficients of 1/sqrt(1-x). Also the numerators of the Landau constants.

The programs for A277233, there is no canonical definition to state claims against.
-/

/-! ## A277233.P10203064101555029801

`A273167(∑[n])²+xor(2*n, -(2*n))²*a(n-1)/4` with `a(0)=1`
-/

namespace A277233.P10203064101555029801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A273167 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) + (Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2 : ℚ) * a (n - 1) / 4

end

end A277233.P10203064101555029801

/-! ## A277233.P6039140671520786715

`A273169(∑[n])²+xor(2*n, -(2*n))²*a(n-1)/4` with `a(0)=1`
-/

namespace A277233.P6039140671520786715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A273169 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) + (Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2 : ℚ) * a (n - 1) / 4

end

end A277233.P6039140671520786715

/-! ## A277233.P14645148199523092236

`A163590(2*n)²+xor(2*n, -(2*n))²*a(n-1)/4` with `a(0)=1`
-/

namespace A277233.P14645148199523092236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A163590 (2 * n) ^ 2 : ℚ) + (Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2 : ℚ) * a (n - 1) / 4

end

end A277233.P14645148199523092236

/-! ## A277233.P5686378979523731412

`A144815(∑[n]+n)²+xor(2*n, -(2*n))²*a(n-1)/4` with `a(0)=1`
-/

namespace A277233.P5686378979523731412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A144815 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2 : ℚ) + (Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2 : ℚ) * a (n - 1) / 4

end

end A277233.P5686378979523731412

/-! ## A277233.P13969498314374821031

`A273171(∑[n]-n)²+xor(2*n, -(2*n))²*a(n-1)/4` with `a(0)=1`
-/

namespace A277233.P13969498314374821031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A273171 (∑ j ∈ Finset.range (n + 1), f1 j - n) ^ 2 : ℚ) + (Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2 : ℚ) * a (n - 1) / 4

end

end A277233.P13969498314374821031

/-! ## A277233.P9870748591617259326

`(A001803(n)/Δ[n²])²+xor(2*n, -(2*n))²*a(n-1)/4` with `a(0)=1`
-/

namespace A277233.P9870748591617259326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A001803 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)) ^ 2 + (Int.xor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2 : ℚ) * a (n - 1) / 4

end

end A277233.P9870748591617259326

/-!
# A277236: Number of strings of length n composed of symbols from the circular list [1,2,3,4] such that adjacent symbols in the string must be adjacent in the list. No runs of length 2 or more are allowed for symbols 1 and 3.

The programs for A277236, the canonical program `A277236.P16289241980516051603` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277236 has offset 0).

The definition of A277236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277236.P16289241980516051603

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277236

/-- `a(n-1)+4*a(n-2)` -/
def P16289241980516051603.Spec : Prop :=
  ∀ n, (P16289241980516051603.a n : ℤ) = A277236 n

theorem P16289241980516051603.correct : P16289241980516051603.Spec := by
  intro n
  simp only [A277236]

end A277236

/-! ## A277236.P11135880673902550815

`ogf((1+3x+2x^2)/(1-x-4x^2))`
-/

namespace A277236.P11135880673902550815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -1, -4] n

end

end A277236.P11135880673902550815

namespace A277236

/-- `ogf((1+3x+2x^2)/(1-x-4x^2))` -/
def P11135880673902550815.Spec : Prop :=
  ∀ n, P11135880673902550815.a n = A277236 n

end A277236

/-! ## A277236.P18106390557806626892

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A277236.P18106390557806626892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A277236.P18106390557806626892

namespace A277236

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P18106390557806626892.Spec : Prop :=
  ∀ n, P18106390557806626892.a n = (A277236 n : ℚ)

end A277236

/-! ## A277236.P72882144590230181

`or(3, a(n-1))-(1-4*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A277236.P72882144590230181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lor 3 (a (n - 1)) - (1 - 4 * a (n - 2))

end

end A277236.P72882144590230181

namespace A277236

/-- `or(3, a(n-1))-(1-4*a(n-2))` -/
def P72882144590230181.Spec : Prop :=
  ∀ n, P72882144590230181.a n = A277236 n

end A277236

/-! ## A277236.P11439973936240225995

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A277236.P11439973936240225995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A277236.P11439973936240225995

namespace A277236

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P11439973936240225995.Spec : Prop :=
  ∀ n, P11439973936240225995.a n = A277236 n

end A277236

/-! ## A277236.P17757665228287885917

`4*a(n-1)-A026597(n)` with `a(0)=1, a(1)=4`
-/

namespace A277236.P17757665228287885917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - A026597 n

end

end A277236.P17757665228287885917

namespace A277236

/-- `4*a(n-1)-A026597(n)` -/
def P17757665228287885917.Spec : Prop :=
  ∀ n, P17757665228287885917.a n = A277236 n

end A277236

/-! ## A277236.P3387026984096559794

`floor(A183682(n+1)/8)`
-/

namespace A277236.P3387026984096559794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183682 (n + 1) : ℚ) / 8⌋

end

end A277236.P3387026984096559794

namespace A277236

/-- `floor(A183682(n+1)/8)` -/
def P3387026984096559794.Spec : Prop :=
  ∀ n, P3387026984096559794.a n = A277236 n

end A277236

/-! ## A277236.P932769223637923713

`floor(A204707(n+1)/8)`
-/

namespace A277236.P932769223637923713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204707 (n + 1) : ℚ) / 8⌋

end

end A277236.P932769223637923713

namespace A277236

/-- `floor(A204707(n+1)/8)` -/
def P932769223637923713.Spec : Prop :=
  ∀ n, P932769223637923713.a n = A277236 n

end A277236

/-!
# A277237: Number of strings of length n composed of symbols from the circular list [1,2,3,4,5,6] such that adjacent symbols in the string must be adjacent in the list. No runs of length 2 or more are allowed for symbols 1, 3 and 5.

The programs for A277237, the canonical program `A277237.P11498998563528001892` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277237 has offset 0).

The definition of A277237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277237.P11498998563528001892

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=6, a(2)=15`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277237

/-- `a(n-1)+4*a(n-2)` -/
def P11498998563528001892.Spec : Prop :=
  ∀ n, (P11498998563528001892.a n : ℤ) = A277237 n

theorem P11498998563528001892.correct : P11498998563528001892.Spec := by
  intro n
  simp only [A277237]

end A277237

/-! ## A277237.P14960799705919579738

`ogf((1+5x+5x^2)/(1-x-4x^2))`
-/

namespace A277237.P14960799705919579738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 5] [1, -1, -4] n

end

end A277237.P14960799705919579738

namespace A277237

/-- `ogf((1+5x+5x^2)/(1-x-4x^2))` -/
def P14960799705919579738.Spec : Prop :=
  ∀ n, P14960799705919579738.a n = A277237 n

end A277237

/-! ## A277237.P11150213666272854439

`floor(3*A277236(n)/2)`
-/

namespace A277237.P11150213666272854439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A277236 n : ℚ) / 2)⌋

end

end A277237.P11150213666272854439

namespace A277237

/-- `floor(3*A277236(n)/2)` -/
def P11150213666272854439.Spec : Prop :=
  ∀ n, P11150213666272854439.a n = A277237 n

end A277237

/-! ## A277237.P15971215546773210886

`(3*A277236(n)/2)^A019426(2*n)`
-/

namespace A277237.P15971215546773210886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((A277236 n : ℚ) / 2)) ^ (A019426 (2 * n) : ℤ)

end

end A277237.P15971215546773210886

namespace A277237

/-- `(3*A277236(n)/2)^A019426(2*n)` -/
def P15971215546773210886.Spec : Prop :=
  ∀ n, P15971215546773210886.a n = (A277237 n : ℚ)

end A277237

/-! ## A277237.P15215213976032980549

`A176059(A001316(n))/2*A277236(n)`
-/

namespace A277237.P15215213976032980549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176059 (A001316 n).toNat : ℚ) / 2 * (A277236 n : ℚ)

end

end A277237.P15215213976032980549

namespace A277237

/-- `A176059(A001316(n))/2*A277236(n)` -/
def P15215213976032980549.Spec : Prop :=
  ∀ n, P15215213976032980549.a n = (A277237 n : ℚ)

end A277237

/-!
# A277238: Folding numbers (see comments for the definition).

The programs for A277238, the canonical program `A277238.P17499290417694551927` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277238 has offset 1).

The definition of A277238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277238.P17499290417694551927

`∪[A035928(n+1), A276795(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A277238

/-- `∪[A035928(n+1), A276795(n+1)]` -/
def P17499290417694551927.Spec : Prop :=
  ∀ n, (P17499290417694551927.a n : ℤ) = A277238 (n + 1)

theorem P17499290417694551927.correct : P17499290417694551927.Spec := by
  intro n
  simp only [A277238, Nat.add_sub_cancel]

end A277238

/-! ## A277238.P17727427509848490996

`record[(n+1)*A280910(n+1)]`
-/

namespace A277238.P17727427509848490996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A280910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277238.P17727427509848490996

namespace A277238

/-- `record[(n+1)*A280910(n+1)]` -/
def P17727427509848490996.Spec : Prop :=
  ∀ n, P17727427509848490996.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P8189291096959485187

`record[A280910(A344180(n))*A344180(n)]`
-/

namespace A277238.P8189291096959485187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280910 (A344180 n).toNat * A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277238.P8189291096959485187

namespace A277238

/-- `record[A280910(A344180(n))*A344180(n)]` -/
def P8189291096959485187.Spec : Prop :=
  ∀ n, P8189291096959485187.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P13681531566868273358

`lt[0, A280910(n)]`
-/

namespace A277238.P13681531566868273358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277238.P13681531566868273358

namespace A277238

/-- `lt[0, A280910(n)]` -/
def P13681531566868273358.Spec : Prop :=
  ∀ n, (P13681531566868273358.a n : ℤ) = A277238 (n + 1)

end A277238

/-! ## A277238.P13745617741107652655

`filter[A031461(n+1), A280910(#)]`
-/

namespace A277238.P13745617741107652655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P13745617741107652655

namespace A277238

/-- `filter[A031461(n+1), A280910(#)]` -/
def P13745617741107652655.Spec : Prop :=
  ∀ n, P13745617741107652655.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P6860991343734354856

`eq[A280910(n), A328569(n)]`
-/

namespace A277238.P6860991343734354856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277238.P6860991343734354856

namespace A277238

/-- `eq[A280910(n), A328569(n)]` -/
def P6860991343734354856.Spec : Prop :=
  ∀ n, (P6860991343734354856.a n : ℤ) = A277238 (n + 1)

end A277238

/-! ## A277238.P3959568676186657458

`filter[A089648(n+1), A280910(#)]`
-/

namespace A277238.P3959568676186657458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P3959568676186657458

namespace A277238

/-- `filter[A089648(n+1), A280910(#)]` -/
def P3959568676186657458.Spec : Prop :=
  ∀ n, P3959568676186657458.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P9420875834418828052

`filter[A004271(n), A280910(#)]`
-/

namespace A277238.P9420875834418828052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P9420875834418828052

namespace A277238

/-- `filter[A004271(n), A280910(#)]` -/
def P9420875834418828052.Spec : Prop :=
  ∀ n, P9420875834418828052.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P1524331708198401991

`filter[A004272(n), A280910(#)]`
-/

namespace A277238.P1524331708198401991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P1524331708198401991

namespace A277238

/-- `filter[A004272(n), A280910(#)]` -/
def P1524331708198401991.Spec : Prop :=
  ∀ n, P1524331708198401991.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P11879968602065139805

`filter[A004275(n), A280910(#)]`
-/

namespace A277238.P11879968602065139805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P11879968602065139805

namespace A277238

/-- `filter[A004275(n), A280910(#)]` -/
def P11879968602065139805.Spec : Prop :=
  ∀ n, P11879968602065139805.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P16218394094002516374

`filter[A004277(n), A280910(#)]`
-/

namespace A277238.P16218394094002516374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P16218394094002516374

namespace A277238

/-- `filter[A004277(n), A280910(#)]` -/
def P16218394094002516374.Spec : Prop :=
  ∀ n, P16218394094002516374.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P10659869707663281392

`filter[A004279(n), A280910(#)]`
-/

namespace A277238.P10659869707663281392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P10659869707663281392

namespace A277238

/-- `filter[A004279(n), A280910(#)]` -/
def P10659869707663281392.Spec : Prop :=
  ∀ n, P10659869707663281392.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P14398021050645821338

`filter[A159980(n), A280910(#)]`
-/

namespace A277238.P14398021050645821338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P14398021050645821338

namespace A277238

/-- `filter[A159980(n), A280910(#)]` -/
def P14398021050645821338.Spec : Prop :=
  ∀ n, P14398021050645821338.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P12157149190663365132

`filter[A274039(n), A280910(#)]`
-/

namespace A277238.P12157149190663365132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P12157149190663365132

namespace A277238

/-- `filter[A274039(n), A280910(#)]` -/
def P12157149190663365132.Spec : Prop :=
  ∀ n, P12157149190663365132.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P4507879468581997144

`eq[A093178(n), A280910(n)]`
-/

namespace A277238.P4507879468581997144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277238.P4507879468581997144

namespace A277238

/-- `eq[A093178(n), A280910(n)]` -/
def P4507879468581997144.Spec : Prop :=
  ∀ n, (P4507879468581997144.a n : ℤ) = A277238 (n + 1)

end A277238

/-! ## A277238.P14219890805177951831

`filter[A004278(n+1), A280910(#)]`
-/

namespace A277238.P14219890805177951831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P14219890805177951831

namespace A277238

/-- `filter[A004278(n+1), A280910(#)]` -/
def P14219890805177951831.Spec : Prop :=
  ∀ n, P14219890805177951831.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P6681769199443333885

`filter[A316571(n+1), A280910(#)]`
-/

namespace A277238.P6681769199443333885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P6681769199443333885

namespace A277238

/-- `filter[A316571(n+1), A280910(#)]` -/
def P6681769199443333885.Spec : Prop :=
  ∀ n, P6681769199443333885.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P1146742117235330272

`filter[A225850(n), A280910(#)]`
-/

namespace A277238.P1146742117235330272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P1146742117235330272

namespace A277238

/-- `filter[A225850(n), A280910(#)]` -/
def P1146742117235330272.Spec : Prop :=
  ∀ n, P1146742117235330272.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P10388662812280296287

`filter[A064745(n+1), A280910(#)]`
-/

namespace A277238.P10388662812280296287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P10388662812280296287

namespace A277238

/-- `filter[A064745(n+1), A280910(#)]` -/
def P10388662812280296287.Spec : Prop :=
  ∀ n, P10388662812280296287.a n = A277238 (n + 1)

end A277238

/-! ## A277238.P2502565528993906463

`filter[A066507(n+1), A280910(#)]`
-/

namespace A277238.P2502565528993906463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280910 (f1 j).toNat = 1) n)

end

end A277238.P2502565528993906463

namespace A277238

/-- `filter[A066507(n+1), A280910(#)]` -/
def P2502565528993906463.Spec : Prop :=
  ∀ n, P2502565528993906463.a n = A277238 (n + 1)

end A277238

/-!
# A277239: Number A(n,k) of factorizations of m^n into exactly k factors, where m is a product of two distinct primes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A277239, there is no canonical definition to state claims against.
-/

/-! ## A277239.P6305820500136881762

`ceil(A138352(n)/log(3))`
-/

namespace A277239.P6305820500136881762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138352 n : ℝ) / Real.log (3 : ℝ)⌉

end

end A277239.P6305820500136881762

/-! ## A277239.P6479141015663992835

`A136868(n)+A004526(A333361(n))`
-/

namespace A277239.P6479141015663992835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 n + A004526 (A333361 n).toNat

end

end A277239.P6479141015663992835

/-! ## A277239.P1787081245374037160

`A138352(n)-A025438(A090181(n))`
-/

namespace A277239.P1787081245374037160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138352 n - A025438 (A090181 n).toNat

end

end A277239.P1787081245374037160

/-! ## A277239.P1924830293989838694

`A057353(A192517(n+1)+A138352(n))`
-/

namespace A277239.P1924830293989838694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A192517 (n + 1) + A138352 n).toNat

end

end A277239.P1924830293989838694

/-! ## A277239.P16250993046639155140

`A178798(A291684(n))+A138352(n)`
-/

namespace A277239.P16250993046639155140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A291684 n).toNat + A138352 n

end

end A277239.P16250993046639155140

/-!
# A277240: Number of factorizations of m^n into exactly four factors, where m is a product of two distinct primes.

The programs for A277240, there is no canonical definition to state claims against.
-/

/-! ## A277240.P14431179842178748480

`A277239(∑[n+5]+5)`
-/

namespace A277240.P14431179842178748480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A277240.P14431179842178748480

/-! ## A277240.P5956113498227080440

`record[A277239(A052905(n))]`
-/

namespace A277240.P5956113498227080440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277240.P5956113498227080440

/-! ## A277240.P8103377232459317794

`record[A277239(A055999(n)+1)]`
-/

namespace A277240.P8103377232459317794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277240.P8103377232459317794

/-! ## A277240.P1600758057044753334

`record[A277239(A025581(n+4)+n)]`
-/

namespace A277240.P1600758057044753334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A025581 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277240.P1600758057044753334

/-! ## A277240.P10429810780942552055

`A277239(A052905(n+2))%A002755(n)`
-/

namespace A277240.P10429810780942552055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277239 (A052905 (n + 2)).toNat) (A002755 n)

end

end A277240.P10429810780942552055

/-!
# A277241: Number of factorizations of m^n into exactly five factors, where m is a product of two distinct primes.

The programs for A277241, there is no canonical definition to state claims against.
-/

/-! ## A277241.P17714427976054859743

`record[A277239(∑[n+4])]`
-/

namespace A277241.P17714427976054859743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277241.P17714427976054859743

/-! ## A277241.P8578316838398305441

`A277239(A055999(n+3))`
-/

namespace A277241.P8578316838398305441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A055999 (n + 3)).toNat

end

end A277241.P8578316838398305441

/-! ## A277241.P2294954171725708313

`A277239(A056119(n)+15)`
-/

namespace A277241.P2294954171725708313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A056119 n + 15).toNat

end

end A277241.P2294954171725708313

/-! ## A277241.P1117253334484358812

`A277239(eq[5, A025581(n)])`
-/

namespace A277241.P1117253334484358812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277241.P1117253334484358812

/-! ## A277241.P3577841884930540189

`A277239(eq[6, A193739(n)])`
-/

namespace A277241.P3577841884930540189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277241.P3577841884930540189

/-!
# A277242: Number of factorizations of m^n into exactly six factors, where m is a product of two distinct primes.

The programs for A277242, there is no canonical definition to state claims against.
-/

/-! ## A277242.P17646535150569231467

`A277239(eq[6, A025581(n)])`
-/

namespace A277242.P17646535150569231467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277242.P17646535150569231467

/-! ## A277242.P3428031356418421714

`A277239(eq[7, A193739(n)])`
-/

namespace A277242.P3428031356418421714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277242.P3428031356418421714

/-! ## A277242.P7947988586000143769

`A277239(A055999(n+4)-1)`
-/

namespace A277242.P7947988586000143769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A055999 (n + 4) - 1).toNat

end

end A277242.P7947988586000143769

/-! ## A277242.P11913618343873140045

`A277239(A000096(n+6)-6)`
-/

namespace A277242.P11913618343873140045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000096 (n + 6) - 6).toNat

end

end A277242.P11913618343873140045

/-! ## A277242.P10887805666627478778

`A277239(A000217(n+7)-7)`
-/

namespace A277242.P10887805666627478778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000217 (n + 7) - 7).toNat

end

end A277242.P10887805666627478778

/-!
# A277243: Number of factorizations of m^n into exactly seven factors, where m is a product of two distinct primes.

The programs for A277243, there is no canonical definition to state claims against.
-/

/-! ## A277243.P9427061306107932098

`A277239(A056126(n)+28)`
-/

namespace A277243.P9427061306107932098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A056126 n + 28).toNat

end

end A277243.P9427061306107932098

/-! ## A277243.P3440896683106864765

`A277239(eq[7, A025581(n)])`
-/

namespace A277243.P3440896683106864765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277243.P3440896683106864765

/-! ## A277243.P694608117244108629

`A277239(eq[8, A193739(n)])`
-/

namespace A277243.P694608117244108629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277243.P694608117244108629

/-! ## A277243.P3232941755873743558

`A277239(A000217(n+8)-8)`
-/

namespace A277243.P3232941755873743558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000217 (n + 8) - 8).toNat

end

end A277243.P3232941755873743558

/-! ## A277243.P2247998870786205756

`A277239(A000124(n+8)-9)`
-/

namespace A277243.P2247998870786205756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000124 (n + 8) - 9).toNat

end

end A277243.P2247998870786205756

/-!
# A277244: Number of factorizations of m^n into exactly eight factors, where m is a product of two distinct primes.

The programs for A277244, there is no canonical definition to state claims against.
-/

/-! ## A277244.P9524818243610175640

`A277239(eq[8, A025581(n)])`
-/

namespace A277244.P9524818243610175640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277244.P9524818243610175640

/-! ## A277244.P5443394361324874695

`A277239(A046691(n+7)-5)`
-/

namespace A277244.P5443394361324874695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A046691 (n + 7) - 5).toNat

end

end A277244.P5443394361324874695

/-! ## A277244.P284633469533842725

`A277239(A000217(n+9)-9)`
-/

namespace A277244.P284633469533842725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000217 (n + 9) - 9).toNat

end

end A277244.P284633469533842725

/-! ## A277244.P1661380070895509454

`A277239(A000124(n+9)-10)`
-/

namespace A277244.P1661380070895509454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000124 (n + 9) - 10).toNat

end

end A277244.P1661380070895509454

/-! ## A277244.P4003765905170010981

`A277239(eq[9, A004736(n+1)])`
-/

namespace A277244.P4003765905170010981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277244.P4003765905170010981

/-!
# A277245: Number of factorizations of m^n into exactly nine factors, where m is a product of two distinct primes.

The programs for A277245, there is no canonical definition to state claims against.
-/

/-! ## A277245.P13392608652174075022

`A277239(A056000(n+6))`
-/

namespace A277245.P13392608652174075022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A056000 (n + 6)).toNat

end

end A277245.P13392608652174075022

/-! ## A277245.P10762344579506863243

`A277239(eq[9, A025581(n)])`
-/

namespace A277245.P10762344579506863243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277245.P10762344579506863243

/-! ## A277245.P5821745661300158682

`A277239(eq[10, A193739(n)])`
-/

namespace A277245.P5821745661300158682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277245.P5821745661300158682

/-! ## A277245.P5640678378957163027

`A277239(A055999(n+7)-4)`
-/

namespace A277245.P5640678378957163027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A055999 (n + 7) - 4).toNat

end

end A277245.P5640678378957163027

/-! ## A277245.P7039173848580090690

`A277239(A000096(n+9)-9)`
-/

namespace A277245.P7039173848580090690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000096 (n + 9) - 9).toNat

end

end A277245.P7039173848580090690

/-!
# A277246: Number of factorizations of m^n into exactly ten factors, where m is a product of two distinct primes.

The programs for A277246, there is no canonical definition to state claims against.
-/

/-! ## A277246.P14097598134905174213

`A277239(eq[10, A025581(n)])`
-/

namespace A277246.P14097598134905174213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277246.P14097598134905174213

/-! ## A277246.P12866738001798645982

`A277239(A055998(n+9)-8)`
-/

namespace A277246.P12866738001798645982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A055998 (n + 9) - 8).toNat

end

end A277246.P12866738001798645982

/-! ## A277246.P18159007750993240544

`A277239(A000217(n+11)-11)`
-/

namespace A277246.P18159007750993240544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A000217 (n + 11) - 11).toNat

end

end A277246.P18159007750993240544

/-! ## A277246.P16299889348616606142

`A277239(A179865(n+12)-11)`
-/

namespace A277246.P16299889348616606142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (A179865 (n + 12) - 11).toNat

end

end A277246.P16299889348616606142

/-! ## A277246.P7768023691682530442

`A277239(eq[11, A004736(n+1)])`
-/

namespace A277246.P7768023691682530442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277246.P7768023691682530442

/-!
# A277247: a(n) = Sum_{k=0..floor(n/2)} binomial(n, k)^2.

The programs for A277247, the canonical program `A277247.P8195325220674495200` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277247 has offset 0).

The definition of A277247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277247.P8195325220674495200

`A000984(n)-A058621(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277247

/-- `A000984(n)-A058621(n)` -/
def P8195325220674495200.Spec : Prop :=
  ∀ n, P8195325220674495200.a n = A277247 n

theorem P8195325220674495200.correct : P8195325220674495200.Spec := by
  intro n
  simp only [A277247]

end A277247

/-! ## A277247.P13630381130291804563

`A058621(n)+A126869(n)²`
-/

namespace A277247.P13630381130291804563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058621 n + A126869 n ^ 2

end

end A277247.P13630381130291804563

namespace A277247

/-- `A058621(n)+A126869(n)²` -/
def P13630381130291804563.Spec : Prop :=
  ∀ n, P13630381130291804563.a n = A277247 n

end A277247

/-! ## A277247.P2835408472129551136

`record[A081668(n)]-A058621(n)`
-/

namespace A277247.P2835408472129551136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058621 n

end

end A277247.P2835408472129551136

namespace A277247

/-- `record[A081668(n)]-A058621(n)` -/
def P2835408472129551136.Spec : Prop :=
  ∀ n, P2835408472129551136.a n = A277247 n

end A277247

/-! ## A277247.P14524635391508832788

`record[A126930(n)]-A058621(n)`
-/

namespace A277247.P14524635391508832788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058621 n

end

end A277247.P14524635391508832788

namespace A277247

/-- `record[A126930(n)]-A058621(n)` -/
def P14524635391508832788.Spec : Prop :=
  ∀ n, P14524635391508832788.a n = A277247 n

end A277247

/-! ## A277247.P13864389775819023150

`A081668(2*n)-A058621(n)`
-/

namespace A277247.P13864389775819023150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - A058621 n

end

end A277247.P13864389775819023150

namespace A277247

/-- `A081668(2*n)-A058621(n)` -/
def P13864389775819023150.Spec : Prop :=
  ∀ n, P13864389775819023150.a n = A277247 n

end A277247

/-! ## A277247.P9004830118241598551

`A126869(2*n)-A058621(n)`
-/

namespace A277247.P9004830118241598551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A058621 n

end

end A277247.P9004830118241598551

namespace A277247

/-- `A126869(2*n)-A058621(n)` -/
def P9004830118241598551.Spec : Prop :=
  ∀ n, P9004830118241598551.a n = A277247 n

end A277247

/-! ## A277247.P2547373806698637855

`A126930(2*n)-A058621(n)`
-/

namespace A277247.P2547373806698637855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A058621 n

end

end A277247.P2547373806698637855

namespace A277247

/-- `A126930(2*n)-A058621(n)` -/
def P2547373806698637855.Spec : Prop :=
  ∀ n, P2547373806698637855.a n = A277247 n

end A277247

/-! ## A277247.P16929547146025887481

`(A000984(n)+A126869(n)²)/2`
-/

namespace A277247.P16929547146025887481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n + A126869 n ^ 2 : ℚ) / 2

end

end A277247.P16929547146025887481

namespace A277247

/-- `(A000984(n)+A126869(n)²)/2` -/
def P16929547146025887481.Spec : Prop :=
  ∀ n, P16929547146025887481.a n = (A277247 n : ℚ)

end A277247

/-! ## A277247.P15320919245062603723

`(n+1)*A000108(n)-A058621(n)`
-/

namespace A277247.P15320919245062603723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n - A058621 n

end

end A277247.P15320919245062603723

namespace A277247

/-- `(n+1)*A000108(n)-A058621(n)` -/
def P15320919245062603723.Spec : Prop :=
  ∀ n, P15320919245062603723.a n = A277247 n

end A277247

/-! ## A277247.P255687191527966729

`A007318(A046092(n))-A058621(n)`
-/

namespace A277247.P255687191527966729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat - A058621 n

end

end A277247.P255687191527966729

namespace A277247

/-- `A007318(A046092(n))-A058621(n)` -/
def P255687191527966729.Spec : Prop :=
  ∀ n, P255687191527966729.a n = A277247 n

end A277247

/-!
# A277248: Number of planar walks starting at (1,1), ending at (3n,0), remaining in the first quadrant and using steps (-1,2) and (2,-1).

The programs for A277248, there is no canonical definition to state claims against.
-/

/-! ## A277248.P8100386240154928608

`A048114(3*(n+1))-A048115(3*n+4)`
-/

namespace A277248.P8100386240154928608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048114 (3 * (n + 1)) - A048115 (3 * n + 4)

end

end A277248.P8100386240154928608

/-! ## A277248.P9521143992312073762

`A048113(∑[9*n+4])`
-/

namespace A277248.P9521143992312073762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277248.P9521143992312073762

/-!
# A277249: Largest number that is n times sum of its digits when written in base 3.

The programs for A277249, there is no canonical definition to state claims against.
-/

/-! ## A277249.P14377750215462284838

`n*A093779(A126155(n))`
-/

namespace A277249.P14377750215462284838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093779 (A126155 n).toNat

end

end A277249.P14377750215462284838

/-! ## A277249.P7703094211777810102

`n*A043557(A250362(n+1))`
-/

namespace A277249.P7703094211777810102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A043557 (A250362 (n + 1)).toNat

end

end A277249.P7703094211777810102

/-! ## A277249.P1135958623312305562

`n*A001222(A163876(2*n))`
-/

namespace A277249.P1135958623312305562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A163876 (2 * n)).toNat

end

end A277249.P1135958623312305562

/-! ## A277249.P17581834033973199488

`n*A272851(A332638(n+4))`
-/

namespace A277249.P17581834033973199488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A272851 (A332638 (n + 4)).toNat

end

end A277249.P17581834033973199488

/-! ## A277249.P15413060882712382909

`n*A140887(A315335(2*(n+1)))`
-/

namespace A277249.P15413060882712382909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A140887 (A315335 (2 * (n + 1))).toNat

end

end A277249.P15413060882712382909

/-!
# A277250: Largest number that is n times sum of its digits when written in base 4.

The programs for A277250, there is no canonical definition to state claims against.
-/

/-! ## A277250.P1354623692278074361

`A008585(n)*A278566(A169693(n+1))`
-/

namespace A277250.P1354623692278074361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A278566 (A169693 (n + 1)).toNat

end

end A277250.P1354623692278074361

/-! ## A277250.P1003514292336734104

`A008585(n)*A036225(A322790(3*n+2))`
-/

namespace A277250.P1003514292336734104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A036225 (A322790 (3 * n + 2)).toNat

end

end A277250.P1003514292336734104

/-! ## A277250.P17274425334261016184

`A008585(n)*A194824(A258829(3*n+2))`
-/

namespace A277250.P17274425334261016184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A194824 (A258829 (3 * n + 2)).toNat

end

end A277250.P17274425334261016184

/-! ## A277250.P1244254305189794834

`A008585(n)*A351014(A136788(3*n+4))`
-/

namespace A277250.P1244254305189794834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A351014 (A136788 (3 * n + 4)).toNat

end

end A277250.P1244254305189794834

/-! ## A277250.P14987330656572894638

`A333381(A029653(3*(n+1)))*A366389(3*n)`
-/

namespace A277250.P14987330656572894638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A029653 (3 * (n + 1))).toNat * A366389 (3 * n)

end

end A277250.P14987330656572894638

/-!
# A277251: Exponential convolution of Lucas (A000032) and Catalan (A000108) numbers.

The programs for A277251, there is no canonical definition to state claims against.
-/

/-! ## A277251.P17161784965675031414

`A226190(A208355(2*(n+1)))+A063689(n+2)`
-/

namespace A277251.P17161784965675031414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A208355 (2 * (n + 1))).toNat + A063689 (n + 2)

end

end A277251.P17161784965675031414

/-! ## A277251.P2770302661161429066

`A226190(A097331(2*n+3))+A063689(n+2)`
-/

namespace A277251.P2770302661161429066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A097331 (2 * n + 3)).toNat + A063689 (n + 2)

end

end A277251.P2770302661161429066

/-!
# A277252: a(n) = a(n-2) + a(n-3) + a(n-4) with a(0) = 0, a(1) = a(2) = 1, a(3) = 0.

The programs for A277252, the canonical program `A277252.P7852424153150070223` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277252 has offset 0).

The definition of A277252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A277252.P7852424153150070223`, by `A277252.P7852424153150070223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277252.P7852424153150070223

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277252

/-- `a(n-2)+a(n-3)+a(n-4)` -/
def P7852424153150070223.Spec : Prop :=
  ∀ n, (P7852424153150070223.a n : ℤ) = A277252 n

theorem P7852424153150070223.correct : P7852424153150070223.Spec := by
  intro n
  simp only [A277252]

end A277252

/-! ## A277252.P919665065196157256

`ogf((-x-x^2+x^3)/(-1+x^2+x^3+x^4))`
-/

namespace A277252.P919665065196157256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, 0, -1, -1, -1] n

end

end A277252.P919665065196157256

namespace A277252

/-- `ogf((-x-x^2+x^3)/(-1+x^2+x^3+x^4))` -/
def P919665065196157256.Spec : Prop :=
  ∀ n, P919665065196157256.a n = A277252 n

end A277252

/-! ## A277252.P8622700847972863680

`a(n-1)+a(n-3)+(-1)^n` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A277252.P8622700847972863680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + (a (n - 3) + (-1) ^ n)

end

end A277252.P8622700847972863680

namespace A277252

/-- `a(n-1)+a(n-3)+(-1)^n` -/
def P8622700847972863680.Spec : Prop :=
  ∀ n, P8622700847972863680.a n = A277252 n

end A277252

/-! ## A277252.P7800140680816730787

`A135851(n+1)+A107458(n+2)`
-/

namespace A277252.P7800140680816730787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + A107458 (n + 2)

end

end A277252.P7800140680816730787

namespace A277252

/-- `A135851(n+1)+A107458(n+2)` -/
def P7800140680816730787.Spec : Prop :=
  ∀ n, P7800140680816730787.a n = A277252 n

end A277252

/-! ## A277252.P8137779874132422627

`A135851(n+1)+A013979(n)-A078012(n)`
-/

namespace A277252.P8137779874132422627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + (A013979 n - A078012 n)

end

end A277252.P8137779874132422627

namespace A277252

/-- `A135851(n+1)+A013979(n)-A078012(n)` -/
def P8137779874132422627.Spec : Prop :=
  ∀ n, P8137779874132422627.a n = A277252 n

end A277252

/-! ## A277252.P3630246100379287856

`A306276(n)-A078012(n)`
-/

namespace A277252.P3630246100379287856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n - A078012 n

end

end A277252.P3630246100379287856

namespace A277252

/-- `A306276(n)-A078012(n)` -/
def P3630246100379287856.Spec : Prop :=
  ∀ n, P3630246100379287856.a n = A277252 n

end A277252

/-! ## A277252.P5270716975894476534

`A078012(n+2)-A107458(n+1)`
-/

namespace A277252.P5270716975894476534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2) - A107458 (n + 1)

end

end A277252.P5270716975894476534

namespace A277252

/-- `A078012(n+2)-A107458(n+1)` -/
def P5270716975894476534.Spec : Prop :=
  ∀ n, P5270716975894476534.a n = A277252 n

end A277252

/-! ## A277252.P8332737591909908688

`A013979(n+1)-2*A107458(n+1)`
-/

namespace A277252.P8332737591909908688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 1) - 2 * A107458 (n + 1)

end

end A277252.P8332737591909908688

namespace A277252

/-- `A013979(n+1)-2*A107458(n+1)` -/
def P8332737591909908688.Spec : Prop :=
  ∀ n, P8332737591909908688.a n = A277252 n

end A277252

/-! ## A277252.P8943750360600518581

`A000930(n)-A277253(n)`
-/

namespace A277252.P8943750360600518581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A277253 n

end

end A277252.P8943750360600518581

namespace A277252

/-- `A000930(n)-A277253(n)` -/
def P8943750360600518581.Spec : Prop :=
  ∀ n, P8943750360600518581.a n = A277252 n

end A277252

/-! ## A277252.P9655540851155880902

`abs(A199804(n))-A277253(n)`
-/

namespace A277252.P9655540851155880902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 n| - A277253 n

end

end A277252.P9655540851155880902

namespace A277252

/-- `abs(A199804(n))-A277253(n)` -/
def P9655540851155880902.Spec : Prop :=
  ∀ n, P9655540851155880902.a n = A277252 n

end A277252

/-! ## A277252.P8493591207804843949

`∑[A078012(n)]-A277253(n)`
-/

namespace A277252.P8493591207804843949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A277253 n

end

end A277252.P8493591207804843949

namespace A277252

/-- `∑[A078012(n)]-A277253(n)` -/
def P8493591207804843949.Spec : Prop :=
  ∀ n, P8493591207804843949.a n = A277252 n

end A277252

/-! ## A277252.P8153619555040781768

`A078012(n+3)-A277253(n)`
-/

namespace A277252.P8153619555040781768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 3) - A277253 n

end

end A277252.P8153619555040781768

namespace A277252

/-- `A078012(n+3)-A277253(n)` -/
def P8153619555040781768.Spec : Prop :=
  ∀ n, P8153619555040781768.a n = A277252 n

end A277252

/-! ## A277252.P2912613803725451173

`A108104(2*n)-A277253(n)`
-/

namespace A277252.P2912613803725451173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * n) - A277253 n

end

end A277252.P2912613803725451173

namespace A277252

/-- `A108104(2*n)-A277253(n)` -/
def P2912613803725451173.Spec : Prop :=
  ∀ n, P2912613803725451173.a n = A277252 n

end A277252

/-! ## A277252.P13173548041260103743

`A013979(n+2)-A058278(n+1)`
-/

namespace A277252.P13173548041260103743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 2) - A058278 (n + 1)

end

end A277252.P13173548041260103743

namespace A277252

/-- `A013979(n+2)-A058278(n+1)` -/
def P13173548041260103743.Spec : Prop :=
  ∀ n, P13173548041260103743.a n = A277252 n

end A277252

/-! ## A277252.P16179224762597147664

`A226916(2*n+7)-A277253(n)`
-/

namespace A277252.P16179224762597147664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 7) - A277253 n

end

end A277252.P16179224762597147664

namespace A277252

/-- `A226916(2*n+7)-A277253(n)` -/
def P16179224762597147664.Spec : Prop :=
  ∀ n, P16179224762597147664.a n = A277252 n

end A277252

/-! ## A277252.P15878859546453234492

`A097333(n)-(A078012(n)+A013979(n+1))`
-/

namespace A277252.P15878859546453234492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n - (A078012 n + A013979 (n + 1))

end

end A277252.P15878859546453234492

namespace A277252

/-- `A097333(n)-(A078012(n)+A013979(n+1))` -/
def P15878859546453234492.Spec : Prop :=
  ∀ n, P15878859546453234492.a n = A277252 n

end A277252

/-! ## A277252.P14833332496317052028

`Δ[A068921(n)]-A107458(n+1)`
-/

namespace A277252.P14833332496317052028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107458 (n + 1)

end

end A277252.P14833332496317052028

namespace A277252

/-- `Δ[A068921(n)]-A107458(n+1)` -/
def P14833332496317052028.Spec : Prop :=
  ∀ n, P14833332496317052028.a n = A277252 n

end A277252

/-! ## A277252.P9899439369713478719

`Δ[A068921(n)-A107458(n)]-A107458(n)`
-/

namespace A277252.P9899439369713478719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n - A107458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107458 n

end

end A277252.P9899439369713478719

namespace A277252

/-- `Δ[A068921(n)-A107458(n)]-A107458(n)` -/
def P9899439369713478719.Spec : Prop :=
  ∀ n, P9899439369713478719.a n = A277252 n

end A277252

/-! ## A277252.P2442617887493747754

`A068921(n+1)-(A107458(n+1)+A068921(n))`
-/

namespace A277252.P2442617887493747754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) - (A107458 (n + 1) + A068921 n)

end

end A277252.P2442617887493747754

namespace A277252

/-- `A068921(n+1)-(A107458(n+1)+A068921(n))` -/
def P2442617887493747754.Spec : Prop :=
  ∀ n, P2442617887493747754.a n = A277252 n

end A277252

/-! ## A277252.P13993666513555264901

`Δ[Δ[A077868(n+1)]]-A277253(n)`
-/

namespace A277252.P13993666513555264901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277253 n

end

end A277252.P13993666513555264901

namespace A277252

/-- `Δ[Δ[A077868(n+1)]]-A277253(n)` -/
def P13993666513555264901.Spec : Prop :=
  ∀ n, P13993666513555264901.a n = A277252 n

end A277252

/-!
# A277253: a(n) = a(n-2) + a(n-3) + a(n-4) for n>3, a(0)=1, a(1)=a(2)=0, a(3)=2.

The programs for A277253, the canonical program `A277253.P16680187528885188227` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277253 has offset 0).

The definition of A277253 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A277253.P16680187528885188227`, by `A277253.P16680187528885188227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277253.P16680187528885188227

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277253

/-- `a(n-2)+a(n-3)+a(n-4)` -/
def P16680187528885188227.Spec : Prop :=
  ∀ n, (P16680187528885188227.a n : ℤ) = A277253 n

theorem P16680187528885188227.correct : P16680187528885188227.Spec := by
  intro n
  simp only [A277253]

end A277253

/-! ## A277253.P7204156085503181195

`ogf((-1+x^2-x^3)/(-1+x^2+x^3+x^4))`
-/

namespace A277253.P7204156085503181195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, 0, -1, -1, -1] n

end

end A277253.P7204156085503181195

namespace A277253

/-- `ogf((-1+x^2-x^3)/(-1+x^2+x^3+x^4))` -/
def P7204156085503181195.Spec : Prop :=
  ∀ n, P7204156085503181195.a n = A277253 n

end A277253

/-! ## A277253.P11038172801887504569

`a(n-1)+a(n-3)-(-1)^n` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A277253.P11038172801887504569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + a (n - 3) - (-1) ^ n

end

end A277253.P11038172801887504569

namespace A277253

/-- `a(n-1)+a(n-3)-(-1)^n` -/
def P11038172801887504569.Spec : Prop :=
  ∀ n, P11038172801887504569.a n = A277253 n

end A277253

/-! ## A277253.P17381989850849332965

`a(n-1)-((-1)^n-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A277253.P17381989850849332965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - ((-1) ^ n - a (n - 3))

end

end A277253.P17381989850849332965

namespace A277253

/-- `a(n-1)-((-1)^n-a(n-3))` -/
def P17381989850849332965.Spec : Prop :=
  ∀ n, P17381989850849332965.a n = A277253 n

end A277253

/-! ## A277253.P11240513308996548409

`A107458(n+1)+A078012(n)`
-/

namespace A277253.P11240513308996548409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 1) + A078012 n

end

end A277253.P11240513308996548409

namespace A277253

/-- `A107458(n+1)+A078012(n)` -/
def P11240513308996548409.Spec : Prop :=
  ∀ n, P11240513308996548409.a n = A277253 n

end A277253

/-! ## A277253.P17605396217572593146

`A135851(n+2)+A107458(n+1)`
-/

namespace A277253.P17605396217572593146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 2) + A107458 (n + 1)

end

end A277253.P17605396217572593146

namespace A277253

/-- `A135851(n+2)+A107458(n+1)` -/
def P17605396217572593146.Spec : Prop :=
  ∀ n, P17605396217572593146.a n = A277253 n

end A277253

/-! ## A277253.P4998324929477920424

`A078012(n)-(A107458(n)-A078012(n))`
-/

namespace A277253.P4998324929477920424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - (A107458 n - A078012 n)

end

end A277253.P4998324929477920424

namespace A277253

/-- `A078012(n)-(A107458(n)-A078012(n))` -/
def P4998324929477920424.Spec : Prop :=
  ∀ n, P4998324929477920424.a n = A277253 n

end A277253

/-! ## A277253.P7256685035568906133

`A107458(n+1)+A107458(n+1)+A107458(n)`
-/

namespace A277253.P7256685035568906133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 1) + (A107458 (n + 1) + A107458 n)

end

end A277253.P7256685035568906133

namespace A277253

/-- `A107458(n+1)+A107458(n+1)+A107458(n)` -/
def P7256685035568906133.Spec : Prop :=
  ∀ n, P7256685035568906133.a n = A277253 n

end A277253

/-! ## A277253.P15244110949288672429

`2*A078012(n)-A107458(n)`
-/

namespace A277253.P15244110949288672429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078012 n - A107458 n

end

end A277253.P15244110949288672429

namespace A277253

/-- `2*A078012(n)-A107458(n)` -/
def P15244110949288672429.Spec : Prop :=
  ∀ n, P15244110949288672429.a n = A277253 n

end A277253

/-! ## A277253.P2051529776861921473

`A013979(n+1)-(A135851(n+1)+A135851(n))`
-/

namespace A277253.P2051529776861921473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 1) - (A135851 (n + 1) + A135851 n)

end

end A277253.P2051529776861921473

namespace A277253

/-- `A013979(n+1)-(A135851(n+1)+A135851(n))` -/
def P2051529776861921473.Spec : Prop :=
  ∀ n, P2051529776861921473.a n = A277253 n

end A277253

/-! ## A277253.P15510745421170461661

`A000930(n)-A277252(n)`
-/

namespace A277253.P15510745421170461661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A277252 n

end

end A277253.P15510745421170461661

namespace A277253

/-- `A000930(n)-A277252(n)` -/
def P15510745421170461661.Spec : Prop :=
  ∀ n, P15510745421170461661.a n = A277253 n

end A277253

/-! ## A277253.P10465430230140527777

`abs(A199804(n))-A277252(n)`
-/

namespace A277253.P10465430230140527777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 n| - A277252 n

end

end A277253.P10465430230140527777

namespace A277253

/-- `abs(A199804(n))-A277252(n)` -/
def P10465430230140527777.Spec : Prop :=
  ∀ n, P10465430230140527777.a n = A277253 n

end A277253

/-! ## A277253.P1903985684577369077

`∑[A078012(n)]-A277252(n)`
-/

namespace A277253.P1903985684577369077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A277252 n

end

end A277253.P1903985684577369077

namespace A277253

/-- `∑[A078012(n)]-A277252(n)` -/
def P1903985684577369077.Spec : Prop :=
  ∀ n, P1903985684577369077.a n = A277253 n

end A277253

/-! ## A277253.P12540186488282733495

`A078012(n+3)-A277252(n)`
-/

namespace A277253.P12540186488282733495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 3) - A277252 n

end

end A277253.P12540186488282733495

namespace A277253

/-- `A078012(n+3)-A277252(n)` -/
def P12540186488282733495.Spec : Prop :=
  ∀ n, P12540186488282733495.a n = A277253 n

end A277253

/-! ## A277253.P5229219006236526630

`A108104(2*n)-A277252(n)`
-/

namespace A277253.P5229219006236526630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * n) - A277252 n

end

end A277253.P5229219006236526630

namespace A277253

/-- `A108104(2*n)-A277252(n)` -/
def P5229219006236526630.Spec : Prop :=
  ∀ n, P5229219006236526630.a n = A277253 n

end A277253

/-! ## A277253.P12998288029917050967

`A226916(2*n+7)-A277252(n)`
-/

namespace A277253.P12998288029917050967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 7) - A277252 n

end

end A277253.P12998288029917050967

namespace A277253

/-- `A226916(2*n+7)-A277252(n)` -/
def P12998288029917050967.Spec : Prop :=
  ∀ n, P12998288029917050967.a n = A277253 n

end A277253

/-! ## A277253.P11308638511380529975

`A306276(n+1)+A001609(n+2)-A011761(n+1)`
-/

namespace A277253.P11308638511380529975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 (n + 1) + (A001609 (n + 2) - A011761 (n + 1))

end

end A277253.P11308638511380529975

namespace A277253

/-- `A306276(n+1)+A001609(n+2)-A011761(n+1)` -/
def P11308638511380529975.Spec : Prop :=
  ∀ n, P11308638511380529975.a n = A277253 n

end A277253

/-! ## A277253.P6019059143128164116

`Δ[Δ[A077868(n+1)]]-A277252(n)`
-/

namespace A277253.P6019059143128164116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277252 n

end

end A277253.P6019059143128164116

namespace A277253

/-- `Δ[Δ[A077868(n+1)]]-A277252(n)` -/
def P6019059143128164116.Spec : Prop :=
  ∀ n, P6019059143128164116.a n = A277253 n

end A277253

/-!
# A277254: Numbers k such that p = k - phi(k) < q = k - lambda(k), and p and q are both primes, where phi(k) = A000010(k) and lambda(k) = A002322(k).

The programs for A277254, there is no canonical definition to state claims against.
-/

/-! ## A277254.P11299245841544702062

`∩[A053343(n+1), A091208(n+1)]`
-/

namespace A277254.P11299245841544702062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277254.P11299245841544702062

/-!
# A277257: Multi-table menage seating arrangements: T(n,k) for n,k >= 1 equals the number of ways to seat n*k married couples at n round tables with 2*k seats each, such that (i) the gender of persons alternates around each table; and (ii) spouses do not sit next to each other.

The programs for A277257, there is no canonical definition to state claims against.
-/

/-! ## A277257.P3038446954801120340

`8*A063691(∏[2*n+1])`
-/

namespace A277257.P3038446954801120340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A063691 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277257.P3038446954801120340

/-!
# A277258: Numbers such that n+R(n) | n*R(n), where R(n) is the digits reverse of n.

The programs for A277258, there is no canonical definition to state claims against.
-/

/-! ## A277258.P15096317156035540754

`A006928(A061459(n+1))*A247123(n+2)`
-/

namespace A277258.P15096317156035540754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A061459 (n + 1)).toNat * A247123 (n + 2)

end

end A277258.P15096317156035540754

/-! ## A277258.P2349381964358218435

`filter[A032946(2*(n+1)), A279693(#)]`
-/

namespace A277258.P2349381964358218435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032946 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A279693 (f1 j).toNat = 1) n)

end

end A277258.P2349381964358218435

/-! ## A277258.P13327960281248521066

`∩[A122080(n+1), A295010(n+1)]`
-/

namespace A277258.P13327960281248521066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277258.P13327960281248521066

/-! ## A277258.P13842534020505908540

`∩[A147819(n+1), A295010(n+1)]`
-/

namespace A277258.P13842534020505908540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277258.P13842534020505908540

/-! ## A277258.P8645071096397548813

`∩[A295010(n+1), A390445(n+1)]`
-/

namespace A277258.P8645071096397548813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277258.P8645071096397548813

/-!
# A277263: a(1)=2, a(n+1)=a(n)+p, where p is the largest prime a(n) if a(n) is even.

The programs for A277263, there is no canonical definition to state claims against.
-/

/-! ## A277263.P4602909457449642681

`A276874(A000975(n)+1)+1`
-/

namespace A277263.P4602909457449642681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276874 (A000975 n + 1).toNat + 1

end

end A277263.P4602909457449642681

/-! ## A277263.P6677455932252535590

`A295283(A000295(2*(n+1)))+1`
-/

namespace A277263.P6677455932252535590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295283 (A000295 (2 * (n + 1))).toNat + 1

end

end A277263.P6677455932252535590

/-! ## A277263.P5227997445216541781

`A123088(A000079(n))+A000213(n)`
-/

namespace A277263.P5227997445216541781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123088 (A000079 n).toNat + A000213 n

end

end A277263.P5227997445216541781

/-!
# A277264: Expansion of Product_{k>=1} 1/(1 - x^(5*k+1)).

The programs for A277264, there is no canonical definition to state claims against.
-/

/-! ## A277264.P2222055064349449605

`A277349(A047306(n+1)%A141214(n))`
-/

namespace A277264.P2222055064349449605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277349 (Int.tmod (A047306 (n + 1)) (A141214 n)).toNat

end

end A277264.P2222055064349449605

/-! ## A277264.P14463923014081216203

`A277349(A047306(n+1))^A037027(2*n)`
-/

namespace A277264.P14463923014081216203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277349 (A047306 (n + 1)).toNat : ℚ) ^ (A037027 (2 * n) : ℤ)

end

end A277264.P14463923014081216203

/-! ## A277264.P17495426005133388181

`A277349(A047306(n+1))^A014963(A098906(n+1))`
-/

namespace A277264.P17495426005133388181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277349 (A047306 (n + 1)).toNat : ℚ) ^ (A014963 (A098906 (n + 1)).toNat : ℤ)

end

end A277264.P17495426005133388181

/-! ## A277264.P864786504452224808

`A109708(lt[A109708(n+2), A356224(3*n+4)])`
-/

namespace A277264.P864786504452224808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277264.P864786504452224808

/-! ## A277264.P2306451722735599565

`A000045(A127840(n+1)^A034839(n+3))`
-/

namespace A277264.P2306451722735599565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A127840 (n + 1) : ℚ) ^ (A034839 (n + 3) : ℤ))).toNat

end

end A277264.P2306451722735599565

/-!
# A277267: Minimum number of single-direction edges in leveled binary trees with n nodes.

The programs for A277267, the canonical program `A277267.P1918104767288043109` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277267 has offset 1).

The definition of A277267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277267.P1918104767288043109

`n-A279521(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277267

/-- `n-A279521(n+1)` -/
def P1918104767288043109.Spec : Prop :=
  ∀ n, P1918104767288043109.a n = A277267 (n + 1)

theorem P1918104767288043109.correct : P1918104767288043109.Spec := by
  intro n
  simp only [A277267, Nat.add_sub_cancel]

end A277267

/-! ## A277267.P986039825703428098

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A277267.P986039825703428098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P986039825703428098

namespace A277267

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P986039825703428098.Spec : Prop :=
  ∀ n, (P986039825703428098.a n : ℤ) = A277267 (n + 1)

end A277267

/-! ## A277267.P477453134376244558

`∑[a(floor((n-1)/2))²]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A277267.P477453134376244558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P477453134376244558

namespace A277267

/-- `∑[a(floor((n-1)/2))²]` -/
def P477453134376244558.Spec : Prop :=
  ∀ n, (P477453134376244558.a n : ℤ) = A277267 (n + 1)

end A277267

/-! ## A277267.P5888295038867489959

`n-∑[char[2^floor(log2(n+1))+n]]`
-/

namespace A277267.P5888295038867489959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277267.P5888295038867489959

namespace A277267

/-- `n-∑[char[2^floor(log2(n+1))+n]]` -/
def P5888295038867489959.Spec : Prop :=
  ∀ n, P5888295038867489959.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P7009155254908489515

`∑[(char[2^n-1]+1)*a(ceil(n/2)-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A277267.P7009155254908489515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) * f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P7009155254908489515

namespace A277267

/-- `∑[(char[2^n-1]+1)*a(ceil(n/2)-1)]` -/
def P7009155254908489515.Spec : Prop :=
  ∀ n, (P7009155254908489515.a n : ℤ) = A277267 (n + 1)

end A277267

/-! ## A277267.P11807652468941684850

`∑[char[A206332(n+1)]]`
-/

namespace A277267.P11807652468941684850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P11807652468941684850

namespace A277267

/-- `∑[char[A206332(n+1)]]` -/
def P11807652468941684850.Spec : Prop :=
  ∀ n, (P11807652468941684850.a n : ℤ) = A277267 (n + 1)

end A277267

/-! ## A277267.P12096862069407451319

`∑[A030109(n+1)%2]`
-/

namespace A277267.P12096862069407451319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030109 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P12096862069407451319

namespace A277267

/-- `∑[A030109(n+1)%2]` -/
def P12096862069407451319.Spec : Prop :=
  ∀ n, P12096862069407451319.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P5497641992660239783

`(n+1)%A078881(n+1)`
-/

namespace A277267.P5497641992660239783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A078881 (n + 1))

end

end A277267.P5497641992660239783

namespace A277267

/-- `(n+1)%A078881(n+1)` -/
def P5497641992660239783.Spec : Prop :=
  ∀ n, P5497641992660239783.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P17287119858041880578

`∑[char[A081241(2*(n+1))]]`
-/

namespace A277267.P17287119858041880578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P17287119858041880578

namespace A277267

/-- `∑[char[A081241(2*(n+1))]]` -/
def P17287119858041880578.Spec : Prop :=
  ∀ n, (P17287119858041880578.a n : ℤ) = A277267 (n + 1)

end A277267

/-! ## A277267.P3140603979883948164

`∑[char[A132196(2*n+1)]]`
-/

namespace A277267.P3140603979883948164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P3140603979883948164

namespace A277267

/-- `∑[char[A132196(2*n+1)]]` -/
def P3140603979883948164.Spec : Prop :=
  ∀ n, (P3140603979883948164.a n : ℤ) = A277267 (n + 1)

end A277267

/-! ## A277267.P9409447205380146642

`∑[floor(n/A054429(n+1))]`
-/

namespace A277267.P9409447205380146642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A054429 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P9409447205380146642

namespace A277267

/-- `∑[floor(n/A054429(n+1))]` -/
def P9409447205380146642.Spec : Prop :=
  ∀ n, P9409447205380146642.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P15584980335390467273

`∑[char[∏[A014963(2*(n+1))]+n]]`
-/

namespace A277267.P15584980335390467273
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P15584980335390467273

namespace A277267

/-- `∑[char[∏[A014963(2*(n+1))]+n]]` -/
def P15584980335390467273.Spec : Prop :=
  ∀ n, (P15584980335390467273.a n : ℤ) = A277267 (n + 1)

end A277267

/-! ## A277267.P16892205534205393538

`A023444(A080637(n+1)-n)`
-/

namespace A277267.P16892205534205393538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080637 (n + 1) - (n : ℤ)).toNat

end

end A277267.P16892205534205393538

namespace A277267

/-- `A023444(A080637(n+1)-n)` -/
def P16892205534205393538.Spec : Prop :=
  ∀ n, P16892205534205393538.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P5806253635222658085

`A023445(A007378(n+2)-n)`
-/

namespace A277267.P5806253635222658085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A007378 (n + 2) - (n : ℤ)).toNat

end

end A277267.P5806253635222658085

namespace A277267

/-- `A023445(A007378(n+2)-n)` -/
def P5806253635222658085.Spec : Prop :=
  ∀ n, P5806253635222658085.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P16427268920972368159

`A079905(n+1)%A057544(n)`
-/

namespace A277267.P16427268920972368159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079905 (n + 1)) (A057544 n)

end

end A277267.P16427268920972368159

namespace A277267

/-- `A079905(n+1)%A057544(n)` -/
def P16427268920972368159.Spec : Prop :=
  ∀ n, P16427268920972368159.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P5929781876689695600

`A080637(n+1)%A057544(n)`
-/

namespace A277267.P5929781876689695600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080637 (n + 1)) (A057544 n)

end

end A277267.P5929781876689695600

namespace A277267

/-- `A080637(n+1)%A057544(n)` -/
def P5929781876689695600.Spec : Prop :=
  ∀ n, P5929781876689695600.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P2311354122804372608

`A115836(n+1)%A030640(n)`
-/

namespace A277267.P2311354122804372608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115836 (n + 1)) (A030640 n)

end

end A277267.P2311354122804372608

namespace A277267

/-- `A115836(n+1)%A030640(n)` -/
def P2311354122804372608.Spec : Prop :=
  ∀ n, P2311354122804372608.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P404234192755146793

`A163300(n+1)%A159615(n+1)`
-/

namespace A277267.P404234192755146793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A159615 (n + 1))

end

end A277267.P404234192755146793

namespace A277267

/-- `A163300(n+1)%A159615(n+1)` -/
def P404234192755146793.Spec : Prop :=
  ∀ n, P404234192755146793.a n = A277267 (n + 1)

end A277267

/-! ## A277267.P9585537734597452323

`∑[char[A341916(2*n)-1]]`
-/

namespace A277267.P9585537734597452323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (2 * n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277267.P9585537734597452323

namespace A277267

/-- `∑[char[A341916(2*n)-1]]` -/
def P9585537734597452323.Spec : Prop :=
  ∀ n, (P9585537734597452323.a n : ℤ) = A277267 (n + 1)

end A277267

/-!
# A277268: If we call "T" this sequence and consider the k-digit term a(n) of T with digits abcd...k, then a(n+1) = [a(n) + the a-th digit of T + the b-th digit of T + the c-th digit of T + ... + the k-th digit of T]. This is the lexicographically first such infinite sequence containing no duplicate term.

The programs for A277268, there is no canonical definition to state claims against.
-/

/-! ## A277268.P182122143596325160

`eq[A027642(n), A161099(n+1)]`
-/

namespace A277268.P182122143596325160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277268.P182122143596325160

/-! ## A277268.P6250658891023388037

`eq[A040071(n), A161099(n+1)]`
-/

namespace A277268.P6250658891023388037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277268.P6250658891023388037

/-! ## A277268.P10032564039298965567

`eq[A040341(n), A161099(n+1)]`
-/

namespace A277268.P10032564039298965567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277268.P10032564039298965567

/-! ## A277268.P10292040087041472320

`eq[A040379(n), A161099(n+1)]`
-/

namespace A277268.P10292040087041472320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277268.P10292040087041472320

/-! ## A277268.P10928956759003790254

`eq[A040418(n), A161099(n+1)]`
-/

namespace A277268.P10928956759003790254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277268.P10928956759003790254

/-!
# A277269: Hypotenuses of Pythagorean triples, generated by a variation of Euclid's formula.

The programs for A277269, there is no canonical definition to state claims against.
-/

/-! ## A277269.P9959777508039635559

`A055096(n+2)/gcd(A003989(n+1), A168621(n))`
-/

namespace A277269.P9959777508039635559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055096 (n + 2) : ℚ) / (Int.gcd (A003989 (n + 1)) (A168621 n) : ℚ)

end

end A277269.P9959777508039635559

/-! ## A277269.P2810312468267129883

`A289507(A339116(n+2))%A169690(2*(n+2))`
-/

namespace A277269.P2810312468267129883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289507 (A339116 (n + 2)).toNat) (A169690 (2 * (n + 2)))

end

end A277269.P2810312468267129883

/-! ## A277269.P13060414015158533253

`A055096(n+2)/A082062(A157641(n))`
-/

namespace A277269.P13060414015158533253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055096 (n + 2) : ℚ) / (A082062 (A157641 n).toNat : ℚ)

end

end A277269.P13060414015158533253

/-! ## A277269.P9612607361132074397

`A070216(A014132(n+1))/A072699(A207015(n+1))`
-/

namespace A277269.P9612607361132074397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070216 (A014132 (n + 1)).toNat : ℚ) / (A072699 (A207015 (n + 1)).toNat : ℚ)

end

end A277269.P9612607361132074397

/-! ## A277269.P5538145385896985872

`A289507(A339116(n+2)²)/2`
-/

namespace A277269.P5538145385896985872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289507 (A339116 (n + 2) ^ 2).toNat : ℚ) / 2

end

end A277269.P5538145385896985872

/-!
# A277271: Second largest coefficient among the polynomials in row n of the triangle of q-binomial coefficients.

The programs for A277271, there is no canonical definition to state claims against.
-/

/-! ## A277271.P2680883596392237045

`A000194(or(A126285(n), A328039(n+1)))`
-/

namespace A277271.P2680883596392237045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor (A126285 n) (A328039 (n + 1))).toNat

end

end A277271.P2680883596392237045

/-! ## A277271.P13912173442098580209

`A003986(A105523(n)+A000045(2*n+1))`
-/

namespace A277271.P13912173442098580209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A105523 n + A000045 (2 * n + 1)).toNat

end

end A277271.P13912173442098580209

/-! ## A277271.P4732432862894174153

`A309880(A004273(n))+A112232(A056532(n))`
-/

namespace A277271.P4732432862894174153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309880 (A004273 n).toNat + A112232 (A056532 n).toNat

end

end A277271.P4732432862894174153

/-! ## A277271.P984360740005309105

`A057574(n)+∑[∑{p}[n+1, C(#%n, #)]]`
-/

namespace A277271.P984360740005309105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277271.P984360740005309105

/-! ## A277271.P1353805097550670517

`A112995(A290652(n+1))`
-/

namespace A277271.P1353805097550670517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A290652 (n + 1)).toNat

end

end A277271.P1353805097550670517

/-!
# A277275: Number of contradictions in propositional calculus of length n.

The programs for A277275, there is no canonical definition to state claims against.
-/

/-! ## A277275.P17747882085113457961

`A277276(n+1)-A256120(n+1)`
-/

namespace A277275.P17747882085113457961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277276 (n + 1) - A256120 (n + 1)

end

end A277275.P17747882085113457961

/-!
# A277276: Number of tautologies and contradictions in propositional calculus of length n.

The programs for A277276, there is no canonical definition to state claims against.
-/

/-! ## A277276.P2173129114967859369

`A277275(n+1)+A256120(n+1)`
-/

namespace A277276.P2173129114967859369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277275 (n + 1) + A256120 (n + 1)

end

end A277276.P2173129114967859369

/-! ## A277276.P18190515486024964916

`A000196(A109000(n))-A328347(n)`
-/

namespace A277276.P18190515486024964916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109000 n).toNat - A328347 n

end

end A277276.P18190515486024964916

/-!
# A277277: Number of overpal-free binary words of length n.

The programs for A277277, the canonical program `A277277.P8422005783727010358` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277277 has offset 0).

The definition of A277277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277277.P8422005783727010358

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=10, a(5)=14, a(6)=20, a(7)=28, a(8)=36, a(9)=44`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277277

/-- `a(n-2)+a(n-4)` -/
def P8422005783727010358.Spec : Prop :=
  ∀ n, (P8422005783727010358.a n : ℤ) = A277277 n

theorem P8422005783727010358.correct : P8422005783727010358.Spec := by
  intro n
  simp only [A277277]

end A277277

/-! ## A277277.P5043937789165019247

`∑[A308590(A000013(n))]`
-/

namespace A277277.P5043937789165019247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (A000013 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277277.P5043937789165019247

namespace A277277

/-- `∑[A308590(A000013(n))]` -/
def P5043937789165019247.Spec : Prop :=
  ∀ n, P5043937789165019247.a n = A277277 n

end A277277

/-! ## A277277.P11993529530231326319

`∑[A087735(A320596(n))]`
-/

namespace A277277.P11993529530231326319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087735 (A320596 (n + 20)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277277.P11993529530231326319

namespace A277277

/-- `∑[A087735(A320596(n))]` -/
def P11993529530231326319.Spec : Prop :=
  ∀ n, P11993529530231326319.a n = A277277 n

end A277277

/-! ## A277277.P8426384284611821413

`∑[n]-A049347(A004114(n))`
-/

namespace A277277.P8426384284611821413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A049347 (A004114 n).toNat

end

end A277277.P8426384284611821413

namespace A277277

/-- `∑[n]-A049347(A004114(n))` -/
def P8426384284611821413.Spec : Prop :=
  ∀ n, P8426384284611821413.a n = A277277 n

end A277277

/-! ## A277277.P2076546417013742965

`∑[∑[A335964(A052333(n+1))]]`
-/

namespace A277277.P2076546417013742965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335964 (A052333 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277277.P2076546417013742965

namespace A277277

/-- `∑[∑[A335964(A052333(n+1))]]` -/
def P2076546417013742965.Spec : Prop :=
  ∀ n, P2076546417013742965.a n = A277277 n

end A277277

/-!
# A277278: a(n) = smallest m for which there is a sequence n = b_1 < b_2 < ... < b_t = m such that b_1 + b_2 +...+ b_t is a perfect square.

The programs for A277278, there is no canonical definition to state claims against.
-/

/-! ## A277278.P15371864957212136374

`A277516(n)+n`
-/

namespace A277278.P15371864957212136374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277516 n + (n : ℤ)

end

end A277278.P15371864957212136374

/-! ## A277278.P8059463911975413347

`A005843(n)-(n-A277516(n))`
-/

namespace A277278.P8059463911975413347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A277516 n)

end

end A277278.P8059463911975413347

/-! ## A277278.P13840398897293638483

`record[C(n, 2)-n]-(A000217(n)-A277516(n))`
-/

namespace A277278.P13840398897293638483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A000217 n - A277516 n)

end

end A277278.P13840398897293638483

/-! ## A277278.P12369796022224505412

`A008611(A008585(n))-(1-A277516(n))`
-/

namespace A277278.P12369796022224505412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008585 n).toNat - (1 - A277516 n)

end

end A277278.P12369796022224505412

/-! ## A277278.P15237143676700669723

`and(n-A055580(n), A055580(n))-(1-A277516(n))`
-/

namespace A277278.P15237143676700669723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A055580 n) (A055580 n) - (1 - A277516 n)

end

end A277278.P15237143676700669723

/-! ## A277278.P13146746555584782603

`n-(A277516(n²)-A277516(n))`
-/

namespace A277278.P13146746555584782603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A277516 (n ^ 2) - A277516 n)

end

end A277278.P13146746555584782603

/-!
# A277279: Somos-4 sequence variant: a(n) = (a(n-1)*a(n-3) - a(n-2)^2)/a(n-4), a(0) = 1, a(1) = 1, a(2) = 2, a(3) = -1.

The programs for A277279, the canonical program `A277279.P9444588253784968232` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277279 has offset 0).

The definition of A277279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277279.P9444588253784968232

`A210098(2*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277279

/-- `A210098(2*n+1)` -/
def P9444588253784968232.Spec : Prop :=
  ∀ n, P9444588253784968232.a n = A277279 n

theorem P9444588253784968232.correct : P9444588253784968232.Spec := by
  intro n
  simp only [A277279]

end A277279

/-! ## A277279.P13322144608008364852

`(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277279.P13322144608008364852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, -1] fun n a =>
  (a (n - 1) * a (n - 3) - a (n - 2) ^ 2) / a (n - 4)

end

end A277279.P13322144608008364852

namespace A277279

/-- `(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` -/
def P13322144608008364852.Spec : Prop :=
  ∀ n, P13322144608008364852.a n = (A277279 n : ℚ)

end A277279

/-! ## A277279.P2424886002262785753

`((-1)^n)²*A210098(A005408(n))`
-/

namespace A277279.P2424886002262785753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A210098 (A005408 n).toNat

end

end A277279.P2424886002262785753

namespace A277279

/-- `((-1)^n)²*A210098(A005408(n))` -/
def P2424886002262785753.Spec : Prop :=
  ∀ n, P2424886002262785753.a n = A277279 n

end A277279

/-! ## A277279.P18021561233803006211

`e^(a(n-1)*a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1, a(4)=-5, a(5)=-11, a(6)=-7, a(7)=86, a(8)=199, a(9)=799`
-/

namespace A277279.P18021561233803006211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 2, -1, -5, -11, -7, 86, 199, 799] fun n a =>
  Real.exp 1 ^ (a (n - 1) * a (n - 3) - a (n - 2))

end

end A277279.P18021561233803006211

namespace A277279

/-- `e^(a(n-1)*a(n-3)-a(n-2))` -/
def P18021561233803006211.Spec : Prop :=
  ∀ n, P18021561233803006211.a n = (A277279 n : ℝ)

end A277279

/-!
# A277280: Maximal coefficient in Hermite polynomial of order n.

The programs for A277280, there is no canonical definition to state claims against.
-/

/-! ## A277280.P6183788539512454722

`record[A060821(n)%A002378(A180803(n+1))]`
-/

namespace A277280.P6183788539512454722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060821 n) (A002378 (A180803 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277280.P6183788539512454722

/-! ## A277280.P18338485888542956342

`record[A060821(lt[0, A187084(n+1)])]`
-/

namespace A277280.P18338485888542956342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187084 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277280.P18338485888542956342

/-! ## A277280.P14436082753644635007

`record[A060821(n%A152249(n+1))]`
-/

namespace A277280.P14436082753644635007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (Int.tmod (n : ℤ) (A152249 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277280.P14436082753644635007

/-! ## A277280.P5393361087483123517

`record[A060821(n)%A181236(n+1)]`
-/

namespace A277280.P5393361087483123517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060821 n) (A181236 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277280.P5393361087483123517

/-! ## A277280.P2791239273795936752

`record[A060821(n)%A028263(A371178(n))]`
-/

namespace A277280.P2791239273795936752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060821 n) (A028263 (A371178 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277280.P2791239273795936752

/-!
# A277281: Maximal coefficient (ignoring signs) in Hermite polynomial of order n.

The programs for A277281, there is no canonical definition to state claims against.
-/

/-! ## A277281.P8154300865431329630

`record[A185296(n)*A185304(A185318(n))]`
-/

namespace A277281.P8154300865431329630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185296 n * A185304 (A185318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277281.P8154300865431329630

/-! ## A277281.P1108576586234537950

`A055035(A191970(n)*A227902(n+1))`
-/

namespace A277281.P1108576586234537950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055035 (A191970 n * A227902 (n + 1)).toNat

end

end A277281.P1108576586234537950

/-!
# A277283: Expansion of Product_{n>=1} (1 - x^(6*n))/(1 - x^n)^6 in powers of x.

The programs for A277283, there is no canonical definition to state claims against.
-/

/-! ## A277283.P16153076785520436097

`A028310(A160533(n)-A026812(n))`
-/

namespace A277283.P16153076785520436097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A160533 n - A026812 n).toNat

end

end A277283.P16153076785520436097

/-! ## A277283.P16104964321355749329

`A160533(n)-A011744(A064183(n))`
-/

namespace A277283.P16104964321355749329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160533 n - A011744 (A064183 n).toNat

end

end A277283.P16104964321355749329

/-! ## A277283.P18002590278752318402

`A160533(n)-A277153(A277178(n))`
-/

namespace A277283.P18002590278752318402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160533 n - A277153 (A277178 n).toNat

end

end A277283.P18002590278752318402

/-! ## A277283.P4218316993204215190

`A028310(A160533(n)-A033108(n+1))`
-/

namespace A277283.P4218316993204215190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A160533 n - A033108 (n + 1)).toNat

end

end A277283.P4218316993204215190

/-!
# A277284: Prime-indexed primes p such that Fibonacci(p) is prime.

The programs for A277284, there is no canonical definition to state claims against.
-/

/-! ## A277284.P15303538846493702907

`A006450(A122534(n+1))`
-/

namespace A277284.P15303538846493702907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A122534 (n + 1)).toNat

end

end A277284.P15303538846493702907

/-! ## A277284.P5221517757470455231

`∩[A001605(n+1), A006450(n+1)]`
-/

namespace A277284.P5221517757470455231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277284.P5221517757470455231

/-! ## A277284.P2857836093022591635

`∩[A006450(n+1), A083668(n+1)]`
-/

namespace A277284.P2857836093022591635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277284.P2857836093022591635

/-! ## A277284.P12154307599993964592

`∩[A001605(n+1), A175247(n+1)]`
-/

namespace A277284.P12154307599993964592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277284.P12154307599993964592

/-! ## A277284.P6222227434734792676

`∩[A083668(n+1), A175247(n+1)]`
-/

namespace A277284.P6222227434734792676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277284.P6222227434734792676

/-!
# A277285: Numbers k such that d(k) divides 2^k-1.

The programs for A277285, there is no canonical definition to state claims against.
-/

/-! ## A277285.P8185068028768101214

`A299480((n+8)*a(n-1))²` with `a(0)=1`
-/

namespace A277285.P8185068028768101214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299480 ((n + 8 : ℤ) * a (n - 1)).toNat ^ 2

end

end A277285.P8185068028768101214

/-! ## A277285.P8206504878534204650

`∑[A001227(A200075(n))]²`
-/

namespace A277285.P8206504878534204650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A200075 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A277285.P8206504878534204650

/-! ## A277285.P831626286337267547

`∑[A000005(A319457(n))]²`
-/

namespace A277285.P831626286337267547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A319457 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A277285.P831626286337267547

/-! ## A277285.P16073301617023729507

`∑[A325635(A192737(n))]²`
-/

namespace A277285.P16073301617023729507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325635 (A192737 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A277285.P16073301617023729507

/-!
# A277287: a(n) = binomial(2*n,n) + Sum_{k=1..n} binomial(2*n-k,n-k)*Fibonacci(k).

The programs for A277287, the canonical program `A277287.P3519925831238150495` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277287 has offset 0).

The definition of A277287 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257838, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277287.P3519925831238150495

`A000984(n)+A257838(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277287

/-- `A000984(n)+A257838(n)` -/
def P3519925831238150495.Spec : Prop :=
  ∀ n, P3519925831238150495.a n = A277287 n

theorem P3519925831238150495.correct : P3519925831238150495.Spec := by
  intro n
  simp only [A277287]

end A277287

/-! ## A277287.P599686215567917280

`A176085(n)+A108081(n)`
-/

namespace A277287.P599686215567917280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n + A108081 n

end

end A277287.P599686215567917280

namespace A277287

/-- `A176085(n)+A108081(n)` -/
def P599686215567917280.Spec : Prop :=
  ∀ n, P599686215567917280.a n = A277287 n

theorem P599686215567917280.correct : P599686215567917280.Spec := by
  intro n
  simp only [A277287, Nat.add_sub_cancel, A277287.P599686215567917280.a, A277287.P3519925831238150495.a, A000984, A000984.P7946844122574426130.a, A108081, A108081.P10199581490510874834.a, A176085, A176085.P18095810620596158957.a, A257838, A257838.P9432177341719237820.a, A028329, A028329.P2723209719397665586.a, A081696, A081696.P144682512311677634.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277287

/-! ## A277287.P15389054855952915913

`A109262(n)+Δ[A176085(n)]`
-/

namespace A277287.P15389054855952915913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109262 n + (f1 (n + 1) - f1 n)

end

end A277287.P15389054855952915913

namespace A277287

/-- `A109262(n)+Δ[A176085(n)]` -/
def P15389054855952915913.Spec : Prop :=
  ∀ n, P15389054855952915913.a n = A277287 n

end A277287

/-! ## A277287.P13607624355277970798

`A257838(n)+record[A081668(n)]`
-/

namespace A277287.P13607624355277970798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277287.P13607624355277970798

namespace A277287

/-- `A257838(n)+record[A081668(n)]` -/
def P13607624355277970798.Spec : Prop :=
  ∀ n, P13607624355277970798.a n = A277287 n

end A277287

/-! ## A277287.P17464503104891729596

`A257838(n)+record[A126869(n)]`
-/

namespace A277287.P17464503104891729596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277287.P17464503104891729596

namespace A277287

/-- `A257838(n)+record[A126869(n)]` -/
def P17464503104891729596.Spec : Prop :=
  ∀ n, P17464503104891729596.a n = A277287 n

end A277287

/-! ## A277287.P1738079217164724669

`A257838(n)+record[A126930(n)]`
-/

namespace A277287.P1738079217164724669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277287.P1738079217164724669

namespace A277287

/-- `A257838(n)+record[A126930(n)]` -/
def P1738079217164724669.Spec : Prop :=
  ∀ n, P1738079217164724669.a n = A277287 n

end A277287

/-! ## A277287.P17093690057823346101

`A382432(n+1)+A109262(n)`
-/

namespace A277287.P17093690057823346101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382432 (n + 1) + A109262 n

end

end A277287.P17093690057823346101

namespace A277287

/-- `A382432(n+1)+A109262(n)` -/
def P17093690057823346101.Spec : Prop :=
  ∀ n, P17093690057823346101.a n = A277287 n

end A277287

/-! ## A277287.P3075395252608054990

`A257838(n)+A001405(2*n)`
-/

namespace A277287.P3075395252608054990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + A001405 (2 * n)

end

end A277287.P3075395252608054990

namespace A277287

/-- `A257838(n)+A001405(2*n)` -/
def P3075395252608054990.Spec : Prop :=
  ∀ n, P3075395252608054990.a n = A277287 n

end A277287

/-! ## A277287.P4272351807597069097

`A257838(n)+A081668(2*n)`
-/

namespace A277287.P4272351807597069097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + A081668 (2 * n)

end

end A277287.P4272351807597069097

namespace A277287

/-- `A257838(n)+A081668(2*n)` -/
def P4272351807597069097.Spec : Prop :=
  ∀ n, P4272351807597069097.a n = A277287 n

end A277287

/-! ## A277287.P10844697119980533190

`A257838(n)+A126869(2*n)`
-/

namespace A277287.P10844697119980533190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + A126869 (2 * n)

end

end A277287.P10844697119980533190

namespace A277287

/-- `A257838(n)+A126869(2*n)` -/
def P10844697119980533190.Spec : Prop :=
  ∀ n, P10844697119980533190.a n = A277287 n

end A277287

/-! ## A277287.P9010864622389790316

`A257838(n)+A126930(2*n)`
-/

namespace A277287.P9010864622389790316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + A126930 (2 * n)

end

end A277287.P9010864622389790316

namespace A277287

/-- `A257838(n)+A126930(2*n)` -/
def P9010864622389790316.Spec : Prop :=
  ∀ n, P9010864622389790316.a n = A277287 n

end A277287

/-! ## A277287.P17454090990194239569

`A371870(n)+2*A176085(n)`
-/

namespace A277287.P17454090990194239569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371870 n + 2 * A176085 n

end

end A277287.P17454090990194239569

namespace A277287

/-- `A371870(n)+2*A176085(n)` -/
def P17454090990194239569.Spec : Prop :=
  ∀ n, P17454090990194239569.a n = A277287 n

theorem P17454090990194239569.correct : P17454090990194239569.Spec := by
  intro n
  simp only [A277287, Nat.add_sub_cancel, A277287.P17454090990194239569.a, A277287.P3519925831238150495.a, A000984, A000984.P7946844122574426130.a, A176085, A176085.P18095810620596158957.a, A257838, A257838.P9432177341719237820.a, A371870, A371870.P16935794293074856516.a, A081696, A081696.P144682512311677634.a, A108081, A108081.P10199581490510874834.a, A109262, A109262.P3635105755243385556.a, A028329, A028329.P2723209719397665586.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277287

/-! ## A277287.P8066311416516126386

`2*A108081(n)-A371870(n)`
-/

namespace A277287.P8066311416516126386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108081 n - A371870 n

end

end A277287.P8066311416516126386

namespace A277287

/-- `2*A108081(n)-A371870(n)` -/
def P8066311416516126386.Spec : Prop :=
  ∀ n, P8066311416516126386.a n = A277287 n

theorem P8066311416516126386.correct : P8066311416516126386.Spec := by
  intro n
  simp only [A277287, Nat.add_sub_cancel, A277287.P8066311416516126386.a, A277287.P3519925831238150495.a, A000984, A000984.P7946844122574426130.a, A108081, A108081.P10199581490510874834.a, A257838, A257838.P9432177341719237820.a, A371870, A371870.P16935794293074856516.a, A028329, A028329.P2723209719397665586.a, A081696, A081696.P144682512311677634.a, A109262, A109262.P3635105755243385556.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A176085, A176085.P18095810620596158957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277287

/-! ## A277287.P5083222992840406804

`A257838(n)+(n+1)*A000108(n)`
-/

namespace A277287.P5083222992840406804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + (n + 1 : ℤ) * A000108 n

end

end A277287.P5083222992840406804

namespace A277287

/-- `A257838(n)+(n+1)*A000108(n)` -/
def P5083222992840406804.Spec : Prop :=
  ∀ n, P5083222992840406804.a n = A277287 n

end A277287

/-! ## A277287.P17186908152653687447

`A081696(n)+A257838(n)+A176085(n)`
-/

namespace A277287.P17186908152653687447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + (A257838 n + A176085 n)

end

end A277287.P17186908152653687447

namespace A277287

/-- `A081696(n)+A257838(n)+A176085(n)` -/
def P17186908152653687447.Spec : Prop :=
  ∀ n, P17186908152653687447.a n = A277287 n

theorem P17186908152653687447.correct : P17186908152653687447.Spec := by
  intro n
  simp only [A277287, Nat.add_sub_cancel, A277287.P17186908152653687447.a, A277287.P3519925831238150495.a, A000984, A000984.P7946844122574426130.a, A081696, A081696.P144682512311677634.a, A176085, A176085.P18095810620596158957.a, A257838, A257838.P9432177341719237820.a, A108081, A108081.P10199581490510874834.a, A028329, A028329.P2723209719397665586.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277287

/-! ## A277287.P11077851799482465999

`A176085(n+1)+A109262(n)-A176085(n)`
-/

namespace A277287.P11077851799482465999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) + (A109262 n - A176085 n)

end

end A277287.P11077851799482465999

namespace A277287

/-- `A176085(n+1)+A109262(n)-A176085(n)` -/
def P11077851799482465999.Spec : Prop :=
  ∀ n, P11077851799482465999.a n = A277287 n

end A277287

/-! ## A277287.P769406415322888525

`A176085(n+1)+A176085(n)-A257838(n)`
-/

namespace A277287.P769406415322888525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) + (A176085 n - A257838 n)

end

end A277287.P769406415322888525

namespace A277287

/-- `A176085(n+1)+A176085(n)-A257838(n)` -/
def P769406415322888525.Spec : Prop :=
  ∀ n, P769406415322888525.a n = A277287 n

end A277287

/-! ## A277287.P9240121145938514190

`A026671(n)+A257838(n)-A054441(n)`
-/

namespace A277287.P9240121145938514190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n + (A257838 n - A054441 n)

end

end A277287.P9240121145938514190

namespace A277287

/-- `A026671(n)+A257838(n)-A054441(n)` -/
def P9240121145938514190.Spec : Prop :=
  ∀ n, P9240121145938514190.a n = A277287 n

theorem P9240121145938514190.correct : P9240121145938514190.Spec := by
  intro n
  simp only [A277287, Nat.add_sub_cancel, A277287.P9240121145938514190.a, A277287.P3519925831238150495.a, A000984, A000984.P7946844122574426130.a, A026671, A026671.P11258807246634829896.a, A054441, A054441.P15897159802868765390.a, A257838, A257838.P9432177341719237820.a, A001076, A001076.P17701824972558233071.a, A081696, A081696.P144682512311677634.a, A108081, A108081.P10199581490510874834.a, A176280, A176280.P16719572012467488895.a, A028329, A028329.P2723209719397665586.a, A176085, A176085.P18095810620596158957.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277287

/-!
# A277290: Prime-indexed primes p such that Lucas(p) is prime.

The programs for A277290, there is no canonical definition to state claims against.
-/

/-! ## A277290.P6685352374151661162

`A006450(A123678(n+1))`
-/

namespace A277290.P6685352374151661162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A123678 (n + 1)).toNat

end

end A277290.P6685352374151661162

/-! ## A277290.P3887002106375001233

`∩[A001606(n+1), A006450(n+1)]`
-/

namespace A277290.P3887002106375001233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277290.P3887002106375001233

/-! ## A277290.P17967341595626143205

`∩[A006450(n+1), A168033(n+1)]`
-/

namespace A277290.P17967341595626143205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277290.P17967341595626143205

/-! ## A277290.P4588484442700153335

`∩[A001606(n+1), A302596(n+1)]`
-/

namespace A277290.P4588484442700153335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277290.P4588484442700153335

/-! ## A277290.P2613260391142731665

`∩[A168033(n+1), A302596(n+1)]`
-/

namespace A277290.P2613260391142731665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277290.P2613260391142731665

/-!
# A277291: Largest number that is n times sum of its digits when written in base 5.

The programs for A277291, there is no canonical definition to state claims against.
-/

/-! ## A277291.P15446847458964337997

`2*n*A333806(∑[∑[12*(n+1)²-3]])`
-/

namespace A277291.P15446847458964337997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) ^ 2 : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A333806 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277291.P15446847458964337997

/-! ## A277291.P3688702500510239548

`n*A000005(∑[A084780(n)])`
-/

namespace A277291.P3688702500510239548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277291.P3688702500510239548

/-! ## A277291.P7261146810630016843

`n*A035191(A056993(n+4))`
-/

namespace A277291.P7261146810630016843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035191 (A056993 (n + 4)).toNat

end

end A277291.P7261146810630016843

/-! ## A277291.P11246265761208051278

`2*n*A087229(A020072(n))`
-/

namespace A277291.P11246265761208051278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A087229 (A020072 n).toNat)

end

end A277291.P11246265761208051278

/-!
# A277292: G.f. A(x) satisfies: Series_Reversion( A(x) + A(x)^2 ) = A(x) - A(x)^2.

The programs for A277292, there is no canonical definition to state claims against.
-/

/-! ## A277292.P9293975479754518873

`A318008(Δ[n²])`
-/

namespace A277292.P9293975479754518873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A277292.P9293975479754518873

/-! ## A277292.P9825995961880352612

`(-1)^n*A179270(Δ[n²])`
-/

namespace A277292.P9825995961880352612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A179270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A277292.P9825995961880352612

/-! ## A277292.P14329410610223752219

`A179270(2*n+1)/A033999(n)`
-/

namespace A277292.P14329410610223752219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179270 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A277292.P14329410610223752219

/-! ## A277292.P11616517505116635647

`A179270(2*n+1)/A009531(Δ[n²])`
-/

namespace A277292.P11616517505116635647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179270 (2 * n + 1) : ℚ) / (A009531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A277292.P11616517505116635647

/-! ## A277292.P4194988802190634004

`A318008(2*n+1)+A179270(2*(n+1))`
-/

namespace A277292.P4194988802190634004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318008 (2 * n + 1) + A179270 (2 * (n + 1))

end

end A277292.P4194988802190634004

/-!
# A277296: Column 2 of triangle A277295; a(n) = A277295(n+2,2).

The programs for A277296, there is no canonical definition to state claims against.
-/

/-! ## A277296.P12115374932073387525

`A277295(∑[n+2]+4)`
-/

namespace A277296.P12115374932073387525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A277296.P12115374932073387525

/-! ## A277296.P10078698400847742277

`A054977(n)*A277295(A167614(n+1))`
-/

namespace A277296.P10078698400847742277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A277295 (A167614 (n + 1)).toNat

end

end A277296.P10078698400847742277

/-! ## A277296.P3246718490489249523

`A057427(n)*A277295(A167614(n+1))`
-/

namespace A277296.P3246718490489249523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A277295 (A167614 (n + 1)).toNat

end

end A277296.P3246718490489249523

/-! ## A277296.P7814775947696355109

`A178334(n)*A277295(A167614(n+1))`
-/

namespace A277296.P7814775947696355109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A277295 (A167614 (n + 1)).toNat

end

end A277296.P7814775947696355109

/-! ## A277296.P8615545535645539230

`A277295(A167614(n+1))%A000533(n)`
-/

namespace A277296.P8615545535645539230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277295 (A167614 (n + 1)).toNat) (A000533 n)

end

end A277296.P8615545535645539230

/-!
# A277297: Diagonal of triangle A277295; a(n) = A277295(n+2,n).

The programs for A277297, there is no canonical definition to state claims against.
-/

/-! ## A277297.P3333404077839610472

`2*A291822(n+1)`
-/

namespace A277297.P3333404077839610472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291822 (n + 1)

end

end A277297.P3333404077839610472

/-! ## A277297.P5135177330442837551

`A277295(∑[n+3]+1)`
-/

namespace A277297.P5135177330442837551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277297.P5135177330442837551

/-! ## A277297.P87570962315660661

`2*A291820(∑[n+3]+1)`
-/

namespace A277297.P87570962315660661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277297.P87570962315660661

/-! ## A277297.P7991664956316151035

`2*record[A291820(eq[2, A325002(n+1)])]`
-/

namespace A277297.P7991664956316151035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291820 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277297.P7991664956316151035

/-! ## A277297.P12081671359349667061

`A291822(n+1)+A291820(∑[n+3]+1)`
-/

namespace A277297.P12081671359349667061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291822 (n + 1) + A291820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277297.P12081671359349667061

/-!
# A277298: Central terms of triangle A277295 in odd-indexed rows; a(n) = A277295(2*n-1,n-1).

The programs for A277298, there is no canonical definition to state claims against.
-/

/-! ## A277298.P123568370150790463

`A277295(∑[4*n]+1)`
-/

namespace A277298.P123568370150790463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277298.P123568370150790463

/-! ## A277298.P5020383644165842972

`record[A003982(n)*A277295(n+1)]`
-/

namespace A277298.P5020383644165842972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A277295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277298.P5020383644165842972

/-! ## A277298.P17242622873647908930

`record[gcd(A277295(n+1), A323833(n))]`
-/

namespace A277298.P17242622873647908930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277295 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277298.P17242622873647908930

/-! ## A277298.P11453809104845481577

`record[A077606(n+1)*A277295(n+1)]`
-/

namespace A277298.P11453809104845481577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A277295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277298.P11453809104845481577

/-! ## A277298.P6397951864867132381

`record[A277295(2*n+1)-A323833(2*n)²]`
-/

namespace A277298.P6397951864867132381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (2 * n + 1) - A323833 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277298.P6397951864867132381

/-!
# A277299: Central terms of triangle A277295 in even-indexed rows; a(n) = A277295(2*n,n-1).

The programs for A277299, there is no canonical definition to state claims against.
-/

/-! ## A277299.P16442132001227989463

`A277295(2*(n+1)²)`
-/

namespace A277299.P16442132001227989463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (2 * (n + 1) ^ 2)

end

end A277299.P16442132001227989463

/-! ## A277299.P18289023284267368668

`record[A277295(∑[A123684(n+1)])]`
-/

namespace A277299.P18289023284267368668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277299.P18289023284267368668

/-! ## A277299.P10561574713637567453

`record[and(A077606(n+1), A277295(n+1))]`
-/

namespace A277299.P10561574713637567453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077606 (n + 1)) (A277295 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277299.P10561574713637567453

/-! ## A277299.P408132522365293642

`A277295(A184636(n+1))+A010894(n)`
-/

namespace A277299.P408132522365293642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (A184636 (n + 1)).toNat + A010894 (n + 21)

end

end A277299.P408132522365293642

/-! ## A277299.P15431209182953533656

`record[A277295(A136193(n+2))]`
-/

namespace A277299.P15431209182953533656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277295 (A136193 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277299.P15431209182953533656

