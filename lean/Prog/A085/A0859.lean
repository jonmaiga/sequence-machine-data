import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
# A085900: Numbers k such that k-th cyclotomic polynomial has exactly 3 negative coefficients.

The programs for A085900, there is no canonical definition to state claims against.
-/

/-! ## A085900.P15198657183977134379

`∪[A033849(n+1), A143204(n+1)]`
-/

namespace A085900.P15198657183977134379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085900.P15198657183977134379

/-! ## A085900.P17521243475495103128

`A025480(∩[2*A195238(n+1), A143204(n+1)])`
-/

namespace A085900.P17521243475495103128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A085900.P17521243475495103128

/-! ## A085900.P15949027791948491527

`filter[A086779(n+1), A143731(#)]`
-/

namespace A085900.P15949027791948491527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A085900.P15949027791948491527

/-! ## A085900.P7838642171073673670

`∩[A024619(n+1), A086779(n+1)]`
-/

namespace A085900.P7838642171073673670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085900.P7838642171073673670

/-! ## A085900.P11422552337536689128

`∩[A047229(n+1), A086779(n+1)]`
-/

namespace A085900.P11422552337536689128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085900.P11422552337536689128

/-! ## A085900.P10903212951399472527

`∩[A047248(n+1), A086779(n+1)]`
-/

namespace A085900.P10903212951399472527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085900.P10903212951399472527

/-!
# A085903: Expansion of (1 + 2*x^2)/((1 + x)*(1 - 2*x)*(1 - 2*x^2)).

The programs for A085903, the canonical program `A085903.P6774886289647146792` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085903 has offset 1).

The definition of A085903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-x-4x^2+2x^3+4x^4))` (program `A085903.P6774886289647146792`, by `A085903.P6774886289647146792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085903.P6774886289647146792

`ogf((1+2x^2)/(1-x-4x^2+2x^3+4x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085903

/-- `ogf((1+2x^2)/(1-x-4x^2+2x^3+4x^4))` -/
def P6774886289647146792.Spec : Prop :=
  ∀ n, P6774886289647146792.a n = A085903 (n + 1)

theorem P6774886289647146792.correct : P6774886289647146792.Spec := by
  intro n
  simp only [A085903, Nat.add_sub_cancel]

end A085903

/-! ## A085903.P8330558477795576685

`2^(n+1)-A094024(n+2)`
-/

namespace A085903.P8330558477795576685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A094024 (n + 2)

end

end A085903.P8330558477795576685

namespace A085903

/-- `2^(n+1)-A094024(n+2)` -/
def P8330558477795576685.Spec : Prop :=
  ∀ n, P8330558477795576685.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P7535424558646786146

`A014551(n)+2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A085903.P7535424558646786146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014551 n + 2 * a (n - 2)

end

end A085903.P7535424558646786146

namespace A085903

/-- `A014551(n)+2*a(n-2)` -/
def P7535424558646786146.Spec : Prop :=
  ∀ n, P7535424558646786146.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P4986817003491709200

`A166977(n)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A085903.P4986817003491709200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A166977 n + (a (n - 2) + a (n - 2))

end

end A085903.P4986817003491709200

namespace A085903

/-- `A166977(n)+a(n-2)+a(n-2)` -/
def P4986817003491709200.Spec : Prop :=
  ∀ n, P4986817003491709200.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P4925672620525423224

`A094024(n)*A290235(n)`
-/

namespace A085903.P4925672620525423224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n * A290235 n

end

end A085903.P4925672620525423224

namespace A085903

/-- `A094024(n)*A290235(n)` -/
def P4925672620525423224.Spec : Prop :=
  ∀ n, P4925672620525423224.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P9275335499917199787

`A094024(n)²*A084181(n)`
-/

namespace A085903.P9275335499917199787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n ^ 2 * A084181 n

end

end A085903.P9275335499917199787

namespace A085903

/-- `A094024(n)²*A084181(n)` -/
def P9275335499917199787.Spec : Prop :=
  ∀ n, P9275335499917199787.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P7841554219210123493

`A290234(n)+1-A072345(n)`
-/

namespace A085903.P7841554219210123493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290234 n + (1 - A072345 n)

end

end A085903.P7841554219210123493

namespace A085903

/-- `A290234(n)+1-A072345(n)` -/
def P7841554219210123493.Spec : Prop :=
  ∀ n, P7841554219210123493.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P2084269810622885008

`A051049(n+1)-A077896(n+1)`
-/

namespace A085903.P2084269810622885008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (n + 1) - A077896 (n + 1)

end

end A085903.P2084269810622885008

namespace A085903

/-- `A051049(n+1)-A077896(n+1)` -/
def P2084269810622885008.Spec : Prop :=
  ∀ n, P2084269810622885008.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P1280102559330053290

`A014551(n+1)-A077957(n+3)`
-/

namespace A085903.P1280102559330053290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) - A077957 (n + 3)

end

end A085903.P1280102559330053290

namespace A085903

/-- `A014551(n+1)-A077957(n+3)` -/
def P1280102559330053290.Spec : Prop :=
  ∀ n, P1280102559330053290.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P5750310672541572599

`or(1, A077896(2*n)-A077896(n+1))`
-/

namespace A085903.P5750310672541572599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077896 (2 * n) - A077896 (n + 1))

end

end A085903.P5750310672541572599

namespace A085903

/-- `or(1, A077896(2*n)-A077896(n+1))` -/
def P5750310672541572599.Spec : Prop :=
  ∀ n, P5750310672541572599.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P1497581547322341450

`∑{d}[n+1, A117212(#)*A346558((n+1)/#)]`
-/

namespace A085903.P1497581547322341450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A346558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085903.P1497581547322341450

namespace A085903

/-- `∑{d}[n+1, A117212(#)*A346558((n+1)/#)]` -/
def P1497581547322341450.Spec : Prop :=
  ∀ n, P1497581547322341450.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P12278941574465098734

`∑{d}[n+1, A130887(#)*A361019((n+1)/#)]`
-/

namespace A085903.P12278941574465098734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130887 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085903.P12278941574465098734

namespace A085903

/-- `∑{d}[n+1, A130887(#)*A361019((n+1)/#)]` -/
def P12278941574465098734.Spec : Prop :=
  ∀ n, P12278941574465098734.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P15034094965250611290

`∑{d}[n+1, A033999(#-1)*A038199((n+1)/#)]`
-/

namespace A085903.P15034094965250611290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A038199 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085903.P15034094965250611290

namespace A085903

/-- `∑{d}[n+1, A033999(#-1)*A038199((n+1)/#)]` -/
def P15034094965250611290.Spec : Prop :=
  ∀ n, P15034094965250611290.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P3086349870697281583

`A094024(n)²*A094024(A339597(n))`
-/

namespace A085903.P3086349870697281583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n ^ 2 * A094024 (A339597 n).toNat

end

end A085903.P3086349870697281583

namespace A085903

/-- `A094024(n)²*A094024(A339597(n))` -/
def P3086349870697281583.Spec : Prop :=
  ∀ n, P3086349870697281583.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P13971236042878106211

`A290234(n)+A290234(n)-A126646(n)`
-/

namespace A085903.P13971236042878106211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290234 n + (A290234 n - A126646 n)

end

end A085903.P13971236042878106211

namespace A085903

/-- `A290234(n)+A290234(n)-A126646(n)` -/
def P13971236042878106211.Spec : Prop :=
  ∀ n, P13971236042878106211.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P10809387797114128912

`A290235(and(n, A033999(n)))*A290235(n)`
-/

namespace A085903.P10809387797114128912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290235 (Int.land (n : ℤ) (A033999 n)).toNat * A290235 n

end

end A085903.P10809387797114128912

namespace A085903

/-- `A290235(and(n, A033999(n)))*A290235(n)` -/
def P10809387797114128912.Spec : Prop :=
  ∀ n, P10809387797114128912.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P9549307168816414579

`A094024(n)²*A094024(A042963(n+1))`
-/

namespace A085903.P9549307168816414579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n ^ 2 * A094024 (A042963 (n + 1)).toNat

end

end A085903.P9549307168816414579

namespace A085903

/-- `A094024(n)²*A094024(A042963(n+1))` -/
def P9549307168816414579.Spec : Prop :=
  ∀ n, P9549307168816414579.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P9518117040893115749

`A000225(n+1)-2*A000225(A142150(n+1))`
-/

namespace A085903.P9518117040893115749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - 2 * A000225 (A142150 (n + 1)).toNat

end

end A085903.P9518117040893115749

namespace A085903

/-- `A000225(n+1)-2*A000225(A142150(n+1))` -/
def P9518117040893115749.Spec : Prop :=
  ∀ n, P9518117040893115749.a n = A085903 (n + 1)

end A085903

/-! ## A085903.P15666628402586229084

`A000225(n+1)/A107663(n)*A000225(n+1)`
-/

namespace A085903.P15666628402586229084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (A107663 n : ℚ) * (A000225 (n + 1) : ℚ)

end

end A085903.P15666628402586229084

namespace A085903

/-- `A000225(n+1)/A107663(n)*A000225(n+1)` -/
def P15666628402586229084.Spec : Prop :=
  ∀ n, P15666628402586229084.a n = (A085903 (n + 1) : ℚ)

end A085903

/-! ## A085903.P808738182605775312

`A000225(n+1)+A094024(n+1)-A052551(n+1)`
-/

namespace A085903.P808738182605775312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A094024 (n + 1) - A052551 (n + 1))

end

end A085903.P808738182605775312

namespace A085903

/-- `A000225(n+1)+A094024(n+1)-A052551(n+1)` -/
def P808738182605775312.Spec : Prop :=
  ∀ n, P808738182605775312.a n = A085903 (n + 1)

end A085903

/-!
# A085904: Numbers k such that k, k+1 and k+2 are 7-smooth, i.e., all prime divisors <= 7 (A002473).

The programs for A085904, there is no canonical definition to state claims against.
-/

/-! ## A085904.P13498606823877694030

`∑[ceil((n/7)^(n+5))]+1`
-/

namespace A085904.P13498606823877694030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 7) ^ (n + 5)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085904.P13498606823877694030

/-! ## A085904.P5943880830033825571

`∑[A109906(C(n, 7))]`
-/

namespace A085904.P5943880830033825571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109906 (Nat.choose n 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085904.P5943880830033825571

/-! ## A085904.P1403946462750503963

`∑[A088699(∑[n%7])]`
-/

namespace A085904.P1403946462750503963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085904.P1403946462750503963

/-! ## A085904.P13966997962717388990

`∑[A211484(C(n, 8)+1)]`
-/

namespace A085904.P13966997962717388990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211484 (Nat.choose n 8 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085904.P13966997962717388990

/-! ## A085904.P2247179942570211281

`∑[∏{p}[A283232(n+4), #]]`
-/

namespace A085904.P2247179942570211281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283232 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085904.P2247179942570211281

/-!
# A085906: Ramanujan sum c_n(6).

The programs for A085906, the canonical program `A085906.P15298965877037030052` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085906 has offset 1).

The definition of A085906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085906.P15298965877037030052

`A000010(n+1)*A008683((n+1)/gcd(n+1, 6))/A000010((n+1)/gcd(n+1, 6))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085906

/-- `A000010(n+1)*A008683((n+1)/gcd(n+1, 6))/A000010((n+1)/gcd(n+1, 6))` -/
def P15298965877037030052.Spec : Prop :=
  ∀ n, P15298965877037030052.a n = (A085906 (n + 1) : ℚ)

end A085906

/-! ## A085906.P6884191115337630289

`∑{d}[n+1, A085097(#)*A130706((n+1)/#-1)]`
-/

namespace A085906.P6884191115337630289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085097 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A085906.P6884191115337630289

namespace A085906

/-- `∑{d}[n+1, A085097(#)*A130706((n+1)/#-1)]` -/
def P6884191115337630289.Spec : Prop :=
  ∀ n, P6884191115337630289.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P11445382175585187670

`A054535(∑[n+5]+16)`
-/

namespace A085906.P11445382175585187670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A085906.P11445382175585187670

namespace A085906

/-- `A054535(∑[n+5]+16)` -/
def P11445382175585187670.Spec : Prop :=
  ∀ n, P11445382175585187670.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P10062781032725946949

`A054535(A167499(n+4)+1)%7`
-/

namespace A085906.P10062781032725946949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054535 (A167499 (n + 4) + 1).toNat) 7

end

end A085906.P10062781032725946949

namespace A085906

/-- `A054535(A167499(n+4)+1)%7` -/
def P10062781032725946949.Spec : Prop :=
  ∀ n, P10062781032725946949.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P3442029305257832527

`A054535(A000124(n+5)+5)%7`
-/

namespace A085906.P3442029305257832527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054535 (A000124 (n + 5) + 5).toNat) 7

end

end A085906.P3442029305257832527

namespace A085906

/-- `A054535(A000124(n+5)+5)%7` -/
def P3442029305257832527.Spec : Prop :=
  ∀ n, P3442029305257832527.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P679183061956369158

`A054535(A000217(n+5)+6)%7`
-/

namespace A085906.P679183061956369158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054535 (A000217 (n + 5) + 6).toNat) 7

end

end A085906.P679183061956369158

namespace A085906

/-- `A054535(A000217(n+5)+6)%7` -/
def P679183061956369158.Spec : Prop :=
  ∀ n, P679183061956369158.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P3451295898387096747

`A054535(A055998(n+3)+9)%7`
-/

namespace A085906.P3451295898387096747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054535 (A055998 (n + 3) + 9).toNat) 7

end

end A085906.P3451295898387096747

namespace A085906

/-- `A054535(A055998(n+3)+9)%7` -/
def P3451295898387096747.Spec : Prop :=
  ∀ n, P3451295898387096747.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P10326793568742552173

`A054535(A179865(n+6)+6)%8`
-/

namespace A085906.P10326793568742552173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054535 (A179865 (n + 6) + 6).toNat) 8

end

end A085906.P10326793568742552173

namespace A085906

/-- `A054535(A179865(n+6)+6)%8` -/
def P10326793568742552173.Spec : Prop :=
  ∀ n, P10326793568742552173.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P17710128333817321226

`or(A000007(n), A054535(A167499(n+4)+1))`
-/

namespace A085906.P17710128333817321226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054535 (A167499 (n + 4) + 1).toNat)

end

end A085906.P17710128333817321226

namespace A085906

/-- `or(A000007(n), A054535(A167499(n+4)+1))` -/
def P17710128333817321226.Spec : Prop :=
  ∀ n, P17710128333817321226.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P10801270868802194018

`A054535(A167499(n+4)+1)+A000007(n+1)`
-/

namespace A085906.P10801270868802194018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A167499 (n + 4) + 1).toNat + A000007 (n + 1)

end

end A085906.P10801270868802194018

namespace A085906

/-- `A054535(A167499(n+4)+1)+A000007(n+1)` -/
def P10801270868802194018.Spec : Prop :=
  ∀ n, P10801270868802194018.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P12376908834706328118

`A054535(A167499(n+4)+1)+A000038(n+1)`
-/

namespace A085906.P12376908834706328118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A167499 (n + 4) + 1).toNat + A000038 (n + 1)

end

end A085906.P12376908834706328118

namespace A085906

/-- `A054535(A167499(n+4)+1)+A000038(n+1)` -/
def P12376908834706328118.Spec : Prop :=
  ∀ n, P12376908834706328118.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P17538314582099717357

`A054535(A000217(n+5)+6)+A000007(n+1)`
-/

namespace A085906.P17538314582099717357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A000217 (n + 5) + 6).toNat + A000007 (n + 1)

end

end A085906.P17538314582099717357

namespace A085906

/-- `A054535(A000217(n+5)+6)+A000007(n+1)` -/
def P17538314582099717357.Spec : Prop :=
  ∀ n, P17538314582099717357.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P4974240464317868907

`A054535(A000217(n+5)+6)+A000035(2*n)`
-/

namespace A085906.P4974240464317868907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A000217 (n + 5) + 6).toNat + A000035 (2 * n)

end

end A085906.P4974240464317868907

namespace A085906

/-- `A054535(A000217(n+5)+6)+A000035(2*n)` -/
def P4974240464317868907.Spec : Prop :=
  ∀ n, P4974240464317868907.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P3005540085886471370

`A054535(A167499(n+4)+1)^A014963(4*n+2)`
-/

namespace A085906.P3005540085886471370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054535 (A167499 (n + 4) + 1).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A085906.P3005540085886471370

namespace A085906

/-- `A054535(A167499(n+4)+1)^A014963(4*n+2)` -/
def P3005540085886471370.Spec : Prop :=
  ∀ n, P3005540085886471370.a n = (A085906 (n + 1) : ℚ)

end A085906

/-! ## A085906.P12241460320074400854

`A054535(A000217(n+5)+6)+A008683(4*(n+5))`
-/

namespace A085906.P12241460320074400854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A000217 (n + 5) + 6).toNat + A008683 (4 * (n + 5))

end

end A085906.P12241460320074400854

namespace A085906

/-- `A054535(A000217(n+5)+6)+A008683(4*(n+5))` -/
def P12241460320074400854.Spec : Prop :=
  ∀ n, P12241460320074400854.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P4797350463390156187

`A007318(C(2, n+2))*A054535(A000217(n+5)+6)`
-/

namespace A085906.P4797350463390156187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A054535 (A000217 (n + 5) + 6).toNat

end

end A085906.P4797350463390156187

namespace A085906

/-- `A007318(C(2, n+2))*A054535(A000217(n+5)+6)` -/
def P4797350463390156187.Spec : Prop :=
  ∀ n, P4797350463390156187.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P18348420996666826588

`A054535(A000217(n+5)+6)^and(1, A000040(n+1))`
-/

namespace A085906.P18348420996666826588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054535 (A000217 (n + 5) + 6).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A085906.P18348420996666826588

namespace A085906

/-- `A054535(A000217(n+5)+6)^and(1, A000040(n+1))` -/
def P18348420996666826588.Spec : Prop :=
  ∀ n, P18348420996666826588.a n = (A085906 (n + 1) : ℚ)

end A085906

/-! ## A085906.P9664799560219569959

`A014963(gcd(n, n+1))*A054535(A055998(n+3)+9)`
-/

namespace A085906.P9664799560219569959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A054535 (A055998 (n + 3) + 9).toNat

end

end A085906.P9664799560219569959

namespace A085906

/-- `A014963(gcd(n, n+1))*A054535(A055998(n+3)+9)` -/
def P9664799560219569959.Spec : Prop :=
  ∀ n, P9664799560219569959.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P1416694066309213780

`A014963(A000217(n+6))*A054535(A000217(n+5)+6)`
-/

namespace A085906.P1416694066309213780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A054535 (A000217 (n + 5) + 6).toNat

end

end A085906.P1416694066309213780

namespace A085906

/-- `A014963(A000217(n+6))*A054535(A000217(n+5)+6)` -/
def P1416694066309213780.Spec : Prop :=
  ∀ n, P1416694066309213780.a n = A085906 (n + 1)

end A085906

/-! ## A085906.P2776873613665324755

`A054532(eq[4, A219347(n)])`
-/

namespace A085906.P2776873613665324755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085906.P2776873613665324755

namespace A085906

/-- `A054532(eq[4, A219347(n)])` -/
def P2776873613665324755.Spec : Prop :=
  ∀ n, P2776873613665324755.a n = A085906 (n + 1)

end A085906

/-!
# A085907: 7-smooth numbers using digits 2,3,5 and 7 only. Numbers using prime digits and having prime divisors < 10.

The programs for A085907, there is no canonical definition to state claims against.
-/

/-! ## A085907.P4010754497138872596

`∩[A002473(n+1), A046034(n+1)]`
-/

namespace A085907.P4010754497138872596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085907.P4010754497138872596

/-! ## A085907.P9290754151389369293

`∩[A046034(n+1), A113623(n+1)]`
-/

namespace A085907.P9290754151389369293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085907.P9290754151389369293

/-! ## A085907.P12030309903258927385

`∩[A046034(n+1), A238985(n+1)]`
-/

namespace A085907.P12030309903258927385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085907.P12030309903258927385

/-! ## A085907.P15345795612986751365

`∩[A046034(n+1), A342950(n+1)]`
-/

namespace A085907.P15345795612986751365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085907.P15345795612986751365

/-! ## A085907.P942752651172978148

`∩[A037344(n+1), A113623(n+1)]`
-/

namespace A085907.P942752651172978148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085907.P942752651172978148

/-!
# A085908: Smallest 7-smooth number beginning with n.

The programs for A085908, there is no canonical definition to state claims against.
-/

/-! ## A085908.P14638058027154343386

`A117228(a(n-1))+1` with `a(0)=1`
-/

namespace A085908.P14638058027154343386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117228 (a (n - 1)).toNat + 1

end

end A085908.P14638058027154343386

/-! ## A085908.P17208474452915919863

`A377228(a(n-1))+1` with `a(0)=1`
-/

namespace A085908.P17208474452915919863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377228 (a (n - 1)).toNat + 1

end

end A085908.P17208474452915919863

/-! ## A085908.P5402086649051701608

`A087995(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A085908.P5402086649051701608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087995 (a (n - 1) + 1).toNat + 1

end

end A085908.P5402086649051701608

/-! ## A085908.P2358694742675002441

`xor((n-∑{digits}[n, #])², record[A175400(n)+1])`
-/

namespace A085908.P2358694742675002441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)) ^ 2) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A085908.P2358694742675002441

/-! ## A085908.P11573659510017523685

`A249517(n+1)%ceil(2/acot(n)²)+1`
-/

namespace A085908.P11573659510017523685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 1)) ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ + 1

end

end A085908.P11573659510017523685

/-!
# A085911: Least common multiple of the first n terms of A002473 (7-smooth numbers).

The programs for A085911, there is no canonical definition to state claims against.
-/

/-! ## A085911.P17442161163699978367

`lcm(a(n-1), A002473(n+1))` with `a(0)=1`
-/

namespace A085911.P17442161163699978367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A002473 (n + 1))

end

end A085911.P17442161163699978367

/-! ## A085911.P12177696805022498161

`∏[A014963(A086297(n+1))]`
-/

namespace A085911.P12177696805022498161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A086297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P12177696805022498161

/-! ## A085911.P2645556612944386247

`∏[A014963(A002473(n+1))]`
-/

namespace A085911.P2645556612944386247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P2645556612944386247

/-! ## A085911.P1004317990793051677

`∏[A014963(sqrt(A352618(n+1)))]`
-/

namespace A085911.P1004317990793051677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P1004317990793051677

/-! ## A085911.P914073146082280682

`∏[A014963(record[A071785(n+1)])]`
-/

namespace A085911.P914073146082280682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P914073146082280682

/-! ## A085911.P18230372064546090073

`∏[A014963(record[A262401(n+1)])]`
-/

namespace A085911.P18230372064546090073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P18230372064546090073

/-! ## A085911.P16394987847467296883

`∏[A014963(lt[A006530(n+1), 8]+1)]`
-/

namespace A085911.P16394987847467296883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P16394987847467296883

/-! ## A085911.P13603053161512212090

`∏[A014963(record[A118541(n)])]`
-/

namespace A085911.P13603053161512212090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P13603053161512212090

/-! ## A085911.P10965378372013528796

`∏[A014963(A007954(A280249(n+1)))]`
-/

namespace A085911.P10965378372013528796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007954 (A280249 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085911.P10965378372013528796

/-!
# A085912: Group the natural numbers such that the product of the terms of the n-th group is divisible by n!. (1),(2),(3,4),(5,6,7,8),(9,10,11,12),(13,14,15,16,17,18),(19,20,21,22,23,24),... Sequence contains the product pertaining to groups.

The programs for A085912, there is no canonical definition to state claims against.
-/

/-! ## A085912.P12140399692237123811

`ratio[-floor(n²/2)!]`
-/

namespace A085912.P12140399692237123811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial ⌊(n ^ 2 : ℚ) / 2⌋.toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085912.P12140399692237123811

/-! ## A085912.P10011577665770793216

`ratio[3*∑[and(n, -2)]!]`
-/

namespace A085912.P10011577665770793216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085912.P10011577665770793216

/-! ## A085912.P5737179214959556334

`ratio[A056038(n²)]`
-/

namespace A085912.P5737179214959556334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056038 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085912.P5737179214959556334

/-! ## A085912.P4369976147522615156

`ratio[A081123(n²)]`
-/

namespace A085912.P4369976147522615156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085912.P4369976147522615156

/-! ## A085912.P16076432785448848726

`ratio[A000142(A007590(n))]`
-/

namespace A085912.P16076432785448848726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A007590 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A085912.P16076432785448848726

/-!
# A085913: Group the natural numbers such that the product of the terms of the n-th group is divisible by n!. (1),(2),(3,4),(5,6,7,8),(9,10,11,12),(13,14,15,16,17,18),(19,20,21,22,23,24),... Sequence contains the first term of every group.

The programs for A085913, there is no canonical definition to state claims against.
-/

/-! ## A085913.P8965079447471325494

`A085914(n)+a(n-1)` with `a(0)=1`
-/

namespace A085913.P8965079447471325494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085914 n + a (n - 1)

end

end A085913.P8965079447471325494

/-! ## A085913.P9587775547709480913

`A011960(A289443(n))`
-/

namespace A085913.P9587775547709480913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A289443 n).toNat

end

end A085913.P9587775547709480913

/-! ## A085913.P7220234794978869055

`A008612(A201722(n+1))`
-/

namespace A085913.P7220234794978869055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A201722 (n + 1)).toNat

end

end A085913.P7220234794978869055

/-! ## A085913.P15643826663607663112

`A099392(n+1)+A010051(A100143(n+1))`
-/

namespace A085913.P15643826663607663112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1) + A010051 (A100143 (n + 1)).toNat

end

end A085913.P15643826663607663112

/-! ## A085913.P18055201450413466687

`A054977(A367214(n+3))*A099392(n+1)`
-/

namespace A085913.P18055201450413466687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A367214 (n + 3)).toNat * A099392 (n + 1)

