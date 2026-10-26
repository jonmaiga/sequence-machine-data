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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A259100: Triangle read by rows, arising in the enumeration of corners.

The programs for A259100, there is no canonical definition to state claims against.
-/

/-! ## A259100.P1465850833887128455

`A249517(A344612(n)+A052509(n))`
-/

namespace A259100.P1465850833887128455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249517 (A344612 n + A052509 n).toNat

end

end A259100.P1465850833887128455

/-! ## A259100.P8124219118181131289

`A000120(A256893(n)^A100063(n))`
-/

namespace A259100.P8124219118181131289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A256893 n : ℚ) ^ (A100063 n : ℤ))).toNat

end

end A259100.P8124219118181131289

/-! ## A259100.P4188768376035190931

`A000120(lcm(A098539(n), A143395(n)))`
-/

namespace A259100.P4188768376035190931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A098539 n) (A143395 n))

end

end A259100.P4188768376035190931

/-! ## A259100.P1576592702759299698

`A000120(A256893(n))%A080535(n+4)`
-/

namespace A259100.P1576592702759299698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A256893 n).toNat) (A080535 (n + 4))

end

end A259100.P1576592702759299698

/-! ## A259100.P13078794705421327365

`A000120(16*A256893(n))`
-/

namespace A259100.P13078794705421327365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (16 * A256893 n).toNat

end

end A259100.P13078794705421327365

/-!
# A259101: Square array read by antidiagonals arising in the enumeration of corners.

The programs for A259101, there is no canonical definition to state claims against.
-/

/-! ## A259101.P17768078906430992404

`A282056(n+1)+A000122(A060168(2*(n+2)))`
-/

namespace A259101.P17768078906430992404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (n + 1) + A000122 (A060168 (2 * (n + 2))).toNat

end

end A259101.P17768078906430992404

/-! ## A259101.P10760114077458083680

`A000122(A060168(2*(n+2)))+A325103(A299844(n+1))+1`
-/

namespace A259101.P10760114077458083680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A060168 (2 * (n + 2))).toNat + (A325103 (A299844 (n + 1)).toNat + 1)

end

end A259101.P10760114077458083680

/-! ## A259101.P3132027465595327512

`A000122(A060168(2*(n+2)))+A325103(A300259(n+1))+1`
-/

namespace A259101.P3132027465595327512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A060168 (2 * (n + 2))).toNat + (A325103 (A300259 (n + 1)).toNat + 1)

end

end A259101.P3132027465595327512

/-! ## A259101.P2342875573611503898

`A000122(A060168(2*(n+2)))+A325103(A305769(n+1))+1`
-/

namespace A259101.P2342875573611503898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A060168 (2 * (n + 2))).toNat + (A325103 (A305769 (n + 1)).toNat + 1)

end

end A259101.P2342875573611503898

/-!
# A259102: Composite repunits with a prime number of 1's.

The programs for A259102, there is no canonical definition to state claims against.
-/

/-! ## A259102.P658659118731285978

`A019328(p?[comp[A138940(n+1)]])`
-/

namespace A259102.P658659118731285978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138940 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A259102.P658659118731285978

/-! ## A259102.P14342917633712464211

`A063671(p?[comp[A138940(n+1)]])`
-/

namespace A259102.P14342917633712464211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138940 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063671 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A259102.P14342917633712464211

/-! ## A259102.P12445615946754867819

`A002275(p?[n+1-A355506(n+1)])`
-/

namespace A259102.P12445615946754867819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A355506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259102.P12445615946754867819

/-!
# A259103: Number of steps to get from n to 1 by process of replacing with the Euler totient function phi if the result is odd, or dividing by 2 if even.

The programs for A259103, the canonical program `A259103.P17430711073458267779` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259103 has offset 1).

The definition of A259103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259103.P17430711073458267779

