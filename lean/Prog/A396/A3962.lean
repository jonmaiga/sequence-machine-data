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
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A396200: Triangle read by rows: T(n, k) = Sum_{i=0..n} binomial(2*i, i) * binomial(n - 2*i, k - i).

The programs for A396200, the canonical program `A396200.P3632451015739113007` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396200 has offset 0).

The definition of A396200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204621, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A396200.P3632451015739113007

`2^(row(n)+1)-A204621(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396200

/-- `2^(row(n)+1)-A204621(C(row(n)+1, 2)+col(n))` -/
def P3632451015739113007.Spec : Prop :=
  ∀ n, P3632451015739113007.a n = A396200 n

theorem P3632451015739113007.correct : P3632451015739113007.Spec := by
  intro n
  simp only [A396200]

end A396200

/-! ## A396200.P15326740009784451051

`A140513(n)-A204621(n)`
-/

namespace A396200.P15326740009784451051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A204621 n

end

end A396200.P15326740009784451051

namespace A396200

/-- `A140513(n)-A204621(n)` -/
def P15326740009784451051.Spec : Prop :=
  ∀ n, P15326740009784451051.a n = A396200 n

end A396200

/-! ## A396200.P18069509796571730419

`A397278(A209382(n+1))`
-/

namespace A396200.P18069509796571730419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397278 (A209382 (n + 1)).toNat

end

end A396200.P18069509796571730419

namespace A396200

/-- `A397278(A209382(n+1))` -/
def P18069509796571730419.Spec : Prop :=
  ∀ n, P18069509796571730419.a n = A396200 n

end A396200

/-!
# A396201: a(x) = psi * phi^(-x) + (1 - psi) * (-phi)^x, where phi = (1 + sqrt(5)) / 2 and psi = phi^4 / sqrt(5) - 1, evaluated at the nonnegative integers.

The programs for A396201, the canonical program `A396201.P2362147857527105902` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396201 has offset 0).

The definition of A396201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396201.P3808496126076871375

`A396583(C(n+1, 2)+n)`
-/

namespace A396201.P3808496126076871375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396583 (Nat.choose (n + 1) 2 + n)

end

end A396201.P3808496126076871375

namespace A396201

/-- `A396583(C(n+1, 2)+n)` -/
def P3808496126076871375.Spec : Prop :=
  ∀ n, P3808496126076871375.a n = A396201 n

end A396201

/-! ## A396201.P5631559936941808989

`ogf((1+4x)/(1+x-x^2))`
-/

namespace A396201.P5631559936941808989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 1, -1] n

end

end A396201.P5631559936941808989

namespace A396201

/-- `ogf((1+4x)/(1+x-x^2))` -/
def P5631559936941808989.Spec : Prop :=
  ∀ n, P5631559936941808989.a n = A396201 n

end A396201

/-! ## A396201.P2362147857527105902

`a(n-2)-a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396201

/-- `a(n-2)-a(n-1)` -/
def P2362147857527105902.Spec : Prop :=
  ∀ n, P2362147857527105902.a n = A396201 n

theorem P2362147857527105902.correct : P2362147857527105902.Spec := by
  intro n
  simp only [A396201]

end A396201

/-! ## A396201.P5984287494721226214

`A005247(n)-(A075193(n)+A005013(n))`
-/

namespace A396201.P5984287494721226214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n - (A075193 n + A005013 n)

end

end A396201.P5984287494721226214

namespace A396201

/-- `A005247(n)-(A075193(n)+A005013(n))` -/
def P5984287494721226214.Spec : Prop :=
  ∀ n, P5984287494721226214.a n = A396201 n

end A396201

/-! ## A396201.P7243053345677164986

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000285(#)]`
-/

namespace A396201.P7243053345677164986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000285 k : ℚ)

end

end A396201.P7243053345677164986

namespace A396201

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A000285(#)]` -/
def P7243053345677164986.Spec : Prop :=
  ∀ n, P7243053345677164986.a n = (A396201 n : ℚ)

end A396201

/-! ## A396201.P12025545718258184118

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A171516(#)]`
-/

namespace A396201.P12025545718258184118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A171516 k : ℚ)

end

end A396201.P12025545718258184118

namespace A396201

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A171516(#)]` -/
def P12025545718258184118.Spec : Prop :=
  ∀ n, P12025545718258184118.a n = (A396201 n : ℚ)

end A396201

/-! ## A396201.P3690754308896949923

`A396582(n)/2^n`
-/

namespace A396201.P3690754308896949923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396582 n : ℚ) / (2 ^ n : ℚ)

end

end A396201.P3690754308896949923

namespace A396201

/-- `A396582(n)/2^n` -/
def P3690754308896949923.Spec : Prop :=
  ∀ n, P3690754308896949923.a n = (A396201 n : ℚ)

end A396201

/-! ## A396201.P7972648494932969009

`A396583(∑[n]+n)`
-/

namespace A396201.P7972648494932969009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396583 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A396201.P7972648494932969009

namespace A396201

/-- `A396583(∑[n]+n)` -/
def P7972648494932969009.Spec : Prop :=
  ∀ n, P7972648494932969009.a n = A396201 n

end A396201

/-! ## A396201.P10888949874932199826

`∑{#}[n, A396197(C(n+1, 2)+#)]`
-/

namespace A396201.P10888949874932199826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A396197 (Nat.choose (n + 1) 2 + k)

end

end A396201.P10888949874932199826

namespace A396201

/-- `∑{#}[n, A396197(C(n+1, 2)+#)]` -/
def P10888949874932199826.Spec : Prop :=
  ∀ n, P10888949874932199826.a n = A396201 n

end A396201

/-!
# A396202: Decimal expansion of (7 - sqrt(5)) / (7 + sqrt(5)).

The programs for A396202, there is no canonical definition to state claims against.
-/

/-! ## A396202.P10995674002031336767

`9-A391987(n)`
-/

namespace A396202.P10995674002031336767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A391987 n

end

end A396202.P10995674002031336767

/-!
# A396203: Primes p such that the gap to the next prime is floor(log_2(p)).

The programs for A396203, the canonical program `A396203.P15910022281224477011` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396203 has offset 1).

The definition of A396203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396203.P15910022281224477011

`p?[A396279(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396203

/-- `p?[A396279(n+1)]` -/
def P15910022281224477011.Spec : Prop :=
  ∀ n, P15910022281224477011.a n = A396203 (n + 1)

theorem P15910022281224477011.correct : P15910022281224477011.Spec := by
  intro n
  simp only [A396203, Nat.add_sub_cancel]

end A396203

/-! ## A396203.P373383523412340981

`∩[A082885(n+1), A396279(n+1)]`
-/

namespace A396203.P373383523412340981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P373383523412340981

namespace A396203

/-- `∩[A082885(n+1), A396279(n+1)]` -/
def P373383523412340981.Spec : Prop :=
  ∀ n, (P373383523412340981.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P12286262094172486706

`∩[A045344(n+1), A396279(n+1)]`
-/

namespace A396203.P12286262094172486706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P12286262094172486706

namespace A396203

/-- `∩[A045344(n+1), A396279(n+1)]` -/
def P12286262094172486706.Spec : Prop :=
  ∀ n, (P12286262094172486706.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P15807576543847671916

`∩[A106118(n+1), A396279(n+1)]`
-/

namespace A396203.P15807576543847671916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P15807576543847671916

namespace A396203

/-- `∩[A106118(n+1), A396279(n+1)]` -/
def P15807576543847671916.Spec : Prop :=
  ∀ n, (P15807576543847671916.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P4010649894229340978

`∩[A000040(n+1), A396279(n+1)]`
-/

namespace A396203.P4010649894229340978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P4010649894229340978

namespace A396203

/-- `∩[A000040(n+1), A396279(n+1)]` -/
def P4010649894229340978.Spec : Prop :=
  ∀ n, (P4010649894229340978.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P13256718840454001960

`∩[A008578(n+1), A396279(n+1)]`
-/

namespace A396203.P13256718840454001960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P13256718840454001960

namespace A396203

/-- `∩[A008578(n+1), A396279(n+1)]` -/
def P13256718840454001960.Spec : Prop :=
  ∀ n, (P13256718840454001960.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P12050774950557558807

`∩[A046022(n+1), A396279(n+1)]`
-/

namespace A396203.P12050774950557558807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P12050774950557558807

namespace A396203

/-- `∩[A046022(n+1), A396279(n+1)]` -/
def P12050774950557558807.Spec : Prop :=
  ∀ n, (P12050774950557558807.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P9652452839073036585

`∩[A051948(n+1), A396279(n+1)]`
-/

namespace A396203.P9652452839073036585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P9652452839073036585

namespace A396203

/-- `∩[A051948(n+1), A396279(n+1)]` -/
def P9652452839073036585.Spec : Prop :=
  ∀ n, (P9652452839073036585.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P2753308012216838447

`∩[A053813(n+1), A396279(n+1)]`
-/

namespace A396203.P2753308012216838447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P2753308012216838447

namespace A396203

/-- `∩[A053813(n+1), A396279(n+1)]` -/
def P2753308012216838447.Spec : Prop :=
  ∀ n, (P2753308012216838447.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P14585035155465938505

`∩[A062972(n+1), A396279(n+1)]`
-/

namespace A396203.P14585035155465938505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P14585035155465938505

namespace A396203

/-- `∩[A062972(n+1), A396279(n+1)]` -/
def P14585035155465938505.Spec : Prop :=
  ∀ n, (P14585035155465938505.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P10373814445746496958

`∩[A066050(n+1), A396279(n+1)]`
-/

namespace A396203.P10373814445746496958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P10373814445746496958

namespace A396203

/-- `∩[A066050(n+1), A396279(n+1)]` -/
def P10373814445746496958.Spec : Prop :=
  ∀ n, (P10373814445746496958.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P15056873489090921040

`∩[A067126(n+1), A396279(n+1)]`
-/

namespace A396203.P15056873489090921040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P15056873489090921040

namespace A396203

/-- `∩[A067126(n+1), A396279(n+1)]` -/
def P15056873489090921040.Spec : Prop :=
  ∀ n, (P15056873489090921040.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P12275114553929139200

`∩[A116974(n+1), A396279(n+1)]`
-/

namespace A396203.P12275114553929139200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P12275114553929139200

namespace A396203

/-- `∩[A116974(n+1), A396279(n+1)]` -/
def P12275114553929139200.Spec : Prop :=
  ∀ n, (P12275114553929139200.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P522949012302746663

`filter[A396279(n+1), A010051(#)]`
-/

namespace A396203.P522949012302746663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A396203.P522949012302746663

namespace A396203

/-- `filter[A396279(n+1), A010051(#)]` -/
def P522949012302746663.Spec : Prop :=
  ∀ n, P522949012302746663.a n = A396203 (n + 1)

end A396203

/-! ## A396203.P7363235390079570057

`∩[A174219(n+1), A396279(n+1)]`
-/

namespace A396203.P7363235390079570057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P7363235390079570057

namespace A396203

/-- `∩[A174219(n+1), A396279(n+1)]` -/
def P7363235390079570057.Spec : Prop :=
  ∀ n, (P7363235390079570057.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P4374170603263622307

`filter[A396279(n+1), A323152(#)]`
-/

namespace A396203.P4374170603263622307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A396203.P4374170603263622307

namespace A396203

/-- `filter[A396279(n+1), A323152(#)]` -/
def P4374170603263622307.Spec : Prop :=
  ∀ n, P4374170603263622307.a n = A396203 (n + 1)

end A396203

/-! ## A396203.P14513805478939511171

`filter[A396279(n+1), A323153(#)]`
-/

namespace A396203.P14513805478939511171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A396203.P14513805478939511171

namespace A396203

/-- `filter[A396279(n+1), A323153(#)]` -/
def P14513805478939511171.Spec : Prop :=
  ∀ n, P14513805478939511171.a n = A396203 (n + 1)

end A396203

/-! ## A396203.P10150952918415780817

`∩[A117094(n+1), A396279(n+1)]`
-/

namespace A396203.P10150952918415780817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P10150952918415780817

namespace A396203

/-- `∩[A117094(n+1), A396279(n+1)]` -/
def P10150952918415780817.Spec : Prop :=
  ∀ n, (P10150952918415780817.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P1970619849068235987

`∩[A117095(n+1), A396279(n+1)]`
-/

namespace A396203.P1970619849068235987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P1970619849068235987

namespace A396203

/-- `∩[A117095(n+1), A396279(n+1)]` -/
def P1970619849068235987.Spec : Prop :=
  ∀ n, (P1970619849068235987.a n : ℤ) = A396203 (n + 1)

end A396203

/-! ## A396203.P11424064270614878496

`∩[A173919(n+1), A396279(n+1)]`
-/

namespace A396203.P11424064270614878496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396203.P11424064270614878496

namespace A396203

/-- `∩[A173919(n+1), A396279(n+1)]` -/
def P11424064270614878496.Spec : Prop :=
  ∀ n, (P11424064270614878496.a n : ℤ) = A396203 (n + 1)

end A396203

/-!
# A396205: a(n) = number of integers k <= n with g(k)^3 < k, where g(k) is the largest divisor d of k satisfying d <= sqrt(k) (A033676).

The programs for A396205, there is no canonical definition to state claims against.
-/

/-! ## A396205.P5183609877158809477

`A031286(A001591(n))+A000720(n+1)`
-/

namespace A396205.P5183609877158809477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A001591 n).toNat + A000720 (n + 1)

end

end A396205.P5183609877158809477

/-! ## A396205.P13258369891347666900

`A000720(lt[A306320(n), A306329(n+1)])`
-/

namespace A396205.P13258369891347666900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396205.P13258369891347666900

/-! ## A396205.P6163126824489840874

`A325678(A161416(n+1))`
-/

namespace A396205.P6163126824489840874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A161416 (n + 1)).toNat

end

end A396205.P6163126824489840874

/-! ## A396205.P12124944636367588499

`A000720(lt[A162306(n+5), A375127(3*n+2)])`
-/

namespace A396205.P12124944636367588499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375127 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396205.P12124944636367588499

/-! ## A396205.P16799760839236966066

`A122375(A355579(n+1))`
-/

namespace A396205.P16799760839236966066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (A355579 (n + 1)).toNat

end

end A396205.P16799760839236966066

/-!
# A396206: a(1) = 1; for n > 1, a(n) is the smallest number > 3^(n-1) with exactly n divisors.

The programs for A396206, there is no canonical definition to state claims against.
-/

/-! ## A396206.P8500266705770016199

`A079427(3^n)`
-/

namespace A396206.P8500266705770016199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (3 ^ n)

end

end A396206.P8500266705770016199

/-! ## A396206.P8007063074104641302

`A171937(A000244(n))+A000244(n)`
-/

namespace A396206.P8007063074104641302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (A000244 n).toNat + A000244 n

end

end A396206.P8007063074104641302

/-! ## A396206.P9806972475262166038

`A067059(n)*A079427(A000244(n))`
-/

namespace A396206.P9806972475262166038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A079427 (A000244 n).toNat

end

end A396206.P9806972475262166038

/-! ## A396206.P1998407186378607562

`or(A079427(A000244(n)), A249392(n))`
-/

namespace A396206.P1998407186378607562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079427 (A000244 n).toNat) (A249392 n)

end

end A396206.P1998407186378607562

/-! ## A396206.P15948427316183985370

`A325801(n+1)+A079427(A000244(n))`
-/

namespace A396206.P15948427316183985370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1) + A079427 (A000244 n).toNat

