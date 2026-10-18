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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A261300: Concatenate successive run lengths of 0's in the binary expansion of n, each increased by 1.

The programs for A261300, there is no canonical definition to state claims against.
-/

/-! ## A261300.P8795152778987283789

`10^and(1, n)*a(floor(n/2))+1` with `a(0)=0`
-/

namespace A261300.P8795152778987283789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 ^ Nat.land 1 n * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A261300.P8795152778987283789

/-! ## A261300.P14225530357676589983

`A037916(A057335(n))`
-/

namespace A261300.P14225530357676589983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A057335 n).toNat

end

end A261300.P14225530357676589983

/-! ## A261300.P11834511422699938197

`A258055(Δ[n²])`
-/

namespace A261300.P11834511422699938197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258055 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A261300.P11834511422699938197

/-! ## A261300.P9358708753496568027

`or(char[1], A258055(2*n+1))`
-/

namespace A261300.P9358708753496568027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A258055 (2 * n + 1))

end

end A261300.P9358708753496568027

/-! ## A261300.P8864627378865068553

`A054977(n)*A258055(2*n+1)`
-/

namespace A261300.P8864627378865068553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A258055 (2 * n + 1)

end

end A261300.P8864627378865068553

/-!
# A261301: a(n+1) = abs(a(n) - gcd(a(n), n)), a(1) = 1.

The programs for A261301, the canonical program `A261301.P122017506276438817` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261301 has offset 1).

The definition of A261301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261301.P122017506276438817

`abs(gcd(n, a(n-1))-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A261301

/-- `abs(gcd(n, a(n-1))-a(n-1))` -/
def P122017506276438817.Spec : Prop :=
  ∀ n, P122017506276438817.a n = A261301 (n + 1)

theorem P122017506276438817.correct : P122017506276438817.Spec := by
  intro n
  simp only [A261301, Nat.add_sub_cancel]

end A261301

/-! ## A261301.P10144656683504499775

`(a(n-1)+n^59)%(n+1)` with `a(0)=1`
-/

namespace A261301.P10144656683504499775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n ^ 59) % (n + 1)

end

end A261301.P10144656683504499775

namespace A261301

/-- `(a(n-1)+n^59)%(n+1)` -/
def P10144656683504499775.Spec : Prop :=
  ∀ n, (P10144656683504499775.a n : ℤ) = A261301 (n + 1)

end A261301

/-! ## A261301.P10159763460233584649

`((a(n-1)+n)%(n+1))%A274118(n+1)` with `a(0)=1`
-/

namespace A261301.P10159763460233584649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (Int.tmod (a (n - 1) + (n : ℤ)) (n + 1 : ℤ)) (A274118 (n + 1))

end

end A261301.P10159763460233584649

namespace A261301

/-- `((a(n-1)+n)%(n+1))%A274118(n+1)` -/
def P10159763460233584649.Spec : Prop :=
  ∀ n, P10159763460233584649.a n = A261301 (n + 1)

end A261301

/-! ## A261301.P11090968223060812499

`A112714(n+1)%A008621(Δ[A260711(n+1)])`
-/

namespace A261301.P11090968223060812499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112714 (n + 1)) (A008621 (f1 (n + 1) - f1 n).toNat)

end

end A261301.P11090968223060812499

namespace A261301

/-- `A112714(n+1)%A008621(Δ[A260711(n+1)])` -/
def P11090968223060812499.Spec : Prop :=
  ∀ n, P11090968223060812499.a n = A261301 (n + 1)

end A261301

/-!
# A261302: a(n+1) = abs(a(n) - gcd(a(n), 2n+1)), a(1) = 1.

The programs for A261302, the canonical program `A261302.P3019536998929654010` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261302 has offset 1).

The definition of A261302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261302.P3019536998929654010

`abs(gcd(2*n+1, a(n-1))-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A261302

/-- `abs(gcd(2*n+1, a(n-1))-a(n-1))` -/
def P3019536998929654010.Spec : Prop :=
  ∀ n, P3019536998929654010.a n = A261302 (n + 1)

theorem P3019536998929654010.correct : P3019536998929654010.Spec := by
  intro n
  simp only [A261302, Nat.add_sub_cancel]

end A261302

/-! ## A261302.P9549974820056809239

`A171960(A341882(n+1)+A341866(2*(n+1)))`
-/

namespace A261302.P9549974820056809239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A341882 (n + 1 + 64) + A341866 (2 * (n + 1))).toNat

end

end A261302.P9549974820056809239

namespace A261302

/-- `A171960(A341882(n+1)+A341866(2*(n+1)))` -/
def P9549974820056809239.Spec : Prop :=
  ∀ n, P9549974820056809239.a n = A261302 (n + 1)

end A261302

/-! ## A261302.P15585467921622318136

`A171960(∑[∑[A151815(n)]])`
-/

namespace A261302.P15585467921622318136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261302.P15585467921622318136

namespace A261302

/-- `A171960(∑[∑[A151815(n)]])` -/
def P15585467921622318136.Spec : Prop :=
  ∀ n, P15585467921622318136.a n = A261302 (n + 1)

end A261302

/-! ## A261302.P10809797323123884289

`A171960(or(n+1, A151815(n)))`
-/

namespace A261302.P10809797323123884289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (Int.lor (n + 1 : ℤ) (A151815 n)).toNat

end

end A261302.P10809797323123884289

namespace A261302

/-- `A171960(or(n+1, A151815(n)))` -/
def P10809797323123884289.Spec : Prop :=
  ∀ n, P10809797323123884289.a n = A261302 (n + 1)

end A261302

/-! ## A261302.P4157277040698065234

`A171960(n+1)%A292538(n+1)`
-/

namespace A261302.P4157277040698065234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171960 (n + 1)) (A292538 (n + 1))

end

end A261302.P4157277040698065234

namespace A261302

/-- `A171960(n+1)%A292538(n+1)` -/
def P4157277040698065234.Spec : Prop :=
  ∀ n, P4157277040698065234.a n = A261302 (n + 1)

end A261302

/-!
# A261304: a(n+1) = abs(a(n) - gcd(a(n), 4n+3)), a(1) = 1.

The programs for A261304, there is no canonical definition to state claims against.
-/

/-! ## A261304.P10527395240691534792

`∑[A152755(A002618(n+1)*A132199(n+1))]`
-/

namespace A261304.P10527395240691534792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152755 (A002618 (n + 1) * A132199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261304.P10527395240691534792

/-! ## A261304.P1251542754115230601

`∑[A152755(A002618(n+1)*A004248(n))]`
-/

namespace A261304.P1251542754115230601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152755 (A002618 (n + 1) * A004248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261304.P1251542754115230601

/-!
# A261311: Fixed points of sequence A262211 which yields the minimum number of 12's such that [n; 12, ..., 12, n] = [x; ..., x] for some x; [...] being continued fractions.

The programs for A261311, there is no canonical definition to state claims against.
-/

/-! ## A261311.P16637301834910469225

`A007639(∑[A333883(n)!])`
-/

namespace A261311.P16637301834910469225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A333883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261311.P16637301834910469225

/-! ## A261311.P12531855524381976828

`A007639(A333883(n)!+n)`
-/

namespace A261311.P12531855524381976828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007639 (Nat.factorial (A333883 n).toNat + n)

end

end A261311.P12531855524381976828

/-! ## A261311.P8464831134681464104

`∩[A007639(n+1), A175135(n+1)]`
-/

namespace A261311.P8464831134681464104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261311.P8464831134681464104

/-! ## A261311.P18009834096603364667

`∩[A007639(n+1), A382765(n+1)]`
-/

namespace A261311.P18009834096603364667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261311.P18009834096603364667

/-!
# A261314: Rocket Sequence 34: a(0)=34, a(n) = A073846(a(n-1)).

The programs for A261314, there is no canonical definition to state claims against.
-/

/-! ## A261314.P4144115782238317051

`A073846(a(n-1))` with `a(0)=34`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261314.P4144115782238317051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  A073846 (a (n - 1)).toNat

end

end A261314.P4144115782238317051

/-! ## A261314.P12057553948575392533

`A067747(A233583(a(n-1)))` with `a(0)=34`
-/

namespace A261314.P12057553948575392533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  A067747 (A233583 (a (n - 1)).toNat).toNat

end

end A261314.P12057553948575392533

/-!
# A261317: Number of permutations sigma of [n] without fixed points such that sigma^6 = Id.

The programs for A261317, there is no canonical definition to state claims against.
-/

/-! ## A261317.P9076446799853993435

`A261430(eq[6, A025581(n)])`
-/

namespace A261317.P9076446799853993435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261317.P9076446799853993435

/-! ## A261317.P17337877964824929283

`A261430(eq[7, A004736(n+1)])`
-/

namespace A261317.P17337877964824929283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261317.P17337877964824929283

/-! ## A261317.P14817839355978819992

`A261430(Δ[Δ[A055832(n+5)]])`
-/

namespace A261317.P14817839355978819992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (f1 (n + 1) - f1 n).toNat

end

end A261317.P14817839355978819992

/-! ## A261317.P9163439692073801494

`A261430(A000096(n+5)+n+1)`
-/

namespace A261317.P9163439692073801494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A261317.P9163439692073801494

/-! ## A261317.P900904799451966713

`A261430(A000124(n+6)+n-1)`
-/

namespace A261317.P900904799451966713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A261317.P900904799451966713

/-!
# A261318: Number of set partitions T'_t(n) of {1,2,...,t} into exactly n parts, with an even number of elements in each part distinguished by marks, and such that no part contains both 1 and t with 1 unmarked or both i and i+1 with i+1 unmarked for some i with 1 <= i < t; triangle T'_t(n), t>=0, 0<=n<=t, read by rows.

The programs for A261318, there is no canonical definition to state claims against.
-/

/-! ## A261318.P2375888515004360103

`A049523(n+2)%A281660(A097805(n))`
-/

namespace A261318.P2375888515004360103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049523 (n + 2)) (A281660 (A097805 n).toNat)

end

end A261318.P2375888515004360103

/-!
# A261319: Number of set partitions C'_t(n) of {1,2,...,t} into at most n parts, with an even number of elements in each part distinguished by marks and such that no part contains both 1 and t (each unmarked) or both i and i+1 (each unmarked) for some i with 1 <= i < t; triangle C'_t(n), t>=0, 0<=n<=t, read by rows.

The programs for A261319, there is no canonical definition to state claims against.
-/

/-! ## A261319.P16544037603355000626

`A339659(A083868(n+1)+ceil(n²/2))`
-/

namespace A261319.P16544037603355000626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (A083868 (n + 1) + ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A261319.P16544037603355000626

/-! ## A261319.P4572336391750211506

`A339659(A318921(n)+A000982(n))`
-/

namespace A261319.P4572336391750211506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (A318921 n + A000982 n).toNat

end

end A261319.P4572336391750211506

/-! ## A261319.P11900669041232739052

`A330240(lcm(A000700(n), A261781(n)))`
-/

namespace A261319.P11900669041232739052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (Int.lcm (A000700 n) (A261781 n))

end

end A261319.P11900669041232739052

/-!
# A261320: Expansion of (phi(q^3) / phi(q))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A261320, there is no canonical definition to state claims against.
-/

/-! ## A261320.P6309993146865108012

`(-1)^n*A186924(n)`
-/

namespace A261320.P6309993146865108012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A186924 n

end

end A261320.P6309993146865108012

/-! ## A261320.P7361549935151471353

`A233673(3*n)`
-/

namespace A261320.P7361549935151471353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233673 (3 * n)

end

end A261320.P7361549935151471353

/-! ## A261320.P10109486360277081494

`A260215(3*n)`
-/

namespace A261320.P10109486360277081494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260215 (3 * n)

end

end A261320.P10109486360277081494

/-! ## A261320.P1026353110169238718

`A260058(n)*A280560(n)`
-/

namespace A261320.P1026353110169238718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260058 n * A280560 n

end

end A261320.P1026353110169238718

/-! ## A261320.P12084880191903136627

`A186924(n)/A033999(n)`
-/

namespace A261320.P12084880191903136627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186924 n : ℚ) / (A033999 n : ℚ)

end

end A261320.P12084880191903136627

/-! ## A261320.P3699182266097142416

`A261321(3*n)`
-/

namespace A261320.P3699182266097142416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261321 (3 * n)

end

end A261320.P3699182266097142416

/-! ## A261320.P16159795033839962805

`A261326(3*n)`
-/

namespace A261320.P16159795033839962805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261326 (3 * n)

end

end A261320.P16159795033839962805

/-! ## A261320.P10960034793485040271

`A262930(3*n)`
-/

namespace A261320.P10960034793485040271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262930 (3 * n)

end

end A261320.P10960034793485040271

/-! ## A261320.P255926594302731706

`A130335(3*n+1)*A233672(3*n)`
-/

namespace A261320.P255926594302731706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (3 * n + 1) * A233672 (3 * n)

end

end A261320.P255926594302731706

/-! ## A261320.P5621817362623169522

`A186924(n)*A187100(n+1)/A228447(n+1)`
-/

namespace A261320.P5621817362623169522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186924 n * A187100 (n + 1) : ℚ) / (A228447 (n + 1) : ℚ)

end

end A261320.P5621817362623169522

/-!
# A261321: Expansion of (phi(q) / phi(q^3))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A261321, there is no canonical definition to state claims against.
-/

/-! ## A261321.P9111062822183895359

`(-1)^n*A217771(n)`
-/

namespace A261321.P9111062822183895359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A217771 n

end

end A261321.P9111062822183895359

/-! ## A261321.P3131796198921406947

`A123932(n)*A213265(n)`
-/

namespace A261321.P3131796198921406947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A213265 n

end

end A261321.P3131796198921406947

/-! ## A261321.P12651902075261042961

`A132954(n)*A293387(n)`
-/

namespace A261321.P12651902075261042961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A293387 n

end

end A261321.P12651902075261042961

/-! ## A261321.P4660515245402196828

`A007426(A008578(n+1))*A213265(n)`
-/

namespace A261321.P4660515245402196828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A008578 (n + 1)).toNat * A213265 n

end

end A261321.P4660515245402196828

/-! ## A261321.P3204621154881689373

`A035218(A006450(n+1))²*A213265(n)`
-/

