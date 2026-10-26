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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
# A216912: a(n) = denominator(B°(2*n))/4 where the B°(n) are Zagier's modified Bernoulli numbers.

The programs for A216912, there is no canonical definition to state claims against.
-/

/-! ## A216912.P14762285159385326490

`A216923(2*(n+1))/4`
-/

namespace A216912.P14762285159385326490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216923 (2 * (n + 1)) : ℚ) / 4

end

end A216912.P14762285159385326490

/-! ## A216912.P804033903081114475

`A222804(2*(n+1))/2`
-/

namespace A216912.P804033903081114475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222804 (2 * (n + 1)) : ℚ) / 2

end

end A216912.P804033903081114475

/-! ## A216912.P4443551852063641201

`Δ[∑[A222804(2*n)]/2]`
-/

namespace A216912.P4443551852063641201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216912.P4443551852063641201

/-! ## A216912.P5310125504673584684

`floor(A222804(Δ[n²]+1)/2)`
-/

namespace A216912.P5310125504673584684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222804 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2⌋

end

end A216912.P5310125504673584684

/-! ## A216912.P3127563884913540584

`round(cosh(log(A222804(2*n+2))))`
-/

namespace A216912.P3127563884913540584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (A222804 (2 * n + 2) : ℝ)))

end

end A216912.P3127563884913540584

/-!
# A216913: a(n) = Gauss_primorial(3*n, 3) / Gauss_primorial(3*n, 3*n).

The programs for A216913, the canonical program `A216913.P8560364480247943397` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216913 has offset 1).

The definition of A216913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216913.P8560364480247943397

`A007947(n+1)/A109007(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A216913

/-- `A007947(n+1)/A109007(n+1)` -/
def P8560364480247943397.Spec : Prop :=
  ∀ n, P8560364480247943397.a n = (A216913 (n + 1) : ℚ)

end A216913

/-! ## A216913.P17584781022183916730

`∏{p}[3*(n+1), #]/3`
-/

namespace A216913.P17584781022183916730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 3

end

end A216913.P17584781022183916730

namespace A216913

/-- `∏{p}[3*(n+1), #]/3` -/
def P17584781022183916730.Spec : Prop :=
  ∀ n, P17584781022183916730.a n = (A216913 (n + 1) : ℚ)

end A216913

/-! ## A216913.P13138723666852856314

`lcm(3, ∏{p}[n+1, #])/3`
-/

namespace A216913.P13138723666852856314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / 3

end

end A216913.P13138723666852856314

namespace A216913

/-- `lcm(3, ∏{p}[n+1, #])/3` -/
def P13138723666852856314.Spec : Prop :=
  ∀ n, P13138723666852856314.a n = (A216913 (n + 1) : ℚ)

end A216913

/-! ## A216913.P17475166271491918560

`∏{p}[n+1, #/gcd(3, #)]`
-/

namespace A216913.P17475166271491918560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (Nat.gcd 3 p : ℚ)

end

end A216913.P17475166271491918560

namespace A216913

/-- `∏{p}[n+1, #/gcd(3, #)]` -/
def P17475166271491918560.Spec : Prop :=
  ∀ n, P17475166271491918560.a n = (A216913 (n + 1) : ℚ)

end A216913

/-! ## A216913.P7078205005446310343

`∏{p}[n+1, #-val(#², 3)]`
-/

namespace A216913.P7078205005446310343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (SequenceMachineLib.valuation (p ^ 2) 3 : ℤ))

end

end A216913.P7078205005446310343

namespace A216913

/-- `∏{p}[n+1, #-val(#², 3)]` -/
def P7078205005446310343.Spec : Prop :=
  ∀ n, P7078205005446310343.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P208985182157179376

`∏{p}[n+1, #^(#²%3)]`
-/

namespace A216913.P208985182157179376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ (p ^ 2 % 3)

end

end A216913.P208985182157179376

namespace A216913

/-- `∏{p}[n+1, #^(#²%3)]` -/
def P208985182157179376.Spec : Prop :=
  ∀ n, (P208985182157179376.a n : ℤ) = A216913 (n + 1)

end A216913

/-! ## A216913.P15677244726553698027

`gcd(C(∏{p}[n+1, #], 3), ∏{p}[n+1, #])`
-/

namespace A216913.P15677244726553698027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) 3) (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A216913.P15677244726553698027

namespace A216913

/-- `gcd(C(∏{p}[n+1, #], 3), ∏{p}[n+1, #])` -/
def P15677244726553698027.Spec : Prop :=
  ∀ n, (P15677244726553698027.a n : ℤ) = A216913 (n + 1)

end A216913

/-! ## A216913.P1537825778945450762

`A038502(∏{p}[n+1, #])`
-/

namespace A216913.P1537825778945450762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A216913.P1537825778945450762

namespace A216913

/-- `A038502(∏{p}[n+1, #])` -/
def P1537825778945450762.Spec : Prop :=
  ∀ n, P1537825778945450762.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P6166819065498097793

`A051176(∏{p}[n+1, #])`
-/

namespace A216913.P6166819065498097793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A216913.P6166819065498097793

namespace A216913

/-- `A051176(∏{p}[n+1, #])` -/
def P6166819065498097793.Spec : Prop :=
  ∀ n, P6166819065498097793.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P13856125234411936342

`A106610(∏{p}[n+1, #])`
-/

namespace A216913.P13856125234411936342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A216913.P13856125234411936342

namespace A216913

/-- `A106610(∏{p}[n+1, #])` -/
def P13856125234411936342.Spec : Prop :=
  ∀ n, P13856125234411936342.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P11181571115030064333

`∏{p}[n+1, A182398(#)]`
-/

namespace A216913.P11181571115030064333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A182398 p

end

end A216913.P11181571115030064333

namespace A216913

/-- `∏{p}[n+1, A182398(#)]` -/
def P11181571115030064333.Spec : Prop :=
  ∀ n, P11181571115030064333.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P6595457560534870937

`∏{p}[n+1, A296064(#)]`
-/

namespace A216913.P6595457560534870937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A296064 p

end

end A216913.P6595457560534870937

namespace A216913

/-- `∏{p}[n+1, A296064(#)]` -/
def P6595457560534870937.Spec : Prop :=
  ∀ n, P6595457560534870937.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P7671710882766656851

`∏{p}[n+1, A351250(#)]`
-/

namespace A216913.P7671710882766656851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A351250 p

end

end A216913.P7671710882766656851

namespace A216913

/-- `∏{p}[n+1, A351250(#)]` -/
def P7671710882766656851.Spec : Prop :=
  ∀ n, P7671710882766656851.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P13745301393348364162

`∏{p}[n+1, A351253(#)]`
-/

namespace A216913.P13745301393348364162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A351253 p

end

end A216913.P13745301393348364162

namespace A216913

/-- `∏{p}[n+1, A351253(#)]` -/
def P13745301393348364162.Spec : Prop :=
  ∀ n, P13745301393348364162.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P4407153248691535130

`A383793(∏{p}[n+1, #])`
-/

namespace A216913.P4407153248691535130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383793 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A216913.P4407153248691535130

namespace A216913

/-- `A383793(∏{p}[n+1, #])` -/
def P4407153248691535130.Spec : Prop :=
  ∀ n, P4407153248691535130.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P8903743933250685575

`A007947(3*(n+1))/3`
-/

namespace A216913.P8903743933250685575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (3 * (n + 1)) : ℚ) / 3

end

end A216913.P8903743933250685575

namespace A216913

/-- `A007947(3*(n+1))/3` -/
def P8903743933250685575.Spec : Prop :=
  ∀ n, P8903743933250685575.a n = (A216913 (n + 1) : ℚ)

end A216913

/-! ## A216913.P16521945239106930895

`∏{p}[n+1, #^A008683(3*#)]`
-/

namespace A216913.P16521945239106930895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A008683 (3 * p) : ℤ)

end

end A216913.P16521945239106930895

namespace A216913

/-- `∏{p}[n+1, #^A008683(3*#)]` -/
def P16521945239106930895.Spec : Prop :=
  ∀ n, P16521945239106930895.a n = (A216913 (n + 1) : ℚ)

end A216913

/-! ## A216913.P1303111570625643248

`A038502(A007947(n+1))`
-/

namespace A216913.P1303111570625643248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A007947 (n + 1)).toNat

end

end A216913.P1303111570625643248

namespace A216913

/-- `A038502(A007947(n+1))` -/
def P1303111570625643248.Spec : Prop :=
  ∀ n, P1303111570625643248.a n = A216913 (n + 1)

end A216913

/-! ## A216913.P18441412918649478375

`gcd(A038502(n+1), A144845(n))`
-/

namespace A216913.P18441412918649478375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038502 (n + 1)) (A144845 n)

end

end A216913.P18441412918649478375

namespace A216913

/-- `gcd(A038502(n+1), A144845(n))` -/
def P18441412918649478375.Spec : Prop :=
  ∀ n, (P18441412918649478375.a n : ℤ) = A216913 (n + 1)

end A216913

/-! ## A216913.P7580948969920890424

`A064549(n+1)/A203648(n+1)`
-/

namespace A216913.P7580948969920890424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A203648 (n + 1) : ℚ)

end

end A216913.P7580948969920890424

namespace A216913

/-- `A064549(n+1)/A203648(n+1)` -/
def P7580948969920890424.Spec : Prop :=
  ∀ n, P7580948969920890424.a n = (A216913 (n + 1) : ℚ)

end A216913

/-!
# A216914: The Gauss factorial N_n! restricted to prime factors for N >= 0, n >= 1, square array read by antidiagonals.

The programs for A216914, there is no canonical definition to state claims against.
-/

/-! ## A216914.P13738093929386016352

`gcd(A034386(n), A152656(n))`
-/

namespace A216914.P13738093929386016352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A152656 n)

end

end A216914.P13738093929386016352

/-! ## A216914.P12186088012107632201

`gcd(A152656(n)², A246868(n))`
-/

namespace A216914.P12186088012107632201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152656 n ^ 2) (A246868 n)

end

end A216914.P12186088012107632201

/-! ## A216914.P6130529145469417415

`gcd(A077011(n+1), A216919(n+1))`
-/

namespace A216914.P6130529145469417415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077011 (n + 1)) (A216919 (n + 1))

end

end A216914.P6130529145469417415

/-! ## A216914.P5517075233809199516

`gcd(A216919(n+1)², A115343(n+1))`
-/

namespace A216914.P5517075233809199516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216919 (n + 1) ^ 2) (A115343 (n + 1))

end

end A216914.P5517075233809199516

/-! ## A216914.P16611653749913657804

`A007947(A152656(n)/A216915(n+1))`
-/

namespace A216914.P16611653749913657804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A152656 n : ℚ) / (A216915 (n + 1) : ℚ))).toNat

end

end A216914.P16611653749913657804

/-! ## A216914.P17685777374542544168

`gcd(A002110(A006942(n)), A216919(n+1))`
-/

namespace A216914.P17685777374542544168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A006942 n).toNat) (A216919 (n + 1))

end

end A216914.P17685777374542544168

/-! ## A216914.P4727770765371354667

`∏{p}[A216919(n+1)/A216915(n+1), A014963(#)]`
-/

namespace A216914.P4727770765371354667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216919 (n + 1) : ℚ) / (A216915 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 p

end

end A216914.P4727770765371354667

/-! ## A216914.P4089775160186498378

`∏{p}[A216919(n+1)/A216915(n+1), A020639(#)]`
-/

namespace A216914.P4089775160186498378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216919 (n + 1) : ℚ) / (A216915 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A020639 p

end

end A216914.P4089775160186498378

/-! ## A216914.P9214104511971122784

`∏{p}[A216919(n+1)/A216915(n+1), A064446(#)]`
-/

namespace A216914.P9214104511971122784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216919 (n + 1) : ℚ) / (A216915 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A064446 p

end

end A216914.P9214104511971122784

/-! ## A216914.P7451991398452523856

`∏{p}[A216917(n+1), #]`
-/

namespace A216914.P7451991398452523856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A216914.P7451991398452523856

/-!
# A216915: T(n, k) = Product{1<=j<=n, gcd(j,k)=1 | j} / lcm{1<=j<=n, gcd(j,k)=1 | j} for n >= 0, k >= 1, square array read by antidiagonals.

The programs for A216915, there is no canonical definition to state claims against.
-/

/-! ## A216915.P2710435413586394077

`A216919(n+1)/A216917(n+1)`
-/

namespace A216915.P2710435413586394077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216919 (n + 1) : ℚ) / (A216917 (n + 1) : ℚ)

end

end A216915.P2710435413586394077

/-! ## A216915.P11227023088544331678

`∏{e}[A216919(n+1), A334518(#)]`
-/

namespace A216915.P11227023088544331678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A334518 (Nat.factorization (f1 n).natAbs p)

end

end A216915.P11227023088544331678

/-! ## A216915.P2421403349772051034

`A000188(A216919(n+1))`
-/

namespace A216915.P2421403349772051034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A216919 (n + 1)).toNat

end

end A216915.P2421403349772051034

/-! ## A216915.P4794815542806986518

`A341857(lcm(4, A216919(n+1)))`
-/

namespace A216915.P4794815542806986518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341857 (Int.lcm 4 (A216919 (n + 1)))

end

end A216915.P4794815542806986518

/-! ## A216915.P17900676559916987359

`gcd(A000188(A119502(n)), A002262(n))`
-/

namespace A216915.P17900676559916987359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (A119502 n).toNat) (A002262 n)

end

end A216915.P17900676559916987359

/-!
# A216916: Triangle read by rows, T(n,k) for 0<=k<=n, generalizing A098742.

The programs for A216916, the canonical program `A216916.P5149407003449452479` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216916 has offset 0).

The definition of A216916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216916.P5149407003449452479

