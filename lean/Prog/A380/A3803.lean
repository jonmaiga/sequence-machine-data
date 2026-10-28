import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A380301: Semiperimeter of the unique primitive Pythagorean triple whose inradius is the n-th odd prime and whose short leg is an even number.

The programs for A380301, there is no canonical definition to state claims against.
-/

/-! ## A380301.P17672642465973838887

`2*A271511(n+2)`
-/

namespace A380301.P17672642465973838887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271511 (n + 2)

end

end A380301.P17672642465973838887

/-! ## A380301.P4269638273012596625

`A045896(p?[2*n+1])`
-/

namespace A380301.P4269638273012596625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045896 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A380301.P4269638273012596625

/-! ## A380301.P18311841025283361769

`A081348(p?[2*n+1])`
-/

namespace A380301.P18311841025283361769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081348 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A380301.P18311841025283361769

/-! ## A380301.P6636458018592240698

`A167351(p?[2*n+1])`
-/

namespace A380301.P6636458018592240698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167351 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A380301.P6636458018592240698

/-! ## A380301.P2568760983867948765

`A276805(p?[2*n+1])`
-/

namespace A380301.P2568760983867948765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276805 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A380301.P2568760983867948765

/-!
# A380302: Area of the unique primitive Pythagorean triple whose inradius is the n-th odd prime and whose short leg is an even number.

The programs for A380302, there is no canonical definition to state claims against.
-/

/-! ## A380302.P4784459557304188123

`A033931(p?[2*n+1])`
-/

namespace A380302.P4784459557304188123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A380302.P4784459557304188123

/-! ## A380302.P14041635592901616782

`sqrt(A099764(p?[2*n+1]))`
-/

namespace A380302.P14041635592901616782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099764 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A380302.P14041635592901616782

/-! ## A380302.P13630521336779907293

`A007531(A048974(n+1))`
-/

namespace A380302.P13630521336779907293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A048974 (n + 1)).toNat

end

end A380302.P13630521336779907293

/-! ## A380302.P12307607892898938807

`A069072(A005097(n+1))`
-/

namespace A380302.P12307607892898938807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069072 (A005097 (n + 1)).toNat

end

end A380302.P12307607892898938807

/-! ## A380302.P5749827540684668191

`A033931(A065091(n+1))`
-/

namespace A380302.P5749827540684668191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (A065091 (n + 1)).toNat

end

end A380302.P5749827540684668191

/-!
# A380303: Numbers m such that GCD of the solutions x to sigma(x) = sigma(m) are setwise coprime.

The programs for A380303, there is no canonical definition to state claims against.
-/

/-! ## A380303.P7524484712664716760

`eq[1, A241479(n+1)]+1`
-/

namespace A380303.P7524484712664716760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380303.P7524484712664716760

/-! ## A380303.P12518443937965699932

`record[A026741(2*(n+1))/A241479(n+1)]`
-/

namespace A380303.P12518443937965699932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (2 * (n + 1)) : ℚ) / (A241479 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380303.P12518443937965699932

/-! ## A380303.P2035184280729385911

`eq[1, A240667(A000203(n+1))]+1`
-/

namespace A380303.P2035184280729385911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380303.P2035184280729385911

/-! ## A380303.P9847462032249115554

`lt[A241479(n+1), A289078(A151800(n))]+1`
-/

namespace A380303.P9847462032249115554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380303.P9847462032249115554

/-! ## A380303.P17980860906595599053

`A206036(A028310(n))%A102171(n+1)`
-/

namespace A380303.P17980860906595599053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206036 (A028310 n).toNat) (A102171 (n + 1))

end

end A380303.P17980860906595599053

/-!
# A380304: a(n) = sigma(A380303(n)).

The programs for A380304, there is no canonical definition to state claims against.
-/

/-! ## A380304.P1120770000252561125

`A000203(A380303(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380304.P1120770000252561125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A380303 (n + 1)).toNat

end

end A380304.P1120770000252561125

/-! ## A380304.P1597691972533545465

`∑{d}[A380303(n+1), #]`
-/

namespace A380304.P1597691972533545465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A380304.P1597691972533545465

/-! ## A380304.P17470744073184444841

`A000203(eq[1, A241479(n+1)]+1)`
-/

namespace A380304.P17470744073184444841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A380304.P17470744073184444841

/-!
# A380305: Triangle read by rows: T(n,k) = (n - floor((n - k)/k)) mod k, for 0 < k <= n.

The programs for A380305, the canonical program `A380305.P7351548936919988350` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380305 has offset 1).

The definition of A380305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-floor((row(n)+1-(col(n)+1))/(col(n)+1)))%(col(n)+1)` (program `A380305.P7351548936919988350`, by `A380305.P7351548936919988350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A380305.P7351548936919988350

`(row(n)+1-floor((row(n)+1-(col(n)+1))/(col(n)+1)))%(col(n)+1)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380305

/-- `(row(n)+1-floor((row(n)+1-(col(n)+1))/(col(n)+1)))%(col(n)+1)` -/
def P7351548936919988350.Spec : Prop :=
  ∀ n, P7351548936919988350.a n = A380305 (n + 1)

theorem P7351548936919988350.correct : P7351548936919988350.Spec := by
  intro n
  simp only [A380305, Nat.add_sub_cancel]

end A380305

/-! ## A380305.P15856677270506314876

`A265918(A038871(n+2))`
-/

namespace A380305.P15856677270506314876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265918 (A038871 (n + 2)).toNat

end

end A380305.P15856677270506314876

namespace A380305

/-- `A265918(A038871(n+2))` -/
def P15856677270506314876.Spec : Prop :=
  ∀ n, P15856677270506314876.a n = A380305 (n + 1)

end A380305

/-! ## A380305.P13325945285834900170

`A000330(A171882(n))%A181322(n)`
-/

namespace A380305.P13325945285834900170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000330 (A171882 n).toNat) (A181322 n)

end

end A380305.P13325945285834900170

namespace A380305

/-- `A000330(A171882(n))%A181322(n)` -/
def P13325945285834900170.Spec : Prop :=
  ∀ n, P13325945285834900170.a n = A380305 (n + 1)

end A380305

/-! ## A380305.P14214859707686703927

`and(A195310(A152717(n)), A344243(n+1))`
-/

namespace A380305.P14214859707686703927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195310 (A152717 n).toNat) (A344243 (n + 1))

end

end A380305.P14214859707686703927

namespace A380305

/-- `and(A195310(A152717(n)), A344243(n+1))` -/
def P14214859707686703927.Spec : Prop :=
  ∀ n, P14214859707686703927.a n = A380305 (n + 1)

end A380305

/-! ## A380305.P4350473967796778745

`A124766(A335593(n+1)%A137753(2*(n+1)))`
-/

namespace A380305.P4350473967796778745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.tmod (A335593 (n + 1)) (A137753 (2 * (n + 1)))).toNat

end

end A380305.P4350473967796778745

namespace A380305

/-- `A124766(A335593(n+1)%A137753(2*(n+1)))` -/
def P4350473967796778745.Spec : Prop :=
  ∀ n, P4350473967796778745.a n = A380305 (n + 1)

end A380305

/-!
# A380307: Expansion of e.g.f. exp( (1+5*x)^(1/5) - 1 ).

The programs for A380307, there is no canonical definition to state claims against.
-/

/-! ## A380307.P3670413369252314441

`A118435(A002212(n))`
-/

namespace A380307.P3670413369252314441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118435 (A002212 n).toNat

end

end A380307.P3670413369252314441

/-!
# A380308: Expansion of e.g.f. exp( 1 - 1/(1-2*x)^(1/2) ).

The programs for A380308, there is no canonical definition to state claims against.
-/

/-! ## A380308.P621973273831419667

`A000038(A000539(n))-A014307(n)`
-/

namespace A380308.P621973273831419667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A000539 n).toNat - A014307 n

end

end A380308.P621973273831419667

/-! ## A380308.P11296204088641470505

`A000122(A002110(n))-A014307(n)`
-/

namespace A380308.P11296204088641470505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A002110 n).toNat - A014307 n

end

end A380308.P11296204088641470505

/-!
# A380310: Expansion of e.g.f. exp( 1 - 1/(1-5*x)^(1/5) ).

The programs for A380310, there is no canonical definition to state claims against.
-/

/-! ## A380310.P6989232650262751729

`A350457(n+3)-A290387(A293316(n))`
-/

namespace A380310.P6989232650262751729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350457 (n + 3) - A290387 (A293316 n).toNat

end

end A380310.P6989232650262751729

/-!
# A380311: Partial sums of A377090.

The programs for A380311, there is no canonical definition to state claims against.
-/

/-! ## A380311.P9688992157328074555

`∑[A377090(n)]`
-/

namespace A380311.P9688992157328074555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380311.P9688992157328074555

/-! ## A380311.P10698978457754784671

`∑[∑[A383444(n)]-A383444(n)]`
-/

namespace A380311.P10698978457754784671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A383444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380311.P10698978457754784671

/-!
# A380312: Primes not reaching 3 under iterations of p -> gpf(2*p-1).

The programs for A380312, there is no canonical definition to state claims against.
-/

/-! ## A380312.P18251761851842209294

`A128824(A173195(n+2))`
-/

namespace A380312.P18251761851842209294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128824 (A173195 (n + 2)).toNat

end

end A380312.P18251761851842209294

/-! ## A380312.P10109610660509987427

`A326621(A179084(2*n+1)+A156552(3*(n+1)))`
-/

namespace A380312.P10109610660509987427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326621 (A179084 (2 * n + 1) + A156552 (3 * (n + 1))).toNat

end

end A380312.P10109610660509987427

/-!
# A380313: Partial sums of A379057.

The programs for A380313, there is no canonical definition to state claims against.
-/

/-! ## A380313.P8577211552788551097

`∑[A379057(n)]`
-/

namespace A380313.P8577211552788551097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380313.P8577211552788551097

/-! ## A380313.P15586624863355972106

`∑[∑[A379058(n)]-A379058(n)]`
-/

namespace A380313.P15586624863355972106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A379058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380313.P15586624863355972106

/-!
# A380314: Numerator of sum of reciprocals of all prime divisors of all positive integers <= n.

The programs for A380314, there is no canonical definition to state claims against.
-/

/-! ## A380314.P9022622643612785245

`A083345(∏[∏{p}[n+1, #]])`
-/

namespace A380314.P9022622643612785245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A380314.P9022622643612785245

/-!
# A380317: The lexicographically earliest sequence of positive numbers which is identical to the run lengths of its first differences.

The programs for A380317, there is no canonical definition to state claims against.
-/

/-! ## A380317.P12347740489760376769

`A281579(n+1)-1`
-/

namespace A380317.P12347740489760376769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281579 (n + 1) - 1

end

end A380317.P12347740489760376769

/-! ## A380317.P12497906670569210315

`Δ[A281783(n+1)]`
-/

namespace A380317.P12497906670569210315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A380317.P12497906670569210315

/-! ## A380317.P10498137354736656570

`A281783(n+2)-A281783(n+1)`
-/

namespace A380317.P10498137354736656570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281783 (n + 2) - A281783 (n + 1)

end

end A380317.P10498137354736656570

/-! ## A380317.P7686502816047405851

`A046079(2^A281579(n+1))`
-/

namespace A380317.P7686502816047405851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A281579 (n + 1) : ℤ))).toNat

end

end A380317.P7686502816047405851

/-! ## A380317.P18141758443016895561

`A070824(2^A281579(n+1))`
-/

namespace A380317.P18141758443016895561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A281579 (n + 1) : ℤ))).toNat

end

end A380317.P18141758443016895561

/-! ## A380317.P6749100151032245332

`A121934(n+1)%A281579(n+1)`
-/

namespace A380317.P6749100151032245332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A281579 (n + 1))

end

end A380317.P6749100151032245332

/-! ## A380317.P12545774711551746768

`A030494(n+1)%A281579(n+1)`
-/

namespace A380317.P12545774711551746768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A281579 (n + 1))

end

end A380317.P12545774711551746768

/-! ## A380317.P11113622430869601863

`A072828(n+1)%A281579(n+1)`
-/

namespace A380317.P11113622430869601863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A281579 (n + 1))

end

end A380317.P11113622430869601863

/-! ## A380317.P16737235474089033948

`A282531(n+1)%A281579(n+1)`
-/

namespace A380317.P16737235474089033948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282531 (n + 1)) (A281579 (n + 1))

end

end A380317.P16737235474089033948

/-!
# A380318: Product of the first n perfect powers (A001597).

The programs for A380318, there is no canonical definition to state claims against.
-/

/-! ## A380318.P10037615972874854686

`a(n-1)*A001597(n)` with `a(0)=1`
-/

namespace A380318.P10037615972874854686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001597 n

end

end A380318.P10037615972874854686

/-! ## A380318.P3668132629974064714

`∏[A001597(floor(sqrt(n²+1)))]`
-/

namespace A380318.P3668132629974064714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A380318.P3668132629974064714

/-! ## A380318.P15867994239387551240

`abs(A157985(n))*a(n-1)` with `a(0)=1`
-/

namespace A380318.P15867994239387551240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A157985 n| * a (n - 1)

end

end A380318.P15867994239387551240

/-! ## A380318.P12584547221273659573

`∏[A001597(n+1)]/A001597(n+1)`
-/

namespace A380318.P12584547221273659573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001597 (n + 1) : ℚ)

end

end A380318.P12584547221273659573

/-! ## A380318.P8895447765492099324

`∏[∏{e}[A000079(n), A001597(#)]]`
-/

namespace A380318.P8895447765492099324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A001597 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A380318.P8895447765492099324

/-!
# A380319: Smallest prime that is the sum of 2n+1 squares of consecutive odd primes, or 0 if no such prime exists.

The programs for A380319, there is no canonical definition to state claims against.
-/

/-! ## A380319.P5016458297564877331

`A000015(A340861(n+2))`
-/

namespace A380319.P5016458297564877331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A340861 (n + 2)).toNat

end

end A380319.P5016458297564877331

/-!
# A380320: First differences of A377092.

The programs for A380320, there is no canonical definition to state claims against.
-/

/-! ## A380320.P8882563240764314260

`A377092(n+1)-A377092(n)`
-/

namespace A380320.P8882563240764314260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377092 (n + 1) - A377092 n

end

end A380320.P8882563240764314260

/-! ## A380320.P7706268094831503885

`Δ[A377092(n)]`
-/

namespace A380320.P7706268094831503885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A380320.P7706268094831503885

/-!
# A380321: Partial sums of A377092.

The programs for A380321, there is no canonical definition to state claims against.
-/

/-! ## A380321.P17257085773456907146

`∑[A377092(n)]`
-/

namespace A380321.P17257085773456907146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380321.P17257085773456907146

/-! ## A380321.P13008798519780292439

`∑[∑[A380320(n)]-A380320(n)]`
-/

namespace A380321.P13008798519780292439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A380320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380321.P13008798519780292439

/-!
# A380322: a(n) is the sum of exponentially odd divisors of n^2.

The programs for A380322, the canonical program `A380322.P10413619903168285691` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380322 has offset 1).

The definition of A380322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380322.P10413619903168285691

`A033634((n+1)²)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380322

/-- `A033634((n+1)²)` -/
def P10413619903168285691.Spec : Prop :=
  ∀ n, P10413619903168285691.a n = A380322 (n + 1)

theorem P10413619903168285691.correct : P10413619903168285691.Spec := by
  intro n
  simp only [A380322, Nat.add_sub_cancel]

end A380322

/-! ## A380322.P972265971040687329

`∑{d}[n+1, A102631(#)]`
-/

namespace A380322.P972265971040687329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102631 d

end

end A380322.P972265971040687329

namespace A380322

/-- `∑{d}[n+1, A102631(#)]` -/
def P972265971040687329.Spec : Prop :=
  ∀ n, P972265971040687329.a n = A380322 (n + 1)

end A380322

/-! ## A380322.P4275583277298137596

`∑{d}[n+1, #*A003557(#)]`
-/

namespace A380322.P4275583277298137596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003557 d

end

end A380322.P4275583277298137596

namespace A380322

/-- `∑{d}[n+1, #*A003557(#)]` -/
def P4275583277298137596.Spec : Prop :=
  ∀ n, P4275583277298137596.a n = A380322 (n + 1)

end A380322

/-! ## A380322.P10221127472356343476

`A365334((n+1)²)`
-/

namespace A380322.P10221127472356343476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365334 ((n + 1) ^ 2)

end

end A380322.P10221127472356343476

namespace A380322

/-- `A365334((n+1)²)` -/
def P10221127472356343476.Spec : Prop :=
  ∀ n, P10221127472356343476.a n = A380322 (n + 1)

end A380322

/-! ## A380322.P9028323736636039915

`A365336(A003557((n+1)²)²)`
-/

namespace A380322.P9028323736636039915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 (A003557 ((n + 1) ^ 2) ^ 2).toNat

end

end A380322.P9028323736636039915

namespace A380322

/-- `A365336(A003557((n+1)²)²)` -/
def P9028323736636039915.Spec : Prop :=
  ∀ n, P9028323736636039915.a n = A380322 (n + 1)

end A380322

/-!
# A380323: The number of squares dividing the n-th exponentially odd number.

The programs for A380323, the canonical program `A380323.P7609859064291809973` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380323 has offset 1).

The definition of A380323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380323.P7609859064291809973

`A046951(A268335(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380323

/-- `A046951(A268335(n+1))` -/
def P7609859064291809973.Spec : Prop :=
  ∀ n, P7609859064291809973.a n = A380323 (n + 1)

theorem P7609859064291809973.correct : P7609859064291809973.Spec := by
  intro n
  simp only [A380323, Nat.add_sub_cancel]

end A380323

/-! ## A380323.P10794774747580343789

`∏{e}[A367407(n+1), #]`
-/

namespace A380323.P10794774747580343789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A380323.P10794774747580343789

namespace A380323

/-- `∏{e}[A367407(n+1), #]` -/
def P10794774747580343789.Spec : Prop :=
  ∀ n, (P10794774747580343789.a n : ℤ) = A380323 (n + 1)

end A380323

/-! ## A380323.P8178742555758230897

`A000005(A367419(n+1))`
-/

namespace A380323.P8178742555758230897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367419 (n + 1)).toNat

end

end A380323.P8178742555758230897

namespace A380323

/-- `A000005(A367419(n+1))` -/
def P8178742555758230897.Spec : Prop :=
  ∀ n, P8178742555758230897.a n = A380323 (n + 1)

end A380323

/-! ## A380323.P8581538773879394551

`A366438(n+1)/A366534(n+1)`
-/

namespace A380323.P8581538773879394551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366438 (n + 1) : ℚ) / (A366534 (n + 1) : ℚ)