`n%2+a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1-char[2^n-1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259103

/-- `n%2+a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1-char[2^n-1]` -/
def P17430711073458267779.Spec : Prop :=
  ∀ n, P17430711073458267779.a n = A259103 (n + 1)

theorem P17430711073458267779.correct : P17430711073458267779.Spec := by
  intro n
  simp only [A259103, Nat.add_sub_cancel]

end A259103

/-! ## A259103.P183951891517041080

`A064415(n+1)+A049115(n+1)`
-/

namespace A259103.P183951891517041080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + A049115 (n + 1)

end

end A259103.P183951891517041080

namespace A259103

/-- `A064415(n+1)+A049115(n+1)` -/
def P183951891517041080.Spec : Prop :=
  ∀ n, P183951891517041080.a n = A259103 (n + 1)

theorem P183951891517041080.correct : P183951891517041080.Spec := by
  intro n
  simp only [A259103, Nat.add_sub_cancel, A259103.P183951891517041080.a, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A049115, A049115.P2000805014081711622.a, A064415, A064415.P3438679109517359530.a, A309243, A309243.P2615360336711731693.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259103

/-! ## A259103.P12845444178909171596

`A049115(n+1)+∑[A334195(n+1)]`
-/

namespace A259103.P12845444178909171596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259103.P12845444178909171596

namespace A259103

/-- `A049115(n+1)+∑[A334195(n+1)]` -/
def P12845444178909171596.Spec : Prop :=
  ∀ n, P12845444178909171596.a n = A259103 (n + 1)

end A259103

/-! ## A259103.P12159782024006804799

`A049115(n+1)+val(A309243(n+1), 2)`
-/

namespace A259103.P12159782024006804799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + (SequenceMachineLib.valuation (A309243 (n + 1)).toNat 2 : ℤ)

end

end A259103.P12159782024006804799

namespace A259103

/-- `A049115(n+1)+val(A309243(n+1), 2)` -/
def P12159782024006804799.Spec : Prop :=
  ∀ n, P12159782024006804799.a n = A259103 (n + 1)

theorem P12159782024006804799.correct : P12159782024006804799.Spec := by
  intro n
  simp only [A259103, Nat.add_sub_cancel, A259103.P12159782024006804799.a, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A049115, A049115.P2000805014081711622.a, A309243, A309243.P2615360336711731693.a, A064415, A064415.P3438679109517359530.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259103

/-! ## A259103.P2148120568375138451

`A049115(n+1)+A003434(A062570(n+1))`
-/

namespace A259103.P2148120568375138451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A003434 (A062570 (n + 1)).toNat

end

end A259103.P2148120568375138451

namespace A259103

/-- `A049115(n+1)+A003434(A062570(n+1))` -/
def P2148120568375138451.Spec : Prop :=
  ∀ n, P2148120568375138451.a n = A259103 (n + 1)

end A259103

/-! ## A259103.P15546034417689168115

`A049115(n+1)+A064097(n+1)-A329697(n+1)`
-/

namespace A259103.P15546034417689168115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + (A064097 (n + 1) - A329697 (n + 1))

end

end A259103.P15546034417689168115

namespace A259103

/-- `A049115(n+1)+A064097(n+1)-A329697(n+1)` -/
def P15546034417689168115.Spec : Prop :=
  ∀ n, P15546034417689168115.a n = A259103 (n + 1)

theorem P15546034417689168115.correct : P15546034417689168115.Spec := by
  intro n
  simp only [A259103, Nat.add_sub_cancel, A259103.P15546034417689168115.a, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A049115, A049115.P2000805014081711622.a, A064097, A064097.P8268505920434442649.a, A329697, A329697.P6355568551452954971.a, A052126, A052126.P1944428405920482243.a, A064415, A064415.P3438679109517359530.a, A006530, A006530.P13372528560459906635.a, A309243, A309243.P2615360336711731693.a, A070229, A070229.P5792893597916963980.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259103

/-! ## A259103.P12894465214285999584

`A049115(n+1)+A032358(2*(n+1))`
-/

namespace A259103.P12894465214285999584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A032358 (2 * (n + 1))

end

end A259103.P12894465214285999584

namespace A259103

/-- `A049115(n+1)+A032358(2*(n+1))` -/
def P12894465214285999584.Spec : Prop :=
  ∀ n, P12894465214285999584.a n = A259103 (n + 1)

end A259103

/-! ## A259103.P2671681691130702431

`A003434(2*(n+1))+A049115(n+1)-1`
-/

namespace A259103.P2671681691130702431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (2 * (n + 1)) + (A049115 (n + 1) - 1)

end

end A259103.P2671681691130702431

namespace A259103

/-- `A003434(2*(n+1))+A049115(n+1)-1` -/
def P2671681691130702431.Spec : Prop :=
  ∀ n, P2671681691130702431.a n = A259103 (n + 1)

end A259103

/-! ## A259103.P5908837733836598890

`A049108(2*(n+1))+A049115(n+1)-2`
-/

namespace A259103.P5908837733836598890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (2 * (n + 1)) + (A049115 (n + 1) - 2)

end

end A259103.P5908837733836598890

namespace A259103

/-- `A049108(2*(n+1))+A049115(n+1)-2` -/
def P5908837733836598890.Spec : Prop :=
  ∀ n, P5908837733836598890.a n = A259103 (n + 1)

end A259103

/-! ## A259103.P5872072986685837511

`2*A003434(2*(n+1))-A049113(2*(n+1))`
-/

namespace A259103.P5872072986685837511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003434 (2 * (n + 1)) - A049113 (2 * (n + 1))

end

end A259103.P5872072986685837511

namespace A259103

/-- `2*A003434(2*(n+1))-A049113(2*(n+1))` -/
def P5872072986685837511.Spec : Prop :=
  ∀ n, P5872072986685837511.a n = A259103 (n + 1)

end A259103

/-! ## A259103.P9567456209765714080

`A049108((n+1)²)-A049113(n+1)`
-/

namespace A259103.P9567456209765714080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 ((n + 1) ^ 2) - A049113 (n + 1)

end

end A259103.P9567456209765714080

namespace A259103

/-- `A049108((n+1)²)-A049113(n+1)` -/
def P9567456209765714080.Spec : Prop :=
  ∀ n, P9567456209765714080.a n = A259103 (n + 1)

end A259103

/-!
# A259104: A000522(n+2)-A000522(n).

The programs for A259104, the canonical program `A259104.P10073909568628370232` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259104 has offset 0).

The definition of A259104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000522(n+2)-A000522(n)` (program `A259104.P10073909568628370232`, by `A259104.P10073909568628370232.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259104.P10073909568628370232

`A000522(n+2)-A000522(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259104

/-- `A000522(n+2)-A000522(n)` -/
def P10073909568628370232.Spec : Prop :=
  ∀ n, P10073909568628370232.a n = A259104 n

theorem P10073909568628370232.correct : P10073909568628370232.Spec := by
  intro n
  simp only [A259104]

end A259104

/-! ## A259104.P4044421605799574869

`Δ[(n+2)*n!*∑[1/n!]]`
-/

namespace A259104.P4044421605799574869
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259104.P4044421605799574869

namespace A259104

/-- `Δ[(n+2)*n!*∑[1/n!]]` -/
def P4044421605799574869.Spec : Prop :=
  ∀ n, P4044421605799574869.a n = (A259104 n : ℚ)

end A259104

/-! ## A259104.P1788940410288383218

`2*A144495(n)`
-/

namespace A259104.P1788940410288383218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144495 n

end

end A259104.P1788940410288383218

namespace A259104

/-- `2*A144495(n)` -/
def P1788940410288383218.Spec : Prop :=
  ∀ n, P1788940410288383218.a n = A259104 n

end A259104

/-! ## A259104.P4922024694871548528

`Δ[Δ[A383922(n)]]`
-/

namespace A259104.P4922024694871548528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259104.P4922024694871548528

namespace A259104

/-- `Δ[Δ[A383922(n)]]` -/
def P4922024694871548528.Spec : Prop :=
  ∀ n, P4922024694871548528.a n = A259104 n

end A259104

/-! ## A259104.P17445992590008548858

`Δ[A392965(n+2)]`
-/

namespace A259104.P17445992590008548858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259104.P17445992590008548858

namespace A259104

/-- `Δ[A392965(n+2)]` -/
def P17445992590008548858.Spec : Prop :=
  ∀ n, P17445992590008548858.a n = A259104 n

end A259104

/-! ## A259104.P11901534316073738742

`2*Δ[abs(Δ[A009132(n)])]+2`
-/

namespace A259104.P11901534316073738742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) + 2

end

end A259104.P11901534316073738742

namespace A259104

/-- `2*Δ[abs(Δ[A009132(n)])]+2` -/
def P11901534316073738742.Spec : Prop :=
  ∀ n, P11901534316073738742.a n = A259104 n

end A259104

/-! ## A259104.P16775988348306776712

`A001339(n+1)+A001339(n)`
-/

namespace A259104.P16775988348306776712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 (n + 1) + A001339 n

end

end A259104.P16775988348306776712

namespace A259104

/-- `A001339(n+1)+A001339(n)` -/
def P16775988348306776712.Spec : Prop :=
  ∀ n, P16775988348306776712.a n = A259104 n

end A259104

/-! ## A259104.P5389458064599148924

`A007526(n+2)-A007526(n)`
-/

namespace A259104.P5389458064599148924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 (n + 2) - A007526 n

end

end A259104.P5389458064599148924

namespace A259104

/-- `A007526(n+2)-A007526(n)` -/
def P5389458064599148924.Spec : Prop :=
  ∀ n, P5389458064599148924.a n = A259104 n

end A259104

/-! ## A259104.P1764961329743063363

`A073591(n+2)-A073591(n)`
-/

namespace A259104.P1764961329743063363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073591 (n + 2) - A073591 n

end

end A259104.P1764961329743063363

namespace A259104

/-- `A073591(n+2)-A073591(n)` -/
def P1764961329743063363.Spec : Prop :=
  ∀ n, P1764961329743063363.a n = A259104 n

theorem P1764961329743063363.correct : P1764961329743063363.Spec := by
  intro n
  simp only [A259104, Nat.add_sub_cancel, A259104.P1764961329743063363.a, A259104.P10073909568628370232.a, A000522, A000522.P12126844601845706129.a, A073591, A073591.P4345016296114240383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259104

/-!
# A259105: Number of nonisomorphic tournaments on n nodes that are not multiples of a nontrivial transitive tournament.

The programs for A259105, there is no canonical definition to state claims against.
-/

/-! ## A259105.P14095288491028647718

`A259106(n+1)+A104108(A259144(n+1))`
-/

namespace A259105.P14095288491028647718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259106 (n + 1) + A104108 (A259144 (n + 1)).toNat

end

end A259105.P14095288491028647718

/-! ## A259105.P6725663660206118647

`A259106(n+1)+A118102(A259133(n+1))`
-/

namespace A259105.P6725663660206118647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259106 (n + 1) + A118102 (A259133 (n + 1)).toNat

end

end A259105.P6725663660206118647

/-! ## A259105.P10518508041711157061

`A000568(A065666(n+1))-(A124768(n)-A124762(n))`
-/

namespace A259105.P10518508041711157061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000568 (A065666 (n + 1)).toNat - (A124768 n - A124762 n)

end

end A259105.P10518508041711157061

/-!
# A259106: Number of nonisomorphic nontransitive prime tournaments on n nodes.

The programs for A259106, there is no canonical definition to state claims against.
-/

/-! ## A259106.P9317365546873107851

`A002638(n+1)+A008683(n+1)`
-/

namespace A259106.P9317365546873107851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002638 (n + 1) + A008683 (n + 1)

end

end A259106.P9317365546873107851

/-! ## A259106.P18156780874092502869

`A253206(n+1)+A002638(n+1)`
-/

namespace A259106.P18156780874092502869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253206 (n + 1) + A002638 (n + 1)

end

end A259106.P18156780874092502869

/-! ## A259106.P11508803218103382943

`A002638(n+1)+A007423(n+1)-1`
-/

namespace A259106.P11508803218103382943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002638 (n + 1) + (A007423 (n + 1) - 1)

end

end A259106.P11508803218103382943

/-! ## A259106.P636550239965091720

`A002638(n+1)+A080847(n+1)-2`
-/

namespace A259106.P636550239965091720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002638 (n + 1) + (A080847 (n + 1) - 2)

end

end A259106.P636550239965091720

/-! ## A259106.P15560504531271485783

`A002638(n+1)+2-A129979(n+1)`
-/

namespace A259106.P15560504531271485783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002638 (n + 1) + (2 - A129979 (n + 1))

end

end A259106.P15560504531271485783

/-!
# A259108: a(n) = 2 * A000538(n).

The programs for A259108, the canonical program `A259108.P15840702835331619672` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259108 has offset 0).

The definition of A259108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259108.P15840702835331619672

`2*A000538(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259108

/-- `2*A000538(n)` -/
def P15840702835331619672.Spec : Prop :=
  ∀ n, P15840702835331619672.a n = A259108 n

theorem P15840702835331619672.correct : P15840702835331619672.Spec := by
  intro n
  simp only [A259108]

end A259108

/-! ## A259108.P3621155935069608687

`∑[2*n^4]`
-/

namespace A259108.P3621155935069608687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259108.P3621155935069608687

namespace A259108

/-- `∑[2*n^4]` -/
def P3621155935069608687.Spec : Prop :=
  ∀ n, (P3621155935069608687.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P2829786308715454326

`lcm(2, ∑[2*n²²])`
-/

namespace A259108.P2829786308715454326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259108.P2829786308715454326

namespace A259108

/-- `lcm(2, ∑[2*n²²])` -/
def P2829786308715454326.Spec : Prop :=
  ∀ n, (P2829786308715454326.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P621145189409700161

`∑[n²²]/tan(acot(2))`
-/

namespace A259108.P621145189409700161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A259108.P621145189409700161

namespace A259108

/-- `∑[n²²]/tan(acot(2))` -/
def P621145189409700161.Spec : Prop :=
  ∀ n, P621145189409700161.a n = (A259108 n : ℝ)

end A259108

/-! ## A259108.P2941433221072076589

`∑[n²²]/cot(atan(2))`
-/

namespace A259108.P2941433221072076589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A259108.P2941433221072076589

namespace A259108

/-- `∑[n²²]/cot(atan(2))` -/
def P2941433221072076589.Spec : Prop :=
  ∀ n, P2941433221072076589.a n = (A259108 n : ℝ)

end A259108

/-! ## A259108.P166798068119889239

`gcd(2, 2*n)*∑[n²²]`
-/

namespace A259108.P166798068119889239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259108.P166798068119889239

namespace A259108

/-- `gcd(2, 2*n)*∑[n²²]` -/
def P166798068119889239.Spec : Prop :=
  ∀ n, (P166798068119889239.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P16804974979213886479

`a(n-1)+2*n^4` with `a(0)=0`
-/

namespace A259108.P16804974979213886479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * n ^ 4

end

end A259108.P16804974979213886479

namespace A259108

/-- `a(n-1)+2*n^4` -/
def P16804974979213886479.Spec : Prop :=
  ∀ n, (P16804974979213886479.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P3939273052492306183

`∑[(C(2*n, 2)+n)²]/2`
-/

namespace A259108.P3939273052492306183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 + n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A259108.P3939273052492306183

namespace A259108

/-- `∑[(C(2*n, 2)+n)²]/2` -/
def P3939273052492306183.Spec : Prop :=
  ∀ n, P3939273052492306183.a n = (A259108 n : ℚ)

end A259108

/-! ## A259108.P3618616462186248074

`2*∑[(n*n%(n+1))²]`
-/

namespace A259108.P3618616462186248074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n % (n + 1))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259108.P3618616462186248074

namespace A259108

/-- `2*∑[(n*n%(n+1))²]` -/
def P3618616462186248074.Spec : Prop :=
  ∀ n, (P3618616462186248074.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P13810827989738309031

`floor(a(n-1)+2*n²²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A259108.P13810827989738309031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * (n ^ 2) ^ 2

end

end A259108.P13810827989738309031

namespace A259108

/-- `floor(a(n-1)+2*n²²)` -/
def P13810827989738309031.Spec : Prop :=
  ∀ n, (P13810827989738309031.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P16439892188482391921

`2*∑[∑[a(n-1)+2]²]` with `a(0)=0, a(1)=1`
-/

namespace A259108.P16439892188482391921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259108.P16439892188482391921

namespace A259108

/-- `2*∑[∑[a(n-1)+2]²]` -/
def P16439892188482391921.Spec : Prop :=
  ∀ n, (P16439892188482391921.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P11964037694922612058

`∑[∑[a(n-1)+4]²]/2` with `a(0)=0, a(1)=2`
-/

namespace A259108.P11964037694922612058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A259108.P11964037694922612058

namespace A259108

/-- `∑[∑[a(n-1)+4]²]/2` -/
def P11964037694922612058.Spec : Prop :=
  ∀ n, P11964037694922612058.a n = (A259108 n : ℚ)

end A259108

/-! ## A259108.P9715039317962029871

`2*(n²²+a(n-1)/2)` with `a(0)=0`
-/

namespace A259108.P9715039317962029871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (((n ^ 2) ^ 2 : ℚ) + a (n - 1) / 2)

end

end A259108.P9715039317962029871

namespace A259108

/-- `2*(n²²+a(n-1)/2)` -/
def P9715039317962029871.Spec : Prop :=
  ∀ n, P9715039317962029871.a n = (A259108 n : ℚ)

end A259108

/-! ## A259108.P172865305515008546

`n^4+a(n-1)+n^4` with `a(0)=0`
-/

namespace A259108.P172865305515008546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ 4 + (a (n - 1) + n ^ 4)

end

end A259108.P172865305515008546

namespace A259108

/-- `n^4+a(n-1)+n^4` -/
def P172865305515008546.Spec : Prop :=
  ∀ n, (P172865305515008546.a n : ℤ) = A259108 n

end A259108

/-! ## A259108.P10165408474655167817

`∑[(n*and(2*n+1, 2*n))²]/2`
-/

namespace A259108.P10165408474655167817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.land (2 * n + 1) (2 * n)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A259108.P10165408474655167817

namespace A259108

/-- `∑[(n*and(2*n+1, 2*n))²]/2` -/
def P10165408474655167817.Spec : Prop :=
  ∀ n, P10165408474655167817.a n = (A259108 n : ℚ)

end A259108

/-! ## A259108.P9540510655354619146

`2*(a(n-1)+n²²)-a(n-1)` with `a(0)=0`
-/

namespace A259108.P9540510655354619146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + ((n ^ 2) ^ 2 : ℤ)) - a (n - 1)

end

end A259108.P9540510655354619146

namespace A259108

/-- `2*(a(n-1)+n²²)-a(n-1)` -/
def P9540510655354619146.Spec : Prop :=
  ∀ n, P9540510655354619146.a n = A259108 n

end A259108

/-! ## A259108.P8234120740343203488

`A330151(n)/8`
-/

namespace A259108.P8234120740343203488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330151 n : ℚ) / 8

end

end A259108.P8234120740343203488

namespace A259108

/-- `A330151(n)/8` -/
def P8234120740343203488.Spec : Prop :=
  ∀ n, P8234120740343203488.a n = (A259108 n : ℚ)

end A259108

/-! ## A259108.P7151707483583827140

`2*∑[A000583(n)]`
-/

namespace A259108.P7151707483583827140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259108.P7151707483583827140

namespace A259108

/-- `2*∑[A000583(n)]` -/
def P7151707483583827140.Spec : Prop :=
  ∀ n, P7151707483583827140.a n = A259108 n

end A259108

/-! ## A259108.P5613968093152064172

`∑[A141046(n)]/2`
-/

namespace A259108.P5613968093152064172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A259108.P5613968093152064172

namespace A259108

/-- `∑[A141046(n)]/2` -/
def P5613968093152064172.Spec : Prop :=
  ∀ n, P5613968093152064172.a n = (A259108 n : ℚ)

end A259108

/-! ## A259108.P12959550202563479230

`∑[A001105(n)²]/2`
-/

namespace A259108.P12959550202563479230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A259108.P12959550202563479230

namespace A259108

/-- `∑[A001105(n)²]/2` -/
def P12959550202563479230.Spec : Prop :=
  ∀ n, P12959550202563479230.a n = (A259108 n : ℚ)

end A259108

/-!
# A259109: 2*A000540.

The programs for A259109, the canonical program `A259109.P18322217149291693105` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259109 has offset 0).

The definition of A259109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259109.P18322217149291693105

`n/21-n^3/3+n^5+n^6+2*n^7/7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259109

/-- `n/21-n^3/3+n^5+n^6+2*n^7/7` -/
def P18322217149291693105.Spec : Prop :=
  ∀ n, P18322217149291693105.a n = (A259109 n : ℚ)

end A259109

/-! ## A259109.P15342712097920118685

`2*∑[Δ[C(n, 2)²]²]`
-/

namespace A259109.P15342712097920118685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259109.P15342712097920118685

namespace A259109

/-- `2*∑[Δ[C(n, 2)²]²]` -/
def P15342712097920118685.Spec : Prop :=
  ∀ n, P15342712097920118685.a n = A259109 n

end A259109

/-! ## A259109.P4025568993988006099

`2*∑[(n*(n%(n+1))²)²]`
-/

namespace A259109.P4025568993988006099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n % (n + 1)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259109.P4025568993988006099

namespace A259109

/-- `2*∑[(n*(n%(n+1))²)²]` -/
def P4025568993988006099.Spec : Prop :=
  ∀ n, (P4025568993988006099.a n : ℤ) = A259109 n

end A259109

/-! ## A259109.P10082531050669252108

`2*A000540(n)`
-/

namespace A259109.P10082531050669252108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000540 n

end

end A259109.P10082531050669252108

namespace A259109

/-- `2*A000540(n)` -/
def P10082531050669252108.Spec : Prop :=
  ∀ n, P10082531050669252108.a n = A259109 n

end A259109

/-! ## A259109.P3888333775707632147

`2*∑[A001014(n)]`
-/

namespace A259109.P3888333775707632147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259109.P3888333775707632147

namespace A259109

/-- `2*∑[A001014(n)]` -/
def P3888333775707632147.Spec : Prop :=
  ∀ n, P3888333775707632147.a n = A259109 n

end A259109

/-! ## A259109.P14435076408145263341

`2*∑[A000578(n)²]`
-/

namespace A259109.P14435076408145263341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259109.P14435076408145263341

namespace A259109

/-- `2*∑[A000578(n)²]` -/
def P14435076408145263341.Spec : Prop :=
  ∀ n, P14435076408145263341.a n = A259109 n

end A259109

/-! ## A259109.P12013200102829990021

`∑[A033431(n)²]/2`
-/

namespace A259109.P12013200102829990021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A259109.P12013200102829990021

namespace A259109

/-- `∑[A033431(n)²]/2` -/
def P12013200102829990021.Spec : Prop :=
  ∀ n, P12013200102829990021.a n = (A259109 n : ℚ)

end A259109

/-! ## A259109.P2285072227292749476

`2*(A346642(n)-A347107(n))`
-/

namespace A259109.P2285072227292749476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A346642 n - A347107 n)

end

end A259109.P2285072227292749476

namespace A259109

/-- `2*(A346642(n)-A347107(n))` -/
def P2285072227292749476.Spec : Prop :=
  ∀ n, P2285072227292749476.a n = A259109 n

end A259109

/-! ## A259109.P11780101067523049833

`lcm(A000540(n), A065176(n+1))`
-/

namespace A259109.P11780101067523049833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000540 n) (A065176 (n + 1))

end

end A259109.P11780101067523049833

namespace A259109

/-- `lcm(A000540(n), A065176(n+1))` -/
def P11780101067523049833.Spec : Prop :=
  ∀ n, (P11780101067523049833.a n : ℤ) = A259109 n

end A259109

/-! ## A259109.P10746416283789797736

`∑[A033431(n²)]`
-/

namespace A259109.P10746416283789797736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259109.P10746416283789797736

namespace A259109

/-- `∑[A033431(n²)]` -/
def P10746416283789797736.Spec : Prop :=
  ∀ n, P10746416283789797736.a n = A259109 n

end A259109

/-! ## A259109.P6633648061091339830

`∑[A176581(n²)]`
-/

namespace A259109.P6633648061091339830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176581 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259109.P6633648061091339830

namespace A259109

/-- `∑[A176581(n²)]` -/
def P6633648061091339830.Spec : Prop :=
  ∀ n, P6633648061091339830.a n = A259109 n

end A259109

/-! ## A259109.P2818406061363457057

`2*∑[A065733(n²)]`
-/

namespace A259109.P2818406061363457057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259109.P2818406061363457057

namespace A259109

/-- `2*∑[A065733(n²)]` -/
def P2818406061363457057.Spec : Prop :=
  ∀ n, P2818406061363457057.a n = A259109 n

end A259109

/-! ## A259109.P13018773412532144772

`2*∑[A077115(n²)]`
-/

namespace A259109.P13018773412532144772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077115 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259109.P13018773412532144772

namespace A259109

/-- `2*∑[A077115(n²)]` -/
def P13018773412532144772.Spec : Prop :=
  ∀ n, P13018773412532144772.a n = A259109 n

end A259109

/-! ## A259109.P4278762120336916400

`2*∑[A077118(n²)]`
-/

namespace A259109.P4278762120336916400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077118 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259109.P4278762120336916400

namespace A259109

/-- `2*∑[A077118(n²)]` -/
def P4278762120336916400.Spec : Prop :=
  ∀ n, P4278762120336916400.a n = A259109 n

end A259109

/-! ## A259109.P882556830861688739

`∑[A033430(n²)]/2`
-/

namespace A259109.P882556830861688739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A259109.P882556830861688739

namespace A259109

/-- `∑[A033430(n²)]/2` -/
def P882556830861688739.Spec : Prop :=
  ∀ n, P882556830861688739.a n = (A259109 n : ℚ)

end A259109

/-! ## A259109.P13883541581563275680

`∑[A244726(n²)]/3`
-/

namespace A259109.P13883541581563275680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244726 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A259109.P13883541581563275680

namespace A259109

/-- `∑[A244726(n²)]/3` -/
def P13883541581563275680.Spec : Prop :=
  ∀ n, P13883541581563275680.a n = (A259109 n : ℚ)

end A259109

/-!
# A259110: a(n) = 2*A000447(n).

The programs for A259110, the canonical program `A259110.P15097758536881816686` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259110 has offset 0).

The definition of A259110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000447(n)` (program `A259110.P15097758536881816686`, by `A259110.P15097758536881816686.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259110.P6469935934605421941

`2*C(2*n+1, 3)`
-/

namespace A259110.P6469935934605421941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 1) 3

end

end A259110.P6469935934605421941

namespace A259110

/-- `2*C(2*n+1, 3)` -/
def P6469935934605421941.Spec : Prop :=
  ∀ n, (P6469935934605421941.a n : ℤ) = A259110 n

end A259110

/-! ## A259110.P9342835119766464758

`2*n*(4*n²-1)/3`
-/

namespace A259110.P9342835119766464758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) * ((4 * n ^ 2 : ℤ) - 1) : ℚ) / 3

end

end A259110.P9342835119766464758

namespace A259110

/-- `2*n*(4*n²-1)/3` -/
def P9342835119766464758.Spec : Prop :=
  ∀ n, P9342835119766464758.a n = (A259110 n : ℚ)

end A259110

/-! ## A259110.P15097758536881816686

`2*A000447(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259110

/-- `2*A000447(n)` -/
def P15097758536881816686.Spec : Prop :=
  ∀ n, P15097758536881816686.a n = A259110 n

theorem P15097758536881816686.correct : P15097758536881816686.Spec := by
  intro n
  simp only [A259110]

end A259110

/-! ## A259110.P372984307025390217

`2*record[C(xor(1, n), 3)]`
-/

namespace A259110.P372984307025390217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259110.P372984307025390217

namespace A259110

/-- `2*record[C(xor(1, n), 3)]` -/
def P372984307025390217.Spec : Prop :=
  ∀ n, (P372984307025390217.a n : ℤ) = A259110 n

end A259110

/-! ## A259110.P7178287740777128181

`∑[record[lcm(2, n)²/2]]`
-/

namespace A259110.P7178287740777128181
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n ^ 2 : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259110.P7178287740777128181

namespace A259110

/-- `∑[record[lcm(2, n)²/2]]` -/
def P7178287740777128181.Spec : Prop :=
  ∀ n, P7178287740777128181.a n = (A259110 n : ℚ)

end A259110

/-! ## A259110.P563230119714067224

`2*record[C(n, 3)*and(1, n)]`
-/

namespace A259110.P563230119714067224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259110.P563230119714067224

namespace A259110

/-- `2*record[C(n, 3)*and(1, n)]` -/
def P563230119714067224.Spec : Prop :=
  ∀ n, (P563230119714067224.a n : ℤ) = A259110 n

end A259110

/-! ## A259110.P1948730030940996315

`2*record[C(n^(n%2), 3)]`
-/

namespace A259110.P1948730030940996315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ (n % 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259110.P1948730030940996315

namespace A259110

/-- `2*record[C(n^(n%2), 3)]` -/
def P1948730030940996315.Spec : Prop :=
  ∀ n, (P1948730030940996315.a n : ℤ) = A259110 n

end A259110

/-! ## A259110.P5365890666548863952

`Δ[C((n-1)*2*n, 2)/3]`
-/

namespace A259110.P5365890666548863952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((n : ℤ) - 1) * (2 * n : ℤ)).toNat 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259110.P5365890666548863952

namespace A259110

/-- `Δ[C((n-1)*2*n, 2)/3]` -/
def P5365890666548863952.Spec : Prop :=
  ∀ n, P5365890666548863952.a n = (A259110 n : ℚ)

end A259110

/-! ## A259110.P8157403838872376518

`n/3*record[lcm(n+2, 2*n)]`
-/

namespace A259110.P8157403838872376518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A259110.P8157403838872376518

namespace A259110

/-- `n/3*record[lcm(n+2, 2*n)]` -/
def P8157403838872376518.Spec : Prop :=
  ∀ n, P8157403838872376518.a n = (A259110 n : ℚ)

end A259110

/-! ## A259110.P14591873192902010550

`∑[∑[a(n-1)+16]]-1` with `a(0)=1, a(1)=1, a(2)=16`
-/

namespace A259110.P14591873192902010550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 16] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A259110.P14591873192902010550

namespace A259110

/-- `∑[∑[a(n-1)+16]]-1` -/
def P14591873192902010550.Spec : Prop :=
  ∀ n, P14591873192902010550.a n = A259110 n

end A259110

/-! ## A259110.P13591677942515089445

`a(n-1)+2*(1-2*n)²` with `a(0)=0`
-/

namespace A259110.P13591677942515089445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * (1 - (2 * n : ℤ)) ^ 2

end

end A259110.P13591677942515089445

namespace A259110

/-- `a(n-1)+2*(1-2*n)²` -/
def P13591677942515089445.Spec : Prop :=
  ∀ n, P13591677942515089445.a n = A259110 n

end A259110

/-! ## A259110.P5013755508820324038

`A063523(n)+n`
-/

namespace A259110.P5013755508820324038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n + (n : ℤ)

end

end A259110.P5013755508820324038

namespace A259110

/-- `A063523(n)+n` -/
def P5013755508820324038.Spec : Prop :=
  ∀ n, P5013755508820324038.a n = A259110 n

end A259110

/-! ## A259110.P16722203268911263914

`A143166(n)-n`
-/

namespace A259110.P16722203268911263914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n - (n : ℤ)

end

end A259110.P16722203268911263914

namespace A259110

/-- `A143166(n)-n` -/
def P16722203268911263914.Spec : Prop :=
  ∀ n, P16722203268911263914.a n = A259110 n

end A259110

/-! ## A259110.P3038090247202242808

`∑[A077591(n)]-1`
-/

namespace A259110.P3038090247202242808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A259110.P3038090247202242808

namespace A259110

/-- `∑[A077591(n)]-1` -/
def P3038090247202242808.Spec : Prop :=
  ∀ n, P3038090247202242808.a n = A259110 n

end A259110

/-! ## A259110.P11499196105523329377

`2/3*A035328(n)`
-/

namespace A259110.P11499196105523329377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A035328 n : ℚ)

end

end A259110.P11499196105523329377

namespace A259110

/-- `2/3*A035328(n)` -/
def P11499196105523329377.Spec : Prop :=
  ∀ n, P11499196105523329377.a n = (A259110 n : ℚ)

end A259110

/-! ## A259110.P17784834060688137337

`2*(A035597(n)-n)`
-/

namespace A259110.P17784834060688137337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A035597 n - (n : ℤ))