`T(n-1,k-1)+(col(n)+1)*T(n-1,k)+(col(n)+2)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216916

/-- `T(n-1,k-1)+(col(n)+1)*T(n-1,k)+(col(n)+2)*T(n-1,k+1)` -/
def P5149407003449452479.Spec : Prop :=
  ∀ n, (P5149407003449452479.a n : ℤ) = A216916 n

theorem P5149407003449452479.correct : P5149407003449452479.Spec := by
  intro n
  simp only [A216916]

end A216916

/-! ## A216916.P491319960044110575

`A167743(A059110(n))`
-/

namespace A216916.P491319960044110575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (A059110 n).toNat

end

end A216916.P491319960044110575

namespace A216916

/-- `A167743(A059110(n))` -/
def P491319960044110575.Spec : Prop :=
  ∀ n, P491319960044110575.a n = A216916 n

end A216916

/-! ## A216916.P18351550255442244583

`A116513(A112007(n))`
-/

namespace A216916.P18351550255442244583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116513 (A112007 n).toNat

end

end A216916.P18351550255442244583

namespace A216916

/-- `A116513(A112007(n))` -/
def P18351550255442244583.Spec : Prop :=
  ∀ n, P18351550255442244583.a n = A216916 n

end A216916

/-! ## A216916.P10448252151880191360

`A167743(A200659(n))`
-/

namespace A216916.P10448252151880191360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (A200659 n).toNat

end

end A216916.P10448252151880191360

namespace A216916

/-- `A167743(A200659(n))` -/
def P10448252151880191360.Spec : Prop :=
  ∀ n, P10448252151880191360.a n = A216916 n

end A216916

/-! ## A216916.P14341758938707615822

`A156261(A248727(n)+1)`
-/

namespace A216916.P14341758938707615822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A248727 n + 1).toNat

end

end A216916.P14341758938707615822

namespace A216916

/-- `A156261(A248727(n)+1)` -/
def P14341758938707615822.Spec : Prop :=
  ∀ n, P14341758938707615822.a n = A216916 n

end A216916

/-!
# A216917: Square array read by antidiagonals, T(N,n) = lcm{1<=j<=N, gcd(j,n)=1 | j} for N >= 0, n >= 1.

The programs for A216917, there is no canonical definition to state claims against.
-/

/-! ## A216917.P7749408308742296014

`A216919(n+1)/A216915(n+1)`
-/

namespace A216917.P7749408308742296014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216919 (n + 1) : ℚ) / (A216915 (n + 1) : ℚ)

end

end A216917.P7749408308742296014

/-! ## A216917.P11964025337587640043

`gcd(A003418(A003984(n)), A152656(n))`
-/

namespace A216917.P11964025337587640043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A003984 n).toNat) (A152656 n)

end

end A216917.P11964025337587640043

/-! ## A216917.P12371869086570071733

`gcd(A003418(A025581(n)), A216919(n+1))`
-/

namespace A216917.P12371869086570071733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A025581 n).toNat) (A216919 (n + 1))

end

end A216917.P12371869086570071733

/-! ## A216917.P17437392271175446090

`A019554(A152656(n))`
-/

namespace A216917.P17437392271175446090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A152656 n).toNat

end

end A216917.P17437392271175446090

/-! ## A216917.P353284923210099830

`A019554(A216919(n+1))`
-/

namespace A216917.P353284923210099830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A216919 (n + 1)).toNat

end

end A216917.P353284923210099830

/-!
# A216918: Odd numbers with at least 3 distinct prime factors.

The programs for A216918, the canonical program `A216918.P12965838950278040036` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216918 has offset 1).

The definition of A216918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216918.P12965838950278040036

`2*lt[2, A001221(2*n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A216918

/-- `2*lt[2, A001221(2*n+1)]+1` -/
def P12965838950278040036.Spec : Prop :=
  ∀ n, (P12965838950278040036.a n : ℤ) = A216918 (n + 1)

theorem P12965838950278040036.correct : P12965838950278040036.Spec := by
  intro n
  simp only [A216918, Nat.add_sub_cancel]

end A216918

/-! ## A216918.P10432418470263934723

`lt[gcd(n, n%2)+1, A001221(or(1, n))]`
-/

namespace A216918.P10432418470263934723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216918.P10432418470263934723

namespace A216918

/-- `lt[gcd(n, n%2)+1, A001221(or(1, n))]` -/
def P10432418470263934723.Spec : Prop :=
  ∀ n, (P10432418470263934723.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P5647244773566278716

`∩[2*n+1, A138604(n+1)]`
-/

namespace A216918.P5647244773566278716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P5647244773566278716

namespace A216918

/-- `∩[2*n+1, A138604(n+1)]` -/
def P5647244773566278716.Spec : Prop :=
  ∀ n, (P5647244773566278716.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P17098007913725288907

`filter[A138604(n+1), A039982(#)]`
-/

namespace A216918.P17098007913725288907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A216918.P17098007913725288907

namespace A216918

/-- `filter[A138604(n+1), A039982(#)]` -/
def P17098007913725288907.Spec : Prop :=
  ∀ n, P17098007913725288907.a n = A216918 (n + 1)

end A216918

/-! ## A216918.P4771024018837193926

`filter[A138604(n+1), A098725(#)]`
-/

namespace A216918.P4771024018837193926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A216918.P4771024018837193926

namespace A216918

/-- `filter[A138604(n+1), A098725(#)]` -/
def P4771024018837193926.Spec : Prop :=
  ∀ n, P4771024018837193926.a n = A216918 (n + 1)

end A216918

/-! ## A216918.P9964850022261881927

`filter[A138604(n+1), A166486(#)]`
-/

namespace A216918.P9964850022261881927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A216918.P9964850022261881927

namespace A216918

/-- `filter[A138604(n+1), A166486(#)]` -/
def P9964850022261881927.Spec : Prop :=
  ∀ n, P9964850022261881927.a n = A216918 (n + 1)

end A216918

/-! ## A216918.P5774303381022579430

`∩[A138604(n+1), A176847(n+1)]`
-/

namespace A216918.P5774303381022579430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P5774303381022579430

namespace A216918

/-- `∩[A138604(n+1), A176847(n+1)]` -/
def P5774303381022579430.Spec : Prop :=
  ∀ n, (P5774303381022579430.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P6642361352571607941

`∩[A138604(n+1), A333326(n+1)]`
-/

namespace A216918.P6642361352571607941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P6642361352571607941

namespace A216918

/-- `∩[A138604(n+1), A333326(n+1)]` -/
def P6642361352571607941.Spec : Prop :=
  ∀ n, (P6642361352571607941.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P2366886393089789493

`∩[A138604(n+1), A333855(n+1)]`
-/

namespace A216918.P2366886393089789493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P2366886393089789493

namespace A216918

/-- `∩[A138604(n+1), A333855(n+1)]` -/
def P2366886393089789493.Spec : Prop :=
  ∀ n, (P2366886393089789493.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P5522768049858712414

`∩[A138604(n+1), A226025(n+1)]`
-/

namespace A216918.P5522768049858712414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P5522768049858712414

namespace A216918

/-- `∩[A138604(n+1), A226025(n+1)]` -/
def P5522768049858712414.Spec : Prop :=
  ∀ n, (P5522768049858712414.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P2334843742705468706

`∩[A138604(n+1), A257521(n+1)]`
-/

namespace A216918.P2334843742705468706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P2334843742705468706

namespace A216918

/-- `∩[A138604(n+1), A257521(n+1)]` -/
def P2334843742705468706.Spec : Prop :=
  ∀ n, (P2334843742705468706.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P3434130782091157920

`∩[A138604(n+1), A327922(n+1)]`
-/

namespace A216918.P3434130782091157920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P3434130782091157920

namespace A216918

/-- `∩[A138604(n+1), A327922(n+1)]` -/
def P3434130782091157920.Spec : Prop :=
  ∀ n, (P3434130782091157920.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P9393899187990419459

`∩[A138604(n+1), A216848(n+1)]`
-/

namespace A216918.P9393899187990419459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P9393899187990419459

namespace A216918

/-- `∩[A138604(n+1), A216848(n+1)]` -/
def P9393899187990419459.Spec : Prop :=
  ∀ n, (P9393899187990419459.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P17782184478848142154

`∩[A138604(n+1), A255763(n+1)]`
-/

namespace A216918.P17782184478848142154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P17782184478848142154

namespace A216918

/-- `∩[A138604(n+1), A255763(n+1)]` -/
def P17782184478848142154.Spec : Prop :=
  ∀ n, (P17782184478848142154.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P17315344423513142911

`∩[A138604(n+1), A193071(n+1)]`
-/

namespace A216918.P17315344423513142911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P17315344423513142911

namespace A216918

/-- `∩[A138604(n+1), A193071(n+1)]` -/
def P17315344423513142911.Spec : Prop :=
  ∀ n, (P17315344423513142911.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P4570839925286703425

`∩[2*n+1, A000977(n+1)]`
-/

namespace A216918.P4570839925286703425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P4570839925286703425

namespace A216918

/-- `∩[2*n+1, A000977(n+1)]` -/
def P4570839925286703425.Spec : Prop :=
  ∀ n, (P4570839925286703425.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P12779544234708587581

`record[A000265(A000977(n+10))]`
-/

namespace A216918.P12779544234708587581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000977 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216918.P12779544234708587581

namespace A216918

/-- `record[A000265(A000977(n+10))]` -/
def P12779544234708587581.Spec : Prop :=
  ∀ n, P12779544234708587581.a n = A216918 (n + 1)

end A216918

/-! ## A216918.P12897260825222899565

`∩[A000977(n+1), A014076(n+1)]`
-/

namespace A216918.P12897260825222899565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P12897260825222899565

namespace A216918

/-- `∩[A000977(n+1), A014076(n+1)]` -/
def P12897260825222899565.Spec : Prop :=
  ∀ n, (P12897260825222899565.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P3206006777307543016

`∩[A000977(n+1), A061346(n+1)]`
-/

namespace A216918.P3206006777307543016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P3206006777307543016

namespace A216918

/-- `∩[A000977(n+1), A061346(n+1)]` -/
def P3206006777307543016.Spec : Prop :=
  ∀ n, (P3206006777307543016.a n : ℤ) = A216918 (n + 1)

end A216918

/-! ## A216918.P8039680514231978085

`∩[A000977(n+1), A071904(n+1)]`
-/

namespace A216918.P8039680514231978085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216918.P8039680514231978085

namespace A216918

/-- `∩[A000977(n+1), A071904(n+1)]` -/
def P8039680514231978085.Spec : Prop :=
  ∀ n, (P8039680514231978085.a n : ℤ) = A216918 (n + 1)

end A216918

/-!
# A216919: The Gauss factorial N_n! for N >= 0, n >= 1, square array read by antidiagonals.

The programs for A216919, there is no canonical definition to state claims against.
-/

/-! ## A216919.P2886666401749546285

`gcd(A003418(A025581(n)), A152656(n))*A216915(n+1)`
-/

namespace A216919.P2886666401749546285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A003418 (A025581 n).toNat) (A152656 n) : ℤ) * A216915 (n + 1)

end

end A216919.P2886666401749546285

/-! ## A216919.P2800919829275717188

`A216915(n+1)*A216917(n+1)`
-/

namespace A216919.P2800919829275717188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216915 (n + 1) * A216917 (n + 1)

end

end A216919.P2800919829275717188

/-! ## A216919.P4108302632638798482

`A049073(A152656(n))`
-/

namespace A216919.P4108302632638798482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049073 (A152656 n).toNat

end

end A216919.P4108302632638798482

/-! ## A216919.P13057178319440306095

`A160597(A152656(n)+1)`
-/

namespace A216919.P13057178319440306095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160597 (A152656 n + 1).toNat

end

end A216919.P13057178319440306095

/-! ## A216919.P15424496241194499488

`A019554(A152656(n))*A216915(n+1)`
-/

namespace A216919.P15424496241194499488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A152656 n).toNat * A216915 (n + 1)

end

end A216919.P15424496241194499488

/-!
# A216920: m such that the integer part of sigma(m)/phi(m) is not attained by any integer less than m.

The programs for A216920, there is no canonical definition to state claims against.
-/

/-! ## A216920.P8740715881575416008

`eq[1, char[A070033(n+1)]]`
-/

namespace A216920.P8740715881575416008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070033 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216920.P8740715881575416008

/-! ## A216920.P174861334509557918

`record[A070033(A070032(n+1))]`
-/

namespace A216920.P174861334509557918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070033 (A070032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216920.P174861334509557918

/-! ## A216920.P2052880884703972217

`record[A008480(A001748(n+1)-A335452(n+1))]`
-/

namespace A216920.P2052880884703972217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A001748 (n + 1) - A335452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216920.P2052880884703972217

/-! ## A216920.P793779844622290499

`record[A069735(record[A134233(n)])]`
-/

namespace A216920.P793779844622290499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216920.P793779844622290499

/-! ## A216920.P11173838061069910053

`record[A284559(A001859(n)+1)]`
-/

namespace A216920.P11173838061069910053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A001859 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216920.P11173838061069910053

/-!
# A216921: a(n) = 2*n+1 - gpf(denominator(B°(2*n))) where B°(n) are Zagier's modification of the Bernoulli numbers and gpf(n) is the greatest prime factor of n.

The programs for A216921, there is no canonical definition to state claims against.
-/

/-! ## A216921.P13777807889258914835

`A233583(A072195(2*n+1))%A181569(2*(n+1))`
-/

namespace A216921.P13777807889258914835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A072195 (2 * n + 1)).toNat) (A181569 (2 * (n + 1)))

end

end A216921.P13777807889258914835

/-! ## A216921.P7313397386905227787

`and(26, A000041(A084746(2*(n+2))))`
-/

namespace A216921.P7313397386905227787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 26 (A000041 (A084746 (2 * (n + 2))).toNat)

end

end A216921.P7313397386905227787

/-! ## A216921.P8093626800704605967

`A215929(A001222(2*n+3)^(Δ[floor((n-2)/3)²]+1))`
-/

namespace A216921.P8093626800704605967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 3⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215929 (SequenceMachineLib.roundAway ((A001222 (2 * n + 3) : ℚ) ^ (f1 (n + 1) - f1 n + 1 : ℤ))).toNat

end

end A216921.P8093626800704605967

/-! ## A216921.P9928301296411668545

`and(A004306(A279187(n+1)), A158682(n+1))`
-/

namespace A216921.P9928301296411668545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004306 (A279187 (n + 1)).toNat) (A158682 (n + 1))

end

end A216921.P9928301296411668545

/-! ## A216921.P10713669773656740592

`and(A082495(2*n+3), A209983(A099988(n+1)))`
-/

namespace A216921.P10713669773656740592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082495 (2 * n + 3)) (A209983 (A099988 (n + 1)).toNat)

end

end A216921.P10713669773656740592

/-!
# A216923: The denominators of Zagier's modification of the Bernoulli numbers.

The programs for A216923, there is no canonical definition to state claims against.
-/

/-! ## A216923.P7855145676326362423

`2*A222804(n+1)`
-/

namespace A216923.P7855145676326362423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222804 (n + 1)

end

end A216923.P7855145676326362423

/-! ## A216923.P5870147061903781858

`Δ[2*∑[A222804(n)]]`
-/

namespace A216923.P5870147061903781858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216923.P5870147061903781858

/-! ## A216923.P13653136707371692575

`A222804(n+1)+gcd(A000038(n), A222804(n+1))`
-/

namespace A216923.P13653136707371692575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 (n + 1) + (Int.gcd (A000038 n) (A222804 (n + 1)) : ℤ)

end

end A216923.P13653136707371692575

/-! ## A216923.P16506991818175864369

`A000007(n+1)+A222804(n+1)+A222804(n+1)`
-/

namespace A216923.P16506991818175864369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A222804 (n + 1) + A222804 (n + 1))

end

end A216923.P16506991818175864369

/-! ## A216923.P14252972201886609186

`A222804(lcm(n+1, A006530(n+1)))+A222804(n+1)`
-/

namespace A216923.P14252972201886609186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 (Int.lcm (n + 1 : ℤ) (A006530 (n + 1))) + A222804 (n + 1)

end

end A216923.P14252972201886609186

/-!
# A216924: Consecutive Pythagorean primes p = A002144(r) and q = A002144(r+1) such that q - p > log(p)^2. The number a(n) is the n-th value of p.

The programs for A216924, there is no canonical definition to state claims against.
-/

/-! ## A216924.P11750315309771601055

`A086523(A168132(n+1))`
-/

namespace A216924.P11750315309771601055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086523 (A168132 (n + 1)).toNat

end

end A216924.P11750315309771601055

/-!
# A216925: Lucas-Carmichael numbers with 3 prime factors.

The programs for A216925, there is no canonical definition to state claims against.
-/

/-! ## A216925.P14098974070696866069

`∩[A056729(n+1), A381736(n+1)]`
-/

namespace A216925.P14098974070696866069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216925.P14098974070696866069

/-! ## A216925.P16417987836436067048

`∩[A056729(n+1), A395899(n+1)]`
-/

namespace A216925.P16417987836436067048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216925.P16417987836436067048

/-! ## A216925.P10810246246310439620

`filter[A006972(n+1), A066829(#)]`
-/

namespace A216925.P10810246246310439620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A216925.P10810246246310439620

/-! ## A216925.P9039763187897661931

`filter[A006972(n+1), A354926(#)]`
-/

namespace A216925.P9039763187897661931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A216925.P9039763187897661931

/-! ## A216925.P6420291549588364676

`filter[A006972(n+1), A356173(#)]`
-/

namespace A216925.P6420291549588364676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A216925.P6420291549588364676

/-!
# A216926: Lucas-Carmichael numbers with 4 prime factors.

The programs for A216926, there is no canonical definition to state claims against.
-/

/-! ## A216926.P1372699670071698976

`filter[A006972(n+1), A356163(#)]`
-/

namespace A216926.P1372699670071698976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A216926.P1372699670071698976

/-! ## A216926.P739010548564807806

`filter[A006972(n+1), A358680(#)]`
-/

namespace A216926.P739010548564807806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A216926.P739010548564807806

/-! ## A216926.P8334047438200140242

`filter[A006972(n+1), A358750(#)]`
-/

namespace A216926.P8334047438200140242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358750 (f1 j).toNat = 1) n)

end

end A216926.P8334047438200140242

/-!
# A216931: Number of side-n hexagonal 0..2 arrays with values nondecreasing E, SW and SE.

The programs for A216931, there is no canonical definition to state claims against.
-/

/-! ## A216931.P5307667527928197394

`A216937(∑[n+2])`
-/

namespace A216931.P5307667527928197394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216931.P5307667527928197394

/-! ## A216931.P6104376116639033768

`A216937(A000096(n+1))+A070205(n+1)`
-/

namespace A216931.P6104376116639033768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A000096 (n + 1)).toNat + A070205 (n + 1)

end

end A216931.P6104376116639033768

/-! ## A216931.P7461535527111331324

`A057427(n+2)*A216937(A000096(n+1))`
-/

namespace A216931.P7461535527111331324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A216937 (A000096 (n + 1)).toNat

end

end A216931.P7461535527111331324

/-! ## A216931.P17131216139575722866

`A216937(A000096(n+1))+A000007(3*n+2)`
-/

namespace A216931.P17131216139575722866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A000096 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A216931.P17131216139575722866

/-! ## A216931.P3211655521367642119

`A000035(2*n+1)*A216937(A117142(2*(n+1)))`
-/

namespace A216931.P3211655521367642119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A216937 (A117142 (2 * (n + 1))).toNat

end

end A216931.P3211655521367642119

/-!
# A216932: Number of side-n hexagonal 0..3 arrays with values nondecreasing E, SW and SE.

The programs for A216932, there is no canonical definition to state claims against.
-/

/-! ## A216932.P10653776481528054423

`A216937(∑[n+3]+1)`
-/

namespace A216932.P10653776481528054423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216932.P10653776481528054423

/-! ## A216932.P14043377262447139229

`or(2, A216937(A034856(n+2)))-2`
-/

namespace A216932.P14043377262447139229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A216937 (A034856 (n + 2)).toNat) - 2

end

end A216932.P14043377262447139229

/-!
# A216933: Number of side-n hexagonal 0..4 arrays with values nondecreasing E, SW and SE.

The programs for A216933, there is no canonical definition to state claims against.
-/

/-! ## A216933.P11187372041403701813

`A216937(A141214(n+1))`
-/

namespace A216933.P11187372041403701813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A141214 (n + 1)).toNat

end

end A216933.P11187372041403701813

/-! ## A216933.P18361731181407954106

`A216937(A155212(n)+5)`
-/

namespace A216933.P18361731181407954106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A155212 n + 5).toNat

end

end A216933.P18361731181407954106

/-! ## A216933.P9476545077340701550

`A216937(eq[4, A166065(n)])`
-/

namespace A216933.P9476545077340701550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216933.P9476545077340701550

/-! ## A216933.P13271389647259475532

`A216937(Δ[A006416(n+2)])`
-/

namespace A216933.P13271389647259475532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (f1 (n + 1) - f1 n).toNat

end

end A216933.P13271389647259475532

/-! ## A216933.P5112669439151926732

`A216937(A052905(n+1)+2)`
-/

namespace A216933.P5112669439151926732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A052905 (n + 1) + 2).toNat

end

end A216933.P5112669439151926732

/-!
# A216934: Number of side-n hexagonal 0..5 arrays with values nondecreasing E, SW and SE.

The programs for A216934, there is no canonical definition to state claims against.
-/

/-! ## A216934.P2463371690040110124

`A216937(A046691(n+3))`
-/

namespace A216934.P2463371690040110124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A046691 (n + 3)).toNat

end

end A216934.P2463371690040110124

/-! ## A216934.P6109289855220696523

`A216937(eq[4, A049286(n+1)])`
-/

namespace A216934.P6109289855220696523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216934.P6109289855220696523

/-! ## A216934.P5660774620356351744

`A216937(Δ[A006416(n+3)]-1)`
-/

namespace A216934.P5660774620356351744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (f1 (n + 1) - f1 n - 1).toNat

end

end A216934.P5660774620356351744

/-!
# A216935: Number of side-n hexagonal 0..6 arrays with values nondecreasing E, SW and SE.

The programs for A216935, there is no canonical definition to state claims against.
-/

/-! ## A216935.P5318946203039546006

`A216937(eq[7, A049286(n+1)])`
-/

namespace A216935.P5318946203039546006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216935.P5318946203039546006

/-!
# A216938: Number of side-2 hexagonal 0..n arrays with values nondecreasing E, SW and SE.

The programs for A216938, the canonical program `A216938.P8885445714276099875` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216938 has offset 1).

The definition of A216938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216938.P8885445714276099875

