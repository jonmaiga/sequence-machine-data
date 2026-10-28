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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
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
# A023900: Dirichlet inverse of Euler totient function (A000010).

The programs for A023900, the canonical program `A023900.P15367599446689772238` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023900 has offset 1).

The definition of A023900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023900.P15367599446689772238

`(-1)^A001221(n+1)*A173557(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023900

/-- `(-1)^A001221(n+1)*A173557(n+1)` -/
def P15367599446689772238.Spec : Prop :=
  ∀ n, P15367599446689772238.a n = (A023900 (n + 1) : ℚ)

end A023900

/-! ## A023900.P10293081577903741171

`A062953(n+1)*A000010(n+1)/(n+1)`
-/

namespace A023900.P10293081577903741171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062953 (n + 1) * A000010 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A023900.P10293081577903741171

namespace A023900

/-- `A062953(n+1)*A000010(n+1)/(n+1)` -/
def P10293081577903741171.Spec : Prop :=
  ∀ n, P10293081577903741171.a n = (A023900 (n + 1) : ℚ)

end A023900

/-! ## A023900.P14233586301690202289

`(1-A020639(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A023900.P14233586301690202289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - A020639 (n + 1)) * a (A028234 (n + 1) - 1).toNat

end

end A023900.P14233586301690202289

namespace A023900

/-- `(1-A020639(n+1))*a(A028234(n+1)-1)` -/
def P14233586301690202289.Spec : Prop :=
  ∀ n, P14233586301690202289.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P9491206474058353133

`A000010(A007947(n+1))*(-1)^A001221(n+1)`
-/

namespace A023900.P9491206474058353133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A007947 (n + 1)).toNat : ℚ) * (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A023900.P9491206474058353133

namespace A023900

/-- `A000010(A007947(n+1))*(-1)^A001221(n+1)` -/
def P9491206474058353133.Spec : Prop :=
  ∀ n, P9491206474058353133.a n = (A023900 (n + 1) : ℚ)

end A023900

/-! ## A023900.P15997937414173511236

`A000010(n+1)*A008683(A007947(n+1))*A007947(n+1)/(n+1)`
-/

namespace A023900.P15997937414173511236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A008683 (A007947 (n + 1)).toNat * A007947 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A023900.P15997937414173511236

namespace A023900

/-- `A000010(n+1)*A008683(A007947(n+1))*A007947(n+1)/(n+1)` -/
def P15997937414173511236.Spec : Prop :=
  ∀ n, P15997937414173511236.a n = (A023900 (n + 1) : ℚ)

end A023900

/-! ## A023900.P6802385856234332486

`∏{p}[n+1, 1-#]`
-/

namespace A023900.P6802385856234332486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))

end

end A023900.P6802385856234332486

namespace A023900

/-- `∏{p}[n+1, 1-#]` -/
def P6802385856234332486.Spec : Prop :=
  ∀ n, P6802385856234332486.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P2479840008561807263

`∑{d}[n+1, A055615(#)]`
-/

namespace A023900.P2479840008561807263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d

end

end A023900.P2479840008561807263

namespace A023900

/-- `∑{d}[n+1, A055615(#)]` -/
def P2479840008561807263.Spec : Prop :=
  ∀ n, P2479840008561807263.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P13952340646250599615

`A061020(∏{p}[n+1, #])`
-/

namespace A023900.P13952340646250599615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023900.P13952340646250599615

namespace A023900

/-- `A061020(∏{p}[n+1, #])` -/
def P13952340646250599615.Spec : Prop :=
  ∀ n, P13952340646250599615.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P9557577100049301048

`A097945(∏{p}[n+1, #])`
-/

namespace A023900.P9557577100049301048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023900.P9557577100049301048

namespace A023900

/-- `A097945(∏{p}[n+1, #])` -/
def P9557577100049301048.Spec : Prop :=
  ∀ n, P9557577100049301048.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P14380652741633771269

`A125131(∏{p}[n+1, #])`
-/

namespace A023900.P14380652741633771269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023900.P14380652741633771269

namespace A023900

/-- `A125131(∏{p}[n+1, #])` -/
def P14380652741633771269.Spec : Prop :=
  ∀ n, P14380652741633771269.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P16431793516110295646

`A153038(∏{p}[n+1, #])`
-/

namespace A023900.P16431793516110295646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153038 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023900.P16431793516110295646

namespace A023900

/-- `A153038(∏{p}[n+1, #])` -/
def P16431793516110295646.Spec : Prop :=
  ∀ n, P16431793516110295646.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P11442310180063132964

`A323407(∏{p}[n+1, #])`
-/

namespace A023900.P11442310180063132964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023900.P11442310180063132964

namespace A023900

/-- `A323407(∏{p}[n+1, #])` -/
def P11442310180063132964.Spec : Prop :=
  ∀ n, P11442310180063132964.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P5305689310135494193

`A328729(∏{p}[n+1, #])`
-/

namespace A023900.P5305689310135494193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328729 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023900.P5305689310135494193

namespace A023900

/-- `A328729(∏{p}[n+1, #])` -/
def P5305689310135494193.Spec : Prop :=
  ∀ n, P5305689310135494193.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P7166326766536176085

`A349441(∏{p}[n+1, #])`
-/

namespace A023900.P7166326766536176085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349441 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A023900.P7166326766536176085

namespace A023900

/-- `A349441(∏{p}[n+1, #])` -/
def P7166326766536176085.Spec : Prop :=
  ∀ n, P7166326766536176085.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P6766092087292948469

`A318833(n+1)-(n+1)`
-/

namespace A023900.P6766092087292948469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (n + 1) - (n + 1 : ℤ)

end

end A023900.P6766092087292948469

namespace A023900

/-- `A318833(n+1)-(n+1)` -/
def P6766092087292948469.Spec : Prop :=
  ∀ n, P6766092087292948469.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P1527676492448608534

`∑{d}[n+1, #*A008683(#)]`
-/

namespace A023900.P1527676492448608534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d

end

end A023900.P1527676492448608534

namespace A023900

/-- `∑{d}[n+1, #*A008683(#)]` -/
def P1527676492448608534.Spec : Prop :=
  ∀ n, P1527676492448608534.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P6903678133045812258

`∏{p}[n+1, -A000010(#)]%(n+2)`
-/

namespace A023900.P6903678133045812258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-A000010 p)) (n + 2 : ℤ)

end

end A023900.P6903678133045812258

namespace A023900

/-- `∏{p}[n+1, -A000010(#)]%(n+2)` -/
def P6903678133045812258.Spec : Prop :=
  ∀ n, P6903678133045812258.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P2458675240345540649

`∑{d}[n+1, #*A101035((n+1)/#)]`
-/

namespace A023900.P2458675240345540649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A023900.P2458675240345540649

namespace A023900

/-- `∑{d}[n+1, #*A101035((n+1)/#)]` -/
def P2458675240345540649.Spec : Prop :=
  ∀ n, P2458675240345540649.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P4003820765134099824

`A061020(A007947(n+1))`
-/

namespace A023900.P4003820765134099824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A007947 (n + 1)).toNat

end

end A023900.P4003820765134099824

namespace A023900

/-- `A061020(A007947(n+1))` -/
def P4003820765134099824.Spec : Prop :=
  ∀ n, P4003820765134099824.a n = A023900 (n + 1)

end A023900

/-! ## A023900.P9113704262336673673

`A043529(n)*A349431(n+1)`
-/

namespace A023900.P9113704262336673673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A349431 (n + 1)

end

end A023900.P9113704262336673673

namespace A023900

/-- `A043529(n)*A349431(n+1)` -/
def P9113704262336673673.Spec : Prop :=
  ∀ n, P9113704262336673673.a n = A023900 (n + 1)

end A023900

/-!
# A023901: Derivative of log of A002126.

The programs for A023901, there is no canonical definition to state claims against.
-/

/-! ## A023901.P7730781598791408978

`2*(-1)^n*A002120(n+1)`
-/

namespace A023901.P7730781598791408978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((-1) ^ n * A002120 (n + 1))

end

end A023901.P7730781598791408978

/-! ## A023901.P15484501632233352787

`A002120(n+1)*A280560(n)`
-/

namespace A023901.P15484501632233352787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002120 (n + 1) * A280560 n

end

end A023901.P15484501632233352787

/-! ## A023901.P13636619695078133352

`2*A002120(n+1)*A033999(n)`
-/

namespace A023901.P13636619695078133352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002120 (n + 1) * A033999 n)

end

end A023901.P13636619695078133352

/-! ## A023901.P13711300140700981517

`A002120(n+1)*A228826(2*n)`
-/

namespace A023901.P13711300140700981517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002120 (n + 1) * A228826 (2 * n)

end

end A023901.P13711300140700981517

/-! ## A023901.P3718655740385332052

`A002120(n+1)*A100051(A008585(n))`
-/

namespace A023901.P3718655740385332052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002120 (n + 1) * A100051 (A008585 n).toNat

end

end A023901.P3718655740385332052

/-! ## A023901.P4364365148272305392

`A002120(n+1)*A002448(n²)`
-/

namespace A023901.P4364365148272305392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002120 (n + 1) * A002448 (n ^ 2)

end

end A023901.P4364365148272305392

/-!
# A023902: Theta series of A_11 lattice.

The programs for A023902, there is no canonical definition to state claims against.
-/

/-! ## A023902.P4708218412730071994

`A023923(24*n)`
-/

namespace A023902.P4708218412730071994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023923 (24 * n)

end

end A023902.P4708218412730071994

/-! ## A023902.P3555529085107840164

`abs(1-A023923(A008606(n)))+1`
-/

namespace A023902.P3555529085107840164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A023923 (A008606 n).toNat| + 1

end

end A023902.P3555529085107840164

/-! ## A023902.P16850682303049510691

`gcd(A000038(n), A023923(A008606(n)))`
-/

namespace A023902.P16850682303049510691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A023923 (A008606 n).toNat)

end

end A023902.P16850682303049510691

/-! ## A023902.P5471052211585629349

`lcm(A020985(n), A023923(A008606(n)))`
-/

namespace A023902.P5471052211585629349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A023923 (A008606 n).toNat)

end

end A023902.P5471052211585629349

/-! ## A023902.P2314650037771653252

`or(A000007(n), A023923(A008606(n)))`
-/

namespace A023902.P2314650037771653252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A023923 (A008606 n).toNat)

end

end A023902.P2314650037771653252

/-! ## A023902.P9761062718691654232

`A023923(A008606(n))/A007318(∑[n])`
-/

namespace A023902.P9761062718691654232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023923 (A008606 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A023902.P9761062718691654232

/-! ## A023902.P9253917254215983636

`A023923(A008606(n))+A000038(n+1)`
-/

namespace A023902.P9253917254215983636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023923 (A008606 n).toNat + A000038 (n + 1)

end

end A023902.P9253917254215983636

/-! ## A023902.P17623197091303539124

`A023923(A008606(n))+A000007(n+4)`
-/

namespace A023902.P17623197091303539124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023923 (A008606 n).toNat + A000007 (n + 4)

end

end A023902.P17623197091303539124

/-!
# A023903: Theta series of A_12 lattice.

The programs for A023903, there is no canonical definition to state claims against.
-/

/-! ## A023903.P16736553106808196513

`A023924(13*n)`
-/

namespace A023903.P16736553106808196513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023924 (13 * n)

end

end A023903.P16736553106808196513

/-! ## A023903.P4220779799225877691

`record[A023924(A112653(n))]`
-/

namespace A023903.P4220779799225877691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023924 (A112653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023903.P4220779799225877691

/-! ## A023903.P10155258458850976395

`record[or(A011583(n), A023924(n))]`
-/

namespace A023903.P10155258458850976395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011583 n) (A023924 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023903.P10155258458850976395

/-!
# A023904: Theta series of A_13 lattice.

The programs for A023904, there is no canonical definition to state claims against.
-/

/-! ## A023904.P7414992620949928460

`A023925(28*n)`
-/

namespace A023904.P7414992620949928460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023925 (28 * n)

end

end A023904.P7414992620949928460

/-! ## A023904.P9428076105089955926

`xor(2, xor(2, A023925(A135628(n))))`
-/

namespace A023904.P9428076105089955926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A023925 (A135628 n).toNat))

end

end A023904.P9428076105089955926

/-! ## A023904.P3626364899985153456

`gcd(A000038(n), A023925(A135628(n)))`
-/

namespace A023904.P3626364899985153456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A023925 (A135628 n).toNat)

end

end A023904.P3626364899985153456

/-! ## A023904.P12163650473623889581

`or(A000007(n), A023925(A135628(n)))`
-/

namespace A023904.P12163650473623889581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A023925 (A135628 n).toNat)

end

end A023904.P12163650473623889581

/-! ## A023904.P3233330811773860553

`A023925(A135628(n))/A007318(∑[n])`
-/

namespace A023904.P3233330811773860553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023925 (A135628 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A023904.P3233330811773860553

/-! ## A023904.P301551864759652009

`A023925(A135628(n))+A000007(n+1)`
-/

namespace A023904.P301551864759652009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023925 (A135628 n).toNat + A000007 (n + 1)

end

end A023904.P301551864759652009

/-! ## A023904.P16205879690721080902

`A023925(A135628(n))^A007318(C(2, n))`
-/

namespace A023904.P16205879690721080902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023925 (A135628 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A023904.P16205879690721080902

/-! ## A023904.P15129892623903226600

`A023925(A135628(n))+C(2, A000203(n+2))`
-/

namespace A023904.P15129892623903226600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023925 (A135628 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A023904.P15129892623903226600

/-! ## A023904.P9507002567899206962

`A023925(A135628(n))/A000010(-or(n, -2))`
-/

namespace A023904.P9507002567899206962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023925 (A135628 n).toNat : ℚ) / (A000010 (-Int.lor (n : ℤ) (-2)).toNat : ℚ)

end

end A023904.P9507002567899206962

/-!
# A023905: Theta series of A_14 lattice.

The programs for A023905, there is no canonical definition to state claims against.
-/

/-! ## A023905.P15583223986168018180

`A023926(15*n)`
-/

namespace A023905.P15583223986168018180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023926 (15 * n)

end

end A023905.P15583223986168018180

/-!
# A023907: Theta series of A_16 lattice.

The programs for A023907, there is no canonical definition to state claims against.
-/

/-! ## A023907.P6769072530978554287

`A023928(17*n)`
-/

namespace A023907.P6769072530978554287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023928 (17 * n)

end

end A023907.P6769072530978554287

/-!
# A023909: Theta series of A_18 lattice.

The programs for A023909, there is no canonical definition to state claims against.
-/

/-! ## A023909.P16404872183319044278

`A023930(19*n)`
-/

namespace A023909.P16404872183319044278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023930 (19 * n)

end

end A023909.P16404872183319044278

/-!
# A023910: Theta series of A_19 lattice.

The programs for A023910, there is no canonical definition to state claims against.
-/

/-! ## A023910.P14542225932266855355

`A023931(40*n)`
-/

namespace A023910.P14542225932266855355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023931 (40 * n)

end

end A023910.P14542225932266855355

/-! ## A023910.P10702794033877816843

`A023931(A317095(n))+char[40]`
-/

namespace A023910.P10702794033877816843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023931 (A317095 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A023910.P10702794033877816843

/-! ## A023910.P7832765799020729171

`lcm(A020985(n), A023931(A317095(n)))`
-/

namespace A023910.P7832765799020729171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A023931 (A317095 n).toNat)

end

end A023910.P7832765799020729171

/-! ## A023910.P8000703528974257881

`or(A000007(n), A023931(A317095(n)))`
-/

namespace A023910.P8000703528974257881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A023931 (A317095 n).toNat)

end

end A023910.P8000703528974257881

/-!
# A023911: Theta series of A_20 lattice.

The programs for A023911, there is no canonical definition to state claims against.
-/

/-! ## A023911.P15306214786435007781

`A023932(21*n)`
-/

namespace A023911.P15306214786435007781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023932 (21 * n)

end

end A023911.P15306214786435007781

/-!
# A023912: Theta series of A_21 lattice.

The programs for A023912, there is no canonical definition to state claims against.
-/

/-! ## A023912.P17916951398971306940

`A023933(44*n)`
-/

namespace A023912.P17916951398971306940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023933 (44 * n)

end

end A023912.P17916951398971306940

/-!
# A023913: Theta series of A_22 lattice.

The programs for A023913, there is no canonical definition to state claims against.
-/

/-! ## A023913.P13236562712031127237

`A023934(23*n)`
-/

namespace A023913.P13236562712031127237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023934 (23 * n)

end

end A023913.P13236562712031127237

/-!
# A023919: Theta series of A*_7 lattice. Expansion of F_8(q^2).

The programs for A023919, there is no canonical definition to state claims against.
-/

/-! ## A023919.P12219180844058344549

`and(A107505(n), A163812(A026003(n)))`
-/

namespace A023919.P12219180844058344549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107505 n) (A163812 (A026003 n).toNat)

end

end A023919.P12219180844058344549

/-! ## A023919.P1898831438713658403

`and(A037268(A027423(n)), A246609(n))`
-/

namespace A023919.P1898831438713658403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037268 (A027423 n).toNat) (A246609 n)

end

end A023919.P1898831438713658403

/-! ## A023919.P12182616006075368207

`and(A176480(n)², A000010(A137234(n)))`
-/

namespace A023919.P12182616006075368207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176480 n ^ 2) (A000010 (A137234 n).toNat)

end

end A023919.P12182616006075368207

/-! ## A023919.P11365821601951024677

`A107505(n)*A269248(A103204(n+1))`
-/

namespace A023919.P11365821601951024677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107505 n * A269248 (A103204 (n + 1)).toNat

end

end A023919.P11365821601951024677

/-!
# A023920: Theta series of A*_8 lattice.

The programs for A023920, there is no canonical definition to state claims against.
-/

/-! ## A023920.P8871645149023900300

`A072839(2*n)`
-/

namespace A023920.P8871645149023900300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (2 * n)

end

end A023920.P8871645149023900300

/-! ## A023920.P2812567884954133837

`A072839(A004277(n))+A000007(n)`
-/

namespace A023920.P2812567884954133837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (A004277 n).toNat + A000007 n

end

end A023920.P2812567884954133837

/-! ## A023920.P5117435635386031965

`gcd(A000038(n), A072839(A005843(n)))`
-/

namespace A023920.P5117435635386031965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A072839 (A005843 n).toNat)

end

end A023920.P5117435635386031965

/-! ## A023920.P12952489423419796949

`lcm(A020985(n), A072839(A005843(n)))`
-/

namespace A023920.P12952489423419796949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A072839 (A005843 n).toNat)

end

end A023920.P12952489423419796949

/-! ## A023920.P1323152991016110548

`or(A000007(n), A072839(A005843(n)))`
-/

namespace A023920.P1323152991016110548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A072839 (A005843 n).toNat)

end

end A023920.P1323152991016110548

/-! ## A023920.P11055966415435665869

`A072839(A004277(n))^A057428(n)²`
-/

namespace A023920.P11055966415435665869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072839 (A004277 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A023920.P11055966415435665869

/-! ## A023920.P16599210204292335324

`A072839(A004277(n))^A062157(n)²`
-/

namespace A023920.P16599210204292335324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072839 (A004277 n).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A023920.P16599210204292335324

/-! ## A023920.P1024316214101828392

`A072839(A005843(n))%A024450(n+1)`
-/

namespace A023920.P1024316214101828392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072839 (A005843 n).toNat) (A024450 (n + 1))

end

end A023920.P1024316214101828392

/-! ## A023920.P17051972040506875036

`A072839(A004277(n))+A000035(A000040(n+1)-1)`
-/

namespace A023920.P17051972040506875036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (A004277 n).toNat + A000035 (A000040 (n + 1) - 1).toNat

end

end A023920.P17051972040506875036

/-!
# A023921: Theta series of A*_9 lattice.

The programs for A023921, there is no canonical definition to state claims against.
-/

/-! ## A023921.P4064619773724306899

`A003056(and(A223357(n+1), A245910(2*n)))`
-/

namespace A023921.P4064619773724306899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.land (A223357 (n + 1)) (A245910 (2 * n))).toNat

end

end A023921.P4064619773724306899

/-!
# A023922: Theta series of A*_10 lattice.

The programs for A023922, there is no canonical definition to state claims against.
-/

/-! ## A023922.P7221721745180829681

`lcm(A030047(n), A325362(A027383(n)))`
-/

namespace A023922.P7221721745180829681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030047 n) (A325362 (A027383 n).toNat)

end

end A023922.P7221721745180829681

/-! ## A023922.P15841714763981206768

`A173856(n+1)*A325362(A027383(n))`
-/

namespace A023922.P15841714763981206768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173856 (n + 1) * A325362 (A027383 n).toNat

end

end A023922.P15841714763981206768

/-! ## A023922.P807139609845170759

`A173856(n+1)*A354348(A000110(n))`
-/

namespace A023922.P807139609845170759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173856 (n + 1) * A354348 (A000110 n).toNat

end

end A023922.P807139609845170759

/-! ## A023922.P11543971939399251004

`A325362(A027383(n))*A354819(n+1)`
-/

namespace A023922.P11543971939399251004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (A027383 n).toNat * A354819 (n + 1)

end

end A023922.P11543971939399251004

/-! ## A023922.P2001134784019657623

`A354348(A000110(n))*A354819(n+1)`
-/

namespace A023922.P2001134784019657623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354348 (A000110 n).toNat * A354819 (n + 1)

end

end A023922.P2001134784019657623

/-!
# A023926: Theta series of A*_14 lattice.

The programs for A023926, there is no canonical definition to state claims against.
-/

/-! ## A023926.P6644223095818692501

`A351234((n+1)*A340637(n+1))`
-/

namespace A023926.P6644223095818692501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351234 ((n + 1 : ℤ) * A340637 (n + 1)).toNat

end

end A023926.P6644223095818692501

/-!
# A023927: Theta series of A*_15 lattice.

The programs for A023927, there is no canonical definition to state claims against.
-/

/-! ## A023927.P2764160911299350805

`A345676(a(n-1)+n)` with `a(0)=1`
-/

namespace A023927.P2764160911299350805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345676 (a (n - 1) + (n : ℤ)).toNat

end

end A023927.P2764160911299350805

/-! ## A023927.P12042389673402313561

`A035219(∑[72*n+16])^5`
-/

namespace A023927.P12042389673402313561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A023927.P12042389673402313561

/-! ## A023927.P9595985424865649839

`C(record[A300302(n+1)], Δ[n²])`
-/

namespace A023927.P9595985424865649839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300302 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A023927.P9595985424865649839

/-! ## A023927.P10562094590769227851

`and(2^floor(n/3), A000203(∑[2^n]))`
-/

namespace A023927.P10562094590769227851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))) (A000203 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A023927.P10562094590769227851

/-! ## A023927.P6684434414787084605

`and(2*(n+1), A338404(a(n-1)+3))` with `a(0)=1`
-/

namespace A023927.P6684434414787084605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (2 * (n + 1) : ℤ) (A338404 (a (n - 1) + 3).toNat)

end

end A023927.P6684434414787084605

/-!
# A023928: Theta series of A*_16 lattice.

The programs for A023928, there is no canonical definition to state claims against.
-/

/-! ## A023928.P18057446154378059363

`A242086(lcm(14, n))`
-/

namespace A023928.P18057446154378059363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242086 (Nat.lcm 14 n)

end

end A023928.P18057446154378059363

/-! ## A023928.P13171771699838910852

`A000045(C(C(n+1, 8), n))`
-/

namespace A023928.P13171771699838910852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (Nat.choose (n + 1) 8) n)

end

end A023928.P13171771699838910852

/-! ## A023928.P10277728130107600750

`A000045(C(∑[floor(n/6)]², n))`
-/

namespace A023928.P10277728130107600750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat n)

end

end A023928.P10277728130107600750

/-! ## A023928.P13499034835636910250

`A385815(∑[2^ceil(log2(n+1))+1])`
-/

namespace A023928.P13499034835636910250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385815 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A023928.P13499034835636910250

/-! ## A023928.P17823791049506993736

`A012265(A008436(n))`
-/

namespace A023928.P17823791049506993736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A008436 n).toNat

end

end A023928.P17823791049506993736

/-!
# A023929: Theta series of A*_17 lattice.

The programs for A023929, there is no canonical definition to state claims against.
-/

/-! ## A023929.P14732359075341286115

`C(A343953(ceil((n+1)²/12)), or(2*n, n%4))`
-/

namespace A023929.P14732359075341286115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A343953 ⌈((n + 1) ^ 2 : ℚ) / 12⌉.toNat).toNat (Nat.lor (2 * n) (n % 4))

end

end A023929.P14732359075341286115

/-! ## A023929.P11385323349360413149

`C(∏{p}[n+1, #^val(n+1, #²)]², A193958(2*n+1))`
-/

namespace A023929.P11385323349360413149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) (A193958 (2 * n + 1)).toNat

end

end A023929.P11385323349360413149

/-! ## A023929.P5937758603196861171

`C(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]), A321901(2*n+1))`
-/

namespace A023929.P5937758603196861171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2))) (A321901 (2 * n + 1)).toNat

end

end A023929.P5937758603196861171

/-! ## A023929.P14264071796068698360

`A130207(A387396(n))`
-/

namespace A023929.P14264071796068698360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130207 (A387396 n).toNat

end

end A023929.P14264071796068698360

/-! ## A023929.P16570477127129633273

`A128064(A268345(n)+n)`
-/

namespace A023929.P16570477127129633273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128064 (A268345 n + (n : ℤ)).toNat

end

end A023929.P16570477127129633273

/-!
# A023930: Theta series of A*_18 lattice.

The programs for A023930, there is no canonical definition to state claims against.
-/

/-! ## A023930.P16703329736912085929

`∑{d}[C(∑[n-1]+2, 4*n), #]`
-/

namespace A023930.P16703329736912085929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A023930.P16703329736912085929

/-! ## A023930.P10926076285864605965

`A018843(floor(π*n))`
-/

namespace A023930.P10926076285864605965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 ⌊Real.pi * (n : ℝ)⌋.toNat

end

end A023930.P10926076285864605965

/-! ## A023930.P3941598187505994891

`floor(Δ[sqrt(A282782(n+1))])`
-/

namespace A023930.P3941598187505994891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A282782 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A023930.P3941598187505994891

/-! ## A023930.P12872993611932681092

`A387029(xor(2^val(n, 3), a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A023930.P12872993611932681092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A387029 (Int.xor (2 ^ SequenceMachineLib.valuation n 3 : ℤ) (a (n - 1))).toNat

end

end A023930.P12872993611932681092

/-!
# A023931: Theta series of A*_19 lattice.

The programs for A023931, there is no canonical definition to state claims against.
-/

/-! ## A023931.P9037719782853393630

`(n+1)*A173677(n*(8*n+2))`
-/

namespace A023931.P9037719782853393630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A173677 (n * (8 * n + 2))

end

end A023931.P9037719782853393630

/-! ## A023931.P13144028464376236395

`and(A028577(n), A370073(n+1))`
-/

namespace A023931.P13144028464376236395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028577 n) (A370073 (n + 1))

end

end A023931.P13144028464376236395

/-! ## A023931.P5601307551928926359

`∏{p}[A270831(n+1), A284825(#)]`
-/

namespace A023931.P5601307551928926359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A284825 (p + 31)

end

end A023931.P5601307551928926359

/-! ## A023931.P6081590109894554655

`∏{e}[A276945(n+1), A059948(#)]`
-/

namespace A023931.P6081590109894554655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A059948 (Nat.factorization (f1 n).natAbs p)

end

end A023931.P6081590109894554655

/-! ## A023931.P14959622546135736451

`and(A284980(n+1), A370073(n+1))`
-/

namespace A023931.P14959622546135736451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284980 (n + 1)) (A370073 (n + 1))

end

end A023931.P14959622546135736451

/-!
# A023932: Theta series of A*_20 lattice.

The programs for A023932, there is no canonical definition to state claims against.
-/

/-! ## A023932.P1116137009131022375

`A010109(n)*A174165(A018819(n))`
-/

namespace A023932.P1116137009131022375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 n * A174165 (A018819 n).toNat

end

end A023932.P1116137009131022375

/-! ## A023932.P825210331962579170

`(42*C(n, 10))^(a(n-1)+1)` with `a(0)=1`
-/

namespace A023932.P825210331962579170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (42 * Nat.choose n 10) ^ (a (n - 1) + 1)

end

end A023932.P825210331962579170

/-! ## A023932.P9643377048932521975

`(42*C(n, 10))^(4-3*(1-a(n-1)))` with `a(0)=1`
-/

namespace A023932.P9643377048932521975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (42 * Nat.choose n 10 : ℝ) ^ (4 - 3 * (1 - a (n - 1)))

end

end A023932.P9643377048932521975

/-! ## A023932.P8599178855343217

`C(42*C(n, 10), 4-3*(1-a(n-1)))` with `a(0)=1`
-/

namespace A023932.P8599178855343217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (42 * Nat.choose n 10) (4 - 3 * (1 - (a (n - 1) : ℤ))).toNat

end

end A023932.P8599178855343217

/-! ## A023932.P3350025006295644819

`∏{e}[∑{d}[n+1, #]²*n^3, #*floor(n/10)]`
-/

namespace A023932.P3350025006295644819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) ^ 2 * n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * ⌊(n : ℚ) / 10⌋

