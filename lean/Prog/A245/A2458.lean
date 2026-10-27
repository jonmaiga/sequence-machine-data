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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A245800: a(n) is the least number k such that Sum_{j=S(n)+1..S(n)+k} 1/j >= 1/2, where S(n) = Sum_{i=1..n-1} a(i) and S(1) = 0.

The programs for A245800, there is no canonical definition to state claims against.
-/

/-! ## A245800.P2672311569154662208

`Δ[floor(sqrt(e)*a(n-1))]` with `a(0)=2`
-/

namespace A245800.P2672311569154662208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.sqrt (Real.exp 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245800.P2672311569154662208

/-! ## A245800.P18091890764219638797

`Δ[A061402(a(n-1))]` with `a(0)=2`
-/

namespace A245800.P18091890764219638797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A061402 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245800.P18091890764219638797

/-! ## A245800.P3557834500382876785

`floor(sqrt(sqrt(A128023(3*(n+1)))))`
-/

namespace A245800.P3557834500382876785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A128023 (3 * (n + 1)) : ℝ))⌋

end

end A245800.P3557834500382876785

/-! ## A245800.P169110387713717541

`floor(sqrt(sqrt(A255063(3*n+2))))`
-/

namespace A245800.P169110387713717541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A255063 (3 * n + 2) : ℝ))⌋

end

end A245800.P169110387713717541

/-!
# A245802: Numbers that are divisible by the sum of their base 8 digits.

The programs for A245802, the canonical program `A245802.P6380090416342982397` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245802 has offset 1).

The definition of A245802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245802.P6380090416342982397

`eq[0, (n+1)%A053829(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245802

/-- `eq[0, (n+1)%A053829(n+1)]+1` -/
def P6380090416342982397.Spec : Prop :=
  ∀ n, (P6380090416342982397.a n : ℤ) = A245802 (n + 1)

theorem P6380090416342982397.correct : P6380090416342982397.Spec := by
  intro n
  simp only [A245802, Nat.add_sub_cancel]

end A245802

/-! ## A245802.P16217741555058038808

`eq[lcm(n, A053829(n)), A028310(n)]`
-/

namespace A245802.P16217741555058038808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A053829 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245802.P16217741555058038808

namespace A245802

/-- `eq[lcm(n, A053829(n)), A028310(n)]` -/
def P16217741555058038808.Spec : Prop :=
  ∀ n, (P16217741555058038808.a n : ℤ) = A245802 (n + 1)

end A245802

/-! ## A245802.P11075238054745904313

`∩[A278827(n+1), A043094(n)]`
-/

namespace A245802.P11075238054745904313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245802.P11075238054745904313

namespace A245802

/-- `∩[A278827(n+1), A043094(n)]` -/
def P11075238054745904313.Spec : Prop :=
  ∀ n, (P11075238054745904313.a n : ℤ) = A245802 (n + 1)

end A245802

/-! ## A245802.P604513174524460708

`∩[A023803(n+1), A278827(n+1)]`
-/

namespace A245802.P604513174524460708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245802.P604513174524460708

namespace A245802

/-- `∩[A023803(n+1), A278827(n+1)]` -/
def P604513174524460708.Spec : Prop :=
  ∀ n, (P604513174524460708.a n : ℤ) = A245802 (n + 1)

end A245802

/-! ## A245802.P9543730211762257499

`∩[A115845(n+1), A278827(n+1)]`
-/

namespace A245802.P9543730211762257499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245802.P9543730211762257499

namespace A245802

/-- `∩[A115845(n+1), A278827(n+1)]` -/
def P9543730211762257499.Spec : Prop :=
  ∀ n, (P9543730211762257499.a n : ℤ) = A245802 (n + 1)

end A245802

/-!
# A245803: Numerator of the partial sum of the number of prime factors function divided by n.

The programs for A245803, there is no canonical definition to state claims against.
-/

/-! ## A245803.P12621970472982922415

`lcm(n+1, ∑[∑{e}[n+1, #]])/(n+1)`
-/

namespace A245803.P12621970472982922415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A245803.P12621970472982922415

/-! ## A245803.P16857042743249722606

`lcm(n+1, A022559(n+1))/(n+1)`
-/

namespace A245803.P16857042743249722606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A022559 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A245803.P16857042743249722606

/-! ## A245803.P8018388479918340365

`A022559(n+1)/gcd(A022559(n+1), A023443(n+2))`
-/

namespace A245803.P8018388479918340365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022559 (n + 1) : ℚ) / (Int.gcd (A022559 (n + 1)) (A023443 (n + 2)) : ℚ)

end

end A245803.P8018388479918340365

/-!
# A245804: a(n) = 2*3^n - 3*2^n.

The programs for A245804, the canonical program `A245804.P12793058916236791245` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245804 has offset 0).

The definition of A245804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-3*2^n` (program `A245804.P12793058916236791245`, by `A245804.P12793058916236791245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245804.P12793058916236791245

`2*3^n-3*2^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245804

/-- `2*3^n-3*2^n` -/
def P12793058916236791245.Spec : Prop :=
  ∀ n, P12793058916236791245.a n = A245804 n

theorem P12793058916236791245.correct : P12793058916236791245.Spec := by
  intro n
  simp only [A245804]

end A245804

/-! ## A245804.P10834649610354019477

`ogf((-1+5x)/(1-5x+6x^2))`
-/

namespace A245804.P10834649610354019477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5] [1, -5, 6] n

end

end A245804.P10834649610354019477

namespace A245804

/-- `ogf((-1+5x)/(1-5x+6x^2))` -/
def P10834649610354019477.Spec : Prop :=
  ∀ n, P10834649610354019477.a n = A245804 n

end A245804

/-! ## A245804.P6556729391272593797

`lcm(2, 3^(n-1)-floor(-a(n-1)))` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A245804.P6556729391272593797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (-a (n - 1) : ℚ))) : ℤ)

end

end A245804.P6556729391272593797

namespace A245804

/-- `lcm(2, 3^(n-1)-floor(-a(n-1)))` -/
def P6556729391272593797.Spec : Prop :=
  ∀ n, P6556729391272593797.a n = A245804 n

end A245804

/-! ## A245804.P11542384562105250471

`Δ[A001117(n)]`
-/

namespace A245804.P11542384562105250471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245804.P11542384562105250471

namespace A245804

/-- `Δ[A001117(n)]` -/
def P11542384562105250471.Spec : Prop :=
  ∀ n, P11542384562105250471.a n = A245804 n

theorem P11542384562105250471.correct : P11542384562105250471.Spec := by
  intro n
  simp only [A245804, Nat.add_sub_cancel, A245804.P11542384562105250471.f1, A245804.P11542384562105250471.a, A245804.P12793058916236791245.a, A001117, A001117.P5586515972310678558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245804

/-! ## A245804.P15867029139847220617

`(n-abs(1-n))*Δ[A094729(n)]`
-/

namespace A245804.P15867029139847220617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - |1 - (n : ℤ)|) * (f1 (n + 1) - f1 n)

end

end A245804.P15867029139847220617

namespace A245804

/-- `(n-abs(1-n))*Δ[A094729(n)]` -/
def P15867029139847220617.Spec : Prop :=
  ∀ n, P15867029139847220617.a n = A245804 n

end A245804

/-! ## A245804.P15294562788528783665

`xor(A091344(n), A158388(n))`
-/

namespace A245804.P15294562788528783665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091344 n) (A158388 n)

end

end A245804.P15294562788528783665

namespace A245804

/-- `xor(A091344(n), A158388(n))` -/
def P15294562788528783665.Spec : Prop :=
  ∀ n, P15294562788528783665.a n = A245804 n

end A245804

/-!
# A245805: a(n) = 12^n mod 11^n.

The programs for A245805, the canonical program `A245805.P15565003150733366919` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245805 has offset 0).

The definition of A245805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(12^n)%(11^n)` (program `A245805.P15565003150733366919`, by `A245805.P15565003150733366919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245805.P15565003150733366919

`(12^n)%(11^n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245805

/-- `(12^n)%(11^n)` -/
def P15565003150733366919.Spec : Prop :=
  ∀ n, (P15565003150733366919.a n : ℤ) = A245805 n

theorem P15565003150733366919.correct : P15565003150733366919.Spec := by
  intro n
  simp only [A245805]

end A245805

/-! ## A245805.P6010291336082556720

`abs(A001021(n)%Δ[A047856(n)])`
-/

namespace A245805.P6010291336082556720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A001021 n) (f1 (n + 1) - f1 n)|

end

end A245805.P6010291336082556720

namespace A245805

/-- `abs(A001021(n)%Δ[A047856(n)])` -/
def P6010291336082556720.Spec : Prop :=
  ∀ n, P6010291336082556720.a n = A245805 n

end A245805

/-! ## A245805.P11784236696332150114

`A057427(n)+A024140(n)%A001020(n)`
-/

namespace A245805.P11784236696332150114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + Int.tmod (A024140 n) (A001020 n)

end

end A245805.P11784236696332150114

namespace A245805

/-- `A057427(n)+A024140(n)%A001020(n)` -/
def P11784236696332150114.Spec : Prop :=
  ∀ n, P11784236696332150114.a n = A245805 n

end A245805

/-! ## A245805.P2167384567833339806

`A145448(n)%A196258(n)/A000142(n)`
-/

namespace A245805.P2167384567833339806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A145448 n) (A196258 n) : ℚ) / (A000142 n : ℚ)

end

end A245805.P2167384567833339806

namespace A245805

/-- `A145448(n)%A196258(n)/A000142(n)` -/
def P2167384567833339806.Spec : Prop :=
  ∀ n, P2167384567833339806.a n = (A245805 n : ℚ)

end A245805

/-!
# A245806: a(n) = 3^n + 10^n.

The programs for A245806, the canonical program `A245806.P6792978075413828246` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245806 has offset 0).

The definition of A245806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+10^n` (program `A245806.P6792978075413828246`, by `A245806.P6792978075413828246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245806.P6792978075413828246

`3^n+10^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245806

/-- `3^n+10^n` -/
def P6792978075413828246.Spec : Prop :=
  ∀ n, (P6792978075413828246.a n : ℤ) = A245806 n

theorem P6792978075413828246.correct : P6792978075413828246.Spec := by
  intro n
  simp only [A245806]

end A245806

/-! ## A245806.P13759366825613284368

`or(A155608(n)+1, char[12])`
-/

namespace A245806.P13759366825613284368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155608 n + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245806.P13759366825613284368

namespace A245806

/-- `or(A155608(n)+1, char[12])` -/
def P13759366825613284368.Spec : Prop :=
  ∀ n, P13759366825613284368.a n = A245806 n

end A245806

/-! ## A245806.P3104836720039010911

`Δ[A003462(n)+A002275(n)]`
-/

namespace A245806.P3104836720039010911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245806.P3104836720039010911

namespace A245806

/-- `Δ[A003462(n)+A002275(n)]` -/
def P3104836720039010911.Spec : Prop :=
  ∀ n, P3104836720039010911.a n = A245806 n

end A245806

/-! ## A245806.P7796464739485270677

`Δ[A007051(n)+A002275(n)]`
-/

namespace A245806.P7796464739485270677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245806.P7796464739485270677

namespace A245806

/-- `Δ[A007051(n)+A002275(n)]` -/
def P7796464739485270677.Spec : Prop :=
  ∀ n, P7796464739485270677.a n = A245806 n

end A245806

/-! ## A245806.P10599050107808442625

`Δ[A047855(n)+A003462(n)]`
-/

namespace A245806.P10599050107808442625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245806.P10599050107808442625

namespace A245806

/-- `Δ[A047855(n)+A003462(n)]` -/
def P10599050107808442625.Spec : Prop :=
  ∀ n, P10599050107808442625.a n = A245806 n

end A245806

/-! ## A245806.P5355581397592492509

`(A155608(n)+1)%A267976(n+1)`
-/

namespace A245806.P5355581397592492509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155608 n + 1) (A267976 (n + 1))

end

end A245806.P5355581397592492509

namespace A245806

/-- `(A155608(n)+1)%A267976(n+1)` -/
def P5355581397592492509.Spec : Prop :=
  ∀ n, P5355581397592492509.a n = A245806 n

end A245806

/-! ## A245806.P4598233920707930652

`(A009964(n)+A000400(n))/A000079(n)`
-/

namespace A245806.P4598233920707930652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009964 n + A000400 n : ℚ) / (A000079 n : ℚ)

end

end A245806.P4598233920707930652

namespace A245806

/-- `(A009964(n)+A000400(n))/A000079(n)` -/
def P4598233920707930652.Spec : Prop :=
  ∀ n, P4598233920707930652.a n = (A245806 n : ℚ)

end A245806

/-!
# A245807: a(n) = 7^n + 10^n.

The programs for A245807, the canonical program `A245807.P9698282039791315515` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245807 has offset 0).

The definition of A245807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+10^n` (program `A245807.P9698282039791315515`, by `A245807.P9698282039791315515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245807.P9698282039791315515

`7^n+10^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245807

/-- `7^n+10^n` -/
def P9698282039791315515.Spec : Prop :=
  ∀ n, (P9698282039791315515.a n : ℤ) = A245807 n

theorem P9698282039791315515.correct : P9698282039791315515.Spec := by
  intro n
  simp only [A245807]

end A245807

/-! ## A245807.P7034988407138005293

`record[A155657(A037213(n))+1]`
-/

namespace A245807.P7034988407138005293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155657 (A037213 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245807.P7034988407138005293

namespace A245807

/-- `record[A155657(A037213(n))+1]` -/
def P7034988407138005293.Spec : Prop :=
  ∀ n, P7034988407138005293.a n = A245807 n

end A245807

/-! ## A245807.P7857801719682184068

`Δ[A023000(n)+A002275(n)]`
-/

namespace A245807.P7857801719682184068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245807.P7857801719682184068

namespace A245807

/-- `Δ[A023000(n)+A002275(n)]` -/
def P7857801719682184068.Spec : Prop :=
  ∀ n, P7857801719682184068.a n = A245807 n

end A245807

/-! ## A245807.P18373998665000758698

`Δ[A047852(n)+A002275(n)]`
-/

namespace A245807.P18373998665000758698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245807.P18373998665000758698

namespace A245807

/-- `Δ[A047852(n)+A002275(n)]` -/
def P18373998665000758698.Spec : Prop :=
  ∀ n, P18373998665000758698.a n = A245807 n

end A245807

/-! ## A245807.P6688150643535419116

`Δ[A047855(n)+A023000(n)]`
-/

namespace A245807.P6688150643535419116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245807.P6688150643535419116

namespace A245807

/-- `Δ[A047855(n)+A023000(n)]` -/
def P6688150643535419116.Spec : Prop :=
  ∀ n, P6688150643535419116.a n = A245807 n

end A245807

/-! ## A245807.P12479980995510456802

`Δ[A047855(n)+A047852(n)]`
-/

namespace A245807.P12479980995510456802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A047852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245807.P12479980995510456802

namespace A245807

/-- `Δ[A047855(n)+A047852(n)]` -/
def P12479980995510456802.Spec : Prop :=
  ∀ n, P12479980995510456802.a n = A245807 n

end A245807

/-! ## A245807.P9993521178503916538

`Δ[A098406(n)+A047852(n)]`
-/

namespace A245807.P9993521178503916538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n + A047852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245807.P9993521178503916538

namespace A245807

/-- `Δ[A098406(n)+A047852(n)]` -/
def P9993521178503916538.Spec : Prop :=
  ∀ n, P9993521178503916538.a n = A245807 n

end A245807

/-! ## A245807.P14983639175889026463

`Δ[A173735(n)+A047852(n)]`
-/

namespace A245807.P14983639175889026463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n + A047852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245807.P14983639175889026463

namespace A245807

/-- `Δ[A173735(n)+A047852(n)]` -/
def P14983639175889026463.Spec : Prop :=
  ∀ n, P14983639175889026463.a n = A245807 n

end A245807

/-! ## A245807.P14000015650031161361

`Δ[A047852(n)+A002276(n)/2]`
-/

namespace A245807.P14000015650031161361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047852 n : ℚ) + (A002276 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245807.P14000015650031161361

namespace A245807

/-- `Δ[A047852(n)+A002276(n)/2]` -/
def P14000015650031161361.Spec : Prop :=
  ∀ n, P14000015650031161361.a n = (A245807 n : ℚ)

end A245807

/-! ## A245807.P16372603062156166175

`round(A248341(n)+A270471(n+1)/2)`
-/

namespace A245807.P16372603062156166175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248341 n : ℚ) + (A270471 (n + 1) : ℚ) / 2)

end

end A245807.P16372603062156166175

namespace A245807

/-- `round(A248341(n)+A270471(n+1)/2)` -/
def P16372603062156166175.Spec : Prop :=
  ∀ n, P16372603062156166175.a n = A245807 n

end A245807

/-! ## A245807.P14072759287839307263

`(A155671(n)+A155656(n))*A001222(A060264(n))`
-/

namespace A245807.P14072759287839307263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155671 n + A155656 n) * A001222 (A060264 n).toNat

end

end A245807.P14072759287839307263

namespace A245807

/-- `(A155671(n)+A155656(n))*A001222(A060264(n))` -/
def P14072759287839307263.Spec : Prop :=
  ∀ n, P14072759287839307263.a n = A245807 n

end A245807

/-!
# A245808: Monoprimatic permutable numbers: Numbers whose decimal digits can be arranged to form exactly one prime number. No leading zeros.

The programs for A245808, there is no canonical definition to state claims against.
-/