`∑[∑[A033455(n+2)]+1]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A216938

/-- `∑[∑[A033455(n+2)]+1]+1` -/
def P8885445714276099875.Spec : Prop :=
  ∀ n, P8885445714276099875.a n = A216938 (n + 1)

theorem P8885445714276099875.correct : P8885445714276099875.Spec := by
  intro n
  simp only [A216938, Nat.add_sub_cancel]

end A216938

/-! ## A216938.P1034798054288211299

`A050486(n)+Δ[A053347(n)]`
-/

namespace A216938.P1034798054288211299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 n + (f1 (n + 1) - f1 n)

end

end A216938.P1034798054288211299

namespace A216938

/-- `A050486(n)+Δ[A053347(n)]` -/
def P1034798054288211299.Spec : Prop :=
  ∀ n, P1034798054288211299.a n = A216938 (n + 1)

end A216938

/-! ## A216938.P10524207651757948399

`A050486(n+1)+A050486(n)`
-/

namespace A216938.P10524207651757948399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 (n + 1) + A050486 n

end

end A216938.P10524207651757948399

namespace A216938

/-- `A050486(n+1)+A050486(n)` -/
def P10524207651757948399.Spec : Prop :=
  ∀ n, P10524207651757948399.a n = A216938 (n + 1)

end A216938

/-! ## A216938.P6106618017873501323

`Δ[A053347(n)]+∑[A040977(n)]`
-/

namespace A216938.P6106618017873501323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A216938.P6106618017873501323

namespace A216938

/-- `Δ[A053347(n)]+∑[A040977(n)]` -/
def P6106618017873501323.Spec : Prop :=
  ∀ n, P6106618017873501323.a n = A216938 (n + 1)

end A216938

/-! ## A216938.P13707600824586172000

`A101097(n+2)-A000580(n+7)-A000580(n+7)`
-/

namespace A216938.P13707600824586172000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101097 (n + 2) - A000580 (n + 7) - A000580 (n + 7)

end

end A216938.P13707600824586172000

namespace A216938

/-- `A101097(n+2)-A000580(n+7)-A000580(n+7)` -/
def P13707600824586172000.Spec : Prop :=
  ∀ n, P13707600824586172000.a n = A216938 (n + 1)

end A216938

/-! ## A216938.P577544341017184774

`∑[A259181(n+2)]+1`
-/

namespace A216938.P577544341017184774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216938.P577544341017184774

namespace A216938

/-- `∑[A259181(n+2)]+1` -/
def P577544341017184774.Spec : Prop :=
  ∀ n, P577544341017184774.a n = A216938 (n + 1)

end A216938

/-! ## A216938.P8583740945769101166

`A178440(2*(n+1))+A178440(2*n)`
-/

namespace A216938.P8583740945769101166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178440 (2 * (n + 1)) + A178440 (2 * n)

end

end A216938.P8583740945769101166

namespace A216938

/-- `A178440(2*(n+1))+A178440(2*n)` -/
def P8583740945769101166.Spec : Prop :=
  ∀ n, P8583740945769101166.a n = A216938 (n + 1)

end A216938

/-! ## A216938.P18075309892385506529

`A032094(2*(n+6))/16`
-/

namespace A216938.P18075309892385506529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032094 (2 * (n + 6)) : ℚ) / 16

end

end A216938.P18075309892385506529

namespace A216938

/-- `A032094(2*(n+6))/16` -/
def P18075309892385506529.Spec : Prop :=
  ∀ n, P18075309892385506529.a n = (A216938 (n + 1) : ℚ)

end A216938

/-! ## A216938.P502928460112262340

`∑[A129548(2*n+3)]+1`
-/

namespace A216938.P502928460112262340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129548 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216938.P502928460112262340

namespace A216938

/-- `∑[A129548(2*n+3)]+1` -/
def P502928460112262340.Spec : Prop :=
  ∀ n, P502928460112262340.a n = A216938 (n + 1)

end A216938

/-!
# A216939: Number of side-3 hexagonal 0..n arrays with values nondecreasing E, SW and SE.

The programs for A216939, there is no canonical definition to state claims against.
-/

/-! ## A216939.P10947738902186701510

`A216937(∑[n+2]+4)`
-/

namespace A216939.P10947738902186701510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216939.P10947738902186701510

/-! ## A216939.P9923362039579182588

`A216937(A167614(n+1))+A025469(n)`
-/

namespace A216939.P9923362039579182588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A167614 (n + 1)).toNat + A025469 n

end

end A216939.P9923362039579182588

/-! ## A216939.P1674164117998039668

`A216937(A167614(n+1))+A185284(n)`
-/

namespace A216939.P1674164117998039668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A167614 (n + 1)).toNat + A185284 n

end

end A216939.P1674164117998039668

/-! ## A216939.P7459882367863022861

`A216937(A167614(n+1))+A070205(n+1)`
-/

namespace A216939.P7459882367863022861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A167614 (n + 1)).toNat + A070205 (n + 1)

end

end A216939.P7459882367863022861

/-! ## A216939.P7047872385517503074

`A297232(n+1)+A216937(A167614(n+1))`
-/

namespace A216939.P7047872385517503074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (n + 1) + A216937 (A167614 (n + 1)).toNat

end

end A216939.P7047872385517503074

/-!
# A216940: Number of side-4 hexagonal 0..n arrays with values nondecreasing E, SW and SE.

The programs for A216940, there is no canonical definition to state claims against.
-/

/-! ## A216940.P16157401178132032161

`A216937(A141214(n)+7)`
-/

namespace A216940.P16157401178132032161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A141214 n + 7).toNat

end

end A216940.P16157401178132032161

/-! ## A216940.P7613483804108689691

`A216937(A052905(n)+9)`
-/

namespace A216940.P7613483804108689691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A052905 n + 9).toNat

end

end A216940.P7613483804108689691

/-! ## A216940.P10867650446190066382

`A216937(A055999(n)+10)`
-/

namespace A216940.P10867650446190066382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A055999 n + 10).toNat

end

end A216940.P10867650446190066382

/-! ## A216940.P14351063610241184324

`A216937(A167614(n+2)+1)`
-/

namespace A216940.P14351063610241184324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A167614 (n + 2) + 1).toNat

end

end A216940.P14351063610241184324

/-! ## A216940.P14511342837765341707

`A216937(eq[5, A131818(n+1)])`
-/

namespace A216940.P14511342837765341707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216940.P14511342837765341707

/-!
# A216941: Number of side-5 hexagonal 0..n arrays with values nondecreasing E, SW and SE.

The programs for A216941, there is no canonical definition to state claims against.
-/

/-! ## A216941.P15718323938420080780

`A216937(eq[6, A131818(n+1)])`
-/

namespace A216941.P15718323938420080780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216941.P15718323938420080780

/-!
# A216942: Number of side-6 hexagonal 0..n arrays with values nondecreasing E, SW and SE.

The programs for A216942, there is no canonical definition to state claims against.
-/

/-! ## A216942.P7951451712119331724

`A216937(eq[7, A131818(n+1)])`
-/

namespace A216942.P7951451712119331724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216942.P7951451712119331724

/-!
# A216943: 

The programs for A216943, there is no canonical definition to state claims against.
-/

/-! ## A216943.P14690782161907100153

`A216937(A027379(n+4)+10)`
-/

namespace A216943.P14690782161907100153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216937 (A027379 (n + 4) + 10).toNat

end

end A216943.P14690782161907100153

/-!
# A216944: The least odd prime p for which the n-th prime can be written as 3p + q - 3 for some odd prime q.

The programs for A216944, there is no canonical definition to state claims against.
-/

/-! ## A216944.P3658922737912453397

`A072219(p?[A093560(2*n+1)])`
-/

namespace A216944.P3658922737912453397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216944.P3658922737912453397

/-! ## A216944.P9463874350518353969

`p?[gcd(A178801(n), A186302(n+1))]`
-/

namespace A216944.P9463874350518353969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178801 n) (A186302 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216944.P9463874350518353969

/-! ## A216944.P11006074290260597500

`A088748(2*A003586(A051433(n)))`
-/

namespace A216944.P11006074290260597500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (2 * A003586 (A051433 n).toNat).toNat

end

end A216944.P11006074290260597500

/-!
# A216946: Number of standardized 4-connected corner polyominoes of inner site-perimeter n.

The programs for A216946, there is no canonical definition to state claims against.
-/

/-! ## A216946.P15434923527528052755

`A005350(A231444(n+1)+A231405(n))`
-/

namespace A216946.P15434923527528052755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A231444 (n + 1) + A231405 n).toNat

end

end A216946.P15434923527528052755

/-! ## A216946.P5518737679884387085

`A005350(A231444(n+1)+A231404(n+1))`
-/

namespace A216946.P5518737679884387085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A231444 (n + 1) + A231404 (n + 1)).toNat

end

end A216946.P5518737679884387085

/-!
# A216947: Number of 2-colored non-crossing set partitions of [n].

The programs for A216947, there is no canonical definition to state claims against.
-/

/-! ## A216947.P14924334534221816810

`A389602(2*n)`
-/

namespace A216947.P14924334534221816810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389602 (2 * n)

end

end A216947.P14924334534221816810

/-! ## A216947.P13291503559993569101

`A090365(n)-A006280(A349053(n))`
-/

namespace A216947.P13291503559993569101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090365 n - A006280 (A349053 n).toNat

end

end A216947.P13291503559993569101

/-! ## A216947.P5211912581946990840

`A090365(n)-A083914(A304185(n))`
-/

namespace A216947.P5211912581946990840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090365 n - A083914 (A304185 n).toNat

end

end A216947.P5211912581946990840

/-!
# A216948: Triangle read by rows: coefficients in expansion of number of r-colored set partitions of n as a polynomial in r.

The programs for A216948, there is no canonical definition to state claims against.
-/

/-! ## A216948.P12984502727604460863

`xor(1, A278163(A047909(n+1)))`
-/

namespace A216948.P12984502727604460863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A278163 (A047909 (n + 1)).toNat)

end

end A216948.P12984502727604460863

/-! ## A216948.P4351790587548910422

`A047969(n)-val(A108285(2*(n+2)), 12)`
-/

namespace A216948.P4351790587548910422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n - (SequenceMachineLib.valuation (A108285 (2 * (n + 2))).toNat 12 : ℤ)

end

end A216948.P4351790587548910422

/-! ## A216948.P3540382958653234715

`A047969(n)-A025465(A045822(n))`
-/

namespace A216948.P3540382958653234715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n - A025465 (A045822 n).toNat

end

end A216948.P3540382958653234715

/-! ## A216948.P10374573167820983768

`A047969(n)-A025465(A092808(n))`
-/

namespace A216948.P10374573167820983768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n - A025465 (A092808 n).toNat

end

end A216948.P10374573167820983768

/-! ## A216948.P6726573603628193026

`A047969(n)-A067169(A113340(n))`
-/

namespace A216948.P6726573603628193026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 n - A067169 ((A113340 n).toNat + 11)

end

end A216948.P6726573603628193026

/-!
# A216949: Expansion of g.f. (1-6*x+7*x^2)/(1-7*x+11*x^2-x^3).

The programs for A216949, the canonical program `A216949.P13033039551589158041` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216949 has offset 0).

The definition of A216949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+7x^2)/(1-7x+11x^2-x^3))` (program `A216949.P13033039551589158041`, by `A216949.P13033039551589158041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216949.P13033039551589158041

`ogf((1-6x+7x^2)/(1-7x+11x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216949

/-- `ogf((1-6x+7x^2)/(1-7x+11x^2-x^3))` -/
def P13033039551589158041.Spec : Prop :=
  ∀ n, P13033039551589158041.a n = A216949 n

theorem P13033039551589158041.correct : P13033039551589158041.Spec := by
  intro n
  simp only [A216949]

end A216949

/-! ## A216949.P18230438591423096068

`A052973(2*floor(n²/(n+1)))`
-/

namespace A216949.P18230438591423096068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (2 * ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋).toNat

end

end A216949.P18230438591423096068

namespace A216949

/-- `A052973(2*floor(n²/(n+1)))` -/
def P18230438591423096068.Spec : Prop :=
  ∀ n, P18230438591423096068.a n = A216949 n

end A216949

/-! ## A216949.P8173977703954785268

`or(1, A052973(A004275(n)))`
-/

namespace A216949.P8173977703954785268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A052973 (A004275 n).toNat)

end

end A216949.P8173977703954785268

namespace A216949

/-- `or(1, A052973(A004275(n)))` -/
def P8173977703954785268.Spec : Prop :=
  ∀ n, P8173977703954785268.a n = A216949 n

end A216949

/-! ## A216949.P2737898948111914754

`A063524(n)+A052973(A004275(n))`
-/

namespace A216949.P2737898948111914754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A052973 (A004275 n).toNat

end

end A216949.P2737898948111914754

namespace A216949

/-- `A063524(n)+A052973(A004275(n))` -/
def P2737898948111914754.Spec : Prop :=
  ∀ n, P2737898948111914754.a n = A216949 n

end A216949

/-! ## A216949.P4111764126793751177

`A052973(A004275(n))+val(A061214(n+1)+1, 5)`
-/

namespace A216949.P4111764126793751177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A004275 n).toNat + (SequenceMachineLib.valuation (A061214 (n + 1) + 1).toNat 5 : ℤ)

end

end A216949.P4111764126793751177

namespace A216949

/-- `A052973(A004275(n))+val(A061214(n+1)+1, 5)` -/
def P4111764126793751177.Spec : Prop :=
  ∀ n, P4111764126793751177.a n = A216949 n

end A216949

/-! ## A216949.P17472097343335104476

`A052973(A004275(n))+A000007(A007599(n))`
-/

namespace A216949.P17472097343335104476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A004275 n).toNat + A000007 (A007599 n).toNat

end

end A216949.P17472097343335104476

namespace A216949

/-- `A052973(A004275(n))+A000007(A007599(n))` -/
def P17472097343335104476.Spec : Prop :=
  ∀ n, P17472097343335104476.a n = A216949 n

end A216949

/-! ## A216949.P10252708258308324805

`A052973(A004275(n))+A000007(A008611(n))`
-/

namespace A216949.P10252708258308324805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A004275 n).toNat + A000007 (A008611 n).toNat

end

end A216949.P10252708258308324805

namespace A216949

/-- `A052973(A004275(n))+A000007(A008611(n))` -/
def P10252708258308324805.Spec : Prop :=
  ∀ n, P10252708258308324805.a n = A216949 n

end A216949

/-! ## A216949.P11498169516261006149

`A125691(2*n)+A307464(2*n)-A087640(2*n+1)`
-/

namespace A216949.P11498169516261006149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125691 (2 * n) + (A307464 (2 * n) - A087640 (2 * n + 1))

end

end A216949.P11498169516261006149

namespace A216949

/-- `A125691(2*n)+A307464(2*n)-A087640(2*n+1)` -/
def P11498169516261006149.Spec : Prop :=
  ∀ n, P11498169516261006149.a n = A216949 n

end A216949

/-! ## A216949.P15682840124176035932

`A052973(A004275(n))+A039966(A039986(n+1))`
-/

namespace A216949.P15682840124176035932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 (A004275 n).toNat + A039966 (A039986 (n + 1)).toNat

end

end A216949.P15682840124176035932

namespace A216949

/-- `A052973(A004275(n))+A039966(A039986(n+1))` -/
def P15682840124176035932.Spec : Prop :=
  ∀ n, P15682840124176035932.a n = A216949 n

end A216949

/-!
# A216951: Let S be a string of n 2's and 3's, with curling number k, which means S = XY^k where k is maximized; a(n) = number of S for which X must be taken to be the empty string.

The programs for A216951, there is no canonical definition to state claims against.
-/

/-! ## A216951.P15787096776271655033

`2*A216952(n+1)`
-/

namespace A216951.P15787096776271655033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216952 (n + 1)

end

end A216951.P15787096776271655033

/-! ## A216951.P9260763589672324640

`A216952(n+1)+A216952(-xor(n, -1))`
-/

namespace A216951.P9260763589672324640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216952 (n + 1) + A216952 (-Int.xor (n : ℤ) (-1)).toNat

end

end A216951.P9260763589672324640

/-! ## A216951.P17659891460446970183

`A216952(n+1)+A216952(Δ[n²]-n)`
-/

namespace A216951.P17659891460446970183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216952 (n + 1) + A216952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A216951.P17659891460446970183

/-! ## A216951.P4373764160552261529

`2*A000027(A216952(-xor(n, -1)))`
-/

namespace A216951.P4373764160552261529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000027 (A216952 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A216951.P4373764160552261529

/-! ## A216951.P10050564607449546023

`A014682(A216952(n+1)/(1/2)²)`
-/

namespace A216951.P10050564607449546023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A216952 (n + 1) : ℚ) / ((1 : ℚ) / 2) ^ 2)).toNat

end

end A216951.P10050564607449546023

/-!
# A216952: a(n) = A216951(n)/2.

The programs for A216952, there is no canonical definition to state claims against.
-/

/-! ## A216952.P2721295537906696325