end

end A023932.P3350025006295644819

/-!
# A023933: Theta series of A*_21 lattice.

The programs for A023933, there is no canonical definition to state claims against.
-/

/-! ## A023933.P17796394229154490851

`C(gcd(A000045(n+1)+n, (n+1)²), 2*n+1)`
-/

namespace A023933.P17796394229154490851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (A000045 (n + 1) + (n : ℤ)) ((n + 1) ^ 2 : ℤ)) (2 * n + 1)

end

end A023933.P17796394229154490851

/-! ## A023933.P15973003389059314888

`and(-3, A037213(A025212(n+2)))`
-/

namespace A023933.P15973003389059314888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A037213 (A025212 (n + 2)).toNat)

end

end A023933.P15973003389059314888

/-! ## A023933.P14123886768804274498

`A037213(A032516((n+1)²)-n)`
-/

namespace A023933.P14123886768804274498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A032516 ((n + 1) ^ 2) - (n : ℤ)).toNat

end

end A023933.P14123886768804274498

/-! ## A023933.P3101290854096142462

`A275108(n+1)*A341001(n)`
-/

namespace A023933.P3101290854096142462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275108 (n + 1) * A341001 (n + 385)

end

end A023933.P3101290854096142462

/-! ## A023933.P11938763847244030335

`A323652(n+1)%A140957(n)`
-/

namespace A023933.P11938763847244030335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323652 (n + 1)) (A140957 n)

end

end A023933.P11938763847244030335

/-!
# A023934: Theta series of A*_22 lattice.

The programs for A023934, there is no canonical definition to state claims against.
-/

/-! ## A023934.P5687805195239378514

`C(∏[1-(∑{digits}[n, #]-n)], 9*n)%∑[10-n]`
-/

namespace A023934.P5687805195239378514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j).toNat (9 * n) : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A023934.P5687805195239378514

/-! ## A023934.P9805119058687819043

`char[11*n]*A300131(n+1)`
-/

namespace A023934.P9805119058687819043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A300131 (n + 1)

end

end A023934.P9805119058687819043

/-! ## A023934.P10765299687866334926

`A264975((∑{digits}[n, #]²-∑{digits}[n, #²])^∑{digits}[n², #])`
-/

namespace A023934.P10765299687866334926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 ((((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ)) ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum).toNat

end

end A023934.P10765299687866334926

/-! ## A023934.P3023292549951766765

`A003984(A028384(n))`
-/

namespace A023934.P3023292549951766765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A028384 n).toNat

end

end A023934.P3023292549951766765

/-! ## A023934.P8247035750232502934

`A134028(A151770(n))`
-/

namespace A023934.P8247035750232502934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A151770 n).toNat

end

end A023934.P8247035750232502934

/-!
# A023935: Theta series of A*_23 lattice.

The programs for A023935, there is no canonical definition to state claims against.
-/

/-! ## A023935.P5783178784825601524

`A300717(A102697(n+1))`
-/

namespace A023935.P5783178784825601524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A102697 (n + 1)).toNat

end

end A023935.P5783178784825601524

/-! ## A023935.P5604767078055551307

`and(A029719(n), A040608(n))`
-/

namespace A023935.P5604767078055551307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029719 n) (A040608 n)

end

end A023935.P5604767078055551307

/-! ## A023935.P13154985152178033840

`and(A029719(n), A222639(n))`
-/

namespace A023935.P13154985152178033840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029719 n) (A222639 n)

end

end A023935.P13154985152178033840

/-! ## A023935.P3638595905716057191

`A199915(gcd(n, A038004(n+1)))`
-/

namespace A023935.P3638595905716057191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199915 (Int.gcd (n : ℤ) (A038004 (n + 1)))

end

end A023935.P3638595905716057191

/-! ## A023935.P1895636928022065984

`C(A025558(A087062(n+2)), A000069(n+1))`
-/

namespace A023935.P1895636928022065984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025558 (A087062 (n + 2)).toNat).toNat (A000069 (n + 1)).toNat

end

end A023935.P1895636928022065984

/-!
# A023936: Theta series of A*_24 lattice.

The programs for A023936, there is no canonical definition to state claims against.
-/

/-! ## A023936.P9334035572721661392

`∑[char[∑[n]]]²*A325194(7*n)`
-/

namespace A023936.P9334035572721661392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A325194 (7 * n)

end

end A023936.P9334035572721661392

/-! ## A023936.P9475035838634184246

`A152515(a(n-1)+val(n, 12)+1)` with `a(0)=1, a(1)=0`
-/

namespace A023936.P9475035838634184246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A152515 (a (n - 1) + (SequenceMachineLib.valuation n 12 : ℤ) + 1).toNat

end

end A023936.P9475035838634184246

/-! ## A023936.P18240514500876043030

`A299905((1-(a(n-1)-floor(n/3)))²)` with `a(0)=1`
-/

namespace A023936.P18240514500876043030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299905 ((1 - (a (n - 1) - ⌊(n : ℚ) / 3⌋)) ^ 2).toNat

end

end A023936.P18240514500876043030

/-! ## A023936.P7084182322682415594

`A299905(ceil((n+1)/3-a(n-1))²)` with `a(0)=1`
-/

namespace A023936.P7084182322682415594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299905 (⌈(n + 1 : ℚ) / 3 - (a (n - 1) : ℚ)⌉ ^ 2).toNat

end

end A023936.P7084182322682415594

/-! ## A023936.P15134031566697540324

`A289161((a(n-1)+ceil(xor(1, n)/6))!)` with `a(0)=1`
-/

namespace A023936.P15134031566697540324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289161 (Nat.factorial (a (n - 1) + ⌈(Nat.xor 1 n : ℚ) / 6⌉).toNat)

end

end A023936.P15134031566697540324

/-!
# A023945: Theta series of laminated lattice LAMBDA_23.

The programs for A023945, there is no canonical definition to state claims against.
-/

/-! ## A023945.P3058442306810894156

`A004537(2*n)`
-/

namespace A023945.P3058442306810894156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004537 (2 * n)

end

end A023945.P3058442306810894156

/-! ## A023945.P13000827781438294602

`lcm((-1)^n, A004537(A005843(n)))`
-/

namespace A023945.P13000827781438294602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A004537 (A005843 n).toNat)

end

end A023945.P13000827781438294602

/-! ## A023945.P17446747453650056565

`A004537(A004277(n))+A000007(n)`
-/

namespace A023945.P17446747453650056565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004537 (A004277 n).toNat + A000007 n

end

end A023945.P17446747453650056565

/-! ## A023945.P1482968246500278572

`A004537(A004277(n))^A057428(n)²`
-/

namespace A023945.P1482968246500278572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004537 (A004277 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A023945.P1482968246500278572

/-! ## A023945.P2680383616426110930

`A004537(A005843(n))+A000007(n+1)`
-/

namespace A023945.P2680383616426110930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004537 (A005843 n).toNat + A000007 (n + 1)

end

end A023945.P2680383616426110930

/-! ## A023945.P11714452290815626587

`A004537(A004277(n))-(n-A028310(n))`
-/

namespace A023945.P11714452290815626587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004537 (A004277 n).toNat - ((n : ℤ) - A028310 n)

end

end A023945.P11714452290815626587

/-! ## A023945.P6065082714057944305

`A004537(A004277(n))+A000035(A001316(n))`
-/

namespace A023945.P6065082714057944305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004537 (A004277 n).toNat + A000035 (A001316 n).toNat

end

end A023945.P6065082714057944305

/-! ## A023945.P10519956403061812456

`A004537(A004277(n))+A000035(A008574(n))`
-/

namespace A023945.P10519956403061812456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004537 (A004277 n).toNat + A000035 (A008574 n).toNat

end

end A023945.P10519956403061812456

/-! ## A023945.P9386447909648214640

`A010054(A000124(n))+A004537(A004277(n))`
-/

namespace A023945.P9386447909648214640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000124 n).toNat + A004537 (A004277 n).toNat

end

end A023945.P9386447909648214640

/-! ## A023945.P10819221662350331560

`A004537(A005843(n))/A001222(A161554(n+1))`
-/

namespace A023945.P10819221662350331560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004537 (A005843 n).toNat : ℚ) / (A001222 (A161554 (n + 1)).toNat : ℚ)

end

end A023945.P10819221662350331560

/-!
# A023946: Expansion of g.f. 1/((1-x)*(1-5*x)*(1-10*x)*(1-11*x)).

The programs for A023946, the canonical program `A023946.P16323304720977640166` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023946 has offset 0).

The definition of A023946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023946.P16323304720977640166

`(6*11^(n+3)-8*10^(n+3)+3*5^(n+3)-1)/360`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023946

/-- `(6*11^(n+3)-8*10^(n+3)+3*5^(n+3)-1)/360` -/
def P16323304720977640166.Spec : Prop :=
  ∀ n, P16323304720977640166.a n = (A023946 n : ℚ)

end A023946

/-! ## A023946.P8363328025613181655

`∑[A020567(n)]`
-/

namespace A023946.P8363328025613181655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023946.P8363328025613181655

namespace A023946

/-- `∑[A020567(n)]` -/
def P8363328025613181655.Spec : Prop :=
  ∀ n, P8363328025613181655.a n = A023946 n

end A023946

/-! ## A023946.P11408736611400087998

`2*A016265(n)-A016238(n)`
-/

namespace A023946.P11408736611400087998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016265 n - A016238 n

end

end A023946.P11408736611400087998

namespace A023946

/-- `2*A016265(n)-A016238(n)` -/
def P11408736611400087998.Spec : Prop :=
  ∀ n, P11408736611400087998.a n = A023946 n

end A023946

/-! ## A023946.P979699141909648851

`A020567(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A023946.P979699141909648851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020567 n + a (A023443 n).toNat

end

end A023946.P979699141909648851

namespace A023946

/-- `A020567(n)+a(A023443(n))` -/
def P979699141909648851.Spec : Prop :=
  ∀ n, P979699141909648851.a n = A023946 n

end A023946

/-! ## A023946.P3005223912994562251

`∑[2*A020499(n)-A020494(n)]`
-/

namespace A023946.P3005223912994562251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020499 n - A020494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023946.P3005223912994562251

namespace A023946

/-- `∑[2*A020499(n)-A020494(n)]` -/
def P3005223912994562251.Spec : Prop :=
  ∀ n, P3005223912994562251.a n = A023946 n

end A023946

/-! ## A023946.P6303352329189035416

`A016238(n+1)-A016237(n+1)`
-/

namespace A023946.P6303352329189035416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 (n + 1) - A016237 (n + 1)

end

end A023946.P6303352329189035416

namespace A023946

/-- `A016238(n+1)-A016237(n+1)` -/
def P6303352329189035416.Spec : Prop :=
  ∀ n, P6303352329189035416.a n = A023946 n

end A023946

/-! ## A023946.P12753239000034553736

`2*A023947(n)-A023948(n)`
-/

namespace A023946.P12753239000034553736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023947 n - A023948 n

end

end A023946.P12753239000034553736

namespace A023946

/-- `2*A023947(n)-A023948(n)` -/
def P12753239000034553736.Spec : Prop :=
  ∀ n, P12753239000034553736.a n = A023946 n

end A023946

/-!
# A023947: Expansion of g.f. 1/((1-x)*(1-5*x)*(1-10*x)*(1-12*x)).

The programs for A023947, there is no canonical definition to state claims against.
-/

/-! ## A023947.P964625865110699043

`∑[A020568(n)]`
-/

namespace A023947.P964625865110699043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023947.P964625865110699043

/-! ## A023947.P16945451259162558498

`∑[A016196(n)]+5*a(n-1)` with `a(0)=1`
-/

namespace A023947.P16945451259162558498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016196 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A023947.P16945451259162558498

/-! ## A023947.P17231425967665493788

`(A023948(n)+A023946(n))/2`
-/

namespace A023947.P17231425967665493788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023948 n + A023946 n : ℚ) / 2

end

end A023947.P17231425967665493788

/-! ## A023947.P6082245091470108754

`∑[(A020569(n)+A020567(n))/2]`
-/

namespace A023947.P6082245091470108754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020569 n + A020567 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023947.P6082245091470108754

/-! ## A023947.P16901050128450592301

`A021484(n)+A021724(n)-A021464(n)`
-/

namespace A023947.P16901050128450592301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021484 n + (A021724 n - A021464 n)

end

end A023947.P16901050128450592301

/-!
# A023948: Expansion of 1/((1-x)(1-5x)(1-11x)(1-12x)).

The programs for A023948, there is no canonical definition to state claims against.
-/

/-! ## A023948.P13533303864401334337

`∑[A020569(n)]`
-/

namespace A023948.P13533303864401334337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023948.P13533303864401334337

/-! ## A023948.P5139485070409064826

`2*A023947(n)-A023946(n)`
-/

namespace A023948.P5139485070409064826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023947 n - A023946 n

end

end A023948.P5139485070409064826

/-! ## A023948.P13520550312067717485

`(A028073(n)+A021734(n))/2`
-/

namespace A023948.P13520550312067717485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028073 n + A021734 n : ℚ) / 2

end

end A023948.P13520550312067717485

/-! ## A023948.P17196858248881329717

`A016239(n+1)-A016238(n+1)`
-/

namespace A023948.P17196858248881329717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 (n + 1) - A016238 (n + 1)

end

end A023948.P17196858248881329717

/-! ## A023948.P13868042666226328354

`A020569(n)+A000007(n)+a(n-1)` with `a(0)=1`
-/

namespace A023948.P13868042666226328354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020569 n + (A000007 n + a (n - 1))

end

end A023948.P13868042666226328354

/-! ## A023948.P6841675726826257732

`A021794(n)+A022000(n)-A021784(n)`
-/

namespace A023948.P6841675726826257732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021794 n + (A022000 n - A021784 n)

end

end A023948.P6841675726826257732

/-! ## A023948.P14321854030594131993

`A021154(n)+A026308(n)-A021164(n)`
-/

namespace A023948.P14321854030594131993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021154 n + (A026308 n - A021164 n)

end

end A023948.P14321854030594131993

/-!
# A023949: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-8*x)).

The programs for A023949, the canonical program `A023949.P9445738726956557329` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023949 has offset 0).

The definition of A023949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023949.P9445738726956557329

`(30*8^(n+3)-10*7^(n+4)+7*6^(n+4)-2)/420`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023949

/-- `(30*8^(n+3)-10*7^(n+4)+7*6^(n+4)-2)/420` -/
def P9445738726956557329.Spec : Prop :=
  ∀ n, P9445738726956557329.a n = (A023949 n : ℚ)

end A023949

/-! ## A023949.P919280988802444941

`∑[A020570(n)]`
-/

namespace A023949.P919280988802444941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023949.P919280988802444941

namespace A023949

/-- `∑[A020570(n)]` -/
def P919280988802444941.Spec : Prop :=
  ∀ n, P919280988802444941.a n = A023949 n

end A023949

/-! ## A023949.P4547246420039885958

`2*A021854(n)-A021804(n)`
-/

namespace A023949.P4547246420039885958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021854 n - A021804 n

end

end A023949.P4547246420039885958

namespace A023949

/-- `2*A021854(n)-A021804(n)` -/
def P4547246420039885958.Spec : Prop :=
  ∀ n, P4547246420039885958.a n = A023949 n

end A023949

/-! ## A023949.P2368301630704994356

`A016243(n+1)-A016241(n+1)`
-/

namespace A023949.P2368301630704994356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016243 (n + 1) - A016241 (n + 1)

end

end A023949.P2368301630704994356

namespace A023949

/-- `A016243(n+1)-A016241(n+1)` -/
def P2368301630704994356.Spec : Prop :=
  ∀ n, P2368301630704994356.a n = A023949 n

end A023949

/-! ## A023949.P11467255270848968348

`∑[A081189(n+2)-A000420(n+2)]`
-/

namespace A023949.P11467255270848968348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081189 (n + 2) - A000420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023949.P11467255270848968348

namespace A023949

/-- `∑[A081189(n+2)-A000420(n+2)]` -/
def P11467255270848968348.Spec : Prop :=
  ∀ n, P11467255270848968348.a n = A023949 n

end A023949

/-! ## A023949.P14762430031181630166

`A016249(n+1)-A016243(n+1)`
-/

namespace A023949.P14762430031181630166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016249 (n + 1) - A016243 (n + 1)

end

end A023949.P14762430031181630166

namespace A023949

/-- `A016249(n+1)-A016243(n+1)` -/
def P14762430031181630166.Spec : Prop :=
  ∀ n, P14762430031181630166.a n = A023949 n

end A023949

/-! ## A023949.P7152074666851065785

`A021174(n)+A026324(n)-A021184(n)`
-/

namespace A023949.P7152074666851065785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021174 n + (A026324 n - A021184 n)

end

end A023949.P7152074666851065785

namespace A023949

/-- `A021174(n)+A026324(n)-A021184(n)` -/
def P7152074666851065785.Spec : Prop :=
  ∀ n, P7152074666851065785.a n = A023949 n

end A023949

/-! ## A023949.P17695366123445708622

`A021184(n)+A026324(n)-A021224(n)`
-/

namespace A023949.P17695366123445708622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021184 n + (A026324 n - A021224 n)

end

end A023949.P17695366123445708622

namespace A023949

/-- `A021184(n)+A026324(n)-A021224(n)` -/
def P17695366123445708622.Spec : Prop :=
  ∀ n, P17695366123445708622.a n = A023949 n

end A023949

/-! ## A023949.P3750896482581588278

`2*A023950(n)-A023954(n)`
-/

namespace A023949.P3750896482581588278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023950 n - A023954 n

end

end A023949.P3750896482581588278

namespace A023949

/-- `2*A023950(n)-A023954(n)` -/
def P3750896482581588278.Spec : Prop :=
  ∀ n, P3750896482581588278.a n = A023949 n

end A023949

/-!
# A023950: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-9*x)).

The programs for A023950, the canonical program `A023950.P8212537277220015283` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023950 has offset 0).

The definition of A023950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023950.P8212537277220015283

`(5*9^(n+3)-20*7^(n+3)+16*6^(n+3)-1)/240`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023950

/-- `(5*9^(n+3)-20*7^(n+3)+16*6^(n+3)-1)/240` -/
def P8212537277220015283.Spec : Prop :=
  ∀ n, P8212537277220015283.a n = (A023950 n : ℚ)

end A023950

/-! ## A023950.P16179445198968031419

`∑[A020571(n)]`
-/

namespace A023950.P16179445198968031419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023950.P16179445198968031419

namespace A023950

/-- `∑[A020571(n)]` -/
def P16179445198968031419.Spec : Prop :=
  ∀ n, P16179445198968031419.a n = A023950 n

end A023950

/-! ## A023950.P16987920001475085660

`2*A021594(n)-A021494(n)`
-/

namespace A023950.P16987920001475085660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021594 n - A021494 n

end

end A023950.P16987920001475085660

namespace A023950

/-- `2*A021594(n)-A021494(n)` -/
def P16987920001475085660.Spec : Prop :=
  ∀ n, P16987920001475085660.a n = A023950 n

end A023950

/-! ## A023950.P2239270996196545090

`∑[(A020579(n)+A020570(n))/2]`
-/

namespace A023950.P2239270996196545090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020579 n + A020570 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023950.P2239270996196545090

namespace A023950

/-- `∑[(A020579(n)+A020570(n))/2]` -/
def P2239270996196545090.Spec : Prop :=
  ∀ n, P2239270996196545090.a n = (A023950 n : ℚ)

end A023950

/-! ## A023950.P6273153169898948959

`A016250(n+1)-A016244(n+1)`
-/

namespace A023950.P6273153169898948959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016250 (n + 1) - A016244 (n + 1)

end

end A023950.P6273153169898948959

namespace A023950

/-- `A016250(n+1)-A016244(n+1)` -/
def P6273153169898948959.Spec : Prop :=
  ∀ n, P6273153169898948959.a n = A023950 n

end A023950

/-! ## A023950.P16743165554852346671

`A021544(n)+A021634(n)-A021494(n)`
-/

namespace A023950.P16743165554852346671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n + (A021634 n - A021494 n)

end

end A023950.P16743165554852346671

namespace A023950

/-- `A021544(n)+A021634(n)-A021494(n)` -/
def P16743165554852346671.Spec : Prop :=
  ∀ n, P16743165554852346671.a n = A023950 n

end A023950

/-!
# A023951: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-10*x)).

The programs for A023951, the canonical program `A023951.P8914464575206347545` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023951 has offset 0).

The definition of A023951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023951.P8914464575206347545

`(5*10^(n+3)-30*7^(n+3)+27*6^(n+3)-2)/540`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023951

/-- `(5*10^(n+3)-30*7^(n+3)+27*6^(n+3)-2)/540` -/
def P8914464575206347545.Spec : Prop :=
  ∀ n, P8914464575206347545.a n = (A023951 n : ℚ)

end A023951

/-! ## A023951.P5132719377822390026

`∑[A020572(n)]`
-/

namespace A023951.P5132719377822390026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023951.P5132719377822390026

namespace A023951

/-- `∑[A020572(n)]` -/
def P5132719377822390026.Spec : Prop :=
  ∀ n, P5132719377822390026.a n = A023951 n

end A023951

/-! ## A023951.P4577381594036383754

`A016241(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A023951.P4577381594036383754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016241 n + 10 * a (n - 1)

end

end A023951.P4577381594036383754

namespace A023951

/-- `A016241(n)+10*a(n-1)` -/
def P4577381594036383754.Spec : Prop :=
  ∀ n, P4577381594036383754.a n = A023951 n

end A023951

/-! ## A023951.P14473307283296605056

`2*A021234(n)-A021174(n)`
-/

namespace A023951.P14473307283296605056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021234 n - A021174 n

end

end A023951.P14473307283296605056

namespace A023951

/-- `2*A021234(n)-A021174(n)` -/
def P14473307283296605056.Spec : Prop :=
  ∀ n, P14473307283296605056.a n = A023951 n

end A023951

/-! ## A023951.P1343777945139776382

`2*A021829(n)-A021804(n)`
-/

namespace A023951.P1343777945139776382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021829 n - A021804 n

end

end A023951.P1343777945139776382

namespace A023951

/-- `2*A021829(n)-A021804(n)` -/
def P1343777945139776382.Spec : Prop :=
  ∀ n, P1343777945139776382.a n = A023951 n

end A023951

/-! ## A023951.P4131544696554676547

`A016252(n+1)-A016246(n+1)`
-/

namespace A023951.P4131544696554676547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016252 (n + 1) - A016246 (n + 1)

end

end A023951.P4131544696554676547

namespace A023951

/-- `A016252(n+1)-A016246(n+1)` -/
def P4131544696554676547.Spec : Prop :=
  ∀ n, P4131544696554676547.a n = A023951 n

end A023951

/-! ## A023951.P3922093050663376187

`A021202(n)+A026391(n)-A021234(n)`
-/

namespace A023951.P3922093050663376187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021202 n + (A026391 n - A021234 n)

end

end A023951.P3922093050663376187

namespace A023951

/-- `A021202(n)+A026391(n)-A021234(n)` -/
def P3922093050663376187.Spec : Prop :=
  ∀ n, P3922093050663376187.a n = A023951 n

end A023951

/-!
# A023952: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-11*x)).

The programs for A023952, the canonical program `A023952.P16022783491513010235` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023952 has offset 0).

The definition of A023952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023952.P16022783491513010235

`(3*11^(n+3)-25*7^(n+3)+24*6^(n+3)-2)/600`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023952

/-- `(3*11^(n+3)-25*7^(n+3)+24*6^(n+3)-2)/600` -/
def P16022783491513010235.Spec : Prop :=
  ∀ n, P16022783491513010235.a n = (A023952 n : ℚ)

end A023952

/-! ## A023952.P14405051016928345873

`∑[A020573(n)]`
-/

namespace A023952.P14405051016928345873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023952.P14405051016928345873

namespace A023952

/-- `∑[A020573(n)]` -/
def P14405051016928345873.Spec : Prop :=
  ∀ n, P14405051016928345873.a n = A023952 n

end A023952

/-! ## A023952.P11018442621196726069

`2*A021524(n)-A021494(n)`
-/

namespace A023952.P11018442621196726069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021524 n - A021494 n

end

end A023952.P11018442621196726069

namespace A023952

/-- `2*A021524(n)-A021494(n)` -/
def P11018442621196726069.Spec : Prop :=
  ∀ n, P11018442621196726069.a n = A023952 n

end A023952

/-! ## A023952.P13960522019803288612