end

end A085913.P18055201450413466687

/-! ## A085913.P12748486758493299774

`eq[A131729(n), A142073(n)]`
-/

namespace A085913.P12748486758493299774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085913.P12748486758493299774

/-! ## A085913.P3721110836311333436

`eq[A105234(n), A141720(n+1)]`
-/

namespace A085913.P3721110836311333436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085913.P3721110836311333436

/-! ## A085913.P11784184100348905335

`eq[A141720(n+1), A288697(n)]`
-/

namespace A085913.P11784184100348905335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085913.P11784184100348905335

/-!
# A085914: Group the natural numbers so that the product of the terms of the n-th group is divisible by n!: (1),(2),(3,4),(5,6,7,8),(9,10,11,12),(13,14,15,16,17,18),(19,20,21,22,23,24),... Sequence contains the number of terms in each group.

The programs for A085914, there is no canonical definition to state claims against.
-/

/-! ## A085914.P16703647413328746480

`Δ[A085913(n+1)]`
-/

namespace A085914.P16703647413328746480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085914.P16703647413328746480

/-! ## A085914.P18420263222564411936

`A085913(n+2)-A085913(n+1)`
-/

namespace A085914.P18420263222564411936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085913 (n + 2) - A085913 (n + 1)

end

end A085914.P18420263222564411936

/-! ## A085914.P16568726822425965717

`(A196129(n+1)+1)%2+n`
-/

namespace A085914.P16568726822425965717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196129 (n + 1) + 1) 2 + (n : ℤ)

end

end A085914.P16568726822425965717

/-! ## A085914.P13316733165077709153

`(∑[A033917(n+1)]-n)%2+n`
-/

namespace A085914.P13316733165077709153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) 2 + (n : ℤ)

end

end A085914.P13316733165077709153

/-! ## A085914.P3698241877228993551

`(C(A322526(n), n²)+n)%2+n`
-/

namespace A085914.P3698241877228993551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A322526 n).toNat (n ^ 2) + n) % 2 + n

end

end A085914.P3698241877228993551

/-! ## A085914.P6827299235639551905

`((A129279(n)%10+n)%2)%10+n`
-/

namespace A085914.P6827299235639551905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.tmod (A129279 n) 10 + (n : ℤ)) 2) 10 + (n : ℤ)

end

end A085914.P6827299235639551905

/-! ## A085914.P6110775473338101300

`n+1-A266719(∑[6*n-5]+6)`
-/

namespace A085914.P6110775473338101300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A266719 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A085914.P6110775473338101300

/-! ## A085914.P14051190531836150989

`floor(sqrt(A198454(n+1)+n²))%2+n`
-/

namespace A085914.P14051190531836150989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A198454 (n + 1) + (n ^ 2 : ℤ))) 2 + (n : ℤ)

end

end A085914.P14051190531836150989

/-! ## A085914.P8898421219935415681

`A175885(n+1)%A235399(n+1)`
-/

namespace A085914.P8898421219935415681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175885 (n + 1)) (A235399 (n + 1))

end

end A085914.P8898421219935415681

/-! ## A085914.P10385754599699708751

`n%2+A008683(A029930(n))+n`
-/

namespace A085914.P10385754599699708751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A008683 (A029930 n).toNat + (n : ℤ))

end

end A085914.P10385754599699708751

/-!
# A085915: Group the natural numbers such that the product of the terms of the n-th group is divisible by n!: (1), (2), (3, 4), (5, 6, 7, 8), (9, 10, 11, 12), (13, 14, 15, 16, 17, 18), (19, 20, 21, 22, 23, 24), ... Sequence contains the product of the terms of the n-th group divided by n!. a(n) = A085912(n)/(n!).

The programs for A085915, there is no canonical definition to state claims against.
-/

/-! ## A085915.P14011595168504724535

`A085912(n+1)/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085915.P14011595168504724535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085912 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A085915.P14011595168504724535

/-! ## A085915.P4202090142644850228

`A085912(n+1)/record[A098361(n)]`
-/

namespace A085915.P4202090142644850228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085912 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A085915.P4202090142644850228

/-! ## A085915.P7269727805833937228

`A085912(n+1)/record[A247005(n)]`
-/

namespace A085915.P7269727805833937228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085912 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A085915.P7269727805833937228

/-! ## A085915.P18103588626454489146

`A085912(n+1)/A105278(A000124(n))`
-/

namespace A085915.P18103588626454489146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085912 (n + 1) : ℚ) / (A105278 (A000124 n).toNat : ℚ)

end

end A085915.P18103588626454489146

/-!
# A085916: Array T(i,1)=i, T(1,j)=j and T(i,j)=T(i-1,j-1)*T(i,j-1) read by antidiagonals.

The programs for A085916, there is no canonical definition to state claims against.
-/

/-! ## A085916.P11065141576278214372

`lcm(A330408(n+1), A330408(A125860(n)))`
-/

namespace A085916.P11065141576278214372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A330408 (n + 1)) (A330408 (A125860 n).toNat)

end

end A085916.P11065141576278214372

/-! ## A085916.P5041295789750843127

`lcm(A055642(A270880(n+1)), A123229(n+1))`
-/

namespace A085916.P5041295789750843127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 (A270880 (n + 1)).toNat) (A123229 (n + 1))

end

end A085916.P5041295789750843127

/-! ## A085916.P5676327307246602658

`A003989(A022174(n))*A131818(n+1)`
-/

namespace A085916.P5676327307246602658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A022174 n).toNat * A131818 (n + 1)

end

end A085916.P5676327307246602658

/-! ## A085916.P7306650446174045973

`A007281(A099594(n))*A131818(n+1)`
-/

namespace A085916.P7306650446174045973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007281 (A099594 n).toNat * A131818 (n + 1)

end

end A085916.P7306650446174045973

/-! ## A085916.P6899281774377233610

`A030453(A167040(n))*A131818(n+1)`
-/

namespace A085916.P6899281774377233610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030453 (A167040 n).toNat * A131818 (n + 1)

end

end A085916.P6899281774377233610

/-!
# A085918: Primes p such that for some k the number of terms > 0 and < 1 in the Farey sequence of order k is p.

The programs for A085918, the canonical program `A085918.P16969546396319122276` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085918 has offset 1).

The definition of A085918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085918.P6711213297886098752

`p?[A015614(n+1)]`
-/

namespace A085918.P6711213297886098752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P6711213297886098752

namespace A085918

/-- `p?[A015614(n+1)]` -/
def P6711213297886098752.Spec : Prop :=
  ∀ n, P6711213297886098752.a n = A085918 (n + 1)

end A085918

/-! ## A085918.P15573551053950690839

`p?[A002088(n)-1]`
-/

namespace A085918.P15573551053950690839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P15573551053950690839

namespace A085918

/-- `p?[A002088(n)-1]` -/
def P15573551053950690839.Spec : Prop :=
  ∀ n, P15573551053950690839.a n = A085918 (n + 1)

end A085918

/-! ## A085918.P16117368477226653385

`p?[A005728(n)-2]`
-/

namespace A085918.P16117368477226653385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P16117368477226653385

namespace A085918

/-- `p?[A005728(n)-2]` -/
def P16117368477226653385.Spec : Prop :=
  ∀ n, P16117368477226653385.a n = A085918 (n + 1)

end A085918

/-! ## A085918.P14452157452577185592

`p?[A049643(n)-2]`
-/

namespace A085918.P14452157452577185592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P14452157452577185592

namespace A085918

/-- `p?[A049643(n)-2]` -/
def P14452157452577185592.Spec : Prop :=
  ∀ n, P14452157452577185592.a n = A085918 (n + 1)

end A085918

/-! ## A085918.P77849474615948055

`p?[∑[A000010(n+2)]]`
-/

namespace A085918.P77849474615948055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P77849474615948055

namespace A085918

/-- `p?[∑[A000010(n+2)]]` -/
def P77849474615948055.Spec : Prop :=
  ∀ n, P77849474615948055.a n = A085918 (n + 1)

end A085918

/-! ## A085918.P7736404263172749408

`p?[∑[A384710(n+2)]]`
-/

namespace A085918.P7736404263172749408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P7736404263172749408

namespace A085918

/-- `p?[∑[A384710(n+2)]]` -/
def P7736404263172749408.Spec : Prop :=
  ∀ n, P7736404263172749408.a n = A085918 (n + 1)

end A085918

/-! ## A085918.P16969546396319122276

`p?[Δ[A049688(n)]-2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A085918

/-- `p?[Δ[A049688(n)]-2]` -/
def P16969546396319122276.Spec : Prop :=
  ∀ n, P16969546396319122276.a n = A085918 (n + 1)

theorem P16969546396319122276.correct : P16969546396319122276.Spec := by
  intro n
  simp only [A085918, Nat.add_sub_cancel]

end A085918

/-! ## A085918.P4154602388402201150

`p?[A015613(n+1)+n]`
-/

namespace A085918.P4154602388402201150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085918.P4154602388402201150

namespace A085918

/-- `p?[A015613(n+1)+n]` -/
def P4154602388402201150.Spec : Prop :=
  ∀ n, P4154602388402201150.a n = A085918 (n + 1)

end A085918

/-! ## A085918.P11843535792255842255

`∩[A000040(n+1), A015614(n+1)]`
-/

namespace A085918.P11843535792255842255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P11843535792255842255

namespace A085918

/-- `∩[A000040(n+1), A015614(n+1)]` -/
def P11843535792255842255.Spec : Prop :=
  ∀ n, (P11843535792255842255.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P11869834847754726679

`∩[A015614(n+1), A049585(n+1)]`
-/

namespace A085918.P11869834847754726679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P11869834847754726679

namespace A085918

/-- `∩[A015614(n+1), A049585(n+1)]` -/
def P11869834847754726679.Spec : Prop :=
  ∀ n, (P11869834847754726679.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P17971142275922110677

`∩[A015614(n+1), A051948(n+1)]`
-/

namespace A085918.P17971142275922110677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P17971142275922110677

namespace A085918

/-- `∩[A015614(n+1), A051948(n+1)]` -/
def P17971142275922110677.Spec : Prop :=
  ∀ n, (P17971142275922110677.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P15643620587651260472

`∩[A015614(n+1), A053577(n+1)]`
-/

namespace A085918.P15643620587651260472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P15643620587651260472

namespace A085918

/-- `∩[A015614(n+1), A053577(n+1)]` -/
def P15643620587651260472.Spec : Prop :=
  ∀ n, (P15643620587651260472.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P6502037337383340805

`∩[A015614(n+1), A053813(n+1)]`
-/

namespace A085918.P6502037337383340805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P6502037337383340805

namespace A085918

/-- `∩[A015614(n+1), A053813(n+1)]` -/
def P6502037337383340805.Spec : Prop :=
  ∀ n, (P6502037337383340805.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P12124079606495895494

`∩[A015614(n+1), A064728(n+1)]`
-/

namespace A085918.P12124079606495895494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P12124079606495895494

namespace A085918

/-- `∩[A015614(n+1), A064728(n+1)]` -/
def P12124079606495895494.Spec : Prop :=
  ∀ n, (P12124079606495895494.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P13383237165291962300

`∩[A015614(n+1), A065091(n+1)]`
-/

namespace A085918.P13383237165291962300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P13383237165291962300

namespace A085918

/-- `∩[A015614(n+1), A065091(n+1)]` -/
def P13383237165291962300.Spec : Prop :=
  ∀ n, (P13383237165291962300.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P18096731427788679377

`∩[A015614(n+1), A066542(n+1)]`
-/

namespace A085918.P18096731427788679377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P18096731427788679377

namespace A085918

/-- `∩[A015614(n+1), A066542(n+1)]` -/
def P18096731427788679377.Spec : Prop :=
  ∀ n, (P18096731427788679377.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P15382049912507888197

`∩[A015614(n+1), A093515(n+1)]`
-/

namespace A085918.P15382049912507888197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P15382049912507888197

namespace A085918

/-- `∩[A015614(n+1), A093515(n+1)]` -/
def P15382049912507888197.Spec : Prop :=
  ∀ n, (P15382049912507888197.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P16365305276251727763

`∩[A015614(n+1), A116974(n+1)]`
-/

namespace A085918.P16365305276251727763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P16365305276251727763

namespace A085918

/-- `∩[A015614(n+1), A116974(n+1)]` -/
def P16365305276251727763.Spec : Prop :=
  ∀ n, (P16365305276251727763.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P574558013521907488

`∩[A015614(n+1), A140826(n+1)]`
-/

namespace A085918.P574558013521907488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P574558013521907488

namespace A085918

/-- `∩[A015614(n+1), A140826(n+1)]` -/
def P574558013521907488.Spec : Prop :=
  ∀ n, (P574558013521907488.a n : ℤ) = A085918 (n + 1)

end A085918

/-! ## A085918.P10374928377041916754

`∩[A015614(n+1), A175787(n+1)]`
-/

namespace A085918.P10374928377041916754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085918.P10374928377041916754

namespace A085918

/-- `∩[A015614(n+1), A175787(n+1)]` -/
def P10374928377041916754.Spec : Prop :=
  ∀ n, (P10374928377041916754.a n : ℤ) = A085918 (n + 1)

end A085918

/-!
# A085923: a(0) = 1, a(n+1) = (n+1)*(a(n) + n).

The programs for A085923, the canonical program `A085923.P12114556531647207418` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085923 has offset 0).

The definition of A085923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085923.P12114556531647207418

`n*(a(n-1)+n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085923

/-- `n*(a(n-1)+n-1)` -/
def P12114556531647207418.Spec : Prop :=
  ∀ n, P12114556531647207418.a n = A085923 n

theorem P12114556531647207418.correct : P12114556531647207418.Spec := by
  intro n
  simp only [A085923]

end A085923

/-! ## A085923.P734470192032290720

`(n-1+a(n-1))*n` with `a(0)=1`
-/

namespace A085923.P734470192032290720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1 + a (n - 1)) * (n : ℤ)

end

end A085923.P734470192032290720

namespace A085923

/-- `(n-1+a(n-1))*n` -/
def P734470192032290720.Spec : Prop :=
  ∀ n, P734470192032290720.a n = A085923 n

end A085923

/-! ## A085923.P6292898690639776024

`n*(n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A085923.P6292898690639776024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((n : ℤ) - (1 - a (n - 1)))

end

end A085923.P6292898690639776024

namespace A085923

/-- `n*(n-(1-a(n-1)))` -/
def P6292898690639776024.Spec : Prop :=
  ∀ n, P6292898690639776024.a n = A085923 n

end A085923

/-! ## A085923.P13631784628403526177

`n!+n!*∑[n/n!]-n`
-/

namespace A085923.P13631784628403526177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) + ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ))

end

end A085923.P13631784628403526177

namespace A085923

/-- `n!+n!*∑[n/n!]-n` -/
def P13631784628403526177.Spec : Prop :=
  ∀ n, P13631784628403526177.a n = (A085923 n : ℚ)

end A085923

/-! ## A085923.P181906369071519555

`(a(n-1)-1+n)/n^(-1)` with `a(0)=1`
-/

namespace A085923.P181906369071519555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 1 + (n : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A085923.P181906369071519555

namespace A085923

/-- `(a(n-1)-1+n)/n^(-1)` -/
def P181906369071519555.Spec : Prop :=
  ∀ n, P181906369071519555.a n = (A085923 n : ℚ)

end A085923

/-! ## A085923.P15614491709173755791

`(n-(1-a(n-1)))/n^(-1)` with `a(0)=1`
-/

namespace A085923.P15614491709173755791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℚ) - (1 - a (n - 1))) / (n : ℚ) ^ (-1 : ℤ)

end

end A085923.P15614491709173755791

namespace A085923

/-- `(n-(1-a(n-1)))/n^(-1)` -/
def P15614491709173755791.Spec : Prop :=
  ∀ n, P15614491709173755791.a n = (A085923 n : ℚ)

end A085923

/-! ## A085923.P21439641753777330

`a(n-1)+lcm(a(n-1)+n, n-1)` with `a(0)=1`
-/

namespace A085923.P21439641753777330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (a (n - 1) + n : ℤ) ((n : ℤ) - 1)

end

end A085923.P21439641753777330

namespace A085923

/-- `a(n-1)+lcm(a(n-1)+n, n-1)` -/
def P21439641753777330.Spec : Prop :=
  ∀ n, (P21439641753777330.a n : ℤ) = A085923 n

end A085923

/-! ## A085923.P12674192237327380102

`A038154(n)+n!`
-/

namespace A085923.P12674192237327380102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 n + (Nat.factorial n : ℤ)

end

end A085923.P12674192237327380102

namespace A085923

/-- `A038154(n)+n!` -/
def P12674192237327380102.Spec : Prop :=
  ∀ n, P12674192237327380102.a n = A085923 n

end A085923

/-! ## A085923.P6207003142732423008

`A033540(n+1)-n`
-/

namespace A085923.P6207003142732423008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033540 (n + 1) - (n : ℤ)

end

end A085923.P6207003142732423008

namespace A085923

/-- `A033540(n+1)-n` -/
def P6207003142732423008.Spec : Prop :=
  ∀ n, P6207003142732423008.a n = A085923 n

end A085923

/-! ## A085923.P14257170542395554768

`A038159(n)-(n+1)`
-/

namespace A085923.P14257170542395554768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038159 n - (n + 1 : ℤ)

end

end A085923.P14257170542395554768

namespace A085923

/-- `A038159(n)-(n+1)` -/
def P14257170542395554768.Spec : Prop :=
  ∀ n, P14257170542395554768.a n = A085923 n

end A085923

/-!
# A085927: a(n) is the digitwise absolute difference between the n-th palindrome and its 9's complement.

The programs for A085927, there is no canonical definition to state claims against.
-/

/-! ## A085927.P2151732400112777146

`A109846(A109872(n+1)%A109854(n+1))`
-/

namespace A085927.P2151732400112777146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109846 (Int.tmod (A109872 (n + 1)) (A109854 (n + 1))).toNat

end

end A085927.P2151732400112777146

/-! ## A085927.P8433541607756720641

`abs(A062687(n+1)-A061601(A190217(n+1)))`
-/

namespace A085927.P8433541607756720641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062687 (n + 1) - A061601 (A190217 (n + 1)).toNat|

end

end A085927.P8433541607756720641

/-! ## A085927.P6331848251829387273

`A109846(A109872(n+1))%A109876(3*n+5)`
-/

namespace A085927.P6331848251829387273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109846 (A109872 (n + 1)).toNat) (A109876 (3 * n + 5))

end

end A085927.P6331848251829387273

/-! ## A085927.P3580838361949049686

`A347689(A262277(n+1))`
-/

namespace A085927.P3580838361949049686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A262277 (n + 1)).toNat

end

end A085927.P3580838361949049686

/-!
# A085928: a(1) = 1, a(2) = 2, then the absolute difference of the concatenation of two previous terms and its digit reversal.

The programs for A085928, there is no canonical definition to state claims against.
-/

/-! ## A085928.P7507021850840759257

`(n+1)^n-A343248(n!+1)`
-/

namespace A085928.P7507021850840759257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A343248 (Nat.factorial n + 1)

end

end A085928.P7507021850840759257

/-!
# A085929: Smaller of two consecutive numbers with the same prime signature not occurring earlier.

The programs for A085929, there is no canonical definition to state claims against.
-/

/-! ## A085929.P7224667060448994199

`A091405(record[A091420(n+1)]%A091403(n+1))`
-/

namespace A085929.P7224667060448994199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091405 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A091403 (n + 1))).toNat

end

end A085929.P7224667060448994199

/-! ## A085929.P16091201477153096873

`A091405(record[A091420(n+1)])%A091414(n+2)`
-/

namespace A085929.P16091201477153096873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091405 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A091414 (n + 2))

end

end A085929.P16091201477153096873

/-! ## A085929.P6699572197035683052

`filter[A091405(n+1), A022933(#)]`
-/

namespace A085929.P6699572197035683052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022933 (f1 j).toNat = 1) n)

end

end A085929.P6699572197035683052

/-! ## A085929.P494148195127809440

`A091405(∑[A007737(n+1)!])`
-/

namespace A085929.P494148195127809440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085929.P494148195127809440

/-! ## A085929.P12626815921797311941

`A091405(∑[A089759(n+1)!])`
-/

namespace A085929.P12626815921797311941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A089759 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085929.P12626815921797311941

/-!
# A085930: Triangle read by rows in which row n contains n smallest (> 0) numbers which when incremented by n yield a triangular number.

The programs for A085930, the canonical program `A085930.P18418672100076473134` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085930 has offset 1).

The definition of A085930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085930.P18418672100076473134

`A000217(col(n)+1+A003056(row(n)+1))-(row(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085930

/-- `A000217(col(n)+1+A003056(row(n)+1))-(row(n)+1)` -/
def P18418672100076473134.Spec : Prop :=
  ∀ n, P18418672100076473134.a n = A085930 (n + 1)

theorem P18418672100076473134.correct : P18418672100076473134.Spec := by
  intro n
  simp only [A085930, Nat.add_sub_cancel]

end A085930

/-! ## A085930.P196812800701359912

`A000217(col(n)+1+row(row(n)+1))-(row(n)+1)`
-/

namespace A085930.P196812800701359912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow (SequenceMachineLib.triRow n + 1)) - (SequenceMachineLib.triRow n + 1 : ℤ)

end

end A085930.P196812800701359912

namespace A085930

/-- `A000217(col(n)+1+row(row(n)+1))-(row(n)+1)` -/
def P196812800701359912.Spec : Prop :=
  ∀ n, P196812800701359912.a n = A085930 (n + 1)

end A085930

/-!
# A085931: Leading diagonal of A085930.

The programs for A085931, the canonical program `A085931.P5980507782806375577` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085931 has offset 1).

The definition of A085931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085931.P16784041159462999192

`C(comp[∑[n+2]-2]+2, 2)-n-1`
-/

namespace A085931.P16784041159462999192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) 2 : ℤ) - (n : ℤ) - 1

end

end A085931.P16784041159462999192

namespace A085931

/-- `C(comp[∑[n+2]-2]+2, 2)-n-1` -/
def P16784041159462999192.Spec : Prop :=
  ∀ n, P16784041159462999192.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P15599117144465362626

`A000217(comp[∑[n+3]-1]+2)-1-n`
-/

namespace A085931.P15599117144465362626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1 - (n : ℤ)

end

end A085931.P15599117144465362626

namespace A085931

/-- `A000217(comp[∑[n+3]-1]+2)-1-n` -/
def P15599117144465362626.Spec : Prop :=
  ∀ n, P15599117144465362626.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P7943246464566922938

`A000217(∑[char[∑[n-1]]]+n+1)-(n+1)`
-/

namespace A085931.P7943246464566922938
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)) - (n + 1 : ℤ)

end

end A085931.P7943246464566922938

namespace A085931

/-- `A000217(∑[char[∑[n-1]]]+n+1)-(n+1)` -/
def P7943246464566922938.Spec : Prop :=
  ∀ n, P7943246464566922938.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P5980507782806375577

`A003056(n+1)+A000217(A003056(n+1)+n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085931

/-- `A003056(n+1)+A000217(A003056(n+1)+n)` -/
def P5980507782806375577.Spec : Prop :=
  ∀ n, P5980507782806375577.a n = A085931 (n + 1)

theorem P5980507782806375577.correct : P5980507782806375577.Spec := by
  intro n
  simp only [A085931, Nat.add_sub_cancel]

end A085931

/-! ## A085931.P3235117020891607055

`A000096(A035254(n+2))-n`
-/

namespace A085931.P3235117020891607055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A035254 (n + 2)).toNat - (n : ℤ)

end

end A085931.P3235117020891607055

namespace A085931

/-- `A000096(A035254(n+2))-n` -/
def P3235117020891607055.Spec : Prop :=
  ∀ n, P3235117020891607055.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P17640289770425254467

`A000096(A003056(n+1)+n)-n`
-/

namespace A085931.P17640289770425254467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A085931.P17640289770425254467

namespace A085931

/-- `A000096(A003056(n+1)+n)-n` -/
def P17640289770425254467.Spec : Prop :=
  ∀ n, P17640289770425254467.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P2446755930222201538

`A000096(∑[A010054(n+1)]+n)-n`
-/

namespace A085931.P2446755930222201538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat - (n : ℤ)

end

end A085931.P2446755930222201538

namespace A085931

/-- `A000096(∑[A010054(n+1)]+n)-n` -/
def P2446755930222201538.Spec : Prop :=
  ∀ n, P2446755930222201538.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P14371398954730784046

`A000096(A007401(n+1)-A023532(n))-n`
-/

namespace A085931.P14371398954730784046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A007401 (n + 1) - A023532 n).toNat - (n : ℤ)

end

end A085931.P14371398954730784046

namespace A085931

/-- `A000096(A007401(n+1)-A023532(n))-n` -/
def P14371398954730784046.Spec : Prop :=
  ∀ n, P14371398954730784046.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P8238577668188707252

`A161680(A007401(n+2))-(n+1)`
-/

namespace A085931.P8238577668188707252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A007401 (n + 2)).toNat - (n + 1 : ℤ)

end

end A085931.P8238577668188707252

namespace A085931

/-- `A161680(A007401(n+2))-(n+1)` -/
def P8238577668188707252.Spec : Prop :=
  ∀ n, P8238577668188707252.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P1082296521140426330

`C(lt[3, A207636(n+1)], 2)-(n+1)`
-/

namespace A085931.P1082296521140426330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) 2 : ℤ) - (n + 1 : ℤ)

end

end A085931.P1082296521140426330

namespace A085931

/-- `C(lt[3, A207636(n+1)], 2)-(n+1)` -/
def P1082296521140426330.Spec : Prop :=
  ∀ n, P1082296521140426330.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P18046572278202915505

`A085930(∑[n+1])`
-/

namespace A085931.P18046572278202915505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085931.P18046572278202915505

namespace A085931