end

end A259110.P17784834060688137337

namespace A259110

/-- `2*(A035597(n)-n)` -/
def P17784834060688137337.Spec : Prop :=
  ∀ n, P17784834060688137337.a n = A259110 n

end A259110

/-! ## A259110.P6469421577600958538

`A118465(n)/3-n`
-/

namespace A259110.P6469421577600958538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118465 n : ℚ) / 3 - (n : ℚ)

end

end A259110.P6469421577600958538

namespace A259110

/-- `A118465(n)/3-n` -/
def P6469421577600958538.Spec : Prop :=
  ∀ n, P6469421577600958538.a n = (A259110 n : ℚ)

end A259110

/-! ## A259110.P9696416676484541599

`A004466(n)+n^3`
-/

namespace A259110.P9696416676484541599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n + (n ^ 3 : ℤ)

end

end A259110.P9696416676484541599

namespace A259110

/-- `A004466(n)+n^3` -/
def P9696416676484541599.Spec : Prop :=
  ∀ n, P9696416676484541599.a n = A259110 n

end A259110

/-! ## A259110.P15045050243141958325

`∑[2*A004273(n)²]`
-/

namespace A259110.P15045050243141958325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004273 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259110.P15045050243141958325

namespace A259110

/-- `∑[2*A004273(n)²]` -/
def P15045050243141958325.Spec : Prop :=
  ∀ n, P15045050243141958325.a n = A259110 n

end A259110

/-! ## A259110.P2415085631512508976

`∑[A130824(n)²/2]`
-/

namespace A259110.P2415085631512508976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130824 n ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259110.P2415085631512508976

namespace A259110

/-- `∑[A130824(n)²/2]` -/
def P2415085631512508976.Spec : Prop :=
  ∀ n, P2415085631512508976.a n = (A259110 n : ℚ)

end A259110

/-!
# A259111: a(n) = least number k > 1 such that 1^k + 2^k + ... + k^k == n (mod k).

The programs for A259111, there is no canonical definition to state claims against.
-/

/-! ## A259111.P1545489754721778153

`gcd(2*(n+1), A163169(n+1))`
-/

namespace A259111.P1545489754721778153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A163169 (n + 1))

end

end A259111.P1545489754721778153

/-! ## A259111.P5819530805028959280

`A163169(A014681(n))+2*A099894(n)`
-/

namespace A259111.P5819530805028959280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (A014681 n).toNat + 2 * A099894 n

end

end A259111.P5819530805028959280

/-! ## A259111.P15434598042969922862

`A034684(2*A006519(n+1)*A226040(n))`
-/

namespace A259111.P15434598042969922862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (2 * (A006519 (n + 1) * A226040 n)).toNat

end

end A259111.P15434598042969922862

/-! ## A259111.P4222853473673770274

`A163169(n+1)+A048298(A163300(n+1))`
-/

namespace A259111.P4222853473673770274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (n + 1) + A048298 (A163300 (n + 1)).toNat

end

end A259111.P4222853473673770274

/-! ## A259111.P2913013328292981945

`A163169((n+1)*A066169(2*n+1))`
-/

namespace A259111.P2913013328292981945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 ((n + 1 : ℤ) * A066169 (2 * n + 1)).toNat

end

end A259111.P2913013328292981945

/-! ## A259111.P6263937967429075079

`A163169((n+1)*A204894(2*(n+1)))`
-/

namespace A259111.P6263937967429075079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 ((n + 1 : ℤ) * A204894 (2 * (n + 1))).toNat

end

end A259111.P6263937967429075079

/-! ## A259111.P1115567260897153841

`A163169(lcm(n+1, A054723(∑[n%2]+1)))`
-/

namespace A259111.P1115567260897153841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (Int.lcm (n + 1 : ℤ) (A054723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)))

end

end A259111.P1115567260897153841

/-! ## A259111.P5481271827722589136

`A163169(A004926(n+1))`
-/

namespace A259111.P5481271827722589136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (A004926 (n + 1)).toNat

end

end A259111.P5481271827722589136

/-!
# A259114: Number of rooted binary unordered tanglegrams of size n.

The programs for A259114, there is no canonical definition to state claims against.
-/

/-! ## A259114.P18265838612748702632

`A060715(∑[A162655(n)]+1)`
-/

namespace A259114.P18265838612748702632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A259114.P18265838612748702632

/-! ## A259114.P14832296099489247673

`A008619(A056397(n+1)+ceil(n^n/2))`
-/

namespace A259114.P14832296099489247673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A056397 (n + 1) + ⌈(n ^ n : ℚ) / 2⌉).toNat

end

end A259114.P14832296099489247673

/-!
# A259115: Number of unrooted binary ordered tanglegrams of size n.

The programs for A259115, there is no canonical definition to state claims against.
-/

/-! ## A259115.P9114665857874898714

`A088630(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A259115.P9114665857874898714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  A088630 (a (n - 1) + 3).toNat

end

end A259115.P9114665857874898714

/-! ## A259115.P10179143625326354630

`A332363(xor(2, n*a(n-2))+2)` with `a(0)=1, a(1)=1`
-/

namespace A259115.P10179143625326354630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A332363 (Int.xor 2 ((n : ℤ) * a (n - 2)) + 2).toNat

end

end A259115.P10179143625326354630

/-! ## A259115.P7054096134864738279

`A103840(A051195(n))`
-/

namespace A259115.P7054096134864738279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 (A051195 n).toNat

end

end A259115.P7054096134864738279

/-!
# A259116: Number of unrooted binary unordered tanglegrams of size n.

The programs for A259116, there is no canonical definition to state claims against.
-/

/-! ## A259116.P16578747840007212653

`A226179(a(n-1))+n-2` with `a(0)=1, a(1)=1`
-/

namespace A259116.P16578747840007212653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A226179 (a (n - 1)).toNat + ((n : ℤ) - 2)

end

end A259116.P16578747840007212653

/-! ## A259116.P17959156406334095405

`A113350(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A259116.P17959156406334095405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  A113350 (a (n - 1) + 3).toNat

end

end A259116.P17959156406334095405

/-! ## A259116.P4769007794530094025

`A371069(A213091(n))`
-/

namespace A259116.P4769007794530094025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371069 (A213091 n).toNat

end

end A259116.P4769007794530094025

/-!
# A259117: G.f. A(x) satisfies: A(x)^2 = A( x^2*(1+x)/(1-x) ), with A(0) = 0.

The programs for A259117, there is no canonical definition to state claims against.
-/

/-! ## A259117.P9594880278514082308

`ceil((A001462(A001435(n+1)+1)+1)/2)`
-/

namespace A259117.P9594880278514082308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001462 (A001435 (n + 1) + 1).toNat + 1 : ℚ) / 2⌉

end

end A259117.P9594880278514082308

/-! ## A259117.P396177920136713641

`round(root(A351730(n), 6))`
-/

namespace A259117.P396177920136713641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A351730 n : ℝ) ^ (1 / (6 : ℝ)))

end

end A259117.P396177920136713641

/-! ## A259117.P14384189460881688510

`A112082(a(n-1))-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A259117.P14384189460881688510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A112082 (a (n - 1)).toNat - 1

end

end A259117.P14384189460881688510

/-! ## A259117.P11074734506731627926

`A379729(a(n-1)+a(n-4)-a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=9`
-/

namespace A259117.P11074734506731627926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5, 9] fun n a =>
  A379729 (a (n - 1) + a (n - 4) - a (n - 5)).toNat

end

end A259117.P11074734506731627926

/-! ## A259117.P10001511344144893455

`A111654(A013025(n))`
-/

namespace A259117.P10001511344144893455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A013025 n).toNat

end

end A259117.P10001511344144893455

/-!
# A259118: Numbers k such that 6*R_k + 10^k - 5 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259118, there is no canonical definition to state claims against.
-/

/-! ## A259118.P6045391453808334590

`A056247(n+1)+1`
-/

namespace A259118.P6045391453808334590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056247 (n + 1) + 1

end

end A259118.P6045391453808334590

/-! ## A259118.P7256672829561474692

`A164020(A056247(n+1))`
-/

namespace A259118.P7256672829561474692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A056247 (n + 1)).toNat

end

end A259118.P7256672829561474692

/-! ## A259118.P4125557464550913352

`A006093(A094606(∑[comp[n²]]))`
-/

namespace A259118.P4125557464550913352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A094606 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A259118.P4125557464550913352

/-!
# A259119: Numbers k such that 8*R_k + 10^k - 7 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259119, there is no canonical definition to state claims against.
-/

/-! ## A259119.P8890402593208870884

`A056249(n+1)+1`
-/

namespace A259119.P8890402593208870884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056249 (n + 1) + 1

end

end A259119.P8890402593208870884

/-! ## A259119.P11369861620640842147

`A082702(A028310(n))-A054977(n)`
-/

namespace A259119.P11369861620640842147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082702 (A028310 n).toNat - A054977 n

end

end A259119.P11369861620640842147

/-! ## A259119.P2422309457242990703

`record[gcd(A053159(n+1), A334672(2*n+1))]`
-/

namespace A259119.P2422309457242990703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053159 (n + 1)) (A334672 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259119.P2422309457242990703

/-!
# A259120: Numbers k such that 9*R_k + 10^k - 8 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259120, there is no canonical definition to state claims against.
-/

/-! ## A259120.P15179111447940813758

`A056250(n+1)+1`
-/

namespace A259120.P15179111447940813758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056250 (n + 1) + 1

end

end A259120.P15179111447940813758

/-! ## A259120.P4371518150351537112

`A164020(A056250(n+1))`
-/

namespace A259120.P4371518150351537112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A056250 (n + 1)).toNat

end

end A259120.P4371518150351537112

/-! ## A259120.P10222586554943122879

`A334463(n+1)+A065199(A026007(n))`
-/

namespace A259120.P10222586554943122879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334463 (n + 1) + A065199 (A026007 n).toNat

end

end A259120.P10222586554943122879

/-!
# A259121: Numbers k such that 7*R_k + 10^k - 6 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259121, there is no canonical definition to state claims against.
-/

/-! ## A259121.P10104810835250528625

`A056248(n+1)+1`
-/

namespace A259121.P10104810835250528625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056248 (n + 1) + 1

end

end A259121.P10104810835250528625

/-! ## A259121.P13642940809526358176

`A117571(A056248(n+1))`
-/

namespace A259121.P13642940809526358176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A056248 (n + 1)).toNat

end

end A259121.P13642940809526358176

/-!
# A259122: Numbers k such that 5*R_k + 10^k - 4 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259122, there is no canonical definition to state claims against.
-/

/-! ## A259122.P15180196610254279244

`A056246(n+1)+1`
-/

namespace A259122.P15180196610254279244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056246 (n + 1) + 1

end

end A259122.P15180196610254279244

/-! ## A259122.P9849582691181601304

`record[gcd(A178501(n), A342528(n))]`
-/

namespace A259122.P9849582691181601304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178501 n) (A342528 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259122.P9849582691181601304

/-!
# A259123: Numbers k such that 4*R_k + 10^k - 3 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259123, there is no canonical definition to state claims against.
-/

/-! ## A259123.P9342825182112804705

`A056245(n+1)+1`
-/

namespace A259123.P9342825182112804705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056245 (n + 1) + 1

end

end A259123.P9342825182112804705

/-!
# A259124: If n is representable as x*y+x+y, with x>=y>1, then a(n) is the sum of all x's and y's in all such representations. Otherwise a(n)=0.

The programs for A259124, there is no canonical definition to state claims against.
-/

/-! ## A259124.P9750296946513938328

`A293137(n*A030308(A032043(n)))`
-/

namespace A259124.P9750296946513938328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 ((n : ℤ) * A030308 (A032043 n).toNat).toNat

end

end A259124.P9750296946513938328

/-!
# A259125: Numbers k such that 7*R_k + 3*10^k - 4 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259125, there is no canonical definition to state claims against.
-/

/-! ## A259125.P6214250563779570358

`A056255(n+1)+1`
-/

namespace A259125.P6214250563779570358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056255 (n + 1) + 1

end

end A259125.P6214250563779570358

/-! ## A259125.P5678278579048602426

`A082708(n+1)-1`
-/

namespace A259125.P5678278579048602426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082708 (n + 1) - 1

end

end A259125.P5678278579048602426

/-! ## A259125.P16937455817819114984

`xor(1, A082708(A291769(n)))`
-/

namespace A259125.P16937455817819114984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082708 (A291769 n).toNat)

end

end A259125.P16937455817819114984

/-! ## A259125.P1513902552865135497

`xor(1, A082708(A000027(n+1)))`
-/

namespace A259125.P1513902552865135497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082708 (A000027 (n + 1)).toNat)

end

end A259125.P1513902552865135497

/-! ## A259125.P15747528649450138557

`xor(1, A082708(A296882(n+1)))`
-/

namespace A259125.P15747528649450138557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082708 (A296882 (n + 1)).toNat)

end

end A259125.P15747528649450138557

/-!
# A259126: Numbers k such that 5*R_k + 3*10^k - 2 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259126, there is no canonical definition to state claims against.
-/

/-! ## A259126.P7022025714002852164

`A056254(n+1)+1`
-/

namespace A259126.P7022025714002852164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056254 (n + 1) + 1

end

end A259126.P7022025714002852164

/-! ## A259126.P15467260321134994839

`A082707(n+1)-1`
-/

namespace A259126.P15467260321134994839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082707 (n + 1) - 1

end

end A259126.P15467260321134994839

/-! ## A259126.P6207780537478097520

`xor(1, A082707(A005496(n)))`
-/

namespace A259126.P6207780537478097520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082707 (A005496 n).toNat)

end

end A259126.P6207780537478097520

/-! ## A259126.P16061721591985666536

`xor(1, A082707(A008729(n)))`
-/

namespace A259126.P16061721591985666536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082707 (A008729 n).toNat)

end

end A259126.P16061721591985666536

/-! ## A259126.P18118171823088195340

`xor(1, A082707(A077168(n)))`
-/

namespace A259126.P18118171823088195340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082707 (A077168 n).toNat)

end

end A259126.P18118171823088195340

/-!
# A259127: Numbers k such that 8*R_k + 3*10^k - 5 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259127, there is no canonical definition to state claims against.
-/

/-! ## A259127.P15281261117471412494

`A056256(n+1)+1`
-/

namespace A259127.P15281261117471412494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056256 (n + 1) + 1

end

end A259127.P15281261117471412494

/-! ## A259127.P15002122615680931403

`A082709(n+1)-1`
-/

namespace A259127.P15002122615680931403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082709 (n + 1) - 1

end

end A259127.P15002122615680931403

/-! ## A259127.P7040225190867733224

`A020725(A056256(n+1))`
-/

namespace A259127.P7040225190867733224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056256 (n + 1)).toNat

end

end A259127.P7040225190867733224

/-! ## A259127.P13112901732011524506

`A004442(A082709(n+1))`
-/

namespace A259127.P13112901732011524506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A082709 (n + 1)).toNat

end

end A259127.P13112901732011524506

/-! ## A259127.P9629524601018716495

`A023444(A082709(n+1)+1)`
-/

namespace A259127.P9629524601018716495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A082709 (n + 1) + 1).toNat

end

end A259127.P9629524601018716495

/-!
# A259128: Numbers k such that R_k + 3*10^k + 2 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259128, there is no canonical definition to state claims against.
-/

/-! ## A259128.P5519946948037441338

`A158388(n)+A056251(A028310(n))`
-/

namespace A259128.P5519946948037441338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A056251 (A028310 n).toNat

end

end A259128.P5519946948037441338

/-! ## A259128.P12913857723909449336

`eq[A209301(n+1), A383448(n+1)]`
-/

namespace A259128.P12913857723909449336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259128.P12913857723909449336

/-!
# A259129: Numbers k such that 2*R_k + 3*10^k + 1 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259129, there is no canonical definition to state claims against.
-/

/-! ## A259129.P10474691369615960104

`A056252(n+1)+1`
-/

namespace A259129.P10474691369615960104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056252 (n + 1) + 1

end

end A259129.P10474691369615960104

/-!
# A259131: Numbers n such that 13*n^2 + 52 is a square.

The programs for A259131, the canonical program `A259131.P1281206066783231155` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259131 has offset 1).

The definition of A259131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259131.P1281206066783231155

`11*a(n-1)-a(n-2)` with `a(0)=3, a(1)=36`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259131

/-- `11*a(n-1)-a(n-2)` -/
def P1281206066783231155.Spec : Prop :=
  ∀ n, P1281206066783231155.a n = A259131 (n + 1)

theorem P1281206066783231155.correct : P1281206066783231155.Spec := by
  intro n
  simp only [A259131, Nat.add_sub_cancel]

end A259131

/-! ## A259131.P1962644003808917929

`3*A097783(n)`
-/

namespace A259131.P1962644003808917929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097783 n

end

end A259131.P1962644003808917929

namespace A259131

/-- `3*A097783(n)` -/
def P1962644003808917929.Spec : Prop :=
  ∀ n, P1962644003808917929.a n = A259131 (n + 1)

end A259131

/-! ## A259131.P390382274924768506

`ogf((3+3x)/(1-11x+x^2))`
-/

namespace A259131.P390382274924768506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3] [1, -11, 1] n

end

end A259131.P390382274924768506

namespace A259131

/-- `ogf((3+3x)/(1-11x+x^2))` -/
def P390382274924768506.Spec : Prop :=
  ∀ n, P390382274924768506.a n = A259131 (n + 1)

end A259131

/-! ## A259131.P4680997628358870067

`floor(((3+sqrt(13))/2)^(2*n+1))`
-/

namespace A259131.P4680997628358870067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 + Real.sqrt (13 : ℝ)) / 2) ^ (2 * n + 1)⌋

end

end A259131.P4680997628358870067

namespace A259131

/-- `floor(((3+sqrt(13))/2)^(2*n+1))` -/
def P4680997628358870067.Spec : Prop :=
  ∀ n, P4680997628358870067.a n = A259131 (n + 1)

end A259131

/-! ## A259131.P7020835708647917459

`A006497(Δ[n²])`
-/

namespace A259131.P7020835708647917459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259131.P7020835708647917459

namespace A259131

/-- `A006497(Δ[n²])` -/
def P7020835708647917459.Spec : Prop :=
  ∀ n, P7020835708647917459.a n = A259131 (n + 1)

end A259131

/-! ## A259131.P7316125514374239042

`A212962(Δ[n²])`
-/

namespace A259131.P7316125514374239042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212962 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259131.P7316125514374239042

namespace A259131

/-- `A212962(Δ[n²])` -/
def P7316125514374239042.Spec : Prop :=
  ∀ n, P7316125514374239042.a n = A259131 (n + 1)

end A259131

/-! ## A259131.P4296308395360528678

`Δ[A057076(n)/3]`
-/

namespace A259131.P4296308395360528678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057076 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259131.P4296308395360528678

namespace A259131

/-- `Δ[A057076(n)/3]` -/
def P4296308395360528678.Spec : Prop :=
  ∀ n, P4296308395360528678.a n = (A259131 (n + 1) : ℚ)

end A259131

/-! ## A259131.P5743823785185555371

`A100230(Δ[n²])+1`
-/

namespace A259131.P5743823785185555371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100230 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A259131.P5743823785185555371

namespace A259131

/-- `A100230(Δ[n²])+1` -/
def P5743823785185555371.Spec : Prop :=
  ∀ n, P5743823785185555371.a n = A259131 (n + 1)

end A259131

/-! ## A259131.P1919714915768111528

`A051928(Δ[n²])+2`
-/

namespace A259131.P1919714915768111528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A259131.P1919714915768111528

namespace A259131

/-- `A051928(Δ[n²])+2` -/
def P1919714915768111528.Spec : Prop :=
  ∀ n, P1919714915768111528.a n = A259131 (n + 1)

end A259131

/-! ## A259131.P6965884775457020484

`record[Δ[A199404(n+1)]]`
-/

namespace A259131.P6965884775457020484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259131.P6965884775457020484

namespace A259131

/-- `record[Δ[A199404(n+1)]]` -/
def P6965884775457020484.Spec : Prop :=
  ∀ n, P6965884775457020484.a n = A259131 (n + 1)

end A259131

/-!
# A259132: Numbers k such that 5*R_k + 7*10^k + 2 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259132, there is no canonical definition to state claims against.
-/

/-! ## A259132.P3959299456501952786

`A056259(n+1)+1`
-/

namespace A259132.P3959299456501952786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056259 (n + 1) + 1

end

end A259132.P3959299456501952786

/-! ## A259132.P15714511389621645152

`A082713(n+1)-1`
-/

namespace A259132.P15714511389621645152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082713 (n + 1) - 1

end

end A259132.P15714511389621645152

/-! ## A259132.P15059301480280694079

`xor(1, A082713(A000027(n+1)))`
-/

namespace A259132.P15059301480280694079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082713 (A000027 (n + 1)).toNat)

end

end A259132.P15059301480280694079

/-! ## A259132.P493242535209149735

`xor(A082713(n+1), A262681(n))`
-/

namespace A259132.P493242535209149735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082713 (n + 1)) (A262681 n)

end

end A259132.P493242535209149735

/-! ## A259132.P2921085996829244077

`A000027(and(-2, A082713(n+1)))`
-/

namespace A259132.P2921085996829244077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.land (-2) (A082713 (n + 1))).toNat

end

end A259132.P2921085996829244077

/-!
# A259133: Numbers k such that 6*R_k + 7*10^k + 1 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259133, there is no canonical definition to state claims against.
-/

/-! ## A259133.P2670616342022684401

`A056260(n+1)+1`
-/

namespace A259133.P2670616342022684401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056260 (n + 1) + 1

end

end A259133.P2670616342022684401

/-! ## A259133.P3112739085769691802

`A082714(n+1)-1`
-/

namespace A259133.P3112739085769691802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082714 (n + 1) - 1

end

end A259133.P3112739085769691802

/-! ## A259133.P4813786307725678350

`xor(1, A082714(∏{p}[n+1, gcd(n+1, #^3)]))`
-/

namespace A259133.P4813786307725678350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082714 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 3)))

end

end A259133.P4813786307725678350

/-! ## A259133.P2218320219129247835

`xor(1, A082714(A077168(n)))`
-/

namespace A259133.P2218320219129247835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082714 (A077168 n).toNat)

end

end A259133.P2218320219129247835

/-! ## A259133.P18179471584862181547

`xor(1, A082714(A348553(n)))`
-/

namespace A259133.P18179471584862181547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082714 (A348553 n).toNat)