end

end A396206.P15948427316183985370

/-!
# A396208: a(n) = Sum_{i=0..n} Sum_{j=0..i} binomial(n+3*i,4*i) * binomial(i+3*j,4*j).

The programs for A396208, there is no canonical definition to state claims against.
-/

/-! ## A396208.P12614365484236701514

`A057354(A156361(n))+A001519(n)`
-/

namespace A396208.P12614365484236701514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A156361 n).toNat + A001519 n

end

end A396208.P12614365484236701514

/-!
# A396209: a(n) = Sum_{i=1..n} Sum_{j=1..i} binomial(j+1,2) * binomial(n+2*i-1,3*i-1) * binomial(i+2*j-1,3*j-1).

The programs for A396209, there is no canonical definition to state claims against.
-/

/-! ## A396209.P14866580617299341672

`A381607(A029778(n+1))`
-/

namespace A396209.P14866580617299341672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381607 (A029778 (n + 1)).toNat

end

end A396209.P14866580617299341672

/-!
# A396210: a(n) = Sum_{i=1..n} Sum_{j=1..i} binomial(j+2,3) * binomial(n+3*i-1,4*i-1) * binomial(i+3*j-1,4*j-1).

The programs for A396210, there is no canonical definition to state claims against.
-/

/-! ## A396210.P8812225961071574039

`A329360(n)+A210444(A000178(n))`
-/

namespace A396210.P8812225961071574039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329360 n + A210444 (A000178 n).toNat

end

end A396210.P8812225961071574039

/-!
# A396222: a(n) = T(n, n + 2), where T(n, m) is the forward-difference table of the Catalan numbers.

The programs for A396222, the canonical program `A396222.P16013225792826000185` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396222 has offset 0).

The definition of A396222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396222.P16013225792826000185

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000108(n+2+#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396222

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A000108(n+2+#)]` -/
def P16013225792826000185.Spec : Prop :=
  ∀ n, P16013225792826000185.a n = (A396222 n : ℚ)

end A396222

/-! ## A396222.P13779183903931274102

`A059346(A001844(n+1))`
-/

namespace A396222.P13779183903931274102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A001844 (n + 1)).toNat

end

end A396222.P13779183903931274102

namespace A396222

/-- `A059346(A001844(n+1))` -/
def P13779183903931274102.Spec : Prop :=
  ∀ n, P13779183903931274102.a n = A396222 n

end A396222

/-! ## A396222.P8136601435991247723

`A059346(A099776(n+1))`
-/

namespace A396222.P8136601435991247723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A099776 (n + 1)).toNat

end

end A396222.P8136601435991247723

namespace A396222

/-- `A059346(A099776(n+1))` -/
def P8136601435991247723.Spec : Prop :=
  ∀ n, P8136601435991247723.a n = A396222 n

end A396222

/-! ## A396222.P5622762773389949744

`A399330(A081270(n))`
-/

namespace A396222.P5622762773389949744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399330 (A081270 n).toNat

end

end A396222.P5622762773389949744

namespace A396222

/-- `A399330(A081270(n))` -/
def P5622762773389949744.Spec : Prop :=
  ∀ n, P5622762773389949744.a n = A396222 n

end A396222

/-! ## A396222.P2959627022766815701

`A398996(A051682(n+1))`
-/

namespace A396222.P2959627022766815701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398996 (A051682 (n + 1)).toNat

end

end A396222.P2959627022766815701

namespace A396222

/-- `A398996(A051682(n+1))` -/
def P2959627022766815701.Spec : Prop :=
  ∀ n, P2959627022766815701.a n = A396222 n

end A396222

/-!
# A396224: a(n) = (n!)^5.

The programs for A396224, the canonical program `A396224.P16898950422535949167` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396224 has offset 0).

The definition of A396224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^5` (program `A396224.P16898950422535949167`, by `A396224.P16898950422535949167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396224.P16898950422535949167

`n!^5`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396224

/-- `n!^5` -/
def P16898950422535949167.Spec : Prop :=
  ∀ n, (P16898950422535949167.a n : ℤ) = A396224 n

theorem P16898950422535949167.correct : P16898950422535949167.Spec := by
  intro n
  simp only [A396224]

end A396224

/-! ## A396224.P17410335399469667135

`A001044(n)*A000442(n)`
-/

namespace A396224.P17410335399469667135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n * A000442 n

end

end A396224.P17410335399469667135

namespace A396224

/-- `A001044(n)*A000442(n)` -/
def P17410335399469667135.Spec : Prop :=
  ∀ n, P17410335399469667135.a n = A396224 n

theorem P17410335399469667135.correct : P17410335399469667135.Spec := by
  intro n
  simp only [A396224, Nat.add_sub_cancel, A396224.P17410335399469667135.a, A396224.P16898950422535949167.a, A000442, A000442.P1367213380399715497.a, A001044, A001044.P12042438856590203725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396224

/-! ## A396224.P10898534075821073202

`A134375(n)*A000142(n)`
-/

namespace A396224.P10898534075821073202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134375 n * A000142 n

end

end A396224.P10898534075821073202

namespace A396224

/-- `A134375(n)*A000142(n)` -/
def P10898534075821073202.Spec : Prop :=
  ∀ n, P10898534075821073202.a n = A396224 n

theorem P10898534075821073202.correct : P10898534075821073202.Spec := by
  intro n
  simp only [A396224, Nat.add_sub_cancel, A396224.P10898534075821073202.a, A396224.P16898950422535949167.a, A000142, A000142.P3272619076580183195.a, A134375, A134375.P11007938509450649342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396224

/-! ## A396224.P3003572207071026974

`A000584(A000142(n))`
-/

namespace A396224.P3003572207071026974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A000142 n).toNat

end

end A396224.P3003572207071026974

namespace A396224

/-- `A000584(A000142(n))` -/
def P3003572207071026974.Spec : Prop :=
  ∀ n, P3003572207071026974.a n = A396224 n

end A396224

/-! ## A396224.P7834744442238231786

`root(n!, 1/5)`
-/

namespace A396224.P7834744442238231786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 5 : ℝ))

end

end A396224.P7834744442238231786

namespace A396224

/-- `root(n!, 1/5)` -/
def P7834744442238231786.Spec : Prop :=
  ∀ n, P7834744442238231786.a n = (A396224 n : ℝ)

theorem P7834744442238231786.correct : P7834744442238231786.Spec := by
  intro n
  simp only [A396224, Nat.add_sub_cancel, A396224.P7834744442238231786.a, A396224.P16898950422535949167.a, SequenceMachineLib.memo_apply]
  try simp

end A396224

/-!
# A396225: a(n) = (n!)^6.

The programs for A396225, the canonical program `A396225.P17083938129874257036` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396225 has offset 0).

The definition of A396225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^6` (program `A396225.P17083938129874257036`, by `A396225.P17083938129874257036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396225.P17083938129874257036

`n!^6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396225

/-- `n!^6` -/
def P17083938129874257036.Spec : Prop :=
  ∀ n, (P17083938129874257036.a n : ℤ) = A396225 n

theorem P17083938129874257036.correct : P17083938129874257036.Spec := by
  intro n
  simp only [A396225]

end A396225

/-! ## A396225.P17016748568183586613

`(n!²*n!)²`
-/

namespace A396225.P17016748568183586613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 * Nat.factorial n) ^ 2

end

end A396225.P17016748568183586613

namespace A396225

/-- `(n!²*n!)²` -/
def P17016748568183586613.Spec : Prop :=
  ∀ n, (P17016748568183586613.a n : ℤ) = A396225 n

theorem P17016748568183586613.correct : P17016748568183586613.Spec := by
  intro n
  simp only [A396225, Nat.add_sub_cancel, A396225.P17016748568183586613.a, A396225.P17083938129874257036.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A396225

/-! ## A396225.P12700471727933717803

`A001014(A000142(n))`
-/

namespace A396225.P12700471727933717803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A000142 n).toNat

end

end A396225.P12700471727933717803

namespace A396225

/-- `A001014(A000142(n))` -/
def P12700471727933717803.Spec : Prop :=
  ∀ n, P12700471727933717803.a n = A396225 n

end A396225

/-!
# A396226: a(n) = (n!)^7.

The programs for A396226, the canonical program `A396226.P3569638910496407692` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396226 has offset 0).

The definition of A396226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^7` (program `A396226.P3569638910496407692`, by `A396226.P3569638910496407692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396226.P3569638910496407692

`n!^7`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396226

/-- `n!^7` -/
def P3569638910496407692.Spec : Prop :=
  ∀ n, (P3569638910496407692.a n : ℤ) = A396226 n

theorem P3569638910496407692.correct : P3569638910496407692.Spec := by
  intro n
  simp only [A396226]

end A396226

/-! ## A396226.P15146562135210427678

`n^7*a(n-1)` with `a(0)=1`
-/

namespace A396226.P15146562135210427678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ 7 * a (n - 1)

end

end A396226.P15146562135210427678

namespace A396226

/-- `n^7*a(n-1)` -/
def P15146562135210427678.Spec : Prop :=
  ∀ n, (P15146562135210427678.a n : ℤ) = A396226 n

end A396226

/-! ## A396226.P11220589378388649759

`A000442(n)*A134375(n)`
-/

namespace A396226.P11220589378388649759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000442 n * A134375 n

end

end A396226.P11220589378388649759

namespace A396226

/-- `A000442(n)*A134375(n)` -/
def P11220589378388649759.Spec : Prop :=
  ∀ n, P11220589378388649759.a n = A396226 n

theorem P11220589378388649759.correct : P11220589378388649759.Spec := by
  intro n
  simp only [A396226, Nat.add_sub_cancel, A396226.P11220589378388649759.a, A396226.P3569638910496407692.a, A000442, A000442.P1367213380399715497.a, A134375, A134375.P11007938509450649342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396226

/-! ## A396226.P17635226937313511903

`A396225(n)*A000142(n)`
-/

namespace A396226.P17635226937313511903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396225 n * A000142 n

end

end A396226.P17635226937313511903

namespace A396226

/-- `A396225(n)*A000142(n)` -/
def P17635226937313511903.Spec : Prop :=
  ∀ n, P17635226937313511903.a n = A396226 n

theorem P17635226937313511903.correct : P17635226937313511903.Spec := by
  intro n
  simp only [A396226, Nat.add_sub_cancel, A396226.P17635226937313511903.a, A396226.P3569638910496407692.a, A000142, A000142.P3272619076580183195.a, A396225, A396225.P17083938129874257036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396226

/-! ## A396226.P6261181539921672187

`A134375(n)*A134375(n)/A000142(n)`
-/

namespace A396226.P6261181539921672187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134375 n * A134375 n : ℚ) / (A000142 n : ℚ)

end

end A396226.P6261181539921672187

namespace A396226

/-- `A134375(n)*A134375(n)/A000142(n)` -/
def P6261181539921672187.Spec : Prop :=
  ∀ n, P6261181539921672187.a n = (A396226 n : ℚ)

end A396226

/-!
# A396229: Number of fixed-content bracelets of length 2*n, summed over all integer partitions of 2*n, whose cyclic orbit contains exactly two linear-palindrome representatives and has full rotational period.

The programs for A396229, there is no canonical definition to state claims against.
-/

/-! ## A396229.P17965938919791638248

`1/2*∑{d}[n+2, A008683((n+2)/#)*(A005651(#)-A396085(2*#))]`
-/

namespace A396229.P17965938919791638248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (d : ℚ))).toNat * (A005651 d - A396085 (2 * d)) : ℤ) : ℚ)

end

end A396229.P17965938919791638248

/-!
# A396230: Numbers k such that (49^k - 5^k)/44 is prime.

The programs for A396230, there is no canonical definition to state claims against.
-/

/-! ## A396230.P1945229270895893068

`∩[A023778(n+1), A112731(n+1)]`
-/

namespace A396230.P1945229270895893068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396230.P1945229270895893068

/-!
# A396232: The smallest amount which cannot be made with fewer than n Indian coins.

The programs for A396232, the canonical program `A396232.P8331361821293475366` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396232 has offset 1).

The definition of A396232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396232.P8331361821293475366