/-! ## A245808.P2347428353943267747

`eq[1, A046810(n+1)]+1`
-/

namespace A245808.P2347428353943267747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245808.P2347428353943267747

/-! ## A245808.P7505342953597012766

`eq[n, xor(n, a(A046810(n)))]` with `a(0)=1`
-/

namespace A245808.P7505342953597012766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.xor n (f2 (A046810 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245808.P7505342953597012766

/-! ## A245808.P5286668949926521630

`eq[1, A046810(A028310(n))]`
-/

namespace A245808.P5286668949926521630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245808.P5286668949926521630

/-! ## A245808.P11376506489638557014

`eq[1, A046810(A065033(2*n))]`
-/

namespace A245808.P11376506489638557014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245808.P11376506489638557014

/-!
# A245809: Divisors of 4620.

The programs for A245809, there is no canonical definition to state claims against.
-/

/-! ## A245809.P10938627145175599930

`record[A000026(A051038(n+1))]`
-/

namespace A245809.P10938627145175599930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A051038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245809.P10938627145175599930

/-! ## A245809.P14399988156777585249

`record[A000026(A155182(n+1))]`
-/

namespace A245809.P14399988156777585249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A155182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245809.P14399988156777585249

/-! ## A245809.P322681744676523870

`record[A000026(A178864(n+1))]`
-/

namespace A245809.P322681744676523870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A178864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245809.P322681744676523870

/-! ## A245809.P5569977020846897552

`filter[A178864(n+1), A359834(#)]`
-/

namespace A245809.P5569977020846897552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A245809.P5569977020846897552

/-! ## A245809.P12746970098407412354

`∩[A051038(n+1), A078779(n+1)]`
-/

namespace A245809.P12746970098407412354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245809.P12746970098407412354

/-!
# A245810: Genus of the complete intersection of two hypersurfaces in P^3.

The programs for A245810, there is no canonical definition to state claims against.
-/

/-! ## A245810.P8339855818664170529

`record[A034706(n+1)-A184945(A163253(n+1))]`
-/

namespace A245810.P8339855818664170529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1) - A184945 (A163253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245810.P8339855818664170529

/-! ## A245810.P1049136923600810561

`lt[A221878(A134060(n)), A078880(n+1)]`
-/

namespace A245810.P1049136923600810561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221878 (A134060 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245810.P1049136923600810561

/-! ## A245810.P9705895174431254191

`A034706(A185284(3*n+4)-xor(n, -1))`
-/

namespace A245810.P9705895174431254191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (A185284 (3 * n + 4) - Int.xor (n : ℤ) (-1)).toNat

end

end A245810.P9705895174431254191

/-!
# A245811: Number of primes of the form k^(n+1) - n^k for some k > 1.

The programs for A245811, there is no canonical definition to state claims against.
-/

/-! ## A245811.P9007970711333901924

`A000161(A288663(n)%A235153(n+1))`
-/

namespace A245811.P9007970711333901924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (Int.tmod (A288663 n) (A235153 (n + 1))).toNat

end

end A245811.P9007970711333901924

/-! ## A245811.P10747286423062604969

`C(A212155(2*n+3), A212137(A212124(n+2)))`
-/

namespace A245811.P10747286423062604969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212155 (2 * n + 3)).toNat (A212137 (A212124 (n + 2)).toNat).toNat

end

end A245811.P10747286423062604969

/-! ## A245811.P15981179357445489317

`A033770((2^A020639(n+2))%A135992(n+1))`
-/

namespace A245811.P15981179357445489317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033770 (Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A020639 (n + 2) : ℤ))) (A135992 (n + 1))).toNat

end

end A245811.P15981179357445489317

/-! ## A245811.P11441694616951873396

`A275690(n)%A135840(A275725(n))`
-/

namespace A245811.P11441694616951873396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275690 n) (A135840 (A275725 n).toNat)

end

end A245811.P11441694616951873396

/-! ## A245811.P1324039309328533396

`and(A074064(n), A256554(A207381(n+1)))`
-/

namespace A245811.P1324039309328533396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074064 n) (A256554 (A207381 (n + 1)).toNat)

end

end A245811.P1324039309328533396

/-!
# A245812: Self-inverse permutation of natural numbers: a(0) = 0, a(1) = 1, and for n > 1, if A065620(n) < 0, a(n) = A065621(1+a(-(A065620(n)))), otherwise a(n) = A048724(a(A065620(n)-1)).

The programs for A245812, there is no canonical definition to state claims against.
-/

/-! ## A245812.P11369410395035697761

`A234026(A193231(n))`
-/

namespace A245812.P11369410395035697761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A193231 n).toNat

end

end A245812.P11369410395035697761

/-! ## A245812.P18153468228783718610

`A193231(A234025(n))`
-/

namespace A245812.P18153468228783718610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234025 n).toNat

end

end A245812.P18153468228783718610

/-! ## A245812.P15436512339953697357

`A234027(A234026(n))`
-/

namespace A245812.P15436512339953697357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A234026 n).toNat

end

end A245812.P15436512339953697357

/-! ## A245812.P6766801645712695386

`A234025(A234027(n))`
-/

namespace A245812.P6766801645712695386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A234027 n).toNat

end

end A245812.P6766801645712695386

/-! ## A245812.P14212876558077607444

`A234026(xor(n, A280507(n)))`
-/

namespace A245812.P14212876558077607444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A245812.P14212876558077607444

/-! ## A245812.P5347218741500119028

`A234026(A234613(2*n)/2)`
-/

namespace A245812.P5347218741500119028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (SequenceMachineLib.roundAway ((A234613 (2 * n) : ℚ) / 2)).toNat

end

end A245812.P5347218741500119028

/-! ## A245812.P4298113132599053922

`A234613(2*A234025(n))/2`
-/

namespace A245812.P4298113132599053922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234613 (2 * A234025 n).toNat : ℚ) / 2

end

end A245812.P4298113132599053922

/-! ## A245812.P1626190607040666186

`xor(n, A234612(xor(n, A063946(n))))`
-/

namespace A245812.P1626190607040666186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 (Int.xor (n : ℤ) (A063946 n)).toNat)

end

end A245812.P1626190607040666186

/-! ## A245812.P16921838944572808103

`A234027(A246159(A054429(A234027(2*n+1))))`
-/

namespace A245812.P16921838944572808103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A246159 (A054429 (A234027 (2 * n + 1)).toNat).toNat).toNat

end

end A245812.P16921838944572808103

/-! ## A245812.P3977727902040521221

`A193231(A233275(n)+A233277(n)-A193231(n))`
-/

namespace A245812.P3977727902040521221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233275 n + (A233277 n - A193231 n)).toNat

end

end A245812.P3977727902040521221

/-! ## A245812.P14754065052992221198

`A193231(A233275(n)-(A193231(n)-A233277(n)))`
-/

namespace A245812.P14754065052992221198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233275 n - (A193231 n - A233277 n)).toNat

end

end A245812.P14754065052992221198

/-!
# A245813: Permutation of natural numbers induced when A091205 is restricted to {1} and binary codes for polynomials reducible over GF(2): a(1) = 1, a(n) = A062298(A091205(A091242(n-1))).

The programs for A245813, there is no canonical definition to state claims against.
-/

/-! ## A245813.P4478112708275688449

`A245815(A245820(n+1))`
-/

namespace A245813.P4478112708275688449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245815 (A245820 (n + 1)).toNat

end

end A245813.P4478112708275688449

/-!
# A245814: Permutation of natural numbers induced when A091204 is restricted to nonprime numbers: a(n) = 1+A091245(A091204(A018252(n))).

The programs for A245814, there is no canonical definition to state claims against.
-/

/-! ## A245814.P1681563861353775668

`A245819(A245816(n+1))`
-/

namespace A245814.P1681563861353775668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245819 (A245816 (n + 1)).toNat

end

end A245814.P1681563861353775668

/-! ## A245814.P3665161195490162298

`1+A091245(A091204(A018252(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245814.P3665161195490162298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A091245 (A091204 (A018252 (n + 1)).toNat).toNat

end

end A245814.P3665161195490162298

/-!
# A245815: Permutation of natural numbers induced when A245821 is restricted to nonprime numbers: a(n) = A062298(A245821(A018252(n))).

The programs for A245815, there is no canonical definition to state claims against.
-/

/-! ## A245815.P3395704575367003501

`A245813(A245819(n+1))`
-/

namespace A245815.P3395704575367003501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245813 (A245819 (n + 1)).toNat

end

end A245815.P3395704575367003501

/-! ## A245815.P7702778197857102544

`A062298(A245821(A018252(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245815.P7702778197857102544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A245821 (A018252 (n + 1)).toNat).toNat

end

end A245815.P7702778197857102544

/-! ## A245815.P13510392132504887688

`A062298(A049084(A245821(A007821(n+1))))`
-/

namespace A245815.P13510392132504887688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A049084 (A245821 (A007821 (n + 1)).toNat).toNat).toNat

end

end A245815.P13510392132504887688

/-! ## A245815.P17209499654280514644

`A062298(A049084(A049084(A245821(A049078(n+1)))))`
-/

namespace A245815.P17209499654280514644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A049084 (A049084 (A245821 (A049078 (n + 1)).toNat).toNat).toNat).toNat

end

end A245815.P17209499654280514644

/-!
# A245816: Permutation of natural numbers induced when A245822 is restricted to nonprime numbers: a(n) = A062298(A245822(A018252(n))).

The programs for A245816, there is no canonical definition to state claims against.
-/

/-! ## A245816.P10097454965003993189

`A245820(A245814(n+1))`
-/

namespace A245816.P10097454965003993189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245820 (A245814 (n + 1)).toNat

end

end A245816.P10097454965003993189

/-! ## A245816.P7835405964523822816

`A062298(A245822(A018252(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245816.P7835405964523822816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A245822 (A018252 (n + 1)).toNat).toNat

end

end A245816.P7835405964523822816

/-! ## A245816.P2580904993451854082

`A062298(A049084(A245822(A007821(n+1))))`
-/

namespace A245816.P2580904993451854082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A049084 (A245822 (A007821 (n + 1)).toNat).toNat).toNat

end

end A245816.P2580904993451854082

/-! ## A245816.P9603222134839852973

`A062298(A049084(A049084(A245822(A049078(n+1)))))`
-/

namespace A245816.P9603222134839852973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A049084 (A049084 (A245822 (A049078 (n + 1)).toNat).toNat).toNat).toNat

end

end A245816.P9603222134839852973

/-!
# A245817: Difference in size between rooted trees which are encoded as Matula-Goebel numbers A245821(n) and n: a(n) = A061775(A245821(n)) - A061775(n).

The programs for A245817, there is no canonical definition to state claims against.
-/

/-! ## A245817.P10572120699272641381

`A061775(A245821(n+1))-A061775(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245817.P10572120699272641381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A245821 (n + 1)).toNat - A061775 (n + 1)

end

end A245817.P10572120699272641381

/-! ## A245817.P4039812073406445516

`-A245818(A245821(n+1))`
-/

namespace A245817.P4039812073406445516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A245818 (A245821 (n + 1)).toNat

end

end A245817.P4039812073406445516

/-! ## A245817.P12987338023051971478

`A000007(n+1)-A245818(A245821(n+1))`
-/

namespace A245817.P12987338023051971478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A245818 (A245821 (n + 1)).toNat

end

end A245817.P12987338023051971478

/-! ## A245817.P12810468698641101666

`A196050(A245821(n+1))-A196050(n+1)`
-/

namespace A245817.P12810468698641101666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A245821 (n + 1)).toNat - A196050 (n + 1)

end

end A245817.P12810468698641101666

/-! ## A245817.P6447322166470461619

`C(A071364(n+1)%2, 2)-A245818(A245821(n+1))`
-/

namespace A245817.P6447322166470461619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.tmod (A071364 (n + 1)) 2).toNat 2 : ℤ) - A245818 (A245821 (n + 1)).toNat

end

end A245817.P6447322166470461619

/-! ## A245817.P3241824249965150768

`A020639(60*(n+1))-(A245818(A245821(n+1))+2)`
-/

namespace A245817.P3241824249965150768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (60 * (n + 1)) - (A245818 (A245821 (n + 1)).toNat + 2)

end

end A245817.P3241824249965150768

/-!
# A245818: Difference in size between rooted trees which are encoded with Matula-Goebel numbers A245822(n) and n: a(n) = A061775(A245822(n)) - A061775(n).

The programs for A245818, there is no canonical definition to state claims against.
-/

/-! ## A245818.P1990172189863363831

`A061775(A245822(n+1))-A061775(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245818.P1990172189863363831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A245822 (n + 1)).toNat - A061775 (n + 1)

end

end A245818.P1990172189863363831

/-! ## A245818.P14887577946982089702

`-A245817(A245822(n+1))`
-/

namespace A245818.P14887577946982089702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A245817 (A245822 (n + 1)).toNat

end

end A245818.P14887577946982089702

/-! ## A245818.P61898612139767723

`A196050(A245822(n+1))-A196050(n+1)`
-/

namespace A245818.P61898612139767723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A245822 (n + 1)).toNat - A196050 (n + 1)

end

end A245818.P61898612139767723

/-! ## A245818.P16959766748151472018

`A102283(3*n+2)*A245817(A245822(n+1))`
-/

namespace A245818.P16959766748151472018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (3 * n + 2) * A245817 (A245822 (n + 1)).toNat

end

end A245818.P16959766748151472018

/-! ## A245818.P6465524036693091513

`A036987(A058906(3*n+5))-A245817(A245822(n+1))`
-/

namespace A245818.P6465524036693091513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A058906 (3 * n + 5)).toNat - A245817 (A245822 (n + 1)).toNat

end

end A245818.P6465524036693091513

/-! ## A245818.P10394254978492997014

`A036987(A152947(2*(n+2)))-A245817(A245822(n+1))`
-/

namespace A245818.P10394254978492997014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A152947 (2 * (n + 2))).toNat - A245817 (A245822 (n + 1)).toNat

end

end A245818.P10394254978492997014

/-!
# A245819: Permutation of natural numbers induced when A245703 is restricted to nonprime numbers: a(n) = 1+A091245(A245703(A018252(n))).

The programs for A245819, there is no canonical definition to state claims against.
-/

/-! ## A245819.P17472416336541331513

`A245814(A245815(n+1))`
-/

namespace A245819.P17472416336541331513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245814 (A245815 (n + 1)).toNat

end

end A245819.P17472416336541331513

/-! ## A245819.P5123728496176247077

`1+A091226(A245703(A008578(n+1)))`
-/

namespace A245819.P5123728496176247077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A091226 (A245703 (A008578 (n + 1)).toNat).toNat

end

end A245819.P5123728496176247077

/-! ## A245819.P16487576487922660359

`1+A091245(A245703(A018252(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245819.P16487576487922660359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A091245 (A245703 (A018252 (n + 1)).toNat).toNat

end

end A245819.P16487576487922660359

/-! ## A245819.P10543238014114559856

`A245703(A028310(n))+A057427(n)`
-/

namespace A245819.P10543238014114559856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A028310 n).toNat + A057427 n

end

end A245819.P10543238014114559856

/-! ## A245819.P6967115516950533283

`A245703(A065033(2*n))+A057427(n)`
-/

namespace A245819.P6967115516950533283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A065033 (2 * n)).toNat + A057427 n

end

end A245819.P6967115516950533283

/-! ## A245819.P2022148945429667534

`A245703(A065033(2*n))-A057428(n)`
-/

namespace A245819.P2022148945429667534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A065033 (2 * n)).toNat - A057428 n

end

end A245819.P2022148945429667534

/-! ## A245819.P12304662822738795743

`A245703(A065033(2*n))+A019426(2*n)`
-/

namespace A245819.P12304662822738795743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A065033 (2 * n)).toNat + A019426 (2 * n)

end

end A245819.P12304662822738795743

/-! ## A245819.P10298845966217373709

`A245703(A065033(2*n))%A000217(n+1)+1`
-/

namespace A245819.P10298845966217373709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245703 (A065033 (2 * n)).toNat) (A000217 (n + 1)) + 1

end

end A245819.P10298845966217373709

/-!
# A245820: Permutation of natural numbers induced when A245704 is restricted to {1} and binary codes for polynomials reducible over GF(2): a(1) = 1, a(n) = A062298(A245704(A091242(n-1))).

The programs for A245820, there is no canonical definition to state claims against.
-/

/-! ## A245820.P11662393647919943084

`A245816(A245813(n+1))`
-/

namespace A245820.P11662393647919943084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245816 (A245813 (n + 1)).toNat

end

end A245820.P11662393647919943084

/-! ## A245820.P17684165325990007869

`A245704(A028310(n))+A057427(n)`
-/

namespace A245820.P17684165325990007869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A028310 n).toNat + A057427 n

end

end A245820.P17684165325990007869

/-! ## A245820.P7914540461633223856

`A245704(A028310(n))-A057428(n)`
-/

namespace A245820.P7914540461633223856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A028310 n).toNat - A057428 n

end

end A245820.P7914540461633223856

/-! ## A245820.P18210030575502387094

`A245704(A065033(2*n))%(n+1)²+1`
-/

namespace A245820.P18210030575502387094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245704 (A065033 (2 * n)).toNat) ((n + 1) ^ 2 : ℤ) + 1

end

end A245820.P18210030575502387094

/-! ## A245820.P16285536277502079009

`A245704(A065033(2*n))+A019429(2*n)`
-/

namespace A245820.P16285536277502079009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A065033 (2 * n)).toNat + A019429 (2 * n)