/-- `A085930(∑[n+1])` -/
def P18046572278202915505.Spec : Prop :=
  ∀ n, P18046572278202915505.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P7082875254641783178

`A014132(A000217(A035254(n+2))-n)`
-/

namespace A085931.P7082875254641783178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A000217 (A035254 (n + 2)).toNat - (n : ℤ)).toNat

end

end A085931.P7082875254641783178

namespace A085931

/-- `A014132(A000217(A035254(n+2))-n)` -/
def P7082875254641783178.Spec : Prop :=
  ∀ n, P7082875254641783178.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P2282606894849030919

`A181133(C(A181133(n+1), 2))-n`
-/

namespace A085931.P2282606894849030919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (Nat.choose (A181133 (n + 1)).toNat 2) - (n : ℤ)

end

end A085931.P2282606894849030919

namespace A085931

/-- `A181133(C(A181133(n+1), 2))-n` -/
def P2282606894849030919.Spec : Prop :=
  ∀ n, P2282606894849030919.a n = A085931 (n + 1)

end A085931

/-! ## A085931.P18066295035061780890

`eq[A002262(n), A003056(A004736(n+1))]`
-/

namespace A085931.P18066295035061780890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004736 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085931.P18066295035061780890

namespace A085931

/-- `eq[A002262(n), A003056(A004736(n+1))]` -/
def P18066295035061780890.Spec : Prop :=
  ∀ n, (P18066295035061780890.a n : ℤ) = A085931 (n + 1)

end A085931

/-! ## A085931.P3152628595425200776

`eq[A003056(A004736(n+1))+1, A002260(n+1)]`
-/

namespace A085931.P3152628595425200776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004736 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085931.P3152628595425200776

namespace A085931

/-- `eq[A003056(A004736(n+1))+1, A002260(n+1)]` -/
def P3152628595425200776.Spec : Prop :=
  ∀ n, (P3152628595425200776.a n : ℤ) = A085931 (n + 1)

end A085931

/-!
# A085932: Numbers k such that (digits of k sorted in ascending order) + (digital sum of k) is a palindrome.

The programs for A085932, there is no canonical definition to state claims against.
-/

/-! ## A085932.P4611454925783141620

`eq[0, A017840(A004086(n))]`
-/

namespace A085932.P4611454925783141620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017840 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085932.P4611454925783141620

/-! ## A085932.P10359412521752983006

`eq[0, A046880(A004185(n))]`
-/

namespace A085932.P10359412521752983006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046880 ((A004185 n).toNat + 30)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085932.P10359412521752983006

/-! ## A085932.P3613418280684748785

`eq[1, A055640(A329147(n))]`
-/

namespace A085932.P3613418280684748785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A329147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085932.P3613418280684748785

/-! ## A085932.P1051615611476977959

`eq[A093150(n), A214950(n)]`
-/

namespace A085932.P1051615611476977959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085932.P1051615611476977959

/-! ## A085932.P14685632421834417577

`lt[A061816(n), A010878(2*n)]`
-/

namespace A085932.P14685632421834417577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085932.P14685632421834417577

/-!
# A085933: Palindromes in A085932.

The programs for A085933, there is no canonical definition to state claims against.
-/

/-! ## A085933.P12335718587173315210

`∩[A002113(n+1), A085932(n+1)]`
-/

namespace A085933.P12335718587173315210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085933.P12335718587173315210

/-! ## A085933.P8405526596313130904

`∩[A056525(n+1), A085932(n+1)]`
-/

namespace A085933.P8405526596313130904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085933.P8405526596313130904

/-! ## A085933.P10224601111032752393

`∩[A085932(n+1), A110751(n+1)]`
-/

namespace A085933.P10224601111032752393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085933.P10224601111032752393

/-! ## A085933.P9409798023053404040

`∩[record[A055483(n+1)], A085932(n+1)]`
-/

namespace A085933.P9409798023053404040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A085933.P9409798023053404040

/-!
# A085935: Palindromes in A085934.

The programs for A085935, there is no canonical definition to state claims against.
-/

/-! ## A085935.P8636332024250853623

`∩[A002113(n+1), A085934(n+1)]`
-/

namespace A085935.P8636332024250853623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085935.P8636332024250853623

/-! ## A085935.P9857151500187856795

`∩[A085934(n+1), A110751(n+1)]`
-/

namespace A085935.P9857151500187856795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085935.P9857151500187856795

/-! ## A085935.P17391284877090331008

`filter[A085934(n+1), A136522(#)]`
-/

namespace A085935.P17391284877090331008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A085935.P17391284877090331008

/-! ## A085935.P6466592578087521868

`A028310(∩[A056525(n+1), A085934(n+1)])`
-/

namespace A085935.P6466592578087521868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085934 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A085935.P6466592578087521868

/-!
# A085937: Palindromes in A085936.

The programs for A085937, there is no canonical definition to state claims against.
-/

/-! ## A085937.P16070866187397991781

`∩[A002113(n+1), A085936(n+1)]`
-/

namespace A085937.P16070866187397991781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085937.P16070866187397991781

/-! ## A085937.P8148043761665365360

`∩[A056525(n+1), A085936(n+1)]`
-/

namespace A085937.P8148043761665365360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085937.P8148043761665365360

/-! ## A085937.P9960255872096700117

`∩[A085936(n+1), A110751(n+1)]`
-/

namespace A085937.P9960255872096700117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085937.P9960255872096700117

/-! ## A085937.P15231377854855167386

`filter[A085936(n+1), A136522(#)]`
-/

namespace A085937.P15231377854855167386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A085937.P15231377854855167386

/-! ## A085937.P26043826961749667

`∩[A085936(n+1), A056142(n)]`
-/

namespace A085937.P26043826961749667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085937.P26043826961749667

/-!
# A085939: Horadam sequence (0,1,6,4).

The programs for A085939, the canonical program `A085939.P18221596009715536170` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085939 has offset 0).

The definition of A085939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085939.P17061413947733976575

`ogf(x/(1-4x-6x^2))`
-/

namespace A085939.P17061413947733976575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -6] n

end

end A085939.P17061413947733976575

namespace A085939

/-- `ogf(x/(1-4x-6x^2))` -/
def P17061413947733976575.Spec : Prop :=
  ∀ n, P17061413947733976575.a n = A085939 n

end A085939

/-! ## A085939.P18221596009715536170

`4*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085939

/-- `4*a(n-1)+6*a(n-2)` -/
def P18221596009715536170.Spec : Prop :=
  ∀ n, (P18221596009715536170.a n : ℤ) = A085939 n

theorem P18221596009715536170.correct : P18221596009715536170.Spec := by
  intro n
  simp only [A085939]

end A085939

/-! ## A085939.P15401393385384441565

`((2+sqrt(10))^n-(2-sqrt(10))^n)/(2*sqrt(10))`
-/

namespace A085939.P15401393385384441565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (10 : ℝ)) ^ n - (2 - Real.sqrt (10 : ℝ)) ^ n) / (2 * Real.sqrt (10 : ℝ))

end

end A085939.P15401393385384441565

namespace A085939

/-- `((2+sqrt(10))^n-(2-sqrt(10))^n)/(2*sqrt(10))` -/
def P15401393385384441565.Spec : Prop :=
  ∀ n, P15401393385384441565.a n = (A085939 n : ℝ)

theorem P15401393385384441565.correct : P15401393385384441565.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A085939, Nat.add_sub_cancel, A085939.P15401393385384441565.a, A085939.P18221596009715536170.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A085939, Nat.add_sub_cancel, A085939.P15401393385384441565.a, A085939.P18221596009715536170.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A085939

/-! ## A085939.P14823706743890492589

`A147518(n)-A084132(n)`
-/

namespace A085939.P14823706743890492589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147518 n - A084132 n

end

end A085939.P14823706743890492589

namespace A085939

/-- `A147518(n)-A084132(n)` -/
def P14823706743890492589.Spec : Prop :=
  ∀ n, P14823706743890492589.a n = A085939 n

end A085939

/-! ## A085939.P4041852366082942558

`A084132(n)-A138041(A028310(n))`
-/

namespace A085939.P4041852366082942558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084132 n - A138041 (A028310 n).toNat

end

end A085939.P4041852366082942558

namespace A085939

/-- `A084132(n)-A138041(A028310(n))` -/
def P4041852366082942558.Spec : Prop :=
  ∀ n, P4041852366082942558.a n = A085939 n

end A085939

/-!
# A085942: Write digit reversal of n below n. Then a(n) = the sum of the product of digits in the same column.

The programs for A085942, there is no canonical definition to state claims against.
-/

/-! ## A085942.P15558849630246593797

`∑{digits}[n, #²]-A111707(A338827(n))`
-/

namespace A085942.P15558849630246593797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) - A111707 (A338827 n).toNat

end

end A085942.P15558849630246593797

/-! ## A085942.P3092695956126273155

`A003132(n)-A111707(A338827(n))`
-/

namespace A085942.P3092695956126273155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n - A111707 (A338827 n).toNat

end

end A085942.P3092695956126273155

/-! ## A085942.P13874353329447397439

`∑{digits}[n, A001105(#)]/2-A111707(A338827(n))`
-/

namespace A085942.P13874353329447397439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2 - (A111707 (A338827 n).toNat : ℚ)

end

end A085942.P13874353329447397439

/-! ## A085942.P2636856146286370178

`A007953(n)²-A069816(n)-A111707(A338827(n))`
-/

namespace A085942.P2636856146286370178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A069816 n - A111707 (A338827 n).toNat

end

end A085942.P2636856146286370178

/-! ## A085942.P17700030596765149302

`A289506(A113581(n))-A064834(n)²`
-/

namespace A085942.P17700030596765149302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A113581 n).toNat - A064834 n ^ 2

end

end A085942.P17700030596765149302

/-! ## A085942.P17259403598089855917

`A289506(A113581(n))-A111707(A338827(n))`
-/

namespace A085942.P17259403598089855917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A113581 n).toNat - A111707 (A338827 n).toNat

end

end A085942.P17259403598089855917

/-! ## A085942.P7250635452271330195

`A257297(n)+A111707(n)`
-/

namespace A085942.P7250635452271330195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + A111707 n

end

end A085942.P7250635452271330195

/-! ## A085942.P368407286867423565

`A257297(n)+A169669(n)`
-/

namespace A085942.P368407286867423565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + A169669 n

end

end A085942.P368407286867423565

/-! ## A085942.P10979643887125699754

`A257297(n)+gcd(A098736(n), A257297(n))`
-/

namespace A085942.P10979643887125699754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + (Int.gcd (A098736 n) (A257297 n) : ℤ)

end

end A085942.P10979643887125699754

/-! ## A085942.P875427305792217164

`A055642(A118759(n))*A169669(n)`
-/

namespace A085942.P875427305792217164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A118759 n).toNat * A169669 n

end

end A085942.P875427305792217164

/-! ## A085942.P14255518841297472715

`A111707(A051022(n))*A262190(n)`
-/

namespace A085942.P14255518841297472715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A051022 n).toNat * A262190 n

end

end A085942.P14255518841297472715

/-! ## A085942.P10170953080644915886

`A111707(10*10*n+n)`
-/

namespace A085942.P10170953080644915886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (10 * (10 * n) + n)

end

end A085942.P10170953080644915886

/-!
# A085945: Number of subsets of {1,2,...,n} with relatively prime elements.

The programs for A085945, the canonical program `A085945.P16038888341819621342` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085945 has offset 1).

The definition of A085945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085945.P16688647800913587748

`2^(n+1)-A109511(n+1)-1`
-/

namespace A085945.P16688647800913587748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A109511 (n + 1) - 1

end

end A085945.P16688647800913587748

namespace A085945

/-- `2^(n+1)-A109511(n+1)-1` -/
def P16688647800913587748.Spec : Prop :=
  ∀ n, P16688647800913587748.a n = A085945 (n + 1)

theorem P16688647800913587748.correct : P16688647800913587748.Spec := by
  intro n
  simp only [A085945, Nat.add_sub_cancel, A085945.P16688647800913587748.a, A085945.P16038888341819621342.f1, A085945.P16038888341819621342.a, A000740, A000740.P14835443835842648949.a, A109511, A109511.P175732434807543170.a, A000225, A000225.P6535533121115206393.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085945

/-! ## A085945.P16038888341819621342

`∑[A000740(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085945

/-- `∑[A000740(n+1)]` -/
def P16038888341819621342.Spec : Prop :=
  ∀ n, P16038888341819621342.a n = A085945 (n + 1)

theorem P16038888341819621342.correct : P16038888341819621342.Spec := by
  intro n
  simp only [A085945, Nat.add_sub_cancel]

end A085945

/-! ## A085945.P8801761058372424539

`∑[A056278(n+1)]+1`
-/

namespace A085945.P8801761058372424539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085945.P8801761058372424539

namespace A085945

/-- `∑[A056278(n+1)]+1` -/
def P8801761058372424539.Spec : Prop :=
  ∀ n, P8801761058372424539.a n = A085945 (n + 1)

end A085945

/-! ## A085945.P14145643728153166842

`∑[A027375(n+1)/2]`
-/

namespace A085945.P14145643728153166842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P14145643728153166842

namespace A085945

/-- `∑[A027375(n+1)/2]` -/
def P14145643728153166842.Spec : Prop :=
  ∀ n, P14145643728153166842.a n = (A085945 (n + 1) : ℚ)

end A085945

/-! ## A085945.P2832334453602438241

`∑[A056267(n+1)/2]+1`
-/

namespace A085945.P2832334453602438241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056267 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085945.P2832334453602438241

namespace A085945

/-- `∑[A056267(n+1)/2]+1` -/
def P2832334453602438241.Spec : Prop :=
  ∀ n, P2832334453602438241.a n = (A085945 (n + 1) : ℚ)

end A085945

/-! ## A085945.P1973496400575997847

`∑[(n+1)*A001037(n+1)/2]`
-/

namespace A085945.P1973496400575997847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A001037 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P1973496400575997847

namespace A085945

/-- `∑[(n+1)*A001037(n+1)/2]` -/
def P1973496400575997847.Spec : Prop :=
  ∀ n, P1973496400575997847.a n = (A085945 (n + 1) : ℚ)

end A085945

/-! ## A085945.P13283738192633527439

`∑[A056278(A233583(n+2))]`
-/

namespace A085945.P13283738192633527439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P13283738192633527439

namespace A085945

/-- `∑[A056278(A233583(n+2))]` -/
def P13283738192633527439.Spec : Prop :=
  ∀ n, P13283738192633527439.a n = A085945 (n + 1)

end A085945

/-! ## A085945.P14004942003125877370

`A126646(n)-A109511(n+1)`
-/

namespace A085945.P14004942003125877370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A109511 (n + 1)

end

end A085945.P14004942003125877370

namespace A085945

/-- `A126646(n)-A109511(n+1)` -/
def P14004942003125877370.Spec : Prop :=
  ∀ n, P14004942003125877370.a n = A085945 (n + 1)

theorem P14004942003125877370.correct : P14004942003125877370.Spec := by
  intro n
  simp only [A085945, Nat.add_sub_cancel, A085945.P14004942003125877370.a, A085945.P16038888341819621342.f1, A085945.P16038888341819621342.a, A000740, A000740.P14835443835842648949.a, A109511, A109511.P175732434807543170.a, A126646, A126646.P3746310572697910447.a, A000225, A000225.P6535533121115206393.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085945

/-! ## A085945.P9366496768538220927

`A000225(n+1)-A109511(n+1)`
-/

namespace A085945.P9366496768538220927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A109511 (n + 1)

end

end A085945.P9366496768538220927

namespace A085945

/-- `A000225(n+1)-A109511(n+1)` -/
def P9366496768538220927.Spec : Prop :=
  ∀ n, P9366496768538220927.a n = A085945 (n + 1)

theorem P9366496768538220927.correct : P9366496768538220927.Spec := by
  intro n
  simp only [A085945, Nat.add_sub_cancel, A085945.P9366496768538220927.a, A085945.P16038888341819621342.f1, A085945.P16038888341819621342.a, A000225, A000225.P6535533121115206393.a, A000740, A000740.P14835443835842648949.a, A109511, A109511.P175732434807543170.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085945

/-! ## A085945.P4008166179647525371

`∑[A006876(n+1)+A006875(n+1)]`
-/

namespace A085945.P4008166179647525371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006876 (n + 1) + A006875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P4008166179647525371

namespace A085945

/-- `∑[A006876(n+1)+A006875(n+1)]` -/
def P4008166179647525371.Spec : Prop :=
  ∀ n, P4008166179647525371.a n = A085945 (n + 1)

theorem P4008166179647525371.correct : P4008166179647525371.Spec := by
  intro n
  simp only [A085945, Nat.add_sub_cancel, A085945.P4008166179647525371.f1, A085945.P4008166179647525371.a, A085945.P16038888341819621342.f1, A085945.P16038888341819621342.a, A000740, A000740.P14835443835842648949.a, A006875, A006875.P14857395006895934659.a, A006876, A006876.P13042802876446333329.f1, A006876.P13042802876446333329.a, A024000, A024000.P8748414335487061084.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, A008683, A008683.P18254306604665478110.a, A034771, A034771.P14136708575511469544.f1, A034771.P14136708575511469544.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A034729, A034729.P14831145742905992677.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085945

/-! ## A085945.P9711827188767545192

`∑{d}[n+1, A008683(#)*A224840((n+1)/#)]`
-/

namespace A085945.P9711827188767545192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A224840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085945.P9711827188767545192

namespace A085945

/-- `∑{d}[n+1, A008683(#)*A224840((n+1)/#)]` -/
def P9711827188767545192.Spec : Prop :=
  ∀ n, P9711827188767545192.a n = A085945 (n + 1)

end A085945

/-! ## A085945.P17714868764128179832

`∑[∑{d}[n+1, A008683(#)*A000079((n+1)/#-1)]]`
-/

namespace A085945.P17714868764128179832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A000079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P17714868764128179832

namespace A085945

/-- `∑[∑{d}[n+1, A008683(#)*A000079((n+1)/#-1)]]` -/
def P17714868764128179832.Spec : Prop :=
  ∀ n, P17714868764128179832.a n = A085945 (n + 1)

end A085945

/-! ## A085945.P16516230807478293548

`∑[∑{d}[n+1, A008683(#)*A000225((n+1)/#-1)]]+1`
-/

namespace A085945.P16516230807478293548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A000225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085945.P16516230807478293548

namespace A085945

/-- `∑[∑{d}[n+1, A008683(#)*A000225((n+1)/#-1)]]+1` -/
def P16516230807478293548.Spec : Prop :=
  ∀ n, P16516230807478293548.a n = A085945 (n + 1)

end A085945

/-! ## A085945.P6839906642268660447

`ceil(A119917(n+1)/2)`
-/

namespace A085945.P6839906642268660447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119917 (n + 1) : ℚ) / 2⌉

end

end A085945.P6839906642268660447

namespace A085945

/-- `ceil(A119917(n+1)/2)` -/
def P6839906642268660447.Spec : Prop :=
  ∀ n, P6839906642268660447.a n = A085945 (n + 1)

end A085945

/-! ## A085945.P8338780823726984506

`(∑[A038199(n+1)]+1)/2`
-/

namespace A085945.P8338780823726984506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A085945.P8338780823726984506

namespace A085945

/-- `(∑[A038199(n+1)]+1)/2` -/
def P8338780823726984506.Spec : Prop :=
  ∀ n, P8338780823726984506.a n = (A085945 (n + 1) : ℚ)

end A085945

/-! ## A085945.P16241929036238710264

`∑[A056274(n+1)-A056279(n+1)]`
-/

namespace A085945.P16241929036238710264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056274 (n + 1) - A056279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P16241929036238710264

namespace A085945

/-- `∑[A056274(n+1)-A056279(n+1)]` -/
def P16241929036238710264.Spec : Prop :=
  ∀ n, P16241929036238710264.a n = A085945 (n + 1)

theorem P16241929036238710264.correct : P16241929036238710264.Spec := by
  intro n
  simp only [A085945, Nat.add_sub_cancel, A085945.P16241929036238710264.f1, A085945.P16241929036238710264.a, A085945.P16038888341819621342.f1, A085945.P16038888341819621342.a, A000740, A000740.P14835443835842648949.a, A056274, A056274.P6989764788007675043.a, A056279, A056279.P11750011524147072327.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A034741, A034741.P4749384178526345619.f1, A034741.P4749384178526345619.a, A008683, A008683.P18254306604665478110.a, A034754, A034754.P850414589168933379.f1, A034754.P850414589168933379.a, A055615, A055615.P8993130195977213181.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A034753, A034753.P12853043952854742106.f1, A034753.P12853043952854742106.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085945

/-! ## A085945.P4727426386930058924

`∑[A216954(∑[n+1])]`
-/

namespace A085945.P4727426386930058924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216954 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085945.P4727426386930058924

namespace A085945

/-- `∑[A216954(∑[n+1])]` -/
def P4727426386930058924.Spec : Prop :=
  ∀ n, P4727426386930058924.a n = A085945 (n + 1)

end A085945

/-!
# A085947: a(1) = 1, a(2) = 2 and a(n) = smallest number not included earlier that divides the sum of the two previous terms.

The programs for A085947, there is no canonical definition to state claims against.
-/

/-! ## A085947.P4576803154673883987

`A332301(n+1)%121`
-/

namespace A085947.P4576803154673883987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332301 (n + 1)) 121

end

end A085947.P4576803154673883987

/-! ## A085947.P7095056792265196701

`A328444(n+1)%232`
-/

namespace A085947.P7095056792265196701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328444 (n + 1)) 232

end

end A085947.P7095056792265196701

/-! ## A085947.P8380749787770099005

`A332301(comp[((2*n+1)²-a(n-1))*and(1, n)])` with `a(0)=49`
-/

namespace A085947.P8380749787770099005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  (((2 * n + 1) ^ 2 : ℤ) - f1 (n - 1)) * (Nat.land 1 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332301 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A085947.P8380749787770099005

/-! ## A085947.P3261736263562856918

`A328444(A044923(n+1))`
-/

namespace A085947.P3261736263562856918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328444 (A044923 (n + 1)).toNat

end

end A085947.P3261736263562856918

/-! ## A085947.P8954892454446293024

`A089247(A328444(n+1))`
-/

namespace A085947.P8954892454446293024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A328444 (n + 1)).toNat

end

end A085947.P8954892454446293024

/-!
# A085948: Total number of elements in all subsets of {1,2,..,n} with relatively prime elements.

The programs for A085948, the canonical program `A085948.P15445142068769246347` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085948 has offset 1).

The definition of A085948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085948.P15445142068769246347

`∑[A085411(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A085948

/-- `∑[A085411(n+1)]` -/
def P15445142068769246347.Spec : Prop :=
  ∀ n, P15445142068769246347.a n = A085948 (n + 1)

theorem P15445142068769246347.correct : P15445142068769246347.Spec := by
  intro n
  simp only [A085948, Nat.add_sub_cancel]

end A085948

/-! ## A085948.P14818676692572496614

`∑[record[A085411(A038568(n))]]`
-/

namespace A085948.P14818676692572496614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085411 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085948.P14818676692572496614

namespace A085948

/-- `∑[record[A085411(A038568(n))]]` -/
def P14818676692572496614.Spec : Prop :=
  ∀ n, P14818676692572496614.a n = A085948 (n + 1)

end A085948

/-! ## A085948.P4031151332060710007

`∑[record[A085411(A065648(n))]]`
-/

namespace A085948.P4031151332060710007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085411 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085948.P4031151332060710007

namespace A085948

/-- `∑[record[A085411(A065648(n))]]` -/
def P4031151332060710007.Spec : Prop :=
  ∀ n, P4031151332060710007.a n = A085948 (n + 1)

end A085948

/-! ## A085948.P15355239353145304750

`∑[record[A085411(A117910(n))]]`
-/

namespace A085948.P15355239353145304750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085411 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085948.P15355239353145304750

namespace A085948

/-- `∑[record[A085411(A117910(n))]]` -/
def P15355239353145304750.Spec : Prop :=
  ∀ n, P15355239353145304750.a n = A085948 (n + 1)

end A085948

/-! ## A085948.P5156411792794999870

`A085411(n+1)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A085948.P5156411792794999870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085411 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A085948.P5156411792794999870

namespace A085948

/-- `A085411(n+1)+a(n-A057427(n))` -/
def P5156411792794999870.Spec : Prop :=
  ∀ n, P5156411792794999870.a n = A085948 (n + 1)

end A085948

/-!
# A085949: Smallest multiple of prime(n) of the form r*prime(n-1) + s*prime(n+1) with r and s positive integers.

The programs for A085949, the canonical program `A085949.P14222808602695038026` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085949 has offset 2).

The definition of A085949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085949.P14222808602695038026