`A020573(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A023952.P13960522019803288612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020573 n + a (A023443 n).toNat

end

end A023952.P13960522019803288612

namespace A023952

/-- `A020573(n)+a(A023443(n))` -/
def P13960522019803288612.Spec : Prop :=
  ∀ n, P13960522019803288612.a n = A023952 n

end A023952

/-! ## A023952.P11783120382286055024

`A021204(n)+A021244(n)-A021174(n)`
-/

namespace A023952.P11783120382286055024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021204 n + (A021244 n - A021174 n)

end

end A023952.P11783120382286055024

namespace A023952

/-- `A021204(n)+A021244(n)-A021174(n)` -/
def P11783120382286055024.Spec : Prop :=
  ∀ n, P11783120382286055024.a n = A023952 n

end A023952

/-! ## A023952.P11166166493158940661

`A023956(n)+A023956(n)-A024439(n)`
-/

namespace A023952.P11166166493158940661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023956 n + (A023956 n - A024439 n)

end

end A023952.P11166166493158940661

namespace A023952

/-- `A023956(n)+A023956(n)-A024439(n)` -/
def P11166166493158940661.Spec : Prop :=
  ∀ n, P11166166493158940661.a n = A023952 n

end A023952

/-! ## A023952.P13937778179400712743

`2*A023956(n)-A024439(n)`
-/

namespace A023952.P13937778179400712743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023956 n - A024439 n

end

end A023952.P13937778179400712743

namespace A023952

/-- `2*A023956(n)-A024439(n)` -/
def P13937778179400712743.Spec : Prop :=
  ∀ n, P13937778179400712743.a n = A023952 n

end A023952

/-! ## A023952.P596786434934122523

`A016254(n+1)-A016247(n+1)`
-/

namespace A023952.P596786434934122523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016254 (n + 1) - A016247 (n + 1)

end

end A023952.P596786434934122523

namespace A023952

/-- `A016254(n+1)-A016247(n+1)` -/
def P596786434934122523.Spec : Prop :=
  ∀ n, P596786434934122523.a n = A023952 n

end A023952

/-!
# A023953: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-12*x)).

The programs for A023953, the canonical program `A023953.P1971083279702146500` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023953 has offset 0).

The definition of A023953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023953.P1971083279702146500

`(12^(n+3)-11*7^(n+3)+11*6^(n+3)-1)/330`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023953

/-- `(12^(n+3)-11*7^(n+3)+11*6^(n+3)-1)/330` -/
def P1971083279702146500.Spec : Prop :=
  ∀ n, P1971083279702146500.a n = (A023953 n : ℚ)

end A023953

/-! ## A023953.P668278265879769512

`∑[A020577(n)]`
-/

namespace A023953.P668278265879769512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023953.P668278265879769512

namespace A023953

/-- `∑[A020577(n)]` -/
def P668278265879769512.Spec : Prop :=
  ∀ n, P668278265879769512.a n = A023953 n

end A023953

/-! ## A023953.P12210329368578992727

`2*A016255(n)-A016241(n)`
-/

namespace A023953.P12210329368578992727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016255 n - A016241 n

end

end A023953.P12210329368578992727

namespace A023953

/-- `2*A016255(n)-A016241(n)` -/
def P12210329368578992727.Spec : Prop :=
  ∀ n, P12210329368578992727.a n = A023953 n

end A023953

/-! ## A023953.P17226167252302054744

`2*A021214(n)-A021174(n)`
-/

namespace A023953.P17226167252302054744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021214 n - A021174 n

end

end A023953.P17226167252302054744

namespace A023953

/-- `2*A021214(n)-A021174(n)` -/
def P17226167252302054744.Spec : Prop :=
  ∀ n, P17226167252302054744.a n = A023953 n

end A023953

/-! ## A023953.P13323328935692614521

`2*A022456(n)-A022448(n)`
-/

namespace A023953.P13323328935692614521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022456 n - A022448 n

end

end A023953.P13323328935692614521

namespace A023953

/-- `2*A022456(n)-A022448(n)` -/
def P13323328935692614521.Spec : Prop :=
  ∀ n, P13323328935692614521.a n = A023953 n

end A023953

/-! ## A023953.P17918897056913844961

`2*A026543(n)-∑[A026543(n)]`
-/

namespace A023953.P17918897056913844961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026543 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023953.P17918897056913844961

namespace A023953

/-- `2*A026543(n)-∑[A026543(n)]` -/
def P17918897056913844961.Spec : Prop :=
  ∀ n, P17918897056913844961.a n = A023953 n

end A023953

/-! ## A023953.P12749018016522555215

`A016255(n+1)-A016248(n+1)`
-/

namespace A023953.P12749018016522555215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016255 (n + 1) - A016248 (n + 1)

end

end A023953.P12749018016522555215

namespace A023953

/-- `A016255(n+1)-A016248(n+1)` -/
def P12749018016522555215.Spec : Prop :=
  ∀ n, P12749018016522555215.a n = A023953 n

end A023953

/-! ## A023953.P8020763858447198448

`2*A016309(n)-(A016304(n)-a(n-1))` with `a(0)=1`
-/

namespace A023953.P8020763858447198448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A016309 n - (A016304 n - a (n - 1))

end

end A023953.P8020763858447198448

namespace A023953

/-- `2*A016309(n)-(A016304(n)-a(n-1))` -/
def P8020763858447198448.Spec : Prop :=
  ∀ n, P8020763858447198448.a n = A023953 n

end A023953

/-! ## A023953.P14615759241417358653

`A021194(n)+A021304(n)-A021174(n)`
-/

namespace A023953.P14615759241417358653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021194 n + (A021304 n - A021174 n)

end

end A023953.P14615759241417358653

namespace A023953

/-- `A021194(n)+A021304(n)-A021174(n)` -/
def P14615759241417358653.Spec : Prop :=
  ∀ n, P14615759241417358653.a n = A023953 n

end A023953

/-!
# A023954: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-8*x)*(1-9*x)).

The programs for A023954, the canonical program `A023954.P7113502984045671773` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023954 has offset 0).

The definition of A023954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023954.P7113502984045671773

`(35*9^(n+3)-60*8^(n+3)+28*6^(n+3)-3)/840`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023954

/-- `(35*9^(n+3)-60*8^(n+3)+28*6^(n+3)-3)/840` -/
def P7113502984045671773.Spec : Prop :=
  ∀ n, P7113502984045671773.a n = (A023954 n : ℚ)

end A023954

/-! ## A023954.P15047258544867381613

`∑[A020579(n)]`
-/

namespace A023954.P15047258544867381613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023954.P15047258544867381613

namespace A023954

/-- `∑[A020579(n)]` -/
def P15047258544867381613.Spec : Prop :=
  ∀ n, P15047258544867381613.a n = A023954 n

end A023954

/-! ## A023954.P9463654037265447745

`2*A021634(n)-A021503(n)`
-/

namespace A023954.P9463654037265447745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021634 n - A021503 n

end

end A023954.P9463654037265447745

namespace A023954

/-- `2*A021634(n)-A021503(n)` -/
def P9463654037265447745.Spec : Prop :=
  ∀ n, P9463654037265447745.a n = A023954 n

end A023954

/-! ## A023954.P7632199992538930725

`2*A021904(n)-A021824(n)`
-/

namespace A023954.P7632199992538930725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021904 n - A021824 n

end

end A023954.P7632199992538930725

namespace A023954

/-- `2*A021904(n)-A021824(n)` -/
def P7632199992538930725.Spec : Prop :=
  ∀ n, P7632199992538930725.a n = A023954 n

end A023954

/-! ## A023954.P15978299812568452621

`2*A023950(n)-A023949(n)`
-/

namespace A023954.P15978299812568452621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023950 n - A023949 n

end

end A023954.P15978299812568452621

namespace A023954

/-- `2*A023950(n)-A023949(n)` -/
def P15978299812568452621.Spec : Prop :=
  ∀ n, P15978299812568452621.a n = A023954 n

end A023954

/-! ## A023954.P2214804983120093429

`A016244(n+1)-A016243(n+1)`
-/

namespace A023954.P2214804983120093429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 (n + 1) - A016243 (n + 1)

end

end A023954.P2214804983120093429

namespace A023954

/-- `A016244(n+1)-A016243(n+1)` -/
def P2214804983120093429.Spec : Prop :=
  ∀ n, P2214804983120093429.a n = A023954 n

end A023954

/-! ## A023954.P9091716934674258533

`Δ[2*∑[2*(A016244(n)-A016243(n))]/4]`
-/

namespace A023954.P9091716934674258533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016244 n - A016243 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023954.P9091716934674258533

namespace A023954

/-- `Δ[2*∑[2*(A016244(n)-A016243(n))]/4]` -/
def P9091716934674258533.Spec : Prop :=
  ∀ n, P9091716934674258533.a n = (A023954 n : ℚ)

end A023954

/-!
# A023955: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-8*x)*(1-10*x)).

The programs for A023955, there is no canonical definition to state claims against.
-/

/-! ## A023955.P6687675973662663158

`∑[A020584(n)]`
-/

namespace A023955.P6687675973662663158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023955.P6687675973662663158

/-! ## A023955.P1812692113294925792

`∑[A000079(n)*A016753(n)]`
-/

namespace A023955.P1812692113294925792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023955.P1812692113294925792

/-! ## A023955.P18051749671877286801

`2*A021268(n)-A021184(n)`
-/

namespace A023955.P18051749671877286801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021268 n - A021184 n

end

end A023955.P18051749671877286801

/-! ## A023955.P5764205464226394411

`2*A021914(n)-A021829(n)`
-/

namespace A023955.P5764205464226394411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021914 n - A021829 n

end

end A023955.P5764205464226394411

/-! ## A023955.P10652671352559891896

`∑[A016116(2*n)*A016753(n)]`
-/

namespace A023955.P10652671352559891896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A016753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023955.P10652671352559891896

/-!
# A023956: Expansion of 1/((1-x)(1-6x)(1-8x)(1-11x)).

The programs for A023956, there is no canonical definition to state claims against.
-/

/-! ## A023956.P1352908396107170181

`∑[A020593(n)]`
-/

namespace A023956.P1352908396107170181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023956.P1352908396107170181

/-! ## A023956.P10912640970156313376

`A016259(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A023956.P10912640970156313376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016259 n + 6 * a (n - 1)

end

end A023956.P10912640970156313376

/-! ## A023956.P4107109259819961249

`A021524(n)+A021664(n)-A021503(n)`
-/

namespace A023956.P4107109259819961249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021524 n + (A021664 n - A021503 n)

end

end A023956.P4107109259819961249

/-! ## A023956.P13472866345574671263

`A021924(n)+A021924(n)-A021834(n)`
-/

namespace A023956.P13472866345574671263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021924 n + (A021924 n - A021834 n)

end

end A023956.P13472866345574671263

/-! ## A023956.P17238397061889837334

`A021924(n)+A021924(n)-∑[A019488(n)]`
-/

namespace A023956.P17238397061889837334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021924 n + (A021924 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023956.P17238397061889837334

/-! ## A023956.P12397538107304925557

`2*A021924(n)-A021834(n)`
-/

namespace A023956.P12397538107304925557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021924 n - A021834 n

end

end A023956.P12397538107304925557

/-! ## A023956.P11414902213759788573

`(A024439(n)+A023952(n))/2`
-/

namespace A023956.P11414902213759788573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024439 n + A023952 n : ℚ) / 2

end

end A023956.P11414902213759788573

/-! ## A023956.P17751642833754913894

`2*A021924(n)-∑[A019488(n)]`
-/

namespace A023956.P17751642833754913894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021924 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023956.P17751642833754913894

/-!
# A023957: n-th digit after the decimal point of the n-th root of n.

The programs for A023957, there is no canonical definition to state claims against.
-/

/-! ## A023957.P1990183119535311885

`floor(10^(n+1)*root(n+1, n+1))%10`
-/

namespace A023957.P1990183119535311885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(10 ^ (n + 1) : ℝ) * (n + 1 : ℝ) ^ (1 / (n + 1 : ℝ))⌋ 10

end

end A023957.P1990183119535311885

/-! ## A023957.P7874767200801010806

`dr(A093470(n+1)%10)`
-/

namespace A023957.P7874767200801010806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A093470 (n + 1)) 10)

end

end A023957.P7874767200801010806

/-!
# A023959: n-th binary digit in fractional part of n-th root of n.

The programs for A023959, there is no canonical definition to state claims against.
-/

/-! ## A023959.P5991455750659966775

`A284772(A305214(n+1)+A026040(n+4))`
-/

namespace A023959.P5991455750659966775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284772 (A305214 (n + 1) + A026040 (n + 4)).toNat

end

end A023959.P5991455750659966775

/-! ## A023959.P11788135538809897220

`A064532(A309253(n+1))%2`
-/

namespace A023959.P11788135538809897220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064532 (A309253 (n + 1)).toNat) 2

end

end A023959.P11788135538809897220

/-! ## A023959.P11998233101805019094

`A294936(A206332(record[A109128(n)]))`
-/

namespace A023959.P11998233101805019094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A206332 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A023959.P11998233101805019094

/-! ## A023959.P5905131948836459747

`A127015(A181096(n+2)-A185264(n+1))`
-/

namespace A023959.P5905131948836459747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127015 (A181096 (n + 2) - A185264 (n + 1)).toNat

end

end A023959.P5905131948836459747

/-!
# A023960: n-th bit in binary expansion of n-th root of n.

The programs for A023960, the canonical program `A023960.P2618509128043688957` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023960 has offset 1).

The definition of A023960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023960.P2618509128043688957

`floor(2^n*root(n+1, n+1))%2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023960

/-- `floor(2^n*root(n+1, n+1))%2` -/
def P2618509128043688957.Spec : Prop :=
  ∀ n, P2618509128043688957.a n = A023960 (n + 1)

theorem P2618509128043688957.correct : P2618509128043688957.Spec := by
  intro n
  simp only [A023960, Nat.add_sub_cancel]

end A023960

/-! ## A023960.P8930601714831613455

`A228813(A080255(n+1)-A231345(n+4))`
-/

namespace A023960.P8930601714831613455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228813 (A080255 (n + 1) - A231345 (n + 4)).toNat

end

end A023960.P8930601714831613455

namespace A023960

/-- `A228813(A080255(n+1)-A231345(n+4))` -/
def P8930601714831613455.Spec : Prop :=
  ∀ n, P8930601714831613455.a n = A023960 (n + 1)

end A023960

/-! ## A023960.P3662154973126659371

`A001842(A000040(A143525(2*n+5)))`
-/

namespace A023960.P3662154973126659371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A000040 (A143525 (2 * n + 5)).toNat).toNat

end

end A023960.P3662154973126659371

namespace A023960

/-- `A001842(A000040(A143525(2*n+5)))` -/
def P3662154973126659371.Spec : Prop :=
  ∀ n, P3662154973126659371.a n = A023960 (n + 1)

end A023960

/-! ## A023960.P17357477779047812218

`A213728(31*A213730(n))`
-/

namespace A023960.P17357477779047812218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (31 * A213730 n).toNat

end

end A023960.P17357477779047812218

namespace A023960

/-- `A213728(31*A213730(n))` -/
def P17357477779047812218.Spec : Prop :=
  ∀ n, P17357477779047812218.a n = A023960 (n + 1)

end A023960

/-! ## A023960.P3272492778860364055

`A088911(A028929(2*n+1)*A182445(n))`
-/

namespace A023960.P3272492778860364055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (A028929 (2 * n + 1) * A182445 n).toNat

end

end A023960.P3272492778860364055

namespace A023960

/-- `A088911(A028929(2*n+1)*A182445(n))` -/
def P3272492778860364055.Spec : Prop :=
  ∀ n, P3272492778860364055.a n = A023960 (n + 1)

end A023960

/-!
# A023961: First digit after decimal point of square root of n.

The programs for A023961, the canonical program `A023961.P880977855683765667` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023961 has offset 1).

The definition of A023961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023961.P9401758370231008525

`floor(10*sqrt(n+1))%10`
-/

namespace A023961.P9401758370231008525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊10 * Real.sqrt (n + 1 : ℝ)⌋ 10

end

end A023961.P9401758370231008525

namespace A023961

/-- `floor(10*sqrt(n+1))%10` -/
def P9401758370231008525.Spec : Prop :=
  ∀ n, P9401758370231008525.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P880977855683765667

`A010879(A000196(100*(n+1)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023961

/-- `A010879(A000196(100*(n+1)))` -/
def P880977855683765667.Spec : Prop :=
  ∀ n, P880977855683765667.a n = A023961 (n + 1)

theorem P880977855683765667.correct : P880977855683765667.Spec := by
  intro n
  simp only [A023961, Nat.add_sub_cancel]

end A023961

/-! ## A023961.P14442349600207028799

`floor(10*(sqrt(n+1)-floor(sqrt(n+1))))`
-/

namespace A023961.P14442349600207028799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (Real.sqrt (n + 1 : ℝ) - (Nat.sqrt (n + 1) : ℝ))⌋

end

end A023961.P14442349600207028799

namespace A023961

/-- `floor(10*(sqrt(n+1)-floor(sqrt(n+1))))` -/
def P14442349600207028799.Spec : Prop :=
  ∀ n, P14442349600207028799.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P1630869027689022652

`A023963((n+1)²)`
-/

namespace A023961.P1630869027689022652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023963 ((n + 1) ^ 2)

end

end A023961.P1630869027689022652

namespace A023961

/-- `A023963((n+1)²)` -/
def P1630869027689022652.Spec : Prop :=
  ∀ n, P1630869027689022652.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P8474106213592038762

`dr(A023963(∑[2*n+1]))`
-/

namespace A023961.P8474106213592038762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A023963 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A023961.P8474106213592038762

namespace A023961

/-- `dr(A023963(∑[2*n+1]))` -/
def P8474106213592038762.Spec : Prop :=
  ∀ n, (P8474106213592038762.a n : ℤ) = A023961 (n + 1)

end A023961

/-! ## A023961.P4098125562004629074

`A179635(A027662(n+1))`
-/

namespace A023961.P4098125562004629074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A027662 (n + 1)).toNat

end

end A023961.P4098125562004629074

namespace A023961

/-- `A179635(A027662(n+1))` -/
def P4098125562004629074.Spec : Prop :=
  ∀ n, P4098125562004629074.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P2196161015081525304

`A023963(∑[2*n+1])/(A000007(n)+1)`
-/

namespace A023961.P2196161015081525304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000007 n + 1 : ℚ)

end

end A023961.P2196161015081525304

namespace A023961

/-- `A023963(∑[2*n+1])/(A000007(n)+1)` -/
def P2196161015081525304.Spec : Prop :=
  ∀ n, P2196161015081525304.a n = (A023961 (n + 1) : ℚ)

end A023961

/-! ## A023961.P5750205253739716295

`A000034(2*n)*A023963(∑[2*n+1])`
-/

namespace A023961.P5750205253739716295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A023963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023961.P5750205253739716295

namespace A023961

/-- `A000034(2*n)*A023963(∑[2*n+1])` -/
def P5750205253739716295.Spec : Prop :=
  ∀ n, P5750205253739716295.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P4165123484651005017

`A007318(C(2, n))*A023963(∑[2*n+1])`
-/

namespace A023961.P4165123484651005017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A023963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023961.P4165123484651005017

namespace A023961

/-- `A007318(C(2, n))*A023963(∑[2*n+1])` -/
def P4165123484651005017.Spec : Prop :=
  ∀ n, P4165123484651005017.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P9226367205657015511

`A023963(∑[2*n+1])+A001747(n+1)%2`
-/

namespace A023961.P9226367205657015511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023963 (∑ j ∈ Finset.range (n + 1), f1 j) + Int.tmod (A001747 (n + 1)) 2

end

end A023961.P9226367205657015511

namespace A023961

/-- `A023963(∑[2*n+1])+A001747(n+1)%2` -/
def P9226367205657015511.Spec : Prop :=
  ∀ n, P9226367205657015511.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P16620813349344135255

`A000040(n+1)%2*A023963(∑[2*n+1])`
-/

namespace A023961.P16620813349344135255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A023963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023961.P16620813349344135255

namespace A023961

/-- `A000040(n+1)%2*A023963(∑[2*n+1])` -/
def P16620813349344135255.Spec : Prop :=
  ∀ n, P16620813349344135255.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P1783838447533102123

`A000041(C(2, n+2))*A023963(∑[2*n+1])`
-/

namespace A023961.P1783838447533102123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A023963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023961.P1783838447533102123

namespace A023961

/-- `A000041(C(2, n+2))*A023963(∑[2*n+1])` -/
def P1783838447533102123.Spec : Prop :=
  ∀ n, P1783838447533102123.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P4801711515153428231

`A023963(∑[2*n+1])+A001222(gcd(n, n+1))`
-/

namespace A023961.P4801711515153428231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023963 (∑ j ∈ Finset.range (n + 1), f1 j) + A001222 (Nat.gcd n (n + 1))

end

end A023961.P4801711515153428231

namespace A023961

/-- `A023963(∑[2*n+1])+A001222(gcd(n, n+1))` -/
def P4801711515153428231.Spec : Prop :=
  ∀ n, P4801711515153428231.a n = A023961 (n + 1)

end A023961

/-! ## A023961.P2987654029488061142

`A000041(and(1, n)^n)*A023963(∑[2*n+1])`
-/

namespace A023961.P2987654029488061142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.land 1 n ^ n) * A023963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023961.P2987654029488061142

namespace A023961

/-- `A000041(and(1, n)^n)*A023963(∑[2*n+1])` -/
def P2987654029488061142.Spec : Prop :=
  ∀ n, P2987654029488061142.a n = A023961 (n + 1)

end A023961

/-!
# A023962: First digit after decimal point of cube root of n.

The programs for A023962, the canonical program `A023962.P4218714369795661473` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023962 has offset 1).

The definition of A023962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023962.P4218714369795661473

`A023965((n+1)²)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023962

/-- `A023965((n+1)²)` -/
def P4218714369795661473.Spec : Prop :=
  ∀ n, P4218714369795661473.a n = A023962 (n + 1)

theorem P4218714369795661473.correct : P4218714369795661473.Spec := by
  intro n
  simp only [A023962, Nat.add_sub_cancel]

end A023962

/-! ## A023962.P13944822707249251582

`dr(A023965(∑[2*n+1]))`
-/

namespace A023962.P13944822707249251582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A023965 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A023962.P13944822707249251582

namespace A023962

/-- `dr(A023965(∑[2*n+1]))` -/
def P13944822707249251582.Spec : Prop :=
  ∀ n, (P13944822707249251582.a n : ℤ) = A023962 (n + 1)

end A023962

/-! ## A023962.P6543993247895191045

`A023965(∑[2*n+1])*A057427(n)`
-/

namespace A023962.P6543993247895191045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A023962.P6543993247895191045

namespace A023962

/-- `A023965(∑[2*n+1])*A057427(n)` -/
def P6543993247895191045.Spec : Prop :=
  ∀ n, P6543993247895191045.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P16334255782709498917

`A023965(∑[2*n+1])+A000007(n+1)`
-/

namespace A023962.P16334255782709498917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A023962.P16334255782709498917

namespace A023962

/-- `A023965(∑[2*n+1])+A000007(n+1)` -/
def P16334255782709498917.Spec : Prop :=
  ∀ n, P16334255782709498917.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P6482180513923612724

`A023965(∑[2*n+1])+A000038(n+1)`
-/

namespace A023962.P6482180513923612724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (∑ j ∈ Finset.range (n + 1), f1 j) + A000038 (n + 1)

end

end A023962.P6482180513923612724

namespace A023962

/-- `A023965(∑[2*n+1])+A000038(n+1)` -/
def P6482180513923612724.Spec : Prop :=
  ∀ n, P6482180513923612724.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P2659803340534728168

`A023965(∑[2*n+1])+A000035(2*n)`
-/

namespace A023962.P2659803340534728168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (∑ j ∈ Finset.range (n + 1), f1 j) + A000035 (2 * n)

end

end A023962.P2659803340534728168

namespace A023962

/-- `A023965(∑[2*n+1])+A000035(2*n)` -/
def P2659803340534728168.Spec : Prop :=
  ∀ n, P2659803340534728168.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P1058469109934644130

`A007318(C(2, n))*A023965(∑[2*n+1])`
-/

namespace A023962.P1058469109934644130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P1058469109934644130

namespace A023962

/-- `A007318(C(2, n))*A023965(∑[2*n+1])` -/
def P1058469109934644130.Spec : Prop :=
  ∀ n, P1058469109934644130.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P14932635934499562134

`(A000041(n)%2)!*A023965(∑[2*n+1])`
-/

namespace A023962.P14932635934499562134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P14932635934499562134

namespace A023962

/-- `(A000041(n)%2)!*A023965(∑[2*n+1])` -/
def P14932635934499562134.Spec : Prop :=
  ∀ n, P14932635934499562134.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P8198484899231372907

`char[A101296(n+1)]*A023965(∑[2*n+1])`
-/

namespace A023962.P8198484899231372907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A023965 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A023962.P8198484899231372907

namespace A023962

/-- `char[A101296(n+1)]*A023965(∑[2*n+1])` -/
def P8198484899231372907.Spec : Prop :=
  ∀ n, P8198484899231372907.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P15556802471472956529

`A023965(∑[2*n+1])+A008683(4*(n+3))`
-/

namespace A023962.P15556802471472956529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (4 * (n + 3))

end

end A023962.P15556802471472956529

namespace A023962

/-- `A023965(∑[2*n+1])+A008683(4*(n+3))` -/
def P15556802471472956529.Spec : Prop :=
  ∀ n, P15556802471472956529.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P15924526093856215311

`A014963(4*n+6)*A023965(∑[2*n+1])`
-/

namespace A023962.P15924526093856215311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P15924526093856215311

namespace A023962

/-- `A014963(4*n+6)*A023965(∑[2*n+1])` -/
def P15924526093856215311.Spec : Prop :=
  ∀ n, P15924526093856215311.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P4291903883666405776

`A000040(n+1)%2*A023965(∑[2*n+1])`
-/

namespace A023962.P4291903883666405776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P4291903883666405776

namespace A023962

/-- `A000040(n+1)%2*A023965(∑[2*n+1])` -/
def P4291903883666405776.Spec : Prop :=
  ∀ n, P4291903883666405776.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P4820511785195741268

`A000041(C(2, n+1))*A023965(∑[2*n+1])`
-/

namespace A023962.P4820511785195741268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P4820511785195741268

namespace A023962

/-- `A000041(C(2, n+1))*A023965(∑[2*n+1])` -/
def P4820511785195741268.Spec : Prop :=
  ∀ n, P4820511785195741268.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P17120843995509727999

`A007318(val(n+1, 5))*A023965(∑[2*n+1])`
-/

namespace A023962.P17120843995509727999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P17120843995509727999

namespace A023962

/-- `A007318(val(n+1, 5))*A023965(∑[2*n+1])` -/
def P17120843995509727999.Spec : Prop :=
  ∀ n, P17120843995509727999.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P14727036384621686164

`A008835(A023705(n+1))*A023965(∑[2*n+1])`
-/

namespace A023962.P14727036384621686164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A023705 (n + 1)).toNat * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P14727036384621686164

namespace A023962

/-- `A008835(A023705(n+1))*A023965(∑[2*n+1])` -/
def P14727036384621686164.Spec : Prop :=
  ∀ n, P14727036384621686164.a n = A023962 (n + 1)

end A023962

/-! ## A023962.P7490814576366182583

`A008835(A020639(3*n+1))*A023965(∑[2*n+1])`
-/

namespace A023962.P7490814576366182583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A020639 (3 * n + 1)).toNat * A023965 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023962.P7490814576366182583

namespace A023962

/-- `A008835(A020639(3*n+1))*A023965(∑[2*n+1])` -/
def P7490814576366182583.Spec : Prop :=
  ∀ n, P7490814576366182583.a n = A023962 (n + 1)

end A023962

/-!
# A023963: First digit after decimal point of 4th root of n.

The programs for A023963, the canonical program `A023963.P5162851184972613735` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023963 has offset 1).

The definition of A023963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023963.P5162851184972613735

`floor(10*root(n+1, 4))%10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023963

/-- `floor(10*root(n+1, 4))%10` -/
def P5162851184972613735.Spec : Prop :=
  ∀ n, P5162851184972613735.a n = A023963 (n + 1)

theorem P5162851184972613735.correct : P5162851184972613735.Spec := by
  intro n
  simp only [A023963, Nat.add_sub_cancel]

end A023963

/-! ## A023963.P13066129441746541731

`A023967((n+1)²)`
-/

namespace A023963.P13066129441746541731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 ((n + 1) ^ 2)

end

end A023963.P13066129441746541731

namespace A023963

/-- `A023967((n+1)²)` -/
def P13066129441746541731.Spec : Prop :=
  ∀ n, P13066129441746541731.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P14717982496122328371

`dr(A023967(∑[2*n+1]))`
-/

namespace A023963.P14717982496122328371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A023967 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A023963.P14717982496122328371

namespace A023963

/-- `dr(A023967(∑[2*n+1]))` -/
def P14717982496122328371.Spec : Prop :=
  ∀ n, (P14717982496122328371.a n : ℤ) = A023963 (n + 1)

end A023963

/-! ## A023963.P3002914489839912671

`A023967(∑[2*n+1])+A000007(n+1)`
-/

namespace A023963.P3002914489839912671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A023963.P3002914489839912671

namespace A023963

/-- `A023967(∑[2*n+1])+A000007(n+1)` -/
def P3002914489839912671.Spec : Prop :=
  ∀ n, P3002914489839912671.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P13918661792549779067

`A023967(∑[2*n+1])+A000038(n+1)`
-/

namespace A023963.P13918661792549779067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 (∑ j ∈ Finset.range (n + 1), f1 j) + A000038 (n + 1)

end

end A023963.P13918661792549779067

namespace A023963

/-- `A023967(∑[2*n+1])+A000038(n+1)` -/
def P13918661792549779067.Spec : Prop :=
  ∀ n, P13918661792549779067.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P6235574143382493229

`A000034(2*n)*A023967(∑[2*n+1])`
-/

namespace A023963.P6235574143382493229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A023967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023963.P6235574143382493229

namespace A023963

/-- `A000034(2*n)*A023967(∑[2*n+1])` -/
def P6235574143382493229.Spec : Prop :=
  ∀ n, P6235574143382493229.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P44486435683059719

`A007318(C(2, n))*A023967(∑[2*n+1])`
-/

namespace A023963.P44486435683059719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A023967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023963.P44486435683059719

namespace A023963