end

end A245820.P16285536277502079009

/-! ## A245820.P10236846579207643456

`A245704(n)+a(A008683(A065036(n+1)))` with `a(0)=1`
-/

namespace A245820.P10236846579207643456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245704 n + a (A008683 (A065036 (n + 1)).toNat).toNat

end

end A245820.P10236846579207643456

/-! ## A245820.P3733347429433493209

`A003963(p?[A026234(A245704(n+1))])`
-/

namespace A245820.P3733347429433493209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A245704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245820.P3733347429433493209

/-!
# A245821: Permutation of natural numbers: a(n) = A091205(A245703(n)).

The programs for A245821, there is no canonical definition to state claims against.
-/

/-! ## A245821.P6345480853813193126

`A091205(A245703(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245821.P6345480853813193126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (A245703 (n + 1)).toNat

end

end A245821.P6345480853813193126

/-! ## A245821.P7154791550356628868

`A091205(A245819(n+2)-1)`
-/

namespace A245821.P7154791550356628868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (A245819 (n + 2) - 1).toNat

end

end A245821.P7154791550356628868

/-! ## A245821.P11580629036580129709

`A106447(A245819(n+2)-1)`
-/

namespace A245821.P11580629036580129709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106447 (A245819 (n + 2) - 1).toNat

end

end A245821.P11580629036580129709

/-! ## A245821.P589743339891342237

`A106447(lcm((-1)^n, A245703(n+1)))`
-/

namespace A245821.P589743339891342237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106447 (Int.lcm ((-1) ^ n) (A245703 (n + 1)))

end

end A245821.P589743339891342237

/-!
# A245822: Permutation of natural numbers: a(n) = A245704(A091204(n)).

The programs for A245822, there is no canonical definition to state claims against.
-/

/-! ## A245822.P263831441613684545

`A245704(A091204(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245822.P263831441613684545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A091204 (n + 1)).toNat

end

end A245822.P263831441613684545

/-! ## A245822.P8737979197437266695

`A245820(A091204(n+1)+1)-1`
-/

namespace A245822.P8737979197437266695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245820 (A091204 (n + 1) + 1).toNat - 1

end

end A245822.P8737979197437266695

/-! ## A245822.P13934916466181797031

`A245704(A106446(A091205(A106446(n+1))))`
-/

namespace A245822.P13934916466181797031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A106446 (A091205 (A106446 (n + 1)).toNat).toNat).toNat

end

end A245822.P13934916466181797031

/-!
# A245823: Fixed points of A245821 and A245822.

The programs for A245823, there is no canonical definition to state claims against.
-/

/-! ## A245823.P11271484441661771840

`eq[n, A245821(round(sqrt(n²+1)))]`
-/

namespace A245823.P11271484441661771840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245821 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245823.P11271484441661771840

/-! ## A245823.P7326992213107706916

`eq[n, A245822(round(sqrt(n²+1)))]`
-/

namespace A245823.P7326992213107706916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245822 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245823.P7326992213107706916

/-! ## A245823.P10261130605164706780

`eq[n+1, A245821(n+1)]+1`
-/

namespace A245823.P10261130605164706780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245823.P10261130605164706780

/-! ## A245823.P14466951754567109932

`eq[n+1, A245822(n+1)]+1`
-/

namespace A245823.P14466951754567109932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245823.P14466951754567109932

/-! ## A245823.P10142006409686570861

`eq[A091204(n), A245703(A028310(n))]`
-/

namespace A245823.P10142006409686570861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245823.P10142006409686570861

/-!
# A245824: Triangle read by rows: row n>=1 contains in increasing order the Matula numbers of the rooted binary trees with n leaves.

The programs for A245824, there is no canonical definition to state claims against.
-/

/-! ## A245824.P4842745425439569660

`∏{e}[3^n, A111299(#)]`
-/

namespace A245824.P4842745425439569660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A111299 (Nat.factorization (f1 n) p)

end

end A245824.P4842745425439569660

/-! ## A245824.P4497921060938336789

`A111299(n%A007918(2*a(n-1)))` with `a(0)=1`
-/

namespace A245824.P4497921060938336789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111299 (Int.tmod (n : ℤ) (A007918 (2 * a (n - 1)).toNat)).toNat

end

end A245824.P4497921060938336789

/-! ## A245824.P5363408899298749466

`A111299(A028310(n))%A140261(3*n)`
-/

namespace A245824.P5363408899298749466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111299 (A028310 n).toNat) (A140261 (3 * n))

end

end A245824.P5363408899298749466

/-! ## A245824.P1429555004862619351

`record[A061395(A111299(n+1))]`
-/

namespace A245824.P1429555004862619351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A111299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245824.P1429555004862619351

/-! ## A245824.P1072626028939264757

`record[A127302(A127289(n))]`
-/

namespace A245824.P1072626028939264757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 (A127289 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245824.P1072626028939264757

/-!
# A245825: Triangle read by rows: T(n,k) is the number of the vertices of the Fibonacci cube G_n that have degree k (0<=k<=n).

The programs for A245825, there is no canonical definition to state claims against.
-/

/-! ## A245825.P3568835105590158998

`A165560(A126869(n))+A057150(n+1)`
-/

namespace A245825.P3568835105590158998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A126869 n).toNat + A057150 (n + 1)

end

end A245825.P3568835105590158998

/-! ## A245825.P10744698007932787632

`A060130(A120987(n)^A261440(n))`
-/

namespace A245825.P10744698007932787632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (SequenceMachineLib.roundAway ((A120987 n : ℚ) ^ (A261440 n : ℤ))).toNat

end

end A245825.P10744698007932787632

/-! ## A245825.P17152676806925214155

`A192064(A350227(n))`
-/

namespace A245825.P17152676806925214155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192064 (A350227 n).toNat

end

end A245825.P17152676806925214155

/-! ## A245825.P11175370617773535518

`A366793(A148039(n+1))`
-/

namespace A245825.P11175370617773535518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366793 (A148039 (n + 1)).toNat

end

end A245825.P11175370617773535518

/-! ## A245825.P8009781861318626772

`A322338(A072883(n+1))+A026729(n)`
-/

namespace A245825.P8009781861318626772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A072883 (n + 1)).toNat + A026729 n

end

end A245825.P8009781861318626772

/-!
# A245827: Szeged index of the grid graph P_3 X P_n.

The programs for A245827, the canonical program `A245827.P16836510513253362876` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245827 has offset 1).

The definition of A245827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245827.P7820635579494300528

`1/2*(n+1)*(17*(n+1)²-9)`
-/

namespace A245827.P7820635579494300528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (n + 1 : ℚ) * ((17 * (n + 1) ^ 2 : ℤ) - 9 : ℚ)

end

end A245827.P7820635579494300528

namespace A245827

/-- `1/2*(n+1)*(17*(n+1)²-9)` -/
def P7820635579494300528.Spec : Prop :=
  ∀ n, P7820635579494300528.a n = (A245827 (n + 1) : ℚ)

theorem P7820635579494300528.correct : P7820635579494300528.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A245827, Nat.add_sub_cancel, A245827.P7820635579494300528.a, A245827.P16836510513253362876.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A245827, Nat.add_sub_cancel, A245827.P7820635579494300528.a, A245827.P16836510513253362876.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A245827

/-! ## A245827.P16836510513253362876

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=59, a(2)=216, a(3)=526`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245827

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16836510513253362876.Spec : Prop :=
  ∀ n, P16836510513253362876.a n = A245827 (n + 1)

theorem P16836510513253362876.correct : P16836510513253362876.Spec := by
  intro n
  simp only [A245827, Nat.add_sub_cancel]

end A245827

/-! ## A245827.P11313262811854265908

`∑[∑[n]-2]+∑[A177059(n)]`
-/

namespace A245827.P11313262811854265908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A245827.P11313262811854265908

namespace A245827

/-- `∑[∑[n]-2]+∑[A177059(n)]` -/
def P11313262811854265908.Spec : Prop :=
  ∀ n, P11313262811854265908.a n = A245827 (n + 1)

end A245827

/-! ## A245827.P17922605709827568413

`(n+1)^3+3*A063522(n+1)`
-/

namespace A245827.P17922605709827568413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) + 3 * A063522 (n + 1)

end

end A245827.P17922605709827568413

namespace A245827

/-- `(n+1)^3+3*A063522(n+1)` -/
def P17922605709827568413.Spec : Prop :=
  ∀ n, P17922605709827568413.a n = A245827 (n + 1)

end A245827

/-! ## A245827.P5000131649589772787

`A144138(n+1)+∑[A045943(n)]`
-/

namespace A245827.P5000131649589772787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144138 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245827.P5000131649589772787

namespace A245827

/-- `A144138(n+1)+∑[A045943(n)]` -/
def P5000131649589772787.Spec : Prop :=
  ∀ n, P5000131649589772787.a n = A245827 (n + 1)

end A245827

/-! ## A245827.P13346632706085593137

`A144138(n+1)+n*A000217(n+1)`
-/

namespace A245827.P13346632706085593137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144138 (n + 1) + (n : ℤ) * A000217 (n + 1)

end

end A245827.P13346632706085593137

namespace A245827

/-- `A144138(n+1)+n*A000217(n+1)` -/
def P13346632706085593137.Spec : Prop :=
  ∀ n, P13346632706085593137.a n = A245827 (n + 1)

end A245827

/-! ## A245827.P308781478905364788

`A046092(2*n+1)+n*A022275(n+1)`
-/

namespace A245827.P308781478905364788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (2 * n + 1) + (n : ℤ) * A022275 (n + 1)

end

end A245827.P308781478905364788

namespace A245827

/-- `A046092(2*n+1)+n*A022275(n+1)` -/
def P308781478905364788.Spec : Prop :=
  ∀ n, P308781478905364788.a n = A245827 (n + 1)

end A245827

/-!
# A245828: Szeged index of the grid graph P_n X P_n.

The programs for A245828, the canonical program `A245828.P11004826347611161343` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245828 has offset 1).

The definition of A245828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245828.P11004826347611161343

`(n+1)^4*((n+1)²-1)/3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245828

/-- `(n+1)^4*((n+1)²-1)/3` -/
def P11004826347611161343.Spec : Prop :=
  ∀ n, P11004826347611161343.a n = (A245828 (n + 1) : ℚ)

end A245828

/-! ## A245828.P12832047680720893930

`4*A208954(n+1)`
-/

namespace A245828.P12832047680720893930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A208954 (n + 1)

end

end A245828.P12832047680720893930

namespace A245828

/-- `4*A208954(n+1)` -/
def P12832047680720893930.Spec : Prop :=
  ∀ n, P12832047680720893930.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P3663339012736109926

`lcm(2, (n+1)²*∑[∑[(2*n)²]])`
-/

namespace A245828.P3663339012736109926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A245828.P3663339012736109926

namespace A245828

/-- `lcm(2, (n+1)²*∑[∑[(2*n)²]])` -/
def P3663339012736109926.Spec : Prop :=
  ∀ n, (P3663339012736109926.a n : ℤ) = A245828 (n + 1)

end A245828

/-! ## A245828.P10942488419182516051

`(n+1)*A143945(n+1)`
-/

namespace A245828.P10942488419182516051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143945 (n + 1)

end

end A245828.P10942488419182516051

namespace A245828

/-- `(n+1)*A143945(n+1)` -/
def P10942488419182516051.Spec : Prop :=
  ∀ n, P10942488419182516051.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P17518112662926668977

`(n+1)²*∑[A002492(n)]`
-/

namespace A245828.P17518112662926668977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245828.P17518112662926668977

namespace A245828

/-- `(n+1)²*∑[A002492(n)]` -/
def P17518112662926668977.Spec : Prop :=
  ∀ n, P17518112662926668977.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P14828111838301857960

`(n+1)/3*A133754(n+1)`
-/

namespace A245828.P14828111838301857960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A133754 (n + 1) : ℚ)

end

end A245828.P14828111838301857960

namespace A245828

/-- `(n+1)/3*A133754(n+1)` -/
def P14828111838301857960.Spec : Prop :=
  ∀ n, P14828111838301857960.a n = (A245828 (n + 1) : ℚ)

end A245828

/-! ## A245828.P13657226852519536158

`A109764(n+1)+∑[∑[2*n²]]`
-/

namespace A245828.P13657226852519536158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109764 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A245828.P13657226852519536158

namespace A245828

/-- `A109764(n+1)+∑[∑[2*n²]]` -/
def P13657226852519536158.Spec : Prop :=
  ∀ n, P13657226852519536158.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P10895218330840518499

`(A014820(n)-(n+1)²)*(n+1)²`
-/

namespace A245828.P10895218330840518499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014820 n - ((n + 1) ^ 2 : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A245828.P10895218330840518499

namespace A245828

/-- `(A014820(n)-(n+1)²)*(n+1)²` -/
def P10895218330840518499.Spec : Prop :=
  ∀ n, P10895218330840518499.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P7823619837647042620

`(A000578(n)-A146298(n))*A000578(n+1)`
-/

namespace A245828.P7823619837647042620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - A146298 n) * A000578 (n + 1)

end

end A245828.P7823619837647042620

namespace A245828

/-- `(A000578(n)-A146298(n))*A000578(n+1)` -/
def P7823619837647042620.Spec : Prop :=
  ∀ n, P7823619837647042620.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P14014836871977908231

`(A100156(n+1)+A000292(n+1))*A000292(n)`
-/

namespace A245828.P14014836871977908231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100156 (n + 1) + A000292 (n + 1)) * A000292 n

end

end A245828.P14014836871977908231

namespace A245828

/-- `(A100156(n+1)+A000292(n+1))*A000292(n)` -/
def P14014836871977908231.Spec : Prop :=
  ∀ n, P14014836871977908231.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P1767071082150602695

`(A173196(n+1)+A002717(n))*A000578(n+1)`
-/

namespace A245828.P1767071082150602695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173196 (n + 1) + A002717 n) * A000578 (n + 1)

end

end A245828.P1767071082150602695

namespace A245828

/-- `(A173196(n+1)+A002717(n))*A000578(n+1)` -/
def P1767071082150602695.Spec : Prop :=
  ∀ n, P1767071082150602695.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P11767395599248102544

`(A006331(n+1)-A006331(n))*A008911(n+1)`
-/

namespace A245828.P11767395599248102544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006331 (n + 1) - A006331 n) * A008911 (n + 1)

end

end A245828.P11767395599248102544

namespace A245828

/-- `(A006331(n+1)-A006331(n))*A008911(n+1)` -/
def P11767395599248102544.Spec : Prop :=
  ∀ n, P11767395599248102544.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P940290524695340315

`n/3*A101362(n+1)`
-/

namespace A245828.P940290524695340315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A101362 (n + 1) : ℚ)

end

end A245828.P940290524695340315

namespace A245828

/-- `n/3*A101362(n+1)` -/
def P940290524695340315.Spec : Prop :=
  ∀ n, P940290524695340315.a n = (A245828 (n + 1) : ℚ)

end A245828

/-! ## A245828.P17971219497248372955

`(n+1)²*A112742(n+1)`
-/

namespace A245828.P17971219497248372955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A112742 (n + 1)

end

end A245828.P17971219497248372955

namespace A245828

/-- `(n+1)²*A112742(n+1)` -/
def P17971219497248372955.Spec : Prop :=
  ∀ n, P17971219497248372955.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P10272028299358186498

`A001105(n+1)*A008911(n+1)`
-/

namespace A245828.P10272028299358186498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) * A008911 (n + 1)

end

end A245828.P10272028299358186498

namespace A245828

/-- `A001105(n+1)*A008911(n+1)` -/
def P10272028299358186498.Spec : Prop :=
  ∀ n, P10272028299358186498.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P17066321875778602340

`(A002378(n+1)+A002378(n))*A008911(n+1)`
-/

namespace A245828.P17066321875778602340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) + A002378 n) * A008911 (n + 1)

end

end A245828.P17066321875778602340

namespace A245828

/-- `(A002378(n+1)+A002378(n))*A008911(n+1)` -/
def P17066321875778602340.Spec : Prop :=
  ∀ n, P17066321875778602340.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P13289747913706670214

`(A005900(n+1)-A167875(n))*A000578(n+1)`
-/

namespace A245828.P13289747913706670214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005900 (n + 1) - A167875 n) * A000578 (n + 1)

end

end A245828.P13289747913706670214

namespace A245828

/-- `(A005900(n+1)-A167875(n))*A000578(n+1)` -/
def P13289747913706670214.Spec : Prop :=
  ∀ n, P13289747913706670214.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P13300545987765200746

`(A004126(n+1)-A004068(n+1))*A000578(n+1)`
-/

namespace A245828.P13300545987765200746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004126 (n + 1) - A004068 (n + 1)) * A000578 (n + 1)

end

end A245828.P13300545987765200746

namespace A245828

/-- `(A004126(n+1)-A004068(n+1))*A000578(n+1)` -/
def P13300545987765200746.Spec : Prop :=
  ∀ n, P13300545987765200746.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P9326643045961497090

`(A004188(n+1)-A004126(n+1))*A000578(n+1)`
-/

namespace A245828.P9326643045961497090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004188 (n + 1) - A004126 (n + 1)) * A000578 (n + 1)

end

end A245828.P9326643045961497090

namespace A245828

/-- `(A004188(n+1)-A004126(n+1))*A000578(n+1)` -/
def P9326643045961497090.Spec : Prop :=
  ∀ n, P9326643045961497090.a n = A245828 (n + 1)

end A245828

/-! ## A245828.P14017366306303564678