namespace A261321.P3204621154881689373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A006450 (n + 1)).toNat ^ 2 * A213265 n

end

end A261321.P3204621154881689373

/-! ## A261321.P2295284510206176800

`A020639(A000132(n))²*A213265(n)`
-/

namespace A261321.P2295284510206176800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat ^ 2 * A213265 n

end

end A261321.P2295284510206176800

/-! ## A261321.P1831443536703687684

`A348001(A141176(n+1))²*A213265(n)`
-/

namespace A261321.P1831443536703687684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348001 (A141176 (n + 1)).toNat ^ 2 * A213265 n

end

end A261321.P1831443536703687684

/-! ## A261321.P12551245866122162393

`A131112(A000217(n))*A213265(n)`
-/

namespace A261321.P12551245866122162393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 (A000217 n).toNat * A213265 n

end

end A261321.P12551245866122162393

/-! ## A261321.P9464884765102558170

`A133819(A133263(n))*A213265(n)`
-/

namespace A261321.P9464884765102558170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (A133263 n).toNat * A213265 n

end

end A261321.P9464884765102558170

/-! ## A261321.P5074605047265907264

`A000122(n²)²*A213265(n)`
-/

namespace A261321.P5074605047265907264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) ^ 2 * A213265 n

end

end A261321.P5074605047265907264

/-!
# A261322: Non-repunit elements of A261020 in nonincreasing order.

The programs for A261322, there is no canonical definition to state claims against.
-/

/-! ## A261322.P6664173373390715294

`A110402(A309863(n+1)+∑[A309863(n+1)])`
-/

namespace A261322.P6664173373390715294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110402 (A309863 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261322.P6664173373390715294

/-!
# A261323: Smallest m such that prime(m+n-1) - prime(m) = A008407(n); that is, prime(m) starts the smallest n-tuplet of consecutive primes of length A008407(n).

The programs for A261323, there is no canonical definition to state claims against.
-/

/-! ## A261323.P7983340279140748897

`A000720(A261324(n+1))`
-/

namespace A261323.P7983340279140748897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A261324 (n + 1)).toNat

end

end A261323.P7983340279140748897

/-! ## A261323.P1945624272751318330

`A055396(A261324(n+1)²)`
-/

namespace A261323.P1945624272751318330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A261324 (n + 1) ^ 2).toNat

end

end A261323.P1945624272751318330

/-! ## A261323.P11180368518929819784

`A061395(A261324(n+1)²)`
-/

namespace A261323.P11180368518929819784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A261324 (n + 1) ^ 2).toNat

end

end A261323.P11180368518929819784

/-! ## A261323.P15304210356989925476

`A066328(A261324(n+1)²)`
-/

namespace A261323.P15304210356989925476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A261324 (n + 1) ^ 2).toNat

end

end A261323.P15304210356989925476

/-! ## A261323.P14034258704133003122

`A290103(A261324(n+1)²)`
-/

namespace A261323.P14034258704133003122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A261324 (n + 1) ^ 2).toNat

end

end A261323.P14034258704133003122

/-!
# A261324: Smallest prime p that starts an n-tuplet of consecutive primes of length A008407(n).

The programs for A261324, there is no canonical definition to state claims against.
-/

/-! ## A261324.P893860507377449217

`A000040(or(C(2, n), A261323(n+1)))`
-/

namespace A261324.P893860507377449217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor (Nat.choose 2 n : ℤ) (A261323 (n + 1))).toNat

end

end A261324.P893860507377449217

/-! ## A261324.P16553565553939615466

`A000040(lcm((-1)^∑[n], A261323(n+1)))`
-/

namespace A261324.P16553565553939615466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lcm ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (A261323 (n + 1)))

end

end A261324.P16553565553939615466

/-! ## A261324.P8929341209194409374

`A000040(gcd(n, n+1)*A261323(n+1))`
-/

namespace A261324.P8929341209194409374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((Nat.gcd n (n + 1) : ℤ) * A261323 (n + 1)).toNat

end

end A261324.P8929341209194409374

/-! ## A261324.P865767229312666794

`A000040(A261323(n+1)^(n²%(n+1)))`
-/

namespace A261324.P865767229312666794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A261323 (n + 1) ^ (n ^ 2 % (n + 1))).toNat

end

end A261324.P865767229312666794

/-! ## A261324.P15102079649880531417

`A000040(A261323(n+1)+A243836(n))`
-/

namespace A261324.P15102079649880531417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A261323 (n + 1) + A243836 n).toNat

end

end A261324.P15102079649880531417

/-!
# A261325: Expansion of f(x^3, x^3) * f(x, x^5) / f(x, x)^2 in powers of x where f(,) is Ramanujan's general theta function.

The programs for A261325, there is no canonical definition to state claims against.
-/

/-! ## A261325.P13872722421820402822

`A187153(3*n+1)`
-/

namespace A261325.P13872722421820402822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (3 * n + 1)

end

end A261325.P13872722421820402822

/-! ## A261325.P11931348472283409079

`A233670(3*n+1)`
-/

namespace A261325.P11931348472283409079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233670 (3 * n + 1)

end

end A261325.P11931348472283409079

/-! ## A261325.P16264114059885010146

`A213265(3*n+1)`
-/

namespace A261325.P16264114059885010146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213265 (3 * n + 1)

end

end A261325.P16264114059885010146

/-! ## A261325.P12860550316128321969

`A233672(3*n+1)`
-/

namespace A261325.P12860550316128321969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233672 (3 * n + 1)

end

end A261325.P12860550316128321969

/-! ## A261325.P9012195229523927727

`A033999(n)*A261446(n)`
-/

namespace A261325.P9012195229523927727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261446 n

end

end A261325.P9012195229523927727

/-! ## A261325.P598671780952002684

`A217771(n)/A261321(n)*A261446(n)`
-/

namespace A261325.P598671780952002684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217771 n : ℚ) / (A261321 n : ℚ) * (A261446 n : ℚ)

end

end A261325.P598671780952002684

/-! ## A261325.P6424688966067710820

`A261326(3*n+1)`
-/

namespace A261325.P6424688966067710820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261326 (3 * n + 1)

end

end A261325.P6424688966067710820

/-! ## A261325.P7079838424657881378

`A233673(A008585(n)+1)/2`
-/

namespace A261325.P7079838424657881378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 (A008585 n + 1).toNat : ℚ) / 2

end

end A261325.P7079838424657881378

/-! ## A261325.P16255570612042191116

`A164271(n)/A233698(n)*A261446(n)`
-/

namespace A261325.P16255570612042191116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164271 n : ℚ) / (A233698 n : ℚ) * (A261446 n : ℚ)

end

end A261325.P16255570612042191116

/-!
# A261326: Expansion of f(-x^2, -x^4)^2 / (f(x^3, -x^6) * f(-x, x^2)) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A261326, there is no canonical definition to state claims against.
-/

/-! ## A261326.P5128168672619149094

`A033999(n)*A398619(n)`
-/

namespace A261326.P5128168672619149094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A398619 n

end

end A261326.P5128168672619149094

/-! ## A261326.P9326009962333107340

`A261321(n)/A132954(2*n)`
-/

namespace A261326.P9326009962333107340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A261326.P9326009962333107340

/-! ## A261326.P11898555168130424101

`A033999(n)*A217771(n)/A132954(2*n)`
-/

namespace A261326.P11898555168130424101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 n * A217771 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A261326.P11898555168130424101

/-! ## A261326.P18114571950620955351

`A008628(n-abs(1-n)+1)²*A213265(n)/A132954(2*n)`
-/

namespace A261326.P18114571950620955351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008628 ((n : ℤ) - |1 - (n : ℤ)| + 1).toNat ^ 2 * A213265 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A261326.P18114571950620955351

/-! ## A261326.P4223432408066140198

`A014963(n-abs(1-n)+7)²*A213265(n)/A132954(2*n)`
-/

namespace A261326.P4223432408066140198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 ((n : ℤ) - |1 - (n : ℤ)| + 7).toNat ^ 2 * A213265 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A261326.P4223432408066140198

/-! ## A261326.P827854288025544931

`A123649(n+1)/A213265(n+1)*A217771(n)/A132954(2*n)`
-/

namespace A261326.P827854288025544931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123649 (n + 1) : ℚ) / (A213265 (n + 1) : ℚ) * (A217771 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A261326.P827854288025544931

/-! ## A261326.P13682341416984998479

`A000122(n²)²*A213265(n)/A132954(2*n)`
-/

namespace A261326.P13682341416984998479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (n ^ 2) ^ 2 * A213265 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A261326.P13682341416984998479

/-!
# A261327: a(n) = (n^2 + 4) / 4^((n + 1) mod 2).

The programs for A261327, the canonical program `A261327.P15504253462563954163` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261327 has offset 0).

The definition of A261327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261327.P9804991291387029820

`(5-3*(-1)^n)*(4+n²)/8`
-/

namespace A261327.P9804991291387029820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - 3 * (-1) ^ n : ℚ) * ((4 + n ^ 2 : ℚ) / 8)

end

end A261327.P9804991291387029820

namespace A261327

/-- `(5-3*(-1)^n)*(4+n²)/8` -/
def P9804991291387029820.Spec : Prop :=
  ∀ n, P9804991291387029820.a n = (A261327 n : ℚ)

theorem P9804991291387029820.correct : P9804991291387029820.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A261327, Nat.add_sub_cancel, A261327.P9804991291387029820.a, A261327.P15504253462563954163.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A261327, Nat.add_sub_cancel, A261327.P9804991291387029820.a, A261327.P15504253462563954163.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A261327