end

end A259133.P18179471584862181547

/-!
# A259134: Numbers k such that 9*R_k + 7*10^k - 2 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259134, there is no canonical definition to state claims against.
-/

/-! ## A259134.P7877424190394922522

`A158388(n)+A056263(A028310(n))`
-/

namespace A259134.P7877424190394922522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A056263 (A028310 n).toNat

end

end A259134.P7877424190394922522

/-!
# A259135: Numbers k such that 2*R_k + 7*10^k + 5 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259135, there is no canonical definition to state claims against.
-/

/-! ## A259135.P4322675926091966474

`A056257(n+1)+1`
-/

namespace A259135.P4322675926091966474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056257 (n + 1) + 1

end

end A259135.P4322675926091966474

/-! ## A259135.P12756859359070935794

`A082711(n+1)-1`
-/

namespace A259135.P12756859359070935794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082711 (n + 1) - 1

end

end A259135.P12756859359070935794

/-! ## A259135.P7008505794513553301

`xor(1, A082711(A000027(n+1)))`
-/

namespace A259135.P7008505794513553301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082711 (A000027 (n + 1)).toNat)

end

end A259135.P7008505794513553301

/-! ## A259135.P14913542170219827627

`xor(A106400(n)², A082711(n+1))`
-/

namespace A259135.P14913542170219827627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106400 n ^ 2) (A082711 (n + 1))

end

end A259135.P14913542170219827627

/-! ## A259135.P3661959103328120720

`xor(A303975(n+1)!, A082711(n+1))`
-/

namespace A259135.P3661959103328120720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A303975 (n + 1)).toNat : ℤ) (A082711 (n + 1))

end

end A259135.P3661959103328120720

/-!
# A259136: Numbers k such that 4*R_k + 7*10^k + 3 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259136, there is no canonical definition to state claims against.
-/

/-! ## A259136.P6331494186858457313

`A056258(n+1)+1`
-/

namespace A259136.P6331494186858457313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056258 (n + 1) + 1

end

end A259136.P6331494186858457313

/-! ## A259136.P12147331087019387327

`A082712(n+1)-1`
-/

namespace A259136.P12147331087019387327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082712 (n + 1) - 1

end

end A259136.P12147331087019387327

/-! ## A259136.P525377113645863400

`abs(A082712(n+1)+A057078(3*n+2))`
-/

namespace A259136.P525377113645863400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082712 (n + 1) + A057078 (3 * n + 2)|

end

end A259136.P525377113645863400

/-!
# A259137: Numbers k such that 8*R_k + 7*10^k - 1 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259137, there is no canonical definition to state claims against.
-/

/-! ## A259137.P12314446693275359160

`A056262(n+1)+1`
-/

namespace A259137.P12314446693275359160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056262 (n + 1) + 1

end

end A259137.P12314446693275359160

/-! ## A259137.P10249246929149079816

`A082715(n+1)-1`
-/

namespace A259137.P10249246929149079816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082715 (n + 1) - 1

end

end A259137.P10249246929149079816

/-! ## A259137.P8611185440215685729

`xor(1, A082715(∏{digits}[n, #+1]))`
-/

namespace A259137.P8611185440215685729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082715 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod)

end

end A259137.P8611185440215685729

/-! ## A259137.P11560488073338088129

`xor(1, A082715(A082743(n)))`
-/

namespace A259137.P11560488073338088129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082715 (A082743 n).toNat)

end

end A259137.P11560488073338088129

/-! ## A259137.P7150076918806723058

`xor(1, A082715(A348553(n)))`
-/

namespace A259137.P7150076918806723058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082715 (A348553 n).toNat)

end

end A259137.P7150076918806723058

/-!
# A259139: Numbers k such that 8*R_k + 9*10^k + 1 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259139, there is no canonical definition to state claims against.
-/

/-! ## A259139.P12821611821250969664

`A056266(n+1)+1`
-/

namespace A259139.P12821611821250969664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056266 (n + 1) + 1

end

end A259139.P12821611821250969664

/-! ## A259139.P18084847484119954395

`A082719(n+1)-1`
-/

namespace A259139.P18084847484119954395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082719 (n + 1) - 1

end

end A259139.P18084847484119954395

/-! ## A259139.P9866816982467953564

`xor(1, A082719(A005496(n)))`
-/

namespace A259139.P9866816982467953564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082719 (A005496 n).toNat)

end

end A259139.P9866816982467953564

/-! ## A259139.P5922506991764789361

`xor(1, A082719(A034894(n)))`
-/

namespace A259139.P5922506991764789361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082719 (A034894 n).toNat)

end

end A259139.P5922506991764789361

/-! ## A259139.P7808621535138711059

`xor(1, A082719(A077168(n)))`
-/

namespace A259139.P7808621535138711059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082719 (A077168 n).toNat)

end

end A259139.P7808621535138711059

/-!
# A259140: Numbers k such that 2*R_k + 9*10^k + 7 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259140, there is no canonical definition to state claims against.
-/

/-! ## A259140.P397576896891920005

`A056265(n+1)+1`
-/

namespace A259140.P397576896891920005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056265 (n + 1) + 1

end

end A259140.P397576896891920005

/-!
# A259141: Numbers k such that R_k + 9*10^k + 8 is prime, where R_k = 11...11 is the repunit (A002275) of length k.

The programs for A259141, there is no canonical definition to state claims against.
-/

/-! ## A259141.P12960367331223514380

`A158388(n)+A056264(A028310(n))`
-/

namespace A259141.P12960367331223514380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A056264 (A028310 n).toNat

end

end A259141.P12960367331223514380

/-!
# A259143: Number of distinct digits needed to write the calendar date of n-th day of a non-leap year in decimal representation, without leading zeros.

The programs for A259143, there is no canonical definition to state claims against.
-/

/-! ## A259143.P1908023166234357851

`A043537(A281873(n+1)+A008592(n))`
-/

namespace A259143.P1908023166234357851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A281873 (n + 1) + A008592 n).toNat

end

end A259143.P1908023166234357851

/-!
# A259145: Numbers k such that k^2 - phi(k) is prime, where phi() is A000010.

The programs for A259145, there is no canonical definition to state claims against.
-/

/-! ## A259145.P823311521032456327

`ceil(sqrt(A258435(n+1)))`
-/

namespace A259145.P823311521032456327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258435 (n + 1) : ℝ)⌉

end

end A259145.P823311521032456327

/-! ## A259145.P3798017232054517203

`A000027(round(sqrt(A258435(n+1))))`
-/

namespace A259145.P3798017232054517203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A258435 (n + 1) : ℝ))).toNat

end

end A259145.P3798017232054517203

/-! ## A259145.P5302210422311934558

`A019554(round(sqrt(A258435(n+1))))`
-/

namespace A259145.P5302210422311934558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway (Real.sqrt (A258435 (n + 1) : ℝ))).toNat

end

end A259145.P5302210422311934558

/-! ## A259145.P6251768050896381524

`A053166(round(sqrt(A258435(n+1))))`
-/

namespace A259145.P6251768050896381524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway (Real.sqrt (A258435 (n + 1) : ℝ))).toNat

end

end A259145.P6251768050896381524

/-! ## A259145.P2853978172006309072

`A254667(round(sqrt(A258435(n+1))))`
-/

namespace A259145.P2853978172006309072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway (Real.sqrt (A258435 (n + 1) : ℝ))).toNat

end

end A259145.P2853978172006309072

/-! ## A259145.P2575918214197536254

`A060653(round(sqrt(A258435(n+1))))`
-/

namespace A259145.P2575918214197536254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (SequenceMachineLib.roundAway (Real.sqrt (A258435 (n + 1) : ℝ))).toNat

end

end A259145.P2575918214197536254

/-! ## A259145.P9976490413699073921

`ceil(sqrt(p?[(n+1)²-A000010(n+1)]))`
-/

namespace A259145.P9976490413699073921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A259145.P9976490413699073921

/-! ## A259145.P15819126477779627213

`ceil(sqrt(p?[n*(n+2)-A109606(n+1)]))`
-/

namespace A259145.P15819126477779627213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A259145.P15819126477779627213

/-!
# A259154: Number of values v whose pi-based arithmetic derivative equals n.

The programs for A259154, there is no canonical definition to state claims against.
-/

/-! ## A259154.P15045179207273377273

`gcd(p?[A278341(2*n+1)], A117966(n))`
-/

namespace A259154.P15045179207273377273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278341 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A117966 n)

end

end A259154.P15045179207273377273

/-! ## A259154.P17095277071860545461

`gcd(A000326(n), A001222(A139061(n+1)))`
-/

namespace A259154.P17095277071860545461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000326 n) (A001222 (A139061 (n + 1)).toNat)

end

end A259154.P17095277071860545461

/-! ## A259154.P17730625379103271339

`A134868(gcd(A077070(n), A108506(n+1)))`
-/

namespace A259154.P17730625379103271339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (Int.gcd (A077070 n) (A108506 (n + 1)))

end

end A259154.P17730625379103271339

/-! ## A259154.P2358301746554180711

`A375430(A282757(n+1)-A008683(n+1))`
-/

namespace A259154.P2358301746554180711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375430 (A282757 (n + 1) - A008683 (n + 1)).toNat

end

end A259154.P2358301746554180711

/-!
# A259156: Positive triangular numbers (A000217) that are pentagonal numbers (A000326) divided by 2.

The programs for A259156, there is no canonical definition to state claims against.
-/

/-! ## A259156.P10538579860093931811

`A077289(record[or(2, n)])`
-/

namespace A259156.P10538579860093931811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A259156.P10538579860093931811

/-! ## A259156.P9621680312459022093

`A077289(record[xor(2, n)])`
-/

namespace A259156.P9621680312459022093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A259156.P9621680312459022093

/-! ## A259156.P1837360273526181836

`A077289(comp[or(2, n)]+2)`
-/

namespace A259156.P1837360273526181836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A259156.P1837360273526181836

/-! ## A259156.P4866928837802011966

`A077289(or(2, comp[or(2, n)]))`
-/

namespace A259156.P4866928837802011966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A259156.P4866928837802011966

/-! ## A259156.P13645353110652906940

`A077289(or(1, n)+n+1)`
-/

namespace A259156.P13645353110652906940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (Nat.lor 1 n + n + 1)

end

end A259156.P13645353110652906940

/-! ## A259156.P52806618342131753

`A077289(A042964(n+1))`
-/

namespace A259156.P52806618342131753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (A042964 (n + 1)).toNat

end

end A259156.P52806618342131753

/-! ## A259156.P6995650855620003186

`A077289(A042948(n)+2)`
-/