`ogf((1+x+3x^2+5x^3+10x^4)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396232

/-- `ogf((1+x+3x^2+5x^3+10x^4)/(1-2x+x^2))` -/
def P8331361821293475366.Spec : Prop :=
  ∀ n, P8331361821293475366.a n = A396232 (n + 1)

theorem P8331361821293475366.correct : P8331361821293475366.Spec := by
  intro n
  simp only [A396232, Nat.add_sub_cancel]

end A396232

/-!
# A396233: a(n) = P((n-1)*(n+1))/(P(n-1)*P(n+1)), where P(n) is the n-th Pell number A000129(n).

The programs for A396233, there is no canonical definition to state claims against.
-/

/-! ## A396233.P9500805253403666830

`A167164(A051360(n))`
-/

namespace A396233.P9500805253403666830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167164 (A051360 n).toNat

end

end A396233.P9500805253403666830

/-!
# A396234: Smaller term of pairs of consecutive primes of the form p, p+6 where both primes eventually reach a value of 1 under iteration of the sums of the squares of their digits and the first iteration of both terms are also prime.

The programs for A396234, there is no canonical definition to state claims against.
-/

/-! ## A396234.P10157895803470035631

`A396758(n+1)-6`
-/

namespace A396234.P10157895803470035631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396758 (n + 1) - 6

end

end A396234.P10157895803470035631

/-! ## A396234.P2785968976932620967

`A151799(A396758(n+1))`
-/

namespace A396234.P2785968976932620967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A396758 (n + 1)).toNat

end

end A396234.P2785968976932620967

/-!
# A396236: a(n) = n^2 AND NOT n.

The programs for A396236, the canonical program `A396236.P18402109175986010435` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396236 has offset 0).

The definition of A396236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396236.P6367506248373085507

`A169810(n)-A396237(n)`
-/

namespace A396236.P6367506248373085507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169810 n - A396237 n

end

end A396236.P6367506248373085507

namespace A396236

/-- `A169810(n)-A396237(n)` -/
def P6367506248373085507.Spec : Prop :=
  ∀ n, P6367506248373085507.a n = A396236 n

theorem P6367506248373085507.correct : P6367506248373085507.Spec := by
  intro n
  simp only [A396236, Nat.add_sub_cancel, A396236.P6367506248373085507.a, A396236.P18402109175986010435.a, A169810, A169810.P10198644930100574312.a, A396237, A396237.P5450698312826948600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396236

/-! ## A396236.P18402109175986010435

`and(1-n, n²)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396236

/-- `and(1-n, n²)` -/
def P18402109175986010435.Spec : Prop :=
  ∀ n, P18402109175986010435.a n = A396236 n

theorem P18402109175986010435.correct : P18402109175986010435.Spec := by
  intro n
  simp only [A396236]

end A396236

/-! ## A396236.P4195602433736897086

`or(n, n²)-n`
-/

namespace A396236.P4195602433736897086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n ^ 2) : ℤ) - (n : ℤ)

end

end A396236.P4195602433736897086

namespace A396236

/-- `or(n, n²)-n` -/
def P4195602433736897086.Spec : Prop :=
  ∀ n, P4195602433736897086.a n = A396236 n

end A396236

/-! ## A396236.P11723508693918559489

`xor(n, or(n, n²))`
-/

namespace A396236.P11723508693918559489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (n ^ 2))

end

end A396236.P11723508693918559489

namespace A396236

/-- `xor(n, or(n, n²))` -/
def P11723508693918559489.Spec : Prop :=
  ∀ n, (P11723508693918559489.a n : ℤ) = A396236 n

end A396236

/-! ## A396236.P1669428840063734187

`xor(n², and(n, n²))`
-/

namespace A396236.P1669428840063734187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n ^ 2) (Nat.land n (n ^ 2))

end

end A396236.P1669428840063734187

namespace A396236

/-- `xor(n², and(n, n²))` -/
def P1669428840063734187.Spec : Prop :=
  ∀ n, (P1669428840063734187.a n : ℤ) = A396236 n

end A396236

/-! ## A396236.P1426525385058632490

`lcm(2, and(-(n+1), n²))`
-/

namespace A396236.P1426525385058632490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (-(n + 1 : ℤ)) (n ^ 2 : ℤ))

end

end A396236.P1426525385058632490

namespace A396236

/-- `lcm(2, and(-(n+1), n²))` -/
def P1426525385058632490.Spec : Prop :=
  ∀ n, (P1426525385058632490.a n : ℤ) = A396236 n

end A396236

/-! ## A396236.P11855659295234092132

`and(2-2*n, n*2*n)/2`
-/

namespace A396236.P11855659295234092132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 - (2 * n : ℤ)) (n * (2 * n) : ℤ) : ℚ) / 2

end

end A396236.P11855659295234092132

namespace A396236

/-- `and(2-2*n, n*2*n)/2` -/
def P11855659295234092132.Spec : Prop :=
  ∀ n, P11855659295234092132.a n = (A396236 n : ℚ)

end A396236

/-! ## A396236.P5092168046393863070

`n²-A213541(n)`
-/

namespace A396236.P5092168046393863070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A213541 n

end

end A396236.P5092168046393863070

namespace A396236

/-- `n²-A213541(n)` -/
def P5092168046393863070.Spec : Prop :=
  ∀ n, P5092168046393863070.a n = A396236 n

end A396236

/-! ## A396236.P16430645887802079278

`A396237(n)+n²-n`
-/

namespace A396236.P16430645887802079278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396237 n + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A396236.P16430645887802079278

namespace A396236

/-- `A396237(n)+n²-n` -/
def P16430645887802079278.Spec : Prop :=
  ∀ n, P16430645887802079278.a n = A396236 n

end A396236

/-! ## A396236.P11674375840377573683

`xor(A000290(n), A213541(n))`
-/

namespace A396236.P11674375840377573683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000290 n) (A213541 n)

end

end A396236.P11674375840377573683

namespace A396236

/-- `xor(A000290(n), A213541(n))` -/
def P11674375840377573683.Spec : Prop :=
  ∀ n, P11674375840377573683.a n = A396236 n

end A396236

/-! ## A396236.P18377118536330600780

`A169810(n)+A213541(n)-n`
-/

namespace A396236.P18377118536330600780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169810 n + (A213541 n - (n : ℤ))

end

end A396236.P18377118536330600780

namespace A396236

/-- `A169810(n)+A213541(n)-n` -/
def P18377118536330600780.Spec : Prop :=
  ∀ n, P18377118536330600780.a n = A396236 n

end A396236

/-!
# A396237: a(n) = n AND NOT n^2.

The programs for A396237, the canonical program `A396237.P5450698312826948600` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396237 has offset 0).

The definition of A396237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396236, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A396237.P5450698312826948600

`A169810(n)-A396236(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396237

/-- `A169810(n)-A396236(n)` -/
def P5450698312826948600.Spec : Prop :=
  ∀ n, P5450698312826948600.a n = A396237 n

theorem P5450698312826948600.correct : P5450698312826948600.Spec := by
  intro n
  simp only [A396237]

end A396237

/-! ## A396237.P17142366712845359089

`n-and(n, n²)`
-/

namespace A396237.P17142366712845359089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (n ^ 2) : ℤ)

end

end A396237.P17142366712845359089

namespace A396237

/-- `n-and(n, n²)` -/
def P17142366712845359089.Spec : Prop :=
  ∀ n, P17142366712845359089.a n = A396237 n

end A396237

/-! ## A396237.P17102403092125318274

`xor(n, and(n, n²))`
-/

namespace A396237.P17102403092125318274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land n (n ^ 2))

end

end A396237.P17102403092125318274

namespace A396237

/-- `xor(n, and(n, n²))` -/
def P17102403092125318274.Spec : Prop :=
  ∀ n, (P17102403092125318274.a n : ℤ) = A396237 n

end A396237

/-! ## A396237.P423070560588885440

`and(n, -(n²+1))`
-/

namespace A396237.P423070560588885440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n ^ 2 + 1 : ℤ))

end

end A396237.P423070560588885440

namespace A396237

/-- `and(n, -(n²+1))` -/
def P423070560588885440.Spec : Prop :=
  ∀ n, P423070560588885440.a n = A396237 n

end A396237

/-! ## A396237.P2538845804529795075

`or(n, n²)-n²`
-/

namespace A396237.P2538845804529795075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n ^ 2) : ℤ) - (n ^ 2 : ℤ)

end

end A396237.P2538845804529795075

namespace A396237

/-- `or(n, n²)-n²` -/
def P2538845804529795075.Spec : Prop :=
  ∀ n, P2538845804529795075.a n = A396237 n

end A396237

/-! ## A396237.P2401821491278833130

`xor(n², or(n, n²))`
-/

namespace A396237.P2401821491278833130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n ^ 2) (Nat.lor n (n ^ 2))

end

end A396237.P2401821491278833130

namespace A396237

/-- `xor(n², or(n, n²))` -/
def P2401821491278833130.Spec : Prop :=
  ∀ n, (P2401821491278833130.a n : ℤ) = A396237 n

end A396237

/-! ## A396237.P1748770559882202565

`abs(or(-(n+1), n²)+1)`
-/

namespace A396237.P1748770559882202565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ) + 1|

end

end A396237.P1748770559882202565

namespace A396237

/-- `abs(or(-(n+1), n²)+1)` -/
def P1748770559882202565.Spec : Prop :=
  ∀ n, P1748770559882202565.a n = A396237 n

end A396237

/-! ## A396237.P10155807141813451311

`-(or(-(n+1), n²)+1)`
-/

namespace A396237.P10155807141813451311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ) + 1)

end

end A396237.P10155807141813451311

namespace A396237

/-- `-(or(-(n+1), n²)+1)` -/
def P10155807141813451311.Spec : Prop :=
  ∀ n, P10155807141813451311.a n = A396237 n

end A396237

/-! ## A396237.P7612824391104773106

`(or(n, n²)+n)%(n+1)`
-/

namespace A396237.P7612824391104773106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n ^ 2) + n) % (n + 1)

end

end A396237.P7612824391104773106

namespace A396237

/-- `(or(n, n²)+n)%(n+1)` -/
def P7612824391104773106.Spec : Prop :=
  ∀ n, (P7612824391104773106.a n : ℤ) = A396237 n

end A396237

/-! ## A396237.P9596586584466259337

`lcm(2, and(n, n-1-∑[2*n]))`
-/

namespace A396237.P9596586584466259337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (n : ℤ) ((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A396237.P9596586584466259337

namespace A396237

/-- `lcm(2, and(n, n-1-∑[2*n]))` -/
def P9596586584466259337.Spec : Prop :=
  ∀ n, (P9596586584466259337.a n : ℤ) = A396237 n

end A396237

/-! ## A396237.P2998596601826448501

`n-and(2*n, n*2*n)/2`
-/

namespace A396237.P2998596601826448501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.land (2 * n) (n * (2 * n)) : ℚ) / 2

end

end A396237.P2998596601826448501

namespace A396237

/-- `n-and(2*n, n*2*n)/2` -/
def P2998596601826448501.Spec : Prop :=
  ∀ n, P2998596601826448501.a n = (A396237 n : ℚ)

end A396237

/-! ## A396237.P17724994003515644778

`n-A213541(n)`
-/

namespace A396237.P17724994003515644778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A213541 n

end

end A396237.P17724994003515644778

namespace A396237

/-- `n-A213541(n)` -/
def P17724994003515644778.Spec : Prop :=
  ∀ n, P17724994003515644778.a n = A396237 n

end A396237

/-! ## A396237.P8027111630818229039

`(n-A174375(n))/2`
-/

namespace A396237.P8027111630818229039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A174375 n : ℚ) / 2

end

end A396237.P8027111630818229039

namespace A396237

/-- `(n-A174375(n))/2` -/
def P8027111630818229039.Spec : Prop :=
  ∀ n, P8027111630818229039.a n = (A396237 n : ℚ)

end A396237

/-! ## A396237.P3528056121831225824

`A053615(A396236(n))`
-/

namespace A396237.P3528056121831225824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A396236 n).toNat

end

end A396237.P3528056121831225824

namespace A396237

/-- `A053615(A396236(n))` -/
def P3528056121831225824.Spec : Prop :=
  ∀ n, P3528056121831225824.a n = A396237 n

end A396237

/-!
# A396238: a(n) = Sum_{i=0..n} Sum_{j=0..i} Sum_{k=0..j} binomial(n+i,2*i) * binomial(i+j,2*j) * binomial(j+k,2*k).

The programs for A396238, there is no canonical definition to state claims against.
-/

/-! ## A396238.P12862413484473009247

`A155862(n)-A382172(A035028(n))`
-/

namespace A396238.P12862413484473009247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155862 n - A382172 (A035028 n).toNat

end

end A396238.P12862413484473009247

/-!
# A396239: Numerator of r(n) = (prime(n+2) - 2*prime(n+1) + prime(n)) / (prime(n+2) - prime(n)).

The programs for A396239, the canonical program `A396239.P7967647103299319386` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396239 has offset 1).

The definition of A396239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396239.P7967647103299319386

`A036263(n+1)/gcd(A036263(n+1), A031131(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396239

/-- `A036263(n+1)/gcd(A036263(n+1), A031131(n+1))` -/
def P7967647103299319386.Spec : Prop :=
  ∀ n, P7967647103299319386.a n = (A396239 (n + 1) : ℚ)

end A396239

/-! ## A396239.P14322461155561326373

`A036263(n+1)/A031131(n+1)*A396240(n+1)`
-/

namespace A396239.P14322461155561326373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 1) : ℚ) / (A031131 (n + 1) : ℚ) * (A396240 (n + 1) : ℚ)

end

end A396239.P14322461155561326373

namespace A396239

/-- `A036263(n+1)/A031131(n+1)*A396240(n+1)` -/
def P14322461155561326373.Spec : Prop :=
  ∀ n, P14322461155561326373.a n = (A396239 (n + 1) : ℚ)

end A396239

/-! ## A396239.P18008089564641350500

`Δ[A092243(n+1)%A316470(2*(n+1))]`
-/