`A216951(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216952.P2721295537906696325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216951 (n + 1) : ℚ) / 2

end

end A216952.P2721295537906696325

/-! ## A216952.P15605730451297534194

`A014682(A216951(n+1))`
-/

namespace A216952.P15605730451297534194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A216951 (n + 1)).toNat

end

end A216952.P15605730451297534194

/-! ## A216952.P14013996670956871548

`A273943(lcm(2, A216951(n+1)))`
-/

namespace A216952.P14013996670956871548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A216951 (n + 1)))

end

end A216952.P14013996670956871548

/-! ## A216952.P16598515529210137756

`A302042(root(A216951(n+1), 2)²)`
-/

namespace A216952.P16598515529210137756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (SequenceMachineLib.roundAway (((A216951 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A216952.P16598515529210137756

/-! ## A216952.P8641627396129275133

`A302042(A216951(n+1)+char[1])`
-/

namespace A216952.P8641627396129275133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A216951 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A216952.P8641627396129275133

/-!
# A216953: Triangle read by rows: T(n,k) (n>=1, 1<=k<=n) = number of binary sequences of length n with minimal period k.

The programs for A216953, the canonical program `A216953.P10903731901757870173` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216953 has offset 1).

The definition of A216953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216953.P1108504974267558387

`2*A216954(n+1)`
-/

namespace A216953.P1108504974267558387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216954 (n + 1)

end

end A216953.P1108504974267558387

namespace A216953

/-- `2*A216954(n+1)` -/
def P1108504974267558387.Spec : Prop :=
  ∀ n, P1108504974267558387.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P6727694363873001367

`4*A216954(Δ[n²]-n)/2`
-/

namespace A216953.P6727694363873001367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A216954 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2

end

end A216953.P6727694363873001367

namespace A216953

/-- `4*A216954(Δ[n²]-n)/2` -/
def P6727694363873001367.Spec : Prop :=
  ∀ n, P6727694363873001367.a n = (A216953 (n + 1) : ℚ)

end A216953

/-! ## A216953.P17664995694146690240

`A027375(A127093(n+1))`
-/

namespace A216953.P17664995694146690240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (A127093 (n + 1)).toNat

end

end A216953.P17664995694146690240

namespace A216953

/-- `A027375(A127093(n+1))` -/
def P17664995694146690240.Spec : Prop :=
  ∀ n, P17664995694146690240.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P7141421045122453054

`A027375(A176079(n+1)+1)`
-/

namespace A216953.P7141421045122453054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (A176079 (n + 1) + 1).toNat

end

end A216953.P7141421045122453054

namespace A216953

/-- `A027375(A176079(n+1)+1)` -/
def P7141421045122453054.Spec : Prop :=
  ∀ n, P7141421045122453054.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P14611688922305594363

`A002260(n+1)*A203398(n+1)`
-/

namespace A216953.P14611688922305594363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A203398 (n + 1)

end

end A216953.P14611688922305594363

namespace A216953

/-- `A002260(n+1)*A203398(n+1)` -/
def P14611688922305594363.Spec : Prop :=
  ∀ n, P14611688922305594363.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P6623005189922554998

`A050873(n+1)*A203398(n+1)`
-/

namespace A216953.P6623005189922554998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A203398 (n + 1)

end

end A216953.P6623005189922554998

namespace A216953

/-- `A050873(n+1)*A203398(n+1)` -/
def P6623005189922554998.Spec : Prop :=
  ∀ n, P6623005189922554998.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P14572010792118768410

`A123275(n+1)*A203398(n+1)`
-/

namespace A216953.P14572010792118768410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A203398 (n + 1)

end

end A216953.P14572010792118768410

namespace A216953

/-- `A123275(n+1)*A203398(n+1)` -/
def P14572010792118768410.Spec : Prop :=
  ∀ n, P14572010792118768410.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P2160968045756418121

`A127093(n+1)*A203398(n+1)`
-/

namespace A216953.P2160968045756418121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A203398 (n + 1)

end

end A216953.P2160968045756418121

namespace A216953

/-- `A127093(n+1)*A203398(n+1)` -/
def P2160968045756418121.Spec : Prop :=
  ∀ n, P2160968045756418121.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P17671094741733788743

`A203398(n+1)*A334230(n+1)`
-/

namespace A216953.P17671094741733788743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203398 (n + 1) * A334230 (n + 1)

end

end A216953.P17671094741733788743

namespace A216953

/-- `A203398(n+1)*A334230(n+1)` -/
def P17671094741733788743.Spec : Prop :=
  ∀ n, P17671094741733788743.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P698232981887955428

`A203398(n+1)*A357554(n+1)`
-/

namespace A216953.P698232981887955428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203398 (n + 1) * A357554 (n + 1)

end

end A216953.P698232981887955428

namespace A216953

/-- `A203398(n+1)*A357554(n+1)` -/
def P698232981887955428.Spec : Prop :=
  ∀ n, P698232981887955428.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P10903731901757870173

`2*∑{d}[A127093(n+1), A296302(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A216953

/-- `2*∑{d}[A127093(n+1), A296302(#)]` -/
def P10903731901757870173.Spec : Prop :=
  ∀ n, P10903731901757870173.a n = A216953 (n + 1)

theorem P10903731901757870173.correct : P10903731901757870173.Spec := by
  intro n
  simp only [A216953, Nat.add_sub_cancel]

end A216953

/-! ## A216953.P10146170354726106237

`A216954(n+1)+A216954(-xor(n, -1))`
-/

namespace A216953.P10146170354726106237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216954 (n + 1) + A216954 (-Int.xor (n : ℤ) (-1)).toNat

end

end A216953.P10146170354726106237

namespace A216953

/-- `A216954(n+1)+A216954(-xor(n, -1))` -/
def P10146170354726106237.Spec : Prop :=
  ∀ n, P10146170354726106237.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P18065327535522017104

`A216954(n+1)+A216954(Δ[n²]-n)`
-/

namespace A216953.P18065327535522017104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216954 (n + 1) + A216954 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A216953.P18065327535522017104

namespace A216953

/-- `A216954(n+1)+A216954(Δ[n²]-n)` -/
def P18065327535522017104.Spec : Prop :=
  ∀ n, P18065327535522017104.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P16958330208552460190

`A027375(A002260(n+1)*A051731(n+1))`
-/

namespace A216953.P16958330208552460190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (A002260 (n + 1) * A051731 (n + 1)).toNat

end

end A216953.P16958330208552460190

namespace A216953

/-- `A027375(A002260(n+1)*A051731(n+1))` -/
def P16958330208552460190.Spec : Prop :=
  ∀ n, P16958330208552460190.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P11424366509723108954

`A203398(n+1)*A307662(n+1)`
-/

namespace A216953.P11424366509723108954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203398 (n + 1) * A307662 (n + 1)

end

end A216953.P11424366509723108954

namespace A216953

/-- `A203398(n+1)*A307662(n+1)` -/
def P11424366509723108954.Spec : Prop :=
  ∀ n, P11424366509723108954.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P10117880105631041666

`A112544(n+1)*A203398(n+1)`
-/

namespace A216953.P10117880105631041666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A203398 (n + 1)

end

end A216953.P10117880105631041666

namespace A216953

/-- `A112544(n+1)*A203398(n+1)` -/
def P10117880105631041666.Spec : Prop :=
  ∀ n, P10117880105631041666.a n = A216953 (n + 1)

end A216953

/-! ## A216953.P15005006897631166462

`A005843(A216954(n+1))`
-/

namespace A216953.P15005006897631166462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A216954 (n + 1)).toNat

end

end A216953.P15005006897631166462

namespace A216953

/-- `A005843(A216954(n+1))` -/
def P15005006897631166462.Spec : Prop :=
  ∀ n, P15005006897631166462.a n = A216953 (n + 1)

end A216953

/-!
# A216954: Triangle read by rows: A216953/2.

The programs for A216954, the canonical program `A216954.P1085504788512225851` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216954 has offset 1).

The definition of A216954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216954.P12040134203700312124

`A216953(n+1)/2`
-/

namespace A216954.P12040134203700312124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / 2

end

end A216954.P12040134203700312124

namespace A216954

/-- `A216953(n+1)/2` -/
def P12040134203700312124.Spec : Prop :=
  ∀ n, P12040134203700312124.a n = (A216954 (n + 1) : ℚ)

theorem P12040134203700312124.correct : P12040134203700312124.Spec := by
  intro n
  simp only [A216954, Nat.add_sub_cancel, A216954.P12040134203700312124.a, A216954.P1085504788512225851.f1, A216954.P1085504788512225851.a, A127093, A127093.P1089623250187861217.a, A216953, A216953.P10903731901757870173.f1, A216953.P10903731901757870173.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, A034771, A034771.P14136708575511469544.f1, A034771.P14136708575511469544.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A034729, A034729.P14831145742905992677.a, A008683, A008683.P18254306604665478110.a, A055895, A055895.P2077075893561003355.f1, A055895.P2077075893561003355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A216954

/-! ## A216954.P17438206343348006111

`ceil(A216953(n-(char[1]-1))/2)`
-/

namespace A216954.P17438206343348006111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216953 ((n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1)).toNat : ℚ) / 2⌉

end

end A216954.P17438206343348006111

namespace A216954

/-- `ceil(A216953(n-(char[1]-1))/2)` -/
def P17438206343348006111.Spec : Prop :=
  ∀ n, P17438206343348006111.a n = A216954 (n + 1)

end A216954

/-! ## A216954.P8892310758612890904

`floor(A216953(ϕ²-(ϕ-n))/2)`
-/

namespace A216954.P8892310758612890904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216953 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 2⌋

end

end A216954.P8892310758612890904

namespace A216954

/-- `floor(A216953(ϕ²-(ϕ-n))/2)` -/
def P8892310758612890904.Spec : Prop :=
  ∀ n, P8892310758612890904.a n = A216954 (n + 1)

end A216954

/-! ## A216954.P17188970161152326951

`A027375(A127093(n+1))/2`
-/

namespace A216954.P17188970161152326951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 (A127093 (n + 1)).toNat : ℚ) / 2

end

end A216954.P17188970161152326951

namespace A216954

/-- `A027375(A127093(n+1))/2` -/
def P17188970161152326951.Spec : Prop :=
  ∀ n, P17188970161152326951.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P1085504788512225851

`∑{d}[A127093(n+1), A296302(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A216954

/-- `∑{d}[A127093(n+1), A296302(#)]` -/
def P1085504788512225851.Spec : Prop :=
  ∀ n, P1085504788512225851.a n = A216954 (n + 1)

theorem P1085504788512225851.correct : P1085504788512225851.Spec := by
  intro n
  simp only [A216954, Nat.add_sub_cancel]

end A216954

/-! ## A216954.P1915781561796490282

`A027375(A176079(n+1)+1)/2`
-/

namespace A216954.P1915781561796490282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 (A176079 (n + 1) + 1).toNat : ℚ) / 2

end

end A216954.P1915781561796490282

namespace A216954

/-- `A027375(A176079(n+1)+1)/2` -/
def P1915781561796490282.Spec : Prop :=
  ∀ n, P1915781561796490282.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P17419165376881209546

`A002260(n+1)/2*A203398(n+1)`
-/

namespace A216954.P17419165376881209546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2 * (A203398 (n + 1) : ℚ)

end

end A216954.P17419165376881209546

namespace A216954

/-- `A002260(n+1)/2*A203398(n+1)` -/
def P17419165376881209546.Spec : Prop :=
  ∀ n, P17419165376881209546.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P12509416817643684406

`A050873(n+1)/2*A203398(n+1)`
-/

namespace A216954.P12509416817643684406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) : ℚ) / 2 * (A203398 (n + 1) : ℚ)

end

end A216954.P12509416817643684406

namespace A216954

/-- `A050873(n+1)/2*A203398(n+1)` -/
def P12509416817643684406.Spec : Prop :=
  ∀ n, P12509416817643684406.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P18021705246778465582

`A123275(n+1)/2*A203398(n+1)`
-/

namespace A216954.P18021705246778465582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123275 (n + 1) : ℚ) / 2 * (A203398 (n + 1) : ℚ)

end

end A216954.P18021705246778465582

namespace A216954

/-- `A123275(n+1)/2*A203398(n+1)` -/
def P18021705246778465582.Spec : Prop :=
  ∀ n, P18021705246778465582.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P6154154119826303848

`A127093(n+1)/2*A203398(n+1)`
-/

namespace A216954.P6154154119826303848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127093 (n + 1) : ℚ) / 2 * (A203398 (n + 1) : ℚ)

end

end A216954.P6154154119826303848

namespace A216954

/-- `A127093(n+1)/2*A203398(n+1)` -/
def P6154154119826303848.Spec : Prop :=
  ∀ n, P6154154119826303848.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P11364361449849826055

`A203398(n+1)/2*A334230(n+1)`
-/

namespace A216954.P11364361449849826055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203398 (n + 1) : ℚ) / 2 * (A334230 (n + 1) : ℚ)

end

end A216954.P11364361449849826055

namespace A216954

/-- `A203398(n+1)/2*A334230(n+1)` -/
def P11364361449849826055.Spec : Prop :=
  ∀ n, P11364361449849826055.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P11027513981001409779

`A203398(n+1)/2*A357554(n+1)`
-/

namespace A216954.P11027513981001409779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203398 (n + 1) : ℚ) / 2 * (A357554 (n + 1) : ℚ)

end

end A216954.P11027513981001409779

namespace A216954

/-- `A203398(n+1)/2*A357554(n+1)` -/
def P11027513981001409779.Spec : Prop :=
  ∀ n, P11027513981001409779.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P1996254161056671497

`A027375(A002260(n+1)*A051731(n+1))/2`
-/

namespace A216954.P1996254161056671497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 (A002260 (n + 1) * A051731 (n + 1)).toNat : ℚ) / 2

end

end A216954.P1996254161056671497

namespace A216954

/-- `A027375(A002260(n+1)*A051731(n+1))/2` -/
def P1996254161056671497.Spec : Prop :=
  ∀ n, P1996254161056671497.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P1495794993805639433

`A203398(n+1)/2*A307662(n+1)`
-/

namespace A216954.P1495794993805639433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203398 (n + 1) : ℚ) / 2 * (A307662 (n + 1) : ℚ)

end

end A216954.P1495794993805639433

namespace A216954

/-- `A203398(n+1)/2*A307662(n+1)` -/
def P1495794993805639433.Spec : Prop :=
  ∀ n, P1495794993805639433.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P7677204587422581315

`A112544(n+1)/2*A203398(n+1)`
-/

namespace A216954.P7677204587422581315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112544 (n + 1) : ℚ) / 2 * (A203398 (n + 1) : ℚ)

end

end A216954.P7677204587422581315

namespace A216954

/-- `A112544(n+1)/2*A203398(n+1)` -/
def P7677204587422581315.Spec : Prop :=
  ∀ n, P7677204587422581315.a n = (A216954 (n + 1) : ℚ)

end A216954

/-! ## A216954.P10007354882433577512

`A014682(A216953(n+1))`
-/

namespace A216954.P10007354882433577512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A216953 (n + 1)).toNat

end

end A216954.P10007354882433577512

namespace A216954

/-- `A014682(A216953(n+1))` -/
def P10007354882433577512.Spec : Prop :=
  ∀ n, P10007354882433577512.a n = A216954 (n + 1)

end A216954

/-! ## A216954.P16029344771827916877

`A273943(lcm(2, A216953(n+1)))`
-/

namespace A216954.P16029344771827916877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A216953 (n + 1)))

end

end A216954.P16029344771827916877

namespace A216954

/-- `A273943(lcm(2, A216953(n+1)))` -/
def P16029344771827916877.Spec : Prop :=
  ∀ n, P16029344771827916877.a n = A216954 (n + 1)

end A216954

/-! ## A216954.P16290750809284634599

`A273943(A216953(n+1)+2)-1`
-/

namespace A216954.P16290750809284634599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A216953 (n + 1) + 2).toNat - 1

end

end A216954.P16290750809284634599

namespace A216954

/-- `A273943(A216953(n+1)+2)-1` -/
def P16290750809284634599.Spec : Prop :=
  ∀ n, P16290750809284634599.a n = A216954 (n + 1)

end A216954

/-! ## A216954.P15677284243568512576

`A338295(A216953(n+1)+1)-1`
-/

namespace A216954.P15677284243568512576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A216953 (n + 1) + 1).toNat - 1

end

end A216954.P15677284243568512576

namespace A216954

/-- `A338295(A216953(n+1)+1)-1` -/
def P15677284243568512576.Spec : Prop :=
  ∀ n, P15677284243568512576.a n = A216954 (n + 1)

end A216954

/-! ## A216954.P416518353878207973

`A001281(A216953(n+1)+2)-1`
-/

namespace A216954.P416518353878207973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A216953 (n + 1) + 2).toNat - 1

end

end A216954.P416518353878207973

namespace A216954

/-- `A001281(A216953(n+1)+2)-1` -/
def P416518353878207973.Spec : Prop :=
  ∀ n, P416518353878207973.a n = A216954 (n + 1)

end A216954

/-!
# A216955: Triangle read by rows: T(n,k) (n>=1, 1<=k<=n) = number of binary sequences of length n and curling number k.

The programs for A216955, there is no canonical definition to state claims against.
-/

/-! ## A216955.P4200854861362744438

`2*A216956(n+1)`
-/

namespace A216955.P4200854861362744438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216956 (n + 1)

end

end A216955.P4200854861362744438

/-! ## A216955.P17303783884496270497

`4*A216956(-xor(n, -1))/2`
-/

namespace A216955.P17303783884496270497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A216956 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A216955.P17303783884496270497

/-! ## A216955.P7089278560484088921

`4*A216956(Δ[n²]-n)/2`
-/

namespace A216955.P7089278560484088921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A216956 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A216955.P7089278560484088921

/-! ## A216955.P16634756535006365250

`A004277(A216956(n+1))`
-/

namespace A216955.P16634756535006365250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A216956 (n + 1)).toNat

end

end A216955.P16634756535006365250

/-! ## A216955.P53859251002415471

`A004275(A216956(n+1)+1)`
-/

namespace A216955.P53859251002415471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A216956 (n + 1) + 1).toNat

end

end A216955.P53859251002415471

/-! ## A216955.P15742806463186143715

`A028310(2*A216956(-xor(n, -1)))`
-/

namespace A216955.P15742806463186143715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A216956 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A216955.P15742806463186143715

/-! ## A216955.P7466558444245547466

`A004525(4*A216956(-xor(n, -1)))`
-/

namespace A216955.P7466558444245547466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (4 * A216956 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A216955.P7466558444245547466

/-! ## A216955.P922639632163207826

`A005843(A216956(n+1)/gcd(n, n+1))`
-/

namespace A216955.P922639632163207826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A216956 (n + 1) : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat

end

end A216955.P922639632163207826

/-! ## A216955.P12813439533736043695

`A216956(n+1)+A216956(-xor(n, -1))`
-/

namespace A216955.P12813439533736043695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216956 (n + 1) + A216956 (-Int.xor (n : ℤ) (-1)).toNat

end

end A216955.P12813439533736043695

/-!
# A216956: Triangle read by rows: A216955/2.

The programs for A216956, there is no canonical definition to state claims against.
-/

/-! ## A216956.P6963520630490658710

`A216955(n+1)/2`
-/

namespace A216956.P6963520630490658710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216955 (n + 1) : ℚ) / 2

end

end A216956.P6963520630490658710

/-! ## A216956.P5284327089455953677

`floor(A216955(-xor(n, -1))/2)`
-/

namespace A216956.P5284327089455953677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216955 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A216956.P5284327089455953677

/-! ## A216956.P6194476007435874232

`A001281(A216955(n+1))`
-/

namespace A216956.P6194476007435874232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A216955 (n + 1)).toNat

end

end A216956.P6194476007435874232

/-! ## A216956.P8981853873886150112

`A004524(A216955(n+1)+1)`
-/

namespace A216956.P8981853873886150112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A216955 (n + 1) + 1).toNat

end

end A216956.P8981853873886150112

/-! ## A216956.P1235470506803196483

`A004526(A216955(n+1)+1)`
-/

namespace A216956.P1235470506803196483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A216955 (n + 1) + 1).toNat

end

end A216956.P1235470506803196483

/-! ## A216956.P2249504906672776989

`A028242(A216955(n+1)+1)`
-/

namespace A216956.P2249504906672776989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A216955 (n + 1) + 1).toNat

end

end A216956.P2249504906672776989

/-! ## A216956.P7878497438457464409

`A123108(A216955(n+1)+1)`
-/