/-! ## A261327.P15504253462563954163

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=5, a(2)=2, a(3)=13, a(4)=5, a(5)=29`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A261327

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P15504253462563954163.Spec : Prop :=
  ∀ n, P15504253462563954163.a n = A261327 n

theorem P15504253462563954163.correct : P15504253462563954163.Spec := by
  intro n
  simp only [A261327]

end A261327

/-! ## A261327.P6222146947583724471

`lcm(4, n²+4)/4`
-/

namespace A261327.P6222146947583724471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n ^ 2 + 4) : ℚ) / 4

end

end A261327.P6222146947583724471

namespace A261327

/-- `lcm(4, n²+4)/4` -/
def P6222146947583724471.Spec : Prop :=
  ∀ n, P6222146947583724471.a n = (A261327 n : ℚ)

end A261327

/-! ## A261327.P7070299810655945224

`(n²+4)/gcd(2, n)²`
-/

namespace A261327.P7070299810655945224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4 : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A261327.P7070299810655945224

namespace A261327

/-- `(n²+4)/gcd(2, n)²` -/
def P7070299810655945224.Spec : Prop :=
  ∀ n, P7070299810655945224.a n = (A261327 n : ℚ)

end A261327

/-! ## A261327.P8961994881913609089

`(n*n+4)/gcd(4, n%2)`
-/

namespace A261327.P8961994881913609089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * n + 4 : ℚ) / (Nat.gcd 4 (n % 2) : ℚ)

end

end A261327.P8961994881913609089

namespace A261327

/-- `(n*n+4)/gcd(4, n%2)` -/
def P8961994881913609089.Spec : Prop :=
  ∀ n, P8961994881913609089.a n = (A261327 n : ℚ)

end A261327

/-! ## A261327.P10582694476440292908

`A168077(n)+4^(n%2)`
-/

namespace A261327.P10582694476440292908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + (4 ^ (n % 2) : ℤ)

end

end A261327.P10582694476440292908

namespace A261327

/-- `A168077(n)+4^(n%2)` -/
def P10582694476440292908.Spec : Prop :=
  ∀ n, P10582694476440292908.a n = A261327 n

end A261327

/-! ## A261327.P8019566068592049626

`A168077(n)+A010685(n)`
-/

namespace A261327.P8019566068592049626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + A010685 n

end

end A261327.P8019566068592049626

namespace A261327

/-- `A168077(n)+A010685(n)` -/
def P8019566068592049626.Spec : Prop :=
  ∀ n, P8019566068592049626.a n = A261327 n

end A261327

/-! ## A261327.P15981450659890275355

`A010685(n)+A026741(n)²`
-/

namespace A261327.P15981450659890275355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n + A026741 n ^ 2

end

end A261327.P15981450659890275355

namespace A261327

/-- `A010685(n)+A026741(n)²` -/
def P15981450659890275355.Spec : Prop :=
  ∀ n, P15981450659890275355.a n = A261327 n

end A261327

/-! ## A261327.P4607170380258611698

`A168077(n)+A000034(n)²`
-/

namespace A261327.P4607170380258611698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + A000034 n ^ 2

end

end A261327.P4607170380258611698

namespace A261327

/-- `A168077(n)+A000034(n)²` -/
def P4607170380258611698.Spec : Prop :=
  ∀ n, P4607170380258611698.a n = A261327 n

end A261327

/-! ## A261327.P17642926124651485124

`A004652(n)*A010685(n)+1`
-/

namespace A261327.P17642926124651485124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n * A010685 n + 1

end

end A261327.P17642926124651485124

namespace A261327

/-- `A004652(n)*A010685(n)+1` -/
def P17642926124651485124.Spec : Prop :=
  ∀ n, P17642926124651485124.a n = A261327 n

end A261327

/-! ## A261327.P10278479752821624190

`gcd(A087475(n), A125641(n+1))`
-/

namespace A261327.P10278479752821624190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087475 n) (A125641 (n + 1))

end

end A261327.P10278479752821624190

namespace A261327

/-- `gcd(A087475(n), A125641(n+1))` -/
def P10278479752821624190.Spec : Prop :=
  ∀ n, (P10278479752821624190.a n : ℤ) = A261327 n

end A261327

/-! ## A261327.P16456958497555829542

`A000034(n)²+A026741(n)²`
-/

namespace A261327.P16456958497555829542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 + A026741 n ^ 2

end

end A261327.P16456958497555829542

namespace A261327

/-- `A000034(n)²+A026741(n)²` -/
def P16456958497555829542.Spec : Prop :=
  ∀ n, P16456958497555829542.a n = A261327 n

end A261327

/-! ## A261327.P6631564424971420556

`A040005(n+1)+A026741(n)²`
-/

namespace A261327.P6631564424971420556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (n + 1) + A026741 n ^ 2

end

end A261327.P6631564424971420556

namespace A261327

/-- `A040005(n+1)+A026741(n)²` -/
def P6631564424971420556.Spec : Prop :=
  ∀ n, P6631564424971420556.a n = A261327 n

end A261327

/-! ## A261327.P10141591630500228525

`A168077(n)+A040001(n+1)²`
-/

namespace A261327.P10141591630500228525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + A040001 (n + 1) ^ 2

end

end A261327.P10141591630500228525

namespace A261327

/-- `A168077(n)+A040001(n+1)²` -/
def P10141591630500228525.Spec : Prop :=
  ∀ n, P10141591630500228525.a n = A261327 n

end A261327

/-! ## A261327.P9439363177016019034

`A000034(n)²*A004652(n)+1`
-/

namespace A261327.P9439363177016019034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A004652 n + 1

end

end A261327.P9439363177016019034

namespace A261327

/-- `A000034(n)²*A004652(n)+1` -/
def P9439363177016019034.Spec : Prop :=
  ∀ n, P9439363177016019034.a n = A261327 n

end A261327

/-! ## A261327.P17493065778038855769

`A010685(n)+(A109043(n)/2)²`
-/

namespace A261327.P17493065778038855769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010685 n : ℚ) + ((A109043 n : ℚ) / 2) ^ 2

end

end A261327.P17493065778038855769

namespace A261327

/-- `A010685(n)+(A109043(n)/2)²` -/
def P17493065778038855769.Spec : Prop :=
  ∀ n, P17493065778038855769.a n = (A261327 n : ℚ)

end A261327

/-! ## A261327.P8255430775032915694

`A168077(n)+A010121(2*(n+1))`
-/

namespace A261327.P8255430775032915694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + A010121 (2 * (n + 1))

end

end A261327.P8255430775032915694

namespace A261327

/-- `A168077(n)+A010121(2*(n+1))` -/
def P8255430775032915694.Spec : Prop :=
  ∀ n, P8255430775032915694.a n = A261327 n

end A261327

/-! ## A261327.P5713880449562343510

`A040005(n+1)+(n/A040001(n))²`
-/

namespace A261327.P5713880449562343510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040005 (n + 1) : ℚ) + ((n : ℚ) / (A040001 n : ℚ)) ^ 2

end

end A261327.P5713880449562343510

namespace A261327

/-- `A040005(n+1)+(n/A040001(n))²` -/
def P5713880449562343510.Spec : Prop :=
  ∀ n, P5713880449562343510.a n = (A261327 n : ℚ)

end A261327

/-! ## A261327.P15976075418466952276

`A040005(n+1)+n²/A040005(n)`
-/

namespace A261327.P15976075418466952276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040005 (n + 1) : ℚ) + (n ^ 2 : ℚ) / (A040005 n : ℚ)

end

end A261327.P15976075418466952276

namespace A261327

/-- `A040005(n+1)+n²/A040005(n)` -/
def P15976075418466952276.Spec : Prop :=
  ∀ n, P15976075418466952276.a n = (A261327 n : ℚ)

end A261327

/-! ## A261327.P5834319896063757959

`A040005(n+1)+A129194(n)/A040001(n)`
-/

namespace A261327.P5834319896063757959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040005 (n + 1) : ℚ) + (A129194 n : ℚ) / (A040001 n : ℚ)

end

end A261327.P5834319896063757959

namespace A261327

/-- `A040005(n+1)+A129194(n)/A040001(n)` -/
def P5834319896063757959.Spec : Prop :=
  ∀ n, P5834319896063757959.a n = (A261327 n : ℚ)

end A261327

/-!
# A261329: Euler transform of Pell numbers.

The programs for A261329, there is no canonical definition to state claims against.
-/

/-! ## A261329.P16503410516768671478

`or(A318906(n), A318921(A318914(n)))`
-/

namespace A261329.P16503410516768671478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318906 (n + 10)) (A318921 (A318914 n).toNat)

end

end A261329.P16503410516768671478

/-! ## A261329.P9463908912083426860

`A273716(n+2)-A065744(A035009(n))`
-/

namespace A261329.P9463908912083426860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273716 (n + 2) - A065744 (A035009 n).toNat

end

end A261329.P9463908912083426860

/-! ## A261329.P7499106118790555819

`or(A318904(n+8), A318921(A318914(n)))`
-/

namespace A261329.P7499106118790555819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318904 (n + 8)) (A318921 (A318914 n).toNat)

end

end A261329.P7499106118790555819

/-! ## A261329.P8561334754774039971

`or(A318905(n+9), A318921(A318914(n)))`
-/

namespace A261329.P8561334754774039971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318905 (n + 9)) (A318921 (A318914 n).toNat)

end

end A261329.P8561334754774039971

/-!
# A261330: Euler transform of Pell-Lucas numbers.

The programs for A261330, there is no canonical definition to state claims against.
-/

/-! ## A261330.P6801490248939460736

`A169802(A262320(n))-1`
-/

namespace A261330.P6801490248939460736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169802 (A262320 n).toNat - 1

end

end A261330.P6801490248939460736

/-! ## A261330.P13857409471914243888

`A008616(n*A124708(n))`
-/

namespace A261330.P13857409471914243888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((n : ℤ) * A124708 n).toNat

end

end A261330.P13857409471914243888

/-!
# A261331: Expansion of Product_{k>=1} (1+x^k)^(A000129(k)).

The programs for A261331, there is no canonical definition to state claims against.
-/

/-! ## A261331.P8593129393972970193

`xor(A080323(A124711(n)), A099626(n))`
-/

namespace A261331.P8593129393972970193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080323 (A124711 n).toNat) (A099626 n)

end

end A261331.P8593129393972970193

/-! ## A261331.P1134348781728585238

`A054846(A060086(∑[4*n])-A200507(n))`
-/

namespace A261331.P1134348781728585238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A060086 (∑ j ∈ Finset.range (n + 1), f1 j) - A200507 n).toNat

end

end A261331.P1134348781728585238

/-!
# A261332: Expansion of Product_{k>=1} (1+x^k)^(A002203(k)).

The programs for A261332, there is no canonical definition to state claims against.
-/

/-! ## A261332.P10158512540513307367

`A243283(xor(2, A098409(n)))`
-/

namespace A261332.P10158512540513307367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (Int.xor 2 (A098409 n)).toNat

end

end A261332.P10158512540513307367

/-! ## A261332.P5632463801445711556

`A350356(A147878(n+1))+A167606(n)`
-/

namespace A261332.P5632463801445711556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (A147878 (n + 1)).toNat + A167606 n

end

end A261332.P5632463801445711556

/-!
# A261333: a(n) = 10*(A256100(n+1)-1) + A007376(n+1), a simple variation of A065649.

The programs for A261333, there is no canonical definition to state claims against.
-/

/-! ## A261333.P11867565138044747345

`10*(A256100(n+1)-1)+A007376(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261333.P11867565138044747345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A256100 (n + 1) - 1) + A007376 (n + 1)

end

end A261333.P11867565138044747345

/-! ## A261333.P14020184260226899408

`A065649(n+1)%A000040(A065664(2*n+5))`
-/

namespace A261333.P14020184260226899408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (n + 1)) (A000040 (A065664 (2 * n + 5)).toNat)

end

end A261333.P14020184260226899408

/-! ## A261333.P7338287037668643036

`A065649(lcm(A033307(n), A077168(n)))`
-/

namespace A261333.P7338287037668643036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065649 (Int.lcm (A033307 n) (A077168 n))

end

end A261333.P7338287037668643036

/-! ## A261333.P1837946832279950441

`lcm(A007376(A077168(n)), A065649(n+1))`
-/

namespace A261333.P1837946832279950441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A077168 n).toNat) (A065649 (n + 1))

end

end A261333.P1837946832279950441

/-! ## A261333.P3538697483794391101

`A065649(n+1)%A020710(A162711(n+1))`
-/

namespace A261333.P3538697483794391101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (n + 1)) (A020710 (A162711 (n + 1)).toNat)

end

end A261333.P3538697483794391101

/-!
# A261336: Number of achiral molecules containing two linear or branched chiral alkyl chains of n carbon atoms each.

The programs for A261336, there is no canonical definition to state claims against.
-/

/-! ## A261336.P6851413563537238838

`A005628(n+1)/2`
-/

namespace A261336.P6851413563537238838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005628 (n + 1) : ℚ) / 2

end

end A261336.P6851413563537238838

/-! ## A261336.P745754689495701336

`∑[Δ[A005628(n)]/2]`
-/

namespace A261336.P745754689495701336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005628 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261336.P745754689495701336

/-! ## A261336.P17166754431718027770

`(A000625(n+1)-A005627(n+1))/2`
-/

namespace A261336.P17166754431718027770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000625 (n + 1) - A005627 (n + 1) : ℚ) / 2

end

end A261336.P17166754431718027770

/-! ## A261336.P5003896030012718596

`A005629(2*(n+1))-A005961(n+1)`
-/

namespace A261336.P5003896030012718596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005629 (2 * (n + 1)) - A005961 (n + 1)

end

end A261336.P5003896030012718596

/-! ## A261336.P6555946848459465405

`∑[A014682(Δ[A005628(n)])]`
-/

namespace A261336.P6555946848459465405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005628 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261336.P6555946848459465405

/-!
# A261337: Digit-sums in an incremental base that adjusts itself as the digits of n are generated from right to left.

The programs for A261337, there is no canonical definition to state claims against.
-/

/-! ## A261337.P10566401369559541492

`A034968((lcm(16, n)/16)%A098289(n+3))`
-/

namespace A261337.P10566401369559541492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)) (A098289 (n + 3))).toNat

end

end A261337.P10566401369559541492

/-!
# A261338: Primes p such that digitsum(p) > digitsum(q) where q is the next prime after p.

The programs for A261338, there is no canonical definition to state claims against.
-/

/-! ## A261338.P8061006489583237888

`A064989(A337845(n+1))`
-/

namespace A261338.P8061006489583237888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A337845 (n + 1)).toNat

end

end A261338.P8061006489583237888

/-! ## A261338.P13246984981611827968

`A252463(p?[A337845(n+1)])`
-/

namespace A261338.P13246984981611827968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261338.P13246984981611827968

/-! ## A261338.P6410596510987615715

`A283463(A337845(n+1)+1)`
-/

namespace A261338.P6410596510987615715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A337845 (n + 1) + 1).toNat

end

end A261338.P6410596510987615715

/-! ## A261338.P9899815634813697777

`A252463(or(1, A337845(n+1)))`
-/

namespace A261338.P9899815634813697777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.lor 1 (A337845 (n + 1))).toNat

end

end A261338.P9899815634813697777

/-! ## A261338.P8306139108186726727

`A000040(A049084(A337845(n+1))-1)`
-/

namespace A261338.P8306139108186726727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049084 (A337845 (n + 1)).toNat - 1).toNat

end

end A261338.P8306139108186726727

/-! ## A261338.P10936051704110637606

`A000040(A158973(A337845(n+1))-2)`
-/

namespace A261338.P10936051704110637606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A158973 (A337845 (n + 1)).toNat - 2).toNat

end

end A261338.P10936051704110637606

/-!
# A261341: Numbers n such that round(n^(1/k)) divides n for all integers k>=1.

The programs for A261341, there is no canonical definition to state claims against.
-/

/-! ## A261341.P11398755062317793845

`A086378(A005453(n))%84`
-/

namespace A261341.P11398755062317793845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086378 (A005453 n).toNat) 84

end

end A261341.P11398755062317793845

/-! ## A261341.P15155334851761123308

`eq[A129718(n), A131296(n)]`
-/

namespace A261341.P15155334851761123308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261341.P15155334851761123308

/-! ## A261341.P3277748070536186463

`record[A006530(A226575(n+1))-1]`
-/

namespace A261341.P3277748070536186463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A226575 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261341.P3277748070536186463

/-! ## A261341.P13652139722162225901

`record[A000010(eq[1, A305830(n+1)])]`
-/

namespace A261341.P13652139722162225901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305830 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261341.P13652139722162225901

/-! ## A261341.P5965782263801365731

`eq[A327873(n+1), A354841(n+1)]`
-/

namespace A261341.P5965782263801365731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261341.P5965782263801365731

/-!
# A261342: Numbers n such that either floor(n^(1/k)) or ceiling(n^(1/k)) divides n for all integers k >= 1.

The programs for A261342, there is no canonical definition to state claims against.
-/

/-! ## A261342.P13384539769903088214

`eq[A007599(A028641(n)), A191306(n)]`
-/

namespace A261342.P13384539769903088214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A028641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261342.P13384539769903088214

/-! ## A261342.P8917869139861022365

`eq[A007599(A028641(n)), A191310(n)]`
-/

namespace A261342.P8917869139861022365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A028641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261342.P8917869139861022365

/-! ## A261342.P8925170161709093561

`eq[A000196(A107286(n)), A191310(n)]`
-/

namespace A261342.P8925170161709093561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261342.P8925170161709093561

/-! ## A261342.P9208767525631801718

`eq[A004525(A107286(n)), A191306(n)]`
-/

namespace A261342.P9208767525631801718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261342.P9208767525631801718

/-! ## A261342.P1055262469710937454

`eq[A007599(A126759(n)), A191306(n)]`
-/

namespace A261342.P1055262469710937454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A126759 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261342.P1055262469710937454

/-!
# A261343: 50-gonal numbers: a(n) = 48*n*(n-1)/2 + n.

The programs for A261343, the canonical program `A261343.P1195641689784462972` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261343 has offset 0).

The definition of A261343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48*n*(n-1)/2+n` (program `A261343.P11568149913682071736`, by `A261343.P11568149913682071736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261343.P1195641689784462972

`n*(24*n-23)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A261343

/-- `n*(24*n-23)` -/
def P1195641689784462972.Spec : Prop :=
  ∀ n, P1195641689784462972.a n = A261343 n

theorem P1195641689784462972.correct : P1195641689784462972.Spec := by
  intro n
  simp only [A261343]

end A261343

/-! ## A261343.P11568149913682071736

`48*n*(n-1)/2+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261343.P11568149913682071736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  48 * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2)) + (n : ℚ)

end

end A261343.P11568149913682071736

namespace A261343

