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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A350100: Numbers k such that the prime gap between the consecutive primes p1 < k^2 < p2 sets a new record.

The programs for A350100, there is no canonical definition to state claims against.
-/

/-! ## A350100.P3744598327811181487

`A090116(A378904(n+1))`
-/

namespace A350100.P3744598327811181487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090116 (A378904 (n + 1)).toNat

end

end A350100.P3744598327811181487

/-! ## A350100.P10476628312663573320

`A090116(record[A058043(n+2)/2])`
-/

namespace A350100.P10476628312663573320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058043 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090116 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A350100.P10476628312663573320

/-! ## A350100.P14909153412280125583

`A090116(record[A056928(n+2)-((n+2)²-A056927(n+2))])`
-/

namespace A350100.P14909153412280125583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2) - (((n + 2) ^ 2 : ℤ) - A056927 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350100.P14909153412280125583

/-!
# A350101: Numbers k such that 2*k-1 and 2*k+1 are squarefree semiprimes (A046388).

The programs for A350101, the canonical program `A350101.P6103379050799326445` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350101 has offset 1).

The definition of A350101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6076 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350101.P6103379050799326445

`∩[A082130(n+1), A190276(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350101

/-- `∩[A082130(n+1), A190276(n+1)]` -/
def P6103379050799326445.Spec : Prop :=
  ∀ n, (P6103379050799326445.a n : ℤ) = A350101 (n + 1)

theorem P6103379050799326445.correct : P6103379050799326445.Spec := by
  intro n
  simp only [A350101, Nat.add_sub_cancel]

end A350101

/-! ## A350101.P917552598871809724

`∩[A082130(n+1), A272799(n+1)]`
-/

namespace A350101.P917552598871809724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350101.P917552598871809724

namespace A350101

/-- `∩[A082130(n+1), A272799(n+1)]` -/
def P917552598871809724.Spec : Prop :=
  ∀ n, (P917552598871809724.a n : ℤ) = A350101 (n + 1)

end A350101

/-! ## A350101.P6422572513459989980

`A000463(∩[A046388(n+1)-2, A046388(n+1)])`
-/

namespace A350101.P6422572513459989980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A350101.P6422572513459989980

namespace A350101

/-- `A000463(∩[A046388(n+1)-2, A046388(n+1)])` -/
def P6422572513459989980.Spec : Prop :=
  ∀ n, P6422572513459989980.a n = A350101 (n + 1)

end A350101

/-! ## A350101.P9852807778076240142

`∩[A234093(n+1)+1, A234093(n+3)]`
-/

namespace A350101.P9852807778076240142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234093 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350101.P9852807778076240142

namespace A350101

/-- `∩[A234093(n+1)+1, A234093(n+3)]` -/
def P9852807778076240142.Spec : Prop :=
  ∀ n, (P9852807778076240142.a n : ℤ) = A350101 (n + 1)

end A350101

/-! ## A350101.P13279730987962904056

`∩[A000463(A046388(n+1)), A234093(n+1)]`
-/

namespace A350101.P13279730987962904056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A046388 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350101.P13279730987962904056

namespace A350101

/-- `∩[A000463(A046388(n+1)), A234093(n+1)]` -/
def P13279730987962904056.Spec : Prop :=
  ∀ n, (P13279730987962904056.a n : ℤ) = A350101 (n + 1)

end A350101

/-!
# A350102: Number of self-measuring subsets of the initial segment of the natural numbers strictly below n. Number of subsets S of [n] with S = distset(S).

The programs for A350102, the canonical program `A350102.P6516286652401420813` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350102 has offset 0).

The definition of A350102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350102.P6516286652401420813

`a(n-1)+A000005(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350102

/-- `a(n-1)+A000005(n-1)` -/
def P6516286652401420813.Spec : Prop :=
  ∀ n, P6516286652401420813.a n = A350102 n

theorem P6516286652401420813.correct : P6516286652401420813.Spec := by
  intro n
  simp only [A350102]

end A350102

/-! ## A350102.P3723337908943120869

`∑[∏{e}[1-n, #+1]]`
-/

namespace A350102.P3723337908943120869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P3723337908943120869

namespace A350102

/-- `∑[∏{e}[1-n, #+1]]` -/
def P3723337908943120869.Spec : Prop :=
  ∀ n, (P3723337908943120869.a n : ℤ) = A350102 n

end A350102

/-! ## A350102.P10525068482348803729

`∑[∑{d}[1-n, n%#]+1]`
-/

namespace A350102.P10525068482348803729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, n % d + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P10525068482348803729

namespace A350102

/-- `∑[∑{d}[1-n, n%#]+1]` -/
def P10525068482348803729.Spec : Prop :=
  ∀ n, (P10525068482348803729.a n : ℤ) = A350102 n

end A350102

/-! ## A350102.P1558398995965088690

`∑[∏{p}[n-1, val(n-1, #)+1]]`
-/

namespace A350102.P1558398995965088690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (SequenceMachineLib.valuation ((n : ℤ) - 1).toNat p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P1558398995965088690

namespace A350102

/-- `∑[∏{p}[n-1, val(n-1, #)+1]]` -/
def P1558398995965088690.Spec : Prop :=
  ∀ n, (P1558398995965088690.a n : ℤ) = A350102 n

end A350102

/-! ## A350102.P12222008749252637813

`∏{e}[n-1, #+1]+a(n-1)` with `a(0)=1`
-/

namespace A350102.P12222008749252637813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + a (n - 1)

end

end A350102.P12222008749252637813

namespace A350102

/-- `∏{e}[n-1, #+1]+a(n-1)` -/
def P12222008749252637813.Spec : Prop :=
  ∀ n, (P12222008749252637813.a n : ℤ) = A350102 n

end A350102

/-! ## A350102.P6670751084103672374

`A054519(n)-A032741(n)`
-/

namespace A350102.P6670751084103672374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - A032741 n

end

end A350102.P6670751084103672374

namespace A350102

/-- `A054519(n)-A032741(n)` -/
def P6670751084103672374.Spec : Prop :=
  ∀ n, P6670751084103672374.a n = A350102 n

end A350102

/-! ## A350102.P3349712574769803818

`∑[A000005(A289207(n)+1)]`
-/

namespace A350102.P3349712574769803818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A289207 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P3349712574769803818

namespace A350102

/-- `∑[A000005(A289207(n)+1)]` -/
def P3349712574769803818.Spec : Prop :=
  ∀ n, P3349712574769803818.a n = A350102 n

end A350102

/-! ## A350102.P18435892299539203718

`A006218(n)+1-A032741(n)`
-/

namespace A350102.P18435892299539203718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + (1 - A032741 n)

end

end A350102.P18435892299539203718

namespace A350102

/-- `A006218(n)+1-A032741(n)` -/
def P18435892299539203718.Spec : Prop :=
  ∀ n, P18435892299539203718.a n = A350102 n

end A350102

/-! ## A350102.P1155665961549709385

`∑[A000005(A233583(n+1)-1)]`
-/

namespace A350102.P1155665961549709385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P1155665961549709385

namespace A350102

/-- `∑[A000005(A233583(n+1)-1)]` -/
def P1155665961549709385.Spec : Prop :=
  ∀ n, P1155665961549709385.a n = A350102 n

end A350102

/-! ## A350102.P10595573842580409026

`A094373(n)-A389921(n)`
-/

namespace A350102.P10595573842580409026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A389921 n

end

end A350102.P10595573842580409026

namespace A350102

/-- `A094373(n)-A389921(n)` -/
def P10595573842580409026.Spec : Prop :=
  ∀ n, P10595573842580409026.a n = A350102 n

theorem P10595573842580409026.correct : P10595573842580409026.Spec := by
  intro n
  simp only [A350102, Nat.add_sub_cancel, A350102.P10595573842580409026.a, A350102.P6516286652401420813.a, A000005, A000005.P16091521709108585461.a, A094373, A094373.P16878444854315470639.a, A389921, A389921.P16454545496110612837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350102

/-! ## A350102.P2299278765913292186

`2^n-A350105(n)`
-/

namespace A350102.P2299278765913292186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A350105 n

end

end A350102.P2299278765913292186

namespace A350102

/-- `2^n-A350105(n)` -/
def P2299278765913292186.Spec : Prop :=
  ∀ n, P2299278765913292186.a n = A350102 n

theorem P2299278765913292186.correct : P2299278765913292186.Spec := by
  intro n
  simp only [A350102, Nat.add_sub_cancel, A350102.P2299278765913292186.a, A350102.P6516286652401420813.a, A000005, A000005.P16091521709108585461.a, A350105, A350105.P14782711713728949417.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350102

/-! ## A350102.P2488264644382059567

`∑[A320019(A238531(n)-1)]`
-/

namespace A350102.P2488264644382059567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (A238531 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P2488264644382059567

namespace A350102

/-- `∑[A320019(A238531(n)-1)]` -/
def P2488264644382059567.Spec : Prop :=
  ∀ n, P2488264644382059567.a n = A350102 n

end A350102

/-! ## A350102.P12746286911070188168

`∑[A055894(C(n, 2))]`
-/

namespace A350102.P12746286911070188168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055894 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P12746286911070188168

namespace A350102

/-- `∑[A055894(C(n, 2))]` -/
def P12746286911070188168.Spec : Prop :=
  ∀ n, P12746286911070188168.a n = A350102 n

end A350102

/-! ## A350102.P2236446841040926074

`∑[A238130(C(n, 2))]`
-/

namespace A350102.P2236446841040926074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P2236446841040926074

namespace A350102

/-- `∑[A238130(C(n, 2))]` -/
def P2236446841040926074.Spec : Prop :=
  ∀ n, P2236446841040926074.a n = A350102 n

end A350102

/-! ## A350102.P17225557164789283945

`∑[A238353(C(n, 2))]`
-/

namespace A350102.P17225557164789283945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P17225557164789283945

namespace A350102

/-- `∑[A238353(C(n, 2))]` -/
def P17225557164789283945.Spec : Prop :=
  ∀ n, P17225557164789283945.a n = A350102 n

end A350102

/-! ## A350102.P11098565976648022186

`∑[A238353(A179865(n+1)-n)]`
-/

namespace A350102.P11098565976648022186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (A179865 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350102.P11098565976648022186

namespace A350102

/-- `∑[A238353(A179865(n+1)-n)]` -/
def P11098565976648022186.Spec : Prop :=
  ∀ n, P11098565976648022186.a n = A350102 n

end A350102

/-!
# A350103: Triangle read by rows. Number of self-measuring subsets of the initial segment of the natural numbers strictly below n and cardinality k. Number of subsets S of [n] with S = distset(S) and |S| = k.

The programs for A350103, there is no canonical definition to state claims against.
-/

/-! ## A350103.P15210213858789196144

`gcd(A002266(A269129(n)), A096751(n))`
-/

namespace A350103.P15210213858789196144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002266 (A269129 n).toNat) (A096751 n)

end

end A350103.P15210213858789196144

/-! ## A350103.P12518927342111290845

`gcd(A114873(A122799(n+1)), A293551(n))`
-/

namespace A350103.P12518927342111290845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114873 (A122799 (n + 1)).toNat) (A293551 n)

end

end A350103.P12518927342111290845

/-! ## A350103.P15280154385298577715

`gcd(A096815(n), A137723(n+1))`
-/

namespace A350103.P15280154385298577715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096815 n) (A137723 (n + 1))

end

end A350103.P15280154385298577715

/-! ## A350103.P14553453360915151909

`gcd(A077592(n+1), A354273(A008288(n)))`
-/

namespace A350103.P14553453360915151909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077592 (n + 1)) (A354273 (A008288 n).toNat)

end

end A350103.P14553453360915151909

/-!
# A350104: a(n) = Sum_{k=0..n} A350102(k).

The programs for A350104, the canonical program `A350104.P11119767518660487509` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350104 has offset 0).

The definition of A350104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350104.P11119767518660487509

`∑[∑[∏{e}[1-n, #+1]]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350104

/-- `∑[∑[∏{e}[1-n, #+1]]]` -/
def P11119767518660487509.Spec : Prop :=
  ∀ n, (P11119767518660487509.a n : ℤ) = A350104 n

theorem P11119767518660487509.correct : P11119767518660487509.Spec := by
  intro n
  simp only [A350104]

end A350104

/-! ## A350104.P8910401313303690776

`∑[∑[∑{d}[1-n, n%#]+1]]`
-/

namespace A350104.P8910401313303690776
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, n % d + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P8910401313303690776

namespace A350104

/-- `∑[∑[∑{d}[1-n, n%#]+1]]` -/
def P8910401313303690776.Spec : Prop :=
  ∀ n, (P8910401313303690776.a n : ℤ) = A350104 n

end A350104

/-! ## A350104.P18267700845891226683

`∑[∑[∑{d}[1-n, gcd(n, #)]]]+n`
-/

namespace A350104.P18267700845891226683
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, Nat.gcd n d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A350104.P18267700845891226683

namespace A350104

/-- `∑[∑[∑{d}[1-n, gcd(n, #)]]]+n` -/
def P18267700845891226683.Spec : Prop :=
  ∀ n, (P18267700845891226683.a n : ℤ) = A350104 n

end A350104

/-! ## A350104.P17325937305620085206

`∑[∑[∏{p}[n-1, val(n-1, #)+1]]]`
-/

namespace A350104.P17325937305620085206
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (SequenceMachineLib.valuation ((n : ℤ) - 1).toNat p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P17325937305620085206

namespace A350104

/-- `∑[∑[∏{p}[n-1, val(n-1, #)+1]]]` -/
def P17325937305620085206.Spec : Prop :=
  ∀ n, (P17325937305620085206.a n : ℤ) = A350104 n

end A350104

/-! ## A350104.P2220896188370964850

`∑[A350102(n)]`
-/

namespace A350104.P2220896188370964850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P2220896188370964850

namespace A350104

/-- `∑[A350102(n)]` -/
def P2220896188370964850.Spec : Prop :=
  ∀ n, P2220896188370964850.a n = A350104 n

end A350104

/-! ## A350104.P8818527391017479851

`A389737(n)+n`
-/

namespace A350104.P8818527391017479851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389737 n + (n : ℤ)

end

end A350104.P8818527391017479851

namespace A350104

/-- `A389737(n)+n` -/
def P8818527391017479851.Spec : Prop :=
  ∀ n, P8818527391017479851.a n = A350104 n

end A350104

/-! ## A350104.P10142756422934220787

`∑[∑[A000005(n-a(2%n))]]` with `a(0)=1, a(1)=1`
-/

namespace A350104.P10142756422934220787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000005 ((n : ℤ) - f2 (2 % n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P10142756422934220787

namespace A350104

/-- `∑[∑[A000005(n-a(2%n))]]` -/
def P10142756422934220787.Spec : Prop :=
  ∀ n, P10142756422934220787.a n = A350104 n

end A350104

/-! ## A350104.P17711384422061884313

`∑[A000005(n-1)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A350104.P17711384422061884313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000005 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P17711384422061884313

namespace A350104

/-- `∑[A000005(n-1)+a(n-1)]` -/
def P17711384422061884313.Spec : Prop :=
  ∀ n, P17711384422061884313.a n = A350104 n

end A350104

/-! ## A350104.P566807521089329106

`∑[∑[A000005(A289207(n)+1)]]`
-/

namespace A350104.P566807521089329106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A289207 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P566807521089329106

namespace A350104

/-- `∑[∑[A000005(A289207(n)+1)]]` -/
def P566807521089329106.Spec : Prop :=
  ∀ n, P566807521089329106.a n = A350104 n

end A350104

/-! ## A350104.P9087888570344582365

`A051336(n+1)+n-A006218(n)`
-/

namespace A350104.P9087888570344582365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051336 (n + 1) + ((n : ℤ) - A006218 n)

end

end A350104.P9087888570344582365

namespace A350104

/-- `A051336(n+1)+n-A006218(n)` -/
def P9087888570344582365.Spec : Prop :=
  ∀ n, P9087888570344582365.a n = A350104 n

end A350104

/-! ## A350104.P9048881579321938218

`∑[∑[A055894(C(n, 2))]]`
-/

namespace A350104.P9048881579321938218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055894 (Nat.choose n 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P9048881579321938218

namespace A350104

/-- `∑[∑[A055894(C(n, 2))]]` -/
def P9048881579321938218.Spec : Prop :=
  ∀ n, P9048881579321938218.a n = A350104 n

end A350104

/-! ## A350104.P12693966014748406025

`∑[∑[A238353(C(n, 2))]]`
-/

namespace A350104.P12693966014748406025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (Nat.choose n 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350104.P12693966014748406025

namespace A350104

/-- `∑[∑[A238353(C(n, 2))]]` -/
def P12693966014748406025.Spec : Prop :=
  ∀ n, P12693966014748406025.a n = A350104 n

end A350104

/-!
# A350105: Number of subsets of the initial segment of the natural numbers strictly below n which are not self-measuring. Number of subsets S of [n] with S != distset(S).

The programs for A350105, the canonical program `A350105.P14782711713728949417` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350105 has offset 0).

The definition of A350105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350105.P14782711713728949417

`2^n-A350102(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A350105

/-- `2^n-A350102(n)` -/
def P14782711713728949417.Spec : Prop :=
  ∀ n, P14782711713728949417.a n = A350105 n

theorem P14782711713728949417.correct : P14782711713728949417.Spec := by
  intro n
  simp only [A350105]

end A350105

/-! ## A350105.P8290752491451011710

`2^n-∑[∏{e}[1-n, #+1]]`
-/

namespace A350105.P8290752491451011710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A350105.P8290752491451011710

namespace A350105

/-- `2^n-∑[∏{e}[1-n, #+1]]` -/
def P8290752491451011710.Spec : Prop :=
  ∀ n, P8290752491451011710.a n = A350105 n

end A350105

/-! ## A350105.P16213584248946074633

`2^n-∑[A000005(n-ceil(atan(n))+1)]`
-/

namespace A350105.P16213584248946074633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350105.P16213584248946074633

namespace A350105

/-- `2^n-∑[A000005(n-ceil(atan(n))+1)]` -/
def P16213584248946074633.Spec : Prop :=
  ∀ n, P16213584248946074633.a n = A350105 n

end A350105

/-! ## A350105.P7379961776750773162

`2^n-∑[A238130(C(n, 2))]`
-/

namespace A350105.P7379961776750773162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350105.P7379961776750773162

namespace A350105

/-- `2^n-∑[A238130(C(n, 2))]` -/
def P7379961776750773162.Spec : Prop :=
  ∀ n, P7379961776750773162.a n = A350105 n

end A350105

/-! ## A350105.P7060035350618161412

`2^n-∑[A238353(C(n, 2))]`
-/

namespace A350105.P7060035350618161412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350105.P7060035350618161412

namespace A350105

/-- `2^n-∑[A238353(C(n, 2))]` -/
def P7060035350618161412.Spec : Prop :=
  ∀ n, P7060035350618161412.a n = A350105 n

end A350105

/-!
# A350107: a(n) = Sum_{k=1..n} k * floor(n/k)^2.

The programs for A350107, the canonical program `A350107.P1008043692238485637` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350107 has offset 1).

The definition of A350107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350107.P1008043692238485637

`2*A143127(n+1)-A024916(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A350107

/-- `2*A143127(n+1)-A024916(n+1)` -/
def P1008043692238485637.Spec : Prop :=
  ∀ n, P1008043692238485637.a n = A350107 (n + 1)

theorem P1008043692238485637.correct : P1008043692238485637.Spec := by
  intro n
  simp only [A350107, Nat.add_sub_cancel]

end A350107

/-! ## A350107.P385493026368144242

`∑[∑{d}[n+1, 2*(n+1)-#]]`
-/

namespace A350107.P385493026368144242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((2 * (n + 1) : ℤ) - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350107.P385493026368144242

namespace A350107

/-- `∑[∑{d}[n+1, 2*(n+1)-#]]` -/
def P385493026368144242.Spec : Prop :=
  ∀ n, P385493026368144242.a n = A350107 (n + 1)

end A350107

/-! ## A350107.P16317681931727384285

`∑[∑{d}[n+1, 1-#+n]+∑{d}[n+1, lcm(#, n+1)]]`
-/

namespace A350107.P16317681931727384285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ)) + ((∑ d ∈ Nat.divisors (f3 n), Nat.lcm d (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350107.P16317681931727384285

namespace A350107

/-- `∑[∑{d}[n+1, 1-#+n]+∑{d}[n+1, lcm(#, n+1)]]` -/
def P16317681931727384285.Spec : Prop :=
  ∀ n, P16317681931727384285.a n = A350107 (n + 1)

end A350107

/-! ## A350107.P15537568792456496726

`∑[A094471(n+1)+A038040(n+1)]`
-/

namespace A350107.P15537568792456496726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A038040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350107.P15537568792456496726

namespace A350107

/-- `∑[A094471(n+1)+A038040(n+1)]` -/
def P15537568792456496726.Spec : Prop :=
  ∀ n, P15537568792456496726.a n = A350107 (n + 1)

end A350107

/-! ## A350107.P6125960452302955

`A143127(n+1)+∑[A094471(n+1)]`
-/

namespace A350107.P6125960452302955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143127 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350107.P6125960452302955

namespace A350107

/-- `A143127(n+1)+∑[A094471(n+1)]` -/
def P6125960452302955.Spec : Prop :=
  ∀ n, P6125960452302955.a n = A350107 (n + 1)

end A350107

/-! ## A350107.P9707254127835513782

`∑[A000203(n+1)+2*A094471(n+1)]`
-/

namespace A350107.P9707254127835513782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2 * A094471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350107.P9707254127835513782

namespace A350107

/-- `∑[A000203(n+1)+2*A094471(n+1)]` -/
def P9707254127835513782.Spec : Prop :=
  ∀ n, P9707254127835513782.a n = A350107 (n + 1)

end A350107

/-! ## A350107.P15833222528661156533

`∑[2*A038040(n+1)-A000203(n+1)]`
-/

namespace A350107.P15833222528661156533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038040 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350107.P15833222528661156533

namespace A350107

/-- `∑[2*A038040(n+1)-A000203(n+1)]` -/
def P15833222528661156533.Spec : Prop :=
  ∀ n, P15833222528661156533.a n = A350107 (n + 1)

end A350107

/-! ## A350107.P17725238195946760812

`∑[2*(n+1)*A000005(n+1)-A000203(n+1)]`
-/

namespace A350107.P17725238195946760812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000005 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350107.P17725238195946760812

namespace A350107

/-- `∑[2*(n+1)*A000005(n+1)-A000203(n+1)]` -/
def P17725238195946760812.Spec : Prop :=
  ∀ n, P17725238195946760812.a n = A350107 (n + 1)

end A350107

/-! ## A350107.P965822743004400483

`A350106(∑[n+2])`
-/

namespace A350107.P965822743004400483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350107.P965822743004400483

namespace A350107

/-- `A350106(∑[n+2])` -/
def P965822743004400483.Spec : Prop :=
  ∀ n, P965822743004400483.a n = A350107 (n + 1)

end A350107

/-!
# A350108: a(n) = Sum_{k=1..n} k * floor(n/k)^3.

The programs for A350108, the canonical program `A350108.P2277365094345231568` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350108 has offset 1).

The definition of A350108 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143127, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350108.P2277365094345231568

`A024916(n+1)+3*A143128(n+1)-3*A143127(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A350108

/-- `A024916(n+1)+3*A143128(n+1)-3*A143127(n+1)` -/
def P2277365094345231568.Spec : Prop :=
  ∀ n, P2277365094345231568.a n = A350108 (n + 1)

theorem P2277365094345231568.correct : P2277365094345231568.Spec := by
  intro n
  simp only [A350108, Nat.add_sub_cancel]

end A350108

/-! ## A350108.P3497218554955839432

`∑[∑{d}[n+1, A344599(#)]]`
-/

namespace A350108.P3497218554955839432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A344599 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350108.P3497218554955839432

namespace A350108

/-- `∑[∑{d}[n+1, A344599(#)]]` -/
def P3497218554955839432.Spec : Prop :=
  ∀ n, P3497218554955839432.a n = A350108 (n + 1)

end A350108

/-! ## A350108.P9874166284703289062

`A350106(∑[n+3]+1)`
-/

namespace A350108.P9874166284703289062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350106 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A350108.P9874166284703289062

namespace A350108

/-- `A350106(∑[n+3]+1)` -/
def P9874166284703289062.Spec : Prop :=
  ∀ n, P9874166284703289062.a n = A350108 (n + 1)

end A350108

/-! ## A350108.P13994453050525933907

`record[A350106(n+1)/A350106(n+4)]`
-/

namespace A350108.P13994453050525933907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350106 (n + 1) : ℚ) / (A350106 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350108.P13994453050525933907

namespace A350108

/-- `record[A350106(n+1)/A350106(n+4)]` -/
def P13994453050525933907.Spec : Prop :=
  ∀ n, P13994453050525933907.a n = (A350108 (n + 1) : ℚ)

end A350108

/-! ## A350108.P10108084017237939178

`record[A350106(n+1)%A080508(n+3)]`
-/

namespace A350108.P10108084017237939178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350106 (n + 1)) (A080508 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350108.P10108084017237939178

namespace A350108

/-- `record[A350106(n+1)%A080508(n+3)]` -/
def P10108084017237939178.Spec : Prop :=
  ∀ n, P10108084017237939178.a n = A350108 (n + 1)

end A350108

/-!
# A350109: a(n) = Sum_{k=1..n} k * floor(n/k)^n.

The programs for A350109, there is no canonical definition to state claims against.
-/

/-! ## A350109.P15281549013367003784

`A350106((n+1)²+n²)`
-/

namespace A350109.P15281549013367003784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350106 ((n + 1) ^ 2 + n ^ 2)

end

end A350109.P15281549013367003784

/-! ## A350109.P18109305812716963792

`record[gcd(A114327(n), A350106(n+1))]`
-/

namespace A350109.P18109305812716963792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A350106 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350109.P18109305812716963792

/-! ## A350109.P13378444430453614270

`A350106(A001844(n))+A025444(n)`
-/

namespace A350109.P13378444430453614270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350106 (A001844 n).toNat + A025444 n

end

end A350109.P13378444430453614270

/-! ## A350109.P15552997501937986494

`A350106(A001844(n))^A178334(n)`
-/

namespace A350109.P15552997501937986494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350106 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A350109.P15552997501937986494

/-! ## A350109.P14403001115425294979

`A350106(A001844(n))%A319194(n+3)`
-/

namespace A350109.P14403001115425294979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350106 (A001844 n).toNat) (A319194 (n + 3))

end

end A350109.P14403001115425294979

/-!
# A350110: Triangle read by rows, T(n,k) = T(n-1,k) + T(n-1,k-1) - T(n-2,k-1) + T(n-3,k-1) + T(n-3,k-2) + T(n-3,k-3) - T(n-4,k-3) - T(n-4,k-4) + delta(n,0)*delta(k,0) - delta(n,1)*delta(k,1), T(n<k,k) = T(n,k<0) = 0.

The programs for A350110, there is no canonical definition to state claims against.
-/

/-! ## A350110.P16036772301953401952

`A094215(A289814(n)+A266101(n+1))`
-/

namespace A350110.P16036772301953401952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (A289814 n + A266101 (n + 1)).toNat

end

end A350110.P16036772301953401952

/-! ## A350110.P12386577117009824963

`A169623(n)-A169672(A169666(n+3))`
-/

namespace A350110.P12386577117009824963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 n - A169672 (A169666 (n + 3)).toNat

end

end A350110.P12386577117009824963

/-! ## A350110.P13531170076421449758

`A178692(lcm(A060854(n+1), A067586(n)))`
-/

namespace A350110.P13531170076421449758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (Int.lcm (A060854 (n + 1)) (A067586 n))

end

end A350110.P13531170076421449758

/-! ## A350110.P11699568834696668265

`A178692(A060854(n+1)+A067586(n)-1)`
-/

namespace A350110.P11699568834696668265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A060854 (n + 1) + (A067586 n - 1)).toNat

end

end A350110.P11699568834696668265

/-! ## A350110.P9972002794074019148

`A170979(A242771(n+1))`
-/

namespace A350110.P9972002794074019148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170979 (A242771 (n + 1)).toNat

end

end A350110.P9972002794074019148

/-!
# A350111: Triangle read by rows: T(n,k) is the number of tilings of an (n+k)-board using k (1,3)-fences and n-k squares.

The programs for A350111, there is no canonical definition to state claims against.
-/

/-! ## A350111.P12116747869294243201

`A000120(A308855(n)^A002262(n))`
-/

namespace A350111.P12116747869294243201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A308855 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A350111.P12116747869294243201

/-! ## A350111.P3386966215952225825

`A126303(C(A217657(n), A002262(n)))`
-/

namespace A350111.P3386966215952225825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126303 (Nat.choose (A217657 n).toNat (A002262 n).toNat)

end

end A350111.P3386966215952225825

/-! ## A350111.P2144414713786085110

`A350112(lt[A175674(n), A111536(2*(n+2))])`
-/

namespace A350111.P2144414713786085110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111536 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350112 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350111.P2144414713786085110

/-!
# A350112: Triangle read by rows: T(n,k) is the number of tilings of an (n+k)-board using k (1,4)-fences and n-k squares.

The programs for A350112, there is no canonical definition to state claims against.
-/

/-! ## A350112.P2985649035289118273

`A000120(A326458(n)^A002262(n))`
-/

namespace A350112.P2985649035289118273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A326458 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A350112.P2985649035289118273

/-! ## A350112.P16314396245471187675

`A029376(A057944(n))^A135313(n)`
-/

namespace A350112.P16314396245471187675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029376 (A057944 n).toNat : ℚ) ^ (A135313 n : ℤ)

end

end A350112.P16314396245471187675

/-! ## A350112.P2042396038896548581

`A014372(A003056(n))^A269945(n)`
-/

namespace A350112.P2042396038896548581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014372 (A003056 n).toNat : ℚ) ^ (A269945 n : ℤ)

end

end A350112.P2042396038896548581

/-! ## A350112.P14972625597242221760

`A341978(A206913(n))^A256117(n)`
-/

namespace A350112.P14972625597242221760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341978 ((A206913 n).toNat + 42) : ℚ) ^ (A256117 n : ℤ)

end

end A350112.P14972625597242221760

/-!
# A350113: a(1)=1; for n>1 a(n) is the smallest highly composite number (A002182) that is a multiple of a(n-1) where the ratios are strictly increasing.

The programs for A350113, there is no canonical definition to state claims against.
-/

/-! ## A350113.P17053187720499752756

`∏[∪[A351398(n+1), A000930(n+2)]]`
-/

namespace A350113.P17053187720499752756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A350113.P17053187720499752756

/-! ## A350113.P4129714475389946489

`A061799(A164161(n))`
-/

namespace A350113.P4129714475389946489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A164161 n).toNat

end

end A350113.P4129714475389946489

/-! ## A350113.P16981014258064673837

`A061799(A361334(n))`
-/

namespace A350113.P16981014258064673837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A361334 n).toNat

end

end A350113.P16981014258064673837

/-! ## A350113.P9550542284352159637

`A061799(∑[A098011(n+1)])`
-/

namespace A350113.P9550542284352159637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350113.P9550542284352159637

/-! ## A350113.P6022011974491291709

`A061799(A045621(A028310(n))+n)`
-/

namespace A350113.P6022011974491291709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A045621 (A028310 n).toNat + (n : ℤ)).toNat

end

end A350113.P6022011974491291709

/-!
# A350114: Number of Deutsch paths with peaks at odd height.

The programs for A350114, there is no canonical definition to state claims against.
-/

/-! ## A350114.P8976137725941820515

`A203019(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A350114.P8976137725941820515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203019 (n + 1) - a (n - 1)

end

end A350114.P8976137725941820515

/-! ## A350114.P8509034227207463113

`A004148(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A350114.P8509034227207463113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004148 (n - 1) - a (n - 1)

end

end A350114.P8509034227207463113

/-! ## A350114.P960398032891055170

`Δ[a(n-2)-A292461(n)]` with `a(0)=0, a(1)=1`
-/

namespace A350114.P960398032891055170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - A292461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350114.P960398032891055170

/-! ## A350114.P6905969300409567523

`A292460(abs(2-n))-a(n-1)` with `a(0)=1`
-/

namespace A350114.P6905969300409567523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292460 |2 - (n : ℤ)|.toNat - a (n - 1)

end

end A350114.P6905969300409567523

/-! ## A350114.P818399584356771490

`A122921(A009207(n)-gcd(n, ∑[n]))`
-/

namespace A350114.P818399584356771490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A009207 n - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A350114.P818399584356771490

/-!
# A350115: Numbers p^2*q, p<q primes such that p^2 divides q-1.

The programs for A350115, there is no canonical definition to state claims against.
-/

/-! ## A350115.P15551179686618873737

`filter[A054397(n+1), A355443(#)]`
-/

namespace A350115.P15551179686618873737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355443 (f1 j).toNat = 1) n)

end

end A350115.P15551179686618873737

/-! ## A350115.P3033844228922694220

`filter[A072989(n+1), A353472(#)]`
-/

namespace A350115.P3033844228922694220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353472 (f1 j).toNat = 1) n)

end

end A350115.P3033844228922694220

/-! ## A350115.P7972656899080322250

`filter[A072989(n+1), A353474(#)]`
-/

namespace A350115.P7972656899080322250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353474 (f1 j).toNat = 1) n)

