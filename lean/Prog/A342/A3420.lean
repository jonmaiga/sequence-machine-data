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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A342000: a(1) = 0, and for n > 1, a(n) = 1 if G(A329886(n)) >= G(A329886(floor(n/2))), otherwise 0, where G(n) = sigma(n) / (n*log(log(n))), where sigma is the sum of the divisors.

The programs for A342000, there is no canonical definition to state claims against.
-/

/-! ## A342000.P11533435177372311953

`A026609(A228683(n+1))%A026607(n+1)`
-/

namespace A342000.P11533435177372311953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026609 (A228683 (n + 1)).toNat) (A026607 (n + 1))

end

end A342000.P11533435177372311953

/-! ## A342000.P16092792293027816879

`A010054(A284397(2*(n+1))+A032758(n+1))`
-/

namespace A342000.P16092792293027816879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A284397 (2 * (n + 1)) + A032758 (n + 1)).toNat

end

end A342000.P16092792293027816879

/-! ## A342000.P12521412779765546903

`A083923(A001511(n+1)*A002183(2*(n+1)))`
-/

namespace A342000.P12521412779765546903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A001511 (n + 1) * A002183 (2 * (n + 1))).toNat

end

end A342000.P12521412779765546903

/-! ## A342000.P15038006323608483584

`A007398(n)%A000034(A256524(n))`
-/

namespace A342000.P15038006323608483584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007398 n) (A000034 (A256524 n).toNat)

end

end A342000.P15038006323608483584

/-! ## A342000.P17195089338198930407

`A016286(and(A008458(n), A187250(n)))`
-/

namespace A342000.P17195089338198930407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 (Int.land (A008458 n) (A187250 n)).toNat

end

end A342000.P17195089338198930407

/-!
# A342001: Arithmetic derivative without its inherited divisor; the arithmetic derivative of n divided by A003557(n), which is a common divisor of both n and A003415(n).

The programs for A342001, the canonical program `A342001.P4805983025243635594` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342001 has offset 1).

The definition of A342001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342001.P3100324946653546819

`A342414(n+1)*A342416(n+1)`
-/

namespace A342001.P3100324946653546819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 1) * A342416 (n + 1)

end

end A342001.P3100324946653546819

namespace A342001

/-- `A342414(n+1)*A342416(n+1)` -/
def P3100324946653546819.Spec : Prop :=
  ∀ n, P3100324946653546819.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P17071179213312886927

`A342459(n+1)*A342919(n+1)`
-/

namespace A342001.P17071179213312886927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342459 (n + 1) * A342919 (n + 1)

end

end A342001.P17071179213312886927

namespace A342001

/-- `A342459(n+1)*A342919(n+1)` -/
def P17071179213312886927.Spec : Prop :=
  ∀ n, P17071179213312886927.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P4805983025243635594

`A003415(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342001

/-- `A003415(n+1)/A003557(n+1)` -/
def P4805983025243635594.Spec : Prop :=
  ∀ n, P4805983025243635594.a n = (A342001 (n + 1) : ℚ)

end A342001

/-! ## A342001.P2841223892083581448

`∑{d}[n+1, A346485(#)]`
-/

namespace A342001.P2841223892083581448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346485 d

end

end A342001.P2841223892083581448

namespace A342001

/-- `∑{d}[n+1, A346485(#)]` -/
def P2841223892083581448.Spec : Prop :=
  ∀ n, P2841223892083581448.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P4513959886791629529

`1-A346244(n+1)+n`
-/

namespace A342001.P4513959886791629529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A346244 (n + 1) + (n : ℤ)

end

end A342001.P4513959886791629529

namespace A342001

/-- `1-A346244(n+1)+n` -/
def P4513959886791629529.Spec : Prop :=
  ∀ n, P4513959886791629529.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P14489165443736639950

`∑{d}[n+1, #*A349396((n+1)/#)]`
-/

namespace A342001.P14489165443736639950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342001.P14489165443736639950

namespace A342001

/-- `∑{d}[n+1, #*A349396((n+1)/#)]` -/
def P14489165443736639950.Spec : Prop :=
  ∀ n, P14489165443736639950.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P18261512935679556243

`∑[A258057(n)]/A003557(n+1)`
-/

namespace A342001.P18261512935679556243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342001.P18261512935679556243

namespace A342001

/-- `∑[A258057(n)]/A003557(n+1)` -/
def P18261512935679556243.Spec : Prop :=
  ∀ n, P18261512935679556243.a n = (A342001 (n + 1) : ℚ)

end A342001

/-! ## A342001.P3804759824860985248

`A369009(n+1)+A083345(n+1)`
-/

namespace A342001.P3804759824860985248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369009 (n + 1) + A083345 (n + 1)

end

end A342001.P3804759824860985248

namespace A342001

/-- `A369009(n+1)+A083345(n+1)` -/
def P3804759824860985248.Spec : Prop :=
  ∀ n, P3804759824860985248.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P4209224596050653244

`A083345(n+1)*A369008(n+1)`
-/

namespace A342001.P4209224596050653244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (n + 1) * A369008 (n + 1)

end

end A342001.P4209224596050653244

namespace A342001

/-- `A083345(n+1)*A369008(n+1)` -/
def P4209224596050653244.Spec : Prop :=
  ∀ n, P4209224596050653244.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P6141830265302134508

`A348493(n+1)*A348494(n+1)`
-/

namespace A342001.P6141830265302134508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348493 (n + 1) * A348494 (n + 1)

end

end A342001.P6141830265302134508

namespace A342001

/-- `A348493(n+1)*A348494(n+1)` -/
def P6141830265302134508.Spec : Prop :=
  ∀ n, P6141830265302134508.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P3067659580527096333

`∑[A258057(n)]/(A336551(n+1)+1)`
-/

namespace A342001.P3067659580527096333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A336551 (n + 1) + 1 : ℚ)

end

end A342001.P3067659580527096333

namespace A342001

/-- `∑[A258057(n)]/(A336551(n+1)+1)` -/
def P3067659580527096333.Spec : Prop :=
  ∀ n, P3067659580527096333.a n = (A342001 (n + 1) : ℚ)

end A342001

/-! ## A342001.P6671471594502544078

`2/A000005(n+1)*A347129(n+1)`
-/

namespace A342001.P6671471594502544078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000005 (n + 1) : ℚ) * (A347129 (n + 1) : ℚ)

end

end A342001.P6671471594502544078

namespace A342001

/-- `2/A000005(n+1)*A347129(n+1)` -/
def P6671471594502544078.Spec : Prop :=
  ∀ n, P6671471594502544078.a n = (A342001 (n + 1) : ℚ)

end A342001

/-! ## A342001.P9302250807797722695

`∑[A258057(n)]/gcd(n+1, A069359(n+1))`
-/

namespace A342001.P9302250807797722695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℚ)

end

end A342001.P9302250807797722695

namespace A342001

/-- `∑[A258057(n)]/gcd(n+1, A069359(n+1))` -/
def P9302250807797722695.Spec : Prop :=
  ∀ n, P9302250807797722695.a n = (A342001 (n + 1) : ℚ)

end A342001

/-! ## A342001.P934491190790142543

`A003415(n+1)/(n+1)*A007947(n+1)`
-/

namespace A342001.P934491190790142543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (n + 1 : ℚ) * (A007947 (n + 1) : ℚ)

end

end A342001.P934491190790142543

namespace A342001

/-- `A003415(n+1)/(n+1)*A007947(n+1)` -/
def P934491190790142543.Spec : Prop :=
  ∀ n, P934491190790142543.a n = (A342001 (n + 1) : ℚ)

end A342001

/-! ## A342001.P1564579213179492117

`∑{d}[n+1, A008966(#)*A347395((n+1)/#)]`
-/

namespace A342001.P1564579213179492117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A347395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342001.P1564579213179492117

namespace A342001

/-- `∑{d}[n+1, A008966(#)*A347395((n+1)/#)]` -/
def P1564579213179492117.Spec : Prop :=
  ∀ n, P1564579213179492117.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P8626005422408687879

`∑{d}[n+1, A007947(#)*A349612((n+1)/#)]`
-/

namespace A342001.P8626005422408687879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007947 d * A349612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342001.P8626005422408687879

namespace A342001

/-- `∑{d}[n+1, A007947(#)*A349612((n+1)/#)]` -/
def P8626005422408687879.Spec : Prop :=
  ∀ n, P8626005422408687879.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P4683622055808139023

`∑{d}[n+1, A023900(#)*A347235((n+1)/#)]`
-/

namespace A342001.P4683622055808139023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A347235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342001.P4683622055808139023

namespace A342001

/-- `∑{d}[n+1, A023900(#)*A347235((n+1)/#)]` -/
def P4683622055808139023.Spec : Prop :=
  ∀ n, P4683622055808139023.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P1138750637275181437

`∑{d}[n+1, A323881(#)*A347234((n+1)/#)]`
-/

namespace A342001.P1138750637275181437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323881 d * A347234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342001.P1138750637275181437

namespace A342001

/-- `∑{d}[n+1, A323881(#)*A347234((n+1)/#)]` -/
def P1138750637275181437.Spec : Prop :=
  ∀ n, P1138750637275181437.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P8444452184053352684

`∑{d}[n+1, A347954(#)*A349134((n+1)/#)]`
-/

namespace A342001.P8444452184053352684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347954 d * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342001.P8444452184053352684

namespace A342001

/-- `∑{d}[n+1, A347954(#)*A349134((n+1)/#)]` -/
def P8444452184053352684.Spec : Prop :=
  ∀ n, P8444452184053352684.a n = A342001 (n + 1)

end A342001

/-! ## A342001.P7228171921507125292

`∑{d}[n+1, A347963(#)*A349340((n+1)/#)]`
-/

namespace A342001.P7228171921507125292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347963 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342001.P7228171921507125292

namespace A342001

/-- `∑{d}[n+1, A347963(#)*A349340((n+1)/#)]` -/
def P7228171921507125292.Spec : Prop :=
  ∀ n, P7228171921507125292.a n = A342001 (n + 1)

end A342001

/-!
# A342002: Čiurlionis sequence: Arithmetic derivative without its inherited divisor applied to the primorial base exp-function: a(n) = A342001(A276086(n)).

The programs for A342002, there is no canonical definition to state claims against.
-/

/-! ## A342002.P5487578732017067745

`A327860(n)/A328572(n)`
-/

namespace A342002.P5487578732017067745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (A328572 n : ℚ)

end

end A342002.P5487578732017067745

/-! ## A342002.P17043395530760794359

`A346253(A328622(n))`
-/

namespace A342002.P17043395530760794359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346253 (A328622 n).toNat

end

end A342002.P17043395530760794359

/-! ## A342002.P2129242514358237757

`A344760(A289234(n))`
-/

namespace A342002.P2129242514358237757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (A289234 n).toNat

end

end A342002.P2129242514358237757

/-! ## A342002.P6628930437740734545

`A344762(A328625(n))`
-/

namespace A342002.P6628930437740734545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344762 (A328625 n).toNat

end

end A342002.P6628930437740734545

/-! ## A342002.P16770682670838265791

`A344761(A328626(n))`
-/

namespace A342002.P16770682670838265791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344761 (A328626 n).toNat

end

end A342002.P16770682670838265791

/-! ## A342002.P10711119882254230487

`A346252(A328623(n))`
-/

namespace A342002.P10711119882254230487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346252 (A328623 n).toNat

end

end A342002.P10711119882254230487

/-! ## A342002.P14860609318892962473

`A083345(A276086(n))`
-/

namespace A342002.P14860609318892962473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A276086 n).toNat

end

end A342002.P14860609318892962473

/-! ## A342002.P5342481839371704631

`A342001(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342002.P5342481839371704631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A276086 n).toNat

end

end A342002.P5342481839371704631

/-! ## A342002.P11550808881328644349

`2/A324655(n)*A347126(n)`
-/

namespace A342002.P11550808881328644349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A324655 n : ℚ) * (A347126 n : ℚ)

end

end A342002.P11550808881328644349

/-! ## A342002.P6575912075293756629

`A327860(n)/A276086(A328842(n))`
-/

namespace A342002.P6575912075293756629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (A276086 (A328842 n).toNat : ℚ)

end

end A342002.P6575912075293756629

/-! ## A342002.P6318489478721139342

`(A342016(n)+A276086(n))/A328572(n)`
-/

namespace A342002.P6318489478721139342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342016 n + A276086 n : ℚ) / (A328572 n : ℚ)

end

end A342002.P6318489478721139342

/-! ## A342002.P6790695605600382383

`A327860(n)/A276086(n)*A328571(n)`
-/

namespace A342002.P6790695605600382383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (A276086 n : ℚ) * (A328571 n : ℚ)

end

end A342002.P6790695605600382383

/-! ## A342002.P14603319736693528388

`A366801(A277022(n))`
-/

namespace A342002.P14603319736693528388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 (A277022 n).toNat

end

end A342002.P14603319736693528388

/-!
# A342003: Maximal exponent in the prime factorization of the arithmetic derivative of n: a(n) = A051903(A003415(n)).

The programs for A342003, the canonical program `A342003.P12697586407558100656` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342003 has offset 2).

The definition of A342003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342003.P4713588948578582862

`A051903(n+2)+A328310(n+2)`
-/

namespace A342003.P4713588948578582862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2) + A328310 (n + 2)

end

end A342003.P4713588948578582862

namespace A342003

/-- `A051903(n+2)+A328310(n+2)` -/
def P4713588948578582862.Spec : Prop :=
  ∀ n, P4713588948578582862.a n = A342003 (n + 2)

end A342003

/-! ## A342003.P12697586407558100656

`A051903(A003415(n+2))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342003

/-- `A051903(A003415(n+2))` -/
def P12697586407558100656.Spec : Prop :=
  ∀ n, P12697586407558100656.a n = A342003 (n + 2)

theorem P12697586407558100656.correct : P12697586407558100656.Spec := by
  intro n
  simp only [A342003, Nat.add_sub_cancel]

end A342003

/-! ## A342003.P8663823282120838694

`A051903(n+2)+A328311(n+2)-1`
-/

namespace A342003.P8663823282120838694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2) + (A328311 (n + 2) - 1)

end

end A342003.P8663823282120838694

namespace A342003

/-- `A051903(n+2)+A328311(n+2)-1` -/
def P8663823282120838694.Spec : Prop :=
  ∀ n, P8663823282120838694.a n = A342003 (n + 2)

end A342003

/-! ## A342003.P15854288889278150275

`A328310(n+2)+Δ[A129132(n+1)]`
-/

namespace A342003.P15854288889278150275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (n + 2) + (f1 (n + 1) - f1 n)

end

end A342003.P15854288889278150275

namespace A342003

/-- `A328310(n+2)+Δ[A129132(n+1)]` -/
def P15854288889278150275.Spec : Prop :=
  ∀ n, P15854288889278150275.a n = A342003 (n + 2)

end A342003

/-! ## A342003.P739840468658823223

`A051903(A211991(n+2)+A001065(n+2))`
-/

namespace A342003.P739840468658823223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A211991 (n + 2) + A001065 (n + 2)).toNat

end

end A342003.P739840468658823223

namespace A342003

/-- `A051903(A211991(n+2)+A001065(n+2))` -/
def P739840468658823223.Spec : Prop :=
  ∀ n, P739840468658823223.a n = A342003 (n + 2)

end A342003

/-! ## A342003.P18331695498102663345

`A061395(A181819(A003415(n+2))²)`
-/

namespace A342003.P18331695498102663345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (A003415 (n + 2)).toNat ^ 2).toNat

end

end A342003.P18331695498102663345

namespace A342003

/-- `A061395(A181819(A003415(n+2))²)` -/
def P18331695498102663345.Spec : Prop :=
  ∀ n, P18331695498102663345.a n = A342003 (n + 2)

end A342003

/-!
# A342004: a(n) = 1 if the maximal exponent in the prime factorization of the arithmetic derivative of n (A003415) is less than the maximal exponent in n, otherwise 0. a(1) = 1 by convention.

The programs for A342004, the canonical program `A342004.P9799116110550622350` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342004 has offset 1).

The definition of A342004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342004.P7681858058369756865

`char[A328320(n+1)-1]`
-/

namespace A342004.P7681858058369756865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328320 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342004.P7681858058369756865

namespace A342004

/-- `char[A328320(n+1)-1]` -/
def P7681858058369756865.Spec : Prop :=
  ∀ n, (P7681858058369756865.a n : ℤ) = A342004 (n + 1)

end A342004

/-! ## A342004.P9799116110550622350

`C(2, A328311(n+1)+2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342004

/-- `C(2, A328311(n+1)+2)` -/
def P9799116110550622350.Spec : Prop :=
  ∀ n, (P9799116110550622350.a n : ℤ) = A342004 (n + 1)

theorem P9799116110550622350.correct : P9799116110550622350.Spec := by
  intro n
  simp only [A342004, Nat.add_sub_cancel]

end A342004

/-! ## A342004.P15589827585059574502

`A000007(A328311(n+1))`
-/

namespace A342004.P15589827585059574502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A328311 (n + 1)).toNat

end

end A342004.P15589827585059574502

namespace A342004

/-- `A000007(A328311(n+1))` -/
def P15589827585059574502.Spec : Prop :=
  ∀ n, P15589827585059574502.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P17715869357582462331

`A186717(A328311(n+1)+3)`
-/

namespace A342004.P17715869357582462331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186717 (A328311 (n + 1) + 3).toNat

end

end A342004.P17715869357582462331

namespace A342004

/-- `A186717(A328311(n+1)+3)` -/
def P17715869357582462331.Spec : Prop :=
  ∀ n, P17715869357582462331.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P18296871527719483504

`A100910(2*A328311(n+1))`
-/

namespace A342004.P18296871527719483504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (2 * A328311 (n + 1)).toNat

end

end A342004.P18296871527719483504

namespace A342004

/-- `A100910(2*A328311(n+1))` -/
def P18296871527719483504.Spec : Prop :=
  ∀ n, P18296871527719483504.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P18400227590795391932

`A131575(2*A328311(n+1))`
-/

namespace A342004.P18400227590795391932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (2 * A328311 (n + 1)).toNat

end

end A342004.P18400227590795391932

namespace A342004

/-- `A131575(2*A328311(n+1))` -/
def P18400227590795391932.Spec : Prop :=
  ∀ n, P18400227590795391932.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P12823967932320453244

`∏{d}[A328311(n+1), A328311(#)]`
-/

namespace A342004.P12823967932320453244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A328311 d

end

end A342004.P12823967932320453244

namespace A342004

/-- `∏{d}[A328311(n+1), A328311(#)]` -/
def P12823967932320453244.Spec : Prop :=
  ∀ n, P12823967932320453244.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P8784044877853250953

`A008683((A328311(n+1)+1)²)`
-/

namespace A342004.P8784044877853250953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((A328311 (n + 1) + 1) ^ 2).toNat

end

end A342004.P8784044877853250953

namespace A342004

/-- `A008683((A328311(n+1)+1)²)` -/
def P8784044877853250953.Spec : Prop :=
  ∀ n, P8784044877853250953.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P9656596550260396659

`A000038(A328311(n+1)²)/2`
-/

namespace A342004.P9656596550260396659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A328311 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A342004.P9656596550260396659

namespace A342004

/-- `A000038(A328311(n+1)²)/2` -/
def P9656596550260396659.Spec : Prop :=
  ∀ n, P9656596550260396659.a n = (A342004 (n + 1) : ℚ)

end A342004

/-! ## A342004.P5549830005561529665

`1-A324872(A328311(n+1)+1)`
-/

namespace A342004.P5549830005561529665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324872 (A328311 (n + 1) + 1).toNat

end

end A342004.P5549830005561529665

namespace A342004

/-- `1-A324872(A328311(n+1)+1)` -/
def P5549830005561529665.Spec : Prop :=
  ∀ n, P5549830005561529665.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P10386308698857167633

`A323169(2*A328311(n+1)+1)`
-/

namespace A342004.P10386308698857167633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (2 * A328311 (n + 1) + 1).toNat

end

end A342004.P10386308698857167633

namespace A342004

/-- `A323169(2*A328311(n+1)+1)` -/
def P10386308698857167633.Spec : Prop :=
  ∀ n, P10386308698857167633.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P13624475493385798667

`A000038(2*A328311(n+1))/2`
-/

namespace A342004.P13624475493385798667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (2 * A328311 (n + 1)).toNat : ℚ) / 2

end

end A342004.P13624475493385798667

namespace A342004

/-- `A000038(2*A328311(n+1))/2` -/
def P13624475493385798667.Spec : Prop :=
  ∀ n, P13624475493385798667.a n = (A342004 (n + 1) : ℚ)

end A342004

/-! ## A342004.P16128722203106600957

`A001787(A328311(n+1)+1)%2`
-/

namespace A342004.P16128722203106600957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001787 (A328311 (n + 1) + 1).toNat) 2

end

end A342004.P16128722203106600957

namespace A342004

/-- `A001787(A328311(n+1)+1)%2` -/
def P16128722203106600957.Spec : Prop :=
  ∀ n, P16128722203106600957.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P14090652012087120715

`A328312((A328311(n+1)+1)²²)`
-/

namespace A342004.P14090652012087120715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328312 (((A328311 (n + 1) + 1) ^ 2) ^ 2).toNat

end

end A342004.P14090652012087120715

namespace A342004

/-- `A328312((A328311(n+1)+1)²²)` -/
def P14090652012087120715.Spec : Prop :=
  ∀ n, P14090652012087120715.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P94817135913335558

`char[(A328310(n+2)-n)*A328310(n+2)]`
-/

namespace A342004.P94817135913335558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A328310 (n + 2) - (n : ℤ)) * A328310 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342004.P94817135913335558

namespace A342004

/-- `char[(A328310(n+2)-n)*A328310(n+2)]` -/
def P94817135913335558.Spec : Prop :=
  ∀ n, (P94817135913335558.a n : ℤ) = A342004 (n + 1)

end A342004

/-! ## A342004.P1084000645823938435

`A048146(A007913(n+1))^A328311(n+1)`
-/

namespace A342004.P1084000645823938435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (A007913 (n + 1)).toNat : ℚ) ^ (A328311 (n + 1) : ℤ)

end