/-- `48*n*(n-1)/2+n` -/
def P11568149913682071736.Spec : Prop :=
  ∀ n, P11568149913682071736.a n = (A261343 n : ℚ)

theorem P11568149913682071736.correct : P11568149913682071736.Spec := by
  intro n
  simp only [A261343, Nat.add_sub_cancel, A261343.P11568149913682071736.a, A261343.P1195641689784462972.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A261343

/-! ## A261343.P13469954496559057889

`∑[a(n-1)+48]` with `a(0)=0, a(1)=1`
-/

namespace A261343.P13469954496559057889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261343.P13469954496559057889

namespace A261343

/-- `∑[a(n-1)+48]` -/
def P13469954496559057889.Spec : Prop :=
  ∀ n, (P13469954496559057889.a n : ℤ) = A261343 n

end A261343

/-!
# A261345: Number of distinct prime divisors among the numbers k^2 + 1 for k in 1 <= k <= n.

The programs for A261345, the canonical program `A261345.P16457482463195681612` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261345 has offset 1).

The definition of A261345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261345.P16457482463195681612

`∑[A249066(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A261345

/-- `∑[A249066(n+1)]` -/
def P16457482463195681612.Spec : Prop :=
  ∀ n, P16457482463195681612.a n = A261345 (n + 1)

theorem P16457482463195681612.correct : P16457482463195681612.Spec := by
  intro n
  simp only [A261345, Nat.add_sub_cancel]

end A261345

/-! ## A261345.P3724807506197027378

`∑[floor(1/A242012(n+1))]`
-/

namespace A261345.P3724807506197027378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A242012 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P3724807506197027378

namespace A261345

/-- `∑[floor(1/A242012(n+1))]` -/
def P3724807506197027378.Spec : Prop :=
  ∀ n, P3724807506197027378.a n = A261345 (n + 1)

end A261345

/-! ## A261345.P14547167352339666801

`∑[floor(1/A252890(n+1))]`
-/

namespace A261345.P14547167352339666801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A252890 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P14547167352339666801

namespace A261345

/-- `∑[floor(1/A252890(n+1))]` -/
def P14547167352339666801.Spec : Prop :=
  ∀ n, P14547167352339666801.a n = A261345 (n + 1)

end A261345

/-! ## A261345.P894127798329473791

`∑[char[A005528(n+1)-1]]`
-/

namespace A261345.P894127798329473791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005528 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P894127798329473791

namespace A261345

/-- `∑[char[A005528(n+1)-1]]` -/
def P894127798329473791.Spec : Prop :=
  ∀ n, (P894127798329473791.a n : ℤ) = A261345 (n + 1)

end A261345

/-! ## A261345.P3610674878957833904

`∑[A000007(A242012(n+1)-1)]`
-/

namespace A261345.P3610674878957833904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A242012 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P3610674878957833904

namespace A261345

/-- `∑[A000007(A242012(n+1)-1)]` -/
def P3610674878957833904.Spec : Prop :=
  ∀ n, P3610674878957833904.a n = A261345 (n + 1)

end A261345

/-! ## A261345.P2630166319037590724

`∑[A010051(2*A242012(n+1))]`
-/

namespace A261345.P2630166319037590724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A242012 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P2630166319037590724

namespace A261345

/-- `∑[A010051(2*A242012(n+1))]` -/
def P2630166319037590724.Spec : Prop :=
  ∀ n, P2630166319037590724.a n = A261345 (n + 1)

end A261345

/-! ## A261345.P14068467992806509570

`∑[floor(A242012(n+1)^-A008620(n))]`
-/

namespace A261345.P14068467992806509570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242012 (n + 1) : ℚ) ^ (-A008620 n : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P14068467992806509570

namespace A261345

/-- `∑[floor(A242012(n+1)^-A008620(n))]` -/
def P14068467992806509570.Spec : Prop :=
  ∀ n, P14068467992806509570.a n = A261345 (n + 1)

end A261345

/-! ## A261345.P2183667300516049347

`∑[floor(A242012(n+1)^-A047452(n+1))]`
-/

namespace A261345.P2183667300516049347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242012 (n + 1) : ℚ) ^ (-A047452 (n + 1) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P2183667300516049347

namespace A261345

/-- `∑[floor(A242012(n+1)^-A047452(n+1))]` -/
def P2183667300516049347.Spec : Prop :=
  ∀ n, P2183667300516049347.a n = A261345 (n + 1)

end A261345

/-! ## A261345.P3290762907281061321

`∑[A010051(A242012(n+1)+A242012(n+1)²)]`
-/

namespace A261345.P3290762907281061321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A242012 (n + 1) + A242012 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261345.P3290762907281061321

namespace A261345

/-- `∑[A010051(A242012(n+1)+A242012(n+1)²)]` -/
def P3290762907281061321.Spec : Prop :=
  ∀ n, P3290762907281061321.a n = A261345 (n + 1)

end A261345

/-!
# A261347: Maximum water retention of a number square of order n.

The programs for A261347, there is no canonical definition to state claims against.
-/

/-! ## A261347.P12968296098322438295

`A215446(A317707(n+1))-A077609(n+1)`
-/

namespace A261347.P12968296098322438295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215446 (A317707 (n + 1)).toNat - A077609 (n + 1)

end

end A261347.P12968296098322438295

/-! ## A261347.P1124012875373159537

`A361478(A122239(n+4)%A337685(n+1))`
-/

namespace A261347.P1124012875373159537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361478 (Int.tmod (A122239 (n + 4)) (A337685 (n + 1))).toNat

end

end A261347.P1124012875373159537

/-!
# A261348: a(1)=0; a(2)=0; for n>2: a(n) = A237591(n,2) = A237593(n,2).

The programs for A261348, there is no canonical definition to state claims against.
-/

/-! ## A261348.P5447723405557779180

`ceil(round(xor(1, n)/3)/log(7))`
-/

namespace A261348.P5447723405557779180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 3) : ℝ) / Real.log (7 : ℝ)⌉

end

end A261348.P5447723405557779180

/-! ## A261348.P16118717008191673737

`floor(n/2)-∑[char[3*n+5]]`
-/

namespace A261348.P16118717008191673737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A261348.P16118717008191673737

/-! ## A261348.P11415509724804111634

`Δ[round((round(acot(n)+n)+4)²/12)]`
-/

namespace A261348.P11415509724804111634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 4) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261348.P11415509724804111634

/-! ## A261348.P16481987713197117671

`ceil(n/3+1-a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A261348.P16481987713197117671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ⌈(n : ℚ) / 3 + (1 - a (n - 1) : ℚ)⌉

end

end A261348.P16481987713197117671

/-! ## A261348.P8478134899547621719

`∑[gcd(2, ∏{p}[n, #])-((n%3)!-char[2])]`
-/

namespace A261348.P8478134899547621719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ) - ((Nat.factorial (n % 3) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261348.P8478134899547621719

/-! ## A261348.P3734997697595308726

`floor(∑[1-a(n-1)]/3)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=-1`
-/

namespace A261348.P3734997697595308726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, -1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A261348.P3734997697595308726

/-! ## A261348.P13526440945319636488

`(Δ[round((2-n)²/12)]+1)%floor((floor(n/2)/2+1)²)`
-/

namespace A261348.P13526440945319636488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) ⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋

end

end A261348.P13526440945319636488

/-! ## A261348.P1661969801274416780

`val(A348642(n+1), 3)`
-/

namespace A261348.P1661969801274416780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348642 (n + 1)).toNat 3

end

end A261348.P1661969801274416780

/-! ## A261348.P14061409835685674018

`floor(A008611(n+5)%(n+1)/2)`
-/

namespace A261348.P14061409835685674018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A008611 (n + 5)) (n + 1 : ℤ) : ℚ) / 2⌋

end

end A261348.P14061409835685674018

/-! ## A261348.P17250590797532546212

`ceil(∑[log2(A000010(n+1)/(n+1))]+n)`
-/

namespace A261348.P17250590797532546212
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000010 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)⌉

end

end A261348.P17250590797532546212

/-!
# A261349: T(n,k) is the decimal equivalent of a code for k that maximizes the sum of the Hamming distances between (cyclical) adjacent code words; triangle T(n,k), n>=0, 0<=k<=2^n-1, read by rows.

The programs for A261349, there is no canonical definition to state claims against.
-/

/-! ## A261349.P11464270740232553519

`A137579(A349164(n+1)+A349129(n+4))`
-/

namespace A261349.P11464270740232553519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A349164 (n + 1) + A349129 (n + 4)).toNat

end

end A261349.P11464270740232553519

/-!
# A261350: Triangle read by rows T(n,k) which is the mirror of A237591.

The programs for A261350, there is no canonical definition to state claims against.
-/

/-! ## A261350.P4175328124999514105

`gcd(A060502(A014210(n)), A292638(n+1))`
-/

namespace A261350.P4175328124999514105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060502 (A014210 n).toNat) (A292638 (n + 1))

end

end A261350.P4175328124999514105

/-! ## A261350.P5712101490584757179

`A099563(A221565(n)+A052964(n))`
-/

namespace A261350.P5712101490584757179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A221565 n + A052964 n).toNat

end

end A261350.P5712101490584757179

/-! ## A261350.P4663358275974638410

`A259177(∑[A271083(A037851(n+1))])`
-/

namespace A261350.P4663358275974638410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (A037851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261350.P4663358275974638410

/-! ## A261350.P12586929335161890827

`gcd(A090539(n)+1, A250243(A171516(n+1)))`
-/

namespace A261350.P12586929335161890827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090539 n + 1) (A250243 (A171516 (n + 1)).toNat)

end

end A261350.P12586929335161890827

/-! ## A261350.P6650552386001160615

`A260254(or(A084938(3*n+4), A106800(n+1)))`
-/

namespace A261350.P6650552386001160615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 (Int.lor (A084938 (3 * n + 4)) (A106800 (n + 1))).toNat

end

end A261350.P6650552386001160615

/-!
# A261351: Inverse permutation to A084385.

The programs for A261351, there is no canonical definition to state claims against.
-/

/-! ## A261351.P8346679909880170130

`A284307(A084385(A284307(n+1)))`
-/

namespace A261351.P8346679909880170130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (A084385 (A284307 (n + 1)).toNat).toNat

end

end A261351.P8346679909880170130

/-! ## A261351.P13762549800215488051

`A056699(A056699(A084385(A056699(A056699(n+1)))))`
-/

namespace A261351.P13762549800215488051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A056699 (A084385 (A056699 (A056699 (n + 1)).toNat).toNat).toNat).toNat

end

end A261351.P13762549800215488051

/-!
# A261352: Primes p such that prime(p)+2 = prime(q)*prime(r) for distinct primes q and r.

The programs for A261352, there is no canonical definition to state claims against.
-/

/-! ## A261352.P1260637076546357291

`A131626(∑[A336408(n+1)+3])`
-/

namespace A261352.P1260637076546357291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336408 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261352.P1260637076546357291

/-!
# A261355: Numbers n such that the denominator of the harmonic mean of Omega(n) and tau(n) is prime.

The programs for A261355, there is no canonical definition to state claims against.
-/

/-! ## A261355.P9641054557702050846

`eq[2, A153288(A226602(n))]`
-/

namespace A261355.P9641054557702050846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153288 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261355.P9641054557702050846

/-! ## A261355.P11101964331840798884

`lt[A152969(A226602(n)), A002088(n)]`
-/

namespace A261355.P11101964331840798884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152969 (A226602 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261355.P11101964331840798884

/-! ## A261355.P10943975115292976024

`comp[A064047(2*n+1)*A377432(3*n+2)]`
-/

namespace A261355.P10943975115292976024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064047 (2 * n + 1) * A377432 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A261355.P10943975115292976024

/-! ## A261355.P11851898093698742015

`lt[A026536(A053807(n+1)), A359068(n+1)]`
-/

namespace A261355.P11851898093698742015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026536 (A053807 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261355.P11851898093698742015

/-!
# A261356: Pyramid of coefficients in expansion of (1+x+2*y)^n.

The programs for A261356, there is no canonical definition to state claims against.
-/

/-! ## A261356.P18177107761673961573

`A000079(A056558(n))*A046816(n)`
-/

namespace A261356.P18177107761673961573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056558 n).toNat * A046816 n

end

end A261356.P18177107761673961573

/-! ## A261356.P4200078920466033765

`A261357(n)/A140531(A274079(n+1))`
-/

namespace A261356.P4200078920466033765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261357 n : ℚ) / (A140531 (A274079 (n + 1)).toNat : ℚ)

end

end A261356.P4200078920466033765

/-! ## A261356.P103511335056739674

`gcd(A014311(n+1)*A046816(n), A261357(n))`
-/

namespace A261356.P103511335056739674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014311 (n + 1) * A046816 n) (A261357 n)

end

end A261356.P103511335056739674

/-! ## A261356.P13417140286256737991

`A261357(n)/A130321(A332662(2*n))`
-/

namespace A261356.P13417140286256737991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261357 n : ℚ) / (A130321 (A332662 (2 * n)).toNat : ℚ)

end

end A261356.P13417140286256737991

/-! ## A261356.P6042055073881693200

`A006519(A014311(n+1))*A046816(n)`
-/

namespace A261356.P6042055073881693200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A014311 (n + 1)).toNat * A046816 n

end

end A261356.P6042055073881693200

/-! ## A261356.P14731981886947701405

`A006519(A173589(n+1))*A046816(n)`
-/

namespace A261356.P14731981886947701405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A173589 (n + 1)).toNat * A046816 n

end

end A261356.P14731981886947701405

/-! ## A261356.P16851966372536887721

`A261359(eq[0, A127324(n)])`
-/

namespace A261356.P16851966372536887721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261356.P16851966372536887721

/-! ## A261356.P18014449976239554446

`A261359(∑[A056558(n)]+n)`
-/

namespace A261356.P18014449976239554446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261359 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A261356.P18014449976239554446

/-! ## A261356.P11335319264395790280

`A261359(eq[0, A127325(n)])`
-/

namespace A261356.P11335319264395790280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261356.P11335319264395790280

/-!
# A261357: Pyramid of coefficients in expansion of (1 + 2*x + 2*y)^n.

The programs for A261357, there is no canonical definition to state claims against.
-/

/-! ## A261357.P16546429583440238554