namespace A216956.P7878497438457464409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A216955 (n + 1) + 1).toNat

end

end A216956.P7878497438457464409

/-! ## A216956.P16331532652040829135

`A000463(A216955(n+1)-1)`
-/

namespace A216956.P16331532652040829135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A216955 (n + 1) - 1).toNat

end

end A216956.P16331532652040829135

/-! ## A216956.P13913138638216314601

`A001057(A216955(n+1)-1)`
-/

namespace A216956.P13913138638216314601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A216955 (n + 1) - 1).toNat

end

end A216956.P13913138638216314601

/-! ## A216956.P2068076113872602356

`A003602(A216955(n+1)-1)`
-/

namespace A216956.P2068076113872602356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A216955 (n + 1) - 1).toNat

end

end A216956.P2068076113872602356

/-!
# A216957: a(1)=2; for n > 1, a(n) = 2^(n-2) + (1/(2n-2)) * Sum_{ d divides n-1 } phi(2d)*2^((n-1)/d).

The programs for A216957, the canonical program `A216957.P2135053130525426770` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216957 has offset 1).

The definition of A216957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216957.P2135053130525426770

`a((n+1)%2)*A007148(n)` with `a(0)=2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A216957

/-- `a((n+1)%2)*A007148(n)` -/
def P2135053130525426770.Spec : Prop :=
  ∀ n, P2135053130525426770.a n = A216957 (n + 1)

theorem P2135053130525426770.correct : P2135053130525426770.Spec := by
  intro n
  simp only [A216957, Nat.add_sub_cancel]

end A216957

/-! ## A216957.P11312077508027878534

`A011782(n)+A000013(n)`
-/

namespace A216957.P11312077508027878534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A000013 n

end

end A216957.P11312077508027878534

namespace A216957

/-- `A011782(n)+A000013(n)` -/
def P11312077508027878534.Spec : Prop :=
  ∀ n, P11312077508027878534.a n = A216957 (n + 1)

end A216957

/-! ## A216957.P8440647936124197555

`A000013(n)+∑[A034008(n)]`
-/

namespace A216957.P8440647936124197555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216957.P8440647936124197555

namespace A216957

/-- `A000013(n)+∑[A034008(n)]` -/
def P8440647936124197555.Spec : Prop :=
  ∀ n, P8440647936124197555.a n = A216957 (n + 1)

end A216957

/-! ## A216957.P12188209683604667614

`A166444(n+1)+A000013(n)`
-/

namespace A216957.P12188209683604667614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + A000013 n

end

end A216957.P12188209683604667614

namespace A216957

/-- `A166444(n+1)+A000013(n)` -/
def P12188209683604667614.Spec : Prop :=
  ∀ n, P12188209683604667614.a n = A216957 (n + 1)

end A216957

/-! ## A216957.P16443391663937363051

`2*(A059078(n)+A000013(n))`
-/

namespace A216957.P16443391663937363051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059078 n + A000013 n)

end

end A216957.P16443391663937363051

namespace A216957

/-- `2*(A059078(n)+A000013(n))` -/
def P16443391663937363051.Spec : Prop :=
  ∀ n, P16443391663937363051.a n = A216957 (n + 1)

end A216957

/-! ## A216957.P13605548278719628550

`A000013(n)+A045678(n)+A045674(n)`
-/

namespace A216957.P13605548278719628550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n + (A045678 n + A045674 n)

end

end A216957.P13605548278719628550

namespace A216957

/-- `A000013(n)+A045678(n)+A045674(n)` -/
def P13605548278719628550.Spec : Prop :=
  ∀ n, P13605548278719628550.a n = A216957 (n + 1)

end A216957

/-! ## A216957.P1242508539920728240

`A011782(n)+A045677(n)+A045674(n)`
-/

namespace A216957.P1242508539920728240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A045677 n + A045674 n)

end

end A216957.P1242508539920728240

namespace A216957

/-- `A011782(n)+A045677(n)+A045674(n)` -/
def P1242508539920728240.Spec : Prop :=
  ∀ n, P1242508539920728240.a n = A216957 (n + 1)

end A216957

/-! ## A216957.P5233695300073580172

`A038207(∑[n]-n)+A000013(n)`
-/

namespace A216957.P5233695300073580172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (∑ j ∈ Finset.range (n + 1), f1 j - n) + A000013 n

end

end A216957.P5233695300073580172

namespace A216957

/-- `A038207(∑[n]-n)+A000013(n)` -/
def P5233695300073580172.Spec : Prop :=
  ∀ n, P5233695300073580172.a n = A216957 (n + 1)

end A216957

/-! ## A216957.P6441396690427974141

`A068009(∑[n]-n)+A000013(n)`
-/

namespace A216957.P6441396690427974141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (∑ j ∈ Finset.range (n + 1), f1 j - n) + A000013 n

end

end A216957.P6441396690427974141

namespace A216957

/-- `A068009(∑[n]-n)+A000013(n)` -/
def P6441396690427974141.Spec : Prop :=
  ∀ n, P6441396690427974141.a n = A216957 (n + 1)

end A216957

/-!
# A216958: Number of binary vectors v of length n with curling number 1 such that the concatenation v v with first term omitted also has curling number 1.

The programs for A216958, there is no canonical definition to state claims against.
-/

/-! ## A216958.P7414141233934137996

`2*A122536(2*(n+1)-1)-A122536(2*(n+1))`
-/

namespace A216958.P7414141233934137996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122536 (2 * (n + 1) - 1) - A122536 (2 * (n + 1))

end

end A216958.P7414141233934137996

/-! ## A216958.P18078831413700898589

`2*A216959(n+1)`
-/

namespace A216958.P18078831413700898589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216959 (n + 1)

end

end A216958.P18078831413700898589

/-! ## A216958.P1999424253622889729

`A122536(n+1)-A216960(n+1)`
-/

namespace A216958.P1999424253622889729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 (n + 1) - A216960 (n + 1)

end

end A216958.P1999424253622889729

/-! ## A216958.P9082424300085951011

`A216955(∑[n]+1)-A216960(n+1)`
-/

namespace A216958.P9082424300085951011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A216960 (n + 1)

end

end A216958.P9082424300085951011

/-! ## A216958.P11912160103361616299

`A122536(n+1)-2*A216961(n+1)`
-/

namespace A216958.P11912160103361616299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 (n + 1) - 2 * A216961 (n + 1)

end

end A216958.P11912160103361616299

/-! ## A216958.P1460022669088458243

`A121880(2*(n+1))-2*A121880(2*n+1)`
-/

namespace A216958.P1460022669088458243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121880 (2 * (n + 1)) - 2 * A121880 (2 * n + 1)

end

end A216958.P1460022669088458243

/-! ## A216958.P1180340235295973243

`abs(A216960(n+1)-(2^(n+1)-A121880(n+1)))`
-/

namespace A216958.P1180340235295973243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A216960 (n + 1) - ((2 ^ (n + 1) : ℤ) - A121880 (n + 1))|

end

end A216958.P1180340235295973243

/-!
# A216959: a(n) = A216958(n)/2.

The programs for A216959, there is no canonical definition to state claims against.
-/

/-! ## A216959.P16582067715468312262

`A216958(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216959.P16582067715468312262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216958 (n + 1) : ℚ) / 2

end

end A216959.P16582067715468312262

/-! ## A216959.P393382153583641928

`A122536(n+1)/2-A216961(n+1)`
-/

namespace A216959.P393382153583641928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (n + 1) : ℚ) / 2 - (A216961 (n + 1) : ℚ)

end

end A216959.P393382153583641928

/-! ## A216959.P6112920967163280375

`(A122536(n+1)-A216960(n+1))/2`
-/

namespace A216959.P6112920967163280375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (n + 1) - A216960 (n + 1) : ℚ) / 2

end

end A216959.P6112920967163280375

/-! ## A216959.P13586784636467518569

`A216955(∑[n]+1)/2-A216961(n+1)`
-/

namespace A216959.P13586784636467518569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2 - (A216961 (n + 1) : ℚ)

end

end A216959.P13586784636467518569

/-! ## A216959.P14411663198897955825

`(A216955(∑[n]+1)-A216960(n+1))/2`
-/

namespace A216959.P14411663198897955825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A216960 (n + 1) : ℚ) / 2

end

end A216959.P14411663198897955825

/-!
# A216960: a(n) = A122536(n) - A216958(n).

The programs for A216960, there is no canonical definition to state claims against.
-/

/-! ## A216960.P17008729937993814690

`A122536(n+1)-A216958(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216960.P17008729937993814690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 (n + 1) - A216958 (n + 1)

end

end A216960.P17008729937993814690

/-! ## A216960.P15709911584420914070

`2*A216961(n+1)`
-/

namespace A216960.P15709911584420914070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216961 (n + 1)

end

end A216960.P15709911584420914070

/-! ## A216960.P5151713645154059469

`lcm(2, 2*A216961(-xor(n, -1)))`
-/

namespace A216960.P5151713645154059469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * A216961 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A216960.P5151713645154059469

/-! ## A216960.P14851779976024609189

`A216955(∑[n]+1)-A216958(n+1)`
-/

namespace A216960.P14851779976024609189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A216958 (n + 1)

end

end A216960.P14851779976024609189

/-! ## A216960.P12734838916714163389

`A122536(n+1)-2*A216959(n+1)`
-/

namespace A216960.P12734838916714163389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 (n + 1) - 2 * A216959 (n + 1)

end

end A216960.P12734838916714163389

/-! ## A216960.P15424473835052405543

`A216961(n+1)+A216961(-xor(n, -1))`
-/

namespace A216960.P15424473835052405543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216961 (n + 1) + A216961 (-Int.xor (n : ℤ) (-1)).toNat

end

end A216960.P15424473835052405543

/-! ## A216960.P213857341819814464

`2*(A216961(-xor(n, -1))-a(A001221(n)))` with `a(0)=0`
-/

namespace A216960.P213857341819814464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (A216961 (-Int.xor (n : ℤ) (-1)).toNat - a (A001221 n).toNat)

end

end A216960.P213857341819814464

/-! ## A216960.P17712462456394991646

`A216961(A000027(n+1))+A216961(n+1)`
-/

namespace A216960.P17712462456394991646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216961 (A000027 (n + 1)).toNat + A216961 (n + 1)

end

end A216960.P17712462456394991646

/-! ## A216960.P12058364971601269913

`A122536(A000027(n+1))%A216958(n+1)`
-/

namespace A216960.P12058364971601269913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122536 (A000027 (n + 1)).toNat) (A216958 (n + 1))

end

end A216960.P12058364971601269913

/-!
# A216961: a(n) = A216960(n)/2.

The programs for A216961, there is no canonical definition to state claims against.
-/

/-! ## A216961.P6076149471436015574

`A216960(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216961.P6076149471436015574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216960 (n + 1) : ℚ) / 2

end

end A216961.P6076149471436015574

/-! ## A216961.P11455858269739704690

`2^A308778(n²)*A216960(n+1)`
-/

namespace A216961.P11455858269739704690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A308778 (n ^ 2) : ℤ) * (A216960 (n + 1) : ℚ)

end

end A216961.P11455858269739704690

/-! ## A216961.P8863989240617562110

`A122536(n+1)/2-A216959(n+1)`
-/

namespace A216961.P8863989240617562110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (n + 1) : ℚ) / 2 - (A216959 (n + 1) : ℚ)

end

end A216961.P8863989240617562110

/-! ## A216961.P18335834948116548635

`(A122536(n+1)-A216958(n+1))/2`
-/

namespace A216961.P18335834948116548635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (n + 1) - A216958 (n + 1) : ℚ) / 2

end

end A216961.P18335834948116548635

/-! ## A216961.P11148849477173515155

`(A216955(∑[n]+1)-A216958(n+1))/2`
-/

namespace A216961.P11148849477173515155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A216958 (n + 1) : ℚ) / 2

end

end A216961.P11148849477173515155

/-! ## A216961.P4224572438068225764

`(2^(n+1)-A121880(n+1)-A216958(n+1))/2`
-/

namespace A216961.P4224572438068225764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A121880 (n + 1) - A216958 (n + 1) : ℚ) / 2

end

end A216961.P4224572438068225764

/-! ## A216961.P736340290921670740

`2^A008683(A020483(n))*A216960(n+1)`
-/

namespace A216961.P736340290921670740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A216960 (n + 1) : ℚ)

end

end A216961.P736340290921670740

/-! ## A216961.P3061487181055463531

`A122536(A000027(n+1))%A216958(n+1)/2`
-/

namespace A216961.P3061487181055463531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A122536 (A000027 (n + 1)).toNat) (A216958 (n + 1)) : ℚ) / 2

end

end A216961.P3061487181055463531

/-! ## A216961.P11930986565145620761

`(A216955(A000217(n)+1)+2-4/2-A216958(n+1))/2`
-/

namespace A216961.P11930986565145620761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A216955 (A000217 n + 1).toNat : ℚ) + (2 - (4 : ℚ) / 2) - (A216958 (n + 1) : ℚ)) / 2

end

end A216961.P11930986565145620761

/-!
# A216962: Triangle read by rows, arising in enumeration of permutations by cyclic peaks.

The programs for A216962, there is no canonical definition to state claims against.
-/

/-! ## A216962.P18380352428580496167

`A217204(∑[2-char[n²]])`
-/

namespace A216962.P18380352428580496167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217204 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216962.P18380352428580496167

/-!
# A216964: Triangle read by rows, arising in enumeration of permutations by cyclic valleys, cycles and fixed points.

The programs for A216964, there is no canonical definition to state claims against.
-/

/-! ## A216964.P17921735391838631303

`A187250(A010352(n+1))`
-/

namespace A216964.P17921735391838631303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187250 (A010352 (n + 1)).toNat

end

end A216964.P17921735391838631303

/-! ## A216964.P1331727387504641761

`A187250(A010353(n+1))`
-/

namespace A216964.P1331727387504641761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187250 (A010353 (n + 1)).toNat

end

end A216964.P1331727387504641761

/-! ## A216964.P16323958747977629809

`A187250(A024652(n+1))`
-/

namespace A216964.P16323958747977629809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187250 (A024652 (n + 1)).toNat

end

end A216964.P16323958747977629809

/-! ## A216964.P18175305355863475747

`A187250(A024653(n+1))`
-/

namespace A216964.P18175305355863475747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187250 (A024653 (n + 1)).toNat

end

end A216964.P18175305355863475747

/-!
# A216965: Primes p such that nonprime(p) is odd, where nonprime(1) = 0.

The programs for A216965, the canonical program `A216965.P13115869739118727536` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216965 has offset 1).

The definition of A216965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216965.P13115869739118727536

`p?[A305801(2*(n+1))%A305800(2*(n+2))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A216965

/-- `p?[A305801(2*(n+1))%A305800(2*(n+2))]` -/
def P13115869739118727536.Spec : Prop :=
  ∀ n, P13115869739118727536.a n = A216965 (n + 1)

theorem P13115869739118727536.correct : P13115869739118727536.Spec := by
  intro n
  simp only [A216965, Nat.add_sub_cancel]

end A216965

/-! ## A216965.P4877514404814933557

`record[p?[A305800(2*n+1)]]`
-/

namespace A216965.P4877514404814933557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216965.P4877514404814933557

namespace A216965

/-- `record[p?[A305800(2*n+1)]]` -/
def P4877514404814933557.Spec : Prop :=
  ∀ n, P4877514404814933557.a n = A216965 (n + 1)

end A216965

/-! ## A216965.P7493171759132014055

`p?[comp[A305800(2*(n+2))]]`
-/

namespace A216965.P7493171759132014055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216965.P7493171759132014055

namespace A216965

/-- `p?[comp[A305800(2*(n+2))]]` -/
def P7493171759132014055.Spec : Prop :=
  ∀ n, (P7493171759132014055.a n : ℤ) = A216965 (n + 1)

end A216965

/-! ## A216965.P1595271000953370903

`p?[comp[A005097(n+2)]+n]`
-/

namespace A216965.P1595271000953370903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216965.P1595271000953370903

namespace A216965

/-- `p?[comp[A005097(n+2)]+n]` -/
def P1595271000953370903.Spec : Prop :=
  ∀ n, (P1595271000953370903.a n : ℤ) = A216965 (n + 1)

end A216965

/-! ## A216965.P10981072848073801784

`p?[(n+1)%A019426(A018252(n+1))+1]`
-/

namespace A216965.P10981072848073801784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A019426 (A018252 (n + 1)).toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P10981072848073801784

namespace A216965

/-- `p?[(n+1)%A019426(A018252(n+1))+1]` -/
def P10981072848073801784.Spec : Prop :=
  ∀ n, P10981072848073801784.a n = A216965 (n + 1)

end A216965

/-! ## A216965.P5505559677299389319

`p?[(n+1)*A018252(A000010(n+1))%2]`
-/

namespace A216965.P5505559677299389319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A018252 (A000010 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P5505559677299389319

namespace A216965

/-- `p?[(n+1)*A018252(A000010(n+1))%2]` -/
def P5505559677299389319.Spec : Prop :=
  ∀ n, P5505559677299389319.a n = A216965 (n + 1)

end A216965

/-! ## A216965.P6305743630540307716

`p?[(n+1)*A141468(n+1)%A000005(n+1)]`
-/

namespace A216965.P6305743630540307716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A141468 (n + 1)) (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P6305743630540307716

namespace A216965

/-- `p?[(n+1)*A141468(n+1)%A000005(n+1)]` -/
def P6305743630540307716.Spec : Prop :=
  ∀ n, P6305743630540307716.a n = A216965 (n + 1)

end A216965

/-! ## A216965.P2989354998365107084

`p?[A000720(A163976(2*n+1))]`
-/

namespace A216965.P2989354998365107084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A163976 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P2989354998365107084

namespace A216965

/-- `p?[A000720(A163976(2*n+1))]` -/
def P2989354998365107084.Spec : Prop :=
  ∀ n, P2989354998365107084.a n = A216965 (n + 1)

end A216965

/-! ## A216965.P2608116085596688790

`p?[A239968(2*n+1)+1]`
-/

namespace A216965.P2608116085596688790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P2608116085596688790

namespace A216965

/-- `p?[A239968(2*n+1)+1]` -/
def P2608116085596688790.Spec : Prop :=
  ∀ n, P2608116085596688790.a n = A216965 (n + 1)

end A216965

/-! ## A216965.P4000686365188778265

`p?[lt[A014963(2*n+1)-1, or(2, n)]+n]`
-/

namespace A216965.P4000686365188778265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216965.P4000686365188778265

namespace A216965

/-- `p?[lt[A014963(2*n+1)-1, or(2, n)]+n]` -/
def P4000686365188778265.Spec : Prop :=
  ∀ n, (P4000686365188778265.a n : ℤ) = A216965 (n + 1)

end A216965

/-! ## A216965.P3455334197000533054

`record[A014963(A066246(2*n+1)+2)]`
-/

namespace A216965.P3455334197000533054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066246 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216965.P3455334197000533054

namespace A216965

/-- `record[A014963(A066246(2*n+1)+2)]` -/
def P3455334197000533054.Spec : Prop :=
  ∀ n, P3455334197000533054.a n = A216965 (n + 1)

end A216965

/-!
# A216966: O.g.f.: 1/(1 - x/(1 - 2^3*x/(1 - 3^3*x/(1 - 4^3*x/(1 - 5^3*x/(1 - 6^3*x/(1 -...))))))), a continued fraction.

The programs for A216966, there is no canonical definition to state claims against.
-/

/-! ## A216966.P5674077250173551325

`A371996(∑[n]+n)`
-/

namespace A216966.P5674077250173551325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371996 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A216966.P5674077250173551325

/-! ## A216966.P12160473131689707801

`A290569(∑[n+4]+2)`
-/

namespace A216966.P12160473131689707801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290569 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A216966.P12160473131689707801

/-! ## A216966.P12407206251287253927

`A372001(A167614(n+2)+1)`
-/

namespace A216966.P12407206251287253927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372001 (A167614 (n + 2) + 1).toNat

end

end A216966.P12407206251287253927

/-!
# A216968: Numbers k such that 2*k^2 + 3 is prime.

The programs for A216968, there is no canonical definition to state claims against.
-/

/-! ## A216968.P10960521301570725378

`eq[2, A305973(n²+2)]`
-/

namespace A216968.P10960521301570725378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216968.P10960521301570725378

/-! ## A216968.P13449655967710538896

`eq[1, A156707(n²+1)²]`
-/

namespace A216968.P13449655967710538896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (n ^ 2 + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216968.P13449655967710538896

/-! ## A216968.P8884343040930677328

`eq[1, A001221(2*n²+3)]`
-/

namespace A216968.P8884343040930677328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216968.P8884343040930677328

/-! ## A216968.P10249316703623552592

`eq[1, A001222(2*n²+3)]`
-/

namespace A216968.P10249316703623552592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216968.P10249316703623552592

/-! ## A216968.P14503243103509826389

`eq[2, A000005(2*n²+3)]`
-/

namespace A216968.P14503243103509826389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216968.P14503243103509826389

/-!
# A216969: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n^2) * A(-x)^(n^2).

The programs for A216969, there is no canonical definition to state claims against.
-/

/-! ## A216969.P9780337866955141229

`A106432(or(∑{d}[n+1, #-1], A000110(n)))`
-/

namespace A216969.P9780337866955141229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (Int.lor (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)) (A000110 n)).toNat

end

end A216969.P9780337866955141229

/-! ## A216969.P7406447523659139391

`or(A026819(A012258(n)), A123575(n))`
-/

namespace A216969.P7406447523659139391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026819 (A012258 n).toNat) (A123575 n)

end

end A216969.P7406447523659139391

/-! ## A216969.P10522109215553942287

`or(A026819(A012258(n)), A134119(n))`
-/

namespace A216969.P10522109215553942287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026819 (A012258 n).toNat) (A134119 n)