/-- `A007318(C(2, n))*A023967(∑[2*n+1])` -/
def P44486435683059719.Spec : Prop :=
  ∀ n, P44486435683059719.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P3081410397792167704

`and(A003817(2*n), A023967(∑[2*n+1]))`
-/

namespace A023963.P3081410397792167704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * n)) (A023967 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A023963.P3081410397792167704

namespace A023963

/-- `and(A003817(2*n), A023967(∑[2*n+1]))` -/
def P3081410397792167704.Spec : Prop :=
  ∀ n, P3081410397792167704.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P14291044239170128673

`Δ[A004523(n)]!*A023967(∑[2*n+1])`
-/

namespace A023963.P14291044239170128673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) * A023967 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A023963.P14291044239170128673

namespace A023963

/-- `Δ[A004523(n)]!*A023967(∑[2*n+1])` -/
def P14291044239170128673.Spec : Prop :=
  ∀ n, P14291044239170128673.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P17118487973041678804

`char[A003602(n+1)]*A023967(∑[2*n+1])`
-/

namespace A023963.P17118487973041678804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A023967 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A023963.P17118487973041678804

namespace A023963

/-- `char[A003602(n+1)]*A023967(∑[2*n+1])` -/
def P17118487973041678804.Spec : Prop :=
  ∀ n, P17118487973041678804.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P675291575121193248

`A342019(2*n+1)+A023967(∑[2*n+1])`
-/

namespace A023963.P675291575121193248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342019 (2 * n + 1) + A023967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023963.P675291575121193248

namespace A023963

/-- `A342019(2*n+1)+A023967(∑[2*n+1])` -/
def P675291575121193248.Spec : Prop :=
  ∀ n, P675291575121193248.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P5893074132395540289

`A014963(10*(n+1))*A023967(∑[2*n+1])`
-/

namespace A023963.P5893074132395540289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A023967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023963.P5893074132395540289

namespace A023963

/-- `A014963(10*(n+1))*A023967(∑[2*n+1])` -/
def P5893074132395540289.Spec : Prop :=
  ∀ n, P5893074132395540289.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P15024646695991077149

`A000041(C(2, n+2))*A023967(∑[2*n+1])`
-/

namespace A023963.P15024646695991077149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A023967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023963.P15024646695991077149

namespace A023963

/-- `A000041(C(2, n+2))*A023967(∑[2*n+1])` -/
def P15024646695991077149.Spec : Prop :=
  ∀ n, P15024646695991077149.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P1345954179967711477

`A023967(∑[2*n+1])+A001222(gcd(n, n+1))`
-/

namespace A023963.P1345954179967711477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 (∑ j ∈ Finset.range (n + 1), f1 j) + A001222 (Nat.gcd n (n + 1))

end

end A023963.P1345954179967711477

namespace A023963

/-- `A023967(∑[2*n+1])+A001222(gcd(n, n+1))` -/
def P1345954179967711477.Spec : Prop :=
  ∀ n, P1345954179967711477.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P10006020985846896991

`A023967(∑[2*n+1])+A000045(C(n, n+1))`
-/

namespace A023963.P10006020985846896991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 (Nat.choose n (n + 1))

end

end A023963.P10006020985846896991

namespace A023963

/-- `A023967(∑[2*n+1])+A000045(C(n, n+1))` -/
def P10006020985846896991.Spec : Prop :=
  ∀ n, P10006020985846896991.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P10730223193134522265

`A000108(and(1, n)^n)*A023967(∑[2*n+1])`
-/

namespace A023963.P10730223193134522265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.land 1 n ^ n) * A023967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023963.P10730223193134522265

namespace A023963

/-- `A000108(and(1, n)^n)*A023967(∑[2*n+1])` -/
def P10730223193134522265.Spec : Prop :=
  ∀ n, P10730223193134522265.a n = A023963 (n + 1)

end A023963

/-! ## A023963.P9136264325331074350

`A001221(A001316(n))*A023967(∑[2*n+1])`
-/

namespace A023963.P9136264325331074350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A023967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023963.P9136264325331074350

namespace A023963

/-- `A001221(A001316(n))*A023967(∑[2*n+1])` -/
def P9136264325331074350.Spec : Prop :=
  ∀ n, P9136264325331074350.a n = A023963 (n + 1)

end A023963

/-!
# A023964: First digit after decimal point of 5th root of n.

The programs for A023964, the canonical program `A023964.P15443092186280879180` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023964 has offset 1).

The definition of A023964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023964.P15443092186280879180

`floor(10*root(n+1, 5))%10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023964

/-- `floor(10*root(n+1, 5))%10` -/
def P15443092186280879180.Spec : Prop :=
  ∀ n, P15443092186280879180.a n = A023964 (n + 1)

theorem P15443092186280879180.correct : P15443092186280879180.Spec := by
  intro n
  simp only [A023964, Nat.add_sub_cancel]

end A023964

/-! ## A023964.P9810866391704112998

`A023967(A220496(n)+2)`
-/

namespace A023964.P9810866391704112998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 (A220496 n + 2).toNat

end

end A023964.P9810866391704112998

namespace A023964

/-- `A023967(A220496(n)+2)` -/
def P9810866391704112998.Spec : Prop :=
  ∀ n, P9810866391704112998.a n = A023964 (n + 1)

end A023964

/-! ## A023964.P3926197802804160166

`A023968(A141214(n)-A028764(n+1))`
-/

namespace A023964.P3926197802804160166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023968 (A141214 n - A028764 (n + 1)).toNat

end

end A023964.P3926197802804160166

namespace A023964

/-- `A023968(A141214(n)-A028764(n+1))` -/
def P3926197802804160166.Spec : Prop :=
  ∀ n, P3926197802804160166.a n = A023964 (n + 1)

end A023964

/-! ## A023964.P9190302673882571680

`round(log(∑[A308987(n+1)]))`
-/

namespace A023964.P9190302673882571680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A023964.P9190302673882571680

namespace A023964

/-- `round(log(∑[A308987(n+1)]))` -/
def P9190302673882571680.Spec : Prop :=
  ∀ n, P9190302673882571680.a n = A023964 (n + 1)

end A023964

/-! ## A023964.P11820994916763214796

`A135319(A078417(n+1))`
-/

namespace A023964.P11820994916763214796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135319 (A078417 (n + 1)).toNat

end

end A023964.P11820994916763214796

namespace A023964

/-- `A135319(A078417(n+1))` -/
def P11820994916763214796.Spec : Prop :=
  ∀ n, P11820994916763214796.a n = A023964 (n + 1)

end A023964

/-!
# A023965: First digit after decimal point of 6th root of n.

The programs for A023965, the canonical program `A023965.P2747211276513590801` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023965 has offset 1).

The definition of A023965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023965.P2747211276513590801

`floor(10*root(sqrt(n+1), 3))%10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023965

/-- `floor(10*root(sqrt(n+1), 3))%10` -/
def P2747211276513590801.Spec : Prop :=
  ∀ n, P2747211276513590801.a n = A023965 (n + 1)

theorem P2747211276513590801.correct : P2747211276513590801.Spec := by
  intro n
  simp only [A023965, Nat.add_sub_cancel]

end A023965

/-! ## A023965.P6439583494111368984

`ceil(log2(A284831(comp[9*n])))`
-/

namespace A023965.P6439583494111368984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A284831 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌉

end

end A023965.P6439583494111368984

namespace A023965

/-- `ceil(log2(A284831(comp[9*n])))` -/
def P6439583494111368984.Spec : Prop :=
  ∀ n, P6439583494111368984.a n = A023965 (n + 1)

end A023965

/-! ## A023965.P4501608782677564602

`A000193(A008610(n)+A007954(n))`
-/

namespace A023965.P4501608782677564602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A008610 n + A007954 n).toNat

end

end A023965.P4501608782677564602

namespace A023965

/-- `A000193(A008610(n)+A007954(n))` -/
def P4501608782677564602.Spec : Prop :=
  ∀ n, P4501608782677564602.a n = A023965 (n + 1)

end A023965

/-! ## A023965.P5634738555284375974

`A000193(A098294(n)+A008610(n))`
-/

namespace A023965.P5634738555284375974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A098294 n + A008610 n).toNat

end

end A023965.P5634738555284375974

namespace A023965

/-- `A000193(A098294(n)+A008610(n))` -/
def P5634738555284375974.Spec : Prop :=
  ∀ n, P5634738555284375974.a n = A023965 (n + 1)

end A023965

/-! ## A023965.P10369038412599937781

`A000193(A195119(n)+A008610(n))`
-/

namespace A023965.P10369038412599937781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A195119 n + A008610 n).toNat

end

end A023965.P10369038412599937781

namespace A023965

/-- `A000193(A195119(n)+A008610(n))` -/
def P10369038412599937781.Spec : Prop :=
  ∀ n, P10369038412599937781.a n = A023965 (n + 1)

end A023965

/-!
# A023966: First digit after decimal point of 7th root of n.

The programs for A023966, the canonical program `A023966.P7694824610596751289` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023966 has offset 1).

The definition of A023966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023966.P7694824610596751289

`floor(10*root(n+1, 7))%10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023966

/-- `floor(10*root(n+1, 7))%10` -/
def P7694824610596751289.Spec : Prop :=
  ∀ n, P7694824610596751289.a n = A023966 (n + 1)

theorem P7694824610596751289.correct : P7694824610596751289.Spec := by
  intro n
  simp only [A023966, Nat.add_sub_cancel]

end A023966

/-! ## A023966.P12948681023667517646

`A000195(∑[A195119(A184115(n+1))])`
-/

namespace A023966.P12948681023667517646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A184115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023966.P12948681023667517646

namespace A023966

/-- `A000195(∑[A195119(A184115(n+1))])` -/
def P12948681023667517646.Spec : Prop :=
  ∀ n, P12948681023667517646.a n = A023966 (n + 1)

end A023966

/-! ## A023966.P4652575020170191977

`A076620(∑[∑[A343856(n+1)]])`
-/

namespace A023966.P4652575020170191977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023966.P4652575020170191977

namespace A023966

/-- `A076620(∑[∑[A343856(n+1)]])` -/
def P4652575020170191977.Spec : Prop :=
  ∀ n, P4652575020170191977.a n = A023966 (n + 1)

end A023966

/-! ## A023966.P6761400782754889131

`floor(∑[A331852(n)/A014692(n+1)])`
-/

namespace A023966.P6761400782754889131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331852 n : ℚ) / (A014692 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A023966.P6761400782754889131

namespace A023966

/-- `floor(∑[A331852(n)/A014692(n+1)])` -/
def P6761400782754889131.Spec : Prop :=
  ∀ n, P6761400782754889131.a n = A023966 (n + 1)

end A023966

/-! ## A023966.P9033414930821704876

`A038605(∑[A032711(n+2)+2]+1)-2`
-/

namespace A023966.P9033414930821704876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 2

end

end A023966.P9033414930821704876

namespace A023966

/-- `A038605(∑[A032711(n+2)+2]+1)-2` -/
def P9033414930821704876.Spec : Prop :=
  ∀ n, P9033414930821704876.a n = A023966 (n + 1)

end A023966

/-! ## A023966.P5360131517685092092

`A062153(A055803(n+3)+A000124(n))`
-/

namespace A023966.P5360131517685092092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A055803 (n + 3) + A000124 n).toNat

end

end A023966.P5360131517685092092

namespace A023966

/-- `A062153(A055803(n+3)+A000124(n))` -/
def P5360131517685092092.Spec : Prop :=
  ∀ n, P5360131517685092092.a n = A023966 (n + 1)

end A023966

/-! ## A023966.P6498642010340723789

`A077429(A006501(n+1))`
-/

namespace A023966.P6498642010340723789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (A006501 (n + 1)).toNat

end

end A023966.P6498642010340723789

namespace A023966

/-- `A077429(A006501(n+1))` -/
def P6498642010340723789.Spec : Prop :=
  ∀ n, P6498642010340723789.a n = A023966 (n + 1)

end A023966

/-! ## A023966.P7436451694485785685

`floor(∑[3/(A102767(n+2)+n)])`
-/

namespace A023966.P7436451694485785685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A102767 (n + 2) + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A023966.P7436451694485785685

namespace A023966

/-- `floor(∑[3/(A102767(n+2)+n)])` -/
def P7436451694485785685.Spec : Prop :=
  ∀ n, P7436451694485785685.a n = A023966 (n + 1)

end A023966

/-! ## A023966.P16646259546325122608

`A073458(A109413(n+1))`
-/

namespace A023966.P16646259546325122608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073458 (A109413 (n + 1)).toNat

end

end A023966.P16646259546325122608

namespace A023966

/-- `A073458(A109413(n+1))` -/
def P16646259546325122608.Spec : Prop :=
  ∀ n, P16646259546325122608.a n = A023966 (n + 1)

end A023966

/-!
# A023967: First digit after decimal point of 8th root of n.

The programs for A023967, the canonical program `A023967.P17057718461835996542` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023967 has offset 1).

The definition of A023967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023967.P17057718461835996542

`floor(10*root(n+1, 8))%10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023967

/-- `floor(10*root(n+1, 8))%10` -/
def P17057718461835996542.Spec : Prop :=
  ∀ n, P17057718461835996542.a n = A023967 (n + 1)

theorem P17057718461835996542.correct : P17057718461835996542.Spec := by
  intro n
  simp only [A023967, Nat.add_sub_cancel]

end A023967

/-! ## A023967.P9795500090522872077

`A130260(A130205(2*n+5))-4`
-/

namespace A023967.P9795500090522872077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A130205 (2 * n + 5)).toNat - 4

end

end A023967.P9795500090522872077

namespace A023967

/-- `A130260(A130205(2*n+5))-4` -/
def P9795500090522872077.Spec : Prop :=
  ∀ n, P9795500090522872077.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P7702839601244703479

`floor(log(∑[A332436(n+2)]))`
-/

namespace A023967.P7702839601244703479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332436 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋

end

end A023967.P7702839601244703479

namespace A023967

/-- `floor(log(∑[A332436(n+2)]))` -/
def P7702839601244703479.Spec : Prop :=
  ∀ n, P7702839601244703479.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P4744627210021258682

`A023968(A114149(n+1))`
-/

namespace A023967.P4744627210021258682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023968 (A114149 (n + 1)).toNat

end

end A023967.P4744627210021258682

namespace A023967

/-- `A023968(A114149(n+1))` -/
def P4744627210021258682.Spec : Prop :=
  ∀ n, P4744627210021258682.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P4022297986667347061

`A000195(∑[A332436(n+2)])`
-/

namespace A023967.P4022297986667347061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332436 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023967.P4022297986667347061

namespace A023967

/-- `A000195(∑[A332436(n+2)])` -/
def P4022297986667347061.Spec : Prop :=
  ∀ n, P4022297986667347061.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P18326285233839246127

`floor(log(A059995(∑[4*n+10])))`
-/

namespace A023967.P18326285233839246127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A059995 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌋

end

end A023967.P18326285233839246127

namespace A023967

/-- `floor(log(A059995(∑[4*n+10])))` -/
def P18326285233839246127.Spec : Prop :=
  ∀ n, P18326285233839246127.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P14316816732798883521

`A225541(A335522(n+1)*A335523(n+1))`
-/

namespace A023967.P14316816732798883521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A335522 (n + 1) * A335523 (n + 1)).toNat

end

end A023967.P14316816732798883521

namespace A023967

/-- `A225541(A335522(n+1)*A335523(n+1))` -/
def P14316816732798883521.Spec : Prop :=
  ∀ n, P14316816732798883521.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P482447943796199852

`A000195(A317492(n+1)+A008738(n))`
-/

namespace A023967.P482447943796199852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A317492 (n + 1) + A008738 n).toNat

end

end A023967.P482447943796199852

namespace A023967

/-- `A000195(A317492(n+1)+A008738(n))` -/
def P482447943796199852.Spec : Prop :=
  ∀ n, P482447943796199852.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P16160573005576258892

`A284248(A201010(n+1))`
-/

namespace A023967.P16160573005576258892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A201010 (n + 1)).toNat

end

end A023967.P16160573005576258892

namespace A023967

/-- `A284248(A201010(n+1))` -/
def P16160573005576258892.Spec : Prop :=
  ∀ n, P16160573005576258892.a n = A023967 (n + 1)

end A023967

/-! ## A023967.P15569536231777801859

`A099396(A336488(n+1))`
-/

namespace A023967.P15569536231777801859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (A336488 (n + 1)).toNat

end

end A023967.P15569536231777801859

namespace A023967

/-- `A099396(A336488(n+1))` -/
def P15569536231777801859.Spec : Prop :=
  ∀ n, P15569536231777801859.a n = A023967 (n + 1)

end A023967

/-!
# A023968: First digit after decimal point of 9th root of n.

The programs for A023968, the canonical program `A023968.P17423281451557883663` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023968 has offset 1).

The definition of A023968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023968.P17423281451557883663

`floor(10*root(root(n+1, 3), 3))%10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023968

/-- `floor(10*root(root(n+1, 3), 3))%10` -/
def P17423281451557883663.Spec : Prop :=
  ∀ n, P17423281451557883663.a n = A023968 (n + 1)

theorem P17423281451557883663.correct : P17423281451557883663.Spec := by
  intro n
  simp only [A023968, Nat.add_sub_cancel]

end A023968

/-! ## A023968.P10660276649895910751

`A077429(∑[∑[A350890(n+1)]])`
-/

namespace A023968.P10660276649895910751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350890 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023968.P10660276649895910751

namespace A023968

/-- `A077429(∑[∑[A350890(n+1)]])` -/
def P10660276649895910751.Spec : Prop :=
  ∀ n, P10660276649895910751.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P5130070151564535090

`A225541(A331036(n+1)-A002858(n+1))`
-/

namespace A023968.P5130070151564535090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A331036 (n + 1) - A002858 (n + 1)).toNat

end

end A023968.P5130070151564535090

namespace A023968

/-- `A225541(A331036(n+1)-A002858(n+1))` -/
def P5130070151564535090.Spec : Prop :=
  ∀ n, P5130070151564535090.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P8041947986349717343

`comp[A294532(n+1-A186641(n²+1)%2)]-n`
-/

namespace A023968.P8041947986349717343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294532 ((n + 1 : ℤ) - Int.tmod (A186641 (n ^ 2 + 1)) 2).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A023968.P8041947986349717343

namespace A023968

/-- `comp[A294532(n+1-A186641(n²+1)%2)]-n` -/
def P8041947986349717343.Spec : Prop :=
  ∀ n, P8041947986349717343.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P3351173057006253143

`A102572(∑[A279336(n+1)])`
-/

namespace A023968.P3351173057006253143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023968.P3351173057006253143

namespace A023968

/-- `A102572(∑[A279336(n+1)])` -/
def P3351173057006253143.Spec : Prop :=
  ∀ n, P3351173057006253143.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P14635950410988790561

`A110591(∑[A279336(n+1)])-1`
-/

namespace A023968.P14635950410988790561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A023968.P14635950410988790561

namespace A023968

/-- `A110591(∑[A279336(n+1)])-1` -/
def P14635950410988790561.Spec : Prop :=
  ∀ n, P14635950410988790561.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P5732822335996720089

`floor(A000523(∑[A279336(n+1)])/2)`
-/

namespace A023968.P5732822335996720089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A023968.P5732822335996720089

namespace A023968

/-- `floor(A000523(∑[A279336(n+1)])/2)` -/
def P5732822335996720089.Spec : Prop :=
  ∀ n, P5732822335996720089.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P437046107377800091

`A004526(A000523(∑[A279336(n+1)]))`
-/

namespace A023968.P437046107377800091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A023968.P437046107377800091

namespace A023968

/-- `A004526(A000523(∑[A279336(n+1)]))` -/
def P437046107377800091.Spec : Prop :=
  ∀ n, P437046107377800091.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P3743760874710702618

`A062153(∑[A280750(n)+A078898(n)])`
-/

namespace A023968.P3743760874710702618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023968.P3743760874710702618

namespace A023968

/-- `A062153(∑[A280750(n)+A078898(n)])` -/
def P3743760874710702618.Spec : Prop :=
  ∀ n, P3743760874710702618.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P9158860577145479375

`A102572(∑[A333975((n+1)/2^val(n+1, 2))])`
-/

namespace A023968.P9158860577145479375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023968.P9158860577145479375

namespace A023968

/-- `A102572(∑[A333975((n+1)/2^val(n+1, 2))])` -/
def P9158860577145479375.Spec : Prop :=
  ∀ n, P9158860577145479375.a n = A023968 (n + 1)

end A023968

/-! ## A023968.P8354327431568949945

`A225541(A284327(n+1)+A000217(n))`
-/

namespace A023968.P8354327431568949945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A284327 (n + 1) + A000217 n).toNat

end

end A023968.P8354327431568949945

namespace A023968

/-- `A225541(A284327(n+1)+A000217(n))` -/
def P8354327431568949945.Spec : Prop :=
  ∀ n, P8354327431568949945.a n = A023968 (n + 1)

end A023968

/-!
# A023969: a(n) = round(sqrt(n)) - floor(sqrt(n)).

The programs for A023969, the canonical program `A023969.P11312383252970643517` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023969 has offset 0).

The definition of A023969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(sqrt(n))-floor(sqrt(n))` (program `A023969.P11312383252970643517`, by `A023969.P11312383252970643517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023969.P214795016711726868

`floor(2*sqrt(n))%2`
-/

namespace A023969.P214795016711726868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

end

end A023969.P214795016711726868

namespace A023969

/-- `floor(2*sqrt(n))%2` -/
def P214795016711726868.Spec : Prop :=
  ∀ n, P214795016711726868.a n = A023969 n

end A023969

/-! ## A023969.P11312383252970643517

`round(sqrt(n))-floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023969

/-- `round(sqrt(n))-floor(sqrt(n))` -/
def P11312383252970643517.Spec : Prop :=
  ∀ n, P11312383252970643517.a n = A023969 n

theorem P11312383252970643517.correct : P11312383252970643517.Spec := by
  intro n
  simp only [A023969]

end A023969

/-! ## A023969.P14847471819028087931

`and(1, floor(2*sqrt(n)))`
-/

namespace A023969.P14847471819028087931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * Real.sqrt (n : ℝ)⌋

end

end A023969.P14847471819028087931

namespace A023969

/-- `and(1, floor(2*sqrt(n)))` -/
def P14847471819028087931.Spec : Prop :=
  ∀ n, P14847471819028087931.a n = A023969 n

end A023969

/-! ## A023969.P7849236379312759124

`char[lt[n-round(sqrt(n))², 0]]`
-/

namespace A023969.P7849236379312759124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A023969.P7849236379312759124

namespace A023969

/-- `char[lt[n-round(sqrt(n))², 0]]` -/
def P7849236379312759124.Spec : Prop :=
  ∀ n, (P7849236379312759124.a n : ℤ) = A023969 n

end A023969

/-! ## A023969.P3235762743242856392

`C(comp[(n+1)²], comp[n²+n])`
-/

namespace A023969.P3235762743242856392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A023969.P3235762743242856392

namespace A023969

/-- `C(comp[(n+1)²], comp[n²+n])` -/
def P3235762743242856392.Spec : Prop :=
  ∀ n, (P3235762743242856392.a n : ℤ) = A023969 n

end A023969

/-! ## A023969.P1730904694791968839

`char[comp[A063656(n)]]`
-/

namespace A023969.P1730904694791968839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A023969.P1730904694791968839

namespace A023969

/-- `char[comp[A063656(n)]]` -/
def P1730904694791968839.Spec : Prop :=
  ∀ n, (P1730904694791968839.a n : ℤ) = A023969 n

end A023969

/-! ## A023969.P8017988218220419753

`char[A063657(n+1)]`
-/

namespace A023969.P8017988218220419753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A023969.P8017988218220419753

namespace A023969

/-- `char[A063657(n+1)]` -/
def P8017988218220419753.Spec : Prop :=
  ∀ n, (P8017988218220419753.a n : ℤ) = A023969 n

end A023969

/-! ## A023969.P4979634599976792714

`char[eq[1, A091453(n)]]`
-/

namespace A023969.P4979634599976792714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A023969.P4979634599976792714

namespace A023969

/-- `char[eq[1, A091453(n)]]` -/
def P4979634599976792714.Spec : Prop :=
  ∀ n, (P4979634599976792714.a n : ℤ) = A023969 n

end A023969

/-! ## A023969.P13113121861985466217

`A000035(floor(2*sqrt(n)))`
-/

namespace A023969.P13113121861985466217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊2 * Real.sqrt (n : ℝ)⌋.toNat

end

end A023969.P13113121861985466217

namespace A023969

/-- `A000035(floor(2*sqrt(n)))` -/
def P13113121861985466217.Spec : Prop :=
  ∀ n, P13113121861985466217.a n = A023969 n

end A023969

/-! ## A023969.P13505568415680452204

`Δ[A080344(abs(1-n))]`
-/

namespace A023969.P13505568415680452204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080344 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023969.P13505568415680452204

namespace A023969

/-- `Δ[A080344(abs(1-n))]` -/
def P13505568415680452204.Spec : Prop :=
  ∀ n, P13505568415680452204.a n = A023969 n

end A023969

/-! ## A023969.P7738529041340263233

`char[A217575(n+1)+1]`
-/

namespace A023969.P7738529041340263233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A023969.P7738529041340263233

namespace A023969

/-- `char[A217575(n+1)+1]` -/
def P7738529041340263233.Spec : Prop :=
  ∀ n, (P7738529041340263233.a n : ℤ) = A023969 n

end A023969

/-! ## A023969.P9958098185564763525

`floor(n/A020703(n+1))`
-/

namespace A023969.P9958098185564763525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A020703 (n + 1) : ℚ)⌋

end

end A023969.P9958098185564763525

namespace A023969

/-- `floor(n/A020703(n+1))` -/
def P9958098185564763525.Spec : Prop :=
  ∀ n, P9958098185564763525.a n = A023969 n

end A023969

/-! ## A023969.P6260126302350373116

`floor(A053187(n)/(n+1))`
-/

namespace A023969.P6260126302350373116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053187 n : ℚ) / (n + 1 : ℚ)⌋

end

end A023969.P6260126302350373116

namespace A023969

/-- `floor(A053187(n)/(n+1))` -/
def P6260126302350373116.Spec : Prop :=
  ∀ n, P6260126302350373116.a n = A023969 n

end A023969

/-! ## A023969.P15439653114655854287

`ceil(A196199(n)/(n+1))`
-/

namespace A023969.P15439653114655854287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196199 n : ℚ) / (n + 1 : ℚ)⌉

end

end A023969.P15439653114655854287

namespace A023969

/-- `ceil(A196199(n)/(n+1))` -/
def P15439653114655854287.Spec : Prop :=
  ∀ n, P15439653114655854287.a n = A023969 n

end A023969

/-! ## A023969.P10572556740802242433

`A079813(A020703(n+1))`
-/

namespace A023969.P10572556740802242433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (A020703 (n + 1)).toNat

end

end A023969.P10572556740802242433

namespace A023969

/-- `A079813(A020703(n+1))` -/
def P10572556740802242433.Spec : Prop :=
  ∀ n, P10572556740802242433.a n = A023969 n

end A023969

/-! ## A023969.P8259602974409112414

`A397086(n-A068527(n))`
-/

namespace A023969.P8259602974409112414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397086 ((n : ℤ) - A068527 n).toNat

end

end A023969.P8259602974409112414

namespace A023969

/-- `A397086(n-A068527(n))` -/
def P8259602974409112414.Spec : Prop :=
  ∀ n, P8259602974409112414.a n = A023969 n

end A023969

/-! ## A023969.P6823815176714495199

`xor(A005369(n), A118175(n))`
-/

namespace A023969.P6823815176714495199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005369 n) (A118175 n)

end

end A023969.P6823815176714495199

namespace A023969

/-- `xor(A005369(n), A118175(n))` -/
def P6823815176714495199.Spec : Prop :=
  ∀ n, P6823815176714495199.a n = A023969 n

end A023969

/-! ## A023969.P5009146947925532316

`A079813(n+1-A384688(n))`
-/

namespace A023969.P5009146947925532316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 ((n + 1 : ℤ) - A384688 n).toNat