`A000079(A056557(n))*A046816(n)`
-/

namespace A261357.P16546429583440238554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056557 n).toNat * A046816 n

end

end A261357.P16546429583440238554

/-! ## A261357.P11081780064513833093

`A140531(A274079(n+1))*A261356(n)`
-/

namespace A261357.P11081780064513833093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 (A274079 (n + 1)).toNat * A261356 n

end

end A261357.P11081780064513833093

/-! ## A261357.P5566571866829820141

`A046816(n)*A140531(A274079(n+1)+A056558(n))`
-/

namespace A261357.P5566571866829820141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 n * A140531 (A274079 (n + 1) + A056558 n).toNat

end

end A261357.P5566571866829820141

/-! ## A261357.P14601734524377435894

`A130321(A332662(2*n))*A261356(n)`
-/

namespace A261357.P14601734524377435894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A332662 (2 * n)).toNat * A261356 n

end

end A261357.P14601734524377435894

/-! ## A261357.P14702332538249475983

`A006519(A014311(n+1))*A046816(n)*A140531(A274079(n+1))`
-/

namespace A261357.P14702332538249475983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A014311 (n + 1)).toNat * A046816 n * A140531 (A274079 (n + 1)).toNat

end

end A261357.P14702332538249475983

/-! ## A261357.P2021340206611409735

`A006519(A173589(n+1))*A046816(n)*A140531(A274079(n+1))`
-/

namespace A261357.P2021340206611409735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A173589 (n + 1)).toNat * A046816 n * A140531 (A274079 (n + 1)).toNat

end

end A261357.P2021340206611409735

/-! ## A261357.P9057897581253174661

`A261360(eq[0, A127324(n)])`
-/

namespace A261357.P9057897581253174661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261357.P9057897581253174661

/-! ## A261357.P149581090545496364

`A261360(A123575(n)+n)`
-/

namespace A261357.P149581090545496364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261360 (A123575 n + (n : ℤ)).toNat

end

end A261357.P149581090545496364

/-! ## A261357.P16824672475773249514

`A261360(record[gcd(n, A127324(n))])`
-/

namespace A261357.P16824672475773249514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A127324 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A261357.P16824672475773249514

/-! ## A261357.P6035827249023216053

`A261360(record[n-A127324(n)²])`
-/

namespace A261357.P6035827249023216053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127324 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261357.P6035827249023216053

/-!
# A261359: Pentatope of coefficients in expansion of (1 + x + 2*y + 2*z)^n.

The programs for A261359, there is no canonical definition to state claims against.
-/

/-! ## A261359.P16508988334632826927

`2^A127323(n)*A189225(n)`
-/

namespace A261359.P16508988334632826927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127323 n : ℤ) * (A189225 n : ℚ)

end

end A261359.P16508988334632826927

/-!
# A261361: Primes p such that 2*prime(p) + 1 = prime(q) for some prime q.

The programs for A261361, there is no canonical definition to state claims against.
-/

/-! ## A261361.P11762761372386224566

`A000720(A318294(n+1))`
-/

namespace A261361.P11762761372386224566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A318294 (n + 1)).toNat

end

end A261361.P11762761372386224566

/-! ## A261361.P10875765163495424369

`A061395(p?[A318294(n+1)])`
-/

namespace A261361.P10875765163495424369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A261361.P10875765163495424369

/-! ## A261361.P12680657592116012405

`A061395(or(1, A318294(n+1)))`
-/

namespace A261361.P12680657592116012405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A318294 (n + 1))).toNat

end

end A261361.P12680657592116012405

/-! ## A261361.P9630385166485430047

`∑{d}[A318294(n+1), A061395(#)]`
-/

namespace A261361.P9630385166485430047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A261361.P9630385166485430047

/-! ## A261361.P13410612012291937430

`A061395(∏{d}[A318294(n+1), #])`
-/

namespace A261361.P13410612012291937430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A261361.P13410612012291937430

/-!
# A261363: Triangle read by rows: partial row sums of Sierpinski's triangle.

The programs for A261363, the canonical program `A261363.P8906415515170921986` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261363 has offset 0).

The definition of A261363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261363.P8906415515170921986

`∑[A047999(n)]-A006046(A003056(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A261363

/-- `∑[A047999(n)]-A006046(A003056(n))` -/
def P8906415515170921986.Spec : Prop :=
  ∀ n, P8906415515170921986.a n = A261363 n

theorem P8906415515170921986.correct : P8906415515170921986.Spec := by
  intro n
  simp only [A261363]

end A261363

/-! ## A261363.P13833217607622578290

`A358549(∑[2*n]%comp[∑[n]])`
-/

namespace A261363.P13833217607622578290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358549 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A261363.P13833217607622578290

namespace A261363

/-- `A358549(∑[2*n]%comp[∑[n]])` -/
def P13833217607622578290.Spec : Prop :=
  ∀ n, P13833217607622578290.a n = A261363 n

end A261363

/-! ## A261363.P11252725954818144131

`A358549(∑[char[∑[n]]]²-n-1)`
-/

namespace A261363.P11252725954818144131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358549 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A261363.P11252725954818144131

namespace A261363

/-- `A358549(∑[char[∑[n]]]²-n-1)` -/
def P11252725954818144131.Spec : Prop :=
  ∀ n, P11252725954818144131.a n = A261363 n

end A261363

/-! ## A261363.P1614098585322588786

`A137293(∑[A010054(A142465(n))])`
-/

namespace A261363.P1614098585322588786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A142465 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137293 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261363.P1614098585322588786

namespace A261363

/-- `A137293(∑[A010054(A142465(n))])` -/
def P1614098585322588786.Spec : Prop :=
  ∀ n, P1614098585322588786.a n = A261363 n

end A261363

/-! ## A261363.P10913649451260895938

`A095684(A282537(n)+A016885(n))`
-/

namespace A261363.P10913649451260895938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A282537 n + A016885 n).toNat

end

end A261363.P10913649451260895938

namespace A261363

/-- `A095684(A282537(n)+A016885(n))` -/
def P10913649451260895938.Spec : Prop :=
  ∀ n, P10913649451260895938.a n = A261363 n

end A261363

/-!
# A261365: Prime-numbered rows of Pascal's triangle.

The programs for A261365, the canonical program `A261365.P9709362867991470275` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261365 has offset 1).

The definition of A261365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261365.P2473835522867980278

`A007318(eq[1, A018783(A003056(n))])`
-/

namespace A261365.P2473835522867980278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261365.P2473835522867980278

namespace A261365

/-- `A007318(eq[1, A018783(A003056(n))])` -/
def P2473835522867980278.Spec : Prop :=
  ∀ n, P2473835522867980278.a n = A261365 (n + 1)

end A261365

/-! ## A261365.P9709362867991470275

`A007318(eq[1, A032741(A003056(n))])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A261365

/-- `A007318(eq[1, A032741(A003056(n))])` -/
def P9709362867991470275.Spec : Prop :=
  ∀ n, P9709362867991470275.a n = A261365 (n + 1)

theorem P9709362867991470275.correct : P9709362867991470275.Spec := by
  intro n
  simp only [A261365, Nat.add_sub_cancel]

end A261365

/-! ## A261365.P1143764881713136412

`A007318(eq[1, A302055(A003056(n))])`
-/

namespace A261365.P1143764881713136412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261365.P1143764881713136412

namespace A261365

/-- `A007318(eq[1, A302055(A003056(n))])` -/
def P1143764881713136412.Spec : Prop :=
  ∀ n, P1143764881713136412.a n = A261365 (n + 1)

end A261365

/-! ## A261365.P6532224440251863834

`A007318(eq[2, A115119(A003056(n))])`
-/

namespace A261365.P6532224440251863834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115119 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261365.P6532224440251863834

namespace A261365

/-- `A007318(eq[2, A115119(A003056(n))])` -/
def P6532224440251863834.Spec : Prop :=
  ∀ n, P6532224440251863834.a n = A261365 (n + 1)

end A261365

/-! ## A261365.P15690625086536415155

`A007318(eq[2, A000005(A003056(n+1))]+1)`
-/

namespace A261365.P15690625086536415155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003056 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A261365.P15690625086536415155

namespace A261365

/-- `A007318(eq[2, A000005(A003056(n+1))]+1)` -/
def P15690625086536415155.Spec : Prop :=
  ∀ n, P15690625086536415155.a n = A261365 (n + 1)

end A261365

/-! ## A261365.P9614485856987795104

`A007318(eq[1, A032741(A002024(n+1)-1)])`
-/

namespace A261365.P9614485856987795104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A002024 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261365.P9614485856987795104

namespace A261365

/-- `A007318(eq[1, A032741(A002024(n+1)-1)])` -/
def P9614485856987795104.Spec : Prop :=
  ∀ n, P9614485856987795104.a n = A261365 (n + 1)

end A261365

/-!
# A261366: a(n) = number of even terms in row n of triangle A261363.

The programs for A261366, the canonical program `A261366.P6028586896546902556` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261366 has offset 0).

The definition of A261366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261366.P6028586896546902556