end

end A216969.P10522109215553942287

/-! ## A216969.P1787638007193694519

`or(A026819(A012258(n)), A268443(n))`
-/

namespace A216969.P1787638007193694519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026819 (A012258 n).toNat) (A268443 n)

end

end A216969.P1787638007193694519

/-!
# A216970: Primes congruent to 1 mod 37.

The programs for A216970, the canonical program `A216970.P7935546219236162330` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216970 has offset 1).

The definition of A216970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216970.P7935546219236162330

`p?[37*n+1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216970

/-- `p?[37*n+1]` -/
def P7935546219236162330.Spec : Prop :=
  ∀ n, (P7935546219236162330.a n : ℤ) = A216970 (n + 1)

theorem P7935546219236162330.correct : P7935546219236162330.Spec := by
  intro n
  simp only [A216970, Nat.add_sub_cancel]

end A216970

/-! ## A216970.P11185345124743750541

`or(1, p?[xor(1, 37*n)])`
-/

namespace A216970.P11185345124743750541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (37 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216970.P11185345124743750541

namespace A216970

/-- `or(1, p?[xor(1, 37*n)])` -/
def P11185345124743750541.Spec : Prop :=
  ∀ n, (P11185345124743750541.a n : ℤ) = A216970 (n + 1)

end A216970

/-! ## A216970.P428317859994848128

`or(1, p?[or(1, 74*n)])`
-/

namespace A216970.P428317859994848128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (74 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216970.P428317859994848128

namespace A216970

/-- `or(1, p?[or(1, 74*n)])` -/
def P428317859994848128.Spec : Prop :=
  ∀ n, (P428317859994848128.a n : ℤ) = A216970 (n + 1)

end A216970

/-! ## A216970.P1262221470071471774

`p?[xor(1, 37*n)]%A031935(n)²`
-/

namespace A216970.P1262221470071471774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (37 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A031935 n ^ 2)

end

end A216970.P1262221470071471774

namespace A216970

/-- `p?[xor(1, 37*n)]%A031935(n)²` -/
def P1262221470071471774.Spec : Prop :=
  ∀ n, P1262221470071471774.a n = A216970 (n + 1)

end A216970

/-! ## A216970.P5773202064580903087

`A000265(p?[xor(1, 74*n)])`
-/

namespace A216970.P5773202064580903087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (74 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216970.P5773202064580903087

namespace A216970

/-- `A000265(p?[xor(1, 74*n)])` -/
def P5773202064580903087.Spec : Prop :=
  ∀ n, P5773202064580903087.a n = A216970 (n + 1)

end A216970

/-! ## A216970.P391396926638751895

`record[A006530(74*(abs(n-(2*n+1))+1)+1)]`
-/

namespace A216970.P391396926638751895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (74 * (|(n : ℤ) - (2 * n + 1 : ℤ)| + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216970.P391396926638751895

namespace A216970

/-- `record[A006530(74*(abs(n-(2*n+1))+1)+1)]` -/
def P391396926638751895.Spec : Prop :=
  ∀ n, P391396926638751895.a n = A216970 (n + 1)

end A216970

/-! ## A216970.P5154688529364310133

`A007913(p?[A044102(n)+1+n])`
-/

namespace A216970.P5154688529364310133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216970.P5154688529364310133

namespace A216970

/-- `A007913(p?[A044102(n)+1+n])` -/
def P5154688529364310133.Spec : Prop :=
  ∀ n, P5154688529364310133.a n = A216970 (n + 1)

end A216970

/-! ## A216970.P17331088681486254343

`gcd(3, A026150(n))*p?[xor(1, 37*n)]`
-/

namespace A216970.P17331088681486254343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (37 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A026150 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216970.P17331088681486254343

namespace A216970

/-- `gcd(3, A026150(n))*p?[xor(1, 37*n)]` -/
def P17331088681486254343.Spec : Prop :=
  ∀ n, (P17331088681486254343.a n : ℤ) = A216970 (n + 1)

end A216970

/-! ## A216970.P11602224907301776107

`A299149(p?[or(1, 74*n)])`
-/

namespace A216970.P11602224907301776107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (74 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216970.P11602224907301776107

namespace A216970

/-- `A299149(p?[or(1, 74*n)])` -/
def P11602224907301776107.Spec : Prop :=
  ∀ n, P11602224907301776107.a n = A216970 (n + 1)

end A216970

/-!
# A216972: a(4n+2) = 2, otherwise a(n) = n.

The programs for A216972, the canonical program `A216972.P5448795788296879651` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216972 has offset 0).

The definition of A216972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216972.P5448795788296879651

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=2, a(7)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216972

/-- `2*a(n-4)-a(n-8)` -/
def P5448795788296879651.Spec : Prop :=
  ∀ n, P5448795788296879651.a n = A216972 n

theorem P5448795788296879651.correct : P5448795788296879651.Spec := by
  intro n
  simp only [A216972]

end A216972

/-! ## A216972.P9623371328738490465

`gcd(n, and(4, n²))`
-/

namespace A216972.P9623371328738490465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.land 4 (n ^ 2))

end

end A216972.P9623371328738490465

namespace A216972

/-- `gcd(n, and(4, n²))` -/
def P9623371328738490465.Spec : Prop :=
  ∀ n, (P9623371328738490465.a n : ℤ) = A216972 n

end A216972

/-! ## A216972.P2563706876266565851

`and(n, n²%8-2)`
-/

namespace A216972.P2563706876266565851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((n ^ 2 % 8 : ℕ) : ℤ) - 2)

end

end A216972.P2563706876266565851

namespace A216972

/-- `and(n, n²%8-2)` -/
def P2563706876266565851.Spec : Prop :=
  ∀ n, P2563706876266565851.a n = A216972 n

end A216972

/-! ## A216972.P6940720175116384959

`and(n, and(4, n²)-1)`
-/

namespace A216972.P6940720175116384959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land 4 (n ^ 2) : ℤ) - 1)

end

end A216972.P6940720175116384959

namespace A216972

/-- `and(n, and(4, n²)-1)` -/
def P6940720175116384959.Spec : Prop :=
  ∀ n, P6940720175116384959.a n = A216972 n

end A216972

/-! ## A216972.P13173654798145292712

`xor(2, lcm(2, n+2))%(n+2)`
-/

namespace A216972.P13173654798145292712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lcm 2 (n + 2)) % (n + 2)

end

end A216972.P13173654798145292712

namespace A216972

/-- `xor(2, lcm(2, n+2))%(n+2)` -/
def P13173654798145292712.Spec : Prop :=
  ∀ n, (P13173654798145292712.a n : ℤ) = A216972 n

end A216972

/-! ## A216972.P15479257838846966494

`n%(n*(n+2)%4+4)`
-/

namespace A216972.P15479257838846966494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n * ((n + 2) % 4) + 4)

end

end A216972.P15479257838846966494

namespace A216972

/-- `n%(n*(n+2)%4+4)` -/
def P15479257838846966494.Spec : Prop :=
  ∀ n, (P15479257838846966494.a n : ℤ) = A216972 n

end A216972

/-! ## A216972.P18372950626640712125

`n+1-gcd(n-1, or(3, -n))`
-/

namespace A216972.P18372950626640712125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd ((n : ℤ) - 1) (Int.lor 3 (-(n : ℤ))) : ℤ)

end

end A216972.P18372950626640712125

namespace A216972

/-- `n+1-gcd(n-1, or(3, -n))` -/
def P18372950626640712125.Spec : Prop :=
  ∀ n, P18372950626640712125.a n = A216972 n

end A216972

/-! ## A216972.P14972444346034834475

`n-1-or(n-3, -and(3, n+2))`
-/

namespace A216972.P14972444346034834475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.lor ((n : ℤ) - 3) (-(Nat.land 3 (n + 2) : ℤ))

end

end A216972.P14972444346034834475

namespace A216972

/-- `n-1-or(n-3, -and(3, n+2))` -/
def P14972444346034834475.Spec : Prop :=
  ∀ n, P14972444346034834475.a n = A216972 n

end A216972

/-! ## A216972.P12918883948166520240

`n+2-gcd(2*n, ∑[and(2, n-1)])`
-/

namespace A216972.P12918883948166520240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Int.gcd (2 * n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A216972.P12918883948166520240

namespace A216972

/-- `n+2-gcd(2*n, ∑[and(2, n-1)])` -/
def P12918883948166520240.Spec : Prop :=
  ∀ n, P12918883948166520240.a n = A216972 n

end A216972

/-! ## A216972.P14162777926107066606

`n+1-gcd(1-a(n-1)%4, a(n-1))` with `a(0)=0`
-/

namespace A216972.P14162777926107066606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) - (Int.gcd (1 - Int.tmod (a (n - 1)) 4) (a (n - 1)) : ℤ)

end

end A216972.P14162777926107066606

namespace A216972

/-- `n+1-gcd(1-a(n-1)%4, a(n-1))` -/
def P14162777926107066606.Spec : Prop :=
  ∀ n, P14162777926107066606.a n = A216972 n

end A216972

/-! ## A216972.P7538660592480882002

`gcd(n, A116996(n)²)`
-/

namespace A216972.P7538660592480882002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A116996 n ^ 2)

end

end A216972.P7538660592480882002

namespace A216972

/-- `gcd(n, A116996(n)²)` -/
def P7538660592480882002.Spec : Prop :=
  ∀ n, (P7538660592480882002.a n : ℤ) = A216972 n

end A216972

/-! ## A216972.P8006889737336687240

`and(n, A070432(n)-2)`
-/

namespace A216972.P8006889737336687240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A070432 n - 2)

end

end A216972.P8006889737336687240

namespace A216972

/-- `and(n, A070432(n)-2)` -/
def P8006889737336687240.Spec : Prop :=
  ∀ n, P8006889737336687240.a n = A216972 n

end A216972

/-! ## A216972.P14672547320124702273

`and(n, A007877(n)²-2)`
-/

namespace A216972.P14672547320124702273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A007877 n ^ 2 - 2)

end

end A216972.P14672547320124702273

namespace A216972

/-- `and(n, A007877(n)²-2)` -/
def P14672547320124702273.Spec : Prop :=
  ∀ n, P14672547320124702273.a n = A216972 n

end A216972

/-! ## A216972.P4694789243527255581

`n/gcd(n², A129756(n))`
-/

namespace A216972.P4694789243527255581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n ^ 2 : ℤ) (A129756 n) : ℚ)

end

end A216972.P4694789243527255581

namespace A216972

/-- `n/gcd(n², A129756(n))` -/
def P4694789243527255581.Spec : Prop :=
  ∀ n, P4694789243527255581.a n = (A216972 n : ℚ)

end A216972

/-! ## A216972.P10777312986910671027

`(n-2)*A152822(n)+2`
-/

namespace A216972.P10777312986910671027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A152822 n + 2

end

end A216972.P10777312986910671027

namespace A216972

/-- `(n-2)*A152822(n)+2` -/
def P10777312986910671027.Spec : Prop :=
  ∀ n, P10777312986910671027.a n = A216972 n

end A216972

/-! ## A216972.P12123916248875272559

`Δ[n²]-A222258(n+1)`
-/

namespace A216972.P12123916248875272559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A222258 (n + 1)

end

end A216972.P12123916248875272559

namespace A216972

/-- `Δ[n²]-A222258(n+1)` -/
def P12123916248875272559.Spec : Prop :=
  ∀ n, P12123916248875272559.a n = A216972 n

end A216972

/-! ## A216972.P6767285429281988648

`(n-2)*A166486(n+2)+2`
-/

namespace A216972.P6767285429281988648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A166486 (n + 2) + 2

end

end A216972.P6767285429281988648

namespace A216972

/-- `(n-2)*A166486(n+2)+2` -/
def P6767285429281988648.Spec : Prop :=
  ∀ n, P6767285429281988648.a n = A216972 n

end A216972

/-! ## A216972.P9592351667208766861

`n-(n-2)*A121262(n+2)`
-/

namespace A216972.P9592351667208766861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n : ℤ) - 2) * A121262 (n + 2)

end

end A216972.P9592351667208766861

namespace A216972

/-- `n-(n-2)*A121262(n+2)` -/
def P9592351667208766861.Spec : Prop :=
  ∀ n, P9592351667208766861.a n = A216972 n

end A216972

/-! ## A216972.P8022809673191896557

`n/A093178(A029578(n))`
-/

namespace A216972.P8022809673191896557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093178 (A029578 n).toNat : ℚ)

end

end A216972.P8022809673191896557

namespace A216972

/-- `n/A093178(A029578(n))` -/
def P8022809673191896557.Spec : Prop :=
  ∀ n, P8022809673191896557.a n = (A216972 n : ℚ)

end A216972

/-! ## A216972.P13523385703160037787

`n/A093178(A188167(n))`
-/

namespace A216972.P13523385703160037787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093178 (A188167 n).toNat : ℚ)

end

end A216972.P13523385703160037787

namespace A216972

/-- `n/A093178(A188167(n))` -/
def P13523385703160037787.Spec : Prop :=
  ∀ n, P13523385703160037787.a n = (A216972 n : ℚ)

end A216972

/-!
# A216973: Exponential Riordan array [x*exp(x),x].

The programs for A216973, the canonical program `A216973.P15863105142889415858` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216973 has offset 0).

The definition of A216973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216973.P15863105142889415858

`(row(n)-col(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216973

/-- `(row(n)-col(n))*C(row(n), col(n))` -/
def P15863105142889415858.Spec : Prop :=
  ∀ n, P15863105142889415858.a n = A216973 n

theorem P15863105142889415858.correct : P15863105142889415858.Spec := by
  intro n
  simp only [A216973]

end A216973

/-! ## A216973.P7978197080091337416

`(col(n)+1)*C(row(n), col(n)+1)`
-/

namespace A216973.P7978197080091337416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1)

end

end A216973.P7978197080091337416

namespace A216973

/-- `(col(n)+1)*C(row(n), col(n)+1)` -/
def P7978197080091337416.Spec : Prop :=
  ∀ n, (P7978197080091337416.a n : ℤ) = A216973 n

end A216973

/-! ## A216973.P15758970261625083887

`T(n-1,k)+T(n-1,k-1)+C(row(n)-1, col(n))` with `a(0)=0`
-/

namespace A216973.P15758970261625083887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + Nat.choose ((SequenceMachineLib.triRow n : ℤ) - 1).toNat (SequenceMachineLib.triCol n)

end

end A216973.P15758970261625083887

namespace A216973

/-- `T(n-1,k)+T(n-1,k-1)+C(row(n)-1, col(n))` -/
def P15758970261625083887.Spec : Prop :=
  ∀ n, (P15758970261625083887.a n : ℤ) = A216973 n

end A216973

/-! ## A216973.P15082548232438197860

`A134400(n)-a(n-1)` with `a(0)=0`
-/

namespace A216973.P15082548232438197860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A134400 n - a (n - 1)

end

end A216973.P15082548232438197860

namespace A216973

/-- `A134400(n)-a(n-1)` -/
def P15082548232438197860.Spec : Prop :=
  ∀ n, P15082548232438197860.a n = A216973 n

end A216973

/-! ## A216973.P4841783786005144843

`∑[char[∑[n+1]]]*A071919(n)`
-/

namespace A216973.P4841783786005144843
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071919 n

end

end A216973.P4841783786005144843

namespace A216973

/-- `∑[char[∑[n+1]]]*A071919(n)` -/
def P4841783786005144843.Spec : Prop :=
  ∀ n, P4841783786005144843.a n = A216973 n

end A216973

/-! ## A216973.P8982665220765086041

`∑[char[∑[n+1]]]*A097805(n+1)`
-/

namespace A216973.P8982665220765086041
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A097805 (n + 1)

end

end A216973.P8982665220765086041

namespace A216973

/-- `∑[char[∑[n+1]]]*A097805(n+1)` -/
def P8982665220765086041.Spec : Prop :=
  ∀ n, P8982665220765086041.a n = A216973 n

end A216973

/-! ## A216973.P5034206745250806029

`abs((comp[C(n, 2)-2]-n)*A110555(n))`
-/

namespace A216973.P5034206745250806029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * A110555 n|

end

end A216973.P5034206745250806029

namespace A216973

/-- `abs((comp[C(n, 2)-2]-n)*A110555(n))` -/
def P5034206745250806029.Spec : Prop :=
  ∀ n, P5034206745250806029.a n = A216973 n

end A216973

/-! ## A216973.P13254344595289745958

`(C(comp[∑[n]]-n, 2)-(n+1))*A007318(n)`
-/

namespace A216973.P13254344595289745958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A007318 n

end

end A216973.P13254344595289745958

namespace A216973

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A007318(n)` -/
def P13254344595289745958.Spec : Prop :=
  ∀ n, P13254344595289745958.a n = A216973 n

end A216973

/-! ## A216973.P16236856660000399542

`A144389(n)+A130595(n)`
-/

namespace A216973.P16236856660000399542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144389 n + A130595 n

end

end A216973.P16236856660000399542

namespace A216973

/-- `A144389(n)+A130595(n)` -/
def P16236856660000399542.Spec : Prop :=
  ∀ n, P16236856660000399542.a n = A216973 n

end A216973

/-! ## A216973.P16379495140591807824

`A007318(n)-A055137(n)`
-/

namespace A216973.P16379495140591807824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A055137 n

end

end A216973.P16379495140591807824

namespace A216973

/-- `A007318(n)-A055137(n)` -/
def P16379495140591807824.Spec : Prop :=
  ∀ n, P16379495140591807824.a n = A216973 n

theorem P16379495140591807824.correct : P16379495140591807824.Spec := by
  intro n
  simp only [A216973, Nat.add_sub_cancel, A216973.P16379495140591807824.a, A216973.P15863105142889415858.a, A007318, A007318.P11755526479805562006.a, A055137, A055137.P4947269043486433817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A216973

/-! ## A216973.P9118934659011868777

`A125100(n)-A094436(n)`
-/

namespace A216973.P9118934659011868777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125100 n - A094436 n

end

end A216973.P9118934659011868777

namespace A216973

/-- `A125100(n)-A094436(n)` -/
def P9118934659011868777.Spec : Prop :=
  ∀ n, P9118934659011868777.a n = A216973 n

theorem P9118934659011868777.correct : P9118934659011868777.Spec := by
  intro n
  simp only [A216973, Nat.add_sub_cancel, A216973.P9118934659011868777.a, A216973.P15863105142889415858.a, A094436, A094436.P13866294605559680859.a, A125100, A125100.P15740062212136949616.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A216973

/-! ## A216973.P2349832927474202556

`A007318(n)*A025581(n)`
-/

namespace A216973.P2349832927474202556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A025581 n

end

end A216973.P2349832927474202556

namespace A216973

/-- `A007318(n)*A025581(n)` -/
def P2349832927474202556.Spec : Prop :=
  ∀ n, P2349832927474202556.a n = A216973 n

theorem P2349832927474202556.correct : P2349832927474202556.Spec := by
  intro n
  simp only [A216973, Nat.add_sub_cancel, A216973.P2349832927474202556.a, A216973.P15863105142889415858.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A216973

/-! ## A216973.P7467781213720194388

`A025581(n)*A255935(n)`
-/

namespace A216973.P7467781213720194388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A255935 n

end

end A216973.P7467781213720194388

namespace A216973

/-- `A025581(n)*A255935(n)` -/
def P7467781213720194388.Spec : Prop :=
  ∀ n, P7467781213720194388.a n = A216973 n

end A216973

/-! ## A216973.P4043425099800241105

`A134083(n)%A103283(n)`
-/

namespace A216973.P4043425099800241105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134083 n) (A103283 n)

end

end A216973.P4043425099800241105

namespace A216973

/-- `A134083(n)%A103283(n)` -/
def P4043425099800241105.Spec : Prop :=
  ∀ n, P4043425099800241105.a n = A216973 n

end A216973

/-! ## A216973.P2935466135528259540

`abs(A025581(n)*A108086(n))`
-/

namespace A216973.P2935466135528259540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025581 n * A108086 n|

end

end A216973.P2935466135528259540

namespace A216973

/-- `abs(A025581(n)*A108086(n))` -/
def P2935466135528259540.Spec : Prop :=
  ∀ n, P2935466135528259540.a n = A216973 n

end A216973

/-! ## A216973.P4800036682169985557

`abs(A025581(n)*A130595(n))`
-/

namespace A216973.P4800036682169985557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025581 n * A130595 n|

end

end A216973.P4800036682169985557

namespace A216973

/-- `abs(A025581(n)*A130595(n))` -/
def P4800036682169985557.Spec : Prop :=
  ∀ n, P4800036682169985557.a n = A216973 n

end A216973

/-! ## A216973.P15435437591648757737

`sqrt(A008459(n))*A025581(n)`
-/

namespace A216973.P15435437591648757737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A025581 n : ℝ)

end

end A216973.P15435437591648757737

namespace A216973

/-- `sqrt(A008459(n))*A025581(n)` -/
def P15435437591648757737.Spec : Prop :=
  ∀ n, P15435437591648757737.a n = (A216973 n : ℝ)

end A216973

/-! ## A216973.P13917475614469501738

`log2(A130321(n))*A007318(n)`
-/

namespace A216973.P13917475614469501738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) * (A007318 n : ℝ)

end

end A216973.P13917475614469501738

namespace A216973

/-- `log2(A130321(n))*A007318(n)` -/
def P13917475614469501738.Spec : Prop :=
  ∀ n, P13917475614469501738.a n = (A216973 n : ℝ)

end A216973

/-! ## A216973.P4694403400115666832

`Δ[A102363(n)]*A025581(n)`
-/

namespace A216973.P4694403400115666832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A025581 n

end

end A216973.P4694403400115666832

namespace A216973

/-- `Δ[A102363(n)]*A025581(n)` -/
def P4694403400115666832.Spec : Prop :=
  ∀ n, P4694403400115666832.a n = A216973 n

end A216973

/-! ## A216973.P5938097367268107062

`A093375(n+1)-A007318(n)`
-/

namespace A216973.P5938097367268107062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - A007318 n

end

end A216973.P5938097367268107062

namespace A216973

/-- `A093375(n+1)-A007318(n)` -/
def P5938097367268107062.Spec : Prop :=
  ∀ n, P5938097367268107062.a n = A216973 n

end A216973

/-!
# A216974: Numbers k such that k^4+2 is prime.

The programs for A216974, there is no canonical definition to state claims against.
-/

/-! ## A216974.P3332827122360078438

`sqrt(sqrt(A182343(n+1)-2))`
-/

namespace A216974.P3332827122360078438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A182343 (n + 1) - 2 : ℝ))

end

end A216974.P3332827122360078438

/-! ## A216974.P3249844214781121727

`sqrt(∩[A067201(n+1), n²])`
-/

namespace A216974.P3249844214781121727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A216974.P3249844214781121727

/-! ## A216974.P4886215063140797706

`sqrt(∩[A000290(n), A067201(n+1)])`
-/

namespace A216974.P4886215063140797706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A216974.P4886215063140797706

/-! ## A216974.P8637216244766224760

`lt[0, A355449(n²)]`
-/

namespace A216974.P8637216244766224760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216974.P8637216244766224760

/-! ## A216974.P14832990324254717682

`eq[1, A355449(n*or(1, n))]`
-/

namespace A216974.P14832990324254717682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (n * Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216974.P14832990324254717682

/-!
# A216975: Triangle read by rows in which row n gives the lexicographically earliest minimal sum denominators among all possible n-term Egyptian fractions with unit sum.

The programs for A216975, there is no canonical definition to state claims against.
-/

/-! ## A216975.P5225375360739031678

`A216993(n+1)+A077655(A007837(n))`
-/

namespace A216975.P5225375360739031678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216993 (n + 1) + A077655 (A007837 n).toNat

end

end A216975.P5225375360739031678

/-! ## A216975.P17536488620291757086

`A216993(n+1)+A101637(A216969(n))`
-/

namespace A216975.P17536488620291757086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216993 (n + 1) + A101637 (A216969 n).toNat

end

end A216975.P17536488620291757086

/-! ## A216975.P10915643134037637076

`A216993(n+1)+A083895(A036887(n+1))`
-/

namespace A216975.P10915643134037637076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216993 (n + 1) + A083895 (A036887 (n + 1)).toNat

end

end A216975.P10915643134037637076

/-! ## A216975.P4270160384479367182

`A216993(n+1)+A102683(A036890(n+1))`
-/

namespace A216975.P4270160384479367182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216993 (n + 1) + A102683 (A036890 (n + 1)).toNat

end

end A216975.P4270160384479367182

/-!
# A216976: Numbers k such that k^5+2 is prime.

The programs for A216976, there is no canonical definition to state claims against.
-/

/-! ## A216976.P6335713445830642998

`lt[A053787(round(sqrt(n²+1))), 3]`
-/

namespace A216976.P6335713445830642998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216976.P6335713445830642998

/-!
# A216977: Primes of the form k^5+2.

The programs for A216977, there is no canonical definition to state claims against.
-/

/-! ## A216977.P12453455510131234663

`A216976(n+1)^5+2`
-/

namespace A216977.P12453455510131234663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216976 (n + 1) ^ 5 + 2

end

end A216977.P12453455510131234663

/-! ## A216977.P17436846572749125519

`A000584(A216976(n+1))+2`
-/

namespace A216977.P17436846572749125519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A216976 (n + 1)).toNat + 2

end

end A216977.P17436846572749125519

/-!
# A216978: Numbers k such that k^6+2 is prime.

The programs for A216978, there is no canonical definition to state claims against.
-/

/-! ## A216978.P11345404979354086003

`lt[A209320(n+1), A000120(A158851(n+1))]`
-/

namespace A216978.P11345404979354086003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A158851 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216978.P11345404979354086003

/-!
# A216979: Primes of the form k^6+2.

The programs for A216979, there is no canonical definition to state claims against.
-/

/-! ## A216979.P5605236995716487214

`A216978(n+1)^6+2`
-/

namespace A216979.P5605236995716487214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216978 (n + 1) ^ 6 + 2

end

end A216979.P5605236995716487214

/-! ## A216979.P15249730855854049163

`A001014(A216978(n+1))+2`
-/

namespace A216979.P15249730855854049163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A216978 (n + 1)).toNat + 2

end

end A216979.P15249730855854049163

/-!
# A216981: Primes of the form k^7+2.

The programs for A216981, there is no canonical definition to state claims against.
-/

/-! ## A216981.P5574723729821447821

`A216980(n+1)^7+2`
-/

namespace A216981.P5574723729821447821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216980 (n + 1) ^ 7 + 2

end

end A216981.P5574723729821447821

/-! ## A216981.P9296021555179014252

`A001015(A216980(n+1))+2`
-/

namespace A216981.P9296021555179014252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A216980 (n + 1)).toNat + 2

end

end A216981.P9296021555179014252

/-!
# A216982: Anti-Chowla's function: sum of anti-divisors of n except the largest.

The programs for A216982, there is no canonical definition to state claims against.
-/

/-! ## A216982.P10003713742297109672

`A213675(n+1)-A048050(n+1)`
-/

namespace A216982.P10003713742297109672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - A048050 (n + 1)

end

end A216982.P10003713742297109672

/-! ## A216982.P1073648551329051959

`A213675(n+1)-(A000203(n+1)-(n+2))%(n+1)²`
-/

namespace A216982.P1073648551329051959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - Int.tmod (A000203 (n + 1) - (n + 2 : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A216982.P1073648551329051959

/-! ## A216982.P1501704666526779197

`A213675(n+1)-(A000203(n+1)-(gcd(2, A000010(n+2))+n))`
-/

namespace A216982.P1501704666526779197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - (A000203 (n + 1) - (Int.gcd 2 (A000010 (n + 2)) + n : ℤ))

end

end A216982.P1501704666526779197

/-! ## A216982.P13978189989166432466

`A213675(n+1)-(A000203(n+1)-(A000032(C(2, n+2))+n))`
-/

namespace A216982.P13978189989166432466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - (A000203 (n + 1) - (A000032 (Nat.choose 2 (n + 2)) + (n : ℤ)))

end

end A216982.P13978189989166432466

/-! ## A216982.P14463225290198754246

`A213675(n+1)-(A000203(n+1)-(and(1, A000040(n+1))+n+1))`
-/

namespace A216982.P14463225290198754246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - (A000203 (n + 1) - (Int.land 1 (A000040 (n + 1)) + (n + 1 : ℤ)))

end

end A216982.P14463225290198754246

/-! ## A216982.P10306437203762374695

`A213675(n+1)-(and(1, A000010(2*n+1))+A000203(n+1)-(n+2))`
-/

namespace A216982.P10306437203762374695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - (Int.land 1 (A000010 (2 * n + 1)) + (A000203 (n + 1) - (n + 2 : ℤ)))

end

end A216982.P10306437203762374695

/-! ## A216982.P404786566581337301

`A213675(n+1)-(A000203(n+1)+C(2, A000040(2*n+1))-(n+2))`
-/

namespace A216982.P404786566581337301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - (A000203 (n + 1) + ((Nat.choose 2 (A000040 (2 * n + 1)).toNat : ℤ) - (n + 2 : ℤ)))

end

end A216982.P404786566581337301

/-! ## A216982.P2873312016735573909

`A213675(n+1)-(A000203(n+1)+C(A000010(n+1), n+1)-(n+2))`
-/

namespace A216982.P2873312016735573909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - (A000203 (n + 1) + ((Nat.choose (A000010 (n + 1)).toNat (n + 1) : ℤ) - (n + 2 : ℤ)))

end

end A216982.P2873312016735573909

/-! ## A216982.P14385701359196514239

`A213675(n+1)-(C(A000005(n+2), n+2)+A000203(n+1)-(n+2))`
-/

namespace A216982.P14385701359196514239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213675 (n + 1) - ((Nat.choose (A000005 (n + 2)).toNat (n + 2) : ℤ) + (A000203 (n + 1) - (n + 2 : ℤ)))

end

end A216982.P14385701359196514239

/-!
# A216983: The integers sieved by 7, 5, 3, and 2.

The programs for A216983, the canonical program `A216983.P291002655810337799` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216983 has offset 1).

The definition of A216983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216983.P291002655810337799

`A006530(gcd(n, 7*(n+30)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A216983

/-- `A006530(gcd(n, 7*(n+30)))` -/
def P291002655810337799.Spec : Prop :=
  ∀ n, P291002655810337799.a n = A216983 (n + 1)

theorem P291002655810337799.correct : P291002655810337799.Spec := by
  intro n
  simp only [A216983, Nat.add_sub_cancel]

end A216983

/-!
# A216984: Number of city-block distance 1, pressure limit 2 movements in an n X n array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216984, there is no canonical definition to state claims against.
-/

/-! ## A216984.P12402850727753214188

`A216991((n+1)²+n²)`
-/

namespace A216984.P12402850727753214188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 ((n + 1) ^ 2 + n ^ 2)

end

end A216984.P12402850727753214188

/-! ## A216984.P17639239903471098257

`lcm(2, A216991(A001844(n)))`
-/

namespace A216984.P17639239903471098257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A216991 (A001844 n).toNat)

end

end A216984.P17639239903471098257

/-! ## A216984.P15383152988380844631

`A216991(A001844(n))*A334549(n)`
-/

namespace A216984.P15383152988380844631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A001844 n).toNat * A334549 n

end

end A216984.P15383152988380844631

/-!
# A216985: Number of city-block distance 1, pressure limit 2 movements in an n X 2 array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216985, the canonical program `A216985.P17736351512626957070` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216985 has offset 1).

The definition of A216985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216985.P4262522535038657299

`ogf(2x/(1-7x+9x^2-x^3))`
-/

namespace A216985.P4262522535038657299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -7, 9, -1] n