end

end A380323.P8581538773879394551

namespace A380323

/-- `A366438(n+1)/A366534(n+1)` -/
def P8581538773879394551.Spec : Prop :=
  ∀ n, P8581538773879394551.a n = (A380323 (n + 1) : ℚ)

end A380323

/-! ## A380323.P7580301294499472035

`A368978(A268335(2*n+1-n))`
-/

namespace A380323.P7580301294499472035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A268335 (2 * n + 1 - n)).toNat

end

end A380323.P7580301294499472035

namespace A380323

/-- `A368978(A268335(2*n+1-n))` -/
def P7580301294499472035.Spec : Prop :=
  ∀ n, P7580301294499472035.a n = A380323 (n + 1)

end A380323

/-! ## A380323.P4565808982644323182

`A325837(2*A268335(n+1))`
-/

namespace A380323.P4565808982644323182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (2 * A268335 (n + 1)).toNat

end

end A380323.P4565808982644323182

namespace A380323

/-- `A325837(2*A268335(n+1))` -/
def P4565808982644323182.Spec : Prop :=
  ∀ n, P4565808982644323182.a n = A380323 (n + 1)

end A380323

/-! ## A380323.P8006126700705054643

`A325837(A268335(n+1)+A268335(n+1))`
-/

namespace A380323.P8006126700705054643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A268335 (n + 1) + A268335 (n + 1)).toNat

end

end A380323.P8006126700705054643

namespace A380323

/-- `A325837(A268335(n+1)+A268335(n+1))` -/
def P8006126700705054643.Spec : Prop :=
  ∀ n, P8006126700705054643.a n = A380323 (n + 1)

end A380323

/-! ## A380323.P8994693278052999289

`∏{e}[A367406(n+1), #/2]`
-/

namespace A380323.P8994693278052999289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367406 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / 2

end

end A380323.P8994693278052999289

namespace A380323

/-- `∏{e}[A367406(n+1), #/2]` -/
def P8994693278052999289.Spec : Prop :=
  ∀ n, P8994693278052999289.a n = (A380323 (n + 1) : ℚ)

end A380323

/-! ## A380323.P10211273597624803386

`A374433(A099984(A368472(n+1))²)`
-/

namespace A380323.P10211273597624803386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374433 (A099984 (A368472 (n + 1)).toNat ^ 2).toNat

end

end A380323.P10211273597624803386

namespace A380323

/-- `A374433(A099984(A368472(n+1))²)` -/
def P10211273597624803386.Spec : Prop :=
  ∀ n, P10211273597624803386.a n = A380323 (n + 1)

end A380323

/-!
# A380324: The sum of the squares dividing the n-th exponentially odd number.

The programs for A380324, the canonical program `A380324.P6780080084449121011` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380324 has offset 1).

The definition of A380324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380324.P6780080084449121011

`A035316(A268335(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380324

/-- `A035316(A268335(n+1))` -/
def P6780080084449121011.Spec : Prop :=
  ∀ n, P6780080084449121011.a n = A380324 (n + 1)

theorem P6780080084449121011.correct : P6780080084449121011.Spec := by
  intro n
  simp only [A380324, Nat.add_sub_cancel]

end A380324

/-! ## A380324.P7469092842718604070

`∑{d}[A367419(n+1), #²]`
-/

namespace A380324.P7469092842718604070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A380324.P7469092842718604070

namespace A380324

/-- `∑{d}[A367419(n+1), #²]` -/
def P7469092842718604070.Spec : Prop :=
  ∀ n, (P7469092842718604070.a n : ℤ) = A380324 (n + 1)

end A380324

/-! ## A380324.P16372801294900510573

`A001157(A367419(n+1))`
-/

namespace A380324.P16372801294900510573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A367419 (n + 1)).toNat

end

end A380324.P16372801294900510573

namespace A380324

/-- `A001157(A367419(n+1))` -/
def P16372801294900510573.Spec : Prop :=
  ∀ n, P16372801294900510573.a n = A380324 (n + 1)

end A380324

/-! ## A380324.P5951750981724514625

`A035316(A367418(n+1))`
-/

namespace A380324.P5951750981724514625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A367418 (n + 1)).toNat

end

end A380324.P5951750981724514625

namespace A380324

/-- `A035316(A367418(n+1))` -/
def P5951750981724514625.Spec : Prop :=
  ∀ n, P5951750981724514625.a n = A380324 (n + 1)

end A380324

/-! ## A380324.P13168125508515736566

`A035316(A367419(n+1)²)`
-/

namespace A380324.P13168125508515736566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A367419 (n + 1) ^ 2).toNat

end

end A380324.P13168125508515736566

namespace A380324

/-- `A035316(A367419(n+1)²)` -/
def P13168125508515736566.Spec : Prop :=
  ∀ n, P13168125508515736566.a n = A380324 (n + 1)

end A380324

/-! ## A380324.P12070445175225785047

`A367989(A367419(n+1)²)`
-/

namespace A380324.P12070445175225785047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367989 (A367419 (n + 1) ^ 2).toNat

end

end A380324.P12070445175225785047

namespace A380324

/-- `A367989(A367419(n+1)²)` -/
def P12070445175225785047.Spec : Prop :=
  ∀ n, P12070445175225785047.a n = A380324 (n + 1)

end A380324

/-! ## A380324.P1092347728231557211

`A366439(n+1)/A380326(n+1)`
-/

namespace A380324.P1092347728231557211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366439 (n + 1) : ℚ) / (A380326 (n + 1) : ℚ)

end

end A380324.P1092347728231557211

namespace A380324

/-- `A366439(n+1)/A380326(n+1)` -/
def P1092347728231557211.Spec : Prop :=
  ∀ n, P1092347728231557211.a n = (A380324 (n + 1) : ℚ)

end A380324

/-! ## A380324.P4082417724711729201

`A367989(A367418(2*n+1-n))`
-/

namespace A380324.P4082417724711729201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367989 (A367418 (2 * n + 1 - n)).toNat

end

end A380324.P4082417724711729201

namespace A380324

/-- `A367989(A367418(2*n+1-n))` -/
def P4082417724711729201.Spec : Prop :=
  ∀ n, P4082417724711729201.a n = A380324 (n + 1)

end A380324

/-! ## A380324.P5160309886825893825

`A035316(A367419(n+1)*A367419(n+1))`
-/

namespace A380324.P5160309886825893825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A367419 (n + 1) * A367419 (n + 1)).toNat

end

end A380324.P5160309886825893825

namespace A380324

/-- `A035316(A367419(n+1)*A367419(n+1))` -/
def P5160309886825893825.Spec : Prop :=
  ∀ n, P5160309886825893825.a n = A380324 (n + 1)

end A380324

/-! ## A380324.P487318627205574193

`A367989(A367419(n+1)*A367419(n+1))`
-/

namespace A380324.P487318627205574193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367989 (A367419 (n + 1) * A367419 (n + 1)).toNat

end

end A380324.P487318627205574193

namespace A380324

/-- `A367989(A367419(n+1)*A367419(n+1))` -/
def P487318627205574193.Spec : Prop :=
  ∀ n, P487318627205574193.a n = A380324 (n + 1)

end A380324

/-! ## A380324.P4079607265665017211

`A366439(n+1)/A048250(A268335(n+1))`
-/

namespace A380324.P4079607265665017211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366439 (n + 1) : ℚ) / (A048250 (A268335 (n + 1)).toNat : ℚ)

end

end A380324.P4079607265665017211

namespace A380324

/-- `A366439(n+1)/A048250(A268335(n+1))` -/
def P4079607265665017211.Spec : Prop :=
  ∀ n, P4079607265665017211.a n = (A380324 (n + 1) : ℚ)

end A380324

/-! ## A380324.P8624058102068957665

`A366439(n+1)/A358346(A367417(n+1))`
-/

namespace A380324.P8624058102068957665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366439 (n + 1) : ℚ) / (A358346 (A367417 (n + 1)).toNat : ℚ)

end

end A380324.P8624058102068957665

namespace A380324

/-- `A366439(n+1)/A358346(A367417(n+1))` -/
def P8624058102068957665.Spec : Prop :=
  ∀ n, P8624058102068957665.a n = (A380324 (n + 1) : ℚ)

end A380324

/-!
# A380325: The sum of the square roots of the squares that divide the n-th exponentially odd number.

The programs for A380325, the canonical program `A380325.P11001594925613090436` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380325 has offset 1).

The definition of A380325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380325.P11001594925613090436

`A069290(A268335(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380325

/-- `A069290(A268335(n+1))` -/
def P11001594925613090436.Spec : Prop :=
  ∀ n, P11001594925613090436.a n = A380325 (n + 1)

theorem P11001594925613090436.correct : P11001594925613090436.Spec := by
  intro n
  simp only [A380325, Nat.add_sub_cancel]

end A380325

/-! ## A380325.P12594842427117909494

`∑{d}[A367419(n+1), #]`
-/

namespace A380325.P12594842427117909494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A380325.P12594842427117909494

namespace A380325

/-- `∑{d}[A367419(n+1), #]` -/
def P12594842427117909494.Spec : Prop :=
  ∀ n, (P12594842427117909494.a n : ℤ) = A380325 (n + 1)

end A380325

/-! ## A380325.P6213442684986771838

`A335341(A367407(n+1))`
-/

namespace A380325.P6213442684986771838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A367407 (n + 1)).toNat

end

end A380325.P6213442684986771838

namespace A380325

/-- `A335341(A367407(n+1))` -/
def P6213442684986771838.Spec : Prop :=
  ∀ n, P6213442684986771838.a n = A380325 (n + 1)

end A380325

/-! ## A380325.P5128036611957915631

`A367988(A367418(n+1))`
-/

namespace A380325.P5128036611957915631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 (A367418 (n + 1)).toNat

end

end A380325.P5128036611957915631

namespace A380325

/-- `A367988(A367418(n+1))` -/
def P5128036611957915631.Spec : Prop :=
  ∀ n, P5128036611957915631.a n = A380325 (n + 1)

end A380325

/-! ## A380325.P12742076200950954916

`A367988(A367419(n+1)²)`
-/

namespace A380325.P12742076200950954916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 (A367419 (n + 1) ^ 2).toNat

end

end A380325.P12742076200950954916

namespace A380325

/-- `A367988(A367419(n+1)²)` -/
def P12742076200950954916.Spec : Prop :=
  ∀ n, P12742076200950954916.a n = A380325 (n + 1)

end A380325

/-! ## A380325.P18119612175594542368

`A367988(A367419(n+1)*A367419(n+1))`
-/

namespace A380325.P18119612175594542368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 (A367419 (n + 1) * A367419 (n + 1)).toNat

end

end A380325.P18119612175594542368

namespace A380325

/-- `A367988(A367419(n+1)*A367419(n+1))` -/
def P18119612175594542368.Spec : Prop :=
  ∀ n, P18119612175594542368.a n = A380325 (n + 1)

end A380325

/-! ## A380325.P13944346983869031921

`A003893(A367418(n+1)²*A367418(n+1))`
-/

namespace A380325.P13944346983869031921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (A367418 (n + 1) ^ 2 * A367418 (n + 1)).toNat

end

end A380325.P13944346983869031921

namespace A380325

/-- `A003893(A367418(n+1)²*A367418(n+1))` -/
def P13944346983869031921.Spec : Prop :=
  ∀ n, P13944346983869031921.a n = A380325 (n + 1)

end A380325

/-! ## A380325.P8725235006571189327

`A333843(A367406(n+1))`
-/

namespace A380325.P8725235006571189327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (A367406 (n + 1)).toNat

end

end A380325.P8725235006571189327

namespace A380325

/-- `A333843(A367406(n+1))` -/
def P8725235006571189327.Spec : Prop :=
  ∀ n, P8725235006571189327.a n = A380325 (n + 1)

end A380325

/-! ## A380325.P4835585992979235384

`A333844(A374458(n+1))`
-/

namespace A380325.P4835585992979235384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 (A374458 (n + 1)).toNat

end

end A380325.P4835585992979235384

namespace A380325

/-- `A333844(A374458(n+1))` -/
def P4835585992979235384.Spec : Prop :=
  ∀ n, P4835585992979235384.a n = A380325 (n + 1)

end A380325

/-! ## A380325.P3854483774099173904

`A333844(A268335(n+1)²)`
-/

namespace A380325.P3854483774099173904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333844 (A268335 (n + 1) ^ 2).toNat

end

end A380325.P3854483774099173904

namespace A380325

/-- `A333844(A268335(n+1)²)` -/
def P3854483774099173904.Spec : Prop :=
  ∀ n, P3854483774099173904.a n = A380325 (n + 1)

end A380325

/-!
# A380326: a(n) is the sum of squarefree divisors of the n-th exponentially odd number.

The programs for A380326, the canonical program `A380326.P5985966696173145077` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380326 has offset 1).

The definition of A380326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380326.P5985966696173145077

`A048250(A268335(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380326

/-- `A048250(A268335(n+1))` -/
def P5985966696173145077.Spec : Prop :=
  ∀ n, P5985966696173145077.a n = A380326 (n + 1)

theorem P5985966696173145077.correct : P5985966696173145077.Spec := by
  intro n
  simp only [A380326, Nat.add_sub_cancel]

end A380326

/-! ## A380326.P12806086579441618762

`∑{d}[A367417(n+1), #]`
-/

namespace A380326.P12806086579441618762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A380326.P12806086579441618762

namespace A380326

/-- `∑{d}[A367417(n+1), #]` -/
def P12806086579441618762.Spec : Prop :=
  ∀ n, (P12806086579441618762.a n : ℤ) = A380326 (n + 1)

end A380326

/-! ## A380326.P4662167995328453274

`∏{p}[A367407(n+1), #+1]`
-/

namespace A380326.P4662167995328453274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A380326.P4662167995328453274

namespace A380326

/-- `∏{p}[A367407(n+1), #+1]` -/
def P4662167995328453274.Spec : Prop :=
  ∀ n, (P4662167995328453274.a n : ℤ) = A380326 (n + 1)

end A380326

/-! ## A380326.P17952922456659422828

`A374457(n+1)/A367418(n+1)`
-/

namespace A380326.P17952922456659422828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374457 (n + 1) : ℚ) / (A367418 (n + 1) : ℚ)

end

end A380326.P17952922456659422828

namespace A380326

/-- `A374457(n+1)/A367418(n+1)` -/
def P17952922456659422828.Spec : Prop :=
  ∀ n, P17952922456659422828.a n = (A380326 (n + 1) : ℚ)

end A380326

/-! ## A380326.P16241943525470960610

`A366439(n+1)/A380324(n+1)`
-/

namespace A380326.P16241943525470960610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366439 (n + 1) : ℚ) / (A380324 (n + 1) : ℚ)

end

end A380326.P16241943525470960610

namespace A380326

/-- `A366439(n+1)/A380324(n+1)` -/
def P16241943525470960610.Spec : Prop :=
  ∀ n, P16241943525470960610.a n = (A380326 (n + 1) : ℚ)

end A380326

/-! ## A380326.P10153586696969298711

`A374457(n+1)/A367419(n+1)²`
-/

namespace A380326.P10153586696969298711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374457 (n + 1) : ℚ) / (A367419 (n + 1) ^ 2 : ℚ)

end

end A380326.P10153586696969298711

namespace A380326

/-- `A374457(n+1)/A367419(n+1)²` -/
def P10153586696969298711.Spec : Prop :=
  ∀ n, P10153586696969298711.a n = (A380326 (n + 1) : ℚ)