`(n*A001316(abs(1-n)))%(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A261366

/-- `(n*A001316(abs(1-n)))%(n+1)` -/
def P6028586896546902556.Spec : Prop :=
  ∀ n, P6028586896546902556.a n = A261366 n

theorem P6028586896546902556.correct : P6028586896546902556.Spec := by
  intro n
  simp only [A261366]

end A261366

/-! ## A261366.P16969815998855641270

`n+1-A001316((n-1)%(n+1))`
-/

namespace A261366.P16969815998855641270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001316 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A261366.P16969815998855641270

namespace A261366

/-- `n+1-A001316((n-1)%(n+1))` -/
def P16969815998855641270.Spec : Prop :=
  ∀ n, P16969815998855641270.a n = A261366 n

end A261366

/-! ## A261366.P14677267073782475151

`n+1-A001316(floor(n²/(n+1)))`
-/

namespace A261366.P14677267073782475151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001316 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A261366.P14677267073782475151

namespace A261366

/-- `n+1-A001316(floor(n²/(n+1)))` -/
def P14677267073782475151.Spec : Prop :=
  ∀ n, P14677267073782475151.a n = A261366 n

end A261366

/-! ## A261366.P2735000924560379419

`A267582(n)-A028310(n)`
-/

namespace A261366.P2735000924560379419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 n - A028310 n

end

end A261366.P2735000924560379419

namespace A261366

/-- `A267582(n)-A028310(n)` -/
def P2735000924560379419.Spec : Prop :=
  ∀ n, P2735000924560379419.a n = A261366 n

end A261366

/-! ## A261366.P14243482875279441609

`1-A000010(A131136(n))+n`
-/

namespace A261366.P14243482875279441609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (A131136 n).toNat + (n : ℤ)

end

end A261366.P14243482875279441609

namespace A261366

/-- `1-A000010(A131136(n))+n` -/
def P14243482875279441609.Spec : Prop :=
  ∀ n, P14243482875279441609.a n = A261366 n

end A261366

/-! ## A261366.P11620446572572319926

`n-A038573(A028310(n)-1)`
-/

namespace A261366.P11620446572572319926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 (A028310 n - 1).toNat

end

end A261366.P11620446572572319926

namespace A261366

/-- `n-A038573(A028310(n)-1)` -/
def P11620446572572319926.Spec : Prop :=
  ∀ n, P11620446572572319926.a n = A261366 n

end A261366

/-! ## A261366.P10555118414770915880

`n-A038573(A004273(n)-n)`
-/

namespace A261366.P10555118414770915880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 (A004273 n - (n : ℤ)).toNat

end

end A261366.P10555118414770915880

namespace A261366

/-- `n-A038573(A004273(n)-n)` -/
def P10555118414770915880.Spec : Prop :=
  ∀ n, P10555118414770915880.a n = A261366 n

end A261366

/-! ## A261366.P5802207920352849460

`n-A038573(A027379(n)-∑[n+1])`
-/

namespace A261366.P5802207920352849460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 (A027379 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A261366.P5802207920352849460

namespace A261366

/-- `n-A038573(A027379(n)-∑[n+1])` -/
def P5802207920352849460.Spec : Prop :=
  ∀ n, P5802207920352849460.a n = A261366 n

end A261366

/-! ## A261366.P11154751365806476167

`round((2*n-A001316(record[A006257(n)]))/2)+1`
-/

namespace A261366.P11154751365806476167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) - A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2) + 1

end

end A261366.P11154751365806476167

namespace A261366

/-- `round((2*n-A001316(record[A006257(n)]))/2)+1` -/
def P11154751365806476167.Spec : Prop :=
  ∀ n, P11154751365806476167.a n = A261366 n

end A261366

/-! ## A261366.P5289135854327580420

`n-A249304(A105321(n)-A001316(n))`
-/

namespace A261366.P5289135854327580420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A249304 (A105321 n - A001316 n).toNat

end

end A261366.P5289135854327580420

namespace A261366

/-- `n-A249304(A105321(n)-A001316(n))` -/
def P5289135854327580420.Spec : Prop :=
  ∀ n, P5289135854327580420.a n = A261366 n

end A261366

/-! ## A261366.P15833849318574664370

`n-A004526(A131136(n)-1)`
-/

namespace A261366.P15833849318574664370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A131136 n - 1).toNat

end

end A261366.P15833849318574664370

namespace A261366

/-- `n-A004526(A131136(n)-1)` -/
def P15833849318574664370.Spec : Prop :=
  ∀ n, P15833849318574664370.a n = A261366 n

end A261366

/-! ## A261366.P3574022139284008637

`A029578(2*(n+1)-A131136(n))`
-/

namespace A261366.P3574022139284008637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ((2 * (n + 1) : ℤ) - A131136 n).toNat

end

end A261366.P3574022139284008637

namespace A261366

/-- `A029578(2*(n+1)-A131136(n))` -/
def P3574022139284008637.Spec : Prop :=
  ∀ n, P3574022139284008637.a n = A261366 n

end A261366

/-! ## A261366.P15082463389062848043

`n-A088512(comp[2*(n+1)])`
-/

namespace A261366.P15082463389062848043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A088512 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A261366.P15082463389062848043

namespace A261366

/-- `n-A088512(comp[2*(n+1)])` -/
def P15082463389062848043.Spec : Prop :=
  ∀ n, P15082463389062848043.a n = A261366 n

end A261366

/-! ## A261366.P10410392744980631005

`n+1-A048896(record[n+1-A230850(n+2)])`
-/

namespace A261366.P10410392744980631005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A230850 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261366.P10410392744980631005

namespace A261366

/-- `n+1-A048896(record[n+1-A230850(n+2)])` -/
def P10410392744980631005.Spec : Prop :=
  ∀ n, P10410392744980631005.a n = A261366 n

end A261366

/-!
# A261367: Number of nodes at level n in Euclid-Mullin graph starting with 1.

The programs for A261367, there is no canonical definition to state claims against.
-/

/-! ## A261367.P7050819855099998360

`A351846(A184844(n+1))`
-/

namespace A261367.P7050819855099998360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A184844 (n + 1)).toNat

end

end A261367.P7050819855099998360

/-! ## A261367.P14301199695672675942

`A334235(A038381(n)+4)`
-/

namespace A261367.P14301199695672675942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334235 (A038381 n + 4).toNat

end

end A261367.P14301199695672675942

/-! ## A261367.P11551440304316845668

`A023132(A317111(n)+A064645(n))`
-/

namespace A261367.P11551440304316845668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (A317111 n + A064645 n).toNat

end

end A261367.P11551440304316845668

/-! ## A261367.P18331720684187477947

`A226749(C(A011887(n), A226749(n)))`
-/

namespace A261367.P18331720684187477947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226749 (Nat.choose (A011887 n).toNat (A226749 n).toNat)

end

end A261367.P18331720684187477947

/-!
# A261369: Expansion of (psi(-x^3) / f(x))^2 in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A261369, there is no canonical definition to state claims against.
-/

/-! ## A261369.P8652291598477276612

`A187153(3*n+2)`
-/

namespace A261369.P8652291598477276612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (3 * n + 2)

end

end A261369.P8652291598477276612

/-! ## A261369.P11877412675590816369

`A213265(3*n+2)`
-/

namespace A261369.P11877412675590816369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213265 (3 * n + 2)

end

end A261369.P11877412675590816369

/-! ## A261369.P671965703467550604

`A262930(3*n+2)`
-/

namespace A261369.P671965703467550604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262930 (3 * n + 2)

end

end A261369.P671965703467550604

/-! ## A261369.P18116185605060898351

`A261321(A016789(n))/4`
-/

namespace A261369.P18116185605060898351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (A016789 n).toNat : ℚ) / 4

end

end A261369.P18116185605060898351

/-! ## A261369.P11186591902722672315

`A000034(2*n)*A262930(A016825(n)-n)`
-/

namespace A261369.P11186591902722672315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A262930 (A016825 n - (n : ℤ)).toNat

end

end A261369.P11186591902722672315

/-! ## A261369.P14604250654171220052

`A057427(A016777(n))*A262930(A016825(n)-n)`
-/

namespace A261369.P14604250654171220052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A016777 n).toNat * A262930 (A016825 n - (n : ℤ)).toNat

end

end A261369.P14604250654171220052

/-! ## A261369.P7821074268444794733

`A057427(A008458(n))*A262930(A016825(n)-n)`
-/

namespace A261369.P7821074268444794733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008458 n).toNat * A262930 (A016825 n - (n : ℤ)).toNat

end

end A261369.P7821074268444794733

/-! ## A261369.P17411606646522997690

`A262930(A016825(n)-n)%A159343(n)`
-/

namespace A261369.P17411606646522997690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262930 (A016825 n - (n : ℤ)).toNat) (A159343 n)

end

end A261369.P17411606646522997690

/-! ## A261369.P4492609329494222157

`A262930(A016825(n)-n)/A001222(A099207(n+1))`
-/

namespace A261369.P4492609329494222157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262930 (A016825 n - (n : ℤ)).toNat : ℚ) / (A001222 (A099207 (n + 1)).toNat : ℚ)

end

end A261369.P4492609329494222157

/-!
# A261371: Prime numbers that sum to a prime when added to their digital root.

The programs for A261371, there is no canonical definition to state claims against.
-/

/-! ## A261371.P16340821761633772334

`p?[A253610(n+1)]`
-/

namespace A261371.P16340821761633772334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261371.P16340821761633772334

/-! ## A261371.P6535824428192960777

`p?[n*A032741(dr(n)+n)]`
-/

namespace A261371.P6535824428192960777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (SequenceMachineLib.digitalRoot (n : ℤ) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261371.P6535824428192960777

/-! ## A261371.P10527841466164475582

`record[A006530(A253610(n+3))]`
-/

namespace A261371.P10527841466164475582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A253610 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261371.P10527841466164475582

/-! ## A261371.P17754526052505382100

`filter[A253610(n+1), A010051(#)]`
-/

namespace A261371.P17754526052505382100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A261371.P17754526052505382100

/-! ## A261371.P3833318754949481374

`filter[A253610(n+1), A171387(#)]`
-/

namespace A261371.P3833318754949481374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A261371.P3833318754949481374

/-! ## A261371.P15087469523022252423

`filter[A253610(n+2), A080339(#)]`
-/

namespace A261371.P15087469523022252423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A261371.P15087469523022252423

/-! ## A261371.P12306899561860173687

`filter[A253610(n+2), A080545(#)]`
-/

namespace A261371.P12306899561860173687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A261371.P12306899561860173687

/-! ## A261371.P15643696360457394961

`p?[A055672(n)-dr(A016861(n))]`
-/

namespace A261371.P15643696360457394961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n - (SequenceMachineLib.digitalRoot (A016861 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A261371.P15643696360457394961

/-! ## A261371.P1428441457437385381

`∩[A000040(n+1), A253610(n+1)]`
-/

namespace A261371.P1428441457437385381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261371.P1428441457437385381

/-! ## A261371.P4930565435145578473

`∩[A004139(n+1), A253610(n+1)]`
-/

namespace A261371.P4930565435145578473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261371.P4930565435145578473

/-!
# A261372: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261372, there is no canonical definition to state claims against.
-/

/-! ## A261372.P5080798068208294415

`A261380((n+1)²+n²)`
-/

namespace A261372.P5080798068208294415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 ((n + 1) ^ 2 + n ^ 2)

end

end A261372.P5080798068208294415

/-! ## A261372.P3084524511111004703

`record[gcd(A049581(n), A261380(n+1))]`
-/

namespace A261372.P3084524511111004703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A261380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261372.P3084524511111004703

/-! ## A261372.P9148372289713831993

`A264668(n)+A261380(A001844(n))`
-/

namespace A261372.P9148372289713831993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A261380 (A001844 n).toNat

end

end A261372.P9148372289713831993

/-! ## A261372.P591831810792349663

`lcm(A112865(n), A261380(A001844(n)))`
-/

namespace A261372.P591831810792349663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112865 n) (A261380 (A001844 n).toNat)

end

end A261372.P591831810792349663

/-! ## A261372.P2536475337567512629

`A000034(2*n)*A261380(A001844(n))`
-/

namespace A261372.P2536475337567512629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A261380 (A001844 n).toNat

end

end A261372.P2536475337567512629

/-!
# A261373: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261373, there is no canonical definition to state claims against.
-/

/-! ## A261373.P4627604088432154758

`A261380(∑[n]+1)`
-/

namespace A261373.P4627604088432154758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261373.P4627604088432154758

/-! ## A261373.P8042549792639912125

`record[A010054(n)*A261380(n+1)]`
-/

namespace A261373.P8042549792639912125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A261380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261373.P8042549792639912125

/-! ## A261373.P663296639811258843

`record[root(A261380(n+1), A007318(n))]`
-/

namespace A261373.P663296639811258843
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261380 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261373.P663296639811258843

/-! ## A261373.P6132240266535089267

`record[gcd(A002262(n), A261380(n+1))]`
-/

namespace A261373.P6132240266535089267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A261380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261373.P6132240266535089267

/-! ## A261373.P17663322597272225690

`record[(1-A210485(n))*A261380(n+1)]`
-/

namespace A261373.P17663322597272225690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A210485 n) * A261380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261373.P17663322597272225690

/-!
# A261374: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261374, there is no canonical definition to state claims against.
-/

/-! ## A261374.P16939789652776478196

`A261380(∑[n+1]+2)`
-/

namespace A261374.P16939789652776478196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261374.P16939789652776478196

/-! ## A261374.P11696355479963682121

`record[A010054(n)*A261380(n+2)]`
-/

namespace A261374.P11696355479963682121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A261380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261374.P11696355479963682121

/-! ## A261374.P4793840859900969058

`record[gcd(A002262(n), A261380(n+2))]`
-/

namespace A261374.P4793840859900969058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A261380 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261374.P4793840859900969058

/-! ## A261374.P7922852775879098771

`or(A000007(n), A261380(A000096(n)+3))`
-/

namespace A261374.P7922852775879098771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A261380 (A000096 n + 3).toNat)

end

end A261374.P7922852775879098771

/-! ## A261374.P11306500768995460083

`A000045(A020639(2*(n+1)))*A261380(A000096(n)+3)`
-/

namespace A261374.P11306500768995460083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A261380 (A000096 n + 3).toNat

end

end A261374.P11306500768995460083

/-!
# A261375: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261375, there is no canonical definition to state claims against.
-/

/-! ## A261375.P7601591247112085824

`A261380(∑[n+2]+4)`
-/

namespace A261375.P7601591247112085824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A261375.P7601591247112085824

/-! ## A261375.P13265495152295700664

`A264668(n)+A261380(A167614(n+1))`
-/

namespace A261375.P13265495152295700664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A261380 (A167614 (n + 1)).toNat

end

end A261375.P13265495152295700664

/-! ## A261375.P15799998602820632126

`A261380(A167614(n+1))%A016940(n)`
-/

namespace A261375.P15799998602820632126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261380 (A167614 (n + 1)).toNat) (A016940 n)

end

end A261375.P15799998602820632126

/-! ## A261375.P2366381274681069048

`lcm(A054977(n), A261380(A167614(n+1)))`
-/

namespace A261375.P2366381274681069048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A261380 (A167614 (n + 1)).toNat)

end

end A261375.P2366381274681069048

/-! ## A261375.P13535954532027982434

`A000034(2*n)*A261380(A167614(n+1))`
-/

namespace A261375.P13535954532027982434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A261380 (A167614 (n + 1)).toNat

end

end A261375.P13535954532027982434

/-!
# A261376: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261376, there is no canonical definition to state claims against.
-/

/-! ## A261376.P12079130802732421222

`A261380(∑[n+3]+7)`
-/

namespace A261376.P12079130802732421222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A261376.P12079130802732421222

/-! ## A261376.P17784330666451842218

`lcm(A033999(n), A261380(A167614(n+2)+1))`
-/

namespace A261376.P17784330666451842218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A261380 (A167614 (n + 2) + 1).toNat)

end

end A261376.P17784330666451842218

/-! ## A261376.P6312646999110519083

`or(char[1], A261380(A027379(n+2)))`
-/

namespace A261376.P6312646999110519083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261380 (A027379 (n + 2)).toNat)

end

end A261376.P6312646999110519083

/-! ## A261376.P12164434123229245142

`A011782(C(2, 2*n))*A261380(A027379(n+2))`
-/

namespace A261376.P12164434123229245142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.choose 2 (2 * n)) * A261380 (A027379 (n + 2)).toNat

end

end A261376.P12164434123229245142

/-! ## A261376.P3516763452326969101

`A014963(35*(n+1))*A261380(A027379(n+2))`
-/

namespace A261376.P3516763452326969101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (35 * (n + 1)) * A261380 (A027379 (n + 2)).toNat

end

end A261376.P3516763452326969101

/-!
# A261377: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261377, there is no canonical definition to state claims against.
-/

/-! ## A261377.P3104458504228763218

`A261380(A374005(n+1))`
-/

namespace A261377.P3104458504228763218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A374005 (n + 1)).toNat

end

end A261377.P3104458504228763218

/-! ## A261377.P1543284107022929693

`A261380(A167499(n+3))`
-/

namespace A261377.P1543284107022929693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A167499 (n + 3)).toNat

end

end A261377.P1543284107022929693

/-! ## A261377.P8426291673826886472

`A261380(A167614(n+1)+A005843(n)+9)`
-/

namespace A261377.P8426291673826886472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A167614 (n + 1) + A005843 n + 9).toNat

end

end A261377.P8426291673826886472

/-! ## A261377.P4878632055979871673

`A261380(A046691(n+3))`
-/

namespace A261377.P4878632055979871673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A046691 (n + 3)).toNat

end

end A261377.P4878632055979871673

/-! ## A261377.P11262098431043371344

`A261380(Δ[A023545(n+1)])`
-/

namespace A261377.P11262098431043371344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (f1 (n + 1) - f1 n).toNat

end

end A261377.P11262098431043371344

/-!
# A261378: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261378, there is no canonical definition to state claims against.
-/

/-! ## A261378.P14897197586932780816

`A261380(A374007(n+1))`
-/

namespace A261378.P14897197586932780816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A374007 (n + 1)).toNat

end

end A261378.P14897197586932780816

/-! ## A261378.P9344224714989299386

`A261380(A167614(n+4)+3)`
-/

namespace A261378.P9344224714989299386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A167614 (n + 4) + 3).toNat

end

end A261378.P9344224714989299386

/-! ## A261378.P16966511729418953486

`A261380(A000217(n+5)+6)`
-/

namespace A261378.P16966511729418953486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A000217 (n + 5) + 6).toNat

end

end A261378.P16966511729418953486

/-! ## A261378.P6649490669732911511

`A261380(A052905(n+3))`
-/

namespace A261378.P6649490669732911511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A052905 (n + 3)).toNat

end

end A261378.P6649490669732911511

/-! ## A261378.P14391306849439519048

`A261380(A000124(n+6)-6)`
-/

namespace A261378.P14391306849439519048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A000124 (n + 6) - 6).toNat

end

end A261378.P14391306849439519048

/-!
# A261379: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00001011 00010101 or 01010101.

The programs for A261379, there is no canonical definition to state claims against.
-/

/-! ## A261379.P10282637521993338953

`A261380(A374008(n+1))`
-/

namespace A261379.P10282637521993338953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A374008 (n + 1)).toNat

end