end

end A350115.P7972656899080322250

/-! ## A350115.P2733816776076542397

`filter[A072989(n+1), A353798(#)]`
-/

namespace A350115.P2733816776076542397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A350115.P2733816776076542397

/-! ## A350115.P5739562056644812480

`filter[A072989(n+1), A355443(#)]`
-/

namespace A350115.P5739562056644812480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355443 (f1 j).toNat = 1) n)

end

end A350115.P5739562056644812480

/-! ## A350115.P15283920188880004812

`filter[A054397(n+3), A353474(#)]`
-/

namespace A350115.P15283920188880004812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353474 (f1 j).toNat = 1) n)

end

end A350115.P15283920188880004812

/-! ## A350115.P17902761117963274335

`∩[A030515(n+1), A072989(n+1)]`
-/

namespace A350115.P17902761117963274335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350115.P17902761117963274335

/-! ## A350115.P9035947133081842507

`∩[A054753(n+1), A072989(n+1)]`
-/

namespace A350115.P9035947133081842507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350115.P9035947133081842507

/-! ## A350115.P3495257351471385149

`∩[A072989(n+1), A080258(n+1)]`
-/

namespace A350115.P3495257351471385149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350115.P3495257351471385149

/-! ## A350115.P6267693127115766004

`∩[A072989(n+1), A096156(n+1)]`
-/

namespace A350115.P6267693127115766004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350115.P6267693127115766004

/-!
# A350116: Number of ways to partition the set of vertices of a convex {n+8}-gon into 3 non-intersecting polygons.

The programs for A350116, the canonical program `A350116.P11939903778134046824` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350116 has offset 0).

The definition of A350116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350116.P11939903778134046824

`n*(n+1)*(n+7)*(n+8)/12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350116

/-- `n*(n+1)*(n+7)*(n+8)/12` -/
def P11939903778134046824.Spec : Prop :=
  ∀ n, P11939903778134046824.a n = (A350116 n : ℚ)

end A350116

/-! ## A350116.P3648545582776677702

`∑[∑[∑[a(n-1)+2]]-5]` with `a(0)=5`
-/

namespace A350116.P3648545582776677702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350116.P3648545582776677702

namespace A350116

/-- `∑[∑[∑[a(n-1)+2]]-5]` -/
def P3648545582776677702.Spec : Prop :=
  ∀ n, P3648545582776677702.a n = A350116 n

end A350116

/-! ## A350116.P11274692969483614900

`A090453(n)-2*(n+1)`
-/

namespace A350116.P11274692969483614900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090453 n - (2 * (n + 1) : ℤ)

end

end A350116.P11274692969483614900

namespace A350116

/-- `A090453(n)-2*(n+1)` -/
def P11274692969483614900.Spec : Prop :=
  ∀ n, P11274692969483614900.a n = A350116 n

end A350116

/-! ## A350116.P4968193411292760279

`(n+1)/2*A111396(n)`
-/

namespace A350116.P4968193411292760279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A111396 n : ℚ)

end

end A350116.P4968193411292760279

namespace A350116

/-- `(n+1)/2*A111396(n)` -/
def P4968193411292760279.Spec : Prop :=
  ∀ n, P4968193411292760279.a n = (A350116 n : ℚ)

end A350116

/-! ## A350116.P10436854626048079899

`A162261(n+1)+∑[∑[n²]]`
-/

namespace A350116.P10436854626048079899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162261 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A350116.P10436854626048079899

namespace A350116

/-- `A162261(n+1)+∑[∑[n²]]` -/
def P10436854626048079899.Spec : Prop :=
  ∀ n, P10436854626048079899.a n = A350116 n

end A350116

/-! ## A350116.P1783346763173944807

`A188480(n)+A046691(n)`
-/

namespace A350116.P1783346763173944807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188480 n + A046691 n

end

end A350116.P1783346763173944807

namespace A350116

/-- `A188480(n)+A046691(n)` -/
def P1783346763173944807.Spec : Prop :=
  ∀ n, P1783346763173944807.a n = A350116 n

end A350116

/-! ## A350116.P10132589064954559850

`A055998(n)+A090453(n)-A155212(n)`
-/

namespace A350116.P10132589064954559850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + (A090453 n - A155212 n)

end

end A350116.P10132589064954559850

namespace A350116

/-- `A055998(n)+A090453(n)-A155212(n)` -/
def P10132589064954559850.Spec : Prop :=
  ∀ n, P10132589064954559850.a n = A350116 n

end A350116

/-! ## A350116.P6654469365778496653

`A000217(n)+A090453(n)-A000096(n+1)`
-/

namespace A350116.P6654469365778496653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A090453 n - A000096 (n + 1))

end

end A350116.P6654469365778496653

namespace A350116

/-- `A000217(n)+A090453(n)-A000096(n+1)` -/
def P6654469365778496653.Spec : Prop :=
  ∀ n, P6654469365778496653.a n = A350116 n

end A350116

/-! ## A350116.P17785011006752385141

`A167544(n+4)+A090453(n)-A000217(n)`
-/

namespace A350116.P17785011006752385141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167544 (n + 4) + (A090453 n - A000217 n)

end

end A350116.P17785011006752385141

namespace A350116

/-- `A167544(n+4)+A090453(n)-A000217(n)` -/
def P17785011006752385141.Spec : Prop :=
  ∀ n, P17785011006752385141.a n = A350116 n

end A350116

/-! ## A350116.P4844466150172825567

`A000217(n+1)+A090453(n)-A055998(n+1)`
-/

namespace A350116.P4844466150172825567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A090453 n - A055998 (n + 1))

end

end A350116.P4844466150172825567

namespace A350116

/-- `A000217(n+1)+A090453(n)-A055998(n+1)` -/
def P4844466150172825567.Spec : Prop :=
  ∀ n, P4844466150172825567.a n = A350116 n

end A350116

/-! ## A350116.P17306226627092624937

`A002415(n+1)/A134288(n)*A134288(n+1)`
-/

namespace A350116.P17306226627092624937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002415 (n + 1) : ℚ) / (A134288 n : ℚ) * (A134288 (n + 1) : ℚ)

end

end A350116.P17306226627092624937

namespace A350116

/-- `A002415(n+1)/A134288(n)*A134288(n+1)` -/
def P17306226627092624937.Spec : Prop :=
  ∀ n, P17306226627092624937.a n = (A350116 n : ℚ)

end A350116

/-!
# A350117: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^n/(1 - x*A(x)^(n+4)) = Sum_{n>=0} x^n*A(x)^(2*n)/(1 - x*A(x)^(3*n+3)).

The programs for A350117, there is no canonical definition to state claims against.
-/

/-! ## A350117.P8461172761772116425

`A377802(∏[2*n+1])`
-/

namespace A350117.P8461172761772116425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377802 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A350117.P8461172761772116425

/-!
# A350118: Primes p for which the smallest m such that p*2^m + 1 is prime increases. Sequence terminates with the smallest prime Sierpiński number.

The programs for A350118, there is no canonical definition to state claims against.
-/

/-! ## A350118.P9558690719387450520

`A007918(∏{d}[A064699(n+1), #])`
-/

namespace A350118.P9558690719387450520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A350118.P9558690719387450520

/-! ## A350118.P14359009127742524477

`A039649(∏{d}[A064699(n+1), #])`
-/

namespace A350118.P14359009127742524477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A350118.P14359009127742524477

/-! ## A350118.P15968208845039478421

`A064699(gcd(11, C(9, n))+n)+A014376(n)`
-/

namespace A350118.P15968208845039478421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064699 (Nat.gcd 11 (Nat.choose 9 n) + n) + A014376 n

end

end A350118.P15968208845039478421

/-!
# A350119: Record values in A057192, until A350118(n) reaches the smallest prime Sierpiński number and then sequence terminates with a(n) = -1.

The programs for A350119, there is no canonical definition to state claims against.
-/

/-! ## A350119.P1929934321349549270

`A057192(A000720(A350118(n+1)))`
-/

namespace A350119.P1929934321349549270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057192 (A000720 (A350118 (n + 1)).toNat).toNat

end

end A350119.P1929934321349549270

/-! ## A350119.P13289968310580762331

`record[A057192(n+1)]`
-/

namespace A350119.P13289968310580762331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350119.P13289968310580762331

/-! ## A350119.P12604263146957815372

`A040076(A350118(n+1))`
-/

namespace A350119.P12604263146957815372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A350118 (n + 1)).toNat

end

end A350119.P12604263146957815372

/-! ## A350119.P18039186522729402244

`record[A040076(record[A006530(n+1)])]`
-/

namespace A350119.P18039186522729402244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350119.P18039186522729402244

/-! ## A350119.P7897232575785658573

`record[A040076(record[A014963(n+1)])]`
-/

namespace A350119.P7897232575785658573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350119.P7897232575785658573

/-!
# A350120: a(n) is the least integer k such that A350090(k) = 2*n-1 or -1 if no such k exists.

The programs for A350120, there is no canonical definition to state claims against.
-/

/-! ## A350120.P4385358826438908716

`A350193(A020116(n)+A000267(n))`
-/

namespace A350120.P4385358826438908716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350193 (A020116 n + A000267 n).toNat

end

end A350120.P4385358826438908716

/-!
# A350122: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} floor(n/(2*j-1))^k.

The programs for A350122, there is no canonical definition to state claims against.
-/

/-! ## A350122.P9756012093060566644

`(A344726(n+1)+A344725(n+1))/2`
-/

namespace A350122.P9756012093060566644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344726 (n + 1) + A344725 (n + 1) : ℚ) / 2