namespace A259156.P6995650855620003186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (A042948 n + 2).toNat

end

end A259156.P6995650855620003186

/-! ## A259156.P1664874517340331651

`A077289(or(2, A014601(n)))`
-/

namespace A259156.P1664874517340331651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (Int.lor 2 (A014601 n)).toNat

end

end A259156.P1664874517340331651

/-! ## A259156.P13169117683213882491

`A077289(or(2, A042948(n)))`
-/

namespace A259156.P13169117683213882491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (Int.lor 2 (A042948 n)).toNat

end

end A259156.P13169117683213882491

/-! ## A259156.P8961286583888856503

`A077289(A014601(n+1)-1)`
-/

namespace A259156.P8961286583888856503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (A014601 (n + 1) - 1).toNat

end

end A259156.P8961286583888856503

/-!
# A259157: Positive triangular numbers (A000217) that are hexagonal numbers (A000384) divided by 2.

The programs for A259157, there is no canonical definition to state claims against.
-/

/-! ## A259157.P10142562122907663056

`A075528(Δ[n²])`
-/

namespace A259157.P10142562122907663056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259157.P10142562122907663056

/-! ## A259157.P18055684248201136229

`∑[A350986(2*n)]`
-/

namespace A259157.P18055684248201136229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350986 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259157.P18055684248201136229

/-! ## A259157.P2213464039599736070

`3*A029546(2*n)`
-/

namespace A259157.P2213464039599736070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A029546 (2 * n)

end

end A259157.P2213464039599736070

/-! ## A259157.P12658283066645481079

`A029549(2*n+1)/2`
-/

namespace A259157.P12658283066645481079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029549 (2 * n + 1) : ℚ) / 2

end

end A259157.P12658283066645481079

/-! ## A259157.P10707567273346412038

`C(A011900(2*n+1), 2)`
-/

namespace A259157.P10707567273346412038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A011900 (2 * n + 1)).toNat 2

end

end A259157.P10707567273346412038

/-!
# A259159: 

The programs for A259159, there is no canonical definition to state claims against.
-/

/-! ## A259159.P168935641080245500

`A065102(2*n)²`
-/

namespace A259159.P168935641080245500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065102 (2 * n) ^ 2

end

end A259159.P168935641080245500

/-! ## A259159.P17354908211304446602

`9*A298101(2*n+1)`
-/

namespace A259159.P17354908211304446602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A298101 (2 * n + 1)

end

end A259159.P17354908211304446602

/-! ## A259159.P8851230228049953273

`record[A065102(ceil(sqrt(n))²-n)²]`
-/

namespace A259159.P8851230228049953273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065102 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259159.P8851230228049953273

/-!
# A259160: 

The programs for A259160, there is no canonical definition to state claims against.
-/

/-! ## A259160.P1012409215797420027

`A001078(Δ[n²])²`
-/

namespace A259160.P1012409215797420027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A259160.P1012409215797420027

/-! ## A259160.P13416481565775680613

`lcm(4, A036353(n+1))`
-/

namespace A259160.P13416481565775680613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A036353 (n + 1))

end

end A259160.P13416481565775680613

/-! ## A259160.P14724179616569540026

`(2*A046173(n+1))²`
-/

namespace A259160.P14724179616569540026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A046173 (n + 1)) ^ 2

end

end A259160.P14724179616569540026

/-! ## A259160.P5797235585332561979

`A041007(4*n+1)²`
-/

namespace A259160.P5797235585332561979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (4 * n + 1) ^ 2

end

end A259160.P5797235585332561979

/-!
# A259161: 

The programs for A259161, there is no canonical definition to state claims against.
-/

/-! ## A259161.P8539782521610316242

`A352181(Δ[n²])`
-/

namespace A259161.P8539782521610316242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352181 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259161.P8539782521610316242

/-! ## A259161.P4452206176523936036

`A200993(Δ[n²])/2`
-/

namespace A259161.P4452206176523936036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200993 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A259161.P4452206176523936036

/-! ## A259161.P17605532242195716278

`A200994(Δ[n²])/3`
-/

namespace A259161.P17605532242195716278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200994 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A259161.P17605532242195716278

/-! ## A259161.P10145609686243996027

`A045502(Δ[n²])/8`
-/

namespace A259161.P10145609686243996027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045502 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 8

end

end A259161.P10145609686243996027

/-! ## A259161.P13805337037335578589

`floor(A046172(2*n+2)/16)`
-/

namespace A259161.P13805337037335578589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046172 (2 * n + 2) : ℚ) / 16⌋

end

end A259161.P13805337037335578589

/-!
# A259162: 

The programs for A259162, there is no canonical definition to state claims against.
-/

/-! ## A259162.P3886208764839698258

`A259156(Δ[n²])`
-/

namespace A259162.P3886208764839698258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259156 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259162.P3886208764839698258

/-! ## A259162.P3449508727258843611

`A077289(or(2, 4*n))`
-/

namespace A259162.P3449508727258843611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (Nat.lor 2 (4 * n))

end

end A259162.P3449508727258843611

/-! ## A259162.P5682447106722790473

`A077289(2*(2*n+1))`
-/

namespace A259162.P5682447106722790473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077289 (2 * (2 * n + 1))

end

end A259162.P5682447106722790473

/-! ## A259162.P3770838955017945818

`A292376(2*n+2)+A259156(2*n+1)`
-/

namespace A259162.P3770838955017945818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292376 (2 * n + 2) + A259156 (2 * n + 1)

end

end A259162.P3770838955017945818

/-! ## A259162.P1736519228709739589

`A259156(2*n+1)+A007814(2*n+3)`
-/

namespace A259162.P1736519228709739589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259156 (2 * n + 1) + A007814 (2 * n + 3)

end

end A259162.P1736519228709739589

/-!
# A259166: 

The programs for A259166, there is no canonical definition to state claims against.
-/

/-! ## A259166.P1277720792371790044

`A259163(2*(n+1))`
-/

namespace A259166.P1277720792371790044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259163 (2 * (n + 1))

end

end A259166.P1277720792371790044

/-!
# A259167: 

The programs for A259167, there is no canonical definition to state claims against.
-/

/-! ## A259167.P15123029930625372885

`A220186(2*(n+1))`
-/

namespace A259167.P15123029930625372885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220186 (2 * (n + 1))

end

end A259167.P15123029930625372885

/-! ## A259167.P8418700349679203467

`8*A036353(n+1)`
-/

namespace A259167.P8418700349679203467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A036353 (n + 1)

end

end A259167.P8418700349679203467

/-! ## A259167.P6170848447536576352

`A278438(Δ[n²])+1`
-/

namespace A259167.P6170848447536576352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278438 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A259167.P6170848447536576352

/-! ## A259167.P18295661788165409070

`A098308(2*Δ[n²])`
-/

namespace A259167.P18295661788165409070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098308 (2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A259167.P18295661788165409070

/-!
# A259168: a(n) = n-th pi-based antiderivative of 7.

The programs for A259168, there is no canonical definition to state claims against.
-/

/-! ## A259168.P256074854755877965

`A259016(A167487(n+6))`
-/

namespace A259168.P256074854755877965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (A167487 (n + 6)).toNat

end

end A259168.P256074854755877965

/-! ## A259168.P5843634588807981079

`A259016(eq[7, A002262(n)])`
-/

namespace A259168.P5843634588807981079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259168.P5843634588807981079

/-! ## A259168.P1785303217907894154

`A259016(eq[15, A140207(n)])`
-/

namespace A259168.P1785303217907894154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259168.P1785303217907894154

/-! ## A259168.P12632872247628221903

`A259016(A141214(n+4)+10)`
-/

namespace A259168.P12632872247628221903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (A141214 (n + 4) + 10).toNat

end

end A259168.P12632872247628221903

/-! ## A259168.P16069410215996019903

`A259016(eq[7, A025675(n+1)])`
-/

namespace A259168.P16069410215996019903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259168.P16069410215996019903

/-!
# A259169: a(n) = n-th pi-based antiderivative of 8.

The programs for A259169, there is no canonical definition to state claims against.
-/

/-! ## A259169.P603362625601151592

`A259016(eq[8, A002262(n)])`
-/

namespace A259169.P603362625601151592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259169.P603362625601151592

/-! ## A259169.P8147105572577258935

`A259016(eq[21, A141169(n)])`
-/

namespace A259169.P8147105572577258935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259169.P8147105572577258935

/-! ## A259169.P7623684641228011660

`A259016(eq[8, A025675(n+1)])`
-/

namespace A259169.P7623684641228011660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259169.P7623684641228011660

/-! ## A259169.P17883744245720723230

`A259016(eq[8, A130270(n+1)])`
-/

namespace A259169.P17883744245720723230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259169.P17883744245720723230

/-!
# A259170: a(n) = n-th pi-based antiderivative of 9.

The programs for A259170, there is no canonical definition to state claims against.
-/

/-! ## A259170.P1094310904691321569

`A259016(eq[9, A002262(n)])`
-/

namespace A259170.P1094310904691321569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259170.P1094310904691321569

/-! ## A259170.P5043103748620731614

`A259016(eq[34, A141169(n)])`
-/

namespace A259170.P5043103748620731614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259170.P5043103748620731614

/-! ## A259170.P9339938495884238552

`A259016(eq[9, A025675(n+1)])`
-/

namespace A259170.P9339938495884238552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259170.P9339938495884238552

/-! ## A259170.P12569999306287663728

`A259016(eq[9, A130270(n+1)])`
-/

namespace A259170.P12569999306287663728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259170.P12569999306287663728

/-!
# A259171: Decimal expansion of Sum_{m>=1} 1/(m^2 + 1).

The programs for A259171, there is no canonical definition to state claims against.
-/

/-! ## A259171.P15054328024862454971

`A113319(n)*A214249(a(n-1))` with `a(0)=1`
-/

namespace A259171.P15054328024862454971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113319 (n + 1) * A214249 (a (n - 1)).toNat

end

end A259171.P15054328024862454971

/-!
# A259172: Numbers in A259145 that are neither prime nor semiprime.

The programs for A259172, there is no canonical definition to state claims against.
-/

/-! ## A259172.P8872639533990479586

`∩[A259145(n+1), A392008(n+1)]`
-/

namespace A259172.P8872639533990479586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259172.P8872639533990479586

/-! ## A259172.P18386720082489602130

`∩[A216918(n+1), A259145(n+1)]`
-/

namespace A259172.P18386720082489602130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259172.P18386720082489602130

/-! ## A259172.P1221099611381455906

`∩[A259145(n+1), A333326(n+1)]`
-/

namespace A259172.P1221099611381455906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259172.P1221099611381455906

/-! ## A259172.P6931301755944602294

`∩[A259145(n+1), A350352(n+1)]`
-/

namespace A259172.P6931301755944602294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259172.P6931301755944602294

/-!
# A259174: Numbers whose abundance is a power of 2.

The programs for A259174, there is no canonical definition to state claims against.
-/

/-! ## A259174.P31269627847974834

`record[A005101(n+1)/A006257(A033881(n+1))]`
-/

namespace A259174.P31269627847974834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005101 (n + 1) : ℚ) / (A006257 (A033881 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259174.P31269627847974834

/-! ## A259174.P15797803070239481402

`A109788(A100793(n))`
-/

namespace A259174.P15797803070239481402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109788 (A100793 n).toNat

end

end A259174.P15797803070239481402

/-!
# A259175: a(n) = 1 if n prime, otherwise prime(n).

The programs for A259175, there is no canonical definition to state claims against.
-/

/-! ## A259175.P14293906721340901138

`gcd(n*and(1, ∑{e}[n+1, #]!), p?[n-(-1)^n])`
-/

namespace A259175.P14293906721340901138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A259175.P14293906721340901138

/-! ## A259175.P1756212287388337147

`p?[a(n-1)+2]^∏{p}[n+1, C(#%n, #)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A259175.P1756212287388337147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p)

end

end A259175.P1756212287388337147

/-! ## A259175.P10869817434505469704

`A360329(p?[xor(1, n)+1])`
-/

namespace A259175.P10869817434505469704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A259175.P10869817434505469704

/-! ## A259175.P3893676152312829262

`gcd(p?[n-(-1)^n], A096501(n+1))`
-/

namespace A259175.P3893676152312829262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A096501 (n + 1))

end

end A259175.P3893676152312829262

/-! ## A259175.P7055454260109809074

`A008578(n+2-∑{p}[n+1, C(#, n)])`
-/

namespace A259175.P7055454260109809074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2 - ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n)

end

end A259175.P7055454260109809074

/-! ## A259175.P4589539014614320124

`gcd(∑{p}[n+1, C(#, n)], A000040(n+1))`
-/

namespace A259175.P4589539014614320124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) (A000040 (n + 1))

end

end A259175.P4589539014614320124

/-! ## A259175.P8260172818440032524

`gcd(2*A010051(n+1), p?[n%3+n])`
-/

namespace A259175.P8260172818440032524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A010051 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A259175.P8260172818440032524

/-! ## A259175.P12976988596150137307

`p?[xor(1, n)+1]^A211111(∑{e}[n+1, #])`
-/

namespace A259175.P12976988596150137307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (A211111 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℤ)

end

end A259175.P12976988596150137307

/-! ## A259175.P11604483255544566015

`p?[xor(1, n)+1]%A005598(∏{p}[n+1, 1-#]+1+n)`
-/

namespace A259175.P11604483255544566015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A005598 (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ)) + 1 + (n : ℤ)).toNat)

end

end A259175.P11604483255544566015

/-! ## A259175.P7949326058735683130

`A014973(A236676(n+1))`
-/

namespace A259175.P7949326058735683130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A236676 (n + 1)).toNat

end

end A259175.P7949326058735683130

/-!
# A259176: Triangle read by rows T(n,k) in which row n lists the odd-indexed terms of n-th row of triangle A237593.

The programs for A259176, there is no canonical definition to state claims against.
-/

/-! ## A259176.P5608677197799852233

`A237593(Δ[n²])`
-/

namespace A259176.P5608677197799852233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259176.P5608677197799852233

/-! ## A259176.P3216484268661150077

`A237593(2*n+1)%15`
-/

namespace A259176.P3216484268661150077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237593 (2 * n + 1)) 15

end

end A259176.P3216484268661150077

/-! ## A259176.P7214234345411373056

`and(15, A237593(n+1+n))`
-/

namespace A259176.P7214234345411373056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A237593 (n + 1 + n))

end

end A259176.P7214234345411373056

/-! ## A259176.P2868416270660633473

`A237593(2*(n+1)-1)^ceil(abs(sin(n)))`
-/

namespace A259176.P2868416270660633473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237593 (2 * (n + 1) - 1) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A259176.P2868416270660633473

/-! ## A259176.P13876188743994815418

`A013938(A237593(2*n+1))`
-/

namespace A259176.P13876188743994815418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013938 (A237593 (2 * n + 1)).toNat

end

end A259176.P13876188743994815418

/-! ## A259176.P289478564716273758

`A380573(A237593(n+1+n))`
-/

namespace A259176.P289478564716273758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A237593 (n + 1 + n)).toNat

end

end A259176.P289478564716273758

/-! ## A259176.P7043535690156379386

`A000194(A237593(2*n+1)²)`
-/

namespace A259176.P7043535690156379386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A237593 (2 * n + 1) ^ 2).toNat

end

end A259176.P7043535690156379386

/-! ## A259176.P999840389580762018

`A056926(A237593(2*n+1)²)`
-/

namespace A259176.P999840389580762018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A237593 (2 * n + 1) ^ 2).toNat

end

end A259176.P999840389580762018

/-! ## A259176.P173119968745753460

`A001222(2^A237593(2*n+1))`
-/

namespace A259176.P173119968745753460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A237593 (2 * n + 1) : ℤ))).toNat

end

end A259176.P173119968745753460

/-! ## A259176.P15260896225466116505

`gcd(A000038(n), A237593(2*n+1))`
-/

namespace A259176.P15260896225466116505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A237593 (2 * n + 1))

end

end A259176.P15260896225466116505

/-! ## A259176.P3456098125149111899

`or(A000007(n), A237593(2*n+1))`
-/

namespace A259176.P3456098125149111899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237593 (2 * n + 1))

end

end A259176.P3456098125149111899

/-! ## A259176.P2725837076136827381

`filter[A237593(2*n+1), A102609(#)]`
-/

namespace A259176.P2725837076136827381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A259176.P2725837076136827381

/-! ## A259176.P10366632204260039145

`filter[A237593(2*n+1), A161996(#)]`
-/

namespace A259176.P10366632204260039145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A259176.P10366632204260039145

/-! ## A259176.P15291565742767257295

`filter[A237593(2*n+1), A167850(#)]`
-/

namespace A259176.P15291565742767257295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A259176.P15291565742767257295

/-! ## A259176.P6216061561884769058

`filter[A237593(2*n+1), A167851(#)]`
-/

namespace A259176.P6216061561884769058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167851 (f1 j).toNat = 1) n)

end

end A259176.P6216061561884769058

/-!
# A259177: Triangle read by rows T(n,k) in which row n lists the even-indexed terms of n-th row of triangle A237593.

The programs for A259177, there is no canonical definition to state claims against.
-/

/-! ## A259177.P13426157067968008926

`A237593(2*(n+1))`
-/

namespace A259177.P13426157067968008926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * (n + 1))

end

end A259177.P13426157067968008926

/-! ## A259177.P2983163766412641027