`(A004467(n+1)-A004188(n+1))*A000578(n+1)`
-/

namespace A245828.P14017366306303564678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004467 (n + 1) - A004188 (n + 1)) * A000578 (n + 1)

end

end A245828.P14017366306303564678

namespace A245828

/-- `(A004467(n+1)-A004188(n+1))*A000578(n+1)` -/
def P14017366306303564678.Spec : Prop :=
  ∀ n, P14017366306303564678.a n = A245828 (n + 1)

end A245828

/-!
# A245830: The Szeged index of a benzenoid consisting of a linear chain of n hexagons.

The programs for A245830, the canonical program `A245830.P1640966138292522273` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245830 has offset 1).

The definition of A245830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245830.P1640966138292522273

`(44*(n+1)^3+72*(n+1)²+43*(n+1)+3)/3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245830

/-- `(44*(n+1)^3+72*(n+1)²+43*(n+1)+3)/3` -/
def P1640966138292522273.Spec : Prop :=
  ∀ n, P1640966138292522273.a n = (A245830 (n + 1) : ℚ)

end A245830

/-! ## A245830.P10524095830578772674

`A050441(2*n+3)+4*(n+1)`
-/

namespace A245830.P10524095830578772674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050441 (2 * n + 3) + (4 * (n + 1) : ℤ)

end

end A245830.P10524095830578772674

namespace A245830

/-- `A050441(2*n+3)+4*(n+1)` -/
def P10524095830578772674.Spec : Prop :=
  ∀ n, P10524095830578772674.a n = A245830 (n + 1)

end A245830

/-! ## A245830.P2559578541090883137

`A004467(2*n+3)+∑[4*n+7]`
-/

namespace A245830.P2559578541090883137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004467 (2 * n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A245830.P2559578541090883137

namespace A245830

/-- `A004467(2*n+3)+∑[4*n+7]` -/
def P2559578541090883137.Spec : Prop :=
  ∀ n, P2559578541090883137.a n = A245830 (n + 1)

end A245830

/-! ## A245830.P15150074773272263796

`A027379(2*(n+1))+A004467(2*n+3)`
-/

namespace A245830.P15150074773272263796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (2 * (n + 1)) + A004467 (2 * n + 3)

end

end A245830.P15150074773272263796

namespace A245830

/-- `A027379(2*(n+1))+A004467(2*n+3)` -/
def P15150074773272263796.Spec : Prop :=
  ∀ n, P15150074773272263796.a n = A245830 (n + 1)

end A245830

/-! ## A245830.P13773699087576955882

`A034856(2*n+3)+∑[A010003(2*(n+1))]`
-/

namespace A245830.P13773699087576955882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245830.P13773699087576955882

namespace A245830

/-- `A034856(2*n+3)+∑[A010003(2*(n+1))]` -/
def P13773699087576955882.Spec : Prop :=
  ∀ n, P13773699087576955882.a n = A245830 (n + 1)

end A245830

/-! ## A245830.P5593475522169383851

`A132112(2*n+3)-((2*(n+1))²+A000217(2*(n+2)))`
-/

namespace A245830.P5593475522169383851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 (2 * n + 3) - (((2 * (n + 1)) ^ 2 : ℤ) + A000217 (2 * (n + 2)))

end

end A245830.P5593475522169383851

namespace A245830

/-- `A132112(2*n+3)-((2*(n+1))²+A000217(2*(n+2)))` -/
def P5593475522169383851.Spec : Prop :=
  ∀ n, P5593475522169383851.a n = A245830 (n + 1)

end A245830

/-!
# A245831: The Szeged index of the coronene/circumcoronene benzenoid H_k (see Fig. 5 of the Gutman & Klavzar reference or Fig. 5.7 of the Diudea et al. reference).

The programs for A245831, the canonical program `A245831.P6967709227559345976` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245831 has offset 1).

The definition of A245831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245831.P6967709227559345976

`54*(n+1)^6-3/2*(n+1)^4+3/2*(n+1)²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245831

/-- `54*(n+1)^6-3/2*(n+1)^4+3/2*(n+1)²` -/
def P6967709227559345976.Spec : Prop :=
  ∀ n, P6967709227559345976.a n = (A245831 (n + 1) : ℚ)

end A245831

/-!
# A245833: The Szeged index of the triangle-shaped benzenoid T_n (see Fig. 5.7 of the Diudea et al. reference).

The programs for A245833, the canonical program `A245833.P7085889746175364683` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245833 has offset 1).

The definition of A245833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245833.P7085889746175364683

`((n+1)^6+12*(n+1)^5+49*(n+1)^4+84*(n+1)^3+58*(n+1)²+12*(n+1))/4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245833

/-- `((n+1)^6+12*(n+1)^5+49*(n+1)^4+84*(n+1)^3+58*(n+1)²+12*(n+1))/4` -/
def P7085889746175364683.Spec : Prop :=
  ∀ n, P7085889746175364683.a n = (A245833 (n + 1) : ℚ)

end A245833

/-! ## A245833.P4410231204776485318

`∑[∑[9*(n+1)]]*A005286(n+1)`
-/

namespace A245833.P4410231204776485318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005286 (n + 1)

end

end A245833.P4410231204776485318

namespace A245833

/-- `∑[∑[9*(n+1)]]*A005286(n+1)` -/
def P4410231204776485318.Spec : Prop :=
  ∀ n, P4410231204776485318.a n = A245833 (n + 1)

end A245833

/-! ## A245833.P1628580835112993390

`A028881(n+4)*A033487(n+1)`
-/

namespace A245833.P1628580835112993390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (n + 4) * A033487 (n + 1)

end

end A245833.P1628580835112993390

namespace A245833

/-- `A028881(n+4)*A033487(n+1)` -/
def P1628580835112993390.Spec : Prop :=
  ∀ n, P1628580835112993390.a n = A245833 (n + 1)

end A245833

/-! ## A245833.P6156494284306693901

`∑[A027468(n+2)*A101986(n+1)]`
-/

namespace A245833.P6156494284306693901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 (n + 2) * A101986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245833.P6156494284306693901

namespace A245833

/-- `∑[A027468(n+2)*A101986(n+1)]` -/
def P6156494284306693901.Spec : Prop :=
  ∀ n, P6156494284306693901.a n = A245833 (n + 1)

end A245833

/-! ## A245833.P10540365298401687926

`A000217(A000096(n+1))*A154575(n+1)`
-/

namespace A245833.P10540365298401687926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000096 (n + 1)).toNat * A154575 (n + 1)

end

end A245833.P10540365298401687926

namespace A245833

/-- `A000217(A000096(n+1))*A154575(n+1)` -/
def P10540365298401687926.Spec : Prop :=
  ∀ n, P10540365298401687926.a n = A245833 (n + 1)

end A245833

/-! ## A245833.P3884129213471506347

`A002378(A000096(n+1))*A028881(n+4)`
-/

namespace A245833.P3884129213471506347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000096 (n + 1)).toNat * A028881 (n + 4)

end

end A245833.P3884129213471506347

namespace A245833

/-- `A002378(A000096(n+1))*A028881(n+4)` -/
def P3884129213471506347.Spec : Prop :=
  ∀ n, P3884129213471506347.a n = A245833 (n + 1)

end A245833

/-!
# A245834: E.g.f.: exp( x*(1 + exp(3*x)) ).

The programs for A245834, there is no canonical definition to state claims against.
-/

/-! ## A245834.P14776887044449513000

`A211863(2^n-(C(n, 3)+n)+C(n, 2)+n²)`
-/

namespace A245834.P14776887044449513000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211863 ((2 ^ n : ℤ) - (Nat.choose n 3 + n : ℤ) + (Nat.choose n 2 + n ^ 2 : ℤ)).toNat

end

end A245834.P14776887044449513000

/-!
# A245835: E.g.f.: exp( x*(2 + exp(3*x)) ).

The programs for A245835, there is no canonical definition to state claims against.
-/

/-! ## A245835.P14311038034382186186

`(n+3)*A052123(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A245835.P14311038034382186186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 3 : ℤ) * A052123 (a (n - 1)).toNat

end

end A245835.P14311038034382186186

/-!
# A245837: (0,1)-sequence forming an 10 X 14 rectangle, read by rows, from an illustration ("Barcode Flag") by Christian Tönsmann, art director of Süddeutsche Zeitung.

The programs for A245837, there is no canonical definition to state claims against.
-/

/-! ## A245837.P453093303185854984

`A187976(A005818(n+1)*A166304(n))`
-/

namespace A245837.P453093303185854984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A005818 (n + 1) * A166304 n).toNat

end

end A245837.P453093303185854984

/-! ## A245837.P9269711544080655798

`A164349(and(A006257(n+1)^3, A000108(n+1)))`
-/

namespace A245837.P9269711544080655798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (Int.land (A006257 (n + 1) ^ 3) (A000108 (n + 1))).toNat

end

end A245837.P9269711544080655798

/-! ## A245837.P13020423192296980960

`A003849(A093921(n+1)*A268448(n+1))`
-/

namespace A245837.P13020423192296980960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A093921 (n + 1) * A268448 (n + 1)).toNat

end

end A245837.P13020423192296980960

/-! ## A245837.P7417289678373997419

`A038587(A119712(n))%2`
-/

namespace A245837.P7417289678373997419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038587 (A119712 n).toNat) 2

end

end A245837.P7417289678373997419

/-! ## A245837.P8692244344592323216

`A285136(A000040(p?[A163267(n)]))`
-/

namespace A245837.P8692244344592323216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A245837.P8692244344592323216

/-!
# A245838: Arithmetic derivative of (3*n + 1), n >= 1, (A016777)'.

The programs for A245838, the canonical program `A245838.P8667444233947326687` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245838 has offset 1).

The definition of A245838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245838.P8667444233947326687

`A003415(A016777(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245838

/-- `A003415(A016777(n+1))` -/
def P8667444233947326687.Spec : Prop :=
  ∀ n, P8667444233947326687.a n = A245838 (n + 1)

theorem P8667444233947326687.correct : P8667444233947326687.Spec := by
  intro n
  simp only [A245838, Nat.add_sub_cancel]

end A245838

/-! ## A245838.P16336548416415351114

`∑{d}[3*n+4, A300251(#)]`
-/

namespace A245838.P16336548416415351114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A245838.P16336548416415351114

namespace A245838

/-- `∑{d}[3*n+4, A300251(#)]` -/
def P16336548416415351114.Spec : Prop :=
  ∀ n, P16336548416415351114.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P14676907639231528758

`A342413(3*n+4)*A342414(3*n+4)`
-/

namespace A245838.P14676907639231528758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342413 (3 * n + 4) * A342414 (3 * n + 4)

end

end A245838.P14676907639231528758

namespace A245838

/-- `A342413(3*n+4)*A342414(3*n+4)` -/
def P14676907639231528758.Spec : Prop :=
  ∀ n, P14676907639231528758.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P7561475506334346874

`A003415(3*n+4)`
-/

namespace A245838.P7561475506334346874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * n + 4)

end

end A245838.P7561475506334346874

namespace A245838

/-- `A003415(3*n+4)` -/
def P7561475506334346874.Spec : Prop :=
  ∀ n, P7561475506334346874.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P6427689236122614848

`∑[Δ[A129283(3*n+1)]-3]`
-/

namespace A245838.P6427689236122614848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245838.P6427689236122614848

namespace A245838

/-- `∑[Δ[A129283(3*n+1)]-3]` -/
def P6427689236122614848.Spec : Prop :=
  ∀ n, P6427689236122614848.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P4738217352688248126

`A168036(3*n+4)+3*n+4`
-/

namespace A245838.P4738217352688248126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (3 * n + 4) + (3 * n + 4 : ℤ)

end

end A245838.P4738217352688248126

namespace A245838

/-- `A168036(3*n+4)+3*n+4` -/
def P4738217352688248126.Spec : Prop :=
  ∀ n, P4738217352688248126.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P15840155279783272795

`A129283(3*n+4)-(3*n+4)`
-/

namespace A245838.P15840155279783272795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (3 * n + 4) - (3 * n + 4 : ℤ)

end

end A245838.P15840155279783272795

namespace A245838

/-- `A129283(3*n+4)-(3*n+4)` -/
def P15840155279783272795.Spec : Prop :=
  ∀ n, P15840155279783272795.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P17706615571896197463

`A319703(6*n+8)`
-/

namespace A245838.P17706615571896197463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (6 * n + 8)

end

end A245838.P17706615571896197463

namespace A245838

/-- `A319703(6*n+8)` -/
def P17706615571896197463.Spec : Prop :=
  ∀ n, P17706615571896197463.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P411317936647980815

`A068512(A016933(n+1))`
-/

namespace A245838.P411317936647980815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (A016933 (n + 1)).toNat

end

end A245838.P411317936647980815

namespace A245838

/-- `A068512(A016933(n+1))` -/
def P411317936647980815.Spec : Prop :=
  ∀ n, P411317936647980815.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P15130280453077508492

`A068512(A016957(n+1)-2)`
-/

namespace A245838.P15130280453077508492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (A016957 (n + 1) - 2).toNat

end

end A245838.P15130280453077508492

namespace A245838

/-- `A068512(A016957(n+1)-2)` -/
def P15130280453077508492.Spec : Prop :=
  ∀ n, P15130280453077508492.a n = A245838 (n + 1)

end A245838

/-! ## A245838.P11758429223913780746

`A003415(A016789(n)+2)%A249319(n+1)`
-/

namespace A245838.P11758429223913780746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A016789 n + 2).toNat) (A249319 (n + 1))

end

end A245838.P11758429223913780746

namespace A245838

/-- `A003415(A016789(n)+2)%A249319(n+1)` -/
def P11758429223913780746.Spec : Prop :=
  ∀ n, P11758429223913780746.a n = A245838 (n + 1)

end A245838

/-!
# A245839: Arithmetic derivative of (3*n + 2).

The programs for A245839, the canonical program `A245839.P14228716003290856880` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245839 has offset 1).

The definition of A245839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245839.P14228716003290856880

`∑{d}[3*n+5, A300251(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245839

/-- `∑{d}[3*n+5, A300251(#)]` -/
def P14228716003290856880.Spec : Prop :=
  ∀ n, P14228716003290856880.a n = A245839 (n + 1)

theorem P14228716003290856880.correct : P14228716003290856880.Spec := by
  intro n
  simp only [A245839, Nat.add_sub_cancel]

end A245839

/-! ## A245839.P831512854298051359

`A348497(3*n+5)`
-/

namespace A245839.P831512854298051359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 (3 * n + 5)

end

end A245839.P831512854298051359

namespace A245839

/-- `A348497(3*n+5)` -/
def P831512854298051359.Spec : Prop :=
  ∀ n, P831512854298051359.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P16406413787363866792

`A003415(3*n+5)`
-/

namespace A245839.P16406413787363866792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * n + 5)

end

end A245839.P16406413787363866792

namespace A245839

/-- `A003415(3*n+5)` -/
def P16406413787363866792.Spec : Prop :=
  ∀ n, P16406413787363866792.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P8600503770471141254

`A168036(2*n+5+n)+2*n+5+n`
-/

namespace A245839.P8600503770471141254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (2 * n + 5 + n) + (2 * n + 5 + n : ℤ)

end

end A245839.P8600503770471141254

namespace A245839

/-- `A168036(2*n+5+n)+2*n+5+n` -/
def P8600503770471141254.Spec : Prop :=
  ∀ n, P8600503770471141254.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P2786420694267877750

`gcd(A000038(n), A003415(A016789(n+1)))`
-/

namespace A245839.P2786420694267877750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A003415 (A016789 (n + 1)).toNat)

end

end A245839.P2786420694267877750

namespace A245839

/-- `gcd(A000038(n), A003415(A016789(n+1)))` -/
def P2786420694267877750.Spec : Prop :=
  ∀ n, (P2786420694267877750.a n : ℤ) = A245839 (n + 1)

end A245839

/-! ## A245839.P13197700188338871161

`A003415(A016789(n+1))+A000038(n+1)`
-/

namespace A245839.P13197700188338871161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A016789 (n + 1)).toNat + A000038 (n + 1)

end

end A245839.P13197700188338871161

namespace A245839

/-- `A003415(A016789(n+1))+A000038(n+1)` -/
def P13197700188338871161.Spec : Prop :=
  ∀ n, P13197700188338871161.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P6768621960209386605

`A003415(A016789(n+1))%A003347(n+1)`
-/

namespace A245839.P6768621960209386605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A016789 (n + 1)).toNat) (A003347 (n + 1))

end

end A245839.P6768621960209386605

namespace A245839

/-- `A003415(A016789(n+1))%A003347(n+1)` -/
def P6768621960209386605.Spec : Prop :=
  ∀ n, P6768621960209386605.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P642499728780857362

`A003415(A180486(n+1))^and(1, A000040(n+1))!`
-/

namespace A245839.P642499728780857362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A180486 (n + 1)).toNat ^ Nat.factorial (Int.land 1 (A000040 (n + 1))).toNat

end

end A245839.P642499728780857362

namespace A245839

/-- `A003415(A180486(n+1))^and(1, A000040(n+1))!` -/
def P642499728780857362.Spec : Prop :=
  ∀ n, P642499728780857362.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P9987930709192098546

`A319703(6*n+10)`
-/

namespace A245839.P9987930709192098546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (6 * n + 10)

end

end A245839.P9987930709192098546

namespace A245839

/-- `A319703(6*n+10)` -/
def P9987930709192098546.Spec : Prop :=
  ∀ n, P9987930709192098546.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P9822422889527561345