end A380326

/-! ## A380326.P10739181258821962315

`A033634(A268335(n+1)/A367418(n+1))`
-/

namespace A380326.P10739181258821962315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((A268335 (n + 1) : ℚ) / (A367418 (n + 1) : ℚ))).toNat

end

end A380326.P10739181258821962315

namespace A380326

/-- `A033634(A268335(n+1)/A367418(n+1))` -/
def P10739181258821962315.Spec : Prop :=
  ∀ n, P10739181258821962315.a n = A380326 (n + 1)

end A380326

/-! ## A380326.P12159414257266224113

`A000113(A367417(n+1))`
-/

namespace A380326.P12159414257266224113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A367417 (n + 1)).toNat

end

end A380326.P12159414257266224113

namespace A380326

/-- `A000113(A367417(n+1))` -/
def P12159414257266224113.Spec : Prop :=
  ∀ n, P12159414257266224113.a n = A380326 (n + 1)

end A380326

/-! ## A380326.P971871902338787736

`A048250(A367407(n+1))`
-/

namespace A380326.P971871902338787736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A367407 (n + 1)).toNat

end

end A380326.P971871902338787736

namespace A380326

/-- `A048250(A367407(n+1))` -/
def P971871902338787736.Spec : Prop :=
  ∀ n, P971871902338787736.a n = A380326 (n + 1)

end A380326

/-! ## A380326.P6064093999150901070

`A366743(A268335(2*n+1-n))`
-/

namespace A380326.P6064093999150901070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366743 (A268335 (2 * n + 1 - n)).toNat

end

end A380326.P6064093999150901070

namespace A380326

/-- `A366743(A268335(2*n+1-n))` -/
def P6064093999150901070.Spec : Prop :=
  ∀ n, P6064093999150901070.a n = A380326 (n + 1)

end A380326

/-! ## A380326.P14401203714206476539

`∏{p}[A367406(n+1), #+1]`
-/

namespace A380326.P14401203714206476539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A380326.P14401203714206476539

namespace A380326

/-- `∏{p}[A367406(n+1), #+1]` -/
def P14401203714206476539.Spec : Prop :=
  ∀ n, (P14401203714206476539.a n : ℤ) = A380326 (n + 1)

end A380326

/-! ## A380326.P1286980668571782672

`∏{p}[A374458(n+1), #+1]`
-/

namespace A380326.P1286980668571782672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A380326.P1286980668571782672

namespace A380326

/-- `∏{p}[A374458(n+1), #+1]` -/
def P1286980668571782672.Spec : Prop :=
  ∀ n, (P1286980668571782672.a n : ℤ) = A380326 (n + 1)

end A380326

/-! ## A380326.P12876492104289498026

`A366764(A007947(A268335(n+1)²))`
-/

namespace A380326.P12876492104289498026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366764 (A007947 (A268335 (n + 1) ^ 2).toNat).toNat

end

end A380326.P12876492104289498026

namespace A380326

/-- `A366764(A007947(A268335(n+1)²))` -/
def P12876492104289498026.Spec : Prop :=
  ∀ n, P12876492104289498026.a n = A380326 (n + 1)

end A380326

/-! ## A380326.P3174419789723817837

`A000203(A336643(A268335(n+1)²))`
-/

namespace A380326.P3174419789723817837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336643 (A268335 (n + 1) ^ 2).toNat).toNat

end

end A380326.P3174419789723817837

namespace A380326

/-- `A000203(A336643(A268335(n+1)²))` -/
def P3174419789723817837.Spec : Prop :=
  ∀ n, P3174419789723817837.a n = A380326 (n + 1)

end A380326

/-!
# A380327: Degeneracy of the n-Mycielski graph.

The programs for A380327, there is no canonical definition to state claims against.
-/

/-! ## A380327.P14580324495290541628

`A003056(A114400(n)+A000129(n))`
-/

namespace A380327.P14580324495290541628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A114400 n + A000129 n).toNat

end

end A380327.P14580324495290541628

/-! ## A380327.P11981989415129833763

`A335524(A136423(n+2))`
-/

namespace A380327.P11981989415129833763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A136423 (n + 2)).toNat

end

end A380327.P11981989415129833763

/-! ## A380327.P1339811284942991143

`A135662(A077850(n)+n)`
-/

namespace A380327.P1339811284942991143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A077850 n + (n : ℤ)).toNat

end

end A380327.P1339811284942991143

/-! ## A380327.P7493834943562294188

`A307707(A285794(n+2)-1)`
-/

namespace A380327.P7493834943562294188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A285794 (n + 2) - 1).toNat

end

end A380327.P7493834943562294188

/-! ## A380327.P12242723624839176437

`A351846(A000217(n)*A177510(n))`
-/

namespace A380327.P12242723624839176437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A000217 n * A177510 n).toNat

end

end A380327.P12242723624839176437

/-!
# A380328: 2-dense squarefree numbers: Squarefree numbers whose divisors increase by factors of at most 2.

The programs for A380328, there is no canonical definition to state claims against.
-/

/-! ## A380328.P12367623860265635745

`∩[A174973(n+1), A265501(n+1)]`
-/

namespace A380328.P12367623860265635745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380328.P12367623860265635745

/-! ## A380328.P15626010195088622139

`filter[A174973(n+1), A008966(#)]`
-/

namespace A380328.P15626010195088622139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A380328.P15626010195088622139

/-! ## A380328.P2219896488750723784

`filter[A005117(n+1), A365429(#)]`
-/

namespace A380328.P2219896488750723784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P2219896488750723784

/-! ## A380328.P3479932157999108981

`filter[A265501(n+1), A365429(#)]`
-/

namespace A380328.P3479932157999108981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P3479932157999108981

/-! ## A380328.P13128712509211058285

`∩[A005117(n+1), A174973(n+1)]`
-/

namespace A380328.P13128712509211058285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380328.P13128712509211058285

/-! ## A380328.P12227316665327583476

`filter[A379548(n+1), A365429(#)]`
-/

namespace A380328.P12227316665327583476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P12227316665327583476

/-! ## A380328.P12632556656293582470

`filter[A080324(n+1), A365429(#)]`
-/

namespace A380328.P12632556656293582470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P12632556656293582470

/-! ## A380328.P8188009556584747052

`filter[A089269(n+1), A365429(#)]`
-/

namespace A380328.P8188009556584747052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P8188009556584747052

/-! ## A380328.P17107902909729329543

`filter[A338444(n+1), A365429(#)]`
-/

namespace A380328.P17107902909729329543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P17107902909729329543

/-! ## A380328.P11389391300179011276

`∩[A080324(n+1), A174973(n+1)]`
-/

namespace A380328.P11389391300179011276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380328.P11389391300179011276

/-! ## A380328.P6522919640879187896

`∩[A089269(n+1), A174973(n+1)]`
-/

namespace A380328.P6522919640879187896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380328.P6522919640879187896

/-! ## A380328.P12216741014795055848

`filter[A034044(n+1), A365429(#)]`
-/

namespace A380328.P12216741014795055848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P12216741014795055848

/-! ## A380328.P10843328930361794939

`∩[A034044(n+1), A174973(n+1)]`
-/

namespace A380328.P10843328930361794939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380328.P10843328930361794939

/-! ## A380328.P13475083616658953913

`filter[A380692(n+1), A365429(#)]`
-/

namespace A380328.P13475083616658953913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A380328.P13475083616658953913

/-!
# A380329: a(n) = A151800((n-1)*A151800(n)).

The programs for A380329, the canonical program `A380329.P8351164185332422839` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380329 has offset 0).

The definition of A380329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380329.P8351164185332422839

`A151800((A028310(n)-1)*A151800(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A380329

/-- `A151800((A028310(n)-1)*A151800(n))` -/
def P8351164185332422839.Spec : Prop :=
  ∀ n, P8351164185332422839.a n = A380329 n

theorem P8351164185332422839.correct : P8351164185332422839.Spec := by
  intro n
  simp only [A380329]

end A380329

/-! ## A380329.P17929339515252771408

`A151800((n-A057427(n))*A151800(n))`
-/

namespace A380329.P17929339515252771408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (((n : ℤ) - A057427 n) * A151800 n).toNat

end

end A380329.P17929339515252771408

namespace A380329

/-- `A151800((n-A057427(n))*A151800(n))` -/
def P17929339515252771408.Spec : Prop :=
  ∀ n, P17929339515252771408.a n = A380329 n

end A380329

/-! ## A380329.P910989424532805140

`A151800((n-A165471(n)²)*A151800(n))`
-/

namespace A380329.P910989424532805140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (((n : ℤ) - A165471 n ^ 2) * A151800 n).toNat

end

end A380329.P910989424532805140

namespace A380329

/-- `A151800((n-A165471(n)²)*A151800(n))` -/
def P910989424532805140.Spec : Prop :=
  ∀ n, P910989424532805140.a n = A380329 n

end A380329

/-! ## A380329.P604662679693818027

`A151800((n-A165471(n²))*A151800(n))`
-/

namespace A380329.P604662679693818027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (((n : ℤ) - A165471 (n ^ 2)) * A151800 n).toNat

end

end A380329.P604662679693818027

namespace A380329

/-- `A151800((n-A165471(n²))*A151800(n))` -/
def P604662679693818027.Spec : Prop :=
  ∀ n, P604662679693818027.a n = A380329 n

end A380329

/-! ## A380329.P15119149839288807447

`A151800(A151800(n)*A259361(n²))`
-/

namespace A380329.P15119149839288807447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n * A259361 (n ^ 2)).toNat

end

end A380329.P15119149839288807447

namespace A380329

/-- `A151800(A151800(n)*A259361(n²))` -/
def P15119149839288807447.Spec : Prop :=
  ∀ n, P15119149839288807447.a n = A380329 n

end A380329

/-!
# A380330: a(n) = A151800(prime(n)*A151800(n)).

The programs for A380330, the canonical program `A380330.P10363215935538864354` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380330 has offset 1).

The definition of A380330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380330.P10363215935538864354

`A151800(A000040(n+1)*A151800(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A380330

/-- `A151800(A000040(n+1)*A151800(n+1))` -/
def P10363215935538864354.Spec : Prop :=
  ∀ n, P10363215935538864354.a n = A380330 (n + 1)

theorem P10363215935538864354.correct : P10363215935538864354.Spec := by
  intro n
  simp only [A380330, Nat.add_sub_cancel]

end A380330

/-! ## A380330.P5802069037853884740

`A151800(A008578(n+2)*A151800(n+1))`
-/

namespace A380330.P5802069037853884740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008578 (n + 2) * A151800 (n + 1)).toNat

end

end A380330.P5802069037853884740

namespace A380330

/-- `A151800(A008578(n+2)*A151800(n+1))` -/
def P5802069037853884740.Spec : Prop :=
  ∀ n, P5802069037853884740.a n = A380330 (n + 1)

end A380330

/-! ## A380330.P7570242210239784738

`A151800(A151800(n+1)*A182986(n+2))`
-/

namespace A380330.P7570242210239784738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (n + 1) * A182986 (n + 2)).toNat

end

end A380330.P7570242210239784738

namespace A380330

/-- `A151800(A151800(n+1)*A182986(n+2))` -/
def P7570242210239784738.Spec : Prop :=
  ∀ n, P7570242210239784738.a n = A380330 (n + 1)

end A380330

/-! ## A380330.P12295523042762383054

`A151800((A006093(n+1)+1)*A151800(n+1))`
-/

namespace A380330.P12295523042762383054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((A006093 (n + 1) + 1) * A151800 (n + 1)).toNat

end

end A380330.P12295523042762383054

namespace A380330

/-- `A151800((A006093(n+1)+1)*A151800(n+1))` -/
def P12295523042762383054.Spec : Prop :=
  ∀ n, P12295523042762383054.a n = A380330 (n + 1)

theorem P12295523042762383054.correct : P12295523042762383054.Spec := by
  intro n
  simp only [A380330, Nat.add_sub_cancel, A380330.P12295523042762383054.a, A380330.P10363215935538864354.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380330

/-! ## A380330.P1790367452209064335

`A151800((A008864(n+1)-1)*A151800(n+1))`
-/

namespace A380330.P1790367452209064335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((A008864 (n + 1) - 1) * A151800 (n + 1)).toNat

end

end A380330.P1790367452209064335

namespace A380330

/-- `A151800((A008864(n+1)-1)*A151800(n+1))` -/
def P1790367452209064335.Spec : Prop :=
  ∀ n, P1790367452209064335.a n = A380330 (n + 1)

theorem P1790367452209064335.correct : P1790367452209064335.Spec := by
  intro n
  simp only [A380330, Nat.add_sub_cancel, A380330.P1790367452209064335.a, A380330.P10363215935538864354.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380330

/-! ## A380330.P8756816550518388174

`A151800(A001748(n+1)/3*A151800(n+1))`
-/

namespace A380330.P8756816550518388174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3 * (A151800 (n + 1) : ℚ))).toNat

end

end A380330.P8756816550518388174

namespace A380330

/-- `A151800(A001748(n+1)/3*A151800(n+1))` -/
def P8756816550518388174.Spec : Prop :=
  ∀ n, P8756816550518388174.a n = A380330 (n + 1)

end A380330

/-!
# A380331: a(n) = number of primes < n^4.

The programs for A380331, there is no canonical definition to state claims against.
-/

/-! ## A380331.P2165306232084609611

`∑[A061235(n)]-A061235(n)`
-/

namespace A380331.P2165306232084609611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061235 n

end

end A380331.P2165306232084609611

/-! ## A380331.P5157629137424175787

`A380332(n)+A038107(n)`
-/

namespace A380331.P5157629137424175787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380332 n + A038107 n

end

end A380331.P5157629137424175787

/-! ## A380331.P13675972217986635127

`A117490(A253909(n))+A038107(n)`
-/

namespace A380331.P13675972217986635127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A253909 n).toNat + A038107 n

end

end A380331.P13675972217986635127

/-! ## A380331.P16703115473920097117

`A220506(A004277(n))+A117490(floor(1/(n+1))+n²)`
-/

namespace A380331.P16703115473920097117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A004277 n).toNat + A117490 (⌊1 / (n + 1 : ℚ)⌋ + (n ^ 2 : ℤ)).toNat

end

end A380331.P16703115473920097117

/-! ## A380331.P1596941784505249977

`A117490(floor(1/(n+1))+n²)+A000720(A253909(n))`
-/

namespace A380331.P1596941784505249977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (⌊1 / (n + 1 : ℚ)⌋ + (n ^ 2 : ℤ)).toNat + A000720 (A253909 n).toNat

end

end A380331.P1596941784505249977

/-! ## A380331.P8350502457882684065

`A117490(floor(1/(n+1))+n²)+A220506(2*n+1)-A220492(2*n)`
-/

namespace A380331.P8350502457882684065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (⌊1 / (n + 1 : ℚ)⌋ + (n ^ 2 : ℤ)).toNat + (A220506 (2 * n + 1) - A220492 (2 * n))

end

end A380331.P8350502457882684065

/-! ## A380331.P13938670156838235699

`A038107(n²)`
-/

namespace A380331.P13938670156838235699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n ^ 2)

end

end A380331.P13938670156838235699

/-! ## A380331.P1331656888738127994

`A132635(n²)-A130130(n)`
-/

namespace A380331.P1331656888738127994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132635 (n ^ 2) - A130130 n

end

end A380331.P1331656888738127994

/-! ## A380331.P3171344846530395534

`lcm((-1)^n, A038107(A000290(n)))`
-/

namespace A380331.P3171344846530395534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A038107 (A000290 n).toNat)

end

end A380331.P3171344846530395534

/-! ## A380331.P13553941135577912809

`A038107(A000290(n))*A157928(n)`
-/

namespace A380331.P13553941135577912809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000290 n).toNat * A157928 n

end

end A380331.P13553941135577912809

/-! ## A380331.P13253725772695569600

`A038107(A000290(n))%A127346(n+1)`
-/

namespace A380331.P13253725772695569600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038107 (A000290 n).toNat) (A127346 (n + 1))

end

end A380331.P13253725772695569600

/-! ## A380331.P14792403063263570814

`A038107(A000290(n))+A000007(2*n+1)`
-/

namespace A380331.P14792403063263570814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000290 n).toNat + A000007 (2 * n + 1)

end

end A380331.P14792403063263570814

/-! ## A380331.P7064148078076147846

`A130706(2*n+2)+A038107(A000290(n))`
-/

namespace A380331.P7064148078076147846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * n + 2) + A038107 (A000290 n).toNat

end

end A380331.P7064148078076147846

/-!
# A380332: a(n) = number of primes between n^2 and n^4.

The programs for A380332, the canonical program `A380332.P1368745868140555884` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380332 has offset 0).

The definition of A380332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380332.P1488667473608223331

`A380331(n)-A038107(n)`
-/

namespace A380332.P1488667473608223331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380331 n - A038107 n

end

end A380332.P1488667473608223331

namespace A380332

/-- `A380331(n)-A038107(n)` -/
def P1488667473608223331.Spec : Prop :=
  ∀ n, P1488667473608223331.a n = A380332 n