end

end A350122.P9756012093060566644

/-! ## A350122.P8909575179528727409

`A344726(n+1)+A014682(A344725(n+1)-A344726(n+1))`
-/

namespace A350122.P8909575179528727409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (n + 1) + A014682 (A344725 (n + 1) - A344726 (n + 1)).toNat

end

end A350122.P8909575179528727409

/-! ## A350122.P15927585998117113473

`A344726(n+1)+A001281(A344725(n+1)-A344726(n+1))`
-/

namespace A350122.P15927585998117113473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (n + 1) + A001281 (A344725 (n + 1) - A344726 (n + 1)).toNat

end

end A350122.P15927585998117113473

/-! ## A350122.P12027201174483023745

`A014682(A344726(n+1)+A344725(n+1))`
-/

namespace A350122.P12027201174483023745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A344726 (n + 1) + A344725 (n + 1)).toNat

end

end A350122.P12027201174483023745

/-! ## A350122.P11629476836453443975

`A302043(A344726(n+1)+A344725(n+1))`
-/

namespace A350122.P11629476836453443975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A344726 (n + 1) + A344725 (n + 1)).toNat

end

end A350122.P11629476836453443975

/-! ## A350122.P18110459432807257236

`A318516(A344726(n+1)+A344725(n+1))`
-/

namespace A350122.P18110459432807257236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A344726 (n + 1) + A344725 (n + 1)).toNat

end

end A350122.P18110459432807257236

/-!
# A350123: a(n) = Sum_{k=1..n} k^2 * floor(n/k)^2.

The programs for A350123, the canonical program `A350123.P1025017910805116333` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350123 has offset 1).

The definition of A350123 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350123.P1025017910805116333

`2*A143128(n+1)-A064602(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350123

/-- `2*A143128(n+1)-A064602(n+1)` -/
def P1025017910805116333.Spec : Prop :=
  ∀ n, P1025017910805116333.a n = A350123 (n + 1)

theorem P1025017910805116333.correct : P1025017910805116333.Spec := by
  intro n
  simp only [A350123, Nat.add_sub_cancel]

end A350123

/-! ## A350123.P17228771841165572981

`∑[2*(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #²]]`
-/

namespace A350123.P17228771841165572981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * ((n + 1) * (∑ d ∈ Nat.divisors (f2 n), d)) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P17228771841165572981

namespace A350123

/-- `∑[2*(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #²]]` -/
def P17228771841165572981.Spec : Prop :=
  ∀ n, P17228771841165572981.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P4847056549512142510

`∑[A303384(n+1)+A064987(n+1)]`
-/

namespace A350123.P4847056549512142510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) + A064987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P4847056549512142510

namespace A350123

/-- `∑[A303384(n+1)+A064987(n+1)]` -/
def P4847056549512142510.Spec : Prop :=
  ∀ n, P4847056549512142510.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P10076773641847099296

`A143128(n+1)+∑[A303384(n+1)]`
-/

namespace A350123.P10076773641847099296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P10076773641847099296

namespace A350123

/-- `A143128(n+1)+∑[A303384(n+1)]` -/
def P10076773641847099296.Spec : Prop :=
  ∀ n, P10076773641847099296.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P11344765136432820713

`∑[A001157(n+1)+2*A303384(n+1)]`
-/

namespace A350123.P11344765136432820713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + 2 * A303384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P11344765136432820713

namespace A350123

/-- `∑[A001157(n+1)+2*A303384(n+1)]` -/
def P11344765136432820713.Spec : Prop :=
  ∀ n, P11344765136432820713.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P18034951377040838536

`A064602(n+1)+∑[2*A303384(n+1)]`
-/

namespace A350123.P18034951377040838536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P18034951377040838536

namespace A350123

/-- `A064602(n+1)+∑[2*A303384(n+1)]` -/
def P18034951377040838536.Spec : Prop :=
  ∀ n, P18034951377040838536.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P17730156928941400659

`∑[2*A064987(n+1)-A001157(n+1)]`
-/

namespace A350123.P17730156928941400659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064987 (n + 1) - A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P17730156928941400659

namespace A350123

/-- `∑[2*A064987(n+1)-A001157(n+1)]` -/
def P17730156928941400659.Spec : Prop :=
  ∀ n, P17730156928941400659.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P14079580948062695911

`∑[A005843(A303384(n+1))+A001157(n+1)]`
-/

namespace A350123.P14079580948062695911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A303384 (n + 1)).toNat + A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P14079580948062695911

namespace A350123

/-- `∑[A005843(A303384(n+1))+A001157(n+1)]` -/
def P14079580948062695911.Spec : Prop :=
  ∀ n, P14079580948062695911.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P16470164367763388875

`A064602(n+1)+∑[A005843(A303384(n+1))]`
-/

namespace A350123.P16470164367763388875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A303384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P16470164367763388875

namespace A350123

/-- `A064602(n+1)+∑[A005843(A303384(n+1))]` -/
def P16470164367763388875.Spec : Prop :=
  ∀ n, P16470164367763388875.a n = A350123 (n + 1)

end A350123

/-! ## A350123.P8993076832407665222

`∑[A337329(n+1)+A245773(n+1)]`
-/

namespace A350123.P8993076832407665222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337329 (n + 1) + A245773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350123.P8993076832407665222

namespace A350123

/-- `∑[A337329(n+1)+A245773(n+1)]` -/
def P8993076832407665222.Spec : Prop :=
  ∀ n, P8993076832407665222.a n = A350123 (n + 1)

end A350123

/-!
# A350124: a(n) = Sum_{k=1..n} k^2 * floor(n/k)^3.

The programs for A350124, the canonical program `A350124.P3463729421972566049` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350124 has offset 1).

The definition of A350124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, A319085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350124.P3463729421972566049

`A064602(n+1)-3*A143128(n+1)+3*A319085(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350124

/-- `A064602(n+1)-3*A143128(n+1)+3*A319085(n+1)` -/
def P3463729421972566049.Spec : Prop :=
  ∀ n, P3463729421972566049.a n = A350124 (n + 1)

theorem P3463729421972566049.correct : P3463729421972566049.Spec := by
  intro n
  simp only [A350124, Nat.add_sub_cancel]

end A350124

/-!
# A350125: a(n) = Sum_{k=1..n} k^2 * floor(n/k)^n.

The programs for A350125, there is no canonical definition to state claims against.
-/

/-! ## A350125.P8314372675341139856

`A356243(n+1)-A356244(n+1)`
-/

namespace A350125.P8314372675341139856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356243 (n + 1) - A356244 (n + 1)

end

end A350125.P8314372675341139856

/-!
# A350126: a(n) = (a(a(n-1)) mod 2) + a(n-2) with a(0) = 0 and a(1) = 1.

The programs for A350126, the canonical program `A350126.P3818029521468584616` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350126 has offset 0).

The definition of A350126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1))%2+a(n-2)` (program `A350126.P3818029521468584616`, by `A350126.P3818029521468584616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350126.P3818029521468584616

`a(a(n-1))%2+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350126

/-- `a(a(n-1))%2+a(n-2)` -/
def P3818029521468584616.Spec : Prop :=
  ∀ n, (P3818029521468584616.a n : ℤ) = A350126 n

theorem P3818029521468584616.correct : P3818029521468584616.Spec := by
  intro n
  simp only [A350126]

end A350126

/-! ## A350126.P10493776890884091054

`a(n-2)+and(1, a(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A350126.P10493776890884091054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.land 1 (a (a (n - 1)))

end

end A350126.P10493776890884091054

namespace A350126

/-- `a(n-2)+and(1, a(a(n-1)))` -/
def P10493776890884091054.Spec : Prop :=
  ∀ n, (P10493776890884091054.a n : ℤ) = A350126 n

end A350126

/-! ## A350126.P17991231784112568377

`a(n-2)+2-gcd(2, a(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A350126.P17991231784112568377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (2 - (Int.gcd 2 (a (a (n - 1)).toNat) : ℤ))

end

end A350126.P17991231784112568377

namespace A350126

/-- `a(n-2)+2-gcd(2, a(a(n-1)))` -/
def P17991231784112568377.Spec : Prop :=
  ∀ n, P17991231784112568377.a n = A350126 n

end A350126

/-! ## A350126.P18103091184409662405

`A000035(a(a(n-1)))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A350126.P18103091184409662405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000035 (a (a (n - 1)).toNat).toNat + a (n - 2)

end

end A350126.P18103091184409662405

namespace A350126

/-- `A000035(a(a(n-1)))+a(n-2)` -/
def P18103091184409662405.Spec : Prop :=
  ∀ n, P18103091184409662405.a n = A350126 n

end A350126

/-! ## A350126.P13205188031994699735

`A318464(A064831(n+1))`
-/

namespace A350126.P13205188031994699735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318464 (A064831 (n + 1)).toNat

end

end A350126.P13205188031994699735

namespace A350126

/-- `A318464(A064831(n+1))` -/
def P13205188031994699735.Spec : Prop :=
  ∀ n, P13205188031994699735.a n = A350126 n

end A350126

/-!
# A350127: a(n) = a(a(n-1)) mod 3 + a(n-2) with a(0) = 0 and a(1) = 1.

The programs for A350127, the canonical program `A350127.P14468164002736807634` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350127 has offset 0).

The definition of A350127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1))%3+a(n-2)` (program `A350127.P14468164002736807634`, by `A350127.P14468164002736807634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350127.P14468164002736807634

`a(a(n-1))%3+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350127

/-- `a(a(n-1))%3+a(n-2)` -/
def P14468164002736807634.Spec : Prop :=
  ∀ n, (P14468164002736807634.a n : ℤ) = A350127 n

theorem P14468164002736807634.correct : P14468164002736807634.Spec := by
  intro n
  simp only [A350127]

end A350127

/-! ## A350127.P3305963055753142928

`A010872(a(a(n-1)))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A350127.P3305963055753142928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010872 (a (a (n - 1)).toNat).toNat + a (n - 2)

end

end A350127.P3305963055753142928

namespace A350127

/-- `A010872(a(a(n-1)))+a(n-2)` -/
def P3305963055753142928.Spec : Prop :=
  ∀ n, P3305963055753142928.a n = A350127 n

end A350127

/-! ## A350127.P15632117088472552521

`A275235(A244896(n+1))`
-/

namespace A350127.P15632117088472552521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275235 (A244896 (n + 1)).toNat

end

end A350127.P15632117088472552521

namespace A350127

/-- `A275235(A244896(n+1))` -/
def P15632117088472552521.Spec : Prop :=
  ∀ n, P15632117088472552521.a n = A350127 n

end A350127

/-! ## A350127.P15710652540166740926

`A339896(∑[A006206(n+2)]²)`
-/

namespace A350127.P15710652540166740926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A350127.P15710652540166740926

namespace A350127

/-- `A339896(∑[A006206(n+2)]²)` -/
def P15710652540166740926.Spec : Prop :=
  ∀ n, P15710652540166740926.a n = A350127 n

end A350127

/-!
# A350128: a(n) = Sum_{k=1..n} k^n * floor(n/k)^2.

The programs for A350128, there is no canonical definition to state claims against.
-/

/-! ## A350128.P7625593607027768714

`2*A356129(n+1)-A319194(n+1)`
-/

namespace A350128.P7625593607027768714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356129 (n + 1) - A319194 (n + 1)

end

end A350128.P7625593607027768714

/-!
# A350132: a(n) is the smallest number m such that tau(m-1) = tau(m+1) = tau(m)^n, where tau(m) is the number of divisors of m (A000005).

The programs for A350132, there is no canonical definition to state claims against.
-/

/-! ## A350132.P17068411761583158709

`A350935(2^n)`
-/

namespace A350132.P17068411761583158709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350935 (2 ^ n)

end

end A350132.P17068411761583158709

/-!
# A350133: Last denominator in each run of odd terms in the greedy rearrangement of the alternating harmonic series that converges to 2.

The programs for A350133, there is no canonical definition to state claims against.
-/

/-! ## A350133.P16594426806698501049

`A154267(n)+A091069(A055192(n+3))`
-/

namespace A350133.P16594426806698501049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A091069 (A055192 (n + 3)).toNat

end

end A350133.P16594426806698501049

/-! ## A350133.P3922978651707065394

`A154269(A154279(3*n+4))+A154267(n)`
-/

namespace A350133.P3922978651707065394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A154279 (3 * n + 4)).toNat + A154267 n

end

end A350133.P3922978651707065394

/-! ## A350133.P6263917898877855401

`or(A017221(3*n+1), A206437(A003945(n+1)))`
-/

namespace A350133.P6263917898877855401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017221 (3 * n + 1)) (A206437 (A003945 (n + 1)).toNat)

end

end A350133.P6263917898877855401

/-!
# A350134: Number of endofunctions on [n] with at least one isolated fixed point.

The programs for A350134, there is no canonical definition to state claims against.
-/

/-! ## A350134.P11582732416416496058

`A000312(n)-abs(A069856(n))`
-/

namespace A350134.P11582732416416496058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - |A069856 n|

end

end A350134.P11582732416416496058

/-! ## A350134.P2317360473555034686

`A347999(∑[n]+1)`
-/

namespace A350134.P2317360473555034686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A350134.P2317360473555034686

/-! ## A350134.P8312345220679616671

`or(char[1], A347999(A000124(n)))`
-/

namespace A350134.P8312345220679616671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A347999 (A000124 n).toNat)

end

end A350134.P8312345220679616671

/-! ## A350134.P490129302658379968

`A057427(n)*A347999(A000124(n))`
-/

namespace A350134.P490129302658379968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A347999 (A000124 n).toNat

end

end A350134.P490129302658379968

/-! ## A350134.P765984465211382683

`A347999(A000124(n))+char[A016962(n)]`
-/

namespace A350134.P765984465211382683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016962 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A350134.P765984465211382683

/-! ## A350134.P2242313507713282055

`A347999(A000124(n))+A000007(n+1)`
-/

namespace A350134.P2242313507713282055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (A000124 n).toNat + A000007 (n + 1)

end

end A350134.P2242313507713282055

/-! ## A350134.P784516623466793678

`A347999(A000124(n))+A000035(2*n)`
-/

namespace A350134.P784516623466793678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (A000124 n).toNat + A000035 (2 * n)

end

end A350134.P784516623466793678

/-! ## A350134.P18087243550175788342

`A160555(n)%2*A347999(A000124(n))`
-/

namespace A350134.P18087243550175788342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160555 n) 2 * A347999 (A000124 n).toNat

end

end A350134.P18087243550175788342

/-! ## A350134.P6296905604744403756

`A347999(A000124(n))+A047235(n+1)%2`
-/

namespace A350134.P6296905604744403756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (A000124 n).toNat + Int.tmod (A047235 (n + 1)) 2

end

end A350134.P6296905604744403756

/-! ## A350134.P15897365737986715937

`A001222(A107166(n+1))*A347999(A000124(n))`
-/

namespace A350134.P15897365737986715937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107166 (n + 1)).toNat * A347999 (A000124 n).toNat

end

end A350134.P15897365737986715937

/-!
# A350135: Number of endofunctions on [2n] whose smallest connected component has size n.

The programs for A350135, there is no canonical definition to state claims against.
-/

/-! ## A350135.P11658139427037875184

`A347999(∑[4*n])`
-/

namespace A350135.P11658139427037875184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350135.P11658139427037875184

/-! ## A350135.P17280132933702912840

`A350078(n*(n+2))`
-/

namespace A350135.P17280132933702912840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350078 (n * (n + 2))

end

end A350135.P17280132933702912840

/-! ## A350135.P983921959686022767

`A350079(2*n²+1)`
-/

namespace A350135.P983921959686022767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350079 (2 * n ^ 2 + 1)

end

end A350135.P983921959686022767

/-! ## A350135.P7466494555636560977

`and(-1, A350078(A005563(n)))`
-/

namespace A350135.P7466494555636560977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A350078 (A005563 n).toNat)

end

end A350135.P7466494555636560977

/-! ## A350135.P11983483352399700856

`A347999(A046092(n))+A083927(2*n+3)`
-/

namespace A350135.P11983483352399700856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347999 (A046092 n).toNat + A083927 (2 * n + 3)

end

end A350135.P11983483352399700856

/-!
# A350137: Nonsquarefree numbers whose prime signature, except possibly the first and last parts, is all even.

The programs for A350137, there is no canonical definition to state claims against.
-/

/-! ## A350137.P848954890508399679

`eq[A001498(A286852(n)), A249442(n)]`
-/

namespace A350137.P848954890508399679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350137.P848954890508399679

/-! ## A350137.P894729733705605889

`eq[A102669(A286852(n)), A339579(n+1)]`
-/

namespace A350137.P894729733705605889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350137.P894729733705605889

/-! ## A350137.P8664862691221749078

`lt[A294018(n+2), A008833(n+2)]+2`
-/

namespace A350137.P8664862691221749078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294018 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A350137.P8664862691221749078

/-! ## A350137.P2419275792275038459

`lt[A225245(n), A349542(A275725(n))]`
-/

namespace A350137.P2419275792275038459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349542 (A275725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350137.P2419275792275038459

/-! ## A350137.P17021356672909366712

`lt[A345926(n+1), A001222(n+1)]+1`
-/

namespace A350137.P17021356672909366712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A350137.P17021356672909366712

/-!
# A350138: Number of non-weakly alternating patterns of length n.

The programs for A350138, there is no canonical definition to state claims against.
-/

/-! ## A350138.P5776899274527403599

`A000670(n)-A349058(n)`
-/

namespace A350138.P5776899274527403599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A349058 n

end

end A350138.P5776899274527403599

/-! ## A350138.P5802319036052891198

`A073146(∑[n])-A349058(n)`
-/

namespace A350138.P5802319036052891198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f1 j) - A349058 n

end

end A350138.P5802319036052891198

/-! ## A350138.P9770368495567669327

`A154921(∑[n])-A349058(n)`
-/

namespace A350138.P9770368495567669327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A349058 n

end

end A350138.P9770368495567669327

/-! ## A350138.P18088414932577202552

`A350252(n)+1-A345194(n)`
-/

namespace A350138.P18088414932577202552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350252 n + (1 - A345194 n)

end

end A350138.P18088414932577202552

/-! ## A350138.P3487313812234730322

`ceil(A007047(n)/4)-A349058(n)`
-/

namespace A350138.P3487313812234730322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 4⌉ - A349058 n

end

end A350138.P3487313812234730322

/-! ## A350138.P7897543177729409819

`A000670(n)+1-A345194(n)-A345194(n)`
-/

namespace A350138.P7897543177729409819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n + 1 - A345194 n - A345194 n

end

end A350138.P7897543177729409819

/-!
# A350139: Number of non-weakly alternating ordered factorizations of n.

The programs for A350139, there is no canonical definition to state claims against.
-/

/-! ## A350139.P15454810222931523231

`A002033(n)-A349059(A046523(n+1))`
-/

namespace A350139.P15454810222931523231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A349059 (A046523 (n + 1)).toNat

end

end A350139.P15454810222931523231

/-! ## A350139.P12994093626035353859

`A002033(n)-A349059(A071364(n+1))`
-/

namespace A350139.P12994093626035353859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A349059 (A071364 (n + 1)).toNat

end

end A350139.P12994093626035353859

/-! ## A350139.P12480253888035806649

`A002033(A028310(n))%A349059(A071364(n+1))`
-/

namespace A350139.P12480253888035806649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 (A028310 n).toNat) (A349059 (A071364 (n + 1)).toNat)

end

end A350139.P12480253888035806649

/-! ## A350139.P14073942757575573983

`A002033(A000007(n)+n)%A349059(A046523(n+1))`
-/

namespace A350139.P14073942757575573983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 (A000007 n + (n : ℤ)).toNat) (A349059 (A046523 (n + 1)).toNat)

end

end A350139.P14073942757575573983

/-! ## A350139.P4050033503270270599

`A002033(n)%A349059(A133265(n))`
-/

namespace A350139.P4050033503270270599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 n) (A349059 (A133265 n).toNat)

end

end A350139.P4050033503270270599

/-! ## A350139.P13959821503246175160

`A002033(n)-A349059(n+1)`
-/

namespace A350139.P13959821503246175160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A349059 (n + 1)

end

end A350139.P13959821503246175160

/-! ## A350139.P6687395991660371063

`Δ[A173382(n)]-A349059(n+1)`
-/

namespace A350139.P6687395991660371063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349059 (n + 1)

end

end A350139.P6687395991660371063

/-! ## A350139.P14055513109748229678

`A074206(n+1)-A349059(n+1)`
-/

namespace A350139.P14055513109748229678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A349059 (n + 1)

end

end A350139.P14055513109748229678

/-! ## A350139.P11181768597099902101

`A348610(n+1)+A348613(n+1)-A349059(n+1)`
-/

namespace A350139.P11181768597099902101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (n + 1) + (A348613 (n + 1) - A349059 (n + 1))

end

end A350139.P11181768597099902101

/-! ## A350139.P17786851978977842263

`A348611(n+1)+A348616(n+1)-A349059(n+1)`
-/

namespace A350139.P17786851978977842263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348611 (n + 1) + (A348616 (n + 1) - A349059 (n + 1))

end

end A350139.P17786851978977842263

/-!
# A350140: Nonsquarefree numbers whose prime signature has at least one odd part other the first or last.

The programs for A350140, there is no canonical definition to state claims against.
-/

/-! ## A350140.P15247198244712323925

`filter[A349794(n+1), A087049(#)]`
-/

namespace A350140.P15247198244712323925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A350140.P15247198244712323925

/-! ## A350140.P2932597992367187640

`filter[A349794(n+1), A107078(#)]`
-/

namespace A350140.P2932597992367187640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A350140.P2932597992367187640

/-! ## A350140.P1392087695442280113

`filter[A349794(n+1), A355447(#)]`
-/

namespace A350140.P1392087695442280113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A350140.P1392087695442280113

/-! ## A350140.P16450537084176365298

`filter[A349794(n+1), A389905(#)]`
-/

namespace A350140.P16450537084176365298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A350140.P16450537084176365298

/-! ## A350140.P16541066517198431676

`∩[A013929(n+1), A349794(n+1)]`
-/

namespace A350140.P16541066517198431676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350140.P16541066517198431676

/-! ## A350140.P17506869656255101596

`∩[A049199(n+1), A349794(n+1)]`
-/

namespace A350140.P17506869656255101596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350140.P17506869656255101596

/-! ## A350140.P17518611738986903348

`∩[A051144(n+1), A349794(n+1)]`
-/

namespace A350140.P17518611738986903348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350140.P17518611738986903348

/-! ## A350140.P15149030120417672732

`∩[A059404(n+1), A349794(n+1)]`
-/

namespace A350140.P15149030120417672732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350140.P15149030120417672732

/-! ## A350140.P8782721337188081960

`∩[A062171(n+1), A349794(n+1)]`
-/

namespace A350140.P8782721337188081960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350140.P8782721337188081960

/-! ## A350140.P9088841985229891240

`∩[A065303(n+1), A349794(n+1)]`
-/

namespace A350140.P9088841985229891240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350140.P9088841985229891240

/-!
# A350142: Numbers m of the form 2^k + 1 such that tau(m-2) = tau(m-1) - 1.

The programs for A350142, there is no canonical definition to state claims against.
-/

/-! ## A350142.P3371859302216355779

`abs(2^∪[2^n, 6^n]-1)+2`
-/

namespace A350142.P3371859302216355779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - 1| + 2

end

end A350142.P3371859302216355779

/-! ## A350142.P15873366308416587788

`abs(lcm(2^ceil(2^(n-1)), 4^n)-1)+2`
-/

namespace A350142.P15873366308416587788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℤ))) (4 ^ n : ℤ) : ℤ) - 1| + 2

end

end A350142.P15873366308416587788

/-! ## A350142.P4843345272022127151

`A111303(n+1)+2`
-/

namespace A350142.P4843345272022127151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111303 (n + 1) + 2

end

end A350142.P4843345272022127151

/-!
# A350143: a(n) = Sum_{k=1..n} floor(n/(2*k-1))^2.

The programs for A350143, the canonical program `A350143.P15329120185866065227` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350143 has offset 1).

The definition of A350143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350146, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350143.P15329120185866065227

`2*A350146(n+1)-A060831(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350143

/-- `2*A350146(n+1)-A060831(n+1)` -/
def P15329120185866065227.Spec : Prop :=
  ∀ n, P15329120185866065227.a n = A350143 (n + 1)

theorem P15329120185866065227.correct : P15329120185866065227.Spec := by
  intro n
  simp only [A350143, Nat.add_sub_cancel]

end A350143

/-! ## A350143.P16667000014036496213

`∑[∑{d}[n+1, lcm(2, #)]-∑{d}[n+1, #%2]]`
-/

namespace A350143.P16667000014036496213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.lcm 2 d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P16667000014036496213

namespace A350143

/-- `∑[∑{d}[n+1, lcm(2, #)]-∑{d}[n+1, #%2]]` -/
def P16667000014036496213.Spec : Prop :=
  ∀ n, P16667000014036496213.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P15885176936742594632

`∑[∑{d}[n+1, #^and(1, #)]+∑{d}[n+1, #-1]]`
-/

namespace A350143.P15885176936742594632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ Nat.land 1 d : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P15885176936742594632

namespace A350143

/-- `∑[∑{d}[n+1, #^and(1, #)]+∑{d}[n+1, #-1]]` -/
def P15885176936742594632.Spec : Prop :=
  ∀ n, P15885176936742594632.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P16355156023550184822

`∑[∑{d}[2*(n+1), xor(1, #)%#]+∑{d}[n+1, #-1]]`
-/

namespace A350143.P16355156023550184822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.xor 1 d % d : ℕ) : ℤ) + ∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P16355156023550184822

namespace A350143

/-- `∑[∑{d}[2*(n+1), xor(1, #)%#]+∑{d}[n+1, #-1]]` -/
def P16355156023550184822.Spec : Prop :=
  ∀ n, P16355156023550184822.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P6165482647715438972

`∑[∑{d}[n+1, #-1]+∑{d}[n+1, #^val(#²+1, 2)]]`
-/

namespace A350143.P6165482647715438972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) + ((∑ d ∈ Nat.divisors (f3 n), d ^ SequenceMachineLib.valuation (d ^ 2 + 1) 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P6165482647715438972

namespace A350143

/-- `∑[∑{d}[n+1, #-1]+∑{d}[n+1, #^val(#²+1, 2)]]` -/
def P6165482647715438972.Spec : Prop :=
  ∀ n, P6165482647715438972.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P11517658706436472453

`∑[∑{d}[n+1, A114752(#)]]`
-/

namespace A350143.P11517658706436472453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A114752 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P11517658706436472453

namespace A350143

/-- `∑[∑{d}[n+1, A114752(#)]]` -/
def P11517658706436472453.Spec : Prop :=
  ∀ n, P11517658706436472453.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P6111248238747984066

`∑[A348915(n+1)+∑{d}[n+1, #-1]]`
-/

namespace A350143.P6111248238747984066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348915 (n + 1) + ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P6111248238747984066

namespace A350143

/-- `∑[A348915(n+1)+∑{d}[n+1, #-1]]` -/
def P6111248238747984066.Spec : Prop :=
  ∀ n, P6111248238747984066.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P307975911641399711

`∑[A054785(n+1)-∑{d}[n+1, #%2]]`
-/

namespace A350143.P307975911641399711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P307975911641399711

namespace A350143

/-- `∑[A054785(n+1)-∑{d}[n+1, #%2]]` -/
def P307975911641399711.Spec : Prop :=
  ∀ n, P307975911641399711.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P15679652617869575856

`∑[∑{d}[n+1, #^and(1, #)]+A158901(n+1)-1]`
-/

namespace A350143.P15679652617869575856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ Nat.land 1 d : ℕ) : ℤ) + (A158901 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P15679652617869575856

namespace A350143

/-- `∑[∑{d}[n+1, #^and(1, #)]+A158901(n+1)-1]` -/
def P15679652617869575856.Spec : Prop :=
  ∀ n, P15679652617869575856.a n = A350143 (n + 1)

end A350143

/-! ## A350143.P274837384803531457

`∑[A054785(n+1)-∑{d}[n+1, A020639(3*#)-2]]`
-/

namespace A350143.P274837384803531457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - ∑ d ∈ Nat.divisors (f2 n), (A020639 (3 * d) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350143.P274837384803531457

namespace A350143

/-- `∑[A054785(n+1)-∑{d}[n+1, A020639(3*#)-2]]` -/
def P274837384803531457.Spec : Prop :=
  ∀ n, P274837384803531457.a n = A350143 (n + 1)

end A350143

/-!
# A350144: a(n) = Sum_{k=1..n} floor(n/(2*k-1))^3.

The programs for A350144, there is no canonical definition to state claims against.
-/

/-! ## A350144.P2990250334972198173

`(A344721(n+1)+A318742(n+1))/2`
-/

namespace A350144.P2990250334972198173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344721 (n + 1) + A318742 (n + 1) : ℚ) / 2

end

end A350144.P2990250334972198173

/-! ## A350144.P12491660158668867973

`A350122(A034856(n+2))`
-/

namespace A350144.P12491660158668867973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350122 (A034856 (n + 2)).toNat

end

end A350144.P12491660158668867973

/-! ## A350144.P17246666463846732807

`A344721(n+1)+A014682(A318742(n+1)-A344721(n+1))`
-/

namespace A350144.P17246666463846732807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344721 (n + 1) + A014682 (A318742 (n + 1) - A344721 (n + 1)).toNat

end

end A350144.P17246666463846732807

/-! ## A350144.P17706646589310184954

`A014682(A344721(n+1)+A318742(n+1))`
-/

namespace A350144.P17706646589310184954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A344721 (n + 1) + A318742 (n + 1)).toNat

end

end A350144.P17706646589310184954

/-! ## A350144.P10510130667652380766

`A344721(n+1)+A001281(A318742(n+1)-A344721(n+1))`
-/

namespace A350144.P10510130667652380766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344721 (n + 1) + A001281 (A318742 (n + 1) - A344721 (n + 1)).toNat

end

end A350144.P10510130667652380766

/-!
# A350145: a(n) = Sum_{k=1..n} floor(n/(2*k-1))^n.

The programs for A350145, there is no canonical definition to state claims against.
-/

/-! ## A350145.P11335813385036290985

`(A344724(n+1)+A332469(n+1))/2`
-/

namespace A350145.P11335813385036290985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344724 (n + 1) + A332469 (n + 1) : ℚ) / 2