end A342004.P1084000645823938435

namespace A342004

/-- `A048146(A007913(n+1))^A328311(n+1)` -/
def P1084000645823938435.Spec : Prop :=
  ∀ n, P1084000645823938435.a n = (A342004 (n + 1) : ℚ)

end A342004

/-! ## A342004.P9524358243559277087

`A131575(A328311(n+1)+A328311(n+1)²)`
-/

namespace A342004.P9524358243559277087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A328311 (n + 1) + A328311 (n + 1) ^ 2).toNat

end

end A342004.P9524358243559277087

namespace A342004

/-- `A131575(A328311(n+1)+A328311(n+1)²)` -/
def P9524358243559277087.Spec : Prop :=
  ∀ n, P9524358243559277087.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P16072645081460381075

`A323169(A328311(n+1)+A328311(n+1)+1)`
-/

namespace A342004.P16072645081460381075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A328311 (n + 1) + (A328311 (n + 1) + 1)).toNat

end

end A342004.P16072645081460381075

namespace A342004

/-- `A323169(A328311(n+1)+A328311(n+1)+1)` -/
def P16072645081460381075.Spec : Prop :=
  ∀ n, P16072645081460381075.a n = A342004 (n + 1)

end A342004

/-! ## A342004.P13810840653945900812

`A131575(A303809(∏{p}[n+1, #]))^A328311(n+1)`
-/

namespace A342004.P13810840653945900812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131575 (A303809 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat : ℚ) ^ (A328311 (n + 1) : ℤ)

end

end A342004.P13810840653945900812

namespace A342004

/-- `A131575(A303809(∏{p}[n+1, #]))^A328311(n+1)` -/
def P13810840653945900812.Spec : Prop :=
  ∀ n, P13810840653945900812.a n = (A342004 (n + 1) : ℚ)

end A342004

/-! ## A342004.P7978766048656844975

`val(A073487(n+1), A328311(n+1)+A073487(n+1))`
-/

namespace A342004.P7978766048656844975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073487 (n + 1)).toNat (A328311 (n + 1) + A073487 (n + 1)).toNat

end

end A342004.P7978766048656844975

namespace A342004

/-- `val(A073487(n+1), A328311(n+1)+A073487(n+1))` -/
def P7978766048656844975.Spec : Prop :=
  ∀ n, (P7978766048656844975.a n : ℤ) = A342004 (n + 1)

end A342004

/-!
# A342005: a(n) = A342004(A276086(n)).

The programs for A342005, there is no canonical definition to state claims against.
-/

/-! ## A342005.P5236281977901263152

`A342004(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342005.P5236281977901263152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (A276086 n).toNat

end

end A342005.P5236281977901263152

/-! ## A342005.P16357201359755619825

`char[comp[A342006(n+1)]]`
-/

namespace A342005.P16357201359755619825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342006 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A342005.P16357201359755619825

/-! ## A342005.P17518989770596079556

`char[and(n+1, A342026(n+1))]`
-/

namespace A342005.P17518989770596079556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A342026 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342005.P17518989770596079556

/-! ## A342005.P4953263496123036760

`xor(A033999(n)², char[A342006(n+1)])`
-/

namespace A342005.P4953263496123036760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342006 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A342005.P4953263496123036760

/-! ## A342005.P9525146475878481247

`char[A001478(n+1)*A342026(n+1)]`
-/

namespace A342005.P9525146475878481247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A342026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342005.P9525146475878481247

/-! ## A342005.P10120119852446830317

`(A028234(A103517(n))+char[A342006(n+1)])%2`
-/

namespace A342005.P10120119852446830317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342006 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (A103517 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A342005.P10120119852446830317

/-! ## A342005.P5007314916218139682

`A342004(A351225(n)+n)`
-/

namespace A342005.P5007314916218139682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (A351225 n + (n : ℤ)).toNat

end

end A342005.P5007314916218139682

/-! ## A342005.P6605077571929925654

`A000038(n)^A328311(A276086(n))`
-/

namespace A342005.P6605077571929925654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A328311 (A276086 n).toNat : ℤ)

end

end A342005.P6605077571929925654

/-!
# A342006: Numbers k where the maximal prime exponent in the arithmetic derivative of A276086(k) attains the maximal exponent in A276086(k), where A276086 gives the prime product form of primorial base expansion of its argument.

The programs for A342006, there is no canonical definition to state claims against.
-/

/-! ## A342006.P913528884085402957

`eq[0, A342005(n)]`
-/

namespace A342006.P913528884085402957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342006.P913528884085402957

/-! ## A342006.P8055552226117226255

`lt[A342005(n), A008833(A007913(n+1))]`
-/

namespace A342006.P8055552226117226255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342006.P8055552226117226255

/-! ## A342006.P2321210055399366121

`lt[A342005(n), A008833(A328573(n))]`
-/

namespace A342006.P2321210055399366121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A328573 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342006.P2321210055399366121

/-! ## A342006.P6093773684710877197

`lt[A342005(n), A008833(A328571(n))]`
-/

namespace A342006.P6093773684710877197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A328571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342006.P6093773684710877197

/-! ## A342006.P373175463820682348

`lt[A342005(n), A328580(A328842(n))]`
-/

namespace A342006.P373175463820682348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 (A328842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342006.P373175463820682348

/-! ## A342006.P9850000962852565715

`lt[A342005(n), A000035(A110560(n))]`
-/

namespace A342006.P9850000962852565715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110560 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342006.P9850000962852565715

/-! ## A342006.P12663317786404167514

`lt[A342005(n), A342005(A347398(n+1))]`
-/

namespace A342006.P12663317786404167514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 (A347398 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342006.P12663317786404167514

/-! ## A342006.P12532056468131318700

`lt[A342005(n), A328580(A005843(n))]`
-/

namespace A342006.P12532056468131318700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342006.P12532056468131318700

/-!
# A342007: Multiplicative with a(p^e) = p^floor(e/p).

The programs for A342007, the canonical program `A342007.P5181248813472136976` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342007 has offset 1).

The definition of A342007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342007.P5181248813472136976

`∏{d}[n+1, gcd(A001222(#), A014963(#))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A342007

/-- `∏{d}[n+1, gcd(A001222(#), A014963(#))]` -/
def P5181248813472136976.Spec : Prop :=
  ∀ n, (P5181248813472136976.a n : ℤ) = A342007 (n + 1)

theorem P5181248813472136976.correct : P5181248813472136976.Spec := by
  intro n
  simp only [A342007, Nat.add_sub_cancel]

end A342007

/-! ## A342007.P12351487109069713127

`A295658(24*A085731(n+1))`
-/

namespace A342007.P12351487109069713127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (24 * A085731 (n + 1)).toNat

end

end A342007.P12351487109069713127

namespace A342007

/-- `A295658(24*A085731(n+1))` -/
def P12351487109069713127.Spec : Prop :=
  ∀ n, P12351487109069713127.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P12856569335531942637

`A053150(A008833(4*(n+1))*A053164(3*(n+1)))`
-/

namespace A342007.P12856569335531942637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A008833 (4 * (n + 1)) * A053164 (3 * (n + 1))).toNat

end

end A342007.P12856569335531942637

namespace A342007

/-- `A053150(A008833(4*(n+1))*A053164(3*(n+1)))` -/
def P12856569335531942637.Spec : Prop :=
  ∀ n, P12856569335531942637.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P7366365978206388308

`A000188(gcd(A085731(n+1), A322780(n+1)))`
-/

namespace A342007.P7366365978206388308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.gcd (A085731 (n + 1)) (A322780 (n + 1)))

end

end A342007.P7366365978206388308

namespace A342007

/-- `A000188(gcd(A085731(n+1), A322780(n+1)))` -/
def P7366365978206388308.Spec : Prop :=
  ∀ n, P7366365978206388308.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P419655006156474878

`gcd(A000188(n+1), A063727(A008834(n+1)))`
-/

namespace A342007.P419655006156474878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1)) (A063727 (A008834 (n + 1)).toNat)

end

end A342007.P419655006156474878

namespace A342007

/-- `gcd(A000188(n+1), A063727(A008834(n+1)))` -/
def P419655006156474878.Spec : Prop :=
  ∀ n, (P419655006156474878.a n : ℤ) = A342007 (n + 1)

end A342007

/-! ## A342007.P6215265491917696702

`A003557(A000188(3*(n+1))*A007913(3*n+1))`
-/

namespace A342007.P6215265491917696702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000188 (3 * (n + 1)) * A007913 (3 * n + 1)).toNat

end

end A342007.P6215265491917696702

namespace A342007

/-- `A003557(A000188(3*(n+1))*A007913(3*n+1))` -/
def P6215265491917696702.Spec : Prop :=
  ∀ n, P6215265491917696702.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P9761476671187434767

`A003557(A000188(3*(n+1))*A007947(3*n+1))`
-/

namespace A342007.P9761476671187434767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000188 (3 * (n + 1)) * A007947 (3 * n + 1)).toNat

end

end A342007.P9761476671187434767

namespace A342007

/-- `A003557(A000188(3*(n+1))*A007947(3*n+1))` -/
def P9761476671187434767.Spec : Prop :=
  ∀ n, P9761476671187434767.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P11619397380873263382

`A295658(4*A134483(∑[n+1]+n+1))`
-/

namespace A342007.P11619397380873263382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (4 * A134483 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))).toNat

end

end A342007.P11619397380873263382

namespace A342007

/-- `A295658(4*A134483(∑[n+1]+n+1))` -/
def P11619397380873263382.Spec : Prop :=
  ∀ n, P11619397380873263382.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P1664003555639268524

`A053164(4*(n+1)*A003557(n+1))`
-/

namespace A342007.P1664003555639268524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (4 * ((n + 1 : ℤ) * A003557 (n + 1))).toNat

end

end A342007.P1664003555639268524

namespace A342007

/-- `A053164(4*(n+1)*A003557(n+1))` -/
def P1664003555639268524.Spec : Prop :=
  ∀ n, P1664003555639268524.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P164459766765600253

`A053164((2*(n+1))²/A015052(n+1))`
-/

namespace A342007.P164459766765600253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (SequenceMachineLib.roundAway (((2 * (n + 1)) ^ 2 : ℚ) / (A015052 (n + 1) : ℚ))).toNat

end

end A342007.P164459766765600253

namespace A342007

/-- `A053164((2*(n+1))²/A015052(n+1))` -/
def P164459766765600253.Spec : Prop :=
  ∀ n, P164459766765600253.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P15062702655232870776

`A053164((2*(n+1))²/A015053(n+1))`
-/

namespace A342007.P15062702655232870776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (SequenceMachineLib.roundAway (((2 * (n + 1)) ^ 2 : ℚ) / (A015053 (n + 1) : ℚ))).toNat

end

end A342007.P15062702655232870776

namespace A342007

/-- `A053164((2*(n+1))²/A015053(n+1))` -/
def P15062702655232870776.Spec : Prop :=
  ∀ n, P15062702655232870776.a n = A342007 (n + 1)

end A342007

/-! ## A342007.P8523200875386663560

`A053164((2*(n+1))²/A019555(n+1))`
-/

namespace A342007.P8523200875386663560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (SequenceMachineLib.roundAway (((2 * (n + 1)) ^ 2 : ℚ) / (A019555 (n + 1) : ℚ))).toNat

end

end A342007.P8523200875386663560

namespace A342007

/-- `A053164((2*(n+1))²/A019555(n+1))` -/
def P8523200875386663560.Spec : Prop :=
  ∀ n, P8523200875386663560.a n = A342007 (n + 1)

end A342007

/-!
# A342008: Numbers k such that Euler totient phi(k) is a multiple of the arithmetic derivative of k.

The programs for A342008, the canonical program `A342008.P13045740322941483081` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342008 has offset 1).

The definition of A342008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1583 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342008.P13045740322941483081

`eq[1, A342414(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A342008

/-- `eq[1, A342414(n+1)]+1` -/
def P13045740322941483081.Spec : Prop :=
  ∀ n, (P13045740322941483081.a n : ℤ) = A342008 (n + 1)

theorem P13045740322941483081.correct : P13045740322941483081.Spec := by
  intro n
  simp only [A342008, Nat.add_sub_cancel]

end A342008

/-! ## A342008.P1570846871689632462

`lt[A342414(n+2), 2]+2`
-/

namespace A342008.P1570846871689632462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A342008.P1570846871689632462

namespace A342008

/-- `lt[A342414(n+2), 2]+2` -/
def P1570846871689632462.Spec : Prop :=
  ∀ n, (P1570846871689632462.a n : ℤ) = A342008 (n + 1)

end A342008

/-! ## A342008.P13792191494071492833

`A141310(eq[1, A342414(n+1)])`
-/

namespace A342008.P13792191494071492833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342008.P13792191494071492833

namespace A342008

/-- `A141310(eq[1, A342414(n+1)])` -/
def P13792191494071492833.Spec : Prop :=
  ∀ n, P13792191494071492833.a n = A342008 (n + 1)

end A342008

/-! ## A342008.P5259627190898664329

`eq[1, A342414(A028310(n))]`
-/

namespace A342008.P5259627190898664329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342008.P5259627190898664329

namespace A342008

/-- `eq[1, A342414(A028310(n))]` -/
def P5259627190898664329.Spec : Prop :=
  ∀ n, (P5259627190898664329.a n : ℤ) = A342008 (n + 1)

end A342008

/-! ## A342008.P11275485160546948007

`A020725(eq[1, A342414(n+1)])`
-/

namespace A342008.P11275485160546948007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342008.P11275485160546948007

namespace A342008

/-- `A020725(eq[1, A342414(n+1)])` -/
def P11275485160546948007.Spec : Prop :=
  ∀ n, P11275485160546948007.a n = A342008 (n + 1)

end A342008

/-! ## A342008.P16241949341479696341

`A057174(eq[1, A342414(n+1)])`
-/

namespace A342008.P16241949341479696341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342008.P16241949341479696341

namespace A342008

/-- `A057174(eq[1, A342414(n+1)])` -/
def P16241949341479696341.Spec : Prop :=
  ∀ n, P16241949341479696341.a n = A342008 (n + 1)

end A342008

/-! ## A342008.P8711072315046224766

`eq[1, A342414(A000007(n)+n)]`
-/

namespace A342008.P8711072315046224766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342008.P8711072315046224766

namespace A342008

/-- `eq[1, A342414(A000007(n)+n)]` -/
def P8711072315046224766.Spec : Prop :=
  ∀ n, (P8711072315046224766.a n : ℤ) = A342008 (n + 1)

end A342008

/-! ## A342008.P8203775881485188113

`eq[A003415(n), A342413(or(1, n))]`
-/

namespace A342008.P8203775881485188113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342413 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342008.P8203775881485188113

namespace A342008

/-- `eq[A003415(n), A342413(or(1, n))]` -/
def P8203775881485188113.Spec : Prop :=
  ∀ n, (P8203775881485188113.a n : ℤ) = A342008 (n + 1)

end A342008

/-! ## A342008.P14781411912104986181

`eq[1, A342414(A065033(2*n))]`
-/

namespace A342008.P14781411912104986181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342008.P14781411912104986181

namespace A342008

/-- `eq[1, A342414(A065033(2*n))]` -/
def P14781411912104986181.Spec : Prop :=
  ∀ n, (P14781411912104986181.a n : ℤ) = A342008 (n + 1)

end A342008

/-! ## A342008.P17722126869932150422

`eq[1, A342414(A123108(2*n))]`
-/

namespace A342008.P17722126869932150422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342008.P17722126869932150422

namespace A342008

/-- `eq[1, A342414(A123108(2*n))]` -/
def P17722126869932150422.Spec : Prop :=
  ∀ n, (P17722126869932150422.a n : ℤ) = A342008 (n + 1)

end A342008

/-!
# A342009: Numbers k such that the arithmetic derivative of k is a multiple of phi(k).

The programs for A342009, there is no canonical definition to state claims against.
-/

/-! ## A342009.P17678306397095413440

`eq[1, A342415(n+1)]+1`
-/

namespace A342009.P17678306397095413440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342009.P17678306397095413440

/-! ## A342009.P8642808753942688904

`record[A000027(n+1)/A342415(n+1)]`
-/

namespace A342009.P8642808753942688904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A342415 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342009.P8642808753942688904

/-! ## A342009.P11369862829166773340

`record[A005408(n)-n*A342415(n+1)]`
-/

namespace A342009.P11369862829166773340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A342415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342009.P11369862829166773340

/-! ## A342009.P9010064178480616131

`record[gcd(n+1, A003415(n+1)%A000010(n+1))]`
-/

namespace A342009.P9010064178480616131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A003415 (n + 1)) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342009.P9010064178480616131

/-! ## A342009.P14149997371773725143

`record[A069928(n+1)/A342415(A069928(n+1))]`
-/

namespace A342009.P14149997371773725143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069928 (n + 1) : ℚ) / (A342415 (A069928 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342009.P14149997371773725143

/-! ## A342009.P12593772287131988156

`record[A008619(n)/A342415(A008619(n))]`
-/

namespace A342009.P12593772287131988156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A342415 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342009.P12593772287131988156

/-! ## A342009.P9637839448882668362

`record[A110654(n+1)/A342415(A110654(n+1))]`
-/

namespace A342009.P9637839448882668362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (n + 1) : ℚ) / (A342415 (A110654 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342009.P9637839448882668362

/-!
# A342010: Number of times the term 2 has occurred so far in the range 1..n of A073751.

The programs for A342010, there is no canonical definition to state claims against.
-/

/-! ## A342010.P603939698279258934

`A001222(A342012(n+1))`
-/

namespace A342010.P603939698279258934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A342012 (n + 1)).toNat

end

end A342010.P603939698279258934

/-! ## A342010.P10653631758656851542

`∑[val(A073751(n+1), 2)]`
-/

namespace A342010.P10653631758656851542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073751 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342010.P10653631758656851542

/-! ## A342010.P2344089865260912179

`∑[C(2, A342011(n+1)+1)]`
-/

namespace A342010.P2344089865260912179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A342011 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342010.P2344089865260912179

/-! ## A342010.P2025037705221988159

`∑[A063524(A073751(n+1)-1)]`
-/

namespace A342010.P2025037705221988159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A073751 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342010.P2025037705221988159

/-! ## A342010.P13362818668045079792

`∑[A007814(A073751(n+1))]`
-/

namespace A342010.P13362818668045079792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A073751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342010.P13362818668045079792

/-! ## A342010.P14244723488844106977

`∑[A000035(A073751(n+1)+1)]`
-/

namespace A342010.P14244723488844106977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A073751 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342010.P14244723488844106977

/-! ## A342010.P11531800418909156655

`∑[A056594(A073751(n+1)+2)]`
-/

namespace A342010.P11531800418909156655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A073751 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342010.P11531800418909156655

/-!
# A342011: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), for all i, j >= 1, with f(1) = 2 and f(n) = A004490(n)/A004490(n-1) when n > 1, where A004490(n) is the n-th colossally abundant number.

The programs for A342011, there is no canonical definition to state claims against.
-/

/-! ## A342011.P12819843425678869852

`A000720(A073751(n+1))`
-/

namespace A342011.P12819843425678869852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073751 (n + 1)).toNat

end

end A342011.P12819843425678869852

/-! ## A342011.P4722784793386930998

`A003963(and(-1, A073751(n+1)))`
-/

namespace A342011.P4722784793386930998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.land (-1) (A073751 (n + 1))).toNat

end

end A342011.P4722784793386930998

/-! ## A342011.P15500378469115827696

`A055396(and(-1, A073751(n+1)))`
-/

namespace A342011.P15500378469115827696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.land (-1) (A073751 (n + 1))).toNat

end

end A342011.P15500378469115827696

/-! ## A342011.P11703077101475787145

`A258851(A073751(∑[2*n+1]/(n+1)))`
-/

namespace A342011.P11703077101475787145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A073751 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A342011.P11703077101475787145

/-! ## A342011.P17666847563307663397

`A258851(floor(A073751(n+1)+n/(n+1)))`
-/

namespace A342011.P17666847563307663397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 ⌊(A073751 (n + 1) : ℚ) + (n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A342011.P17666847563307663397

/-! ## A342011.P16565957405706752426

`A003963(A073751(n+1)+A000038(n))`
-/

namespace A342011.P16565957405706752426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A073751 (n + 1) + A000038 n).toNat

end

end A342011.P16565957405706752426

/-! ## A342011.P12881380120885167908

`A003963(A073751(n+1)-A000007(n))`
-/

namespace A342011.P12881380120885167908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A073751 (n + 1) - A000007 n).toNat

end

end A342011.P12881380120885167908

/-! ## A342011.P3914382252223755884

`A003977(A073751(n+1))-A033999(n)²`
-/

namespace A342011.P3914382252223755884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A073751 (n + 1)).toNat - A033999 n ^ 2

end

end A342011.P3914382252223755884

/-! ## A342011.P3976515949849595079

`A007814(2*n+1)+A003963(A073751(n+1))`
-/

namespace A342011.P3976515949849595079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + A003963 (A073751 (n + 1)).toNat

end

end A342011.P3976515949849595079

/-! ## A342011.P18360391648458038160

`A033999(2*n+1)+A003977(A073751(n+1))`
-/

namespace A342011.P18360391648458038160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A003977 (A073751 (n + 1)).toNat

end

end A342011.P18360391648458038160

/-! ## A342011.P17793943185376236862

`A258851((A073751(n+1)+A073751(n+1))/2)`
-/

namespace A342011.P17793943185376236862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.roundAway ((A073751 (n + 1) + A073751 (n + 1) : ℚ) / 2)).toNat

end

end A342011.P17793943185376236862

/-! ## A342011.P7385755569423502280

`A252735(2*A073751(n+1))+1`
-/

namespace A342011.P7385755569423502280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (2 * A073751 (n + 1)).toNat + 1

end

end A342011.P7385755569423502280

/-!
# A342012: Primorial deflation of the n-th colossally abundant number: the unique integer k such that A108951(k) = A004490(n).

The programs for A342012, there is no canonical definition to state claims against.
-/

/-! ## A342012.P4916459413772234870

`A005940(1+A342013(n+1))`
-/

namespace A342012.P4916459413772234870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A342013 (n + 1)).toNat

end

end A342012.P4916459413772234870

/-! ## A342012.P5570063283437936497

`A329900(A004490(n+1))`
-/

namespace A342012.P5570063283437936497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A004490 (n + 1)).toNat

end

end A342012.P5570063283437936497

/-! ## A342012.P16001158145581220411

`∏[A073751(n+1)/A008578(A342011(n+1))]`
-/

namespace A342012.P16001158145581220411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073751 (n + 1) : ℚ) / (A008578 (A342011 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342012.P16001158145581220411

/-! ## A342012.P15608931072807283555

`A004490(n+1)/∏[A008578(A342011(n+1))]`
-/

namespace A342012.P15608931072807283555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342011 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004490 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A342012.P15608931072807283555

/-! ## A342012.P7037780536764667419

`A331170(A353561(n+1))`
-/

namespace A342012.P7037780536764667419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (A353561 (n + 1)).toNat

end

end A342012.P7037780536764667419

/-!
# A342013: Position of the n-th colossally abundant number in A329886, the primorial inflation of Doudna-tree.

The programs for A342013, there is no canonical definition to state claims against.
-/

/-! ## A342013.P14812857399398919165

`A156552(A342012(n+1))`
-/

namespace A342013.P14812857399398919165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A342012 (n + 1)).toNat

end

end A342013.P14812857399398919165

/-! ## A342013.P3230561216062291268

`A005941(A342012(n+1))-A252744(2*(n+1))`
-/

namespace A342013.P3230561216062291268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A342012 (n + 1)).toNat - A252744 (2 * (n + 1))

end

end A342013.P3230561216062291268

/-! ## A342013.P16338922876911928772

`A057428(3*n+4)+A005941(A342012(n+1))`
-/

namespace A342013.P16338922876911928772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 4) + A005941 (A342012 (n + 1)).toNat

end

end A342013.P16338922876911928772

/-! ## A342013.P10584209743136580944

`A253564(A353561(n+1))`
-/

namespace A342013.P10584209743136580944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (A353561 (n + 1)).toNat

end

end A342013.P10584209743136580944

/-!
# A342014: Arithmetic derivative of n, taken modulo n: a(n) = A003415(n) mod n.

The programs for A342014, the canonical program `A342014.P7987334312565012006` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342014 has offset 1).

The definition of A342014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342014.P7987334312565012006

`A003415(n+1)%(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A342014

/-- `A003415(n+1)%(n+1)` -/
def P7987334312565012006.Spec : Prop :=
  ∀ n, P7987334312565012006.a n = A342014 (n + 1)

theorem P7987334312565012006.correct : P7987334312565012006.Spec := by
  intro n
  simp only [A342014, Nat.add_sub_cancel]

end A342014

/-! ## A342014.P8410637872213872506

`∑[A258057(n)]%(n+1)`
-/

namespace A342014.P8410637872213872506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A342014.P8410637872213872506

namespace A342014

/-- `∑[A258057(n)]%(n+1)` -/
def P8410637872213872506.Spec : Prop :=
  ∀ n, P8410637872213872506.a n = A342014 (n + 1)

end A342014

/-! ## A342014.P6410544552212630483

`A129283(n+1)%(n+1)`
-/

namespace A342014.P6410544552212630483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 (n + 1)) (n + 1 : ℤ)