end A380332

/-! ## A380332.P1368745868140555884

`A117490(floor(1/(n+1))+n²)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A380332

/-- `A117490(floor(1/(n+1))+n²)` -/
def P1368745868140555884.Spec : Prop :=
  ∀ n, P1368745868140555884.a n = A380332 n

theorem P1368745868140555884.correct : P1368745868140555884.Spec := by
  intro n
  simp only [A380332]

end A380332

/-! ## A380332.P7550367775302473972

`A073882(A253909(n))`
-/

namespace A380332.P7550367775302473972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A253909 n).toNat

end

end A380332.P7550367775302473972

namespace A380332

/-- `A073882(A253909(n))` -/
def P7550367775302473972.Spec : Prop :=
  ∀ n, P7550367775302473972.a n = A380332 n

end A380332

/-! ## A380332.P4402416518763151201

`A073882(A028310(n²))`
-/

namespace A380332.P4402416518763151201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A028310 (n ^ 2)).toNat

end

end A380332.P4402416518763151201

namespace A380332

/-- `A073882(A028310(n²))` -/
def P4402416518763151201.Spec : Prop :=
  ∀ n, P4402416518763151201.a n = A380332 n

end A380332

/-! ## A380332.P8279898574205191548

`A073882(A028310(n)*A028310(n))`
-/

namespace A380332.P8279898574205191548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A028310 n * A028310 n).toNat

end

end A380332.P8279898574205191548

namespace A380332

/-- `A073882(A028310(n)*A028310(n))` -/
def P8279898574205191548.Spec : Prop :=
  ∀ n, P8279898574205191548.a n = A380332 n

end A380332

/-! ## A380332.P7607514996336934428

`A117490(A253909(n))+n*A000038(n)`
-/

namespace A380332.P7607514996336934428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A253909 n).toNat + (n : ℤ) * A000038 n

end

end A380332.P7607514996336934428

namespace A380332

/-- `A117490(A253909(n))+n*A000038(n)` -/
def P7607514996336934428.Spec : Prop :=
  ∀ n, P7607514996336934428.a n = A380332 n

end A380332

/-! ## A380332.P7254576739156776965

`A038107(n²)-A038107(n)`
-/

namespace A380332.P7254576739156776965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n ^ 2) - A038107 n

end

end A380332.P7254576739156776965

namespace A380332

/-- `A038107(n²)-A038107(n)` -/
def P7254576739156776965.Spec : Prop :=
  ∀ n, P7254576739156776965.a n = A380332 n

end A380332

/-! ## A380332.P18119828919941891602

`A132635(n²)-A132635(n)`
-/

namespace A380332.P18119828919941891602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132635 (n ^ 2) - A132635 n

end

end A380332.P18119828919941891602

namespace A380332

/-- `A132635(n²)-A132635(n)` -/
def P18119828919941891602.Spec : Prop :=
  ∀ n, P18119828919941891602.a n = A380332 n

end A380332

/-!
# A380335: Minimal number of generators of Gamma_0(n).

The programs for A380335, there is no canonical definition to state claims against.
-/

/-! ## A380335.P17703942085003044190

`A296133(n+1)+A055642(A289028(n))`
-/

namespace A380335.P17703942085003044190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (n + 1) + A055642 (A289028 n).toNat

end

end A380335.P17703942085003044190

/-! ## A380335.P6676093998005570283

`A334541(n+4)+A055642(A265947(n))`
-/

namespace A380335.P6676093998005570283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334541 (n + 4) + A055642 (A265947 n).toNat

end

end A380335.P6676093998005570283

/-! ## A380335.P3530514222046680797

`A050320(n+1)+A046951(A038754(n+1))`
-/

namespace A380335.P3530514222046680797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1) + A046951 (A038754 (n + 1)).toNat

end

end A380335.P3530514222046680797

/-! ## A380335.P18311642388598219632

`A157687(A384175(n+1))+A156251(n+1)`
-/

namespace A380335.P18311642388598219632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (A384175 (n + 1)).toNat + A156251 (n + 1)

end

end A380335.P18311642388598219632

/-! ## A380335.P8342651157982042342

`A079085(A381453(3*n+5)+A214899(n))`
-/

namespace A380335.P8342651157982042342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079085 (A381453 (3 * n + 5) + A214899 n).toNat

end

end A380335.P8342651157982042342

/-!
# A380336: Triangular array read by rows. T(n,k) is the number of ways to choose a size k subset S of [n] and form a labeled acyclic digraph on S. Then form another labeled acyclic digraph on [n]-S. For each pair u in S and v in [n]-S add the directed edge u->v or not, n>=0, 0<=k<=n.

The programs for A380336, there is no canonical definition to state claims against.
-/

/-! ## A380336.P283198003359856827

`C(row(n), col(n))*A003024(col(n))*A003024(row(n)-col(n))*2^(col(n)*(row(n)-col(n)))`
-/

namespace A380336.P283198003359856827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A003024 (SequenceMachineLib.triCol n) * A003024 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ)

end

end A380336.P283198003359856827

/-! ## A380336.P14316722639699951274

`A237829(2*(n+1))^A000002(A000045(2*n+3))`
-/

namespace A380336.P14316722639699951274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237829 (2 * (n + 1)) : ℚ) ^ (A000002 (A000045 (2 * n + 3)).toNat : ℤ)

end

end A380336.P14316722639699951274

/-!
# A380337: Number of perfect powers (in A001597) that do not exceed primorial A002110(n).

The programs for A380337, there is no canonical definition to state claims against.
-/

/-! ## A380337.P16552151779232450814

`A371587(A191640(n+1))`
-/

namespace A380337.P16552151779232450814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A191640 (n + 1)).toNat

end

end A380337.P16552151779232450814

/-! ## A380337.P13212368514280213530

`A390478(n)+A074290(A083420(n))`
-/

namespace A380337.P13212368514280213530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390478 n + A074290 (A083420 n).toNat

end

end A380337.P13212368514280213530

/-! ## A380337.P15747270082376809781

`A214302(A234568(n))+A176697(n)`
-/

namespace A380337.P15747270082376809781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214302 (A234568 n).toNat + A176697 n

end

end A380337.P15747270082376809781

/-!
# A380339: Expansion of e.g.f. log(1 - x^2/2 * log(1 - x)).

The programs for A380339, there is no canonical definition to state claims against.
-/

/-! ## A380339.P12351162164965111015

`A356912(A151771(n)+n)`
-/

namespace A380339.P12351162164965111015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356912 (A151771 n + (n : ℤ)).toNat

end

end A380339.P12351162164965111015

/-! ## A380339.P4525938078323955809

`A356912(A242534(n+1)+n)`
-/

namespace A380339.P4525938078323955809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356912 (A242534 (n + 1) + (n : ℤ)).toNat

end

end A380339.P4525938078323955809

/-! ## A380339.P15344554060164897688

`A356912(n^A370561(n+1))`
-/

namespace A380339.P15344554060164897688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356912 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A370561 (n + 1) : ℤ))).toNat

end

end A380339.P15344554060164897688

/-! ## A380339.P6998571649587987610

`A356912(n)%A215050(n+1)`
-/

namespace A380339.P6998571649587987610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356912 n) (A215050 (n + 1))

end

end A380339.P6998571649587987610

/-! ## A380339.P14917605806702113428

`A356912(n)+A010815(A000244(n))`
-/

namespace A380339.P14917605806702113428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356912 n + A010815 (A000244 n).toNat

end

end A380339.P14917605806702113428

/-!
# A380340: a(n) = phi(1 + phi(2 + phi(3 + ... phi(n)))).

The programs for A380340, the canonical program `A380340.P10996430309273086064` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380340 has offset 1).

The definition of A380340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380340.P10996430309273086064

`ogf((1+x^2+2x^4)/(1-x))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380340

/-- `ogf((1+x^2+2x^4)/(1-x))` -/
def P10996430309273086064.Spec : Prop :=
  ∀ n, P10996430309273086064.a n = A380340 (n + 1)

theorem P10996430309273086064.correct : P10996430309273086064.Spec := by
  intro n
  simp only [A380340, Nat.add_sub_cancel]

end A380340

/-!
# A380343: Number of strict integer partitions of n whose product of parts is a multiple of n + 1.

The programs for A380343, there is no canonical definition to state claims against.
-/

/-! ## A380343.P11580229375120089307

`A117974(A378680(n+2))`
-/

namespace A380343.P11580229375120089307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117974 (A378680 (n + 2)).toNat

end

end A380343.P11580229375120089307

/-! ## A380343.P13943725499624471814

`val(A013929(A178919(2*(n+2))), 6)`
-/

namespace A380343.P13943725499624471814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013929 (A178919 (2 * (n + 2))).toNat).toNat 6

end

end A380343.P13943725499624471814

/-! ## A380343.P15745224871437616446

`A211225(A264400(2*(n+2))-n)`
-/

namespace A380343.P15745224871437616446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211225 (A264400 (2 * (n + 2)) - (n : ℤ)).toNat

end

end A380343.P15745224871437616446

/-! ## A380343.P473012502737657007

`A345197(A336415(n)-A084938(n))`
-/

namespace A380343.P473012502737657007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A336415 n - A084938 n).toNat

end

end A380343.P473012502737657007

/-! ## A380343.P3393970793762842366

`A212412(A000079(n))*A344255(n)`
-/

namespace A380343.P3393970793762842366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 (A000079 n).toNat * A344255 (n + 32)

end

end A380343.P3393970793762842366

/-!
# A380344: Product of prime indices minus sum of prime factors of n.

The programs for A380344, the canonical program `A380344.P8003750175292629096` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380344 has offset 1).

The definition of A380344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380344.P8003750175292629096

`A003963(n+1)-A001414(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380344

/-- `A003963(n+1)-A001414(n+1)` -/
def P8003750175292629096.Spec : Prop :=
  ∀ n, P8003750175292629096.a n = A380344 (n + 1)

theorem P8003750175292629096.correct : P8003750175292629096.Spec := by
  intro n
  simp only [A380344, Nat.add_sub_cancel]

end A380344

/-! ## A380344.P4177101441791712793

`A325036(n+1)-A331415(n+1)`
-/

namespace A380344.P4177101441791712793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) - A331415 (n + 1)

end

end A380344.P4177101441791712793

namespace A380344

/-- `A325036(n+1)-A331415(n+1)` -/
def P4177101441791712793.Spec : Prop :=
  ∀ n, P4177101441791712793.a n = A380344 (n + 1)

theorem P4177101441791712793.correct : P4177101441791712793.Spec := by
  intro n
  simp only [A380344, Nat.add_sub_cancel, A380344.P4177101441791712793.a, A380344.P8003750175292629096.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A325036, A325036.P14148753285896189603.a, A331415, A331415.P4846081659728035053.a, A056239, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A161511, A161511.P16266007976091900386.a, A000120, A000120.P2816527436160941581.a, A048896, A048896.P6461019053085857547.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380344

/-! ## A380344.P2832144904788520862

`A003963(n+1)+1-A036288(n+1)`
-/

namespace A380344.P2832144904788520862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + (1 - A036288 (n + 1))

end

end A380344.P2832144904788520862

namespace A380344

/-- `A003963(n+1)+1-A036288(n+1)` -/
def P2832144904788520862.Spec : Prop :=
  ∀ n, P2832144904788520862.a n = A380344 (n + 1)

theorem P2832144904788520862.correct : P2832144904788520862.Spec := by
  intro n
  simp only [A380344, Nat.add_sub_cancel, A380344.P2832144904788520862.a, A380344.P8003750175292629096.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380344

/-! ## A380344.P9976574734925037495

`A380409(n+1)-2*A001414(n+1)`
-/

namespace A380344.P9976574734925037495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380409 (n + 1) - 2 * A001414 (n + 1)

end

end A380344.P9976574734925037495

namespace A380344

/-- `A380409(n+1)-2*A001414(n+1)` -/
def P9976574734925037495.Spec : Prop :=
  ∀ n, P9976574734925037495.a n = A380344 (n + 1)

theorem P9976574734925037495.correct : P9976574734925037495.Spec := by
  intro n
  simp only [A380344, Nat.add_sub_cancel, A380344.P9976574734925037495.a, A380344.P8003750175292629096.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A380409, A380409.P2904522340196299969.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380344

/-! ## A380344.P17164469643842094079

`2*A003963(n+1)-A380409(n+1)`
-/

namespace A380344.P17164469643842094079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003963 (n + 1) - A380409 (n + 1)

end

end A380344.P17164469643842094079

namespace A380344

/-- `2*A003963(n+1)-A380409(n+1)` -/
def P17164469643842094079.Spec : Prop :=
  ∀ n, P17164469643842094079.a n = A380344 (n + 1)

theorem P17164469643842094079.correct : P17164469643842094079.Spec := by
  intro n
  simp only [A380344, Nat.add_sub_cancel, A380344.P17164469643842094079.a, A380344.P8003750175292629096.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A380409, A380409.P2904522340196299969.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380344

/-! ## A380344.P1838544139956113099

`A380345(n+1)+A325036(n+1)-A075254(n+1)`
-/

namespace A380344.P1838544139956113099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380345 (n + 1) + A325036 (n + 1) - A075254 (n + 1)

end

end A380344.P1838544139956113099

namespace A380344

/-- `A380345(n+1)+A325036(n+1)-A075254(n+1)` -/
def P1838544139956113099.Spec : Prop :=
  ∀ n, P1838544139956113099.a n = A380344 (n + 1)

theorem P1838544139956113099.correct : P1838544139956113099.Spec := by
  intro n
  simp only [A380344, Nat.add_sub_cancel, A380344.P1838544139956113099.a, A380344.P8003750175292629096.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003963, A003963.P6853423646423809573.a, A075254, A075254.P6422447875050144596.a, A325036, A325036.P14148753285896189603.a, A380345, A380345.P3416860299638001481.a, A056239, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A161511, A161511.P16266007976091900386.a, A000120, A000120.P2816527436160941581.a, A048896, A048896.P6461019053085857547.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380344

/-!
# A380345: a(n) = n + sum of prime indices of n.

The programs for A380345, the canonical program `A380345.P3416860299638001481` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380345 has offset 1).

The definition of A380345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380345.P3416860299638001481

`n+1+A056239(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380345

/-- `n+1+A056239(n+1)` -/
def P3416860299638001481.Spec : Prop :=
  ∀ n, P3416860299638001481.a n = A380345 (n + 1)

theorem P3416860299638001481.correct : P3416860299638001481.Spec := by
  intro n
  simp only [A380345, Nat.add_sub_cancel]

end A380345

/-! ## A380345.P2852129643732098738

`A316436(2*(n+1))+n`
-/

namespace A380345.P2852129643732098738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) + (n : ℤ)

end

end A380345.P2852129643732098738

namespace A380345

/-- `A316436(2*(n+1))+n` -/
def P2852129643732098738.Spec : Prop :=
  ∀ n, P2852129643732098738.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P3868827099383209867

`2*(n+1)-A178503(n+1)`
-/

namespace A380345.P3868827099383209867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A178503 (n + 1)

end

end A380345.P3868827099383209867

namespace A380345

/-- `2*(n+1)-A178503(n+1)` -/
def P3868827099383209867.Spec : Prop :=
  ∀ n, P3868827099383209867.a n = A380345 (n + 1)

theorem P3868827099383209867.correct : P3868827099383209867.Spec := by
  intro n
  simp only [A380345, Nat.add_sub_cancel, A380345.P3868827099383209867.a, A380345.P3416860299638001481.a, A056239, A056239.P11316688788989965672.a, A178503, A178503.P4821530667985743072.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A380345

/-! ## A380345.P15549993471808608634

`A056239(A005843(n+1))+n`
-/

namespace A380345.P15549993471808608634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A005843 (n + 1)).toNat + (n : ℤ)

end

end A380345.P15549993471808608634

namespace A380345

/-- `A056239(A005843(n+1))+n` -/
def P15549993471808608634.Spec : Prop :=
  ∀ n, P15549993471808608634.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P16658227005556262637

`log2(A248692(n+1))+1+n`
-/

namespace A380345.P16658227005556262637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A380345.P16658227005556262637

namespace A380345

/-- `log2(A248692(n+1))+1+n` -/
def P16658227005556262637.Spec : Prop :=
  ∀ n, P16658227005556262637.a n = (A380345 (n + 1) : ℝ)

end A380345

/-! ## A380345.P11688538683789825263

`A325033(A000040(n+1))+n+1`
-/

namespace A380345.P11688538683789825263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (A000040 (n + 1)).toNat + (n + 1 : ℤ)

end

end A380345.P11688538683789825263

namespace A380345

/-- `A325033(A000040(n+1))+n+1` -/
def P11688538683789825263.Spec : Prop :=
  ∀ n, P11688538683789825263.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P1186850676336047326

`A346698(A129597(n+1))+n+1`
-/

namespace A380345.P1186850676336047326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A129597 (n + 1)).toNat + (n + 1 : ℤ)

end

end A380345.P1186850676336047326

namespace A380345

/-- `A346698(A129597(n+1))+n+1` -/
def P1186850676336047326.Spec : Prop :=
  ∀ n, P1186850676336047326.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P12710017386009487003