end

end A350145.P11335813385036290985

/-! ## A350145.P7216595177187769215

`A350122((n+1)²+n²)`
-/

namespace A350145.P7216595177187769215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350122 ((n + 1) ^ 2 + n ^ 2)

end

end A350145.P7216595177187769215

/-! ## A350145.P17012949055767649863

`record[A077606(n+1)*A350122(n+1)]`
-/

namespace A350145.P17012949055767649863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A350122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350145.P17012949055767649863

/-! ## A350145.P4537644287653556760

`record[(A344726(n+1)+A344725(n+1))/2*A003982(n)]`
-/

namespace A350145.P4537644287653556760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344726 (n + 1) + A344725 (n + 1) : ℚ) / 2 * (A003982 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350145.P4537644287653556760

/-! ## A350145.P8868028736623547160

`A350122(∑[4*n]+1)%A067322(n)`
-/

namespace A350145.P8868028736623547160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350122 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A067322 n)

end

end A350145.P8868028736623547160

/-!
# A350146: Partial sums of A002131.

The programs for A350146, the canonical program `A350146.P3021547214229055799` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350146 has offset 1).

The definition of A350146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350146.P1732190902713204321

`∑[∑{d}[n+1, lcm(2, #)/2]]`
-/

namespace A350146.P1732190902713204321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.lcm 2 d : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P1732190902713204321

namespace A350146

/-- `∑[∑{d}[n+1, lcm(2, #)/2]]` -/
def P1732190902713204321.Spec : Prop :=
  ∀ n, P1732190902713204321.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P7893261409671405597

`∑[∑{d}[n+1, #/gcd(2, #)]]`
-/

namespace A350146.P7893261409671405597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℚ) / (Nat.gcd 2 d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P7893261409671405597

namespace A350146

/-- `∑[∑{d}[n+1, #/gcd(2, #)]]` -/
def P7893261409671405597.Spec : Prop :=
  ∀ n, P7893261409671405597.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P3021547214229055799

`∑[∑{d}[2*(n+1), (n+1)%#]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350146

/-- `∑[∑{d}[2*(n+1), (n+1)%#]]` -/
def P3021547214229055799.Spec : Prop :=
  ∀ n, (P3021547214229055799.a n : ℤ) = A350146 (n + 1)

theorem P3021547214229055799.correct : P3021547214229055799.Spec := by
  intro n
  simp only [A350146, Nat.add_sub_cancel]

end A350146

/-! ## A350146.P5496986025405257907

`∑[∑{d}[(n+1)/2^val(n+1, 2), (n+1)/#]]`
-/

namespace A350146.P5496986025405257907
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, (n + 1 : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P5496986025405257907

namespace A350146

/-- `∑[∑{d}[(n+1)/2^val(n+1, 2), (n+1)/#]]` -/
def P5496986025405257907.Spec : Prop :=
  ∀ n, P5496986025405257907.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P17681432174886313321

`∑[∑{d}[n+1, #]/xor(n, n+1)*and(n+1, -(n+1))]`
-/

namespace A350146.P17681432174886313321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P17681432174886313321

namespace A350146

/-- `∑[∑{d}[n+1, #]/xor(n, n+1)*and(n+1, -(n+1))]` -/
def P17681432174886313321.Spec : Prop :=
  ∀ n, P17681432174886313321.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P13419156809634646439

`∑[and(n+1, -(n+1))*∑{d}[(n+1)/and(n+1, -(n+1)), #]]`
-/

namespace A350146.P13419156809634646439
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P13419156809634646439

namespace A350146

/-- `∑[and(n+1, -(n+1))*∑{d}[(n+1)/and(n+1, -(n+1)), #]]` -/
def P13419156809634646439.Spec : Prop :=
  ∀ n, P13419156809634646439.a n = A350146 (n + 1)

end A350146

/-! ## A350146.P2381462786609485683

`∑[A002131(n+1)]`
-/

namespace A350146.P2381462786609485683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P2381462786609485683

namespace A350146

/-- `∑[A002131(n+1)]` -/
def P2381462786609485683.Spec : Prop :=
  ∀ n, P2381462786609485683.a n = A350146 (n + 1)

end A350146

/-! ## A350146.P2349371453181959081

`∑[abs(A186690(n+1))]`
-/

namespace A350146.P2349371453181959081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186690 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P2349371453181959081

namespace A350146

/-- `∑[abs(A186690(n+1))]` -/
def P2349371453181959081.Spec : Prop :=
  ∀ n, P2349371453181959081.a n = A350146 (n + 1)

end A350146

/-! ## A350146.P12469151056315156696

`∑[A054785(n+1)/2]`
-/

namespace A350146.P12469151056315156696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P12469151056315156696

namespace A350146

/-- `∑[A054785(n+1)/2]` -/
def P12469151056315156696.Spec : Prop :=
  ∀ n, P12469151056315156696.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P7152119650120540167

`∑[A326066(2*(n+1))/2]`
-/

namespace A350146.P7152119650120540167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326066 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P7152119650120540167

namespace A350146

/-- `∑[A326066(2*(n+1))/2]` -/
def P7152119650120540167.Spec : Prop :=
  ∀ n, P7152119650120540167.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P2829250924658456592

`∑[A228274(n+1)/(n+1)]`
-/

namespace A350146.P2829250924658456592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228274 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P2829250924658456592

namespace A350146

/-- `∑[A228274(n+1)/(n+1)]` -/
def P2829250924658456592.Spec : Prop :=
  ∀ n, P2829250924658456592.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P12684518231250499247

`∑[2^val(n+1, 2)*A000203((n+1)/2^val(n+1, 2))]`
-/

namespace A350146.P12684518231250499247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P12684518231250499247

namespace A350146

/-- `∑[2^val(n+1, 2)*A000203((n+1)/2^val(n+1, 2))]` -/
def P12684518231250499247.Spec : Prop :=
  ∀ n, P12684518231250499247.a n = A350146 (n + 1)

end A350146

/-! ## A350146.P1836535588776365330

`∑[A050464(n+1)+A050460(n+1)]`
-/

namespace A350146.P1836535588776365330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (n + 1) + A050460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P1836535588776365330

namespace A350146

/-- `∑[A050464(n+1)+A050460(n+1)]` -/
def P1836535588776365330.Spec : Prop :=
  ∀ n, P1836535588776365330.a n = A350146 (n + 1)

end A350146

/-! ## A350146.P4885430894055175868

`(A078471(n+1)+A024916(n+1))/2`
-/

namespace A350146.P4885430894055175868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078471 (n + 1) + A024916 (n + 1) : ℚ) / 2

end

end A350146.P4885430894055175868

namespace A350146

/-- `(A078471(n+1)+A024916(n+1))/2` -/
def P4885430894055175868.Spec : Prop :=
  ∀ n, P4885430894055175868.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P17271284462076590170

`A078471(n+1)+A271342(n+1)/2`
-/

namespace A350146.P17271284462076590170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078471 (n + 1) : ℚ) + (A271342 (n + 1) : ℚ) / 2

end

end A350146.P17271284462076590170

namespace A350146

/-- `A078471(n+1)+A271342(n+1)/2` -/
def P17271284462076590170.Spec : Prop :=
  ∀ n, P17271284462076590170.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P8895870478294438373

`A024916(n+1)-A271342(n+1)/2`
-/

namespace A350146.P8895870478294438373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024916 (n + 1) : ℚ) - (A271342 (n + 1) : ℚ) / 2

end

end A350146.P8895870478294438373

namespace A350146

/-- `A024916(n+1)-A271342(n+1)/2` -/
def P8895870478294438373.Spec : Prop :=
  ∀ n, P8895870478294438373.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P13840626045129202930

`(A326124(n+1)-A024916(n+1))/2`
-/

namespace A350146.P13840626045129202930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326124 (n + 1) - A024916 (n + 1) : ℚ) / 2

end

end A350146.P13840626045129202930

namespace A350146

/-- `(A326124(n+1)-A024916(n+1))/2` -/
def P13840626045129202930.Spec : Prop :=
  ∀ n, P13840626045129202930.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P10930730409832516155

`∑[(A000593(n+1)+A000203(n+1))/2]`
-/

namespace A350146.P10930730409832516155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) + A000203 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P10930730409832516155

namespace A350146

/-- `∑[(A000593(n+1)+A000203(n+1))/2]` -/
def P10930730409832516155.Spec : Prop :=
  ∀ n, P10930730409832516155.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P13840700524528379433

`(A078471(n+1)+∑[A000203(n+1)])/2`
-/

namespace A350146.P13840700524528379433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A078471 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A350146.P13840700524528379433

namespace A350146

/-- `(A078471(n+1)+∑[A000203(n+1)])/2` -/
def P13840700524528379433.Spec : Prop :=
  ∀ n, P13840700524528379433.a n = (A350146 (n + 1) : ℚ)

end A350146

/-! ## A350146.P765425727534258956

`∑[(A062731(n+1)-A000203(n+1))/2]`
-/

namespace A350146.P765425727534258956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) - A000203 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350146.P765425727534258956

namespace A350146

/-- `∑[(A062731(n+1)-A000203(n+1))/2]` -/
def P765425727534258956.Spec : Prop :=
  ∀ n, P765425727534258956.a n = (A350146 (n + 1) : ℚ)

end A350146

/-!
# A350148: Number of distinct (left- or right-handed, but not both) two-dimensional, Hilbert-style space-filling curve motifs on the 2n+1 X 2n+1 square subdivision, that, when recursively iterated using strict edge-replacement, create always self-avoiding paths formed of sub-square edges in the lattice.

The programs for A350148, there is no canonical definition to state claims against.
-/

/-! ## A350148.P16070846537186878820

`A062129(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=7`
-/

namespace A350148.P16070846537186878820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 7] fun n a =>
  A062129 (a (n - 1)).toNat

end

end A350148.P16070846537186878820

/-!
# A350149: Triangle read by rows: T(n, k) = n^(n-k)*k!.

The programs for A350149, the canonical program `A350149.P11282229283471556419` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350149 has offset 0).

The definition of A350149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350149.P11282229283471556419