`A237593(n+2+n)%15`
-/

namespace A259177.P2983163766412641027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237593 (n + 2 + n)) 15

end

end A259177.P2983163766412641027

/-! ## A259177.P6241266123778511505

`xor(n, xor(n, A237593(Δ[n²]+1)))`
-/

namespace A259177.P6241266123778511505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A237593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat))

end

end A259177.P6241266123778511505

/-! ## A259177.P5071223172579864267

`and(-1, A237593(record[2-xor(1, -n)]))`
-/

namespace A259177.P5071223172579864267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A237593 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A259177.P5071223172579864267

/-! ## A259177.P4971178347099664393

`and(-1, A237593(Δ[A002378(n)]))`
-/

namespace A259177.P4971178347099664393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A237593 (f1 (n + 1) - f1 n).toNat)

end

end A259177.P4971178347099664393

/-! ## A259177.P13802688256067945313

`A000027(A237593(n+2+n))`
-/

namespace A259177.P13802688256067945313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A237593 (n + 2 + n)).toNat

end

end A259177.P13802688256067945313

/-! ## A259177.P2596560309926594389

`A089247(A237593(Δ[n²]+1))`
-/

namespace A259177.P2596560309926594389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A237593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A259177.P2596560309926594389

/-! ## A259177.P3887989269362308257

`A072088(A237593(Δ[n²+n]))`
-/

namespace A259177.P3887989269362308257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A237593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A259177.P3887989269362308257

/-! ## A259177.P9748252961221938772

`A000194(A237593(n+2+n)²)`
-/

namespace A259177.P9748252961221938772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A237593 (n + 2 + n) ^ 2).toNat

end

end A259177.P9748252961221938772

/-! ## A259177.P4320223071139787843

`A056926(A237593(n+2+n)²)`
-/

namespace A259177.P4320223071139787843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A237593 (n + 2 + n) ^ 2).toNat

end

end A259177.P4320223071139787843

/-! ## A259177.P9367605605391246911

`A001222(2^A237593(n+2+n))`
-/

namespace A259177.P9367605605391246911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A237593 (n + 2 + n) : ℤ))).toNat

end

end A259177.P9367605605391246911

/-! ## A259177.P4370540606551517677

`gcd(A000038(n), A237593(n+2+n))`
-/

namespace A259177.P4370540606551517677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A237593 (n + 2 + n))

end

end A259177.P4370540606551517677

/-! ## A259177.P14076812459935863613

`or(A000007(n), A237593(n+2+n))`
-/

namespace A259177.P14076812459935863613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237593 (n + 2 + n))

end

end A259177.P14076812459935863613

/-! ## A259177.P562458589907416086

`or(A010052(∑[n]+1), A237593(n+2+n))`
-/

namespace A259177.P562458589907416086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A237593 (n + 2 + n))

end

end A259177.P562458589907416086

/-! ## A259177.P17901528852541549780

`A237593(n+2+n)/A000041(C(2, n+2))`
-/

namespace A259177.P17901528852541549780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237593 (n + 2 + n) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A259177.P17901528852541549780

/-! ## A259177.P16634392787462493786

`A237593(n+2+n)/A000005(gcd(n, n+1))`
-/

namespace A259177.P16634392787462493786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237593 (n + 2 + n) : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A259177.P16634392787462493786

/-! ## A259177.P2577821294539432435

`lcm(A034947(n+1), A237593(A103517(n)))`
-/

namespace A259177.P2577821294539432435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A237593 (A103517 n).toNat)

end

end A259177.P2577821294539432435

/-! ## A259177.P3094891220525405215

`A237593(n+2+n)/A001222(A002476(n+1))`
-/

namespace A259177.P3094891220525405215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237593 (n + 2 + n) : ℚ) / (A001222 (A002476 (n + 1)).toNat : ℚ)

end

end A259177.P3094891220525405215

/-!
# A259178: Numbers k such that (4^k - 1)/3 is squarefree.

The programs for A259178, there is no canonical definition to state claims against.
-/

/-! ## A259178.P3934752806511683614

`comp[A260042(n+1)-1]+1`
-/

namespace A259178.P3934752806511683614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A259178.P3934752806511683614

/-! ## A259178.P5021592459769043762

`comp[∪[A260042(n+1), A008591(n)]]`
-/

namespace A259178.P5021592459769043762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259178.P5021592459769043762

/-! ## A259178.P6263446700463340270

`comp[∪[A260042(n+1), A008592(n)]]`
-/

namespace A259178.P6263446700463340270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259178.P6263446700463340270

/-! ## A259178.P2489231083004484390

`comp[∪[A260042(n+1), A008602(n)]]`
-/

namespace A259178.P2489231083004484390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259178.P2489231083004484390

/-! ## A259178.P13310641198674406966

`comp[∪[A260042(n+1), A008603(n)]]`
-/

namespace A259178.P13310641198674406966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A259178.P13310641198674406966

/-! ## A259178.P15083870992284912151

`eq[gcd(3, n), gcd(n, A002450(n))]`
-/

namespace A259178.P15083870992284912151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002450 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259178.P15083870992284912151

/-! ## A259178.P17755030126691953103

`eq[char[A260042(n+1)], A151933(n)]`
-/

namespace A259178.P17755030126691953103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A259178.P17755030126691953103

/-!
# A259179: Number of Dyck paths described in A237593 that contain the point (n,n) in the diagram of the symmetric representation of sigma.

The programs for A259179, there is no canonical definition to state claims against.
-/

/-! ## A259179.P294083182336310709

`Δ[A244367(n+1)]`
-/

namespace A259179.P294083182336310709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259179.P294083182336310709

/-! ## A259179.P10312405411031582484

`A244367(n+2)-A244367(n+1)`
-/

namespace A259179.P10312405411031582484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 2) - A244367 (n + 1)

end

end A259179.P10312405411031582484

/-! ## A259179.P6864297280834775026

`A227944(n+1)+A008683(A211788(3*n+4))`
-/

namespace A259179.P6864297280834775026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (n + 1) + A008683 (A211788 (3 * n + 4)).toNat

end

end A259179.P6864297280834775026

/-! ## A259179.P7922119307205556351

`A252489(A011377(n))%4`
-/

namespace A259179.P7922119307205556351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252489 (A011377 n).toNat) 4

end

end A259179.P7922119307205556351

/-! ## A259179.P7089143233311945976

`A269241(n)+A122855(A332199(n+1))`
-/

namespace A259179.P7089143233311945976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269241 n + A122855 (A332199 (n + 1)).toNat

end

end A259179.P7089143233311945976

/-!
# A259180: Amicable pairs.

The programs for A259180, there is no canonical definition to state claims against.
-/

/-! ## A259180.P13442366431167220781

`A279950(n+1)/2`
-/

namespace A259180.P13442366431167220781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279950 (n + 1) : ℚ) / 2

end

end A259180.P13442366431167220781

/-! ## A259180.P1581298844739649842

`A259933(∑[A002264(n)^A185044(n)])`
-/

namespace A259180.P1581298844739649842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 n : ℚ) ^ (A185044 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259933 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A259180.P1581298844739649842

/-!
# A259181: a(n) = n*(n+1)*(n+2)*(n+3)*(2*n^2+6*n+7)/360.

The programs for A259181, the canonical program `A259181.P15712990192080063828` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259181 has offset 0).

The definition of A259181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259181.P15712990192080063828

`n*(n+1)*(n+2)*(n+3)*(2*n*(n+3)+7)/360`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259181

/-- `n*(n+1)*(n+2)*(n+3)*(2*n*(n+3)+7)/360` -/
def P15712990192080063828.Spec : Prop :=
  ∀ n, P15712990192080063828.a n = (A259181 n : ℚ)

end A259181

/-! ## A259181.P1651815195793792079

`n*(n+1)*(n+2)*(n+3)*(2*n²+6*n+7)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259181.P1651815195793792079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 3) * (2 * n ^ 2 + 6 * n + 7) : ℚ) / 360

end

end A259181.P1651815195793792079

namespace A259181

/-- `n*(n+1)*(n+2)*(n+3)*(2*n²+6*n+7)/360` -/
def P1651815195793792079.Spec : Prop :=
  ∀ n, P1651815195793792079.a n = (A259181 n : ℚ)

end A259181

/-! ## A259181.P12049550632871576406

`floor((∑[∑[C(n²+1+n, 2)]]+1)/3)`
-/

namespace A259181.P12049550632871576406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1 + n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3⌋

end

end A259181.P12049550632871576406

namespace A259181

/-- `floor((∑[∑[C(n²+1+n, 2)]]+1)/3)` -/
def P12049550632871576406.Spec : Prop :=
  ∀ n, P12049550632871576406.a n = A259181 n

end A259181

/-! ## A259181.P5429949192648035613

`∑[A164938(n+1)/3]`
-/

namespace A259181.P5429949192648035613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164938 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259181.P5429949192648035613

namespace A259181

/-- `∑[A164938(n+1)/3]` -/
def P5429949192648035613.Spec : Prop :=
  ∀ n, P5429949192648035613.a n = (A259181 n : ℚ)

end A259181

/-! ## A259181.P15296296050325675096

`A033455(n)+a(n-1)` with `a(0)=0`
-/

namespace A259181.P15296296050325675096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033455 n + a (n - 1)

end

end A259181.P15296296050325675096

namespace A259181

/-- `A033455(n)+a(n-1)` -/
def P15296296050325675096.Spec : Prop :=
  ∀ n, P15296296050325675096.a n = A259181 n

end A259181

/-! ## A259181.P10722955332581920861

`A061927(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A259181.P10722955332581920861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A061927 n + a (n - 2)

end

end A259181.P10722955332581920861

namespace A259181

/-- `A061927(n)+a(n-2)` -/
def P10722955332581920861.Spec : Prop :=
  ∀ n, P10722955332581920861.a n = A259181 n

end A259181

/-! ## A259181.P4829767827897675745

`A051947(n)-A006414(n)`
-/

namespace A259181.P4829767827897675745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051947 n - A006414 n

end

end A259181.P4829767827897675745

namespace A259181

/-- `A051947(n)-A006414(n)` -/
def P4829767827897675745.Spec : Prop :=
  ∀ n, P4829767827897675745.a n = A259181 n

end A259181

/-! ## A259181.P13701869358022168145

`A108648(n)-A108649(n)`
-/

namespace A259181.P13701869358022168145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108648 n - A108649 n

end

end A259181.P13701869358022168145

namespace A259181

/-- `A108648(n)-A108649(n)` -/
def P13701869358022168145.Spec : Prop :=
  ∀ n, P13701869358022168145.a n = A259181 n

end A259181

/-! ## A259181.P6177811754964767810

`A000596(n+3)%A114243(n)`
-/

namespace A259181.P6177811754964767810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000596 (n + 3)) (A114243 n)

end

end A259181.P6177811754964767810

namespace A259181

/-- `A000596(n+3)%A114243(n)` -/
def P6177811754964767810.Spec : Prop :=
  ∀ n, P6177811754964767810.a n = A259181 n

end A259181

/-! ## A259181.P16287638241108304069

`∑[A033455(n+1)]-A033455(n+1)`
-/

namespace A259181.P16287638241108304069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033455 (n + 1)

end

end A259181.P16287638241108304069

namespace A259181

/-- `∑[A033455(n+1)]-A033455(n+1)` -/
def P16287638241108304069.Spec : Prop :=
  ∀ n, P16287638241108304069.a n = A259181 n

end A259181

/-! ## A259181.P14912256291513171329

`∑[∑[A006325(n+1)]]`
-/

namespace A259181.P14912256291513171329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259181.P14912256291513171329

namespace A259181

/-- `∑[∑[A006325(n+1)]]` -/
def P14912256291513171329.Spec : Prop :=
  ∀ n, P14912256291513171329.a n = A259181 n

end A259181

/-! ## A259181.P12684368478179081790

`∑[A131211(n+1)+1]`
-/

namespace A259181.P12684368478179081790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131211 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259181.P12684368478179081790

namespace A259181

/-- `∑[A131211(n+1)+1]` -/
def P12684368478179081790.Spec : Prop :=
  ∀ n, P12684368478179081790.a n = A259181 n

end A259181

/-! ## A259181.P10645246566236271572

`A011827(n+3)-A011826(n+3)`
-/

namespace A259181.P10645246566236271572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011827 (n + 3) - A011826 (n + 3)

end

end A259181.P10645246566236271572

namespace A259181

/-- `A011827(n+3)-A011826(n+3)` -/
def P10645246566236271572.Spec : Prop :=
  ∀ n, P10645246566236271572.a n = A259181 n

end A259181

/-!
# A259182: a(n) = prime(n) if n prime otherwise 1.

The programs for A259182, there is no canonical definition to state claims against.
-/

/-! ## A259182.P14976610712246245517

`gcd(1-∑{e}[n+1, #], p?[xor(1, n)+1])`
-/

namespace A259182.P14976610712246245517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A259182.P14976610712246245517

/-! ## A259182.P1218873417317347184

`gcd(xor(1, ∑{d}[n+1, #]-(n+1)), p?[n-(-1)^n])`
-/

namespace A259182.P1218873417317347184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A259182.P1218873417317347184

/-! ## A259182.P4587363144146231523

`p?[a(n-1)+2]^floor(n/n^∑{e}[n+1, #])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A259182.P4587363144146231523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (⌊(n : ℚ) / (n ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)⌋ : ℤ)

end

end A259182.P4587363144146231523

/-! ## A259182.P4085425357042703308

`gcd(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], p?[n%3+n])`
-/

namespace A259182.P4085425357042703308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A259182.P4085425357042703308

/-! ## A259182.P6482048072664494070

`A360325(p?[xor(1, n)+1])`
-/

namespace A259182.P6482048072664494070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360325 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A259182.P6482048072664494070

/-! ## A259182.P12571831898623419898

`A008578(∑{p}[n+1, C(#, n)]+1)`
-/

namespace A259182.P12571831898623419898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + 1)

end

end A259182.P12571831898623419898

/-! ## A259182.P5173148281757509771

`A006005(∏{d}[∑{p}[n+1, C(#, n)], #])`
-/

namespace A259182.P5173148281757509771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A259182.P5173148281757509771

/-! ## A259182.P13525586190928804829

`A120426(∏{d}[∑{p}[n+1, C(#, n)], #])`
-/

namespace A259182.P13525586190928804829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A259182.P13525586190928804829

/-! ## A259182.P996531720737629865

`∏{p}[∑{p}[n+1, C(#, n)], A000040(#)]`
-/

namespace A259182.P996531720737629865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 p

end

end A259182.P996531720737629865

/-! ## A259182.P7583783134469841810

`gcd(p?[xor(1, n)+1], A039651(n+1))`
-/

namespace A259182.P7583783134469841810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A039651 (n + 1))

end

end A259182.P7583783134469841810

/-!
# A259183: Complement of A259444.

The programs for A259183, the canonical program `A259183.P10733071323112537095` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259183 has offset 1).

The definition of A259183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259183.P10733071323112537095

`eq[1, 1-val(A089723(n+1)+1, 2)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A259183

/-- `eq[1, 1-val(A089723(n+1)+1, 2)]+1` -/
def P10733071323112537095.Spec : Prop :=
  ∀ n, (P10733071323112537095.a n : ℤ) = A259183 (n + 1)

theorem P10733071323112537095.correct : P10733071323112537095.Spec := by
  intro n
  simp only [A259183, Nat.add_sub_cancel]

end A259183

/-! ## A259183.P11622056495612112082

`eq[1, A000005(n+4)^val(A089723(n+1)+1, 2)]+1`
-/

namespace A259183.P11622056495612112082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 4) ^ SequenceMachineLib.valuation (A089723 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259183.P11622056495612112082

namespace A259183

/-- `eq[1, A000005(n+4)^val(A089723(n+1)+1, 2)]+1` -/
def P11622056495612112082.Spec : Prop :=
  ∀ n, (P11622056495612112082.a n : ℤ) = A259183 (n + 1)

end A259183

/-! ## A259183.P13855071347755131747

`eq[0, A000122(A253641(n))]`
-/

namespace A259183.P13855071347755131747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259183.P13855071347755131747

namespace A259183

/-- `eq[0, A000122(A253641(n))]` -/
def P13855071347755131747.Spec : Prop :=
  ∀ n, (P13855071347755131747.a n : ℤ) = A259183 (n + 1)

end A259183

/-! ## A259183.P4008150639275355157

`eq[A000007(n), A002448(A253641(n))]`
-/

namespace A259183.P4008150639275355157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259183.P4008150639275355157

namespace A259183

/-- `eq[A000007(n), A002448(A253641(n))]` -/
def P4008150639275355157.Spec : Prop :=
  ∀ n, (P4008150639275355157.a n : ℤ) = A259183 (n + 1)

end A259183

/-! ## A259183.P3801084317548591085

`eq[A000038(n), A010052(A253641(n))]`
-/

namespace A259183.P3801084317548591085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259183.P3801084317548591085

namespace A259183

/-- `eq[A000038(n), A010052(A253641(n))]` -/
def P3801084317548591085.Spec : Prop :=
  ∀ n, (P3801084317548591085.a n : ℤ) = A259183 (n + 1)

end A259183

/-! ## A259183.P14996948795790848043

`eq[A002448(A253641(n)), A055672(n)]`
-/

namespace A259183.P14996948795790848043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259183.P14996948795790848043

namespace A259183

/-- `eq[A002448(A253641(n)), A055672(n)]` -/
def P14996948795790848043.Spec : Prop :=
  ∀ n, (P14996948795790848043.a n : ℤ) = A259183 (n + 1)

end A259183

/-! ## A259183.P1977308073671606014

`eq[A010052(A253641(n))+1, A157928(n)]`
-/

namespace A259183.P1977308073671606014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A253641 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259183.P1977308073671606014

namespace A259183

/-- `eq[A010052(A253641(n))+1, A157928(n)]` -/
def P1977308073671606014.Spec : Prop :=
  ∀ n, (P1977308073671606014.a n : ℤ) = A259183 (n + 1)

end A259183

/-!
# A259184: a(n) = 1 - sigma(n) + sigma(n)^2.

The programs for A259184, the canonical program `A259184.P15193479453645985553` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259184 has offset 1).

The definition of A259184 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-A000203(n+1)+A000203(n+1)²` (program `A259184.P15193479453645985553`, by `A259184.P15193479453645985553.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259184.P10185442532548937171

`1-A000203(n+1)+A072861(n+1)`
-/

namespace A259184.P10185442532548937171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (n + 1) + A072861 (n + 1)

end

end A259184.P10185442532548937171

namespace A259184

/-- `1-A000203(n+1)+A072861(n+1)` -/
def P10185442532548937171.Spec : Prop :=
  ∀ n, P10185442532548937171.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P15193479453645985553

`1-A000203(n+1)+A000203(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259184

/-- `1-A000203(n+1)+A000203(n+1)²` -/
def P15193479453645985553.Spec : Prop :=
  ∀ n, P15193479453645985553.a n = A259184 (n + 1)

theorem P15193479453645985553.correct : P15193479453645985553.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel]

end A259184

/-! ## A259184.P16585104050592904473

`A002061(A000203(n+1))`
-/

namespace A259184.P16585104050592904473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000203 (n + 1)).toNat