`A346699(A342768(n+1))+n+1`
-/

namespace A380345.P12710017386009487003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A342768 (n + 1)).toNat + (n + 1 : ℤ)

end

end A380345.P12710017386009487003

namespace A380345

/-- `A346699(A342768(n+1))+n+1` -/
def P12710017386009487003.Spec : Prop :=
  ∀ n, P12710017386009487003.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P11624584611780038183

`A318995(A003961(2*(n+1)))+n`
-/

namespace A380345.P11624584611780038183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (2 * (n + 1))).toNat + (n : ℤ)

end

end A380345.P11624584611780038183

namespace A380345

/-- `A318995(A003961(2*(n+1)))+n` -/
def P11624584611780038183.Spec : Prop :=
  ∀ n, P11624584611780038183.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P17150093813770300589

`A346698((n+1)²)+n+1`
-/

namespace A380345.P17150093813770300589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A380345.P17150093813770300589

namespace A380345

/-- `A346698((n+1)²)+n+1` -/
def P17150093813770300589.Spec : Prop :=
  ∀ n, P17150093813770300589.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P4198950573273072901

`A316436(A033286(n+1))`
-/

namespace A380345.P4198950573273072901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (A033286 (n + 1)).toNat

end

end A380345.P4198950573273072901

namespace A380345

/-- `A316436(A033286(n+1))` -/
def P4198950573273072901.Spec : Prop :=
  ∀ n, P4198950573273072901.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P633909943118084960

`A346700((n+1)²)+1+n`
-/

namespace A380345.P633909943118084960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 ((n + 1) ^ 2) + 1 + (n : ℤ)

end

end A380345.P633909943118084960

namespace A380345

/-- `A346700((n+1)²)+1+n` -/
def P633909943118084960.Spec : Prop :=
  ∀ n, P633909943118084960.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P1930535268836327703

`A346700((n+1)*(n+1))+n+1`
-/

namespace A380345.P1930535268836327703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 ((n + 1) * (n + 1)) + (n + 1 : ℤ)

end

end A380345.P1930535268836327703

namespace A380345

/-- `A346700((n+1)*(n+1))+n+1` -/
def P1930535268836327703.Spec : Prop :=
  ∀ n, P1930535268836327703.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P2939575584065784361

`A346697((n+1)²)+n+1`
-/

namespace A380345.P2939575584065784361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A380345.P2939575584065784361

namespace A380345

/-- `A346697((n+1)²)+n+1` -/
def P2939575584065784361.Spec : Prop :=
  ∀ n, P2939575584065784361.a n = A380345 (n + 1)

end A380345

/-! ## A380345.P11520274392592634082

`A346699((n+1)²)+n+1`
-/

namespace A380345.P11520274392592634082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A380345.P11520274392592634082

namespace A380345

/-- `A346699((n+1)²)+n+1` -/
def P11520274392592634082.Spec : Prop :=
  ∀ n, P11520274392592634082.a n = A380345 (n + 1)

end A380345

/-!
# A380346: Number of corona for a hexagon of edge n with diamonds of side 1.

The programs for A380346, there is no canonical definition to state claims against.
-/

/-! ## A380346.P4215748951349123201

`((n+1)*((n+1)²+3))²+2`
-/

namespace A380346.P4215748951349123201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2 + 3)) ^ 2 + 2

end

end A380346.P4215748951349123201

/-! ## A380346.P12341867692487257622

`A058794((n+1)²)`
-/

namespace A380346.P12341867692487257622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 ((n + 1) ^ 2)

end

end A380346.P12341867692487257622

/-! ## A380346.P5470987416049807063

`record[A058794((1-n)²)]`
-/

namespace A380346.P5470987416049807063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380346.P5470987416049807063

/-! ## A380346.P10667968063160665886

`A121670((n+1)²+2)`
-/

namespace A380346.P10667968063160665886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121670 ((n + 1) ^ 2 + 2)

end

end A380346.P10667968063160665886

/-! ## A380346.P15798292586644973802

`2*A154560((n+1)²)`
-/

namespace A380346.P15798292586644973802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154560 ((n + 1) ^ 2)

end

end A380346.P15798292586644973802

/-!
# A380349: In the ternary expansion of n, from left to right: replace the first, third, fifth, etc. nonzero digit, says d, by 3-d.

The programs for A380349, there is no canonical definition to state claims against.
-/

/-! ## A380349.P3896197473509237206

`A380350(A004488(n))`
-/

namespace A380349.P3896197473509237206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A004488 n).toNat

end

end A380349.P3896197473509237206

/-! ## A380349.P2142406877417162181

`A380350(A117966(n)+n)`
-/

namespace A380349.P2142406877417162181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A117966 n + (n : ℤ)).toNat

end

end A380349.P2142406877417162181

/-! ## A380349.P12765596379442141159

`A380350(n)+A333773(n)`
-/

namespace A380349.P12765596379442141159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 n + A333773 n

end

end A380349.P12765596379442141159

/-! ## A380349.P6048285458915664543

`A321464(A380351(A321464(n)))`
-/

namespace A380349.P6048285458915664543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A380351 (A321464 n).toNat).toNat

end

end A380349.P6048285458915664543

/-! ## A380349.P17302823964616092182

`A380352(A380351(A380350(n)))`
-/

namespace A380349.P17302823964616092182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A380351 (A380350 n).toNat).toNat

end

end A380349.P17302823964616092182

/-!
# A380350: In the ternary expansion of n, from left to right: replace the second, fourth, sixth, etc. nonzero digit, says d, by 3-d.

The programs for A380350, there is no canonical definition to state claims against.
-/

/-! ## A380350.P7198764564499162371

`A380349(A004488(n))`
-/

namespace A380350.P7198764564499162371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380349 (A004488 n).toNat

end

end A380350.P7198764564499162371

/-! ## A380350.P18168113621598267098

`A380349(A117966(n)+n)`
-/

namespace A380350.P18168113621598267098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380349 (A117966 n + (n : ℤ)).toNat

end

end A380350.P18168113621598267098

/-! ## A380350.P5882439881841896660

`A380349(n)-A333773(n)`
-/

namespace A380350.P5882439881841896660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380349 n - A333773 n

end

end A380350.P5882439881841896660

/-! ## A380350.P9493410153787544573

`A321464(A380352(A321464(n)))`
-/

namespace A380350.P9493410153787544573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A380352 (A321464 n).toNat).toNat

end

end A380350.P9493410153787544573

/-! ## A380350.P15168026194327444427

`A380352(A380351(A380349(n)))`
-/

namespace A380350.P15168026194327444427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A380351 (A380349 n).toNat).toNat

end

end A380350.P15168026194327444427

/-! ## A380350.P10485386887002943478

`A380349(A274107(n)+A134028(n)+n)`
-/

namespace A380350.P10485386887002943478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380349 (A274107 n + A134028 n + (n : ℤ)).toNat

end

end A380350.P10485386887002943478

/-! ## A380350.P18036684639930949513

`A380349(A244042(n)-A374362(n)+n)`
-/

namespace A380350.P18036684639930949513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380349 (A244042 n - A374362 n + (n : ℤ)).toNat

end

end A380350.P18036684639930949513

/-!
# A380351: In the ternary expansion of n, from right to left: replace the first, third, fifth, etc. nonzero digit, says d, by 3-d.

The programs for A380351, there is no canonical definition to state claims against.
-/

/-! ## A380351.P14503917150676396762

`A380352(A004488(n))`
-/

namespace A380351.P14503917150676396762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A004488 n).toNat

end

end A380351.P14503917150676396762

/-! ## A380351.P1394448577101285014

`A380352(A117966(n)+n)`
-/

namespace A380351.P1394448577101285014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A117966 n + (n : ℤ)).toNat

end

end A380351.P1394448577101285014

/-! ## A380351.P4069791449742137270

`A321464(A380349(A321464(n)))`
-/

namespace A380351.P4069791449742137270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A380349 (A321464 n).toNat).toNat

end

end A380351.P4069791449742137270

/-! ## A380351.P15653836780809934382

`A380352(A380350(A380349(n)))`
-/

namespace A380351.P15653836780809934382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A380350 (A380349 n).toNat).toNat

end

end A380351.P15653836780809934382

/-! ## A380351.P7028521773058852346

`A380352(A374363(n)+A244042(n))`
-/

namespace A380351.P7028521773058852346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A374363 n + A244042 n).toNat

end

end A380351.P7028521773058852346

/-! ## A380351.P2821116445618504486

`A380352(A117967(n)-A117966(2*n))`
-/

namespace A380351.P2821116445618504486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A117967 n - A117966 (2 * n)).toNat

end

end A380351.P2821116445618504486

/-! ## A380351.P11886034934826479485

`A380352(A005843(n)-(n-A117966(n)))`
-/

namespace A380351.P11886034934826479485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A005843 n - ((n : ℤ) - A117966 n)).toNat

end

end A380351.P11886034934826479485

/-!
# A380352: In the ternary expansion of n, from right to left: replace the second, fourth, sixth, etc. nonzero digit, says d, by 3-d.

The programs for A380352, there is no canonical definition to state claims against.
-/

/-! ## A380352.P4273992888358877148

`A380351(A004488(n))`
-/

namespace A380352.P4273992888358877148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380351 (A004488 n).toNat

end

end A380352.P4273992888358877148

/-! ## A380352.P17787752192877229455

`A380351(A117966(n)+n)`
-/

namespace A380352.P17787752192877229455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380351 (A117966 n + (n : ℤ)).toNat

end

end A380352.P17787752192877229455

/-! ## A380352.P769541788352161174

`A321464(A380350(A321464(n)))`
-/

namespace A380352.P769541788352161174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A380350 (A321464 n).toNat).toNat

end

end A380352.P769541788352161174

/-! ## A380352.P2625598522018410825

`A380351(A380350(A380349(n)))`
-/

namespace A380352.P2625598522018410825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380351 (A380350 (A380349 n).toNat).toNat

end

end A380352.P2625598522018410825

/-! ## A380352.P1008981789740818926

`A380351(A374363(n)+A244042(n))`
-/

namespace A380352.P1008981789740818926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380351 (A374363 n + A244042 n).toNat

end

end A380352.P1008981789740818926

/-! ## A380352.P5652127946468909949

`A380351(A374363(3*n)-n)`
-/

namespace A380352.P5652127946468909949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380351 (A374363 (3 * n) - (n : ℤ)).toNat

end

end A380352.P5652127946468909949

/-!
# A380353: a(n) = (n^2 - n + 2) * (5*n^2 - 5*n + 2) / 4.

The programs for A380353, the canonical program `A380353.P13682949951401919771` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380353 has offset 1).

The definition of A380353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380353.P9853832281504512999

`ogf((1+7x+14x^2+7x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A380353.P9853832281504512999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 14, 7, 1] [1, -5, 10, -10, 5, -1] n

end

end A380353.P9853832281504512999

namespace A380353

/-- `ogf((1+7x+14x^2+7x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9853832281504512999.Spec : Prop :=
  ∀ n, P9853832281504512999.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P13682556716397099869

`((n+1)²-(n+1)+2)*(5*(n+1)²-5*(n+1)+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380353.P13682556716397099869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2) * ((5 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) + 2) : ℚ) / 4

end

end A380353.P13682556716397099869

namespace A380353

/-- `((n+1)²-(n+1)+2)*(5*(n+1)²-5*(n+1)+2)/4` -/
def P13682556716397099869.Spec : Prop :=
  ∀ n, P13682556716397099869.a n = (A380353 (n + 1) : ℚ)

end A380353

/-! ## A380353.P13682949951401919771

`A051624(A000124(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A380353

/-- `A051624(A000124(n))` -/
def P13682949951401919771.Spec : Prop :=
  ∀ n, P13682949951401919771.a n = A380353 (n + 1)

theorem P13682949951401919771.correct : P13682949951401919771.Spec := by
  intro n
  simp only [A380353, Nat.add_sub_cancel]

end A380353

/-! ## A380353.P5324478465031883069

`∑[A008531(n)+n]`
-/

namespace A380353.P5324478465031883069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380353.P5324478465031883069

namespace A380353

/-- `∑[A008531(n)+n]` -/
def P5324478465031883069.Spec : Prop :=
  ∀ n, P5324478465031883069.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P2048707524731960599

`A222408(n)+∑[n]`
-/

namespace A380353.P2048707524731960599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222408 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A380353.P2048707524731960599

namespace A380353

/-- `A222408(n)+∑[n]` -/
def P2048707524731960599.Spec : Prop :=
  ∀ n, P2048707524731960599.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P7862372866324210507

`A072025(n)+∑[n]²`
-/

namespace A380353.P7862372866324210507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A380353.P7862372866324210507

namespace A380353

/-- `A072025(n)+∑[n]²` -/
def P7862372866324210507.Spec : Prop :=
  ∀ n, P7862372866324210507.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P2887646863866174289

`A143008(n)-∑[n]²`
-/

namespace A380353.P2887646863866174289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A380353.P2887646863866174289

namespace A380353

/-- `A143008(n)-∑[n]²` -/
def P2887646863866174289.Spec : Prop :=
  ∀ n, P2887646863866174289.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P5074916526364408005

`A100019(n)+∑[n+1]²`
-/

namespace A380353.P5074916526364408005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A380353.P5074916526364408005

namespace A380353

/-- `A100019(n)+∑[n+1]²` -/
def P5074916526364408005.Spec : Prop :=
  ∀ n, P5074916526364408005.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P9595668242752463066

`A160747(n)-A110450(n)`
-/

namespace A380353.P9595668242752463066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n - A110450 n

end

end A380353.P9595668242752463066

namespace A380353

/-- `A160747(n)-A110450(n)` -/
def P9595668242752463066.Spec : Prop :=
  ∀ n, P9595668242752463066.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P10730290313442397806

`A160767(n)-A219086(n)`
-/

namespace A380353.P10730290313442397806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160767 n - A219086 n

end

end A380353.P10730290313442397806

namespace A380353

/-- `A160767(n)-A219086(n)` -/
def P10730290313442397806.Spec : Prop :=
  ∀ n, P10730290313442397806.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P15539895610197352250

`A000124(n)*A005891(n)`
-/

namespace A380353.P15539895610197352250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A005891 n

end

end A380353.P15539895610197352250

namespace A380353

/-- `A000124(n)*A005891(n)` -/
def P15539895610197352250.Spec : Prop :=
  ∀ n, P15539895610197352250.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P10700629224707832510

`A346636(n)+A117066(n+1)`
-/

namespace A380353.P10700629224707832510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346636 n + A117066 (n + 1)

end

end A380353.P10700629224707832510

namespace A380353

/-- `A346636(n)+A117066(n+1)` -/
def P10700629224707832510.Spec : Prop :=
  ∀ n, P10700629224707832510.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P17668148011408381495

`(A000217(n)+1)*A005891(n)`
-/

namespace A380353.P17668148011408381495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * A005891 n

end

end A380353.P17668148011408381495

namespace A380353

/-- `(A000217(n)+1)*A005891(n)` -/
def P17668148011408381495.Spec : Prop :=
  ∀ n, P17668148011408381495.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P4593007429754159769

`∑[A008706(n)]*∑[A028310(n)]`
-/

namespace A380353.P4593007429754159769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A380353.P4593007429754159769

namespace A380353

/-- `∑[A008706(n)]*∑[A028310(n)]` -/
def P4593007429754159769.Spec : Prop :=
  ∀ n, P4593007429754159769.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P2030203942443816997

`A237516(n+1)-A297662(n+1)`
-/

namespace A380353.P2030203942443816997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1) - A297662 (n + 1)

end

end A380353.P2030203942443816997

namespace A380353

/-- `A237516(n+1)-A297662(n+1)` -/
def P2030203942443816997.Spec : Prop :=
  ∀ n, P2030203942443816997.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P4976550982940307810

`(A152950(n+1)-2)*A005891(n)`
-/

namespace A380353.P4976550982940307810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152950 (n + 1) - 2) * A005891 n

end

end A380353.P4976550982940307810

namespace A380353

/-- `(A152950(n+1)-2)*A005891(n)` -/
def P4976550982940307810.Spec : Prop :=
  ∀ n, P4976550982940307810.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P8436043225479724657

`(A000326(n+1)+n²)*A000124(n)`
-/

namespace A380353.P8436043225479724657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000326 (n + 1) + (n ^ 2 : ℤ)) * A000124 n

end

end A380353.P8436043225479724657

namespace A380353

/-- `(A000326(n+1)+n²)*A000124(n)` -/
def P8436043225479724657.Spec : Prop :=
  ∀ n, P8436043225479724657.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P5035428378700632616

`(A001844(n)+A000217(n))*A000124(n)`
-/

namespace A380353.P5035428378700632616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 n + A000217 n) * A000124 n

end

end A380353.P5035428378700632616

namespace A380353

/-- `(A001844(n)+A000217(n))*A000124(n)` -/
def P5035428378700632616.Spec : Prop :=
  ∀ n, P5035428378700632616.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P18238832376925783172

