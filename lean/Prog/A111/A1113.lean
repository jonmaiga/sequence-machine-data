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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
# A111300: Positive integers that are the difference between two double factorials.

The programs for A111300, there is no canonical definition to state claims against.
-/

/-! ## A111300.P9809231699457810051

`eq[1, A205104(A028310(n))]`
-/

namespace A111300.P9809231699457810051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205104 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111300.P9809231699457810051

/-! ## A111300.P6766068994554651324

`eq[1, A205104(A233583(n+1))]`
-/

namespace A111300.P6766068994554651324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205104 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111300.P6766068994554651324

/-! ## A111300.P3955934482243947554

`eq[1, A205104(A123108(2*n))]`
-/

namespace A111300.P3955934482243947554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205104 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111300.P3955934482243947554

/-! ## A111300.P8738607226904458881

`eq[1, A205104(A000007(n)+n)]`
-/

namespace A111300.P8738607226904458881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205104 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111300.P8738607226904458881

/-! ## A111300.P9701901008013989439

`eq[1, A205104(xor(n, A000007(n)))]`
-/

namespace A111300.P9701901008013989439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205104 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111300.P9701901008013989439

/-!
# A111302: Define a(1)=1. Thereafter a(n) is the smallest positive integer with the property that a(n)^2 cannot be created by summing the squares of at most n values chosen among the previous terms (with repeats allowed).

The programs for A111302, there is no canonical definition to state claims against.
-/

/-! ## A111302.P3194550050026577533

`A000196(A084161(n)+A007716(n))`
-/

namespace A111302.P3194550050026577533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084161 n + A007716 n).toNat

end

end A111302.P3194550050026577533

/-!
# A111303: Numbers n such that 2^tau(n) = n + 1 (where tau(n) = number of divisors of n).

The programs for A111303, there is no canonical definition to state claims against.
-/

/-! ## A111303.P1651820121096186156

`2^∪[2^n, 6^n]-1`
-/

namespace A111303.P1651820121096186156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - 1

end

end A111303.P1651820121096186156

/-! ## A111303.P3523233330141463898

`lcm(2^ceil(2^(n-1)), 4^n)-1`
-/

namespace A111303.P3523233330141463898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℤ))) (4 ^ n : ℤ) : ℤ) - 1

end

end A111303.P3523233330141463898

/-! ## A111303.P1825384198660542296

`A350142(n+1)-2`
-/

namespace A111303.P1825384198660542296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350142 (n + 1) - 2

end

end A111303.P1825384198660542296

/-!
# A111305: Composite numbers k such that a^(k-1) == 1 (mod k) only when a == 1 (mod k).

The programs for A111305, there is no canonical definition to state claims against.
-/

/-! ## A111305.P3093815813494189529

`A209211(n+3)`
-/

namespace A111305.P3093815813494189529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 3)

end

end A111305.P3093815813494189529

/-! ## A111305.P11397288781787703786

`record[A242742(n+1)-1]`
-/

namespace A111305.P11397288781787703786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242742 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111305.P11397288781787703786

/-! ## A111305.P6157505363788935368

`record[A160596(n+4)+1]`
-/

namespace A111305.P6157505363788935368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160596 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111305.P6157505363788935368

/-! ## A111305.P15418794728016480913

`record[A318827(n+4)+1]`
-/

namespace A111305.P15418794728016480913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111305.P15418794728016480913

/-! ## A111305.P2641305694610831053

`record[A318828(n+4)+1]`
-/

namespace A111305.P2641305694610831053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111305.P2641305694610831053

/-! ## A111305.P5901328877808745421

`record[A340086(n+4)+1]`
-/

namespace A111305.P5901328877808745421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340086 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111305.P5901328877808745421

/-! ## A111305.P9992020420627242655

`record[A105222(n+4)-1]`
-/

namespace A111305.P9992020420627242655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111305.P9992020420627242655

/-! ## A111305.P15174241363468816976

`record[floor(sqrt(A256517(n+1)))]`
-/

namespace A111305.P15174241363468816976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A256517 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111305.P15174241363468816976

/-! ## A111305.P12636544828764891051

`∩[2*n, A227180(n+1)]`
-/

namespace A111305.P12636544828764891051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111305.P12636544828764891051

/-! ## A111305.P5337657570808032090

`∩[2*n, A280196(n+3)]`
-/

namespace A111305.P5337657570808032090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111305.P5337657570808032090

/-!
# A111306: d_12(n), tau_12(n), number of ordered factorizations of n as n = rstuvwxyzabc (12-factorizations).

The programs for A111306, the canonical program `A111306.P762294088752339213` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111306 has offset 1).

The definition of A111306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111306.P762294088752339213

`∏{e}[n+1, C(#+11, 11)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111306

/-- `∏{e}[n+1, C(#+11, 11)]` -/
def P762294088752339213.Spec : Prop :=
  ∀ n, (P762294088752339213.a n : ℤ) = A111306 (n + 1)

theorem P762294088752339213.correct : P762294088752339213.Spec := by
  intro n
  simp only [A111306, Nat.add_sub_cancel]

end A111306

/-! ## A111306.P852724286039511424

`∑{d}[n+1, A111221(#)]`
-/

namespace A111306.P852724286039511424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111221 d

end

end A111306.P852724286039511424

namespace A111306

/-- `∑{d}[n+1, A111221(#)]` -/
def P852724286039511424.Spec : Prop :=
  ∀ n, P852724286039511424.a n = A111306 (n + 1)

end A111306

/-! ## A111306.P10341122057915784818

`∏{e}[n+1, A001288(#)]`
-/

namespace A111306.P10341122057915784818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001288 (Nat.factorization (f1 n) p + 11)

end

end A111306.P10341122057915784818

namespace A111306

/-- `∏{e}[n+1, A001288(#)]` -/
def P10341122057915784818.Spec : Prop :=
  ∀ n, P10341122057915784818.a n = A111306 (n + 1)

theorem P10341122057915784818.correct : P10341122057915784818.Spec := by
  intro n
  simp only [A111306, Nat.add_sub_cancel, A111306.P10341122057915784818.f1, A111306.P10341122057915784818.a, A111306.P762294088752339213.f1, A111306.P762294088752339213.a, A001288, A001288.P6911698518301333126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111306

/-! ## A111306.P4315750171110467337

`∑{d}[n+1, A034695(#)*A034695((n+1)/#)]`
-/

namespace A111306.P4315750171110467337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034695 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111306.P4315750171110467337

namespace A111306

/-- `∑{d}[n+1, A034695(#)*A034695((n+1)/#)]` -/
def P4315750171110467337.Spec : Prop :=
  ∀ n, P4315750171110467337.a n = A111306 (n + 1)

end A111306

/-! ## A111306.P6537353602120781316

`∑{d}[n+1, A000005(#)*A111220((n+1)/#)]`
-/

namespace A111306.P6537353602120781316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A111220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111306.P6537353602120781316

namespace A111306

/-- `∑{d}[n+1, A000005(#)*A111220((n+1)/#)]` -/
def P6537353602120781316.Spec : Prop :=
  ∀ n, P6537353602120781316.a n = A111306 (n + 1)

end A111306

/-! ## A111306.P17973372624659843623

`∑{d}[n+1, A007425(#)*A111219((n+1)/#)]`
-/

namespace A111306.P17973372624659843623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A111219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111306.P17973372624659843623

namespace A111306

/-- `∑{d}[n+1, A007425(#)*A111219((n+1)/#)]` -/
def P17973372624659843623.Spec : Prop :=
  ∀ n, P17973372624659843623.a n = A111306 (n + 1)

end A111306

/-! ## A111306.P818330013522217651

`∑{d}[n+1, A007426(#)*A111218((n+1)/#)]`
-/

namespace A111306.P818330013522217651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A111218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111306.P818330013522217651

namespace A111306

/-- `∑{d}[n+1, A007426(#)*A111218((n+1)/#)]` -/
def P818330013522217651.Spec : Prop :=
  ∀ n, P818330013522217651.a n = A111306 (n + 1)

end A111306

/-! ## A111306.P17977184501568328990

`∑{d}[n+1, A061200(#)*A111217((n+1)/#)]`
-/

namespace A111306.P17977184501568328990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111306.P17977184501568328990

namespace A111306

/-- `∑{d}[n+1, A061200(#)*A111217((n+1)/#)]` -/
def P17977184501568328990.Spec : Prop :=
  ∀ n, P17977184501568328990.a n = A111306 (n + 1)

end A111306

/-!
# A111307: Numbers which are perfect powers m^k, where m is an integer, equal to the sum of m consecutive primes plus another prime which is larger than all the others.

The programs for A111307, there is no canonical definition to state claims against.
-/

/-! ## A111307.P14862186222967463530

`A076467(round(atan(n+3)+n)+1)`
-/

namespace A111307.P14862186222967463530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (SequenceMachineLib.roundAway (Real.arctan (n + 3 : ℝ) + (n : ℝ)) + 1).toNat

end

end A111307.P14862186222967463530

/-! ## A111307.P16369688898554895360

`A111231(comp[(n+1)*C(n+6, 6)-1]+1)`
-/

namespace A111307.P16369688898554895360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (n + 6) 6 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A111307.P16369688898554895360

/-! ## A111307.P8613436352367535135

`A111231(comp[A006565(n)])`
-/

namespace A111307.P8613436352367535135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006565 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111307.P8613436352367535135

/-! ## A111307.P734338757137068898

`A076467(comp[A000330(∑[n])])`
-/

namespace A111307.P734338757137068898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111307.P734338757137068898

/-! ## A111307.P6504294253733684702

`A111231(A262524(n+1))`
-/

namespace A111307.P6504294253733684702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111231 (A262524 (n + 1)).toNat

end

end A111307.P6504294253733684702

/-!
# A111308: Sum_{k=1..n} k!! * (n+1-k)!!, where k!! = k*(k-2)*(k-4)..*(1 or 2).

The programs for A111308, there is no canonical definition to state claims against.
-/

/-! ## A111308.P9618395422233062690

`A305577(n+1)-2*A006882(n+1)`
-/

namespace A111308.P9618395422233062690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305577 (n + 1) - 2 * A006882 (n + 1)

end

end A111308.P9618395422233062690

/-! ## A111308.P13857980292215073054

`A081399(A369626(n+1))`
-/

namespace A111308.P13857980292215073054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A369626 (n + 1)).toNat

end

end A111308.P13857980292215073054

/-! ## A111308.P17149374375357723687

`A070106(A159228(n+3))`
-/

namespace A111308.P17149374375357723687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A159228 (n + 3)).toNat

end

end A111308.P17149374375357723687

/-!
# A111309: Absolute difference between the sum of the odd digits and the sum of the even digits of the n-th prime.

The programs for A111309, the canonical program `A111309.P9636718998780668294` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111309 has offset 1).

The definition of A111309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111309.P9636718998780668294

`abs(∑{digits}[A000040(n+1), #*(-1)^#])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111309

/-- `abs(∑{digits}[A000040(n+1), #*(-1)^#])` -/
def P9636718998780668294.Spec : Prop :=
  ∀ n, P9636718998780668294.a n = A111309 (n + 1)

theorem P9636718998780668294.correct : P9636718998780668294.Spec := by
  intro n
  simp only [A111309, Nat.add_sub_cancel]

end A111309

/-! ## A111309.P18393790563040813115

`abs(A104260(n+1)-A104261(n+1))`
-/

namespace A111309.P18393790563040813115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104260 (n + 1) - A104261 (n + 1)|

end

end A111309.P18393790563040813115

namespace A111309

/-- `abs(A104260(n+1)-A104261(n+1))` -/
def P18393790563040813115.Spec : Prop :=
  ∀ n, P18393790563040813115.a n = A111309 (n + 1)

end A111309

/-! ## A111309.P3423013670108960673

`abs(A071650(Δ[A007504(n)]))`
-/

namespace A111309.P3423013670108960673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (f1 (n + 1) - f1 n).toNat|

end

end A111309.P3423013670108960673

namespace A111309

/-- `abs(A071650(Δ[A007504(n)]))` -/
def P3423013670108960673.Spec : Prop :=
  ∀ n, P3423013670108960673.a n = A111309 (n + 1)

end A111309

/-! ## A111309.P5866410504893195268

`abs(A071650(record[A051698(n)]))`
-/

namespace A111309.P5866410504893195268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A111309.P5866410504893195268

namespace A111309

/-- `abs(A071650(record[A051698(n)]))` -/
def P5866410504893195268.Spec : Prop :=
  ∀ n, P5866410504893195268.a n = A111309 (n + 1)

end A111309

/-! ## A111309.P18385230637372948469

`abs(A071650(A000040(n+1)))`
-/

namespace A111309.P18385230637372948469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A000040 (n + 1)).toNat|

end

end A111309.P18385230637372948469

namespace A111309

/-- `abs(A071650(A000040(n+1)))` -/
def P18385230637372948469.Spec : Prop :=
  ∀ n, P18385230637372948469.a n = A111309 (n + 1)

end A111309

/-! ## A111309.P4964928088621766182

`abs(A071650(eq[1, A003415(n)]))`
-/

namespace A111309.P4964928088621766182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A111309.P4964928088621766182

namespace A111309

/-- `abs(A071650(eq[1, A003415(n)]))` -/
def P4964928088621766182.Spec : Prop :=
  ∀ n, P4964928088621766182.a n = A111309 (n + 1)

end A111309

/-! ## A111309.P9994120535967264641

`abs(A071650(record[A006530(n+2)]))`
-/

namespace A111309.P9994120535967264641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A111309.P9994120535967264641

namespace A111309

/-- `abs(A071650(record[A006530(n+2)]))` -/
def P9994120535967264641.Spec : Prop :=
  ∀ n, P9994120535967264641.a n = A111309 (n + 1)

end A111309

/-! ## A111309.P10856159049905624935

`abs(A071650(record[A014963(n+2)]))`
-/

namespace A111309.P10856159049905624935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A111309.P10856159049905624935

namespace A111309

/-- `abs(A071650(record[A014963(n+2)]))` -/
def P10856159049905624935.Spec : Prop :=
  ∀ n, P10856159049905624935.a n = A111309 (n + 1)

end A111309

/-! ## A111309.P6461062518779756443

`abs(A071650(record[A020639(n+2)]))`
-/

namespace A111309.P6461062518779756443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A111309.P6461062518779756443

namespace A111309

/-- `abs(A071650(record[A020639(n+2)]))` -/
def P6461062518779756443.Spec : Prop :=
  ∀ n, P6461062518779756443.a n = A111309 (n + 1)

end A111309

/-!
# A111311: Number of successive primes beginning with n at the first instance.

The programs for A111311, there is no canonical definition to state claims against.
-/

/-! ## A111311.P1656764182204439930

`gcd(A333201(A333230(2*n+5)), A333218(n+1))`
-/

namespace A111311.P1656764182204439930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A333201 (A333230 (2 * n + 5)).toNat) (A333218 (n + 1))

end

end A111311.P1656764182204439930

/-! ## A111311.P10503128925658316046

`gcd(A002186(n), A014342(A295957(n)))`
-/

namespace A111311.P10503128925658316046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002186 n) (A014342 (A295957 n).toNat)

end

end A111311.P10503128925658316046

/-! ## A111311.P638157841530269380

`gcd(A213851(n+5), A304125(A213854(n+4)))`
-/

namespace A111311.P638157841530269380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213851 (n + 5)) (A304125 (A213854 (n + 4)).toNat)

end

end A111311.P638157841530269380

/-! ## A111311.P5175207052216015848

`gcd(A010304(n), A010403(n+3))`
-/

namespace A111311.P5175207052216015848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010304 n) (A010403 (n + 3))

end

end A111311.P5175207052216015848

/-! ## A111311.P2334266235757343523

`gcd(A014342(A365044(n)), A374633(n+1))`
-/

namespace A111311.P2334266235757343523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014342 (A365044 n).toNat) (A374633 (n + 1))

end

end A111311.P2334266235757343523

/-!
# A111312: Numbers n such that 11*n + 2 is prime.

The programs for A111312, the canonical program `A111312.P7205974306783462108` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111312 has offset 1).

The definition of A111312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111312.P7205974306783462108

`A106690(n+1)-9`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111312

/-- `A106690(n+1)-9` -/
def P7205974306783462108.Spec : Prop :=
  ∀ n, P7205974306783462108.a n = A111312 (n + 1)

theorem P7205974306783462108.correct : P7205974306783462108.Spec := by
  intro n
  simp only [A111312, Nat.add_sub_cancel]

end A111312

/-! ## A111312.P5847942094991040617

`round(p?[a(n-1)+11]/11)` with `a(0)=10, a(1)=2`
-/

namespace A111312.P5847942094991040617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 2] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11)

end

end A111312.P5847942094991040617

namespace A111312

/-- `round(p?[a(n-1)+11]/11)` -/
def P5847942094991040617.Spec : Prop :=
  ∀ n, P5847942094991040617.a n = A111312 (n + 1)

end A111312

/-! ## A111312.P5566466368556837104

`ceil(p?[a(n-1)+11]/11)-1` with `a(0)=6, a(1)=2`
-/

namespace A111312.P5566466368556837104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ - 1

end

end A111312.P5566466368556837104

namespace A111312

/-- `ceil(p?[a(n-1)+11]/11)-1` -/
def P5566466368556837104.Spec : Prop :=
  ∀ n, P5566466368556837104.a n = A111312 (n + 1)

theorem P5566466368556837104.correct : P5566466368556837104.Spec := by
  intro n
  simp only [A111312, Nat.add_sub_cancel, A111312.P5566466368556837104.f1, A111312.P5566466368556837104.a, A111312.P7205974306783462108.a, A106690, A106690.P4249036395545775294.f1, A106690.P4249036395545775294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111312

/-! ## A111312.P2281659691028310605

`A023451(A106690(n+1))`
-/

namespace A111312.P2281659691028310605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A106690 (n + 1)).toNat

end

end A111312.P2281659691028310605

namespace A111312

/-- `A023451(A106690(n+1))` -/
def P2281659691028310605.Spec : Prop :=
  ∀ n, P2281659691028310605.a n = A111312 (n + 1)

end A111312

/-! ## A111312.P7065813418251483450

`A023452(A106690(n+1)+1)`
-/

namespace A111312.P7065813418251483450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A106690 (n + 1) + 1).toNat

end

end A111312.P7065813418251483450

namespace A111312

/-- `A023452(A106690(n+1)+1)` -/
def P7065813418251483450.Spec : Prop :=
  ∀ n, P7065813418251483450.a n = A111312 (n + 1)

end A111312

/-! ## A111312.P12774905976011190078

`eq[1, A001222(11*n+2)]`
-/

namespace A111312.P12774905976011190078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111312.P12774905976011190078

namespace A111312