end

end A216985.P4262522535038657299

namespace A216985

/-- `ogf(2x/(1-7x+9x^2-x^3))` -/
def P4262522535038657299.Spec : Prop :=
  ∀ n, P4262522535038657299.a n = A216985 (n + 1)

end A216985

/-! ## A216985.P17736351512626957070

`7*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216985

/-- `7*a(n-1)-9*a(n-2)+a(n-3)` -/
def P17736351512626957070.Spec : Prop :=
  ∀ n, P17736351512626957070.a n = A216985 (n + 1)

theorem P17736351512626957070.correct : P17736351512626957070.Spec := by
  intro n
  simp only [A216985, Nat.add_sub_cancel]

end A216985

/-! ## A216985.P2489129757551014672

`A216991(∑[n+1]+2)`
-/

namespace A216985.P2489129757551014672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A216985.P2489129757551014672

namespace A216985

/-- `A216991(∑[n+1]+2)` -/
def P2489129757551014672.Spec : Prop :=
  ∀ n, P2489129757551014672.a n = A216985 (n + 1)

end A216985

/-! ## A216985.P18325401958789971046

`record[A216991(n+2)/A173917(n)]`
-/

namespace A216985.P18325401958789971046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216991 (n + 2) : ℚ) / (A173917 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216985.P18325401958789971046

namespace A216985

/-- `record[A216991(n+2)/A173917(n)]` -/
def P18325401958789971046.Spec : Prop :=
  ∀ n, P18325401958789971046.a n = (A216985 (n + 1) : ℚ)

end A216985

/-! ## A216985.P17817498279835727784

`record[gcd(A216991(n+1), A293496(n+1))]`
-/

namespace A216985.P17817498279835727784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216991 (n + 1)) (A293496 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216985.P17817498279835727784

namespace A216985

/-- `record[gcd(A216991(n+1), A293496(n+1))]` -/
def P17817498279835727784.Spec : Prop :=
  ∀ n, (P17817498279835727784.a n : ℤ) = A216985 (n + 1)

end A216985

/-!
# A216986: Number of city-block distance 1, pressure limit 2 movements in an nX3 array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216986, there is no canonical definition to state claims against.
-/

/-! ## A216986.P15384940351490719662

`A216991(∑[n+2]+4)`
-/

namespace A216986.P15384940351490719662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216986.P15384940351490719662

/-! ## A216986.P8236980150046995611

`lcm(2, A216991(A167614(n+1)))`
-/

namespace A216986.P8236980150046995611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A216991 (A167614 (n + 1)).toNat)

end

end A216986.P8236980150046995611

/-! ## A216986.P12563961668639941327

`A057427(n)*A216991(A167614(n+1))`
-/

namespace A216986.P12563961668639941327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A216991 (A167614 (n + 1)).toNat

end

end A216986.P12563961668639941327

/-! ## A216986.P2061919269568381420

`A216991(A167614(n+1))*A254730(n)`
-/

namespace A216986.P2061919269568381420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A167614 (n + 1)).toNat * A254730 n

end

end A216986.P2061919269568381420

/-! ## A216986.P11543190224457940426

`A216991(A167614(n+1))%A041181(n)`
-/

namespace A216986.P11543190224457940426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216991 (A167614 (n + 1)).toNat) (A041181 n)

end

end A216986.P11543190224457940426

/-!
# A216987: Number of city-block distance 1, pressure limit 2 movements in an nX4 array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216987, there is no canonical definition to state claims against.
-/

/-! ## A216987.P17824681821373429588

`A216991(∑[n+3]+7)`
-/

namespace A216987.P17824681821373429588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A216987.P17824681821373429588

/-! ## A216987.P12933374318687303051

`record[char[A167614(n+1)]*A216991(n+1)]`
-/

namespace A216987.P12933374318687303051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216987.P12933374318687303051

/-! ## A216987.P12139727107460050153

`record[A216991(A019304(n))]`
-/

namespace A216987.P12139727107460050153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216987.P12139727107460050153

/-! ## A216987.P9761058773776023177

`lcm(2, A216991(A141214(n+1)))`
-/

namespace A216987.P9761058773776023177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A216991 (A141214 (n + 1)).toNat)

end

end A216987.P9761058773776023177

/-! ## A216987.P694908219254698137

`record[A216991(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A216987.P694908219254698137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216987.P694908219254698137

/-!
# A216988: Number of city-block distance 1, pressure limit 2 movements in an nX5 array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216988, there is no canonical definition to state claims against.
-/

/-! ## A216988.P4564695209940816354

`A216991(A167499(n+3))`
-/

namespace A216988.P4564695209940816354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A167499 (n + 3)).toNat

end

end A216988.P4564695209940816354

/-! ## A216988.P17425569177688642761

`A216991(A056000(n)+15)`
-/

namespace A216988.P17425569177688642761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A056000 n + 15).toNat