`(A080956(n+1)+A028896(n))*A000124(n)`
-/

namespace A380353.P18238832376925783172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080956 (n + 1) + A028896 n) * A000124 n

end

end A380353.P18238832376925783172

namespace A380353

/-- `(A080956(n+1)+A028896(n))*A000124(n)` -/
def P18238832376925783172.Spec : Prop :=
  ∀ n, P18238832376925783172.a n = A380353 (n + 1)

end A380353

/-! ## A380353.P14873689919717918381

`A005891(n)+A005891(n)*A161680(n+1)`
-/

namespace A380353.P14873689919717918381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + A005891 n * A161680 (n + 1)

end

end A380353.P14873689919717918381

namespace A380353

/-- `A005891(n)+A005891(n)*A161680(n+1)` -/
def P14873689919717918381.Spec : Prop :=
  ∀ n, P14873689919717918381.a n = A380353 (n + 1)

end A380353

/-!
# A380358: Numbers whose binary expansion ends with 11 and does not contain adjacent zeros.

The programs for A380358, the canonical program `A380358.P12352273004702923892` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380358 has offset 1).

The definition of A380358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052499, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380358.P12352273004702923892

`4*A052499(n)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A380358

/-- `4*A052499(n)-1` -/
def P12352273004702923892.Spec : Prop :=
  ∀ n, P12352273004702923892.a n = A380358 (n + 1)

theorem P12352273004702923892.correct : P12352273004702923892.Spec := by
  intro n
  simp only [A380358, Nat.add_sub_cancel]

end A380358

/-! ## A380358.P16906006606784520339

`2*A247648(n+1)+1`
-/

namespace A380358.P16906006606784520339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247648 (n + 1) + 1

end

end A380358.P16906006606784520339

namespace A380358

/-- `2*A247648(n+1)+1` -/
def P16906006606784520339.Spec : Prop :=
  ∀ n, P16906006606784520339.a n = A380358 (n + 1)

theorem P16906006606784520339.correct : P16906006606784520339.Spec := by
  intro n
  simp only [A380358, Nat.add_sub_cancel, A380358.P16906006606784520339.a, A380358.P12352273004702923892.a, A052499, A052499.P2273861346135896458.a, A247648, A247648.P7622667877464504082.a, A003754, A003754.P7281650019262553655.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380358

/-! ## A380358.P9087232722969751771

`2*(A365809(n+1)+1)/3-1`
-/

namespace A380358.P9087232722969751771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (A365809 (n + 1) + 1) : ℚ) / 3 - 1

end

end A380358.P9087232722969751771

namespace A380358

/-- `2*(A365809(n+1)+1)/3-1` -/
def P9087232722969751771.Spec : Prop :=
  ∀ n, P9087232722969751771.a n = (A380358 (n + 1) : ℚ)

theorem P9087232722969751771.correct : P9087232722969751771.Spec := by
  intro n
  simp only [A380358, Nat.add_sub_cancel, A380358.P9087232722969751771.a, A380358.P12352273004702923892.a, A052499, A052499.P2273861346135896458.a, A365809, A365809.P17161418660075754806.a, A003754, A003754.P7281650019262553655.a, A247648, A247648.P7622667877464504082.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380358

/-! ## A380358.P17281931085503817454

`4*(A365808(n+2)+1)/3-1`
-/

namespace A380358.P17281931085503817454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (A365808 (n + 2) + 1) : ℚ) / 3 - 1

end

end A380358.P17281931085503817454

namespace A380358

/-- `4*(A365808(n+2)+1)/3-1` -/
def P17281931085503817454.Spec : Prop :=
  ∀ n, P17281931085503817454.a n = (A380358 (n + 1) : ℚ)

end A380358

/-! ## A380358.P10238743489952579425

`4*A003754(n+1)+3`
-/

namespace A380358.P10238743489952579425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003754 (n + 1) + 3

end

end A380358.P10238743489952579425

namespace A380358

/-- `4*A003754(n+1)+3` -/
def P10238743489952579425.Spec : Prop :=
  ∀ n, P10238743489952579425.a n = A380358 (n + 1)

theorem P10238743489952579425.correct : P10238743489952579425.Spec := by
  intro n
  simp only [A380358, Nat.add_sub_cancel, A380358.P10238743489952579425.a, A380358.P12352273004702923892.a, A003754, A003754.P7281650019262553655.a, A052499, A052499.P2273861346135896458.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A163511, A163511.P5635496813650871695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380358

/-! ## A380358.P9546276538545801786

`A247648(A004956(n+1))`
-/

namespace A380358.P9546276538545801786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (A004956 (n + 1)).toNat

end

end A380358.P9546276538545801786

namespace A380358

/-- `A247648(A004956(n+1))` -/
def P9546276538545801786.Spec : Prop :=
  ∀ n, P9546276538545801786.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P18357558819998727175

`A247648(A026351(n+1))`
-/

namespace A380358.P18357558819998727175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (A026351 (n + 1)).toNat

end

end A380358.P18357558819998727175

namespace A380358

/-- `A247648(A026351(n+1))` -/
def P18357558819998727175.Spec : Prop :=
  ∀ n, P18357558819998727175.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P4511984094451542808

`A247648(n+1)+A052499(n)+A052499(n)`
-/

namespace A380358.P4511984094451542808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1) + A052499 n + A052499 n

end

end A380358.P4511984094451542808

namespace A380358

/-- `A247648(n+1)+A052499(n)+A052499(n)` -/
def P4511984094451542808.Spec : Prop :=
  ∀ n, P4511984094451542808.a n = A380358 (n + 1)

theorem P4511984094451542808.correct : P4511984094451542808.Spec := by
  intro n
  simp only [A380358, Nat.add_sub_cancel, A380358.P4511984094451542808.a, A380358.P12352273004702923892.a, A052499, A052499.P2273861346135896458.a, A247648, A247648.P7622667877464504082.a, A003754, A003754.P7281650019262553655.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380358

/-! ## A380358.P15726925756277172152

`A365809(n+1)-(A052499(n)+A052499(n))`
-/

namespace A380358.P15726925756277172152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365809 (n + 1) - (A052499 n + A052499 n)

end

end A380358.P15726925756277172152

namespace A380358

/-- `A365809(n+1)-(A052499(n)+A052499(n))` -/
def P15726925756277172152.Spec : Prop :=
  ∀ n, P15726925756277172152.a n = A380358 (n + 1)

theorem P15726925756277172152.correct : P15726925756277172152.Spec := by
  intro n
  simp only [A380358, Nat.add_sub_cancel, A380358.P15726925756277172152.a, A380358.P12352273004702923892.a, A052499, A052499.P2273861346135896458.a, A365809, A365809.P17161418660075754806.a, A003754, A003754.P7281650019262553655.a, A247648, A247648.P7622667877464504082.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A380358

/-! ## A380358.P4673714793572337803

`A003754(A007066(n+2))`
-/

namespace A380358.P4673714793572337803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A007066 (n + 2)).toNat

end

end A380358.P4673714793572337803

namespace A380358

/-- `A003754(A007066(n+2))` -/
def P4673714793572337803.Spec : Prop :=
  ∀ n, P4673714793572337803.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P7979753732005387043

`A003754(A026356(n+2))`
-/

namespace A380358.P7979753732005387043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A026356 (n + 2)).toNat

end

end A380358.P7979753732005387043

namespace A380358

/-- `A003754(A026356(n+2))` -/
def P7979753732005387043.Spec : Prop :=
  ∀ n, P7979753732005387043.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P8194424881925339308

`A365808(n+2)+A052499(n)`
-/

namespace A380358.P8194424881925339308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2) + A052499 n

end

end A380358.P8194424881925339308

namespace A380358

/-- `A365808(n+2)+A052499(n)` -/
def P8194424881925339308.Spec : Prop :=
  ∀ n, P8194424881925339308.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P14385082250115544976

`A247648(n+1)+A365808(n+2)-A003754(n+1)`
-/

namespace A380358.P14385082250115544976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1) + (A365808 (n + 2) - A003754 (n + 1))

end

end A380358.P14385082250115544976

namespace A380358

/-- `A247648(n+1)+A365808(n+2)-A003754(n+1)` -/
def P14385082250115544976.Spec : Prop :=
  ∀ n, P14385082250115544976.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P4578770891720372154

`A003754(n+1)+A365809(n+1)-A365808(n+2)`
-/

namespace A380358.P4578770891720372154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1) + (A365809 (n + 1) - A365808 (n + 2))

end

end A380358.P4578770891720372154

namespace A380358

/-- `A003754(n+1)+A365809(n+1)-A365808(n+2)` -/
def P4578770891720372154.Spec : Prop :=
  ∀ n, P4578770891720372154.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P4140342629347411402

`A052499(A001950(n+1))`
-/

namespace A380358.P4140342629347411402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 (A001950 (n + 1)).toNat

end

end A380358.P4140342629347411402

namespace A380358

/-- `A052499(A001950(n+1))` -/
def P4140342629347411402.Spec : Prop :=
  ∀ n, P4140342629347411402.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P12581014758453043423

`∩[2*n+1, A052499(n+1)]`
-/

namespace A380358.P12581014758453043423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380358.P12581014758453043423

namespace A380358

/-- `∩[2*n+1, A052499(n+1)]` -/
def P12581014758453043423.Spec : Prop :=
  ∀ n, (P12581014758453043423.a n : ℤ) = A380358 (n + 1)

end A380358

/-! ## A380358.P13725634328656628623

`filter[A052499(n), A324908(#)]`
-/

namespace A380358.P13725634328656628623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A380358.P13725634328656628623

namespace A380358

/-- `filter[A052499(n), A324908(#)]` -/
def P13725634328656628623.Spec : Prop :=
  ∀ n, P13725634328656628623.a n = A380358 (n + 1)

end A380358

/-! ## A380358.P17806126623034722318

`eq[and(2*n+n+3, n+3), and(n+1, 2*n)]`
-/

namespace A380358.P17806126623034722318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + (n + 3)) (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380358.P17806126623034722318

namespace A380358

/-- `eq[and(2*n+n+3, n+3), and(n+1, 2*n)]` -/
def P17806126623034722318.Spec : Prop :=
  ∀ n, (P17806126623034722318.a n : ℤ) = A380358 (n + 1)

end A380358

/-! ## A380358.P14472924787493492393

`eq[1, A334076(n)]+1`
-/

namespace A380358.P14472924787493492393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380358.P14472924787493492393

namespace A380358

/-- `eq[1, A334076(n)]+1` -/
def P14472924787493492393.Spec : Prop :=
  ∀ n, (P14472924787493492393.a n : ℤ) = A380358 (n + 1)

end A380358

/-! ## A380358.P14947955251601067161

`A004767(A003754(n+1))`
-/

namespace A380358.P14947955251601067161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A003754 (n + 1)).toNat

end

end A380358.P14947955251601067161

namespace A380358

/-- `A004767(A003754(n+1))` -/
def P14947955251601067161.Spec : Prop :=
  ∀ n, P14947955251601067161.a n = A380358 (n + 1)

end A380358

/-!
# A380359: a(n) is the number of integers in base n such that all the integers given by their first k digits are divisible by k and which cannot be extended further.

The programs for A380359, there is no canonical definition to state claims against.
-/

/-! ## A380359.P1787152395197144285

`xor(A000045(2*(n+1)), A007660(A007660(n)))`
-/

namespace A380359.P1787152395197144285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (2 * (n + 1))) (A007660 (A007660 n).toNat)

end

end A380359.P1787152395197144285

/-! ## A380359.P15151899872402382167

`∑[A385916(2^n)]`
-/

namespace A380359.P15151899872402382167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385916 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380359.P15151899872402382167

/-!
# A380361: Triangle read by rows: T(n,k) is the number of embeddings on the sphere of Halin graphs on n unlabeled nodes with circuit rank k up to orientation-preserving homeomorphisms, 3 <= k <= n-1.

The programs for A380361, there is no canonical definition to state claims against.
-/

/-! ## A380361.P4040026525410095786

`A000120(A045995(n)*A099040(n))`
-/

namespace A380361.P4040026525410095786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A045995 n * A099040 n).toNat

end

end A380361.P4040026525410095786

/-! ## A380361.P7462586387408154633

`A000120(A045995(n)*A113953(n))`
-/

namespace A380361.P7462586387408154633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A045995 n * A113953 n).toNat

end

end A380361.P7462586387408154633

/-! ## A380361.P15140278670962514672

`A001951(A380362(n+4)%A058959(n+1))`
-/

namespace A380361.P15140278670962514672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.tmod (A380362 (n + 4)) (A058959 (n + 1))).toNat

end

end A380361.P15140278670962514672

/-! ## A380361.P10090994632758376310

`A001951(A380362(n+4))%A335696(n+1)`
-/

namespace A380361.P10090994632758376310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001951 (A380362 (n + 4)).toNat) (A335696 (n + 1))

end

end A380361.P10090994632758376310

/-! ## A380361.P5437507099584492635

`A027193(A120730(n)%A244283(2*n+1))`
-/

namespace A380361.P5437507099584492635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (Int.tmod (A120730 n) (A244283 (2 * n + 1))).toNat

end

end A380361.P5437507099584492635

/-!
# A380362: Triangle read by rows: T(n,k) is the number of Halin graphs on n unlabeled nodes with circuit rank k, 3 <= k <= n-1.

The programs for A380362, there is no canonical definition to state claims against.
-/

/-! ## A380362.P3831389869224166786

`A175834(A122848(n))`
-/

namespace A380362.P3831389869224166786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 (A122848 n).toNat

end

end A380362.P3831389869224166786

/-! ## A380362.P1806432539116527246

`A360679(2^A120730(n))`
-/

namespace A380362.P1806432539116527246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A120730 n : ℤ))).toNat

end

end A380362.P1806432539116527246

/-! ## A380362.P11080091552911799078

`A056595(3^A120730(n))`
-/

namespace A380362.P11080091552911799078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A120730 n : ℤ))).toNat

end

end A380362.P11080091552911799078

/-! ## A380362.P10264595061013186779

`A056924(3^A120730(n))`
-/

namespace A380362.P10264595061013186779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A120730 n : ℤ))).toNat

end

end A380362.P10264595061013186779

/-! ## A380362.P8580111298376747082

`A221169(A187247(n))`
-/

namespace A380362.P8580111298376747082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221169 (A187247 n).toNat

end

end A380362.P8580111298376747082

/-!
# A380364: Number of rooted combinatorial maps with n edges and without faces of degree 1.

The programs for A380364, there is no canonical definition to state claims against.
-/

/-! ## A380364.P13966549178066167927

`A060755(A352326(n))+A010052(n)`
-/

namespace A380364.P13966549178066167927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (A352326 n).toNat + A010052 n

end

end A380364.P13966549178066167927

/-! ## A380364.P15937267664141267577

`A087777(A000169(n+1)-A000225(n))`
-/

namespace A380364.P15937267664141267577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087777 (A000169 (n + 1) - A000225 n).toNat

end

end A380364.P15937267664141267577

/-!
# A380365: Number of sensed combinatorial maps with n edges and without faces of degree 1.

The programs for A380365, there is no canonical definition to state claims against.
-/

/-! ## A380365.P9718007750336685629

`A330344(n+2)-abs(A330368(n+1))`
-/

namespace A380365.P9718007750336685629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330344 (n + 2) - |A330368 (n + 1)|

end

end A380365.P9718007750336685629

/-! ## A380365.P6732632221843949944

`A220522(A375641(n))+A000389(n)`
-/

namespace A380365.P6732632221843949944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (A375641 n).toNat + A000389 n

end

end A380365.P6732632221843949944

/-!
# A380366: Number of unsensed combinatorial maps with n edges and without faces of degree 1.

The programs for A380366, there is no canonical definition to state claims against.
-/

/-! ## A380366.P10932429291974996376