namespace A396239.P18008089564641350500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092243 (n + 1)) (A316470 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396239.P18008089564641350500

namespace A396239

/-- `Δ[A092243(n+1)%A316470(2*(n+1))]` -/
def P18008089564641350500.Spec : Prop :=
  ∀ n, P18008089564641350500.a n = A396239 (n + 1)

end A396239

/-! ## A396239.P10798117611682824695

`A107599(n+2)-A057427(A058116(n+1))`
-/

namespace A396239.P10798117611682824695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107599 (n + 2) - A057427 (A058116 (n + 1)).toNat

end

end A396239.P10798117611682824695

namespace A396239

/-- `A107599(n+2)-A057427(A058116(n+1))` -/
def P10798117611682824695.Spec : Prop :=
  ∀ n, P10798117611682824695.a n = A396239 (n + 1)

end A396239

/-! ## A396239.P8556283252314778113

`Δ[A092243(n+1)%A227590(n+1)]`
-/

namespace A396239.P8556283252314778113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092243 (n + 1)) (A227590 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396239.P8556283252314778113

namespace A396239

/-- `Δ[A092243(n+1)%A227590(n+1)]` -/
def P8556283252314778113.Spec : Prop :=
  ∀ n, P8556283252314778113.a n = A396239 (n + 1)

end A396239

/-!
# A396240: Denominator of r(n) = (prime(n+2) - 2*prime(n+1) + prime(n)) / (prime(n+2) - prime(n)).

The programs for A396240, the canonical program `A396240.P12229753657126069438` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396240 has offset 1).

The definition of A396240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396240.P12229753657126069438

`A031131(n+1)/gcd(A036263(n+1), A031131(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396240

/-- `A031131(n+1)/gcd(A036263(n+1), A031131(n+1))` -/
def P12229753657126069438.Spec : Prop :=
  ∀ n, P12229753657126069438.a n = (A396240 (n + 1) : ℚ)

end A396240

/-!
# A396241: Expansion of 1 / (1 - B(B(B(x)))), where B(x) = x/(1-x)^2.

The programs for A396241, there is no canonical definition to state claims against.
-/

/-! ## A396241.P285865195274754698

`A335001(A122920(n))`
-/

namespace A396241.P285865195274754698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335001 (A122920 n).toNat

end

end A396241.P285865195274754698

/-!
# A396242: Expansion of 1 / (1 - B(B(x))), where B(x) = x/(1-x)^3.

The programs for A396242, there is no canonical definition to state claims against.
-/

/-! ## A396242.P18130256554527845870

`A115323(A005894(n))`
-/

namespace A396242.P18130256554527845870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115323 (A005894 n).toNat

end

end A396242.P18130256554527845870

/-!
# A396243: Expansion of 1 / (1 - B(B(B(x)))), where B(x) = x/(1-x)^3.

The programs for A396243, there is no canonical definition to state claims against.
-/

/-! ## A396243.P10141596688534894253

`or(A122322(A109085(n)), A231617(n))`
-/

namespace A396243.P10141596688534894253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122322 (A109085 n).toNat) (A231617 n)

end

end A396243.P10141596688534894253

/-!
# A396244: Expansion of 1 / (1 - B(B(x))), where B(x) = x/(1-x)^4.

The programs for A396244, there is no canonical definition to state claims against.
-/

/-! ## A396244.P10710997801071899568

`A213172(A288414(n))`
-/

namespace A396244.P10710997801071899568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213172 (A288414 n).toNat

end

end A396244.P10710997801071899568

/-!
# A396245: Expansion of 1 / (1 - B(B(B(x)))), where B(x) = x/(1-x)^4.

The programs for A396245, there is no canonical definition to state claims against.
-/

/-! ## A396245.P6112828476272090999

`A136548(A326282(n)+A016169(n))`
-/

namespace A396245.P6112828476272090999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A326282 n + A016169 n).toNat

end

end A396245.P6112828476272090999

/-!
# A396246: Triangle read by rows: T(n,m) is the number of ways to fill an m X n grid by using the numbers 1, 2, ..., m*n exactly once, so that 1 is the only entry which is the smallest both in its row and in its column, 1 <= m <= n.

The programs for A396246, there is no canonical definition to state claims against.
-/

/-! ## A396246.P17693517991975464009

`A277906(A383888(n))`
-/

namespace A396246.P17693517991975464009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A383888 n).toNat

end

end A396246.P17693517991975464009

/-!
# A396249: Number of strict partitions of n such that the difference between two adjacent parts is at most 2.

The programs for A396249, there is no canonical definition to state claims against.
-/

/-! ## A396249.P11266533180091885972

`A000195(A332003(2*n)+A000040(n+1))`
-/

namespace A396249.P11266533180091885972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A332003 (2 * n) + A000040 (n + 1)).toNat

end

end A396249.P11266533180091885972

/-!
# A396250: a(n) is the number of ternary sequences of length n with characteristic value 0, as is defined in comments.

The programs for A396250, the canonical program `A396250.P17131354137523979771` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396250 has offset 1).

The definition of A396250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396250.P17131354137523979771

`(3^2^A000120(n)+1)/2*3^(n+1-2^A000120(n))-2^n`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A396250

/-- `(3^2^A000120(n)+1)/2*3^(n+1-2^A000120(n))-2^n` -/
def P17131354137523979771.Spec : Prop :=
  ∀ n, P17131354137523979771.a n = (A396250 (n + 1) : ℝ)

end A396250

/-! ## A396250.P7263997546638985966

`A363583(A364267(n+1))`
-/

namespace A396250.P7263997546638985966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363583 (A364267 (n + 1)).toNat

end

end A396250.P7263997546638985966

namespace A396250

/-- `A363583(A364267(n+1))` -/
def P7263997546638985966.Spec : Prop :=
  ∀ n, P7263997546638985966.a n = A396250 (n + 1)

end A396250

/-!
# A396251: a(n) is the number of 4-ary sequences of length n with characteristic value 0.

The programs for A396251, there is no canonical definition to state claims against.
-/

/-! ## A396251.P103368904328043563

`A004171(n)-A396614(n+1)`
-/

namespace A396251.P103368904328043563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A396614 (n + 1)

end

end A396251.P103368904328043563

/-! ## A396251.P2139766021012014116

`A000079(2*n+1)-A396614(n+1)`
-/

namespace A396251.P2139766021012014116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A396614 (n + 1)

end

end A396251.P2139766021012014116

/-!
# A396253: Sum of Sum_{k=1..n} S(k) over all completely multiplicative sign sequences S of length n.

The programs for A396253, the canonical program `A396253.P3729736002703382672` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396253 has offset 1).

The definition of A396253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396253.P13389244734288973828

`floor(sqrt(n+1))*2^A000720(n+1)`
-/

namespace A396253.P13389244734288973828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℚ) * (2 : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A396253.P13389244734288973828

namespace A396253

/-- `floor(sqrt(n+1))*2^A000720(n+1)` -/
def P13389244734288973828.Spec : Prop :=
  ∀ n, P13389244734288973828.a n = (A396253 (n + 1) : ℚ)

end A396253

/-! ## A396253.P3729736002703382672

`A000196(n+1)*A048656(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A396253

/-- `A000196(n+1)*A048656(n+1)` -/
def P3729736002703382672.Spec : Prop :=
  ∀ n, P3729736002703382672.a n = A396253 (n + 1)

theorem P3729736002703382672.correct : P3729736002703382672.Spec := by
  intro n
  simp only [A396253, Nat.add_sub_cancel]

end A396253

/-! ## A396253.P6194311949683476069

`A000079(A000720(n+1))*A000196(n+1)`
-/

namespace A396253.P6194311949683476069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000720 (n + 1)).toNat * A000196 (n + 1)

end

end A396253.P6194311949683476069

namespace A396253

/-- `A000079(A000720(n+1))*A000196(n+1)` -/
def P6194311949683476069.Spec : Prop :=
  ∀ n, P6194311949683476069.a n = A396253 (n + 1)

end A396253

/-! ## A396253.P9976429218490016381

`filter[A359182(2*(n+1)), A105470(#)]`
-/

namespace A396253.P9976429218490016381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359182 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105470 (f1 j).toNat = 1) n)

end

end A396253.P9976429218490016381

namespace A396253

/-- `filter[A359182(2*(n+1)), A105470(#)]` -/
def P9976429218490016381.Spec : Prop :=
  ∀ n, P9976429218490016381.a n = A396253 (n + 1)

end A396253

/-! ## A396253.P11088544834936825136

`A389456(A093627(n+1))`
-/

namespace A396253.P11088544834936825136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389456 (A093627 (n + 1)).toNat

end

end A396253.P11088544834936825136

namespace A396253

/-- `A389456(A093627(n+1))` -/
def P11088544834936825136.Spec : Prop :=
  ∀ n, P11088544834936825136.a n = A396253 (n + 1)

end A396253

/-!
# A396255: Irregular table read by rows: let p = prime(n) and d be the k-th divisor of p-1. Then T(n,k) is the algebraic degree of tau(chi) over Q, where chi is any Dirichlet character modulo p of order d, and tau is the Gauss sum.

The programs for A396255, there is no canonical definition to state claims against.
-/

/-! ## A396255.P14564028608086121901

`A002618(A174843(n+1))`
-/

namespace A396255.P14564028608086121901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A174843 (n + 1)).toNat

end

end A396255.P14564028608086121901

/-! ## A396255.P14090550350319759310

`A174842(n+1)*A174843(n+1)`
-/

namespace A396255.P14090550350319759310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174842 (n + 1) * A174843 (n + 1)

end

end A396255.P14090550350319759310

/-! ## A396255.P16348342183807820428

`A057828(A174843(n+1)²²)`
-/

namespace A396255.P16348342183807820428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 ((A174843 (n + 1) ^ 2) ^ 2).toNat

end

end A396255.P16348342183807820428

/-!
# A396257: Number of n X 3 arrays over {0,1,2} such that orthogonally adjacent entries are distinct.

The programs for A396257, the canonical program `A396257.P15936634037170540528` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396257 has offset 0).

The definition of A396257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396257.P17432136811247197286

`ogf((1+7x-4x^2)/(1-5x+2x^2))`
-/

namespace A396257.P17432136811247197286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -4] [1, -5, 2] n

end

end A396257.P17432136811247197286

namespace A396257

/-- `ogf((1+7x-4x^2)/(1-5x+2x^2))` -/
def P17432136811247197286.Spec : Prop :=
  ∀ n, P17432136811247197286.a n = A396257 n

end A396257