end

end A216988.P17425569177688642761

/-! ## A216988.P12700153369282891332

`A216991(A167614(n+3)+2)`
-/

namespace A216988.P12700153369282891332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A167614 (n + 3) + 2).toNat

end

end A216988.P12700153369282891332

/-! ## A216988.P1500238154415179691

`A216991(A141214(n+1)+8)`
-/

namespace A216988.P1500238154415179691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A141214 (n + 1) + 8).toNat

end

end A216988.P1500238154415179691

/-! ## A216988.P11925808909341658206

`record[A216991(A019304(2*n+1)-n)]`
-/

namespace A216988.P11925808909341658206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A019304 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216988.P11925808909341658206

/-!
# A216989: Number of city-block distance 1, pressure limit 2 movements in an nX6 array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216989, there is no canonical definition to state claims against.
-/

/-! ## A216989.P10313673123531861625

`A216991(A167614(n+4)+3)`
-/

namespace A216989.P10313673123531861625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A167614 (n + 4) + 3).toNat

end

end A216989.P10313673123531861625

/-! ## A216989.P15642811600928092151

`A216991(A141214(n+2)+9)`
-/

namespace A216989.P15642811600928092151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A141214 (n + 2) + 9).toNat

end

end A216989.P15642811600928092151

/-! ## A216989.P12015426319055625631

`A216991(A133263(n+6)-(n+2))`
-/

namespace A216989.P12015426319055625631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A216989.P12015426319055625631

/-! ## A216989.P16705924271420881369

`A216991(A374007(n+1))`
-/

namespace A216989.P16705924271420881369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A374007 (n + 1)).toNat

end

end A216989.P16705924271420881369

/-! ## A216989.P10870999586597086442

`A216991(A155212(n+2)+3)`
-/

namespace A216989.P10870999586597086442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A155212 (n + 2) + 3).toNat

end

end A216989.P10870999586597086442

/-!
# A216990: Number of city-block distance 1, pressure limit 2 movements in an nX7 array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216990, there is no canonical definition to state claims against.
-/

/-! ## A216990.P8879283145476299589

`A216991(A133263(n+6)+5)`
-/

namespace A216990.P8879283145476299589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A133263 (n + 6) + 5).toNat

end

end A216990.P8879283145476299589

/-! ## A216990.P15788963282061286472

`A216991(A374008(n+1))`
-/

namespace A216990.P15788963282061286472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A374008 (n + 1)).toNat

end

end A216990.P15788963282061286472

/-! ## A216990.P2986489644374446636

`A216991(A155212(n+3)+2)`
-/

namespace A216990.P2986489644374446636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216991 (A155212 (n + 3) + 2).toNat

end

end A216990.P2986489644374446636

/-!
# A216991: T(n,k)=Number of city-block distance 1, pressure limit 2 movements in an nXk array with each element moving exactly one horizontally or vertically, no element acquiring more than two neighbors, and without 2-loops.

The programs for A216991, there is no canonical definition to state claims against.
-/

/-! ## A216991.P18235148129939878031

`A120450(A022174(n))`
-/

namespace A216991.P18235148129939878031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120450 (A022174 n).toNat

end

end A216991.P18235148129939878031

/-! ## A216991.P6814797748708114096

`A124695(A173917(n))`
-/

namespace A216991.P6814797748708114096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124695 (A173917 n).toNat

end

end A216991.P6814797748708114096

/-! ## A216991.P6068949888773081258

`A124695(A174410(n))`
-/

namespace A216991.P6068949888773081258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124695 (A174410 n).toNat

end

end A216991.P6068949888773081258

/-! ## A216991.P14583852945300946224

`A235333(A091378(n))`
-/

namespace A216991.P14583852945300946224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235333 (A091378 n).toNat

end

end A216991.P14583852945300946224

/-! ## A216991.P4671442311393039927

`A088434(A255915(n))`
-/

namespace A216991.P4671442311393039927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (A255915 n).toNat

end

end A216991.P4671442311393039927

/-!
# A216993: Triangle read by rows in which row n gives the lexicographically earliest denominators with the least possible maximum value among all n-term Egyptian fractions with unit sum.

The programs for A216993, there is no canonical definition to state claims against.
-/

/-! ## A216993.P5744094388095814083

`and(A326391(n+1), A378723(n+1))`
-/

namespace A216993.P5744094388095814083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326391 (n + 1)) (A378723 (n + 1))

end

end A216993.P5744094388095814083

/-! ## A216993.P11070123161537944995

`A378723(n+1)%Δ[A237264(2*n+1)]`
-/

namespace A216993.P11070123161537944995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237264 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378723 (n + 1)) (f1 (n + 1) - f1 n)

end

end A216993.P11070123161537944995

/-! ## A216993.P17391070741462451398

`A378723(n+1)+A376504(A016116(n))`
-/

namespace A216993.P17391070741462451398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378723 (n + 1) + A376504 (A016116 n).toNat

end

end A216993.P17391070741462451398

/-! ## A216993.P10527316008229333627

`A378723(n+1)%A056964(A057048(n))`
-/

namespace A216993.P10527316008229333627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378723 (n + 1)) (A056964 (A057048 n).toNat)

end

end A216993.P10527316008229333627

/-! ## A216993.P3514756364665318097

`A378723(n+1)+A010815(A159976(n+3))`
-/

namespace A216993.P3514756364665318097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378723 (n + 1) + A010815 (A159976 (n + 3)).toNat

end

end A216993.P3514756364665318097

/-!
# A216994: Multiples of 7 such that the digit sum is divisible by 7.

The programs for A216994, there is no canonical definition to state claims against.
-/

/-! ## A216994.P996645082273186028

`7*A216996(n+1)`
-/

namespace A216994.P996645082273186028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A216996 (n + 1)

end

end A216994.P996645082273186028

/-! ## A216994.P2864297598804962898

`∩[A273159(n+2), 7*n]`
-/

namespace A216994.P2864297598804962898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A216994.P2864297598804962898

/-! ## A216994.P9972588861115508309

`A008589(A216996(n+1))`
-/

namespace A216994.P9972588861115508309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A216996 (n + 1)).toNat

end

end A216994.P9972588861115508309

/-! ## A216994.P15715476077524752698

`7*(eq[0, A007953(7*(n+1))%7]+1)`
-/

namespace A216994.P15715476077524752698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (7 * (n + 1))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216994.P15715476077524752698

/-! ## A216994.P16608364292579800819

`7*(eq[0, A028903(7*(n+1))%7]+1)`
-/

namespace A216994.P16608364292579800819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028903 (7 * (n + 1))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216994.P16608364292579800819

/-! ## A216994.P14806265940689584893

`7*(eq[0, A062028(7*(n+1))%7]+1)`
-/

namespace A216994.P14806265940689584893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 (7 * (n + 1))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216994.P14806265940689584893

/-! ## A216994.P2109206613056969895

`filter[A273159(n+2), A082784(#)]`
-/

namespace A216994.P2109206613056969895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A216994.P2109206613056969895

/-!
# A216995: Multiples of 11 whose digit sum is a multiple of 11.

The programs for A216995, there is no canonical definition to state claims against.
-/

/-! ## A216995.P17536361097617114505

`A283742(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A216995.P17536361097617114505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283742 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A216995.P17536361097617114505

/-! ## A216995.P2657360475314443546

`A283742(C(2-Δ[∑{digits}[n, #]]+n, n))`
-/

namespace A216995.P2657360475314443546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283742 (Nat.choose (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)).toNat n)

end

end A216995.P2657360475314443546

/-! ## A216995.P2020084673738833937

`A283742(n+1)%(3*p?[round(8*n/7)])!`
-/

namespace A216995.P2020084673738833937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283742 (n + 1)) (Nat.factorial (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A216995.P2020084673738833937

/-! ## A216995.P436928447512539370

`A283742(A032555(n+1))`
-/

namespace A216995.P436928447512539370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283742 (A032555 (n + 1)).toNat

end

end A216995.P436928447512539370

/-! ## A216995.P11156955848594817045

`A283742(A032559(n+1))`
-/

namespace A216995.P11156955848594817045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283742 (A032559 (n + 1)).toNat

end

end A216995.P11156955848594817045

/-!
# A216996: Numbers k such that the digit sum of k*7 is a multiple of 7.

The programs for A216996, there is no canonical definition to state claims against.
-/

/-! ## A216996.P11503347203676659444

`A216994(n+1)/7`
-/

namespace A216996.P11503347203676659444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216994 (n + 1) : ℚ) / 7

end

end A216996.P11503347203676659444

/-! ## A216996.P3079080180941697725

`eq[0, A007953(7*(n+1))%7]+1`
-/

namespace A216996.P3079080180941697725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (7 * (n + 1))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216996.P3079080180941697725

/-! ## A216996.P5874325039545481255

`eq[0, A028903(7*(n+1))%7]+1`
-/

namespace A216996.P5874325039545481255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028903 (7 * (n + 1))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216996.P5874325039545481255

/-! ## A216996.P7890036398174164020

`eq[0, A062028(7*(n+1))%7]+1`
-/

namespace A216996.P7890036398174164020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 (7 * (n + 1))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216996.P7890036398174164020

/-! ## A216996.P1755871291387201927

`A106608(A216994(n+1))`
-/

namespace A216996.P1755871291387201927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A216994 (n + 1)).toNat

end

end A216996.P1755871291387201927

/-!
# A216997: Multiples of 8 that have a digit sum which is a multiple of 8.

The programs for A216997, the canonical program `A216997.P2574361776485171840` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216997 has offset 1).

The definition of A216997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216997.P2574361776485171840

`∩[8*n, A273188(n+2)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216997

/-- `∩[8*n, A273188(n+2)]` -/
def P2574361776485171840.Spec : Prop :=
  ∀ n, (P2574361776485171840.a n : ℤ) = A216997 (n + 1)

theorem P2574361776485171840.correct : P2574361776485171840.Spec := by
  intro n
  simp only [A216997, Nat.add_sub_cancel]

end A216997

/-! ## A216997.P4975669643599278654

`∩[A273188(n+1), A005943(n)]`
-/

namespace A216997.P4975669643599278654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P4975669643599278654

namespace A216997

/-- `∩[A273188(n+1), A005943(n)]` -/
def P4975669643599278654.Spec : Prop :=
  ∀ n, (P4975669643599278654.a n : ℤ) = A216997 (n + 1)

end A216997

/-! ## A216997.P5719530070709728775

`∩[A273188(n+1), A022144(n)]`
-/

namespace A216997.P5719530070709728775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P5719530070709728775

namespace A216997

/-- `∩[A273188(n+1), A022144(n)]` -/
def P5719530070709728775.Spec : Prop :=
  ∀ n, (P5719530070709728775.a n : ℤ) = A216997 (n + 1)

end A216997

/-! ## A216997.P16287527203547641207

`∩[A273188(n+1), A017257(n)-n]`
-/

namespace A216997.P16287527203547641207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P16287527203547641207

namespace A216997

/-- `∩[A273188(n+1), A017257(n)-n]` -/
def P16287527203547641207.Spec : Prop :=
  ∀ n, (P16287527203547641207.a n : ℤ) = A216997 (n + 1)

end A216997

/-! ## A216997.P17895398882085201652

`∩[A273188(n+1), A365886(n+1)]`
-/

namespace A216997.P17895398882085201652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216997.P17895398882085201652

namespace A216997

/-- `∩[A273188(n+1), A365886(n+1)]` -/
def P17895398882085201652.Spec : Prop :=
  ∀ n, (P17895398882085201652.a n : ℤ) = A216997 (n + 1)

end A216997

/-! ## A216997.P17413418666937575618

`filter[A273188(n+2), A253513(#)]`
-/

namespace A216997.P17413418666937575618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A253513 (f1 j).toNat = 1) n)

end

end A216997.P17413418666937575618

namespace A216997

/-- `filter[A273188(n+2), A253513(#)]` -/
def P17413418666937575618.Spec : Prop :=
  ∀ n, P17413418666937575618.a n = A216997 (n + 1)

end A216997

/-!
# A216998: Digit sum of n*7 mod 7.

The programs for A216998, the canonical program `A216998.P14510114520005114199` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216998 has offset 1).

The definition of A216998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216998.P14510114520005114199

`∑{digits}[7*(n+1), #]%7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A216998

/-- `∑{digits}[7*(n+1), #]%7` -/
def P14510114520005114199.Spec : Prop :=
  ∀ n, (P14510114520005114199.a n : ℤ) = A216998 (n + 1)

theorem P14510114520005114199.correct : P14510114520005114199.Spec := by
  intro n
  simp only [A216998, Nat.add_sub_cancel]

end A216998

/-! ## A216998.P17935877490192711693

`A007953(7*(n+1))%7`
-/

namespace A216998.P17935877490192711693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (7 * (n + 1))) 7

end

end A216998.P17935877490192711693

namespace A216998

/-- `A007953(7*(n+1))%7` -/
def P17935877490192711693.Spec : Prop :=
  ∀ n, P17935877490192711693.a n = A216998 (n + 1)

end A216998

/-! ## A216998.P9605946773083131605

`A028903(7*(n+1))%7`
-/

namespace A216998.P9605946773083131605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028903 (7 * (n + 1))) 7

end

end A216998.P9605946773083131605

namespace A216998

/-- `A028903(7*(n+1))%7` -/
def P9605946773083131605.Spec : Prop :=
  ∀ n, P9605946773083131605.a n = A216998 (n + 1)

end A216998

/-! ## A216998.P8569602332668693940

`A062028(7*(n+1))%7`
-/

namespace A216998.P8569602332668693940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 (7 * (n + 1))) 7

end

end A216998.P8569602332668693940

namespace A216998

/-- `A062028(7*(n+1))%7` -/
def P8569602332668693940.Spec : Prop :=
  ∀ n, P8569602332668693940.a n = A216998 (n + 1)

end A216998

/-! ## A216998.P12237682915632441647

`A108773(7*(n+1))%7`
-/

namespace A216998.P12237682915632441647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108773 (7 * (n + 1))) 7

end

end A216998.P12237682915632441647

namespace A216998

/-- `A108773(7*(n+1))%7` -/
def P12237682915632441647.Spec : Prop :=
  ∀ n, P12237682915632441647.a n = A216998 (n + 1)

end A216998

/-! ## A216998.P11955421532660879610

`sqrt(A118881(7*(n+1)))%7`
-/

namespace A216998.P11955421532660879610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A118881 (7 * (n + 1)) : ℝ))) 7

end

end A216998.P11955421532660879610

namespace A216998

/-- `sqrt(A118881(7*(n+1)))%7` -/
def P11955421532660879610.Spec : Prop :=
  ∀ n, P11955421532660879610.a n = A216998 (n + 1)

end A216998

/-! ## A216998.P4373996395855799120

`A010876(A007953(7*(n+1)))`
-/

namespace A216998.P4373996395855799120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A007953 (7 * (n + 1))).toNat

end

end A216998.P4373996395855799120

namespace A216998

/-- `A010876(A007953(7*(n+1)))` -/
def P4373996395855799120.Spec : Prop :=
  ∀ n, P4373996395855799120.a n = A216998 (n + 1)

end A216998

/-!
# A216999: Number of integers obtainable from 1 in n steps using addition, multiplication, and subtraction.

The programs for A216999, there is no canonical definition to state claims against.
-/

/-! ## A216999.P13167917051174400798

`ceil(root(A218818(n+1), 4))+n`
-/

namespace A216999.P13167917051174400798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A218818 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉ + (n : ℤ)

end

end A216999.P13167917051174400798

/-! ## A216999.P16237507400321390606

`A368841(A287439(n))`
-/

namespace A216999.P16237507400321390606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368841 (A287439 n).toNat

end

end A216999.P16237507400321390606