`A109805(n+1)/A057467(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085949

/-- `A109805(n+1)/A057467(n+1)` -/
def P14222808602695038026.Spec : Prop :=
  ∀ n, P14222808602695038026.a n = (A085949 (n + 2) : ℚ)

end A085949

/-! ## A085949.P11833673478782604413

`A109805(n+1)/gcd(A083551(n+1), A109805(n+1))`
-/

namespace A085949.P11833673478782604413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109805 (n + 1) : ℚ) / (Int.gcd (A083551 (n + 1)) (A109805 (n + 1)) : ℚ)

end

end A085949.P11833673478782604413

namespace A085949

/-- `A109805(n+1)/gcd(A083551(n+1), A109805(n+1))` -/
def P11833673478782604413.Spec : Prop :=
  ∀ n, P11833673478782604413.a n = (A085949 (n + 2) : ℚ)

end A085949

/-! ## A085949.P17790067124587822587

`lcm(A001223(n+1), A109805(n+1))/A001223(n+1)`
-/

namespace A085949.P17790067124587822587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001223 (n + 1)) (A109805 (n + 1)) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A085949.P17790067124587822587

namespace A085949

/-- `lcm(A001223(n+1), A109805(n+1))/A001223(n+1)` -/
def P17790067124587822587.Spec : Prop :=
  ∀ n, P17790067124587822587.a n = (A085949 (n + 2) : ℚ)

end A085949

/-! ## A085949.P5660116900656247839

`Δ[A006094(n+1)]/A057467(n+1)`
-/

namespace A085949.P5660116900656247839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057467 (n + 1) : ℚ)

end

end A085949.P5660116900656247839

namespace A085949

/-- `Δ[A006094(n+1)]/A057467(n+1)` -/
def P5660116900656247839.Spec : Prop :=
  ∀ n, P5660116900656247839.a n = (A085949 (n + 2) : ℚ)

end A085949

/-! ## A085949.P6440139332242794392

`Δ[A023515(n+2)]/A057467(n+1)`
-/

namespace A085949.P6440139332242794392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057467 (n + 1) : ℚ)

end

end A085949.P6440139332242794392

namespace A085949

/-- `Δ[A023515(n+2)]/A057467(n+1)` -/
def P6440139332242794392.Spec : Prop :=
  ∀ n, P6440139332242794392.a n = (A085949 (n + 2) : ℚ)

end A085949

/-! ## A085949.P17030391421517804680

`(A274225(n+1)+A272863(n+1))*A000040(n+2)`
-/

namespace A085949.P17030391421517804680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274225 (n + 1) + A272863 (n + 1)) * A000040 (n + 2)

end

end A085949.P17030391421517804680

namespace A085949

/-- `(A274225(n+1)+A272863(n+1))*A000040(n+2)` -/
def P17030391421517804680.Spec : Prop :=
  ∀ n, P17030391421517804680.a n = A085949 (n + 2)

end A085949

/-! ## A085949.P2465018924802195690

`Δ[A124669(n+1)]/A057467(n+1)`
-/

namespace A085949.P2465018924802195690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057467 (n + 1) : ℚ)

end

end A085949.P2465018924802195690

namespace A085949

/-- `Δ[A124669(n+1)]/A057467(n+1)` -/
def P2465018924802195690.Spec : Prop :=
  ∀ n, P2465018924802195690.a n = (A085949 (n + 2) : ℚ)

end A085949

/-!
# A085950: Smallest multiple of prime(n) of the form r*prime(n-1) + s*prime(n-2) with r and s positive integers.

The programs for A085950, there is no canonical definition to state claims against.
-/

/-! ## A085950.P14684744270354352741

`A030059(n+3)*A057514(A143382(n))`
-/

namespace A085950.P14684744270354352741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 3) * A057514 (A143382 n).toNat

end

end A085950.P14684744270354352741

/-! ## A085950.P12853136521803593897

`A000040(n+3)*A376181(A271269(n+1))`
-/

namespace A085950.P12853136521803593897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A376181 (A271269 (n + 1)).toNat

end

end A085950.P12853136521803593897

/-! ## A085950.P13715787355782573296

`A000040(n+3)*A286574(A204520(2*(n+2)))`
-/

namespace A085950.P13715787355782573296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A286574 (A204520 (2 * (n + 2))).toNat

end

end A085950.P13715787355782573296

/-!
# A085952: First n-digit number that occurs in the sequence A085951.

The programs for A085952, the canonical program `A085952.P1734848134221096568` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085952 has offset 0).

The definition of A085952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085952.P1734848134221096568

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=91, a(2)=901`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085952

/-- `11*a(n-1)-10*a(n-2)` -/
def P1734848134221096568.Spec : Prop :=
  ∀ n, P1734848134221096568.a n = A085952 n

theorem P1734848134221096568.correct : P1734848134221096568.Spec := by
  intro n
  simp only [A085952]

end A085952

/-! ## A085952.P16960529761639372552

`and(-n, Δ[10^n])+1`
-/

namespace A085952.P16960529761639372552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A085952.P16960529761639372552

namespace A085952

/-- `and(-n, Δ[10^n])+1` -/
def P16960529761639372552.Spec : Prop :=
  ∀ n, P16960529761639372552.a n = A085952 n

end A085952

/-! ## A085952.P3444651208154915112

`9*and(10^n, -2)+1`
-/

namespace A085952.P3444651208154915112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * Int.land (10 ^ n : ℤ) (-2) + 1

end

end A085952.P3444651208154915112

namespace A085952

/-- `9*and(10^n, -2)+1` -/
def P3444651208154915112.Spec : Prop :=
  ∀ n, P3444651208154915112.a n = A085952 n

end A085952

/-! ## A085952.P1160546931953623711

`10*a(n-1)-9` with `a(0)=1, a(1)=91`
-/

namespace A085952.P1160546931953623711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 91] fun n a =>
  10 * a (n - 1) - 9

end

end A085952.P1160546931953623711

namespace A085952

/-- `10*a(n-1)-9` -/
def P1160546931953623711.Spec : Prop :=
  ∀ n, P1160546931953623711.a n = A085952 n

end A085952

/-! ## A085952.P17749884747393236602

`lcm(9, and(-2, 10^n))+1`
-/

namespace A085952.P17749884747393236602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (Int.land (-2) (10 ^ n : ℤ)) + 1

end

end A085952.P17749884747393236602

namespace A085952

/-- `lcm(9, and(-2, 10^n))+1` -/
def P17749884747393236602.Spec : Prop :=
  ∀ n, (P17749884747393236602.a n : ℤ) = A085952 n

end A085952

/-! ## A085952.P13399295423303739375

`10*Δ[ceil(10^(n-1))]+1`
-/

namespace A085952.P13399295423303739375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (f1 (n + 1) - f1 n) + 1

end

end A085952.P13399295423303739375

namespace A085952

/-- `10*Δ[ceil(10^(n-1))]+1` -/
def P13399295423303739375.Spec : Prop :=
  ∀ n, P13399295423303739375.a n = A085952 n

end A085952

/-! ## A085952.P11109058557562233893

`record[Δ[A286508(n+1)]+1]`
-/

namespace A085952.P11109058557562233893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085952.P11109058557562233893

namespace A085952

/-- `record[Δ[A286508(n+1)]+1]` -/
def P11109058557562233893.Spec : Prop :=
  ∀ n, P11109058557562233893.a n = A085952 n

end A085952

/-! ## A085952.P8495752942222892404

`(9*A011557(n)+1)^ceil(abs(sin(n)))`
-/

namespace A085952.P8495752942222892404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A011557 n + 1 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A085952.P8495752942222892404

namespace A085952

/-- `(9*A011557(n)+1)^ceil(abs(sin(n)))` -/
def P8495752942222892404.Spec : Prop :=
  ∀ n, P8495752942222892404.a n = (A085952 n : ℚ)

end A085952

/-! ## A085952.P1236111411153364717

`Δ[or(1, 10^n)+n]^ceil(sin(n)²)`
-/

namespace A085952.P1236111411153364717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n) + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A085952.P1236111411153364717

namespace A085952

/-- `Δ[or(1, 10^n)+n]^ceil(sin(n)²)` -/
def P1236111411153364717.Spec : Prop :=
  ∀ n, P1236111411153364717.a n = (A085952 n : ℚ)

end A085952

/-! ## A085952.P2576313742567453672

`Δ[A081552(n+1)]^ceil(sin(n)²)`
-/

namespace A085952.P2576313742567453672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081552 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A085952.P2576313742567453672

namespace A085952

/-- `Δ[A081552(n+1)]^ceil(sin(n)²)` -/
def P2576313742567453672.Spec : Prop :=
  ∀ n, P2576313742567453672.a n = (A085952 n : ℚ)

end A085952

/-!
# A085953: a(1) = 2, a(n+1) = the smallest multiple of prime(n+1) beginning with a(n).

The programs for A085953, there is no canonical definition to state claims against.
-/

/-! ## A085953.P7149706023165823997

`A383346(A355868(n))`
-/

namespace A085953.P7149706023165823997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383346 (A355868 n).toNat

end

end A085953.P7149706023165823997

/-!
# A085957: Primes p such that 6p + 1 and (p-1)/6 are primes.

The programs for A085957, the canonical program `A085957.P7417950753382749165` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085957 has offset 1).

The definition of A085957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085957.P7417950753382749165

`6*A023256(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085957

/-- `6*A023256(n+1)+1` -/
def P7417950753382749165.Spec : Prop :=
  ∀ n, P7417950753382749165.a n = A085957 (n + 1)

theorem P7417950753382749165.correct : P7417950753382749165.Spec := by
  intro n
  simp only [A085957, Nat.add_sub_cancel]

end A085957

/-! ## A085957.P3667992371533369469

`6*p?[A263309(n+1)]+1`
-/

namespace A085957.P3667992371533369469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A085957.P3667992371533369469

namespace A085957

/-- `6*p?[A263309(n+1)]+1` -/
def P3667992371533369469.Spec : Prop :=
  ∀ n, P3667992371533369469.a n = A085957 (n + 1)

end A085957

/-! ## A085957.P255562381763334859

`∩[A007693(n+1), A051644(n+1)]`
-/

namespace A085957.P255562381763334859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085957.P255562381763334859

namespace A085957

/-- `∩[A007693(n+1), A051644(n+1)]` -/
def P255562381763334859.Spec : Prop :=
  ∀ n, (P255562381763334859.a n : ℤ) = A085957 (n + 1)

end A085957

/-! ## A085957.P16987682352924161147

`A016921(A023256(n+1))`
-/

namespace A085957.P16987682352924161147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A023256 (n + 1)).toNat

end

end A085957.P16987682352924161147

namespace A085957

/-- `A016921(A023256(n+1))` -/
def P16987682352924161147.Spec : Prop :=
  ∀ n, P16987682352924161147.a n = A085957 (n + 1)

end A085957

/-! ## A085957.P1832405210189828011

`A016921(p?[A263309(n+1)])`
-/

namespace A085957.P1832405210189828011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A085957.P1832405210189828011

namespace A085957

/-- `A016921(p?[A263309(n+1)])` -/
def P1832405210189828011.Spec : Prop :=
  ∀ n, P1832405210189828011.a n = A085957 (n + 1)

end A085957

/-!
# A085958: Primes p such that 8p +1 and (p-1)/8 are primes.

The programs for A085958, there is no canonical definition to state claims against.
-/

/-! ## A085958.P8555473953414843236

`8*A023260(n+1)+1`
-/

namespace A085958.P8555473953414843236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023260 (n + 1) + 1

end

end A085958.P8555473953414843236

/-! ## A085958.P9951530004174323876

`∩[A023228(n+1), A158014(n+1)]`
-/

namespace A085958.P9951530004174323876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085958.P9951530004174323876

/-! ## A085958.P16436101571547091037

`A070846(2*A023260(n+1))`
-/

namespace A085958.P16436101571547091037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (2 * A023260 (n + 1)).toNat

end

end A085958.P16436101571547091037

/-! ## A085958.P7856831885769038710

`A070846(A023260(n+1)+A023260(n+1))`
-/

namespace A085958.P7856831885769038710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A023260 (n + 1) + A023260 (n + 1)).toNat

end

end A085958.P7856831885769038710

/-! ## A085958.P1126538577459698326

`A151800(8*A023260(n+1))`
-/

namespace A085958.P1126538577459698326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (8 * A023260 (n + 1)).toNat

end

end A085958.P1126538577459698326

/-!
# A085959: Multiples of 37.

The programs for A085959, the canonical program `A085959.P3841702424596331541` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085959 has offset 0).

The definition of A085959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085959.P3841702424596331541

`37*n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085959

/-- `37*n` -/
def P3841702424596331541.Spec : Prop :=
  ∀ n, (P3841702424596331541.a n : ℤ) = A085959 n

theorem P3841702424596331541.correct : P3841702424596331541.Spec := by
  intro n
  simp only [A085959]

end A085959

/-!
# A085960: Size of the largest code of length 4 and minimum distance 3 over an alphabet of size n. This is usually denoted by A_{n}(4,3).

The programs for A085960, the canonical program `A085960.P9607881349891133100` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085960 has offset 1).