`A068512(A016957(n+1))`
-/

namespace A245839.P9822422889527561345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (A016957 (n + 1)).toNat

end

end A245839.P9822422889527561345

namespace A245839

/-- `A068512(A016957(n+1))` -/
def P9822422889527561345.Spec : Prop :=
  ∀ n, P9822422889527561345.a n = A245839 (n + 1)

end A245839

/-! ## A245839.P15206939317554177322

`A068512(A016933(n+1)+2)`
-/

namespace A245839.P15206939317554177322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (A016933 (n + 1) + 2).toNat

end

end A245839.P15206939317554177322

namespace A245839

/-- `A068512(A016933(n+1)+2)` -/
def P15206939317554177322.Spec : Prop :=
  ∀ n, P15206939317554177322.a n = A245839 (n + 1)

end A245839

/-!
# A245840: Triangle T read by rows: T(n,k) = Total number of odd parts in all partitions of n with exactly k parts, 1 <= k <= n.

The programs for A245840, there is no canonical definition to state claims against.
-/

/-! ## A245840.P10524809865315627336

`A172467(n+1)-A245842(n+1)`
-/

namespace A245840.P10524809865315627336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172467 (n + 1) - A245842 (n + 1)

end

end A245840.P10524809865315627336

/-! ## A245840.P5956946201778437868

`A002260(n+1)*A008284(n+1)-A245842(n+1)`
-/

namespace A245840.P5956946201778437868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008284 (n + 1) - A245842 (n + 1)

end

end A245840.P5956946201778437868

/-! ## A245840.P2518000140226652716

`(A002262(n)+1)*A008284(n+1)-A245842(n+1)`
-/

namespace A245840.P2518000140226652716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008284 (n + 1) - A245842 (n + 1)

end

end A245840.P2518000140226652716

/-! ## A245840.P416744169025555161

`(1-A057944(n)+n)*A008284(n+1)-A245842(n+1)`
-/

namespace A245840.P416744169025555161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A008284 (n + 1) - A245842 (n + 1)

end

end A245840.P416744169025555161

/-! ## A245840.P5781018475930357673

`A002260(n+1)*A058398(A278818(n))-A245842(n+1)`
-/

namespace A245840.P5781018475930357673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A058398 (A278818 n).toNat - A245842 (n + 1)

end

end A245840.P5781018475930357673

/-! ## A245840.P11044014066670333429

`A002260(n+1)*A145574(A056537(n+1)+1)-A245842(n+1)`
-/

namespace A245840.P11044014066670333429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A145574 (A056537 (n + 1) + 1).toNat - A245842 (n + 1)

end

end A245840.P11044014066670333429

/-! ## A245840.P502755498867779291

`A008284(n+1)*A260429(A255547(n+1))-A245842(n+1)`
-/

namespace A245840.P502755498867779291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) * A260429 (A255547 (n + 1)).toNat - A245842 (n + 1)

end

end A245840.P502755498867779291

/-! ## A245840.P8394727379188259759

`(A001222(A059268(n))+1)*A008284(n+1)-A245842(n+1)`
-/

namespace A245840.P8394727379188259759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A059268 n).toNat + 1) * A008284 (n + 1) - A245842 (n + 1)

end

end A245840.P8394727379188259759

/-!
# A245841: Triangle T read by rows: T(n,k) = Total number of odd parts in all partitions of n with at most k parts, 1 <= k <= n.

The programs for A245841, there is no canonical definition to state claims against.
-/

/-! ## A245841.P13299359615725667413

`A245842(A245300(n)+A108872(n+1))`
-/

namespace A245841.P13299359615725667413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (A245300 n + A108872 (n + 1)).toNat

end

end A245841.P13299359615725667413

/-! ## A245841.P2089042839666259616

`xor(A059268(n), A108357(A309272(n+1)))`
-/

namespace A245841.P2089042839666259616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059268 n) (A108357 (A309272 (n + 1)).toNat)

end

end A245841.P2089042839666259616

/-!
# A245842: Triangle T read by rows: T(n,k) = Total number of even parts in all partitions of n with exactly k parts, 1 <= k <= n.

The programs for A245842, there is no canonical definition to state claims against.
-/

/-! ## A245842.P349641071607487837

`A172467(n+1)-A245840(n+1)`
-/

namespace A245842.P349641071607487837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172467 (n + 1) - A245840 (n + 1)

end

end A245842.P349641071607487837

/-! ## A245842.P10250287605805131689

`A002260(n+1)*A008284(n+1)-A245840(n+1)`
-/

namespace A245842.P10250287605805131689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008284 (n + 1) - A245840 (n + 1)

end

end A245842.P10250287605805131689

/-! ## A245842.P4257496936571614849

`(A002262(n)+1)*A008284(n+1)-A245840(n+1)`
-/

namespace A245842.P4257496936571614849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008284 (n + 1) - A245840 (n + 1)

end

end A245842.P4257496936571614849

/-! ## A245842.P18267212329335013699

`(1-A057944(n)+n)*A008284(n+1)-A245840(n+1)`
-/

namespace A245842.P18267212329335013699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A008284 (n + 1) - A245840 (n + 1)

end

end A245842.P18267212329335013699

/-! ## A245842.P15475931395547355171

`A002260(n+1)*A058398(A278818(n))-A245840(n+1)`
-/

namespace A245842.P15475931395547355171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A058398 (A278818 n).toNat - A245840 (n + 1)

end

end A245842.P15475931395547355171

/-! ## A245842.P12778498006079628870

`A002260(n+1)*A145574(A056537(n+1)+1)-A245840(n+1)`
-/

namespace A245842.P12778498006079628870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A145574 (A056537 (n + 1) + 1).toNat - A245840 (n + 1)

end

end A245842.P12778498006079628870

/-! ## A245842.P14339728624669873111

`A008284(n+1)*A260429(A255547(n+1))-A245840(n+1)`
-/

namespace A245842.P14339728624669873111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) * A260429 (A255547 (n + 1)).toNat - A245840 (n + 1)

end

end A245842.P14339728624669873111

/-! ## A245842.P3066924175263620147

`(A001222(A059268(n))+1)*A008284(n+1)-A245840(n+1)`
-/

namespace A245842.P3066924175263620147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A059268 n).toNat + 1) * A008284 (n + 1) - A245840 (n + 1)

end

end A245842.P3066924175263620147

/-!
# A245844: Number of length n 0..n arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245844, there is no canonical definition to state claims against.
-/

/-! ## A245844.P17639157956660243129

`A245851(A055998(n+13)+A016897(n+14))`
-/

namespace A245844.P17639157956660243129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A055998 (n + 13) + A016897 (n + 14)).toNat

end

end A245844.P17639157956660243129

/-! ## A245844.P5132108350252789633

`A245851(A051890(n))`
-/

namespace A245844.P5132108350252789633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A051890 n).toNat

end

end A245844.P5132108350252789633

/-! ## A245844.P3840509806347148290

`A245851((n+1)²+n²)`
-/

namespace A245844.P3840509806347148290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 ((n + 1) ^ 2 + n ^ 2)

end

end A245844.P3840509806347148290

/-! ## A245844.P7919726651573268988

`A245851(A001844(n))%A007689(n)`
-/

namespace A245844.P7919726651573268988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245851 (A001844 n).toNat) (A007689 n)

end

end A245844.P7919726651573268988

/-! ## A245844.P439338939046669167

`A001511(2*n+5)*A245851(A001844(n))`
-/

namespace A245844.P439338939046669167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 5) * A245851 (A001844 n).toNat

end

end A245844.P439338939046669167

/-!
# A245845: Number of length n 0..2 arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245845, there is no canonical definition to state claims against.
-/

/-! ## A245845.P7558138473125493189

`A245851(∑[n+2])`
-/

namespace A245845.P7558138473125493189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245845.P7558138473125493189

/-! ## A245845.P2366107442513545600

`or(A000007(n), A245851(A055998(n)+2))`
-/

namespace A245845.P2366107442513545600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245851 (A055998 n + 2).toNat)

end

end A245845.P2366107442513545600

/-! ## A245845.P10937971536385170951

`xor(A000038(n+2), A245851(A055998(n)+2))`
-/

namespace A245845.P10937971536385170951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 2)) (A245851 (A055998 n + 2).toNat)

end

end A245845.P10937971536385170951

/-! ## A245845.P831343628381144608

`A000041(gcd(n, n+1))*A245851(A055998(n)+2)`
-/

namespace A245845.P831343628381144608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A245851 (A055998 n + 2).toNat

end

end A245845.P831343628381144608

/-! ## A245845.P18009266928571161266

`A245851(A055998(n)+2)+val(A000005(3*n+1), n+3)`
-/

namespace A245845.P18009266928571161266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A055998 n + 2).toNat + (SequenceMachineLib.valuation (A000005 (3 * n + 1)).toNat (n + 3) : ℤ)

end

end A245845.P18009266928571161266

/-!
# A245846: Number of length n 0..3 arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245846, there is no canonical definition to state claims against.
-/

/-! ## A245846.P16003563178208454064

`A245851(∑[n+3]+1)`
-/

namespace A245846.P16003563178208454064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A245846.P16003563178208454064

/-! ## A245846.P15072020559815115245

`A245844(n+1)-A085974(A007051(n))`
-/

namespace A245846.P15072020559815115245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245844 (n + 1) - A085974 (A007051 n).toNat

end

end A245846.P15072020559815115245

/-! ## A245846.P749192390106609846

`A245848(n+1)-A085974(A007051(n))`
-/

namespace A245846.P749192390106609846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245848 (n + 1) - A085974 (A007051 n).toNat

end

end A245846.P749192390106609846

/-! ## A245846.P15116403111537969663

`A245849(n+1)-A085974(A007051(n))`
-/

namespace A245846.P15116403111537969663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245849 (n + 1) - A085974 (A007051 n).toNat

end

end A245846.P15116403111537969663

/-! ## A245846.P3562312757410159454

`A245850(n+1)-A085974(A007051(n))`
-/

namespace A245846.P3562312757410159454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245850 (n + 1) - A085974 (A007051 n).toNat

end

end A245846.P3562312757410159454

/-!
# A245847: Number of length n 0..4 arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245847, there is no canonical definition to state claims against.
-/

/-! ## A245847.P8853925298591452391

`A245851(A027379(n+2))`
-/

namespace A245847.P8853925298591452391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A027379 (n + 2)).toNat

end

end A245847.P8853925298591452391

/-! ## A245847.P6873962147503365566

`A245851(A055998(n+2))`
-/

namespace A245847.P6873962147503365566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A055998 (n + 2)).toNat

end

end A245847.P6873962147503365566

/-! ## A245847.P8834044161109256835

`A245851(A056000(n)+7)`
-/

namespace A245847.P8834044161109256835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A056000 n + 7).toNat

end

end A245847.P8834044161109256835

/-! ## A245847.P1696005874368977967

`A245851(Δ[A006416(n+2)])`
-/

namespace A245847.P1696005874368977967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (f1 (n + 1) - f1 n).toNat

end

end A245847.P1696005874368977967

/-!
# A245848: Number of length n 0..5 arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245848, there is no canonical definition to state claims against.
-/

/-! ## A245848.P15030789588257460404

`A245851(Δ[A264443(n)])`
-/

namespace A245848.P15030789588257460404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (f1 (n + 1) - f1 n).toNat

end

end A245848.P15030789588257460404

/-! ## A245848.P3238843819644540696

`A245851(A046691(n+3))`
-/

namespace A245848.P3238843819644540696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A046691 (n + 3)).toNat

end

end A245848.P3238843819644540696

/-! ## A245848.P1056047050199563972

`A245851(Δ[A023545(n+1)])`
-/

namespace A245848.P1056047050199563972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (f1 (n + 1) - f1 n).toNat

end

end A245848.P1056047050199563972

/-! ## A245848.P5269313410049283738

`A245851(Δ[A006416(n+3)]-1)`
-/

namespace A245848.P5269313410049283738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (f1 (n + 1) - f1 n - 1).toNat

end

end A245848.P5269313410049283738

/-! ## A245848.P4540043791666337870

`A245851(∑[n]+A008706(n)+11)`
-/

namespace A245848.P4540043791666337870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A008706 n + 11)).toNat

end

end A245848.P4540043791666337870

/-!
# A245849: Number of length n 0..6 arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245849, there is no canonical definition to state claims against.
-/

/-! ## A245849.P3827687512467894704

`A245851(A052905(n+3))`
-/

namespace A245849.P3827687512467894704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A052905 (n + 3)).toNat

end

end A245849.P3827687512467894704

/-! ## A245849.P5485922707380691770

`A245851(A046691(n+4)-1)`
-/

namespace A245849.P5485922707380691770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A046691 (n + 4) - 1).toNat

end

end A245849.P5485922707380691770

/-! ## A245849.P16587945118940057473

`A245851(A000217(n+6)-5)`
-/

namespace A245849.P16587945118940057473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A000217 (n + 6) - 5).toNat

end

end A245849.P16587945118940057473

/-! ## A245849.P7821850448343174059

`A245851(Δ[Δ[A006504(n+1)]])`
-/

namespace A245849.P7821850448343174059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (f1 (n + 1) - f1 n).toNat

end

end A245849.P7821850448343174059

/-! ## A245849.P6518163017874601757

`A245851(Δ[A264443(n+1)]-1)`
-/

namespace A245849.P6518163017874601757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (f1 (n + 1) - f1 n - 1).toNat

end

end A245849.P6518163017874601757

/-!
# A245850: Number of length n 0..7 arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245850, there is no canonical definition to state claims against.
-/

/-! ## A245850.P9938166486110710188

`A245851(A055999(n+4))`
-/

namespace A245850.P9938166486110710188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A055999 (n + 4)).toNat

end

end A245850.P9938166486110710188

/-! ## A245850.P3930873629303183608

`A245851(A000217(n+7)-6)`
-/

namespace A245850.P3930873629303183608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A000217 (n + 7) - 6).toNat

end

end A245850.P3930873629303183608

/-! ## A245850.P9425079559320183506

`A245851(A000124(n+7)-7)`
-/

namespace A245850.P9425079559320183506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A000124 (n + 7) - 7).toNat

end

end A245850.P9425079559320183506

/-! ## A245850.P11154488014610051597

`A245851(A167499(n+4)+2*(n+1))`
-/

namespace A245850.P11154488014610051597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A245850.P11154488014610051597

/-! ## A245850.P716278471760878842

`A245851(A028310(n)+A000124(n+6))`
-/

namespace A245850.P716278471760878842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (A028310 n + A000124 (n + 6)).toNat

end

end A245850.P716278471760878842

/-!
# A245851: T(n,k)=Number of length n 0..k arrays with new values introduced in order from both ends, and least squares fitting to a straight line with slope zero, with a single point taken as having zero slope.

The programs for A245851, there is no canonical definition to state claims against.
-/

/-! ## A245851.P6824497791147117712

`A007895(A233543(n)*A245163(n+1))`
-/

namespace A245851.P6824497791147117712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A233543 n * A245163 (n + 1)).toNat

end

end A245851.P6824497791147117712

/-! ## A245851.P15290623457223591068

`xor(A025675(n+1), A071040(A083768(n+1)))`
-/

namespace A245851.P15290623457223591068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025675 (n + 1)) (A071040 (A083768 (n + 1)).toNat)

end

end A245851.P15290623457223591068

/-! ## A245851.P10173051448944346507

`A007895(A025675(n+1)!*A245163(n+1))`
-/

namespace A245851.P10173051448944346507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((Nat.factorial (A025675 (n + 1)).toNat : ℤ) * A245163 (n + 1)).toNat

end

end A245851.P10173051448944346507

/-! ## A245851.P1146569732313131511

`A296658(A140207(n)*A178522(n))`
-/

namespace A245851.P1146569732313131511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A140207 n * A178522 n).toNat

end

end A245851.P1146569732313131511

/-! ## A245851.P3335008626561232284

`A324825(A255908(n+1))`
-/

namespace A245851.P3335008626561232284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324825 (A255908 (n + 1)).toNat

end

end A245851.P3335008626561232284

/-!
# A245852: Powers of 8 without the digit '0' in their decimal expansion.

The programs for A245852, there is no canonical definition to state claims against.
-/

/-! ## A245852.P56527977066276219

`8^A305928(n)`
-/

namespace A245852.P56527977066276219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A305928 n : ℤ)

end

end A245852.P56527977066276219

/-! ## A245852.P4722978043178538967

`8^A030704(n+1)`
-/

namespace A245852.P4722978043178538967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A030704 (n + 1) : ℤ)

end

end A245852.P4722978043178538967

/-! ## A245852.P15209852562220198063

`A001018(A030704(n+1))`
-/

namespace A245852.P15209852562220198063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A030704 (n + 1)).toNat

end

end A245852.P15209852562220198063

/-! ## A245852.P4016790632417704279

`A000079(3*A305928(n))`
-/

namespace A245852.P4016790632417704279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * A305928 n).toNat

end

end A245852.P4016790632417704279

/-! ## A245852.P6574595091086331494

`A016116(6*A305928(n))`
-/

namespace A245852.P6574595091086331494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (6 * A305928 n).toNat

end

end A245852.P6574595091086331494

/-!
# A245853: Powers of 12 without the digit '0' in their decimal expansion.

The programs for A245853, there is no canonical definition to state claims against.
-/

/-! ## A245853.P6841779615545221423

`12^A252482(n+1)`
-/

namespace A245853.P6841779615545221423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A252482 (n + 1) : ℤ)