end

end A342014.P6410544552212630483

namespace A342014

/-- `A129283(n+1)%(n+1)` -/
def P6410544552212630483.Spec : Prop :=
  ∀ n, P6410544552212630483.a n = A342014 (n + 1)

end A342014

/-! ## A342014.P11095568257242324327

`(A168036(n+1)+1+n)%(n+1)`
-/

namespace A342014.P11095568257242324327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168036 (n + 1) + 1 + (n : ℤ)) (n + 1 : ℤ)

end

end A342014.P11095568257242324327

namespace A342014

/-- `(A168036(n+1)+1+n)%(n+1)` -/
def P11095568257242324327.Spec : Prop :=
  ∀ n, P11095568257242324327.a n = A342014 (n + 1)

end A342014

/-! ## A342014.P15104606658135798061

`∑{d}[n+1, (n+1)/A014963(#)]%(n+1)`
-/

namespace A342014.P15104606658135798061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (A014963 d : ℚ))) (n + 1 : ℤ)

end

end A342014.P15104606658135798061

namespace A342014

/-- `∑{d}[n+1, (n+1)/A014963(#)]%(n+1)` -/
def P15104606658135798061.Spec : Prop :=
  ∀ n, P15104606658135798061.a n = A342014 (n + 1)

end A342014

/-! ## A342014.P5150961929464584963

`A319703(2*(n+1))%(n+1)`
-/

namespace A342014.P5150961929464584963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319703 (2 * (n + 1))) (n + 1 : ℤ)

end

end A342014.P5150961929464584963

namespace A342014

/-- `A319703(2*(n+1))%(n+1)` -/
def P5150961929464584963.Spec : Prop :=
  ∀ n, P5150961929464584963.a n = A342014 (n + 1)

end A342014

/-! ## A342014.P11674329475443321909

`A348375(n+1)%(n+1)`
-/

namespace A342014.P11674329475443321909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348375 (n + 1)) (n + 1 : ℤ)

end

end A342014.P11674329475443321909

namespace A342014

/-- `A348375(n+1)%(n+1)` -/
def P11674329475443321909.Spec : Prop :=
  ∀ n, P11674329475443321909.a n = A342014 (n + 1)

end A342014

/-! ## A342014.P1249258343391853897

`A348393(n+1)%(n+1)`
-/

namespace A342014.P1249258343391853897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348393 (n + 1)) (n + 1 : ℤ)

end

end A342014.P1249258343391853897

namespace A342014

/-- `A348393(n+1)%(n+1)` -/
def P1249258343391853897.Spec : Prop :=
  ∀ n, P1249258343391853897.a n = A342014 (n + 1)

end A342014

/-!
# A342015: a(n) = A003415(A276086(n)) mod A276086(n).

The programs for A342015, there is no canonical definition to state claims against.
-/

/-! ## A342015.P6484537072727477081

`A342014(A276086(n))`
-/

namespace A342015.P6484537072727477081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342014 (A276086 n).toNat

end

end A342015.P6484537072727477081

/-! ## A342015.P13274544798976516850

`A327860(n)%A276086(n)`
-/

namespace A342015.P13274544798976516850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327860 n) (A276086 n)

end

end A342015.P13274544798976516850

/-! ## A342015.P15908968624172056423

`(A342016(n)+A276086(n))%A276086(n)`
-/

namespace A342015.P15908968624172056423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342016 n + A276086 n) (A276086 n)

end

end A342015.P15908968624172056423

/-! ## A342015.P12946317704281614859

`(A328572(n)*A342002(n))%A276086(n)`
-/

namespace A342015.P12946317704281614859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328572 n * A342002 n) (A276086 n)

end

end A342015.P12946317704281614859

/-! ## A342015.P4924574326964513245

`A342002(n)%A328571(n)*A328572(n)`
-/

namespace A342015.P4924574326964513245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342002 n) (A328571 n) * A328572 n

end

end A342015.P4924574326964513245

/-! ## A342015.P15899703823071935557

`(A328572(n)*A346253(A328622(n)))%A276086(n)`
-/

namespace A342015.P15899703823071935557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328572 n * A346253 (A328622 n).toNat) (A276086 n)

end

end A342015.P15899703823071935557

/-! ## A342015.P7705211883305427080

`(A328572(n)*A344760(A289234(n)))%A276086(n)`
-/

namespace A342015.P7705211883305427080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328572 n * A344760 (A289234 n).toNat) (A276086 n)

end

end A342015.P7705211883305427080

/-! ## A342015.P7819941092111151704

`(A328572(n)*A344761(A328626(n)))%A276086(n)`
-/

namespace A342015.P7819941092111151704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328572 n * A344761 (A328626 n).toNat) (A276086 n)

end

end A342015.P7819941092111151704

/-! ## A342015.P9724241034973324783

`(A328572(n)*A346252(A328623(n)))%A276086(n)`
-/

namespace A342015.P9724241034973324783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328572 n * A346252 (A328623 n).toNat) (A276086 n)

end

end A342015.P9724241034973324783

/-! ## A342015.P13478371492407352041

`A344026(A277022(n))%A276086(n)`
-/

namespace A342015.P13478371492407352041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344026 (A277022 n).toNat) (A276086 n)

end

end A342015.P13478371492407352041

/-!
# A342016: Difference between the arithmetic derivative of A276086(n) and A276086(n) itself, which is the prime product form of primorial base expansion of n.

The programs for A342016, there is no canonical definition to state claims against.
-/

/-! ## A342016.P8270086867659533894

`A327860(n)-A276086(n)`
-/

namespace A342016.P8270086867659533894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A276086 n

end

end A342016.P8270086867659533894

/-! ## A342016.P8219257420614311090

`A168036(A276086(n))`
-/

namespace A342016.P8219257420614311090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A276086 n).toNat

end

end A342016.P8219257420614311090

/-! ## A342016.P16089863137355419513

`A327860(n)-(A328844(n)+A328843(n))`
-/

namespace A342016.P16089863137355419513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - (A328844 n + A328843 n)

end

end A342016.P16089863137355419513

/-! ## A342016.P14335014721297660957

`A327860(n)+A348950(n)-A348949(n)`
-/

namespace A342016.P14335014721297660957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n + (A348950 n - A348949 n)

end

end A342016.P14335014721297660957

/-! ## A342016.P13584782097029084587

`A328572(n)*A342002(n)-A276086(n)`
-/

namespace A342016.P13584782097029084587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A342002 n - A276086 n

end

end A342016.P13584782097029084587

/-! ## A342016.P5700348512321039611

`A327860(n)-A328571(n)*A328572(n)`
-/

namespace A342016.P5700348512321039611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A328571 n * A328572 n

end

end A342016.P5700348512321039611

/-! ## A342016.P12200783332875246607

`(A342002(n)-A328571(n))*A328572(n)`
-/

namespace A342016.P12200783332875246607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A342002 n - A328571 n) * A328572 n

end

end A342016.P12200783332875246607

/-! ## A342016.P17727194571668782471

`A328572(n)*A346253(A328622(n))-A276086(n)`
-/

namespace A342016.P17727194571668782471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A346253 (A328622 n).toNat - A276086 n

end

end A342016.P17727194571668782471

/-! ## A342016.P11884924685689539861

`A328572(n)*A344760(A289234(n))-A276086(n)`
-/

namespace A342016.P11884924685689539861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A344760 (A289234 n).toNat - A276086 n

end

end A342016.P11884924685689539861

/-! ## A342016.P17429192205699963834

`A328572(n)*A344761(A328626(n))-A276086(n)`
-/

namespace A342016.P17429192205699963834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A344761 (A328626 n).toNat - A276086 n

end

end A342016.P17429192205699963834

/-! ## A342016.P6710764205433285900

`A327860(n)-A328627(A328625(n))`
-/

namespace A342016.P6710764205433285900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A328627 (A328625 n).toNat

end

end A342016.P6710764205433285900

/-! ## A342016.P9450370235335612648

`A327860(n)-A328624(A328626(n))`
-/

namespace A342016.P9450370235335612648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A328624 (A328626 n).toNat

end

end A342016.P9450370235335612648

/-! ## A342016.P18125704623036071518

`A328572(n)*A346252(A328623(n))-A276086(n)`
-/

namespace A342016.P18125704623036071518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A346252 (A328623 n).toNat - A276086 n

end

end A342016.P18125704623036071518

/-! ## A342016.P565510816277836950

`A344026(A277022(n))-A276086(n)`
-/

namespace A342016.P565510816277836950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A277022 n).toNat - A276086 n

end

end A342016.P565510816277836950

/-!
# A342017: a(n) = A342007(A327860(n)), where A342007 is multiplicative with a(p^e) = p^floor(e/p), and A327860 is arithmetic derivative of A276086.

The programs for A342017, there is no canonical definition to state claims against.
-/

/-! ## A342017.P626979894945445369

`A342007(A327860(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342017.P626979894945445369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A327860 (n + 1)).toNat

end

end A342017.P626979894945445369

/-! ## A342017.P7003259105181914212

`A342007(A342002(n+1))`
-/

namespace A342017.P7003259105181914212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A342002 (n + 1)).toNat

end

end A342017.P7003259105181914212

/-! ## A342017.P16379906880434373735

`A342007(A342419(n+1)-A342417(n+1))`
-/

namespace A342017.P16379906880434373735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A342419 (n + 1) - A342417 (n + 1)).toNat

end

end A342017.P16379906880434373735

/-! ## A342017.P10354588233358509590

`A345000(A345000(n+1))%A306890(A085972(n+2)+1)`
-/

namespace A342017.P10354588233358509590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345000 (A345000 (n + 1)).toNat) (A306890 (A085972 (n + 2) + 1).toNat)

end

end A342017.P10354588233358509590

/-! ## A342017.P7413639591352285554

`A345000(A345000(n+1))%A111470(n+5)`
-/

namespace A342017.P7413639591352285554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345000 (A345000 (n + 1)).toNat) (A111470 (n + 5))

end

end A342017.P7413639591352285554

/-!
# A342018: Numbers k such that the arithmetic derivative of A276086(k) is divisible by at least one prime power divisor of the form p^p, where A276086 gives the prime product form of primorial base expansion of its argument.

The programs for A342018, there is no canonical definition to state claims against.
-/

/-! ## A342018.P10089175685051439465

`lt[1, A342017(n+1)]+1`
-/

namespace A342018.P10089175685051439465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342018.P10089175685051439465

/-! ## A342018.P17049496642703362199

`lt[n*A368916(n), n]`
-/

namespace A342018.P17049496642703362199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A368916 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342018.P17049496642703362199

/-! ## A342018.P18201363051727544900

`eq[A127802(n), A368916(n)]`
-/

namespace A342018.P18201363051727544900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P18201363051727544900

/-! ## A342018.P13998288729954340055

`eq[A000038(n), A368916(n)]`
-/

namespace A342018.P13998288729954340055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P13998288729954340055

/-! ## A342018.P9237433607570370866

`eq[A000007(n), A368916(n)]`
-/

namespace A342018.P9237433607570370866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P9237433607570370866

/-! ## A342018.P12964085568108364526

`eq[A045534(n), A368916(n)]`
-/

namespace A342018.P12964085568108364526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P12964085568108364526

/-! ## A342018.P2017608653226456684

`eq[A099894(n), A368916(n)]`
-/

namespace A342018.P2017608653226456684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P2017608653226456684

/-! ## A342018.P1979306656774397592

`eq[A130706(n), A368916(n)]`
-/

namespace A342018.P1979306656774397592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P1979306656774397592

/-! ## A342018.P6734883112777941289

`eq[A166926(n), A368916(n)]`
-/

namespace A342018.P6734883112777941289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P6734883112777941289

/-! ## A342018.P2659786917686610518

`eq[A167858(n), A368916(n)]`
-/

namespace A342018.P2659786917686610518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P2659786917686610518

/-! ## A342018.P4913177028433534309

`eq[A167876(n), A368916(n)]`
-/

namespace A342018.P4913177028433534309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P4913177028433534309

/-! ## A342018.P8891935959758190566

`eq[A167891(n), A368916(n)]`
-/

namespace A342018.P8891935959758190566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P8891935959758190566

/-! ## A342018.P18393533737222885470

`eq[A169585(n), A368916(n)]`
-/

namespace A342018.P18393533737222885470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P18393533737222885470

/-! ## A342018.P12178826429786568937

`eq[A175564(n), A368916(n)]`
-/

namespace A342018.P12178826429786568937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P12178826429786568937

/-! ## A342018.P16207754695178807042

`eq[1, A368916(n)+A054977(n)]`
-/

namespace A342018.P16207754695178807042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342018.P16207754695178807042

/-! ## A342018.P2481407693738771079

`eq[1, A368916(n)+A158388(n)]`
-/

namespace A342018.P2481407693738771079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342018.P2481407693738771079

/-! ## A342018.P6447217603649684528

`eq[A000007(n), A256750(A342002(n))]`
-/

namespace A342018.P6447217603649684528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A342002 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P6447217603649684528

/-! ## A342018.P10002634241636583130

`eq[A000038(n), A256750(A342002(n))]`
-/

namespace A342018.P10002634241636583130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A342002 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P10002634241636583130

/-! ## A342018.P3136175586190072303

`eq[A127802(n), A256750(A342002(n))]`
-/

namespace A342018.P3136175586190072303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A342002 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342018.P3136175586190072303

/-!
# A342019: Number of prime power divisors of the form p^p in the arithmetic derivative of A276086(n), the prime product form of primorial base expansion of n.

The programs for A342019, there is no canonical definition to state claims against.
-/

/-! ## A342019.P7585689978248013193

`A001221(A342017(n+1))`
-/

namespace A342019.P7585689978248013193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342017 (n + 1)).toNat

end

end A342019.P7585689978248013193

/-! ## A342019.P15082877284863757264

`A129251(A342002(n+1))`
-/

namespace A342019.P15082877284863757264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A342002 (n + 1)).toNat

end

end A342019.P15082877284863757264

/-! ## A342019.P16720050005326486883

`A056170(A342017(n+1)²)`
-/

namespace A342019.P16720050005326486883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A342017 (n + 1) ^ 2).toNat

end

end A342019.P16720050005326486883

/-! ## A342019.P7748272850863445996

`A056170(A342017(n+1)*A342017(n+1))`
-/

namespace A342019.P7748272850863445996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A342017 (n + 1) * A342017 (n + 1)).toNat

end

end A342019.P7748272850863445996

/-! ## A342019.P15278084273190861237

`A285728(A342017(n+1)%A186288(3*(n+1)))`
-/

namespace A342019.P15278084273190861237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (Int.tmod (A342017 (n + 1)) (A186288 (3 * (n + 1)))).toNat

end

end A342019.P15278084273190861237

/-! ## A342019.P13116677623052383912

`A285728(A342017(n+1))%A061779(3*n+4)`
-/

namespace A342019.P13116677623052383912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285728 (A342017 (n + 1)).toNat) (A061779 (3 * n + 4))

end

end A342019.P13116677623052383912

/-! ## A342019.P13210403461236283673

`A341996(2^A342017(n+1))`
-/

namespace A342019.P13210403461236283673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A342017 (n + 1) : ℤ))).toNat

end

end A342019.P13210403461236283673

/-! ## A342019.P6933159656146891442

`A341999(2^A342017(n+1))`
-/

namespace A342019.P6933159656146891442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A342017 (n + 1) : ℤ))).toNat

end

end A342019.P6933159656146891442

/-! ## A342019.P17276505491362909389

`1-A368905(A277022(n+1))`
-/

namespace A342019.P17276505491362909389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A368905 (A277022 (n + 1)).toNat

end

end A342019.P17276505491362909389

/-! ## A342019.P1688973520691719981

`A196657(n)%A342017(n+1)`
-/

namespace A342019.P1688973520691719981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196657 n) (A342017 (n + 1))

end

end A342019.P1688973520691719981

/-! ## A342019.P17864643221313600312

`A048474(n)%A342017(n+1)`
-/

namespace A342019.P17864643221313600312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048474 n) (A342017 (n + 1))

end

end A342019.P17864643221313600312

/-! ## A342019.P18343220750894820817

`A048477(n)%A342017(n+1)`
-/

namespace A342019.P18343220750894820817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048477 n) (A342017 (n + 1))

end

end A342019.P18343220750894820817

/-! ## A342019.P15457061558653886220

`A048480(n)%A342017(n+1)`
-/

namespace A342019.P15457061558653886220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048480 n) (A342017 (n + 1))

end

end A342019.P15457061558653886220

/-! ## A342019.P12229862792512359948

`A048506(n)%A342017(n+1)`
-/

namespace A342019.P12229862792512359948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048506 n) (A342017 (n + 1))

end

end A342019.P12229862792512359948

/-! ## A342019.P16363247688176445514

`A048513(n)%A342017(n+1)`
-/

namespace A342019.P16363247688176445514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048513 n) (A342017 (n + 1))

end

end A342019.P16363247688176445514

/-! ## A342019.P10855966676239000147

`A048482(n)%A342017(n+1)`
-/

namespace A342019.P10855966676239000147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048482 n) (A342017 (n + 1))

end

end A342019.P10855966676239000147

/-! ## A342019.P5325298395171869695

`A107248(n)%A342017(n+1)`
-/

namespace A342019.P5325298395171869695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107248 n) (A342017 (n + 1))

end

end A342019.P5325298395171869695

/-! ## A342019.P10330583773445148506

`A041892(n)%A342017(n+1)`
-/

namespace A342019.P10330583773445148506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041892 n) (A342017 (n + 1))

end

end A342019.P10330583773445148506

/-! ## A342019.P14470024324857273664

`A000964(n)%A342017(n+1)`
-/

namespace A342019.P14470024324857273664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000964 n) (A342017 (n + 1))

end

end A342019.P14470024324857273664

/-! ## A342019.P16668193618438578439

`A075059(n)%A342017(n+1)`
-/

namespace A342019.P16668193618438578439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075059 n) (A342017 (n + 1))

end

end A342019.P16668193618438578439

/-!
# A342020: Row sums of A342000.

The programs for A342020, there is no canonical definition to state claims against.
-/

/-! ## A342020.P7855769521987276772

`A048151(or(A001844(n), A287255(n)))`
-/

namespace A342020.P7855769521987276772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (Int.lor (A001844 n) (A287255 n)).toNat

end

end A342020.P7855769521987276772

/-!
# A342023: a(n) = 1 if there is a prime p such that p^p divides n, otherwise 0.

The programs for A342023, the canonical program `A342023.P1722012190854483428` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342023 has offset 1).

The definition of A342023 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342023.P1722012190854483428

`1-A359550(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A342023

/-- `1-A359550(n+1)` -/
def P1722012190854483428.Spec : Prop :=
  ∀ n, P1722012190854483428.a n = A342023 (n + 1)

theorem P1722012190854483428.correct : P1722012190854483428.Spec := by
  intro n
  simp only [A342023, Nat.add_sub_cancel]

end A342023

/-! ## A342023.P17868571348342024027

`A341999(n+1)-A359546(n+1)`
-/

namespace A342023.P17868571348342024027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (n + 1) - A359546 (n + 1)

end

end A342023.P17868571348342024027

namespace A342023

/-- `A341999(n+1)-A359546(n+1)` -/
def P17868571348342024027.Spec : Prop :=
  ∀ n, P17868571348342024027.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P15110384868559613193

`1-Δ[A377982(n)]`
-/

namespace A342023.P15110384868559613193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A342023.P15110384868559613193

namespace A342023

/-- `1-Δ[A377982(n)]` -/
def P15110384868559613193.Spec : Prop :=
  ∀ n, P15110384868559613193.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P6505385313399498522

`floor(sqrt(A129251(n+1)))`
-/

namespace A342023.P6505385313399498522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A129251 (n + 1))