The definition of A085960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085960.P9607881349891133100

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=16, a(4)=25, a(5)=34, a(6)=49, a(7)=64, a(8)=81`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085960

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9607881349891133100.Spec : Prop :=
  ∀ n, P9607881349891133100.a n = A085960 (n + 1)

theorem P9607881349891133100.correct : P9607881349891133100.Spec := by
  intro n
  simp only [A085960, Nat.add_sub_cancel]

end A085960

/-! ## A085960.P12237174462242174414

`(n+1)²-A192011(A204898(C(6, n)+1))`
-/

namespace A085960.P12237174462242174414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A192011 (A204898 (Nat.choose 6 n + 1)).toNat

end

end A085960.P12237174462242174414

namespace A085960

/-- `(n+1)²-A192011(A204898(C(6, n)+1))` -/
def P12237174462242174414.Spec : Prop :=
  ∀ n, P12237174462242174414.a n = A085960 (n + 1)

end A085960

/-! ## A085960.P8756472973797627203

`A248808(A198982(C(6, n)+1)+1)+(n+1)²`
-/

namespace A085960.P8756472973797627203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248808 (A198982 (Nat.choose 6 n + 1) + 1).toNat + ((n + 1) ^ 2 : ℤ)

end

end A085960.P8756472973797627203

namespace A085960

/-- `A248808(A198982(C(6, n)+1)+1)+(n+1)²` -/
def P8756472973797627203.Spec : Prop :=
  ∀ n, P8756472973797627203.a n = A085960 (n + 1)

end A085960

/-! ## A085960.P739768777075516843

`(n+1)²-and(2, A220138(n+3))`
-/

namespace A085960.P739768777075516843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - Int.land 2 (A220138 (n + 3))

end

end A085960.P739768777075516843

namespace A085960

/-- `(n+1)²-and(2, A220138(n+3))` -/
def P739768777075516843.Spec : Prop :=
  ∀ n, P739768777075516843.a n = A085960 (n + 1)

end A085960

/-! ## A085960.P12122120107512636622

`(n+1)²-A093050(C(3, A246211(n)))`
-/

namespace A085960.P12122120107512636622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A093050 (Nat.choose 3 (A246211 n).toNat)

end

end A085960.P12122120107512636622

namespace A085960

/-- `(n+1)²-A093050(C(3, A246211(n)))` -/
def P12122120107512636622.Spec : Prop :=
  ∀ n, P12122120107512636622.a n = A085960 (n + 1)

end A085960

/-! ## A085960.P2445276386407772966

`(n+1)²-and(2, ∑[A233174(n+1)])`
-/

namespace A085960.P2445276386407772966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085960.P2445276386407772966

namespace A085960

/-- `(n+1)²-and(2, ∑[A233174(n+1)])` -/
def P2445276386407772966.Spec : Prop :=
  ∀ n, P2445276386407772966.a n = A085960 (n + 1)

end A085960

/-!
# A085961: Sigma of the least number for which sigma is divisible by n (where sigma is the sum of the divisors of n, A000203(n)).

The programs for A085961, there is no canonical definition to state claims against.
-/

/-! ## A085961.P15081726978222851891

`A000203(A070982(n+1))`
-/

namespace A085961.P15081726978222851891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A070982 (n + 1)).toNat

end

end A085961.P15081726978222851891

/-! ## A085961.P1822281527656289092

`A059841(4*n)+A039653(A070982(n+1))`
-/

namespace A085961.P1822281527656289092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (4 * n) + A039653 (A070982 (n + 1)).toNat

end

end A085961.P1822281527656289092

/-! ## A085961.P12555197072789933249

`A039653(A070982(n+1))-A190611(gcd(n, n+1))`
-/

namespace A085961.P12555197072789933249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A070982 (n + 1)).toNat - A190611 (Nat.gcd n (n + 1))

end

end A085961.P12555197072789933249

/-! ## A085961.P6691271144411708015

`A039653(A070982(n+1))+abs((-1)^A002331(n+1))`
-/

namespace A085961.P6691271144411708015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (A070982 (n + 1)).toNat : ℚ) + |(-1 : ℚ) ^ (A002331 (n + 1) : ℤ)|

end

end A085961.P6691271144411708015

/-! ## A085961.P10417264923280003185

`A039653(A070982(n+1))+A033879(A001316(n))`
-/

namespace A085961.P10417264923280003185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A070982 (n + 1)).toNat + A033879 (A001316 n).toNat

end

end A085961.P10417264923280003185

/-! ## A085961.P12959147008601184487

`A200219(A079068(n+1))+A039653(A070982(n+1))`
-/

namespace A085961.P12959147008601184487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (A079068 (n + 1)).toNat + A039653 (A070982 (n + 1)).toNat

end

end A085961.P12959147008601184487

/-! ## A085961.P5437576646632948440

`A039653(A070982(n+1))-A008683(A064632(n+2))`
-/

namespace A085961.P5437576646632948440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A070982 (n + 1)).toNat - A008683 (A064632 (n + 2)).toNat

end

end A085961.P5437576646632948440

/-! ## A085961.P13145371719061377126

`(n+1)*A283495(n+1)`
-/

namespace A085961.P13145371719061377126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283495 (n + 1)

end

end A085961.P13145371719061377126

/-!
# A085962: Numerators of Farey fractions with prime numerators and denominators.

The programs for A085962, there is no canonical definition to state claims against.
-/

/-! ## A085962.P17305622777363988809

`p?[A065855(n+1)%A323086(n+1)]`
-/

namespace A085962.P17305622777363988809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065855 (n + 1)) (A323086 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085962.P17305622777363988809

/-! ## A085962.P7949573273192704340

`A006530(A221877(n+2)^A327981(3*n+1))`
-/

namespace A085962.P7949573273192704340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A221877 (n + 2) : ℚ) ^ (A327981 (3 * n + 1) : ℤ))).toNat

end

end A085962.P7949573273192704340

/-! ## A085962.P9700614971179009246

`A006530(2^n*A135227(n+1))`
-/

namespace A085962.P9700614971179009246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 ^ n : ℤ) * A135227 (n + 1)).toNat

end

end A085962.P9700614971179009246

/-!
# A085970: Number of integers ranging from 2 to n that are not prime-powers.

The programs for A085970, the canonical program `A085970.P2562174614589588878` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085970 has offset 1).

The definition of A085970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085972, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085970.P6905868734935185399

`n+1-A065515(n+1)`
-/

namespace A085970.P6905868734935185399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A065515 (n + 1)

end

end A085970.P6905868734935185399

namespace A085970

/-- `n+1-A065515(n+1)` -/
def P6905868734935185399.Spec : Prop :=
  ∀ n, P6905868734935185399.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P2562174614589588878

`A085972(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085970

/-- `A085972(n+1)-A000720(n+1)` -/
def P2562174614589588878.Spec : Prop :=
  ∀ n, P2562174614589588878.a n = A085970 (n + 1)

theorem P2562174614589588878.correct : P2562174614589588878.Spec := by
  intro n
  simp only [A085970, Nat.add_sub_cancel]

end A085970

/-! ## A085970.P3953279382173462328

`∑[A143731(n+1)]`
-/

namespace A085970.P3953279382173462328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P3953279382173462328

namespace A085970

/-- `∑[A143731(n+1)]` -/
def P3953279382173462328.Spec : Prop :=
  ∀ n, P3953279382173462328.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P6172485558386178626

`A356068(n+1)-1`
-/

namespace A085970.P6172485558386178626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (n + 1) - 1

end

end A085970.P6172485558386178626

namespace A085970

/-- `A356068(n+1)-1` -/
def P6172485558386178626.Spec : Prop :=
  ∀ n, P6172485558386178626.a n = A085970 (n + 1)

theorem P6172485558386178626.correct : P6172485558386178626.Spec := by
  intro n
  simp only [A085970, Nat.add_sub_cancel, A085970.P6172485558386178626.a, A085970.P2562174614589588878.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A085972, A085972.P16995804362626951935.f2, A085972.P16995804362626951935.f1, A085972.P16995804362626951935.a, A356068, A356068.P11051328716831346612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085970

/-! ## A085970.P7258808604566625429

`n-A025528(n+1)`
-/

namespace A085970.P7258808604566625429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025528 (n + 1)

end

end A085970.P7258808604566625429

namespace A085970

/-- `n-A025528(n+1)` -/
def P7258808604566625429.Spec : Prop :=
  ∀ n, P7258808604566625429.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P1662107351530646074

`∑[abs(A079872(n+1))]`
-/

namespace A085970.P1662107351530646074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079872 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P1662107351530646074

namespace A085970

/-- `∑[abs(A079872(n+1))]` -/
def P1662107351530646074.Spec : Prop :=
  ∀ n, P1662107351530646074.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P2877637029232260117

`∑[char[A080765(n+1)]]`
-/

namespace A085970.P2877637029232260117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P2877637029232260117

namespace A085970

/-- `∑[char[A080765(n+1)]]` -/
def P2877637029232260117.Spec : Prop :=
  ∀ n, (P2877637029232260117.a n : ℤ) = A085970 (n + 1)

end A085970

/-! ## A085970.P4625229937409989904

`∑[1-A010055(n+1)]`
-/

namespace A085970.P4625229937409989904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P4625229937409989904

namespace A085970

/-- `∑[1-A010055(n+1)]` -/
def P4625229937409989904.Spec : Prop :=
  ∀ n, P4625229937409989904.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P9537132712919830920

`n-∑[A069513(n+1)]`
-/

namespace A085970.P9537132712919830920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P9537132712919830920

namespace A085970

/-- `n-∑[A069513(n+1)]` -/
def P9537132712919830920.Spec : Prop :=
  ∀ n, P9537132712919830920.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P16199949325517702831

`∑[floor(atan(A001221(n+1)))]`
-/

namespace A085970.P16199949325517702831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001221 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P16199949325517702831

namespace A085970

/-- `∑[floor(atan(A001221(n+1)))]` -/
def P16199949325517702831.Spec : Prop :=
  ∀ n, P16199949325517702831.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P17924405345623289452

`∑[1-char[A181062(n+1)]]`
-/

namespace A085970.P17924405345623289452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P17924405345623289452

namespace A085970

/-- `∑[1-char[A181062(n+1)]]` -/
def P17924405345623289452.Spec : Prop :=
  ∀ n, P17924405345623289452.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P11762572772806907202

`∑[1-A354924(2*(n+1))]`
-/

namespace A085970.P11762572772806907202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354924 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P11762572772806907202

namespace A085970

/-- `∑[1-A354924(2*(n+1))]` -/
def P11762572772806907202.Spec : Prop :=
  ∀ n, P11762572772806907202.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P9720157722179195847

`∑[A074591(n+1)/(n+1)]`
-/

namespace A085970.P9720157722179195847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074591 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P9720157722179195847

namespace A085970

/-- `∑[A074591(n+1)/(n+1)]` -/
def P9720157722179195847.Spec : Prop :=
  ∀ n, P9720157722179195847.a n = (A085970 (n + 1) : ℚ)

end A085970

/-! ## A085970.P4979739675706618087

`∑[A001221(A007875(n+1))]`
-/

namespace A085970.P4979739675706618087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007875 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P4979739675706618087

namespace A085970

/-- `∑[A001221(A007875(n+1))]` -/
def P4979739675706618087.Spec : Prop :=
  ∀ n, P4979739675706618087.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P4951109973349577243

`∑[A001222(A076820(n+1))]`
-/

namespace A085970.P4951109973349577243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P4951109973349577243

namespace A085970

/-- `∑[A001222(A076820(n+1))]` -/
def P4951109973349577243.Spec : Prop :=
  ∀ n, P4951109973349577243.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P5197216065876674120

`∑[A001222(A119288(n+1))]`
-/

namespace A085970.P5197216065876674120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A119288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P5197216065876674120

namespace A085970

/-- `∑[A001222(A119288(n+1))]` -/
def P5197216065876674120.Spec : Prop :=
  ∀ n, P5197216065876674120.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P11218477661985887195

`∑[A225541(A328830(n+1))]`
-/

namespace A085970.P11218477661985887195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A328830 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085970.P11218477661985887195

namespace A085970

/-- `∑[A225541(A328830(n+1))]` -/
def P11218477661985887195.Spec : Prop :=
  ∀ n, P11218477661985887195.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P15915874064455108457

`A075795(n+1)-A025532(n)`
-/

namespace A085970.P15915874064455108457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075795 (n + 1) - A025532 n

end

end A085970.P15915874064455108457

namespace A085970

/-- `A075795(n+1)-A025532(n)` -/
def P15915874064455108457.Spec : Prop :=
  ∀ n, P15915874064455108457.a n = A085970 (n + 1)

end A085970

/-! ## A085970.P7144525647576144270

`∑[A010057(A014963(n+1))]-1`
-/

namespace A085970.P7144525647576144270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085970.P7144525647576144270

namespace A085970

/-- `∑[A010057(A014963(n+1))]-1` -/
def P7144525647576144270.Spec : Prop :=
  ∀ n, P7144525647576144270.a n = A085970 (n + 1)

end A085970

/-!
# A085971: Union of primes and numbers that are not prime powers (A000040, A024619).

The programs for A085971, the canonical program `A085971.P4688826160104707978` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085971 has offset 1).

The definition of A085971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085971.P10983676761835973560

`comp[A249435(n+1)]+1`
-/

namespace A085971.P10983676761835973560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A085971.P10983676761835973560

namespace A085971

/-- `comp[A249435(n+1)]+1` -/
def P10983676761835973560.Spec : Prop :=
  ∀ n, (P10983676761835973560.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P612293801418314039

`lt[1, A304649(n+1)]+1`
-/

namespace A085971.P612293801418314039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A085971.P612293801418314039

namespace A085971

/-- `lt[1, A304649(n+1)]+1` -/
def P612293801418314039.Spec : Prop :=
  ∀ n, (P612293801418314039.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P4688826160104707978

`eq[1, A306694(n+2)]+2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085971

/-- `eq[1, A306694(n+2)]+2` -/
def P4688826160104707978.Spec : Prop :=
  ∀ n, (P4688826160104707978.a n : ℤ) = A085971 (n + 1)

theorem P4688826160104707978.correct : P4688826160104707978.Spec := by
  intro n
  simp only [A085971, Nat.add_sub_cancel]

end A085971

/-! ## A085971.P17116215163595003938

`lt[A268340(n+2), 1]+2`
-/

namespace A085971.P17116215163595003938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A085971.P17116215163595003938

namespace A085971

/-- `lt[A268340(n+2), 1]+2` -/
def P17116215163595003938.Spec : Prop :=
  ∀ n, (P17116215163595003938.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P14392962694420604998

`lt[A100995(n+2), 2]+2`
-/

namespace A085971.P14392962694420604998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A085971.P14392962694420604998

namespace A085971

/-- `lt[A100995(n+2), 2]+2` -/
def P14392962694420604998.Spec : Prop :=
  ∀ n, (P14392962694420604998.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P3002535111456095023

`comp[A025475(n+1)-1]+1`
-/

namespace A085971.P3002535111456095023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A085971.P3002535111456095023

namespace A085971

/-- `comp[A025475(n+1)-1]+1` -/
def P3002535111456095023.Spec : Prop :=
  ∀ n, (P3002535111456095023.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P17296822046271752224

`comp[n*A268340(n+1)]+1`
-/

namespace A085971.P17296822046271752224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A268340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A085971.P17296822046271752224

namespace A085971

/-- `comp[n*A268340(n+1)]+1` -/
def P17296822046271752224.Spec : Prop :=
  ∀ n, (P17296822046271752224.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P2793064073368040769

`∪[A000040(n+1), A024619(n+1)]`
-/

namespace A085971.P2793064073368040769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085971.P2793064073368040769

namespace A085971

/-- `∪[A000040(n+1), A024619(n+1)]` -/
def P2793064073368040769.Spec : Prop :=
  ∀ n, (P2793064073368040769.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P13488985239694926624

`lt[acot(A008683(n+1)), A001221(n+1)]+1`
-/

namespace A085971.P13488985239694926624
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008683 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A085971.P13488985239694926624

namespace A085971

/-- `lt[acot(A008683(n+1)), A001221(n+1)]+1` -/
def P13488985239694926624.Spec : Prop :=
  ∀ n, (P13488985239694926624.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P4451999892061127467

`comp[A105570(A034699(n+1))-A105570(n)]`
-/

namespace A085971.P4451999892061127467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A034699 (n + 1)).toNat - A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A085971.P4451999892061127467

namespace A085971

/-- `comp[A105570(A034699(n+1))-A105570(n)]` -/
def P4451999892061127467.Spec : Prop :=
  ∀ n, (P4451999892061127467.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P3531838974051116135

`lt[A193056(n+2), 2]+2`
-/

namespace A085971.P3531838974051116135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193056 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A085971.P3531838974051116135

namespace A085971

/-- `lt[A193056(n+2), 2]+2` -/
def P3531838974051116135.Spec : Prop :=
  ∀ n, (P3531838974051116135.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P660240453319421202

`lt[A112526(n+1), A001221(n+1)]+1`
-/

namespace A085971.P660240453319421202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085971.P660240453319421202

namespace A085971

/-- `lt[A112526(n+1), A001221(n+1)]+1` -/
def P660240453319421202.Spec : Prop :=
  ∀ n, (P660240453319421202.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P4058666578702924093

`eq[1, A014963((n+2)/A014963(n+2))]+2`
-/

namespace A085971.P4058666578702924093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A014963 (n + 2) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A085971.P4058666578702924093

namespace A085971

/-- `eq[1, A014963((n+2)/A014963(n+2))]+2` -/
def P4058666578702924093.Spec : Prop :=
  ∀ n, (P4058666578702924093.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P10695076955891324395

`lt[A014963(n+2)%(n+2), A006530(n+2)]+2`
-/

namespace A085971.P10695076955891324395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 2)) (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A085971.P10695076955891324395

namespace A085971

/-- `lt[A014963(n+2)%(n+2), A006530(n+2)]+2` -/
def P10695076955891324395.Spec : Prop :=
  ∀ n, (P10695076955891324395.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P5978599596181158422

`lt[2*n, ∑{p}[n, #²+n]]`
-/

namespace A085971.P5978599596181158422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (p ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085971.P5978599596181158422

namespace A085971

/-- `lt[2*n, ∑{p}[n, #²+n]]` -/
def P5978599596181158422.Spec : Prop :=
  ∀ n, (P5978599596181158422.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P16886006159970474386

`lt[A066882(∑{e}[n, #]), A066882(n)]`
-/

namespace A085971.P16886006159970474386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A085971.P16886006159970474386

namespace A085971

/-- `lt[A066882(∑{e}[n, #]), A066882(n)]` -/
def P16886006159970474386.Spec : Prop :=
  ∀ n, (P16886006159970474386.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P18335555387347791510

`comp[C(A286875(n+1), n)]`
-/

namespace A085971.P18335555387347791510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286875 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A085971.P18335555387347791510

namespace A085971

/-- `comp[C(A286875(n+1), n)]` -/
def P18335555387347791510.Spec : Prop :=
  ∀ n, (P18335555387347791510.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P15874844071270739577

`lt[n, A183103(n+2)]+2`
-/

namespace A085971.P15874844071270739577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183103 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A085971.P15874844071270739577

namespace A085971

/-- `lt[n, A183103(n+2)]+2` -/
def P15874844071270739577.Spec : Prop :=
  ∀ n, (P15874844071270739577.a n : ℤ) = A085971 (n + 1)

end A085971

/-! ## A085971.P717811039339696391

`lt[n, A183105(n+2)]+2`
-/

namespace A085971.P717811039339696391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183105 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A085971.P717811039339696391

namespace A085971

/-- `lt[n, A183105(n+2)]+2` -/
def P717811039339696391.Spec : Prop :=
  ∀ n, (P717811039339696391.a n : ℤ) = A085971 (n + 1)

end A085971

/-!
# A085972: Number of numbers <= n that are primes or not prime powers.

The programs for A085972, the canonical program `A085972.P16995804362626951935` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085972 has offset 1).

The definition of A085972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085972.P16995804362626951935

`n-∑[round(n/∏{p}[n+1, #+n])]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085972

/-- `n-∑[round(n/∏{p}[n+1, #+n])]` -/
def P16995804362626951935.Spec : Prop :=
  ∀ n, P16995804362626951935.a n = A085972 (n + 1)

theorem P16995804362626951935.correct : P16995804362626951935.Spec := by
  intro n
  simp only [A085972, Nat.add_sub_cancel]

end A085972

/-! ## A085972.P6553509498105789175

`n-A069637(n+1)`
-/

namespace A085972.P6553509498105789175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A069637 (n + 1)

end

end A085972.P6553509498105789175

namespace A085972

/-- `n-A069637(n+1)` -/
def P6553509498105789175.Spec : Prop :=
  ∀ n, P6553509498105789175.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P12698665481704197450

`n-∑[A268340(n+1)]`
-/

namespace A085972.P12698665481704197450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085972.P12698665481704197450

namespace A085972

/-- `n-∑[A268340(n+1)]` -/
def P12698665481704197450.Spec : Prop :=
  ∀ n, P12698665481704197450.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P7688171110812410488

`1-A085501(n+1)+n`
-/

namespace A085972.P7688171110812410488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A085501 (n + 1) + (n : ℤ)

end

end A085972.P7688171110812410488

namespace A085972

/-- `1-A085501(n+1)+n` -/
def P7688171110812410488.Spec : Prop :=
  ∀ n, P7688171110812410488.a n = A085972 (n + 1)

theorem P7688171110812410488.correct : P7688171110812410488.Spec := by
  intro n
  simp only [A085972, Nat.add_sub_cancel, A085972.P7688171110812410488.a, A085972.P16995804362626951935.f2, A085972.P16995804362626951935.f1, A085972.P16995804362626951935.a, A085501, A085501.P16148507473406452850.f2, A085501.P16148507473406452850.f1, A085501.P16148507473406452850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085972

/-! ## A085972.P634693509783877737

`∑[1-char[A249435(n+1)]]`
-/

namespace A085972.P634693509783877737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085972.P634693509783877737

namespace A085972

/-- `∑[1-char[A249435(n+1)]]` -/
def P634693509783877737.Spec : Prop :=
  ∀ n, P634693509783877737.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P13598411990552350392

`n-∑[∑{e}[A182936(n+1), #]]`
-/

namespace A085972.P13598411990552350392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085972.P13598411990552350392

namespace A085972

/-- `n-∑[∑{e}[A182936(n+1), #]]` -/
def P13598411990552350392.Spec : Prop :=
  ∀ n, P13598411990552350392.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P8232080244987050331

`n-∑[A069513(A048671(n+1))]`
-/

namespace A085972.P8232080244987050331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085972.P8232080244987050331

namespace A085972

/-- `n-∑[A069513(A048671(n+1))]` -/
def P8232080244987050331.Spec : Prop :=
  ∀ n, P8232080244987050331.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P17970000581919152441

`A085970(n+1)+A000720(n+1)`
-/

namespace A085972.P17970000581919152441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (n + 1) + A000720 (n + 1)

end

end A085972.P17970000581919152441

namespace A085972

/-- `A085970(n+1)+A000720(n+1)` -/
def P17970000581919152441.Spec : Prop :=
  ∀ n, P17970000581919152441.a n = A085972 (n + 1)

theorem P17970000581919152441.correct : P17970000581919152441.Spec := by
  intro n
  simp only [A085972, Nat.add_sub_cancel, A085972.P17970000581919152441.a, A085972.P16995804362626951935.f2, A085972.P16995804362626951935.f1, A085972.P16995804362626951935.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A085970, A085970.P2562174614589588878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085972

/-! ## A085972.P446685966682024268

`∑[A008683(A100994(n+1))²]-1`
-/

namespace A085972.P446685966682024268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A100994 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085972.P446685966682024268

namespace A085972

/-- `∑[A008683(A100994(n+1))²]-1` -/
def P446685966682024268.Spec : Prop :=
  ∀ n, P446685966682024268.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P8770322174181747594

`A000720(n+1)-A025528(n+1)+n`
-/

namespace A085972.P8770322174181747594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A025528 (n + 1) + (n : ℤ)

end

end A085972.P8770322174181747594

namespace A085972

/-- `A000720(n+1)-A025528(n+1)+n` -/
def P8770322174181747594.Spec : Prop :=
  ∀ n, P8770322174181747594.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P13316553609853276300

`A036234(n+1)-A065515(n+1)+n`
-/

namespace A085972.P13316553609853276300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A065515 (n + 1) + (n : ℤ)

end

end A085972.P13316553609853276300

namespace A085972

/-- `A036234(n+1)-A065515(n+1)+n` -/
def P13316553609853276300.Spec : Prop :=
  ∀ n, P13316553609853276300.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P3973771656210117461

`A085970(n+1)-A065855(n+1)+n`
-/

namespace A085972.P3973771656210117461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (n + 1) - A065855 (n + 1) + (n : ℤ)

end

end A085972.P3973771656210117461

namespace A085972

/-- `A085970(n+1)-A065855(n+1)+n` -/
def P3973771656210117461.Spec : Prop :=
  ∀ n, P3973771656210117461.a n = A085972 (n + 1)

theorem P3973771656210117461.correct : P3973771656210117461.Spec := by
  intro n
  simp only [A085972, Nat.add_sub_cancel, A085972.P3973771656210117461.a, A085972.P16995804362626951935.f2, A085972.P16995804362626951935.f1, A085972.P16995804362626951935.a, A065855, A065855.P16805213270251966039.a, A085970, A085970.P2562174614589588878.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A085972

/-! ## A085972.P17450151881206402236

`∑[1-C(A182936(n+1), A008472(n+1))]`
-/

namespace A085972.P17450151881206402236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A182936 (n + 1)).toNat (A008472 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085972.P17450151881206402236

namespace A085972

/-- `∑[1-C(A182936(n+1), A008472(n+1))]` -/
def P17450151881206402236.Spec : Prop :=
  ∀ n, P17450151881206402236.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P8706883885177742647

`n-∑{e}[A045948(n+1), #]`
-/

namespace A085972.P8706883885177742647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A085972.P8706883885177742647

namespace A085972

/-- `n-∑{e}[A045948(n+1), #]` -/
def P8706883885177742647.Spec : Prop :=
  ∀ n, P8706883885177742647.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P3739865115675894525

`n-A001222(A045948(n+1))`
-/

namespace A085972.P3739865115675894525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (A045948 (n + 1)).toNat

end

end A085972.P3739865115675894525

namespace A085972

/-- `n-A001222(A045948(n+1))` -/
def P3739865115675894525.Spec : Prop :=
  ∀ n, P3739865115675894525.a n = A085972 (n + 1)

end A085972

/-! ## A085972.P10860173735843938874

`∑[A294018(A294018(n+1)²+1)]`
-/

namespace A085972.P10860173735843938874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294018 (A294018 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085972.P10860173735843938874

namespace A085972

/-- `∑[A294018(A294018(n+1)²+1)]` -/
def P10860173735843938874.Spec : Prop :=
  ∀ n, P10860173735843938874.a n = A085972 (n + 1)

end A085972

/-!
# A085973: Number of ways a loop can cross two parallel roads 2n times.

The programs for A085973, there is no canonical definition to state claims against.
-/

/-! ## A085973.P11072092291200407446

`A005315(n)+A151878(n)+A077054(n)`
-/

namespace A085973.P11072092291200407446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005315 n + (A151878 n + A077054 n)

end

end A085973.P11072092291200407446

/-! ## A085973.P14261799578566806281

`A005315(n)+A151909(n)+A077054(n)`
-/

namespace A085973.P14261799578566806281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005315 n + (A151909 n + A077054 n)

end

end A085973.P14261799578566806281

/-! ## A085973.P714919496307781639

`A077054(n)+A008828(A000124(abs(1-n)))`
-/

namespace A085973.P714919496307781639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077054 n + A008828 (A000124 |1 - (n : ℤ)|.toNat).toNat

end

end A085973.P714919496307781639

/-! ## A085973.P10971754789343218240

`A077054(n)+A005316(A005408(abs(1-n)))`
-/

namespace A085973.P10971754789343218240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077054 n + A005316 (A005408 |1 - (n : ℤ)|.toNat).toNat

end

end A085973.P10971754789343218240

/-! ## A085973.P4832073430619002979

`A005316(2*n)+A005315(n)+A000007(n)`
-/

namespace A085973.P4832073430619002979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005316 (2 * n) + (A005315 n + A000007 n)

end

end A085973.P4832073430619002979

/-!
# A085974: Number of 0's in the decimal expansion of prime(n).

The programs for A085974, the canonical program `A085974.P6515225893456210534` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085974 has offset 1).

The definition of A085974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085974.P3516093240928228986

`val(A028906(n+1), 10)`
-/

namespace A085974.P3516093240928228986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028906 (n + 1)).toNat 10

end

end A085974.P3516093240928228986

namespace A085974

/-- `val(A028906(n+1), 10)` -/
def P3516093240928228986.Spec : Prop :=
  ∀ n, (P3516093240928228986.a n : ℤ) = A085974 (n + 1)

end A085974

/-! ## A085974.P13631332504627862148

`∑{digits}[A000040(n+1), floor(acot(#))]`
-/

namespace A085974.P13631332504627862148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum

end

end A085974.P13631332504627862148

namespace A085974

/-- `∑{digits}[A000040(n+1), floor(acot(#))]` -/
def P13631332504627862148.Spec : Prop :=
  ∀ n, P13631332504627862148.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P6515225893456210534

`∑{digits}[A000040(n+1), A000007(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085974

/-- `∑{digits}[A000040(n+1), A000007(#)]` -/
def P6515225893456210534.Spec : Prop :=
  ∀ n, P6515225893456210534.a n = A085974 (n + 1)

theorem P6515225893456210534.correct : P6515225893456210534.Spec := by
  intro n
  simp only [A085974, Nat.add_sub_cancel]

end A085974

/-! ## A085974.P11607612228443079389

`∑{digits}[A000040(n+1), A056620(#)]`
-/

namespace A085974.P11607612228443079389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A056620 x).sum

end

end A085974.P11607612228443079389

namespace A085974

/-- `∑{digits}[A000040(n+1), A056620(#)]` -/
def P11607612228443079389.Spec : Prop :=
  ∀ n, P11607612228443079389.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P12804777087527922055

`∑{digits}[A000040(n+1), 2-A036452(#+1)]`
-/

namespace A085974.P12804777087527922055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A036452 (x + 1)).sum

end

end A085974.P12804777087527922055

namespace A085974

/-- `∑{digits}[A000040(n+1), 2-A036452(#+1)]` -/
def P12804777087527922055.Spec : Prop :=
  ∀ n, P12804777087527922055.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P2611178085301495007

`∑{digits}[A000040(n+1), A014669(A000045(#)²)]`
-/

namespace A085974.P2611178085301495007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014669 (A000045 x ^ 2).toNat).sum

end

end A085974.P2611178085301495007

namespace A085974

/-- `∑{digits}[A000040(n+1), A014669(A000045(#)²)]` -/
def P2611178085301495007.Spec : Prop :=
  ∀ n, P2611178085301495007.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P11159752942943177366

`∑{digits}[A008578(n+2), A321448(#)]`
-/

namespace A085974.P11159752942943177366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A321448 x).sum

end

end A085974.P11159752942943177366

namespace A085974

/-- `∑{digits}[A008578(n+2), A321448(#)]` -/
def P11159752942943177366.Spec : Prop :=
  ∀ n, P11159752942943177366.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P4917256542447428401

`A055641(A000040(n+1))`
-/

namespace A085974.P4917256542447428401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000040 (n + 1)).toNat

end

end A085974.P4917256542447428401

namespace A085974

/-- `A055641(A000040(n+1))` -/
def P4917256542447428401.Spec : Prop :=
  ∀ n, P4917256542447428401.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P17538705236164903859

`A055641(A004087(n+1))`
-/

namespace A085974.P17538705236164903859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A004087 (n + 1)).toNat

end

end A085974.P17538705236164903859

namespace A085974

/-- `A055641(A004087(n+1))` -/
def P17538705236164903859.Spec : Prop :=
  ∀ n, P17538705236164903859.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P8269141745589389338

`A055641(A008578(n+2))`
-/

namespace A085974.P8269141745589389338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A008578 (n + 2)).toNat

end

end A085974.P8269141745589389338

namespace A085974

/-- `A055641(A008578(n+2))` -/
def P8269141745589389338.Spec : Prop :=
  ∀ n, P8269141745589389338.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P6290527822581438819

`A055641(record[A006530(n+2)])`
-/

namespace A085974.P6290527822581438819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085974.P6290527822581438819

namespace A085974

/-- `A055641(record[A006530(n+2)])` -/
def P6290527822581438819.Spec : Prop :=
  ∀ n, P6290527822581438819.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P10095460980006484380

`A055641(record[A014963(n+2)])`
-/

namespace A085974.P10095460980006484380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085974.P10095460980006484380

namespace A085974

/-- `A055641(record[A014963(n+2)])` -/
def P10095460980006484380.Spec : Prop :=
  ∀ n, P10095460980006484380.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P8447471010855959234

`A055641(record[A020639(n+2)])`
-/

namespace A085974.P8447471010855959234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085974.P8447471010855959234

namespace A085974

/-- `A055641(record[A020639(n+2)])` -/
def P8447471010855959234.Spec : Prop :=
  ∀ n, P8447471010855959234.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P4508222095596168784

`A055641(A040976(n+1)+2)`
-/

namespace A085974.P4508222095596168784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A040976 (n + 1) + 2).toNat

end

end A085974.P4508222095596168784

namespace A085974

/-- `A055641(A040976(n+1)+2)` -/
def P4508222095596168784.Spec : Prop :=
  ∀ n, P4508222095596168784.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P14627759479373656294

`A055641(record[A000010(n+1)+1])`
-/

namespace A085974.P14627759479373656294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085974.P14627759479373656294

namespace A085974

/-- `A055641(record[A000010(n+1)+1])` -/
def P14627759479373656294.Spec : Prop :=
  ∀ n, P14627759479373656294.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P13261965017377857699

`A055641(eq[1, A001222(n+1)]+1)`
-/

namespace A085974.P13261965017377857699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085974.P13261965017377857699

namespace A085974

/-- `A055641(eq[1, A001222(n+1)]+1)` -/
def P13261965017377857699.Spec : Prop :=
  ∀ n, P13261965017377857699.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P11820687022088357094

`A055641(eq[1, A010051(n+1)]+1)`
-/

namespace A085974.P11820687022088357094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085974.P11820687022088357094

namespace A085974

/-- `A055641(eq[1, A010051(n+1)]+1)` -/
def P11820687022088357094.Spec : Prop :=
  ∀ n, P11820687022088357094.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P6038827060047014156

`A055641(eq[2, A000005(n+1)]+1)`
-/

namespace A085974.P6038827060047014156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085974.P6038827060047014156

namespace A085974

/-- `A055641(eq[2, A000005(n+1)]+1)` -/
def P6038827060047014156.Spec : Prop :=
  ∀ n, P6038827060047014156.a n = A085974 (n + 1)

end A085974

/-! ## A085974.P7448222103215023581

`A055641(eq[2, A284289(2*n)])`
-/

namespace A085974.P7448222103215023581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085974.P7448222103215023581

namespace A085974

/-- `A055641(eq[2, A284289(2*n)])` -/
def P7448222103215023581.Spec : Prop :=
  ∀ n, P7448222103215023581.a n = A085974 (n + 1)

end A085974

/-!
# A085975: Number of 1's in decimal expansion of prime(n).

The programs for A085975, there is no canonical definition to state claims against.
-/

/-! ## A085975.P11452510576132530887

`val(∏{digits}[A028905(n+1), A028905(#)], 2)`
-/

namespace A085975.P11452510576132530887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028905 x).prod.toNat 2

end

end A085975.P11452510576132530887

/-! ## A085975.P14729030833523025177

`A268643(A028905(n+1))`
-/

namespace A085975.P14729030833523025177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A028905 (n + 1)).toNat

end

end A085975.P14729030833523025177

/-! ## A085975.P16840772109836760326

`A268643(Δ[A007504(n)])`
-/

namespace A085975.P16840772109836760326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (f1 (n + 1) - f1 n).toNat

end

end A085975.P16840772109836760326

/-! ## A085975.P5567601347812537154

`A268643(A000040(n+1))`
-/

namespace A085975.P5567601347812537154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A000040 (n + 1)).toNat

end

end A085975.P5567601347812537154

/-! ## A085975.P10574155522293231091

`A268643(A004087(n+1))`
-/

namespace A085975.P10574155522293231091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A004087 (n + 1)).toNat

end

end A085975.P10574155522293231091

/-! ## A085975.P5466477312534680464

`A102683(A171050(n+1))`
-/

namespace A085975.P5466477312534680464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171050 (n + 1)).toNat

end

end A085975.P5466477312534680464

/-! ## A085975.P12818062513582242114

`A268643(A028906(n+1))`
-/

namespace A085975.P12818062513582242114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A028906 (n + 1)).toNat

end

end A085975.P12818062513582242114

/-! ## A085975.P695325739207640645

`A268643(A171014(n+1))`
-/

namespace A085975.P695325739207640645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171014 (n + 1)).toNat

end

end A085975.P695325739207640645

/-! ## A085975.P9995336939845794286

`A268643(A171016(n+1))`
-/

namespace A085975.P9995336939845794286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171016 (n + 1)).toNat

end

end A085975.P9995336939845794286

/-! ## A085975.P12479670895623831011

`A268643(A171018(n+1))`
-/

namespace A085975.P12479670895623831011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171018 (n + 1)).toNat

end

end A085975.P12479670895623831011

/-! ## A085975.P4628985783839796082

`A268643(A171019(n+1))`
-/

namespace A085975.P4628985783839796082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171019 (n + 1)).toNat

end

end A085975.P4628985783839796082

/-! ## A085975.P3979164075166186609

`A268643(A171021(n+1))`
-/

namespace A085975.P3979164075166186609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171021 (n + 1)).toNat

end

end A085975.P3979164075166186609

/-! ## A085975.P14191612885405026734

`A268643(A171022(n+1))`
-/

namespace A085975.P14191612885405026734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171022 (n + 1)).toNat

end

end A085975.P14191612885405026734

/-! ## A085975.P12535205856162691133

`A268643(A171023(n+1))`
-/

namespace A085975.P12535205856162691133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171023 (n + 1)).toNat

end

end A085975.P12535205856162691133

/-! ## A085975.P6500163164360661710

`A268643(A171025(n+1))`
-/

namespace A085975.P6500163164360661710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171025 (n + 1)).toNat

end

end A085975.P6500163164360661710

/-! ## A085975.P3989154254339925608

`A268643(A171026(n+1))`
-/

namespace A085975.P3989154254339925608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171026 (n + 1)).toNat

end

end A085975.P3989154254339925608

/-! ## A085975.P5879363007765538822

`A268643(A171027(n+1))`
-/

namespace A085975.P5879363007765538822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171027 (n + 1)).toNat

end

end A085975.P5879363007765538822

/-! ## A085975.P7274840441486138964

`A268643(A171028(n+1))`
-/

namespace A085975.P7274840441486138964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171028 (n + 1)).toNat

end

end A085975.P7274840441486138964

/-! ## A085975.P5419471475948492887

`A268643(A008578(n+2))`
-/

namespace A085975.P5419471475948492887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A008578 (n + 2)).toNat

end

end A085975.P5419471475948492887

/-! ## A085975.P4504889839302094428

`A268643(lt[0, A055671(n)])`
-/

namespace A085975.P4504889839302094428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085975.P4504889839302094428

/-!
# A085976: Number of 2's in decimal expansion of prime(n).

The programs for A085976, the canonical program `A085976.P515009545935069561` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085976 has offset 1).

The definition of A085976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085976.P4795937589868897936

`A316863(A171013(n+1))`
-/

namespace A085976.P4795937589868897936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171013 (n + 1)).toNat