/-! ## A396257.P15936634037170540528

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=12, a(2)=54`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396257

/-- `5*a(n-1)-2*a(n-2)` -/
def P15936634037170540528.Spec : Prop :=
  ∀ n, P15936634037170540528.a n = A396257 n

theorem P15936634037170540528.correct : P15936634037170540528.Spec := by
  intro n
  simp only [A396257]

end A396257

/-! ## A396257.P12586464768601344050

`A052913(n)*A122553(n)`
-/

namespace A396257.P12586464768601344050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n * A122553 n

end

end A396257.P12586464768601344050

namespace A396257

/-- `A052913(n)*A122553(n)` -/
def P12586464768601344050.Spec : Prop :=
  ∀ n, P12586464768601344050.a n = A396257 n

end A396257

/-! ## A396257.P17329093147772786906

`(A147722(n)-A106709(n))*A194961(A000217(3*n+1))`
-/

namespace A396257.P17329093147772786906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147722 n - A106709 n) * A194961 (A000217 (3 * n + 1)).toNat

end

end A396257.P17329093147772786906

namespace A396257

/-- `(A147722(n)-A106709(n))*A194961(A000217(3*n+1))` -/
def P17329093147772786906.Spec : Prop :=
  ∀ n, P17329093147772786906.a n = A396257 n

end A396257

/-! ## A396257.P8571534152230218132

`A052913(n)*A237271(A006094(n+1))`
-/

namespace A396257.P8571534152230218132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n * A237271 (A006094 (n + 1)).toNat

end

end A396257.P8571534152230218132

namespace A396257

/-- `A052913(n)*A237271(A006094(n+1))` -/
def P8571534152230218132.Spec : Prop :=
  ∀ n, P8571534152230218132.a n = A396257 n

end A396257

/-!
# A396263: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x)^2 / (1 - x).

The programs for A396263, there is no canonical definition to state claims against.
-/

/-! ## A396263.P17820514628860854941

`A342497(A093967(n))`
-/

namespace A396263.P17820514628860854941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A093967 n).toNat

end

end A396263.P17820514628860854941

/-!
# A396265: Numbers k such that there exists a number r < k such that both gcd(r,k) > 1 and rad(r) does not divide k, yet rad(r+m*k) | k for some m, where rad = A007947.

The programs for A396265, there is no canonical definition to state claims against.
-/

/-! ## A396265.P12165881512604562274

`A020725(lt[A381803(n+1), A243823(n+1)])`
-/

namespace A396265.P12165881512604562274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396265.P12165881512604562274

/-! ## A396265.P14965566682338950661

`A113484(lt[A381803(n+1), A243823(n+1)])`
-/

namespace A396265.P14965566682338950661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396265.P14965566682338950661

/-! ## A396265.P16321033477240775985

`A024619(lt[A007821(2*n+5), A283746(3*(n+1))])`
-/

namespace A396265.P16321033477240775985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283746 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396265.P16321033477240775985

/-! ## A396265.P9137733628216843435

`A383100(lt[A114158(3*n+2), A000142(n)])`
-/

namespace A396265.P9137733628216843435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114158 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396265.P9137733628216843435

/-! ## A396265.P10748925293562626642

`A383100(lt[A114158(3*n+2), A002486(n)])`
-/

namespace A396265.P10748925293562626642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114158 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396265.P10748925293562626642

/-!
# A396269: Cubefree k that are neither squarefree nor squareful that have more than 2 distinct prime factors.

The programs for A396269, the canonical program `A396269.P4590932951071944405` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396269 has offset 1).

The definition of A396269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396269.P4590932951071944405

`filter[A386684(n+1), A379958(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396269

/-- `filter[A386684(n+1), A379958(#)]` -/
def P4590932951071944405.Spec : Prop :=
  ∀ n, P4590932951071944405.a n = A396269 (n + 1)

theorem P4590932951071944405.correct : P4590932951071944405.Spec := by
  intro n
  simp only [A396269, Nat.add_sub_cancel]

end A396269

/-! ## A396269.P9111432058164064216

`filter[A392926(n+1), A212793(#)]`
-/

namespace A396269.P9111432058164064216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A396269.P9111432058164064216

namespace A396269

/-- `filter[A392926(n+1), A212793(#)]` -/
def P9111432058164064216.Spec : Prop :=
  ∀ n, P9111432058164064216.a n = A396269 (n + 1)

end A396269

/-! ## A396269.P7312017053259837650

`filter[A392926(n+1), A359429(#)]`
-/

namespace A396269.P7312017053259837650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A396269.P7312017053259837650

namespace A396269

/-- `filter[A392926(n+1), A359429(#)]` -/
def P7312017053259837650.Spec : Prop :=
  ∀ n, P7312017053259837650.a n = A396269 (n + 1)

end A396269

/-! ## A396269.P17864139369467581180

`∩[A067259(n+1), A392926(n+1)]`
-/

namespace A396269.P17864139369467581180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P17864139369467581180

namespace A396269

/-- `∩[A067259(n+1), A392926(n+1)]` -/
def P17864139369467581180.Spec : Prop :=
  ∀ n, (P17864139369467581180.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P17029837858305872887

`filter[A390949(n+1), A212793(#)]`
-/

namespace A396269.P17029837858305872887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A396269.P17029837858305872887

namespace A396269

/-- `filter[A390949(n+1), A212793(#)]` -/
def P17029837858305872887.Spec : Prop :=
  ∀ n, P17029837858305872887.a n = A396269 (n + 1)

end A396269

/-! ## A396269.P10321053488114305435

`filter[A390949(n+1), A359429(#)]`
-/

namespace A396269.P10321053488114305435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A396269.P10321053488114305435

namespace A396269

/-- `filter[A390949(n+1), A359429(#)]` -/
def P10321053488114305435.Spec : Prop :=
  ∀ n, P10321053488114305435.a n = A396269 (n + 1)

end A396269

/-! ## A396269.P9607549105815355777

`∩[A067259(n+1), A390949(n+1)]`
-/

namespace A396269.P9607549105815355777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P9607549105815355777

namespace A396269

/-- `∩[A067259(n+1), A390949(n+1)]` -/
def P9607549105815355777.Spec : Prop :=
  ∀ n, (P9607549105815355777.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P1344554995472175504

`filter[A388305(n+1), A212793(#)]`
-/

namespace A396269.P1344554995472175504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A396269.P1344554995472175504

namespace A396269

/-- `filter[A388305(n+1), A212793(#)]` -/
def P1344554995472175504.Spec : Prop :=
  ∀ n, P1344554995472175504.a n = A396269 (n + 1)

end A396269

/-! ## A396269.P16885797529374248386

`filter[A388305(n+1), A359429(#)]`
-/

namespace A396269.P16885797529374248386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A396269.P16885797529374248386

namespace A396269

/-- `filter[A388305(n+1), A359429(#)]` -/
def P16885797529374248386.Spec : Prop :=
  ∀ n, P16885797529374248386.a n = A396269 (n + 1)

end A396269

/-! ## A396269.P7396296283045235647

`∩[A067259(n+1), A388305(n+1)]`
-/

namespace A396269.P7396296283045235647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P7396296283045235647

namespace A396269

/-- `∩[A067259(n+1), A388305(n+1)]` -/
def P7396296283045235647.Spec : Prop :=
  ∀ n, (P7396296283045235647.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P4680026059099658204

`∩[A062171(n+1), A386684(n+1)]`
-/

namespace A396269.P4680026059099658204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P4680026059099658204

namespace A396269

/-- `∩[A062171(n+1), A386684(n+1)]` -/
def P4680026059099658204.Spec : Prop :=
  ∀ n, (P4680026059099658204.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P12206216527534710308

`∩[A033987(n+1), A386684(n+1)]`
-/

namespace A396269.P12206216527534710308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P12206216527534710308

namespace A396269

/-- `∩[A033987(n+1), A386684(n+1)]` -/
def P12206216527534710308.Spec : Prop :=
  ∀ n, (P12206216527534710308.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P14537321277420920230

`∩[A000977(n+1), A386684(n+1)]`
-/

namespace A396269.P14537321277420920230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P14537321277420920230

namespace A396269

/-- `∩[A000977(n+1), A386684(n+1)]` -/
def P14537321277420920230.Spec : Prop :=
  ∀ n, (P14537321277420920230.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P7855099728863796108

`∩[A388305(n+1), A390289(n+1)]`
-/

namespace A396269.P7855099728863796108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P7855099728863796108

namespace A396269

/-- `∩[A388305(n+1), A390289(n+1)]` -/
def P7855099728863796108.Spec : Prop :=
  ∀ n, (P7855099728863796108.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P16161561376175265249

`∩[A390289(n+1), A390949(n+1)]`
-/

namespace A396269.P16161561376175265249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P16161561376175265249

namespace A396269

/-- `∩[A390289(n+1), A390949(n+1)]` -/
def P16161561376175265249.Spec : Prop :=
  ∀ n, (P16161561376175265249.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P5636465839169027429

`∩[A390289(n+1), A392926(n+1)]`
-/

namespace A396269.P5636465839169027429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P5636465839169027429

namespace A396269

/-- `∩[A390289(n+1), A392926(n+1)]` -/
def P5636465839169027429.Spec : Prop :=
  ∀ n, (P5636465839169027429.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P17618163008855724892

`∩[A377880(n+1), A388305(n+1)]`
-/

namespace A396269.P17618163008855724892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P17618163008855724892

namespace A396269

/-- `∩[A377880(n+1), A388305(n+1)]` -/
def P17618163008855724892.Spec : Prop :=
  ∀ n, (P17618163008855724892.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P2540969593003480819

`∩[A377880(n+1), A390949(n+1)]`
-/

namespace A396269.P2540969593003480819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P2540969593003480819

namespace A396269

/-- `∩[A377880(n+1), A390949(n+1)]` -/
def P2540969593003480819.Spec : Prop :=
  ∀ n, (P2540969593003480819.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P1599369170335810794

`∩[A377880(n+1), A392926(n+1)]`
-/

namespace A396269.P1599369170335810794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P1599369170335810794

namespace A396269

/-- `∩[A377880(n+1), A392926(n+1)]` -/
def P1599369170335810794.Spec : Prop :=
  ∀ n, (P1599369170335810794.a n : ℤ) = A396269 (n + 1)

end A396269

/-! ## A396269.P15695028450035204191

`∩[A130092(n+1), A386684(n+1)]`
-/

namespace A396269.P15695028450035204191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396269.P15695028450035204191

namespace A396269

/-- `∩[A130092(n+1), A386684(n+1)]` -/
def P15695028450035204191.Spec : Prop :=
  ∀ n, (P15695028450035204191.a n : ℤ) = A396269 (n + 1)

end A396269

/-!
# A396279: Integers k such that p - k = floor(log_2(k)), where p is the smallest prime strictly greater than k.

The programs for A396279, the canonical program `A396279.P7454295923968668205` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396279 has offset 1).

The definition of A396279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396279.P7454295923968668205

`eq[A000079(A013632(n)), A053644(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A396279

/-- `eq[A000079(A013632(n)), A053644(n)]` -/
def P7454295923968668205.Spec : Prop :=
  ∀ n, (P7454295923968668205.a n : ℤ) = A396279 (n + 1)

theorem P7454295923968668205.correct : P7454295923968668205.Spec := by
  intro n
  simp only [A396279, Nat.add_sub_cancel]

end A396279

/-!
# A396280: a(1) = 2, a(2) = 8, a(3) = 32; a(n) = 16*(n-2)^3 for n >= 4.

The programs for A396280, the canonical program `A396280.P17934408137888544168` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396280 has offset 1).

The definition of A396280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396280.P17934408137888544168

`ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396280

/-- `ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-4x+6x^2-4x^3+x^4))` -/
def P17934408137888544168.Spec : Prop :=
  ∀ n, P17934408137888544168.a n = A396280 (n + 1)

theorem P17934408137888544168.correct : P17934408137888544168.Spec := by
  intro n
  simp only [A396280, Nat.add_sub_cancel]

end A396280

/-! ## A396280.P9337694846177794717

`A325326(A110878(n+2))`
-/

namespace A396280.P9337694846177794717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325326 (A110878 (n + 2)).toNat

end

end A396280.P9337694846177794717

namespace A396280

/-- `A325326(A110878(n+2))` -/
def P9337694846177794717.Spec : Prop :=
  ∀ n, P9337694846177794717.a n = A396280 (n + 1)

end A396280

/-!
# A396283: a(n) = Sum_{k=1..n} (n mod k)^2.

The programs for A396283, the canonical program `A396283.P13868189083896900489` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396283 has offset 1).

The definition of A396283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396283.P13868189083896900489

`(n+1)*(A000290(n+1)-2*A024916(n+1))+A350123(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396283

/-- `(n+1)*(A000290(n+1)-2*A024916(n+1))+A350123(n+1)` -/
def P13868189083896900489.Spec : Prop :=
  ∀ n, P13868189083896900489.a n = A396283 (n + 1)

theorem P13868189083896900489.correct : P13868189083896900489.Spec := by
  intro n
  simp only [A396283, Nat.add_sub_cancel]

end A396283

/-! ## A396283.P17355993185164408667

`(n+1)*((n+1)²-2*A024916(n+1))+A350123(n+1)`
-/

namespace A396283.P17355993185164408667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 2 : ℤ) - 2 * A024916 (n + 1)) + A350123 (n + 1)

end

end A396283.P17355993185164408667

namespace A396283

/-- `(n+1)*((n+1)²-2*A024916(n+1))+A350123(n+1)` -/
def P17355993185164408667.Spec : Prop :=
  ∀ n, P17355993185164408667.a n = A396283 (n + 1)

theorem P17355993185164408667.correct : P17355993185164408667.Spec := by
  intro n
  simp only [A396283, Nat.add_sub_cancel, A396283.P17355993185164408667.a, A396283.P13868189083896900489.a, A000290, A000290.P12206242496348924484.a, A024916, A024916.P288223747059110690.f1, A024916.P288223747059110690.a, A350123, A350123.P12861590418995863315.f1, A350123.P12861590418995863315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396283

/-! ## A396283.P16852111044855278802

`and(A145876(n+5), A163356(A038119(n+1)))`
-/

namespace A396283.P16852111044855278802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145876 (n + 5)) (A163356 (A038119 (n + 1)).toNat)

end

end A396283.P16852111044855278802

namespace A396283

/-- `and(A145876(n+5), A163356(A038119(n+1)))` -/
def P16852111044855278802.Spec : Prop :=
  ∀ n, P16852111044855278802.a n = A396283 (n + 1)

end A396283

/-!
# A396284: a(n) = Sum_{k=1..n} (n mod k)^3.

The programs for A396284, the canonical program `A396284.P3005908805938491279` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396284 has offset 1).

The definition of A396284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396284.P3005908805938491279

`(n+1)*(A000578(n+1)-3*((n+1)*A024916(n+1)-A350123(n+1)))-A356249(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396284

/-- `(n+1)*(A000578(n+1)-3*((n+1)*A024916(n+1)-A350123(n+1)))-A356249(n+1)` -/
def P3005908805938491279.Spec : Prop :=
  ∀ n, P3005908805938491279.a n = A396284 (n + 1)

theorem P3005908805938491279.correct : P3005908805938491279.Spec := by
  intro n
  simp only [A396284, Nat.add_sub_cancel]

end A396284

/-!
# A396285: a(n) is the number of distinct triples of triangles chosen from the n^2 unit triangles of the triangular grid up to rotation.

The programs for A396285, the canonical program `A396285.P15227864129736478013` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396285 has offset 1).

The definition of A396285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396285.P15227864129736478013

`1/3*(C((n+1)², 3)+2*floor((n+1)²/3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396285

/-- `1/3*(C((n+1)², 3)+2*floor((n+1)²/3))` -/
def P15227864129736478013.Spec : Prop :=
  ∀ n, P15227864129736478013.a n = (A396285 (n + 1) : ℚ)

end A396285

/-! ## A396285.P11956599945440737665

`∑[∑[A398855(n²)]]`
-/

namespace A396285.P11956599945440737665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398855 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396285.P11956599945440737665

namespace A396285

/-- `∑[∑[A398855(n²)]]` -/
def P11956599945440737665.Spec : Prop :=
  ∀ n, P11956599945440737665.a n = A396285 (n + 1)

end A396285

/-! ## A396285.P13128020843390440124

`A061866((1+n)²)`
-/

namespace A396285.P13128020843390440124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061866 ((1 + n) ^ 2)

end

end A396285.P13128020843390440124

namespace A396285

/-- `A061866((1+n)²)` -/
def P13128020843390440124.Spec : Prop :=
  ∀ n, P13128020843390440124.a n = A396285 (n + 1)

end A396285

/-! ## A396285.P12627990368582323821

`A394827(A339048(n+1))`
-/

namespace A396285.P12627990368582323821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394827 (A339048 (n + 1)).toNat

end

end A396285.P12627990368582323821

namespace A396285

/-- `A394827(A339048(n+1))` -/
def P12627990368582323821.Spec : Prop :=
  ∀ n, P12627990368582323821.a n = A396285 (n + 1)

end A396285

/-!
# A396286: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * (binomial(n+4*k,k) - binomial(n+4*k,k-1)).

The programs for A396286, there is no canonical definition to state claims against.
-/

/-! ## A396286.P2960488893680209622

`A397386(n)-A397385(n)`
-/

namespace A396286.P2960488893680209622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397386 n - A397385 n

end

end A396286.P2960488893680209622

/-!
# A396288: a(n) = n*(12*n-1).

The programs for A396288, the canonical program `A396288.P9785100004130404729` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396288 has offset 0).

The definition of A396288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n-1)` (program `A396288.P9785100004130404729`, by `A396288.P9785100004130404729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396288.P9785100004130404729

`n*(12*n-1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396288

/-- `n*(12*n-1)` -/
def P9785100004130404729.Spec : Prop :=
  ∀ n, P9785100004130404729.a n = A396288 n

theorem P9785100004130404729.correct : P9785100004130404729.Spec := by
  intro n
  simp only [A396288]

end A396288

/-! ## A396288.P12253917485380272287

`ogf((11x+13x^2)/(1-3x+3x^2-x^3))`
-/

namespace A396288.P12253917485380272287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, 13] [1, -3, 3, -1] n

end

end A396288.P12253917485380272287

namespace A396288

/-- `ogf((11x+13x^2)/(1-3x+3x^2-x^3))` -/
def P12253917485380272287.Spec : Prop :=
  ∀ n, P12253917485380272287.a n = A396288 n

end A396288

/-! ## A396288.P6071607717397037502

`C(12*n, 2)/6`
-/

namespace A396288.P6071607717397037502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (12 * n) 2 : ℚ) / 6

end

end A396288.P6071607717397037502

namespace A396288

/-- `C(12*n, 2)/6` -/
def P6071607717397037502.Spec : Prop :=
  ∀ n, P6071607717397037502.a n = (A396288 n : ℚ)

theorem P6071607717397037502.correct : P6071607717397037502.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P6071607717397037502.a, A396288.P9785100004130404729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P12797655023788266660

`∑[a(n-1)+24]` with `a(0)=0, a(1)=11`
-/

namespace A396288.P12797655023788266660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396288.P12797655023788266660

namespace A396288

/-- `∑[a(n-1)+24]` -/
def P12797655023788266660.Spec : Prop :=
  ∀ n, (P12797655023788266660.a n : ℤ) = A396288 n

end A396288

/-! ## A396288.P16187108058913767895

`C(4*n, 2)+(2*n)²+n`
-/

namespace A396288.P16187108058913767895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2 + ((2 * n) ^ 2 + n)

end

end A396288.P16187108058913767895

namespace A396288

/-- `C(4*n, 2)+(2*n)²+n` -/
def P16187108058913767895.Spec : Prop :=
  ∀ n, (P16187108058913767895.a n : ℤ) = A396288 n

theorem P16187108058913767895.correct : P16187108058913767895.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P16187108058913767895.a, A396288.P9785100004130404729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P10351040029013754727

`Δ[Δ[(n-1)²²]-C(n+2, 2)]`
-/

namespace A396288.P10351040029013754727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396288.P10351040029013754727

namespace A396288

/-- `Δ[Δ[(n-1)²²]-C(n+2, 2)]` -/
def P10351040029013754727.Spec : Prop :=
  ∀ n, P10351040029013754727.a n = A396288 n

theorem P10351040029013754727.correct : P10351040029013754727.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P10351040029013754727.f2, A396288.P10351040029013754727.f1, A396288.P10351040029013754727.a, A396288.P9785100004130404729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P7474966770477757581

`A126964(n)+n`
-/

namespace A396288.P7474966770477757581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 n + (n : ℤ)

end

end A396288.P7474966770477757581

namespace A396288

/-- `A126964(n)+n` -/
def P7474966770477757581.Spec : Prop :=
  ∀ n, P7474966770477757581.a n = A396288 n

theorem P7474966770477757581.correct : P7474966770477757581.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P7474966770477757581.a, A396288.P9785100004130404729.a, A126964, A126964.P15256011894595819792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P17787099173341615992

`A135453(n)-n`
-/

namespace A396288.P17787099173341615992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n - (n : ℤ)

end

end A396288.P17787099173341615992

namespace A396288

/-- `A135453(n)-n` -/
def P17787099173341615992.Spec : Prop :=
  ∀ n, P17787099173341615992.a n = A396288 n

theorem P17787099173341615992.correct : P17787099173341615992.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P17787099173341615992.a, A396288.P9785100004130404729.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P11712444618640505181

`A244803(n+1)-1`
-/

namespace A396288.P11712444618640505181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244803 (n + 1) - 1

end

end A396288.P11712444618640505181

namespace A396288

/-- `A244803(n+1)-1` -/
def P11712444618640505181.Spec : Prop :=
  ∀ n, P11712444618640505181.a n = A396288 n

theorem P11712444618640505181.correct : P11712444618640505181.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P11712444618640505181.a, A396288.P9785100004130404729.a, A244803, A244803.P8350523515693649205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P10607623544309678922

`A185918(n)+1+n`
-/

namespace A396288.P10607623544309678922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185918 n + 1 + (n : ℤ)

end

end A396288.P10607623544309678922

namespace A396288

/-- `A185918(n)+1+n` -/
def P10607623544309678922.Spec : Prop :=
  ∀ n, P10607623544309678922.a n = A396288 n

theorem P10607623544309678922.correct : P10607623544309678922.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P10607623544309678922.a, A396288.P9785100004130404729.a, A185918, A185918.P12744030162887049850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P7812970498411619581

`A158463(n)+1-n`
-/

namespace A396288.P7812970498411619581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 n + (1 - (n : ℤ))

end

end A396288.P7812970498411619581

namespace A396288

/-- `A158463(n)+1-n` -/
def P7812970498411619581.Spec : Prop :=
  ∀ n, P7812970498411619581.a n = A396288 n

theorem P7812970498411619581.correct : P7812970498411619581.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P7812970498411619581.a, A396288.P9785100004130404729.a, A158463, A158463.P7007655217700314725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P13502275993820212701

`A158480(n)-(n+1)`
-/

namespace A396288.P13502275993820212701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n - (n + 1 : ℤ)

end

end A396288.P13502275993820212701

namespace A396288

/-- `A158480(n)-(n+1)` -/
def P13502275993820212701.Spec : Prop :=
  ∀ n, P13502275993820212701.a n = A396288 n

theorem P13502275993820212701.correct : P13502275993820212701.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P13502275993820212701.a, A396288.P9785100004130404729.a, A158480, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P4294823608426687964

`2*A049452(n)+n`
-/

namespace A396288.P4294823608426687964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049452 n + (n : ℤ)

end

end A396288.P4294823608426687964

namespace A396288

/-- `2*A049452(n)+n` -/
def P4294823608426687964.Spec : Prop :=
  ∀ n, P4294823608426687964.a n = A396288 n

theorem P4294823608426687964.correct : P4294823608426687964.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P4294823608426687964.a, A396288.P9785100004130404729.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P4510510036033856824

`A062783(n)+2*n`
-/

namespace A396288.P4510510036033856824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + (2 * n : ℤ)

end

end A396288.P4510510036033856824

namespace A396288

/-- `A062783(n)+2*n` -/
def P4510510036033856824.Spec : Prop :=
  ∀ n, P4510510036033856824.a n = A396288 n

theorem P4510510036033856824.correct : P4510510036033856824.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P4510510036033856824.a, A396288.P9785100004130404729.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P3909035268439465841

`A014642(n)+3*n`
-/

namespace A396288.P3909035268439465841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + (3 * n : ℤ)

end

end A396288.P3909035268439465841

namespace A396288

/-- `A014642(n)+3*n` -/
def P3909035268439465841.Spec : Prop :=
  ∀ n, P3909035268439465841.a n = A396288 n

theorem P3909035268439465841.correct : P3909035268439465841.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P3909035268439465841.a, A396288.P9785100004130404729.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P17061382083633975930

`A396289(n)-2*n`
-/

namespace A396288.P17061382083633975930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396289 n - (2 * n : ℤ)

end

end A396288.P17061382083633975930

namespace A396288

/-- `A396289(n)-2*n` -/
def P17061382083633975930.Spec : Prop :=
  ∀ n, P17061382083633975930.a n = A396288 n

theorem P17061382083633975930.correct : P17061382083633975930.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P17061382083633975930.a, A396288.P9785100004130404729.a, A396289, A396289.P3873563288867245151.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P3314638902415934534

`A014635(n)+A007742(n)`
-/

namespace A396288.P3314638902415934534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n + A007742 n

end

end A396288.P3314638902415934534

namespace A396288

/-- `A014635(n)+A007742(n)` -/
def P3314638902415934534.Spec : Prop :=
  ∀ n, P3314638902415934534.a n = A396288 n

theorem P3314638902415934534.correct : P3314638902415934534.Spec := by
  intro n
  simp only [A396288, Nat.add_sub_cancel, A396288.P3314638902415934534.a, A396288.P9785100004130404729.a, A007742, A007742.P14173437786459717136.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396288

/-! ## A396288.P7860976607234981757

`A022278(n)+A000326(n)`
-/

namespace A396288.P7860976607234981757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A000326 n

end

end A396288.P7860976607234981757

namespace A396288

/-- `A022278(n)+A000326(n)` -/
def P7860976607234981757.Spec : Prop :=
  ∀ n, P7860976607234981757.a n = A396288 n

end A396288

/-! ## A396288.P16157724989719376034

`A022277(n)+A000566(n)`
-/

namespace A396288.P16157724989719376034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n + A000566 n

end

end A396288.P16157724989719376034

namespace A396288

/-- `A022277(n)+A000566(n)` -/
def P16157724989719376034.Spec : Prop :=
  ∀ n, P16157724989719376034.a n = A396288 n

end A396288

/-! ## A396288.P12284244236529705615

`A022276(n)+A005476(n)`
-/

namespace A396288.P12284244236529705615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n + A005476 n

end

end A396288.P12284244236529705615

namespace A396288

/-- `A022276(n)+A005476(n)` -/
def P12284244236529705615.Spec : Prop :=
  ∀ n, P12284244236529705615.a n = A396288 n

end A396288

/-!
# A396289: a(n) = n*(12*n+1).

The programs for A396289, the canonical program `A396289.P3873563288867245151` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396289 has offset 0).

The definition of A396289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n+1)` (program `A396289.P3873563288867245151`, by `A396289.P3873563288867245151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396289.P3873563288867245151

`n*(12*n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396289

/-- `n*(12*n+1)` -/
def P3873563288867245151.Spec : Prop :=
  ∀ n, (P3873563288867245151.a n : ℤ) = A396289 n

theorem P3873563288867245151.correct : P3873563288867245151.Spec := by
  intro n
  simp only [A396289]

end A396289

/-! ## A396289.P9054042344447567548

`ogf((13x+11x^2)/(1-3x+3x^2-x^3))`
-/

namespace A396289.P9054042344447567548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13, 11] [1, -3, 3, -1] n

end

end A396289.P9054042344447567548

namespace A396289

/-- `ogf((13x+11x^2)/(1-3x+3x^2-x^3))` -/
def P9054042344447567548.Spec : Prop :=
  ∀ n, P9054042344447567548.a n = A396289 n

end A396289

/-! ## A396289.P15885199492656878342

`A244804(n+1)-1`
-/

namespace A396289.P15885199492656878342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244804 (n + 1) - 1

end

end A396289.P15885199492656878342

namespace A396289

/-- `A244804(n+1)-1` -/
def P15885199492656878342.Spec : Prop :=
  ∀ n, P15885199492656878342.a n = A396289 n

theorem P15885199492656878342.correct : P15885199492656878342.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P15885199492656878342.a, A396289.P3873563288867245151.a, A244804, A244804.P18087651801228786928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P268948830770522116

`∑[a(n-1)+24]` with `a(0)=0, a(1)=13`
-/

namespace A396289.P268948830770522116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396289.P268948830770522116

namespace A396289

/-- `∑[a(n-1)+24]` -/
def P268948830770522116.Spec : Prop :=
  ∀ n, (P268948830770522116.a n : ℤ) = A396289 n

end A396289

/-! ## A396289.P10179366325079004456

`or(2, 12*n)*n-n`
-/

namespace A396289.P10179366325079004456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) * n : ℤ) - (n : ℤ)

end

end A396289.P10179366325079004456

namespace A396289

/-- `or(2, 12*n)*n-n` -/
def P10179366325079004456.Spec : Prop :=
  ∀ n, P10179366325079004456.a n = A396289 n

end A396289

/-! ## A396289.P4241856077219516406

`xor(2, 12*n)*n-n`
-/

namespace A396289.P4241856077219516406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (12 * n) * n : ℤ) - (n : ℤ)

end

end A396289.P4241856077219516406

namespace A396289

/-- `xor(2, 12*n)*n-n` -/
def P4241856077219516406.Spec : Prop :=
  ∀ n, P4241856077219516406.a n = A396289 n

end A396289

/-! ## A396289.P14591305158760115663

`A135453(n)+n`
-/

namespace A396289.P14591305158760115663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n + (n : ℤ)

end

end A396289.P14591305158760115663

namespace A396289

/-- `A135453(n)+n` -/
def P14591305158760115663.Spec : Prop :=
  ∀ n, P14591305158760115663.a n = A396289 n

theorem P14591305158760115663.correct : P14591305158760115663.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P14591305158760115663.a, A396289.P3873563288867245151.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P5991522290642887670

`A158463(n)+1+n`
-/

namespace A396289.P5991522290642887670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 n + 1 + (n : ℤ)

end

end A396289.P5991522290642887670

namespace A396289

/-- `A158463(n)+1+n` -/
def P5991522290642887670.Spec : Prop :=
  ∀ n, P5991522290642887670.a n = A396289 n

theorem P5991522290642887670.correct : P5991522290642887670.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P5991522290642887670.a, A396289.P3873563288867245151.a, A158463, A158463.P7007655217700314725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P896612487869912077

`A158480(n)-1+n`
-/

namespace A396289.P896612487869912077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n - 1 + (n : ℤ)

end

end A396289.P896612487869912077

namespace A396289

/-- `A158480(n)-1+n` -/
def P896612487869912077.Spec : Prop :=
  ∀ n, P896612487869912077.a n = A396289 n

theorem P896612487869912077.correct : P896612487869912077.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P896612487869912077.a, A396289.P3873563288867245151.a, A158480, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P14335925213692194736

`A194454(n)-(n+1)`
-/

namespace A396289.P14335925213692194736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194454 n - (n + 1 : ℤ)

end

end A396289.P14335925213692194736

namespace A396289

/-- `A194454(n)-(n+1)` -/
def P14335925213692194736.Spec : Prop :=
  ∀ n, P14335925213692194736.a n = A396289 n

theorem P14335925213692194736.correct : P14335925213692194736.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P14335925213692194736.a, A396289.P3873563288867245151.a, A194454, A194454.P11085170661089486753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P10779816021197249155

`2*A033581(n)+n`
-/

namespace A396289.P10779816021197249155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033581 n + (n : ℤ)

end

end A396289.P10779816021197249155

namespace A396289

/-- `2*A033581(n)+n` -/
def P10779816021197249155.Spec : Prop :=
  ∀ n, P10779816021197249155.a n = A396289 n

theorem P10779816021197249155.correct : P10779816021197249155.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P10779816021197249155.a, A396289.P3873563288867245151.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P9512605082035891598

`A396288(n)+2*n`
-/

namespace A396289.P9512605082035891598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 n + (2 * n : ℤ)

end

end A396289.P9512605082035891598

namespace A396289

/-- `A396288(n)+2*n` -/
def P9512605082035891598.Spec : Prop :=
  ∀ n, P9512605082035891598.a n = A396289 n

theorem P9512605082035891598.correct : P9512605082035891598.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P9512605082035891598.a, A396289.P3873563288867245151.a, A396288, A396288.P9785100004130404729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P16430118421744525298

`A063436(n)-2*n`
-/

namespace A396289.P16430118421744525298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063436 n - (2 * n : ℤ)

end

end A396289.P16430118421744525298

namespace A396289

/-- `A063436(n)-2*n` -/
def P16430118421744525298.Spec : Prop :=
  ∀ n, P16430118421744525298.a n = A396289 n

theorem P16430118421744525298.correct : P16430118421744525298.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P16430118421744525298.a, A396289.P3873563288867245151.a, A063436, A063436.P6856054806736193048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P12627636161022983006

`A022280(n)+A000096(n)`
-/

namespace A396289.P12627636161022983006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n + A000096 n

end

end A396289.P12627636161022983006

namespace A396289

/-- `A022280(n)+A000096(n)` -/
def P12627636161022983006.Spec : Prop :=
  ∀ n, P12627636161022983006.a n = A396289 n

end A396289

/-! ## A396289.P15002266632196139415

`A022281(n)+A000217(n)`
-/

namespace A396289.P15002266632196139415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + A000217 n

end

end A396289.P15002266632196139415

namespace A396289

/-- `A022281(n)+A000217(n)` -/
def P15002266632196139415.Spec : Prop :=
  ∀ n, P15002266632196139415.a n = A396289 n

end A396289

/-! ## A396289.P2289447329581493

`A014642(n)+A008587(n)`
-/

namespace A396289.P2289447329581493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + A008587 n

end

end A396289.P2289447329581493

namespace A396289

/-- `A014642(n)+A008587(n)` -/
def P2289447329581493.Spec : Prop :=
  ∀ n, P2289447329581493.a n = A396289 n

theorem P2289447329581493.correct : P2289447329581493.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P2289447329581493.a, A396289.P3873563288867245151.a, A008587, A008587.P15238079008432610842.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P15062092352531846535

`A022279(n)+A005449(n)`
-/

namespace A396289.P15062092352531846535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + A005449 n

end

end A396289.P15062092352531846535

namespace A396289

/-- `A022279(n)+A005449(n)` -/
def P15062092352531846535.Spec : Prop :=
  ∀ n, P15062092352531846535.a n = A396289 n

end A396289

/-! ## A396289.P6751453857025640520

`A022277(n)+A005475(n)`
-/

namespace A396289.P6751453857025640520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n + A005475 n

end

end A396289.P6751453857025640520

namespace A396289

/-- `A022277(n)+A005475(n)` -/
def P6751453857025640520.Spec : Prop :=
  ∀ n, P6751453857025640520.a n = A396289 n

end A396289

/-! ## A396289.P5788920314148751068

`A033586(n)+A001107(n)`
-/

namespace A396289.P5788920314148751068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A001107 n

end

end A396289.P5788920314148751068

namespace A396289

/-- `A033586(n)+A001107(n)` -/
def P5788920314148751068.Spec : Prop :=
  ∀ n, P5788920314148751068.a n = A396289 n

theorem P5788920314148751068.correct : P5788920314148751068.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P5788920314148751068.a, A396289.P3873563288867245151.a, A001107, A001107.P15766833630772781234.a, A033586, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-! ## A396289.P7690794566839285592

`A033584(n)+A002378(n)`
-/

namespace A396289.P7690794566839285592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A002378 n

end

end A396289.P7690794566839285592

namespace A396289

/-- `A033584(n)+A002378(n)` -/
def P7690794566839285592.Spec : Prop :=
  ∀ n, P7690794566839285592.a n = A396289 n

theorem P7690794566839285592.correct : P7690794566839285592.Spec := by
  intro n
  simp only [A396289, Nat.add_sub_cancel, A396289.P7690794566839285592.a, A396289.P3873563288867245151.a, A002378, A002378.P6342434596694243671.a, A033584, A033584.P5749212620470657919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396289

/-!
# A396290: a(n) = n*(12*n+5).

The programs for A396290, the canonical program `A396290.P13947745858028629092` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396290 has offset 0).

The definition of A396290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n+5)` (program `A396290.P13947745858028629092`, by `A396290.P13947745858028629092.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396290.P13947745858028629092

`n*(12*n+5)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396290

/-- `n*(12*n+5)` -/
def P13947745858028629092.Spec : Prop :=
  ∀ n, (P13947745858028629092.a n : ℤ) = A396290 n

theorem P13947745858028629092.correct : P13947745858028629092.Spec := by
  intro n
  simp only [A396290]

end A396290

/-! ## A396290.P5347345744771502874

`ogf((17x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A396290.P5347345744771502874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 17, 7] [1, -3, 3, -1] n

end

end A396290.P5347345744771502874

namespace A396290

/-- `ogf((17x+7x^2)/(1-3x+3x^2-x^3))` -/
def P5347345744771502874.Spec : Prop :=
  ∀ n, P5347345744771502874.a n = A396290 n

end A396290

/-! ## A396290.P2623164437510665006

`A244806(n+1)-1`
-/

namespace A396290.P2623164437510665006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244806 (n + 1) - 1

end

end A396290.P2623164437510665006

namespace A396290

/-- `A244806(n+1)-1` -/
def P2623164437510665006.Spec : Prop :=
  ∀ n, P2623164437510665006.a n = A396290 n

theorem P2623164437510665006.correct : P2623164437510665006.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P2623164437510665006.a, A396290.P13947745858028629092.a, A244806, A244806.P12540561993492766238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P17552845118564542656

`∑[a(n-1)+24]` with `a(0)=0, a(1)=17`
-/

namespace A396290.P17552845118564542656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 17] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396290.P17552845118564542656

namespace A396290

/-- `∑[a(n-1)+24]` -/
def P17552845118564542656.Spec : Prop :=
  ∀ n, (P17552845118564542656.a n : ℤ) = A396290 n

end A396290

/-! ## A396290.P4348759918583958284

`Δ[lcm(n, (n-1+n)²)]+n-1`
-/

namespace A396290.P4348759918583958284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((n : ℤ) - 1 + (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1)

end

end A396290.P4348759918583958284

namespace A396290

/-- `Δ[lcm(n, (n-1+n)²)]+n-1` -/
def P4348759918583958284.Spec : Prop :=
  ∀ n, P4348759918583958284.a n = A396290 n

end A396290

/-! ## A396290.P7207780872649766614

`A179741(n)+1+n`
-/

namespace A396290.P7207780872649766614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179741 n + 1 + (n : ℤ)

end

end A396290.P7207780872649766614

namespace A396290

/-- `A179741(n)+1+n` -/
def P7207780872649766614.Spec : Prop :=
  ∀ n, P7207780872649766614.a n = A396290 n

theorem P7207780872649766614.correct : P7207780872649766614.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P7207780872649766614.a, A396290.P13947745858028629092.a, A179741, A179741.P3894650603299352832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P12102195572385382654

`A381390(n)-1+n`
-/

namespace A396290.P12102195572385382654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n - 1 + (n : ℤ)

end

end A396290.P12102195572385382654

namespace A396290

/-- `A381390(n)-1+n` -/
def P12102195572385382654.Spec : Prop :=
  ∀ n, P12102195572385382654.a n = A396290 n

theorem P12102195572385382654.correct : P12102195572385382654.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P12102195572385382654.a, A396290.P13947745858028629092.a, A381390, A381390.P5706993922574982670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P14866732709519053639

`2*A033580(n)+n`
-/

namespace A396290.P14866732709519053639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033580 n + (n : ℤ)

end

end A396290.P14866732709519053639

namespace A396290

/-- `2*A033580(n)+n` -/
def P14866732709519053639.Spec : Prop :=
  ∀ n, P14866732709519053639.a n = A396290 n

theorem P14866732709519053639.correct : P14866732709519053639.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P14866732709519053639.a, A396290.P13947745858028629092.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P1154270850770262382

`A063436(n)+2*n`
-/

namespace A396290.P1154270850770262382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063436 n + (2 * n : ℤ)

end

end A396290.P1154270850770262382

namespace A396290

/-- `A063436(n)+2*n` -/
def P1154270850770262382.Spec : Prop :=
  ∀ n, P1154270850770262382.a n = A396290 n

theorem P1154270850770262382.correct : P1154270850770262382.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P1154270850770262382.a, A396290.P13947745858028629092.a, A063436, A063436.P6856054806736193048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P11182734916389980293

`2*A195319(n)-n`
-/

namespace A396290.P11182734916389980293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195319 n - (n : ℤ)

end

end A396290.P11182734916389980293

namespace A396290

/-- `2*A195319(n)-n` -/
def P11182734916389980293.Spec : Prop :=
  ∀ n, P11182734916389980293.a n = A396290 n

theorem P11182734916389980293.correct : P11182734916389980293.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P11182734916389980293.a, A396290.P13947745858028629092.a, A195319, A195319.P14159989131175070761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P14936630317576888364

`3*A002943(n)-n`
-/

namespace A396290.P14936630317576888364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002943 n - (n : ℤ)

end

end A396290.P14936630317576888364

namespace A396290

/-- `3*A002943(n)-n` -/
def P14936630317576888364.Spec : Prop :=
  ∀ n, P14936630317576888364.a n = A396290 n

theorem P14936630317576888364.correct : P14936630317576888364.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P14936630317576888364.a, A396290.P13947745858028629092.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P11298420393297902570

`A014642(n)+A008591(n)`
-/

namespace A396290.P11298420393297902570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + A008591 n

end

end A396290.P11298420393297902570

namespace A396290

/-- `A014642(n)+A008591(n)` -/
def P11298420393297902570.Spec : Prop :=
  ∀ n, P11298420393297902570.a n = A396290 n

theorem P11298420393297902570.correct : P11298420393297902570.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P11298420393297902570.a, A396290.P13947745858028629092.a, A008591, A008591.P8937864482545511630.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P12551106513090281618

`A035008(n)+A001107(n)`
-/

namespace A396290.P12551106513090281618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n + A001107 n

end

end A396290.P12551106513090281618

namespace A396290

/-- `A035008(n)+A001107(n)` -/
def P12551106513090281618.Spec : Prop :=
  ∀ n, P12551106513090281618.a n = A396290 n

theorem P12551106513090281618.correct : P12551106513090281618.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P12551106513090281618.a, A396290.P13947745858028629092.a, A001107, A001107.P15766833630772781234.a, A035008, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P13077497413962537439

`A033586(n)+A007742(n)`
-/

namespace A396290.P13077497413962537439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A007742 n

end

end A396290.P13077497413962537439

namespace A396290

/-- `A033586(n)+A007742(n)` -/
def P13077497413962537439.Spec : Prop :=
  ∀ n, P13077497413962537439.a n = A396290 n

theorem P13077497413962537439.correct : P13077497413962537439.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P13077497413962537439.a, A396290.P13947745858028629092.a, A007742, A007742.P14173437786459717136.a, A033586, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P15182483356955408736

`A027468(n)+A022273(n)`
-/

namespace A396290.P15182483356955408736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + A022273 n

end

end A396290.P15182483356955408736

namespace A396290

/-- `A027468(n)+A022273(n)` -/
def P15182483356955408736.Spec : Prop :=
  ∀ n, P15182483356955408736.a n = A396290 n

end A396290

/-! ## A396290.P10417005435167858658

`A033584(n)+A028557(n)`
-/

namespace A396290.P10417005435167858658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A028557 n

end

end A396290.P10417005435167858658

namespace A396290

/-- `A033584(n)+A028557(n)` -/
def P10417005435167858658.Spec : Prop :=
  ∀ n, P10417005435167858658.a n = A396290 n

theorem P10417005435167858658.correct : P10417005435167858658.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P10417005435167858658.a, A396290.P13947745858028629092.a, A028557, A028557.P14629390258788046737.a, A033584, A033584.P5749212620470657919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P3830747337356189926

`A033583(n)+A033537(n)`
-/

namespace A396290.P3830747337356189926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A033537 n

end

end A396290.P3830747337356189926

namespace A396290

/-- `A033583(n)+A033537(n)` -/
def P3830747337356189926.Spec : Prop :=
  ∀ n, P3830747337356189926.a n = A396290 n

theorem P3830747337356189926.correct : P3830747337356189926.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P3830747337356189926.a, A396290.P13947745858028629092.a, A033537, A033537.P12257875096179782365.a, A033583, A033583.P12285480609414282410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P11921740371924352336

`A033951(n)+A033566(n)`
-/

namespace A396290.P11921740371924352336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n + A033566 n

end

end A396290.P11921740371924352336

namespace A396290

/-- `A033951(n)+A033566(n)` -/
def P11921740371924352336.Spec : Prop :=
  ∀ n, P11921740371924352336.a n = A396290 n

theorem P11921740371924352336.correct : P11921740371924352336.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P11921740371924352336.a, A396290.P13947745858028629092.a, A033566, A033566.P726618908899133796.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P11957505415809484513

`A033954(n)+A033585(n)`
-/

namespace A396290.P11957505415809484513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n + A033585 n

end

end A396290.P11957505415809484513

namespace A396290

/-- `A033954(n)+A033585(n)` -/
def P11957505415809484513.Spec : Prop :=
  ∀ n, P11957505415809484513.a n = A396290 n

theorem P11957505415809484513.correct : P11957505415809484513.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P11957505415809484513.a, A396290.P13947745858028629092.a, A033585, A033585.P9867637388797284521.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-! ## A396290.P13844198420516605067

`A033991(n)+A033587(n)`
-/

namespace A396290.P13844198420516605067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n + A033587 n

end

end A396290.P13844198420516605067

namespace A396290

/-- `A033991(n)+A033587(n)` -/
def P13844198420516605067.Spec : Prop :=
  ∀ n, P13844198420516605067.a n = A396290 n

theorem P13844198420516605067.correct : P13844198420516605067.Spec := by
  intro n
  simp only [A396290, Nat.add_sub_cancel, A396290.P13844198420516605067.a, A396290.P13947745858028629092.a, A033587, A033587.P16272004082571904291.a, A033991, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396290

/-!
# A396291: a(n) = n*(12*n-5).

The programs for A396291, the canonical program `A396291.P2280103338649089632` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396291 has offset 0).

The definition of A396291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n-5)` (program `A396291.P2280103338649089632`, by `A396291.P2280103338649089632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396291.P2280103338649089632

`n*(12*n-5)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396291

/-- `n*(12*n-5)` -/
def P2280103338649089632.Spec : Prop :=
  ∀ n, P2280103338649089632.a n = A396291 n

theorem P2280103338649089632.correct : P2280103338649089632.Spec := by
  intro n
  simp only [A396291]

end A396291

/-! ## A396291.P7353093774622419605

`ogf((7x+17x^2)/(1-3x+3x^2-x^3))`
-/

namespace A396291.P7353093774622419605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 17] [1, -3, 3, -1] n

end

end A396291.P7353093774622419605

namespace A396291

/-- `ogf((7x+17x^2)/(1-3x+3x^2-x^3))` -/
def P7353093774622419605.Spec : Prop :=
  ∀ n, P7353093774622419605.a n = A396291 n

end A396291

/-! ## A396291.P2246796996420927866

`∑[a(n-1)+24]` with `a(0)=0, a(1)=7`
-/

namespace A396291.P2246796996420927866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396291.P2246796996420927866

namespace A396291

/-- `∑[a(n-1)+24]` -/
def P2246796996420927866.Spec : Prop :=
  ∀ n, (P2246796996420927866.a n : ℤ) = A396291 n

end A396291

/-! ## A396291.P14758312105468769892

`6*C(2*n, 2)+n`
-/

namespace A396291.P14758312105468769892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (2 * n) 2 + n

end

end A396291.P14758312105468769892

namespace A396291

/-- `6*C(2*n, 2)+n` -/
def P14758312105468769892.Spec : Prop :=
  ∀ n, (P14758312105468769892.a n : ℤ) = A396291 n

theorem P14758312105468769892.correct : P14758312105468769892.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P14758312105468769892.a, A396291.P2280103338649089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P744640413367523001

`A270704(n)/2`
-/

namespace A396291.P744640413367523001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270704 n : ℚ) / 2

end

end A396291.P744640413367523001

namespace A396291

/-- `A270704(n)/2` -/
def P744640413367523001.Spec : Prop :=
  ∀ n, P744640413367523001.a n = (A396291 n : ℚ)

theorem P744640413367523001.correct : P744640413367523001.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P744640413367523001.a, A396291.P2280103338649089632.a, A270704, A270704.P3134271867177922031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P12336525921975811736

`A152746(n)+n`
-/

namespace A396291.P12336525921975811736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + (n : ℤ)

end

end A396291.P12336525921975811736

namespace A396291

/-- `A152746(n)+n` -/
def P12336525921975811736.Spec : Prop :=
  ∀ n, P12336525921975811736.a n = A396291 n

theorem P12336525921975811736.correct : P12336525921975811736.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P12336525921975811736.a, A396291.P2280103338649089632.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P8670662233011380240

`A014642(n)-n`
-/

namespace A396291.P8670662233011380240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n - (n : ℤ)

end

end A396291.P8670662233011380240

namespace A396291

/-- `A014642(n)-n` -/
def P8670662233011380240.Spec : Prop :=
  ∀ n, P8670662233011380240.a n = A396291 n

theorem P8670662233011380240.correct : P8670662233011380240.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P8670662233011380240.a, A396291.P2280103338649089632.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P11064093705935164027

`sqrt(A014794(n))-n`
-/

namespace A396291.P11064093705935164027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014794 n : ℝ) - (n : ℝ)

end

end A396291.P11064093705935164027

namespace A396291

/-- `sqrt(A014794(n))-n` -/
def P11064093705935164027.Spec : Prop :=
  ∀ n, P11064093705935164027.a n = (A396291 n : ℝ)

end A396291

/-! ## A396291.P8694949740938459324

`2*A094159(n)+n`
-/

namespace A396291.P8694949740938459324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094159 n + (n : ℤ)

end

end A396291.P8694949740938459324

namespace A396291

/-- `2*A094159(n)+n` -/
def P8694949740938459324.Spec : Prop :=
  ∀ n, P8694949740938459324.a n = A396291 n

theorem P8694949740938459324.correct : P8694949740938459324.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P8694949740938459324.a, A396291.P2280103338649089632.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P11151835222029789807

`3*A002939(n)+n`
-/

namespace A396291.P11151835222029789807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002939 n + (n : ℤ)

end

end A396291.P11151835222029789807

namespace A396291

/-- `3*A002939(n)+n` -/
def P11151835222029789807.Spec : Prop :=
  ∀ n, P11151835222029789807.a n = A396291 n

theorem P11151835222029789807.correct : P11151835222029789807.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P11151835222029789807.a, A396291.P2280103338649089632.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P4502259535621066773

`2*A033579(n)-n`
-/

namespace A396291.P4502259535621066773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033579 n - (n : ℤ)

end

end A396291.P4502259535621066773

namespace A396291

/-- `2*A033579(n)-n` -/
def P4502259535621066773.Spec : Prop :=
  ∀ n, P4502259535621066773.a n = A396291 n

theorem P4502259535621066773.correct : P4502259535621066773.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P4502259535621066773.a, A396291.P2280103338649089632.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P10224431050171003713

`A062783(n)-2*n`
-/

namespace A396291.P10224431050171003713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n - (2 * n : ℤ)

end

end A396291.P10224431050171003713

namespace A396291

/-- `A062783(n)-2*n` -/
def P10224431050171003713.Spec : Prop :=
  ∀ n, P10224431050171003713.a n = A396291 n

theorem P10224431050171003713.correct : P10224431050171003713.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P10224431050171003713.a, A396291.P2280103338649089632.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P5016978635571667861

`A143698(n)/2+n`
-/

namespace A396291.P5016978635571667861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143698 n : ℚ) / 2 + (n : ℚ)

end

end A396291.P5016978635571667861

namespace A396291

/-- `A143698(n)/2+n` -/
def P5016978635571667861.Spec : Prop :=
  ∀ n, P5016978635571667861.a n = (A396291 n : ℚ)

theorem P5016978635571667861.correct : P5016978635571667861.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P5016978635571667861.a, A396291.P2280103338649089632.a, A143698, A143698.P346745898935711225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P6792534726541485544

`A153794(n)+3*n`
-/

namespace A396291.P6792534726541485544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + (3 * n : ℤ)

end

end A396291.P6792534726541485544

namespace A396291

/-- `A153794(n)+3*n` -/
def P6792534726541485544.Spec : Prop :=
  ∀ n, P6792534726541485544.a n = A396291 n

theorem P6792534726541485544.correct : P6792534726541485544.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P6792534726541485544.a, A396291.P2280103338649089632.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P3260262633572245316

`A126964(n)-3*n`
-/

namespace A396291.P3260262633572245316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 n - (3 * n : ℤ)

end

end A396291.P3260262633572245316

namespace A396291

/-- `A126964(n)-3*n` -/
def P3260262633572245316.Spec : Prop :=
  ∀ n, P3260262633572245316.a n = A396291 n

theorem P3260262633572245316.correct : P3260262633572245316.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P3260262633572245316.a, A396291.P2280103338649089632.a, A126964, A126964.P15256011894595819792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P16558576119052281543

`A152767(n)+4*n`
-/

namespace A396291.P16558576119052281543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n + (4 * n : ℤ)

end

end A396291.P16558576119052281543

namespace A396291

/-- `A152767(n)+4*n` -/
def P16558576119052281543.Spec : Prop :=
  ∀ n, P16558576119052281543.a n = A396291 n

theorem P16558576119052281543.correct : P16558576119052281543.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P16558576119052281543.a, A396291.P2280103338649089632.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P3200480501463560096

`4*A049450(n)-n`
-/

namespace A396291.P3200480501463560096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049450 n - (n : ℤ)

end

end A396291.P3200480501463560096

namespace A396291

/-- `4*A049450(n)-n` -/
def P3200480501463560096.Spec : Prop :=
  ∀ n, P3200480501463560096.a n = A396291 n

theorem P3200480501463560096.correct : P3200480501463560096.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P3200480501463560096.a, A396291.P2280103338649089632.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P13975204113931998142

`A396288(n)-4*n`
-/

namespace A396291.P13975204113931998142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 n - (4 * n : ℤ)

end

end A396291.P13975204113931998142

namespace A396291

/-- `A396288(n)-4*n` -/
def P13975204113931998142.Spec : Prop :=
  ∀ n, P13975204113931998142.a n = A396291 n

theorem P13975204113931998142.correct : P13975204113931998142.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P13975204113931998142.a, A396291.P2280103338649089632.a, A396288, A396288.P9785100004130404729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P2475888066059992681

`A135453(n)-5*n`
-/

namespace A396291.P2475888066059992681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n - (5 * n : ℤ)

end

end A396291.P2475888066059992681

namespace A396291

/-- `A135453(n)-5*n` -/
def P2475888066059992681.Spec : Prop :=
  ∀ n, P2475888066059992681.a n = A396291 n

theorem P2475888066059992681.correct : P2475888066059992681.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P2475888066059992681.a, A396291.P2280103338649089632.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-! ## A396291.P10971916950246028775

`A244802(n+1)-Δ[n²]`
-/

namespace A396291.P10971916950246028775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A396291.P10971916950246028775

namespace A396291

/-- `A244802(n+1)-Δ[n²]` -/
def P10971916950246028775.Spec : Prop :=
  ∀ n, P10971916950246028775.a n = A396291 n

theorem P10971916950246028775.correct : P10971916950246028775.Spec := by
  intro n
  simp only [A396291, Nat.add_sub_cancel, A396291.P10971916950246028775.f1, A396291.P10971916950246028775.a, A396291.P2280103338649089632.a, A244802, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396291

/-!
# A396292: In Glinski's hexagonal chess, these are the cells in the hexagonal spiral that can be reached by a Glinski queen placed at cell 0.

The programs for A396292, there is no canonical definition to state claims against.
-/

/-! ## A396292.P17431469113222486589

`comp[A396293(n)]`
-/

namespace A396292.P17431469113222486589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396292.P17431469113222486589

/-! ## A396292.P15044140015660308252

`lt[sqrt(A006369(n)), 5]`
-/

namespace A396292.P15044140015660308252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006369 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A396292.P15044140015660308252

/-! ## A396292.P12000009267050099583

`eq[A010892(n), A011652(n)]`
-/

namespace A396292.P12000009267050099583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396292.P12000009267050099583

/-! ## A396292.P13442570998394053612

`lt[A000720(A265667(n+4)), 10]`
-/

namespace A396292.P13442570998394053612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A265667 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396292.P13442570998394053612

/-! ## A396292.P14882418346545707364

`lt[A006369(A199969(2*(n+2))), 53]`
-/

namespace A396292.P14882418346545707364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A199969 (2 * (n + 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396292.P14882418346545707364

/-!
# A396293: In Glinski's hexagonal chess, these are the cells in the hexagonal spiral that cannot be reached by a Glinski queen placed at cell 0.

The programs for A396293, there is no canonical definition to state claims against.
-/

/-! ## A396293.P518991503603559065

`∑[runs[A152844(n)]]`
-/

namespace A396293.P518991503603559065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396293.P518991503603559065

/-! ## A396293.P493370050555164207

`comp[A396292(n+1)]`
-/

namespace A396293.P493370050555164207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396293.P493370050555164207

/-! ## A396293.P5068388467112912323

`eq[A033358(n+1), A088439(n)]`
-/

namespace A396293.P5068388467112912323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396293.P5068388467112912323

/-! ## A396293.P11318190999313612154

`eq[A075020(n+1), A262303(n+2)]`
-/

namespace A396293.P11318190999313612154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262303 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396293.P11318190999313612154

/-! ## A396293.P10530536763533965048

`eq[A138962(n+1), A262303(n+2)]`
-/

namespace A396293.P10530536763533965048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262303 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396293.P10530536763533965048

/-!
# A396297: Construct a planar grid by drawing a square of side 1, and then at each corner, place the midpoint of a square of side 1/sqrt(2), rotated from the first by 45 degs. From each of these four squares continue placing new squares in the same way, each time rescaled by a factor of 1/sqrt(2), as long as they don't overlap any earlier squares. Sequence gives number of squares added at the n-th stage.

The programs for A396297, there is no canonical definition to state claims against.
-/

/-! ## A396297.P11531194379907287620

`A328596(A327475(n)+A000217(n))`
-/

namespace A396297.P11531194379907287620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A327475 n + A000217 n).toNat

end

end A396297.P11531194379907287620

/-! ## A396297.P14379930995750266785

`4*A334030(a(n-1))` with `a(0)=1`
-/

namespace A396297.P14379930995750266785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A334030 (a (n - 1)).toNat

end

end A396297.P14379930995750266785

/-!
# A396298: Partial sums of A396297.

The programs for A396298, there is no canonical definition to state claims against.
-/

/-! ## A396298.P13486152070801262348

`∑[A396297(n)]`
-/

namespace A396298.P13486152070801262348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396298.P13486152070801262348

/-! ## A396298.P17097648019275817984

`A000006(A055368(n+9))`
-/

namespace A396298.P17097648019275817984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A055368 (n + 9)).toNat

end

end A396298.P17097648019275817984