end A261379.P10282637521993338953

/-! ## A261379.P394483571087008177

`A261380(A167487(n+5))`
-/

namespace A261379.P394483571087008177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A167487 (n + 5)).toNat

end

end A261379.P394483571087008177

/-! ## A261379.P3428648610258514158

`A261380(A056119(n)+28)`
-/

namespace A261379.P3428648610258514158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A056119 n + 28).toNat

end

end A261379.P3428648610258514158

/-! ## A261379.P17437662955643741836

`A261380(A000217(n+6)+7)`
-/

namespace A261379.P17437662955643741836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A000217 (n + 6) + 7).toNat

end

end A261379.P17437662955643741836

/-! ## A261379.P14540885108153194466

`A261380(A000124(n+7)-(n+1))`
-/

namespace A261379.P14540885108153194466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261380 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A261379.P14540885108153194466

/-!
# A261381: Number of permutations sigma of [n] without fixed points such that sigma^10 = Id.

The programs for A261381, there is no canonical definition to state claims against.
-/

/-! ## A261381.P18406769240808492480

`A261430(eq[10, A025581(n)])`
-/

namespace A261381.P18406769240808492480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261381.P18406769240808492480

/-! ## A261381.P6657057307201981264

`A261430(A000217(n+11)-11)`
-/

namespace A261381.P6657057307201981264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A000217 (n + 11) - 11).toNat

end

end A261381.P6657057307201981264

/-! ## A261381.P5805424224763597706

`A261430(eq[11, A004736(n+1)])`
-/

namespace A261381.P5805424224763597706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261381.P5805424224763597706

/-! ## A261381.P18373054036108559248

`A261430(A134869(n+10)+n-1)`
-/

namespace A261381.P18373054036108559248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A134869 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A261381.P18373054036108559248

/-! ## A261381.P6066310820622741722

`A261430(A005408(n)+A000096(n+8)+10)`
-/

namespace A261381.P6066310820622741722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261430 (A005408 n + (A000096 (n + 8) + 10)).toNat

end

end A261381.P6066310820622741722

/-!
# A261383: Number of 5-ascent sequences of length n that avoid the pattern 00.

The programs for A261383, there is no canonical definition to state claims against.
-/

/-! ## A261383.P7327321908373225785

`5*A241987(a(n-2))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A261383.P7327321908373225785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  5 * A241987 (a (n - 2)).toNat

end

end A261383.P7327321908373225785

/-! ## A261383.P8634164378489076045

`A361826(A018001(n))`
-/

namespace A261383.P8634164378489076045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361826 (A018001 n).toNat

end

end A261383.P8634164378489076045

/-!
# A261384: Expansion of Product_{k>=1} (1+x^k)^(2*k-1) / (1-x^k)^(2*k).

The programs for A261384, there is no canonical definition to state claims against.
-/

/-! ## A261384.P2096769273063124979

`A217093(n)+A010059(A048143(n))`
-/

namespace A261384.P2096769273063124979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217093 n + A010059 (A048143 n).toNat

end

end A261384.P2096769273063124979

/-!
# A261386: Expansion of Product_{k>=1} ((1+x^k)/(1-x^k))^(2*k).

The programs for A261386, there is no canonical definition to state claims against.
-/

/-! ## A261386.P7286545635520352182

`A187221(A113841(n+1))`
-/

namespace A261386.P7286545635520352182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 (A113841 (n + 1)).toNat

end

end A261386.P7286545635520352182

/-! ## A261386.P11663391606706509150

`∑[∑[A000006(A166292(n+1)²)]]`
-/

namespace A261386.P11663391606706509150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A166292 (n + 1) ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261386.P11663391606706509150

/-!
# A261387: Number of ways to write n = k + m with 0 < k < m < n such that prime(k) is a primitive root modulo prime(m) and also prime(m) is a primitive root modulo prime(k).

The programs for A261387, there is no canonical definition to state claims against.
-/

/-! ## A261387.P10889754524159933930

`A078898(A001395(n)%A113609(n+1))`
-/

namespace A261387.P10889754524159933930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A001395 n) (A113609 (n + 1))).toNat

end

end A261387.P10889754524159933930

/-! ## A261387.P1896113912578586025

`A020639(A008292(3*n+1))-A167374(5*n)`
-/

namespace A261387.P1896113912578586025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008292 (3 * n + 1)).toNat - A167374 (5 * n)

end

end A261387.P1896113912578586025

/-! ## A261387.P17709903753070706332

`A342241(A000788(A007088(n)))%A070939(n)`
-/

namespace A261387.P17709903753070706332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342241 (A000788 (A007088 n).toNat).toNat) (A070939 n)

end

end A261387.P17709903753070706332

/-!
# A261388: a(n) is the length of the longest stretch of consecutive primitive roots of the multiplicative group modulo prime(n).

The programs for A261388, there is no canonical definition to state claims against.
-/

/-! ## A261388.P14784955671181485090

`A001221(A000125(∑[A248809(n)]))`
-/

namespace A261388.P14784955671181485090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000125 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A261388.P14784955671181485090

/-! ## A261388.P8867445841250594544

`A103921(A091049(n)+A000578(n))`
-/

namespace A261388.P8867445841250594544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A091049 n + A000578 n).toNat

end

end A261388.P8867445841250594544

/-! ## A261388.P14453041221707510582

`A064547(A344610(n)+A289409(n))`
-/

namespace A261388.P14453041221707510582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A344610 n + A289409 n).toNat

end

end A261388.P14453041221707510582

/-! ## A261388.P4668074714276483332

`A001221(A073431(n)+A029542(n+1))`
-/

namespace A261388.P4668074714276483332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073431 n + A029542 (n + 1)).toNat

end

end A261388.P4668074714276483332

/-! ## A261388.P6668284192842216586

`A358371(A205118(n+1)+A152716(n))`
-/

namespace A261388.P6668284192842216586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A205118 (n + 1) + A152716 n).toNat

end

end A261388.P6668284192842216586

/-!
# A261389: Expansion of Product_{k>=1} ((1+x^k)/(1-x^k))^(3*k).

The programs for A261389, there is no canonical definition to state claims against.
-/

/-! ## A261389.P14396827153546236675

`A210718(A007474(n))+A007465(n)`
-/

namespace A261389.P14396827153546236675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 (A007474 n).toNat + A007465 n

end

end A261389.P14396827153546236675

/-!
# A261391: a(n) = n^5 + 5*n^3 + 5*n.

The programs for A261391, the canonical program `A261391.P3451584564033413708` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261391 has offset 0).

The definition of A261391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+5*n^3+5*n` (program `A261391.P3451584564033413708`, by `A261391.P3451584564033413708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261391.P3451584564033413708

`n^5+5*n^3+5*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A261391

/-- `n^5+5*n^3+5*n` -/
def P3451584564033413708.Spec : Prop :=
  ∀ n, (P3451584564033413708.a n : ℤ) = A261391 n

theorem P3451584564033413708.correct : P3451584564033413708.Spec := by
  intro n
  simp only [A261391]

end A261391

/-! ## A261391.P3799012679829861385

`n*(A156798(n)+1)`
-/

namespace A261391.P3799012679829861385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A156798 n + 1)

end

end A261391.P3799012679829861385

namespace A261391

/-- `n*(A156798(n)+1)` -/
def P3799012679829861385.Spec : Prop :=
  ∀ n, P3799012679829861385.a n = A261391 n

end A261391

/-! ## A261391.P15154498639098598379

`n*(A082113(n)+4)`
-/

namespace A261391.P15154498639098598379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A082113 n + 4)

end

end A261391.P15154498639098598379

namespace A261391

/-- `n*(A082113(n)+4)` -/
def P15154498639098598379.Spec : Prop :=
  ∀ n, P15154498639098598379.a n = A261391 n

end A261391

/-! ## A261391.P9583994405145891255

`n*A028387(n²+1)`
-/

namespace A261391.P9583994405145891255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028387 (n ^ 2 + 1)

end

end A261391.P9583994405145891255

namespace A261391

/-- `n*A028387(n²+1)` -/
def P9583994405145891255.Spec : Prop :=
  ∀ n, P9583994405145891255.a n = A261391 n

end A261391

/-! ## A261391.P5582464595534777489

`n*A165900(n²+3)`
-/

namespace A261391.P5582464595534777489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165900 (n ^ 2 + 3)

end

end A261391.P5582464595534777489

namespace A261391

/-- `n*A165900(n²+3)` -/
def P5582464595534777489.Spec : Prop :=
  ∀ n, P5582464595534777489.a n = A261391 n

end A261391

/-!
# A261394: Expansion of phi(q)^4 / phi(q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A261394, there is no canonical definition to state claims against.
-/

/-! ## A261394.P15168037803707230660

`A004013(12*n)`
-/

namespace A261394.P15168037803707230660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (12 * n)

end

end A261394.P15168037803707230660

/-! ## A261394.P15587173141734770116

`A005875(3*n)`
-/

namespace A261394.P15587173141734770116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (3 * n)

end

end A261394.P15587173141734770116

/-! ## A261394.P12411684369265143743

`abs(A213384(3*n))`
-/

namespace A261394.P12411684369265143743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 (3 * n)|

end

end A261394.P12411684369265143743

/-! ## A261394.P1705309928128271402

`sqrt(A138202(3*n))`
-/

namespace A261394.P1705309928128271402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 (3 * n) : ℝ)

end

end A261394.P1705309928128271402

/-! ## A261394.P9170432487407585377

`A005875(A008585(n))%A045637(n+1)`
-/

namespace A261394.P9170432487407585377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005875 (A008585 n).toNat) (A045637 (n + 1))

end

end A261394.P9170432487407585377

/-! ## A261394.P5390450572382326071

`A004015(6*n)`
-/

namespace A261394.P5390450572382326071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (6 * n)

end

end A261394.P5390450572382326071

/-! ## A261394.P3138360052546671040

`A014455(6*n)`
-/

namespace A261394.P3138360052546671040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (6 * n)

end

end A261394.P3138360052546671040

/-! ## A261394.P10482442718407205115

`A169783(12*n)`
-/

namespace A261394.P10482442718407205115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (12 * n)

end

end A261394.P10482442718407205115

/-! ## A261394.P3241624416311423049

`A212885(12*n)`
-/

namespace A261394.P3241624416311423049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (12 * n)

end

end A261394.P3241624416311423049

/-! ## A261394.P10338346523227986922

`A213384(12*n)`
-/

namespace A261394.P10338346523227986922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (12 * n)

end

end A261394.P10338346523227986922

/-! ## A261394.P8337349021749424161

`A246631(12*n)`
-/

namespace A261394.P8337349021749424161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (12 * n)

end

end A261394.P8337349021749424161

/-! ## A261394.P1431552847484479549

`A329290(12*n)`
-/

namespace A261394.P1431552847484479549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329290 (12 * n)

end

end A261394.P1431552847484479549

/-! ## A261394.P18001750604179555827

`A072070(24*n)`
-/

namespace A261394.P18001750604179555827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 (24 * n)

end

end A261394.P18001750604179555827

/-! ## A261394.P2640100009370759878

`A080965(24*n)`
-/

namespace A261394.P2640100009370759878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080965 (24 * n)

end

end A261394.P2640100009370759878

/-! ## A261394.P7422366797798928010

`A014457(4*6*n)`
-/

namespace A261394.P7422366797798928010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (4 * (6 * n))

end

end A261394.P7422366797798928010

/-! ## A261394.P1236539676125902285

`A319078(12*n)`
-/

namespace A261394.P1236539676125902285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (12 * n)

end

end A261394.P1236539676125902285

/-! ## A261394.P8408970223957022732

`A005925(A008598(2*n)+A008598(n))`
-/

namespace A261394.P8408970223957022732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (A008598 (2 * n) + A008598 n).toNat

end

end A261394.P8408970223957022732

/-! ## A261394.P18235016489120099405

`A089804(A169823(n))`
-/

namespace A261394.P18235016489120099405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089804 (A169823 n).toNat

end

end A261394.P18235016489120099405

/-!
# A261396: a(n) = smallest k such that A260273(k) >= 2^n.

The programs for A261396, there is no canonical definition to state claims against.
-/

/-! ## A261396.P777802913580568053

`∑[A261646(C(2, n)+n)]`
-/

namespace A261396.P777802913580568053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261646 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261396.P777802913580568053

/-! ## A261396.P15400720797031094440

`∑[A261646(round(acot(n)+n))]`
-/

namespace A261396.P15400720797031094440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261646 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261396.P15400720797031094440

/-! ## A261396.P13031539508032482754

`A261646(n)+a(n-1)` with `a(0)=1`
-/

namespace A261396.P13031539508032482754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261646 n + a (n - 1)

end

end A261396.P13031539508032482754

/-! ## A261396.P13070913425272748578

`∑[A261646(round(sqrt(n²+1)))]`
-/

namespace A261396.P13070913425272748578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261646 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261396.P13070913425272748578

/-! ## A261396.P8253542627290597800

`∑[A261646(n+1)]+1-A261646(n+1)`
-/

namespace A261396.P8253542627290597800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A261646 (n + 1))

end

end A261396.P8253542627290597800

/-!
# A261397: a(n) = 3^n*Fibonacci(n).

The programs for A261397, the canonical program `A261397.P18004093677936830867` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261397 has offset 0).

The definition of A261397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261397.P18004093677936830867

`3*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A261397

/-- `3*a(n-1)+9*a(n-2)` -/
def P18004093677936830867.Spec : Prop :=
  ∀ n, (P18004093677936830867.a n : ℤ) = A261397 n

theorem P18004093677936830867.correct : P18004093677936830867.Spec := by
  intro n
  simp only [A261397]

end A261397

/-! ## A261397.P1050489524791010121

`3*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=0, a(1)=3`
-/

namespace A261397.P1050489524791010121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A261397.P1050489524791010121

namespace A261397

/-- `3*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P1050489524791010121.Spec : Prop :=
  ∀ n, P1050489524791010121.a n = A261397 n

end A261397

/-! ## A261397.P7470159748436876939

`3*A099012(n)`
-/

namespace A261397.P7470159748436876939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A099012 n

end

end A261397.P7470159748436876939

namespace A261397