`A243169(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A380366.P10932429291974996376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A243169 (a (n - 1) + 1).toNat

end

end A380366.P10932429291974996376

/-! ## A380366.P7607259213188265017

`A352734(A316706(n+1))`
-/

namespace A380366.P7607259213188265017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352734 (A316706 (n + 1)).toNat

end

end A380366.P7607259213188265017

/-!
# A380367: Array read by antidiagonals: meandric numbers for a river crossing up to k parallel roads at n points, n >= 0, k >= 1.

The programs for A380367, there is no canonical definition to state claims against.
-/

/-! ## A380367.P7981003666031652107

`A236912(A136605(n+1)%A236912(2*n+1))`
-/

namespace A380367.P7981003666031652107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236912 (Int.tmod (A136605 (n + 1)) (A236912 (2 * n + 1))).toNat

end

end A380367.P7981003666031652107

/-! ## A380367.P10657101616245352456

`A064438(gcd(A136605(n+1), A288779(n)))`
-/

namespace A380367.P10657101616245352456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064438 (Int.gcd (A136605 (n + 1)) (A288779 n))

end

end A380367.P10657101616245352456

/-!
# A380368: Triangle read by rows: T(n,k) is the number of closed forest meander systems with 2n crossings and k components.

The programs for A380368, there is no canonical definition to state claims against.
-/

/-! ## A380368.P8584941112993425102

`A002024(A193824(n))*A326413(3^A132393(n))`
-/

namespace A380368.P8584941112993425102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A193824 n).toNat * A326413 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A132393 n : ℤ))).toNat

end

end A380368.P8584941112993425102

/-!
# A380369: Triangle read by rows: T(n,k) is the number of open meanders with 2n crossings and k exterior top arches, 0 <= k <= n.

The programs for A380369, there is no canonical definition to state claims against.
-/

/-! ## A380369.P4236434189013784991

`A354794(n)+A127255(A008300(n))`
-/

namespace A380369.P4236434189013784991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 n + A127255 (A008300 n).toNat

end

end A380369.P4236434189013784991

/-! ## A380369.P3550835708070079364

`A103677(A324173(n)+A284308(n+1))`
-/

namespace A380369.P3550835708070079364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103677 (A324173 n + A284308 (n + 1)).toNat

end

end A380369.P3550835708070079364

/-!
# A380370: Expansion of e.g.f. log( 1 - log(1 - x)^5 / 120 ).

The programs for A380370, there is no canonical definition to state claims against.
-/

/-! ## A380370.P7312272793846294567

`A347004(lcm(n, (n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9))%(n^n)`
-/

namespace A380370.P7312272793846294567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347004 (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9))))) (n ^ n : ℤ)

end

end A380370.P7312272793846294567

/-! ## A380370.P940212706258429102

`A346924(A250264(n)+1)`
-/

namespace A380370.P940212706258429102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346924 (A250264 n + 1).toNat

end

end A380370.P940212706258429102

/-! ## A380370.P3423897821572689804

`A347004(A250264(n)+1)`
-/

namespace A380370.P3423897821572689804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347004 (A250264 n + 1).toNat

end

end A380370.P3423897821572689804

/-! ## A380370.P10471864124948606149

`A347004(n^A301506(n))`
-/

namespace A380370.P10471864124948606149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347004 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A301506 n : ℤ))).toNat

end

end A380370.P10471864124948606149

/-! ## A380370.P210242097106891809

`A346924(n^A373696(n))`
-/

namespace A380370.P210242097106891809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346924 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A373696 n : ℤ))).toNat

end

end A380370.P210242097106891809

/-!
# A380372: Characteristic function of A082851.

The programs for A380372, the canonical program `A380372.P10366550130277599333` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380372 has offset 1).

The definition of A380372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380372.P10366550130277599333

`char[A082851(n+1)-1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A380372

/-- `char[A082851(n+1)-1]` -/
def P10366550130277599333.Spec : Prop :=
  ∀ n, (P10366550130277599333.a n : ℤ) = A380372 (n + 1)

theorem P10366550130277599333.correct : P10366550130277599333.Spec := by
  intro n
  simp only [A380372, Nat.add_sub_cancel]

end A380372

/-! ## A380372.P12484462391312841866

`char[∑[A082850(n+1)%A006352(n)]]`
-/

namespace A380372.P12484462391312841866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082850 (n + 1)) (A006352 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380372.P12484462391312841866

namespace A380372

/-- `char[∑[A082850(n+1)%A006352(n)]]` -/
def P12484462391312841866.Spec : Prop :=
  ∀ n, (P12484462391312841866.a n : ℤ) = A380372 (n + 1)

end A380372

/-! ## A380372.P11476222542052905374

`char[A023443(∑[A082850(n+1)])]`
-/

namespace A380372.P11476222542052905374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A380372.P11476222542052905374

namespace A380372

/-- `char[A023443(∑[A082850(n+1)])]` -/
def P11476222542052905374.Spec : Prop :=
  ∀ n, (P11476222542052905374.a n : ℤ) = A380372 (n + 1)

end A380372

/-! ## A380372.P15925218301963474226

`A003849(Δ[A241412(n)]²)`
-/

namespace A380372.P15925218301963474226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A380372.P15925218301963474226

namespace A380372

/-- `A003849(Δ[A241412(n)]²)` -/
def P15925218301963474226.Spec : Prop :=
  ∀ n, P15925218301963474226.a n = A380372 (n + 1)

end A380372

/-! ## A380372.P1842228532609661954

`A291291(A216993(n+1)+A047201(3*n+2))`
-/

namespace A380372.P1842228532609661954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291291 (A216993 (n + 1) + A047201 (3 * n + 2)).toNat

end

end A380372.P1842228532609661954

namespace A380372

/-- `A291291(A216993(n+1)+A047201(3*n+2))` -/
def P1842228532609661954.Spec : Prop :=
  ∀ n, P1842228532609661954.a n = A380372 (n + 1)

end A380372

/-!
# A380374: Number of ways to topologically sort the strong components of a labeled digraph on [n].

The programs for A380374, there is no canonical definition to state claims against.
-/

/-! ## A380374.P9581074621042178748

`A368601(n)+A211265(A368601(n))`
-/

namespace A380374.P9581074621042178748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368601 n + A211265 (A368601 n).toNat

end

end A380374.P9581074621042178748

/-!
# A380377: Minimum number of total votes needed for one party to win if there are n voters divided into balanced districts, i.e., the numbers of voters in two districts may differ by at most 1.

The programs for A380377, there is no canonical definition to state claims against.
-/

/-! ## A380377.P10076426027636218399

`A380378(A380382(n+1)+A000217(n))`
-/

namespace A380377.P10076426027636218399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380378 (A380382 (n + 1) + A000217 n).toNat

end

end A380377.P10076426027636218399

/-!
# A380379: Least k for which A380377(k) = n, i.e., the least number of voters for which n supporters are needed to win an election with rules as in A380377.

The programs for A380379, there is no canonical definition to state claims against.
-/

/-! ## A380379.P2578076132909875166

`∑[∑{e}[A064126(A234904(n+1)+n+1), #]]`
-/

namespace A380379.P2578076132909875166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064126 (A234904 (n + 1) + (n : ℤ) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380379.P2578076132909875166

/-! ## A380379.P10114789168652785493

`A333489(n+1)+A098388(A121398(n))`
-/

namespace A380379.P10114789168652785493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1) + A098388 (A121398 n).toNat

end

end A380379.P10114789168652785493

/-! ## A380379.P7949354870208449628

`A112929(n+1)+A029837(A005043(n+2))`
-/

namespace A380379.P7949354870208449628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1) + A029837 (A005043 (n + 2)).toNat

end

end A380379.P7949354870208449628

/-!
# A380383: Numbers k such that the minimum number of votes A380377(k) can be attained with an even number of districts.

The programs for A380383, there is no canonical definition to state claims against.
-/

/-! ## A380383.P10688552744087943493

`lt[A000312(A300649(n)), n]`
-/

namespace A380383.P10688552744087943493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A300649 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380383.P10688552744087943493

/-! ## A380383.P14988438514520503521

`lt[A121414(A300650(n)), n]`
-/

namespace A380383.P14988438514520503521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121414 (A300650 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380383.P14988438514520503521

/-! ## A380383.P7339835000194647660

`record[A126014(A038129(n)+1)]`
-/

namespace A380383.P7339835000194647660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126014 (A038129 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380383.P7339835000194647660

/-! ## A380383.P5682624823548157229

`record[A334686(A334706(n+1))]`
-/

namespace A380383.P5682624823548157229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334686 (A334706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380383.P5682624823548157229

/-! ## A380383.P11145163646274971252

`lt[A000325(n), A370672(n)²]`
-/

namespace A380383.P11145163646274971252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370672 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380383.P11145163646274971252

/-!
# A380384: a(0)=0, a(n) = 2*(a(n-1) + ceiling(n/2)) - 1 for n>0.

The programs for A380384, the canonical program `A380384.P7365038480629255536` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380384 has offset 0).

The definition of A380384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+ceil(n/2))-1` (program `A380384.P7365038480629255536`, by `A380384.P7365038480629255536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A380384.P15387811954727436959

`ogf((x+x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A380384.P15387811954727436959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -3, 1, 3, -2] n

end

end A380384.P15387811954727436959

namespace A380384

/-- `ogf((x+x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P15387811954727436959.Spec : Prop :=
  ∀ n, P15387811954727436959.a n = A380384 n

end A380384

/-! ## A380384.P7365038480629255536

`2*(a(n-1)+ceil(n/2))-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A380384

/-- `2*(a(n-1)+ceil(n/2))-1` -/
def P7365038480629255536.Spec : Prop :=
  ∀ n, P7365038480629255536.a n = A380384 n

theorem P7365038480629255536.correct : P7365038480629255536.Spec := by
  intro n
  simp only [A380384]

end A380384

/-! ## A380384.P5392350712921204755

`A081254(n+1)-n-1`
-/

namespace A380384.P5392350712921204755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (n + 1) - (n : ℤ) - 1

end

end A380384.P5392350712921204755

namespace A380384

/-- `A081254(n+1)-n-1` -/
def P5392350712921204755.Spec : Prop :=
  ∀ n, P5392350712921204755.a n = A380384 n

end A380384

/-! ## A380384.P9578279204743119893

`a(n-4)+A250777(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A380384.P9578279204743119893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 9] fun n a =>
  a (n - 4) + A250777 (n - 3)

end

end A380384.P9578279204743119893

namespace A380384

/-- `a(n-4)+A250777(n-3)` -/
def P9578279204743119893.Spec : Prop :=
  ∀ n, P9578279204743119893.a n = A380384 n

end A380384

/-! ## A380384.P15273322359065898728

`floor(2^n*5/3)-n-1`
-/

namespace A380384.P15273322359065898728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n * 5 : ℚ) / 3⌋ - (n : ℤ) - 1

end

end A380384.P15273322359065898728

namespace A380384

/-- `floor(2^n*5/3)-n-1` -/
def P15273322359065898728.Spec : Prop :=
  ∀ n, P15273322359065898728.a n = A380384 n

end A380384

/-! ## A380384.P2789743733239385048

`or(1, 2*a(n-1)+n-1)` with `a(0)=0`
-/

namespace A380384.P2789743733239385048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 1 (2 * a (n - 1) + ((n : ℤ) - 1))

end

end A380384.P2789743733239385048

namespace A380384

/-- `or(1, 2*a(n-1)+n-1)` -/
def P2789743733239385048.Spec : Prop :=
  ∀ n, P2789743733239385048.a n = A380384 n

end A380384

/-! ## A380384.P13376411759565900551

`A005262(n)%A097813(n)`
-/

namespace A380384.P13376411759565900551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005262 n) (A097813 n)

end

end A380384.P13376411759565900551

namespace A380384

/-- `A005262(n)%A097813(n)` -/
def P13376411759565900551.Spec : Prop :=
  ∀ n, P13376411759565900551.a n = A380384 n

end A380384

/-! ## A380384.P5835454058832361913

`A053221(n+1)%A127981(n+1)`
-/

namespace A380384.P5835454058832361913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053221 (n + 1)) (A127981 (n + 1))

end

end A380384.P5835454058832361913

namespace A380384

/-- `A053221(n+1)%A127981(n+1)` -/
def P5835454058832361913.Spec : Prop :=
  ∀ n, P5835454058832361913.a n = A380384 n

end A380384

/-!
# A380385: Triangle read by rows. T(1, 1) = 1, T(n, k) = [n >= k](Sum_{i=1..k-1} T[n - i, k - 1] - Sum_{i=1..n-1} T[n - i, k]).

The programs for A380385, there is no canonical definition to state claims against.
-/

/-! ## A380385.P4028442527866849124

`A008683(gcd(A007416(2*n+1), A072575(n+1)))`
-/

namespace A380385.P4028442527866849124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (A007416 (2 * n + 1)) (A072575 (n + 1)))

end

end A380385.P4028442527866849124

/-! ## A380385.P15173627019964942756

`A013595(A072575(n+1))^A300419(n+3)`
-/

namespace A380385.P15173627019964942756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013595 (A072575 (n + 1)).toNat : ℚ) ^ (A300419 (n + 3) : ℤ)

end

end A380385.P15173627019964942756

/-! ## A380385.P7793376214963026454

`A155031(n+1)+A037913(A129157(n))`
-/

namespace A380385.P7793376214963026454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155031 (n + 1) + A037913 (A129157 n).toNat

end

end A380385.P7793376214963026454

/-! ## A380385.P9109035239152768207

`A052308(n)%A318409(A195160(3*n+2))`
-/

namespace A380385.P9109035239152768207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052308 n) (A318409 (A195160 (3 * n + 2)).toNat)

end

end A380385.P9109035239152768207

/-! ## A380385.P2925561410061118386

`A152432(2^A072575(n+1))`
-/

namespace A380385.P2925561410061118386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152432 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A072575 (n + 1) : ℤ))).toNat

end

end A380385.P2925561410061118386

/-!
# A380389: Array read by ascending antidiagonals: A(n, k) is equal to n/k if k | n, else to the concatenation of the numerator and the denominator of n/k.

The programs for A380389, there is no canonical definition to state claims against.
-/

/-! ## A380389.P9688765075188878293

`A380390(n+1)%A097051(A033954(3*n+4))`
-/

namespace A380389.P9688765075188878293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380390 (n + 1)) (A097051 (A033954 (3 * n + 4)).toNat)

end

end A380389.P9688765075188878293

/-!
# A380391: Numbers k such that A343750(k) != k.

The programs for A380391, there is no canonical definition to state claims against.
-/

/-! ## A380391.P2155253170438391940

`A134930(n+5)-A386584(A000032(n+1))`
-/

namespace A380391.P2155253170438391940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (n + 5) - A386584 (A000032 (n + 1)).toNat

end

end A380391.P2155253170438391940

/-!
# A380392: Irregular triangle read by rows: T(n,k) is the number of n X n binary matrices containing k South-East paths of 1's connecting the top left and bottom right corners.

The programs for A380392, there is no canonical definition to state claims against.
-/

/-! ## A380392.P6208507528881873590

`A221817(A094796(n))+A007318(n)`
-/

namespace A380392.P6208507528881873590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A094796 n).toNat + A007318 n

end

end A380392.P6208507528881873590

/-! ## A380392.P10876031467750093762

`A156628(A027193(n)*A165342(n))`
-/

namespace A380392.P10876031467750093762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156628 (A027193 n * A165342 n).toNat

end

end A380392.P10876031467750093762

/-! ## A380392.P6682594099728881730

`A305749(n+1)+A221817(A094796(n))`
-/

namespace A380392.P6682594099728881730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (n + 1) + A221817 (A094796 n).toNat

end

end A380392.P6682594099728881730

/-!
# A380393: a(n) is the least k that has exactly n proper divisors d such that (-d)^k == -d (mod k).

The programs for A380393, there is no canonical definition to state claims against.
-/

/-! ## A380393.P16051504795297601376

`A208982(A390701(n+1))`
-/

namespace A380393.P16051504795297601376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208982 (A390701 (n + 1)).toNat

end

end A380393.P16051504795297601376

/-! ## A380393.P11096558483845583388

`∩[A176654(n+1), A299112(n+1)]`
-/

namespace A380393.P11096558483845583388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380393.P11096558483845583388

/-!
# A380394: a(n) = number of possible pairs of descent sets of a permutation of 1,2,...,n and its inverse.

The programs for A380394, there is no canonical definition to state claims against.
-/

/-! ## A380394.P11111948059395579923

`A192419(A279571(n))`
-/

namespace A380394.P11111948059395579923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A279571 n).toNat

end

end A380394.P11111948059395579923

/-! ## A380394.P7947539579217636226

`A192419(A317652(n))`
-/

namespace A380394.P7947539579217636226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A317652 n).toNat

end

end A380394.P7947539579217636226

/-! ## A380394.P2139467220655946473

`A069013(A127897(n+1))`
-/

namespace A380394.P2139467220655946473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069013 (A127897 (n + 1)).toNat

end

end A380394.P2139467220655946473

/-!
# A380395: The number of unitary divisors of n that are cubes.

The programs for A380395, the canonical program `A380395.P16192869774453608510` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380395 has offset 1).

The definition of A380395 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307427, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380395.P16192869774453608510