`row(n)^(row(n)-col(n))*col(n)!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350149

/-- `row(n)^(row(n)-col(n))*col(n)!` -/
def P11282229283471556419.Spec : Prop :=
  ∀ n, P11282229283471556419.a n = (A350149 n : ℚ)

end A350149

/-! ## A350149.P15392940631673887162

`A398136(n)/A007318(n)`
-/

namespace A350149.P15392940631673887162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398136 n : ℚ) / (A007318 n : ℚ)

end

end A350149.P15392940631673887162

namespace A350149

/-- `A398136(n)/A007318(n)` -/
def P15392940631673887162.Spec : Prop :=
  ∀ n, P15392940631673887162.a n = (A350149 n : ℚ)

end A350149

/-! ## A350149.P10072754262710028707

`A079901(A061579(n))*A233543(n)`
-/

namespace A350149.P10072754262710028707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A061579 n).toNat * A233543 n

end

end A350149.P10072754262710028707

namespace A350149

/-- `A079901(A061579(n))*A233543(n)` -/
def P10072754262710028707.Spec : Prop :=
  ∀ n, P10072754262710028707.a n = A350149 n

end A350149

/-! ## A350149.P3956823444388048052

`A079901(A038722(n+2))*A233543(n)`
-/

namespace A350149.P3956823444388048052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A038722 (n + 2)).toNat * A233543 n

end

end A350149.P3956823444388048052

namespace A350149

/-- `A079901(A038722(n+2))*A233543(n)` -/
def P3956823444388048052.Spec : Prop :=
  ∀ n, P3956823444388048052.a n = A350149 n

end A350149

/-! ## A350149.P10216616383706174352

`A003056(n)^A025581(n)*A233543(n)`
-/

namespace A350149.P10216616383706174352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A025581 n : ℤ) * (A233543 n : ℚ)

end

end A350149.P10216616383706174352

namespace A350149

/-- `A003056(n)^A025581(n)*A233543(n)` -/
def P10216616383706174352.Spec : Prop :=
  ∀ n, P10216616383706174352.a n = (A350149 n : ℚ)

end A350149

/-! ## A350149.P4091417327268257207

`A233543(n)*A364870(n)`
-/

namespace A350149.P4091417327268257207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A364870 n

end

end A350149.P4091417327268257207

namespace A350149

/-- `A233543(n)*A364870(n)` -/
def P4091417327268257207.Spec : Prop :=
  ∀ n, P4091417327268257207.a n = A350149 n

end A350149

/-!
# A350151: Variation of Van Eck's sequence A181391: a(1) = 0; a(n+1) is the positive offset from the end of the string concatenating a(1) through a(n-1) to the first appearance of a(n). a(n+1) = 0 if a(n) does not appear in the string.

The programs for A350151, there is no canonical definition to state claims against.
-/

/-! ## A350151.P3869734201723550847

`A171918(A090110(n+2))`
-/

namespace A350151.P3869734201723550847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (A090110 (n + 2)).toNat

end

end A350151.P3869734201723550847

/-! ## A350151.P3750014785571848641

`A181391(n+1)+A011731(A185255(n))`
-/

namespace A350151.P3750014785571848641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + A011731 (A185255 n).toNat

end

end A350151.P3750014785571848641

/-! ## A350151.P10117960217934275999

`A181391(n+1)+A083918(A183610(n))`
-/

namespace A350151.P10117960217934275999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + A083918 (A183610 n).toNat

end

end A350151.P10117960217934275999

/-! ## A350151.P9134805162490370749

`A181391(n+1)+A102683(A244120(n))`
-/

namespace A350151.P9134805162490370749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + A102683 (A244120 n).toNat

end

end A350151.P9134805162490370749

/-! ## A350151.P10899238110919346276

`A333359(n+1)+A011731(A185255(n))`
-/

namespace A350151.P10899238110919346276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333359 (n + 1) + A011731 (A185255 n).toNat

end

end A350151.P10899238110919346276

/-!
# A350152: Abelian orders m for which there exist at least 2 groups with order m.

The programs for A350152, there is no canonical definition to state claims against.
-/

/-! ## A350152.P18188214748588334619

`∪[A350322(n+1), A350323(n+1)]`
-/

namespace A350152.P18188214748588334619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P18188214748588334619

/-! ## A350152.P6580253664936410265

`filter[A051532(n+2), A087049(#)]`
-/

namespace A350152.P6580253664936410265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A350152.P6580253664936410265

/-! ## A350152.P6314945245645844728

`filter[A051532(n+2), A353470(#)]`
-/

namespace A350152.P6314945245645844728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A350152.P6314945245645844728

/-! ## A350152.P2218647092480567678

`filter[A051532(n+2), A359429(#)]`
-/

namespace A350152.P2218647092480567678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A350152.P2218647092480567678

/-! ## A350152.P14111586602654743050

`∩[A013929(n+1), A051532(n+1)]`
-/

namespace A350152.P14111586602654743050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P14111586602654743050

/-! ## A350152.P15921042330311877502

`∩[A038109(n+1), A051532(n+1)]`
-/

namespace A350152.P15921042330311877502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P15921042330311877502

/-! ## A350152.P8037707367281129967

`∩[A051532(n+1), A059269(n+1)]`
-/

namespace A350152.P8037707367281129967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P8037707367281129967

/-! ## A350152.P10970360830687523752

`∩[A051532(n+1), A067259(n+1)]`
-/

namespace A350152.P10970360830687523752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P10970360830687523752

/-! ## A350152.P16175288926723803123

`∩[A051532(n+1), A069168(n+1)]`
-/

namespace A350152.P16175288926723803123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P16175288926723803123

/-! ## A350152.P5610330974141248113

`∩[A051532(n+1), A072587(n+1)]`
-/

namespace A350152.P5610330974141248113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P5610330974141248113

/-! ## A350152.P11279295202084765125

`∩[A051532(n+1), A072903(n+1)]`
-/

namespace A350152.P11279295202084765125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P11279295202084765125

/-! ## A350152.P7929900103722612720

`∩[A051532(n+1), A087244(n+1)]`
-/

namespace A350152.P7929900103722612720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P7929900103722612720

/-! ## A350152.P8856071482308406111

`∩[A051532(n+1), A162643(n+1)]`
-/

namespace A350152.P8856071482308406111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P8856071482308406111

/-! ## A350152.P5674684347205607880

`∩[A051532(n+1), A177880(n+1)]`
-/

namespace A350152.P5674684347205607880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P5674684347205607880

/-! ## A350152.P17418404254283175319

`∩[A051532(n+1), A240112(n+1)]`
-/

namespace A350152.P17418404254283175319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P17418404254283175319

/-! ## A350152.P13973719860045075062

`∩[A051532(n+1), A074661(n+1)]`
-/

namespace A350152.P13973719860045075062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P13973719860045075062

/-! ## A350152.P18418185168748597565

`∩[A252849(n+1), A051532(n+1)]`
-/

namespace A350152.P18418185168748597565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P18418185168748597565

/-! ## A350152.P18398062391536738016

`∩[A056867(n+1), A067259(n+1)]`
-/

namespace A350152.P18398062391536738016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P18398062391536738016

/-! ## A350152.P11104601537285047197

`∩[A051532(n+1), A389462(n+1)]`
-/

namespace A350152.P11104601537285047197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350152.P11104601537285047197

/-!
# A350154: a(n) = denominator(k^n * [x^(2*n+1)] sqrt(k)*arccos(exp(-x^2/(2*k)))) for n >= 0 and fixed k > 0.

The programs for A350154, there is no canonical definition to state claims against.
-/

/-! ## A350154.P3158021967313141198

`A047053(n)*A109395(A006863(n))`
-/

namespace A350154.P3158021967313141198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047053 n * A109395 (A006863 n).toNat

end

end A350154.P3158021967313141198

/-!
# A350155: a(n) is the greatest number of times that a laser can hit a reflector on an n X n grid (see Comments for precise definition).

The programs for A350155, there is no canonical definition to state claims against.
-/

/-! ## A350155.P6713581324889986313

`A010914(n)-A077236(n)`
-/

namespace A350155.P6713581324889986313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010914 n - A077236 n

end

end A350155.P6713581324889986313

/-!
# A350156: Inverse Moebius transform of A000056.

The programs for A350156, the canonical program `A350156.P11009244864672196317` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350156 has offset 1).

The definition of A350156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350156.P2615973552533998979

`∑{d}[n+1, A000056(#)]`
-/

namespace A350156.P2615973552533998979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d

end

end A350156.P2615973552533998979

namespace A350156

/-- `∑{d}[n+1, A000056(#)]` -/
def P2615973552533998979.Spec : Prop :=
  ∀ n, P2615973552533998979.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P10227631980383447506

`∑{d}[n+1, #*A007434(#)]`
-/

namespace A350156.P10227631980383447506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007434 d

end

end A350156.P10227631980383447506

namespace A350156

/-- `∑{d}[n+1, #*A007434(#)]` -/
def P10227631980383447506.Spec : Prop :=
  ∀ n, P10227631980383447506.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P11009244864672196317

`∑{d}[n+1, A001158(#)*A055615((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350156

/-- `∑{d}[n+1, A001158(#)*A055615((n+1)/#)]` -/
def P11009244864672196317.Spec : Prop :=
  ∀ n, P11009244864672196317.a n = A350156 (n + 1)

theorem P11009244864672196317.correct : P11009244864672196317.Spec := by
  intro n
  simp only [A350156, Nat.add_sub_cancel]

end A350156

/-! ## A350156.P1187373893870186019

`∑{d}[n+1, A020478(#)*A046970((n+1)/#)]`
-/

namespace A350156.P1187373893870186019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020478 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P1187373893870186019

namespace A350156

/-- `∑{d}[n+1, A020478(#)*A046970((n+1)/#)]` -/
def P1187373893870186019.Spec : Prop :=
  ∀ n, P1187373893870186019.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P5912063384790497543

`∑{d}[n+1, A002618(#)*A068963((n+1)/#)]`
-/

namespace A350156.P5912063384790497543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A068963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P5912063384790497543

namespace A350156

/-- `∑{d}[n+1, A002618(#)*A068963((n+1)/#)]` -/
def P5912063384790497543.Spec : Prop :=
  ∀ n, P5912063384790497543.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P15857778402229123117

`∑{d}[n+1, A053191(#)*A057660((n+1)/#)]`
-/

namespace A350156.P15857778402229123117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P15857778402229123117

namespace A350156

/-- `∑{d}[n+1, A053191(#)*A057660((n+1)/#)]` -/
def P15857778402229123117.Spec : Prop :=
  ∀ n, P15857778402229123117.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P8110720310742812306

`∑{d}[n+1, A059376(#)*A130054((n+1)/#)]`
-/

namespace A350156.P8110720310742812306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059376 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P8110720310742812306

namespace A350156

/-- `∑{d}[n+1, A059376(#)*A130054((n+1)/#)]` -/
def P8110720310742812306.Spec : Prop :=
  ∀ n, P8110720310742812306.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P8516523567484113812

`∑{d}[n+1, A027847(#)*A328722((n+1)/#)]`
-/

namespace A350156.P8516523567484113812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027847 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P8516523567484113812

namespace A350156

/-- `∑{d}[n+1, A027847(#)*A328722((n+1)/#)]` -/
def P8516523567484113812.Spec : Prop :=
  ∀ n, P8516523567484113812.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P12510409356781774377

`∑{d}[n+1, A046692(#)*A321140((n+1)/#)]`
-/

namespace A350156.P12510409356781774377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A321140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P12510409356781774377

namespace A350156

/-- `∑{d}[n+1, A046692(#)*A321140((n+1)/#)]` -/
def P12510409356781774377.Spec : Prop :=
  ∀ n, P12510409356781774377.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P16680607520310583816

`∑{d}[n+1, A078307(#)*A349343((n+1)/#)]`
-/

namespace A350156.P16680607520310583816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078307 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P16680607520310583816

namespace A350156

/-- `∑{d}[n+1, A078307(#)*A349343((n+1)/#)]` -/
def P16680607520310583816.Spec : Prop :=
  ∀ n, P16680607520310583816.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P16349736526487414657

`∑{d}[n+1, A101035(#)*A328259((n+1)/#)]`
-/

namespace A350156.P16349736526487414657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P16349736526487414657

namespace A350156

/-- `∑{d}[n+1, A101035(#)*A328259((n+1)/#)]` -/
def P16349736526487414657.Spec : Prop :=
  ∀ n, P16349736526487414657.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P2242727336623478095

`∑{d}[n+1, A328641(#)*A343497((n+1)/#)]`
-/

namespace A350156.P2242727336623478095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P2242727336623478095

namespace A350156

/-- `∑{d}[n+1, A328641(#)*A343497((n+1)/#)]` -/
def P2242727336623478095.Spec : Prop :=
  ∀ n, P2242727336623478095.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P12320348573983237993

`∑{d}[n+1, A349469(#)*A373059((n+1)/#)]`
-/

namespace A350156.P12320348573983237993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349469 d * A373059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P12320348573983237993

namespace A350156

/-- `∑{d}[n+1, A349469(#)*A373059((n+1)/#)]` -/
def P12320348573983237993.Spec : Prop :=
  ∀ n, P12320348573983237993.a n = A350156 (n + 1)

end A350156

/-! ## A350156.P18101037968322739504

`∑{d}[n+1, A033999(#-1)*A208895((n+1)/#)]`
-/

namespace A350156.P18101037968322739504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P18101037968322739504

namespace A350156

/-- `∑{d}[n+1, A033999(#-1)*A208895((n+1)/#)]` -/
def P18101037968322739504.Spec : Prop :=
  ∀ n, P18101037968322739504.a n = A350156 (n + 1)

end A350156

/-!
# A350157: Total number of nodes in the smallest connected component summed over all endofunctions on [n].

The programs for A350157, there is no canonical definition to state claims against.
-/

/-! ## A350157.P8138685533453704884

`record[A350202(A002260(n+1))-A000007(n)]`
-/

namespace A350157.P8138685533453704884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350202 (A002260 (n + 1)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350157.P8138685533453704884

/-! ## A350157.P17465678098987510110

`record[A011655(n)*A350202(A002260(n+1))]`
-/

namespace A350157.P17465678098987510110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A350202 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350157.P17465678098987510110

/-!
# A350159: Number of subgroups of the dicyclic group Dic_n.

The programs for A350159, the canonical program `A350159.P901158934797568537` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350159 has offset 1).

The definition of A350159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350159.P901158934797568537

`A099777(n+1)+A000203(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A350159

/-- `A099777(n+1)+A000203(n+1)` -/
def P901158934797568537.Spec : Prop :=
  ∀ n, P901158934797568537.a n = A350159 (n + 1)

theorem P901158934797568537.correct : P901158934797568537.Spec := by
  intro n
  simp only [A350159, Nat.add_sub_cancel]

end A350159

/-! ## A350159.P8211123884546728161

`A000005(2*(n+1))+A000203(n+1)`
-/

namespace A350159.P8211123884546728161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) + A000203 (n + 1)

end

end A350159.P8211123884546728161

namespace A350159

/-- `A000005(2*(n+1))+A000203(n+1)` -/
def P8211123884546728161.Spec : Prop :=
  ∀ n, P8211123884546728161.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P16054450479338332108

`∑{d}[n+1, or(1, #+1)]`
-/

namespace A350159.P16054450479338332108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lor 1 (d + 1)

end

end A350159.P16054450479338332108

namespace A350159

/-- `∑{d}[n+1, or(1, #+1)]` -/
def P16054450479338332108.Spec : Prop :=
  ∀ n, (P16054450479338332108.a n : ℤ) = A350159 (n + 1)

end A350159

/-! ## A350159.P1057851315401347481

`∑{d}[n+1, #%2+1+#]`
-/

namespace A350159.P1057851315401347481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1 + d)

end

end A350159.P1057851315401347481

namespace A350159

/-- `∑{d}[n+1, #%2+1+#]` -/
def P1057851315401347481.Spec : Prop :=
  ∀ n, (P1057851315401347481.a n : ℤ) = A350159 (n + 1)

end A350159

/-! ## A350159.P5375534947700073611

`∑{d}[n+1, gcd(2, #+1)+#]`
-/

namespace A350159.P5375534947700073611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.gcd 2 (d + 1) + d)

end

end A350159.P5375534947700073611

namespace A350159

/-- `∑{d}[n+1, gcd(2, #+1)+#]` -/
def P5375534947700073611.Spec : Prop :=
  ∀ n, (P5375534947700073611.a n : ℤ) = A350159 (n + 1)

end A350159

/-! ## A350159.P9889343218561740898

`∑{d}[n+1, and(1, #)+1+#]`
-/

namespace A350159.P9889343218561740898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d + 1 + d)

end

end A350159.P9889343218561740898

namespace A350159

/-- `∑{d}[n+1, and(1, #)+1+#]` -/
def P9889343218561740898.Spec : Prop :=
  ∀ n, (P9889343218561740898.a n : ℤ) = A350159 (n + 1)

end A350159

/-! ## A350159.P2179750489963385164

`∑{d}[n+1, 2*ceil(#/2)+1]`
-/

namespace A350159.P2179750489963385164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 * ⌈(d : ℚ) / 2⌉ + 1)

end

end A350159.P2179750489963385164

namespace A350159

/-- `∑{d}[n+1, 2*ceil(#/2)+1]` -/
def P2179750489963385164.Spec : Prop :=
  ∀ n, P2179750489963385164.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P10991148382355051995

`∏{e}[2*(n+1), #+1]+∑{d}[n+1, #]`
-/

namespace A350159.P10991148382355051995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + ∑ d ∈ Nat.divisors (f2 n), d

end

end A350159.P10991148382355051995

namespace A350159

/-- `∏{e}[2*(n+1), #+1]+∑{d}[n+1, #]` -/
def P10991148382355051995.Spec : Prop :=
  ∀ n, (P10991148382355051995.a n : ℤ) = A350159 (n + 1)

end A350159

/-! ## A350159.P15375596831920739353

`A007503(n+1)+A001227(n+1)`
-/

namespace A350159.P15375596831920739353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) + A001227 (n + 1)

end

end A350159.P15375596831920739353

namespace A350159

/-- `A007503(n+1)+A001227(n+1)` -/
def P15375596831920739353.Spec : Prop :=
  ∀ n, P15375596831920739353.a n = A350159 (n + 1)

theorem P15375596831920739353.correct : P15375596831920739353.Spec := by
  intro n
  simp only [A350159, Nat.add_sub_cancel, A350159.P15375596831920739353.a, A350159.P901158934797568537.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A007503, A007503.P13484425310514315912.a, A099777, A099777.P11792433152824821401.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350159

/-! ## A350159.P8908456331519897582

`A088580(n+1)+A066660(n+1)`
-/

namespace A350159.P8908456331519897582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A066660 (n + 1)

end

end A350159.P8908456331519897582

namespace A350159

/-- `A088580(n+1)+A066660(n+1)` -/
def P8908456331519897582.Spec : Prop :=
  ∀ n, P8908456331519897582.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P13735975429112162122

`Δ[A160664(n)]+A000005(2*(n+1))`
-/

namespace A350159.P13735975429112162122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000005 (2 * (n + 1))

end

end A350159.P13735975429112162122

namespace A350159

/-- `Δ[A160664(n)]+A000005(2*(n+1))` -/
def P13735975429112162122.Spec : Prop :=
  ∀ n, P13735975429112162122.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P3243529751216813347

`A245092(2*n+1)+A099777(n+1)`
-/

namespace A350159.P3243529751216813347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + A099777 (n + 1)

end

end A350159.P3243529751216813347

namespace A350159

/-- `A245092(2*n+1)+A099777(n+1)` -/
def P3243529751216813347.Spec : Prop :=
  ∀ n, P3243529751216813347.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P6165783957904781410

`A349211(2*(n+1))-A065608(n+1)`
-/

namespace A350159.P6165783957904781410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349211 (2 * (n + 1)) - A065608 (n + 1)

end

end A350159.P6165783957904781410

namespace A350159

/-- `A349211(2*(n+1))-A065608(n+1)` -/
def P6165783957904781410.Spec : Prop :=
  ∀ n, P6165783957904781410.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P14827169795377245784

`A245092(2*n+1)+A000005(2*(n+1))`
-/

namespace A350159.P14827169795377245784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + A000005 (2 * (n + 1))

end

end A350159.P14827169795377245784

namespace A350159

/-- `A245092(2*n+1)+A000005(2*(n+1))` -/
def P14827169795377245784.Spec : Prop :=
  ∀ n, P14827169795377245784.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P5809514142733596352

`A001227(n+1)+A079247(n+1)+A069734(n+1)`
-/

namespace A350159.P5809514142733596352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A079247 (n + 1) + A069734 (n + 1))

end

end A350159.P5809514142733596352

namespace A350159

/-- `A001227(n+1)+A079247(n+1)+A069734(n+1)` -/
def P5809514142733596352.Spec : Prop :=
  ∀ n, P5809514142733596352.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P11412204273715632667

`A000005(n+1)+A099777(n+1)+A065608(n+1)`
-/

namespace A350159.P11412204273715632667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A099777 (n + 1) + A065608 (n + 1))

end

end A350159.P11412204273715632667

namespace A350159

/-- `A000005(n+1)+A099777(n+1)+A065608(n+1)` -/
def P11412204273715632667.Spec : Prop :=
  ∀ n, P11412204273715632667.a n = A350159 (n + 1)