end

end A342023.P6505385313399498522

namespace A342023

/-- `floor(sqrt(A129251(n+1)))` -/
def P6505385313399498522.Spec : Prop :=
  ∀ n, P6505385313399498522.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P16874146130433845804

`char[A100716(n+1)-1]`
-/

namespace A342023.P16874146130433845804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342023.P16874146130433845804

namespace A342023

/-- `char[A100716(n+1)-1]` -/
def P16874146130433845804.Spec : Prop :=
  ∀ n, (P16874146130433845804.a n : ℤ) = A342023 (n + 1)

end A342023

/-! ## A342023.P10283308530279129405

`char[lt[1, A327939(n+1)]]`
-/

namespace A342023.P10283308530279129405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A342023.P10283308530279129405

namespace A342023

/-- `char[lt[1, A327939(n+1)]]` -/
def P10283308530279129405.Spec : Prop :=
  ∀ n, (P10283308530279129405.a n : ℤ) = A342023 (n + 1)

end A342023

/-! ## A342023.P12137324296433409356

`char[lt[1, A342007(n+1)]]`
-/

namespace A342023.P12137324296433409356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A342023.P12137324296433409356

namespace A342023

/-- `char[lt[1, A342007(n+1)]]` -/
def P12137324296433409356.Spec : Prop :=
  ∀ n, (P12137324296433409356.a n : ℤ) = A342023 (n + 1)

end A342023

/-! ## A342023.P3751273256219064090

`n²%A129252(n+1)`
-/

namespace A342023.P3751273256219064090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A129252 (n + 1))

end

end A342023.P3751273256219064090

namespace A342023

/-- `n²%A129252(n+1)` -/
def P3751273256219064090.Spec : Prop :=
  ∀ n, P3751273256219064090.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P3561616958665009390

`floor(acot(A256750(n+1)²))`
-/

namespace A342023.P3561616958665009390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A256750 (n + 1) ^ 2 : ℝ)⌋

end

end A342023.P3561616958665009390

namespace A342023

/-- `floor(acot(A256750(n+1)²))` -/
def P3561616958665009390.Spec : Prop :=
  ∀ n, P3561616958665009390.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P5088374742443660592

`(n+2)%A327936(n+1)`
-/

namespace A342023.P5088374742443660592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A327936 (n + 1))

end

end A342023.P5088374742443660592

namespace A342023

/-- `(n+2)%A327936(n+1)` -/
def P5088374742443660592.Spec : Prop :=
  ∀ n, P5088374742443660592.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P9234158668246754205

`C(n, C(A327937(n+1), n))`
-/

namespace A342023.P9234158668246754205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A327937 (n + 1)).toNat n)

end

end A342023.P9234158668246754205

namespace A342023

/-- `C(n, C(A327937(n+1), n))` -/
def P9234158668246754205.Spec : Prop :=
  ∀ n, (P9234158668246754205.a n : ℤ) = A342023 (n + 1)

end A342023

/-! ## A342023.P9943164876691969840

`C(n, C(A327938(n+1), n))`
-/

namespace A342023.P9943164876691969840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A327938 (n + 1)).toNat n)

end

end A342023.P9943164876691969840

namespace A342023

/-- `C(n, C(A327938(n+1), n))` -/
def P9943164876691969840.Spec : Prop :=
  ∀ n, (P9943164876691969840.a n : ℤ) = A342023 (n + 1)

end A342023

/-! ## A342023.P10967754929572833092

`A124010(A347398(n+1))`
-/

namespace A342023.P10967754929572833092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A347398 (n + 1)).toNat

end

end A342023.P10967754929572833092

namespace A342023

/-- `A124010(A347398(n+1))` -/
def P10967754929572833092.Spec : Prop :=
  ∀ n, P10967754929572833092.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P3999609575289690842

`A341996(A327939(n+1))`
-/

namespace A342023.P3999609575289690842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A327939 (n + 1)).toNat

end

end A342023.P3999609575289690842

namespace A342023

/-- `A341996(A327939(n+1))` -/
def P3999609575289690842.Spec : Prop :=
  ∀ n, P3999609575289690842.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P16791860175096921272

`A000007(A256750(n+1)²)`
-/

namespace A342023.P16791860175096921272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A256750 (n + 1) ^ 2).toNat

end

end A342023.P16791860175096921272

namespace A342023

/-- `A000007(A256750(n+1)²)` -/
def P16791860175096921272.Spec : Prop :=
  ∀ n, P16791860175096921272.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P16719509846375445193

`1-A341625(A085731(n+1))`
-/

namespace A342023.P16719509846375445193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341625 (A085731 (n + 1)).toNat

end

end A342023.P16719509846375445193

namespace A342023

/-- `1-A341625(A085731(n+1))` -/
def P16719509846375445193.Spec : Prop :=
  ∀ n, P16719509846375445193.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P15194587826718416895

`A087049(2*A327939(n+1))`
-/

namespace A342023.P15194587826718416895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (2 * A327939 (n + 1)).toNat

end

end A342023.P15194587826718416895

namespace A342023

/-- `A087049(2*A327939(n+1))` -/
def P15194587826718416895.Spec : Prop :=
  ∀ n, P15194587826718416895.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P6519416239611485113

`A341999(2*A327939(n+1))`
-/

namespace A342023.P6519416239611485113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (2 * A327939 (n + 1)).toNat

end

end A342023.P6519416239611485113

namespace A342023

/-- `A341999(2*A327939(n+1))` -/
def P6519416239611485113.Spec : Prop :=
  ∀ n, P6519416239611485113.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P16225643052000749969

`A016819(n)%A368334(n+1)`
-/

namespace A342023.P16225643052000749969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A368334 (n + 1))

end

end A342023.P16225643052000749969

namespace A342023

/-- `A016819(n)%A368334(n+1)` -/
def P16225643052000749969.Spec : Prop :=
  ∀ n, P16225643052000749969.a n = A342023 (n + 1)

end A342023

/-! ## A342023.P2234784409770299823

`A017562(n)%A368334(n+1)`
-/

namespace A342023.P2234784409770299823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017562 n) (A368334 (n + 1))

end

end A342023.P2234784409770299823

namespace A342023

/-- `A017562(n)%A368334(n+1)` -/
def P2234784409770299823.Spec : Prop :=
  ∀ n, P2234784409770299823.a n = A342023 (n + 1)

end A342023

/-!
# A342024: 

The programs for A342024, there is no canonical definition to state claims against.
-/

/-! ## A342024.P15760813735781360907

`A342023(5*(n+1))`
-/

namespace A342024.P15760813735781360907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (5 * (n + 1))

end

end A342024.P15760813735781360907

/-! ## A342024.P13922862495482973338

`1-A359543(A100762(n+1))`
-/

namespace A342024.P13922862495482973338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359543 (A100762 (n + 1)).toNat

end

end A342024.P13922862495482973338

/-! ## A342024.P14191903429042770785

`A097866(A045991(n+4)%A100762(n+1))`
-/

namespace A342024.P14191903429042770785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097866 (Int.tmod (A045991 (n + 4)) (A100762 (n + 1))).toNat

end

end A342024.P14191903429042770785

/-!
# A342025: a(n) = 1 if n has the same numbers of prime factors of forms 4*k+1 and 4*k+3 when counted with multiplicity, otherwise 0.

The programs for A342025, the canonical program `A342025.P9862321101140846268` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342025 has offset 1).

The definition of A342025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342025.P13192128779486727452

`char[A072202(n+1)-1]`
-/

namespace A342025.P13192128779486727452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A342025.P13192128779486727452

namespace A342025

/-- `char[A072202(n+1)-1]` -/
def P13192128779486727452.Spec : Prop :=
  ∀ n, (P13192128779486727452.a n : ℤ) = A342025 (n + 1)

end A342025

/-! ## A342025.P10826300526536043178

`∏{d}[A079635(n+1), log(#)]`
-/

namespace A342025.P10826300526536043178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A342025.P10826300526536043178

namespace A342025

/-- `∏{d}[A079635(n+1), log(#)]` -/
def P10826300526536043178.Spec : Prop :=
  ∀ n, P10826300526536043178.a n = (A342025 (n + 1) : ℝ)

end A342025

/-! ## A342025.P9862321101140846268

`A214264(A079635(n+1)²)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A342025

/-- `A214264(A079635(n+1)²)` -/
def P9862321101140846268.Spec : Prop :=
  ∀ n, P9862321101140846268.a n = A342025 (n + 1)

theorem P9862321101140846268.correct : P9862321101140846268.Spec := by
  intro n
  simp only [A342025, Nat.add_sub_cancel]

end A342025

/-! ## A342025.P12533597789439905903

`1-A092368(A079635(n+1)²)`
-/

namespace A342025.P12533597789439905903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A092368 (A079635 (n + 1) ^ 2).toNat

end

end A342025.P12533597789439905903

namespace A342025

/-- `1-A092368(A079635(n+1)²)` -/
def P12533597789439905903.Spec : Prop :=
  ∀ n, P12533597789439905903.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P14666939567508522632

`2-A000122(A079635(n+1)²)`
-/

namespace A342025.P14666939567508522632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 (A079635 (n + 1) ^ 2).toNat

end

end A342025.P14666939567508522632

namespace A342025

/-- `2-A000122(A079635(n+1)²)` -/
def P14666939567508522632.Spec : Prop :=
  ∀ n, P14666939567508522632.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P2926996408604552887

`A000122(2*A079635(n+1)²)`
-/

namespace A342025.P2926996408604552887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * A079635 (n + 1) ^ 2).toNat

end

end A342025.P2926996408604552887

namespace A342025

/-- `A000122(2*A079635(n+1)²)` -/
def P2926996408604552887.Spec : Prop :=
  ∀ n, P2926996408604552887.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P7343435226360807264

`A151669(2*A079635(n+1)²)`
-/

namespace A342025.P7343435226360807264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 (2 * A079635 (n + 1) ^ 2).toNat

end

end A342025.P7343435226360807264

namespace A342025

/-- `A151669(2*A079635(n+1)²)` -/
def P7343435226360807264.Spec : Prop :=
  ∀ n, P7343435226360807264.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P13482222088481562134

`∏{d}[A079635(n+1), A079635(#)]²`
-/

namespace A342025.P13482222088481562134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A079635 d) ^ 2

end

end A342025.P13482222088481562134

namespace A342025

/-- `∏{d}[A079635(n+1), A079635(#)]²` -/
def P13482222088481562134.Spec : Prop :=
  ∀ n, P13482222088481562134.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P11673506259019024686

`1-A092368(A079635(n+1)^2)`
-/

namespace A342025.P11673506259019024686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A092368 (A079635 (n + 1) ^ 2).toNat

end

end A342025.P11673506259019024686

namespace A342025

/-- `1-A092368(A079635(n+1)^2)` -/
def P11673506259019024686.Spec : Prop :=
  ∀ n, P11673506259019024686.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P5408945719595659026

`A267133((A079635(n+1)²+1)²)`
-/

namespace A342025.P5408945719595659026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 ((A079635 (n + 1) ^ 2 + 1) ^ 2).toNat

end

end A342025.P5408945719595659026

namespace A342025

/-- `A267133((A079635(n+1)²+1)²)` -/
def P5408945719595659026.Spec : Prop :=
  ∀ n, P5408945719595659026.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P17393841477571121618

`C(A034693(n+2), lcm(n, A079635(n+1)))`
-/

namespace A342025.P17393841477571121618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034693 (n + 2)).toNat (Int.lcm (n : ℤ) (A079635 (n + 1)))

end

end A342025.P17393841477571121618

namespace A342025

/-- `C(A034693(n+2), lcm(n, A079635(n+1)))` -/
def P17393841477571121618.Spec : Prop :=
  ∀ n, (P17393841477571121618.a n : ℤ) = A342025 (n + 1)

end A342025

/-! ## A342025.P14021602418281344136

`A007814(A046523(A079635(n+1)²+1)+1)`
-/

namespace A342025.P14021602418281344136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (A079635 (n + 1) ^ 2 + 1).toNat + 1).toNat

end

end A342025.P14021602418281344136

namespace A342025

/-- `A007814(A046523(A079635(n+1)²+1)+1)` -/
def P14021602418281344136.Spec : Prop :=
  ∀ n, P14021602418281344136.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P15875265268251522345

`A000122(2*A079635(n+1)*A079635(n+1))`
-/

namespace A342025.P15875265268251522345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * A079635 (n + 1) * A079635 (n + 1)).toNat

end

end A342025.P15875265268251522345

namespace A342025

/-- `A000122(2*A079635(n+1)*A079635(n+1))` -/
def P15875265268251522345.Spec : Prop :=
  ∀ n, P15875265268251522345.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P4150162486070609470

`A151669(2*A079635(n+1)*A079635(n+1))`
-/

namespace A342025.P4150162486070609470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 (2 * A079635 (n + 1) * A079635 (n + 1)).toNat

end

end A342025.P4150162486070609470

namespace A342025

/-- `A151669(2*A079635(n+1)*A079635(n+1))` -/
def P4150162486070609470.Spec : Prop :=
  ∀ n, P4150162486070609470.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P12546084437299894251

`A010054(A001826((n+1)²)²)`
-/

namespace A342025.P12546084437299894251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A001826 ((n + 1) ^ 2) ^ 2).toNat

end

end A342025.P12546084437299894251

namespace A342025

/-- `A010054(A001826((n+1)²)²)` -/
def P12546084437299894251.Spec : Prop :=
  ∀ n, P12546084437299894251.a n = A342025 (n + 1)

end A342025

/-! ## A342025.P11232023302403174403

`∏{p}[A079635((n+1)²), A079635(#)]`
-/

namespace A342025.P11232023302403174403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A079635 p

end

end A342025.P11232023302403174403

namespace A342025

/-- `∏{p}[A079635((n+1)²), A079635(#)]` -/
def P11232023302403174403.Spec : Prop :=
  ∀ n, P11232023302403174403.a n = A342025 (n + 1)

end A342025

/-!
# A342026: Difference in the maximal prime exponents between the arithmetic derivative of A276086(n) and A276086(n) itself, which is the prime product form of primorial base expansion of n.

The programs for A342026, there is no canonical definition to state claims against.
-/

/-! ## A342026.P3772476229816597139

`A328391(n+1)-A328114(n+1)`
-/

namespace A342026.P3772476229816597139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A328114 (n + 1)

end

end A342026.P3772476229816597139

/-! ## A342026.P16790818568601184035

`A328310(A276086(n+1))`
-/

namespace A342026.P16790818568601184035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A276086 (n + 1)).toNat

end

end A342026.P16790818568601184035

/-! ## A342026.P11408154449174271846

`A351074(n+1)-A350074(n+1)`
-/

namespace A342026.P11408154449174271846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) - A350074 (n + 1)

end

end A342026.P11408154449174271846

/-! ## A342026.P819689902408793228

`A328391(n+1)-(A350074(n+1)+A051903(n+1))`
-/

namespace A342026.P819689902408793228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - (A350074 (n + 1) + A051903 (n + 1))

end

end A342026.P819689902408793228

/-! ## A342026.P6892325801776468545

`A051903(n+1)+A351074(n+1)-A328114(n+1)`
-/

namespace A342026.P6892325801776468545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + (A351074 (n + 1) - A328114 (n + 1))

end

end A342026.P6892325801776468545

/-! ## A342026.P1616063334707984193

`A328391(n+1)-(A350074(n+1)+A067029(A089247(n+1)))`
-/

namespace A342026.P1616063334707984193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - (A350074 (n + 1) + A067029 (A089247 (n + 1)).toNat)

end

end A342026.P1616063334707984193

/-! ## A342026.P9648430723401788716

`A351074(n+1)-(A328114(n+1)-A061395(A181819(n+1)))`
-/

namespace A342026.P9648430723401788716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) - (A328114 (n + 1) - A061395 (A181819 (n + 1)).toNat)

end

end A342026.P9648430723401788716

/-! ## A342026.P6437804363526924365

`A328391(n+1)-A051903(A276086(n+1))`
-/

namespace A342026.P6437804363526924365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - A051903 (A276086 (n + 1)).toNat

end

end A342026.P6437804363526924365

/-! ## A342026.P5017631088565315518

`A051903(A327860(n+1))-A328114(n+1)`
-/

namespace A342026.P5017631088565315518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A327860 (n + 1)).toNat - A328114 (n + 1)

end

end A342026.P5017631088565315518

/-! ## A342026.P14979708818522082383

`A051903(A327860(n+1))-A051903(A276086(n+1))`
-/

namespace A342026.P14979708818522082383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A327860 (n + 1)).toNat - A051903 (A276086 (n + 1)).toNat

end

end A342026.P14979708818522082383

/-!
# A342028: Numbers k such that k and k+1 both have mutually distinct exponents in their prime factorization (A130091).

The programs for A342028, the canonical program `A342028.P12226133476098750910` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342028 has offset 1).

The definition of A342028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342028.P12226133476098750910