end

end A245853.P6841779615545221423

/-! ## A245853.P6995398553561282979

`A001021(A252482(n+1))`
-/

namespace A245853.P6995398553561282979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (A252482 (n + 1)).toNat

end

end A245853.P6995398553561282979

/-! ## A245853.P4443587406160560771

`record[12^A135550(A106801(n))]`
-/

namespace A245853.P4443587406160560771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A135550 (A106801 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245853.P4443587406160560771

/-! ## A245853.P863686789375650672

`12^∑[A001222(A126473(n))]`
-/

namespace A245853.P863686789375650672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A126473 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A245853.P863686789375650672

/-!
# A245854: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 1.

The programs for A245854, there is no canonical definition to state claims against.
-/

/-! ## A245854.P5512482398121207590

`A000670(n+1)-A032032(n+1)`
-/

namespace A245854.P5512482398121207590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) - A032032 (n + 1)

end

end A245854.P5512482398121207590

/-! ## A245854.P10740649159771352723

`record[A122101(n+1)-A187784(n+1)]`
-/

namespace A245854.P10740649159771352723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (n + 1) - A187784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245854.P10740649159771352723

/-! ## A245854.P1751030266082266299

`A245733(∑[n+1]+1)`
-/

namespace A245854.P1751030266082266299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A245854.P1751030266082266299

/-! ## A245854.P9240863196950802161

`record[A244925(n+1)*A245733(n)]`
-/

namespace A245854.P9240863196950802161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (n + 1) * A245733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245854.P9240863196950802161

/-! ## A245854.P2385554923335939283

`record[A245733(A065033(A063657(n+1)))]`
-/

namespace A245854.P2385554923335939283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A065033 (A063657 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245854.P2385554923335939283

/-!
# A245855: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 2.

The programs for A245855, there is no canonical definition to state claims against.
-/

/-! ## A245855.P10134747769347414777

`A032032(n+2)-A102233(n+2)`
-/

namespace A245855.P10134747769347414777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032032 (n + 2) - A102233 (n + 2)

end

end A245855.P10134747769347414777

/-! ## A245855.P14481898282995989115

`A245733(∑[n+2]+3)`
-/

namespace A245855.P14481898282995989115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A245855.P14481898282995989115

/-! ## A245855.P8838636557158890299

`A245733(A340266(n+1))-A000007(n)`
-/

namespace A245855.P8838636557158890299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A340266 (n + 1)).toNat - A000007 n

end

end A245855.P8838636557158890299

/-! ## A245855.P5324474295503097356

`A245733(A340266(n+1))^A178334(n)`
-/

namespace A245855.P5324474295503097356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245733 (A340266 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A245855.P5324474295503097356

/-! ## A245855.P4426633547178652534

`A245733(A340266(n+1))^A178489(n)`
-/

namespace A245855.P4426633547178652534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245733 (A340266 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A245855.P4426633547178652534

/-! ## A245855.P6043303527875988113

`A245733(A340266(n+1))-A189334(n)%2`
-/

namespace A245855.P6043303527875988113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A340266 (n + 1)).toNat - Int.tmod (A189334 n) 2

end

end A245855.P6043303527875988113

/-! ## A245855.P9977111568061735022

`A245733(A340266(n+1))/A014963(4*n+2)`
-/

namespace A245855.P9977111568061735022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245733 (A340266 (n + 1)).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A245855.P9977111568061735022

/-! ## A245855.P52556447607957665

`A245733(A340266(n+1))-A008683(A298036(n))`
-/

namespace A245855.P52556447607957665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A340266 (n + 1)).toNat - A008683 (A298036 n).toNat

end

end A245855.P52556447607957665

/-! ## A245855.P4890390232018331648

`A245733(A340266(n+1))/A323071(A143408(n+1))`
-/

namespace A245855.P4890390232018331648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245733 (A340266 (n + 1)).toNat : ℚ) / (A323071 (A143408 (n + 1)).toNat : ℚ)

end

end A245855.P4890390232018331648

/-!
# A245856: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 3.

The programs for A245856, there is no canonical definition to state claims against.
-/

/-! ## A245856.P11797940448863940825

`A102233(n+3)-A232475(n+3)`
-/

namespace A245856.P11797940448863940825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102233 (n + 3) - A232475 (n + 3)

end

end A245856.P11797940448863940825

/-! ## A245856.P15574512147479775005

`A245733(A167614(n+2))`
-/

namespace A245856.P15574512147479775005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A167614 (n + 2)).toNat

end

end A245856.P15574512147479775005

/-! ## A245856.P883494296524053586

`A245733(A055999(n)+9)`
-/

namespace A245856.P883494296524053586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A055999 n + 9).toNat

end

end A245856.P883494296524053586

/-! ## A245856.P4138895180968251994

`A245733(eq[3, A002262(n)])`
-/

namespace A245856.P4138895180968251994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245856.P4138895180968251994

/-! ## A245856.P14289185039687525845

`A245733(eq[3, A140207(n)])`
-/

namespace A245856.P14289185039687525845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245856.P14289185039687525845

/-! ## A245856.P18282642911735741648

`A245733(eq[8, A059268(n)])`
-/

namespace A245856.P18282642911735741648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245856.P18282642911735741648

/-! ## A245856.P17730899120203206019

`A245733(A340266(n+2)+1)`
-/

namespace A245856.P17730899120203206019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A340266 (n + 2) + 1).toNat

end

end A245856.P17730899120203206019

/-! ## A245856.P10473628025302292130

`A245733(eq[4, A002260(n+1)])`
-/

namespace A245856.P10473628025302292130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245856.P10473628025302292130

/-! ## A245856.P1953261065410829792

`A245733(eq[1, A144328(n+1)-2])`
-/

namespace A245856.P1953261065410829792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245856.P1953261065410829792

/-!
# A245857: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 4.

The programs for A245857, there is no canonical definition to state claims against.
-/

/-! ## A245857.P1279585489990277453

`A232475(n+4)-A245790(n+4)`
-/

namespace A245857.P1279585489990277453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232475 (n + 4) - A245790 (n + 4)

end

end A245857.P1279585489990277453

/-! ## A245857.P17410328958946703762

`A245733(A155212(n)+12)`
-/

namespace A245857.P17410328958946703762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A155212 n + 12).toNat

end

end A245857.P17410328958946703762

/-! ## A245857.P1812627668070808095

`A245733(eq[4, A002262(n)])`
-/

namespace A245857.P1812627668070808095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245857.P1812627668070808095

/-! ## A245857.P9844470121674544424

`A245733(eq[5, A140207(n)])`
-/

namespace A245857.P9844470121674544424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245857.P9844470121674544424

/-! ## A245857.P13507683492403327320

`A245733(eq[16, A059268(n)])`
-/

namespace A245857.P13507683492403327320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245857.P13507683492403327320

/-! ## A245857.P13460335599153459050

`A245733(A167614(n+3)+1)`
-/

namespace A245857.P13460335599153459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A167614 (n + 3) + 1).toNat

end

end A245857.P13460335599153459050

/-! ## A245857.P18306903506246631452

`A245733(eq[4, A144328(n+1)])`
-/

namespace A245857.P18306903506246631452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245857.P18306903506246631452

/-! ## A245857.P7189887675447476183

`A245733(eq[5, A002260(n+1)])`
-/

namespace A245857.P7189887675447476183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245857.P7189887675447476183

/-!
# A245858: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 5.

The programs for A245858, there is no canonical definition to state claims against.
-/

/-! ## A245858.P3566200014870303629

`A245790(n+5)-A245791(n+5)`
-/

namespace A245858.P3566200014870303629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245790 (n + 5) - A245791 (n + 5)

end

end A245858.P3566200014870303629

/-! ## A245858.P17842313752442606361

`A245733(eq[5, A002262(n)])`
-/

namespace A245858.P17842313752442606361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245858.P17842313752442606361

/-! ## A245858.P13458667577537331508

`A245733(eq[7, A140207(n)])`
-/

namespace A245858.P13458667577537331508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245858.P13458667577537331508

/-! ## A245858.P12405992689057697136

`A245733(eq[6, A002260(n+1)])`
-/

namespace A245858.P12405992689057697136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245858.P12405992689057697136

/-! ## A245858.P4932550491292335394

`A014681(A245791(n)+A228672(n+5))`
-/

namespace A245858.P4932550491292335394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A245791 n + A228672 (n + 5)).toNat

end

end A245858.P4932550491292335394

/-!
# A245859: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 6.

The programs for A245859, there is no canonical definition to state claims against.
-/

/-! ## A245859.P2443299670504214694

`A245791(n+6)-A245792(n+6)`
-/

namespace A245859.P2443299670504214694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245791 (n + 6) - A245792 (n + 6)

end

end A245859.P2443299670504214694

/-! ## A245859.P12696389399575562070

`A245733(eq[6, A002262(n)])`
-/

namespace A245859.P12696389399575562070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245859.P12696389399575562070

/-! ## A245859.P16627153273333926078

`A245733(eq[6, A144328(n+1)])`
-/

namespace A245859.P16627153273333926078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245859.P16627153273333926078

/-! ## A245859.P5586400213704986029

`A245733(eq[7, A002260(n+1)])`
-/

namespace A245859.P5586400213704986029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245859.P5586400213704986029

/-! ## A245859.P13913829301925291020

`A228673(n+6)+A037800(A186735(n))`
-/

namespace A245859.P13913829301925291020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228673 (n + 6) + A037800 (A186735 n).toNat

end

end A245859.P13913829301925291020

/-!
# A245860: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 7.

The programs for A245860, there is no canonical definition to state claims against.
-/

/-! ## A245860.P3061428307716907657

`A245792(n+7)-A245793(n+7)`
-/

namespace A245860.P3061428307716907657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245792 (n + 7) - A245793 (n + 7)

end

end A245860.P3061428307716907657

/-! ## A245860.P13408990625794314508

`C(A279484(6*3^n-2^n), n)`
-/

namespace A245860.P13408990625794314508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A279484 (6 * 3 ^ n - 2 ^ n)).toNat n

end

end A245860.P13408990625794314508

/-! ## A245860.P7863819794239027158

`C(A025427(A093129(n)), n)`
-/

namespace A245860.P7863819794239027158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025427 (A093129 n).toNat).toNat n

end

end A245860.P7863819794239027158

/-! ## A245860.P6191185149928237656

`C(A295989(A012248(n)), n)`
-/

namespace A245860.P6191185149928237656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A295989 (A012248 n).toNat).toNat n

end

end A245860.P6191185149928237656

/-! ## A245860.P10049014441426251429

`C(A333755(A008294(n+1)), n)`
-/

namespace A245860.P10049014441426251429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333755 (A008294 (n + 1)).toNat).toNat n

end

end A245860.P10049014441426251429

/-!
# A245861: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 8.

The programs for A245861, there is no canonical definition to state claims against.
-/

/-! ## A245861.P17961447830580662665

`A245793(n+8)-A245794(n+8)`
-/

namespace A245861.P17961447830580662665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245793 (n + 8) - A245794 (n + 8)

end

end A245861.P17961447830580662665

/-! ## A245861.P6747005535003946283

`C(2*n, n*A080560(n+3))`
-/

namespace A245861.P6747005535003946283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ((n : ℤ) * A080560 (n + 3)).toNat

end

end A245861.P6747005535003946283

/-! ## A245861.P15040542245357562875

`C(and(2*n, A286284(n+1)), n)`
-/

namespace A245861.P15040542245357562875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (2 * n : ℤ) (A286284 (n + 1))).toNat n

end

end A245861.P15040542245357562875

/-! ## A245861.P7914288621950430566

`C(A053188(A268220(n)), n)`
-/

namespace A245861.P7914288621950430566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053188 (A268220 n).toNat).toNat n

end

end A245861.P7914288621950430566

/-! ## A245861.P10102620818513851461

`A000984(n)*A246260(A000984(n))`
-/

namespace A245861.P10102620818513851461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A246260 (A000984 n).toNat

end

end A245861.P10102620818513851461

/-!
# A245862: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 9.

The programs for A245862, there is no canonical definition to state claims against.
-/

/-! ## A245862.P13972552724966915456

`A245794(n+9)-A245795(n+9)`
-/

namespace A245862.P13972552724966915456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245794 (n + 9) - A245795 (n + 9)

end

end A245862.P13972552724966915456

/-! ## A245862.P9372507970388500034

`C(A257684(A039941(n)), n)`
-/

namespace A245862.P9372507970388500034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257684 (A039941 n).toNat).toNat n

end

end A245862.P9372507970388500034

/-! ## A245862.P9494906134759444919

`C(A000984(n), A352172(n+1)²)`
-/

namespace A245862.P9494906134759444919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000984 n).toNat (A352172 (n + 1) ^ 2).toNat

end

end A245862.P9494906134759444919

/-! ## A245862.P11931066264102662318

`C(A000984(n), A352598(n+1)^3)`
-/

namespace A245862.P11931066264102662318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000984 n).toNat (A352598 (n + 1) ^ 3).toNat

end

end A245862.P11931066264102662318

/-! ## A245862.P754317367539262228

`A000027(C(2*n, n))*A185329(n)`
-/

namespace A245862.P754317367539262228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (2 * n) n) * A185329 n

end

end A245862.P754317367539262228

/-!
# A245863: Number of preferential arrangements of n labeled elements such that the minimal number of elements per rank equals 10.

The programs for A245863, there is no canonical definition to state claims against.
-/

/-! ## A245863.P12715137613711388336

`A245733(eq[10, A002262(n)])`
-/

namespace A245863.P12715137613711388336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245863.P12715137613711388336

/-! ## A245863.P12717423301771306116

`A245733(eq[10, A144328(n+1)])`
-/

namespace A245863.P12717423301771306116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245863.P12717423301771306116

/-! ## A245863.P946129938435639440

`A245733(A161680(n+12)-(n+1))`
-/

namespace A245863.P946129938435639440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 (A161680 (n + 12) - (n + 1 : ℤ)).toNat

end

end A245863.P946129938435639440

/-! ## A245863.P16952563653259587238

`A326593(n)^(n*(21*n-19)/2)*C(2*n, n)`
-/

namespace A245863.P16952563653259587238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A326593 n : ℝ) ^ ((n : ℚ) * (((21 * n : ℤ) - 19 : ℚ) / 2) : ℝ) * (Nat.choose (2 * n) n : ℝ)

end

end A245863.P16952563653259587238

/-! ## A245863.P653932002626135702

`C(A002262(A181936(n)), n)`
-/

namespace A245863.P653932002626135702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A181936 n).toNat).toNat n

end

end A245863.P653932002626135702

/-!
# A245864: Number of length n+2 0..2 arrays with some pair in every consecutive three terms totalling exactly 2.

The programs for A245864, the canonical program `A245864.P3590088496930019090` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245864 has offset 1).

The definition of A245864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245864.P3590088496930019090

`2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` with `a(0)=19, a(1)=45, a(2)=103, a(3)=239, a(4)=553`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245864

/-- `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` -/
def P3590088496930019090.Spec : Prop :=
  ∀ n, P3590088496930019090.a n = A245864 (n + 1)

theorem P3590088496930019090.correct : P3590088496930019090.Spec := by
  intro n
  simp only [A245864, Nat.add_sub_cancel]

end A245864

/-! ## A245864.P13019209668323073433

`A272362(n)+Δ[A272362(n+3)]`
-/

namespace A245864.P13019209668323073433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272362 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272362 n + (f1 (n + 1) - f1 n)

end

end A245864.P13019209668323073433

namespace A245864

/-- `A272362(n)+Δ[A272362(n+3)]` -/
def P13019209668323073433.Spec : Prop :=
  ∀ n, P13019209668323073433.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P6389794395177118496

`A245869(∑[n+2])`
-/

namespace A245864.P6389794395177118496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245864.P6389794395177118496

namespace A245864

/-- `A245869(∑[n+2])` -/
def P6389794395177118496.Spec : Prop :=
  ∀ n, P6389794395177118496.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P858680325056421420

`record[A245869(abs(A201163(n)))]`
-/

namespace A245864.P858680325056421420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245864.P858680325056421420

namespace A245864

/-- `record[A245869(abs(A201163(n)))]` -/
def P858680325056421420.Spec : Prop :=
  ∀ n, P858680325056421420.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P7310729759803267428

`record[A245869(A000096(A020986(n)))]`
-/

namespace A245864.P7310729759803267428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245864.P7310729759803267428

namespace A245864

/-- `record[A245869(A000096(A020986(n)))]` -/
def P7310729759803267428.Spec : Prop :=
  ∀ n, P7310729759803267428.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P16656106266539795161

`record[A245869(A000096(A126759(n)))]`
-/

namespace A245864.P16656106266539795161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245864.P16656106266539795161

namespace A245864

/-- `record[A245869(A000096(A126759(n)))]` -/
def P16656106266539795161.Spec : Prop :=
  ∀ n, P16656106266539795161.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P9351859549489462593

`record[A245869(A000096(A133310(n)))]`
-/

namespace A245864.P9351859549489462593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245864.P9351859549489462593

namespace A245864

/-- `record[A245869(A000096(A133310(n)))]` -/
def P9351859549489462593.Spec : Prop :=
  ∀ n, P9351859549489462593.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P4094853849712074264

`record[A245869(A000096(A286544(n)))]`
-/