/-- `eq[1, A001222(11*n+2)]` -/
def P12774905976011190078.Spec : Prop :=
  ∀ n, (P12774905976011190078.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P3717460976179009588

`eq[2, A000005(11*n+2)]`
-/

namespace A111312.P3717460976179009588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111312.P3717460976179009588

namespace A111312

/-- `eq[2, A000005(11*n+2)]` -/
def P3717460976179009588.Spec : Prop :=
  ∀ n, (P3717460976179009588.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P2662624935835719662

`lt[2*n, A020639(11*n+2)]`
-/

namespace A111312.P2662624935835719662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111312.P2662624935835719662

namespace A111312

/-- `lt[2*n, A020639(11*n+2)]` -/
def P2662624935835719662.Spec : Prop :=
  ∀ n, (P2662624935835719662.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P15506093292807647437

`lt[A001222(10*n+n+2)+1, 3]`
-/

namespace A111312.P15506093292807647437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + (n + 2)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111312.P15506093292807647437

namespace A111312

/-- `lt[A001222(10*n+n+2)+1, 3]` -/
def P15506093292807647437.Spec : Prop :=
  ∀ n, (P15506093292807647437.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P2980668883924941791

`lt[A000005(5*(2*n+1)+n-3), 3]`
-/

namespace A111312.P2980668883924941791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((5 * (2 * n + 1) : ℤ) + ((n : ℤ) - 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111312.P2980668883924941791

namespace A111312

/-- `lt[A000005(5*(2*n+1)+n-3), 3]` -/
def P2980668883924941791.Spec : Prop :=
  ∀ n, (P2980668883924941791.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P3307660118334973138

`eq[1, A010051(A017413(n))]`
-/

namespace A111312.P3307660118334973138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A017413 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111312.P3307660118334973138

namespace A111312

/-- `eq[1, A010051(A017413(n))]` -/
def P3307660118334973138.Spec : Prop :=
  ∀ n, (P3307660118334973138.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P13295398457879727613

`eq[1, A010051(A008593(n)+2)]`
-/

namespace A111312.P13295398457879727613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008593 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111312.P13295398457879727613

namespace A111312

/-- `eq[1, A010051(A008593(n)+2)]` -/
def P13295398457879727613.Spec : Prop :=
  ∀ n, (P13295398457879727613.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P5309883893603212409

`eq[A000010(A017413(n)), A017401(n)]`
-/

namespace A111312.P5309883893603212409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017413 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111312.P5309883893603212409

namespace A111312

/-- `eq[A000010(A017413(n)), A017401(n)]` -/
def P5309883893603212409.Spec : Prop :=
  ∀ n, (P5309883893603212409.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P1993743453511356071

`eq[A000010(A017401(n)+1), A017401(n)]`
-/

namespace A111312.P1993743453511356071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017401 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111312.P1993743453511356071

namespace A111312

/-- `eq[A000010(A017401(n)+1), A017401(n)]` -/
def P1993743453511356071.Spec : Prop :=
  ∀ n, (P1993743453511356071.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P10410219805893982360

`lt[A008593(n), A000010(A008593(n)+2)]`
-/

namespace A111312.P10410219805893982360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008593 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111312.P10410219805893982360

namespace A111312

/-- `lt[A008593(n), A000010(A008593(n)+2)]` -/
def P10410219805893982360.Spec : Prop :=
  ∀ n, (P10410219805893982360.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P15688374650456324128

`lt[A000203(A017437(n)-2), A017437(n)]`
-/

namespace A111312.P15688374650456324128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111312.P15688374650456324128

namespace A111312

/-- `lt[A000203(A017437(n)-2), A017437(n)]` -/
def P15688374650456324128.Spec : Prop :=
  ∀ n, (P15688374650456324128.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P13652019389660957194

`lt[A001222(4*(11*n+2)), 4]`
-/

namespace A111312.P13652019389660957194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (11 * n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111312.P13652019389660957194

namespace A111312

/-- `lt[A001222(4*(11*n+2)), 4]` -/
def P13652019389660957194.Spec : Prop :=
  ∀ n, (P13652019389660957194.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P7533902331584478736

`lt[n, A014963(11*n+2)]`
-/

namespace A111312.P7533902331584478736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (11 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111312.P7533902331584478736

namespace A111312

/-- `lt[n, A014963(11*n+2)]` -/
def P7533902331584478736.Spec : Prop :=
  ∀ n, (P7533902331584478736.a n : ℤ) = A111312 (n + 1)

end A111312

/-! ## A111312.P11702327372343089808

`A262115(p?[A017413(n)])`
-/

namespace A111312.P11702327372343089808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111312.P11702327372343089808

namespace A111312

/-- `A262115(p?[A017413(n)])` -/
def P11702327372343089808.Spec : Prop :=
  ∀ n, P11702327372343089808.a n = A111312 (n + 1)

end A111312

/-! ## A111312.P12185122641541670862

`A079483(A090187(n+1))`
-/

namespace A111312.P12185122641541670862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079483 (A090187 (n + 1)).toNat

end

end A111312.P12185122641541670862

namespace A111312

/-- `A079483(A090187(n+1))` -/
def P12185122641541670862.Spec : Prop :=
  ∀ n, P12185122641541670862.a n = A111312 (n + 1)

end A111312

/-!
# A111314: a(n) = a(n-1) + a(n-2) + 2 where a(0) = a(1) = 1.

The programs for A111314, the canonical program `A111314.P12517068158908780936` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111314 has offset 0).

The definition of A111314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2` (program `A111314.P12517068158908780936`, by `A111314.P12517068158908780936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111314.P12517068158908780936

`a(n-1)+a(n-2)+2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111314

/-- `a(n-1)+a(n-2)+2` -/
def P12517068158908780936.Spec : Prop :=
  ∀ n, (P12517068158908780936.a n : ℤ) = A111314 n

theorem P12517068158908780936.correct : P12517068158908780936.Spec := by
  intro n
  simp only [A111314]

end A111314

/-! ## A111314.P14040221406924532106

`3*A000045(n+1)-2`
-/

namespace A111314.P14040221406924532106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 1) - 2

end

end A111314.P14040221406924532106

namespace A111314

/-- `3*A000045(n+1)-2` -/
def P14040221406924532106.Spec : Prop :=
  ∀ n, P14040221406924532106.a n = A111314 n

end A111314

/-! ## A111314.P9229568383847989573

`ogf((1-x+2x^2)/(1-2x+x^3))`
-/

namespace A111314.P9229568383847989573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -2, 0, 1] n

end

end A111314.P9229568383847989573

namespace A111314

/-- `ogf((1-x+2x^2)/(1-2x+x^3))` -/
def P9229568383847989573.Spec : Prop :=
  ∀ n, P9229568383847989573.a n = A111314 n

end A111314

/-! ## A111314.P9485497114020104548

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A111314.P9485497114020104548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A111314.P9485497114020104548

namespace A111314

/-- `2*a(n-1)-a(n-3)` -/
def P9485497114020104548.Spec : Prop :=
  ∀ n, P9485497114020104548.a n = A111314 n

end A111314

/-! ## A111314.P16690755772091202056

`3-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A111314.P16690755772091202056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - (1 - a (n - 1) - a (n - 2))

end

end A111314.P16690755772091202056

namespace A111314

/-- `3-floor(1-a(n-1)-a(n-2))` -/
def P16690755772091202056.Spec : Prop :=
  ∀ n, P16690755772091202056.a n = A111314 n

end A111314

/-! ## A111314.P8239137193785545504

`4-(4/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A111314.P8239137193785545504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A111314.P8239137193785545504

namespace A111314

/-- `4-(4/2-a(n-1)-a(n-2))` -/
def P8239137193785545504.Spec : Prop :=
  ∀ n, P8239137193785545504.a n = (A111314 n : ℚ)

end A111314

/-! ## A111314.P5423580073028944740

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A111314.P5423580073028944740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111314.P5423580073028944740

namespace A111314

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P5423580073028944740.Spec : Prop :=
  ∀ n, P5423580073028944740.a n = A111314 n

end A111314

/-! ## A111314.P5898530454431808073

`3-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A111314.P5898530454431808073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A111314.P5898530454431808073

namespace A111314

/-- `3-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P5898530454431808073.Spec : Prop :=
  ∀ n, P5898530454431808073.a n = A111314 n

end A111314

/-! ## A111314.P1755083376243230875

`a(n-1)-(gcd(3, a(n-1))-3-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A111314.P1755083376243230875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - ((Int.gcd 3 (a (n - 1)) : ℤ) - 3 - a (n - 2))

end

end A111314.P1755083376243230875

namespace A111314

/-- `a(n-1)-(gcd(3, a(n-1))-3-a(n-2))` -/
def P1755083376243230875.Spec : Prop :=
  ∀ n, P1755083376243230875.a n = A111314 n

end A111314

/-! ## A111314.P10364511015437776801

`A377628(n)-1`
-/

namespace A111314.P10364511015437776801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n - 1

end

end A111314.P10364511015437776801

namespace A111314

/-- `A377628(n)-1` -/
def P10364511015437776801.Spec : Prop :=
  ∀ n, P10364511015437776801.a n = A111314 n

end A111314

/-! ## A111314.P9581831762617415315

`A192967(n)+n`
-/

namespace A111314.P9581831762617415315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + (n : ℤ)

end

end A111314.P9581831762617415315

namespace A111314

/-- `A192967(n)+n` -/
def P9581831762617415315.Spec : Prop :=
  ∀ n, P9581831762617415315.a n = A111314 n

end A111314

/-! ## A111314.P13403519098813363649

`A022086(n+1)-2`
-/

namespace A111314.P13403519098813363649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 1) - 2

end

end A111314.P13403519098813363649

namespace A111314

/-- `A022086(n+1)-2` -/
def P13403519098813363649.Spec : Prop :=
  ∀ n, P13403519098813363649.a n = A111314 n

end A111314

/-! ## A111314.P13983180647277488631

`A097135(n+1)-2`
-/

namespace A111314.P13983180647277488631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (n + 1) - 2

end

end A111314.P13983180647277488631

namespace A111314

/-- `A097135(n+1)-2` -/
def P13983180647277488631.Spec : Prop :=
  ∀ n, P13983180647277488631.a n = A111314 n

end A111314

/-! ## A111314.P17607283255523205960

`A187893(n+1)-3`
-/

namespace A111314.P17607283255523205960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (n + 1) - 3

end

end A111314.P17607283255523205960

namespace A111314

/-- `A187893(n+1)-3` -/
def P17607283255523205960.Spec : Prop :=
  ∀ n, P17607283255523205960.a n = A111314 n

end A111314

/-! ## A111314.P17561875205510798383

`3*A000071(n+1)+1`
-/

namespace A111314.P17561875205510798383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000071 (n + 1) + 1

end

end A111314.P17561875205510798383

namespace A111314

/-- `3*A000071(n+1)+1` -/
def P17561875205510798383.Spec : Prop :=
  ∀ n, P17561875205510798383.a n = A111314 n

end A111314

/-! ## A111314.P2519771629711008533

`∑[3*Δ[A000045(n)]]-2`
-/

namespace A111314.P2519771629711008533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A111314.P2519771629711008533

namespace A111314

/-- `∑[3*Δ[A000045(n)]]-2` -/
def P2519771629711008533.Spec : Prop :=
  ∀ n, P2519771629711008533.a n = A111314 n

end A111314

/-! ## A111314.P12867358122332208785

`A212804(n)+A001911(n)`
-/

namespace A111314.P12867358122332208785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A001911 n

end

end A111314.P12867358122332208785

namespace A111314

/-- `A212804(n)+A001911(n)` -/
def P12867358122332208785.Spec : Prop :=
  ∀ n, P12867358122332208785.a n = A111314 n

end A111314

/-! ## A111314.P18035162411455291974

`A295735(n)+A027383(n)`
-/

namespace A111314.P18035162411455291974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + A027383 n

end

end A111314.P18035162411455291974

namespace A111314

/-- `A295735(n)+A027383(n)` -/
def P18035162411455291974.Spec : Prop :=
  ∀ n, P18035162411455291974.a n = A111314 n

end A111314

/-! ## A111314.P862448395607383778

`A014739(n)-A000045(n)`
-/

namespace A111314.P862448395607383778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n - A000045 n

end

end A111314.P862448395607383778

namespace A111314

/-- `A014739(n)-A000045(n)` -/
def P862448395607383778.Spec : Prop :=
  ∀ n, P862448395607383778.a n = A111314 n

end A111314

/-! ## A111314.P10059361691356224636

`A131326(n)-A010673(n)`
-/

namespace A111314.P10059361691356224636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131326 n - A010673 n

end

end A111314.P10059361691356224636

namespace A111314

/-- `A131326(n)-A010673(n)` -/
def P10059361691356224636.Spec : Prop :=
  ∀ n, P10059361691356224636.a n = A111314 n

end A111314

/-!
# A111316: a(n) = A109890(A111315(n)).

The programs for A111316, there is no canonical definition to state claims against.
-/

/-! ## A111316.P10203133689151549699

`A109890(A111315(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111316.P10203133689151549699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (A111315 (n + 1)).toNat

end

end A111316.P10203133689151549699

/-! ## A111316.P13801767846244644719

`A109735(A111315(n+1)-1)`
-/

namespace A111316.P13801767846244644719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109735 (A111315 (n + 1) - 1).toNat

end

end A111316.P13801767846244644719

/-!
# A111317: Let f(a,q) = Product_{j>=0} (1 - a*q^j); g.f. is f(q^2,q^3) / f(q,q^3).

The programs for A111317, there is no canonical definition to state claims against.
-/

/-! ## A111317.P2481822355194342912

`A303903(A028242(n)%A141463(n+1))`
-/

namespace A111317.P2481822355194342912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 (Int.tmod (A028242 n) (A141463 (n + 1))).toNat

end

end A111317.P2481822355194342912

/-! ## A111317.P6253836360973361894

`A303903(A028242(n)%A016777(A020992(n)))`
-/

namespace A111317.P6253836360973361894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 (Int.tmod (A028242 n) (A016777 (A020992 n).toNat)).toNat

end

end A111317.P6253836360973361894

/-! ## A111317.P8836829926062805609

`A303903(A028242(n))+A204843(A086324(n+1))`
-/

namespace A111317.P8836829926062805609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 (A028242 n).toNat + A204843 (A086324 (n + 1)).toNat

end

end A111317.P8836829926062805609

/-! ## A111317.P18153289627573550468

`A176971(ceil(xor(1, n)/2))^(C(n, 4)+n)`
-/

namespace A111317.P18153289627573550468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat ^ (Nat.choose n 4 + n)

end

end A111317.P18153289627573550468

/-! ## A111317.P10422966067903940153

`A270885(A130377(n)*A220524(n+1))`
-/

namespace A111317.P10422966067903940153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270885 (A130377 n * A220524 (n + 1)).toNat

end

end A111317.P10422966067903940153

/-!
# A111318: Numbers k such that 4 divides prime(1) + ... + prime(k).

The programs for A111318, the canonical program `A111318.P8066523825878989134` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111318 has offset 1).

The definition of A111318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111318.P3252768380904193032

`eq[4, gcd(4, A007504(n+1))]+1`
-/

namespace A111318.P3252768380904193032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111318.P3252768380904193032

namespace A111318

/-- `eq[4, gcd(4, A007504(n+1))]+1` -/
def P3252768380904193032.Spec : Prop :=
  ∀ n, (P3252768380904193032.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P11104859687125286195

`eq[and(1, n+1), and(2, A007504(n))]`
-/

namespace A111318.P11104859687125286195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A007504 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111318.P11104859687125286195

namespace A111318

/-- `eq[and(1, n+1), and(2, A007504(n))]` -/
def P11104859687125286195.Spec : Prop :=
  ∀ n, (P11104859687125286195.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P8066523825878989134

`eq[2, A038698(n+1)%4]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111318

/-- `eq[2, A038698(n+1)%4]+1` -/
def P8066523825878989134.Spec : Prop :=
  ∀ n, (P8066523825878989134.a n : ℤ) = A111318 (n + 1)

theorem P8066523825878989134.correct : P8066523825878989134.Spec := by
  intro n
  simp only [A111318, Nat.add_sub_cancel]

end A111318

/-! ## A111318.P433565744939896027

`eq[1, (A014284(n+1)-4)%4]`
-/

namespace A111318.P433565744939896027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014284 (n + 1) - 4) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111318.P433565744939896027

namespace A111318

/-- `eq[1, (A014284(n+1)-4)%4]` -/
def P433565744939896027.Spec : Prop :=
  ∀ n, (P433565744939896027.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P15483692347323697967

`eq[and(2, n), A215030(n+1)]+1`
-/

namespace A111318.P15483692347323697967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111318.P15483692347323697967

namespace A111318

/-- `eq[and(2, n), A215030(n+1)]+1` -/
def P15483692347323697967.Spec : Prop :=
  ∀ n, (P15483692347323697967.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P16399239340266148661

`lt[∑[A040976(n+1)+2]%4, 1]+1`
-/

namespace A111318.P16399239340266148661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A111318.P16399239340266148661

namespace A111318

/-- `lt[∑[A040976(n+1)+2]%4, 1]+1` -/
def P16399239340266148661.Spec : Prop :=
  ∀ n, (P16399239340266148661.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P1455271666213382382

`eq[A000007(n), A272356(n)]`
-/

namespace A111318.P1455271666213382382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P1455271666213382382

namespace A111318

/-- `eq[A000007(n), A272356(n)]` -/
def P1455271666213382382.Spec : Prop :=
  ∀ n, (P1455271666213382382.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P4939043218824808321

`eq[A000038(n), A272356(n)]`
-/

namespace A111318.P4939043218824808321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P4939043218824808321

namespace A111318

/-- `eq[A000038(n), A272356(n)]` -/
def P4939043218824808321.Spec : Prop :=
  ∀ n, (P4939043218824808321.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P7413346798775168488

`eq[A027656(n), A272356(n)]`
-/

namespace A111318.P7413346798775168488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P7413346798775168488

namespace A111318

/-- `eq[A027656(n), A272356(n)]` -/
def P7413346798775168488.Spec : Prop :=
  ∀ n, (P7413346798775168488.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P7412354768538185690

`eq[A089798(n), A272356(n)]`
-/

namespace A111318.P7412354768538185690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P7412354768538185690

namespace A111318

/-- `eq[A089798(n), A272356(n)]` -/
def P7412354768538185690.Spec : Prop :=
  ∀ n, (P7412354768538185690.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P4949620744343659612

`eq[A089800(n), A272356(n)]`
-/

namespace A111318.P4949620744343659612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P4949620744343659612

namespace A111318

/-- `eq[A089800(n), A272356(n)]` -/
def P4949620744343659612.Spec : Prop :=
  ∀ n, (P4949620744343659612.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P171593634155524706

`eq[A115634(n), A272356(n)]`
-/

namespace A111318.P171593634155524706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P171593634155524706

namespace A111318

/-- `eq[A115634(n), A272356(n)]` -/
def P171593634155524706.Spec : Prop :=
  ∀ n, (P171593634155524706.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P7116146517520094733

`eq[A130779(n), A272356(n)]`
-/

namespace A111318.P7116146517520094733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P7116146517520094733

namespace A111318

/-- `eq[A130779(n), A272356(n)]` -/
def P7116146517520094733.Spec : Prop :=
  ∀ n, (P7116146517520094733.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P5108288189997016490

`eq[A091085(n), A340867(n)]`
-/

namespace A111318.P5108288189997016490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P5108288189997016490

namespace A111318

/-- `eq[A091085(n), A340867(n)]` -/
def P5108288189997016490.Spec : Prop :=
  ∀ n, (P5108288189997016490.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P11772989646821701173

`eq[A167858(n), A272356(n)]`
-/

namespace A111318.P11772989646821701173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P11772989646821701173

namespace A111318

/-- `eq[A167858(n), A272356(n)]` -/
def P11772989646821701173.Spec : Prop :=
  ∀ n, (P11772989646821701173.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P17606784445035512486

`eq[A167891(n), A272356(n)]`
-/

namespace A111318.P17606784445035512486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P17606784445035512486

namespace A111318

/-- `eq[A167891(n), A272356(n)]` -/
def P17606784445035512486.Spec : Prop :=
  ∀ n, (P17606784445035512486.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P15261414622541684005

`eq[A169585(n), A272356(n)]`
-/

namespace A111318.P15261414622541684005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P15261414622541684005

namespace A111318

/-- `eq[A169585(n), A272356(n)]` -/
def P15261414622541684005.Spec : Prop :=
  ∀ n, (P15261414622541684005.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P17360305054531781542

`eq[A176742(n), A272356(n)]`
-/

namespace A111318.P17360305054531781542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P17360305054531781542

namespace A111318

/-- `eq[A176742(n), A272356(n)]` -/
def P17360305054531781542.Spec : Prop :=
  ∀ n, (P17360305054531781542.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P2506020149958277194

`eq[A231772(n), A272356(n)]`
-/

namespace A111318.P2506020149958277194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P2506020149958277194

namespace A111318

/-- `eq[A231772(n), A272356(n)]` -/
def P2506020149958277194.Spec : Prop :=
  ∀ n, (P2506020149958277194.a n : ℤ) = A111318 (n + 1)

end A111318

/-! ## A111318.P16695031112515750911

`eq[A272356(n), A285982(n)]`
-/

namespace A111318.P16695031112515750911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111318.P16695031112515750911

namespace A111318

/-- `eq[A272356(n), A285982(n)]` -/
def P16695031112515750911.Spec : Prop :=
  ∀ n, (P16695031112515750911.a n : ℤ) = A111318 (n + 1)

end A111318

/-!
# A111319: Numbers k such that 5 divides prime(1) + ... + prime(k).

The programs for A111319, the canonical program `A111319.P8319744077221751074` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111319 has offset 1).

The definition of A111319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111319.P8319744077221751074

`comp[n^gcd(5, A007504(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111319

/-- `comp[n^gcd(5, A007504(n))]` -/
def P8319744077221751074.Spec : Prop :=
  ∀ n, (P8319744077221751074.a n : ℤ) = A111319 (n + 1)

theorem P8319744077221751074.correct : P8319744077221751074.Spec := by
  intro n
  simp only [A111319, Nat.add_sub_cancel]

end A111319

/-! ## A111319.P14131557953259318089

`eq[A007504(n)%5, A000007(n)]`
-/

namespace A111319.P14131557953259318089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111319.P14131557953259318089

namespace A111319

/-- `eq[A007504(n)%5, A000007(n)]` -/
def P14131557953259318089.Spec : Prop :=
  ∀ n, (P14131557953259318089.a n : ℤ) = A111319 (n + 1)

end A111319

/-! ## A111319.P17066851931930737745

`eq[A262392(n)%5, A158478(n)]`
-/

namespace A111319.P17066851931930737745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262392 n) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111319.P17066851931930737745

namespace A111319

/-- `eq[A262392(n)%5, A158478(n)]` -/
def P17066851931930737745.Spec : Prop :=
  ∀ n, (P17066851931930737745.a n : ℤ) = A111319 (n + 1)

end A111319

/-! ## A111319.P11741749029247594765

`eq[A014284(n+1)%5, A057427(n)]`
-/

namespace A111319.P11741749029247594765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014284 (n + 1)) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111319.P11741749029247594765

namespace A111319

/-- `eq[A014284(n+1)%5, A057427(n)]` -/
def P11741749029247594765.Spec : Prop :=
  ∀ n, (P11741749029247594765.a n : ℤ) = A111319 (n + 1)

end A111319

/-!
# A111320: Numbers k such that 6 divides prime(1) + ... + prime(k).

The programs for A111320, the canonical program `A111320.P13176253524952530355` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111320 has offset 1).

The definition of A111320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111320.P13176253524952530355

`eq[3, (A007504(n)-3)%6]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111320

/-- `eq[3, (A007504(n)-3)%6]` -/
def P13176253524952530355.Spec : Prop :=
  ∀ n, (P13176253524952530355.a n : ℤ) = A111320 (n + 1)

theorem P13176253524952530355.correct : P13176253524952530355.Spec := by
  intro n
  simp only [A111320, Nat.add_sub_cancel]

end A111320

/-! ## A111320.P10606277166643401350

`eq[6, gcd(6, A007504(n+1))]+1`
-/

namespace A111320.P10606277166643401350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111320.P10606277166643401350

namespace A111320

/-- `eq[6, gcd(6, A007504(n+1))]+1` -/
def P10606277166643401350.Spec : Prop :=
  ∀ n, (P10606277166643401350.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P21205956824888234

`∩[2*n+1, A103208(n+1)]`
-/

namespace A111320.P21205956824888234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P21205956824888234

namespace A111320

/-- `∩[2*n+1, A103208(n+1)]` -/
def P21205956824888234.Spec : Prop :=
  ∀ n, (P21205956824888234.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P9673788503346676022

`∩[A103208(n+1), A296602(n+1)]`
-/

namespace A111320.P9673788503346676022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P9673788503346676022

namespace A111320

/-- `∩[A103208(n+1), A296602(n+1)]` -/
def P9673788503346676022.Spec : Prop :=
  ∀ n, (P9673788503346676022.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P1395863209156043064

`∩[A103208(n+1), A020742(n)]`
-/

namespace A111320.P1395863209156043064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P1395863209156043064

namespace A111320

/-- `∩[A103208(n+1), A020742(n)]` -/
def P1395863209156043064.Spec : Prop :=
  ∀ n, (P1395863209156043064.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P2605598036121938553

`∩[A103208(n+1), A308602(n+3)]`
-/

namespace A111320.P2605598036121938553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308602 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P2605598036121938553

namespace A111320

/-- `∩[A103208(n+1), A308602(n+3)]` -/
def P2605598036121938553.Spec : Prop :=
  ∀ n, (P2605598036121938553.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P2793755885284003178

`∩[A103208(n+1), A004273(n)]`
-/

namespace A111320.P2793755885284003178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P2793755885284003178

namespace A111320

/-- `∩[A103208(n+1), A004273(n)]` -/
def P2793755885284003178.Spec : Prop :=
  ∀ n, (P2793755885284003178.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P9964073184257478533

`∩[A103208(n+1), A062545(n)]`
-/

namespace A111320.P9964073184257478533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P9964073184257478533

namespace A111320

/-- `∩[A103208(n+1), A062545(n)]` -/
def P9964073184257478533.Spec : Prop :=
  ∀ n, (P9964073184257478533.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P12615061596670563043

`∩[A103208(n+1), A130773(n)]`
-/

namespace A111320.P12615061596670563043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P12615061596670563043

namespace A111320

/-- `∩[A103208(n+1), A130773(n)]` -/
def P12615061596670563043.Spec : Prop :=
  ∀ n, (P12615061596670563043.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P14507554570034198103

`∩[A103208(n+1), A223134(n)]`
-/

namespace A111320.P14507554570034198103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P14507554570034198103

namespace A111320

/-- `∩[A103208(n+1), A223134(n)]` -/
def P14507554570034198103.Spec : Prop :=
  ∀ n, (P14507554570034198103.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P8737746210541775254

`∩[A103208(n+1), A326494(n)]`
-/

namespace A111320.P8737746210541775254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P8737746210541775254

namespace A111320

/-- `∩[A103208(n+1), A326494(n)]` -/
def P8737746210541775254.Spec : Prop :=
  ∀ n, (P8737746210541775254.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P54710959692282499

`∩[A103208(n+1), A140139(n+1)]`
-/

namespace A111320.P54710959692282499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P54710959692282499

namespace A111320

/-- `∩[A103208(n+1), A140139(n+1)]` -/
def P54710959692282499.Spec : Prop :=
  ∀ n, (P54710959692282499.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P15388908735816864187

`∩[A103208(n+1), A144396(n+1)]`
-/

namespace A111320.P15388908735816864187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P15388908735816864187

namespace A111320

/-- `∩[A103208(n+1), A144396(n+1)]` -/
def P15388908735816864187.Spec : Prop :=
  ∀ n, (P15388908735816864187.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P5295096052613482528

`∩[A103208(n+1), A004274(n)]`
-/

namespace A111320.P5295096052613482528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P5295096052613482528

namespace A111320

/-- `∩[A103208(n+1), A004274(n)]` -/
def P5295096052613482528.Spec : Prop :=
  ∀ n, (P5295096052613482528.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P3525234957646117216

`∩[A103208(n+1), A004276(n)]`
-/

namespace A111320.P3525234957646117216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P3525234957646117216

namespace A111320

/-- `∩[A103208(n+1), A004276(n)]` -/
def P3525234957646117216.Spec : Prop :=
  ∀ n, (P3525234957646117216.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P11339250013207778527

`∩[A103208(n+1), A004281(n)]`
-/

namespace A111320.P11339250013207778527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P11339250013207778527

namespace A111320

/-- `∩[A103208(n+1), A004281(n)]` -/
def P11339250013207778527.Spec : Prop :=
  ∀ n, (P11339250013207778527.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P609441900990568620

`∩[A103208(n+1), A060747(n)]`
-/

namespace A111320.P609441900990568620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P609441900990568620

namespace A111320

/-- `∩[A103208(n+1), A060747(n)]` -/
def P609441900990568620.Spec : Prop :=
  ∀ n, (P609441900990568620.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P9415358040550107836

`∩[A103208(n+1), A163985(n)]`
-/

namespace A111320.P9415358040550107836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111320.P9415358040550107836

namespace A111320

/-- `∩[A103208(n+1), A163985(n)]` -/
def P9415358040550107836.Spec : Prop :=
  ∀ n, (P9415358040550107836.a n : ℤ) = A111320 (n + 1)

end A111320

/-! ## A111320.P14849845991649987936

`filter[A103208(n+1), A000035(#)]`
-/

namespace A111320.P14849845991649987936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A111320.P14849845991649987936

namespace A111320

/-- `filter[A103208(n+1), A000035(#)]` -/
def P14849845991649987936.Spec : Prop :=
  ∀ n, P14849845991649987936.a n = A111320 (n + 1)

end A111320

/-! ## A111320.P7059856396929115093

`filter[A103208(n+1), A266070(#)]`
-/

namespace A111320.P7059856396929115093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A111320.P7059856396929115093

namespace A111320

/-- `filter[A103208(n+1), A266070(#)]` -/
def P7059856396929115093.Spec : Prop :=
  ∀ n, P7059856396929115093.a n = A111320 (n + 1)

end A111320

/-!
# A111321: Numbers k such that 7 divides prime(1) + ... + prime(k).

The programs for A111321, the canonical program `A111321.P11993108395501146979` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111321 has offset 1).

The definition of A111321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111321.P11993108395501146979

`eq[7, gcd(7, A007504(n+1))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111321

/-- `eq[7, gcd(7, A007504(n+1))]+1` -/
def P11993108395501146979.Spec : Prop :=
  ∀ n, (P11993108395501146979.a n : ℤ) = A111321 (n + 1)

theorem P11993108395501146979.correct : P11993108395501146979.Spec := by
  intro n
  simp only [A111321, Nat.add_sub_cancel]

end A111321

/-! ## A111321.P13832338666370314609

`eq[A007504(n)%7, A000007(n)]`
-/

namespace A111321.P13832338666370314609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111321.P13832338666370314609

namespace A111321

/-- `eq[A007504(n)%7, A000007(n)]` -/
def P13832338666370314609.Spec : Prop :=
  ∀ n, (P13832338666370314609.a n : ℤ) = A111321 (n + 1)

end A111321

/-! ## A111321.P13993981388509418473

`eq[A262392(n)%7, A158478(n)]`
-/

namespace A111321.P13993981388509418473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262392 n) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111321.P13993981388509418473

namespace A111321

/-- `eq[A262392(n)%7, A158478(n)]` -/
def P13993981388509418473.Spec : Prop :=
  ∀ n, (P13993981388509418473.a n : ℤ) = A111321 (n + 1)

end A111321

/-! ## A111321.P15692902137184912034

`eq[A014284(n+1)%7, A057427(n)]`
-/

namespace A111321.P15692902137184912034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014284 (n + 1)) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111321.P15692902137184912034

namespace A111321

/-- `eq[A014284(n+1)%7, A057427(n)]` -/
def P15692902137184912034.Spec : Prop :=
  ∀ n, (P15692902137184912034.a n : ℤ) = A111321 (n + 1)

end A111321

/-!
# A111322: Numbers k such that 8 divides prime(1) + ... + prime(k).

The programs for A111322, the canonical program `A111322.P16638155972908692796` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111322 has offset 1).

The definition of A111322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111322.P16638155972908692796

`eq[8, gcd(8, A007504(n+1))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111322

/-- `eq[8, gcd(8, A007504(n+1))]+1` -/
def P16638155972908692796.Spec : Prop :=
  ∀ n, (P16638155972908692796.a n : ℤ) = A111322 (n + 1)

theorem P16638155972908692796.correct : P16638155972908692796.Spec := by
  intro n
  simp only [A111322, Nat.add_sub_cancel]

end A111322

/-! ## A111322.P13653884813406385116

`eq[and(1, n+1), and(6, A007504(n))]`
-/

namespace A111322.P13653884813406385116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A007504 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111322.P13653884813406385116

namespace A111322

/-- `eq[and(1, n+1), and(6, A007504(n))]` -/
def P13653884813406385116.Spec : Prop :=
  ∀ n, (P13653884813406385116.a n : ℤ) = A111322 (n + 1)

end A111322

/-! ## A111322.P15859682801461141018

`eq[1, and(7, A143215(n+1))]`
-/

namespace A111322.P15859682801461141018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A143215 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111322.P15859682801461141018

namespace A111322

/-- `eq[1, and(7, A143215(n+1))]` -/
def P15859682801461141018.Spec : Prop :=
  ∀ n, (P15859682801461141018.a n : ℤ) = A111322 (n + 1)

end A111322

/-! ## A111322.P14942151625189861938

`eq[A007504(n)%8, A000007(n)]`
-/

namespace A111322.P14942151625189861938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111322.P14942151625189861938

namespace A111322

/-- `eq[A007504(n)%8, A000007(n)]` -/
def P14942151625189861938.Spec : Prop :=
  ∀ n, (P14942151625189861938.a n : ℤ) = A111322 (n + 1)

end A111322

/-! ## A111322.P4822985390328231405

`eq[and(6, A007504(n)), A166586(n+1)]`
-/

namespace A111322.P4822985390328231405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A007504 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111322.P4822985390328231405

namespace A111322

/-- `eq[and(6, A007504(n)), A166586(n+1)]` -/
def P4822985390328231405.Spec : Prop :=
  ∀ n, (P4822985390328231405.a n : ℤ) = A111322 (n + 1)

end A111322

/-! ## A111322.P17816356283737244694

`eq[8, gcd(8, A007504(A000007(n)+n))]`
-/

namespace A111322.P17816356283737244694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A007504 (A000007 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111322.P17816356283737244694

namespace A111322

/-- `eq[8, gcd(8, A007504(A000007(n)+n))]` -/
def P17816356283737244694.Spec : Prop :=
  ∀ n, (P17816356283737244694.a n : ℤ) = A111322 (n + 1)

end A111322

/-!
# A111323: Numbers k such that 9 divides prime(1) + ... + prime(k).

The programs for A111323, the canonical program `A111323.P1048443084486664615` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111323 has offset 1).

The definition of A111323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111323.P1048443084486664615

`lt[8, dr(A007504(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111323

/-- `lt[8, dr(A007504(n))]` -/
def P1048443084486664615.Spec : Prop :=
  ∀ n, (P1048443084486664615.a n : ℤ) = A111323 (n + 1)

theorem P1048443084486664615.correct : P1048443084486664615.Spec := by
  intro n
  simp only [A111323, Nat.add_sub_cancel]

end A111323

/-! ## A111323.P11388061919373794803

`eq[9, A283556(n)]`
-/

namespace A111323.P11388061919373794803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111323.P11388061919373794803

namespace A111323

/-- `eq[9, A283556(n)]` -/
def P11388061919373794803.Spec : Prop :=
  ∀ n, (P11388061919373794803.a n : ℤ) = A111323 (n + 1)

end A111323

/-! ## A111323.P17729869622185901383

`eq[9, dr(A051351(n))]`
-/

namespace A111323.P17729869622185901383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051351 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111323.P17729869622185901383

namespace A111323

/-- `eq[9, dr(A051351(n))]` -/
def P17729869622185901383.Spec : Prop :=
  ∀ n, (P17729869622185901383.a n : ℤ) = A111323 (n + 1)

end A111323

/-! ## A111323.P15456554469946939986

`eq[9, dr(A014284(n+1)-1)]`
-/

namespace A111323.P15456554469946939986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014284 (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111323.P15456554469946939986

namespace A111323

/-- `eq[9, dr(A014284(n+1)-1)]` -/
def P15456554469946939986.Spec : Prop :=
  ∀ n, (P15456554469946939986.a n : ℤ) = A111323 (n + 1)

end A111323

/-! ## A111323.P8237077549083167787

`eq[9, dr(A036439(n+1)-2)]`
-/

namespace A111323.P8237077549083167787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A036439 (n + 1) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111323.P8237077549083167787

namespace A111323

/-- `eq[9, dr(A036439(n+1)-2)]` -/
def P8237077549083167787.Spec : Prop :=
  ∀ n, (P8237077549083167787.a n : ℤ) = A111323 (n + 1)

end A111323

/-! ## A111323.P14577747093769366107

`eq[9, dr(A175965(n+2)-2)]`
-/

namespace A111323.P14577747093769366107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A175965 (n + 2) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111323.P14577747093769366107

namespace A111323

/-- `eq[9, dr(A175965(n+2)-2)]` -/
def P14577747093769366107.Spec : Prop :=
  ∀ n, (P14577747093769366107.a n : ℤ) = A111323 (n + 1)

end A111323

/-! ## A111323.P2467935846394876222

`eq[A007504(n)%9, A000007(n)]`
-/

namespace A111323.P2467935846394876222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111323.P2467935846394876222

namespace A111323

/-- `eq[A007504(n)%9, A000007(n)]` -/
def P2467935846394876222.Spec : Prop :=
  ∀ n, (P2467935846394876222.a n : ℤ) = A111323 (n + 1)

end A111323

/-!
# A111324: Numbers k such that 10 divides prime(1) + ... + prime(k).

The programs for A111324, the canonical program `A111324.P1944498692377045728` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111324 has offset 1).

The definition of A111324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111324.P1944498692377045728

`eq[5, (A007504(n)-5)%10]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111324

/-- `eq[5, (A007504(n)-5)%10]` -/
def P1944498692377045728.Spec : Prop :=
  ∀ n, (P1944498692377045728.a n : ℤ) = A111324 (n + 1)

theorem P1944498692377045728.correct : P1944498692377045728.Spec := by
  intro n
  simp only [A111324, Nat.add_sub_cancel]

end A111324

/-! ## A111324.P15498639377710262962

`∩[2*n+1, A111319(n+1)]`
-/

namespace A111324.P15498639377710262962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111324.P15498639377710262962

namespace A111324

/-- `∩[2*n+1, A111319(n+1)]` -/
def P15498639377710262962.Spec : Prop :=
  ∀ n, (P15498639377710262962.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P5323835462857734625

`record[A000265(A111319(n+2))]`
-/

namespace A111324.P5323835462857734625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A111319 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111324.P5323835462857734625

namespace A111324

/-- `record[A000265(A111319(n+2))]` -/
def P5323835462857734625.Spec : Prop :=
  ∀ n, P5323835462857734625.a n = A111324 (n + 1)

end A111324

/-! ## A111324.P12375108684674493955

`∩[A111319(n+1), A004273(n)]`
-/

namespace A111324.P12375108684674493955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111324.P12375108684674493955

namespace A111324

/-- `∩[A111319(n+1), A004273(n)]` -/
def P12375108684674493955.Spec : Prop :=
  ∀ n, (P12375108684674493955.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P14673094393875320598

`∩[A111319(n+1), A060747(n)]`
-/

namespace A111324.P14673094393875320598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111324.P14673094393875320598

namespace A111324

/-- `∩[A111319(n+1), A060747(n)]` -/
def P14673094393875320598.Spec : Prop :=
  ∀ n, (P14673094393875320598.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P12774258241831831666

`∩[A111319(n+1), A005818(n+1)]`
-/

namespace A111324.P12774258241831831666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111324.P12774258241831831666

namespace A111324

/-- `∩[A111319(n+1), A005818(n+1)]` -/
def P12774258241831831666.Spec : Prop :=
  ∀ n, (P12774258241831831666.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P11769320109888421105

`∩[A111319(n+1), A144396(n+1)]`
-/

namespace A111324.P11769320109888421105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111324.P11769320109888421105

namespace A111324

/-- `∩[A111319(n+1), A144396(n+1)]` -/
def P11769320109888421105.Spec : Prop :=
  ∀ n, (P11769320109888421105.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P10552781097179538448

`∩[A111319(n+1), A201471(n+3)]`
-/

namespace A111324.P10552781097179538448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201471 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111324.P10552781097179538448

namespace A111324

/-- `∩[A111319(n+1), A201471(n+3)]` -/
def P10552781097179538448.Spec : Prop :=
  ∀ n, (P10552781097179538448.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P15642952405349660993

`filter[A111319(n+1), A000035(#)]`
-/

namespace A111324.P15642952405349660993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A111324.P15642952405349660993

namespace A111324

/-- `filter[A111319(n+1), A000035(#)]` -/
def P15642952405349660993.Spec : Prop :=
  ∀ n, P15642952405349660993.a n = A111324 (n + 1)

end A111324

/-! ## A111324.P11226349239384360261

`filter[A111319(n+1), A266070(#)]`
-/

namespace A111324.P11226349239384360261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A111324.P11226349239384360261

namespace A111324

/-- `filter[A111319(n+1), A266070(#)]` -/
def P11226349239384360261.Spec : Prop :=
  ∀ n, P11226349239384360261.a n = A111324 (n + 1)

end A111324

/-! ## A111324.P16956705543610851592

`filter[A111319(n+1), A267155(#)]`
-/

namespace A111324.P16956705543610851592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A111324.P16956705543610851592

namespace A111324

/-- `filter[A111319(n+1), A267155(#)]` -/
def P16956705543610851592.Spec : Prop :=
  ∀ n, P16956705543610851592.a n = A111324 (n + 1)

end A111324

/-! ## A111324.P16472860578419755011

`filter[A111319(n+2), A266719(#)]`
-/

namespace A111324.P16472860578419755011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A111324.P16472860578419755011

namespace A111324

/-- `filter[A111319(n+2), A266719(#)]` -/
def P16472860578419755011.Spec : Prop :=
  ∀ n, P16472860578419755011.a n = A111324 (n + 1)

end A111324

/-! ## A111324.P15826496114796007418

`filter[A111319(n+2), A267256(#)]`
-/

namespace A111324.P15826496114796007418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A111324.P15826496114796007418

namespace A111324

/-- `filter[A111319(n+2), A267256(#)]` -/
def P15826496114796007418.Spec : Prop :=
  ∀ n, P15826496114796007418.a n = A111324 (n + 1)

end A111324

/-! ## A111324.P12997960440811877714

`filter[A111319(n+2), A296066(#)]`
-/

namespace A111324.P12997960440811877714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A111324.P12997960440811877714

namespace A111324

/-- `filter[A111319(n+2), A296066(#)]` -/
def P12997960440811877714.Spec : Prop :=
  ∀ n, P12997960440811877714.a n = A111324 (n + 1)

end A111324

/-! ## A111324.P2545318006208844739

`eq[A007504(n)%10, A000007(n)]`
-/

namespace A111324.P2545318006208844739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111324.P2545318006208844739

namespace A111324

/-- `eq[A007504(n)%10, A000007(n)]` -/
def P2545318006208844739.Spec : Prop :=
  ∀ n, (P2545318006208844739.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P1035759409438777368

`eq[A000007(n), A096319(n)]`
-/

namespace A111324.P1035759409438777368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111324.P1035759409438777368

namespace A111324

/-- `eq[A000007(n), A096319(n)]` -/
def P1035759409438777368.Spec : Prop :=
  ∀ n, (P1035759409438777368.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P9439882907447006507

`eq[A000038(n), A096319(n)]`
-/

namespace A111324.P9439882907447006507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111324.P9439882907447006507

namespace A111324

/-- `eq[A000038(n), A096319(n)]` -/
def P9439882907447006507.Spec : Prop :=
  ∀ n, (P9439882907447006507.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P7273446357989650391

`eq[A035363(n), A096319(n)]`
-/

namespace A111324.P7273446357989650391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111324.P7273446357989650391

namespace A111324

/-- `eq[A035363(n), A096319(n)]` -/
def P7273446357989650391.Spec : Prop :=
  ∀ n, (P7273446357989650391.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P2125646180020862135

`eq[A035444(n), A096319(n)]`
-/

namespace A111324.P2125646180020862135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111324.P2125646180020862135

namespace A111324

/-- `eq[A035444(n), A096319(n)]` -/
def P2125646180020862135.Spec : Prop :=
  ∀ n, (P2125646180020862135.a n : ℤ) = A111324 (n + 1)

end A111324

/-! ## A111324.P16777432857630911031

`eq[A035457(n), A096319(n)]`
-/

namespace A111324.P16777432857630911031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111324.P16777432857630911031

namespace A111324

/-- `eq[A035457(n), A096319(n)]` -/
def P16777432857630911031.Spec : Prop :=
  ∀ n, (P16777432857630911031.a n : ℤ) = A111324 (n + 1)

end A111324

/-!
# A111325: Numbers k such that 11 divides prime(1) + ... + prime(k).

The programs for A111325, the canonical program `A111325.P7187186331389231185` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111325 has offset 1).

The definition of A111325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111325.P7187186331389231185

`lt[8, gcd(11, A007504(n+1))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111325

/-- `lt[8, gcd(11, A007504(n+1))]+1` -/
def P7187186331389231185.Spec : Prop :=
  ∀ n, (P7187186331389231185.a n : ℤ) = A111325 (n + 1)

theorem P7187186331389231185.correct : P7187186331389231185.Spec := by
  intro n
  simp only [A111325, Nat.add_sub_cancel]

end A111325

/-! ## A111325.P12354955741534785242

`lt[lcm(11, A007504(n)), A007504(2*n)]`
-/

namespace A111325.P12354955741534785242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (A007504 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111325.P12354955741534785242

namespace A111325

/-- `lt[lcm(11, A007504(n)), A007504(2*n)]` -/
def P12354955741534785242.Spec : Prop :=
  ∀ n, (P12354955741534785242.a n : ℤ) = A111325 (n + 1)

end A111325

/-! ## A111325.P16906877248346226977

`eq[A007504(n)%11, A000007(n)]`
-/

namespace A111325.P16906877248346226977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111325.P16906877248346226977

namespace A111325

/-- `eq[A007504(n)%11, A000007(n)]` -/
def P16906877248346226977.Spec : Prop :=
  ∀ n, (P16906877248346226977.a n : ℤ) = A111325 (n + 1)

end A111325

/-!
# A111326: Numbers k such that 12 divides prime(1) + ... + prime(k).

The programs for A111326, the canonical program `A111326.P17342450105142321715` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111326 has offset 1).

The definition of A111326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111326.P17342450105142321715

`eq[12, gcd(12, A007504(n+1))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111326

/-- `eq[12, gcd(12, A007504(n+1))]+1` -/
def P17342450105142321715.Spec : Prop :=
  ∀ n, (P17342450105142321715.a n : ℤ) = A111326 (n + 1)

theorem P17342450105142321715.correct : P17342450105142321715.Spec := by
  intro n
  simp only [A111326, Nat.add_sub_cancel]

end A111326

/-! ## A111326.P13357935548159387136

`∩[A111318(n+1), A111320(n+1)]`
-/

namespace A111326.P13357935548159387136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111326.P13357935548159387136

namespace A111326

/-- `∩[A111318(n+1), A111320(n+1)]` -/
def P13357935548159387136.Spec : Prop :=
  ∀ n, (P13357935548159387136.a n : ℤ) = A111326 (n + 1)

end A111326

/-! ## A111326.P4615025348897079430

`∩[A103208(n+1), A111318(n+1)]`
-/

namespace A111326.P4615025348897079430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111326.P4615025348897079430

namespace A111326

/-- `∩[A103208(n+1), A111318(n+1)]` -/
def P4615025348897079430.Spec : Prop :=
  ∀ n, (P4615025348897079430.a n : ℤ) = A111326 (n + 1)

end A111326

/-! ## A111326.P16340940587598749620

`eq[12, gcd(A007504(n), A040030(n))]`
-/

namespace A111326.P16340940587598749620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007504 n) (A040030 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111326.P16340940587598749620

namespace A111326

/-- `eq[12, gcd(A007504(n), A040030(n))]` -/
def P16340940587598749620.Spec : Prop :=
  ∀ n, (P16340940587598749620.a n : ℤ) = A111326 (n + 1)

end A111326

/-! ## A111326.P8585413663629173040

`eq[1, A143215(n+1)%12]`
-/

namespace A111326.P8585413663629173040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143215 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111326.P8585413663629173040

namespace A111326

/-- `eq[1, A143215(n+1)%12]` -/
def P8585413663629173040.Spec : Prop :=
  ∀ n, (P8585413663629173040.a n : ℤ) = A111326 (n + 1)

end A111326

/-! ## A111326.P15946857443323342508

`eq[A007504(n)%12, A000007(n)]`
-/

namespace A111326.P15946857443323342508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111326.P15946857443323342508

namespace A111326

/-- `eq[A007504(n)%12, A000007(n)]` -/
def P15946857443323342508.Spec : Prop :=
  ∀ n, (P15946857443323342508.a n : ℤ) = A111326 (n + 1)

end A111326

/-!
# A111327: Numbers k such that 13 divides prime(1) + ... + prime(k).

The programs for A111327, the canonical program `A111327.P16693516718763661567` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111327 has offset 1).

The definition of A111327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3771 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111327.P16693516718763661567

`eq[13, gcd(13, A007504(n+1))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111327

/-- `eq[13, gcd(13, A007504(n+1))]+1` -/
def P16693516718763661567.Spec : Prop :=
  ∀ n, (P16693516718763661567.a n : ℤ) = A111327 (n + 1)

theorem P16693516718763661567.correct : P16693516718763661567.Spec := by
  intro n
  simp only [A111327, Nat.add_sub_cancel]

end A111327

/-! ## A111327.P6351769211781390831

`eq[A007504(n)%13, A000007(n)]`
-/

namespace A111327.P6351769211781390831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111327.P6351769211781390831

namespace A111327

/-- `eq[A007504(n)%13, A000007(n)]` -/
def P6351769211781390831.Spec : Prop :=
  ∀ n, (P6351769211781390831.a n : ℤ) = A111327 (n + 1)

end A111327

/-! ## A111327.P2632409678840736352

`lt[lcm(13, A007504(n)), A273462(n+2)]`
-/

namespace A111327.P2632409678840736352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (A007504 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273462 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111327.P2632409678840736352

namespace A111327

/-- `lt[lcm(13, A007504(n)), A273462(n+2)]` -/
def P2632409678840736352.Spec : Prop :=
  ∀ n, (P2632409678840736352.a n : ℤ) = A111327 (n + 1)

end A111327

/-!
# A111329: Number of partitions of T where T = (3n + 1) if n is even and T=(3n + 1)/2 if n is odd.

The programs for A111329, there is no canonical definition to state claims against.
-/

/-! ## A111329.P10542298085079932510

`A000041(A165355(n+1))`
-/

namespace A111329.P10542298085079932510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A165355 (n + 1)).toNat

end

end A111329.P10542298085079932510

/-! ## A111329.P13323213124473384906

`A000041((3*n+4)/gcd(2, n))`
-/

namespace A111329.P13323213124473384906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((3 * n + 4 : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A111329.P13323213124473384906

/-! ## A111329.P8132508289515863831

`A000041((3*n+4)/(2-n%2))`
-/

namespace A111329.P8132508289515863831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((3 * n + 4 : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ))).toNat

end

end A111329.P8132508289515863831

/-! ## A111329.P7421594185689409956

`A000041(∑[6*n+4]/lcm(2, n+1))`
-/

namespace A111329.P7421594185689409956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lcm 2 (n + 1) : ℚ))).toNat

end

end A111329.P7421594185689409956

/-! ## A111329.P1360198394122886833

`A000041((3*n+4)/((n+1)%2+1))`
-/

namespace A111329.P1360198394122886833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((3 * n + 4 : ℚ) / (((n + 1) % 2 + 1 : ℕ) : ℚ))).toNat

end

end A111329.P1360198394122886833

/-! ## A111329.P18314862889313152850

`A000041((3*n+4)*2^(and(1, n)-1))`
-/

namespace A111329.P18314862889313152850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((3 * n + 4 : ℚ) * (2 : ℚ) ^ ((Nat.land 1 n : ℤ) - 1 : ℤ))).toNat

end

end A111329.P18314862889313152850

/-!
# A111330: Let qf(a,q) = Product_{j >= 0} (1-a*q^j); g.f. is qf(q,q^4)/qf(q^3,q^4).

The programs for A111330, there is no canonical definition to state claims against.
-/

/-! ## A111330.P12645667527006301182

`A037861(record[A046800(A008733(n))])`
-/

namespace A111330.P12645667527006301182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A008733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111330.P12645667527006301182

/-! ## A111330.P6072637024784304907

`Δ[A004548(A004654(n))]`
-/

namespace A111330.P6072637024784304907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004548 (A004654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111330.P6072637024784304907

/-!
# A111331: Prime Fibonacci numbers whose digits in base 10 sum up to a prime.

The programs for A111331, there is no canonical definition to state claims against.
-/

/-! ## A111331.P17752269858308841900

`A319230(n%a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A111331.P17752269858308841900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A319230 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A111331.P17752269858308841900

/-! ## A111331.P13257776816210305715

`∩[A065398(n+1), A113188(n+1)]`
-/

namespace A111331.P13257776816210305715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111331.P13257776816210305715

/-! ## A111331.P3116535052695703778

`∩[A065398(n+1), A178576(n+1)]`
-/

namespace A111331.P3116535052695703778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111331.P3116535052695703778

/-! ## A111331.P12115284250171791310

`∩[A065398(n+1), A227880(n+1)]`
-/

namespace A111331.P12115284250171791310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111331.P12115284250171791310

/-!
# A111333: Number of odd numbers <= n-th prime.

The programs for A111333, the canonical program `A111333.P16384259974901065454` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111333 has offset 1).

The definition of A111333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111333.P16384259974901065454

`ceil(A000040(n+1)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111333

/-- `ceil(A000040(n+1)/2)` -/
def P16384259974901065454.Spec : Prop :=
  ∀ n, P16384259974901065454.a n = A111333 (n + 1)

theorem P16384259974901065454.correct : P16384259974901065454.Spec := by
  intro n
  simp only [A111333, Nat.add_sub_cancel]

end A111333

/-! ## A111333.P7362550556951660219

`A102781(n+1)+1`
-/

namespace A111333.P7362550556951660219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 1

end

end A111333.P7362550556951660219

namespace A111333

/-- `A102781(n+1)+1` -/
def P7362550556951660219.Spec : Prop :=
  ∀ n, P7362550556951660219.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P15649112557800821652

`A124678(n+1)-2`
-/

namespace A111333.P15649112557800821652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 1) - 2

end

end A111333.P15649112557800821652

namespace A111333

/-- `A124678(n+1)-2` -/
def P15649112557800821652.Spec : Prop :=
  ∀ n, P15649112557800821652.a n = A111333 (n + 1)

theorem P15649112557800821652.correct : P15649112557800821652.Spec := by
  intro n
  simp only [A111333, Nat.add_sub_cancel, A111333.P15649112557800821652.a, A111333.P16384259974901065454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A124678, A124678.P3388856193918197942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111333

/-! ## A111333.P11226650625858527049

`A129768(n+1)+n`
-/

namespace A111333.P11226650625858527049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1) + (n : ℤ)

end

end A111333.P11226650625858527049

namespace A111333

/-- `A129768(n+1)+n` -/
def P11226650625858527049.Spec : Prop :=
  ∀ n, P11226650625858527049.a n = A111333 (n + 1)

theorem P11226650625858527049.correct : P11226650625858527049.Spec := by
  intro n
  simp only [A111333, Nat.add_sub_cancel, A111333.P11226650625858527049.a, A111333.P16384259974901065454.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129768, A129768.P17975627728056424353.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111333

/-! ## A111333.P7900326130174681691

`ceil(Δ[A007504(n)/2])`
-/

namespace A111333.P7900326130174681691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A111333.P7900326130174681691

namespace A111333

/-- `ceil(Δ[A007504(n)/2])` -/
def P7900326130174681691.Spec : Prop :=
  ∀ n, P7900326130174681691.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P7300275425500942219

`floor(A008864(n+1)/2)`
-/

namespace A111333.P7300275425500942219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008864 (n + 1) : ℚ) / 2⌋

end

end A111333.P7300275425500942219

namespace A111333

/-- `floor(A008864(n+1)/2)` -/
def P7300275425500942219.Spec : Prop :=
  ∀ n, P7300275425500942219.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P16492830002883687973

`ceil(A055670(n+1)/2)`
-/

namespace A111333.P16492830002883687973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055670 (n + 1) : ℚ) / 2⌉

end

end A111333.P16492830002883687973

namespace A111333

/-- `ceil(A055670(n+1)/2)` -/
def P16492830002883687973.Spec : Prop :=
  ∀ n, P16492830002883687973.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P7702313318053177531

`round(A072055(n+1)/4)`
-/

namespace A111333.P7702313318053177531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072055 (n + 1) : ℚ) / 4)

end

end A111333.P7702313318053177531

namespace A111333

/-- `round(A072055(n+1)/4)` -/
def P7702313318053177531.Spec : Prop :=
  ∀ n, P7702313318053177531.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P16470194293725780551

`(A006005(n+1)+1)/2`
-/

namespace A111333.P16470194293725780551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) + 1 : ℚ) / 2

end

end A111333.P16470194293725780551

namespace A111333

/-- `(A006005(n+1)+1)/2` -/
def P16470194293725780551.Spec : Prop :=
  ∀ n, P16470194293725780551.a n = (A111333 (n + 1) : ℚ)

end A111333

/-! ## A111333.P11792199216943220826

`A028334(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A111333.P11792199216943220826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A028334 n + a (n - 1)

end

end A111333.P11792199216943220826

namespace A111333

/-- `A028334(n)+a(n-1)` -/
def P11792199216943220826.Spec : Prop :=
  ∀ n, P11792199216943220826.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P13987181973416884763

`A079079(n)/a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A111333.P13987181973416884763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A079079 n : ℚ) / a (n - 1)

end

end A111333.P13987181973416884763

namespace A111333

/-- `A079079(n)/a(n-1)` -/
def P13987181973416884763.Spec : Prop :=
  ∀ n, P13987181973416884763.a n = (A111333 (n + 1) : ℚ)

end A111333

/-! ## A111333.P11451313881695062093

`a(n-1)+A100820(n)+1` with `a(0)=1`
-/

namespace A111333.P11451313881695062093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A100820 n + 1)

end

end A111333.P11451313881695062093

namespace A111333

/-- `a(n-1)+A100820(n)+1` -/
def P11451313881695062093.Spec : Prop :=
  ∀ n, P11451313881695062093.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P18124520481689147078

`A130290(n+1)+A057427(n)`
-/

namespace A111333.P18124520481689147078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) + A057427 n

end

end A111333.P18124520481689147078

namespace A111333

/-- `A130290(n+1)+A057427(n)` -/
def P18124520481689147078.Spec : Prop :=
  ∀ n, P18124520481689147078.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P10654018012715413207

`A130291(n+1)-A000007(n)`
-/

namespace A111333.P10654018012715413207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) - A000007 n

end

end A111333.P10654018012715413207

namespace A111333

/-- `A130291(n+1)-A000007(n)` -/
def P10654018012715413207.Spec : Prop :=
  ∀ n, P10654018012715413207.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P14822342158562438852

`A130290(n+1)-A057428(n)`
-/

namespace A111333.P14822342158562438852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) - A057428 n

end

end A111333.P14822342158562438852

namespace A111333

/-- `A130290(n+1)-A057428(n)` -/
def P14822342158562438852.Spec : Prop :=
  ∀ n, P14822342158562438852.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P252610775894255842

`A000040(n+1)-A130290(n+1)`
-/

namespace A111333.P252610775894255842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A130290 (n + 1)

end

end A111333.P252610775894255842

namespace A111333

/-- `A000040(n+1)-A130290(n+1)` -/
def P252610775894255842.Spec : Prop :=
  ∀ n, P252610775894255842.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P795708959169165500

`(A000040(n+1)-A057428(n))/2`
-/

namespace A111333.P795708959169165500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A057428 n : ℚ) / 2

end

end A111333.P795708959169165500

namespace A111333

/-- `(A000040(n+1)-A057428(n))/2` -/
def P795708959169165500.Spec : Prop :=
  ∀ n, P795708959169165500.a n = (A111333 (n + 1) : ℚ)

end A111333

/-! ## A111333.P17917088759343687881

`A110494(n+1)%A000040(n+1)`
-/

namespace A111333.P17917088759343687881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110494 (n + 1)) (A000040 (n + 1))

end

end A111333.P17917088759343687881

namespace A111333

/-- `A110494(n+1)%A000040(n+1)` -/
def P17917088759343687881.Spec : Prop :=
  ∀ n, P17917088759343687881.a n = A111333 (n + 1)

end A111333

/-! ## A111333.P5690040376784011433

`A110496(n+1)%A000040(n+1)`
-/

namespace A111333.P5690040376784011433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110496 (n + 1)) (A000040 (n + 1))

end

end A111333.P5690040376784011433

namespace A111333

/-- `A110496(n+1)%A000040(n+1)` -/
def P5690040376784011433.Spec : Prop :=
  ∀ n, P5690040376784011433.a n = A111333 (n + 1)

end A111333

/-!
# A111334: a(n) is the smallest integer k such that the difference between the arithmetic and geometric means of the first k positive integers is larger than 10^n.

The programs for A111334, there is no canonical definition to state claims against.
-/

/-! ## A111334.P9920649271209704119

`A368374(10^n)`
-/

namespace A111334.P9920649271209704119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368374 (10 ^ n)

end

end A111334.P9920649271209704119

/-!
# A111335: Let qf(a,q) = Product_{j>=0} (1 - a*q^j); g.f. is qf(q^3,q^4)/qf(q,q^4).

The programs for A111335, there is no canonical definition to state claims against.
-/

/-! ## A111335.P10738051957031684636

`A055642(n)-A017827(A187829(n+1))`
-/

namespace A111335.P10738051957031684636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A017827 (A187829 (n + 1)).toNat

end

end A111335.P10738051957031684636

/-! ## A111335.P8091997776900472840

`A031346(n)+1-A017827(A187829(n+1))`
-/

namespace A111335.P8091997776900472840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n + (1 - A017827 (A187829 (n + 1)).toNat)

end

end A111335.P8091997776900472840

/-! ## A111335.P6432050551728285712

`A054899(n)+1-A017827(A187829(n+1))`
-/

namespace A111335.P6432050551728285712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + (1 - A017827 (A187829 (n + 1)).toNat)

end

end A111335.P6432050551728285712

/-! ## A111335.P353483999040121796

`A001221(A003057(n+2))-A017827(A187829(n+1))`
-/

namespace A111335.P353483999040121796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003057 (n + 2)).toNat - A017827 (A187829 (n + 1)).toNat

end

end A111335.P353483999040121796

/-!
# A111336: Number of convex regular polytopes with n hyperfaces (n>2) or n vertices.

The programs for A111336, there is no canonical definition to state claims against.
-/

/-! ## A111336.P11299372064321989452

`∑{d}[n+1, A008683(#)*A352622((n+1)/#)]`
-/

namespace A111336.P11299372064321989452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A352622 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111336.P11299372064321989452

/-! ## A111336.P1874740055806689883

`A297030(A052955(n)+1-and(2, n))`
-/

namespace A111336.P1874740055806689883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297030 (A052955 n + (1 - (Nat.land 2 n : ℤ))).toNat

end

end A111336.P1874740055806689883

/-! ## A111336.P5675464215070738333

`A002635(A246347(n+1)+1)`
-/

namespace A111336.P5675464215070738333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A246347 (n + 1) + 1).toNat

end

end A111336.P5675464215070738333

/-! ## A111336.P3790383316062009140

`A129296(gcd(A129280(n+1), A129331(n+1)))`
-/

namespace A111336.P3790383316062009140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (Int.gcd (A129280 (n + 1)) (A129331 (n + 1)))

end

end A111336.P3790383316062009140

/-! ## A111336.P15623389780055726318

`A106490(3*A216604(n))`
-/

namespace A111336.P15623389780055726318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (3 * A216604 n).toNat

end

end A111336.P15623389780055726318

/-!
# A111337: Primes with at least two digits such that swapping the second and the penultimate digit yields a prime.

The programs for A111337, there is no canonical definition to state claims against.
-/

/-! ## A111337.P1035440439517743315

`p?[A111347(n+1)]`
-/

namespace A111337.P1035440439517743315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111337.P1035440439517743315

/-! ## A111337.P8789787810312275619

`filter[A111347(n+1), A010051(#)]`
-/

namespace A111337.P8789787810312275619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A111337.P8789787810312275619

/-! ## A111337.P862167035288789545

`filter[A111347(n+1), A080339(#)]`
-/

namespace A111337.P862167035288789545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A111337.P862167035288789545

/-! ## A111337.P5972620756615655571

`filter[A111347(n+1), A080545(#)]`
-/

namespace A111337.P5972620756615655571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A111337.P5972620756615655571

/-! ## A111337.P15029088616712173261

`filter[A111347(n+1), A171387(#)]`
-/

namespace A111337.P15029088616712173261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A111337.P15029088616712173261

/-!
# A111338: Conjectured values of Cald's sequence A006509 after sorting and removal of duplicate zeros.

The programs for A111338, there is no canonical definition to state claims against.
-/

/-! ## A111338.P18170216116631962462

`lt[0, char[A006509(n+1)]]`
-/

namespace A111338.P18170216116631962462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111338.P18170216116631962462

/-! ## A111338.P6440679840607599658

`record[n*char[A006509(A131388(n+1))]]`
-/

namespace A111338.P6440679840607599658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (A131388 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111338.P6440679840607599658

/-! ## A111338.P6525962844790886472

`record[n*char[A006509(A175498(n+1))]]`
-/

namespace A111338.P6525962844790886472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (A175498 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111338.P6525962844790886472

/-! ## A111338.P491761734442611206

`record[char[A006509(n+1)]*A142150(2*n)]`
-/

namespace A111338.P491761734442611206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A142150 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111338.P491761734442611206

/-! ## A111338.P1042677918354865755

`comp[A111339(n+1)]`
-/

namespace A111338.P1042677918354865755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111338.P1042677918354865755

/-!
# A111339: Conjectured to be the numbers that do not appear in A006509.

The programs for A111339, there is no canonical definition to state claims against.
-/

/-! ## A111339.P12442145104356055504

`comp[A006509(n+1)]`
-/

namespace A111339.P12442145104356055504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111339.P12442145104356055504

/-! ## A111339.P2556120572113315323

`comp[A111338(n+1)]`
-/

namespace A111339.P2556120572113315323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111339.P2556120572113315323

/-! ## A111339.P10501711915364848477

`comp[record[A111338(A126759(n))]]`
-/

namespace A111339.P10501711915364848477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111339.P10501711915364848477

/-! ## A111339.P6075557667534990180

`comp[record[A111338(A133310(n))]]`
-/

namespace A111339.P6075557667534990180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111339.P6075557667534990180

/-! ## A111339.P2358460768350849207

`eq[0, char[A006509(A131388(n+1))]]`
-/

namespace A111339.P2358460768350849207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (A131388 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111339.P2358460768350849207

/-! ## A111339.P11996859607865569390

`eq[0, char[A006509(A175498(n+1))]]`
-/

namespace A111339.P11996859607865569390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (A175498 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111339.P11996859607865569390

/-!
# A111341: Number of Latin squares in dimension n with first row and first column 1,2,3,...,n that are non-associative but commutative (element ij = element ji).

The programs for A111341, there is no canonical definition to state claims against.
-/

/-! ## A111341.P11048265252189515079

`A035481(n+1)-A058162(n+1)`
-/

namespace A111341.P11048265252189515079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035481 (n + 1) - A058162 (n + 1)

end

end A111341.P11048265252189515079

/-!
# A111342: BINOMIAL transform of A090351.

The programs for A111342, there is no canonical definition to state claims against.
-/

/-! ## A111342.P8120683332177984903

`∑[A111343(n)]`
-/

namespace A111342.P8120683332177984903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111342.P8120683332177984903

/-! ## A111342.P6127393223788858724

`∑[A001651(A380080(n))]`
-/

namespace A111342.P6127393223788858724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A380080 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111342.P6127393223788858724

/-!
# A111343: G.f. A(x/(1-x)), where A = g.f. for A090351.

The programs for A111343, there is no canonical definition to state claims against.
-/

/-! ## A111343.P6098562572472068130

`A001651(A380080(n))`
-/

namespace A111343.P6098562572472068130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A380080 n).toNat

end

end A111343.P6098562572472068130

/-! ## A111343.P12387050731679248096

`A047237(A380080(n)+1)`
-/

namespace A111343.P12387050731679248096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (A380080 n + 1).toNat

end

end A111343.P12387050731679248096

/-!
# A111347: Numbers k such that the result of swapping the 2nd and next to the last digit of k is prime.

The programs for A111347, there is no canonical definition to state claims against.
-/

/-! ## A111347.P2160381392378658589

`A097312(n+5)%A032495(n+4)`
-/

namespace A111347.P2160381392378658589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097312 (n + 5)) (A032495 (n + 4))

end

end A111347.P2160381392378658589

/-! ## A111347.P6522149160731402953

`A121373(A385778(n+1))+A007934(n+1)`
-/

namespace A111347.P6522149160731402953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A385778 (n + 1)).toNat + A007934 (n + 1)

end

end A111347.P6522149160731402953

/-! ## A111347.P6379161320223595036

`A007934(n+1)*A281113(A096699(n+1))`
-/

namespace A111347.P6379161320223595036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1) * A281113 (A096699 (n + 1)).toNat

end

end A111347.P6379161320223595036

/-! ## A111347.P7393317051565253824

`A097312(n+5)+A000007(A032494(n+1))`
-/

namespace A111347.P7393317051565253824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 5) + A000007 (A032494 (n + 1)).toNat

end

end A111347.P7393317051565253824

/-! ## A111347.P12314678792694611636

`A369054(A029744(n+5))+A007934(n+1)`
-/

namespace A111347.P12314678792694611636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A029744 (n + 5)).toNat + A007934 (n + 1)

end

end A111347.P12314678792694611636

/-!
# A111348: Numbers k such that the result of swapping the 3rd and next to the next to the last digit of k is prime.

The programs for A111348, there is no canonical definition to state claims against.
-/

/-! ## A111348.P11747017180768187223

`A095179(n+30)`
-/

namespace A111348.P11747017180768187223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 30)

end

end A111348.P11747017180768187223

/-! ## A111348.P1470321687438993220

`A117497(A010900(n))+99`
-/

namespace A111348.P1470321687438993220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117497 (A010900 n).toNat + 99

end

end A111348.P1470321687438993220

/-! ## A111348.P4492489430493573676

`A230094(n+1)+A010051(A337928(n))`
-/

namespace A111348.P4492489430493573676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1) + A010051 (A337928 n).toNat

end

end A111348.P4492489430493573676

/-!
# A111349: Numbers k such that the result of swapping the 4th digit and the digit 3 positions from the last digit is prime.

The programs for A111349, there is no canonical definition to state claims against.
-/

/-! ## A111349.P16766158951238312478

`A213316(n+1)+A056832(A126403(n))`
-/

namespace A111349.P16766158951238312478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213316 (n + 1) + A056832 (A126403 n).toNat

end

end A111349.P16766158951238312478

/-! ## A111349.P16089791302163932252

`A213316(n+1)+A000002(A213282(n))`
-/

namespace A111349.P16089791302163932252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213316 (n + 1) + A000002 (A213282 n).toNat

end

end A111349.P16089791302163932252

/-!
# A111350: Squares n such that 2*n + 1 is a semiprime.

The programs for A111350, there is no canonical definition to state claims against.
-/

/-! ## A111350.P14576719303187267451

`A112777(n+1)²`
-/

namespace A111350.P14576719303187267451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112777 (n + 1) ^ 2

end

end A111350.P14576719303187267451

/-! ## A111350.P2482806366219190288

`(A111351(n+1)-1)/2`
-/

namespace A111350.P2482806366219190288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111351 (n + 1) - 1 : ℚ) / 2

end

end A111350.P2482806366219190288

/-! ## A111350.P3246259287022320325

`floor(A111351(n+1)/2)`
-/

namespace A111350.P3246259287022320325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111351 (n + 1) : ℚ) / 2⌋

end

end A111350.P3246259287022320325

/-! ## A111350.P10189638013624268169

`A112777(A000027(n+1))*A112777(n+1)`
-/

namespace A111350.P10189638013624268169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112777 (A000027 (n + 1)).toNat * A112777 (n + 1)

end

end A111350.P10189638013624268169

/-! ## A111350.P6813020691862061845

`A112777(n+1)^A000005(A079083(n+1))`
-/

namespace A111350.P6813020691862061845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112777 (n + 1) : ℚ) ^ (A000005 (A079083 (n + 1)).toNat : ℤ)

end

end A111350.P6813020691862061845

/-! ## A111350.P12845790249890456048

`A112777(n+1)^A000005(A000040(n+1))`
-/

namespace A111350.P12845790249890456048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112777 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A111350.P12845790249890456048

/-! ## A111350.P10139202688892858365

`A112777(n+1)^A000005(A376431(n+1))`
-/

namespace A111350.P10139202688892858365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112777 (n + 1) : ℚ) ^ (A000005 (A376431 (n + 1)).toNat : ℤ)

end

end A111350.P10139202688892858365

/-! ## A111350.P10353798497873708776

`eq[2, A001222(2*n²+1)]²`
-/

namespace A111350.P10353798497873708776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A111350.P10353798497873708776

/-! ## A111350.P12294459364198992077

`A014682(A111351(n+1)-1)`
-/

namespace A111350.P12294459364198992077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A111351 (n + 1) - 1).toNat

end

end A111350.P12294459364198992077

/-! ## A111350.P15515270137313309906

`eq[2, A340101(n²)]²`
-/

namespace A111350.P15515270137313309906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A111350.P15515270137313309906

/-!
# A111351: Semiprimes of the form 2*n + 1, where n is a square.

The programs for A111351, there is no canonical definition to state claims against.
-/

/-! ## A111351.P8181808235039016565

`2*A111350(n+1)+1`
-/

namespace A111351.P8181808235039016565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111350 (n + 1) + 1

end

end A111351.P8181808235039016565

/-! ## A111351.P2978025151935798479

`2*A112777(n+1)²+1`
-/

namespace A111351.P2978025151935798479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112777 (n + 1) ^ 2 + 1

end

end A111351.P2978025151935798479

/-! ## A111351.P13723118443295993619

`A058331(A112777(n+1))`
-/

namespace A111351.P13723118443295993619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A112777 (n + 1)).toNat

end

end A111351.P13723118443295993619

/-! ## A111351.P16762938918943317070

`A061925(2*A112777(n+1))`
-/

namespace A111351.P16762938918943317070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (2 * A112777 (n + 1)).toNat

end

end A111351.P16762938918943317070

/-! ## A111351.P10893521627965486885

`A080827(2*A112777(n+1))`
-/

namespace A111351.P10893521627965486885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (2 * A112777 (n + 1)).toNat

end

end A111351.P10893521627965486885

/-! ## A111351.P433276331739083341

`A000124(2*A112777(n+1))-A112777(n+1)`
-/

namespace A111351.P433276331739083341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * A112777 (n + 1)).toNat - A112777 (n + 1)

end

end A111351.P433276331739083341

/-! ## A111351.P7463750219499723819

`2*eq[2, A001222(2*n²+1)]²+1`
-/

namespace A111351.P7463750219499723819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A111351.P7463750219499723819

/-! ## A111351.P15221798262257014480

`filter[A058331(n+1), A359828(#)]`
-/

namespace A111351.P15221798262257014480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A111351.P15221798262257014480

/-! ## A111351.P923349761211576631

`filter[A061925(n+1), A359828(#)]`
-/

namespace A111351.P923349761211576631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A111351.P923349761211576631

/-! ## A111351.P17491842876904525279

`filter[A261243(n+3), A359828(#)]`
-/

namespace A111351.P17491842876904525279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261243 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A111351.P17491842876904525279

/-!
# A111352: a(n+3) = a(n+2) + 3*a(n+1) + a(n).

The programs for A111352, the canonical program `A111352.P16224125330605784973` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111352 has offset 0).

The definition of A111352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111352.P979406788636617711

`ogf((-1+2x)/(-1+x+3x^2+x^3))`
-/

namespace A111352.P979406788636617711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -1, -3, -1] n

end

end A111352.P979406788636617711

namespace A111352

/-- `ogf((-1+2x)/(-1+x+3x^2+x^3))` -/
def P979406788636617711.Spec : Prop :=
  ∀ n, P979406788636617711.a n = A111352 n

end A111352

/-! ## A111352.P16224125330605784973

`3*a(n-2)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111352

/-- `3*a(n-2)+a(n-1)+a(n-3)` -/
def P16224125330605784973.Spec : Prop :=
  ∀ n, P16224125330605784973.a n = A111352 n

theorem P16224125330605784973.correct : P16224125330605784973.Spec := by
  intro n
  simp only [A111352]

end A111352

/-! ## A111352.P9662714810371632404

`abs(A176981(n))-a(n-1)` with `a(0)=1`
-/

namespace A111352.P9662714810371632404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A176981 n| - a (n - 1)

end

end A111352.P9662714810371632404

namespace A111352

/-- `abs(A176981(n))-a(n-1)` -/
def P9662714810371632404.Spec : Prop :=
  ∀ n, P9662714810371632404.a n = A111352 n

end A111352

/-! ## A111352.P3314672098561630766

`A000129(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A111352.P3314672098561630766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000129 (n - 1) - a (n - 1)

end

end A111352.P3314672098561630766

namespace A111352

/-- `A000129(n-1)-a(n-1)` -/
def P3314672098561630766.Spec : Prop :=
  ∀ n, P3314672098561630766.a n = A111352 n

end A111352

/-! ## A111352.P10906810504281358153

`A111954(n)-A097076(n)`
-/

namespace A111352.P10906810504281358153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n - A097076 n

end

end A111352.P10906810504281358153

namespace A111352

/-- `A111954(n)-A097076(n)` -/
def P10906810504281358153.Spec : Prop :=
  ∀ n, P10906810504281358153.a n = A111352 n

end A111352

/-! ## A111352.P1252508365883748586

`A228797(n+1)-A375726(n)`
-/

namespace A111352.P1252508365883748586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228797 (n + 1) - A375726 n

end

end A111352.P1252508365883748586

namespace A111352

/-- `A228797(n+1)-A375726(n)` -/
def P1252508365883748586.Spec : Prop :=
  ∀ n, P1252508365883748586.a n = A111352 n

end A111352

/-! ## A111352.P9431433158996647269

`A137199(n+1)-A097075(n+1)`
-/

namespace A111352.P9431433158996647269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (n + 1) - A097075 (n + 1)

end

end A111352.P9431433158996647269

namespace A111352

/-- `A137199(n+1)-A097075(n+1)` -/
def P9431433158996647269.Spec : Prop :=
  ∀ n, P9431433158996647269.a n = A111352 n

end A111352

/-! ## A111352.P748784736187300801

`A097076(n+1)-2*A097076(n)`
-/

namespace A111352.P748784736187300801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) - 2 * A097076 n

end

end A111352.P748784736187300801

namespace A111352

/-- `A097076(n+1)-2*A097076(n)` -/
def P748784736187300801.Spec : Prop :=
  ∀ n, P748784736187300801.a n = A111352 n

end A111352

/-! ## A111352.P12398945163290808267

`A137199(n+1)-(A097076(n)+A000129(n))`
-/

namespace A111352.P12398945163290808267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (n + 1) - (A097076 n + A000129 n)

end

end A111352.P12398945163290808267

namespace A111352

/-- `A137199(n+1)-(A097076(n)+A000129(n))` -/
def P12398945163290808267.Spec : Prop :=
  ∀ n, P12398945163290808267.a n = A111352 n

end A111352

/-! ## A111352.P13390312546355996837

`A051927(n)-(A137199(n)+A097076(n+1))`
-/

namespace A111352.P13390312546355996837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 n - (A137199 n + A097076 (n + 1))

end

end A111352.P13390312546355996837

namespace A111352

/-- `A051927(n)-(A137199(n)+A097076(n+1))` -/
def P13390312546355996837.Spec : Prop :=
  ∀ n, P13390312546355996837.a n = A111352 n

end A111352

/-! ## A111352.P13722667759546295912

`A097076(n+1)+A097076(n+1)-A375726(n)`
-/

namespace A111352.P13722667759546295912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + (A097076 (n + 1) - A375726 n)

end

end A111352.P13722667759546295912

namespace A111352

/-- `A097076(n+1)+A097076(n+1)-A375726(n)` -/
def P13722667759546295912.Spec : Prop :=
  ∀ n, P13722667759546295912.a n = A111352 n

end A111352

/-! ## A111352.P12433972764250648656

`A097076(n+1)+A137199(n+1)-A001333(n+1)`
-/

namespace A111352.P12433972764250648656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + (A137199 (n + 1) - A001333 (n + 1))

end

end A111352.P12433972764250648656

namespace A111352

/-- `A097076(n+1)+A137199(n+1)-A001333(n+1)` -/
def P12433972764250648656.Spec : Prop :=
  ∀ n, P12433972764250648656.a n = A111352 n

end A111352

/-! ## A111352.P1427256143931450130

`A097075(n+2)-A111955(n+1)`
-/

namespace A111352.P1427256143931450130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 2) - A111955 (n + 1)

end

end A111352.P1427256143931450130

namespace A111352

/-- `A097075(n+2)-A111955(n+1)` -/
def P1427256143931450130.Spec : Prop :=
  ∀ n, P1427256143931450130.a n = A111352 n

end A111352

/-! ## A111352.P6362684132581175702

`A105635(n+1)+A113225(n)-A111955(n+1)`
-/

namespace A111352.P6362684132581175702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (n + 1) + (A113225 n - A111955 (n + 1))

end

end A111352.P6362684132581175702

namespace A111352

/-- `A105635(n+1)+A113225(n)-A111955(n+1)` -/
def P6362684132581175702.Spec : Prop :=
  ∀ n, P6362684132581175702.a n = A111352 n

end A111352

/-! ## A111352.P16313366375735859998

`A000129(n+1)+A097076(n+1)-A111955(n+1)`
-/

namespace A111352.P16313366375735859998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A097076 (n + 1) - A111955 (n + 1))

end

end A111352.P16313366375735859998

namespace A111352

/-- `A000129(n+1)+A097076(n+1)-A111955(n+1)` -/
def P16313366375735859998.Spec : Prop :=
  ∀ n, P16313366375735859998.a n = A111352 n

end A111352

/-! ## A111352.P13517631562536506849

`Δ[A114688(n)-A000129(n+2)]`
-/

namespace A111352.P13517631562536506849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114688 n - A000129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111352.P13517631562536506849

namespace A111352

/-- `Δ[A114688(n)-A000129(n+2)]` -/
def P13517631562536506849.Spec : Prop :=
  ∀ n, P13517631562536506849.a n = A111352 n

end A111352

/-! ## A111352.P8447791843239561462

`A228405(∑[n]-1)-a(n-1)` with `a(0)=1`
-/

namespace A111352.P8447791843239561462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A228405 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - a (n - 1)

end

end A111352.P8447791843239561462

namespace A111352

/-- `A228405(∑[n]-1)-a(n-1)` -/
def P8447791843239561462.Spec : Prop :=
  ∀ n, P8447791843239561462.a n = A111352 n

end A111352

/-!
# A111353: Number of distinct prime factors of P(6*n+1) where P(m) is the partition number.

The programs for A111353, there is no canonical definition to state claims against.
-/

/-! ## A111353.P3931714251681200931

`A087175(6*(n+1)+1)`
-/

namespace A111353.P3931714251681200931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (6 * (n + 1) + 1)

end

end A111353.P3931714251681200931

/-! ## A111353.P294672045089516828

`∑[-Δ[-A087175(A016921(n))]]`
-/

namespace A111353.P294672045089516828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A087175 (A016921 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111353.P294672045089516828

/-!
# A111354: Numbers n such that the numerator of Sum_{i=1..n} (1/i^2), in reduced form, is prime.

The programs for A111354, there is no canonical definition to state claims against.
-/

/-! ## A111354.P11388937982567038010

`abs(A345055(7^n))+1`
-/

namespace A111354.P11388937982567038010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A345055 (7 ^ n)| + 1

end

end A111354.P11388937982567038010

/-!
# A111357: Numbers of planar triangulations with minimum degree 5 and without separating 3-cycles - that is 3-cycles where the interior and exterior contain at least one vertex.

The programs for A111357, there is no canonical definition to state claims against.
-/

/-! ## A111357.P9052368102447676315

`A081621(A047842(n+1)+1)`
-/

namespace A111357.P9052368102447676315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081621 (A047842 (n + 1) + 1).toNat

end

end A111357.P9052368102447676315

/-! ## A111357.P5675163486555133229

`A081621(A032555(n+1)+11)`
-/

namespace A111357.P5675163486555133229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081621 (A032555 (n + 1) + 11).toNat

end

end A111357.P5675163486555133229

/-! ## A111357.P3472658288450559787

`A112765(A018039(n))+A006791(n)`
-/

namespace A111357.P3472658288450559787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A018039 n).toNat + A006791 (n + 10)

end

end A111357.P3472658288450559787

/-! ## A111357.P9633418638490952756

`A181340(A007021(n+3))+A006791(n)`
-/

namespace A111357.P9633418638490952756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181340 (A007021 (n + 3)).toNat + A006791 (n + 10)

end

end A111357.P9633418638490952756

/-!
# A111360: Integers k such that sigma(k) + prime(k) is divisible by k.

The programs for A111360, there is no canonical definition to state claims against.
-/

/-! ## A111360.P1602114580749650444

`∑[∏[dr(A259337(n+2))]]`
-/

namespace A111360.P1602114580749650444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A259337 (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111360.P1602114580749650444

/-! ## A111360.P16034216678790576428

`A091053(lt[∏{p}[2*n, n/#], n-1]-2)`
-/

namespace A111360.P16034216678790576428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n : ℚ) / (p : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091053 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n - 2)

end

end A111360.P16034216678790576428

/-!
# A111361: The number of 4-regular plane graphs with n vertices with all faces 3-gons or 4-gons.

The programs for A111361, there is no canonical definition to state claims against.
-/

/-! ## A111361.P17746110172485302776

`A086825(ceil(xor(1, n)/2))%A028310(n)`
-/

namespace A111361.P17746110172485302776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086825 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat) (A028310 n)

end

end A111361.P17746110172485302776

/-! ## A111361.P16918624187104914139

`A086825(A028242(n))%A028310(n)`
-/

namespace A111361.P16918624187104914139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086825 (A028242 n).toNat) (A028310 n)

end

end A111361.P16918624187104914139

/-! ## A111361.P18216374397893011353

`∑{e}[A099959(A254707(n)), #]`
-/

namespace A111361.P18216374397893011353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099959 (A254707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A111361.P18216374397893011353

/-! ## A111361.P10836826864999625821

`A109004(A164993(ceil(xor(1, n)/2)!))`
-/

namespace A111361.P10836826864999625821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A164993 (Nat.factorial ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat)).toNat

end

end A111361.P10836826864999625821

/-!
# A111362: Sequence defined by an recurrence.

The programs for A111362, the canonical program `A111362.P12050314545177431153` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111362 has offset 1).

The definition of A111362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111362.P12050314545177431153

`(5*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4))%10` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111362

/-- `(5*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4))%10` -/
def P12050314545177431153.Spec : Prop :=
  ∀ n, (P12050314545177431153.a n : ℤ) = A111362 (n + 1)

theorem P12050314545177431153.correct : P12050314545177431153.Spec := by
  intro n
  simp only [A111362, Nat.add_sub_cancel]

end A111362

/-!
# A111363: a(n) = A108783(n) + 1.

The programs for A111363, there is no canonical definition to state claims against.
-/

/-! ## A111363.P16784713200759615184

`A108783(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111363.P16784713200759615184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108783 (n + 1) + 1

end

end A111363.P16784713200759615184

/-! ## A111363.P3234097481991480292

`eq[1, A083952(n)]+1`
-/

namespace A111363.P3234097481991480292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111363.P3234097481991480292

/-! ## A111363.P3519079886343992938

`eq[1, A083952(xor(1, n))]`
-/

namespace A111363.P3519079886343992938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111363.P3519079886343992938

/-! ## A111363.P18018291922171255067

`comp[val(A108115(n), 2)+n]`
-/

namespace A111363.P18018291922171255067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108115 n).toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A111363.P18018291922171255067

/-! ## A111363.P1813467682767106934

`2*lt[0, A108336(n)]+1`
-/

namespace A111363.P1813467682767106934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111363.P1813467682767106934

/-! ## A111363.P3914213814751244507

`or(1, A108783(-xor(n, -1)))`
-/

namespace A111363.P3914213814751244507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108783 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A111363.P3914213814751244507

/-! ## A111363.P11746843983014315499

`record[(n+2)/A083952(n+1)]`
-/

namespace A111363.P11746843983014315499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A083952 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111363.P11746843983014315499

/-! ## A111363.P10896825110041137138

`or(1, A108783(1-(n-2*n)))`
-/

namespace A111363.P10896825110041137138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108783 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A111363.P10896825110041137138

/-! ## A111363.P10932047987713916853

`record[(n+2)^and(1, A108115(n+1))]`
-/

namespace A111363.P10932047987713916853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.land 1 (A108115 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111363.P10932047987713916853

/-! ## A111363.P4617805923234268728

`A004442(A108783(n+1))`
-/

namespace A111363.P4617805923234268728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A108783 (n + 1)).toNat

end

end A111363.P4617805923234268728

/-!
# A111365: a(n) = 5*a(n-1) + 3*a(n-2) where a(0) = a(1) = 1.

The programs for A111365, the canonical program `A111365.P18257467168446597944` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111365 has offset 0).

The definition of A111365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+3*a(n-2)` (program `A111365.P18257467168446597944`, by `A111365.P18257467168446597944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111365.P18257467168446597944

`5*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111365

/-- `5*a(n-1)+3*a(n-2)` -/
def P18257467168446597944.Spec : Prop :=
  ∀ n, (P18257467168446597944.a n : ℤ) = A111365 n

theorem P18257467168446597944.correct : P18257467168446597944.Spec := by
  intro n
  simp only [A111365]

end A111365

/-! ## A111365.P10473114399853109472

`A015536(n+1)-4*A015536(n)`
-/

namespace A111365.P10473114399853109472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 (n + 1) - 4 * A015536 n

end

end A111365.P10473114399853109472

namespace A111365

/-- `A015536(n+1)-4*A015536(n)` -/
def P10473114399853109472.Spec : Prop :=
  ∀ n, P10473114399853109472.a n = A111365 n

end A111365

/-! ## A111365.P10258400675033914723

`ogf((-1+4x)/(-1+5x+3x^2))`
-/

namespace A111365.P10258400675033914723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -5, -3] n

end

end A111365.P10258400675033914723

namespace A111365

/-- `ogf((-1+4x)/(-1+5x+3x^2))` -/
def P10258400675033914723.Spec : Prop :=
  ∀ n, P10258400675033914723.a n = A111365 n

end A111365

/-! ## A111365.P12782962995195618763

`Δ[A015536(n)]-A106569(n)`
-/

namespace A111365.P12782962995195618763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106569 n

end

end A111365.P12782962995195618763

namespace A111365

/-- `Δ[A015536(n)]-A106569(n)` -/
def P12782962995195618763.Spec : Prop :=
  ∀ n, P12782962995195618763.a n = A111365 n

end A111365

/-! ## A111365.P14635026458755024740

`A180036(n)-2*A015536(n)`
-/

namespace A111365.P14635026458755024740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180036 n - 2 * A015536 n

end

end A111365.P14635026458755024740

namespace A111365

/-- `A180036(n)-2*A015536(n)` -/
def P14635026458755024740.Spec : Prop :=
  ∀ n, P14635026458755024740.a n = A111365 n

end A111365

/-! ## A111365.P1889179088752729285

`A180035(n)-5*A015536(n)`
-/

namespace A111365.P1889179088752729285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180035 n - 5 * A015536 n

end

end A111365.P1889179088752729285

namespace A111365

/-- `A180035(n)-5*A015536(n)` -/
def P1889179088752729285.Spec : Prop :=
  ∀ n, P1889179088752729285.a n = A111365 n

end A111365

/-! ## A111365.P18049515567254545860

`A015536(n)+A180036(n)-A106569(n)`
-/

namespace A111365.P18049515567254545860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 n + (A180036 n - A106569 n)

end

end A111365.P18049515567254545860

namespace A111365

/-- `A015536(n)+A180036(n)-A106569(n)` -/
def P18049515567254545860.Spec : Prop :=
  ∀ n, P18049515567254545860.a n = A111365 n

end A111365

/-!
# A111367: Numbers k such that 7*k + 5 is prime.

The programs for A111367, the canonical program `A111367.P12882933865931024001` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111367 has offset 1).

The definition of A111367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111367.P17682724734812070621

`A024901(n+1)-1`
-/

namespace A111367.P17682724734812070621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024901 (n + 1) - 1

end

end A111367.P17682724734812070621

namespace A111367

/-- `A024901(n+1)-1` -/
def P17682724734812070621.Spec : Prop :=
  ∀ n, P17682724734812070621.a n = A111367 (n + 1)

theorem P17682724734812070621.correct : P17682724734812070621.Spec := by
  intro n
  simp only [A111367, Nat.add_sub_cancel, A111367.P17682724734812070621.a, A111367.P12882933865931024001.a, A024901, A024901.P9565501919091176731.a, A089079, A089079.P830463903294487501.a, A045458, A045458.P6544782327391573442.a, A045447, A045447.P11335890847617652961.f1, A045447.P11335890847617652961.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111367

/-! ## A111367.P12882933865931024001

`A089079(n+1)-4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111367

/-- `A089079(n+1)-4` -/
def P12882933865931024001.Spec : Prop :=
  ∀ n, P12882933865931024001.a n = A111367 (n + 1)

theorem P12882933865931024001.correct : P12882933865931024001.Spec := by
  intro n
  simp only [A111367, Nat.add_sub_cancel]

end A111367

/-! ## A111367.P5444754384973780124

`floor(A045458(n+1)/7)`
-/

namespace A111367.P5444754384973780124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045458 (n + 1) : ℚ) / 7⌋

end

end A111367.P5444754384973780124

namespace A111367

/-- `floor(A045458(n+1)/7)` -/
def P5444754384973780124.Spec : Prop :=
  ∀ n, P5444754384973780124.a n = A111367 (n + 1)

end A111367

/-! ## A111367.P3104491526724793866

`ceil(p?[a(n-1)+7]/7)-1` with `a(0)=5`
-/

namespace A111367.P3104491526724793866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 7⌉ - 1

end

end A111367.P3104491526724793866

namespace A111367

/-- `ceil(p?[a(n-1)+7]/7)-1` -/
def P3104491526724793866.Spec : Prop :=
  ∀ n, P3104491526724793866.a n = A111367 (n + 1)

end A111367

/-! ## A111367.P7496695052942290033

`eq[1, A001222(7*n+5)]`
-/

namespace A111367.P7496695052942290033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111367.P7496695052942290033

namespace A111367

/-- `eq[1, A001222(7*n+5)]` -/
def P7496695052942290033.Spec : Prop :=
  ∀ n, (P7496695052942290033.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P1444462686172988189

`eq[2, A000005(7*n+5)]`
-/

namespace A111367.P1444462686172988189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111367.P1444462686172988189

namespace A111367

/-- `eq[2, A000005(7*n+5)]` -/
def P1444462686172988189.Spec : Prop :=
  ∀ n, (P1444462686172988189.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P6641068074656494802

`lt[A001222(8*n+5-n), 2]`
-/

namespace A111367.P6641068074656494802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5 - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111367.P6641068074656494802

namespace A111367

/-- `lt[A001222(8*n+5-n), 2]` -/
def P6641068074656494802.Spec : Prop :=
  ∀ n, (P6641068074656494802.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P344466418666537907

`lt[A000005(5*(n+1)+2*n), 3]`
-/

namespace A111367.P344466418666537907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1) + 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111367.P344466418666537907

namespace A111367

/-- `lt[A000005(5*(n+1)+2*n), 3]` -/
def P344466418666537907.Spec : Prop :=
  ∀ n, (P344466418666537907.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P5741191077466162030

`lt[n+1, A020639(2*n+5*(n+1))]`
-/

namespace A111367.P5741191077466162030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 5 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111367.P5741191077466162030

namespace A111367

/-- `lt[n+1, A020639(2*n+5*(n+1))]` -/
def P5741191077466162030.Spec : Prop :=
  ∀ n, (P5741191077466162030.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P4465145395956230997

`eq[A010051(A019430(n+1)), A019430(n)]`
-/

namespace A111367.P4465145395956230997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A019430 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111367.P4465145395956230997

namespace A111367

/-- `eq[A010051(A019430(n+1)), A019430(n)]` -/
def P4465145395956230997.Spec : Prop :=
  ∀ n, (P4465145395956230997.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P5381939905763497160

`A004442(A024901(n+1))`
-/

namespace A111367.P5381939905763497160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A024901 (n + 1)).toNat

end

end A111367.P5381939905763497160

namespace A111367

/-- `A004442(A024901(n+1))` -/
def P5381939905763497160.Spec : Prop :=
  ∀ n, P5381939905763497160.a n = A111367 (n + 1)

end A111367

/-! ## A111367.P2792665750182390983

`eq[1, A010051(A016969(n)+n)]`
-/

namespace A111367.P2792665750182390983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A016969 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111367.P2792665750182390983

namespace A111367

/-- `eq[1, A010051(A016969(n)+n)]` -/
def P2792665750182390983.Spec : Prop :=
  ∀ n, (P2792665750182390983.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P4498351839303451825

`lt[A001222(A016969(n)+abs(1-n)+1)+1, 3]`
-/

namespace A111367.P4498351839303451825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + (|1 - (n : ℤ)| + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111367.P4498351839303451825

namespace A111367

/-- `lt[A001222(A016969(n)+abs(1-n)+1)+1, 3]` -/
def P4498351839303451825.Spec : Prop :=
  ∀ n, (P4498351839303451825.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P9701807701523943593

`record[A004273(n+1)-A171435(A017041(2*n))]`
-/

namespace A111367.P9701807701523943593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - A171435 (A017041 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111367.P9701807701523943593

namespace A111367

/-- `record[A004273(n+1)-A171435(A017041(2*n))]` -/
def P9701807701523943593.Spec : Prop :=
  ∀ n, P9701807701523943593.a n = A111367 (n + 1)

end A111367

/-! ## A111367.P7167827897571794703

`A023446(A089079(n+1))`
-/

namespace A111367.P7167827897571794703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A089079 (n + 1)).toNat

end

end A111367.P7167827897571794703

namespace A111367

/-- `A023446(A089079(n+1))` -/
def P7167827897571794703.Spec : Prop :=
  ∀ n, P7167827897571794703.a n = A111367 (n + 1)

end A111367

/-! ## A111367.P10325152139290562133

`eq[1, A054024(A016969(n)+n)]`
-/

namespace A111367.P10325152139290562133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A016969 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111367.P10325152139290562133

namespace A111367

/-- `eq[1, A054024(A016969(n)+n)]` -/
def P10325152139290562133.Spec : Prop :=
  ∀ n, (P10325152139290562133.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P7358904500441898534

`lt[A082023(A016969(n)+n), 1]`
-/

namespace A111367.P7358904500441898534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (A016969 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111367.P7358904500441898534

namespace A111367

/-- `lt[A082023(A016969(n)+n), 1]` -/
def P7358904500441898534.Spec : Prop :=
  ∀ n, (P7358904500441898534.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P9284525147750852832

`lt[n, A014963(7*n+5)]`
-/

namespace A111367.P9284525147750852832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111367.P9284525147750852832

namespace A111367

/-- `lt[n, A014963(7*n+5)]` -/
def P9284525147750852832.Spec : Prop :=
  ∀ n, (P9284525147750852832.a n : ℤ) = A111367 (n + 1)

end A111367

/-! ## A111367.P3495512608898581718

`A132270(A045458(n+1))`
-/

namespace A111367.P3495512608898581718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045458 (n + 1)).toNat

end

end A111367.P3495512608898581718

namespace A111367

/-- `A132270(A045458(n+1))` -/
def P3495512608898581718.Spec : Prop :=
  ∀ n, P3495512608898581718.a n = A111367 (n + 1)

end A111367

/-! ## A111367.P10318174991337225395

`A132270(A045447(n+2))`
-/

namespace A111367.P10318174991337225395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045447 (n + 2)).toNat

end

end A111367.P10318174991337225395

namespace A111367

/-- `A132270(A045447(n+2))` -/
def P10318174991337225395.Spec : Prop :=
  ∀ n, P10318174991337225395.a n = A111367 (n + 1)

end A111367

/-!
# A111369: Numbers k such that 13*k + 11 is prime.

The programs for A111369, the canonical program `A111369.P14796522210221468630` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111369 has offset 1).

The definition of A111369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111369.P14796522210221468630

`floor(A140373(n+1)/13)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111369

/-- `floor(A140373(n+1)/13)` -/
def P14796522210221468630.Spec : Prop :=
  ∀ n, P14796522210221468630.a n = A111369 (n + 1)

theorem P14796522210221468630.correct : P14796522210221468630.Spec := by
  intro n
  simp only [A111369, Nat.add_sub_cancel]

end A111369

/-! ## A111369.P17903324730035431696

`eq[1, A001222(13*n+11)]`
-/

namespace A111369.P17903324730035431696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (13 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111369.P17903324730035431696

namespace A111369

/-- `eq[1, A001222(13*n+11)]` -/
def P17903324730035431696.Spec : Prop :=
  ∀ n, (P17903324730035431696.a n : ℤ) = A111369 (n + 1)

end A111369

/-! ## A111369.P7592918333542848198

`eq[2, A000005(13*n+11)]`
-/

namespace A111369.P7592918333542848198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (13 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111369.P7592918333542848198

namespace A111369

/-- `eq[2, A000005(13*n+11)]` -/
def P7592918333542848198.Spec : Prop :=
  ∀ n, (P7592918333542848198.a n : ℤ) = A111369 (n + 1)

end A111369

/-! ## A111369.P3078796250938183799

`lt[A001222(12*n+11+n), 2]`
-/

namespace A111369.P3078796250938183799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 11 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111369.P3078796250938183799

namespace A111369

/-- `lt[A001222(12*n+11+n), 2]` -/
def P3078796250938183799.Spec : Prop :=
  ∀ n, (P3078796250938183799.a n : ℤ) = A111369 (n + 1)

end A111369

/-! ## A111369.P5734970541288164209

`lt[n+1, A020639(13*n+11)]`
-/

namespace A111369.P5734970541288164209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (13 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111369.P5734970541288164209

namespace A111369

/-- `lt[n+1, A020639(13*n+11)]` -/
def P5734970541288164209.Spec : Prop :=
  ∀ n, (P5734970541288164209.a n : ℤ) = A111369 (n + 1)

end A111369

/-! ## A111369.P2918141832729995297

`lt[A000005(12*n+11+n)-2, 2]`
-/

namespace A111369.P2918141832729995297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 11 + n) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111369.P2918141832729995297

namespace A111369

/-- `lt[A000005(12*n+11+n)-2, 2]` -/
def P2918141832729995297.Spec : Prop :=
  ∀ n, (P2918141832729995297.a n : ℤ) = A111369 (n + 1)

end A111369

/-! ## A111369.P12927795544813251083

`record[A004273(n+1)-A171435(A269100(2*n))]`
-/

namespace A111369.P12927795544813251083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - A171435 (A269100 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111369.P12927795544813251083

namespace A111369

/-- `record[A004273(n+1)-A171435(A269100(2*n))]` -/
def P12927795544813251083.Spec : Prop :=
  ∀ n, P12927795544813251083.a n = A111369 (n + 1)

end A111369

/-! ## A111369.P11245107243068418941

`lt[A175851(A017653(n)+n), 2]`
-/

namespace A111369.P11245107243068418941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A017653 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111369.P11245107243068418941

namespace A111369

/-- `lt[A175851(A017653(n)+n), 2]` -/
def P11245107243068418941.Spec : Prop :=
  ∀ n, (P11245107243068418941.a n : ℤ) = A111369 (n + 1)

end A111369

/-! ## A111369.P5315904245609672661

`record[n+1-A107463(13*(n+1)-2)]`
-/

namespace A111369.P5315904245609672661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A107463 (13 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111369.P5315904245609672661

namespace A111369

/-- `record[n+1-A107463(13*(n+1)-2)]` -/
def P5315904245609672661.Spec : Prop :=
  ∀ n, P5315904245609672661.a n = A111369 (n + 1)

end A111369

/-! ## A111369.P2500923007174683104

`eq[1, A003415(13*n+11)]`
-/

namespace A111369.P2500923007174683104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (13 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111369.P2500923007174683104

namespace A111369

/-- `eq[1, A003415(13*n+11)]` -/
def P2500923007174683104.Spec : Prop :=
  ∀ n, (P2500923007174683104.a n : ℤ) = A111369 (n + 1)

end A111369

/-! ## A111369.P17839560830409885448

`record[n%A014963(13*n+11)]`
-/

namespace A111369.P17839560830409885448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (13 * n + 11))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111369.P17839560830409885448

namespace A111369

/-- `record[n%A014963(13*n+11)]` -/
def P17839560830409885448.Spec : Prop :=
  ∀ n, P17839560830409885448.a n = A111369 (n + 1)

end A111369

/-!
# A111370: Number of partitions of (6*n + 1).

The programs for A111370, there is no canonical definition to state claims against.
-/

/-! ## A111370.P3786433391276997911

`A000041(6*n+1)`
-/

namespace A111370.P3786433391276997911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (6 * n + 1)

end

end A111370.P3786433391276997911

/-! ## A111370.P16315726965829272936

`A111295(2*n)`
-/

namespace A111370.P16315726965829272936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111295 (2 * n)

end

end A111370.P16315726965829272936

/-! ## A111370.P5390452677970327777

`A058695(3*n)`
-/

namespace A111370.P5390452677970327777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 (3 * n)

end

end A111370.P5390452677970327777

/-! ## A111370.P16278463778149667447

`A086543(A271114(n))`
-/

namespace A111370.P16278463778149667447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (A271114 n).toNat

end

end A111370.P16278463778149667447

/-! ## A111370.P1633937762335554858

`∩[A058695(n), A111295(n)]`
-/

namespace A111370.P1633937762335554858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111295 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111370.P1633937762335554858

/-! ## A111370.P12489144653888485159

`record[A000041(A075677(Δ[n²]))]`
-/

namespace A111370.P12489144653888485159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A075677 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111370.P12489144653888485159

/-! ## A111370.P8162240269054881422

`A035363(12*n+2)`
-/

namespace A111370.P8162240269054881422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (12 * n + 2)

end

end A111370.P8162240269054881422

/-! ## A111370.P2845421351268870127

`A119620(A017557(n))`
-/

namespace A111370.P2845421351268870127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A017557 n).toNat

end

end A111370.P2845421351268870127

/-! ## A111370.P16963095033958451729

`A194451(A017533(n))`
-/

namespace A111370.P16963095033958451729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A017533 n).toNat

end

end A111370.P16963095033958451729

/-! ## A111370.P14184124676103750325

`A066639(A063098(n+1))`
-/

namespace A111370.P14184124676103750325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066639 (A063098 (n + 1)).toNat

end

end A111370.P14184124676103750325

/-! ## A111370.P1990563097048523936

`A119620(A056106(2*n+1)-A056106(2*n))`
-/

namespace A111370.P1990563097048523936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A056106 (2 * n + 1) - A056106 (2 * n)).toNat

end

end A111370.P1990563097048523936

/-! ## A111370.P6361716495125295345

`A035444(24*n+4)`
-/

namespace A111370.P6361716495125295345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (24 * n + 4)

end

end A111370.P6361716495125295345

/-! ## A111370.P3318205776766141259

`A035377(A298035(n+1))`
-/

namespace A111370.P3318205776766141259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A298035 (n + 1)).toNat

end

end A111370.P3318205776766141259

/-! ## A111370.P7195284106390021031

`A035377(A062741(2*n+1)-A062741(2*n))`
-/

namespace A111370.P7195284106390021031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A062741 (2 * n + 1) - A062741 (2 * n)).toNat

end

end A111370.P7195284106390021031

/-! ## A111370.P2851962598722971020

`A114099(A152996(2*n+1)-A152996(2*n))`
-/

namespace A111370.P2851962598722971020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A152996 (2 * n + 1) - A152996 (2 * n)).toNat

end

end A111370.P2851962598722971020

/-! ## A111370.P14322268419245197017

`A299200(A031906(n+1))`
-/

namespace A111370.P14322268419245197017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A031906 (n + 1)).toNat

end

end A111370.P14322268419245197017

/-!
# A111371: A number k is included if at least one prime dividing k is equal to an exponent of the highest power of any prime dividing k.

The programs for A111371, there is no canonical definition to state claims against.
-/

/-! ## A111371.P15726354570419898700

`record[A137257(A001222(2*n+3)+A001222(n+1))]`
-/

namespace A111371.P15726354570419898700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (A001222 (2 * n + 3) + A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111371.P15726354570419898700

/-! ## A111371.P1487736508068356938

`lt[A278908(3*n+1), A278908(A320305(n))]`
-/

namespace A111371.P1487736508068356938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A320305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111371.P1487736508068356938

/-! ## A111371.P4042893541671474159

`A355740(lt[A112031(n), A003052(n+1)])`
-/

namespace A111371.P4042893541671474159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A111371.P4042893541671474159

/-! ## A111371.P3641790140497375496

`A137257(A039158(n+1)*A287378(n))`
-/

namespace A111371.P3641790140497375496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (A039158 (n + 1) * A287378 n).toNat

end

end A111371.P3641790140497375496

/-! ## A111371.P1066949179518060676

`A013929(A075465(n+3))%A033042(A126031(n+1))`
-/

namespace A111371.P1066949179518060676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013929 (A075465 (n + 3)).toNat) (A033042 (A126031 (n + 1)).toNat)

end

end A111371.P1066949179518060676

/-!
# A111373: A generalized Pascal triangle.

The programs for A111373, there is no canonical definition to state claims against.
-/

/-! ## A111373.P5688741257218346874

`A216763(abs(A215060(n)))`
-/

namespace A111373.P5688741257218346874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 |A215060 n|.toNat

end

end A111373.P5688741257218346874

/-! ## A111373.P2456229670151065629

`A267263(A215060(n)²)`
-/

namespace A111373.P2456229670151065629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A215060 n ^ 2).toNat

end

end A111373.P2456229670151065629

/-! ## A111373.P5086979547700591209

`A267263(A215060(n)*A215060(n))`
-/

namespace A111373.P5086979547700591209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A215060 n * A215060 n).toNat

end

end A111373.P5086979547700591209

/-! ## A111373.P14372861115761835017

`lcm(A094215(A130321(n)), A126030(n))`
-/

namespace A111373.P14372861115761835017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094215 (A130321 n).toNat) (A126030 n)

end

end A111373.P14372861115761835017

/-! ## A111373.P13784031091422778859

`A253189(A351374(n+1))`
-/

namespace A111373.P13784031091422778859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253189 (A351374 (n + 1)).toNat

end

end A111373.P13784031091422778859

/-!
# A111376: Let qf(a,q) = Product(1-a*q^j,j=0..infinity); g.f. is qf(q^3,q^7)*qf(q^5,q^7)*qf(q^6,q^7)/(qf(q,q^7)*qf(q^2,q^7)*qf(q^4,q^7)).

The programs for A111376, there is no canonical definition to state claims against.
-/

/-! ## A111376.P15963014280074035956

`floor(n/(xor(n, n+1)+1))+1-A001221(A146681(n+1))`
-/

namespace A111376.P15963014280074035956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 - A001221 (A146681 (n + 1)).toNat

end

end A111376.P15963014280074035956

/-! ## A111376.P13297398147285617426

`A336161(n+1)-A333382(A032020(n))`
-/

namespace A111376.P13297398147285617426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336161 (n + 1) - A333382 (A032020 n).toNat

end

end A111376.P13297398147285617426

/-! ## A111376.P3348713453622080050

`A003602(n+1)-A001221(A146681(n+1))`
-/

namespace A111376.P3348713453622080050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A001221 (A146681 (n + 1)).toNat

end

end A111376.P3348713453622080050

/-! ## A111376.P2094095852411020896

`A001221(A318637(n+2))-A318659(n+2)`
-/

namespace A111376.P2094095852411020896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A318637 (n + 2)).toNat - A318659 (n + 2)

end

end A111376.P2094095852411020896

/-! ## A111376.P15056724280055827592

`or(A016371(A157402(n+1)), A347042(n+2))`
-/

namespace A111376.P15056724280055827592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016371 (A157402 (n + 1)).toNat) (A347042 (n + 2))

end

end A111376.P15056724280055827592

/-!
# A111377: Triangle of sum of product of partitions of n where largest part is k.

The programs for A111377, there is no canonical definition to state claims against.
-/

/-! ## A111377.P11392812533300757227

`A175267(A113340(n))+A172467(n+1)`
-/

namespace A111377.P11392812533300757227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175267 (A113340 n).toNat + A172467 (n + 1)

end

end A111377.P11392812533300757227

/-! ## A111377.P13077875927111147763

`A002260(n+1)*A353490(A284482(n))`
-/

namespace A111377.P13077875927111147763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A353490 (A284482 n).toNat

end

end A111377.P13077875927111147763

/-! ## A111377.P5467108614398558402

`A350871(A107764(n+1))`
-/

namespace A111377.P5467108614398558402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350871 (A107764 (n + 1)).toNat

end

end A111377.P5467108614398558402

/-! ## A111377.P7162370162102750956

`A329317(A179457(n+1))`
-/

namespace A111377.P7162370162102750956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329317 (A179457 (n + 1)).toNat

end

end A111377.P7162370162102750956

/-! ## A111377.P11192782805118708272

`A296610(A136535(n+1))%8`
-/

namespace A111377.P11192782805118708272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296610 (A136535 (n + 1)).toNat) 8

end

end A111377.P11192782805118708272

/-!
# A111378: Squares that are equal to the sum of two Fibonacci numbers.

The programs for A111378, there is no canonical definition to state claims against.
-/

/-! ## A111378.P1469633298886441045

`A344661(n+1)²`
-/

namespace A111378.P1469633298886441045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344661 (n + 1) ^ 2

end

end A111378.P1469633298886441045

/-! ## A111378.P9257665853272339259

`∩[A084176(n+1), n²]`
-/

namespace A111378.P9257665853272339259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A111378.P9257665853272339259

/-! ## A111378.P3733503615267704080

`A344661(∑[C(dr(n), 9)+1])^2`
-/

namespace A111378.P3733503615267704080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.digitalRoot (n : ℤ)) 9 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344661 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A111378.P3733503615267704080

/-! ## A111378.P7902771874046505564

`A344661(∪[2*n+1, floor(n/4+n+1)])^2`
-/

namespace A111378.P7902771874046505564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4 + (n + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344661 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n) ^ 2

end

end A111378.P7902771874046505564

/-! ## A111378.P13774134898186734518

`A344661(A239086(n+1))^2`
-/

namespace A111378.P13774134898186734518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344661 (A239086 (n + 1)).toNat ^ 2

end

end A111378.P13774134898186734518

/-!
# A111380: Smallest prime whose digital sum is equal to the n-th composite number not congruent to 0 (modulo 3).

The programs for A111380, there is no canonical definition to state claims against.
-/

/-! ## A111380.P17301428563855910122

`A067180(A171993(n+2))`
-/

namespace A111380.P17301428563855910122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A171993 (n + 2)).toNat

end

end A111380.P17301428563855910122

/-! ## A111380.P4846057764886060727

`A067180(eq[A010126(n), A107393(n)])`
-/

namespace A111380.P4846057764886060727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111380.P4846057764886060727

/-! ## A111380.P14896980737018599325

`A067180(eq[A010135(n), A107393(n)])`
-/

namespace A111380.P14896980737018599325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111380.P14896980737018599325

/-! ## A111380.P5425980582763461781

`A067180(eq[A010144(n), A107393(n)])`
-/

namespace A111380.P5425980582763461781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111380.P5425980582763461781

/-! ## A111380.P5963450615500508887

`A067180(eq[A010179(n), A107393(n)])`
-/

namespace A111380.P5963450615500508887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111380.P5963450615500508887

/-! ## A111380.P1054094284468511516

`A067180(eq[A040634(n), A107393(n)])`
-/

namespace A111380.P1054094284468511516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111380.P1054094284468511516

/-! ## A111380.P9291194375264502204

`A067180(A157695(n+1))`
-/

namespace A111380.P9291194375264502204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A157695 (n + 1)).toNat

end

end A111380.P9291194375264502204

/-!
# A111383: Beginning with 3, least member of A007500 such that concatenation of first n terms and its digit reversal both are primes.

The programs for A111383, there is no canonical definition to state claims against.
-/

/-! ## A111383.P15814424227723051033

`A105437(A209599(n)+A055503(n))`
-/

namespace A111383.P15814424227723051033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105437 (A209599 n + A055503 n).toNat

end

end A111383.P15814424227723051033

/-! ## A111383.P15095461846710141384

`A210479(A076387(n+1)^A036412(n+4))`
-/

namespace A111383.P15095461846710141384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210479 (SequenceMachineLib.roundAway ((A076387 (n + 1) : ℚ) ^ (A036412 (n + 4) : ℤ))).toNat

end

end A111383.P15095461846710141384

/-!
# A111384: a(n) = binomial(n,3) - binomial(floor(n/2),3) - binomial(ceiling(n/2),3).

The programs for A111384, the canonical program `A111384.P11780308479865035881` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111384 has offset 0).

The definition of A111384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 3)-C(floor(n/2), 3)-C(ceil(n/2), 3)` (program `A111384.P11780308479865035881`, by `A111384.P11780308479865035881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111384.P15650387318686277434

`floor(n/2)*ceil(n/2)*(n-2)/2`
-/

namespace A111384.P15650387318686277434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ * ⌈(n : ℚ) / 2⌉ * ((n : ℤ) - 2) : ℚ) / 2

end

end A111384.P15650387318686277434

namespace A111384

/-- `floor(n/2)*ceil(n/2)*(n-2)/2` -/
def P15650387318686277434.Spec : Prop :=
  ∀ n, P15650387318686277434.a n = (A111384 n : ℚ)

end A111384

/-! ## A111384.P11780308479865035881

`C(n, 3)-C(floor(n/2), 3)-C(ceil(n/2), 3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111384

/-- `C(n, 3)-C(floor(n/2), 3)-C(ceil(n/2), 3)` -/
def P11780308479865035881.Spec : Prop :=
  ∀ n, P11780308479865035881.a n = A111384 n

theorem P11780308479865035881.correct : P11780308479865035881.Spec := by
  intro n
  simp only [A111384]

end A111384

/-! ## A111384.P16912217178279794809

`∑[floor(∑[(lcm(2, 1-n)-1)/2])]`
-/

namespace A111384.P16912217178279794809
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (1 - (n : ℤ)) : ℤ) - 1 : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111384.P16912217178279794809

namespace A111384

/-- `∑[floor(∑[(lcm(2, 1-n)-1)/2])]` -/
def P16912217178279794809.Spec : Prop :=
  ∀ n, P16912217178279794809.a n = A111384 n

end A111384

/-! ## A111384.P8667092884827570970

`∑[∑[a(n-2)+gcd(2, n)]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A111384.P8667092884827570970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 2) + Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111384.P8667092884827570970

namespace A111384

/-- `∑[∑[a(n-2)+gcd(2, n)]]` -/
def P8667092884827570970.Spec : Prop :=
  ∀ n, (P8667092884827570970.a n : ℤ) = A111384 n

end A111384

/-! ## A111384.P15374786628697231798

`n/4*∑[and(n, -2)]-floor((n/2)²)`
-/

namespace A111384.P15374786628697231798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (⌊((n : ℚ) / 2) ^ 2⌋ : ℚ)

end

end A111384.P15374786628697231798

namespace A111384

/-- `n/4*∑[and(n, -2)]-floor((n/2)²)` -/
def P15374786628697231798.Spec : Prop :=
  ∀ n, P15374786628697231798.a n = (A111384 n : ℚ)

end A111384

/-! ## A111384.P10231811698981545070

`∑[a(n-2)+3]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A111384.P10231811698981545070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A111384.P10231811698981545070

namespace A111384

/-- `∑[a(n-2)+3]+a(n-2)` -/
def P10231811698981545070.Spec : Prop :=
  ∀ n, (P10231811698981545070.a n : ℤ) = A111384 n

end A111384

/-! ## A111384.P18324916895760908737

`∑[A211538(n+1)]`
-/

namespace A111384.P18324916895760908737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111384.P18324916895760908737

namespace A111384

/-- `∑[A211538(n+1)]` -/
def P18324916895760908737.Spec : Prop :=
  ∀ n, P18324916895760908737.a n = A111384 n

end A111384

/-! ## A111384.P7671706112460905478

`∑[A258087(n)-n]+n`
-/

namespace A111384.P7671706112460905478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258087 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A111384.P7671706112460905478

namespace A111384

/-- `∑[A258087(n)-n]+n` -/
def P7671706112460905478.Spec : Prop :=
  ∀ n, P7671706112460905478.a n = A111384 n

end A111384

/-! ## A111384.P1921018836614922630

`A034828(n)-A002620(n)`
-/

namespace A111384.P1921018836614922630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n - A002620 n

end

end A111384.P1921018836614922630

namespace A111384

/-- `A034828(n)-A002620(n)` -/
def P1921018836614922630.Spec : Prop :=
  ∀ n, P1921018836614922630.a n = A111384 n

end A111384

/-! ## A111384.P16364454226917597329

`A131474(n)-A178312(n)`
-/

namespace A111384.P16364454226917597329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 n - A178312 n

end

end A111384.P16364454226917597329

namespace A111384

/-- `A131474(n)-A178312(n)` -/
def P16364454226917597329.Spec : Prop :=
  ∀ n, P16364454226917597329.a n = A111384 n

end A111384

/-! ## A111384.P16965705681822642400

`A109900(n)-A210977(n)`
-/

namespace A111384.P16965705681822642400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n - A210977 n

end

end A111384.P16965705681822642400

namespace A111384

/-- `A109900(n)-A210977(n)` -/
def P16965705681822642400.Spec : Prop :=
  ∀ n, P16965705681822642400.a n = A111384 n

end A111384

/-! ## A111384.P8335521963055214387

`A131475(n)-A290168(n)`
-/

namespace A111384.P8335521963055214387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131475 n - A290168 n

end

end A111384.P8335521963055214387

namespace A111384

/-- `A131475(n)-A290168(n)` -/
def P8335521963055214387.Spec : Prop :=
  ∀ n, P8335521963055214387.a n = A111384 n

end A111384

/-! ## A111384.P9298622078696429393

`A330298(n)+A028724(n+1)`
-/

namespace A111384.P9298622078696429393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330298 n + A028724 (n + 1)

end

end A111384.P9298622078696429393

namespace A111384

/-- `A330298(n)+A028724(n+1)` -/
def P9298622078696429393.Spec : Prop :=
  ∀ n, P9298622078696429393.a n = A111384 n

end A111384

/-! ## A111384.P12617131451298480495

`A280186(n)+A006584(n)/2`
-/

namespace A111384.P12617131451298480495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280186 n : ℚ) + (A006584 n : ℚ) / 2

end

end A111384.P12617131451298480495

namespace A111384

/-- `A280186(n)+A006584(n)/2` -/
def P12617131451298480495.Spec : Prop :=
  ∀ n, P12617131451298480495.a n = (A111384 n : ℚ)

end A111384

/-! ## A111384.P14217275387075531377

`A034828(n)-A007590(n)/2`
-/

namespace A111384.P14217275387075531377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034828 n : ℚ) - (A007590 n : ℚ) / 2

end

end A111384.P14217275387075531377

namespace A111384

/-- `A034828(n)-A007590(n)/2` -/
def P14217275387075531377.Spec : Prop :=
  ∀ n, P14217275387075531377.a n = (A111384 n : ℚ)

end A111384

/-! ## A111384.P1118383314089579264

`A212964(n)-A006584(n)/2`
-/

namespace A111384.P1118383314089579264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212964 n : ℚ) - (A006584 n : ℚ) / 2

end

end A111384.P1118383314089579264

namespace A111384

/-- `A212964(n)-A006584(n)/2` -/
def P1118383314089579264.Spec : Prop :=
  ∀ n, P1118383314089579264.a n = (A111384 n : ℚ)

end A111384

/-! ## A111384.P16992599894864826686

`∑[∑[A026741(A014681(n))]-n]`
-/

namespace A111384.P16992599894864826686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111384.P16992599894864826686

namespace A111384

/-- `∑[∑[A026741(A014681(n))]-n]` -/
def P16992599894864826686.Spec : Prop :=
  ∀ n, P16992599894864826686.a n = A111384 n

end A111384

/-! ## A111384.P15656122211663955505

`∑[∑[A029578(n)]-A029578(n)]`
-/

namespace A111384.P15656122211663955505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111384.P15656122211663955505

namespace A111384

/-- `∑[∑[A029578(n)]-A029578(n)]` -/
def P15656122211663955505.Spec : Prop :=
  ∀ n, P15656122211663955505.a n = A111384 n

end A111384

/-! ## A111384.P4481796382102125936

`∑[A272058(n+1)]-n²`
-/

namespace A111384.P4481796382102125936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A111384.P4481796382102125936

namespace A111384

/-- `∑[A272058(n+1)]-n²` -/
def P4481796382102125936.Spec : Prop :=
  ∀ n, P4481796382102125936.a n = A111384 n

end A111384

/-! ## A111384.P12821615081020614437

`A080838(n+2)-A007590(n)`
-/

namespace A111384.P12821615081020614437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080838 (n + 2) - A007590 n

end

end A111384.P12821615081020614437

namespace A111384

/-- `A080838(n+2)-A007590(n)` -/
def P12821615081020614437.Spec : Prop :=
  ∀ n, P12821615081020614437.a n = A111384 n

end A111384

/-!
# A111385: a(n) = binomial(n,4) - binomial(floor(n/2),4) - binomial(ceiling(n/2),4).

The programs for A111385, the canonical program `A111385.P1887687991672321267` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111385 has offset 0).

The definition of A111385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 4)-C(floor(n/2), 4)-C(ceil(n/2), 4)` (program `A111385.P1887687991672321267`, by `A111385.P1887687991672321267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111385.P1887687991672321267

`C(n, 4)-C(floor(n/2), 4)-C(ceil(n/2), 4)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111385

/-- `C(n, 4)-C(floor(n/2), 4)-C(ceil(n/2), 4)` -/
def P1887687991672321267.Spec : Prop :=
  ∀ n, P1887687991672321267.a n = A111385 n

theorem P1887687991672321267.correct : P1887687991672321267.Spec := by
  intro n
  simp only [A111385]

end A111385

/-! ## A111385.P14884277287133215483

`∑[A050407(n)-A050407(A110654(n))]`
-/

namespace A111385.P14884277287133215483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n - A050407 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111385.P14884277287133215483

namespace A111385

/-- `∑[A050407(n)-A050407(A110654(n))]` -/
def P14884277287133215483.Spec : Prop :=
  ∀ n, P14884277287133215483.a n = A111385 n

end A111385

/-! ## A111385.P2636121375416748048

`∑[∑[A084928(A072277(n+3))]]`
-/

namespace A111385.P2636121375416748048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084928 (A072277 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111385.P2636121375416748048

namespace A111385

/-- `∑[∑[A084928(A072277(n+3))]]` -/
def P2636121375416748048.Spec : Prop :=
  ∀ n, P2636121375416748048.a n = A111385 n

end A111385

/-! ## A111385.P13161112197034562416

`C(n, 4)-A023416(A283920(n+3))`
-/

namespace A111385.P13161112197034562416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - A023416 (A283920 (n + 3)).toNat

end

end A111385.P13161112197034562416

namespace A111385

/-- `C(n, 4)-A023416(A283920(n+3))` -/
def P13161112197034562416.Spec : Prop :=
  ∀ n, P13161112197034562416.a n = A111385 n

end A111385

/-! ## A111385.P17404741020874717164

`xor(C(n, 4), A326031(A324088(n+1)))`
-/

namespace A111385.P17404741020874717164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n 4 : ℤ) (A326031 (A324088 (n + 1)).toNat)

end

end A111385.P17404741020874717164

namespace A111385

/-- `xor(C(n, 4), A326031(A324088(n+1)))` -/
def P17404741020874717164.Spec : Prop :=
  ∀ n, P17404741020874717164.a n = A111385 n

end A111385

/-!
# A111388: a(n) = floor(log(A111288(n))).

The programs for A111388, there is no canonical definition to state claims against.
-/

/-! ## A111388.P7447205995454667402

`floor(log(A111288(n+1)))`
-/

namespace A111388.P7447205995454667402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A111288 (n + 1) : ℝ)⌋

end

end A111388.P7447205995454667402

/-! ## A111388.P2011954111283926000

`A004526(∑[A107458(n+1)]^A265404(n))`
-/

namespace A111388.P2011954111283926000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A265404 n : ℤ))).toNat

end

end A111388.P2011954111283926000

/-! ## A111388.P12763844421376747310

`round(A239954(3*n+2)/A002061(3*n+1))`
-/

namespace A111388.P12763844421376747310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A239954 (3 * n + 2) : ℚ) / (A002061 (3 * n + 1) : ℚ))

end

end A111388.P12763844421376747310

/-! ## A111388.P5375273725969030756

`A102705(A319470(n))`
-/

namespace A111388.P5375273725969030756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A319470 n).toNat

end

end A111388.P5375273725969030756

/-! ## A111388.P12632026874314972108

`A121902(A122584(n+2))`
-/

namespace A111388.P12632026874314972108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A122584 (n + 2)).toNat

end

end A111388.P12632026874314972108

/-!
# A111389: Numbers n such that p(3n) is prime, where p(n) is the number of partitions of n.

The programs for A111389, there is no canonical definition to state claims against.
-/

/-! ## A111389.P17230277325781542574

`eq[1, A085561(3*n)]`
-/

namespace A111389.P17230277325781542574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111389.P17230277325781542574

/-! ## A111389.P15340821910352841821

`eq[2, A085543(3*n)]`
-/

namespace A111389.P15340821910352841821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111389.P15340821910352841821

/-! ## A111389.P12922261224059683683

`eq[2, A278241(A008486(n))]`
-/

namespace A111389.P12922261224059683683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111389.P12922261224059683683

/-! ## A111389.P9270251684872282565

`eq[2, A278241(A008585(n))]`
-/

namespace A111389.P9270251684872282565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (A008585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111389.P9270251684872282565

/-! ## A111389.P1275715505089343726

`record[A135997(A046063(n+1))]`
-/

namespace A111389.P1275715505089343726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A046063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111389.P1275715505089343726

/-!
# A111391: Numbers k such that 11*10^k - 1 is prime.

The programs for A111391, there is no canonical definition to state claims against.
-/

/-! ## A111391.P13760371495262340700

`eq[A113311(n), A133304(n+1)]`
-/

namespace A111391.P13760371495262340700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111391.P13760371495262340700

/-!
# A111393: Number of digits in n^3.

The programs for A111393, the canonical program `A111393.P7018722074075758089` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111393 has offset 1).

The definition of A111393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111393.P7018722074075758089

`∑{digits}[(n+1)^3, (#%2)!]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111393

/-- `∑{digits}[(n+1)^3, (#%2)!]` -/
def P7018722074075758089.Spec : Prop :=
  ∀ n, (P7018722074075758089.a n : ℤ) = A111393 (n + 1)

theorem P7018722074075758089.correct : P7018722074075758089.Spec := by
  intro n
  simp only [A111393, Nat.add_sub_cancel]

end A111393

/-! ## A111393.P18441824888603022800

`∑{digits}[(n+1)^3, and(1, #)!]`
-/

namespace A111393.P18441824888603022800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A111393.P18441824888603022800

namespace A111393

/-- `∑{digits}[(n+1)^3, and(1, #)!]` -/
def P18441824888603022800.Spec : Prop :=
  ∀ n, (P18441824888603022800.a n : ℤ) = A111393 (n + 1)

theorem P18441824888603022800.correct : P18441824888603022800.Spec := by
  intro n
  simp only [A111393, Nat.add_sub_cancel, A111393.P18441824888603022800.f1, A111393.P18441824888603022800.a, A111393.P7018722074075758089.f1, A111393.P7018722074075758089.a, SequenceMachineLib.memo_apply]
  try simp

end A111393

/-! ## A111393.P14565310788869299484

`∑{digits}[(n+1)^3, dr(10^#)]`
-/

namespace A111393.P14565310788869299484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum

end

end A111393.P14565310788869299484

namespace A111393

/-- `∑{digits}[(n+1)^3, dr(10^#)]` -/
def P14565310788869299484.Spec : Prop :=
  ∀ n, (P14565310788869299484.a n : ℤ) = A111393 (n + 1)

end A111393

/-! ## A111393.P16187822330678454363

`∑{digits}[(n+1)^3, A036370(#)]`
-/

namespace A111393.P16187822330678454363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A111393.P16187822330678454363

namespace A111393

/-- `∑{digits}[(n+1)^3, A036370(#)]` -/
def P16187822330678454363.Spec : Prop :=
  ∀ n, P16187822330678454363.a n = A111393 (n + 1)

end A111393

/-! ## A111393.P11492134007413612431

`∑{digits}[A000578(n+1), A010052(#²)]`
-/

namespace A111393.P11492134007413612431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010052 (x ^ 2)).sum

end

end A111393.P11492134007413612431

namespace A111393

/-- `∑{digits}[A000578(n+1), A010052(#²)]` -/
def P11492134007413612431.Spec : Prop :=
  ∀ n, P11492134007413612431.a n = A111393 (n + 1)

end A111393

/-! ## A111393.P5089586059562950117

`A104640(n+1)+A104639(n+1)`
-/

namespace A111393.P5089586059562950117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1) + A104639 (n + 1)

end

end A111393.P5089586059562950117

namespace A111393

/-- `A104640(n+1)+A104639(n+1)` -/
def P5089586059562950117.Spec : Prop :=
  ∀ n, P5089586059562950117.a n = A111393 (n + 1)

end A111393

/-! ## A111393.P7047196848950412265

`∑{digits}[(n+1)^3, A007318(A007318(#))]`
-/

namespace A111393.P7047196848950412265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A111393.P7047196848950412265

namespace A111393

/-- `∑{digits}[(n+1)^3, A007318(A007318(#))]` -/
def P7047196848950412265.Spec : Prop :=
  ∀ n, P7047196848950412265.a n = A111393 (n + 1)

end A111393

/-! ## A111393.P17200881808530871295

`∑{digits}[A000578(n+1), A010057(A000578(#))]`
-/

namespace A111393.P17200881808530871295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010057 (A000578 x).toNat).sum

end

end A111393.P17200881808530871295

namespace A111393

/-- `∑{digits}[A000578(n+1), A010057(A000578(#))]` -/
def P17200881808530871295.Spec : Prop :=
  ∀ n, P17200881808530871295.a n = A111393 (n + 1)

end A111393

/-! ## A111393.P3618801118566073430

`A185679(A002821(n+1))`
-/

namespace A111393.P3618801118566073430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A002821 (n + 1)).toNat

end

end A111393.P3618801118566073430

namespace A111393

/-- `A185679(A002821(n+1))` -/
def P3618801118566073430.Spec : Prop :=
  ∀ n, P3618801118566073430.a n = A111393 (n + 1)

end A111393

/-! ## A111393.P6172449123081329699

`A110591(A099801(2*n²))`
-/

namespace A111393.P6172449123081329699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A099801 (2 * n ^ 2)).toNat

end

end A111393.P6172449123081329699

namespace A111393

/-- `A110591(A099801(2*n²))` -/
def P6172449123081329699.Spec : Prop :=
  ∀ n, P6172449123081329699.a n = A111393 (n + 1)

end A111393

/-!
# A111394: a(n) = product of first n integers not divisible by 3.

The programs for A111394, the canonical program `A111394.P2570452837398090753` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111394 has offset 1).

The definition of A111394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111394.P2570452837398090753

`((3*(n+1)-(n+1)%2)/2)!/(3^((n+1-(n+1)%2)/2)*((n+1-(n+1)%2)/2)!)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111394

/-- `((3*(n+1)-(n+1)%2)/2)!/(3^((n+1-(n+1)%2)/2)*((n+1-(n+1)%2)/2)!)` -/
def P2570452837398090753.Spec : Prop :=
  ∀ n, P2570452837398090753.a n = (A111394 (n + 1) : ℝ)

end A111394

/-! ## A111394.P13225784639392949561

`∏[comp[3*n]]`
-/

namespace A111394.P13225784639392949561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111394.P13225784639392949561

namespace A111394

/-- `∏[comp[3*n]]` -/
def P13225784639392949561.Spec : Prop :=
  ∀ n, (P13225784639392949561.a n : ℤ) = A111394 (n + 1)

end A111394

/-! ## A111394.P3000492619663009133

`abs(∏[-comp[lcm(3, n)]])`
-/

namespace A111394.P3000492619663009133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A111394.P3000492619663009133

namespace A111394

/-- `abs(∏[-comp[lcm(3, n)]])` -/
def P3000492619663009133.Spec : Prop :=
  ∀ n, P3000492619663009133.a n = A111394 (n + 1)

end A111394

/-! ## A111394.P2438771269574109094

`floor(∏[a(n-2)+3])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A111394.P2438771269574109094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111394.P2438771269574109094

namespace A111394

/-- `floor(∏[a(n-2)+3])` -/
def P2438771269574109094.Spec : Prop :=
  ∀ n, (P2438771269574109094.a n : ℤ) = A111394 (n + 1)

end A111394

/-! ## A111394.P12808279228363934439

`round(∏[a(n-2)+3])` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A111394.P12808279228363934439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111394.P12808279228363934439

namespace A111394

/-- `round(∏[a(n-2)+3])` -/
def P12808279228363934439.Spec : Prop :=
  ∀ n, (P12808279228363934439.a n : ℤ) = A111394 (n + 1)

end A111394

/-! ## A111394.P9940139456773911565

`a(n-1)*comp[3*n]` with `a(0)=1`
-/

namespace A111394.P9940139456773911565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A111394.P9940139456773911565

namespace A111394

/-- `a(n-1)*comp[3*n]` -/
def P9940139456773911565.Spec : Prop :=
  ∀ n, (P9940139456773911565.a n : ℤ) = A111394 (n + 1)

end A111394

/-! ## A111394.P7418231086096296361

`ceil(∏[(record[or(2, n)]+n)/2])`
-/

namespace A111394.P7418231086096296361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A111394.P7418231086096296361

namespace A111394

/-- `ceil(∏[(record[or(2, n)]+n)/2])` -/
def P7418231086096296361.Spec : Prop :=
  ∀ n, P7418231086096296361.a n = A111394 (n + 1)

end A111394

/-! ## A111394.P12041887205303949218

`round(∏[(record[or(2, n)]+n)/2])`
-/

namespace A111394.P12041887205303949218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111394.P12041887205303949218

namespace A111394

/-- `round(∏[(record[or(2, n)]+n)/2])` -/
def P12041887205303949218.Spec : Prop :=
  ∀ n, P12041887205303949218.a n = A111394 (n + 1)

end A111394

/-! ## A111394.P14432110705782748919

`(∑[gcd(2, n)]-1)*a(n-1)` with `a(0)=1`
-/

namespace A111394.P14432110705782748919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 1)

end

end A111394.P14432110705782748919

namespace A111394

/-- `(∑[gcd(2, n)]-1)*a(n-1)` -/
def P14432110705782748919.Spec : Prop :=
  ∀ n, P14432110705782748919.a n = A111394 (n + 1)

end A111394

/-! ## A111394.P17772174757242542457

`(∑[∑[(-1)^n]]+n)*a(n-1)` with `a(0)=1`
-/

namespace A111394.P17772174757242542457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) * a (n - 1)

end

end A111394.P17772174757242542457

namespace A111394

/-- `(∑[∑[(-1)^n]]+n)*a(n-1)` -/
def P17772174757242542457.Spec : Prop :=
  ∀ n, P17772174757242542457.a n = A111394 (n + 1)

end A111394

/-!
# A111395: First digit of powers of 5.

The programs for A111395, there is no canonical definition to state claims against.
-/

/-! ## A111395.P8222581703223458179

`A008566(∑[A210435(n)]-A210435(n))`
-/

namespace A111395.P8222581703223458179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008566 (∑ j ∈ Finset.range (n + 1), f1 j - A210435 n).toNat

end

end A111395.P8222581703223458179

/-!
# A111396: a(n) = n*(n+7)*(n+8)/6.

The programs for A111396, the canonical program `A111396.P7392532804184819900` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111396 has offset 0).

The definition of A111396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+7)*(n+8)/6` (program `A111396.P9971836748624361886`, by `A111396.P9971836748624361886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111396.P9971836748624361886

`n*(n+7)*(n+8)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111396.P9971836748624361886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 7) * (n + 8) : ℚ) / 6

end

end A111396.P9971836748624361886

namespace A111396

/-- `n*(n+7)*(n+8)/6` -/
def P9971836748624361886.Spec : Prop :=
  ∀ n, P9971836748624361886.a n = (A111396 n : ℚ)

theorem P9971836748624361886.correct : P9971836748624361886.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A111396, Nat.add_sub_cancel, A111396.P9971836748624361886.a, A111396.P7392532804184819900.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A111396, Nat.add_sub_cancel, A111396.P9971836748624361886.a, A111396.P7392532804184819900.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A111396

/-! ## A111396.P4913337771133575757

`C(n+8, 3)-2*C(n+8, 2)`
-/

namespace A111396.P4913337771133575757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 3 : ℤ) - (2 * Nat.choose (n + 8) 2 : ℤ)

end

end A111396.P4913337771133575757

namespace A111396

/-- `C(n+8, 3)-2*C(n+8, 2)` -/
def P4913337771133575757.Spec : Prop :=
  ∀ n, P4913337771133575757.a n = A111396 n

end A111396

/-! ## A111396.P7392532804184819900

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=30, a(3)=55`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111396

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7392532804184819900.Spec : Prop :=
  ∀ n, P7392532804184819900.a n = A111396 n

theorem P7392532804184819900.correct : P7392532804184819900.Spec := by
  intro n
  simp only [A111396]

end A111396

/-! ## A111396.P11559880215190680135

`record[C(n, 3)-(n²-n)]`
-/

namespace A111396.P11559880215190680135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111396.P11559880215190680135

namespace A111396

/-- `record[C(n, 3)-(n²-n)]` -/
def P11559880215190680135.Spec : Prop :=
  ∀ n, P11559880215190680135.a n = A111396 n

end A111396

/-! ## A111396.P17351047306645525903

`∑[lcm(∑[n+4]+3, ceil(n/(n+1)))]`
-/

namespace A111396.P17351047306645525903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℕ) : ℤ) ⌈(n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111396.P17351047306645525903

namespace A111396

/-- `∑[lcm(∑[n+4]+3, ceil(n/(n+1)))]` -/
def P17351047306645525903.Spec : Prop :=
  ∀ n, (P17351047306645525903.a n : ℤ) = A111396 n

end A111396

/-! ## A111396.P3019988790152200718

`∑[(∑[n+4]+3)%∑[∑[n+4]+3]]`
-/

namespace A111396.P3019988790152200718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 3) % (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111396.P3019988790152200718

namespace A111396

/-- `∑[(∑[n+4]+3)%∑[∑[n+4]+3]]` -/
def P3019988790152200718.Spec : Prop :=
  ∀ n, (P3019988790152200718.a n : ℤ) = A111396 n

end A111396

/-! ## A111396.P9606487191406106810

`2*n+5+∑[n+2]+a(n-1)` with `a(0)=0`
-/

namespace A111396.P9606487191406106810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * n + 5 + ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A111396.P9606487191406106810

namespace A111396

/-- `2*n+5+∑[n+2]+a(n-1)` -/
def P9606487191406106810.Spec : Prop :=
  ∀ n, (P9606487191406106810.a n : ℤ) = A111396 n

end A111396

/-! ## A111396.P5206420347471111698

`A264443(n)+n`
-/

namespace A111396.P5206420347471111698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + (n : ℤ)

end

end A111396.P5206420347471111698

namespace A111396

/-- `A264443(n)+n` -/
def P5206420347471111698.Spec : Prop :=
  ∀ n, P5206420347471111698.a n = A111396 n

end A111396

/-! ## A111396.P5208073637710053200

`2/(n+1)*A350116(n)`
-/

namespace A111396.P5208073637710053200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A350116 n : ℚ)

end

end A111396.P5208073637710053200

namespace A111396

/-- `2/(n+1)*A350116(n)` -/
def P5208073637710053200.Spec : Prop :=
  ∀ n, P5208073637710053200.a n = (A111396 n : ℚ)

end A111396

/-! ## A111396.P13096248613908486040

`∑[(∑[n+4]+3)*A057427(n)]`
-/

namespace A111396.P13096248613908486040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℕ) : ℤ) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111396.P13096248613908486040

namespace A111396

/-- `∑[(∑[n+4]+3)*A057427(n)]` -/
def P13096248613908486040.Spec : Prop :=
  ∀ n, P13096248613908486040.a n = A111396 n

end A111396

/-! ## A111396.P4538760018504798383

`A028560(n)+A005586(n)`
-/

namespace A111396.P4538760018504798383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n + A005586 n

end

end A111396.P4538760018504798383

namespace A111396

/-- `A028560(n)+A005586(n)` -/
def P4538760018504798383.Spec : Prop :=
  ∀ n, P4538760018504798383.a n = A111396 n

end A111396

/-! ## A111396.P15380103977142952228

`A028566(n)+A006503(n)`
-/

namespace A111396.P15380103977142952228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 n + A006503 n

end

end A111396.P15380103977142952228

namespace A111396

/-- `A028566(n)+A006503(n)` -/
def P15380103977142952228.Spec : Prop :=
  ∀ n, P15380103977142952228.a n = A111396 n

end A111396

/-! ## A111396.P858257826672110967

`A092286(n)+A028557(n)`
-/

namespace A111396.P858257826672110967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + A028557 n

end

end A111396.P858257826672110967

namespace A111396

/-- `A092286(n)+A028557(n)` -/
def P858257826672110967.Spec : Prop :=
  ∀ n, P858257826672110967.a n = A111396 n

end A111396

/-! ## A111396.P9209157593501174289

`A139576(n)+A000292(n)`
-/

namespace A111396.P9209157593501174289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n + A000292 n

end

end A111396.P9209157593501174289

namespace A111396

/-- `A139576(n)+A000292(n)` -/
def P9209157593501174289.Spec : Prop :=
  ∀ n, P9209157593501174289.a n = A111396 n

end A111396

/-! ## A111396.P1917485552357556146

`A132756(n)+A026057(n)`
-/

namespace A111396.P1917485552357556146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n + A026057 n

end

end A111396.P1917485552357556146

namespace A111396

/-- `A132756(n)+A026057(n)` -/
def P1917485552357556146.Spec : Prop :=
  ∀ n, P1917485552357556146.a n = A111396 n

end A111396

/-! ## A111396.P3249466522343354693

`A163675(n)-A004068(n)`
-/

namespace A111396.P3249466522343354693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163675 n - A004068 n

end

end A111396.P3249466522343354693

namespace A111396

/-- `A163675(n)-A004068(n)` -/
def P3249466522343354693.Spec : Prop :=
  ∀ n, P3249466522343354693.a n = A111396 n

end A111396

/-! ## A111396.P816139389710846640

`A096957(n)-A114949(n)`
-/

namespace A111396.P816139389710846640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - A114949 n

end

end A111396.P816139389710846640

namespace A111396

/-- `A096957(n)-A114949(n)` -/
def P816139389710846640.Spec : Prop :=
  ∀ n, P816139389710846640.a n = A111396 n

end A111396

/-! ## A111396.P836753938209463165

`A101860(n)-A131874(n)`
-/

namespace A111396.P836753938209463165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 n - A131874 n

end

end A111396.P836753938209463165

namespace A111396

/-- `A101860(n)-A131874(n)` -/
def P836753938209463165.Spec : Prop :=
  ∀ n, P836753938209463165.a n = A111396 n

end A111396

/-! ## A111396.P10515541527523330502

`A264444(n)-A028563(n)`
-/

namespace A111396.P10515541527523330502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n - A028563 n

end

end A111396.P10515541527523330502

namespace A111396

/-- `A264444(n)-A028563(n)` -/
def P10515541527523330502.Spec : Prop :=
  ∀ n, P10515541527523330502.a n = A111396 n

end A111396

/-!
# A111397: Composite numbers (modulo 3).

The programs for A111397, the canonical program `A111397.P3791276779509558651` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111397 has offset 1).

The definition of A111397 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111397.P3791276779509558651

`A002808(n+1)%3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111397

/-- `A002808(n+1)%3` -/
def P3791276779509558651.Spec : Prop :=
  ∀ n, P3791276779509558651.a n = A111397 (n + 1)

theorem P3791276779509558651.correct : P3791276779509558651.Spec := by
  intro n
  simp only [A111397, Nat.add_sub_cancel]

end A111397

/-! ## A111397.P4867893373600248750

`(comp[p?[round(n/2)]-2]+2)%3`
-/

namespace A111397.P4867893373600248750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) % 3

end

end A111397.P4867893373600248750

namespace A111397

/-- `(comp[p?[round(n/2)]-2]+2)%3` -/
def P4867893373600248750.Spec : Prop :=
  ∀ n, (P4867893373600248750.a n : ℤ) = A111397 (n + 1)

end A111397

/-! ## A111397.P8927874382919251477

`Δ[A053767(n)]%3`
-/

namespace A111397.P8927874382919251477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A111397.P8927874382919251477

namespace A111397

/-- `Δ[A053767(n)]%3` -/
def P8927874382919251477.Spec : Prop :=
  ∀ n, P8927874382919251477.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P832406185124669236

`comp[A020513(n)]%3`
-/

namespace A111397.P832406185124669236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 3

end

end A111397.P832406185124669236

namespace A111397

/-- `comp[A020513(n)]%3` -/
def P832406185124669236.Spec : Prop :=
  ∀ n, (P832406185124669236.a n : ℤ) = A111397 (n + 1)

end A111397

/-! ## A111397.P12101794356403251804

`comp[A327968(n)]%3`
-/

namespace A111397.P12101794356403251804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327968 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 3

end

end A111397.P12101794356403251804

namespace A111397

/-- `comp[A327968(n)]%3` -/
def P12101794356403251804.Spec : Prop :=
  ∀ n, (P12101794356403251804.a n : ℤ) = A111397 (n + 1)

end A111397

/-! ## A111397.P6082441378484578990

`comp[A351078(n)]%3`
-/

namespace A111397.P6082441378484578990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 3

end

end A111397.P6082441378484578990

namespace A111397

/-- `comp[A351078(n)]%3` -/
def P6082441378484578990.Spec : Prop :=
  ∀ n, (P6082441378484578990.a n : ℤ) = A111397 (n + 1)

end A111397

/-! ## A111397.P14098295668558790809

`comp[A356427(n)]%3`
-/

namespace A111397.P14098295668558790809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 3

end

end A111397.P14098295668558790809

namespace A111397

/-- `comp[A356427(n)]%3` -/
def P14098295668558790809.Spec : Prop :=
  ∀ n, (P14098295668558790809.a n : ℤ) = A111397 (n + 1)

end A111397

/-! ## A111397.P11681131773675581379

`A056653(n+1)%3`
-/

namespace A111397.P11681131773675581379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056653 (n + 1)) 3

end

end A111397.P11681131773675581379

namespace A111397

/-- `A056653(n+1)%3` -/
def P11681131773675581379.Spec : Prop :=
  ∀ n, P11681131773675581379.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P12830058742402492907

`A073866(n+1)%3`
-/

namespace A111397.P12830058742402492907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073866 (n + 1)) 3

end

end A111397.P12830058742402492907

namespace A111397

/-- `A073866(n+1)%3` -/
def P12830058742402492907.Spec : Prop :=
  ∀ n, P12830058742402492907.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P14443122843433538144

`A073867(n+1)%3`
-/

namespace A111397.P14443122843433538144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073867 (n + 1)) 3

end

end A111397.P14443122843433538144

namespace A111397

/-- `A073867(n+1)%3` -/
def P14443122843433538144.Spec : Prop :=
  ∀ n, P14443122843433538144.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P5572561900445590947

`A164028(n+1)%3`
-/

namespace A111397.P5572561900445590947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164028 (n + 1)) 3

end

end A111397.P5572561900445590947

namespace A111397

/-- `A164028(n+1)%3` -/
def P5572561900445590947.Spec : Prop :=
  ∀ n, P5572561900445590947.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P2127470130667856370

`A308375(n+1)%3`
-/

namespace A111397.P2127470130667856370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308375 (n + 1)) 3

end

end A111397.P2127470130667856370

namespace A111397

/-- `A308375(n+1)%3` -/
def P2127470130667856370.Spec : Prop :=
  ∀ n, P2127470130667856370.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P13547735598952562785

`A018252(n+2)%3`
-/

namespace A111397.P13547735598952562785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) 3

end

end A111397.P13547735598952562785

namespace A111397

/-- `A018252(n+2)%3` -/
def P13547735598952562785.Spec : Prop :=
  ∀ n, P13547735598952562785.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P5452845104781340883

`A065090(n+3)%3`
-/

namespace A111397.P5452845104781340883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065090 (n + 3)) 3

end

end A111397.P5452845104781340883

namespace A111397

/-- `A065090(n+3)%3` -/
def P5452845104781340883.Spec : Prop :=
  ∀ n, P5452845104781340883.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P16631885748171097279

`A141468(n+3)%3`
-/

namespace A111397.P16631885748171097279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141468 (n + 3)) 3

end

end A111397.P16631885748171097279

namespace A111397

/-- `A141468(n+3)%3` -/
def P16631885748171097279.Spec : Prop :=
  ∀ n, P16631885748171097279.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P17459483125995535643

`A129131(2*n+1)%3`
-/

namespace A111397.P17459483125995535643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129131 (2 * n + 1)) 3

end

end A111397.P17459483125995535643

namespace A111397

/-- `A129131(2*n+1)%3` -/
def P17459483125995535643.Spec : Prop :=
  ∀ n, P17459483125995535643.a n = A111397 (n + 1)

end A111397

/-! ## A111397.P9877073968411446136

`lt[1, A001222(n+3)]%3`
-/

namespace A111397.P9877073968411446136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 3

end

end A111397.P9877073968411446136

namespace A111397

/-- `lt[1, A001222(n+3)]%3` -/
def P9877073968411446136.Spec : Prop :=
  ∀ n, (P9877073968411446136.a n : ℤ) = A111397 (n + 1)

end A111397

/-! ## A111397.P8075470013853692809

`lt[2, A000005(n+3)]%3`
-/

namespace A111397.P8075470013853692809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 3

end

end A111397.P8075470013853692809

namespace A111397

/-- `lt[2, A000005(n+3)]%3` -/
def P8075470013853692809.Spec : Prop :=
  ∀ n, (P8075470013853692809.a n : ℤ) = A111397 (n + 1)

end A111397

/-! ## A111397.P10513850290360946852

`comp[A000040(n+1)-3]%3`
-/

namespace A111397.P10513850290360946852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 3

end

end A111397.P10513850290360946852

namespace A111397

/-- `comp[A000040(n+1)-3]%3` -/
def P10513850290360946852.Spec : Prop :=
  ∀ n, (P10513850290360946852.a n : ℤ) = A111397 (n + 1)

end A111397

/-!
# A111398: Numbers which are the cube roots of the product of their proper divisors.

The programs for A111398, the canonical program `A111398.P16875926661935331434` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111398 has offset 1).

The definition of A111398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111398.P6065764942007145024

`eq[8, A000005(C(11, n+1)+n)]`
-/

namespace A111398.P6065764942007145024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 11 (n + 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111398.P6065764942007145024

namespace A111398

/-- `eq[8, A000005(C(11, n+1)+n)]` -/
def P6065764942007145024.Spec : Prop :=
  ∀ n, (P6065764942007145024.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P5964918429025033526

`∪[A006361(n), A030626(n+1)]`
-/

namespace A111398.P5964918429025033526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P5964918429025033526

namespace A111398

/-- `∪[A006361(n), A030626(n+1)]` -/
def P5964918429025033526.Spec : Prop :=
  ∀ n, (P5964918429025033526.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P16875926661935331434

`∪[A030626(n+1), A016759(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111398

/-- `∪[A030626(n+1), A016759(n)]` -/
def P16875926661935331434.Spec : Prop :=
  ∀ n, (P16875926661935331434.a n : ℤ) = A111398 (n + 1)

theorem P16875926661935331434.correct : P16875926661935331434.Spec := by
  intro n
  simp only [A111398, Nat.add_sub_cancel]

end A111398

/-! ## A111398.P14667027603074961987

`∪[A030626(n+1), A017177(n)]`
-/

namespace A111398.P14667027603074961987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P14667027603074961987

namespace A111398

/-- `∪[A030626(n+1), A017177(n)]` -/
def P14667027603074961987.Spec : Prop :=
  ∀ n, (P14667027603074961987.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P7056089577166627329

`eq[1, A339023(A000005(n+1))]+1`
-/

namespace A111398.P7056089577166627329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111398.P7056089577166627329

namespace A111398

/-- `eq[1, A339023(A000005(n+1))]+1` -/
def P7056089577166627329.Spec : Prop :=
  ∀ n, (P7056089577166627329.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P17700838366898601009

`A030626(n)%A111399(a(n-1)+1)` with `a(0)=1`
-/

namespace A111398.P17700838366898601009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A030626 n) (A111399 (a (n - 1) + 1).toNat)

end

end A111398.P17700838366898601009

namespace A111398

/-- `A030626(n)%A111399(a(n-1)+1)` -/
def P17700838366898601009.Spec : Prop :=
  ∀ n, P17700838366898601009.a n = A111398 (n + 1)

end A111398

/-! ## A111398.P11041582749079507958

`filter[A048945(n+1), A122895(#)]`
-/

namespace A111398.P11041582749079507958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A111398.P11041582749079507958

namespace A111398

/-- `filter[A048945(n+1), A122895(#)]` -/
def P11041582749079507958.Spec : Prop :=
  ∀ n, P11041582749079507958.a n = A111398 (n + 1)

end A111398

/-! ## A111398.P10197333180046544737

`filter[A048945(n+1), A262683(#)]`
-/

namespace A111398.P10197333180046544737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262683 (f1 j).toNat = 1) n)

end

end A111398.P10197333180046544737

namespace A111398

/-- `filter[A048945(n+1), A262683(#)]` -/
def P10197333180046544737.Spec : Prop :=
  ∀ n, P10197333180046544737.a n = A111398 (n + 1)

end A111398

/-! ## A111398.P1672388914068811406

`eq[A000007(n), A004182(A032741(n))]`
-/

namespace A111398.P1672388914068811406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111398.P1672388914068811406

namespace A111398

/-- `eq[A000007(n), A004182(A032741(n))]` -/
def P1672388914068811406.Spec : Prop :=
  ∀ n, (P1672388914068811406.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P11789437620355726842

`eq[A056926(n), A107458(A032741(n))]`
-/

namespace A111398.P11789437620355726842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111398.P11789437620355726842

namespace A111398

/-- `eq[A056926(n), A107458(A032741(n))]` -/
def P11789437620355726842.Spec : Prop :=
  ∀ n, (P11789437620355726842.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P9624569222685798984

`eq[A025824(A032741(n)+2), A056926(n)]`
-/

namespace A111398.P9624569222685798984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025824 (A032741 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111398.P9624569222685798984

namespace A111398

/-- `eq[A025824(A032741(n)+2), A056926(n)]` -/
def P9624569222685798984.Spec : Prop :=
  ∀ n, (P9624569222685798984.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P10786905890091940067

`eq[3, A006530(A114003(A114003(n+1)+1))]+1`
-/

namespace A111398.P10786905890091940067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114003 (A114003 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111398.P10786905890091940067

namespace A111398

/-- `eq[3, A006530(A114003(A114003(n+1)+1))]+1` -/
def P10786905890091940067.Spec : Prop :=
  ∀ n, (P10786905890091940067.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P1242120971381578309

`eq[n²², A007955(A028310(n))]`
-/

namespace A111398.P1242120971381578309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111398.P1242120971381578309

namespace A111398

/-- `eq[n²², A007955(A028310(n))]` -/
def P1242120971381578309.Spec : Prop :=
  ∀ n, (P1242120971381578309.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P6791129886561859846

`eq[A000583(n), A007955(A000007(n)+n)]`
-/

namespace A111398.P6791129886561859846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111398.P6791129886561859846

namespace A111398

/-- `eq[A000583(n), A007955(A000007(n)+n)]` -/
def P6791129886561859846.Spec : Prop :=
  ∀ n, (P6791129886561859846.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P13402456558470421770

`filter[A139588(n+1), A181183(#)]`
-/

namespace A111398.P13402456558470421770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A111398.P13402456558470421770

namespace A111398

/-- `filter[A139588(n+1), A181183(#)]` -/
def P13402456558470421770.Spec : Prop :=
  ∀ n, P13402456558470421770.a n = A111398 (n + 1)

end A111398

/-! ## A111398.P4295321539952244632

`filter[A139588(n+1), A295316(#)]`
-/

namespace A111398.P4295321539952244632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A111398.P4295321539952244632

namespace A111398

/-- `filter[A139588(n+1), A295316(#)]` -/
def P4295321539952244632.Spec : Prop :=
  ∀ n, P4295321539952244632.a n = A111398 (n + 1)

end A111398

/-! ## A111398.P2948991089931292781

`filter[A139588(n+1), A359473(#)]`
-/

namespace A111398.P2948991089931292781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A111398.P2948991089931292781

namespace A111398

/-- `filter[A139588(n+1), A359473(#)]` -/
def P2948991089931292781.Spec : Prop :=
  ∀ n, P2948991089931292781.a n = A111398 (n + 1)

end A111398

/-! ## A111398.P18334046295239385484

`filter[A139588(n+1), A380458(#)]`
-/

namespace A111398.P18334046295239385484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A111398.P18334046295239385484

namespace A111398

/-- `filter[A139588(n+1), A380458(#)]` -/
def P18334046295239385484.Spec : Prop :=
  ∀ n, P18334046295239385484.a n = A111398 (n + 1)

end A111398

/-! ## A111398.P1153192000566457040

`∩[A139588(n+1), A164514(n+1)]`
-/

namespace A111398.P1153192000566457040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P1153192000566457040

namespace A111398

/-- `∩[A139588(n+1), A164514(n+1)]` -/
def P1153192000566457040.Spec : Prop :=
  ∀ n, (P1153192000566457040.a n : ℤ) = A111398 (n + 1)

end A111398

/-! ## A111398.P10358703822560088748

`∩[A139588(n+1), A337533(n+1)]`
-/

namespace A111398.P10358703822560088748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P10358703822560088748

namespace A111398

/-- `∩[A139588(n+1), A337533(n+1)]` -/
def P10358703822560088748.Spec : Prop :=
  ∀ n, (P10358703822560088748.a n : ℤ) = A111398 (n + 1)

end A111398

/-!
# A111399: Numbers in A048945 but not in A111398.

The programs for A111399, there is no canonical definition to state claims against.
-/

/-! ## A111399.P13419266348006967671

`∩[A048945(n+1), A123240(n+1)]`
-/

namespace A111399.P13419266348006967671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111399.P13419266348006967671

/-! ## A111399.P15294578722243820250

`∩[A048945(n+1), A139587(n+1)]`
-/

namespace A111399.P15294578722243820250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111399.P15294578722243820250

/-! ## A111399.P14399551491401344317

`∩[A026477(n+1), A334674(n+1)]`
-/

namespace A111399.P14399551491401344317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111399.P14399551491401344317

/-! ## A111399.P15561557379945624230

`∩[A026477(n+1), A334589(n+1)]`
-/

namespace A111399.P15561557379945624230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111399.P15561557379945624230