`abs(A307427(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A380395

/-- `abs(A307427(n+1))` -/
def P16192869774453608510.Spec : Prop :=
  ∀ n, P16192869774453608510.a n = A380395 (n + 1)

theorem P16192869774453608510.correct : P16192869774453608510.Spec := by
  intro n
  simp only [A380395, Nat.add_sub_cancel]

end A380395

/-! ## A380395.P14637446088087940033

`A061704(n+1)-A380397(n+1)`
-/

namespace A380395.P14637446088087940033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1) - A380397 (n + 1)

end

end A380395.P14637446088087940033

namespace A380395

/-- `A061704(n+1)-A380397(n+1)` -/
def P14637446088087940033.Spec : Prop :=
  ∀ n, P14637446088087940033.a n = A380395 (n + 1)

theorem P14637446088087940033.correct : P14637446088087940033.Spec := by
  intro n
  simp only [A380395, Nat.add_sub_cancel, A380395.P14637446088087940033.a, A380395.P16192869774453608510.a, A061704, A061704.P8500927550358472593.a, A307427, A307427.P1360631857162909734.f1, A307427.P1360631857162909734.a, A380397, A380397.P18209740756317370687.a, A000005, A000005.P16091521709108585461.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A053150, A053150.P12506958821739849534.a, A307424, A307424.P13439001856309968497.f1, A307424.P13439001856309968497.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A000189, A000189.P11210685475351648118.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A050985, A050985.P12411912326700818488.f1, A050985.P12411912326700818488.a, A053149, A053149.P4125189005957149122.a, A073185, A073185.P13146702220439815820.a, A210826, A210826.P1982609276010569986.f1, A210826.P1982609276010569986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A380395

/-! ## A380395.P7521363678002150743

`A367515(A270419(n+1))`
-/

namespace A380395.P7521363678002150743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367515 (A270419 (n + 1)).toNat

end

end A380395.P7521363678002150743

namespace A380395

/-- `A367515(A270419(n+1))` -/
def P7521363678002150743.Spec : Prop :=
  ∀ n, P7521363678002150743.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P17982863400451349502

`gcd(A000156(n), A307427(n+1))`
-/

namespace A380395.P17982863400451349502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000156 n) (A307427 (n + 1))

end

end A380395.P17982863400451349502

namespace A380395

/-- `gcd(A000156(n), A307427(n+1))` -/
def P17982863400451349502.Spec : Prop :=
  ∀ n, (P17982863400451349502.a n : ℤ) = A380395 (n + 1)

end A380395

/-! ## A380395.P4775996773248937814

`lcm(A064179(n+1), A307427(n+1))`
-/

namespace A380395.P4775996773248937814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064179 (n + 1)) (A307427 (n + 1))

end

end A380395.P4775996773248937814

namespace A380395

/-- `lcm(A064179(n+1), A307427(n+1))` -/
def P4775996773248937814.Spec : Prop :=
  ∀ n, (P4775996773248937814.a n : ℤ) = A380395 (n + 1)

end A380395

/-! ## A380395.P3606966091113590020

`∑{d}[n+1, A008966(#)*A355448((n+1)/#)]`
-/

namespace A380395.P3606966091113590020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A355448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380395.P3606966091113590020

namespace A380395

/-- `∑{d}[n+1, A008966(#)*A355448((n+1)/#)]` -/
def P3606966091113590020.Spec : Prop :=
  ∀ n, P3606966091113590020.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P2290332315325572032

`∑{d}[n+1, A210826(#)*A252505((n+1)/#)]`
-/

namespace A380395.P2290332315325572032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A210826 d * A252505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380395.P2290332315325572032

namespace A380395

/-- `∑{d}[n+1, A210826(#)*A252505((n+1)/#)]` -/
def P2290332315325572032.Spec : Prop :=
  ∀ n, P2290332315325572032.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P2000801831013196095

`∑{d}[n+1, A227291(#)*A307421((n+1)/#)]`
-/

namespace A380395.P2000801831013196095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A307421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380395.P2000801831013196095

namespace A380395

/-- `∑{d}[n+1, A227291(#)*A307421((n+1)/#)]` -/
def P2000801831013196095.Spec : Prop :=
  ∀ n, P2000801831013196095.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P8240596987694133806

`∑{d}[n+1, A307427(#)*A322327((n+1)/#)]`
-/

namespace A380395.P8240596987694133806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307427 d * A322327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380395.P8240596987694133806

namespace A380395

/-- `∑{d}[n+1, A307427(#)*A322327((n+1)/#)]` -/
def P8240596987694133806.Spec : Prop :=
  ∀ n, P8240596987694133806.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P8645163756231662656

`∑{d}[n+1, A307424(#)*A323308((n+1)/#)]`
-/

namespace A380395.P8645163756231662656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307424 d * A323308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380395.P8645163756231662656

namespace A380395

/-- `∑{d}[n+1, A307424(#)*A323308((n+1)/#)]` -/
def P8645163756231662656.Spec : Prop :=
  ∀ n, P8645163756231662656.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P1201209471387039571

`∑{d}[n+1, A387960(#)*A390490((n+1)/#)]`
-/

namespace A380395.P1201209471387039571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A387960 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A380395.P1201209471387039571

namespace A380395

/-- `∑{d}[n+1, A387960(#)*A390490((n+1)/#)]` -/
def P1201209471387039571.Spec : Prop :=
  ∀ n, P1201209471387039571.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P11289377274621583214

`gcd(A024023(n), A355936(n+1))`
-/

namespace A380395.P11289377274621583214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024023 n) (A355936 (n + 1))

end

end A380395.P11289377274621583214

namespace A380395

/-- `gcd(A024023(n), A355936(n+1))` -/
def P11289377274621583214.Spec : Prop :=
  ∀ n, (P11289377274621583214.a n : ℤ) = A380395 (n + 1)

end A380395

/-! ## A380395.P15838724085470149742

`gcd(A000150(n), A307427(n+1))`
-/

namespace A380395.P15838724085470149742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000150 n) (A307427 (n + 1))

end

end A380395.P15838724085470149742

namespace A380395

/-- `gcd(A000150(n), A307427(n+1))` -/
def P15838724085470149742.Spec : Prop :=
  ∀ n, (P15838724085470149742.a n : ℤ) = A380395 (n + 1)

end A380395

/-! ## A380395.P5669528158725686444

`and(A072828(n+1), A392630(n+1))`
-/

namespace A380395.P5669528158725686444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072828 (n + 1)) (A392630 (n + 1))

end

end A380395.P5669528158725686444

namespace A380395

/-- `and(A072828(n+1), A392630(n+1))` -/
def P5669528158725686444.Spec : Prop :=
  ∀ n, P5669528158725686444.a n = A380395 (n + 1)

end A380395

/-! ## A380395.P1043055937350042672

`dr(A307427((n+1)²))`
-/

namespace A380395.P1043055937350042672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A307427 ((n + 1) ^ 2))

end

end A380395.P1043055937350042672

namespace A380395

/-- `dr(A307427((n+1)²))` -/
def P1043055937350042672.Spec : Prop :=
  ∀ n, (P1043055937350042672.a n : ℤ) = A380395 (n + 1)

end A380395

/-! ## A380395.P203446081179234748

`A227349(A072411((n+1)²))`
-/

namespace A380395.P203446081179234748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A072411 ((n + 1) ^ 2)).toNat

end

end A380395.P203446081179234748

namespace A380395

/-- `A227349(A072411((n+1)²))` -/
def P203446081179234748.Spec : Prop :=
  ∀ n, P203446081179234748.a n = A380395 (n + 1)

end A380395

/-!
# A380396: a(n) is the sum of the unitary divisors of n that are cubes.

The programs for A380396, there is no canonical definition to state claims against.
-/

/-! ## A380396.P9527694560692211840

`A034448(A366126(n+1))`
-/

namespace A380396.P9527694560692211840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A366126 (n + 1)).toNat

end

end A380396.P9527694560692211840

/-! ## A380396.P12000101817074993560

`A366126(n+1)+A162641(A366126(n+1)²)`
-/

namespace A380396.P12000101817074993560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366126 (n + 1) + A162641 (A366126 (n + 1) ^ 2).toNat

end

end A380396.P12000101817074993560

/-! ## A380396.P10489007877292170580

`A366126(n+1)+A162641(A366126((n+1)²))`
-/

namespace A380396.P10489007877292170580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366126 (n + 1) + A162641 (A366126 ((n + 1) ^ 2)).toNat

end

end A380396.P10489007877292170580

/-! ## A380396.P411836463365704974

`A385048(n+1)^A230031(A385048(n+1))`
-/

namespace A380396.P411836463365704974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385048 (n + 1) : ℚ) ^ (A230031 (A385048 (n + 1)).toNat : ℤ)

end

end A380396.P411836463365704974

/-! ## A380396.P5623776662800566730

`gcd(A298672(2^∑{e}[n+1, #-1]), A370240(n+1))`
-/

namespace A380396.P5623776662800566730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A298672 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat) (A370240 (n + 1))

end

end A380396.P5623776662800566730

/-! ## A380396.P798154560422640810

`A366904(n+1)^A268441(A008833(n+1))`
-/

namespace A380396.P798154560422640810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366904 (n + 1) : ℚ) ^ (A268441 (A008833 (n + 1)).toNat : ℤ)

end

end A380396.P798154560422640810

/-! ## A380396.P16843515030275074086

`gcd(A113061(A051624(n+1)), A113061(n+1))`
-/

namespace A380396.P16843515030275074086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113061 (A051624 (n + 1)).toNat) (A113061 (n + 1))

end

end A380396.P16843515030275074086

/-! ## A380396.P5991985181265296523

`A385005(A385007(n+1)%A164982(n+5))`
-/

namespace A380396.P5991985181265296523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385005 (Int.tmod (A385007 (n + 1)) (A164982 (n + 5))).toNat

end

end A380396.P5991985181265296523

/-!
# A380397: The number of nonunitary divisors of n that are cubes.

The programs for A380397, the canonical program `A380397.P18209740756317370687` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380397 has offset 1).

The definition of A380397 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, A380395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380397.P18209740756317370687

`A061704(n+1)-A380395(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A380397

/-- `A061704(n+1)-A380395(n+1)` -/
def P18209740756317370687.Spec : Prop :=
  ∀ n, P18209740756317370687.a n = A380397 (n + 1)

theorem P18209740756317370687.correct : P18209740756317370687.Spec := by
  intro n
  simp only [A380397, Nat.add_sub_cancel]

end A380397

/-! ## A380397.P1214916362316158565

`A001597(A325166(∏{e}[n+1, #!])+1)%A190867(n+1)`
-/

namespace A380397.P1214916362316158565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (A325166 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) + 1).toNat) (A190867 (n + 1))

end

end A380397.P1214916362316158565

namespace A380397

/-- `A001597(A325166(∏{e}[n+1, #!])+1)%A190867(n+1)` -/
def P1214916362316158565.Spec : Prop :=
  ∀ n, P1214916362316158565.a n = A380397 (n + 1)

end A380397

/-! ## A380397.P9125877895576276882

`A190867(n+1)%A122667(A325166(∏{e}[n+1, #!])+1)`
-/

namespace A380397.P9125877895576276882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190867 (n + 1)) (A122667 (A325166 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) + 1).toNat)

end

end A380397.P9125877895576276882

namespace A380397

/-- `A190867(n+1)%A122667(A325166(∏{e}[n+1, #!])+1)` -/
def P9125877895576276882.Spec : Prop :=
  ∀ n, P9125877895576276882.a n = A380397 (n + 1)

end A380397

/-! ## A380397.P14966418091072162797

`A365331(A063936(n+1))%A365333(n+1)`
-/

namespace A380397.P14966418091072162797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365331 (A063936 (n + 1)).toNat) (A365333 (n + 1))

end

end A380397.P14966418091072162797

namespace A380397

/-- `A365331(A063936(n+1))%A365333(n+1)` -/
def P14966418091072162797.Spec : Prop :=
  ∀ n, P14966418091072162797.a n = A380397 (n + 1)

end A380397

/-! ## A380397.P14122491099145630095

`val(A292589(n+1), A292589(A178739(n+1)))`
-/

namespace A380397.P14122491099145630095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292589 (n + 1)).toNat (A292589 (A178739 (n + 1)).toNat).toNat

end

end A380397.P14122491099145630095

namespace A380397

/-- `val(A292589(n+1), A292589(A178739(n+1)))` -/
def P14122491099145630095.Spec : Prop :=
  ∀ n, (P14122491099145630095.a n : ℤ) = A380397 (n + 1)

end A380397

/-!
# A380398: The number of unitary divisors of n that are perfect powers (A001597).

The programs for A380398, there is no canonical definition to state claims against.
-/

/-! ## A380398.P12338365216947799195

`A091050(n+1)-A380399(n+1)`
-/

namespace A380398.P12338365216947799195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A380399 (n + 1)

end

end A380398.P12338365216947799195

/-! ## A380398.P16749140054817976668

`A066060(A066060(n+1))+∑{e}[n+1, 1-floor(1/#)]`
-/

namespace A380398.P16749140054817976668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A066060 (n + 1)).toNat + ∑ p ∈ Nat.primeFactors (f1 n), (1 - ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A380398.P16749140054817976668

/-! ## A380398.P7746645373629289671

`A066060(A066060(n+1))+A056170(n+1)`
-/

namespace A380398.P7746645373629289671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A066060 (n + 1)).toNat + A056170 (n + 1)

end

end A380398.P7746645373629289671

/-! ## A380398.P6437388673134741015

`A046645(A000688(n+1)*A001359(n+1))`
-/

namespace A380398.P6437388673134741015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A000688 (n + 1) * A001359 (n + 1)).toNat

end

end A380398.P6437388673134741015

/-! ## A380398.P18147270892474358610

`A046645(A000688(n+1)*A107145(n+1))`
-/

namespace A380398.P18147270892474358610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A000688 (n + 1) * A107145 (n + 1)).toNat

end

end A380398.P18147270892474358610

/-! ## A380398.P10902159935473213251

`A317791(A000688(n+1)*A001132(n+1))`
-/

namespace A380398.P10902159935473213251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (A000688 (n + 1) * A001132 (n + 1)).toNat

end

end A380398.P10902159935473213251

/-! ## A380398.P14846579071443460979

`gcd(A014085(A294875(n+1)), A294875(n+1))`
-/

namespace A380398.P14846579071443460979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014085 (A294875 (n + 1)).toNat) (A294875 (n + 1))

end

end A380398.P14846579071443460979

/-! ## A380398.P11411713577834280904

`A066060(A066060(n+1))+log2(A323308(n+1))`
-/

namespace A380398.P11411713577834280904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066060 (A066060 (n + 1)).toNat : ℝ) + Real.logb 2 (A323308 (n + 1) : ℝ)

end

end A380398.P11411713577834280904

/-! ## A380398.P8339137254646794329

`A066060(A066060(n+1))+A001221(n+1)-A056169(n+1)`
-/

namespace A380398.P8339137254646794329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A066060 (n + 1)).toNat + (A001221 (n + 1) - A056169 (n + 1))

end

end A380398.P8339137254646794329

/-! ## A380398.P15541620030266336093

`A318451(A007519(n+1)*A181819(n+1))`
-/

namespace A380398.P15541620030266336093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A007519 (n + 1) * A181819 (n + 1)).toNat

end

end A380398.P15541620030266336093

/-! ## A380398.P9690950074742512554

`A365549(A069626(n+1)*A365549(n+1))`
-/

namespace A380398.P9690950074742512554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365549 (A069626 (n + 1) * A365549 (n + 1)).toNat

end

end A380398.P9690950074742512554

/-!
# A380399: The number of nonunitary divisors of n that are perfect powers (A001597).

The programs for A380399, there is no canonical definition to state claims against.
-/

/-! ## A380399.P6789031720727125260

`A091050(n+1)-A380398(n+1)`
-/

namespace A380399.P6789031720727125260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) - A380398 (n + 1)

end

end A380399.P6789031720727125260

/-! ## A380399.P17484540633397239563

`A056626(∏{e}[n+1, #!])+A056626(n+1)`
-/

namespace A380399.P17484540633397239563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) + A056626 (n + 1)

end

end A380399.P17484540633397239563

/-! ## A380399.P5030868600515358421

`A048105(((n+1)/∏{p}[n+1, #])%A210000(n+2))`
-/

namespace A380399.P5030868600515358421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A210000 (n + 2))).toNat

end

end A380399.P5030868600515358421

/-! ## A380399.P2258846832111383389

`A048105((n+1)/∏{p}[n+1, #])%A309941(n+2)`
-/

namespace A380399.P2258846832111383389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048105 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (A309941 (n + 2))

end

end A380399.P2258846832111383389

/-! ## A380399.P10829629987139095496

`A001221(A316978((n+1)/∏{p}[n+1, #])!)`
-/

namespace A380399.P10829629987139095496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A316978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat)

end

end A380399.P10829629987139095496

/-! ## A380399.P2363059588964438060

`A276084(A316978((n+1)/∏{p}[n+1, #])!)`
-/

namespace A380399.P2363059588964438060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (Nat.factorial (A316978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat)

end

end A380399.P2363059588964438060

/-! ## A380399.P15460088926298741825

`A048105((n+1)/∏{p}[n+1, #])%A196723(n)`
-/

namespace A380399.P15460088926298741825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048105 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (A196723 n)

end

end A380399.P15460088926298741825

/-! ## A380399.P11001376927897051592

`A048105(A003557(n+1))%A196723(n)`
-/

namespace A380399.P11001376927897051592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048105 (A003557 (n + 1)).toNat) (A196723 n)

end

end A380399.P11001376927897051592

/-! ## A380399.P9358087192304823997

`A048105(A003557(n+1)%A119678(n+1))`
-/

namespace A380399.P9358087192304823997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (Int.tmod (A003557 (n + 1)) (A119678 (n + 1))).toNat

end

end A380399.P9358087192304823997

/-! ## A380399.P13473816416507095473

`A324179((n+1)/∏{p}[n+1, #]*A014442(2*n+3))`
-/

namespace A380399.P13473816416507095473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A014442 (2 * n + 3) : ℚ))).toNat

end

end A380399.P13473816416507095473