theorem P11412204273715632667.correct : P11412204273715632667.Spec := by
  intro n
  simp only [A350159, Nat.add_sub_cancel, A350159.P11412204273715632667.a, A350159.P901158934797568537.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065608, A065608.P12445239359989980431.a, A099777, A099777.P11792433152824821401.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350159

/-! ## A350159.P15529016757718051877

`A000005(n+1)+A349211(n+1)+A000593(n+1)`
-/

namespace A350159.P15529016757718051877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A349211 (n + 1) + A000593 (n + 1))

end

end A350159.P15529016757718051877

namespace A350159

/-- `A000005(n+1)+A349211(n+1)+A000593(n+1)` -/
def P15529016757718051877.Spec : Prop :=
  ∀ n, P15529016757718051877.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P13516586214120964688

`A001227(n+1)+A349211(n+1)+A348915(n+1)`
-/

namespace A350159.P13516586214120964688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A349211 (n + 1) + A348915 (n + 1))

end

end A350159.P13516586214120964688

namespace A350159

/-- `A001227(n+1)+A349211(n+1)+A348915(n+1)` -/
def P13516586214120964688.Spec : Prop :=
  ∀ n, P13516586214120964688.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P12433301380514242404

`A007503(n+1)+A079247(n+1)-A086670(n+1)`
-/

namespace A350159.P12433301380514242404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) + (A079247 (n + 1) - A086670 (n + 1))

end

end A350159.P12433301380514242404

namespace A350159

/-- `A007503(n+1)+A079247(n+1)-A086670(n+1)` -/
def P12433301380514242404.Spec : Prop :=
  ∀ n, P12433301380514242404.a n = A350159 (n + 1)

end A350159

/-! ## A350159.P7582667546221940212

`A000203(n+1)+A062731(n+1)-A355750(n+1)`
-/

namespace A350159.P7582667546221940212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A062731 (n + 1) - A355750 (n + 1))

end

end A350159.P7582667546221940212

namespace A350159

/-- `A000203(n+1)+A062731(n+1)-A355750(n+1)` -/
def P7582667546221940212.Spec : Prop :=
  ∀ n, P7582667546221940212.a n = A350159 (n + 1)

theorem P7582667546221940212.correct : P7582667546221940212.Spec := by
  intro n
  simp only [A350159, Nat.add_sub_cancel, A350159.P7582667546221940212.a, A350159.P901158934797568537.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062731, A062731.P15391118010266102110.a, A099777, A099777.P11792433152824821401.a, A355750, A355750.P5981996292456239035.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A054785, A054785.P16543829673478475701.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350159

/-!
# A350160: Odd numbers whose Collatz trajectory does not include 5 as a term.

The programs for A350160, there is no canonical definition to state claims against.
-/

/-! ## A350160.P15222951448416856329

`∩[2*n+1, A308149(n+1)]`
-/

namespace A350160.P15222951448416856329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350160.P15222951448416856329

/-! ## A350160.P8932287871627125693

`record[A000265(A308149(n+1))]`
-/

namespace A350160.P8932287871627125693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A308149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350160.P8932287871627125693

/-! ## A350160.P4331068054154734399

`filter[A308149(n+1), A000035(#)]`
-/

namespace A350160.P4331068054154734399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A350160.P4331068054154734399

/-! ## A350160.P5679260375020320555

`filter[A308149(n+1), A374134(#)]`
-/

namespace A350160.P5679260375020320555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A350160.P5679260375020320555

/-!
# A350161: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} (-1)^(j+1) * floor(n/(2*j-1))^k.

The programs for A350161, there is no canonical definition to state claims against.
-/

/-! ## A350161.P14922222917273599554

`A051129(n+1)-A141728(A166350(n+1))`
-/

namespace A350161.P14922222917273599554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A141728 (A166350 (n + 1)).toNat

end

end A350161.P14922222917273599554

/-! ## A350161.P9852611309789031671

`A051129(n+1)-A323473(A165313(n+1))`
-/

namespace A350161.P9852611309789031671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A323473 (A165313 (n + 1)).toNat

end

end A350161.P9852611309789031671

/-! ## A350161.P17140028977618287250

`A137651(n+1)+A091304(A103297(2*n+1))`
-/

namespace A350161.P17140028977618287250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (n + 1) + A091304 (A103297 (2 * n + 1)).toNat

end

end A350161.P17140028977618287250

/-! ## A350161.P18390187704127849580

`A128830(A181996(n))`
-/

namespace A350161.P18390187704127849580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128830 (A181996 n).toNat

end

end A350161.P18390187704127849580

/-! ## A350161.P7117106857185105706

`A233777(A046803(n+1))`
-/

namespace A350161.P7117106857185105706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 (A046803 (n + 1)).toNat

end

end A350161.P7117106857185105706

/-!
# A350162: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/(2*k-1))^2.

The programs for A350162, the canonical program `A350162.P14962107190166092220` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350162 has offset 1).

The definition of A350162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, A350166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350162.P14962107190166092220

`2*A350166(n+1)-A014200(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A350162

/-- `2*A350166(n+1)-A014200(n+1)` -/
def P14962107190166092220.Spec : Prop :=
  ∀ n, P14962107190166092220.a n = A350162 (n + 1)

theorem P14962107190166092220.correct : P14962107190166092220.Spec := by
  intro n
  simp only [A350162, Nat.add_sub_cancel]

end A350162

/-! ## A350162.P6450736529212798377

`∑[A050469(2*(n+1))-A002654(n+1)]`
-/

namespace A350162.P6450736529212798377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (2 * (n + 1)) - A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350162.P6450736529212798377

namespace A350162

/-- `∑[A050469(2*(n+1))-A002654(n+1)]` -/
def P6450736529212798377.Spec : Prop :=
  ∀ n, P6450736529212798377.a n = A350162 (n + 1)

end A350162

/-! ## A350162.P6377756075073062987

`A350161(∑[n+2])`
-/

namespace A350162.P6377756075073062987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350161 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350162.P6377756075073062987

namespace A350162

/-- `A350161(∑[n+2])` -/
def P6377756075073062987.Spec : Prop :=
  ∀ n, P6377756075073062987.a n = A350162 (n + 1)

end A350162

/-!
# A350163: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/(2*k-1))^3.

The programs for A350163, there is no canonical definition to state claims against.
-/

/-! ## A350163.P12147853473185263915

`A350161(∑[n+3]+1)`
-/

namespace A350163.P12147853473185263915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350161 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A350163.P12147853473185263915

/-! ## A350163.P10894841394574901264

`record[A350161(n+1)/A344725(n+4)]`
-/

namespace A350163.P10894841394574901264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350161 (n + 1) : ℚ) / (A344725 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350163.P10894841394574901264

/-! ## A350163.P2619448449449189131

`record[A350161(n+1)/A350202(n+3)]`
-/

namespace A350163.P2619448449449189131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350161 (n + 1) : ℚ) / (A350202 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350163.P2619448449449189131

/-!
# A350164: a(n) = Sum_{k=1..n}(-1)^(k+1) * floor(n/(2*k-1))^n.

The programs for A350164, there is no canonical definition to state claims against.
-/

/-! ## A350164.P9091482645310685385

`A350161(∑[4*n]+1)`
-/

namespace A350164.P9091482645310685385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350161 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A350164.P9091482645310685385

/-! ## A350164.P13387763708526371927

`record[A003982(n)*A350161(n+1)]`
-/

namespace A350164.P13387763708526371927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A350161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350164.P13387763708526371927

/-!
# A350165: Fundamental discriminants of real quadratic number fields with odd class number > 1 whose fundamental unit has norm -1.

The programs for A350165, there is no canonical definition to state claims against.
-/

/-! ## A350165.P5018428619899955024

`p?[A342368(n+1)]`
-/

namespace A350165.P5018428619899955024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350165.P5018428619899955024

/-! ## A350165.P18307632983129663415

`∩[A008846(n+1), A342368(n+1)]`
-/

namespace A350165.P18307632983129663415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P18307632983129663415

/-! ## A350165.P1783765898459894970

`∩[A191218(n+1), A342368(n+1)]`
-/

namespace A350165.P1783765898459894970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P1783765898459894970

/-! ## A350165.P2526269917698638240

`∩[A002144(n+1), A342368(n+1)]`
-/

namespace A350165.P2526269917698638240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P2526269917698638240

/-! ## A350165.P10537244922093350680

`∩[A002313(n+1), A342368(n+1)]`
-/

namespace A350165.P10537244922093350680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P10537244922093350680

/-! ## A350165.P17919303199242992706

`∩[A280084(n+1), A342368(n+1)]`
-/

namespace A350165.P17919303199242992706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P17919303199242992706

/-! ## A350165.P11912307974255880945

`∩[A055025(n+1), A342368(n+1)]`
-/

namespace A350165.P11912307974255880945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P11912307974255880945

/-! ## A350165.P1028841251000668516

`∩[A120960(n+1), A342368(n+1)]`
-/

namespace A350165.P1028841251000668516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P1028841251000668516

/-! ## A350165.P12772708944455227795

`∩[A172480(n+1), A342368(n+1)]`
-/

namespace A350165.P12772708944455227795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P12772708944455227795

/-! ## A350165.P14439921329243681732

`∩[A085759(n+1), A342368(n+1)]`
-/

namespace A350165.P14439921329243681732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P14439921329243681732

/-! ## A350165.P17969009371666073983

`∩[A066720(n+1), A342368(n+1)]`
-/

namespace A350165.P17969009371666073983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P17969009371666073983

/-! ## A350165.P14734204162115162395

`∩[A175768(n+1), A342368(n+1)]`
-/

namespace A350165.P14734204162115162395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P14734204162115162395

/-! ## A350165.P15487318692958926730

`∩[A109515(n+1), A342368(n+1)]`
-/

namespace A350165.P15487318692958926730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P15487318692958926730

/-! ## A350165.P2964319500322922468

`∩[A342368(n+1), A351535(n+1)]`
-/

namespace A350165.P2964319500322922468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P2964319500322922468

/-! ## A350165.P6575901992982796161

`∩[A266987(n+1), A342368(n+1)]`
-/

namespace A350165.P6575901992982796161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P6575901992982796161

/-! ## A350165.P3509487387557348491

`∩[A079348(n+1), A342368(n+1)]`
-/

namespace A350165.P3509487387557348491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P3509487387557348491

/-! ## A350165.P1145831250407127320

`∩[A125018(n+1), A342368(n+1)]`
-/

namespace A350165.P1145831250407127320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P1145831250407127320

/-! ## A350165.P13827300765576860321

`∩[A049092(n+1), A342368(n+1)]`
-/

namespace A350165.P13827300765576860321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P13827300765576860321

/-! ## A350165.P6999219065071490554

`∩[A095283(n+1), A342368(n+1)]`
-/

namespace A350165.P6999219065071490554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P6999219065071490554

/-! ## A350165.P15800268207132602808

`∩[A342368(n+1), A380525(n+1)]`
-/

namespace A350165.P15800268207132602808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350165.P15800268207132602808

/-!
# A350166: Partial sums of A050469.

The programs for A350166, the canonical program `A350166.P8703411876236404235` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350166 has offset 1).

The definition of A350166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350166.P8703411876236404235

`∑[A050469(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A350166

/-- `∑[A050469(n+1)]` -/
def P8703411876236404235.Spec : Prop :=
  ∀ n, P8703411876236404235.a n = A350166 (n + 1)

theorem P8703411876236404235.correct : P8703411876236404235.Spec := by
  intro n
  simp only [A350166, Nat.add_sub_cancel]

end A350166

/-! ## A350166.P7146031873090300989

`∑[∑{d}[n+1, A327123(#)]]`
-/

namespace A350166.P7146031873090300989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A327123 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P7146031873090300989

namespace A350166

/-- `∑[∑{d}[n+1, A327123(#)]]` -/
def P7146031873090300989.Spec : Prop :=
  ∀ n, P7146031873090300989.a n = A350166 (n + 1)

end A350166

/-! ## A350166.P16843770200275393007

`∑[(and(2*n+1, n+1)-and(n, 2*(n+1)))*A050457(n+1)]`
-/

namespace A350166.P16843770200275393007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land (2 * n + 1) (n + 1) : ℤ) - (Nat.land n (2 * (n + 1)) : ℤ)) * A050457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P16843770200275393007

namespace A350166

/-- `∑[(and(2*n+1, n+1)-and(n, 2*(n+1)))*A050457(n+1)]` -/
def P16843770200275393007.Spec : Prop :=
  ∀ n, P16843770200275393007.a n = A350166 (n + 1)

end A350166

/-! ## A350166.P18082749031838282535

`∑[A050460(n+1)-A050464(n+1)]`
-/

namespace A350166.P18082749031838282535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (n + 1) - A050464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P18082749031838282535

namespace A350166

/-- `∑[A050460(n+1)-A050464(n+1)]` -/
def P18082749031838282535.Spec : Prop :=
  ∀ n, P18082749031838282535.a n = A350166 (n + 1)

end A350166

/-! ## A350166.P15016113779299290527

`∑[A050457(n+1)*A055975(n+1)]`
-/

namespace A350166.P15016113779299290527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (n + 1) * A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P15016113779299290527

namespace A350166

/-- `∑[A050457(n+1)*A055975(n+1)]` -/
def P15016113779299290527.Spec : Prop :=
  ∀ n, P15016113779299290527.a n = A350166 (n + 1)

end A350166

/-! ## A350166.P5282324273028142689

`a(n-1)+A050469(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A350166.P5282324273028142689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A050469 (n + 1) + A000007 n)

end

end A350166.P5282324273028142689

namespace A350166

/-- `a(n-1)+A050469(n+1)+A000007(n)` -/
def P5282324273028142689.Spec : Prop :=
  ∀ n, P5282324273028142689.a n = A350166 (n + 1)

end A350166

/-! ## A350166.P16623880100329395962

`a(n-1)+A050469(n+1)/A000038(n)!` with `a(0)=1`
-/

namespace A350166.P16623880100329395962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A050469 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A350166.P16623880100329395962

namespace A350166

/-- `a(n-1)+A050469(n+1)/A000038(n)!` -/
def P16623880100329395962.Spec : Prop :=
  ∀ n, P16623880100329395962.a n = (A350166 (n + 1) : ℚ)

end A350166

/-! ## A350166.P10743431703821780154

`∑[∑{d}[n+1, A000010(#)*A002654((n+1)/#)]]`
-/

namespace A350166.P10743431703821780154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A002654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P10743431703821780154

namespace A350166

/-- `∑[∑{d}[n+1, A000010(#)*A002654((n+1)/#)]]` -/
def P10743431703821780154.Spec : Prop :=
  ∀ n, P10743431703821780154.a n = A350166 (n + 1)

end A350166

/-! ## A350166.P15414448502679081471

`A000027(∑[A050469(-xor(n, -1))])`
-/

namespace A350166.P15414448502679081471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350166.P15414448502679081471

namespace A350166

/-- `A000027(∑[A050469(-xor(n, -1))])` -/
def P15414448502679081471.Spec : Prop :=
  ∀ n, P15414448502679081471.a n = A350166 (n + 1)

end A350166

/-! ## A350166.P8369287943090991320

`∑[A322084(∑[n+2])]`
-/

namespace A350166.P8369287943090991320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322084 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350166.P8369287943090991320

namespace A350166

/-- `∑[A322084(∑[n+2])]` -/
def P8369287943090991320.Spec : Prop :=
  ∀ n, P8369287943090991320.a n = A350166 (n + 1)

end A350166

/-!
# A350168: Count from 0 to 1st prime 2, then from 0 to 2nd prime 3, then from 0 to 3rd prime 5, etc ...

The programs for A350168, the canonical program `A350168.P5756815979313615881` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350168 has offset 1).

The definition of A350168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350168.P5756815979313615881

`(a(n-1)+1)*A093521(n+2)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350168

/-- `(a(n-1)+1)*A093521(n+2)` -/
def P5756815979313615881.Spec : Prop :=
  ∀ n, P5756815979313615881.a n = A350168 (n + 1)

theorem P5756815979313615881.correct : P5756815979313615881.Spec := by
  intro n
  simp only [A350168, Nat.add_sub_cancel]

end A350168

/-! ## A350168.P15297810875950789421

`A002262(lt[A354649(2*n+1), A318953(n+1)])`
-/

namespace A350168.P15297810875950789421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354649 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350168.P15297810875950789421

namespace A350168

/-- `A002262(lt[A354649(2*n+1), A318953(n+1)])` -/
def P15297810875950789421.Spec : Prop :=
  ∀ n, P15297810875950789421.a n = A350168 (n + 1)

end A350168

/-! ## A350168.P5791669364299739445

`A194053(n+1)+A057428(A139582(n))`
-/

namespace A350168.P5791669364299739445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194053 (n + 1) + A057428 (A139582 n).toNat

end

end A350168.P5791669364299739445

namespace A350168

/-- `A194053(n+1)+A057428(A139582(n))` -/
def P5791669364299739445.Spec : Prop :=
  ∀ n, P5791669364299739445.a n = A350168 (n + 1)

end A350168

/-! ## A350168.P17785530423669765888

`A194053(n+1)+A057428(A266277(n))`
-/

namespace A350168.P17785530423669765888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194053 (n + 1) + A057428 (A266277 n).toNat

end

end A350168.P17785530423669765888

namespace A350168

/-- `A194053(n+1)+A057428(A266277(n))` -/
def P17785530423669765888.Spec : Prop :=
  ∀ n, P17785530423669765888.a n = A350168 (n + 1)

end A350168

/-!
# A350169: Write 1st prime and decrement 0 times, then write 2nd prime and decrement once, write 3rd prime and decrement twice, write 4th prime and decrement 3 times, etc ...

The programs for A350169, there is no canonical definition to state claims against.
-/

/-! ## A350169.P16006370304298784361

`A162620(∑[char[∑[n]]]²-n)`
-/

namespace A350169.P16006370304298784361
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162620 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A350169.P16006370304298784361

/-! ## A350169.P4722412631586238158

`A000040(row(n)+1)-col(n)`
-/

namespace A350169.P4722412631586238158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.triRow n + 1) - (SequenceMachineLib.triCol n : ℤ)

end

end A350169.P4722412631586238158

/-! ## A350169.P12417513753012971844

`A162619(∑[char[∑[n]]]²-n)+1`
-/

namespace A350169.P12417513753012971844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162619 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 1

end

end A350169.P12417513753012971844

/-! ## A350169.P14237525615567555227

`A000040(∑[char[∑[n]]])-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A350169.P14237525615567555227
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A350169.P14237525615567555227

/-! ## A350169.P15597054746797476678

`A360496(A077320(n+1))`
-/

namespace A350169.P15597054746797476678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360496 (A077320 (n + 1)).toNat

end

end A350169.P15597054746797476678

/-! ## A350169.P13822798374632114444

`A162620(n+1)+A114327(n)`
-/

namespace A350169.P13822798374632114444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162620 (n + 1) + A114327 n

end

end A350169.P13822798374632114444

/-! ## A350169.P5029325720628300856

`A005145(n+1)-A002262(n)`
-/

namespace A350169.P5029325720628300856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A002262 n

end

end A350169.P5029325720628300856

/-! ## A350169.P3495637185038796590

`p?[A249728(n+1)]-A002262(n)`
-/

namespace A350169.P3495637185038796590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002262 n

end

end A350169.P3495637185038796590

/-! ## A350169.P306277549527651109

`A000040(∑[char[∑[n]]])-A002262(n)`
-/

namespace A350169.P306277549527651109
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - A002262 n

end

end A350169.P306277549527651109

/-! ## A350169.P9328182136044521412

`A005145(n+1)-A025668(n+1)`
-/

namespace A350169.P9328182136044521412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A025668 (n + 1)

end

end A350169.P9328182136044521412

/-!
# A350170: Start from the sequence of primes, keep the 1st, then delete 2 primes, keep the next, delete 3 primes, keep the next, delete 5 primes, etc ...

The programs for A350170, there is no canonical definition to state claims against.
-/

/-! ## A350170.P13913453929379444470

`A000040(∑[record[∑{p}[n, #]+1]])`
-/

namespace A350170.P13913453929379444470
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350170.P13913453929379444470

/-! ## A350170.P10081367676502606864

`A008578(∑[p?[floor(2*n/3)]]+n)`
-/

namespace A350170.P10081367676502606864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A350170.P10081367676502606864

/-! ## A350170.P16256303712581564517

`A000040(∑[p?[floor(2*n/3)]]+n-1)`
-/

namespace A350170.P16256303712581564517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)).toNat

end

end A350170.P16256303712581564517

/-! ## A350170.P8295846991027848401

`A000040(∑[p?[round(4*n/5)]]-1+n)`
-/

namespace A350170.P8295846991027848401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 5))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)).toNat

end

end A350170.P8295846991027848401

/-! ## A350170.P677672501722448292

`A000040(∑[p?[n%3+n]+1]-p?[n%3+n])`
-/

namespace A350170.P677672501722448292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

end

end A350170.P677672501722448292

/-!
# A350171: Add 1 to the 1st prime, then write the 2nd prime, then add 1 to the 3rd prime, then write the 4th prime, etc., alternately adding a 1 or not.