`A130091(eq[1, Δ[A130091(n+1)]]+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342028

/-- `A130091(eq[1, Δ[A130091(n+1)]]+1)` -/
def P12226133476098750910.Spec : Prop :=
  ∀ n, P12226133476098750910.a n = A342028 (n + 1)

theorem P12226133476098750910.correct : P12226133476098750910.Spec := by
  intro n
  simp only [A342028, Nat.add_sub_cancel]

end A342028

/-! ## A342028.P1946974826364363795

`A130091(eq[1, A130091(n+2)-A130091(n+1)]+1)`
-/

namespace A342028.P1946974826364363795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 2) - A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342028.P1946974826364363795

namespace A342028

/-- `A130091(eq[1, A130091(n+2)-A130091(n+1)]+1)` -/
def P1946974826364363795.Spec : Prop :=
  ∀ n, P1946974826364363795.a n = A342028 (n + 1)

theorem P1946974826364363795.correct : P1946974826364363795.Spec := by
  intro n
  simp only [A342028, Nat.add_sub_cancel, A342028.P1946974826364363795.f1, A342028.P1946974826364363795.f2, A342028.P1946974826364363795.a, A342028.P12226133476098750910.f1, A342028.P12226133476098750910.f3, A342028.P12226133476098750910.f2, A342028.P12226133476098750910.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A342028

/-! ## A342028.P12975783639529409512

`record[A327498(A327498(n+2)-1)]`
-/

namespace A342028.P12975783639529409512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A327498 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342028.P12975783639529409512

namespace A342028

/-- `record[A327498(A327498(n+2)-1)]` -/
def P12975783639529409512.Spec : Prop :=
  ∀ n, P12975783639529409512.a n = A342028 (n + 1)

end A342028

/-! ## A342028.P12933433320718863737

`record[A327498(n+1)%A327498(n+2)]`
-/

namespace A342028.P12933433320718863737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327498 (n + 1)) (A327498 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342028.P12933433320718863737

namespace A342028

/-- `record[A327498(n+1)%A327498(n+2)]` -/
def P12933433320718863737.Spec : Prop :=
  ∀ n, P12933433320718863737.a n = A342028 (n + 1)

end A342028

/-! ## A342028.P10651673792983512444

`A327498(eq[A327498(n+1)+1, A327498(n+2)]+1)`
-/

namespace A342028.P10651673792983512444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A342028.P10651673792983512444

namespace A342028

/-- `A327498(eq[A327498(n+1)+1, A327498(n+2)]+1)` -/
def P10651673792983512444.Spec : Prop :=
  ∀ n, P10651673792983512444.a n = A342028 (n + 1)

end A342028

/-! ## A342028.P12108219678808218148

`eq[char[A327498(n+1)], A327499(n+1)]`
-/

namespace A342028.P12108219678808218148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A342028.P12108219678808218148

namespace A342028

/-- `eq[char[A327498(n+1)], A327499(n+1)]` -/
def P12108219678808218148.Spec : Prop :=
  ∀ n, (P12108219678808218148.a n : ℤ) = A342028 (n + 1)

end A342028

/-!
# A342029: Starts of runs of 3 consecutive numbers that have mutually distinct exponents in their prime factorization (A130091).

The programs for A342029, the canonical program `A342029.P4108827623858297385` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342029 has offset 1).

The definition of A342029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342029.P4108827623858297385

`∩[A342028(n+1)-1, A342028(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A342029

/-- `∩[A342028(n+1)-1, A342028(n+1)]` -/
def P4108827623858297385.Spec : Prop :=
  ∀ n, (P4108827623858297385.a n : ℤ) = A342029 (n + 1)

theorem P4108827623858297385.correct : P4108827623858297385.Spec := by
  intro n
  simp only [A342029, Nat.add_sub_cancel]

end A342029

/-!
# A342030: Starts of runs of 4 consecutive numbers that have mutually distinct exponents in their prime factorization (A130091).

The programs for A342030, there is no canonical definition to state claims against.
-/

/-! ## A342030.P1057493099901620420

`∩[A342029(n+1)-1, A342029(n+1)]`
-/

namespace A342030.P1057493099901620420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342030.P1057493099901620420

/-! ## A342030.P484441118029535000

`∩[A342028(n+1)-2, A342028(n+1)]`
-/

namespace A342030.P484441118029535000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342030.P484441118029535000

/-! ## A342030.P2330505174082941475

`∩[A342028(n+1), A023444(A342028(n+1))]`
-/

namespace A342030.P2330505174082941475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A342028 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342030.P2330505174082941475

/-! ## A342030.P14723324876737515184

`∩[A342029(n+1), A023443(A342029(n+1))]`
-/

namespace A342030.P14723324876737515184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342029 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342030.P14723324876737515184

/-!
# A342031: Starts of runs of 5 consecutive numbers that have mutually distinct exponents in their prime factorization (A130091).

The programs for A342031, there is no canonical definition to state claims against.
-/

/-! ## A342031.P6417190043428422594

`∩[A342030(n+1)-1, A342030(n+1)]`
-/

namespace A342031.P6417190043428422594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342030 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342031.P6417190043428422594

/-! ## A342031.P879154691588756619

`∩[A342029(n+1)-2, A342029(n+1)]`
-/

namespace A342031.P879154691588756619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342031.P879154691588756619

/-!
# A342032: Numbers with mutually distinct exponents in their prime factorization (A130091) with a record gap to the next term of A130091.

The programs for A342032, there is no canonical definition to state claims against.
-/

/-! ## A342032.P63177604094437497

`A213022(or(floor(10^n/9), ∑[2*n]))`
-/

namespace A342032.P63177604094437497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213022 (Int.lor ⌊(10 ^ n : ℚ) / 9⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A342032.P63177604094437497

/-!
# A342036: Palindromes of even length only using 0 or 1.

The programs for A342036, the canonical program `A342036.P14204125781141140411` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342036 has offset 0).

The definition of A342036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342036.P6176379497943245390

`A007088(n)*10^A070939(n)+A305989(n)`
-/

namespace A342036.P6176379497943245390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) * (10 : ℚ) ^ (A070939 n : ℤ) + (A305989 n : ℚ)

end

end A342036.P6176379497943245390

namespace A342036

/-- `A007088(n)*10^A070939(n)+A305989(n)` -/
def P6176379497943245390.Spec : Prop :=
  ∀ n, P6176379497943245390.a n = (A342036 n : ℚ)

end A342036

/-! ## A342036.P14204125781141140411

`A007088(A048701(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A342036

/-- `A007088(A048701(n))` -/
def P14204125781141140411.Spec : Prop :=
  ∀ n, P14204125781141140411.a n = A342036 n

theorem P14204125781141140411.correct : P14204125781141140411.Spec := by
  intro n
  simp only [A342036]

end A342036

/-! ## A342036.P4177484028731189003

`A057148(2^ceil(log2(n+1))+n)`
-/

namespace A342036.P4177484028731189003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A342036.P4177484028731189003

namespace A342036

/-- `A057148(2^ceil(log2(n+1))+n)` -/
def P4177484028731189003.Spec : Prop :=
  ∀ n, P4177484028731189003.a n = A342036 n

end A342036

/-! ## A342036.P9300214996140519332

`A057148(A004760(n+2))+(3*n)%3`
-/

namespace A342036.P9300214996140519332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A004760 (n + 2)).toNat + ((3 * n % 3 : ℕ) : ℤ)

end

end A342036.P9300214996140519332

namespace A342036

/-- `A057148(A004760(n+2))+(3*n)%3` -/
def P9300214996140519332.Spec : Prop :=
  ∀ n, P9300214996140519332.a n = A342036 n

end A342036

/-! ## A342036.P13481700058286731072

`A057148(A004760(n+2))+A010051(A007624(n+1))`
-/

namespace A342036.P13481700058286731072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A004760 (n + 2)).toNat + A010051 (A007624 (n + 1)).toNat

end

end A342036.P13481700058286731072

namespace A342036

/-- `A057148(A004760(n+2))+A010051(A007624(n+1))` -/
def P13481700058286731072.Spec : Prop :=
  ∀ n, P13481700058286731072.a n = A342036 n

end A342036

/-! ## A342036.P11408442709243498428

`A057148(A004760(n+2))+A010051(A009230(n+4))`
-/

namespace A342036.P11408442709243498428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A004760 (n + 2)).toNat + A010051 (A009230 (n + 4)).toNat

end

end A342036.P11408442709243498428

namespace A342036

/-- `A057148(A004760(n+2))+A010051(A009230(n+4))` -/
def P11408442709243498428.Spec : Prop :=
  ∀ n, P11408442709243498428.a n = A342036 n

end A342036

/-! ## A342036.P5550065590622052945

`A011655(3*n+2)*A057148(A004760(n+2))`
-/

namespace A342036.P5550065590622052945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 2) * A057148 (A004760 (n + 2)).toNat

end

end A342036.P5550065590622052945

namespace A342036

/-- `A011655(3*n+2)*A057148(A004760(n+2))` -/
def P5550065590622052945.Spec : Prop :=
  ∀ n, P5550065590622052945.a n = A342036 n

end A342036

/-! ## A342036.P10527537630957405549

`A057148(A139706(2*n+1))%A057148(3*(n+1))`
-/

namespace A342036.P10527537630957405549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057148 (A139706 (2 * n + 1)).toNat) (A057148 (3 * (n + 1)))

end

end A342036.P10527537630957405549

namespace A342036

/-- `A057148(A139706(2*n+1))%A057148(3*(n+1))` -/
def P10527537630957405549.Spec : Prop :=
  ∀ n, P10527537630957405549.a n = A342036 n

end A342036

/-! ## A342036.P9130729674560049250

`(A294929(A023416(3*n+2))+1)*A057148(A004760(n+2))`
-/

namespace A342036.P9130729674560049250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294929 (A023416 (3 * n + 2)).toNat + 1) * A057148 (A004760 (n + 2)).toNat

end

end A342036.P9130729674560049250

namespace A342036

/-- `(A294929(A023416(3*n+2))+1)*A057148(A004760(n+2))` -/
def P9130729674560049250.Spec : Prop :=
  ∀ n, P9130729674560049250.a n = A342036 n

end A342036

/-! ## A342036.P8209097661337437708

`A305809(A152470(n+1))+A057148(A004760(n+2))`
-/

namespace A342036.P8209097661337437708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305809 (A152470 (n + 1)).toNat + A057148 (A004760 (n + 2)).toNat

end

end A342036.P8209097661337437708

namespace A342036

/-- `A305809(A152470(n+1))+A057148(A004760(n+2))` -/
def P8209097661337437708.Spec : Prop :=
  ∀ n, P8209097661337437708.a n = A342036 n

end A342036

/-! ## A342036.P8688957398624050740

`A190944(A048702(n))`
-/

namespace A342036.P8688957398624050740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190944 (A048702 n).toNat

end

end A342036.P8688957398624050740

namespace A342036

/-- `A190944(A048702(n))` -/
def P8688957398624050740.Spec : Prop :=
  ∀ n, P8688957398624050740.a n = A342036 n

end A342036

/-! ## A342036.P14803928778351679656

`A007088(3*A048702(n))`
-/

namespace A342036.P14803928778351679656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (3 * A048702 n).toNat

end

end A342036.P14803928778351679656

namespace A342036

/-- `A007088(3*A048702(n))` -/
def P14803928778351679656.Spec : Prop :=
  ∀ n, P14803928778351679656.a n = A342036 n

end A342036

/-! ## A342036.P5304672086804034208

`A007088(A006995(A062383(n)+n))`
-/

namespace A342036.P5304672086804034208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A006995 (A062383 n + (n : ℤ)).toNat).toNat

end

end A342036.P5304672086804034208

namespace A342036

/-- `A007088(A006995(A062383(n)+n))` -/
def P5304672086804034208.Spec : Prop :=
  ∀ n, P5304672086804034208.a n = A342036 n

end A342036

/-!
# A342038: a(n) is the index of the first occurrence of prime(n) in A307437.

The programs for A342038, there is no canonical definition to state claims against.
-/

/-! ## A342038.P8001583089777282572

`A005097(n+1)/A353742(A345170(n))`
-/

namespace A342038.P8001583089777282572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / (A353742 (A345170 n).toNat : ℚ)

end

end A342038.P8001583089777282572

/-! ## A342038.P16543284362180821904

`A005097(n+1)/A050361(A079907(n+1))`
-/

namespace A342038.P16543284362180821904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / (A050361 (A079907 (n + 1)).toNat : ℚ)

end

end A342038.P16543284362180821904

/-! ## A342038.P4255333360541184817

`A005097(n+1)/A130658(A128827(n+1))`
-/

namespace A342038.P4255333360541184817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / (A130658 (A128827 (n + 1)).toNat : ℚ)

end

end A342038.P4255333360541184817

/-! ## A342038.P11161198658414826689

`A005097(n+1)/A267425(A106369(n+1))`
-/

namespace A342038.P11161198658414826689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / (A267425 (A106369 (n + 1)).toNat : ℚ)

end

end A342038.P11161198658414826689

/-! ## A342038.P271517297438630350

`lt[A280195(n), A087207(2*n+1)]/A066922(2*n+5)`
-/

namespace A342038.P271517297438630350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / (A066922 (2 * n + 5) : ℚ)

end

end A342038.P271517297438630350

/-!
# A342040: Binary palindromes of odd length.

The programs for A342040, the canonical program `A342040.P10166415705382760406` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342040 has offset 1).

The definition of A342040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342040.P10166415705382760406

`A007088(A048700(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A342040

/-- `A007088(A048700(n+1))` -/
def P10166415705382760406.Spec : Prop :=
  ∀ n, P10166415705382760406.a n = A342040 (n + 1)

theorem P10166415705382760406.correct : P10166415705382760406.Spec := by
  intro n
  simp only [A342040, Nat.add_sub_cancel]

end A342040

/-! ## A342040.P6247528281448198460

`A057148(lt[n, xor(n, floor(n/2))])`
-/

namespace A342040.P6247528281448198460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A342040.P6247528281448198460

namespace A342040

/-- `A057148(lt[n, xor(n, floor(n/2))])` -/
def P6247528281448198460.Spec : Prop :=
  ∀ n, P6247528281448198460.a n = A342040 (n + 1)

end A342040

/-! ## A342040.P1768165379915837970

`A057148(lt[floor(n/4), or(n, floor(n/2))-n])`
-/

namespace A342040.P1768165379915837970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342040.P1768165379915837970

namespace A342040

/-- `A057148(lt[floor(n/4), or(n, floor(n/2))-n])` -/
def P1768165379915837970.Spec : Prop :=
  ∀ n, P1768165379915837970.a n = A342040 (n + 1)

end A342040

/-! ## A342040.P16342138157577750487

`A057148(A004754(n+1))`
-/

namespace A342040.P16342138157577750487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A004754 (n + 1)).toNat

end

end A342040.P16342138157577750487

namespace A342040

/-- `A057148(A004754(n+1))` -/
def P16342138157577750487.Spec : Prop :=
  ∀ n, P16342138157577750487.a n = A342040 (n + 1)

end A342040

/-! ## A342040.P8052457567573549452

`A057148(lt[n, A003188(n)])`
-/

namespace A342040.P8052457567573549452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A342040.P8052457567573549452

namespace A342040

/-- `A057148(lt[n, A003188(n)])` -/
def P8052457567573549452.Spec : Prop :=
  ∀ n, P8052457567573549452.a n = A342040 (n + 1)

end A342040

/-! ## A342040.P17987891361214743453

`A079112(A331891(n+2))`
-/

namespace A342040.P17987891361214743453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079112 (A331891 (n + 2)).toNat

end

end A342040.P17987891361214743453

namespace A342040

/-- `A079112(A331891(n+2))` -/
def P17987891361214743453.Spec : Prop :=
  ∀ n, P17987891361214743453.a n = A342040 (n + 1)

end A342040

/-! ## A342040.P17755366754583347598

`∩[A241096(n+1), A079112(n)]`
-/

namespace A342040.P17755366754583347598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342040.P17755366754583347598

namespace A342040

/-- `∩[A241096(n+1), A079112(n)]` -/
def P17755366754583347598.Spec : Prop :=
  ∀ n, (P17755366754583347598.a n : ℤ) = A342040 (n + 1)

end A342040

/-! ## A342040.P11811305121613885377

`∩[A264406(n+1), A079112(n)]`
-/

namespace A342040.P11811305121613885377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342040.P11811305121613885377

namespace A342040

/-- `∩[A264406(n+1), A079112(n)]` -/
def P11811305121613885377.Spec : Prop :=
  ∀ n, (P11811305121613885377.a n : ℤ) = A342040 (n + 1)

end A342040

/-! ## A342040.P12346362125922185899

`A305989(2*A048700(n+1))`
-/

namespace A342040.P12346362125922185899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * A048700 (n + 1)).toNat

end

end A342040.P12346362125922185899

namespace A342040

/-- `A305989(2*A048700(n+1))` -/
def P12346362125922185899.Spec : Prop :=
  ∀ n, P12346362125922185899.a n = A342040 (n + 1)

end A342040

/-! ## A342040.P6536967063876552980

`A305989(A048700(n+1)+A048700(n+1))`
-/

namespace A342040.P6536967063876552980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A048700 (n + 1) + A048700 (n + 1)).toNat

end

end A342040.P6536967063876552980

namespace A342040

/-- `A305989(A048700(n+1)+A048700(n+1))` -/
def P6536967063876552980.Spec : Prop :=
  ∀ n, P6536967063876552980.a n = A342040 (n + 1)

end A342040

/-!
# A342041: Triangle read by rows: T(n,k) = maximum number of lines of size k on n points so that every two lines intersect in one point.

The programs for A342041, there is no canonical definition to state claims against.
-/

/-! ## A342041.P160388367052459532

`A077655(A045662(n))+A010766(n+1)`
-/

namespace A342041.P160388367052459532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (A045662 n).toNat + A010766 (n + 1)

end

end A342041.P160388367052459532

/-! ## A342041.P4577694831284748496

`A346741(A074278(n+1))+A180969(n)`
-/

namespace A342041.P4577694831284748496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346741 (A074278 (n + 1)).toNat + A180969 n

end

end A342041.P4577694831284748496

/-! ## A342041.P16400514820852327558

`A055089(A079454(n+1)*A180969(n))`
-/

namespace A342041.P16400514820852327558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A079454 (n + 1) * A180969 n).toNat

end

end A342041.P16400514820852327558

/-! ## A342041.P8056805821195052395

`A102313(A023823(n+1)^A027186(n+1))`
-/

namespace A342041.P8056805821195052395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102313 (SequenceMachineLib.roundAway ((A023823 (n + 1) : ℚ) ^ (A027186 (n + 1) : ℤ))).toNat

end

end A342041.P8056805821195052395

/-! ## A342041.P2515037734640948387

`A028920(and(A102938(n+1), A102952(n+1)))`
-/

namespace A342041.P2515037734640948387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (Int.land (A102938 (n + 1)) (A102952 (n + 1))).toNat

end

end A342041.P2515037734640948387

/-!
# A342042: When a digit d in the digit-stream of this sequence is even, the next digit is > d.

The programs for A342042, there is no canonical definition to state claims against.
-/

/-! ## A342042.P13285617405339453386

`A377912(A377915(n+1))`
-/

namespace A342042.P13285617405339453386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377912 (A377915 (n + 1)).toNat

end

end A342042.P13285617405339453386

/-!
# A342044: When a digit d is odd, the next digit is > d.

The programs for A342044, there is no canonical definition to state claims against.
-/

/-! ## A342044.P7022385290726032994

`lt[(n+1)/10, A316789(2*n+1)]`
-/

namespace A342044.P7022385290726032994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A342044.P7022385290726032994

/-! ## A342044.P84258796745295171

`lt[ceil(n/2)², A081761(2*n+1)]`
-/

namespace A342044.P84258796745295171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081761 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342044.P84258796745295171

/-! ## A342044.P18089458110079404189

`lt[A026519(A098871(n)), 7]`
-/

namespace A342044.P18089458110079404189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (A098871 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342044.P18089458110079404189

/-! ## A342044.P6697388216626900737

`eq[A091946(n), A096751(n)]`
-/

namespace A342044.P6697388216626900737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342044.P6697388216626900737

/-! ## A342044.P764413244249721144

`eq[A091946(n), A099233(n)]`
-/

namespace A342044.P764413244249721144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342044.P764413244249721144

/-!
# A342046: When a digit d is prime, the next digit is > d.

The programs for A342046, there is no canonical definition to state claims against.
-/

/-! ## A342046.P2214361555505347188

`C(7, A088593(3*n+2))+n`
-/

namespace A342046.P2214361555505347188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A088593 (3 * n + 2)).toNat + n

end

end A342046.P2214361555505347188

/-! ## A342046.P16659994892067105923

`A252464(A140134(n))`
-/

namespace A342046.P16659994892067105923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A140134 n).toNat

end

end A342046.P16659994892067105923

/-! ## A342046.P6779805089108737397

`A384713(A219615(n))`
-/

namespace A342046.P6779805089108737397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384713 (A219615 n).toNat

end

end A342046.P6779805089108737397

/-! ## A342046.P16558126497882140557

`A272322(A032948(n+1))`
-/

namespace A342046.P16558126497882140557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272322 (A032948 (n + 1)).toNat

end

end A342046.P16558126497882140557

/-! ## A342046.P1440731248953799574

`A384713(A133025(n+1))`
-/

namespace A342046.P1440731248953799574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384713 (A133025 (n + 1)).toNat

end

end A342046.P1440731248953799574

/-!
# A342048: Numbers for which the sum of digits equals the product of nonzero digits.

The programs for A342048, there is no canonical definition to state claims against.
-/

/-! ## A342048.P4990439171335355605

`eq[dr(n), A051801(n)]`
-/

namespace A342048.P4990439171335355605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342048.P4990439171335355605

/-! ## A342048.P17297969226904896235

`eq[A007953(n), A051801(n)]`
-/

namespace A342048.P17297969226904896235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342048.P17297969226904896235

/-! ## A342048.P4954194656679457214

`eq[A010888(n), A051801(n)]`
-/

namespace A342048.P4954194656679457214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342048.P4954194656679457214

/-! ## A342048.P7845616661671059132

`eq[log2(A329562(n)), A051801(n)]`
-/

namespace A342048.P7845616661671059132
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A342048.P7845616661671059132

/-! ## A342048.P2650280279801598874

`eq[A051801(n), A053837(n)]`
-/

namespace A342048.P2650280279801598874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342048.P2650280279801598874

/-! ## A342048.P10926753655373194716

`eq[A054977(n), A067453(n)]`
-/

namespace A342048.P10926753655373194716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342048.P10926753655373194716

/-! ## A342048.P899883784833794860

`eq[A057427(n), A067453(n)]`
-/

namespace A342048.P899883784833794860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342048.P899883784833794860

/-! ## A342048.P13153365957452428144

`eq[A067453(n), A158388(n)]`
-/

namespace A342048.P13153365957452428144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342048.P13153365957452428144

/-! ## A342048.P15923686506233035119

`eq[2*A051801(n), A169805(n)]`
-/

namespace A342048.P15923686506233035119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342048.P15923686506233035119

/-!
# A342049: Primes formed by the concatenation of exactly two consecutive composite numbers.

The programs for A342049, there is no canonical definition to state claims against.
-/

/-! ## A342049.P12948263096881209722

`p?[A001704(A060462(n+1))]`
-/

namespace A342049.P12948263096881209722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A060462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342049.P12948263096881209722

/-! ## A342049.P6580138304428634128

`p?[A001704(A068780(n+1))]`
-/

namespace A342049.P6580138304428634128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A068780 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342049.P6580138304428634128

/-! ## A342049.P5428660477499575194

`p?[A001704(A072668(n+1))]`
-/

namespace A342049.P5428660477499575194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A072668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342049.P5428660477499575194

/-! ## A342049.P7495001882815578535

`p?[A127421(A002808(n+1))]`
-/

namespace A342049.P7495001882815578535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342049.P7495001882815578535

/-! ## A342049.P12260080935797788272

`p?[A127421(A018252(n+1))]`
-/

namespace A342049.P12260080935797788272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342049.P12260080935797788272

/-!
# A342050: Numbers k which have an odd number of trailing zeros in their primorial base representation A049345(k).

The programs for A342050, there is no canonical definition to state claims against.
-/

/-! ## A342050.P901674950173142677

`lt[0, A353525(n+1)]+1`
-/

namespace A342050.P901674950173142677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342050.P901674950173142677

/-! ## A342050.P10628992322150550930

`∪[A047235(n+1), A358756(n+1)]`
-/

namespace A342050.P10628992322150550930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342050.P10628992322150550930

/-! ## A342050.P1689283930217571338

`filter[A004277(n+1), A353525(#)]`
-/

namespace A342050.P1689283930217571338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P1689283930217571338

/-! ## A342050.P10702952306445308875

`filter[A005843(n+1), A353525(#)]`
-/

namespace A342050.P10702952306445308875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P10702952306445308875

/-! ## A342050.P12677514358620603293

`filter[A004275(n+1), A353525(#)]`
-/

namespace A342050.P12677514358620603293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P12677514358620603293

/-! ## A342050.P1608740227457053454

`filter[A004278(n+1), A353525(#)]`
-/

namespace A342050.P1608740227457053454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P1608740227457053454

/-! ## A342050.P24540737452266216

`filter[A300576(n+3), A353525(#)]`
-/

namespace A342050.P24540737452266216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P24540737452266216

/-! ## A342050.P8339140047342411960

`filter[A004279(n), A353525(#)]`
-/

namespace A342050.P8339140047342411960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P8339140047342411960

/-! ## A342050.P13631810658116192686

`filter[A004271(n+1), A353525(#)]`
-/

namespace A342050.P13631810658116192686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P13631810658116192686

/-! ## A342050.P14168341428303457947

`filter[A004272(n+1), A353525(#)]`
-/

namespace A342050.P14168341428303457947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P14168341428303457947

/-! ## A342050.P7036148462961066528

`filter[A064745(n+1), A353525(#)]`
-/

namespace A342050.P7036148462961066528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P7036148462961066528

/-! ## A342050.P1969458298279911918

`filter[A171086(n+1), A353525(#)]`
-/

namespace A342050.P1969458298279911918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P1969458298279911918

/-! ## A342050.P1727281305236075875

`filter[A225850(n+1), A353525(#)]`
-/

namespace A342050.P1727281305236075875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P1727281305236075875

/-! ## A342050.P3277274201353436484

`filter[A119432(n+1), A353525(#)]`
-/

namespace A342050.P3277274201353436484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P3277274201353436484

/-! ## A342050.P8768647669519966978

`filter[A324847(n+1), A353525(#)]`
-/

namespace A342050.P8768647669519966978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P8768647669519966978

/-! ## A342050.P2477244471679488281