/-- `3*A099012(n)` -/
def P7470159748436876939.Spec : Prop :=
  ∀ n, P7470159748436876939.a n = A261397 n

end A261397

/-! ## A261397.P17911518348351283658

`3^n*A000045(n)`
-/

namespace A261397.P17911518348351283658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000045 n

end

end A261397.P17911518348351283658

namespace A261397

/-- `3^n*A000045(n)` -/
def P17911518348351283658.Spec : Prop :=
  ∀ n, P17911518348351283658.a n = A261397 n

end A261397

/-! ## A261397.P15564145398315380509

`3^n*A212804(n+1)`
-/

namespace A261397.P15564145398315380509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A212804 (n + 1)

end

end A261397.P15564145398315380509

namespace A261397

/-- `3^n*A212804(n+1)` -/
def P15564145398315380509.Spec : Prop :=
  ∀ n, P15564145398315380509.a n = A261397 n

end A261397

/-! ## A261397.P12340436357279715602

`(A001611(n)-1)*3^n`
-/

namespace A261397.P12340436357279715602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * (3 ^ n : ℤ)

end

end A261397.P12340436357279715602

namespace A261397

/-- `(A001611(n)-1)*3^n` -/
def P12340436357279715602.Spec : Prop :=
  ∀ n, P12340436357279715602.a n = A261397 n

end A261397

/-! ## A261397.P6252361822219900864

`3^(n-1)*A022086(n)`
-/

namespace A261397.P6252361822219900864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A022086 n : ℚ)

end

end A261397.P6252361822219900864

namespace A261397

/-- `3^(n-1)*A022086(n)` -/
def P6252361822219900864.Spec : Prop :=
  ∀ n, P6252361822219900864.a n = (A261397 n : ℚ)

end A261397

/-! ## A261397.P17198806045950978963

`Δ[A000045(n+1)]/3^-n`
-/

namespace A261397.P17198806045950978963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A261397.P17198806045950978963

namespace A261397

/-- `Δ[A000045(n+1)]/3^-n` -/
def P17198806045950978963.Spec : Prop :=
  ∀ n, P17198806045950978963.a n = (A261397 n : ℚ)

end A261397

/-! ## A261397.P4952202698529924596

`A000045(n)*A000244(n)`
-/

namespace A261397.P4952202698529924596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000244 n

end

end A261397.P4952202698529924596

namespace A261397

/-- `A000045(n)*A000244(n)` -/
def P4952202698529924596.Spec : Prop :=
  ∀ n, P4952202698529924596.a n = A261397 n

end A261397

/-! ## A261397.P8398525876048208785

`A022086(n)*A133494(n)`
-/

namespace A261397.P8398525876048208785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n * A133494 n

end

end A261397.P8398525876048208785

namespace A261397

/-- `A022086(n)*A133494(n)` -/
def P8398525876048208785.Spec : Prop :=
  ∀ n, P8398525876048208785.a n = A261397 n

end A261397

/-! ## A261397.P1975820617644689244

`A022086(n)*A140429(n)`
-/

namespace A261397.P1975820617644689244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n * A140429 n

end

end A261397.P1975820617644689244

namespace A261397

/-- `A022086(n)*A140429(n)` -/
def P1975820617644689244.Spec : Prop :=
  ∀ n, P1975820617644689244.a n = A261397 n

end A261397

/-! ## A261397.P17197761673389006656

`A022086(n)*A155734(n)`
-/

namespace A261397.P17197761673389006656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n * A155734 n

end

end A261397.P17197761673389006656

namespace A261397

/-- `A022086(n)*A155734(n)` -/
def P17197761673389006656.Spec : Prop :=
  ∀ n, P17197761673389006656.a n = A261397 n

end A261397

/-! ## A261397.P14194930856802757704

`A097135(n)*A140429(n)`
-/

namespace A261397.P14194930856802757704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 n * A140429 n

end

end A261397.P14194930856802757704

namespace A261397

/-- `A097135(n)*A140429(n)` -/
def P14194930856802757704.Spec : Prop :=
  ∀ n, P14194930856802757704.a n = A261397 n

end A261397

/-! ## A261397.P7799365603840773543

`A000045(n)*Δ[A003462(n)]`
-/

namespace A261397.P7799365603840773543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A261397.P7799365603840773543

namespace A261397

/-- `A000045(n)*Δ[A003462(n)]` -/
def P7799365603840773543.Spec : Prop :=
  ∀ n, P7799365603840773543.a n = A261397 n

end A261397

/-! ## A261397.P14815511107847230769

`A000045(n)*Δ[A007051(n)]`
-/

namespace A261397.P14815511107847230769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A261397.P14815511107847230769

namespace A261397

/-- `A000045(n)*Δ[A007051(n)]` -/
def P14815511107847230769.Spec : Prop :=
  ∀ n, P14815511107847230769.a n = A261397 n

end A261397

/-! ## A261397.P209909789767692428

`A000045(n)*A133494(n+1)`
-/

namespace A261397.P209909789767692428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A133494 (n + 1)

end

end A261397.P209909789767692428

namespace A261397

/-- `A000045(n)*A133494(n+1)` -/
def P209909789767692428.Spec : Prop :=
  ∀ n, P209909789767692428.a n = A261397 n

end A261397

/-! ## A261397.P17065937915266306438

`A000045(n)*A140429(n+1)`
-/

namespace A261397.P17065937915266306438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A140429 (n + 1)

end

end A261397.P17065937915266306438

namespace A261397

/-- `A000045(n)*A140429(n+1)` -/
def P17065937915266306438.Spec : Prop :=
  ∀ n, P17065937915266306438.a n = A261397 n

end A261397

/-! ## A261397.P12358241367551751571

`A000045(n)*A155734(n+1)`
-/

namespace A261397.P12358241367551751571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A155734 (n + 1)

end

end A261397.P12358241367551751571

namespace A261397

/-- `A000045(n)*A155734(n+1)` -/
def P12358241367551751571.Spec : Prop :=
  ∀ n, P12358241367551751571.a n = A261397 n

end A261397

/-! ## A261397.P18330294992465043098

`A000045(n)*A038754(2*n)`
-/

namespace A261397.P18330294992465043098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A038754 (2 * n)

end

end A261397.P18330294992465043098

namespace A261397

/-- `A000045(n)*A038754(2*n)` -/
def P18330294992465043098.Spec : Prop :=
  ∀ n, P18330294992465043098.a n = A261397 n

end A261397

/-!
# A261398: Integer coefficients arising from a formula for Sum_{m>=1} sin(Pi*m/3)^2/m^2.

The programs for A261398, there is no canonical definition to state claims against.
-/

/-! ## A261398.P17571860079655677327

`(n+1)*A099765(n+1)`
-/

namespace A261398.P17571860079655677327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099765 (n + 1)

end

end A261398.P17571860079655677327

/-! ## A261398.P9197828973122733174

`record[A000122(n)*A101842(n+1)]`
-/

namespace A261398.P9197828973122733174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A101842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261398.P9197828973122733174

/-! ## A261398.P9071737625048400910

`A002260(A133263(n))*A101842(A253909(n))`
-/

namespace A261398.P9071737625048400910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A133263 n).toNat * A101842 (A253909 n).toNat

end

end A261398.P9071737625048400910

/-! ## A261398.P2463784000446449414

`A014963(A137688(n))*A101842(A253909(n))`
-/

namespace A261398.P2463784000446449414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A137688 n).toNat * A101842 (A253909 n).toNat

end

end A261398.P2463784000446449414

/-!
# A261399: a(n) = (2/5)*(9*6^(n-2)+1).

The programs for A261399, the canonical program `A261399.P6337418980505393064` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261399 has offset 1).

The definition of A261399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261399.P6337418980505393064

`6*a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A261399

/-- `6*a(n-1)-2` -/
def P6337418980505393064.Spec : Prop :=
  ∀ n, P6337418980505393064.a n = A261399 (n + 1)

theorem P6337418980505393064.correct : P6337418980505393064.Spec := by
  intro n
  simp only [A261399, Nat.add_sub_cancel]

end A261399

/-! ## A261399.P5964123999403402746

`2/5*(9*6^(n-1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261399.P5964123999403402746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (9 * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)

end

end A261399.P5964123999403402746

namespace A261399

/-- `2/5*(9*6^(n-1)+1)` -/
def P5964123999403402746.Spec : Prop :=
  ∀ n, P5964123999403402746.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P7424723273194261540

`floor(∑[lcm(3, 6^n)]/2)`
-/

namespace A261399.P7424723273194261540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (6 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A261399.P7424723273194261540

namespace A261399

/-- `floor(∑[lcm(3, 6^n)]/2)` -/
def P7424723273194261540.Spec : Prop :=
  ∀ n, P7424723273194261540.a n = A261399 (n + 1)

end A261399

/-! ## A261399.P1972077452560493011

`a(n-1)+6^n/2` with `a(0)=1`
-/

namespace A261399.P1972077452560493011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (6 ^ n : ℚ) / 2

end

end A261399.P1972077452560493011

namespace A261399

/-- `a(n-1)+6^n/2` -/
def P1972077452560493011.Spec : Prop :=
  ∀ n, P1972077452560493011.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P7688367764199853489

`A005618(n)/4`
-/

namespace A261399.P7688367764199853489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005618 n : ℚ) / 4

end

end A261399.P7688367764199853489

namespace A261399

/-- `A005618(n)/4` -/
def P7688367764199853489.Spec : Prop :=
  ∀ n, P7688367764199853489.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P6041901371614207186

`Δ[A094259(n)/2]`
-/

namespace A261399.P6041901371614207186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094259 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261399.P6041901371614207186

namespace A261399

/-- `Δ[A094259(n)/2]` -/
def P6041901371614207186.Spec : Prop :=
  ∀ n, P6041901371614207186.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P17962926255729750463

`3*A003464(n)+1`
-/

namespace A261399.P17962926255729750463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003464 n + 1

end

end A261399.P17962926255729750463

namespace A261399

/-- `3*A003464(n)+1` -/
def P17962926255729750463.Spec : Prop :=
  ∀ n, P17962926255729750463.a n = A261399 (n + 1)

end A261399

/-! ## A261399.P14277706063931999919

`A047851(n+1)/2`
-/

namespace A261399.P14277706063931999919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047851 (n + 1) : ℚ) / 2

end

end A261399.P14277706063931999919

namespace A261399

/-- `A047851(n+1)/2` -/
def P14277706063931999919.Spec : Prop :=
  ∀ n, P14277706063931999919.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P17336002019773698919

`A105281(n)/2+1`
-/

namespace A261399.P17336002019773698919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105281 n : ℚ) / 2 + 1

end

end A261399.P17336002019773698919

namespace A261399

/-- `A105281(n)/2+1` -/
def P17336002019773698919.Spec : Prop :=
  ∀ n, P17336002019773698919.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P7351262499356991065

`(A199412(n)+1)/3`
-/

namespace A261399.P7351262499356991065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199412 n + 1 : ℚ) / 3

end

end A261399.P7351262499356991065

namespace A261399

/-- `(A199412(n)+1)/3` -/
def P7351262499356991065.Spec : Prop :=
  ∀ n, P7351262499356991065.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P17085020611311579065

`3*A047851(n)-2`
-/

namespace A261399.P17085020611311579065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047851 n - 2

end

end A261399.P17085020611311579065

namespace A261399

/-- `3*A047851(n)-2` -/
def P17085020611311579065.Spec : Prop :=
  ∀ n, P17085020611311579065.a n = A261399 (n + 1)

end A261399

/-! ## A261399.P13188759964491852769

`(A233325(n)+3)/4`
-/

namespace A261399.P13188759964491852769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233325 n + 3 : ℚ) / 4

end

end A261399.P13188759964491852769

namespace A261399

/-- `(A233325(n)+3)/4` -/
def P13188759964491852769.Spec : Prop :=
  ∀ n, P13188759964491852769.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P12220145948420566302

`ceil(A003464(n+1)/2)`
-/

namespace A261399.P12220145948420566302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003464 (n + 1) : ℚ) / 2⌉

end

end A261399.P12220145948420566302

namespace A261399

/-- `ceil(A003464(n+1)/2)` -/
def P12220145948420566302.Spec : Prop :=
  ∀ n, P12220145948420566302.a n = A261399 (n + 1)

end A261399

/-! ## A261399.P11716153623740156807

`ceil(A005610(n+1)/4)`
-/

namespace A261399.P11716153623740156807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005610 (n + 1) : ℚ) / 4⌉

end

end A261399.P11716153623740156807

namespace A261399

/-- `ceil(A005610(n+1)/4)` -/
def P11716153623740156807.Spec : Prop :=
  ∀ n, P11716153623740156807.a n = A261399 (n + 1)

end A261399

/-! ## A261399.P10770592136900483892

`(∑[A062394(n)]-n)/2`
-/

namespace A261399.P10770592136900483892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A261399.P10770592136900483892

namespace A261399

/-- `(∑[A062394(n)]-n)/2` -/
def P10770592136900483892.Spec : Prop :=
  ∀ n, P10770592136900483892.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P2448005773869502210

`A329114(2*(n+1))+1`
-/

namespace A261399.P2448005773869502210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329114 (2 * (n + 1)) + 1

end

end A261399.P2448005773869502210

namespace A261399

/-- `A329114(2*(n+1))+1` -/
def P2448005773869502210.Spec : Prop :=
  ∀ n, P2448005773869502210.a n = A261399 (n + 1)

end A261399

/-! ## A261399.P9622133107793714314

`3/5*A024062(n)+1`
-/

namespace A261399.P9622133107793714314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A024062 n : ℚ) + 1

end

end A261399.P9622133107793714314

namespace A261399

/-- `3/5*A024062(n)+1` -/
def P9622133107793714314.Spec : Prop :=
  ∀ n, P9622133107793714314.a n = (A261399 (n + 1) : ℚ)

end A261399

/-! ## A261399.P5525009497672641834

`A081341(n)+a(n-1)` with `a(0)=1`
-/

namespace A261399.P5525009497672641834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081341 n + a (n - 1)

end

end A261399.P5525009497672641834

namespace A261399

/-- `A081341(n)+a(n-1)` -/
def P5525009497672641834.Spec : Prop :=
  ∀ n, P5525009497672641834.a n = A261399 (n + 1)

end A261399