The programs for A350171, the canonical program `A350171.P13869261041356617048` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350171 has offset 1).

The definition of A350171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350171.P13869261041356617048

`A000040(n+1)+(n+1)%2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350171

/-- `A000040(n+1)+(n+1)%2` -/
def P13869261041356617048.Spec : Prop :=
  ∀ n, P13869261041356617048.a n = A350171 (n + 1)

theorem P13869261041356617048.correct : P13869261041356617048.Spec := by
  intro n
  simp only [A350171, Nat.add_sub_cancel]

end A350171

/-! ## A350171.P8698735313067416603

`char[2*n]+p?[ceil(2/acot(n))]`
-/

namespace A350171.P8698735313067416603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A350171.P8698735313067416603

namespace A350171

/-- `char[2*n]+p?[ceil(2/acot(n))]` -/
def P8698735313067416603.Spec : Prop :=
  ∀ n, P8698735313067416603.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P4046012062415380572

`A107623(n+1)-2`
-/

namespace A350171.P4046012062415380572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107623 (n + 1) - 2

end

end A350171.P4046012062415380572

namespace A350171

/-- `A107623(n+1)-2` -/
def P4046012062415380572.Spec : Prop :=
  ∀ n, P4046012062415380572.a n = A350171 (n + 1)

theorem P4046012062415380572.correct : P4046012062415380572.Spec := by
  intro n
  simp only [A350171, Nat.add_sub_cancel, A350171.P4046012062415380572.a, A350171.P13869261041356617048.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A107623, A107623.P9933197287315963225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350171

/-! ## A350171.P3531586024333043945

`A092949(n)-a(n-1)` with `a(0)=3`
-/

namespace A350171.P3531586024333043945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A092949 n - a (n - 1)

end

end A350171.P3531586024333043945

namespace A350171

/-- `A092949(n)-a(n-1)` -/
def P3531586024333043945.Spec : Prop :=
  ∀ n, P3531586024333043945.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P2927739914838480131

`A014686(n+1)+A000035(n)`
-/

namespace A350171.P2927739914838480131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1) + A000035 n

end

end A350171.P2927739914838480131

namespace A350171

/-- `A014686(n+1)+A000035(n)` -/
def P2927739914838480131.Spec : Prop :=
  ∀ n, P2927739914838480131.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P2007780228124298503

`A014693(n+1)+A001057(n)`
-/

namespace A350171.P2007780228124298503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014693 (n + 1) + A001057 n

end

end A350171.P2007780228124298503

namespace A350171

/-- `A014693(n+1)+A001057(n)` -/
def P2007780228124298503.Spec : Prop :=
  ∀ n, P2007780228124298503.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P3757226074849771668

`A059841(n)+A000040(n+1)`
-/

namespace A350171.P3757226074849771668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A000040 (n + 1)

end

end A350171.P3757226074849771668

namespace A350171

/-- `A059841(n)+A000040(n+1)` -/
def P3757226074849771668.Spec : Prop :=
  ∀ n, P3757226074849771668.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P10763865166260757344

`A109613(n)+A014692(n+1)`
-/

namespace A350171.P10763865166260757344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A014692 (n + 1)

end

end A350171.P10763865166260757344

namespace A350171

/-- `A109613(n)+A014692(n+1)` -/
def P10763865166260757344.Spec : Prop :=
  ∀ n, P10763865166260757344.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P14906633115517933973

`A086910(n+1)+A083236(n)`
-/

namespace A350171.P14906633115517933973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086910 (n + 1) + A083236 n

end

end A350171.P14906633115517933973

namespace A350171

/-- `A086910(n+1)+A083236(n)` -/
def P14906633115517933973.Spec : Prop :=
  ∀ n, P14906633115517933973.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P11295664146681187575

`A134451(n)+A039915(n+1)`
-/

namespace A350171.P11295664146681187575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n + A039915 (n + 1)

end

end A350171.P11295664146681187575

namespace A350171

/-- `A134451(n)+A039915(n+1)` -/
def P11295664146681187575.Spec : Prop :=
  ∀ n, P11295664146681187575.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P14996537124347883453

`A176059(n)+A040976(n+1)`
-/

namespace A350171.P14996537124347883453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n + A040976 (n + 1)

end

end A350171.P14996537124347883453

namespace A350171

/-- `A176059(n)+A040976(n+1)` -/
def P14996537124347883453.Spec : Prop :=
  ∀ n, P14996537124347883453.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P7315279429943418933

`A008864(n+1)-A000035(n)`
-/

namespace A350171.P7315279429943418933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A000035 n

end

end A350171.P7315279429943418933

namespace A350171

/-- `A008864(n+1)-A000035(n)` -/
def P7315279429943418933.Spec : Prop :=
  ∀ n, P7315279429943418933.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P14258999700968324722

`A052147(n+1)-A000034(n)`
-/

namespace A350171.P14258999700968324722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A000034 n

end

end A350171.P14258999700968324722

namespace A350171

/-- `A052147(n+1)-A000034(n)` -/
def P14258999700968324722.Spec : Prop :=
  ∀ n, P14258999700968324722.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P7734100280565116043

`A107622(n+1)-A010684(n)`
-/

namespace A350171.P7734100280565116043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107622 (n + 1) - A010684 n

end

end A350171.P7734100280565116043

namespace A350171

/-- `A107622(n+1)-A010684(n)` -/
def P7734100280565116043.Spec : Prop :=
  ∀ n, P7734100280565116043.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P10233276009505634047

`A113935(n+1)-A010693(n)`
-/

namespace A350171.P10233276009505634047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - A010693 n

end

end A350171.P10233276009505634047

namespace A350171

/-- `A113935(n+1)-A010693(n)` -/
def P10233276009505634047.Spec : Prop :=
  ∀ n, P10233276009505634047.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P4763949475075324829

`A121262(2*n)+A000040(n+1)`
-/

namespace A350171.P4763949475075324829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * n) + A000040 (n + 1)

end

end A350171.P4763949475075324829

namespace A350171

/-- `A121262(2*n)+A000040(n+1)` -/
def P4763949475075324829.Spec : Prop :=
  ∀ n, P4763949475075324829.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P4559344452691280781

`A152822(2*n)+A000040(n+1)`
-/

namespace A350171.P4559344452691280781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (2 * n) + A000040 (n + 1)

end

end A350171.P4559344452691280781

namespace A350171

/-- `A152822(2*n)+A000040(n+1)` -/
def P4559344452691280781.Spec : Prop :=
  ∀ n, P4559344452691280781.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P7860795053564150889

`A129069(n+1)%A107622(n+1)`
-/

namespace A350171.P7860795053564150889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129069 (n + 1)) (A107622 (n + 1))

end

end A350171.P7860795053564150889

namespace A350171

/-- `A129069(n+1)%A107622(n+1)` -/
def P7860795053564150889.Spec : Prop :=
  ∀ n, P7860795053564150889.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P17585067510005702710

`A007814(A094290(n+1))+A000040(n+1)`
-/

namespace A350171.P17585067510005702710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A094290 (n + 1)).toNat + A000040 (n + 1)

end

end A350171.P17585067510005702710

namespace A350171

/-- `A007814(A094290(n+1))+A000040(n+1)` -/
def P17585067510005702710.Spec : Prop :=
  ∀ n, P17585067510005702710.a n = A350171 (n + 1)

end A350171

/-! ## A350171.P3378662018430890187

`A104117(A115364(n+1))+A000040(n+1)`
-/

namespace A350171.P3378662018430890187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (A115364 (n + 1)).toNat + A000040 (n + 1)

end

end A350171.P3378662018430890187

namespace A350171

/-- `A104117(A115364(n+1))+A000040(n+1)` -/
def P3378662018430890187.Spec : Prop :=
  ∀ n, P3378662018430890187.a n = A350171 (n + 1)

end A350171

/-!
# A350172: Start from 1st prime 2, and write it twice, then add 3 to get 5 and write it 3 times, then add 5 to get 10 and write it 5 times, and so on.

The programs for A350172, there is no canonical definition to state claims against.
-/

/-! ## A350172.P8287814788256411322

`A034387(p?[round(sqrt(2*n))])`
-/

namespace A350172.P8287814788256411322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350172.P8287814788256411322

/-! ## A350172.P8930706050843528020

`A156779(p?[round(sqrt(2*n))])`
-/

namespace A350172.P8930706050843528020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156779 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350172.P8930706050843528020

/-! ## A350172.P15478815377462446342

`∑[∑{p}[A178623(n+1), #]]`
-/

namespace A350172.P15478815377462446342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178623 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350172.P15478815377462446342

/-! ## A350172.P547346681411948191

`A063960(2*p?[round(sqrt(2*n))])`
-/

namespace A350172.P547346681411948191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350172.P547346681411948191

/-! ## A350172.P7348947822292127345

`A007504(∑[char[∑[∑{p}[n+1, C(#, n)]]]])`
-/

namespace A350172.P7348947822292127345
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.choose p n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350172.P7348947822292127345

/-! ## A350172.P13482710191359009783

`A159073(p?[A123578(n)])`
-/

namespace A350172.P13482710191359009783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159073 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A350172.P13482710191359009783

/-! ## A350172.P3078261200891335711

`A007504(A083375(n+1))`
-/

namespace A350172.P3078261200891335711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A083375 (n + 1)).toNat

end

end A350172.P3078261200891335711

/-! ## A350172.P4959391645601179537

`A034387(A063905(n+1))`
-/

namespace A350172.P4959391645601179537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A063905 (n + 1)).toNat

end

end A350172.P4959391645601179537

/-! ## A350172.P1720204185815818879

`A007504(A350174(n)+1)`
-/

namespace A350172.P1720204185815818879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A350174 n + 1).toNat

end

end A350172.P1720204185815818879

/-! ## A350172.P9185323892938106356

`A034387(A175944(n+2))`
-/

namespace A350172.P9185323892938106356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A175944 (n + 2)).toNat

end

end A350172.P9185323892938106356

/-!
# A350173: Write the square of 1st prime, then the 2nd prime, then the square of 3rd prime, alternately squaring or not.

The programs for A350173, the canonical program `A350173.P13221999733575588926` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350173 has offset 1).

The definition of A350173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350173.P13221999733575588926

`A000040(n+1)^(1+(n+1)%2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350173

/-- `A000040(n+1)^(1+(n+1)%2)` -/
def P13221999733575588926.Spec : Prop :=
  ∀ n, P13221999733575588926.a n = A350173 (n + 1)

theorem P13221999733575588926.correct : P13221999733575588926.Spec := by
  intro n
  simp only [A350173, Nat.add_sub_cancel]

end A350173

/-! ## A350173.P7542078923945755450

`Δ[A007504(n)]^gcd(2, n)`
-/

namespace A350173.P7542078923945755450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ Nat.gcd 2 n

end

end A350173.P7542078923945755450

namespace A350173

/-- `Δ[A007504(n)]^gcd(2, n)` -/
def P7542078923945755450.Spec : Prop :=
  ∀ n, P7542078923945755450.a n = A350173 (n + 1)

end A350173

/-! ## A350173.P6874762237142245854

`p?[abs(xor(n, -2))]^(2-n%2)`
-/

namespace A350173.P6874762237142245854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (2 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A350173.P6874762237142245854

namespace A350173

/-- `p?[abs(xor(n, -2))]^(2-n%2)` -/
def P6874762237142245854.Spec : Prop :=
  ∀ n, P6874762237142245854.a n = (A350173 (n + 1) : ℚ)

end A350173

/-! ## A350173.P9482414342144707313

`p?[xor(1, n)+1]^(2-and(1, n))`
-/

namespace A350173.P9482414342144707313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (2 - (Nat.land 1 n : ℤ) : ℤ)

end

end A350173.P9482414342144707313

namespace A350173

/-- `p?[xor(1, n)+1]^(2-and(1, n))` -/
def P9482414342144707313.Spec : Prop :=
  ∀ n, P9482414342144707313.a n = (A350173 (n + 1) : ℚ)

end A350173

/-! ## A350173.P5508311880734836357

`p?[abs(xor(n, -2))]^(char[2*n]+1)`
-/

namespace A350173.P5508311880734836357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ ((if ∃ j, f2 j = n then 1 else 0) + 1)

end

end A350173.P5508311880734836357

namespace A350173

/-- `p?[abs(xor(n, -2))]^(char[2*n]+1)` -/
def P5508311880734836357.Spec : Prop :=
  ∀ n, P5508311880734836357.a n = A350173 (n + 1)

end A350173

/-! ## A350173.P7529198786025464978

`p?[n-(-1)^n]^(char[2*n]+1)`
-/

namespace A350173.P7529198786025464978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ ((if ∃ j, f2 j = n then 1 else 0) + 1)

end

end A350173.P7529198786025464978

namespace A350173

/-- `p?[n-(-1)^n]^(char[2*n]+1)` -/
def P7529198786025464978.Spec : Prop :=
  ∀ n, P7529198786025464978.a n = A350173 (n + 1)

end A350173

/-! ## A350173.P8865817614383212377

`(∑{d}[p?[n-(-1)^n], #]-1)^2^and(1, n+1)`
-/

namespace A350173.P8865817614383212377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1) ^ 2 ^ Nat.land 1 (n + 1)

end

end A350173.P8865817614383212377

namespace A350173

/-- `(∑{d}[p?[n-(-1)^n], #]-1)^2^and(1, n+1)` -/
def P8865817614383212377.Spec : Prop :=
  ∀ n, P8865817614383212377.a n = A350173 (n + 1)

end A350173

/-! ## A350173.P12079331879608739666

`record[A006530(n+2)]^(2-and(1, n))`
-/

namespace A350173.P12079331879608739666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (2 - (Nat.land 1 n : ℤ) : ℤ)

end

end A350173.P12079331879608739666

namespace A350173

/-- `record[A006530(n+2)]^(2-and(1, n))` -/
def P12079331879608739666.Spec : Prop :=
  ∀ n, P12079331879608739666.a n = (A350173 (n + 1) : ℚ)

end A350173

/-! ## A350173.P11569390343828954363

`record[A020639(n+2)]^(2-and(1, n))`
-/

namespace A350173.P11569390343828954363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (2 - (Nat.land 1 n : ℤ) : ℤ)

end

end A350173.P11569390343828954363

namespace A350173

/-- `record[A020639(n+2)]^(2-and(1, n))` -/
def P11569390343828954363.Spec : Prop :=
  ∀ n, P11569390343828954363.a n = (A350173 (n + 1) : ℚ)

end A350173

/-!
# A350174: For k = 0, 1, 2, 3, ... write k prime(k+1) times.

The programs for A350174, the canonical program `A350174.P7572847409487358877` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350174 has offset 0).

The definition of A350174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083375, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350174.P7572847409487358877

`A083375(n+1)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350174

/-- `A083375(n+1)-1` -/
def P7572847409487358877.Spec : Prop :=
  ∀ n, P7572847409487358877.a n = A350174 n

theorem P7572847409487358877.correct : P7572847409487358877.Spec := by
  intro n
  simp only [A350174]

end A350174

/-! ## A350174.P11148376276402667238

`∑[char[∑[p?[comp[n²]]]]]`
-/

namespace A350174.P11148376276402667238
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350174.P11148376276402667238

namespace A350174

/-- `∑[char[∑[p?[comp[n²]]]]]` -/
def P11148376276402667238.Spec : Prop :=
  ∀ n, (P11148376276402667238.a n : ℤ) = A350174 n

end A350174

/-! ## A350174.P1621602705416738207

`comp[∑[p?[comp[n²]]]+n]-n`
-/

namespace A350174.P1621602705416738207
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A350174.P1621602705416738207

namespace A350174

/-- `comp[∑[p?[comp[n²]]]+n]-n` -/
def P1621602705416738207.Spec : Prop :=
  ∀ n, P1621602705416738207.a n = A350174 n

end A350174

/-! ## A350174.P7891230946974291474

`∑[char[A007504(n+1)]]`
-/

namespace A350174.P7891230946974291474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350174.P7891230946974291474

namespace A350174

/-- `∑[char[A007504(n+1)]]` -/
def P7891230946974291474.Spec : Prop :=
  ∀ n, (P7891230946974291474.a n : ℤ) = A350174 n

end A350174

/-! ## A350174.P4635274803425476371

`∑[char[A007504(n)]]-1`
-/

namespace A350174.P4635274803425476371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A350174.P4635274803425476371

namespace A350174

/-- `∑[char[A007504(n)]]-1` -/
def P4635274803425476371.Spec : Prop :=
  ∀ n, P4635274803425476371.a n = A350174 n

end A350174

/-! ## A350174.P13835805355859613375

`∑[char[A034387(n+2)]]`
-/

namespace A350174.P13835805355859613375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350174.P13835805355859613375

namespace A350174

/-- `∑[char[A034387(n+2)]]` -/
def P13835805355859613375.Spec : Prop :=
  ∀ n, (P13835805355859613375.a n : ℤ) = A350174 n

end A350174

/-! ## A350174.P4882669872333082298

`∑[char[A063960(n+4)]]`
-/

namespace A350174.P4882669872333082298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350174.P4882669872333082298

namespace A350174

/-- `∑[char[A063960(n+4)]]` -/
def P4882669872333082298.Spec : Prop :=
  ∀ n, (P4882669872333082298.a n : ℤ) = A350174 n

end A350174

/-! ## A350174.P70015645487165481

`∑[char[∑[A000040(n+1)]]]`
-/

namespace A350174.P70015645487165481
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350174.P70015645487165481

namespace A350174

/-- `∑[char[∑[A000040(n+1)]]]` -/
def P70015645487165481.Spec : Prop :=
  ∀ n, (P70015645487165481.a n : ℤ) = A350174 n

end A350174

/-! ## A350174.P4198912648507703271

`n-∑[abs(A226520(n+1))]`
-/

namespace A350174.P4198912648507703271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226520 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350174.P4198912648507703271

namespace A350174

/-- `n-∑[abs(A226520(n+1))]` -/
def P4198912648507703271.Spec : Prop :=
  ∀ n, P4198912648507703271.a n = A350174 n

end A350174

/-! ## A350174.P8906910073735122392

`Δ[n²]-A193732(n+1)`
-/

namespace A350174.P8906910073735122392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A193732 (n + 1)

end

end A350174.P8906910073735122392

namespace A350174

/-- `Δ[n²]-A193732(n+1)` -/
def P8906910073735122392.Spec : Prop :=
  ∀ n, P8906910073735122392.a n = A350174 n

theorem P8906910073735122392.correct : P8906910073735122392.Spec := by
  intro n
  simp only [A350174, Nat.add_sub_cancel, A350174.P8906910073735122392.f1, A350174.P8906910073735122392.a, A350174.P7572847409487358877.a, A083375, A083375.P6337784781424164042.f5, A083375.P6337784781424164042.f4, A083375.P6337784781424164042.f3, A083375.P6337784781424164042.f2, A083375.P6337784781424164042.f1, A083375.P6337784781424164042.a, A193732, A193732.P11178483245691745026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350174

/-! ## A350174.P12847891292324165911

`A033270(A063905(n+1))`
-/

namespace A350174.P12847891292324165911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A063905 (n + 1)).toNat

end

end A350174.P12847891292324165911

namespace A350174

/-- `A033270(A063905(n+1))` -/
def P12847891292324165911.Spec : Prop :=
  ∀ n, P12847891292324165911.a n = A350174 n

end A350174

/-! ## A350174.P5756719557490387762

`A000720(A063905(n+1)-1)`
-/

namespace A350174.P5756719557490387762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063905 (n + 1) - 1).toNat

end

end A350174.P5756719557490387762

namespace A350174

/-- `A000720(A063905(n+1)-1)` -/
def P5756719557490387762.Spec : Prop :=
  ∀ n, P5756719557490387762.a n = A350174 n

end A350174

/-! ## A350174.P856856669363180510

`A026238(A111657(n+1))-1`
-/

namespace A350174.P856856669363180510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A111657 (n + 1)).toNat - 1

end

end A350174.P856856669363180510

namespace A350174

/-- `A026238(A111657(n+1))-1` -/
def P856856669363180510.Spec : Prop :=
  ∀ n, P856856669363180510.a n = A350174 n

end A350174

/-! ## A350174.P4043740125648251790

`A065855(A111657(n+1)-1)`
-/

namespace A350174.P4043740125648251790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A111657 (n + 1) - 1).toNat

end

end A350174.P4043740125648251790

namespace A350174

/-- `A065855(A111657(n+1)-1)` -/
def P4043740125648251790.Spec : Prop :=
  ∀ n, P4043740125648251790.a n = A350174 n

end A350174

/-! ## A350174.P586577145531636757

`A230980(A063905(n+1)-1)`
-/

namespace A350174.P586577145531636757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A063905 (n + 1) - 1).toNat

end

end A350174.P586577145531636757

namespace A350174

/-- `A230980(A063905(n+1)-1)` -/
def P586577145531636757.Spec : Prop :=
  ∀ n, P586577145531636757.a n = A350174 n

end A350174

/-! ## A350174.P11726129986310991876

`A162988(n+2)-2`
-/

namespace A350174.P11726129986310991876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162988 (n + 2) - 2

end

end A350174.P11726129986310991876

namespace A350174

/-- `A162988(n+2)-2` -/
def P11726129986310991876.Spec : Prop :=
  ∀ n, P11726129986310991876.a n = A350174 n

end A350174

/-! ## A350174.P6440688647706660465

`A023444(A162988(n+2))`
-/

namespace A350174.P6440688647706660465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A162988 (n + 2)).toNat

end

end A350174.P6440688647706660465

namespace A350174

/-- `A023444(A162988(n+2))` -/
def P6440688647706660465.Spec : Prop :=
  ∀ n, P6440688647706660465.a n = A350174 n

end A350174

/-! ## A350174.P16954478260540852701

`A033270(A175944(n+2))`
-/

namespace A350174.P16954478260540852701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A175944 (n + 2)).toNat

end

end A350174.P16954478260540852701

namespace A350174

/-- `A033270(A175944(n+2))` -/
def P16954478260540852701.Spec : Prop :=
  ∀ n, P16954478260540852701.a n = A350174 n

end A350174

/-! ## A350174.P17695919019004914049

`∑[char[A395697(n+1)]]`
-/

namespace A350174.P17695919019004914049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395697 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350174.P17695919019004914049

namespace A350174

/-- `∑[char[A395697(n+1)]]` -/
def P17695919019004914049.Spec : Prop :=
  ∀ n, (P17695919019004914049.a n : ℤ) = A350174 n

end A350174

/-!
# A350175: Sum of the distinct block sizes over all partitions of [n].

The programs for A350175, there is no canonical definition to state claims against.
-/

/-! ## A350175.P144622626060279056

`A025428(∑[∑[(n+1)^4+n^4-∑[n]]])`
-/

namespace A350175.P144622626060279056
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) + ((n ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350175.P144622626060279056

/-! ## A350175.P4692814043904575908

`A294602(A117381(n)+n)`
-/

namespace A350175.P4692814043904575908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A117381 n + (n : ℤ)).toNat

end

end A350175.P4692814043904575908

/-!
# A350176: Numbers m such that binomial(m, 3) divides binomial(3^m-2, 3).

The programs for A350176, there is no canonical definition to state claims against.
-/

/-! ## A350176.P646657320541796889

`p?[record[A134478(A067773(n+1))]]`
-/

namespace A350176.P646657320541796889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A067773 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350176.P646657320541796889

/-! ## A350176.P732285647046471055

`A129990(A056712(n+1)%A195971(n+3))`
-/

namespace A350176.P732285647046471055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129990 (Int.tmod (A056712 (n + 1)) (A195971 (n + 3))).toNat

end

end A350176.P732285647046471055

/-!
# A350178: Take n and subtract the greatest square less than or equal to n. Repeat this process until 0 is reached. a(n) is the sum of all residues after subtractions.

The programs for A350178, the canonical program `A350178.P11864612683570022047` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350178 has offset 0).

The definition of A350178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350178.P11864612683570022047

`A053186(n)+a(A053186(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350178

/-- `A053186(n)+a(A053186(n))` -/
def P11864612683570022047.Spec : Prop :=
  ∀ n, P11864612683570022047.a n = A350178 n

theorem P11864612683570022047.correct : P11864612683570022047.Spec := by
  intro n
  simp only [A350178]

end A350178

/-! ## A350178.P11375990429122742551

`a(n-A000196(n)²)+n-A000196(n)²` with `a(0)=0`
-/

namespace A350178.P11375990429122742551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000196 n ^ 2).toNat + ((n : ℤ) - A000196 n ^ 2)

end

end A350178.P11375990429122742551

namespace A350178

/-- `a(n-A000196(n)²)+n-A000196(n)²` -/
def P11375990429122742551.Spec : Prop :=
  ∀ n, P11375990429122742551.a n = A350178 n

theorem P11375990429122742551.correct : P11375990429122742551.Spec := by
  intro n
  simp only [A350178, Nat.add_sub_cancel, A350178.P11375990429122742551.a, A350178.P11864612683570022047.a, A000196, A000196.P15434771586934192083.a, A053186, A053186.P11336721340617541042.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350178

/-! ## A350178.P17985609470684564925

`a(A071797(n+1)-1)+A071797(n+1)-1` with `a(0)=0`
-/

namespace A350178.P17985609470684564925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A071797 (n + 1) - 1).toNat + (A071797 (n + 1) - 1)

end

end A350178.P17985609470684564925

namespace A350178

/-- `a(A071797(n+1)-1)+A071797(n+1)-1` -/
def P17985609470684564925.Spec : Prop :=
  ∀ n, P17985609470684564925.a n = A350178 n

theorem P17985609470684564925.correct : P17985609470684564925.Spec := by
  intro n
  simp only [A350178, Nat.add_sub_cancel, A350178.P17985609470684564925.a, A350178.P11864612683570022047.a, A053186, A053186.P11336721340617541042.a, A071797, A071797.P5352405656370514398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350178

/-! ## A350178.P15934215475513017424

`A001222(A277182(n+1-floor(sqrt(n))²))`
-/

namespace A350178.P15934215475513017424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277182 (n + 1 - Nat.sqrt n ^ 2)).toNat

end

end A350178.P15934215475513017424

namespace A350178

/-- `A001222(A277182(n+1-floor(sqrt(n))²))` -/
def P15934215475513017424.Spec : Prop :=
  ∀ n, P15934215475513017424.a n = A350178 n

end A350178

/-! ## A350178.P5060978562318578568

`A332104(3^(n-floor(sqrt(n))²))`
-/

namespace A350178.P5060978562318578568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) : ℤ))).toNat