`filter[A237058(n+1), A353525(#)]`
-/

namespace A342050.P2477244471679488281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P2477244471679488281

/-! ## A342050.P4661500729269249538

`filter[A118672(n+1), A353525(#)]`
-/

namespace A342050.P4661500729269249538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P4661500729269249538

/-! ## A342050.P15003566224302851725

`filter[A066250(n+1), A353525(#)]`
-/

namespace A342050.P15003566224302851725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P15003566224302851725

/-! ## A342050.P2409349285673747359

`filter[A073897(n+1), A353525(#)]`
-/

namespace A342050.P2409349285673747359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P2409349285673747359

/-! ## A342050.P6274547992046009120

`filter[A182339(n+1), A353525(#)]`
-/

namespace A342050.P6274547992046009120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A342050.P6274547992046009120

/-!
# A342051: Numbers k which have an even number of trailing zeros in their primorial base representation A049345(k).

The programs for A342051, there is no canonical definition to state claims against.
-/

/-! ## A342051.P16212036498781908433

`eq[0, A353525(n+1)]+1`
-/

namespace A342051.P16212036498781908433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342051.P16212036498781908433

/-! ## A342051.P15187876398296782974

`comp[A342050(n+1)-1]+1`
-/

namespace A342051.P15187876398296782974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A342051.P15187876398296782974

/-! ## A342051.P2600929065720118516

`∪[2*n+1, A358757(n+1)]`
-/

namespace A342051.P2600929065720118516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342051.P2600929065720118516

/-! ## A342051.P9919603560823677181

`record[n-(-1)^A257993(n+1)]`
-/

namespace A342051.P9919603560823677181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (-1 : ℚ) ^ (A257993 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342051.P9919603560823677181

/-! ## A342051.P11833309115982268172

`comp[A000027(n+1)*A353525(n+1)]`
-/

namespace A342051.P11833309115982268172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A353525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A342051.P11833309115982268172

/-! ## A342051.P11444063337631657168

`lt[A353525(n+1), A006519(n+2)]+1`
-/

namespace A342051.P11444063337631657168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A342051.P11444063337631657168

/-! ## A342051.P3922930689487154872

`record[(n+1)*A008683(n+1-A276151(n+1))]`
-/

namespace A342051.P3922930689487154872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 ((n + 1 : ℤ) - A276151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342051.P3922930689487154872

/-! ## A342051.P12919960684294543536

`record[n+1-A132747(or(n+1, A257993(n+1)))]`
-/

namespace A342051.P12919960684294543536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A132747 (Int.lor (n + 1 : ℤ) (A257993 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342051.P12919960684294543536

/-! ## A342051.P4818381556204400966

`lt[n*A353525(A253909(n)), n]`
-/

namespace A342051.P4818381556204400966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353525 (A253909 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342051.P4818381556204400966

/-!
# A342052: Number of 3-connected triangulations of a disk with n nodes up to orientation-preserving isomorphisms.

The programs for A342052, there is no canonical definition to state claims against.
-/

/-! ## A342052.P8584869900893325301

`A060384(3*A080337(n+1))`
-/

namespace A342052.P8584869900893325301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (3 * A080337 (n + 1)).toNat

end

end A342052.P8584869900893325301

/-! ## A342052.P15952262411960591384

`A062298(A261600(n+2))+n`
-/

namespace A342052.P15952262411960591384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A261600 (n + 2)).toNat + (n : ℤ)

end

end A342052.P15952262411960591384

/-!
# A342053: Array read by antidiagonals: T(n,k) is the number of unrooted 3-connected triangulations of a disk with n interior nodes and k nodes on the boundary, n >= 1, k >= 3.

The programs for A342053, there is no canonical definition to state claims against.
-/

/-! ## A342053.P14574797324353800631

`A068509(A352589(n))`
-/

namespace A342053.P14574797324353800631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A352589 n).toNat

end

end A342053.P14574797324353800631

/-! ## A342053.P15514700016651720900

`A341675(A362847(n))`
-/

namespace A342053.P15514700016651720900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A362847 n).toNat

end

end A342053.P15514700016651720900

/-! ## A342053.P5609662964512245343

`A038548(5*A288853(n))`
-/

namespace A342053.P5609662964512245343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (5 * A288853 n).toNat

end

end A342053.P5609662964512245343

/-!
# A342054: Number of unrooted 3-connected triangulations of a pentagon with n interior nodes.

The programs for A342054, there is no canonical definition to state claims against.
-/

/-! ## A342054.P12184996585862773815

`A342053(∑[n+3]+1)`
-/

namespace A342054.P12184996585862773815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A342054.P12184996585862773815

/-! ## A342054.P12857715399295302190

`record[A342053(n+1)/A342088(n+3)]`
-/

namespace A342054.P12857715399295302190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342053 (n + 1) : ℚ) / (A342088 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342054.P12857715399295302190

/-! ## A342054.P1576017437804916709

`record[gcd(A341856(n+3), A342053(n+1))]`
-/

namespace A342054.P1576017437804916709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341856 (n + 3)) (A342053 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342054.P1576017437804916709

/-! ## A342054.P11152621669111508407

`A000041(C(n, 64))*A342053(A055999(n)+4)`
-/

namespace A342054.P11152621669111508407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A342053 (A055999 n + 4).toNat

end

end A342054.P11152621669111508407

/-! ## A342054.P11665917601960140312

`A000040(n+2)%2*A342053(A055999(n)+4)`
-/

namespace A342054.P11665917601960140312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A342053 (A055999 n + 4).toNat

end

end A342054.P11665917601960140312

/-!
# A342055: Number of unrooted 3-connected triangulations of a hexagon with n interior nodes.

The programs for A342055, there is no canonical definition to state claims against.
-/

/-! ## A342055.P10103550793330825197

`A342053(A027379(n+2))`
-/

namespace A342055.P10103550793330825197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A027379 (n + 2)).toNat

end

end A342055.P10103550793330825197

/-! ## A342055.P1331138046320304489

`A342053(Δ[A006416(n+2)])`
-/

namespace A342055.P1331138046320304489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (f1 (n + 1) - f1 n).toNat

end

end A342055.P1331138046320304489

/-! ## A342055.P6884443429212078763

`record[A342053(A027379(A028242(n)))]`
-/

namespace A342055.P6884443429212078763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342055.P6884443429212078763

/-! ## A342055.P4674189135498271625

`record[A342053(A027379(A322832(n)))]`
-/

namespace A342055.P4674189135498271625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A027379 (A322832 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342055.P4674189135498271625

/-! ## A342055.P13539352909660676767

`A342053(A167499(n)+A016777(n))`
-/

namespace A342055.P13539352909660676767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (A167499 n + A016777 n).toNat

end

end A342055.P13539352909660676767

/-!
# A342056: Number of unrooted 3-connected triangulations of a disk with n nodes.

The programs for A342056, there is no canonical definition to state claims against.
-/

/-! ## A342056.P12090966584175776396

`∑[A070548(∑[A000254(n+1)])]`
-/

namespace A342056.P12090966584175776396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342056.P12090966584175776396

/-! ## A342056.P8822544661469520001

`A004526((2*n+3)*A256208(n))`
-/

namespace A342056.P8822544661469520001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 * n + 3 : ℤ) * A256208 n).toNat

end

end A342056.P8822544661469520001

/-!
# A342057: Number of polyhedra with n faces and n vertices up to orientation preserving isomorphisms.

The programs for A342057, there is no canonical definition to state claims against.
-/

/-! ## A342057.P14331781994645673560

`A239893(2*(∑[n]+2))`
-/

namespace A342057.P14331781994645673560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239893 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A342057.P14331781994645673560

/-! ## A342057.P7955708742721042753

`A225354(xor(1, n*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A342057.P7955708742721042753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A225354 (Int.xor 1 ((n : ℤ) * a (n - 1))).toNat

end

end A342057.P7955708742721042753

/-!
# A342058: Number of embeddings on the sphere of 2-connected planar graphs with n nodes up to orientation preserving isomorphisms.

The programs for A342058, there is no canonical definition to state claims against.
-/

/-! ## A342058.P2729945705241907205

`A121640(round(sqrt(2*(n+1)^n)))`
-/

namespace A342058.P2729945705241907205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) ^ n : ℝ))).toNat

end

end A342058.P2729945705241907205

/-!
# A342061: Triangle read by rows: T(n,k) is the number of sensed 2-connected (nonseparable) planar maps with n edges and k vertices, n >= 2, 2 <= k <= n.

The programs for A342061, there is no canonical definition to state claims against.
-/

/-! ## A342061.P8878215479180196978

`A112587(A379432(n+2))`
-/

namespace A342061.P8878215479180196978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (A379432 (n + 2)).toNat

end

end A342061.P8878215479180196978

/-! ## A342061.P9692809484561392870

`A167489(A059328(n)-A328887(n))`
-/

namespace A342061.P9692809484561392870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A059328 n - A328887 n).toNat

end

end A342061.P9692809484561392870

/-! ## A342061.P9857860266036308958

`A047996(n)*A256478(A022168(n))`
-/

namespace A342061.P9857860266036308958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A256478 (A022168 n).toNat

end

end A342061.P9857860266036308958

/-! ## A342061.P2180144005534876200

`A350029(A081577(n))-A001221(A202812(n+1))`
-/

namespace A342061.P2180144005534876200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A081577 n).toNat - A001221 (A202812 (n + 1)).toNat

end

end A342061.P2180144005534876200

/-! ## A342061.P15957055261649119649

`A050324(A034932(n)%A374638(3*n+4))`
-/

namespace A342061.P15957055261649119649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (Int.tmod (A034932 n) (A374638 (3 * n + 4))).toNat

end

end A342061.P15957055261649119649

/-!
# A342062: a(n) is the number of divisors of prime(n)^8 - 1.

The programs for A342062, there is no canonical definition to state claims against.
-/

/-! ## A342062.P15446988943255994021

`A005875(A014307(n)+A000040(3*n+5))`
-/

namespace A342062.P15446988943255994021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A014307 n + A000040 (3 * n + 5)).toNat

end

end A342062.P15446988943255994021

/-!
# A342063: Primes p such that p^8 - 1 has fewer than 384 divisors.

The programs for A342063, there is no canonical definition to state claims against.
-/

/-! ## A342063.P12148996632541470691

`A036955(A032993(n+1))`
-/

namespace A342063.P12148996632541470691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (A032993 (n + 1)).toNat

end

end A342063.P12148996632541470691

/-! ## A342063.P607122990340566991

`A079603(A033074(n+1))`
-/

namespace A342063.P607122990340566991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (A033074 (n + 1)).toNat

end

end A342063.P607122990340566991

/-! ## A342063.P2541441868320580503

`A054403(A089583(n+1))`
-/

namespace A342063.P2541441868320580503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (A089583 (n + 1)).toNat

end

end A342063.P2541441868320580503

/-! ## A342063.P4758845142558864308

`A117095(A038367(n+1))`
-/

namespace A342063.P4758845142558864308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117095 (A038367 (n + 1)).toNat

end

end A342063.P4758845142558864308

/-! ## A342063.P16980635478415658345

`A137589(A044912(n+1))`
-/

namespace A342063.P16980635478415658345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137589 (A044912 (n + 1)).toNat

end

end A342063.P16980635478415658345

/-!
# A342065: Primes p such that p^9 - 1 has 16 divisors.

The programs for A342065, there is no canonical definition to state claims against.
-/

/-! ## A342065.P18120482425435856458

`∩[A066100(n+1), A341659(n+1)]`
-/

namespace A342065.P18120482425435856458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342065.P18120482425435856458

/-!
# A342070: Numbers k such that there are more primes in the interval [2*k+1, 3*k] than there are in the interval [k+1, 2*k].

The programs for A342070, there is no canonical definition to state claims against.
-/

/-! ## A342070.P366528609339293040

`eq[3, A342068(n+1)]+1`
-/

namespace A342070.P366528609339293040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342070.P366528609339293040

/-! ## A342070.P2953038380289118720

`eq[3, A342068(A028310(n))]`
-/

namespace A342070.P2953038380289118720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342070.P2953038380289118720

/-! ## A342070.P2772736112547100004

`A020725(eq[3, A342068(n+1)])`
-/

namespace A342070.P2772736112547100004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342070.P2772736112547100004

/-! ## A342070.P5082955053386853403

`eq[3, A342068(A065033(2*n))]`
-/

namespace A342070.P5082955053386853403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342070.P5082955053386853403

/-! ## A342070.P5804559035894010902

`eq[3, A342068(A000007(n)+n)]`
-/

namespace A342070.P5804559035894010902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342070.P5804559035894010902

/-!
# A342071: Numbers k such that there are more primes in the interval [3*k+1, 4*k] than there are in the interval [2*k+1, 3*k].

The programs for A342071, there is no canonical definition to state claims against.
-/

/-! ## A342071.P11549322544553083774

`eq[4, A342068(n+1)]+1`
-/

namespace A342071.P11549322544553083774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342071.P11549322544553083774

/-! ## A342071.P12413024605563299760

`eq[4, A342068(A028310(n))]`
-/

namespace A342071.P12413024605563299760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342071.P12413024605563299760

/-! ## A342071.P1387790466852743221

`A020725(eq[4, A342068(n+1)])`
-/

namespace A342071.P1387790466852743221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342071.P1387790466852743221

/-! ## A342071.P11872933140516627343

`eq[4, A342068(A233583(n+1))]`
-/

namespace A342071.P11872933140516627343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342071.P11872933140516627343

/-! ## A342071.P1642478417292543133

`eq[4, A342068(A065033(2*n))]`
-/

namespace A342071.P1642478417292543133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342071.P1642478417292543133

/-! ## A342071.P3232154554331775277

`eq[4, A342068(A000007(n)+n)]`
-/

namespace A342071.P3232154554331775277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342068 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342071.P3232154554331775277

/-!
# A342073: Number of n-colorings of the vertices of the 5-dimensional cross polytope such that no two adjacent vertices have the same color.

The programs for A342073, there is no canonical definition to state claims against.
-/

/-! ## A342073.P2430751658662652419

`(n^gcd(7, n))!*C(n, 5)`
-/

namespace A342073.P2430751658662652419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n ^ Nat.gcd 7 n) * Nat.choose n 5

end

end A342073.P2430751658662652419

/-! ## A342073.P14029891232434417291

`A038608(n!*C(n, 5))`
-/

namespace A342073.P14029891232434417291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (Nat.factorial n * Nat.choose n 5)

end

end A342073.P14029891232434417291

/-! ## A342073.P3623589502220580228

`A171596(n)!*C(n, 5)`
-/

namespace A342073.P3623589502220580228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A171596 n).toNat * Nat.choose n 5

end

end A342073.P3623589502220580228

/-!
# A342074: Number of n-colorings of the vertices of the 6-dimensional cross polytope such that no two adjacent vertices have the same color.

The programs for A342074, there is no canonical definition to state claims against.
-/

/-! ## A342074.P1239846613928076316

`lcm((n-5)*n*((n-1-(2-n)²)²-1), A048138(A052921(n+3)))`
-/

namespace A342074.P1239846613928076316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1))) (A048138 (A052921 (n + 3)).toNat)

end

end A342074.P1239846613928076316

/-! ## A342074.P9333787117873984310

`A053625(n)*A086429(A238586(n+2))`
-/

namespace A342074.P9333787117873984310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 n * A086429 (A238586 (n + 2)).toNat

end

end A342074.P9333787117873984310

/-! ## A342074.P16578778015416457393

`C(n, 6)*A028310(n!)`
-/

namespace A342074.P16578778015416457393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 6 : ℤ) * A028310 (Nat.factorial n)

end

end A342074.P16578778015416457393

/-! ## A342074.P17895494382970098508

`C(n, 6)*A038608(n!)`
-/

namespace A342074.P17895494382970098508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 6 : ℤ) * A038608 (Nat.factorial n)

end

end A342074.P17895494382970098508

/-!
# A342075: Number of n-colorings of the vertices of the 7-dimensional cross polytope such that no two adjacent vertices have the same color.

The programs for A342075, there is no canonical definition to state claims against.
-/

/-! ## A342075.P12214604072520647092

`∑{e}[5^n, A179062(#)]`
-/

namespace A342075.P12214604072520647092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A179062 (Nat.factorization (f1 n) p)

end

end A342075.P12214604072520647092

/-! ## A342075.P5988196848794813276

`∑{d}[∑{d}[A291116(n), #], #]`
-/

namespace A342075.P5988196848794813276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291116 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A342075.P5988196848794813276

/-! ## A342075.P9959501360208864907

`A000045(floor(n!/3^n))*∑{e}[5^n, #!]`
-/

namespace A342075.P9959501360208864907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(Nat.factorial n : ℚ) / (3 ^ n : ℚ)⌋.toNat * ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ)

end

end A342075.P9959501360208864907

/-! ## A342075.P1663253959787655834

`A000045(floor(3^-n*n!))*∑{e}[5^n, #!]`
-/

namespace A342075.P1663253959787655834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(3 : ℚ) ^ (-(n : ℤ) : ℤ) * (Nat.factorial n : ℚ)⌋.toNat * ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ)

end

end A342075.P1663253959787655834

/-! ## A342075.P17692335756432628259

`lcm((n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n), A000010(n!))/C(8, n)`
-/

namespace A342075.P17692335756432628259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))))))) (A000010 (Nat.factorial n)) : ℚ) / (Nat.choose 8 n : ℚ)

end

end A342075.P17692335756432628259

/-!
# A342078: Odd digits only come in successive pairs (separated or not by a comma).

The programs for A342078, there is no canonical definition to state claims against.
-/

/-! ## A342078.P6918610439770757285

`A202272(A351997(n+2)%A076654(3*n+2))`
-/

namespace A342078.P6918610439770757285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (Int.tmod (A351997 (n + 2)) (A076654 (3 * n + 2))).toNat

end

end A342078.P6918610439770757285

/-! ## A342078.P2237508733145391023

`A202272(A351997(n+2))`
-/

namespace A342078.P2237508733145391023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (A351997 (n + 2)).toNat

end

end A342078.P2237508733145391023

/-! ## A342078.P13794517054774748409

`A173237(record[A174203(n+1)])`
-/

namespace A342078.P13794517054774748409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173237 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342078.P13794517054774748409

/-!
# A342079: Even digits only come in successive pairs (separated or not by a comma).

The programs for A342079, there is no canonical definition to state claims against.
-/

/-! ## A342079.P5438919643304221924

`A352463(A351997(n+1))`
-/

namespace A342079.P5438919643304221924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352463 (A351997 (n + 1)).toNat

end

end A342079.P5438919643304221924

/-! ## A342079.P11069682251187343204

`A318927(record[A340250(n+1)])`
-/

namespace A342079.P11069682251187343204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318927 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342079.P11069682251187343204

/-! ## A342079.P17516419637417498086

`A162501(A047478(n+1)%A091531(4*(n+1)))`
-/

namespace A342079.P17516419637417498086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162501 (Int.tmod (A047478 (n + 1)) (A091531 (4 * (n + 1)))).toNat

end

end A342079.P17516419637417498086

/-! ## A342079.P4334032131521152290

`A162501(A047478(n+1)%A119293(n+1))`
-/

namespace A342079.P4334032131521152290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162501 (Int.tmod (A047478 (n + 1)) (A119293 (n + 1))).toNat

end

end A342079.P4334032131521152290

/-! ## A342079.P4659735777603055187

`A162501(A135385(n+2)+A047205(n+1))`
-/

namespace A342079.P4659735777603055187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162501 (A135385 (n + 2) + A047205 (n + 1)).toNat

end

end A342079.P4659735777603055187

/-!
# A342081: Numbers without an inferior odd divisor > 1.

The programs for A342081, the canonical program `A342081.P11150505954464620574` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342081 has offset 1).

The definition of A342081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342081.P14591157505328281524

`lt[A060764(n+1), 3]+1`
-/

namespace A342081.P14591157505328281524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A342081.P14591157505328281524

namespace A342081