end

end A023969.P5009146947925532316

namespace A023969

/-- `A079813(n+1-A384688(n))` -/
def P5009146947925532316.Spec : Prop :=
  ∀ n, P5009146947925532316.a n = A023969 n

end A023969

/-! ## A023969.P11640255601717136281

`A397086(A094761(n))`
-/

namespace A023969.P11640255601717136281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397086 (A094761 n).toNat

end

end A023969.P11640255601717136281

namespace A023969

/-- `A397086(A094761(n))` -/
def P11640255601717136281.Spec : Prop :=
  ∀ n, P11640255601717136281.a n = A023969 n

end A023969

/-! ## A023969.P13807231374970698482

`A079813(A368941(n)+n)`
-/

namespace A023969.P13807231374970698482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (A368941 n + (n : ℤ)).toNat

end

end A023969.P13807231374970698482

namespace A023969

/-- `A079813(A368941(n)+n)` -/
def P13807231374970698482.Spec : Prop :=
  ∀ n, P13807231374970698482.a n = A023969 n

end A023969

/-!
# A023970: First bit in fractional part of binary expansion of cube root of n.

The programs for A023970, the canonical program `A023970.P14625794854740836419` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023970 has offset 1).

The definition of A023970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023970.P14625794854740836419

`floor(2*root(n+1, 3))%2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023970

/-- `floor(2*root(n+1, 3))%2` -/
def P14625794854740836419.Spec : Prop :=
  ∀ n, P14625794854740836419.a n = A023970 (n + 1)

theorem P14625794854740836419.correct : P14625794854740836419.Spec := by
  intro n
  simp only [A023970, Nat.add_sub_cancel]

end A023970

/-! ## A023970.P1364384357938727430

`floor(A023962(n+1)/5)`
-/

namespace A023970.P1364384357938727430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023962 (n + 1) : ℚ) / 5⌋

end

end A023970.P1364384357938727430

namespace A023970

/-- `floor(A023962(n+1)/5)` -/
def P1364384357938727430.Spec : Prop :=
  ∀ n, P1364384357938727430.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P11060762404684121691

`A105209(n+1)-A048766(n+1)`
-/

namespace A023970.P11060762404684121691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (n + 1) - A048766 (n + 1)

end

end A023970.P11060762404684121691

namespace A023970

/-- `A105209(n+1)-A048766(n+1)` -/
def P11060762404684121691.Spec : Prop :=
  ∀ n, P11060762404684121691.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P1566297724872405213

`A005369(A048766(n+1)*A105209(n+1))`
-/

namespace A023970.P1566297724872405213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A048766 (n + 1) * A105209 (n + 1)).toNat

end

end A023970.P1566297724872405213

namespace A023970

/-- `A005369(A048766(n+1)*A105209(n+1))` -/
def P1566297724872405213.Spec : Prop :=
  ∀ n, P1566297724872405213.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P12434662147168853617

`and(1, A048762(8*(n+1)))`
-/

namespace A023970.P12434662147168853617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048762 (8 * (n + 1)))

end

end A023970.P12434662147168853617

namespace A023970

/-- `and(1, A048762(8*(n+1)))` -/
def P12434662147168853617.Spec : Prop :=
  ∀ n, P12434662147168853617.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P12143052569907544178

`and(1, A048766(8*(n+1)))`
-/

namespace A023970.P12143052569907544178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048766 (8 * (n + 1)))

end

end A023970.P12143052569907544178

namespace A023970

/-- `and(1, A048766(8*(n+1)))` -/
def P12143052569907544178.Spec : Prop :=
  ∀ n, P12143052569907544178.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P3439051715246443510

`A000035(A048766(8*(n+1)))`
-/

namespace A023970.P3439051715246443510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048766 (8 * (n + 1))).toNat

end

end A023970.P3439051715246443510

namespace A023970

/-- `A000035(A048766(8*(n+1)))` -/
def P3439051715246443510.Spec : Prop :=
  ∀ n, P3439051715246443510.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P714264438380669077

`A023971(A134917(n+1))`
-/

namespace A023970.P714264438380669077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A134917 (n + 1)).toNat

end

end A023970.P714264438380669077

namespace A023970

/-- `A023971(A134917(n+1))` -/
def P714264438380669077.Spec : Prop :=
  ∀ n, P714264438380669077.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P10146381423605362334

`A023973((n+1)²)`
-/

namespace A023970.P10146381423605362334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023973 ((n + 1) ^ 2)

end

end A023970.P10146381423605362334

namespace A023970

/-- `A023973((n+1)²)` -/
def P10146381423605362334.Spec : Prop :=
  ∀ n, P10146381423605362334.a n = A023970 (n + 1)

end A023970

/-! ## A023970.P16010100622107919244

`A023974(A078472(n+1))`
-/

namespace A023970.P16010100622107919244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023974 (A078472 (n + 1)).toNat

end

end A023970.P16010100622107919244

namespace A023970

/-- `A023974(A078472(n+1))` -/
def P16010100622107919244.Spec : Prop :=
  ∀ n, P16010100622107919244.a n = A023970 (n + 1)

end A023970

/-!
# A023971: First bit in fractional part of binary expansion of 4th root of n.

The programs for A023971, the canonical program `A023971.P7232303844363020836` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023971 has offset 1).

The definition of A023971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023971.P7232303844363020836

`floor(2*(n+1)^(1/4))%2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023971

/-- `floor(2*(n+1)^(1/4))%2` -/
def P7232303844363020836.Spec : Prop :=
  ∀ n, P7232303844363020836.a n = A023971 (n + 1)

theorem P7232303844363020836.correct : P7232303844363020836.Spec := by
  intro n
  simp only [A023971, Nat.add_sub_cancel]

end A023971

/-! ## A023971.P13121480864509966673

`and(1, floor(2*sqrt(sqrt(n+1))))`
-/

namespace A023971.P13121480864509966673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * Real.sqrt (Real.sqrt (n + 1 : ℝ))⌋

end

end A023971.P13121480864509966673

namespace A023971

/-- `and(1, floor(2*sqrt(sqrt(n+1))))` -/
def P13121480864509966673.Spec : Prop :=
  ∀ n, P13121480864509966673.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P3507656170665655426

`(floor(2*sqrt(sqrt(n+1)))%2)²`
-/

namespace A023971.P3507656170665655426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (Real.sqrt (n + 1 : ℝ))⌋ 2 ^ 2

end

end A023971.P3507656170665655426

namespace A023971

/-- `(floor(2*sqrt(sqrt(n+1)))%2)²` -/
def P3507656170665655426.Spec : Prop :=
  ∀ n, P3507656170665655426.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P282780903401931592

`round(A023963(n+1)/10)`
-/

namespace A023971.P282780903401931592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023963 (n + 1) : ℚ) / 10)

end

end A023971.P282780903401931592

namespace A023971

/-- `round(A023963(n+1)/10)` -/
def P282780903401931592.Spec : Prop :=
  ∀ n, P282780903401931592.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P661453380381700199

`A000035(floor(2*sqrt(sqrt(n+1))))`
-/

namespace A023971.P661453380381700199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊2 * Real.sqrt (Real.sqrt (n + 1 : ℝ))⌋.toNat

end

end A023971.P661453380381700199

namespace A023971

/-- `A000035(floor(2*sqrt(sqrt(n+1))))` -/
def P661453380381700199.Spec : Prop :=
  ∀ n, P661453380381700199.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P55853687995406614

`A286055(floor(2*sqrt(sqrt(n+1)))²+1)`
-/

namespace A023971.P55853687995406614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (⌊2 * Real.sqrt (Real.sqrt (n + 1 : ℝ))⌋ ^ 2 + 1).toNat

end

end A023971.P55853687995406614

namespace A023971

/-- `A286055(floor(2*sqrt(sqrt(n+1)))²+1)` -/
def P55853687995406614.Spec : Prop :=
  ∀ n, P55853687995406614.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P9188181173590041947

`A339276(n+1)-A000196(A000196(n+1))`
-/

namespace A023971.P9188181173590041947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (n + 1) - A000196 (A000196 (n + 1)).toNat

end

end A023971.P9188181173590041947

namespace A023971

/-- `A339276(n+1)-A000196(A000196(n+1))` -/
def P9188181173590041947.Spec : Prop :=
  ∀ n, P9188181173590041947.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P7923053034706309

`A339276(n+1)-Δ[A032512(n)]`
-/

namespace A023971.P7923053034706309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023971.P7923053034706309

namespace A023971

/-- `A339276(n+1)-Δ[A032512(n)]` -/
def P7923053034706309.Spec : Prop :=
  ∀ n, P7923053034706309.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P584389011520494462

`A339276(n+1)-A255270(n+1)`
-/

namespace A023971.P584389011520494462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (n + 1) - A255270 (n + 1)

end

end A023971.P584389011520494462

namespace A023971

/-- `A339276(n+1)-A255270(n+1)` -/
def P584389011520494462.Spec : Prop :=
  ∀ n, P584389011520494462.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P1590455794040600314

`A339276(n+1)+A032512(n)-A032512(n+1)`
-/

namespace A023971.P1590455794040600314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (n + 1) + (A032512 n - A032512 (n + 1))

end

end A023971.P1590455794040600314

namespace A023971

/-- `A339276(n+1)+A032512(n)-A032512(n+1)` -/
def P1590455794040600314.Spec : Prop :=
  ∀ n, P1590455794040600314.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P7203550063167467061

`A023973(A000093(n+1))`
-/

namespace A023971.P7203550063167467061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023973 (A000093 (n + 1)).toNat

end

end A023971.P7203550063167467061

namespace A023971

/-- `A023973(A000093(n+1))` -/
def P7203550063167467061.Spec : Prop :=
  ∀ n, P7203550063167467061.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P1359843696113993592

`A023973(A002821(n+1))`
-/

namespace A023971.P1359843696113993592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023973 (A002821 (n + 1)).toNat

end

end A023971.P1359843696113993592

namespace A023971

/-- `A023973(A002821(n+1))` -/
def P1359843696113993592.Spec : Prop :=
  ∀ n, P1359843696113993592.a n = A023971 (n + 1)

end A023971

/-! ## A023971.P15697050777287503204

`A023975((n+1)²)`
-/

namespace A023971.P15697050777287503204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023975 ((n + 1) ^ 2)

end

end A023971.P15697050777287503204

namespace A023971

/-- `A023975((n+1)²)` -/
def P15697050777287503204.Spec : Prop :=
  ∀ n, P15697050777287503204.a n = A023971 (n + 1)

end A023971

/-!
# A023972: First bit in fractional part of binary expansion of 5th root of n.

The programs for A023972, the canonical program `A023972.P17822606851280342829` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023972 has offset 1).

The definition of A023972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023972.P17811602531580911452

`and(1, -floor(2*root(n+1, 5)))`
-/

namespace A023972.P17811602531580911452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-⌊2 * (n + 1 : ℝ) ^ (1 / (5 : ℝ))⌋)

end

end A023972.P17811602531580911452

namespace A023972

/-- `and(1, -floor(2*root(n+1, 5)))` -/
def P17811602531580911452.Spec : Prop :=
  ∀ n, P17811602531580911452.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P419638889652616977

`floor(2*sqrt(root((n+1)², 5)))%2`
-/

namespace A023972.P419638889652616977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (((n + 1) ^ 2 : ℝ) ^ (1 / (5 : ℝ)))⌋ 2

end

end A023972.P419638889652616977

namespace A023972

/-- `floor(2*sqrt(root((n+1)², 5)))%2` -/
def P419638889652616977.Spec : Prop :=
  ∀ n, P419638889652616977.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P1100008783895992416

`floor(floor(10*root(n+1, 5))%10/5)`
-/

namespace A023972.P1100008783895992416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod ⌊10 * (n + 1 : ℝ) ^ (1 / (5 : ℝ))⌋ 10 : ℚ) / 5⌋

end

end A023972.P1100008783895992416

namespace A023972

/-- `floor(floor(10*root(n+1, 5))%10/5)` -/
def P1100008783895992416.Spec : Prop :=
  ∀ n, P1100008783895992416.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P17822606851280342829

`floor(A023964(n+1)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023972

/-- `floor(A023964(n+1)/5)` -/
def P17822606851280342829.Spec : Prop :=
  ∀ n, P17822606851280342829.a n = A023972 (n + 1)

theorem P17822606851280342829.correct : P17822606851280342829.Spec := by
  intro n
  simp only [A023972, Nat.add_sub_cancel]

end A023972

/-! ## A023972.P7176318762528882572

`A023971(A023964(n+1)+gcd(n, n+1))`
-/

namespace A023972.P7176318762528882572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A023964 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A023972.P7176318762528882572

namespace A023972

/-- `A023971(A023964(n+1)+gcd(n, n+1))` -/
def P7176318762528882572.Spec : Prop :=
  ∀ n, P7176318762528882572.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P14223904528492700024

`A023971(A057979(2*n)+A023964(n+1))`
-/

namespace A023972.P14223904528492700024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A057979 (2 * n) + A023964 (n + 1)).toNat

end

end A023972.P14223904528492700024

namespace A023972

/-- `A023971(A057979(2*n)+A023964(n+1))` -/
def P14223904528492700024.Spec : Prop :=
  ∀ n, P14223904528492700024.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P17960999687712780793

`A000035(∑[A004741(n+1)*A099777(n+1)])`
-/

namespace A023972.P17960999687712780793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) * A099777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023972.P17960999687712780793

namespace A023972

/-- `A000035(∑[A004741(n+1)*A099777(n+1)])` -/
def P17960999687712780793.Spec : Prop :=
  ∀ n, P17960999687712780793.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P14466461480301892428

`A134391(∑[A175362((n+1)²)])`
-/

namespace A023972.P14466461480301892428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023972.P14466461480301892428

namespace A023972

/-- `A134391(∑[A175362((n+1)²)])` -/
def P14466461480301892428.Spec : Prop :=
  ∀ n, P14466461480301892428.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P3983449398597779354

`ceil(cos(log2(A225087(n+4))))`
-/

namespace A023972.P3983449398597779354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Real.logb 2 (A225087 (n + 4) : ℝ))⌉

end

end A023972.P3983449398597779354

namespace A023972

/-- `ceil(cos(log2(A225087(n+4))))` -/
def P3983449398597779354.Spec : Prop :=
  ∀ n, P3983449398597779354.a n = A023972 (n + 1)

end A023972

/-! ## A023972.P7182799786338078734

`A173923(A062383(n+1)-2)`
-/

namespace A023972.P7182799786338078734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173923 (A062383 (n + 1) - 2).toNat

end

end A023972.P7182799786338078734

namespace A023972

/-- `A173923(A062383(n+1)-2)` -/
def P7182799786338078734.Spec : Prop :=
  ∀ n, P7182799786338078734.a n = A023972 (n + 1)

end A023972

/-!
# A023973: First bit in fractional part of binary expansion of 6th root of n.

The programs for A023973, the canonical program `A023973.P17052429324411153139` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023973 has offset 1).

The definition of A023973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023973.P17052429324411153139

`floor(A023965(n+1)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023973

/-- `floor(A023965(n+1)/5)` -/
def P17052429324411153139.Spec : Prop :=
  ∀ n, P17052429324411153139.a n = A023973 (n + 1)

theorem P17052429324411153139.correct : P17052429324411153139.Spec := by
  intro n
  simp only [A023973, Nat.add_sub_cancel]

end A023973

/-! ## A023973.P13304754026306354395

`A023971(A023965(n+1)+gcd(n, n+1))`
-/

namespace A023973.P13304754026306354395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A023965 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A023973.P13304754026306354395

namespace A023973

/-- `A023971(A023965(n+1)+gcd(n, n+1))` -/
def P13304754026306354395.Spec : Prop :=
  ∀ n, P13304754026306354395.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P17394980194397419500

`A023971(A057979(2*n)+A023965(n+1))`
-/

namespace A023973.P17394980194397419500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A057979 (2 * n) + A023965 (n + 1)).toNat

end

end A023973.P17394980194397419500

namespace A023973

/-- `A023971(A057979(2*n)+A023965(n+1))` -/
def P17394980194397419500.Spec : Prop :=
  ∀ n, P17394980194397419500.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P5196602555103890820

`A023971(A023965(n+1)+A014963(15*(n+1)))`
-/

namespace A023973.P5196602555103890820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A023965 (n + 1) + A014963 (15 * (n + 1))).toNat

end

end A023973.P5196602555103890820

namespace A023973

/-- `A023971(A023965(n+1)+A014963(15*(n+1)))` -/
def P5196602555103890820.Spec : Prop :=
  ∀ n, P5196602555103890820.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P11305985888890683556

`A023976(A000093(n+1))`
-/

namespace A023973.P11305985888890683556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023976 (A000093 (n + 1)).toNat

end

end A023973.P11305985888890683556

namespace A023973

/-- `A023976(A000093(n+1))` -/
def P11305985888890683556.Spec : Prop :=
  ∀ n, P11305985888890683556.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P12198969378001451972

`A023976(A077121(n+1))`
-/

namespace A023973.P12198969378001451972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023976 (A077121 (n + 1)).toNat

end

end A023973.P12198969378001451972

namespace A023973

/-- `A023976(A077121(n+1))` -/
def P12198969378001451972.Spec : Prop :=
  ∀ n, P12198969378001451972.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P3832074783905411880

`A275855(A004768(7*n)+2)`
-/

namespace A023973.P3832074783905411880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (A004768 (7 * n) + 2).toNat

end

end A023973.P3832074783905411880

namespace A023973

/-- `A275855(A004768(7*n)+2)` -/
def P3832074783905411880.Spec : Prop :=
  ∀ n, P3832074783905411880.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P12555145900088347227

`A138886(A248418(n+3)+38)`
-/

namespace A023973.P12555145900088347227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138886 (A248418 (n + 3) + 38).toNat

end

end A023973.P12555145900088347227

namespace A023973

/-- `A138886(A248418(n+3)+38)` -/
def P12555145900088347227.Spec : Prop :=
  ∀ n, P12555145900088347227.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P3083241788495558958

`∑[A121373(A167614(n+1)-A196564(n))]`
-/

namespace A023973.P3083241788495558958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A167614 (n + 1) - A196564 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023973.P3083241788495558958

namespace A023973

/-- `∑[A121373(A167614(n+1)-A196564(n))]` -/
def P3083241788495558958.Spec : Prop :=
  ∀ n, P3083241788495558958.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P6120304357624341375

`A030300(A265917(n+1)+A043063(n+1))`
-/

namespace A023973.P6120304357624341375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A265917 (n + 1) + A043063 (n + 1)).toNat

end

end A023973.P6120304357624341375

namespace A023973

/-- `A030300(A265917(n+1)+A043063(n+1))` -/
def P6120304357624341375.Spec : Prop :=
  ∀ n, P6120304357624341375.a n = A023973 (n + 1)

end A023973

/-! ## A023973.P8270229918177341950

`floor(A309231(n+1)/A235807(A155147(n+1)))`
-/

namespace A023973.P8270229918177341950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309231 (n + 1) : ℚ) / (A235807 (A155147 (n + 1)).toNat : ℚ)⌋

end

end A023973.P8270229918177341950

namespace A023973

/-- `floor(A309231(n+1)/A235807(A155147(n+1)))` -/
def P8270229918177341950.Spec : Prop :=
  ∀ n, P8270229918177341950.a n = A023973 (n + 1)

end A023973

/-!
# A023974: First bit in fractional part of binary expansion of 7th root of n.

The programs for A023974, the canonical program `A023974.P8641852116517803586` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023974 has offset 1).

The definition of A023974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023974.P11098795937227895308

`floor(floor(10*root(n+1, 7))%10/5)`
-/

namespace A023974.P11098795937227895308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod ⌊10 * (n + 1 : ℝ) ^ (1 / (7 : ℝ))⌋ 10 : ℚ) / 5⌋

end

end A023974.P11098795937227895308

namespace A023974

/-- `floor(floor(10*root(n+1, 7))%10/5)` -/
def P11098795937227895308.Spec : Prop :=
  ∀ n, P11098795937227895308.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P8641852116517803586

`floor(A023966(n+1)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023974

/-- `floor(A023966(n+1)/5)` -/
def P8641852116517803586.Spec : Prop :=
  ∀ n, P8641852116517803586.a n = A023974 (n + 1)

theorem P8641852116517803586.correct : P8641852116517803586.Spec := by
  intro n
  simp only [A023974, Nat.add_sub_cancel]

end A023974

/-! ## A023974.P2890108438505926654

`A023971(A023966(n+1)+gcd(n, n+1))`
-/

namespace A023974.P2890108438505926654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A023966 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A023974.P2890108438505926654

namespace A023974

/-- `A023971(A023966(n+1)+gcd(n, n+1))` -/
def P2890108438505926654.Spec : Prop :=
  ∀ n, P2890108438505926654.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P10552288362227688138

`A023971(A057979(2*n)+A023966(n+1))`
-/

namespace A023974.P10552288362227688138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A057979 (2 * n) + A023966 (n + 1)).toNat

end

end A023974.P10552288362227688138

namespace A023974

/-- `A023971(A057979(2*n)+A023966(n+1))` -/
def P10552288362227688138.Spec : Prop :=
  ∀ n, P10552288362227688138.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P4497593106472644174

`A023971(A023966(n+1)+A014963(15*(n+1)))`
-/

namespace A023974.P4497593106472644174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A023966 (n + 1) + A014963 (15 * (n + 1))).toNat

end

end A023974.P4497593106472644174

namespace A023974

/-- `A023971(A023966(n+1)+A014963(15*(n+1)))` -/
def P4497593106472644174.Spec : Prop :=
  ∀ n, P4497593106472644174.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P13975348110732528633

`A291900(round(log(A215798(n+1))))`
-/

namespace A023974.P13975348110732528633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291900 (SequenceMachineLib.roundAway (Real.log (A215798 (n + 1) : ℝ))).toNat

end

end A023974.P13975348110732528633

namespace A023974

/-- `A291900(round(log(A215798(n+1))))` -/
def P13975348110732528633.Spec : Prop :=
  ∀ n, P13975348110732528633.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P10186137055671440810

`A087624(2^A235043(n))`
-/

namespace A023974.P10186137055671440810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A235043 n : ℤ))).toNat

end

end A023974.P10186137055671440810

namespace A023974

/-- `A087624(2^A235043(n))` -/
def P10186137055671440810.Spec : Prop :=
  ∀ n, P10186137055671440810.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P11713790299286175315

`A271420(∏[A160094(n+3)])`
-/

namespace A023974.P11713790299286175315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271420 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023974.P11713790299286175315

namespace A023974

/-- `A271420(∏[A160094(n+3)])` -/
def P11713790299286175315.Spec : Prop :=
  ∀ n, P11713790299286175315.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P3287431540312128975

`val(A058035(2^A235043(n)), 4)`
-/

namespace A023974.P3287431540312128975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A058035 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A235043 n : ℤ))).toNat).toNat 4

end

end A023974.P3287431540312128975

namespace A023974

/-- `val(A058035(2^A235043(n)), 4)` -/
def P3287431540312128975.Spec : Prop :=
  ∀ n, (P3287431540312128975.a n : ℤ) = A023974 (n + 1)

end A023974

/-! ## A023974.P8859953946427804925

`A043545(∑[A044939(n+1)]^3)`
-/

namespace A023974.P8859953946427804925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3).toNat

end

end A023974.P8859953946427804925

namespace A023974

/-- `A043545(∑[A044939(n+1)]^3)` -/
def P8859953946427804925.Spec : Prop :=
  ∀ n, P8859953946427804925.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P17390986546683410637

`a(n-1)^A202995(A077028(n))` with `a(0)=0`
-/

namespace A023974.P17390986546683410637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ (A202995 (A077028 n).toNat : ℤ)

end

end A023974.P17390986546683410637

namespace A023974

/-- `a(n-1)^A202995(A077028(n))` -/
def P17390986546683410637.Spec : Prop :=
  ∀ n, P17390986546683410637.a n = (A023974 (n + 1) : ℚ)

end A023974

/-! ## A023974.P15016002567044566029

`A254001(∑[A266326(2*n+1)]!)`
-/

namespace A023974.P15016002567044566029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266326 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254001 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A023974.P15016002567044566029

namespace A023974

/-- `A254001(∑[A266326(2*n+1)]!)` -/
def P15016002567044566029.Spec : Prop :=
  ∀ n, P15016002567044566029.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P16498405825608500070

`a(n-1)^A345238(A345229(n+1))` with `a(0)=0`
-/

namespace A023974.P16498405825608500070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ (A345238 (A345229 (n + 1)).toNat : ℤ)

end

end A023974.P16498405825608500070

namespace A023974

/-- `a(n-1)^A345238(A345229(n+1))` -/
def P16498405825608500070.Spec : Prop :=
  ∀ n, P16498405825608500070.a n = (A023974 (n + 1) : ℚ)

end A023974

/-! ## A023974.P10064518680705089627

`A016151(lcm(A016168(n), A224559(n+1)))`
-/

namespace A023974.P10064518680705089627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (Int.lcm (A016168 n) (A224559 (n + 1)))

end

end A023974.P10064518680705089627

namespace A023974

/-- `A016151(lcm(A016168(n), A224559(n+1)))` -/
def P10064518680705089627.Spec : Prop :=
  ∀ n, P10064518680705089627.a n = A023974 (n + 1)

end A023974

/-! ## A023974.P1436111111530468618

`A130543(A065685(n+1)*A347100(n+1))`
-/

namespace A023974.P1436111111530468618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A065685 (n + 1) * A347100 (n + 1)).toNat

end

end A023974.P1436111111530468618

namespace A023974

/-- `A130543(A065685(n+1)*A347100(n+1))` -/
def P1436111111530468618.Spec : Prop :=
  ∀ n, P1436111111530468618.a n = A023974 (n + 1)

end A023974

/-!
# A023975: First bit in fractional part of binary expansion of 8th root of n.

The programs for A023975, the canonical program `A023975.P2350897218727171919` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023975 has offset 1).

The definition of A023975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023975.P2350897218727171919

`floor(A023967(n+1)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023975

/-- `floor(A023967(n+1)/5)` -/
def P2350897218727171919.Spec : Prop :=
  ∀ n, P2350897218727171919.a n = A023975 (n + 1)

theorem P2350897218727171919.correct : P2350897218727171919.Spec := by
  intro n
  simp only [A023975, Nat.add_sub_cancel]

end A023975

/-! ## A023975.P331168868421587908

`ceil((A055642(A186113(3*n+4))+1)/2)-2`
-/

namespace A023975.P331168868421587908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055642 (A186113 (3 * n + 4)).toNat + 1 : ℚ) / 2⌉ - 2

end

end A023975.P331168868421587908

namespace A023975

/-- `ceil((A055642(A186113(3*n+4))+1)/2)-2` -/
def P331168868421587908.Spec : Prop :=
  ∀ n, P331168868421587908.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P3536818457319485644

`A297041(A115384(n)^A297044(n+1))`
-/

namespace A023975.P3536818457319485644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297041 (SequenceMachineLib.roundAway ((A115384 n : ℚ) ^ (A297044 (n + 1) : ℤ))).toNat

end

end A023975.P3536818457319485644

namespace A023975

/-- `A297041(A115384(n)^A297044(n+1))` -/
def P3536818457319485644.Spec : Prop :=
  ∀ n, P3536818457319485644.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P11679084899621240642

`A297045(A057359(n+3)^A297044(n+1))`
-/

namespace A023975.P11679084899621240642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297045 (SequenceMachineLib.roundAway ((A057359 (n + 3) : ℚ) ^ (A297044 (n + 1) : ℤ))).toNat

end

end A023975.P11679084899621240642

namespace A023975

/-- `A297045(A057359(n+3)^A297044(n+1))` -/
def P11679084899621240642.Spec : Prop :=
  ∀ n, P11679084899621240642.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P14582195314525600560

`A057427(A010848(3*n+1)*A235044(n))`
-/

namespace A023975.P14582195314525600560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A010848 (3 * n + 1) * A235044 n).toNat

end

end A023975.P14582195314525600560

namespace A023975