end

end A085976.P4795937589868897936

namespace A085976

/-- `A316863(A171013(n+1))` -/
def P4795937589868897936.Spec : Prop :=
  ∀ n, P4795937589868897936.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P1706308138524966507

`A316863(A028905(n+1))`
-/

namespace A085976.P1706308138524966507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A028905 (n + 1)).toNat

end

end A085976.P1706308138524966507

namespace A085976

/-- `A316863(A028905(n+1))` -/
def P1706308138524966507.Spec : Prop :=
  ∀ n, P1706308138524966507.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P13272464842517142948

`A316863(Δ[A007504(n)])`
-/

namespace A085976.P13272464842517142948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (f1 (n + 1) - f1 n).toNat

end

end A085976.P13272464842517142948

namespace A085976

/-- `A316863(Δ[A007504(n)])` -/
def P13272464842517142948.Spec : Prop :=
  ∀ n, P13272464842517142948.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P4152620111996957208

`A102683(A171051(n+1))`
-/

namespace A085976.P4152620111996957208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171051 (n + 1)).toNat

end

end A085976.P4152620111996957208

namespace A085976

/-- `A102683(A171051(n+1))` -/
def P4152620111996957208.Spec : Prop :=
  ∀ n, P4152620111996957208.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P515009545935069561

`A316863(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085976

/-- `A316863(A000040(n+1))` -/
def P515009545935069561.Spec : Prop :=
  ∀ n, P515009545935069561.a n = A085976 (n + 1)

theorem P515009545935069561.correct : P515009545935069561.Spec := by
  intro n
  simp only [A085976, Nat.add_sub_cancel]

end A085976

/-! ## A085976.P16479694199133840456

`A316863(A004087(n+1))`
-/

namespace A085976.P16479694199133840456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A004087 (n + 1)).toNat

end

end A085976.P16479694199133840456

namespace A085976

/-- `A316863(A004087(n+1))` -/
def P16479694199133840456.Spec : Prop :=
  ∀ n, P16479694199133840456.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P2594014187033422674

`A316863(A028906(n+1))`
-/

namespace A085976.P2594014187033422674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A028906 (n + 1)).toNat

end

end A085976.P2594014187033422674

namespace A085976

/-- `A316863(A028906(n+1))` -/
def P2594014187033422674.Spec : Prop :=
  ∀ n, P2594014187033422674.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P8590073479973179856

`A268643(A171015(n+1))`
-/

namespace A085976.P8590073479973179856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171015 (n + 1)).toNat

end

end A085976.P8590073479973179856

namespace A085976

/-- `A268643(A171015(n+1))` -/
def P8590073479973179856.Spec : Prop :=
  ∀ n, P8590073479973179856.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P14842753680970007348

`A316863(A161847(n+1))`
-/

namespace A085976.P14842753680970007348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A161847 (n + 1)).toNat

end

end A085976.P14842753680970007348

namespace A085976

/-- `A316863(A161847(n+1))` -/
def P14842753680970007348.Spec : Prop :=
  ∀ n, P14842753680970007348.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P714761998639286649

`A316863(A171016(n+1))`
-/

namespace A085976.P714761998639286649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171016 (n + 1)).toNat

end

end A085976.P714761998639286649

namespace A085976

/-- `A316863(A171016(n+1))` -/
def P714761998639286649.Spec : Prop :=
  ∀ n, P714761998639286649.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P15112287314151711890

`A316864(A171018(n+1))`
-/

namespace A085976.P15112287314151711890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171018 (n + 1)).toNat

end

end A085976.P15112287314151711890

namespace A085976

/-- `A316864(A171018(n+1))` -/
def P15112287314151711890.Spec : Prop :=
  ∀ n, P15112287314151711890.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P5320520100287849049

`A316863(A171019(n+1))`
-/

namespace A085976.P5320520100287849049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171019 (n + 1)).toNat

end

end A085976.P5320520100287849049

namespace A085976

/-- `A316863(A171019(n+1))` -/
def P5320520100287849049.Spec : Prop :=
  ∀ n, P5320520100287849049.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P16359100590106602732

`A316863(A171020(n+1))`
-/

namespace A085976.P16359100590106602732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171020 (n + 1)).toNat

end

end A085976.P16359100590106602732

namespace A085976

/-- `A316863(A171020(n+1))` -/
def P16359100590106602732.Spec : Prop :=
  ∀ n, P16359100590106602732.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P3683962311743990777

`A316865(A171021(n+1))`
-/

namespace A085976.P3683962311743990777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A171021 (n + 1)).toNat

end

end A085976.P3683962311743990777

namespace A085976

/-- `A316865(A171021(n+1))` -/
def P3683962311743990777.Spec : Prop :=
  ∀ n, P3683962311743990777.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P14900159804646637509

`A316863(A171022(n+1))`
-/

namespace A085976.P14900159804646637509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171022 (n + 1)).toNat

end

end A085976.P14900159804646637509

namespace A085976

/-- `A316863(A171022(n+1))` -/
def P14900159804646637509.Spec : Prop :=
  ∀ n, P14900159804646637509.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P8385008284196386140

`A316863(A171023(n+1))`
-/

namespace A085976.P8385008284196386140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171023 (n + 1)).toNat

end

end A085976.P8385008284196386140

namespace A085976

/-- `A316863(A171023(n+1))` -/
def P8385008284196386140.Spec : Prop :=
  ∀ n, P8385008284196386140.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P17186157035422375017

`A316863(A171024(n+1))`
-/

namespace A085976.P17186157035422375017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171024 (n + 1)).toNat

end

end A085976.P17186157035422375017

namespace A085976

/-- `A316863(A171024(n+1))` -/
def P17186157035422375017.Spec : Prop :=
  ∀ n, P17186157035422375017.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P5882983029682713090

`A316863(A008578(n+2))`
-/

namespace A085976.P5882983029682713090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A008578 (n + 2)).toNat

end

end A085976.P5882983029682713090

namespace A085976

/-- `A316863(A008578(n+2))` -/
def P5882983029682713090.Spec : Prop :=
  ∀ n, P5882983029682713090.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P496189422430226520

`A316863(lt[0, A055671(n)])`
-/

namespace A085976.P496189422430226520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085976.P496189422430226520

namespace A085976

/-- `A316863(lt[0, A055671(n)])` -/
def P496189422430226520.Spec : Prop :=
  ∀ n, P496189422430226520.a n = A085976 (n + 1)

end A085976

/-! ## A085976.P5722655568607065645

`A316863(lt[A007920(n), 1])`
-/

namespace A085976.P5722655568607065645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085976.P5722655568607065645

namespace A085976

/-- `A316863(lt[A007920(n), 1])` -/
def P5722655568607065645.Spec : Prop :=
  ∀ n, P5722655568607065645.a n = A085976 (n + 1)

end A085976

/-!
# A085977: Number of 3's in decimal expansion of prime(n).

The programs for A085977, the canonical program `A085977.P14742223954839599986` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085977 has offset 1).

The definition of A085977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085977.P10204718241427253970

`A316864(A171013(n+1))`
-/

namespace A085977.P10204718241427253970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171013 (n + 1)).toNat

end

end A085977.P10204718241427253970

namespace A085977

/-- `A316864(A171013(n+1))` -/
def P10204718241427253970.Spec : Prop :=
  ∀ n, P10204718241427253970.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P17048589240570400790

`A316864(A028905(n+1))`
-/

namespace A085977.P17048589240570400790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A028905 (n + 1)).toNat

end

end A085977.P17048589240570400790

namespace A085977

/-- `A316864(A028905(n+1))` -/
def P17048589240570400790.Spec : Prop :=
  ∀ n, P17048589240570400790.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P3796559601814666322

`A102683(A171052(n+1))`
-/

namespace A085977.P3796559601814666322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171052 (n + 1)).toNat

end

end A085977.P3796559601814666322

namespace A085977

/-- `A102683(A171052(n+1))` -/
def P3796559601814666322.Spec : Prop :=
  ∀ n, P3796559601814666322.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P14742223954839599986

`A316864(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085977

/-- `A316864(A000040(n+1))` -/
def P14742223954839599986.Spec : Prop :=
  ∀ n, P14742223954839599986.a n = A085977 (n + 1)

theorem P14742223954839599986.correct : P14742223954839599986.Spec := by
  intro n
  simp only [A085977, Nat.add_sub_cancel]

end A085977

/-! ## A085977.P9595431436408038479

`A316864(A004087(n+1))`
-/

namespace A085977.P9595431436408038479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A004087 (n + 1)).toNat

end

end A085977.P9595431436408038479

namespace A085977

/-- `A316864(A004087(n+1))` -/
def P9595431436408038479.Spec : Prop :=
  ∀ n, P9595431436408038479.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P16974593584693810696

`A316864(A006005(n+1))`
-/

namespace A085977.P16974593584693810696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A006005 (n + 1)).toNat

end

end A085977.P16974593584693810696

namespace A085977

/-- `A316864(A006005(n+1))` -/
def P16974593584693810696.Spec : Prop :=
  ∀ n, P16974593584693810696.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P5458962830567274894

`A316864(A028906(n+1))`
-/

namespace A085977.P5458962830567274894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A028906 (n + 1)).toNat

end

end A085977.P5458962830567274894

namespace A085977

/-- `A316864(A028906(n+1))` -/
def P5458962830567274894.Spec : Prop :=
  ∀ n, P5458962830567274894.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P18182268062439314571

`A268643(A175770(n+1))`
-/

namespace A085977.P18182268062439314571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A175770 (n + 1)).toNat

end

end A085977.P18182268062439314571

namespace A085977

/-- `A268643(A175770(n+1))` -/
def P18182268062439314571.Spec : Prop :=
  ∀ n, P18182268062439314571.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P12254340897423763457

`A316864(A161847(n+1))`
-/

namespace A085977.P12254340897423763457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A161847 (n + 1)).toNat

end

end A085977.P12254340897423763457

namespace A085977

/-- `A316864(A161847(n+1))` -/
def P12254340897423763457.Spec : Prop :=
  ∀ n, P12254340897423763457.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P18028649237927347413

`A316864(A171014(n+1))`
-/

namespace A085977.P18028649237927347413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171014 (n + 1)).toNat

end

end A085977.P18028649237927347413

namespace A085977

/-- `A316864(A171014(n+1))` -/
def P18028649237927347413.Spec : Prop :=
  ∀ n, P18028649237927347413.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P8361474555789393794

`A316864(A171015(n+1))`
-/

namespace A085977.P8361474555789393794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171015 (n + 1)).toNat

end

end A085977.P8361474555789393794

namespace A085977

/-- `A316864(A171015(n+1))` -/
def P8361474555789393794.Spec : Prop :=
  ∀ n, P8361474555789393794.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P7464811136079967406

`A316863(A171018(n+1))`
-/

namespace A085977.P7464811136079967406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171018 (n + 1)).toNat

end

end A085977.P7464811136079967406

namespace A085977

/-- `A316863(A171018(n+1))` -/
def P7464811136079967406.Spec : Prop :=
  ∀ n, P7464811136079967406.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P11672543978184287445

`A316864(A171019(n+1))`
-/

namespace A085977.P11672543978184287445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171019 (n + 1)).toNat

end

end A085977.P11672543978184287445

namespace A085977

/-- `A316864(A171019(n+1))` -/
def P11672543978184287445.Spec : Prop :=
  ∀ n, P11672543978184287445.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P1389399343450273606

`A316864(A171020(n+1))`
-/

namespace A085977.P1389399343450273606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171020 (n + 1)).toNat

end

end A085977.P1389399343450273606

namespace A085977

/-- `A316864(A171020(n+1))` -/
def P1389399343450273606.Spec : Prop :=
  ∀ n, P1389399343450273606.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P16155634895463550473

`A316864(A008578(n+2))`
-/

namespace A085977.P16155634895463550473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A008578 (n + 2)).toNat

end

end A085977.P16155634895463550473

namespace A085977

/-- `A316864(A008578(n+2))` -/
def P16155634895463550473.Spec : Prop :=
  ∀ n, P16155634895463550473.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P4422284612698481224

`A316864(record[A006530(n+2)])`
-/

namespace A085977.P4422284612698481224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085977.P4422284612698481224

namespace A085977

/-- `A316864(record[A006530(n+2)])` -/
def P4422284612698481224.Spec : Prop :=
  ∀ n, P4422284612698481224.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P5409831531722037649

`A316864(record[A014963(n+2)])`
-/

namespace A085977.P5409831531722037649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085977.P5409831531722037649

namespace A085977

/-- `A316864(record[A014963(n+2)])` -/
def P5409831531722037649.Spec : Prop :=
  ∀ n, P5409831531722037649.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P1775823639310832127

`A316864(record[A020639(n+2)])`
-/

namespace A085977.P1775823639310832127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085977.P1775823639310832127

namespace A085977

/-- `A316864(record[A020639(n+2)])` -/
def P1775823639310832127.Spec : Prop :=
  ∀ n, P1775823639310832127.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P16848362495453536223

`A316864(eq[2, A000005(n+1)]+1)`
-/

namespace A085977.P16848362495453536223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085977.P16848362495453536223

namespace A085977

/-- `A316864(eq[2, A000005(n+1)]+1)` -/
def P16848362495453536223.Spec : Prop :=
  ∀ n, P16848362495453536223.a n = A085977 (n + 1)

end A085977

/-! ## A085977.P7572360122599427258

`A316864(A101989(n+1))`
-/

namespace A085977.P7572360122599427258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A101989 (n + 1)).toNat

end

end A085977.P7572360122599427258

namespace A085977

/-- `A316864(A101989(n+1))` -/
def P7572360122599427258.Spec : Prop :=
  ∀ n, P7572360122599427258.a n = A085977 (n + 1)

end A085977

/-!
# A085978: Number of 4's in decimal expansion of prime(n).

The programs for A085978, the canonical program `A085978.P3613833929199214065` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085978 has offset 1).

The definition of A085978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085978.P3613833929199214065

`∑{digits}[A000040(n+1), A316867(#+2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085978

/-- `∑{digits}[A000040(n+1), A316867(#+2)]` -/
def P3613833929199214065.Spec : Prop :=
  ∀ n, P3613833929199214065.a n = A085978 (n + 1)

theorem P3613833929199214065.correct : P3613833929199214065.Spec := by
  intro n
  simp only [A085978, Nat.add_sub_cancel]

end A085978

/-! ## A085978.P12572234565479410180

`∑{digits}[A000040(n+1), A014669(A007318(#))]`
-/

namespace A085978.P12572234565479410180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014669 (A007318 x).toNat).sum

end

end A085978.P12572234565479410180

namespace A085978

/-- `∑{digits}[A000040(n+1), A014669(A007318(#))]` -/
def P12572234565479410180.Spec : Prop :=
  ∀ n, P12572234565479410180.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P11622271830515723321

`∑{digits}[A000040(n+1), A005089(A014963(#+1))]`
-/

namespace A085978.P11622271830515723321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005089 (A014963 (x + 1)).toNat).sum

end

end A085978.P11622271830515723321

namespace A085978

/-- `∑{digits}[A000040(n+1), A005089(A014963(#+1))]` -/
def P11622271830515723321.Spec : Prop :=
  ∀ n, P11622271830515723321.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P11851615740970695036

`∑{digits}[A000040(n+1), A023416(A185651(#)+1)]`
-/

namespace A085978.P11851615740970695036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A023416 (A185651 x + 1).toNat).sum

end

end A085978.P11851615740970695036

namespace A085978

/-- `∑{digits}[A000040(n+1), A023416(A185651(#)+1)]` -/
def P11851615740970695036.Spec : Prop :=
  ∀ n, P11851615740970695036.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P13495427759870623335

`∑{digits}[A000040(n+1), A029379(A204120(#+1))]`
-/

namespace A085978.P13495427759870623335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029379 (A204120 (x + 1)).toNat).sum

end

end A085978.P13495427759870623335

namespace A085978

/-- `∑{digits}[A000040(n+1), A029379(A204120(#+1))]` -/
def P13495427759870623335.Spec : Prop :=
  ∀ n, P13495427759870623335.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P2569696116943234690

`∑{digits}[A000040(n+1), A083892(A248981(#+1))]`
-/

namespace A085978.P2569696116943234690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A083892 (A248981 (x + 1)).toNat).sum

end

end A085978.P2569696116943234690

namespace A085978

/-- `∑{digits}[A000040(n+1), A083892(A248981(#+1))]` -/
def P2569696116943234690.Spec : Prop :=
  ∀ n, P2569696116943234690.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P9181631605130555346

`A327462(n+1)-A064532(A000040(n+1))`
-/

namespace A085978.P9181631605130555346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327462 (n + 1) - A064532 (A000040 (n + 1)).toNat

end

end A085978.P9181631605130555346

namespace A085978

/-- `A327462(n+1)-A064532(A000040(n+1))` -/
def P9181631605130555346.Spec : Prop :=
  ∀ n, P9181631605130555346.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P4924462682348702818

`A316865(A028905(n+1))`
-/

namespace A085978.P4924462682348702818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A028905 (n + 1)).toNat

end

end A085978.P4924462682348702818

namespace A085978

/-- `A316865(A028905(n+1))` -/
def P4924462682348702818.Spec : Prop :=
  ∀ n, P4924462682348702818.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P12819969564280058306

`A102683(A171053(n+1))`
-/

namespace A085978.P12819969564280058306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171053 (n + 1)).toNat

end

end A085978.P12819969564280058306

namespace A085978

/-- `A102683(A171053(n+1))` -/
def P12819969564280058306.Spec : Prop :=
  ∀ n, P12819969564280058306.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P2813831392810116428

`A316865(A000040(n+1))`
-/

namespace A085978.P2813831392810116428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A000040 (n + 1)).toNat

end

end A085978.P2813831392810116428

namespace A085978

/-- `A316865(A000040(n+1))` -/
def P2813831392810116428.Spec : Prop :=
  ∀ n, P2813831392810116428.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P5730332477966925947

`A316865(A004087(n+1))`
-/

namespace A085978.P5730332477966925947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A004087 (n + 1)).toNat

end

end A085978.P5730332477966925947

namespace A085978

/-- `A316865(A004087(n+1))` -/
def P5730332477966925947.Spec : Prop :=
  ∀ n, P5730332477966925947.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P11946179416547223731

`A316865(A006005(n+1))`
-/

namespace A085978.P11946179416547223731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A006005 (n + 1)).toNat

end

end A085978.P11946179416547223731

namespace A085978

/-- `A316865(A006005(n+1))` -/
def P11946179416547223731.Spec : Prop :=
  ∀ n, P11946179416547223731.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P9286333375825101806

`A316865(A028906(n+1))`
-/

namespace A085978.P9286333375825101806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A028906 (n + 1)).toNat

end

end A085978.P9286333375825101806

namespace A085978

/-- `A316865(A028906(n+1))` -/
def P9286333375825101806.Spec : Prop :=
  ∀ n, P9286333375825101806.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P2639352016383982505

`A268643(A171020(n+1))`
-/

namespace A085978.P2639352016383982505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171020 (n + 1)).toNat

end

end A085978.P2639352016383982505

namespace A085978

/-- `A268643(A171020(n+1))` -/
def P2639352016383982505.Spec : Prop :=
  ∀ n, P2639352016383982505.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P12847341796234854417

`A316863(A171021(n+1))`
-/

namespace A085978.P12847341796234854417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171021 (n + 1)).toNat

end

end A085978.P12847341796234854417

namespace A085978

/-- `A316863(A171021(n+1))` -/
def P12847341796234854417.Spec : Prop :=
  ∀ n, P12847341796234854417.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P3232576523725742813

`A316864(A171022(n+1))`
-/

namespace A085978.P3232576523725742813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171022 (n + 1)).toNat

end

end A085978.P3232576523725742813

namespace A085978

/-- `A316864(A171022(n+1))` -/
def P3232576523725742813.Spec : Prop :=
  ∀ n, P3232576523725742813.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P7433547128988314845

`A316865(A176044(n+1))`
-/

namespace A085978.P7433547128988314845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A176044 (n + 1)).toNat

end

end A085978.P7433547128988314845

namespace A085978

/-- `A316865(A176044(n+1))` -/
def P7433547128988314845.Spec : Prop :=
  ∀ n, P7433547128988314845.a n = A085978 (n + 1)

end A085978

/-! ## A085978.P9025837490580670031

`A316865(A039790(n+1))`
-/

namespace A085978.P9025837490580670031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A039790 (n + 1)).toNat

end

end A085978.P9025837490580670031

namespace A085978

/-- `A316865(A039790(n+1))` -/
def P9025837490580670031.Spec : Prop :=
  ∀ n, P9025837490580670031.a n = A085978 (n + 1)

end A085978

/-!
# A085979: Number of 5's in decimal expansion of prime(n).

The programs for A085979, the canonical program `A085979.P217824273526323431` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085979 has offset 1).

The definition of A085979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085979.P12230508833731621129

`val(A101987(n+1), 5)`
-/

namespace A085979.P12230508833731621129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A101987 (n + 1)).toNat 5

end

end A085979.P12230508833731621129

namespace A085979

/-- `val(A101987(n+1), 5)` -/
def P12230508833731621129.Spec : Prop :=
  ∀ n, (P12230508833731621129.a n : ℤ) = A085979 (n + 1)

end A085979

/-! ## A085979.P17146155301564088709

`val(∏{digits}[A028905(n+1), #], 5)`
-/

namespace A085979.P17146155301564088709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod 5

end

end A085979.P17146155301564088709

namespace A085979

/-- `val(∏{digits}[A028905(n+1), #], 5)` -/
def P17146155301564088709.Spec : Prop :=
  ∀ n, (P17146155301564088709.a n : ℤ) = A085979 (n + 1)

end A085979

/-! ## A085979.P9731422092716496967

`∑{digits}[A000040(n+1), A316867(#+1)]`
-/

namespace A085979.P9731422092716496967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316867 (x + 1)).sum

end

end A085979.P9731422092716496967

namespace A085979

/-- `∑{digits}[A000040(n+1), A316867(#+1)]` -/
def P9731422092716496967.Spec : Prop :=
  ∀ n, P9731422092716496967.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P217824273526323431

`∑{digits}[A000040(n+1), A005088(#+2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085979

/-- `∑{digits}[A000040(n+1), A005088(#+2)]` -/
def P217824273526323431.Spec : Prop :=
  ∀ n, P217824273526323431.a n = A085979 (n + 1)

theorem P217824273526323431.correct : P217824273526323431.Spec := by
  intro n
  simp only [A085979, Nat.add_sub_cancel]

end A085979

/-! ## A085979.P18229524032450358944

`∑{digits}[A000040(n+1), A206567(A020653(#+1)+1)]`
-/

namespace A085979.P18229524032450358944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A206567 (A020653 (x + 1) + 1).toNat).sum

end

end A085979.P18229524032450358944

namespace A085979

/-- `∑{digits}[A000040(n+1), A206567(A020653(#+1)+1)]` -/
def P18229524032450358944.Spec : Prop :=
  ∀ n, P18229524032450358944.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P14755530349041115412

`∑{digits}[A000040(n+1), A343825(A343825(#+1)+1)]`
-/

namespace A085979.P14755530349041115412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A343825 (A343825 (x + 1) + 1).toNat).sum

end

end A085979.P14755530349041115412

namespace A085979

/-- `∑{digits}[A000040(n+1), A343825(A343825(#+1)+1)]` -/
def P14755530349041115412.Spec : Prop :=
  ∀ n, P14755530349041115412.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P9324638484234562060

`∑{digits}[A000040(n+1), A025453(A081320(#+1))-1]`
-/

namespace A085979.P9324638484234562060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025453 (A081320 (x + 1)).toNat - 1).sum

end

end A085979.P9324638484234562060

namespace A085979

/-- `∑{digits}[A000040(n+1), A025453(A081320(#+1))-1]` -/
def P9324638484234562060.Spec : Prop :=
  ∀ n, P9324638484234562060.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P16178750675844759222

`∑{digits}[A000040(n+1), A056620(2*A007947(#+1))]`
-/

namespace A085979.P16178750675844759222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A056620 (2 * A007947 (x + 1)).toNat).sum

end

end A085979.P16178750675844759222

namespace A085979

/-- `∑{digits}[A000040(n+1), A056620(2*A007947(#+1))]` -/
def P16178750675844759222.Spec : Prop :=
  ∀ n, P16178750675844759222.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P3930920831829654736

`∑{digits}[A000040(n+1), A056620(2*A043320(#+1))]`
-/

namespace A085979.P3930920831829654736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A056620 (2 * A043320 (x + 1)).toNat).sum

end

end A085979.P3930920831829654736

namespace A085979

/-- `∑{digits}[A000040(n+1), A056620(2*A043320(#+1))]` -/
def P3930920831829654736.Spec : Prop :=
  ∀ n, P3930920831829654736.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P4111875909829730422

`A316866(A028905(n+1))`
-/

namespace A085979.P4111875909829730422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A028905 (n + 1)).toNat

end

end A085979.P4111875909829730422

namespace A085979

/-- `A316866(A028905(n+1))` -/
def P4111875909829730422.Spec : Prop :=
  ∀ n, P4111875909829730422.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P12268138893120647736

`A102683(A171054(n+1))`
-/

namespace A085979.P12268138893120647736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171054 (n + 1)).toNat

end

end A085979.P12268138893120647736

namespace A085979

/-- `A102683(A171054(n+1))` -/
def P12268138893120647736.Spec : Prop :=
  ∀ n, P12268138893120647736.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P5777062996926006165

`A316866(A000040(n+1))`
-/

namespace A085979.P5777062996926006165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A000040 (n + 1)).toNat

end

end A085979.P5777062996926006165

namespace A085979

/-- `A316866(A000040(n+1))` -/
def P5777062996926006165.Spec : Prop :=
  ∀ n, P5777062996926006165.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P1305851249511703027

`A316866(A004087(n+1))`
-/