namespace A245864.P4094853849712074264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000096 (A286544 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245864.P4094853849712074264

namespace A245864

/-- `record[A245869(A000096(A286544(n)))]` -/
def P4094853849712074264.Spec : Prop :=
  ∀ n, P4094853849712074264.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P9286438121856371794

`record[A245869(A000096(A026806(n+1)))]`
-/

namespace A245864.P9286438121856371794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000096 (A026806 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245864.P9286438121856371794

namespace A245864

/-- `record[A245869(A000096(A026806(n+1)))]` -/
def P9286438121856371794.Spec : Prop :=
  ∀ n, P9286438121856371794.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P18303270071392352330

`record[A245869(A000096(A304731(n+1)))]`
-/

namespace A245864.P18303270071392352330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000096 (A304731 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245864.P18303270071392352330

namespace A245864

/-- `record[A245869(A000096(A304731(n+1)))]` -/
def P18303270071392352330.Spec : Prop :=
  ∀ n, P18303270071392352330.a n = A245864 (n + 1)

end A245864

/-! ## A245864.P4669142381315685181

`A124392(A000096(n+1))*A245869(A000096(n+1))`
-/

namespace A245864.P4669142381315685181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 (A000096 (n + 1)).toNat * A245869 (A000096 (n + 1)).toNat

end

end A245864.P4669142381315685181

namespace A245864

/-- `A124392(A000096(n+1))*A245869(A000096(n+1))` -/
def P4669142381315685181.Spec : Prop :=
  ∀ n, P4669142381315685181.a n = A245864 (n + 1)

end A245864

/-!
# A245865: Number of length n+2 0..4 arrays with some pair in every consecutive three terms totalling exactly 4.

The programs for A245865, there is no canonical definition to state claims against.
-/

/-! ## A245865.P14596674957150922155

`A245869(∑[n+4]+3)`
-/

namespace A245865.P14596674957150922155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A245865.P14596674957150922155

/-! ## A245865.P9925694452837323368

`A245869(A056000(n)+7)+A000007(n+1)`
-/

namespace A245865.P9925694452837323368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A056000 n + 7).toNat + A000007 (n + 1)

end

end A245865.P9925694452837323368

/-! ## A245865.P17082304192966275438

`A245869(A056000(n)+7)%A237696(n+1)`
-/

namespace A245865.P17082304192966275438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245869 (A056000 n + 7).toNat) (A237696 (n + 1))

end

end A245865.P17082304192966275438

/-! ## A245865.P7467166193415995365

`A014963(12*(n+1))*A245869(A056000(n)+7)`
-/

namespace A245865.P7467166193415995365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A245869 (A056000 n + 7).toNat

end

end A245865.P7467166193415995365

/-! ## A245865.P6346728574764487249

`A000041(C(2, n+2))*A245869(A056000(n)+7)`
-/

namespace A245865.P6346728574764487249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A245869 (A056000 n + 7).toNat

end

end A245865.P6346728574764487249

/-! ## A245865.P2409585023345818727

`A245869(A056000(n)+7)+A025441(A025442(n))`
-/

namespace A245865.P2409585023345818727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A056000 n + 7).toNat + A025441 (A025442 n).toNat

end

end A245865.P2409585023345818727

/-! ## A245865.P9847932369169319971

`A245869(A056000(n)+7)/A001222(A198273(n+1))`
-/

namespace A245865.P9847932369169319971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245869 (A056000 n + 7).toNat : ℚ) / (A001222 (A198273 (n + 1)).toNat : ℚ)

end

end A245865.P9847932369169319971

/-!
# A245866: Number of length n+2 0..5 arrays with some pair in every consecutive three terms totalling exactly 5.

The programs for A245866, the canonical program `A245866.P5825626733000553909` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245866 has offset 1).

The definition of A245866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245866.P5825626733000553909

`2*a(n-1)+4*a(n-2)-a(n-3)` with `a(0)=90, a(1)=318, a(2)=960`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245866

/-- `2*a(n-1)+4*a(n-2)-a(n-3)` -/
def P5825626733000553909.Spec : Prop :=
  ∀ n, P5825626733000553909.a n = A245866 (n + 1)

theorem P5825626733000553909.correct : P5825626733000553909.Spec := by
  intro n
  simp only [A245866, Nat.add_sub_cancel]

end A245866

/-! ## A245866.P17874890390043405161

`6*A122365(n+4)`
-/

namespace A245866.P17874890390043405161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A122365 (n + 4)

end

end A245866.P17874890390043405161

namespace A245866

/-- `6*A122365(n+4)` -/
def P17874890390043405161.Spec : Prop :=
  ∀ n, P17874890390043405161.a n = A245866 (n + 1)

end A245866

/-! ## A245866.P7564790285401942283

`A245869(∑[n+5]+6)`
-/

namespace A245866.P7564790285401942283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A245866.P7564790285401942283

namespace A245866

/-- `A245869(∑[n+5]+6)` -/
def P7564790285401942283.Spec : Prop :=
  ∀ n, P7564790285401942283.a n = A245866 (n + 1)

end A245866

/-! ## A245866.P2519985212963830404

`lcm(2, A245869(Δ[A023545(n+1)]))`
-/

namespace A245866.P2519985212963830404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A245869 (f1 (n + 1) - f1 n).toNat)

end

end A245866.P2519985212963830404

namespace A245866

/-- `lcm(2, A245869(Δ[A023545(n+1)]))` -/
def P2519985212963830404.Spec : Prop :=
  ∀ n, (P2519985212963830404.a n : ℤ) = A245866 (n + 1)

end A245866

/-! ## A245866.P16904291615540543085

`A245869(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A245866.P16904291615540543085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A245866.P16904291615540543085

namespace A245866

/-- `A245869(Δ[A023545(n+1)])+A000007(n+1)` -/
def P16904291615540543085.Spec : Prop :=
  ∀ n, P16904291615540543085.a n = A245866 (n + 1)

end A245866

/-! ## A245866.P15684571363410957494

`A077008(n+2)²*A245869(Δ[A023545(n+1)])`
-/

namespace A245866.P15684571363410957494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077008 (n + 2) ^ 2 * A245869 (f1 (n + 1) - f1 n).toNat

end

end A245866.P15684571363410957494

namespace A245866

/-- `A077008(n+2)²*A245869(Δ[A023545(n+1)])` -/
def P15684571363410957494.Spec : Prop :=
  ∀ n, P15684571363410957494.a n = A245866 (n + 1)

end A245866

/-!
# A245867: Number of length n+2 0..6 arrays with some pair in every consecutive three terms totalling exactly 6.

The programs for A245867, there is no canonical definition to state claims against.
-/

/-! ## A245867.P17694435500556678831

`A245869(A052905(n+3))`
-/

namespace A245867.P17694435500556678831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A052905 (n + 3)).toNat

end

end A245867.P17694435500556678831

/-! ## A245867.P4488153570354228346

`A245869(A055999(n+3)+1)`
-/

namespace A245867.P4488153570354228346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A055999 (n + 3) + 1).toNat

end

end A245867.P4488153570354228346

/-! ## A245867.P9296296516788147945

`A245869(A046691(n+4)-1)`
-/

namespace A245867.P9296296516788147945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A046691 (n + 4) - 1).toNat

end

end A245867.P9296296516788147945

/-! ## A245867.P13575403923966798352

`A245869(A055998(n+4)-2)`
-/

namespace A245867.P13575403923966798352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A055998 (n + 4) - 2).toNat

end

end A245867.P13575403923966798352

/-! ## A245867.P11557179305409326351

`A245869(A000124(n+6)-6)`
-/

namespace A245867.P11557179305409326351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000124 (n + 6) - 6).toNat

end

end A245867.P11557179305409326351

/-! ## A245867.P13271214158106393281

`A245869(Δ[A023545(n+2)]-1)`
-/

namespace A245867.P13271214158106393281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (f1 (n + 1) - f1 n - 1).toNat

end

end A245867.P13271214158106393281

/-!
# A245868: Number of length n+2 0..7 arrays with some pair in every consecutive three terms totalling exactly 7.

The programs for A245868, the canonical program `A245868.P1432892422557192650` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245868 has offset 1).

The definition of A245868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245868.P1432892422557192650

`8*A264238(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245868

/-- `8*A264238(n+2)` -/
def P1432892422557192650.Spec : Prop :=
  ∀ n, P1432892422557192650.a n = A245868 (n + 1)

theorem P1432892422557192650.correct : P1432892422557192650.Spec := by
  intro n
  simp only [A245868, Nat.add_sub_cancel]

end A245868

/-! ## A245868.P10326657629316609169

`A245869(A055999(n+4))`
-/

namespace A245868.P10326657629316609169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A055999 (n + 4)).toNat

end

end A245868.P10326657629316609169

namespace A245868

/-- `A245869(A055999(n+4))` -/
def P10326657629316609169.Spec : Prop :=
  ∀ n, P10326657629316609169.a n = A245868 (n + 1)

end A245868

/-! ## A245868.P10302848322882163242

`A245869(A000124(n+7)-7)`
-/

namespace A245868.P10302848322882163242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000124 (n + 7) - 7).toNat

end

end A245868.P10302848322882163242

namespace A245868

/-- `A245869(A000124(n+7)-7)` -/
def P10302848322882163242.Spec : Prop :=
  ∀ n, P10302848322882163242.a n = A245868 (n + 1)

end A245868

/-! ## A245868.P8247417590433852429

`A245869(A052905(n+3)+n+6)`
-/

namespace A245868.P8247417590433852429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A052905 (n + 3) + (n + 6 : ℤ)).toNat

end

end A245868.P8247417590433852429

namespace A245868

/-- `A245869(A052905(n+3)+n+6)` -/
def P8247417590433852429.Spec : Prop :=
  ∀ n, P8247417590433852429.a n = A245868 (n + 1)

end A245868

/-! ## A245868.P3562581501400802480

`A245869(A005408(n)+A000124(n+5)+5)`
-/

namespace A245868.P3562581501400802480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A005408 n + (A000124 (n + 5) + 5)).toNat

end

end A245868.P3562581501400802480

namespace A245868

/-- `A245869(A005408(n)+A000124(n+5)+5)` -/
def P3562581501400802480.Spec : Prop :=
  ∀ n, P3562581501400802480.a n = A245868 (n + 1)

end A245868

/-!
# A245871: Number of length 2+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

The programs for A245871, the canonical program `A245871.P12093525415730841866` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245871 has offset 1).

The definition of A245871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245871.P5377642859888675315

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=10, a(1)=45, a(2)=100, a(3)=193, a(4)=318`
-/

namespace A245871.P5377642859888675315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 45, 100, 193, 318] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A245871.P5377642859888675315

namespace A245871

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P5377642859888675315.Spec : Prop :=
  ∀ n, P5377642859888675315.a n = A245871 (n + 1)

end A245871

/-! ## A245871.P12093525415730841866

`2*(n+1)*(∑[n+4]+2)-Δ[A052938(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245871

/-- `2*(n+1)*(∑[n+4]+2)-Δ[A052938(n)]` -/
def P12093525415730841866.Spec : Prop :=
  ∀ n, P12093525415730841866.a n = A245871 (n + 1)

theorem P12093525415730841866.correct : P12093525415730841866.Spec := by
  intro n
  simp only [A245871, Nat.add_sub_cancel]

end A245871

/-! ## A245871.P2046075359881152774

`(A056000(n)+6)*2*(n+1)+2-gcd(2, n)²`
-/

namespace A245871.P2046075359881152774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056000 n + 6) * (2 * (n + 1) : ℤ) + (2 - (Nat.gcd 2 n ^ 2 : ℤ))

end

end A245871.P2046075359881152774

namespace A245871

/-- `(A056000(n)+6)*2*(n+1)+2-gcd(2, n)²` -/
def P2046075359881152774.Spec : Prop :=
  ∀ n, P2046075359881152774.a n = A245871 (n + 1)

end A245871

/-! ## A245871.P16265806075950359209

`A270257(n+1)+A081437(n+1)`
-/

namespace A245871.P16265806075950359209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270257 (n + 1) + A081437 (n + 1)

end

end A245871.P16265806075950359209

namespace A245871

/-- `A270257(n+1)+A081437(n+1)` -/
def P16265806075950359209.Spec : Prop :=
  ∀ n, P16265806075950359209.a n = A245871 (n + 1)

end A245871

/-! ## A245871.P1313322901479052971

`A245869(∑[n+1]+2)`
-/

namespace A245871.P1313322901479052971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A245871.P1313322901479052971

namespace A245871

/-- `A245869(∑[n+1]+2)` -/
def P1313322901479052971.Spec : Prop :=
  ∀ n, P1313322901479052971.a n = A245871 (n + 1)

end A245871

/-! ## A245871.P16049429790614110183

`A245869(A000124(n)+2+n)+A000007(n+1)`
-/

namespace A245871.P16049429790614110183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000124 n + 2 + (n : ℤ)).toNat + A000007 (n + 1)

end

end A245871.P16049429790614110183

namespace A245871

/-- `A245869(A000124(n)+2+n)+A000007(n+1)` -/
def P16049429790614110183.Spec : Prop :=
  ∀ n, P16049429790614110183.a n = A245871 (n + 1)

end A245871

/-!
# A245872: Number of length 3+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

The programs for A245872, there is no canonical definition to state claims against.
-/

/-! ## A245872.P6180646346967874236

`A245869(∑[n+2]+4)`
-/

namespace A245872.P6180646346967874236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A245872.P6180646346967874236

/-! ## A245872.P4179047425428316099

`lcm(A097807(n), A245869(A167614(n+1)))`
-/

namespace A245872.P4179047425428316099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A245869 (A167614 (n + 1)).toNat)

end

end A245872.P4179047425428316099

/-! ## A245872.P8195890602492972532

`A245869(A055998(n)+6)+A000038(n+1)`
-/

namespace A245872.P8195890602492972532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A055998 n + 6).toNat + A000038 (n + 1)

end

end A245872.P8195890602492972532

/-! ## A245872.P13753210545302567831

`A245869(A167614(n+1))%A245873(n+1)`
-/

namespace A245872.P13753210545302567831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245869 (A167614 (n + 1)).toNat) (A245873 (n + 1))

end

end A245872.P13753210545302567831

/-! ## A245872.P11105448193659431212

`A124392(A000096(n))*A245869(A167614(n+1))`
-/

namespace A245872.P11105448193659431212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 (A000096 n).toNat * A245869 (A167614 (n + 1)).toNat

end

end A245872.P11105448193659431212

/-! ## A245872.P69423327617412433

`A245869(A167614(n+1))%A221575(A017041(n))`
-/

namespace A245872.P69423327617412433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245869 (A167614 (n + 1)).toNat) (A221575 (A017041 n).toNat)

end

end A245872.P69423327617412433

/-! ## A245872.P12963343188354608498

`A245869(A167614(n+1))+A079126(A000217(n+3))`
-/

namespace A245872.P12963343188354608498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A167614 (n + 1)).toNat + A079126 (A000217 (n + 3)).toNat

end

end A245872.P12963343188354608498

/-! ## A245872.P1053641140068750816

`A001222(A007708(n+1))*A245869(A167614(n+1))`
-/

namespace A245872.P1053641140068750816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007708 (n + 1)).toNat * A245869 (A167614 (n + 1)).toNat

end

end A245872.P1053641140068750816

/-!
# A245873: Number of length 4+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

The programs for A245873, there is no canonical definition to state claims against.
-/

/-! ## A245873.P6615495130067541010

`A245869(∑[n+3]+7)`
-/

namespace A245873.P6615495130067541010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A245873.P6615495130067541010

/-! ## A245873.P10848607837529335492

`lcm(A165471(n+1), A245869(A167614(n+2)+1))`
-/

namespace A245873.P10848607837529335492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165471 (n + 1)) (A245869 (A167614 (n + 2) + 1).toNat)

end

end A245873.P10848607837529335492

/-! ## A245873.P471725538696648908

`A245869(A167614(n+2)+1)%A000108(n+11)`
-/

namespace A245873.P471725538696648908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245869 (A167614 (n + 2) + 1).toNat) (A000108 (n + 11))

end

end A245873.P471725538696648908

/-! ## A245873.P13698240221620338502

`A124392(A000096(n))*A245869(A167614(n+2)+1)`
-/

namespace A245873.P13698240221620338502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 (A000096 n).toNat * A245869 (A167614 (n + 2) + 1).toNat

end

end A245873.P13698240221620338502

/-! ## A245873.P5014797377994685733

`A001222(A005385(n+1))*A245869(A167614(n+2)+1)`
-/

namespace A245873.P5014797377994685733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005385 (n + 1)).toNat * A245869 (A167614 (n + 2) + 1).toNat

end

end A245873.P5014797377994685733

/-!
# A245874: Number of length 5+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

The programs for A245874, there is no canonical definition to state claims against.
-/

/-! ## A245874.P7884583276480936751

`A245869(A167499(n+3))`
-/

namespace A245874.P7884583276480936751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A167499 (n + 3)).toNat

end

end A245874.P7884583276480936751

/-! ## A245874.P5049946328213088006

`A245869(A166136(n+3)-1)`
-/

namespace A245874.P5049946328213088006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A166136 (n + 3) - 1).toNat

end

end A245874.P5049946328213088006

/-! ## A245874.P2918638636830714461

`A245869(A167614(n+3)+2)`
-/

namespace A245874.P2918638636830714461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A167614 (n + 3) + 2).toNat

end

end A245874.P2918638636830714461

/-! ## A245874.P3638282584554023488

`A245869(A055998(n+2)+8)`
-/

namespace A245874.P3638282584554023488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A055998 (n + 2) + 8).toNat

end

end A245874.P3638282584554023488