/-- `lt[A060764(n+1), 3]+1` -/
def P14591157505328281524.Spec : Prop :=
  ∀ n, (P14591157505328281524.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P11150505954464620574

`∪[A067133(n+1), A085681(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A342081

/-- `∪[A067133(n+1), A085681(n+1)]` -/
def P11150505954464620574.Spec : Prop :=
  ∀ n, (P11150505954464620574.a n : ℤ) = A342081 (n + 1)

theorem P11150505954464620574.correct : P11150505954464620574.Spec := by
  intro n
  simp only [A342081, Nat.add_sub_cancel]

end A342081

/-! ## A342081.P5684006114705756765

`∪[A085681(n+1), A174090(n+1)]`
-/

namespace A342081.P5684006114705756765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P5684006114705756765

namespace A342081

/-- `∪[A085681(n+1), A174090(n+1)]` -/
def P5684006114705756765.Spec : Prop :=
  ∀ n, (P5684006114705756765.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P12893396449693987915

`∩[A093641(n+1), A383397(n+1)]`
-/

namespace A342081.P12893396449693987915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P12893396449693987915

namespace A342081

/-- `∩[A093641(n+1), A383397(n+1)]` -/
def P12893396449693987915.Spec : Prop :=
  ∀ n, (P12893396449693987915.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P2057762452882791848

`filter[A361232(n+1), A340371(#)]`
-/

namespace A342081.P2057762452882791848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A342081.P2057762452882791848

namespace A342081

/-- `filter[A361232(n+1), A340371(#)]` -/
def P2057762452882791848.Spec : Prop :=
  ∀ n, P2057762452882791848.a n = A342081 (n + 1)

end A342081

/-! ## A342081.P14406970990413305442

`filter[A361232(n+1), A365716(#)]`
-/

namespace A342081.P14406970990413305442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A342081.P14406970990413305442

namespace A342081

/-- `filter[A361232(n+1), A365716(#)]` -/
def P14406970990413305442.Spec : Prop :=
  ∀ n, P14406970990413305442.a n = A342081 (n + 1)

end A342081

/-! ## A342081.P6448001173069587358

`∩[A093641(n+1), A361232(n+1)]`
-/

namespace A342081.P6448001173069587358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P6448001173069587358

namespace A342081

/-- `∩[A093641(n+1), A361232(n+1)]` -/
def P6448001173069587358.Spec : Prop :=
  ∀ n, (P6448001173069587358.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P1881008656202196432

`∩[A361232(n+1), A365406(n+1)]`
-/

namespace A342081.P1881008656202196432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P1881008656202196432

namespace A342081

/-- `∩[A361232(n+1), A365406(n+1)]` -/
def P1881008656202196432.Spec : Prop :=
  ∀ n, (P1881008656202196432.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P18247041286690386773

`filter[A392650(n+1), A340371(#)]`
-/

namespace A342081.P18247041286690386773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A342081.P18247041286690386773

namespace A342081

/-- `filter[A392650(n+1), A340371(#)]` -/
def P18247041286690386773.Spec : Prop :=
  ∀ n, P18247041286690386773.a n = A342081 (n + 1)

end A342081

/-! ## A342081.P10020249977971701564

`filter[A392650(n+1), A365716(#)]`
-/

namespace A342081.P10020249977971701564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A342081.P10020249977971701564

namespace A342081

/-- `filter[A392650(n+1), A365716(#)]` -/
def P10020249977971701564.Spec : Prop :=
  ∀ n, P10020249977971701564.a n = A342081 (n + 1)

end A342081

/-! ## A342081.P11253928432637514194

`∩[A093641(n+1), A392650(n+1)]`
-/

namespace A342081.P11253928432637514194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P11253928432637514194

namespace A342081

/-- `∩[A093641(n+1), A392650(n+1)]` -/
def P11253928432637514194.Spec : Prop :=
  ∀ n, (P11253928432637514194.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P10428219667163119660

`∩[A365406(n+1), A392650(n+1)]`
-/

namespace A342081.P10428219667163119660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P10428219667163119660

namespace A342081

/-- `∩[A365406(n+1), A392650(n+1)]` -/
def P10428219667163119660.Spec : Prop :=
  ∀ n, (P10428219667163119660.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P11423979001826415178

`filter[A285100(n+1), A340371(#)]`
-/

namespace A342081.P11423979001826415178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A342081.P11423979001826415178

namespace A342081

/-- `filter[A285100(n+1), A340371(#)]` -/
def P11423979001826415178.Spec : Prop :=
  ∀ n, P11423979001826415178.a n = A342081 (n + 1)

end A342081

/-! ## A342081.P16534260514821947858

`filter[A285100(n+1), A365716(#)]`
-/

namespace A342081.P16534260514821947858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A342081.P16534260514821947858

namespace A342081

/-- `filter[A285100(n+1), A365716(#)]` -/
def P16534260514821947858.Spec : Prop :=
  ∀ n, P16534260514821947858.a n = A342081 (n + 1)

end A342081

/-! ## A342081.P482328768688222607

`∩[A093641(n+1), A285100(n+1)]`
-/

namespace A342081.P482328768688222607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P482328768688222607

namespace A342081

/-- `∩[A093641(n+1), A285100(n+1)]` -/
def P482328768688222607.Spec : Prop :=
  ∀ n, (P482328768688222607.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P2863919053202183278

`∩[A285100(n+1), A365406(n+1)]`
-/

namespace A342081.P2863919053202183278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P2863919053202183278

namespace A342081

/-- `∩[A285100(n+1), A365406(n+1)]` -/
def P2863919053202183278.Spec : Prop :=
  ∀ n, (P2863919053202183278.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P3020282826548634063

`filter[A348577(n+1), A340371(#)]`
-/

namespace A342081.P3020282826548634063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A342081.P3020282826548634063

namespace A342081

/-- `filter[A348577(n+1), A340371(#)]` -/
def P3020282826548634063.Spec : Prop :=
  ∀ n, P3020282826548634063.a n = A342081 (n + 1)

end A342081

/-! ## A342081.P17571449093464359997

`∩[A093641(n+1), A348577(n+1)]`
-/

namespace A342081.P17571449093464359997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P17571449093464359997

namespace A342081

/-- `∩[A093641(n+1), A348577(n+1)]` -/
def P17571449093464359997.Spec : Prop :=
  ∀ n, (P17571449093464359997.a n : ℤ) = A342081 (n + 1)

end A342081

/-! ## A342081.P6112404189023273797

`∩[A348577(n+1), A365406(n+1)]`
-/

namespace A342081.P6112404189023273797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P6112404189023273797

namespace A342081

/-- `∩[A348577(n+1), A365406(n+1)]` -/
def P6112404189023273797.Spec : Prop :=
  ∀ n, (P6112404189023273797.a n : ℤ) = A342081 (n + 1)

end A342081

/-!
# A342082: Numbers with an inferior odd divisor > 1.

The programs for A342082, the canonical program `A342082.P14034099155736134169` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342082 has offset 1).

The definition of A342082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342082.P15104098215701855580

`lt[2, A060764(n+1)]+1`
-/

namespace A342082.P15104098215701855580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342082.P15104098215701855580

namespace A342082

/-- `lt[2, A060764(n+1)]+1` -/
def P15104098215701855580.Spec : Prop :=
  ∀ n, (P15104098215701855580.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P8860447133325137511

`∪[A010814(n+1), A105441(n+1)]`
-/

namespace A342082.P8860447133325137511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P8860447133325137511

namespace A342082

/-- `∪[A010814(n+1), A105441(n+1)]` -/
def P8860447133325137511.Spec : Prop :=
  ∀ n, (P8860447133325137511.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P10939061073371043665

`∪[A027854(n+1), A105441(n+1)]`
-/

namespace A342082.P10939061073371043665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P10939061073371043665

namespace A342082

/-- `∪[A027854(n+1), A105441(n+1)]` -/
def P10939061073371043665.Spec : Prop :=
  ∀ n, (P10939061073371043665.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P16983288496454625609

`∪[A057715(n+1), A105441(n+1)]`
-/

namespace A342082.P16983288496454625609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P16983288496454625609

namespace A342082

/-- `∪[A057715(n+1), A105441(n+1)]` -/
def P16983288496454625609.Spec : Prop :=
  ∀ n, (P16983288496454625609.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P14034099155736134169

`∪[A068567(n+1), A105441(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342082

/-- `∪[A068567(n+1), A105441(n+1)]` -/
def P14034099155736134169.Spec : Prop :=
  ∀ n, (P14034099155736134169.a n : ℤ) = A342082 (n + 1)

theorem P14034099155736134169.correct : P14034099155736134169.Spec := by
  intro n
  simp only [A342082, Nat.add_sub_cancel]

end A342082

/-! ## A342082.P14821006544126535085

`∪[A085231(n+1), A105441(n+1)]`
-/

namespace A342082.P14821006544126535085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P14821006544126535085

namespace A342082

/-- `∪[A085231(n+1), A105441(n+1)]` -/
def P14821006544126535085.Spec : Prop :=
  ∀ n, (P14821006544126535085.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P5333915123342123841

`∪[A085236(n+1), A105441(n+1)]`
-/

namespace A342082.P5333915123342123841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P5333915123342123841

namespace A342082

/-- `∪[A085236(n+1), A105441(n+1)]` -/
def P5333915123342123841.Spec : Prop :=
  ∀ n, (P5333915123342123841.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P10683126688022914571

`∪[A098714(n+1), A105441(n+1)]`
-/

namespace A342082.P10683126688022914571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P10683126688022914571

namespace A342082

/-- `∪[A098714(n+1), A105441(n+1)]` -/
def P10683126688022914571.Spec : Prop :=
  ∀ n, (P10683126688022914571.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P12671316155886993942

`∪[A102749(n+1), A105441(n+1)]`
-/

namespace A342082.P12671316155886993942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P12671316155886993942

namespace A342082

/-- `∪[A102749(n+1), A105441(n+1)]` -/
def P12671316155886993942.Spec : Prop :=
  ∀ n, (P12671316155886993942.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P1632802261830113030

`∪[A105441(n+1), A126855(n+1)]`
-/

namespace A342082.P1632802261830113030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P1632802261830113030

namespace A342082

/-- `∪[A105441(n+1), A126855(n+1)]` -/
def P1632802261830113030.Spec : Prop :=
  ∀ n, (P1632802261830113030.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P715427984331498961

`∪[A105441(n+1), A136446(n+1)]`
-/

namespace A342082.P715427984331498961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P715427984331498961

namespace A342082

/-- `∪[A105441(n+1), A136446(n+1)]` -/
def P715427984331498961.Spec : Prop :=
  ∀ n, (P715427984331498961.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P8443522621592715739

`∪[A105441(n+1), A140831(n+1)]`
-/

namespace A342082.P8443522621592715739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P8443522621592715739

namespace A342082

/-- `∪[A105441(n+1), A140831(n+1)]` -/
def P8443522621592715739.Spec : Prop :=
  ∀ n, (P8443522621592715739.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P9257055009573615470

`∪[A105441(n+1), A198470(n+1)]`
-/

namespace A342082.P9257055009573615470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P9257055009573615470

namespace A342082

/-- `∪[A105441(n+1), A198470(n+1)]` -/
def P9257055009573615470.Spec : Prop :=
  ∀ n, (P9257055009573615470.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P3234271573039851964

`∪[A105441(n+1), A284342(n+1)]`
-/

namespace A342082.P3234271573039851964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342082.P3234271573039851964

namespace A342082

/-- `∪[A105441(n+1), A284342(n+1)]` -/
def P3234271573039851964.Spec : Prop :=
  ∀ n, (P3234271573039851964.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P16636744840068541985

`lt[A252358(n)², n+1]`
-/

namespace A342082.P16636744840068541985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342082.P16636744840068541985

namespace A342082

/-- `lt[A252358(n)², n+1]` -/
def P16636744840068541985.Spec : Prop :=
  ∀ n, (P16636744840068541985.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P15921698016956426050

`lt[n, (1-A171565(n))²]`
-/

namespace A342082.P15921698016956426050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A171565 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A342082.P15921698016956426050

namespace A342082

/-- `lt[n, (1-A171565(n))²]` -/
def P15921698016956426050.Spec : Prop :=
  ∀ n, (P15921698016956426050.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P4695700873512420131

`lt[1, A069288(n+1)]+1`
-/

namespace A342082.P4695700873512420131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342082.P4695700873512420131

namespace A342082

/-- `lt[1, A069288(n+1)]+1` -/
def P4695700873512420131.Spec : Prop :=
  ∀ n, (P4695700873512420131.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P16320985478079902772

`lt[1, A069289(n+1)]+1`
-/

namespace A342082.P16320985478079902772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342082.P16320985478079902772

namespace A342082

/-- `lt[1, A069289(n+1)]+1` -/
def P16320985478079902772.Spec : Prop :=
  ∀ n, (P16320985478079902772.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P16665434602794335752

`lt[2, A097974(n+1)]+1`
-/

namespace A342082.P16665434602794335752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342082.P16665434602794335752

namespace A342082

/-- `lt[2, A097974(n+1)]+1` -/
def P16665434602794335752.Spec : Prop :=
  ∀ n, (P16665434602794335752.a n : ℤ) = A342082 (n + 1)

end A342082

/-! ## A342082.P10480217583044657636

`lt[2, A217581(n+1)]+1`
-/

namespace A342082.P10480217583044657636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342082.P10480217583044657636

namespace A342082

/-- `lt[2, A217581(n+1)]+1` -/
def P10480217583044657636.Spec : Prop :=
  ∀ n, (P10480217583044657636.a n : ℤ) = A342082 (n + 1)

end A342082

/-!
# A342083: Number of chains of strictly inferior divisors from n to 1.

The programs for A342083, there is no canonical definition to state claims against.
-/

/-! ## A342083.P11982694258403251970

`ceil(A342087(n+1)/2)`
-/

namespace A342083.P11982694258403251970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342087 (n + 1) : ℚ) / 2⌉

end

end A342083.P11982694258403251970

/-! ## A342083.P18210801502227339918

`A342087(abs(1-n)+2)/2`
-/

namespace A342083.P18210801502227339918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342087 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

end

end A342083.P18210801502227339918

/-! ## A342083.P8302240419210524492

`lcm(2, A342087(C(n+1, n)))/2`
-/

namespace A342083.P8302240419210524492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A342087 (Nat.choose (n + 1) n)) : ℚ) / 2

end

end A342083.P8302240419210524492

/-! ## A342083.P1961982161154667508

`A004525(A342087(n+1))`
-/

namespace A342083.P1961982161154667508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A342087 (n + 1)).toNat

end

end A342083.P1961982161154667508

/-! ## A342083.P12694744120563266700

`A004526(A342087(n+1)+1)`
-/

namespace A342083.P12694744120563266700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342087 (n + 1) + 1).toNat

end

end A342083.P12694744120563266700

/-! ## A342083.P16200401473825753106

`A152271(A342087(n+1)-1)`
-/

namespace A342083.P16200401473825753106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A342087 (n + 1) - 1).toNat

end

end A342083.P16200401473825753106

/-! ## A342083.P8440475738447038475

`A342087(n+1)/2*A014963(4*n+2)`
-/

namespace A342083.P8440475738447038475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342087 (n + 1) : ℚ) / 2 * (A014963 (4 * n + 2) : ℚ)

end

end A342083.P8440475738447038475

/-!
# A342084: Number of chains of distinct strictly superior divisors starting with n.

The programs for A342084, there is no canonical definition to state claims against.
-/

/-! ## A342084.P14724377659347763871

`A101041(A295279(n+1))%A289177(n)`
-/

namespace A342084.P14724377659347763871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101041 (A295279 (n + 1)).toNat) (A289177 n)

end

end A342084.P14724377659347763871

/-! ## A342084.P7876794690197605829

`A101041(A295279(n+1))+A008683(A289220(n+1))`
-/

namespace A342084.P7876794690197605829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101041 (A295279 (n + 1)).toNat + A008683 (A289220 (n + 1)).toNat

end

end A342084.P7876794690197605829

/-! ## A342084.P10036016883939441793

`A071773(A007700(n+1))*A101041(A295279(n+1))`
-/

namespace A342084.P10036016883939441793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A007700 (n + 1)).toNat * A101041 (A295279 (n + 1)).toNat

end

end A342084.P10036016883939441793

/-! ## A342084.P6402278789228425215

`A305900(A295279(n+1)%A270613(n+4))`
-/

namespace A342084.P6402278789228425215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (Int.tmod (A295279 (n + 1)) (A270613 (n + 4))).toNat

end

end A342084.P6402278789228425215

/-! ## A342084.P15782510744986334326

`A257639(A347464(n+1)+A104234(3*n+1))`
-/

namespace A342084.P15782510744986334326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A347464 (n + 1) + A104234 (3 * n + 1)).toNat

end

end A342084.P15782510744986334326

/-!
# A342085: Number of decreasing chains of distinct superior divisors starting with n.

The programs for A342085, there is no canonical definition to state claims against.
-/

/-! ## A342085.P3735971844384617112

`A331852(A289079(n+1))`
-/

namespace A342085.P3735971844384617112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A289079 (n + 1)).toNat

end

end A342085.P3735971844384617112

/-! ## A342085.P6648783622667172757

`A128998(A289079(n+1)+1)`
-/

namespace A342085.P6648783622667172757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (A289079 (n + 1) + 1).toNat

end

end A342085.P6648783622667172757

/-! ## A342085.P14121028557181547970

`A176816(A289079(n+1)+∑{d}[n+1, n²%#]+1)`
-/

namespace A342085.P14121028557181547970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A289079 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℤ)).toNat

end

end A342085.P14121028557181547970

/-! ## A342085.P11153278796099371809

`A331581(A333749(3*(n+1))+∏{e}[n+1, C(#+4, 4)])`
-/

namespace A342085.P11153278796099371809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331581 (A333749 (3 * (n + 1)) + ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4 : ℕ) : ℤ)).toNat

end

end A342085.P11153278796099371809

/-! ## A342085.P7466440977827927947

`A176816(A289079(n+1)+∑{d}[n+1, lcm(#, n+1)]/(n+1))`
-/

namespace A342085.P7466440977827927947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (SequenceMachineLib.roundAway ((A289079 (n + 1) : ℚ) + ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A342085.P7466440977827927947

/-!
# A342086: Number of strict factorizations of divisors of n.

The programs for A342086, there is no canonical definition to state claims against.
-/

/-! ## A342086.P7051572257819487847

`∑{d}[n+1, A045778(#)]`
-/

namespace A342086.P7051572257819487847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d

end

end A342086.P7051572257819487847

/-! ## A342086.P6975323713447226340

`A318286(2*A181819(n+1))`
-/

namespace A342086.P6975323713447226340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (2 * A181819 (n + 1)).toNat

end

end A342086.P6975323713447226340

/-! ## A342086.P802809787622647835

`∑{d}[n+1, A034444(#)*A050372((n+1)/#)]`
-/

namespace A342086.P802809787622647835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A050372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342086.P802809787622647835

/-! ## A342086.P2962222549571270645

`∑{d}[n+1, A114591(#)*A328707((n+1)/#)]`
-/

namespace A342086.P2962222549571270645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114591 d * A328707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342086.P2962222549571270645

/-! ## A342086.P11626827505462133217

`ceil(A248955(n+1)/2)`
-/

namespace A342086.P11626827505462133217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A248955 (n + 1) : ℚ) / 2⌉

end

end A342086.P11626827505462133217

/-! ## A342086.P17525654145241191874

`A000463(A248955(n+1))`
-/

namespace A342086.P17525654145241191874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A248955 (n + 1)).toNat

end

end A342086.P17525654145241191874

/-! ## A342086.P16016558944034641350

`A045778(A087560(n+1))`
-/

namespace A342086.P16016558944034641350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A087560 (n + 1)).toNat

end

end A342086.P16016558944034641350

/-! ## A342086.P4795197008769116882

`A045778(2*A003961(n+1))`
-/

namespace A342086.P4795197008769116882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (2 * A003961 (n + 1)).toNat

end

end A342086.P4795197008769116882

/-! ## A342086.P6820364731137582875

`A045778(2*A045965(n+1))`
-/

namespace A342086.P6820364731137582875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (2 * A045965 (n + 1)).toNat

end

end A342086.P6820364731137582875

/-! ## A342086.P4045197906516986999

`A045778(2*A064988(n+1))`
-/

namespace A342086.P4045197906516986999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (2 * A064988 (n + 1)).toNat

end

end A342086.P4045197906516986999

/-! ## A342086.P1453270712242938631

`A045778(lcm(2, A003961(n+1)))`
-/

namespace A342086.P1453270712242938631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (Int.lcm 2 (A003961 (n + 1)))

end

end A342086.P1453270712242938631

/-! ## A342086.P10321459423206862024

`A045778(A064988(n+1)+A064988(n+1))`
-/

namespace A342086.P10321459423206862024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A064988 (n + 1) + A064988 (n + 1)).toNat

end

end A342086.P10321459423206862024

/-! ## A342086.P3017308562465386723

`A045778(A119416(n+1))`
-/

namespace A342086.P3017308562465386723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A119416 (n + 1)).toNat

end

end A342086.P3017308562465386723

/-!
# A342087: Number of chains of divisors starting with n and having no adjacent parts x <= y^2.

The programs for A342087, there is no canonical definition to state claims against.
-/

/-! ## A342087.P13653340554878226651

`ceil(cosh(sin(n)))*A342083(n+1)`
-/

namespace A342087.P13653340554878226651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A342083 (n + 1)

end

end A342087.P13653340554878226651

/-! ## A342087.P13349041671985445016

`(A057427(n)+1)*A342083(n+1)`
-/

namespace A342087.P13349041671985445016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A342083 (n + 1)

end

end A342087.P13349041671985445016

/-! ## A342087.P13596263932170872783

`A000032(C(2, n+2))*A342083(n+1)`
-/

namespace A342087.P13596263932170872783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A342083 (n + 1)

end

end A342087.P13596263932170872783

/-! ## A342087.P12736716306519517158

`A020639(a(n-1))*A342083(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A342087.P12736716306519517158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A342083 (n + 1)

end

end A342087.P12736716306519517158

/-! ## A342087.P4995366760044602622

`A046698(n+2)*A342083(n+1)`
-/

namespace A342087.P4995366760044602622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (n + 2) * A342083 (n + 1)

end

end A342087.P4995366760044602622

/-! ## A342087.P76234440605606384

`A020639(A000118(n))*A342083(n+1)`
-/

namespace A342087.P76234440605606384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A342083 (n + 1)

end

end A342087.P76234440605606384

/-! ## A342087.P14172711350174953274

`2*A342083(n+1)/A014963(4*n+2)`
-/

namespace A342087.P14172711350174953274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A342083 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A342087.P14172711350174953274

/-! ## A342087.P3928776526248155523

`A000122(n²)*A342083(n+1)`
-/

namespace A342087.P3928776526248155523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A342083 (n + 1)

end

end A342087.P3928776526248155523

/-!
# A342088: Triangle read by rows: T(n,k) is the number of n-colorings of the vertices of the k-dimensional cross polytope such that no two adjacent vertices have the same color. 0 <= k <= n.

The programs for A342088, there is no canonical definition to state claims against.
-/

/-! ## A342088.P10573104151005696983

`A008279(n)*A088699(n)`
-/

namespace A342088.P10573104151005696983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A088699 n

end

end A342088.P10573104151005696983

/-! ## A342088.P15938538398081120632

`A088699(n)*A094587(A061579(n))`
-/

namespace A342088.P15938538398081120632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 n * A094587 (A061579 n).toNat

end

end A342088.P15938538398081120632

/-! ## A342088.P9623621138145910197

`A088699(n)/A046899(n)*A113025(n)`
-/

namespace A342088.P9623621138145910197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088699 n : ℚ) / (A046899 n : ℚ) * (A113025 n : ℚ)

end

end A342088.P9623621138145910197

/-! ## A342088.P1699681432936351905

`A073474(n)/A143409(n)*A088699(n)`
-/

namespace A342088.P1699681432936351905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A143409 n : ℚ) * (A088699 n : ℚ)

end

end A342088.P1699681432936351905

/-! ## A342088.P1460376588346483759

`gcd(A073474(n), A121757(n))*A088699(n)`
-/

namespace A342088.P1460376588346483759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A073474 n) (A121757 n) : ℤ) * A088699 n

end

end A342088.P1460376588346483759

/-! ## A342088.P1704744223270513182

`gcd(A206703(n), A218016(n))*A088699(n)`
-/

namespace A342088.P1704744223270513182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A206703 n) (A218016 n) : ℤ) * A088699 n

end

end A342088.P1704744223270513182

/-!
# A342089: Numbers that have two representations as the sum of distinct non-consecutive Lucas numbers (A000032).

The programs for A342089, the canonical program `A342089.P14921014669089711411` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342089 has offset 1).

The definition of A342089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342089.P9581947620145525107

`∑[xor(5, Δ[floor(ϕ*n)])]+1`
-/

namespace A342089.P9581947620145525107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A342089.P9581947620145525107

namespace A342089

/-- `∑[xor(5, Δ[floor(ϕ*n)])]+1` -/
def P9581947620145525107.Spec : Prop :=
  ∀ n, P9581947620145525107.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P1875680978822397740

`3*floor(ϕ*(n+1))+2+n`
-/

namespace A342089.P1875680978822397740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 2 + (n : ℤ)

end

end A342089.P1875680978822397740

namespace A342089

/-- `3*floor(ϕ*(n+1))+2+n` -/
def P1875680978822397740.Spec : Prop :=
  ∀ n, P1875680978822397740.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P14921014669089711411

`abs(A035337(n)+2-n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342089

/-- `abs(A035337(n)+2-n)` -/
def P14921014669089711411.Spec : Prop :=
  ∀ n, P14921014669089711411.a n = A342089 (n + 1)

theorem P14921014669089711411.correct : P14921014669089711411.Spec := by
  intro n
  simp only [A342089, Nat.add_sub_cancel]

end A342089

/-! ## A342089.P8728493812893744866

`-xor(-1, A190509(n+1))`
-/

namespace A342089.P8728493812893744866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A190509 (n + 1))

end

end A342089.P8728493812893744866

namespace A342089

/-- `-xor(-1, A190509(n+1))` -/
def P8728493812893744866.Spec : Prop :=
  ∀ n, P8728493812893744866.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P13296620274135285968

`abs(A134860(n+1)-(n-1))`
-/

namespace A342089.P13296620274135285968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134860 (n + 1) - ((n : ℤ) - 1)|

end

end A342089.P13296620274135285968

namespace A342089

/-- `abs(A134860(n+1)-(n-1))` -/
def P13296620274135285968.Spec : Prop :=
  ∀ n, P13296620274135285968.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P14142990781556511917

`abs(ceil(ϕ*A003623(n+1))-n)`
-/

namespace A342089.P14142990781556511917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.goldenRatio * (A003623 (n + 1) : ℝ)⌉ - (n : ℤ)|

end

end A342089.P14142990781556511917

namespace A342089

/-- `abs(ceil(ϕ*A003623(n+1))-n)` -/
def P14142990781556511917.Spec : Prop :=
  ∀ n, P14142990781556511917.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P785741346902362006

`A000027(A190509(n+1)+1)`
-/

namespace A342089.P785741346902362006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A190509 (n + 1) + 1).toNat

end

end A342089.P785741346902362006

namespace A342089

/-- `A000027(A190509(n+1)+1)` -/
def P785741346902362006.Spec : Prop :=
  ∀ n, P785741346902362006.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P18126494183980013157

`(A190509(n+1)+1)%A002025(n+1)`
-/

namespace A342089.P18126494183980013157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190509 (n + 1) + 1) (A002025 (n + 1))

end

end A342089.P18126494183980013157

namespace A342089

/-- `(A190509(n+1)+1)%A002025(n+1)` -/
def P18126494183980013157.Spec : Prop :=
  ∀ n, P18126494183980013157.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P13726206732818477729

`A284624(A004956(n+1))`
-/

namespace A342089.P13726206732818477729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (A004956 (n + 1)).toNat

end

end A342089.P13726206732818477729

namespace A342089

/-- `A284624(A004956(n+1))` -/
def P13726206732818477729.Spec : Prop :=
  ∀ n, P13726206732818477729.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P6924317580049716634

`A284624(A026351(n+1))`
-/

namespace A342089.P6924317580049716634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (A026351 (n + 1)).toNat

end

end A342089.P6924317580049716634

namespace A342089

/-- `A284624(A026351(n+1))` -/
def P6924317580049716634.Spec : Prop :=
  ∀ n, P6924317580049716634.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P11803803165565811779

`A284624(∑[A001468(n)]+1)`
-/

namespace A342089.P11803803165565811779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A342089.P11803803165565811779

namespace A342089

/-- `A284624(∑[A001468(n)]+1)` -/
def P11803803165565811779.Spec : Prop :=
  ∀ n, P11803803165565811779.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P6679692888348735688

`A284624(A000201(n+1)+1)`
-/

namespace A342089.P6679692888348735688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (A000201 (n + 1) + 1).toNat

end

end A342089.P6679692888348735688

namespace A342089

/-- `A284624(A000201(n+1)+1)` -/
def P6679692888348735688.Spec : Prop :=
  ∀ n, P6679692888348735688.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P13432761386452800778

`A284624(A022342(n+1)+2)`
-/

namespace A342089.P13432761386452800778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (A022342 (n + 1) + 2).toNat

end

end A342089.P13432761386452800778

namespace A342089

/-- `A284624(A022342(n+1)+2)` -/
def P13432761386452800778.Spec : Prop :=
  ∀ n, P13432761386452800778.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P3953915989193891177

`A284624(A001950(n+1)-n)`
-/

namespace A342089.P3953915989193891177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (A001950 (n + 1) - (n : ℤ)).toNat

end

end A342089.P3953915989193891177

namespace A342089

/-- `A284624(A001950(n+1)-n)` -/
def P3953915989193891177.Spec : Prop :=
  ∀ n, P3953915989193891177.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P2496342112247701520

`A284624(A003231(n+1)-(2*n+1))`
-/

namespace A342089.P2496342112247701520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (A003231 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A342089.P2496342112247701520

namespace A342089

/-- `A284624(A003231(n+1)-(2*n+1))` -/
def P2496342112247701520.Spec : Prop :=
  ∀ n, P2496342112247701520.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P8048492721450433651

`A198082(A001950(n+1))`
-/

namespace A342089.P8048492721450433651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (A001950 (n + 1)).toNat

end

end A342089.P8048492721450433651

namespace A342089

/-- `A198082(A001950(n+1))` -/
def P8048492721450433651.Spec : Prop :=
  ∀ n, P8048492721450433651.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P9506360155213089540

`A198082(A004957(n+1)-1)`
-/

namespace A342089.P9506360155213089540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (A004957 (n + 1) - 1).toNat

end

end A342089.P9506360155213089540

namespace A342089

/-- `A198082(A004957(n+1)-1)` -/
def P9506360155213089540.Spec : Prop :=
  ∀ n, P9506360155213089540.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P14214574614564806027

`A050140(A004957(n+1))`
-/

namespace A342089.P14214574614564806027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A004957 (n + 1)).toNat

end

end A342089.P14214574614564806027

namespace A342089

/-- `A050140(A004957(n+1))` -/
def P14214574614564806027.Spec : Prop :=
  ∀ n, P14214574614564806027.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P2940551593479019393

`A050140(A026352(n+1))`
-/

namespace A342089.P2940551593479019393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (A026352 (n + 1)).toNat

end

end A342089.P2940551593479019393

namespace A342089

/-- `A050140(A026352(n+1))` -/
def P2940551593479019393.Spec : Prop :=
  ∀ n, P2940551593479019393.a n = A342089 (n + 1)

end A342089

/-! ## A342089.P16976199991475424160

`A190511(A001950(n+1)+1)`
-/

namespace A342089.P16976199991475424160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (A001950 (n + 1) + 1).toNat

end

end A342089.P16976199991475424160

namespace A342089

/-- `A190511(A001950(n+1)+1)` -/
def P16976199991475424160.Spec : Prop :=
  ∀ n, P16976199991475424160.a n = A342089 (n + 1)

end A342089

/-!
# A342090: Numbers with at least one prime power p^e in their prime factorization such that p|e.

The programs for A342090, the canonical program `A342090.P2855243070632896022` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342090 has offset 1).

The definition of A342090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342090.P2855243070632896022

`eq[1, A369070(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342090

/-- `eq[1, A369070(n+1)]+1` -/
def P2855243070632896022.Spec : Prop :=
  ∀ n, (P2855243070632896022.a n : ℤ) = A342090 (n + 1)

theorem P2855243070632896022.correct : P2855243070632896022.Spec := by
  intro n
  simp only [A342090, Nat.add_sub_cancel]

end A342090

/-! ## A342090.P6415451523591623022

`lt[1, A369008(n+1)]+1`
-/

namespace A342090.P6415451523591623022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342090.P6415451523591623022

namespace A342090

/-- `lt[1, A369008(n+1)]+1` -/
def P6415451523591623022.Spec : Prop :=
  ∀ n, (P6415451523591623022.a n : ℤ) = A342090 (n + 1)

end A342090

/-! ## A342090.P8674330216693054301

`filter[A137257(n+1), A369070(#)]`
-/

namespace A342090.P8674330216693054301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P8674330216693054301

namespace A342090

/-- `filter[A137257(n+1), A369070(#)]` -/
def P8674330216693054301.Spec : Prop :=
  ∀ n, P8674330216693054301.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P3977346214173626492

`filter[A100716(n+1), A369070(#)]`
-/

namespace A342090.P3977346214173626492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P3977346214173626492

namespace A342090

/-- `filter[A100716(n+1), A369070(#)]` -/
def P3977346214173626492.Spec : Prop :=
  ∀ n, P3977346214173626492.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P11042037501677340224

`filter[A328251(n+1), A369070(#)]`
-/

namespace A342090.P11042037501677340224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P11042037501677340224

namespace A342090

/-- `filter[A328251(n+1), A369070(#)]` -/
def P11042037501677340224.Spec : Prop :=
  ∀ n, P11042037501677340224.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P12225217981866907111

`filter[A355740(n+1), A369070(#)]`
-/

namespace A342090.P12225217981866907111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P12225217981866907111

namespace A342090

/-- `filter[A355740(n+1), A369070(#)]` -/
def P12225217981866907111.Spec : Prop :=
  ∀ n, P12225217981866907111.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P6632926288555131724

`filter[A371089(n+1), A369070(#)]`
-/

namespace A342090.P6632926288555131724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P6632926288555131724

namespace A342090

/-- `filter[A371089(n+1), A369070(#)]` -/
def P6632926288555131724.Spec : Prop :=
  ∀ n, P6632926288555131724.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P8578495186315828657

`filter[A274141(n+1), A369070(#)]`
-/

namespace A342090.P8578495186315828657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P8578495186315828657

namespace A342090

/-- `filter[A274141(n+1), A369070(#)]` -/
def P8578495186315828657.Spec : Prop :=
  ∀ n, P8578495186315828657.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P3792107829858228349

`filter[A387711(n+1), A369070(#)]`
-/

namespace A342090.P3792107829858228349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P3792107829858228349

namespace A342090

/-- `filter[A387711(n+1), A369070(#)]` -/
def P3792107829858228349.Spec : Prop :=
  ∀ n, P3792107829858228349.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P11899248359251547532

`filter[A013929(n+1), A369070(#)]`
-/

namespace A342090.P11899248359251547532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P11899248359251547532

namespace A342090

/-- `filter[A013929(n+1), A369070(#)]` -/
def P11899248359251547532.Spec : Prop :=
  ∀ n, P11899248359251547532.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P6573526701180463748

`filter[A162966(n+1), A369070(#)]`
-/

namespace A342090.P6573526701180463748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P6573526701180463748

namespace A342090

/-- `filter[A162966(n+1), A369070(#)]` -/
def P6573526701180463748.Spec : Prop :=
  ∀ n, P6573526701180463748.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P7990597586713768496

`filter[A354360(n+1), A369070(#)]`
-/

namespace A342090.P7990597586713768496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P7990597586713768496

namespace A342090

/-- `filter[A354360(n+1), A369070(#)]` -/
def P7990597586713768496.Spec : Prop :=
  ∀ n, P7990597586713768496.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P12887749189470102784

`filter[A327929(n+1), A369070(#)]`
-/

namespace A342090.P12887749189470102784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P12887749189470102784

namespace A342090

/-- `filter[A327929(n+1), A369070(#)]` -/
def P12887749189470102784.Spec : Prop :=
  ∀ n, P12887749189470102784.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P1914415411989305245

`filter[A389462(n+1), A369070(#)]`
-/

namespace A342090.P1914415411989305245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P1914415411989305245

namespace A342090

/-- `filter[A389462(n+1), A369070(#)]` -/
def P1914415411989305245.Spec : Prop :=
  ∀ n, P1914415411989305245.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P535809837441703968

`filter[A328303(n+2), A369070(#)]`
-/

namespace A342090.P535809837441703968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P535809837441703968

namespace A342090

/-- `filter[A328303(n+2), A369070(#)]` -/
def P535809837441703968.Spec : Prop :=
  ∀ n, P535809837441703968.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P399612060231951040

`filter[A343597(n+1), A369070(#)]`
-/

namespace A342090.P399612060231951040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P399612060231951040

namespace A342090

/-- `filter[A343597(n+1), A369070(#)]` -/
def P399612060231951040.Spec : Prop :=
  ∀ n, P399612060231951040.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P5003021681916057888

`filter[A246282(n+1), A369070(#)]`
-/

namespace A342090.P5003021681916057888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P5003021681916057888

namespace A342090

/-- `filter[A246282(n+1), A369070(#)]` -/
def P5003021681916057888.Spec : Prop :=
  ∀ n, P5003021681916057888.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P4557426230338423458

`filter[A246352(n+1), A369070(#)]`
-/

namespace A342090.P4557426230338423458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P4557426230338423458

namespace A342090

/-- `filter[A246352(n+1), A369070(#)]` -/
def P4557426230338423458.Spec : Prop :=
  ∀ n, P4557426230338423458.a n = A342090 (n + 1)

end A342090

/-! ## A342090.P2132853283329270158

`filter[A366288(n+1), A369070(#)]`
-/

namespace A342090.P2132853283329270158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A342090.P2132853283329270158

namespace A342090

/-- `filter[A366288(n+1), A369070(#)]` -/
def P2132853283329270158.Spec : Prop :=
  ∀ n, P2132853283329270158.a n = A342090 (n + 1)

end A342090

/-!
# A342091: a(n) is the least number k such that k! has n distinct exponents in its prime factorization.

The programs for A342091, there is no canonical definition to state claims against.
-/

/-! ## A342091.P5264543881689993649

`A073818(A000007(n*a(n-1))+n)` with `a(0)=1`
-/

namespace A342091.P5264543881689993649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073818 (A000007 ((n : ℤ) * a (n - 1)).toNat + (n : ℤ)).toNat

end

end A342091.P5264543881689993649

/-! ## A342091.P5602950379669020927

`∏{e}[2^n, A073818(#)]`
-/

namespace A342091.P5602950379669020927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A073818 (Nat.factorization (f1 n) p)

end

end A342091.P5602950379669020927

/-! ## A342091.P10237130303425625969

`A070082(3^n-n)`
-/

namespace A342091.P10237130303425625969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (3 ^ n - n)

end

end A342091.P10237130303425625969

/-! ## A342091.P13178306422085939915

`record[A357975(A064764(n+1))]`
-/

namespace A342091.P13178306422085939915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357975 (A064764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342091.P13178306422085939915

/-!
# A342092: Odd numbers k such that if k = A001065(m) for some m then m is a squarefree semiprime (A006881).

The programs for A342092, there is no canonical definition to state claims against.
-/

/-! ## A342092.P11541717829899951179

`lt[A206584(n), A206585(A048050(n+1))]`
-/

namespace A342092.P11541717829899951179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206585 (A048050 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342092.P11541717829899951179

/-! ## A342092.P18229646790078355470

`lt[A056171(A168489(n+1)), A107753(n+1)]`
-/

namespace A342092.P18229646790078355470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A168489 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342092.P18229646790078355470

/-! ## A342092.P13571189017362960614

`lt[A381635(A381619(n+4)), A129308(n+1)]`
-/

namespace A342092.P13571189017362960614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381635 (A381619 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342092.P13571189017362960614

/-! ## A342092.P16210369354905081617

`or(A003557(A006970(n+3)), A274793(2*n+3))`
-/

namespace A342092.P16210369354905081617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003557 (A006970 (n + 3)).toNat) (A274793 (2 * n + 3))

end

end A342092.P16210369354905081617

/-! ## A342092.P5253871717957962251

`lt[A237593(3*n+1), A216375(A081373(n+1))]`
-/

namespace A342092.P5253871717957962251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216375 (A081373 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342092.P5253871717957962251

/-!
# A342093: Primes that can be represented as (1/2)*Sum_{i=0..m} binomial(m,i)*prime(i+k) for some k and m >= 2.

The programs for A342093, there is no canonical definition to state claims against.
-/

/-! ## A342093.P4368315068003998660

`p?[A281667(n+1)+A141214(n)]`
-/

namespace A342093.P4368315068003998660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281667 (n + 1) + A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342093.P4368315068003998660

/-!
# A342095: Number of strict integer partitions of n with no adjacent parts having quotient > 2.

The programs for A342095, there is no canonical definition to state claims against.
-/

/-! ## A342095.P9256935077067802445

`A143518(n+1)+A000120(A049901(n+1))`
-/

namespace A342095.P9256935077067802445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143518 (n + 1) + A000120 (A049901 (n + 1)).toNat

end

end A342095.P9256935077067802445

/-! ## A342095.P6543940159212182683

`A008687(or(2, A307578(n)))`
-/

namespace A342095.P6543940159212182683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Int.lor 2 (A307578 n)).toNat

end

end A342095.P6543940159212182683

/-! ## A342095.P4629718077628451481

`A078660(n)+A001221(A077847(n))`
-/

namespace A342095.P4629718077628451481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078660 n + A001221 (A077847 n).toNat

end

end A342095.P4629718077628451481

/-! ## A342095.P16863525624409975232

`A189024(A008706(n)+A001255(n))`
-/

namespace A342095.P16863525624409975232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A008706 n + A001255 n).toNat

end

end A342095.P16863525624409975232

/-! ## A342095.P10008735473183754364

`A189024(A313834(n)+A001255(n))`
-/

namespace A342095.P10008735473183754364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (A313834 n + A001255 n).toNat

end

end A342095.P10008735473183754364

/-!
# A342096: Number of integer partitions of n with no adjacent parts having quotient >= 2.

The programs for A342096, there is no canonical definition to state claims against.
-/

/-! ## A342096.P3359405551165370430

`A227177(A293058(n))-floor(n/2)`
-/

namespace A342096.P3359405551165370430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A293058 n).toNat - ⌊(n : ℚ) / 2⌋

end

end A342096.P3359405551165370430

/-! ## A342096.P18067727619509904320

`A382080(A039755(n))+A000700(2*(n+1))`
-/

namespace A342096.P18067727619509904320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382080 (A039755 n).toNat + A000700 (2 * (n + 1))

end

end A342096.P18067727619509904320

/-! ## A342096.P16026479508104881540

`A336423(A113711(n))+A000700(2*(n+1))`
-/

namespace A342096.P16026479508104881540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336423 (A113711 n).toNat + A000700 (2 * (n + 1))

end

end A342096.P16026479508104881540

/-! ## A342096.P6583164147282172890

`A145140(A145140(n+8))+A069910(n+1)`
-/

namespace A342096.P6583164147282172890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145140 (A145140 (n + 8)).toNat + A069910 (n + 1)

end

end A342096.P6583164147282172890

/-! ## A342096.P8367436356461705582

`A114213(A220562(n+1))+A000700(2*n+2)`
-/

namespace A342096.P8367436356461705582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114213 (A220562 (n + 1)).toNat + A000700 (2 * n + 2)

end

end A342096.P8367436356461705582

/-!
# A342098: Number of (necessarily strict) integer partitions of n with all adjacent parts having quotients > 2.

The programs for A342098, there is no canonical definition to state claims against.
-/

/-! ## A342098.P1247843872518265546

`A005041(A332285(n)%A007749(n+1))`
-/

namespace A342098.P1247843872518265546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.tmod (A332285 n) (A007749 (n + 1))).toNat

end

end A342098.P1247843872518265546

/-! ## A342098.P8851127470187240166

`A025813(2*n+1)-A134824(A158058(n+1))`
-/

namespace A342098.P8851127470187240166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025813 (2 * n + 1) - A134824 (A158058 (n + 1)).toNat

end

end A342098.P8851127470187240166

/-! ## A342098.P10317436393533021666

`∑[A109705(lt[A109705(n), 2])]`
-/

namespace A342098.P10317436393533021666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109705 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109705 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342098.P10317436393533021666

/-! ## A342098.P3686106103847850529

`A000005(2^A025813(2*n+1))`
-/

namespace A342098.P3686106103847850529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025813 (2 * n + 1) : ℤ))).toNat

end

end A342098.P3686106103847850529

/-! ## A342098.P2658395405368410528

`A000005(A000079(A025813(2*n+1)))`
-/

namespace A342098.P2658395405368410528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 (A025813 (2 * n + 1)).toNat).toNat

end

end A342098.P2658395405368410528

/-!
# A342099: Product of first n tangent numbers.

The programs for A342099, there is no canonical definition to state claims against.
-/

/-! ## A342099.P1846377516239436377

`-∏[record[-A346838(n)]]`
-/

namespace A342099.P1846377516239436377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A346838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A342099.P1846377516239436377

/-! ## A342099.P17643657149881178243

`a(n-1)*A000182(n)` with `a(0)=1`
-/

namespace A342099.P17643657149881178243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000182 n

end

end A342099.P17643657149881178243

/-! ## A342099.P10036051721879983666

`∏[A000111(comp[2*(n+1)])]`
-/

namespace A342099.P10036051721879983666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342099.P10036051721879983666

/-! ## A342099.P15820573440891079937

`∏[A000182(round(sqrt(n²+1)))]`
-/

namespace A342099.P15820573440891079937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342099.P15820573440891079937

/-! ## A342099.P10130911984947782566

`a(n-1)*A008303(n²)` with `a(0)=1`
-/

namespace A342099.P10130911984947782566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008303 (n ^ 2)

end

end A342099.P10130911984947782566