namespace A085979.P1305851249511703027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A004087 (n + 1)).toNat

end

end A085979.P1305851249511703027

namespace A085979

/-- `A316866(A004087(n+1))` -/
def P1305851249511703027.Spec : Prop :=
  ∀ n, P1305851249511703027.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P3064911517744846487

`A316866(A006005(n+1))`
-/

namespace A085979.P3064911517744846487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A006005 (n + 1)).toNat

end

end A085979.P3064911517744846487

namespace A085979

/-- `A316866(A006005(n+1))` -/
def P3064911517744846487.Spec : Prop :=
  ∀ n, P3064911517744846487.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P14834488775305932501

`A316866(A028906(n+1))`
-/

namespace A085979.P14834488775305932501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A028906 (n + 1)).toNat

end

end A085979.P14834488775305932501

namespace A085979

/-- `A316866(A028906(n+1))` -/
def P14834488775305932501.Spec : Prop :=
  ∀ n, P14834488775305932501.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P13290378255672272453

`A316866(A063884(n+1))`
-/

namespace A085979.P13290378255672272453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A063884 (n + 1)).toNat

end

end A085979.P13290378255672272453

namespace A085979

/-- `A316866(A063884(n+1))` -/
def P13290378255672272453.Spec : Prop :=
  ∀ n, P13290378255672272453.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P12961473204898191500

`A268643(A171024(n+1))`
-/

namespace A085979.P12961473204898191500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171024 (n + 1)).toNat

end

end A085979.P12961473204898191500

namespace A085979

/-- `A268643(A171024(n+1))` -/
def P12961473204898191500.Spec : Prop :=
  ∀ n, P12961473204898191500.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P2391830044384130374

`A316863(A171025(n+1))`
-/

namespace A085979.P2391830044384130374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171025 (n + 1)).toNat

end

end A085979.P2391830044384130374

namespace A085979

/-- `A316863(A171025(n+1))` -/
def P2391830044384130374.Spec : Prop :=
  ∀ n, P2391830044384130374.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P2272854633859602692

`A316864(A171026(n+1))`
-/

namespace A085979.P2272854633859602692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A171026 (n + 1)).toNat

end

end A085979.P2272854633859602692

namespace A085979

/-- `A316864(A171026(n+1))` -/
def P2272854633859602692.Spec : Prop :=
  ∀ n, P2272854633859602692.a n = A085979 (n + 1)

end A085979

/-! ## A085979.P13725234735185283229

`A316866(A171038(n+1))`
-/

namespace A085979.P13725234735185283229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A171038 (n + 1)).toNat

end

end A085979.P13725234735185283229

namespace A085979

/-- `A316866(A171038(n+1))` -/
def P13725234735185283229.Spec : Prop :=
  ∀ n, P13725234735185283229.a n = A085979 (n + 1)

end A085979

/-!
# A085980: Number of 6's in decimal expansion of prime(n).

The programs for A085980, the canonical program `A085980.P6633588710115276968` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085980 has offset 1).

The definition of A085980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085980.P18329276325752443708

`∑{digits}[A000040(n+1), A316867(#)]`
-/

namespace A085980.P18329276325752443708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316867 x).sum

end

end A085980.P18329276325752443708

namespace A085980

/-- `∑{digits}[A000040(n+1), A316867(#)]` -/
def P18329276325752443708.Spec : Prop :=
  ∀ n, P18329276325752443708.a n = A085980 (n + 1)

end A085980

/-! ## A085980.P6633588710115276968

`∑{digits}[A000040(n+1), A005088(#+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085980

/-- `∑{digits}[A000040(n+1), A005088(#+1)]` -/
def P6633588710115276968.Spec : Prop :=
  ∀ n, P6633588710115276968.a n = A085980 (n + 1)

theorem P6633588710115276968.correct : P6633588710115276968.Spec := by
  intro n
  simp only [A085980, Nat.add_sub_cancel]

end A085980

/-! ## A085980.P13018744877449141670

`∑{digits}[A000040(n+1), A070108(#+1)]`
-/

namespace A085980.P13018744877449141670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A070108 (x + 1)).sum

end

end A085980.P13018744877449141670

namespace A085980

/-- `∑{digits}[A000040(n+1), A070108(#+1)]` -/
def P13018744877449141670.Spec : Prop :=
  ∀ n, P13018744877449141670.a n = A085980 (n + 1)

end A085980

/-! ## A085980.P8021483646731746899

`∑{digits}[A000040(n+1), A253638(#+2)]`
-/

namespace A085980.P8021483646731746899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A253638 (x + 2)).sum

end

end A085980.P8021483646731746899

namespace A085980

/-- `∑{digits}[A000040(n+1), A253638(#+2)]` -/
def P8021483646731746899.Spec : Prop :=
  ∀ n, P8021483646731746899.a n = A085980 (n + 1)

end A085980

/-! ## A085980.P965882338256327480

`∑{digits}[A000040(n+1), A029379(A000005(#+6))]`
-/

namespace A085980.P965882338256327480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029379 (A000005 (x + 6)).toNat).sum

end

end A085980.P965882338256327480

namespace A085980

/-- `∑{digits}[A000040(n+1), A029379(A000005(#+6))]` -/
def P965882338256327480.Spec : Prop :=
  ∀ n, P965882338256327480.a n = A085980 (n + 1)

end A085980

/-! ## A085980.P571477771366220630

`∑{digits}[A000040(n+1), A206567(A112174(#)+#+1)]`
-/

namespace A085980.P571477771366220630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A206567 (A112174 x + (x : ℤ) + 1).toNat).sum

end

end A085980.P571477771366220630

namespace A085980

/-- `∑{digits}[A000040(n+1), A206567(A112174(#)+#+1)]` -/
def P571477771366220630.Spec : Prop :=
  ∀ n, P571477771366220630.a n = A085980 (n + 1)

end A085980

/-! ## A085980.P797458108669997984

`A316867(A000040(n+1))`
-/

namespace A085980.P797458108669997984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A000040 (n + 1)).toNat

end

end A085980.P797458108669997984

namespace A085980

/-- `A316867(A000040(n+1))` -/
def P797458108669997984.Spec : Prop :=
  ∀ n, P797458108669997984.a n = A085980 (n + 1)

end A085980

/-! ## A085980.P11518265688787049960

`A316867(A008578(n+2))`
-/

namespace A085980.P11518265688787049960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A008578 (n + 2)).toNat

end

end A085980.P11518265688787049960

namespace A085980

/-- `A316867(A008578(n+2))` -/
def P11518265688787049960.Spec : Prop :=
  ∀ n, P11518265688787049960.a n = A085980 (n + 1)

end A085980

/-! ## A085980.P12051107918891639957

`val(A156081(A054353(n+2)), 8)`
-/

namespace A085980.P12051107918891639957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A156081 (A054353 (n + 2)).toNat).toNat 8

end

end A085980.P12051107918891639957

namespace A085980

/-- `val(A156081(A054353(n+2)), 8)` -/
def P12051107918891639957.Spec : Prop :=
  ∀ n, (P12051107918891639957.a n : ℤ) = A085980 (n + 1)

end A085980

/-! ## A085980.P7395004807924923742

`Δ[A074902(n+2)]%2`
-/

namespace A085980.P7395004807924923742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A085980.P7395004807924923742

namespace A085980

/-- `Δ[A074902(n+2)]%2` -/
def P7395004807924923742.Spec : Prop :=
  ∀ n, P7395004807924923742.a n = A085980 (n + 1)

end A085980

/-!
# A085981: Number of 7's in decimal expansion of prime(n).

The programs for A085981, the canonical program `A085981.P2489929017691195311` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085981 has offset 1).

The definition of A085981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085981.P2489929017691195311

`val(A101987(n+1), 7)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085981

/-- `val(A101987(n+1), 7)` -/
def P2489929017691195311.Spec : Prop :=
  ∀ n, (P2489929017691195311.a n : ℤ) = A085981 (n + 1)

theorem P2489929017691195311.correct : P2489929017691195311.Spec := by
  intro n
  simp only [A085981, Nat.add_sub_cancel]

end A085981

/-! ## A085981.P1762995322191063131

`val(∏{digits}[A028905(n+1), #], 7)`
-/

namespace A085981.P1762995322191063131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod 7

end

end A085981.P1762995322191063131

namespace A085981

/-- `val(∏{digits}[A028905(n+1), #], 7)` -/
def P1762995322191063131.Spec : Prop :=
  ∀ n, (P1762995322191063131.a n : ℤ) = A085981 (n + 1)

end A085981

/-! ## A085981.P9301153823828975348

`val(∏{digits}[A000040(n+1), floor(acot(#)+#)], 7)`
-/

namespace A085981.P9301153823828975348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ) + (x : ℝ)⌋).prod.toNat 7

end

end A085981.P9301153823828975348

namespace A085981

/-- `val(∏{digits}[A000040(n+1), floor(acot(#)+#)], 7)` -/
def P9301153823828975348.Spec : Prop :=
  ∀ n, (P9301153823828975348.a n : ℤ) = A085981 (n + 1)

end A085981

/-! ## A085981.P14711097785858443922

`∑{digits}[A000040(n+1), A169674(#+1)]`
-/

namespace A085981.P14711097785858443922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A169674 (x + 1)).sum

end

end A085981.P14711097785858443922

namespace A085981

/-- `∑{digits}[A000040(n+1), A169674(#+1)]` -/
def P14711097785858443922.Spec : Prop :=
  ∀ n, P14711097785858443922.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P10820260724393794733

`∑{digits}[A000040(n+1), A253638(#+1)]`
-/

namespace A085981.P10820260724393794733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A253638 (x + 1)).sum

end

end A085981.P10820260724393794733

namespace A085981

/-- `∑{digits}[A000040(n+1), A253638(#+1)]` -/
def P10820260724393794733.Spec : Prop :=
  ∀ n, P10820260724393794733.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P9759224865860674665

`A316868(A171013(n+1))`
-/

namespace A085981.P9759224865860674665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A171013 (n + 1)).toNat

end

end A085981.P9759224865860674665

namespace A085981

/-- `A316868(A171013(n+1))` -/
def P9759224865860674665.Spec : Prop :=
  ∀ n, P9759224865860674665.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P5385362290232513564

`A316868(A028905(n+1))`
-/

namespace A085981.P5385362290232513564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A028905 (n + 1)).toNat

end

end A085981.P5385362290232513564

namespace A085981

/-- `A316868(A028905(n+1))` -/
def P5385362290232513564.Spec : Prop :=
  ∀ n, P5385362290232513564.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P5151964190707225955

`A102683(A171056(n+1))`
-/

namespace A085981.P5151964190707225955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171056 (n + 1)).toNat

end

end A085981.P5151964190707225955

namespace A085981

/-- `A102683(A171056(n+1))` -/
def P5151964190707225955.Spec : Prop :=
  ∀ n, P5151964190707225955.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P5991669181093392813

`A316868(A000040(n+1))`
-/

namespace A085981.P5991669181093392813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A000040 (n + 1)).toNat

end

end A085981.P5991669181093392813

namespace A085981

/-- `A316868(A000040(n+1))` -/
def P5991669181093392813.Spec : Prop :=
  ∀ n, P5991669181093392813.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P13798804179157762150

`A316868(A004087(n+1))`
-/

namespace A085981.P13798804179157762150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A004087 (n + 1)).toNat

end

end A085981.P13798804179157762150

namespace A085981

/-- `A316868(A004087(n+1))` -/
def P13798804179157762150.Spec : Prop :=
  ∀ n, P13798804179157762150.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P2081934515716690230

`A316868(A006005(n+1))`
-/

namespace A085981.P2081934515716690230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A006005 (n + 1)).toNat

end

end A085981.P2081934515716690230

namespace A085981

/-- `A316868(A006005(n+1))` -/
def P2081934515716690230.Spec : Prop :=
  ∀ n, P2081934515716690230.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P7852979469804033438

`A316868(A028906(n+1))`
-/

namespace A085981.P7852979469804033438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A028906 (n + 1)).toNat

end

end A085981.P7852979469804033438

namespace A085981

/-- `A316868(A028906(n+1))` -/
def P7852979469804033438.Spec : Prop :=
  ∀ n, P7852979469804033438.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P11361748859211950306

`A316868(A063884(n+1))`
-/

namespace A085981.P11361748859211950306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A063884 (n + 1)).toNat

end

end A085981.P11361748859211950306

namespace A085981

/-- `A316868(A063884(n+1))` -/
def P11361748859211950306.Spec : Prop :=
  ∀ n, P11361748859211950306.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P5538903324456773435

`A268643(A171035(n+1))`
-/

namespace A085981.P5538903324456773435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171035 (n + 1)).toNat

end

end A085981.P5538903324456773435

namespace A085981

/-- `A268643(A171035(n+1))` -/
def P5538903324456773435.Spec : Prop :=
  ∀ n, P5538903324456773435.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P16174764438778161365

`A316868(A161847(n+1))`
-/

namespace A085981.P16174764438778161365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A161847 (n + 1)).toNat

end

end A085981.P16174764438778161365

namespace A085981

/-- `A316868(A161847(n+1))` -/
def P16174764438778161365.Spec : Prop :=
  ∀ n, P16174764438778161365.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P13461924072346264908

`A316868(A171014(n+1))`
-/

namespace A085981.P13461924072346264908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A171014 (n + 1)).toNat

end

end A085981.P13461924072346264908

namespace A085981

/-- `A316868(A171014(n+1))` -/
def P13461924072346264908.Spec : Prop :=
  ∀ n, P13461924072346264908.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P1376058083511943451

`A316868(A171015(n+1))`
-/

namespace A085981.P1376058083511943451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A171015 (n + 1)).toNat

end

end A085981.P1376058083511943451

namespace A085981

/-- `A316868(A171015(n+1))` -/
def P1376058083511943451.Spec : Prop :=
  ∀ n, P1376058083511943451.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P18407972224591528549

`A316868(A171016(n+1))`
-/

namespace A085981.P18407972224591528549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A171016 (n + 1)).toNat

end

end A085981.P18407972224591528549

namespace A085981

/-- `A316868(A171016(n+1))` -/
def P18407972224591528549.Spec : Prop :=
  ∀ n, P18407972224591528549.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P11672022300395603819

`A316868(A171023(n+1))`
-/

namespace A085981.P11672022300395603819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A171023 (n + 1)).toNat

end

end A085981.P11672022300395603819

namespace A085981

/-- `A316868(A171023(n+1))` -/
def P11672022300395603819.Spec : Prop :=
  ∀ n, P11672022300395603819.a n = A085981 (n + 1)

end A085981

/-! ## A085981.P6213586239415263224

`A316863(A171036(n+1))`
-/

namespace A085981.P6213586239415263224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A171036 (n + 1)).toNat

end

end A085981.P6213586239415263224

namespace A085981

/-- `A316863(A171036(n+1))` -/
def P6213586239415263224.Spec : Prop :=
  ∀ n, P6213586239415263224.a n = A085981 (n + 1)

end A085981

/-!
# A085982: Number of 8's in decimal expansion of prime(n).

The programs for A085982, the canonical program `A085982.P15034443967157609974` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085982 has offset 1).

The definition of A085982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085982.P8222166759312751022

`∑{digits}[A000040(n+1), A169674(#)]`
-/

namespace A085982.P8222166759312751022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A169674 x).sum

end

end A085982.P8222166759312751022

namespace A085982

/-- `∑{digits}[A000040(n+1), A169674(#)]` -/
def P8222166759312751022.Spec : Prop :=
  ∀ n, P8222166759312751022.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P17340641759308753128

`∑{digits}[A000040(n+1), A251759(#)]`
-/

namespace A085982.P17340641759308753128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A251759 x).sum

end

end A085982.P17340641759308753128

namespace A085982

/-- `∑{digits}[A000040(n+1), A251759(#)]` -/
def P17340641759308753128.Spec : Prop :=
  ∀ n, P17340641759308753128.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P15034443967157609974

`∑{digits}[A000040(n+1), A253638(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085982

/-- `∑{digits}[A000040(n+1), A253638(#)]` -/
def P15034443967157609974.Spec : Prop :=
  ∀ n, P15034443967157609974.a n = A085982 (n + 1)

theorem P15034443967157609974.correct : P15034443967157609974.Spec := by
  intro n
  simp only [A085982, Nat.add_sub_cancel]

end A085982

/-! ## A085982.P135921777399380514

`∑{digits}[A171057(n+1), A326531(#)]`
-/

namespace A085982.P135921777399380514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326531 x).sum

end

end A085982.P135921777399380514

namespace A085982

/-- `∑{digits}[A171057(n+1), A326531(#)]` -/
def P135921777399380514.Spec : Prop :=
  ∀ n, P135921777399380514.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P16846398114899609764

`∑{digits}[A000040(n+1), A056620(#+4)]`
-/

namespace A085982.P16846398114899609764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A056620 (x + 4)).sum

end

end A085982.P16846398114899609764

namespace A085982

/-- `∑{digits}[A000040(n+1), A056620(#+4)]` -/
def P16846398114899609764.Spec : Prop :=
  ∀ n, P16846398114899609764.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P2975671867293132416

`∑{digits}[A000040(n+1), A049615(A049615(#+2))]`
-/

namespace A085982.P2975671867293132416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A049615 (A049615 (x + 2)).toNat).sum

end

end A085982.P2975671867293132416

namespace A085982

/-- `∑{digits}[A000040(n+1), A049615(A049615(#+2))]` -/
def P2975671867293132416.Spec : Prop :=
  ∀ n, P2975671867293132416.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P8458436368389973943

`∑{digits}[record[A006530(2*n+1)], A253638(#)]`
-/

namespace A085982.P8458436368389973943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A253638 x).sum

end

end A085982.P8458436368389973943

namespace A085982

/-- `∑{digits}[record[A006530(2*n+1)], A253638(#)]` -/
def P8458436368389973943.Spec : Prop :=
  ∀ n, P8458436368389973943.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P2899425053778138346

`A316869(A000040(n+1))`
-/

namespace A085982.P2899425053778138346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A000040 (n + 1)).toNat

end

end A085982.P2899425053778138346

namespace A085982

/-- `A316869(A000040(n+1))` -/
def P2899425053778138346.Spec : Prop :=
  ∀ n, P2899425053778138346.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P15243894120781968604

`A316869(A171038(n+1))`
-/

namespace A085982.P15243894120781968604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A171038 (n + 1)).toNat

end

end A085982.P15243894120781968604

namespace A085982

/-- `A316869(A171038(n+1))` -/
def P15243894120781968604.Spec : Prop :=
  ∀ n, P15243894120781968604.a n = A085982 (n + 1)

end A085982

/-! ## A085982.P6005455847413569013

`A316869(A008578(n+2))`
-/

namespace A085982.P6005455847413569013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A008578 (n + 2)).toNat

end

end A085982.P6005455847413569013

namespace A085982

/-- `A316869(A008578(n+2))` -/
def P6005455847413569013.Spec : Prop :=
  ∀ n, P6005455847413569013.a n = A085982 (n + 1)

end A085982

/-!
# A085983: Number of 9's in decimal expansion of prime(n).

The programs for A085983, the canonical program `A085983.P7312168140230554725` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085983 has offset 1).

The definition of A085983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085983.P7312168140230554725

`∑{digits}[A000040(n+1), C(#, 9)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085983

/-- `∑{digits}[A000040(n+1), C(#, 9)]` -/
def P7312168140230554725.Spec : Prop :=
  ∀ n, (P7312168140230554725.a n : ℤ) = A085983 (n + 1)

theorem P7312168140230554725.correct : P7312168140230554725.Spec := by
  intro n
  simp only [A085983, Nat.add_sub_cancel]

end A085983

/-! ## A085983.P7323386632897236632

`∑{digits}[A000040(n+1), A036640(#)]`
-/

namespace A085983.P7323386632897236632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum

end

end A085983.P7323386632897236632

namespace A085983

/-- `∑{digits}[A000040(n+1), A036640(#)]` -/
def P7323386632897236632.Spec : Prop :=
  ∀ n, P7323386632897236632.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P18361531593542704342

`∑{digits}[A000040(n+1), A090418(#²)]`
-/

namespace A085983.P18361531593542704342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A090418 (x ^ 2)).sum

end

end A085983.P18361531593542704342

namespace A085983

/-- `∑{digits}[A000040(n+1), A090418(#²)]` -/
def P18361531593542704342.Spec : Prop :=
  ∀ n, P18361531593542704342.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P7084433825306588970

`∑{digits}[A000040(n+1), A059995(#+1)]`
-/

namespace A085983.P7084433825306588970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059995 (x + 1)).sum

end

end A085983.P7084433825306588970

namespace A085983

/-- `∑{digits}[A000040(n+1), A059995(#+1)]` -/
def P7084433825306588970.Spec : Prop :=
  ∀ n, P7084433825306588970.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P8488535169324224040

`∑{digits}[A000040(n+1), A002264(A002264(#))]`
-/

namespace A085983.P8488535169324224040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002264 (A002264 x).toNat).sum

end

end A085983.P8488535169324224040

namespace A085983

/-- `∑{digits}[A000040(n+1), A002264(A002264(#))]` -/
def P8488535169324224040.Spec : Prop :=
  ∀ n, P8488535169324224040.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P13032717280125320469

`A302552(n+1)-A277116(A000040(n+1))`
-/

namespace A085983.P13032717280125320469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302552 (n + 1) - A277116 (A000040 (n + 1)).toNat

end

end A085983.P13032717280125320469

namespace A085983

/-- `A302552(n+1)-A277116(A000040(n+1))` -/
def P13032717280125320469.Spec : Prop :=
  ∀ n, P13032717280125320469.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P2654773791093920195

`A102683(A171013(n+1))`
-/

namespace A085983.P2654773791093920195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171013 (n + 1)).toNat

end

end A085983.P2654773791093920195

namespace A085983

/-- `A102683(A171013(n+1))` -/
def P2654773791093920195.Spec : Prop :=
  ∀ n, P2654773791093920195.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P8351873766944389077

`A102683(A028905(n+1))`
-/

namespace A085983.P8351873766944389077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A028905 (n + 1)).toNat

end

end A085983.P8351873766944389077

namespace A085983

/-- `A102683(A028905(n+1))` -/
def P8351873766944389077.Spec : Prop :=
  ∀ n, P8351873766944389077.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P17219596939917350392

`A102683(A000040(n+1))`
-/

namespace A085983.P17219596939917350392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A000040 (n + 1)).toNat

end

end A085983.P17219596939917350392

namespace A085983

/-- `A102683(A000040(n+1))` -/
def P17219596939917350392.Spec : Prop :=
  ∀ n, P17219596939917350392.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P13815478686378927770

`A102683(A004087(n+1))`
-/

namespace A085983.P13815478686378927770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A004087 (n + 1)).toNat

end

end A085983.P13815478686378927770

namespace A085983

/-- `A102683(A004087(n+1))` -/
def P13815478686378927770.Spec : Prop :=
  ∀ n, P13815478686378927770.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P6748270403909883291

`A102683(A006005(n+1))`
-/

namespace A085983.P6748270403909883291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A006005 (n + 1)).toNat

end

end A085983.P6748270403909883291

namespace A085983

/-- `A102683(A006005(n+1))` -/
def P6748270403909883291.Spec : Prop :=
  ∀ n, P6748270403909883291.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P17618848305233875910

`A102683(A028906(n+1))`
-/

namespace A085983.P17618848305233875910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A028906 (n + 1)).toNat

end

end A085983.P17618848305233875910

namespace A085983

/-- `A102683(A028906(n+1))` -/
def P17618848305233875910.Spec : Prop :=
  ∀ n, P17618848305233875910.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P7282752829880061

`A102683(A161847(n+1))`
-/

namespace A085983.P7282752829880061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A161847 (n + 1)).toNat

end

end A085983.P7282752829880061

namespace A085983

/-- `A102683(A161847(n+1))` -/
def P7282752829880061.Spec : Prop :=
  ∀ n, P7282752829880061.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P3998189371359168835

`A102683(A171014(n+1))`
-/

namespace A085983.P3998189371359168835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171014 (n + 1)).toNat

end

end A085983.P3998189371359168835

namespace A085983

/-- `A102683(A171014(n+1))` -/
def P3998189371359168835.Spec : Prop :=
  ∀ n, P3998189371359168835.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P2862125462898304293

`A102683(A171015(n+1))`
-/

namespace A085983.P2862125462898304293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171015 (n + 1)).toNat

end

end A085983.P2862125462898304293

namespace A085983

/-- `A102683(A171015(n+1))` -/
def P2862125462898304293.Spec : Prop :=
  ∀ n, P2862125462898304293.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P10133436951560807874

`A102683(A171016(n+1))`
-/

namespace A085983.P10133436951560807874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171016 (n + 1)).toNat

end

end A085983.P10133436951560807874

namespace A085983

/-- `A102683(A171016(n+1))` -/
def P10133436951560807874.Spec : Prop :=
  ∀ n, P10133436951560807874.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P646889897359551109

`A102683(A171018(n+1))`
-/

namespace A085983.P646889897359551109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171018 (n + 1)).toNat

end

end A085983.P646889897359551109

namespace A085983

/-- `A102683(A171018(n+1))` -/
def P646889897359551109.Spec : Prop :=
  ∀ n, P646889897359551109.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P1279127903815633408

`A102683(A171019(n+1))`
-/

namespace A085983.P1279127903815633408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171019 (n + 1)).toNat

end

end A085983.P1279127903815633408

namespace A085983

/-- `A102683(A171019(n+1))` -/
def P1279127903815633408.Spec : Prop :=
  ∀ n, P1279127903815633408.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P15899315596071805751

`A102683(A171020(n+1))`
-/

namespace A085983.P15899315596071805751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171020 (n + 1)).toNat

end

end A085983.P15899315596071805751

namespace A085983

/-- `A102683(A171020(n+1))` -/
def P15899315596071805751.Spec : Prop :=
  ∀ n, P15899315596071805751.a n = A085983 (n + 1)