end

end A259184.P16585104050592904473

namespace A259184

/-- `A002061(A000203(n+1))` -/
def P16585104050592904473.Spec : Prop :=
  ∀ n, P16585104050592904473.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P14639110793487375555

`2*C(∑{d}[n+1, #], 2)+1`
-/

namespace A259184.P14639110793487375555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) 2 + 1

end

end A259184.P14639110793487375555

namespace A259184

/-- `2*C(∑{d}[n+1, #], 2)+1` -/
def P14639110793487375555.Spec : Prop :=
  ∀ n, (P14639110793487375555.a n : ℤ) = A259184 (n + 1)

theorem P14639110793487375555.correct : P14639110793487375555.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P14639110793487375555.f1, A259184.P14639110793487375555.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A259184

/-! ## A259184.P11161773022973922621

`∑{d}[n+1, #]+(∑{d}[n+1, #]-1)²`
-/

namespace A259184.P11161773022973922621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 1) ^ 2

end

end A259184.P11161773022973922621

namespace A259184

/-- `∑{d}[n+1, #]+(∑{d}[n+1, #]-1)²` -/
def P11161773022973922621.Spec : Prop :=
  ∀ n, P11161773022973922621.a n = A259184 (n + 1)

theorem P11161773022973922621.correct : P11161773022973922621.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P11161773022973922621.f1, A259184.P11161773022973922621.f2, A259184.P11161773022973922621.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259184

/-! ## A259184.P8061081165045476160

`ceil((A002659(n+1)/2)²)`
-/

namespace A259184.P8061081165045476160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A002659 (n + 1) : ℚ) / 2) ^ 2⌉

end

end A259184.P8061081165045476160

namespace A259184

/-- `ceil((A002659(n+1)/2)²)` -/
def P8061081165045476160.Spec : Prop :=
  ∀ n, P8061081165045476160.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P5245249015492819979

`ceil((1-sqrt(A258774(n+1)))²)`
-/

namespace A259184.P5245249015492819979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.sqrt (A258774 (n + 1) : ℝ)) ^ 2⌉

end

end A259184.P5245249015492819979

namespace A259184

/-- `ceil((1-sqrt(A258774(n+1)))²)` -/
def P5245249015492819979.Spec : Prop :=
  ∀ n, P5245249015492819979.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P12356137812815918384

`2*C(A245092(2*n+1), 2)+1`
-/

namespace A259184.P12356137812815918384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A245092 (2 * n + 1)).toNat 2 + 1

end

end A259184.P12356137812815918384

namespace A259184

/-- `2*C(A245092(2*n+1), 2)+1` -/
def P12356137812815918384.Spec : Prop :=
  ∀ n, (P12356137812815918384.a n : ℤ) = A259184 (n + 1)

end A259184

/-! ## A259184.P4657491546426209828

`2*C(A064987(n+1)/(n+1), 2)+1`
-/

namespace A259184.P4657491546426209828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat 2 + 1

end

end A259184.P4657491546426209828

namespace A259184

/-- `2*C(A064987(n+1)/(n+1), 2)+1` -/
def P4657491546426209828.Spec : Prop :=
  ∀ n, (P4657491546426209828.a n : ℤ) = A259184 (n + 1)

end A259184

/-! ## A259184.P14308547575496074984

`A258974(n+1)-A000203(n+1)`
-/

namespace A259184.P14308547575496074984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (n + 1) - A000203 (n + 1)

end

end A259184.P14308547575496074984

namespace A259184

/-- `A258974(n+1)-A000203(n+1)` -/
def P14308547575496074984.Spec : Prop :=
  ∀ n, P14308547575496074984.a n = A259184 (n + 1)

theorem P14308547575496074984.correct : P14308547575496074984.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P14308547575496074984.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A258974, A258974.P4466533170833626338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259184

/-! ## A259184.P14464151578417421294

`A258774(n+1)-A074400(n+1)`
-/

namespace A259184.P14464151578417421294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (n + 1) - A074400 (n + 1)

end

end A259184.P14464151578417421294

namespace A259184

/-- `A258774(n+1)-A074400(n+1)` -/
def P14464151578417421294.Spec : Prop :=
  ∀ n, P14464151578417421294.a n = A259184 (n + 1)

theorem P14464151578417421294.correct : P14464151578417421294.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P14464151578417421294.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A258774, A258774.P14428090743901155209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259184

/-! ## A259184.P13684136684272642057

`A259369(n+1)%A258974(n+1)`
-/

namespace A259184.P13684136684272642057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259369 (n + 1)) (A258974 (n + 1))

end

end A259184.P13684136684272642057

namespace A259184

/-- `A259369(n+1)%A258974(n+1)` -/
def P13684136684272642057.Spec : Prop :=
  ∀ n, P13684136684272642057.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P15846647916813719798

`A361147(n+1)%A258974(n+1)`
-/

namespace A259184.P15846647916813719798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361147 (n + 1)) (A258974 (n + 1))

end

end A259184.P15846647916813719798

namespace A259184

/-- `A361147(n+1)%A258974(n+1)` -/
def P15846647916813719798.Spec : Prop :=
  ∀ n, P15846647916813719798.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P16009390296057324176

`A000203(n+1)+A039653(n+1)²`
-/

namespace A259184.P16009390296057324176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A039653 (n + 1) ^ 2

end

end A259184.P16009390296057324176

namespace A259184

/-- `A000203(n+1)+A039653(n+1)²` -/
def P16009390296057324176.Spec : Prop :=
  ∀ n, P16009390296057324176.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P827079192068298343

`A088580(n+1)²-A272027(n+1)`
-/

namespace A259184.P827079192068298343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) ^ 2 - A272027 (n + 1)

end

end A259184.P827079192068298343

namespace A259184

/-- `A088580(n+1)²-A272027(n+1)` -/
def P827079192068298343.Spec : Prop :=
  ∀ n, P827079192068298343.a n = A259184 (n + 1)

theorem P827079192068298343.correct : P827079192068298343.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P827079192068298343.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259184

/-! ## A259184.P1576197319231795869

`A072861(n+1)+2-A088580(n+1)`
-/

namespace A259184.P1576197319231795869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) + (2 - A088580 (n + 1))

end

end A259184.P1576197319231795869

namespace A259184

/-- `A072861(n+1)+2-A088580(n+1)` -/
def P1576197319231795869.Spec : Prop :=
  ∀ n, P1576197319231795869.a n = A259184 (n + 1)

theorem P1576197319231795869.correct : P1576197319231795869.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P1576197319231795869.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259184

/-! ## A259184.P11581357343842631783

`2*A184387(n+1)-A002659(n+1)`
-/

namespace A259184.P11581357343842631783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184387 (n + 1) - A002659 (n + 1)

end

end A259184.P11581357343842631783

namespace A259184

/-- `2*A184387(n+1)-A002659(n+1)` -/
def P11581357343842631783.Spec : Prop :=
  ∀ n, P11581357343842631783.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P16167502714895095354

`A258774(n+1)-2*A000203(n+1)`
-/

namespace A259184.P16167502714895095354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (n + 1) - 2 * A000203 (n + 1)

end

end A259184.P16167502714895095354

namespace A259184

/-- `A258774(n+1)-2*A000203(n+1)` -/
def P16167502714895095354.Spec : Prop :=
  ∀ n, P16167502714895095354.a n = A259184 (n + 1)

theorem P16167502714895095354.correct : P16167502714895095354.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P16167502714895095354.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A258774, A258774.P14428090743901155209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259184

/-! ## A259184.P3542644070028820645

`A258774(n+1)-A326136(2*(n+1))`
-/

namespace A259184.P3542644070028820645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (n + 1) - A326136 (2 * (n + 1))

end

end A259184.P3542644070028820645

namespace A259184

/-- `A258774(n+1)-A326136(2*(n+1))` -/
def P3542644070028820645.Spec : Prop :=
  ∀ n, P3542644070028820645.a n = A259184 (n + 1)

end A259184

/-! ## A259184.P984212214787338069

`A072861(n+1)-(A001065(n+1)+n)`
-/

namespace A259184.P984212214787338069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - (A001065 (n + 1) + (n : ℤ))

end

end A259184.P984212214787338069

namespace A259184

/-- `A072861(n+1)-(A001065(n+1)+n)` -/
def P984212214787338069.Spec : Prop :=
  ∀ n, P984212214787338069.a n = A259184 (n + 1)

theorem P984212214787338069.correct : P984212214787338069.Spec := by
  intro n
  simp only [A259184, Nat.add_sub_cancel, A259184.P984212214787338069.a, A259184.P15193479453645985553.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A072861, A072861.P7379814568350881994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259184

/-!
# A259185: Numbers n such that 1 - sigma(n) + sigma(n)^2 is prime.

The programs for A259185, the canonical program `A259185.P964314148643136700` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259185 has offset 1).

The definition of A259185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259185.P964314148643136700

`eq[1, A289356(A039653(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259185

/-- `eq[1, A289356(A039653(n))]` -/
def P964314148643136700.Spec : Prop :=
  ∀ n, (P964314148643136700.a n : ℤ) = A259185 (n + 1)

theorem P964314148643136700.correct : P964314148643136700.Spec := by
  intro n
  simp only [A259185, Nat.add_sub_cancel]

end A259185

/-! ## A259185.P17936961302143093406

`lt[1, A108154(A000203(n+1))]+1`
-/

namespace A259185.P17936961302143093406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A259185.P17936961302143093406

namespace A259185

/-- `lt[1, A108154(A000203(n+1))]+1` -/
def P17936961302143093406.Spec : Prop :=
  ∀ n, (P17936961302143093406.a n : ℤ) = A259185 (n + 1)

end A259185

/-! ## A259185.P8636980779857344142

`record[(3-A278251(A000203(n+1)))*A000027(n+1)]`
-/

namespace A259185.P8636980779857344142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A278251 (A000203 (n + 1)).toNat) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259185.P8636980779857344142

namespace A259185

/-- `record[(3-A278251(A000203(n+1)))*A000027(n+1)]` -/
def P8636980779857344142.Spec : Prop :=
  ∀ n, P8636980779857344142.a n = A259185 (n + 1)

end A259185

/-! ## A259185.P13125557162969714101

`eq[2, A278251(A000203(n+1))%A088175(n+1)]+1`
-/

namespace A259185.P13125557162969714101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278251 (A000203 (n + 1)).toNat) (A088175 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259185.P13125557162969714101

namespace A259185

/-- `eq[2, A278251(A000203(n+1))%A088175(n+1)]+1` -/
def P13125557162969714101.Spec : Prop :=
  ∀ n, (P13125557162969714101.a n : ℤ) = A259185 (n + 1)

end A259185

/-! ## A259185.P3695688770568363957

`eq[2, A000005(A259184(n+1))]+1`
-/

namespace A259185.P3695688770568363957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A259184 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259185.P3695688770568363957

namespace A259185

/-- `eq[2, A000005(A259184(n+1))]+1` -/
def P3695688770568363957.Spec : Prop :=
  ∀ n, (P3695688770568363957.a n : ℤ) = A259185 (n + 1)

end A259185

/-! ## A259185.P514122003831387509

`eq[1, A001222(2*C(A039653(n+1)+1, 2)+1)]+1`
-/

namespace A259185.P514122003831387509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * Nat.choose (A039653 (n + 1) + 1).toNat 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259185.P514122003831387509

namespace A259185

/-- `eq[1, A001222(2*C(A039653(n+1)+1, 2)+1)]+1` -/
def P514122003831387509.Spec : Prop :=
  ∀ n, (P514122003831387509.a n : ℤ) = A259185 (n + 1)

end A259185

/-! ## A259185.P9010255202043855697

`record[A005843(n+1)/A000005(A259184(n+1))]`
-/

namespace A259185.P9010255202043855697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A000005 (A259184 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259185.P9010255202043855697

namespace A259185

/-- `record[A005843(n+1)/A000005(A259184(n+1))]` -/
def P9010255202043855697.Spec : Prop :=
  ∀ n, P9010255202043855697.a n = (A259185 (n + 1) : ℚ)

end A259185

/-!
# A259186: Primes in A259184.

The programs for A259186, the canonical program `A259186.P17881752095375684835` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259186 has offset 1).

The definition of A259186 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259185, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259186.P17881752095375684835

`A259184(A259185(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259186

/-- `A259184(A259185(n+1))` -/
def P17881752095375684835.Spec : Prop :=
  ∀ n, P17881752095375684835.a n = A259186 (n + 1)

theorem P17881752095375684835.correct : P17881752095375684835.Spec := by
  intro n
  simp only [A259186, Nat.add_sub_cancel]

end A259186

/-! ## A259186.P2409231486961318572

`A002061(∑{d}[A259185(n+1), #])`
-/

namespace A259186.P2409231486961318572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259186.P2409231486961318572

namespace A259186

/-- `A002061(∑{d}[A259185(n+1), #])` -/
def P2409231486961318572.Spec : Prop :=
  ∀ n, P2409231486961318572.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P8180391764966263972

`A081256(∑{d}[A259185(n+1), #])`
-/

namespace A259186.P8180391764966263972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259186.P8180391764966263972

namespace A259186

/-- `A081256(∑{d}[A259185(n+1), #])` -/
def P8180391764966263972.Spec : Prop :=
  ∀ n, P8180391764966263972.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P15394856719363278399

`A108154(∑{d}[A259185(n+1), #])`
-/

namespace A259186.P15394856719363278399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259186.P15394856719363278399

namespace A259186

/-- `A108154(∑{d}[A259185(n+1), #])` -/
def P15394856719363278399.Spec : Prop :=
  ∀ n, P15394856719363278399.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P14702431258365215588

`A002378(∑{d}[A259185(n+1), #]+log2(1/2))+1`
-/

namespace A259186.P14702431258365215588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + 1

end

end A259186.P14702431258365215588

namespace A259186

/-- `A002378(∑{d}[A259185(n+1), #]+log2(1/2))+1` -/
def P14702431258365215588.Spec : Prop :=
  ∀ n, P14702431258365215588.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P6207787753181266642

`p?[A108154(A000203(n+1))]`
-/

namespace A259186.P6207787753181266642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259186.P6207787753181266642

namespace A259186

/-- `p?[A108154(A000203(n+1))]` -/
def P6207787753181266642.Spec : Prop :=
  ∀ n, P6207787753181266642.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P5812223940740145097

`p?[A108154(sqrt(A072861(n+1)))]`
-/

namespace A259186.P5812223940740145097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259186.P5812223940740145097

namespace A259186

/-- `p?[A108154(sqrt(A072861(n+1)))]` -/
def P5812223940740145097.Spec : Prop :=
  ∀ n, P5812223940740145097.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P1158410458287259436

`p?[A108154(A088580(n+1)-1)]`
-/

namespace A259186.P1158410458287259436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A088580 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259186.P1158410458287259436

namespace A259186

/-- `p?[A108154(A088580(n+1)-1)]` -/
def P1158410458287259436.Spec : Prop :=
  ∀ n, P1158410458287259436.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P12072296610357844376

`p?[A259184(n+1)%A000566(2*n+1)]`
-/

namespace A259186.P12072296610357844376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259184 (n + 1)) (A000566 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259186.P12072296610357844376

namespace A259186

/-- `p?[A259184(n+1)%A000566(2*n+1)]` -/
def P12072296610357844376.Spec : Prop :=
  ∀ n, P12072296610357844376.a n = A259186 (n + 1)

end A259186

/-! ## A259186.P10070487464339486378

`p?[A259184(n+1)%A015769(A008458(n))]`
-/

namespace A259186.P10070487464339486378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259184 (n + 1)) (A015769 (A008458 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259186.P10070487464339486378

namespace A259186

/-- `p?[A259184(n+1)%A015769(A008458(n))]` -/
def P10070487464339486378.Spec : Prop :=
  ∀ n, P10070487464339486378.a n = A259186 (n + 1)

end A259186

/-!
# A259187: Primes p such that both p and p^2 are distinct-digit numbers.

The programs for A259187, there is no canonical definition to state claims against.
-/

/-! ## A259187.P9502317207933416048

`∩[A029743(n+1), A045540(n+1)]`
-/

namespace A259187.P9502317207933416048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259187.P9502317207933416048

/-! ## A259187.P8691367628725282950

`∩[A045540(n+1), A082646(n+1)]`
-/

namespace A259187.P8691367628725282950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259187.P8691367628725282950

/-! ## A259187.P5250467056224978543

`∩[A029743(n+1), A119509(n+1)]`
-/

namespace A259187.P5250467056224978543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259187.P5250467056224978543

/-! ## A259187.P3340837792208231778

`∩[A010784(n+1), A162950(n+1)]`
-/

namespace A259187.P3340837792208231778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259187.P3340837792208231778

/-! ## A259187.P5770482611198480671

`∩[A029743(n+1), A162950(n+1)]`
-/

namespace A259187.P5770482611198480671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259187.P5770482611198480671

/-!
# A259188: Primes p such that p, p^2 and p^3 are distinct-digit numbers.

The programs for A259188, there is no canonical definition to state claims against.
-/

/-! ## A259188.P12180178251404872598

`p?[comp[n²]+floor(n²/12)]`
-/

namespace A259188.P12180178251404872598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ⌊(n ^ 2 : ℚ) / 12⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259188.P12180178251404872598

/-! ## A259188.P8606805430784020128

`p?[A305734(n+1)]%75`
-/

namespace A259188.P8606805430784020128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 75

end

end A259188.P8606805430784020128

/-! ## A259188.P16325205775039381625

`A089191(∑[(n+1)/∏{p}[n+1, #]])`
-/

namespace A259188.P16325205775039381625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089191 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A259188.P16325205775039381625

/-! ## A259188.P3778052477725293339

`A059843(A015730(n+1))`
-/

namespace A259188.P3778052477725293339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A015730 (n + 1)).toNat

end

end A259188.P3778052477725293339

/-!
# A259189: Semiprimes of the form n^3 + 2.

The programs for A259189, there is no canonical definition to state claims against.
-/

/-! ## A259189.P18113549467538520000

`∩[A001358(n+1), n^3+2]`
-/

namespace A259189.P18113549467538520000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A259189.P18113549467538520000

/-! ## A259189.P11203673857137323354

`eq[2, A001222(n^3+2)]^3+2`
-/

namespace A259189.P11203673857137323354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 3 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3 + 2

end

end A259189.P11203673857137323354

/-! ## A259189.P7677462047603968043

`filter[A084380(n), A354927(#)]`
-/

namespace A259189.P7677462047603968043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A259189.P7677462047603968043

/-! ## A259189.P16534395833676174416

`filter[A034324(n+2), A354927(#)]`
-/

namespace A259189.P16534395833676174416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034324 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A259189.P16534395833676174416

/-! ## A259189.P15955242713447607724

`A084380(eq[2, A001222(A084380(n))])`
-/

namespace A259189.P15955242713447607724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259189.P15955242713447607724

/-!
# A259190: Primes of the form sigma(n) + sigma(n)^2 - 1.

The programs for A259190, the canonical program `A259190.P13101566552867550762` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259190 has offset 1).

The definition of A259190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259190.P15436262323567505087

`p?[A258774(n+1)-2]`
-/

namespace A259190.P15436262323567505087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P15436262323567505087

namespace A259190

/-- `p?[A258774(n+1)-2]` -/
def P15436262323567505087.Spec : Prop :=
  ∀ n, P15436262323567505087.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P12927081608717960842

`p?[2*A184387(n+1)-1]`
-/

namespace A259190.P12927081608717960842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184387 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P12927081608717960842

namespace A259190

/-- `p?[2*A184387(n+1)-1]` -/
def P12927081608717960842.Spec : Prop :=
  ∀ n, P12927081608717960842.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P16541772570016459699

`p?[2*C(A000203(n+1)+1, 2)-1]`
-/

namespace A259190.P16541772570016459699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A000203 (n + 1) + 1).toNat 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P16541772570016459699