/-! ## A245874.P14094688127358348493

`A245869(A046691(n+9)-A017041(n+6))`
-/

namespace A245874.P14094688127358348493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A046691 (n + 9) - A017041 (n + 6)).toNat

end

end A245874.P14094688127358348493

/-!
# A245875: Number of length 6+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

The programs for A245875, there is no canonical definition to state claims against.
-/

/-! ## A245875.P12796610585659713406

`A245869(A166136(n+4))`
-/

namespace A245875.P12796610585659713406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A166136 (n + 4)).toNat

end

end A245875.P12796610585659713406

/-! ## A245875.P15663999076287733538

`A245869(A167499(n+4)+1)`
-/

namespace A245875.P15663999076287733538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A167499 (n + 4) + 1).toNat

end

end A245875.P15663999076287733538

/-! ## A245875.P6907788891553352810

`A245869(A167614(n+4)+3)`
-/

namespace A245875.P6907788891553352810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A167614 (n + 4) + 3).toNat

end

end A245875.P6907788891553352810

/-! ## A245875.P13884105680847177026

`A245869(A000124(n+5)+5)`
-/

namespace A245875.P13884105680847177026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000124 (n + 5) + 5).toNat

end

end A245875.P13884105680847177026

/-! ## A245875.P14887885098273679466

`A245869(A000217(n+5)+6)`
-/

namespace A245875.P14887885098273679466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000217 (n + 5) + 6).toNat

end

end A245875.P14887885098273679466

/-!
# A245876: Number of length 7+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

The programs for A245876, there is no canonical definition to state claims against.
-/

/-! ## A245876.P9301016916039722672

`A245869(A166136(n+5)+1)`
-/

namespace A245876.P9301016916039722672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A166136 (n + 5) + 1).toNat

end

end A245876.P9301016916039722672

/-! ## A245876.P11113597500739602133

`A245869(A167499(n+5)+2)`
-/

namespace A245876.P11113597500739602133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A167499 (n + 5) + 2).toNat

end

end A245876.P11113597500739602133

/-! ## A245876.P12810712596956381861

`A245869(A000217(n+6)+7)`
-/

namespace A245876.P12810712596956381861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A000217 (n + 6) + 7).toNat

end

end A245876.P12810712596956381861

/-! ## A245876.P12179654068057774396

`A245869(A052905(n+3)+12)`
-/

namespace A245876.P12179654068057774396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A052905 (n + 3) + 12).toNat

end

end A245876.P12179654068057774396

/-! ## A245876.P23777624240475598

`A245869(A008486(n+7)+A000124(n+3))`
-/

namespace A245876.P23777624240475598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245869 (A008486 (n + 7) + A000124 (n + 3)).toNat

end

end A245876.P23777624240475598

/-!
# A245877: Primes p such that p - d and p + d are also primes, where d is the largest digit of p.

The programs for A245877, the canonical program `A245877.P16878826278182840931` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245877 has offset 1).

The definition of A245877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245877.P5999210210288865509

`∩[A046119(n+1), A106096(n+1)]`
-/

namespace A245877.P5999210210288865509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245877.P5999210210288865509

namespace A245877

/-- `∩[A046119(n+1), A106096(n+1)]` -/
def P5999210210288865509.Spec : Prop :=
  ∀ n, (P5999210210288865509.a n : ℤ) = A245877 (n + 1)

end A245877

/-! ## A245877.P7320564173216049403

`∩[A006489(n+1), A106096(n+1)]`
-/

namespace A245877.P7320564173216049403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245877.P7320564173216049403

namespace A245877

/-- `∩[A006489(n+1), A106096(n+1)]` -/
def P7320564173216049403.Spec : Prop :=
  ∀ n, (P7320564173216049403.a n : ℤ) = A245877 (n + 1)

end A245877

/-! ## A245877.P16878826278182840931

`∩[A245742(n+1), A245743(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A245877

/-- `∩[A245742(n+1), A245743(n+1)]` -/
def P16878826278182840931.Spec : Prop :=
  ∀ n, (P16878826278182840931.a n : ℤ) = A245877 (n + 1)

theorem P16878826278182840931.correct : P16878826278182840931.Spec := by
  intro n
  simp only [A245877, Nat.add_sub_cancel]

end A245877

/-! ## A245877.P8473453166218782371

`∩[A087681(n+1), A106096(n+1)]`
-/

namespace A245877.P8473453166218782371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245877.P8473453166218782371

namespace A245877

/-- `∩[A087681(n+1), A106096(n+1)]` -/
def P8473453166218782371.Spec : Prop :=
  ∀ n, (P8473453166218782371.a n : ℤ) = A245877 (n + 1)

end A245877

/-! ## A245877.P12037442199895312331

`∩[A006489(n+1), A283609(n+1)]`
-/

namespace A245877.P12037442199895312331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245877.P12037442199895312331

namespace A245877

/-- `∩[A006489(n+1), A283609(n+1)]` -/
def P12037442199895312331.Spec : Prop :=
  ∀ n, (P12037442199895312331.a n : ℤ) = A245877 (n + 1)

end A245877

/-!
# A245878: Primes p such that p - d and p + d are also primes, where d is the smallest nonzero digit of p.

The programs for A245878, there is no canonical definition to state claims against.
-/

/-! ## A245878.P16733072197971617942

`∩[A245744(n+1), A245745(n+1)]`
-/

namespace A245878.P16733072197971617942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245878.P16733072197971617942

/-!
# A245879: Number of distinct fractional chromatic numbers among all connected graphs on n nodes.

The programs for A245879, there is no canonical definition to state claims against.
-/

/-! ## A245879.P1637217897658232388

`round(sqrt(floor(∑[n]+3^n/8)+1))`
-/

namespace A245879.P1637217897658232388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (3 ^ n : ℚ) / 8⌋ + 1 : ℝ))

end

end A245879.P1637217897658232388

/-! ## A245879.P14442785757094361258

`∑[round(sqrt(A303839(n)))]`
-/

namespace A245879.P14442785757094361258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A303839 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245879.P14442785757094361258

/-! ## A245879.P1953930312450540352

`ceil(sqrt(A319793(n))+n)`
-/

namespace A245879.P1953930312450540352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A319793 n : ℝ) + (n : ℝ)⌉

end

end A245879.P1953930312450540352

/-! ## A245879.P16080999590635345043

`∑[round(A113864(n)/3)]+1`
-/

namespace A245879.P16080999590635345043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A113864 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A245879.P16080999590635345043

/-! ## A245879.P1989706512778665983

`floor(A034343(n+2)^acot(2))`
-/

namespace A245879.P1989706512778665983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034343 (n + 2) : ℝ) ^ (SequenceMachineLib.acot (2 : ℝ))⌋

end

end A245879.P1989706512778665983

/-!
# A245880: Number of distinct characteristic polynomials among all connected graphs on n nodes.

The programs for A245880, there is no canonical definition to state claims against.
-/

/-! ## A245880.P9957652796304291452

`round((A112086(n+1)+A047993(3*n+2))/4)`
-/

namespace A245880.P9957652796304291452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112086 (n + 1) + A047993 (3 * n + 2) : ℚ) / 4)

end

end A245880.P9957652796304291452

/-! ## A245880.P2663332821321969185

`A325354(n)+A002265(A201720(n))`
-/

namespace A245880.P2663332821321969185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325354 n + A002265 (A201720 n).toNat

end

end A245880.P2663332821321969185

/-! ## A245880.P16843768792631081641

`A303163(A234568(n))+A086620(n)`
-/

namespace A245880.P16843768792631081641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303163 (A234568 n).toNat + A086620 n

end

end A245880.P16843768792631081641

/-!
# A245881: Number of distinct Tutte polynomials among all connected graphs on n nodes.

The programs for A245881, there is no canonical definition to state claims against.
-/

/-! ## A245881.P18109208539741867579

`A248133(A344262(n)+ceil(sin(n)²))`
-/

namespace A245881.P18109208539741867579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248133 (A344262 n + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A245881.P18109208539741867579

/-! ## A245881.P5158348939466951725

`A248133(A344262(round(sqrt(n²+1)))+1)`
-/

namespace A245881.P5158348939466951725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248133 (A344262 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1).toNat

end

end A245881.P5158348939466951725

/-! ## A245881.P17313151509365416508

`A078639(n+1)-A185213(A078661(3*n))`
-/

namespace A245881.P17313151509365416508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078639 (n + 1) - A185213 (A078661 (3 * n)).toNat

end

end A245881.P17313151509365416508

/-!
# A245882: Number of distinct Laplacian polynomials among all connected graphs on n nodes.

The programs for A245882, there is no canonical definition to state claims against.
-/

/-! ## A245882.P8917990345848717993

`A326245(n)+A321911(n+1)`
-/

namespace A245882.P8917990345848717993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326245 n + A321911 (n + 1)

end

end A245882.P8917990345848717993

/-! ## A245882.P156580242672467875

`xor(A061552(n), A241447(A006054(n)))`
-/

namespace A245882.P156580242672467875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061552 n) (A241447 (A006054 n).toNat)

end

end A245882.P156580242672467875

/-! ## A245882.P11499005022765338807

`A156808(n+1)+A004198(A349303(n))`
-/

namespace A245882.P11499005022765338807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156808 (n + 1) + A004198 (A349303 n).toNat

end

end A245882.P11499005022765338807

/-!
# A245883: Number of distinct chromatic polynomials among all connected graphs on n nodes.

The programs for A245883, there is no canonical definition to state claims against.
-/

/-! ## A245883.P7603402294476459749

`A054846(A156171(n))`
-/

namespace A245883.P7603402294476459749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A156171 n).toNat

end

end A245883.P7603402294476459749

/-! ## A245883.P14395046129749625492

`A263270(∑[A184947(n)])`
-/

namespace A245883.P14395046129749625492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245883.P14395046129749625492

/-! ## A245883.P8085274631600226249

`A249728(∏[A327046(n)])`
-/

namespace A245883.P8085274631600226249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245883.P8085274631600226249

/-!
# A245888: Number of labeled increasing unary-binary trees on n nodes whose breadth-first reading word avoids 231.

The programs for A245888, there is no canonical definition to state claims against.
-/

/-! ## A245888.P15192607058389629289

`A020960(A363496(n)+1)/2`
-/

namespace A245888.P15192607058389629289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020960 (A363496 n + 1).toNat : ℚ) / 2

end

end A245888.P15192607058389629289

/-! ## A245888.P10223589014563893843

`A350451(n)+A186038(A270789(n))`
-/

namespace A245888.P10223589014563893843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350451 n + A186038 (A270789 n).toNat

end

end A245888.P10223589014563893843

/-!
# A245889: Number of labeled increasing unary-binary trees on n nodes whose breadth-first reading word avoids 312.

The programs for A245889, there is no canonical definition to state claims against.
-/

/-! ## A245889.P14448868497543404929

`A236966(A000248(n))+A000110(n)`
-/

namespace A245889.P14448868497543404929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236966 (A000248 n).toNat + A000110 n

end

end A245889.P14448868497543404929

/-! ## A245889.P14861719432208440852

`A195177(A150810(n)+A000330(n))`
-/

namespace A245889.P14861719432208440852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A150810 n + A000330 n).toNat

end

end A245889.P14861719432208440852

/-! ## A245889.P18303421744301123775

`A097992(A150226(n)+A150220(n))`
-/

namespace A245889.P18303421744301123775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A150226 n + A150220 n).toNat

end

end A245889.P18303421744301123775

/-!
# A245890: Number of labeled increasing unary-binary trees on n nodes whose breadth-first reading word avoids 321.

The programs for A245890, there is no canonical definition to state claims against.
-/

/-! ## A245890.P6283380618152988917

`A013044(n)-A001221(A052599(n))`
-/

namespace A245890.P6283380618152988917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 n - A001221 (A052599 n).toNat

end

end A245890.P6283380618152988917

/-! ## A245890.P13591327027853553726

`floor(record[tan(A346683(n))])`
-/

namespace A245890.P13591327027853553726
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A346683 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A245890.P13591327027853553726

/-!
# A245891: Number of labeled increasing unary-binary trees on n nodes whose breadth-first reading word avoids 213 and 321.

The programs for A245891, there is no canonical definition to state claims against.
-/

/-! ## A245891.P10585121418794035927

`A263085(A001006(n))`
-/

namespace A245891.P10585121418794035927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (A001006 n).toNat

end

end A245891.P10585121418794035927

/-! ## A245891.P13064232977169773143

`A263085(A005207(n))`
-/

namespace A245891.P13064232977169773143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (A005207 n).toNat

end

end A245891.P13064232977169773143

/-! ## A245891.P335010055806265600

`A263085(A094286(n))`
-/

namespace A245891.P335010055806265600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (A094286 n).toNat

end

end A245891.P335010055806265600

/-! ## A245891.P12426898019909774079

`A263085(A094287(n))`
-/

namespace A245891.P12426898019909774079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (A094287 n).toNat

end

end A245891.P12426898019909774079

/-!
# A245892: Number of labeled increasing unary-binary trees on n nodes whose breadth-first reading word simultaneously avoids 231 and 312 (or avoids 312 and 321).

The programs for A245892, there is no canonical definition to state claims against.
-/

/-! ## A245892.P10384853421214075518

`A187224(A114296(n))-A067100(n+3)`
-/

namespace A245892.P10384853421214075518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (A114296 n).toNat - A067100 (n + 3)

end

end A245892.P10384853421214075518

/-! ## A245892.P5642905647687908468

`A379293(A149162(n))`
-/

namespace A245892.P5642905647687908468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379293 (A149162 n).toNat

end

end A245892.P5642905647687908468

/-! ## A245892.P2446944737832846628

`A309150(A056355(n))+1`
-/

namespace A245892.P2446944737832846628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309150 (A056355 n).toNat + 1

end

end A245892.P2446944737832846628

/-!
# A245893: Number of labeled increasing unary-binary trees on n nodes whose breadth-first reading word simultaneously avoids 231 and 321.

The programs for A245893, there is no canonical definition to state claims against.
-/

/-! ## A245893.P4115647959846890221

`A375444(n)+A218654(A277996(n+1))`
-/

namespace A245893.P4115647959846890221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375444 n + A218654 (A277996 (n + 1)).toNat

end

end A245893.P4115647959846890221

/-! ## A245893.P9420021753622560898

`A008615(A150501(n)+A150494(n))`
-/

namespace A245893.P9420021753622560898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A150501 n + A150494 n).toNat

end

end A245893.P9420021753622560898

/-! ## A245893.P13534341910300314423

`A008615(A150502(n)+A150492(n))`
-/

namespace A245893.P13534341910300314423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A150502 n + A150492 n).toNat

end

end A245893.P13534341910300314423

/-!
# A245894: Number of labeled increasing binary trees on 2*n-1 nodes whose breadth-first reading word avoids 231.

The programs for A245894, there is no canonical definition to state claims against.
-/

/-! ## A245894.P11347194672299639466

`ceil(A000040(∑[(3*n-1)*a(n-1)])/3)` with `a(0)=1`
-/

namespace A245894.P11347194672299639466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((3 * n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌉

end

end A245894.P11347194672299639466

/-!
# A245895: Number of labeled increasing binary trees on 2n-1 nodes whose breadth-first reading word avoids 312.

The programs for A245895, there is no canonical definition to state claims against.
-/

/-! ## A245895.P4991397993173369903

`ceil(Δ[(n+2)^(n-1)/2])`
-/

namespace A245895.P4991397993173369903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A245895.P4991397993173369903

/-!
# A245896: Number of labeled increasing binary trees on 2n-1 nodes whose breadth-first reading word avoids 321.

The programs for A245896, there is no canonical definition to state claims against.
-/

/-! ## A245896.P4542055597447588785

`floor(a(n-1)/acot(4*n))-n` with `a(0)=1, a(1)=2`
-/

namespace A245896.P4542055597447588785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / SequenceMachineLib.acot (4 * n : ℝ)⌋ - (n : ℤ)

end

end A245896.P4542055597447588785

/-!
# A245897: Number of labeled increasing binary trees on 2n-1 nodes whose breadth-first reading word simultaneously avoids 231 and 321.

The programs for A245897, there is no canonical definition to state claims against.
-/

/-! ## A245897.P16794719430995733948

`∑[A233347(2*n)]`
-/

namespace A245897.P16794719430995733948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245897.P16794719430995733948

/-!
# A245898: Number of permutations avoiding 231 that can be realized on increasing unary-binary trees with n nodes.

The programs for A245898, there is no canonical definition to state claims against.
-/

/-! ## A245898.P10921762499486212551

`ogf((-1+2x+x^2+2x^3+2x^4+4x^5+4x^6+5x^7)/(-1+3x))`
-/

namespace A245898.P10921762499486212551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, -2, -2, -4, -4, -5] [1, -3] n

end

end A245898.P10921762499486212551

/-! ## A245898.P12618396917124380365

`ceil((2*n+1)^cot(7/(2*n+1)))`
-/

namespace A245898.P12618396917124380365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) ^ (Real.cot (7 / (2 * n + 1 : ℚ) : ℝ))⌉

end

end A245898.P12618396917124380365

/-! ## A245898.P12682626127941580530

`3*a(n-1)-a(n-2)%n` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A245898.P12682626127941580530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  3 * a (n - 1) - Int.tmod (a (n - 2)) (n : ℤ)

end

end A245898.P12682626127941580530

/-! ## A245898.P4062074387632500064

`A089429(n)-char[7]`
-/

namespace A245898.P4062074387632500064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089429 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245898.P4062074387632500064