end A085983

/-! ## A085983.P10811809693571307944

`A102683(A171021(n+1))`
-/

namespace A085983.P10811809693571307944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171021 (n + 1)).toNat

end

end A085983.P10811809693571307944

namespace A085983

/-- `A102683(A171021(n+1))` -/
def P10811809693571307944.Spec : Prop :=
  ∀ n, P10811809693571307944.a n = A085983 (n + 1)

end A085983

/-!
# A085985: a(n) = A049084(A085818(n)).

The programs for A085985, there is no canonical definition to state claims against.
-/

/-! ## A085985.P13103444701458865168

`A049084(A085818(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085985.P13103444701458865168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A085818 (n + 1)).toNat

end

end A085985.P13103444701458865168

/-! ## A085985.P18385282023982963303

`∑{d}[A085818(n+1), A061395(#)]`
-/

namespace A085985.P18385282023982963303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A085985.P18385282023982963303

/-! ## A085985.P2453896586723968569

`A346698(2*A085818(n+1))`
-/

namespace A085985.P2453896586723968569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A085818 (n + 1)).toNat

end

end A085985.P2453896586723968569

/-! ## A085985.P2216450529560685863

`∑{d}[A085818(n+1), A055396(#)]`
-/

namespace A085985.P2216450529560685863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A085985.P2216450529560685863

/-! ## A085985.P3966589411022470531

`∑{d}[A085818(n+1), A056239(#)]`
-/

namespace A085985.P3966589411022470531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A085985.P3966589411022470531

/-! ## A085985.P16631381411328166352

`∑{p}[A085818(n+1), A003963(#)]`
-/

namespace A085985.P16631381411328166352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A085985.P16631381411328166352

/-! ## A085985.P16061932659370046221

`A286471(2*A085818(n+1))`
-/

namespace A085985.P16061932659370046221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A085818 (n + 1)).toNat

end

end A085985.P16061932659370046221

/-! ## A085985.P10469589966979475214

`A055679(2*A085818(n+1))`
-/

namespace A085985.P10469589966979475214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * A085818 (n + 1)).toNat

end

end A085985.P10469589966979475214

/-! ## A085985.P9302592397610034637

`A061395(A085818(n+1)²)`
-/

namespace A085985.P9302592397610034637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A085818 (n + 1) ^ 2).toNat

end

end A085985.P9302592397610034637

/-!
# A085986: Squares of the squarefree semiprimes (p^2*q^2).

The programs for A085986, the canonical program `A085986.P3066413001146269465` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085986 has offset 1).

The definition of A085986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085986.P3066413001146269465

`A006881(n+1)²`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A085986

/-- `A006881(n+1)²` -/
def P3066413001146269465.Spec : Prop :=
  ∀ n, P3066413001146269465.a n = A085986 (n + 1)

theorem P3066413001146269465.correct : P3066413001146269465.Spec := by
  intro n
  simp only [A085986, Nat.add_sub_cancel]

end A085986

/-! ## A085986.P15377755362678729741

`sqrt(A189991(n+1))`
-/

namespace A085986.P15377755362678729741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189991 (n + 1) : ℝ)

end

end A085986.P15377755362678729741

namespace A085986

/-- `sqrt(A189991(n+1))` -/
def P15377755362678729741.Spec : Prop :=
  ∀ n, P15377755362678729741.a n = (A085986 (n + 1) : ℝ)

end A085986

/-! ## A085986.P14931573745558499520

`eq[4, A077462(n)]²`
-/

namespace A085986.P14931573745558499520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A085986.P14931573745558499520

namespace A085986

/-- `eq[4, A077462(n)]²` -/
def P14931573745558499520.Spec : Prop :=
  ∀ n, (P14931573745558499520.a n : ℤ) = A085986 (n + 1)

end A085986

/-! ## A085986.P16047029443709348132

`A162142(n+1)^(2/3)`
-/

namespace A085986.P16047029443709348132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A162142 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A085986.P16047029443709348132

namespace A085986

/-- `A162142(n+1)^(2/3)` -/
def P16047029443709348132.Spec : Prop :=
  ∀ n, P16047029443709348132.a n = (A085986 (n + 1) : ℝ)

end A085986

/-! ## A085986.P4416825613042491959

`(eq[1, A281116(n+1)]+1)²`
-/

namespace A085986.P4416825613042491959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A085986.P4416825613042491959

namespace A085986

/-- `(eq[1, A281116(n+1)]+1)²` -/
def P4416825613042491959.Spec : Prop :=
  ∀ n, (P4416825613042491959.a n : ℤ) = A085986 (n + 1)

end A085986

/-! ## A085986.P7663122574187395521

`(eq[2, A046645(n+1)]+1)²`
-/

namespace A085986.P7663122574187395521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A085986.P7663122574187395521

namespace A085986

/-- `(eq[2, A046645(n+1)]+1)²` -/
def P7663122574187395521.Spec : Prop :=
  ∀ n, (P7663122574187395521.a n : ℤ) = A085986 (n + 1)

end A085986

/-! ## A085986.P17922251826823442408

`(eq[2, A051709(n+1)]+1)²`
-/

namespace A085986.P17922251826823442408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A085986.P17922251826823442408

namespace A085986

/-- `(eq[2, A051709(n+1)]+1)²` -/
def P17922251826823442408.Spec : Prop :=
  ∀ n, (P17922251826823442408.a n : ℤ) = A085986 (n + 1)

end A085986

/-! ## A085986.P12930626320892544720

`(eq[2, A090885(n+1)]+1)²`
-/

namespace A085986.P12930626320892544720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A085986.P12930626320892544720

namespace A085986

/-- `(eq[2, A090885(n+1)]+1)²` -/
def P12930626320892544720.Spec : Prop :=
  ∀ n, (P12930626320892544720.a n : ℤ) = A085986 (n + 1)

end A085986

/-! ## A085986.P7022186675780010992

`A162142(n+1)/A006881(n+1)`
-/

namespace A085986.P7022186675780010992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162142 (n + 1) : ℚ) / (A006881 (n + 1) : ℚ)

end

end A085986.P7022186675780010992

namespace A085986

/-- `A162142(n+1)/A006881(n+1)` -/
def P7022186675780010992.Spec : Prop :=
  ∀ n, P7022186675780010992.a n = (A085986 (n + 1) : ℚ)

end A085986

/-! ## A085986.P18410181520093632910

`A190465(n+1)/A162142(n+1)`
-/

namespace A085986.P18410181520093632910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190465 (n + 1) : ℚ) / (A162142 (n + 1) : ℚ)

end

end A085986.P18410181520093632910

namespace A085986

/-- `A190465(n+1)/A162142(n+1)` -/
def P18410181520093632910.Spec : Prop :=
  ∀ n, P18410181520093632910.a n = (A085986 (n + 1) : ℚ)

end A085986

/-! ## A085986.P3912608132313365426

`A006881(A000027(n+1))*A006881(n+1)`
-/

namespace A085986.P3912608132313365426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (A000027 (n + 1)).toNat * A006881 (n + 1)

end

end A085986.P3912608132313365426

namespace A085986

/-- `A006881(A000027(n+1))*A006881(n+1)` -/
def P3912608132313365426.Spec : Prop :=
  ∀ n, P3912608132313365426.a n = A085986 (n + 1)

end A085986

/-! ## A085986.P2400563608205050893

`A006881(n+1)*A006881(A028310(n+1))`
-/

namespace A085986.P2400563608205050893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) * A006881 (A028310 (n + 1)).toNat

end

end A085986.P2400563608205050893

namespace A085986

/-- `A006881(n+1)*A006881(A028310(n+1))` -/
def P2400563608205050893.Spec : Prop :=
  ∀ n, P2400563608205050893.a n = A085986 (n + 1)

end A085986

/-! ## A085986.P13218772165329636836

`A006881(n+1)*A070647(n+1)*A096916(n+1)`
-/

namespace A085986.P13218772165329636836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) * A070647 (n + 1) * A096916 (n + 1)

end

end A085986.P13218772165329636836

namespace A085986

/-- `A006881(n+1)*A070647(n+1)*A096916(n+1)` -/
def P13218772165329636836.Spec : Prop :=
  ∀ n, P13218772165329636836.a n = A085986 (n + 1)

end A085986

/-! ## A085986.P932850901333344833

`A161918(A065475(n+1))²`
-/

namespace A085986.P932850901333344833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (A065475 (n + 1)).toNat ^ 2

end

end A085986.P932850901333344833

namespace A085986

/-- `A161918(A065475(n+1))²` -/
def P932850901333344833.Spec : Prop :=
  ∀ n, P932850901333344833.a n = A085986 (n + 1)

end A085986

/-! ## A085986.P1645580829362545258

`A161918(A181440(n+2))²`
-/

namespace A085986.P1645580829362545258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (A181440 (n + 2)).toNat ^ 2

end

end A085986.P1645580829362545258

namespace A085986

/-- `A161918(A181440(n+2))²` -/
def P1645580829362545258.Spec : Prop :=
  ∀ n, P1645580829362545258.a n = A085986 (n + 1)

end A085986

/-! ## A085986.P6197357321040740940

`A161918(A184985(n+2))²`
-/

namespace A085986.P6197357321040740940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (A184985 (n + 2)).toNat ^ 2

end

end A085986.P6197357321040740940

namespace A085986

/-- `A161918(A184985(n+2))²` -/
def P6197357321040740940.Spec : Prop :=
  ∀ n, P6197357321040740940.a n = A085986 (n + 1)

end A085986

/-! ## A085986.P791483533514993971

`record[∏{p}[A325230(n+1), #²]]`
-/

namespace A085986.P791483533514993971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085986.P791483533514993971

namespace A085986

/-- `record[∏{p}[A325230(n+1), #²]]` -/
def P791483533514993971.Spec : Prop :=
  ∀ n, (P791483533514993971.a n : ℤ) = A085986 (n + 1)

end A085986

/-! ## A085986.P8846358636525470084

`∩[A074985(n+1), A077448(n+1)]`
-/

namespace A085986.P8846358636525470084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085986.P8846358636525470084

namespace A085986

/-- `∩[A074985(n+1), A077448(n+1)]` -/
def P8846358636525470084.Spec : Prop :=
  ∀ n, (P8846358636525470084.a n : ℤ) = A085986 (n + 1)

end A085986

/-! ## A085986.P1128168326892756541

`A167171(A182800(n+1))²`
-/

namespace A085986.P1128168326892756541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (A182800 (n + 1)).toNat ^ 2

end

end A085986.P1128168326892756541

namespace A085986

/-- `A167171(A182800(n+1))²` -/
def P1128168326892756541.Spec : Prop :=
  ∀ n, P1128168326892756541.a n = A085986 (n + 1)

end A085986

/-! ## A085986.P3953095018325603083

`eq[3, A074206(n)]²`
-/

namespace A085986.P3953095018325603083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A085986.P3953095018325603083

namespace A085986

/-- `eq[3, A074206(n)]²` -/
def P3953095018325603083.Spec : Prop :=
  ∀ n, (P3953095018325603083.a n : ℤ) = A085986 (n + 1)

end A085986

/-!
# A085987: Product of exactly four primes, three of which are distinct (p^2*q*r).

The programs for A085987, the canonical program `A085987.P7602126064279087842` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085987 has offset 1).

The definition of A085987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085987.P7602126064279087842

`filter[A030630(n+1), A212793(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A085987

/-- `filter[A030630(n+1), A212793(#)]` -/
def P7602126064279087842.Spec : Prop :=
  ∀ n, P7602126064279087842.a n = A085987 (n + 1)

theorem P7602126064279087842.correct : P7602126064279087842.Spec := by
  intro n
  simp only [A085987, Nat.add_sub_cancel]

end A085987

/-! ## A085987.P11059976701236749455

`filter[A030630(n+1), A355823(#)]`
-/

namespace A085987.P11059976701236749455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A085987.P11059976701236749455

namespace A085987

/-- `filter[A030630(n+1), A355823(#)]` -/
def P11059976701236749455.Spec : Prop :=
  ∀ n, P11059976701236749455.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P5923568578650678767

`filter[A030630(n+1), A359429(#)]`
-/

namespace A085987.P5923568578650678767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A085987.P5923568578650678767

namespace A085987

/-- `filter[A030630(n+1), A359429(#)]` -/
def P5923568578650678767.Spec : Prop :=
  ∀ n, P5923568578650678767.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P2471736032995959040

`filter[A030630(n+1), A359471(#)]`
-/

namespace A085987.P2471736032995959040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A085987.P2471736032995959040

namespace A085987

/-- `filter[A030630(n+1), A359471(#)]` -/
def P2471736032995959040.Spec : Prop :=
  ∀ n, P2471736032995959040.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P15357012911020151603

`filter[A030630(n+1), A359474(#)]`
-/

namespace A085987.P15357012911020151603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A085987.P15357012911020151603

namespace A085987

/-- `filter[A030630(n+1), A359474(#)]` -/
def P15357012911020151603.Spec : Prop :=
  ∀ n, P15357012911020151603.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P2591169193468932309

`filter[A030630(n+1), A359475(#)]`
-/

namespace A085987.P2591169193468932309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A085987.P2591169193468932309

namespace A085987

/-- `filter[A030630(n+1), A359475(#)]` -/
def P2591169193468932309.Spec : Prop :=
  ∀ n, P2591169193468932309.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P5601213378602347300

`filter[A030630(n+1), A359764(#)]`
-/

namespace A085987.P5601213378602347300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A085987.P5601213378602347300

namespace A085987

/-- `filter[A030630(n+1), A359764(#)]` -/
def P5601213378602347300.Spec : Prop :=
  ∀ n, P5601213378602347300.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P8117267035484770631

`filter[A307341(n+1), A359471(#)]`
-/

namespace A085987.P8117267035484770631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A085987.P8117267035484770631

namespace A085987

/-- `filter[A307341(n+1), A359471(#)]` -/
def P8117267035484770631.Spec : Prop :=
  ∀ n, P8117267035484770631.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P3259815628881554747

`filter[A307341(n+1), A359474(#)]`
-/

namespace A085987.P3259815628881554747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A085987.P3259815628881554747

namespace A085987

/-- `filter[A307341(n+1), A359474(#)]` -/
def P3259815628881554747.Spec : Prop :=
  ∀ n, P3259815628881554747.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P5899492674137296869

`filter[A307341(n+1), A359475(#)]`
-/

namespace A085987.P5899492674137296869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A085987.P5899492674137296869

namespace A085987

/-- `filter[A307341(n+1), A359475(#)]` -/
def P5899492674137296869.Spec : Prop :=
  ∀ n, P5899492674137296869.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P8271067263959525794

`filter[A030630(n+1), A101637(#)]`
-/

namespace A085987.P8271067263959525794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A085987.P8271067263959525794

namespace A085987

/-- `filter[A030630(n+1), A101637(#)]` -/
def P8271067263959525794.Spec : Prop :=
  ∀ n, P8271067263959525794.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P2997066137660364542

`filter[A356413(n+1), A101637(#)]`
-/

namespace A085987.P2997066137660364542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A085987.P2997066137660364542

namespace A085987

/-- `filter[A356413(n+1), A101637(#)]` -/
def P2997066137660364542.Spec : Prop :=
  ∀ n, P2997066137660364542.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P8144858271952958819

`filter[A398316(n+1), A101637(#)]`
-/

namespace A085987.P8144858271952958819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A085987.P8144858271952958819

namespace A085987

/-- `filter[A398316(n+1), A101637(#)]` -/
def P8144858271952958819.Spec : Prop :=
  ∀ n, P8144858271952958819.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P11393615411341533999

`filter[A350371(n+1), A101637(#)]`
-/

namespace A085987.P11393615411341533999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A085987.P11393615411341533999

namespace A085987

/-- `filter[A350371(n+1), A101637(#)]` -/
def P11393615411341533999.Spec : Prop :=
  ∀ n, P11393615411341533999.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P6210176205962767846

`filter[A350371(n+1), A212793(#)]`
-/

namespace A085987.P6210176205962767846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A085987.P6210176205962767846

namespace A085987

/-- `filter[A350371(n+1), A212793(#)]` -/
def P6210176205962767846.Spec : Prop :=
  ∀ n, P6210176205962767846.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P12121691906954569647

`filter[A350371(n+1), A359429(#)]`
-/

namespace A085987.P12121691906954569647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A085987.P12121691906954569647

namespace A085987

/-- `filter[A350371(n+1), A359429(#)]` -/
def P12121691906954569647.Spec : Prop :=
  ∀ n, P12121691906954569647.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P2572618683660766602

`filter[A350371(n+1), A359471(#)]`
-/

namespace A085987.P2572618683660766602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A085987.P2572618683660766602

namespace A085987

/-- `filter[A350371(n+1), A359471(#)]` -/
def P2572618683660766602.Spec : Prop :=
  ∀ n, P2572618683660766602.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P16532803079109647425

`filter[A350371(n+1), A359474(#)]`
-/

namespace A085987.P16532803079109647425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A085987.P16532803079109647425

namespace A085987

/-- `filter[A350371(n+1), A359474(#)]` -/
def P16532803079109647425.Spec : Prop :=
  ∀ n, P16532803079109647425.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P8318243959816440364

`filter[A350371(n+1), A359475(#)]`
-/

namespace A085987.P8318243959816440364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A085987.P8318243959816440364

namespace A085987

/-- `filter[A350371(n+1), A359475(#)]` -/
def P8318243959816440364.Spec : Prop :=
  ∀ n, P8318243959816440364.a n = A085987 (n + 1)

end A085987

/-! ## A085987.P15419806219854841024

`filter[A350371(n+1), A359764(#)]`
-/

namespace A085987.P15419806219854841024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A085987.P15419806219854841024

namespace A085987

/-- `filter[A350371(n+1), A359764(#)]` -/
def P15419806219854841024.Spec : Prop :=
  ∀ n, P15419806219854841024.a n = A085987 (n + 1)

end A085987

/-!
# A085988: Triangle of least prime signatures such that T(1,1)= 1; T(r,j) = 2*T(r,j-1) for j>1 and T(r+1,1) is the smallest value in A025487 not appearing on an earlier row.

The programs for A085988, there is no canonical definition to state claims against.
-/

/-! ## A085988.P13539301990408901085

`A000005(A335831(n+1)+A271040(n))`
-/

namespace A085988.P13539301990408901085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A335831 (n + 1) + A271040 n).toNat

end

end A085988.P13539301990408901085

/-! ## A085988.P16011118927868307709

`A000005(A019995(n)*A032200(n+1))`
-/

namespace A085988.P16011118927868307709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019995 n * A032200 (n + 1)).toNat

end

end A085988.P16011118927868307709

/-! ## A085988.P7462931473824136212

`A002024(n+1)*A382872(A047974(n))`
-/

namespace A085988.P7462931473824136212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A382872 (A047974 n).toNat

end

end A085988.P7462931473824136212

/-! ## A085988.P11691393484333806844

`A000005(A000010(n+2)*A200075(n))`
-/

namespace A085988.P11691393484333806844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 2) * A200075 n).toNat

end

end A085988.P11691393484333806844

/-! ## A085988.P16125340073523845855

`A000005(A001006(n)*A002865(2*n+3))`
-/

namespace A085988.P16125340073523845855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001006 n * A002865 (2 * n + 3)).toNat

end

end A085988.P16125340073523845855

/-!
# A085989: Numbers that can be expressed as a sum of two squares, each >=2.

The programs for A085989, the canonical program `A085989.P6990637171742697713` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085989 has offset 1).

The definition of A085989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085989.P6990637171742697713

`lt[A010052(n-A025426(n)), A025426(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A085989

/-- `lt[A010052(n-A025426(n)), A025426(n)]` -/
def P6990637171742697713.Spec : Prop :=
  ∀ n, (P6990637171742697713.a n : ℤ) = A085989 (n + 1)

theorem P6990637171742697713.correct : P6990637171742697713.Spec := by
  intro n
  simp only [A085989, Nat.add_sub_cancel]

end A085989

/-! ## A085989.P2803808494073681289

`lt[A004273(n), A347801(n)]`
-/

namespace A085989.P2803808494073681289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P2803808494073681289

namespace A085989

/-- `lt[A004273(n), A347801(n)]` -/
def P2803808494073681289.Spec : Prop :=
  ∀ n, (P2803808494073681289.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P14304367707575899069

`lt[2*A262690(n), A347801(n)]`
-/

namespace A085989.P14304367707575899069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P14304367707575899069

namespace A085989

/-- `lt[2*A262690(n), A347801(n)]` -/
def P14304367707575899069.Spec : Prop :=
  ∀ n, (P14304367707575899069.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P1934466345443211480

`lt[A255131(n)+n, A347801(n)]`
-/

namespace A085989.P1934466345443211480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P1934466345443211480

namespace A085989

/-- `lt[A255131(n)+n, A347801(n)]` -/
def P1934466345443211480.Spec : Prop :=
  ∀ n, (P1934466345443211480.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P14375942597365806683

`lt[n*A063725(n), A347801(n)]`
-/

namespace A085989.P14375942597365806683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P14375942597365806683

namespace A085989

/-- `lt[n*A063725(n), A347801(n)]` -/
def P14375942597365806683.Spec : Prop :=
  ∀ n, (P14375942597365806683.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P18142567641026757386

`lt[A004741(A028310(n)), A037214(n)]`
-/

namespace A085989.P18142567641026757386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P18142567641026757386

namespace A085989

/-- `lt[A004741(A028310(n)), A037214(n)]` -/
def P18142567641026757386.Spec : Prop :=
  ∀ n, (P18142567641026757386.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P4736541820928348902

`lt[A005843(A262690(n)), A347801(n)]`
-/

namespace A085989.P4736541820928348902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A262690 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P4736541820928348902

namespace A085989

/-- `lt[A005843(A262690(n)), A347801(n)]` -/
def P4736541820928348902.Spec : Prop :=
  ∀ n, (P4736541820928348902.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P4312459023133107493

`lt[A019427(A065033(n)), A347801(n)]`
-/

namespace A085989.P4312459023133107493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P4312459023133107493

namespace A085989

/-- `lt[A019427(A065033(n)), A347801(n)]` -/
def P4312459023133107493.Spec : Prop :=
  ∀ n, (P4312459023133107493.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P6459897962775427422

`lt[A008486(A133310(n)), A347801(n)]`
-/

namespace A085989.P6459897962775427422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A133310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P6459897962775427422

namespace A085989

/-- `lt[A008486(A133310(n)), A347801(n)]` -/
def P6459897962775427422.Spec : Prop :=
  ∀ n, (P6459897962775427422.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P13923309796750557311

`lt[A255131(2*n), A347801(n)]`
-/

namespace A085989.P13923309796750557311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P13923309796750557311

namespace A085989

/-- `lt[A255131(2*n), A347801(n)]` -/
def P13923309796750557311.Spec : Prop :=
  ∀ n, (P13923309796750557311.a n : ℤ) = A085989 (n + 1)

end A085989

/-! ## A085989.P13165818117721440845

`lt[A255131(A005843(n))², A347801(n)²]`
-/

namespace A085989.P13165818117721440845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (A005843 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P13165818117721440845

namespace A085989

/-- `lt[A255131(A005843(n))², A347801(n)²]` -/
def P13165818117721440845.Spec : Prop :=
  ∀ n, (P13165818117721440845.a n : ℤ) = A085989 (n + 1)

end A085989

/-!
# A085990: Number of topological types of polygons with 2n different sides.

The programs for A085990, there is no canonical definition to state claims against.
-/

/-! ## A085990.P16209290873016136653

`floor(Δ[n²]!/2)`
-/

namespace A085990.P16209290873016136653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A085990.P16209290873016136653

/-! ## A085990.P5945041443230291971

`lcm(n, Δ[n²]!)/2`
-/

namespace A085990.P5945041443230291971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) : ℚ) / 2

end

end A085990.P5945041443230291971

/-! ## A085990.P527924413939916747

`floor(1/2*(2*n+1)!)`
-/

namespace A085990.P527924413939916747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 2 * (Nat.factorial (2 * n + 1) : ℚ)⌋

end

end A085990.P527924413939916747

/-! ## A085990.P7362927406211947030

`ceil(((2*n+1)!-1)/2)`
-/

namespace A085990.P7362927406211947030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.factorial (2 * n + 1) : ℤ) - 1 : ℚ) / 2⌉

end

end A085990.P7362927406211947030

/-! ## A085990.P1879904616434601075

`and(-2, (2*n+1)!)/2`
-/

namespace A085990.P1879904616434601075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (Nat.factorial (2 * n + 1) : ℤ) : ℚ) / 2

end

end A085990.P1879904616434601075

/-!
# A085999: For p = prime(n), a(n) is the smallest base-2 pseudoprime N (that is, 2^(N-1) = 1 mod N) such that p divides N.

The programs for A085999, there is no canonical definition to state claims against.
-/

/-! ## A085999.P18173032781717515401

`A065091(n+1)*A086000(n+2)`
-/

namespace A085999.P18173032781717515401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A086000 (n + 2)

end

end A085999.P18173032781717515401

/-! ## A085999.P4340910029112126014

`A000040(n+2)*A086000(n+2)`
-/

namespace A085999.P4340910029112126014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A086000 (n + 2)

end

end A085999.P4340910029112126014

/-! ## A085999.P15633776991675177724

`(A014692(n+2)+n+1)*A086000(n+2)`
-/

namespace A085999.P15633776991675177724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 2) + (n + 1 : ℤ)) * A086000 (n + 2)

end

end A085999.P15633776991675177724

/-! ## A085999.P15070999822540639616

`p?[A002181(n+1)]*A086000(n+2)`
-/

namespace A085999.P15070999822540639616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A086000 (n + 2)

end

end A085999.P15070999822540639616

/-! ## A085999.P15164861446970594022

`p?[A005408(n)]*A086000(n+2)`
-/

namespace A085999.P15164861446970594022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A086000 (n + 2)

end

end A085999.P15164861446970594022