end

end A350178.P5060978562318578568

namespace A350178

/-- `A332104(3^(n-floor(sqrt(n))²))` -/
def P5060978562318578568.Spec : Prop :=
  ∀ n, P5060978562318578568.a n = A350178 n

end A350178

/-!
# A350179: Primes of the form ( A349309(n) + 1 ) ^ (1/3).

The programs for A350179, there is no canonical definition to state claims against.
-/

/-! ## A350179.P16378985961247734542

`(A349309(n+1)+1)^(1/3)`
-/

namespace A350179.P16378985961247734542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A349309 (n + 1) + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A350179.P16378985961247734542

/-! ## A350179.P11985908775994050424

`record[A006530(n+2)*A212793(3*(n+1))]`
-/

namespace A350179.P11985908775994050424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A212793 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350179.P11985908775994050424

/-! ## A350179.P12640843184854221029

`record[A273289(n+2)/A317941(3*(n+1))]`
-/

namespace A350179.P12640843184854221029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273289 (n + 2) : ℚ) / (A317941 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350179.P12640843184854221029

/-! ## A350179.P12112725713525469714

`record[A089026(n+2)%A066990(3*(n+1))]`
-/

namespace A350179.P12112725713525469714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089026 (n + 2)) (A066990 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350179.P12112725713525469714

/-! ## A350179.P740267918700175841

`record[A006530(2*(n+2))/A062378(3*(n+1))]`
-/

namespace A350179.P740267918700175841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (2 * (n + 2)) : ℚ) / (A062378 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350179.P740267918700175841

/-!
# A350180: Numbers of multiplicative persistence 1 which are themselves the product of digits of a number.

The programs for A350180, the canonical program `A350180.P8556333983247556014` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350180 has offset 1).

The definition of A350180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350180.P11988052271769874149

`∩[A002473(n+1), A199991(n+1)]`
-/

namespace A350180.P11988052271769874149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350180.P11988052271769874149

namespace A350180

/-- `∩[A002473(n+1), A199991(n+1)]` -/
def P11988052271769874149.Spec : Prop :=
  ∀ n, (P11988052271769874149.a n : ℤ) = A350180 (n + 1)

end A350180

/-! ## A350180.P5070112164701820426

`∩[A002473(n+1), A046510(n+1)]`
-/

namespace A350180.P5070112164701820426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350180.P5070112164701820426

namespace A350180

/-- `∩[A002473(n+1), A046510(n+1)]` -/
def P5070112164701820426.Spec : Prop :=
  ∀ n, (P5070112164701820426.a n : ℤ) = A350180 (n + 1)

end A350180

/-! ## A350180.P9328596188980152424

`record[A071785(A046510(n+1))]`
-/

namespace A350180.P9328596188980152424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A046510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350180.P9328596188980152424

namespace A350180

/-- `record[A071785(A046510(n+1))]` -/
def P9328596188980152424.Spec : Prop :=
  ∀ n, P9328596188980152424.a n = A350180 (n + 1)

end A350180

/-! ## A350180.P5333526071314992129

`filter[A046510(n+1), A086299(#)]`
-/

namespace A350180.P5333526071314992129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A350180.P5333526071314992129

namespace A350180

/-- `filter[A046510(n+1), A086299(#)]` -/
def P5333526071314992129.Spec : Prop :=
  ∀ n, P5333526071314992129.a n = A350180 (n + 1)

end A350180

/-! ## A350180.P13685634336989993662

`filter[A199991(n+1), A086299(#)]`
-/

namespace A350180.P13685634336989993662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A350180.P13685634336989993662

namespace A350180

/-- `filter[A199991(n+1), A086299(#)]` -/
def P13685634336989993662.Spec : Prop :=
  ∀ n, P13685634336989993662.a n = A350180 (n + 1)

end A350180

/-! ## A350180.P8556333983247556014

`eq[A031346(n+1), A086299(n+1)]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350180

/-- `eq[A031346(n+1), A086299(n+1)]+1` -/
def P8556333983247556014.Spec : Prop :=
  ∀ n, (P8556333983247556014.a n : ℤ) = A350180 (n + 1)

theorem P8556333983247556014.correct : P8556333983247556014.Spec := by
  intro n
  simp only [A350180, Nat.add_sub_cancel]

end A350180

/-! ## A350180.P11794314714667259631

`eq[A031346(n), A086299(A028310(n))]`
-/

namespace A350180.P11794314714667259631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350180.P11794314714667259631

namespace A350180

/-- `eq[A031346(n), A086299(A028310(n))]` -/
def P11794314714667259631.Spec : Prop :=
  ∀ n, (P11794314714667259631.a n : ℤ) = A350180 (n + 1)

end A350180

/-! ## A350180.P6134531407715364243

`eq[char[A343160(n+1)], A031346(n)]`
-/

namespace A350180.P6134531407715364243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343160 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A350180.P6134531407715364243

namespace A350180

/-- `eq[char[A343160(n+1)], A031346(n)]` -/
def P6134531407715364243.Spec : Prop :=
  ∀ n, (P6134531407715364243.a n : ℤ) = A350180 (n + 1)

end A350180

/-! ## A350180.P6996466750073308063

`eq[A031346(n), A086299(A008486(n))]`
-/

namespace A350180.P6996466750073308063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350180.P6996466750073308063

namespace A350180

/-- `eq[A031346(n), A086299(A008486(n))]` -/
def P6996466750073308063.Spec : Prop :=
  ∀ n, (P6996466750073308063.a n : ℤ) = A350180 (n + 1)

end A350180

/-! ## A350180.P13559414633840820363

`eq[A031346(n), A086299(A008706(n))]`
-/

namespace A350180.P13559414633840820363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350180.P13559414633840820363

namespace A350180

/-- `eq[A031346(n), A086299(A008706(n))]` -/
def P13559414633840820363.Spec : Prop :=
  ∀ n, (P13559414633840820363.a n : ℤ) = A350180 (n + 1)

end A350180

/-!
# A350181: Numbers of multiplicative persistence 2 which are themselves the product of digits of a number.

The programs for A350181, there is no canonical definition to state claims against.
-/

/-! ## A350181.P16300480370744190717

`∩[A002473(n+1), A199992(n+1)]`
-/

namespace A350181.P16300480370744190717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350181.P16300480370744190717

/-! ## A350181.P11555448582085966817

`∩[A199992(n+1), A238985(n+1)]`
-/

namespace A350181.P11555448582085966817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350181.P11555448582085966817

/-! ## A350181.P12608670419923543285

`∩[A199992(n+1), A342950(n+1)]`
-/

namespace A350181.P12608670419923543285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350181.P12608670419923543285

/-! ## A350181.P7929626363719839733

`∩[A002473(n+1), A046511(n+1)]`
-/

namespace A350181.P7929626363719839733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350181.P7929626363719839733

/-! ## A350181.P2600182002719113694

`∩[A046511(n+1), A238985(n+1)]`
-/

namespace A350181.P2600182002719113694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350181.P2600182002719113694

/-! ## A350181.P9493906691342258185

`∩[A046511(n+1), A342950(n+1)]`
-/

namespace A350181.P9493906691342258185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350181.P9493906691342258185

/-! ## A350181.P15721016454923653483

`record[A071785(A046511(n+1))]`
-/

namespace A350181.P15721016454923653483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A046511 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350181.P15721016454923653483

/-! ## A350181.P9645176307656632059

`record[A071785(A199992(n+1))]`
-/

namespace A350181.P9645176307656632059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A199992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350181.P9645176307656632059

/-! ## A350181.P6876599371568607928

`filter[A046511(n+1), A086299(#)]`
-/

namespace A350181.P6876599371568607928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A350181.P6876599371568607928

/-! ## A350181.P1213144431134588665

`filter[A199992(n+1), A086299(#)]`
-/

namespace A350181.P1213144431134588665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A350181.P1213144431134588665

/-!
# A350182: Numbers of multiplicative persistence 3 which are themselves the product of digits of a number.

The programs for A350182, there is no canonical definition to state claims against.
-/

/-! ## A350182.P10650348903492028565

`∩[A002473(n+1), A199993(n+1)]`
-/

namespace A350182.P10650348903492028565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350182.P10650348903492028565

/-! ## A350182.P9534794283817770777

`∩[A199993(n+1), A238985(n+1)]`
-/

namespace A350182.P9534794283817770777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350182.P9534794283817770777

/-! ## A350182.P10233356647403412674

`∩[A199993(n+1), A342950(n+1)]`
-/

namespace A350182.P10233356647403412674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350182.P10233356647403412674

/-! ## A350182.P13489626256034527777

`∩[A002473(n+1), A046512(n+1)]`
-/

namespace A350182.P13489626256034527777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350182.P13489626256034527777

/-! ## A350182.P11381483990537336450

`∩[A046512(n+1), A238985(n+1)]`
-/

namespace A350182.P11381483990537336450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350182.P11381483990537336450

/-! ## A350182.P11488789415068191159

`∩[A046512(n+1), A342950(n+1)]`
-/

namespace A350182.P11488789415068191159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350182.P11488789415068191159

/-!
# A350183: Numbers of multiplicative persistence 4 which are themselves the product of digits of a number.

The programs for A350183, there is no canonical definition to state claims against.
-/

/-! ## A350183.P7608032501615527522

`∩[A002473(n+1), A046513(n+1)]`
-/

namespace A350183.P7608032501615527522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350183.P7608032501615527522

/-! ## A350183.P4371637506288875407

`∩[A002473(n+1), A199994(n+1)]`
-/

namespace A350183.P4371637506288875407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350183.P4371637506288875407

/-! ## A350183.P17651940680890200856

`∩[A046513(n+1), A238985(n+1)]`
-/

namespace A350183.P17651940680890200856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350183.P17651940680890200856

/-! ## A350183.P892954022418967907

`∩[A046513(n+1), A342950(n+1)]`
-/

namespace A350183.P892954022418967907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350183.P892954022418967907

/-! ## A350183.P3342490722440627541

`∩[A199994(n+1), A238985(n+1)]`
-/

namespace A350183.P3342490722440627541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350183.P3342490722440627541

/-!
# A350188: Consider a 2D sandpile model where each site with 3 or more grains, say at location (x, y), topples and transfers one grain of sand to the sites at locations (x+1, y-1), (x+1, y) and (x+1, y+1); a(n) gives the number of nonempty sites after stabilization of a configuration starting with n grains at the origin.

The programs for A350188, there is no canonical definition to state claims against.
-/

/-! ## A350188.P10207054398430596688

`A054861(n)+A051903(A117976(n))`
-/

namespace A350188.P10207054398430596688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + A051903 (A117976 n).toNat

end

end A350188.P10207054398430596688

/-! ## A350188.P271737187625622425

`A005187(A289831(n)%A102172(n+1))`
-/

namespace A350188.P271737187625622425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (Int.tmod (A289831 n) (A102172 (n + 1))).toNat

end

end A350188.P271737187625622425

/-! ## A350188.P6487487691575431685

`A005187(A289831(n))%A173825(3*n+4)`
-/

namespace A350188.P6487487691575431685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A289831 n).toNat) (A173825 (3 * n + 4))

end

end A350188.P6487487691575431685

/-! ## A350188.P12378666482595300575

`A005187(A289831(n))%A307652(A180230(n))`
-/

namespace A350188.P12378666482595300575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A289831 n).toNat) (A307652 (A180230 n).toNat)

end

end A350188.P12378666482595300575

/-! ## A350188.P18049189474521422233

`A242921(A289831(n))%A180230(A068354(n+1))`
-/

namespace A350188.P18049189474521422233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242921 (A289831 n).toNat) (A180230 (A068354 (n + 1)).toNat)

end

end A350188.P18049189474521422233

/-!
# A350190: Numbers k such that A083723(k) is prime.

The programs for A350190, there is no canonical definition to state claims against.
-/

/-! ## A350190.P4253275860125254875

`eq[1, A001222(A033286(n+1)+n)]+1`
-/

namespace A350190.P4253275860125254875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033286 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350190.P4253275860125254875

/-! ## A350190.P10015572167986810283

`eq[2, A000005(A033286(n+1)+n)]+1`
-/

namespace A350190.P10015572167986810283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033286 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350190.P10015572167986810283

/-! ## A350190.P3382284108636912951

`eq[1, A001222((n+1)*A000040(n+1)+n)]+1`
-/

namespace A350190.P3382284108636912951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A000040 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350190.P3382284108636912951

/-! ## A350190.P12081552642164890674

`eq[1, A001222((A006093(n+1)+1)*(n+1)+n)]+1`
-/

namespace A350190.P12081552642164890674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((A006093 (n + 1) + 1) * (n + 1 : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350190.P12081552642164890674

/-! ## A350190.P8367791230081227246

`eq[2, A297793((n+1)*A000040(n+1)+n)]+1`
-/

namespace A350190.P8367791230081227246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297793 ((n + 1 : ℤ) * A000040 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350190.P8367791230081227246

/-!
# A350191: Number of ways of placing maximum number of nonattacking rooks on a triangular board with edge-length n (not counting rotations and reflections as distinct).

The programs for A350191, there is no canonical definition to state claims against.
-/

/-! ## A350191.P5959292965026089887

`A350041(n+1)-A055641(A350041(n+2))`
-/

namespace A350191.P5959292965026089887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350041 (n + 1) - A055641 (A350041 (n + 2)).toNat

end

end A350191.P5959292965026089887

/-! ## A350191.P13484588109422303342

`A350041(n+1)-A102683(A006882(n))`
-/

namespace A350191.P13484588109422303342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350041 (n + 1) - A102683 (A006882 n).toNat

end

end A350191.P13484588109422303342

/-! ## A350191.P388788460352253027

`A350041(n+1)-A133010(A037279(n+1))`
-/

namespace A350191.P388788460352253027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350041 (n + 1) - A133010 (A037279 (n + 1)).toNat

end

end A350191.P388788460352253027

/-! ## A350191.P16380627175822900004

`xor(A025480(A324093(n+1)), A350041(n+1))`
-/

namespace A350191.P16380627175822900004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025480 (A324093 (n + 1)).toNat) (A350041 (n + 1))

end

end A350191.P16380627175822900004

/-!
# A350192: Distinct values of A350090 in the order in which they appear.

The programs for A350192, there is no canonical definition to state claims against.
-/

/-! ## A350192.P6709957554051503170

`A350090(A350193(n+1))`
-/

namespace A350192.P6709957554051503170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 (A350193 (n + 1)).toNat

end

end A350192.P6709957554051503170

/-!
# A350193: Indices that give distinct values of A350090 in the order in which they appear.

The programs for A350193, there is no canonical definition to state claims against.
-/

/-! ## A350193.P8443430622423320728

`A368100(A319719(n))-A263359(n)`
-/

namespace A350193.P8443430622423320728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (A319719 n).toNat - A263359 n

end

end A350193.P8443430622423320728

/-! ## A350193.P16838944203657999992

`A003056(A112576(2*n)*A256440(2*n+1))`
-/

namespace A350193.P16838944203657999992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A112576 (2 * n) * A256440 (2 * n + 1)).toNat

end

end A350193.P16838944203657999992

/-! ## A350193.P12178572669279947299

`A003599(2*n+1)%A334266(A046936(2*(n+2)))`
-/

namespace A350193.P12178572669279947299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003599 (2 * n + 1)) (A334266 (A046936 (2 * (n + 2))).toNat)

end

end A350193.P12178572669279947299