/-- `A057427(A010848(3*n+1)*A235044(n))` -/
def P14582195314525600560.Spec : Prop :=
  ∀ n, P14582195314525600560.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P15955086854206166589

`C(A086071(A051205(3*n+2)), A143671(n+1))`
-/

namespace A023975.P15955086854206166589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086071 (A051205 (3 * n + 2)).toNat).toNat (A143671 (n + 1)).toNat

end

end A023975.P15955086854206166589

namespace A023975

/-- `C(A086071(A051205(3*n+2)), A143671(n+1))` -/
def P15955086854206166589.Spec : Prop :=
  ∀ n, (P15955086854206166589.a n : ℤ) = A023975 (n + 1)

end A023975

/-! ## A023975.P12212455168202750359

`round(A048926(2*(n+2))/A345785(n+1))`
-/

namespace A023975.P12212455168202750359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048926 (2 * (n + 2)) : ℚ) / (A345785 (n + 1) : ℚ))

end

end A023975.P12212455168202750359

namespace A023975

/-- `round(A048926(2*(n+2))/A345785(n+1))` -/
def P12212455168202750359.Spec : Prop :=
  ∀ n, P12212455168202750359.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P16782051933003496209

`C(A127819(n+1), A162321(8*(n+2)))`
-/

namespace A023975.P16782051933003496209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127819 (n + 1)).toNat (A162321 (8 * (n + 2))).toNat

end

end A023975.P16782051933003496209

namespace A023975

/-- `C(A127819(n+1), A162321(8*(n+2)))` -/
def P16782051933003496209.Spec : Prop :=
  ∀ n, (P16782051933003496209.a n : ℤ) = A023975 (n + 1)

end A023975

/-! ## A023975.P2934779244199254615

`floor(atan(atan(A188346(n))))`
-/

namespace A023975.P2934779244199254615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Real.arctan (A188346 n : ℝ))⌋

end

end A023975.P2934779244199254615

namespace A023975

/-- `floor(atan(atan(A188346(n))))` -/
def P2934779244199254615.Spec : Prop :=
  ∀ n, P2934779244199254615.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P61286751522141727

`A000040(4^floor(n/25))%2`
-/

namespace A023975.P61286751522141727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌊(n : ℚ) / 25⌋ : ℤ))).toNat) 2

end

end A023975.P61286751522141727

namespace A023975

/-- `A000040(4^floor(n/25))%2` -/
def P61286751522141727.Spec : Prop :=
  ∀ n, P61286751522141727.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P16102865142755833113

`floor(A027585(n)/A027589(n+1))`
-/

namespace A023975.P16102865142755833113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027585 n : ℚ) / (A027589 (n + 1) : ℚ)⌋

end

end A023975.P16102865142755833113

namespace A023975

/-- `floor(A027585(n)/A027589(n+1))` -/
def P16102865142755833113.Spec : Prop :=
  ∀ n, P16102865142755833113.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P2736322646317954351

`floor(n²/A321774(A000096(n+4)+7))`
-/

namespace A023975.P2736322646317954351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / (A321774 (A000096 (n + 4) + 7).toNat : ℚ)⌋

end

end A023975.P2736322646317954351

namespace A023975

/-- `floor(n²/A321774(A000096(n+4)+7))` -/
def P2736322646317954351.Spec : Prop :=
  ∀ n, P2736322646317954351.a n = A023975 (n + 1)

end A023975

/-! ## A023975.P1872608466198787341

`∑[A064911(A142764(n+1)-A064911(n+1))]`
-/

namespace A023975.P1872608466198787341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A142764 (n + 1) - A064911 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023975.P1872608466198787341

namespace A023975

/-- `∑[A064911(A142764(n+1)-A064911(n+1))]` -/
def P1872608466198787341.Spec : Prop :=
  ∀ n, P1872608466198787341.a n = A023975 (n + 1)

end A023975

/-!
# A023976: First bit in fractional part of binary expansion of 9th root of n.

The programs for A023976, the canonical program `A023976.P4764256896541952317` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023976 has offset 1).

The definition of A023976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023976.P4764256896541952317