namespace A259190

/-- `p?[2*C(A000203(n+1)+1, 2)-1]` -/
def P16541772570016459699.Spec : Prop :=
  ∀ n, P16541772570016459699.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P13101566552867550762

`p?[A028387(A039653(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259190

/-- `p?[A028387(A039653(n))]` -/
def P13101566552867550762.Spec : Prop :=
  ∀ n, P13101566552867550762.a n = A259190 (n + 1)

theorem P13101566552867550762.correct : P13101566552867550762.Spec := by
  intro n
  simp only [A259190, Nat.add_sub_cancel]

end A259190

/-! ## A259190.P16654542495691896218

`p?[A024206(A074400(n+1))]`
-/

namespace A259190.P16654542495691896218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (A074400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P16654542495691896218

namespace A259190

/-- `p?[A024206(A074400(n+1))]` -/
def P16654542495691896218.Spec : Prop :=
  ∀ n, P16654542495691896218.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P4830851891493622962

`p?[A165900(A088580(n+1))]`
-/

namespace A259190.P4830851891493622962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A088580 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P4830851891493622962

namespace A259190

/-- `p?[A165900(A088580(n+1))]` -/
def P4830851891493622962.Spec : Prop :=
  ∀ n, P4830851891493622962.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P3283164500717055163

`p?[A165900(A039653(n)+2)]`
-/

namespace A259190.P3283164500717055163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A039653 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P3283164500717055163

namespace A259190

/-- `p?[A165900(A039653(n)+2)]` -/
def P3283164500717055163.Spec : Prop :=
  ∀ n, P3283164500717055163.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P7344240566903781405

`p?[abs(A110331(A000203(n+1)))]`
-/

namespace A259190.P7344240566903781405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110331 (A000203 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P7344240566903781405

namespace A259190

/-- `p?[abs(A110331(A000203(n+1)))]` -/
def P7344240566903781405.Spec : Prop :=
  ∀ n, P7344240566903781405.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P9115956003571612275

`p?[A028387(A000203(n+1)-1)]`
-/

namespace A259190.P9115956003571612275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A000203 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P9115956003571612275

namespace A259190

/-- `p?[A028387(A000203(n+1)-1)]` -/
def P9115956003571612275.Spec : Prop :=
  ∀ n, P9115956003571612275.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P11591164817729828210

`p?[A264754(A002659(n+1)-1)]`
-/

namespace A259190.P11591164817729828210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 (A002659 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P11591164817729828210

namespace A259190

/-- `p?[A264754(A002659(n+1)-1)]` -/
def P11591164817729828210.Spec : Prop :=
  ∀ n, P11591164817729828210.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P17214610272524749354

`p?[A024206(2*A000203(n+1))]`
-/

namespace A259190.P17214610272524749354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (2 * A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P17214610272524749354

namespace A259190

/-- `p?[A024206(2*A000203(n+1))]` -/
def P17214610272524749354.Spec : Prop :=
  ∀ n, P17214610272524749354.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P482031235422832165

`p?[A027688(A000203(n+2))-4]`
-/

namespace A259190.P482031235422832165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (A000203 (n + 2)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P482031235422832165

namespace A259190

/-- `p?[A027688(A000203(n+2))-4]` -/
def P482031235422832165.Spec : Prop :=
  ∀ n, P482031235422832165.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P1433594429644985784

`p?[A002061(A000203(n+1)+1)-2]`
-/

namespace A259190.P1433594429644985784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000203 (n + 1) + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P1433594429644985784

namespace A259190

/-- `p?[A002061(A000203(n+1)+1)-2]` -/
def P1433594429644985784.Spec : Prop :=
  ∀ n, P1433594429644985784.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P3915688882698590393

`p?[A000203(n+1)+A072861(n+1)-1]`
-/

namespace A259190.P3915688882698590393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A072861 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P3915688882698590393

namespace A259190

/-- `p?[A000203(n+1)+A072861(n+1)-1]` -/
def P3915688882698590393.Spec : Prop :=
  ∀ n, P3915688882698590393.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P17151703845693752463

`p?[A000203(n+1)*A088580(n+1)-1]`
-/

namespace A259190.P17151703845693752463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A088580 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P17151703845693752463

namespace A259190

/-- `p?[A000203(n+1)*A088580(n+1)-1]` -/
def P17151703845693752463.Spec : Prop :=
  ∀ n, P17151703845693752463.a n = A259190 (n + 1)

end A259190

/-! ## A259190.P18423565611032469141

`p?[A001065(n+1)+A072861(n+1)+n]`
-/

namespace A259190.P18423565611032469141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A072861 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P18423565611032469141

namespace A259190

/-- `p?[A001065(n+1)+A072861(n+1)+n]` -/
def P18423565611032469141.Spec : Prop :=
  ∀ n, P18423565611032469141.a n = A259190 (n + 1)

end A259190

/-!
# A259193: 5x + 1 sequence beginning at 11.

The programs for A259193, there is no canonical definition to state claims against.
-/

/-! ## A259193.P6269639154763409591

`A235800(3*a(n-1))-a(n-1)` with `a(0)=11`
-/

namespace A259193.P6269639154763409591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A235800 (3 * a (n - 1)).toNat - a (n - 1)

end

end A259193.P6269639154763409591

/-!
# A259194: Number of partitions of n into four primes.

The programs for A259194, there is no canonical definition to state claims against.
-/

/-! ## A259194.P3350623651723996004

`ceil(acot(n)*A308809(n))`
-/

namespace A259194.P3350623651723996004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) * (A308809 n : ℝ)⌉

end

end A259194.P3350623651723996004

/-! ## A259194.P18311429670474697977

`A308809(char[1]+n)/round(1/acot(n))`
-/

namespace A259194.P18311429670474697977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308809 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A259194.P18311429670474697977

/-! ## A259194.P1228652431868515359

`A308809(n)/A028310(n)`
-/

namespace A259194.P1228652431868515359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308809 n : ℚ) / (A028310 n : ℚ)

end

end A259194.P1228652431868515359

/-! ## A259194.P9970008142266866749

`abs(A308809(n)/A274922(n))`
-/

namespace A259194.P9970008142266866749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A308809 n : ℚ) / (A274922 n : ℚ)|

end

end A259194.P9970008142266866749

/-! ## A259194.P13826944364199863568

`A308809(n)/sqrt(A253909(n))`
-/

namespace A259194.P13826944364199863568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308809 n : ℝ) / Real.sqrt (A253909 n : ℝ)

end

end A259194.P13826944364199863568

/-! ## A259194.P5580387820666034124

`A308809(n)/A233583(n+1)`
-/

namespace A259194.P5580387820666034124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308809 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A259194.P5580387820666034124

/-! ## A259194.P5980559869392262346

`A308809(n)/(A000007(n)+n)`
-/

namespace A259194.P5980559869392262346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308809 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A259194.P5980559869392262346

/-! ## A259194.P17365000032016133975

`A308809(n)/(A000038(n)+n)`
-/

namespace A259194.P17365000032016133975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308809 n : ℚ) / (A000038 n + (n : ℤ) : ℚ)

end

end A259194.P17365000032016133975

/-! ## A259194.P13583699923750358617

`A308809(n)/round(acot(A000010(n+1))+n)`
-/

namespace A259194.P13583699923750358617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308809 n : ℚ) / (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A000010 (n + 1) : ℝ) + (n : ℝ)) : ℚ)

end

end A259194.P13583699923750358617

/-! ## A259194.P10561813040073899133

`A347578(n)-A071335(abs(1-n)+1)`
-/

namespace A259194.P10561813040073899133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 n - A071335 (|1 - (n : ℤ)| + 1).toNat

end

end A259194.P10561813040073899133

/-!
# A259195: Number of partitions of n into five primes.

The programs for A259195, there is no canonical definition to state claims against.
-/

/-! ## A259195.P9142823555379783019

`round(acot(n)*A308854(n))`
-/

namespace A259195.P9142823555379783019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) * (A308854 n : ℝ))

end

end A259195.P9142823555379783019

/-! ## A259195.P17105739915165288465

`A308854(n)/A028310(n)`
-/

namespace A259195.P17105739915165288465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 n : ℚ) / (A028310 n : ℚ)

end

end A259195.P17105739915165288465

/-! ## A259195.P3183210371016349159

`A308854(n)/A233583(n+1)`
-/

namespace A259195.P3183210371016349159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A259195.P3183210371016349159

/-! ## A259195.P5243729601772733897

`2/A004277(n)*A308854(n)`
-/

namespace A259195.P5243729601772733897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004277 n : ℚ) * (A308854 n : ℚ)

end

end A259195.P5243729601772733897

/-! ## A259195.P921027928093869288

`A308854(n)/A065033(2*n)`
-/

namespace A259195.P921027928093869288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A259195.P921027928093869288

/-! ## A259195.P16988933063574445540

`A308854(n)/A008619(A004273(n))`
-/

namespace A259195.P16988933063574445540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A259195.P16988933063574445540

/-! ## A259195.P5213211886614589942

`A308854(n)/A008619(A004275(n))`
-/

namespace A259195.P5213211886614589942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 n : ℚ) / (A008619 (A004275 n).toNat : ℚ)

end

end A259195.P5213211886614589942

/-! ## A259195.P6981935982807504917

`A308854(n)/A007318(A000124(n))`
-/

namespace A259195.P6981935982807504917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A259195.P6981935982807504917

/-! ## A259195.P472551025287472982

`A308854(n)/A000196(A002522(n))`
-/

namespace A259195.P472551025287472982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308854 n : ℚ) / (A000196 (A002522 n).toNat : ℚ)

end

end A259195.P472551025287472982

/-! ## A259195.P9174545108015196814

`A008585(A308854(n))/A008486(n)`
-/

namespace A259195.P9174545108015196814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A308854 n).toNat : ℚ) / (A008486 n : ℚ)

end

end A259195.P9174545108015196814

/-!
# A259196: Number of partitions of n into six primes.

The programs for A259196, there is no canonical definition to state claims against.
-/

/-! ## A259196.P3478132519330260058

`A308919(n+12)/(n+12)`
-/

namespace A259196.P3478132519330260058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308919 (n + 12) : ℚ) / (n + 12 : ℚ)

end

end A259196.P3478132519330260058

/-! ## A259196.P9325450622529508809

`A341949(n+12)-A341948(n+11)`
-/

namespace A259196.P9325450622529508809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341949 (n + 12) - A341948 (n + 11)

end

end A259196.P9325450622529508809

/-! ## A259196.P12154293048256491430

`A347610(n+12)-A347609(n+12)`
-/

namespace A259196.P12154293048256491430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (n + 12) - A347609 (n + 12)

end

end A259196.P12154293048256491430

/-! ## A259196.P17352070769464897748

`A176816(A062684(n+1)-A308974(n))`
-/

namespace A259196.P17352070769464897748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A062684 (n + 1) - A308974 n).toNat

end

end A259196.P17352070769464897748

/-! ## A259196.P9029111646437916155

`A176816(∑[A179254(n)])`
-/

namespace A259196.P9029111646437916155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259196.P9029111646437916155

/-!
# A259197: Number of partitions of n into seven primes.

The programs for A259197, there is no canonical definition to state claims against.
-/

/-! ## A259197.P17242727598213068914

`A308974(n+14)/(n+14)`
-/

namespace A259197.P17242727598213068914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308974 (n + 14) : ℚ) / (n + 14 : ℚ)

end

end A259197.P17242727598213068914

/-! ## A259197.P3143488591453730591

`A341950(n+14)-A341949(n+13)`
-/

namespace A259197.P3143488591453730591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341950 (n + 14) - A341949 (n + 13)

end

end A259197.P3143488591453730591

/-!
# A259198: Number of partitions of n into eight primes.

The programs for A259198, there is no canonical definition to state claims against.
-/

/-! ## A259198.P13525240855958162017

`A326455(n+16)/(n+16)`
-/

namespace A259198.P13525240855958162017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326455 (n + 16) : ℚ) / (n + 16 : ℚ)

end

end A259198.P13525240855958162017

/-! ## A259198.P13896691540957771345

`A341951(n+16)-A341950(n+15)`
-/

namespace A259198.P13896691540957771345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341951 (n + 16) - A341950 (n + 15)

end

end A259198.P13896691540957771345

/-! ## A259198.P14024072790371659665

`A259200(n+1)-A139352(A305889(n)+A060681(n+1))`
-/

namespace A259198.P14024072790371659665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259200 (n + 1 + 18) - A139352 (A305889 n + A060681 (n + 1)).toNat

end

end A259198.P14024072790371659665

/-! ## A259198.P4074335234320710710

`A106244(n)+A073490(A002531(n))-A289207(A091373(n+1))`
-/

namespace A259198.P4074335234320710710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 n + A073490 (A002531 n).toNat - A289207 (A091373 (n + 1)).toNat

end

end A259198.P4074335234320710710

/-! ## A259198.P17568890557756749555

`A073490(A002531(n))+∑[A178691(n)]-A289207(A091373(n+1))`
-/

namespace A259198.P17568890557756749555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A002531 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j - A289207 (A091373 (n + 1)).toNat

end

end A259198.P17568890557756749555