`floor(A023968(n+1)/5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023976

/-- `floor(A023968(n+1)/5)` -/
def P4764256896541952317.Spec : Prop :=
  ∀ n, P4764256896541952317.a n = A023976 (n + 1)

theorem P4764256896541952317.correct : P4764256896541952317.Spec := by
  intro n
  simp only [A023976, Nat.add_sub_cancel]

end A023976

/-! ## A023976.P13802513422106324812

`C(A074674(n+1), A162321(A003814(n+1)))`
-/

namespace A023976.P13802513422106324812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074674 (n + 1)).toNat (A162321 (A003814 (n + 1)).toNat).toNat

end

end A023976.P13802513422106324812

namespace A023976

/-- `C(A074674(n+1), A162321(A003814(n+1)))` -/
def P13802513422106324812.Spec : Prop :=
  ∀ n, (P13802513422106324812.a n : ℤ) = A023976 (n + 1)

end A023976

/-! ## A023976.P17081272374834212800

`C(A241752(2*n+1), A162321(A003814(n+1)))`
-/

namespace A023976.P17081272374834212800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A241752 (2 * n + 1)).toNat (A162321 (A003814 (n + 1)).toNat).toNat

end

end A023976.P17081272374834212800

namespace A023976

/-- `C(A241752(2*n+1), A162321(A003814(n+1)))` -/
def P17081272374834212800.Spec : Prop :=
  ∀ n, (P17081272374834212800.a n : ℤ) = A023976 (n + 1)

end A023976

/-! ## A023976.P15605804607149814473

`A000007(floor(A161156(2*n+1)/A014407(n+1)))`
-/

namespace A023976.P15605804607149814473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A161156 (2 * n + 1) : ℚ) / (A014407 (n + 1) : ℚ)⌋.toNat

end

end A023976.P15605804607149814473

namespace A023976

/-- `A000007(floor(A161156(2*n+1)/A014407(n+1)))` -/
def P15605804607149814473.Spec : Prop :=
  ∀ n, P15605804607149814473.a n = A023976 (n + 1)

end A023976

/-! ## A023976.P6412550703784417415

`round(A109611(n+1)/A045979(2*(n+2)))`
-/

namespace A023976.P6412550703784417415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109611 (n + 1) : ℚ) / (A045979 (2 * (n + 2)) : ℚ))

end

end A023976.P6412550703784417415

namespace A023976

/-- `round(A109611(n+1)/A045979(2*(n+2)))` -/
def P6412550703784417415.Spec : Prop :=
  ∀ n, P6412550703784417415.a n = A023976 (n + 1)

end A023976

/-! ## A023976.P6952704428602640012

`C(A204878(2*(n+2)), A162301(A250120(n)))`
-/

namespace A023976.P6952704428602640012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204878 (2 * (n + 2))).toNat (A162301 (A250120 n).toNat).toNat

end

end A023976.P6952704428602640012

namespace A023976

/-- `C(A204878(2*(n+2)), A162301(A250120(n)))` -/
def P6952704428602640012.Spec : Prop :=
  ∀ n, (P6952704428602640012.a n : ℤ) = A023976 (n + 1)

end A023976

/-! ## A023976.P12623672708004862867

`C(A194591(2*n+3), A162301(A250120(n)))`
-/

namespace A023976.P12623672708004862867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194591 (2 * n + 3)).toNat (A162301 (A250120 n).toNat).toNat

end

end A023976.P12623672708004862867

namespace A023976

/-- `C(A194591(2*n+3), A162301(A250120(n)))` -/
def P12623672708004862867.Spec : Prop :=
  ∀ n, (P12623672708004862867.a n : ℤ) = A023976 (n + 1)

end A023976

/-! ## A023976.P11925413894339150964

`A185118(A131996(2*n+5)-1)`
-/

namespace A023976.P11925413894339150964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 (A131996 (2 * n + 5) - 1).toNat

end

end A023976.P11925413894339150964

namespace A023976

/-- `A185118(A131996(2*n+5)-1)` -/
def P11925413894339150964.Spec : Prop :=
  ∀ n, P11925413894339150964.a n = A023976 (n + 1)

end A023976

/-! ## A023976.P16807155730027310075

`round(A020319(n+1)/A020321(n+1))`
-/

namespace A023976.P16807155730027310075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020319 (n + 1) : ℚ) / (A020321 (n + 1) : ℚ))

end

end A023976.P16807155730027310075

namespace A023976

/-- `round(A020319(n+1)/A020321(n+1))` -/
def P16807155730027310075.Spec : Prop :=
  ∀ n, P16807155730027310075.a n = A023976 (n + 1)

end A023976

/-! ## A023976.P6106648500940120454

`a(n-1)^A229892(A298426(n+1))` with `a(0)=0`
-/

namespace A023976.P6106648500940120454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ (A229892 (A298426 (n + 1)).toNat : ℤ)

end

end A023976.P6106648500940120454

namespace A023976

/-- `a(n-1)^A229892(A298426(n+1))` -/
def P6106648500940120454.Spec : Prop :=
  ∀ n, P6106648500940120454.a n = (A023976 (n + 1) : ℚ)

end A023976

/-! ## A023976.P18161297336952682907

`C(A053239(A044822(n+1)), A162210(n+4))`
-/

namespace A023976.P18161297336952682907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053239 (A044822 (n + 1)).toNat).toNat (A162210 (n + 4)).toNat

end

end A023976.P18161297336952682907

namespace A023976

/-- `C(A053239(A044822(n+1)), A162210(n+4))` -/
def P18161297336952682907.Spec : Prop :=
  ∀ n, (P18161297336952682907.a n : ℤ) = A023976 (n + 1)

end A023976

/-! ## A023976.P16431359127221881679

`floor(A055010(n)/A170108(n))`
-/

namespace A023976.P16431359127221881679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055010 n : ℚ) / (A170108 n : ℚ)⌋

end

end A023976.P16431359127221881679

namespace A023976

/-- `floor(A055010(n)/A170108(n))` -/
def P16431359127221881679.Spec : Prop :=
  ∀ n, P16431359127221881679.a n = A023976 (n + 1)

end A023976

/-! ## A023976.P17653954200426667905

`floor(∑[1/A309627(n+1)])`
-/

namespace A023976.P17653954200426667905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A309627 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A023976.P17653954200426667905

namespace A023976

/-- `floor(∑[1/A309627(n+1)])` -/
def P17653954200426667905.Spec : Prop :=
  ∀ n, P17653954200426667905.a n = A023976 (n + 1)

end A023976

/-! ## A023976.P4250924735527436553

`A255920(∑{d}[A141263(n+1), A055642(#)])`
-/

namespace A023976.P4250924735527436553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (∑ d ∈ Nat.divisors (f1 n).natAbs, A055642 d).toNat

end

end A023976.P4250924735527436553

namespace A023976

/-- `A255920(∑{d}[A141263(n+1), A055642(#)])` -/
def P4250924735527436553.Spec : Prop :=
  ∀ n, P4250924735527436553.a n = A023976 (n + 1)

end A023976

/-! ## A023976.P18227301740012124276

`floor(A008035(n)/A003158(A167614(n+1)))`
-/

namespace A023976.P18227301740012124276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008035 n : ℚ) / (A003158 (A167614 (n + 1)).toNat : ℚ)⌋

end

end A023976.P18227301740012124276

namespace A023976

/-- `floor(A008035(n)/A003158(A167614(n+1)))` -/
def P18227301740012124276.Spec : Prop :=
  ∀ n, P18227301740012124276.a n = A023976 (n + 1)

end A023976

/-!
# A023977: First digit after the decimal point of the n-th root of n.

The programs for A023977, the canonical program `A023977.P10138684606312969785` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023977 has offset 1).

The definition of A023977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023977.P10138684606312969785

`floor(10*(root(n+1, n+1)-1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023977

/-- `floor(10*(root(n+1, n+1)-1))` -/
def P10138684606312969785.Spec : Prop :=
  ∀ n, P10138684606312969785.a n = A023977 (n + 1)

theorem P10138684606312969785.correct : P10138684606312969785.Spec := by
  intro n
  simp only [A023977, Nat.add_sub_cancel]

end A023977

/-!
# A023978: Sum of exponents in prime-power factorization of multinomial coefficient M(3n; n,n,n).

The programs for A023978, the canonical program `A023978.P11474590108139116730` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023978 has offset 0).

The definition of A023978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023978.P11474590108139116730

`A022559(3*n)-3*A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023978

/-- `A022559(3*n)-3*A022559(n)` -/
def P11474590108139116730.Spec : Prop :=
  ∀ n, P11474590108139116730.a n = A023978 n

theorem P11474590108139116730.correct : P11474590108139116730.Spec := by
  intro n
  simp only [A023978]

end A023978

/-! ## A023978.P9833437581933658613

`A023819(n)+A023816(n)`
-/

namespace A023978.P9833437581933658613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 n + A023816 n

end

end A023978.P9833437581933658613

namespace A023978

/-- `A023819(n)+A023816(n)` -/
def P9833437581933658613.Spec : Prop :=
  ∀ n, P9833437581933658613.a n = A023978 n

theorem P9833437581933658613.correct : P9833437581933658613.Spec := by
  intro n
  simp only [A023978, Nat.add_sub_cancel, A023978.P9833437581933658613.a, A023978.P11474590108139116730.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023819, A023819.P15358664152866393371.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023978

/-! ## A023978.P7621796620320223900

`A023979(n)-A023826(n)`
-/

namespace A023978.P7621796620320223900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - A023826 n

end

end A023978.P7621796620320223900

namespace A023978

/-- `A023979(n)-A023826(n)` -/
def P7621796620320223900.Spec : Prop :=
  ∀ n, P7621796620320223900.a n = A023978 n

theorem P7621796620320223900.correct : P7621796620320223900.Spec := by
  intro n
  simp only [A023978, Nat.add_sub_cancel, A023978.P7621796620320223900.a, A023978.P11474590108139116730.a, A022559, A022559.P10554250414511796107.a, A023826, A023826.P15834259250542609692.a, A023979, A023979.P10012353997069429693.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023978

/-! ## A023978.P11687422234459085741

`A023981(n)-A023982(n)`
-/

namespace A023978.P11687422234459085741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n - A023982 n

end

end A023978.P11687422234459085741

namespace A023978

/-- `A023981(n)-A023982(n)` -/
def P11687422234459085741.Spec : Prop :=
  ∀ n, P11687422234459085741.a n = A023978 n

theorem P11687422234459085741.correct : P11687422234459085741.Spec := by
  intro n
  simp only [A023978, Nat.add_sub_cancel, A023978.P11687422234459085741.a, A023978.P11474590108139116730.a, A022559, A022559.P10554250414511796107.a, A023981, A023981.P8513506632808306074.a, A023982, A023982.P10936420451098235543.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023978

/-! ## A023978.P9326325518985768239

`A023982(n)-A023987(n)`
-/

namespace A023978.P9326325518985768239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - A023987 n

end

end A023978.P9326325518985768239

namespace A023978

/-- `A023982(n)-A023987(n)` -/
def P9326325518985768239.Spec : Prop :=
  ∀ n, P9326325518985768239.a n = A023978 n

theorem P9326325518985768239.correct : P9326325518985768239.Spec := by
  intro n
  simp only [A023978, Nat.add_sub_cancel, A023978.P9326325518985768239.a, A023978.P11474590108139116730.a, A022559, A022559.P10554250414511796107.a, A023982, A023982.P10936420451098235543.a, A023987, A023987.P15737227295791123908.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023978

/-! ## A023978.P6510820214280412242

`A023980(n)-A023990(n)`
-/

namespace A023978.P6510820214280412242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n - A023990 n

end

end A023978.P6510820214280412242

namespace A023978

/-- `A023980(n)-A023990(n)` -/
def P6510820214280412242.Spec : Prop :=
  ∀ n, P6510820214280412242.a n = A023978 n

theorem P6510820214280412242.correct : P6510820214280412242.Spec := by
  intro n
  simp only [A023978, Nat.add_sub_cancel, A023978.P6510820214280412242.a, A023978.P11474590108139116730.a, A022559, A022559.P10554250414511796107.a, A023980, A023980.P13035758360106054050.a, A023990, A023990.P3946053488396366451.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023978

/-! ## A023978.P3692807198903991773

`A023819(n)+A023982(n)-A023847(n)`
-/

namespace A023978.P3692807198903991773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 n + (A023982 n - A023847 n)

end

end A023978.P3692807198903991773

namespace A023978

/-- `A023819(n)+A023982(n)-A023847(n)` -/
def P3692807198903991773.Spec : Prop :=
  ∀ n, P3692807198903991773.a n = A023978 n

theorem P3692807198903991773.correct : P3692807198903991773.Spec := by
  intro n
  simp only [A023978, Nat.add_sub_cancel, A023978.P3692807198903991773.a, A023978.P11474590108139116730.a, A022559, A022559.P10554250414511796107.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A023982, A023982.P10936420451098235543.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023978

/-! ## A023978.P16631375051098203459

`A023819(n)+A023979(n)-A023980(n)`
-/

namespace A023978.P16631375051098203459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 n + (A023979 n - A023980 n)

end

end A023978.P16631375051098203459

namespace A023978

/-- `A023819(n)+A023979(n)-A023980(n)` -/
def P16631375051098203459.Spec : Prop :=
  ∀ n, P16631375051098203459.a n = A023978 n

theorem P16631375051098203459.correct : P16631375051098203459.Spec := by
  intro n
  simp only [A023978, Nat.add_sub_cancel, A023978.P16631375051098203459.a, A023978.P11474590108139116730.a, A022559, A022559.P10554250414511796107.a, A023819, A023819.P15358664152866393371.a, A023979, A023979.P10012353997069429693.a, A023980, A023980.P13035758360106054050.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023978

/-!
# A023979: Sum of exponents in prime-power factorization of multinomial coefficient M(4n; n,n,n,n).

The programs for A023979, the canonical program `A023979.P10012353997069429693` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023979 has offset 0).

The definition of A023979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023979.P10012353997069429693

`A022559(4*n)-4*A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023979

/-- `A022559(4*n)-4*A022559(n)` -/
def P10012353997069429693.Spec : Prop :=
  ∀ n, P10012353997069429693.a n = A023979 n

theorem P10012353997069429693.correct : P10012353997069429693.Spec := by
  intro n
  simp only [A023979]

end A023979

/-! ## A023979.P15993950535666096870

`A023980(n)+A023816(n)`
-/

namespace A023979.P15993950535666096870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n + A023816 n

end

end A023979.P15993950535666096870

namespace A023979

/-- `A023980(n)+A023816(n)` -/
def P15993950535666096870.Spec : Prop :=
  ∀ n, P15993950535666096870.a n = A023979 n

theorem P15993950535666096870.correct : P15993950535666096870.Spec := by
  intro n
  simp only [A023979, Nat.add_sub_cancel, A023979.P15993950535666096870.a, A023979.P10012353997069429693.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023980, A023980.P13035758360106054050.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023979

/-! ## A023979.P12570657316500666437

`A023978(n)+A023826(n)`
-/

namespace A023979.P12570657316500666437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 n + A023826 n

end

end A023979.P12570657316500666437

namespace A023979

/-- `A023978(n)+A023826(n)` -/
def P12570657316500666437.Spec : Prop :=
  ∀ n, P12570657316500666437.a n = A023979 n

theorem P12570657316500666437.correct : P12570657316500666437.Spec := by
  intro n
  simp only [A023979, Nat.add_sub_cancel, A023979.P12570657316500666437.a, A023979.P10012353997069429693.a, A022559, A022559.P10554250414511796107.a, A023826, A023826.P15834259250542609692.a, A023978, A023978.P11474590108139116730.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023979

/-! ## A023979.P5031111844868944818

`A023981(n)-A023837(n)`
-/

namespace A023979.P5031111844868944818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n - A023837 n

end

end A023979.P5031111844868944818

namespace A023979

/-- `A023981(n)-A023837(n)` -/
def P5031111844868944818.Spec : Prop :=
  ∀ n, P5031111844868944818.a n = A023979 n

theorem P5031111844868944818.correct : P5031111844868944818.Spec := by
  intro n
  simp only [A023979, Nat.add_sub_cancel, A023979.P5031111844868944818.a, A023979.P10012353997069429693.a, A022559, A022559.P10554250414511796107.a, A023837, A023837.P5350256569569073344.a, A023981, A023981.P8513506632808306074.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023826, A023826.P15834259250542609692.a, A023982, A023982.P10936420451098235543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023979

/-! ## A023979.P1411757901601599942

`2*A023980(n)-A023834(n)`
-/

namespace A023979.P1411757901601599942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023980 n - A023834 n

end

end A023979.P1411757901601599942

namespace A023979

/-- `2*A023980(n)-A023834(n)` -/
def P1411757901601599942.Spec : Prop :=
  ∀ n, P1411757901601599942.a n = A023979 n

theorem P1411757901601599942.correct : P1411757901601599942.Spec := by
  intro n
  simp only [A023979, Nat.add_sub_cancel, A023979.P1411757901601599942.a, A023979.P10012353997069429693.a, A022559, A022559.P10554250414511796107.a, A023834, A023834.P16787518251000114194.a, A023980, A023980.P13035758360106054050.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023979

/-! ## A023979.P13508936105742262044

`A023816(n)+A023834(n)+A023816(n)`
-/

namespace A023979.P13508936105742262044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n + (A023834 n + A023816 n)

end

end A023979.P13508936105742262044

namespace A023979

/-- `A023816(n)+A023834(n)+A023816(n)` -/
def P13508936105742262044.Spec : Prop :=
  ∀ n, P13508936105742262044.a n = A023979 n

theorem P13508936105742262044.correct : P13508936105742262044.Spec := by
  intro n
  simp only [A023979, Nat.add_sub_cancel, A023979.P13508936105742262044.a, A023979.P10012353997069429693.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023979

/-! ## A023979.P3738714280175277323

`A023980(n)+A023982(n)-A023847(n)`
-/

namespace A023979.P3738714280175277323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n + (A023982 n - A023847 n)

end

end A023979.P3738714280175277323

namespace A023979

/-- `A023980(n)+A023982(n)-A023847(n)` -/
def P3738714280175277323.Spec : Prop :=
  ∀ n, P3738714280175277323.a n = A023979 n

theorem P3738714280175277323.correct : P3738714280175277323.Spec := by
  intro n
  simp only [A023979, Nat.add_sub_cancel, A023979.P3738714280175277323.a, A023979.P10012353997069429693.a, A022559, A022559.P10554250414511796107.a, A023847, A023847.P14275358432901394298.a, A023980, A023980.P13035758360106054050.a, A023982, A023982.P10936420451098235543.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023979

/-!
# A023980: Sum of exponents in prime-power factorization of multinomial coefficient M(4n;2n,n,n).

The programs for A023980, the canonical program `A023980.P13035758360106054050` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023980 has offset 0).

The definition of A023980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023980.P13035758360106054050

`A022559(4*n)-A022559(2*n)-2*A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023980

/-- `A022559(4*n)-A022559(2*n)-2*A022559(n)` -/
def P13035758360106054050.Spec : Prop :=
  ∀ n, P13035758360106054050.a n = A023980 n

theorem P13035758360106054050.correct : P13035758360106054050.Spec := by
  intro n
  simp only [A023980]

end A023980

/-! ## A023980.P9432137673838134479

`A023826(n)+A023819(n)`
-/

namespace A023980.P9432137673838134479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023826 n + A023819 n

end

end A023980.P9432137673838134479

namespace A023980

/-- `A023826(n)+A023819(n)` -/
def P9432137673838134479.Spec : Prop :=
  ∀ n, P9432137673838134479.a n = A023980 n

theorem P9432137673838134479.correct : P9432137673838134479.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P9432137673838134479.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023819, A023819.P15358664152866393371.a, A023826, A023826.P15834259250542609692.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P15919479040195884150

`A023834(n)+A023816(n)`
-/

namespace A023980.P15919479040195884150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n + A023816 n

end

end A023980.P15919479040195884150

namespace A023980

/-- `A023834(n)+A023816(n)` -/
def P15919479040195884150.Spec : Prop :=
  ∀ n, P15919479040195884150.a n = A023980 n

theorem P15919479040195884150.correct : P15919479040195884150.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P15919479040195884150.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P18080074195862599194

`A023990(n)+A023978(n)`
-/

namespace A023980.P18080074195862599194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 n + A023978 n

end

end A023980.P18080074195862599194

namespace A023980

/-- `A023990(n)+A023978(n)` -/
def P18080074195862599194.Spec : Prop :=
  ∀ n, P18080074195862599194.a n = A023980 n

theorem P18080074195862599194.correct : P18080074195862599194.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P18080074195862599194.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023978, A023978.P11474590108139116730.a, A023990, A023990.P3946053488396366451.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P423747902889111950

`A023979(n)-A023816(n)`
-/

namespace A023980.P423747902889111950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - A023816 n

end

end A023980.P423747902889111950

namespace A023980

/-- `A023979(n)-A023816(n)` -/
def P423747902889111950.Spec : Prop :=
  ∀ n, P423747902889111950.a n = A023980 n

theorem P423747902889111950.correct : P423747902889111950.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P423747902889111950.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023979, A023979.P10012353997069429693.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P12863910230227897018

`A023816(n)+A023986(n)+A023816(n)`
-/

namespace A023980.P12863910230227897018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n + (A023986 n + A023816 n)

end

end A023980.P12863910230227897018

namespace A023980

/-- `A023816(n)+A023986(n)+A023816(n)` -/
def P12863910230227897018.Spec : Prop :=
  ∀ n, P12863910230227897018.a n = A023980 n

theorem P12863910230227897018.correct : P12863910230227897018.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P12863910230227897018.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023986, A023986.P6172043282524275894.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023834, A023834.P16787518251000114194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P10903693169430781433

`A023834(n)+A023834(n)-A023986(n)`
-/

namespace A023980.P10903693169430781433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n + (A023834 n - A023986 n)

end

end A023980.P10903693169430781433

namespace A023980

/-- `A023834(n)+A023834(n)-A023986(n)` -/
def P10903693169430781433.Spec : Prop :=
  ∀ n, P10903693169430781433.a n = A023980 n

theorem P10903693169430781433.correct : P10903693169430781433.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P10903693169430781433.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023834, A023834.P16787518251000114194.a, A023986, A023986.P6172043282524275894.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023816, A023816.P10013856517239639057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P9457975619173818425

`A023847(n)+A023979(n)-A023982(n)`
-/

namespace A023980.P9457975619173818425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + (A023979 n - A023982 n)

end

end A023980.P9457975619173818425

namespace A023980

/-- `A023847(n)+A023979(n)-A023982(n)` -/
def P9457975619173818425.Spec : Prop :=
  ∀ n, P9457975619173818425.a n = A023980 n

theorem P9457975619173818425.correct : P9457975619173818425.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P9457975619173818425.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023847, A023847.P14275358432901394298.a, A023979, A023979.P10012353997069429693.a, A023982, A023982.P10936420451098235543.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P2037418618747970232

`A023981(n)+A023990(n)-A023982(n)`
-/

namespace A023980.P2037418618747970232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n + (A023990 n - A023982 n)

end

end A023980.P2037418618747970232

namespace A023980

/-- `A023981(n)+A023990(n)-A023982(n)` -/
def P2037418618747970232.Spec : Prop :=
  ∀ n, P2037418618747970232.a n = A023980 n

theorem P2037418618747970232.correct : P2037418618747970232.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P2037418618747970232.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023981, A023981.P8513506632808306074.a, A023982, A023982.P10936420451098235543.a, A023990, A023990.P3946053488396366451.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023978, A023978.P11474590108139116730.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P6398625826752392032

`A023979(n)-(A023834(n)-A023986(n))`
-/

namespace A023980.P6398625826752392032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n - (A023834 n - A023986 n)

end

end A023980.P6398625826752392032

namespace A023980

/-- `A023979(n)-(A023834(n)-A023986(n))` -/
def P6398625826752392032.Spec : Prop :=
  ∀ n, P6398625826752392032.a n = A023980 n

theorem P6398625826752392032.correct : P6398625826752392032.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P6398625826752392032.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023834, A023834.P16787518251000114194.a, A023979, A023979.P10012353997069429693.a, A023986, A023986.P6172043282524275894.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023816, A023816.P10013856517239639057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P10577326393958409756

`A023816(2*n)+A023816(n)`
-/

namespace A023980.P10577326393958409756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (2 * n) + A023816 n

end

end A023980.P10577326393958409756

namespace A023980

/-- `A023816(2*n)+A023816(n)` -/
def P10577326393958409756.Spec : Prop :=
  ∀ n, P10577326393958409756.a n = A023980 n

theorem P10577326393958409756.correct : P10577326393958409756.Spec := by
  intro n
  simp only [A023980, Nat.add_sub_cancel, A023980.P10577326393958409756.a, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023980

/-! ## A023980.P8896589618453310981

`A001222(n+1)+A081399(n)+A023834(n)`
-/

namespace A023980.P8896589618453310981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A081399 n + A023834 n)

end

end A023980.P8896589618453310981

namespace A023980

/-- `A001222(n+1)+A081399(n)+A023834(n)` -/
def P8896589618453310981.Spec : Prop :=
  ∀ n, P8896589618453310981.a n = A023980 n

end A023980

/-!
# A023981: Sum of exponents in prime-power factorization of multinomial coefficient M(5n; n,n,n,n,n).

The programs for A023981, the canonical program `A023981.P8513506632808306074` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023981 has offset 0).

The definition of A023981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023981.P8513506632808306074

`A022559(5*n)-5*A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023981

/-- `A022559(5*n)-5*A022559(n)` -/
def P8513506632808306074.Spec : Prop :=
  ∀ n, P8513506632808306074.a n = A023981 n

theorem P8513506632808306074.correct : P8513506632808306074.Spec := by
  intro n
  simp only [A023981]

end A023981

/-! ## A023981.P16561040571689443745

`A023979(n)+A023837(n)`
-/

namespace A023981.P16561040571689443745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n + A023837 n

end

end A023981.P16561040571689443745

namespace A023981

/-- `A023979(n)+A023837(n)` -/
def P16561040571689443745.Spec : Prop :=
  ∀ n, P16561040571689443745.a n = A023981 n

theorem P16561040571689443745.correct : P16561040571689443745.Spec := by
  intro n
  simp only [A023981, Nat.add_sub_cancel, A023981.P16561040571689443745.a, A023981.P8513506632808306074.a, A022559, A022559.P10554250414511796107.a, A023837, A023837.P5350256569569073344.a, A023979, A023979.P10012353997069429693.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023826, A023826.P15834259250542609692.a, A023982, A023982.P10936420451098235543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023981

/-! ## A023981.P15686180499626051398

`A023982(n)+A023978(n)`
-/

namespace A023981.P15686180499626051398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n + A023978 n

end

end A023981.P15686180499626051398

namespace A023981

/-- `A023982(n)+A023978(n)` -/
def P15686180499626051398.Spec : Prop :=
  ∀ n, P15686180499626051398.a n = A023981 n

theorem P15686180499626051398.correct : P15686180499626051398.Spec := by
  intro n
  simp only [A023981, Nat.add_sub_cancel, A023981.P15686180499626051398.a, A023981.P8513506632808306074.a, A022559, A022559.P10554250414511796107.a, A023978, A023978.P11474590108139116730.a, A023982, A023982.P10936420451098235543.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023981

/-! ## A023981.P13369654353240431485

`A023984(n)-A023852(n)`
-/

namespace A023981.P13369654353240431485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023984 n - A023852 n

end

end A023981.P13369654353240431485

namespace A023981

/-- `A023984(n)-A023852(n)` -/
def P13369654353240431485.Spec : Prop :=
  ∀ n, P13369654353240431485.a n = A023981 n

theorem P13369654353240431485.correct : P13369654353240431485.Spec := by
  intro n
  simp only [A023981, Nat.add_sub_cancel, A023981.P13369654353240431485.a, A023981.P8513506632808306074.a, A022559, A022559.P10554250414511796107.a, A023852, A023852.P8552689552939452037.a, A023984, A023984.P15441145881468557615.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023981

/-! ## A023981.P9296116895879478581

`A023978(n)+A023987(n)+A023978(n)`
-/

namespace A023981.P9296116895879478581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 n + (A023987 n + A023978 n)

end

end A023981.P9296116895879478581

namespace A023981

/-- `A023978(n)+A023987(n)+A023978(n)` -/
def P9296116895879478581.Spec : Prop :=
  ∀ n, P9296116895879478581.a n = A023981 n

theorem P9296116895879478581.correct : P9296116895879478581.Spec := by
  intro n
  simp only [A023981, Nat.add_sub_cancel, A023981.P9296116895879478581.a, A023981.P8513506632808306074.a, A022559, A022559.P10554250414511796107.a, A023978, A023978.P11474590108139116730.a, A023987, A023987.P15737227295791123908.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023981

/-! ## A023981.P17783918941263968016

`A023982(n)+A023982(n)-A023987(n)`
-/

namespace A023981.P17783918941263968016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n + (A023982 n - A023987 n)

end

end A023981.P17783918941263968016

namespace A023981

/-- `A023982(n)+A023982(n)-A023987(n)` -/
def P17783918941263968016.Spec : Prop :=
  ∀ n, P17783918941263968016.a n = A023981 n

theorem P17783918941263968016.correct : P17783918941263968016.Spec := by
  intro n
  simp only [A023981, Nat.add_sub_cancel, A023981.P17783918941263968016.a, A023981.P8513506632808306074.a, A022559, A022559.P10554250414511796107.a, A023982, A023982.P10936420451098235543.a, A023987, A023987.P15737227295791123908.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023981

/-! ## A023981.P10839322957039682094

`A023980(n)+A023982(n)-A023990(n)`
-/

namespace A023981.P10839322957039682094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n + (A023982 n - A023990 n)

end

end A023981.P10839322957039682094

namespace A023981

/-- `A023980(n)+A023982(n)-A023990(n)` -/
def P10839322957039682094.Spec : Prop :=
  ∀ n, P10839322957039682094.a n = A023981 n

theorem P10839322957039682094.correct : P10839322957039682094.Spec := by
  intro n
  simp only [A023981, Nat.add_sub_cancel, A023981.P10839322957039682094.a, A023981.P8513506632808306074.a, A022559, A022559.P10554250414511796107.a, A023980, A023980.P13035758360106054050.a, A023982, A023982.P10936420451098235543.a, A023990, A023990.P3946053488396366451.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023978, A023978.P11474590108139116730.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023981

/-!
# A023982: Sum of exponents in prime-power factorization of multinomial coefficient M(5n;3n,n,n).

The programs for A023982, the canonical program `A023982.P10936420451098235543` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023982 has offset 0).

The definition of A023982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023982.P10936420451098235543

`A022559(5*n)-A022559(3*n)-2*A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023982

/-- `A022559(5*n)-A022559(3*n)-2*A022559(n)` -/
def P10936420451098235543.Spec : Prop :=
  ∀ n, P10936420451098235543.a n = A023982 n

theorem P10936420451098235543.correct : P10936420451098235543.Spec := by
  intro n
  simp only [A023982]

end A023982

/-! ## A023982.P5622678923360774916

`A023837(n)+A023826(n)`
-/

namespace A023982.P5622678923360774916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 n + A023826 n

end

end A023982.P5622678923360774916

namespace A023982

/-- `A023837(n)+A023826(n)` -/
def P5622678923360774916.Spec : Prop :=
  ∀ n, P5622678923360774916.a n = A023982 n

theorem P5622678923360774916.correct : P5622678923360774916.Spec := by
  intro n
  simp only [A023982, Nat.add_sub_cancel, A023982.P5622678923360774916.a, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A023826, A023826.P15834259250542609692.a, A023837, A023837.P5350256569569073344.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023982

/-! ## A023982.P2343082638220576364

`A023847(n)+A023816(n)`
-/

namespace A023982.P2343082638220576364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + A023816 n

end

end A023982.P2343082638220576364

namespace A023982

/-- `A023847(n)+A023816(n)` -/
def P2343082638220576364.Spec : Prop :=
  ∀ n, P2343082638220576364.a n = A023982 n

theorem P2343082638220576364.correct : P2343082638220576364.Spec := by
  intro n
  simp only [A023982, Nat.add_sub_cancel, A023982.P2343082638220576364.a, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023847, A023847.P14275358432901394298.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023982

/-! ## A023982.P9806833236905918885

`A023987(n)+A023978(n)`
-/

namespace A023982.P9806833236905918885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023987 n + A023978 n

end

end A023982.P9806833236905918885

namespace A023982

/-- `A023987(n)+A023978(n)` -/
def P9806833236905918885.Spec : Prop :=
  ∀ n, P9806833236905918885.a n = A023982 n

theorem P9806833236905918885.correct : P9806833236905918885.Spec := by
  intro n
  simp only [A023982, Nat.add_sub_cancel, A023982.P9806833236905918885.a, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A023978, A023978.P11474590108139116730.a, A023987, A023987.P15737227295791123908.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023982

/-! ## A023982.P13895196805620734963

`A023981(n)-A023978(n)`
-/

namespace A023982.P13895196805620734963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n - A023978 n

end

end A023982.P13895196805620734963

namespace A023982

/-- `A023981(n)-A023978(n)` -/
def P13895196805620734963.Spec : Prop :=
  ∀ n, P13895196805620734963.a n = A023982 n

theorem P13895196805620734963.correct : P13895196805620734963.Spec := by
  intro n
  simp only [A023982, Nat.add_sub_cancel, A023982.P13895196805620734963.a, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A023978, A023978.P11474590108139116730.a, A023981, A023981.P8513506632808306074.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023982

/-! ## A023982.P9195226821440447252

`A023834(n)+A023847(n)-A023986(n)`
-/

namespace A023982.P9195226821440447252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n + (A023847 n - A023986 n)

end

end A023982.P9195226821440447252

namespace A023982

/-- `A023834(n)+A023847(n)-A023986(n)` -/
def P9195226821440447252.Spec : Prop :=
  ∀ n, P9195226821440447252.a n = A023982 n

theorem P9195226821440447252.correct : P9195226821440447252.Spec := by
  intro n
  simp only [A023982, Nat.add_sub_cancel, A023982.P9195226821440447252.a, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A023834, A023834.P16787518251000114194.a, A023847, A023847.P14275358432901394298.a, A023986, A023986.P6172043282524275894.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023816, A023816.P10013856517239639057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023982

/-! ## A023982.P392878690107685342

`A023847(n)+A023979(n)-A023980(n)`
-/

namespace A023982.P392878690107685342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + (A023979 n - A023980 n)

end

end A023982.P392878690107685342

namespace A023982

/-- `A023847(n)+A023979(n)-A023980(n)` -/
def P392878690107685342.Spec : Prop :=
  ∀ n, P392878690107685342.a n = A023982 n

theorem P392878690107685342.correct : P392878690107685342.Spec := by
  intro n
  simp only [A023982, Nat.add_sub_cancel, A023982.P392878690107685342.a, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A023847, A023847.P14275358432901394298.a, A023979, A023979.P10012353997069429693.a, A023980, A023980.P13035758360106054050.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023982

/-! ## A023982.P16885376092175629718

`A182921(2*n)+A023847(n)`
-/

namespace A023982.P16885376092175629718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182921 (2 * n) + A023847 n

end

end A023982.P16885376092175629718

namespace A023982

/-- `A182921(2*n)+A023847(n)` -/
def P16885376092175629718.Spec : Prop :=
  ∀ n, P16885376092175629718.a n = A023982 n

end A023982

/-! ## A023982.P10538063515690954149

`A001222(n+1)+A081399(n)+A023847(n)`
-/

namespace A023982.P10538063515690954149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A081399 n + A023847 n)

end

end A023982.P10538063515690954149

namespace A023982

/-- `A001222(n+1)+A081399(n)+A023847(n)` -/
def P10538063515690954149.Spec : Prop :=
  ∀ n, P10538063515690954149.a n = A023982 n

end A023982

/-!
# A023983: Sum of exponents in prime-power factorization of multinomial coefficient M(5n;2n,2n,n).

The programs for A023983, the canonical program `A023983.P6771169843760342550` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023983 has offset 0).

The definition of A023983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023983.P6771169843760342550

`A022559(5*n)-2*A022559(2*n)-A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023983

/-- `A022559(5*n)-2*A022559(2*n)-A022559(n)` -/
def P6771169843760342550.Spec : Prop :=
  ∀ n, P6771169843760342550.a n = A023983 n

theorem P6771169843760342550.correct : P6771169843760342550.Spec := by
  intro n
  simp only [A023983]

end A023983

/-! ## A023983.P14502846858514988698

`A023847(n)+A023819(n)`
-/

namespace A023983.P14502846858514988698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + A023819 n

end

end A023983.P14502846858514988698

namespace A023983

/-- `A023847(n)+A023819(n)` -/
def P14502846858514988698.Spec : Prop :=
  ∀ n, P14502846858514988698.a n = A023983 n

theorem P14502846858514988698.correct : P14502846858514988698.Spec := by
  intro n
  simp only [A023983, Nat.add_sub_cancel, A023983.P14502846858514988698.a, A023983.P6771169843760342550.a, A022559, A022559.P10554250414511796107.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023983

/-! ## A023983.P2462423361761966049

`A023837(n)+A023834(n)`
-/

namespace A023983.P2462423361761966049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 n + A023834 n

end

end A023983.P2462423361761966049

namespace A023983

/-- `A023837(n)+A023834(n)` -/
def P2462423361761966049.Spec : Prop :=
  ∀ n, P2462423361761966049.a n = A023983 n

theorem P2462423361761966049.correct : P2462423361761966049.Spec := by
  intro n
  simp only [A023983, Nat.add_sub_cancel, A023983.P2462423361761966049.a, A023983.P6771169843760342550.a, A022559, A022559.P10554250414511796107.a, A023834, A023834.P16787518251000114194.a, A023837, A023837.P5350256569569073344.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023826, A023826.P15834259250542609692.a, A023982, A023982.P10936420451098235543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023983

/-! ## A023983.P13062393438794828382

`A023819(n)+A023987(n)+A023819(n)`
-/

namespace A023983.P13062393438794828382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 n + (A023987 n + A023819 n)

end

end A023983.P13062393438794828382

namespace A023983

/-- `A023819(n)+A023987(n)+A023819(n)` -/
def P13062393438794828382.Spec : Prop :=
  ∀ n, P13062393438794828382.a n = A023983 n

theorem P13062393438794828382.correct : P13062393438794828382.Spec := by
  intro n
  simp only [A023983, Nat.add_sub_cancel, A023983.P13062393438794828382.a, A023983.P6771169843760342550.a, A022559, A022559.P10554250414511796107.a, A023819, A023819.P15358664152866393371.a, A023987, A023987.P15737227295791123908.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023847, A023847.P14275358432901394298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023983

/-! ## A023983.P10125394512906013214

`A023847(n)+A023847(n)-A023987(n)`
-/

namespace A023983.P10125394512906013214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n + (A023847 n - A023987 n)

end

end A023983.P10125394512906013214

namespace A023983

/-- `A023847(n)+A023847(n)-A023987(n)` -/
def P10125394512906013214.Spec : Prop :=
  ∀ n, P10125394512906013214.a n = A023983 n

theorem P10125394512906013214.correct : P10125394512906013214.Spec := by
  intro n
  simp only [A023983, Nat.add_sub_cancel, A023983.P10125394512906013214.a, A023983.P6771169843760342550.a, A022559, A022559.P10554250414511796107.a, A023847, A023847.P14275358432901394298.a, A023987, A023987.P15737227295791123908.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023819, A023819.P15358664152866393371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023983

/-! ## A023983.P8805412549645115571

`A023982(n)+A023986(n)-A023990(n)`
-/

namespace A023983.P8805412549645115571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n + (A023986 n - A023990 n)

end

end A023983.P8805412549645115571

namespace A023983

/-- `A023982(n)+A023986(n)-A023990(n)` -/
def P8805412549645115571.Spec : Prop :=
  ∀ n, P8805412549645115571.a n = A023983 n

theorem P8805412549645115571.correct : P8805412549645115571.Spec := by
  intro n
  simp only [A023983, Nat.add_sub_cancel, A023983.P8805412549645115571.a, A023983.P6771169843760342550.a, A022559, A022559.P10554250414511796107.a, A023982, A023982.P10936420451098235543.a, A023986, A023986.P6172043282524275894.a, A023990, A023990.P3946053488396366451.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A023978, A023978.P11474590108139116730.a, A023980, A023980.P13035758360106054050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023983

/-! ## A023983.P18265048566656830782

`A023837(n)+A023816(2*n)`
-/

namespace A023983.P18265048566656830782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 n + A023816 (2 * n)

end

end A023983.P18265048566656830782

namespace A023983

/-- `A023837(n)+A023816(2*n)` -/
def P18265048566656830782.Spec : Prop :=
  ∀ n, P18265048566656830782.a n = A023983 n

theorem P18265048566656830782.correct : P18265048566656830782.Spec := by
  intro n
  simp only [A023983, Nat.add_sub_cancel, A023983.P18265048566656830782.a, A023983.P6771169843760342550.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023837, A023837.P5350256569569073344.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023826, A023826.P15834259250542609692.a, A023982, A023982.P10936420451098235543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023983

/-!
# A023984: Sum of exponents in prime-power factorization of multinomial coefficient M(6n; n,n,n,n,n,n).

The programs for A023984, the canonical program `A023984.P15441145881468557615` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023984 has offset 0).

The definition of A023984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023984.P15441145881468557615

`A022559(6*n)-6*A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023984

/-- `A022559(6*n)-6*A022559(n)` -/
def P15441145881468557615.Spec : Prop :=
  ∀ n, P15441145881468557615.a n = A023984 n

theorem P15441145881468557615.correct : P15441145881468557615.Spec := by
  intro n
  simp only [A023984]

end A023984

/-! ## A023984.P1375771236557484865

`A023981(n)+A023852(n)`
-/

namespace A023984.P1375771236557484865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n + A023852 n

end

end A023984.P1375771236557484865

namespace A023984

/-- `A023981(n)+A023852(n)` -/
def P1375771236557484865.Spec : Prop :=
  ∀ n, P1375771236557484865.a n = A023984 n

theorem P1375771236557484865.correct : P1375771236557484865.Spec := by
  intro n
  simp only [A023984, Nat.add_sub_cancel, A023984.P1375771236557484865.a, A023984.P15441145881468557615.a, A022559, A022559.P10554250414511796107.a, A023852, A023852.P8552689552939452037.a, A023981, A023981.P8513506632808306074.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023984

/-!
# A023985: Sum of exponents in prime-power factorization of multinomial coefficient M(6n,2n,2n,2n).

The programs for A023985, the canonical program `A023985.P1168665927109515625` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023985 has offset 0).

The definition of A023985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023985.P1168665927109515625

`A022559(6*n)-3*A022559(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023985

/-- `A022559(6*n)-3*A022559(2*n)` -/
def P1168665927109515625.Spec : Prop :=
  ∀ n, P1168665927109515625.a n = A023985 n

theorem P1168665927109515625.correct : P1168665927109515625.Spec := by
  intro n
  simp only [A023985]

end A023985

/-! ## A023985.P3942915856806112999

`A023853(n)+A023834(n)`
-/

namespace A023985.P3942915856806112999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023853 n + A023834 n

end

end A023985.P3942915856806112999

namespace A023985

/-- `A023853(n)+A023834(n)` -/
def P3942915856806112999.Spec : Prop :=
  ∀ n, P3942915856806112999.a n = A023985 n

theorem P3942915856806112999.correct : P3942915856806112999.Spec := by
  intro n
  simp only [A023985, Nat.add_sub_cancel, A023985.P3942915856806112999.a, A023985.P1168665927109515625.a, A022559, A022559.P10554250414511796107.a, A023834, A023834.P16787518251000114194.a, A023853, A023853.P3578139371174769499.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023985

/-! ## A023985.P16389925178787253952

`A023978(2*n)`
-/

namespace A023985.P16389925178787253952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (2 * n)

end

end A023985.P16389925178787253952

namespace A023985

/-- `A023978(2*n)` -/
def P16389925178787253952.Spec : Prop :=
  ∀ n, P16389925178787253952.a n = A023985 n

theorem P16389925178787253952.correct : P16389925178787253952.Spec := by
  intro n
  simp only [A023985, Nat.add_sub_cancel, A023985.P16389925178787253952.a, A023985.P1168665927109515625.a, A022559, A022559.P10554250414511796107.a, A023978, A023978.P11474590108139116730.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023985

/-! ## A023985.P4729980857497340382

`A023981(2*n)-A023982(2*n)`
-/

namespace A023985.P4729980857497340382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 (2 * n) - A023982 (2 * n)

end

end A023985.P4729980857497340382

namespace A023985

/-- `A023981(2*n)-A023982(2*n)` -/
def P4729980857497340382.Spec : Prop :=
  ∀ n, P4729980857497340382.a n = A023985 n

theorem P4729980857497340382.correct : P4729980857497340382.Spec := by
  intro n
  simp only [A023985, Nat.add_sub_cancel, A023985.P4729980857497340382.a, A023985.P1168665927109515625.a, A022559, A022559.P10554250414511796107.a, A023981, A023981.P8513506632808306074.a, A023982, A023982.P10936420451098235543.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023985

/-! ## A023985.P18268614958479904723

`A023982(2*n)-A023987(2*n)`
-/

namespace A023985.P18268614958479904723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 (2 * n) - A023987 (2 * n)

end

end A023985.P18268614958479904723

namespace A023985

/-- `A023982(2*n)-A023987(2*n)` -/
def P18268614958479904723.Spec : Prop :=
  ∀ n, P18268614958479904723.a n = A023985 n

theorem P18268614958479904723.correct : P18268614958479904723.Spec := by
  intro n
  simp only [A023985, Nat.add_sub_cancel, A023985.P18268614958479904723.a, A023985.P1168665927109515625.a, A022559, A022559.P10554250414511796107.a, A023982, A023982.P10936420451098235543.a, A023987, A023987.P15737227295791123908.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023985

/-! ## A023985.P7821847439295447123

`A023980(2*n)-A023990(2*n)`
-/

namespace A023985.P7821847439295447123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 (2 * n) - A023990 (2 * n)

end

end A023985.P7821847439295447123

namespace A023985

/-- `A023980(2*n)-A023990(2*n)` -/
def P7821847439295447123.Spec : Prop :=
  ∀ n, P7821847439295447123.a n = A023985 n

theorem P7821847439295447123.correct : P7821847439295447123.Spec := by
  intro n
  simp only [A023985, Nat.add_sub_cancel, A023985.P7821847439295447123.a, A023985.P1168665927109515625.a, A022559, A022559.P10554250414511796107.a, A023980, A023980.P13035758360106054050.a, A023990, A023990.P3946053488396366451.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023978, A023978.P11474590108139116730.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023985

/-!
# A023986: Sum of exponents of primes in C(4n,2n) - sum of exponents of primes in C(2n,n).

The programs for A023986, the canonical program `A023986.P6172043282524275894` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023986 has offset 0).

The definition of A023986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023986.P6172043282524275894

`A023834(n)-A023816(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023986

/-- `A023834(n)-A023816(n)` -/
def P6172043282524275894.Spec : Prop :=
  ∀ n, P6172043282524275894.a n = A023986 n

theorem P6172043282524275894.correct : P6172043282524275894.Spec := by
  intro n
  simp only [A023986]

end A023986

/-! ## A023986.P2607023273858950782

`A022559(4*n)-3*A022559(2*n)+2*A022559(n)`
-/

namespace A023986.P2607023273858950782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * n) - 3 * A022559 (2 * n) + 2 * A022559 n

end

end A023986.P2607023273858950782

namespace A023986

/-- `A022559(4*n)-3*A022559(2*n)+2*A022559(n)` -/
def P2607023273858950782.Spec : Prop :=
  ∀ n, P2607023273858950782.a n = A023986 n

theorem P2607023273858950782.correct : P2607023273858950782.Spec := by
  intro n
  simp only [A023986, Nat.add_sub_cancel, A023986.P2607023273858950782.a, A023986.P6172043282524275894.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023986

/-! ## A023986.P17834680875543497576

`A023980(n)-2*A023816(n)`
-/

namespace A023986.P17834680875543497576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n - 2 * A023816 n

end

end A023986.P17834680875543497576

namespace A023986

/-- `A023980(n)-2*A023816(n)` -/
def P17834680875543497576.Spec : Prop :=
  ∀ n, P17834680875543497576.a n = A023986 n

theorem P17834680875543497576.correct : P17834680875543497576.Spec := by
  intro n
  simp only [A023986, Nat.add_sub_cancel, A023986.P17834680875543497576.a, A023986.P6172043282524275894.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A023980, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023986

/-! ## A023986.P457508856539189732

`A023834(n)+A023834(n)-A023980(n)`
-/

namespace A023986.P457508856539189732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n + (A023834 n - A023980 n)

end

end A023986.P457508856539189732

namespace A023986

/-- `A023834(n)+A023834(n)-A023980(n)` -/
def P457508856539189732.Spec : Prop :=
  ∀ n, P457508856539189732.a n = A023986 n

theorem P457508856539189732.correct : P457508856539189732.Spec := by
  intro n
  simp only [A023986, Nat.add_sub_cancel, A023986.P457508856539189732.a, A023986.P6172043282524275894.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A023980, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023986

/-! ## A023986.P3963298902485187335

`A023979(n)+A023985(n)-A023984(n)`
-/

namespace A023986.P3963298902485187335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023979 n + (A023985 n - A023984 n)

end

end A023986.P3963298902485187335

namespace A023986

/-- `A023979(n)+A023985(n)-A023984(n)` -/
def P3963298902485187335.Spec : Prop :=
  ∀ n, P3963298902485187335.a n = A023986 n

theorem P3963298902485187335.correct : P3963298902485187335.Spec := by
  intro n
  simp only [A023986, Nat.add_sub_cancel, A023986.P3963298902485187335.a, A023986.P6172043282524275894.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A023979, A023979.P10012353997069429693.a, A023984, A023984.P15441145881468557615.a, A023985, A023985.P1168665927109515625.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023986

/-! ## A023986.P17192092472170287970

`A023834(n)-(A023979(n)-A023980(n))`
-/

namespace A023986.P17192092472170287970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n - (A023979 n - A023980 n)

end

end A023986.P17192092472170287970

namespace A023986

/-- `A023834(n)-(A023979(n)-A023980(n))` -/
def P17192092472170287970.Spec : Prop :=
  ∀ n, P17192092472170287970.a n = A023986 n

theorem P17192092472170287970.correct : P17192092472170287970.Spec := by
  intro n
  simp only [A023986, Nat.add_sub_cancel, A023986.P17192092472170287970.a, A023986.P6172043282524275894.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A023979, A023979.P10012353997069429693.a, A023980, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023986

/-! ## A023986.P6188283628884798976

`A023816(2*n)-A023816(n)`
-/

namespace A023986.P6188283628884798976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (2 * n) - A023816 n

end

end A023986.P6188283628884798976

namespace A023986

/-- `A023816(2*n)-A023816(n)` -/
def P6188283628884798976.Spec : Prop :=
  ∀ n, P6188283628884798976.a n = A023986 n

theorem P6188283628884798976.correct : P6188283628884798976.Spec := by
  intro n
  simp only [A023986, Nat.add_sub_cancel, A023986.P6188283628884798976.a, A023986.P6172043282524275894.a, A023816, A023816.P10013856517239639057.a, A023834, A023834.P16787518251000114194.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023986

/-! ## A023986.P5440032798982973189

`A023834(n)-(A081399(n)+A001222(n+1))`
-/

namespace A023986.P5440032798982973189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n - (A081399 n + A001222 (n + 1))

end

end A023986.P5440032798982973189

namespace A023986

/-- `A023834(n)-(A081399(n)+A001222(n+1))` -/
def P5440032798982973189.Spec : Prop :=
  ∀ n, P5440032798982973189.a n = A023986 n

end A023986

/-!
# A023987: Sum of exponents of primes in C(5n,3n) - sum of exponents of primes in C(3n,2n).

The programs for A023987, the canonical program `A023987.P15737227295791123908` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023987 has offset 0).

The definition of A023987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023847, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023987.P15737227295791123908

`A023847(n)-A023819(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023987

/-- `A023847(n)-A023819(n)` -/
def P15737227295791123908.Spec : Prop :=
  ∀ n, P15737227295791123908.a n = A023987 n

theorem P15737227295791123908.correct : P15737227295791123908.Spec := by
  intro n
  simp only [A023987]

end A023987

/-! ## A023987.P15238998296404066285

`A022559(5*n)-2*A022559(3*n)+A022559(n)`
-/

namespace A023987.P15238998296404066285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (5 * n) - 2 * A022559 (3 * n) + A022559 n

end

end A023987.P15238998296404066285

namespace A023987

/-- `A022559(5*n)-2*A022559(3*n)+A022559(n)` -/
def P15238998296404066285.Spec : Prop :=
  ∀ n, P15238998296404066285.a n = A023987 n

theorem P15238998296404066285.correct : P15238998296404066285.Spec := by
  intro n
  simp only [A023987, Nat.add_sub_cancel, A023987.P15238998296404066285.a, A023987.P15737227295791123908.a, A022559, A022559.P10554250414511796107.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023987

/-! ## A023987.P13285029699188177328

`A023854(n)-A023852(n)`
-/

namespace A023987.P13285029699188177328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023854 n - A023852 n

end

end A023987.P13285029699188177328

namespace A023987

/-- `A023854(n)-A023852(n)` -/
def P13285029699188177328.Spec : Prop :=
  ∀ n, P13285029699188177328.a n = A023987 n

theorem P13285029699188177328.correct : P13285029699188177328.Spec := by
  intro n
  simp only [A023987, Nat.add_sub_cancel, A023987.P13285029699188177328.a, A023987.P15737227295791123908.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A023852, A023852.P8552689552939452037.a, A023854, A023854.P5029670943387420428.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023987

/-! ## A023987.P3336842207049151076

`A023982(n)-A023978(n)`
-/

namespace A023987.P3336842207049151076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n - A023978 n

end

end A023987.P3336842207049151076

namespace A023987

/-- `A023982(n)-A023978(n)` -/
def P3336842207049151076.Spec : Prop :=
  ∀ n, P3336842207049151076.a n = A023987 n

theorem P3336842207049151076.correct : P3336842207049151076.Spec := by
  intro n
  simp only [A023987, Nat.add_sub_cancel, A023987.P3336842207049151076.a, A023987.P15737227295791123908.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A023978, A023978.P11474590108139116730.a, A023982, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023987

/-! ## A023987.P121328710662880911

`A023981(n)-2*A023978(n)`
-/

namespace A023987.P121328710662880911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 n - 2 * A023978 n

end

end A023987.P121328710662880911

namespace A023987

/-- `A023981(n)-2*A023978(n)` -/
def P121328710662880911.Spec : Prop :=
  ∀ n, P121328710662880911.a n = A023987 n

theorem P121328710662880911.correct : P121328710662880911.Spec := by
  intro n
  simp only [A023987, Nat.add_sub_cancel, A023987.P121328710662880911.a, A023987.P15737227295791123908.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A023978, A023978.P11474590108139116730.a, A023981, A023981.P8513506632808306074.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023987

/-! ## A023987.P3088964973709973205

`A023982(n)+A023982(n)-A023981(n)`
-/

namespace A023987.P3088964973709973205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n + (A023982 n - A023981 n)

end

end A023987.P3088964973709973205

namespace A023987

/-- `A023982(n)+A023982(n)-A023981(n)` -/
def P3088964973709973205.Spec : Prop :=
  ∀ n, P3088964973709973205.a n = A023987 n

theorem P3088964973709973205.correct : P3088964973709973205.Spec := by
  intro n
  simp only [A023987, Nat.add_sub_cancel, A023987.P3088964973709973205.a, A023987.P15737227295791123908.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A023981, A023981.P8513506632808306074.a, A023982, A023982.P10936420451098235543.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023987

/-! ## A023987.P2184831582871158228

`A023982(n)+A023990(n)-A023980(n)`
-/

namespace A023987.P2184831582871158228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 n + (A023990 n - A023980 n)

end

end A023987.P2184831582871158228

namespace A023987

/-- `A023982(n)+A023990(n)-A023980(n)` -/
def P2184831582871158228.Spec : Prop :=
  ∀ n, P2184831582871158228.a n = A023987 n

theorem P2184831582871158228.correct : P2184831582871158228.Spec := by
  intro n
  simp only [A023987, Nat.add_sub_cancel, A023987.P2184831582871158228.a, A023987.P15737227295791123908.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A023980, A023980.P13035758360106054050.a, A023982, A023982.P10936420451098235543.a, A023990, A023990.P3946053488396366451.a, A022559, A022559.P10554250414511796107.a, A023978, A023978.P11474590108139116730.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023987

/-!
# A023989: Look and Say sequence: describe the previous term! (method C - initial term is 2).

The programs for A023989, there is no canonical definition to state claims against.
-/

/-! ## A023989.P712149723359097137

`A047842(a(n-1))` with `a(0)=2`
-/

namespace A023989.P712149723359097137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A047842 (a (n - 1)).toNat

end

end A023989.P712149723359097137

/-!
# A023990: Sum of exponents of primes in multinomial coefficient M(4n; 2n,n,n) - sum of exponents of primes in M(3n; n,n,n).

The programs for A023990, the canonical program `A023990.P3946053488396366451` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023990 has offset 0).

The definition of A023990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023990.P3946053488396366451

`A023980(n)-A023978(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023990

/-- `A023980(n)-A023978(n)` -/
def P3946053488396366451.Spec : Prop :=
  ∀ n, P3946053488396366451.a n = A023990 n

theorem P3946053488396366451.correct : P3946053488396366451.Spec := by
  intro n
  simp only [A023990]

end A023990

/-! ## A023990.P12413643214998988128

`A023826(n)-A023816(n)`
-/

namespace A023990.P12413643214998988128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023826 n - A023816 n

end

end A023990.P12413643214998988128

namespace A023990

/-- `A023826(n)-A023816(n)` -/
def P12413643214998988128.Spec : Prop :=
  ∀ n, P12413643214998988128.a n = A023990 n

theorem P12413643214998988128.correct : P12413643214998988128.Spec := by
  intro n
  simp only [A023990, Nat.add_sub_cancel, A023990.P12413643214998988128.a, A023990.P3946053488396366451.a, A023816, A023816.P10013856517239639057.a, A023826, A023826.P15834259250542609692.a, A023978, A023978.P11474590108139116730.a, A023980, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023990

/-! ## A023990.P2011901087053711472

`A023834(n)-A023819(n)`
-/

namespace A023990.P2011901087053711472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 n - A023819 n

end

end A023990.P2011901087053711472

namespace A023990

/-- `A023834(n)-A023819(n)` -/
def P2011901087053711472.Spec : Prop :=
  ∀ n, P2011901087053711472.a n = A023990 n

theorem P2011901087053711472.correct : P2011901087053711472.Spec := by
  intro n
  simp only [A023990, Nat.add_sub_cancel, A023990.P2011901087053711472.a, A023990.P3946053488396366451.a, A023819, A023819.P15358664152866393371.a, A023834, A023834.P16787518251000114194.a, A023978, A023978.P11474590108139116730.a, A023980, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023990

/-! ## A023990.P12863206952507831336

`A023847(n)-A023837(n)`
-/

namespace A023990.P12863206952507831336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023847 n - A023837 n

end

end A023990.P12863206952507831336

namespace A023990

/-- `A023847(n)-A023837(n)` -/
def P12863206952507831336.Spec : Prop :=
  ∀ n, P12863206952507831336.a n = A023990 n

theorem P12863206952507831336.correct : P12863206952507831336.Spec := by
  intro n
  simp only [A023990, Nat.add_sub_cancel, A023990.P12863206952507831336.a, A023990.P3946053488396366451.a, A023837, A023837.P5350256569569073344.a, A023847, A023847.P14275358432901394298.a, A023978, A023978.P11474590108139116730.a, A023980, A023980.P13035758360106054050.a, A022559, A022559.P10554250414511796107.a, A023826, A023826.P15834259250542609692.a, A023982, A023982.P10936420451098235543.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023990

/-! ## A023990.P1577928466607886652

`A023980(n)+A023987(n)-A023982(n)`
-/

namespace A023990.P1577928466607886652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023980 n + (A023987 n - A023982 n)

end

end A023990.P1577928466607886652

namespace A023990

/-- `A023980(n)+A023987(n)-A023982(n)` -/
def P1577928466607886652.Spec : Prop :=
  ∀ n, P1577928466607886652.a n = A023990 n

theorem P1577928466607886652.correct : P1577928466607886652.Spec := by
  intro n
  simp only [A023990, Nat.add_sub_cancel, A023990.P1577928466607886652.a, A023990.P3946053488396366451.a, A023978, A023978.P11474590108139116730.a, A023980, A023980.P13035758360106054050.a, A023982, A023982.P10936420451098235543.a, A023987, A023987.P15737227295791123908.a, A022559, A022559.P10554250414511796107.a, A023819, A023819.P15358664152866393371.a, A023847, A023847.P14275358432901394298.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023990

/-!
# A023991: Sum of exponents of primes in multinomial coefficient M(3n; n+1,n,n-1).

The programs for A023991, the canonical program `A023991.P11280942998713057946` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023991 has offset 1).

The definition of A023991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023991.P11280942998713057946

`A023978(n+1)-A076191(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023991

/-- `A023978(n+1)-A076191(n+1)` -/
def P11280942998713057946.Spec : Prop :=
  ∀ n, P11280942998713057946.a n = A023991 (n + 1)

theorem P11280942998713057946.correct : P11280942998713057946.Spec := by
  intro n
  simp only [A023991, Nat.add_sub_cancel]

end A023991

/-! ## A023991.P6486890468988288937

`A022559(3*(n+1))-A022559(n)-A022559(n+1)-A022559(n+2)`
-/

namespace A023991.P6486890468988288937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (3 * (n + 1)) - A022559 n - A022559 (n + 1) - A022559 (n + 2)

end

end A023991.P6486890468988288937

namespace A023991

/-- `A022559(3*(n+1))-A022559(n)-A022559(n+1)-A022559(n+2)` -/
def P6486890468988288937.Spec : Prop :=
  ∀ n, P6486890468988288937.a n = A023991 (n + 1)

end A023991

/-! ## A023991.P6407162822305644622

`A023819(n+1)+A023817(n+1)`
-/

namespace A023991.P6407162822305644622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023819 (n + 1) + A023817 (n + 1)

end

end A023991.P6407162822305644622

namespace A023991

/-- `A023819(n+1)+A023817(n+1)` -/
def P6407162822305644622.Spec : Prop :=
  ∀ n, P6407162822305644622.a n = A023991 (n + 1)

theorem P6407162822305644622.correct : P6407162822305644622.Spec := by
  intro n
  simp only [A023991, Nat.add_sub_cancel, A023991.P6407162822305644622.a, A023991.P11280942998713057946.a, A023817, A023817.P4585500228112988024.a, A023819, A023819.P15358664152866393371.a, A023978, A023978.P11474590108139116730.a, A076191, A076191.P10842715607879630508.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A022559, A022559.P10554250414511796107.a, A023816, A023816.P10013856517239639057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023991

/-! ## A023991.P4866194289260288657

`A023978(n+1)-Δ[A001222(n+1)]`
-/

namespace A023991.P4866194289260288657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023991.P4866194289260288657

namespace A023991

/-- `A023978(n+1)-Δ[A001222(n+1)]` -/
def P4866194289260288657.Spec : Prop :=
  ∀ n, P4866194289260288657.a n = A023991 (n + 1)

theorem P4866194289260288657.correct : P4866194289260288657.Spec := by
  intro n
  simp only [A023991, Nat.add_sub_cancel, A023991.P4866194289260288657.f1, A023991.P4866194289260288657.a, A023991.P11280942998713057946.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A023978, A023978.P11474590108139116730.a, A076191, A076191.P10842715607879630508.a, A022559, A022559.P10554250414511796107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023991

/-! ## A023991.P8714297898270638070

`A023816(n+1)+A023823(n+1)-1`
-/

namespace A023991.P8714297898270638070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1) + (A023823 (n + 1) - 1)

end

end A023991.P8714297898270638070

namespace A023991

/-- `A023816(n+1)+A023823(n+1)-1` -/
def P8714297898270638070.Spec : Prop :=
  ∀ n, P8714297898270638070.a n = A023991 (n + 1)

end A023991

/-! ## A023991.P1105605969579648487

`A023816(n+1)+A023443(A023823(n+1))`
-/

namespace A023991.P1105605969579648487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1) + A023443 (A023823 (n + 1)).toNat

end

end A023991.P1105605969579648487

namespace A023991

/-- `A023816(n+1)+A023443(A023823(n+1))` -/
def P1105605969579648487.Spec : Prop :=
  ∀ n, P1105605969579648487.a n = A023991 (n + 1)

end A023991

/-! ## A023991.P15852975439959240557

`A023978(n+1)-Δ[A000005(A061142(n+1))]`
-/

namespace A023991.P15852975439959240557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023991.P15852975439959240557

namespace A023991

/-- `A023978(n+1)-Δ[A000005(A061142(n+1))]` -/
def P15852975439959240557.Spec : Prop :=
  ∀ n, P15852975439959240557.a n = A023991 (n + 1)

end A023991

/-! ## A023991.P9533003163292876142

`A023978(n+1)-Δ[A073093(n+1)]`
-/

namespace A023991.P9533003163292876142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023991.P9533003163292876142

namespace A023991

/-- `A023978(n+1)-Δ[A073093(n+1)]` -/
def P9533003163292876142.Spec : Prop :=
  ∀ n, P9533003163292876142.a n = A023991 (n + 1)

theorem P9533003163292876142.correct : P9533003163292876142.Spec := by
  intro n
  simp only [A023991, Nat.add_sub_cancel, A023991.P9533003163292876142.f1, A023991.P9533003163292876142.a, A023991.P11280942998713057946.a, A023978, A023978.P11474590108139116730.a, A073093, A073093.P258081957281391684.a, A076191, A076191.P10842715607879630508.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A022559, A022559.P10554250414511796107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023991

/-! ## A023991.P18195600226214853187

`A048621(Δ[n²])+A023823(n+1)`
-/

namespace A023991.P18195600226214853187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A023823 (n + 1)

end

end A023991.P18195600226214853187

namespace A023991

/-- `A048621(Δ[n²])+A023823(n+1)` -/
def P18195600226214853187.Spec : Prop :=
  ∀ n, P18195600226214853187.a n = A023991 (n + 1)

end A023991

/-! ## A023991.P4068376452378813739

`A023978(n+1)-Δ[A000005(A165826(n+1))]`
-/

namespace A023991.P4068376452378813739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A165826 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (n + 1) - (f1 (n + 1) - f1 n)

end

end A023991.P4068376452378813739

namespace A023991

/-- `A023978(n+1)-Δ[A000005(A165826(n+1))]` -/
def P4068376452378813739.Spec : Prop :=
  ∀ n, P4068376452378813739.a n = A023991 (n + 1)

end A023991

/-!
# A023992: Sum of exponents of primes in multinomial coefficient M(4n; n+2,2n,n-2).

The programs for A023992, the canonical program `A023992.P14069554627008389637` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023992 has offset 2).

The definition of A023992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023992.P14069554627008389637

`A022559(4*(n+2))-A022559(2*(n+2))-A022559(n+4)-A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023992

/-- `A022559(4*(n+2))-A022559(2*(n+2))-A022559(n+4)-A022559(n)` -/
def P14069554627008389637.Spec : Prop :=
  ∀ n, P14069554627008389637.a n = A023992 (n + 2)

theorem P14069554627008389637.correct : P14069554627008389637.Spec := by
  intro n
  simp only [A023992, Nat.add_sub_cancel]

end A023992

/-! ## A023992.P11758219090448207424

`A023834(n+2)+A023818(n+2)`
-/

namespace A023992.P11758219090448207424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 (n + 2) + A023818 (n + 2)

end

end A023992.P11758219090448207424

namespace A023992

/-- `A023834(n+2)+A023818(n+2)` -/
def P11758219090448207424.Spec : Prop :=
  ∀ n, P11758219090448207424.a n = A023992 (n + 2)

theorem P11758219090448207424.correct : P11758219090448207424.Spec := by
  intro n
  simp only [A023992, Nat.add_sub_cancel, A023992.P11758219090448207424.a, A023992.P14069554627008389637.a, A022559, A022559.P10554250414511796107.a, A023818, A023818.P1614633070137310882.a, A023834, A023834.P16787518251000114194.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A023992

/-!
# A023993: Sum of exponents of primes in multinomial coefficient M(3n; n+2,n-1,n-1).

The programs for A023993, the canonical program `A023993.P237544004253746633` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023993 has offset 1).

The definition of A023993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023993.P237544004253746633

`A022559(3*(n+1))-A022559(n+3)-2*A022559(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023993

/-- `A022559(3*(n+1))-A022559(n+3)-2*A022559(n)` -/
def P237544004253746633.Spec : Prop :=
  ∀ n, P237544004253746633.a n = A023993 (n + 1)

theorem P237544004253746633.correct : P237544004253746633.Spec := by
  intro n
  simp only [A023993, Nat.add_sub_cancel]

end A023993

/-! ## A023993.P823194881002798798

`A023824(n+1)+A023816(n)`
-/

namespace A023993.P823194881002798798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023824 (n + 1) + A023816 n

end

end A023993.P823194881002798798

namespace A023993

/-- `A023824(n+1)+A023816(n)` -/
def P823194881002798798.Spec : Prop :=
  ∀ n, P823194881002798798.a n = A023993 (n + 1)

end A023993

/-! ## A023993.P17759360109902849541

`A023991(n+1)-(A076191(n+2)+A076191(n+1))`
-/

namespace A023993.P17759360109902849541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023991 (n + 1) - (A076191 (n + 2) + A076191 (n + 1))

end

end A023993.P17759360109902849541

namespace A023993

/-- `A023991(n+1)-(A076191(n+2)+A076191(n+1))` -/
def P17759360109902849541.Spec : Prop :=
  ∀ n, P17759360109902849541.a n = A023993 (n + 1)

end A023993

/-!
# A023994: Number of isomorphism types of symmetric configurations n_4.

The programs for A023994, there is no canonical definition to state claims against.
-/

/-! ## A023994.P13381256631100170826

`A068457(A336828(n))`
-/

namespace A023994.P13381256631100170826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068457 (A336828 n).toNat

end

end A023994.P13381256631100170826

/-!
# A023995: Number of sets S = {a_1, a_2, ..., a_k}, with 1 < a_i < a_j <= n such that no a_j divides the product of all the others.

The programs for A023995, there is no canonical definition to state claims against.
-/

/-! ## A023995.P12509986636309016712

`record[A117660(∑[A219046(n+1)])]`
-/

namespace A023995.P12509986636309016712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117660 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023995.P12509986636309016712

/-! ## A023995.P13948698444405112135

`record[A028710(A028703(2*(n+1)))]`
-/

namespace A023995.P13948698444405112135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A028703 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023995.P13948698444405112135

/-! ## A023995.P16481748857800503299

`A000010(∑[A280110(n+1)]-n)`
-/

namespace A023995.P16481748857800503299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A023995.P16481748857800503299

/-! ## A023995.P15092514488746252916

`record[and(A081520(n+1), A172119(n))]`
-/

namespace A023995.P15092514488746252916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081520 (n + 1)) (A172119 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023995.P15092514488746252916

/-! ## A023995.P13483065566448454192

`record[A218403(A254938(3*n+1))+1]`
-/

namespace A023995.P13483065566448454192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218403 (A254938 (3 * n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023995.P13483065566448454192

/-!
# A023996: Triangle of numbers T(n,k), where T(n,k) is the number of sets S = {a_1, a_2, ..., a_k}, with 1 < a_i < a_j <= n such that no a_j divides the product of all the others.

The programs for A023996, there is no canonical definition to state claims against.
-/

/-! ## A023996.P16212426353674817451

`A029635(A034886(n)^A254609(n))`
-/

namespace A023996.P16212426353674817451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.roundAway ((A034886 n : ℚ) ^ (A254609 n : ℤ))).toNat

end

end A023996.P16212426353674817451

/-! ## A023996.P8517018452037209374

`A307998(n+1)-A182631(A184955(n))`
-/

namespace A023996.P8517018452037209374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307998 (n + 1) - A182631 (A184955 n).toNat

end

end A023996.P8517018452037209374

/-! ## A023996.P8315629091164420514

`A029635(A034886(n)%A066722(n+1))`
-/

namespace A023996.P8315629091164420514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (Int.tmod (A034886 n) (A066722 (n + 1))).toNat

end

end A023996.P8315629091164420514

/-! ## A023996.P9394490132697535184

`A058318(A178618(n))`
-/

namespace A023996.P9394490132697535184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A178618 n).toNat

end

end A023996.P9394490132697535184

/-! ## A023996.P6127552579154846987

`A307998(A043320(n+1))`
-/

namespace A023996.P6127552579154846987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307998 (A043320 (n + 1)).toNat

end

end A023996.P6127552579154846987

/-!
# A023997: Number of block permutations on an n-set.

The programs for A023997, there is no canonical definition to state claims against.
-/

/-! ## A023997.P6377092556094639503

`A124425(2*n)`
-/

namespace A023997.P6377092556094639503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124425 (2 * n)

end

end A023997.P6377092556094639503

/-! ## A023997.P14495059083753839760

`A124424(n*Δ[n²])`
-/

namespace A023997.P14495059083753839760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124424 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A023997.P14495059083753839760

/-! ## A023997.P9197006745775475605

`or(1, A124425(A004277(n)))`
-/

namespace A023997.P9197006745775475605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124425 (A004277 n).toNat)

end

end A023997.P9197006745775475605

/-! ## A023997.P3457586912391616867

`or(1, A124425(A005843(n)))`
-/

namespace A023997.P3457586912391616867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124425 (A005843 n).toNat)

end

end A023997.P3457586912391616867

/-! ## A023997.P4692258531613927020

`gcd(A124425(A005843(n)), A151878(n))`
-/

namespace A023997.P4692258531613927020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124425 (A005843 n).toNat) (A151878 n)

end

end A023997.P4692258531613927020

/-!
# A023998: Number of block permutations on an n-set which are uniform, i.e., corresponding blocks have same size.

The programs for A023998, there is no canonical definition to state claims against.
-/

/-! ## A023998.P10965085810343820772

`A321296(∑[n]+n)`
-/

namespace A023998.P10965085810343820772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A023998.P10965085810343820772

/-! ## A023998.P994244647095449310

`A322670(∑[n]+n)`
-/

namespace A023998.P994244647095449310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322670 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A023998.P994244647095449310

/-! ## A023998.P15341097569476168784

`lcm(A033999(n), A322670(A000096(n)))`
-/

namespace A023998.P15341097569476168784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A322670 (A000096 n).toNat)

end

end A023998.P15341097569476168784

/-! ## A023998.P13053586697844330864

`or(A000007(n), A322670(A000096(n)))`
-/

namespace A023998.P13053586697844330864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322670 (A000096 n).toNat)

end

end A023998.P13053586697844330864

/-! ## A023998.P6748477608744396393

`A343254(n*(n+2))`
-/

namespace A023998.P6748477608744396393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343254 (n * (n + 2))

end

end A023998.P6748477608744396393

/-!
# A023999: Absolute value of determinant of n X n matrix whose entries are the integers from 1 to n^2 spiraling inward, starting in a corner.

The programs for A023999, the canonical program `A023999.P1464388029180493636` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023999 has offset 1).

The definition of A023999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023999.P1464388029180493636

`4*(3*(n+1)-1)*(2*(n+1)-5)*(2*(n+1)-3)*a(n-2)/(3*(n+1)-7)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023999

/-- `4*(3*(n+1)-1)*(2*(n+1)-5)*(2*(n+1)-3)*a(n-2)/(3*(n+1)-7)` -/
def P1464388029180493636.Spec : Prop :=
  ∀ n, P1464388029180493636.a n = (A023999 (n + 1) : ℚ)

end A023999

/-! ## A023999.P17293513457060329560

`abs(A126224(n+1))`
-/

namespace A023999.P17293513457060329560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126224 (n + 1)|

end

end A023999.P17293513457060329560

namespace A023999

/-- `abs(A126224(n+1))` -/
def P17293513457060329560.Spec : Prop :=
  ∀ n, P17293513457060329560.a n = A023999 (n + 1)

end A023999

/-! ## A023999.P11996334715831395625

`(3*n+2)*A001813(n)/2`
-/

namespace A023999.P11996334715831395625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) * ((A001813 n : ℚ) / 2)

end

end A023999.P11996334715831395625

namespace A023999

/-- `(3*n+2)*A001813(n)/2` -/
def P11996334715831395625.Spec : Prop :=
  ∀ n, P11996334715831395625.a n = (A023999 (n + 1) : ℚ)

end A023999

/-! ## A023999.P5212376174444899209

`(3*n+2)*A094941(2*n)/2`
-/

namespace A023999.P5212376174444899209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 2 : ℤ) * A094941 (2 * n) : ℚ) / 2

end

end A023999.P5212376174444899209

namespace A023999

/-- `(3*n+2)*A094941(2*n)/2` -/
def P5212376174444899209.Spec : Prop :=
  ∀ n, P5212376174444899209.a n = (A023999 (n + 1) : ℚ)

end A023999

/-! ## A023999.P9721185464819389211

`(∑[n]+(n+1)²)*n!*A000108(n)`
-/

namespace A023999.P9721185464819389211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2) * Nat.factorial n : ℕ) : ℤ) * A000108 n

end

end A023999.P9721185464819389211

namespace A023999

/-- `(∑[n]+(n+1)²)*n!*A000108(n)` -/
def P9721185464819389211.Spec : Prop :=
  ∀ n, P9721185464819389211.a n = A023999 (n + 1)

end A023999

/-! ## A023999.P4530126781939386397

`(A002690(n)+A000407(n))/2`
-/

namespace A023999.P4530126781939386397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002690 n + A000407 n : ℚ) / 2

end

end A023999.P4530126781939386397

namespace A023999

/-- `(A002690(n)+A000407(n))/2` -/
def P4530126781939386397.Spec : Prop :=
  ∀ n, P4530126781939386397.a n = (A023999 (n + 1) : ℚ)

end A023999

/-! ## A023999.P7494788278582062904

`lcm(A007318(n), A126224(n+1))`
-/

namespace A023999.P7494788278582062904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A126224 (n + 1))

end

end A023999.P7494788278582062904

namespace A023999

/-- `lcm(A007318(n), A126224(n+1))` -/
def P7494788278582062904.Spec : Prop :=
  ∀ n, (P7494788278582062904.a n : ℤ) = A023999 (n + 1)

end A023999

/-! ## A023999.P10058429350529474864

`n!*A000108(n)*Δ[A002411(n)]`
-/

namespace A023999.P10058429350529474864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000108 n * (f1 (n + 1) - f1 n)

end

end A023999.P10058429350529474864

namespace A023999

/-- `n!*A000108(n)*Δ[A002411(n)]` -/
def P10058429350529474864.Spec : Prop :=
  ∀ n, P10058429350529474864.a n = A023999 (n + 1)

end A023999

/-! ## A023999.P689782152864917504

`A000407(n)-n²*A006963(n+1)`
-/

namespace A023999.P689782152864917504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 n - (n ^ 2 : ℤ) * A006963 (n + 1)

end

end A023999.P689782152864917504

namespace A023999

/-- `A000407(n)-n²*A006963(n+1)` -/
def P689782152864917504.Spec : Prop :=
  ∀ n, P689782152864917504.a n = A023999 (n + 1)

end A023999

/-! ## A023999.P8082818546385106272

`Δ[A000108(n)*A000217(n)]*A000142(n)`
-/

namespace A023999.P8082818546385106272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A023999.P8082818546385106272

namespace A023999

/-- `Δ[A000108(n)*A000217(n)]*A000142(n)` -/
def P8082818546385106272.Spec : Prop :=
  ∀ n, P8082818546385106272.a n = A023999 (n + 1)

end A023999

